; ModuleID = 'blender/source/blender/editors/interface/view2d_ops.c'
source_filename = "blender/source/blender/editors/interface/view2d_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.SmoothView2DStore = type { %struct.rctf, %struct.rctf, double }
%struct.rctf = type { float, float, float, float }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmKeyMapItem = type { ptr, ptr, [64 x i8], ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.v2dViewPanData = type { ptr, ptr, ptr, ptr, float, float, i32, i32, i32, i32, i32, i16 }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.SpaceOops = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, %struct.ListBase, ptr, [32 x i8], %struct.TreeStoreElem, i16, i16, i16, i16, ptr }
%struct.TreeStoreElem = type { i16, i16, i16, i16, ptr }
%struct.v2dViewZoomData = type { ptr, ptr, ptr, double, i32, i32, i32, float, float, float, float }
%struct.wmNDOFMotionData = type { [3 x float], [3 x float], float, i32 }
%struct.wmTimer = type { ptr, ptr, ptr, double, i32, ptr, double, double, double, double, double, i32 }
%struct.v2dScrollerMove = type { ptr, ptr, i16, i16, float, float, float, float, i32, i32, i32 }
%struct.View2DScrollers = type { i32, i32, i32, i32 }
%struct.uiStyle = type { ptr, ptr, [64 x i8], %struct.uiFontStyle, %struct.uiFontStyle, %struct.uiFontStyle, %struct.uiFontStyle, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.uiFontStyle = type { i16, i16, i16, [6 x i8], i16, i16, i16, i16, i16, i16, float, float }

@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [15 x i8] c"smoothview v2d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"View2D\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"VIEW2D_OT_scroller_activate\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"VIEW2D_OT_pan\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"VIEW2D_OT_scroll_right\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"VIEW2D_OT_scroll_left\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"VIEW2D_OT_scroll_down\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"VIEW2D_OT_scroll_up\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"VIEW2D_OT_ndof\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"VIEW2D_OT_zoom_out\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"VIEW2D_OT_zoom_in\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"VIEW2D_OT_zoom\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"VIEW2D_OT_smoothview\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"VIEW2D_OT_zoom_border\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"View2D Buttons List\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"page\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"VIEW2D_OT_reset\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"Pan View\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"Pan the view\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"deltax\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"Delta X\00", align 1
@.str.21 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"deltay\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"Delta Y\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.24 = private unnamed_addr constant [15 x i8] c"v2dViewPanData\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.25 = private unnamed_addr constant [12 x i8] c"Scroll Left\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"Scroll the view left\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"Scroll Right\00", align 1
@.str.28 = private unnamed_addr constant [22 x i8] c"Scroll the view right\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"Scroll Up\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"Scroll the view up\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"Page\00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"Scroll up one page\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"Scroll Down\00", align 1
@.str.34 = private unnamed_addr constant [21 x i8] c"Scroll the view down\00", align 1
@.str.35 = private unnamed_addr constant [21 x i8] c"Scroll down one page\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"Zoom In\00", align 1
@.str.37 = private unnamed_addr constant [17 x i8] c"Zoom in the view\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"zoomfacx\00", align 1
@.str.39 = private unnamed_addr constant [14 x i8] c"Zoom Factor X\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"zoomfacy\00", align 1
@.str.41 = private unnamed_addr constant [14 x i8] c"Zoom Factor Y\00", align 1
@U = external local_unnamed_addr global %struct.UserDef, align 8
@.str.42 = private unnamed_addr constant [16 x i8] c"v2dViewZoomData\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"Zoom Out\00", align 1
@.str.44 = private unnamed_addr constant [18 x i8] c"Zoom out the view\00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"Zoom 2D View\00", align 1
@.str.46 = private unnamed_addr constant [21 x i8] c"Zoom in/out the view\00", align 1
@.str.47 = private unnamed_addr constant [15 x i8] c"Zoom to Border\00", align 1
@.str.48 = private unnamed_addr constant [61 x i8] c"Zoom in the view to the nearest item contained in the border\00", align 1
@.str.49 = private unnamed_addr constant [13 x i8] c"gesture_mode\00", align 1
@.str.50 = private unnamed_addr constant [14 x i8] c"NDOF Pan/Zoom\00", align 1
@.str.51 = private unnamed_addr constant [43 x i8] c"Use a 3D mouse device to pan/zoom the view\00", align 1
@.str.52 = private unnamed_addr constant [15 x i8] c"Smooth View 2D\00", align 1
@.str.53 = private unnamed_addr constant [18 x i8] c"Scroller Activate\00", align 1
@.str.54 = private unnamed_addr constant [36 x i8] c"Scroll view by mouse click and drag\00", align 1
@.str.55 = private unnamed_addr constant [16 x i8] c"v2dScrollerMove\00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"Reset View\00", align 1
@.str.57 = private unnamed_addr constant [15 x i8] c"Reset the view\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @UI_view2d_smooth_view(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [2 x float], align 4
  %6 = alloca [2 x float], align 4
  %7 = alloca [2 x float], align 4
  %8 = alloca [2 x float], align 4
  %9 = alloca %struct.SmoothView2DStore, align 8
  %10 = tail call ptr @CTX_wm_manager(ptr noundef %0) #7
  %11 = tail call ptr @CTX_wm_window(ptr noundef %0) #7
  %12 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %9) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %9, i8 0, i64 40, i1 false)
  %13 = getelementptr inbounds %struct.SmoothView2DStore, ptr %9, i64 0, i32 1
  %14 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %14, i64 16, i1 false), !tbaa.struct !34
  %15 = icmp eq ptr %2, null
  br i1 %15, label %82, label %16

16:                                               ; preds = %4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  %17 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 1
  %18 = load float, ptr %17, align 4, !tbaa !39
  %19 = load float, ptr %14, align 4, !tbaa !41
  %20 = fsub float %18, %19
  store float %20, ptr %5, align 4, !tbaa !35
  %21 = getelementptr inbounds float, ptr %5, i64 1
  %22 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 3
  %23 = load float, ptr %22, align 4, !tbaa !42
  %24 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 2
  %25 = load float, ptr %24, align 4, !tbaa !43
  %26 = fsub float %23, %25
  store float %26, ptr %21, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #7
  %27 = getelementptr inbounds %struct.rctf, ptr %2, i64 0, i32 1
  %28 = load float, ptr %27, align 4, !tbaa !39
  %29 = load float, ptr %2, align 4, !tbaa !41
  %30 = fsub float %28, %29
  store float %30, ptr %6, align 4, !tbaa !35
  %31 = getelementptr inbounds float, ptr %6, i64 1
  %32 = getelementptr inbounds %struct.rctf, ptr %2, i64 0, i32 3
  %33 = load float, ptr %32, align 4, !tbaa !42
  %34 = getelementptr inbounds %struct.rctf, ptr %2, i64 0, i32 2
  %35 = load float, ptr %34, align 4, !tbaa !43
  %36 = fsub float %33, %35
  store float %36, ptr %31, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #7
  %37 = fadd float %18, %19
  %38 = fmul float %37, 5.000000e-01
  store float %38, ptr %7, align 4, !tbaa !35
  %39 = getelementptr inbounds float, ptr %7, i64 1
  %40 = fadd float %23, %25
  %41 = fmul float %40, 5.000000e-01
  store float %41, ptr %39, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #7
  %42 = fadd float %28, %29
  %43 = fmul float %42, 5.000000e-01
  store float %43, ptr %8, align 4, !tbaa !35
  %44 = getelementptr inbounds float, ptr %8, i64 1
  %45 = fadd float %33, %35
  %46 = fmul float %45, 5.000000e-01
  store float %46, ptr %44, align 4, !tbaa !35
  br label %47

47:                                               ; preds = %66, %16
  %48 = phi i64 [ 0, %16 ], [ %75, %66 ]
  %49 = phi float [ 0.000000e+00, %16 ], [ %73, %66 ]
  %50 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 %48
  %51 = load float, ptr %50, align 4, !tbaa !35
  %52 = getelementptr inbounds [2 x float], ptr %8, i64 0, i64 %48
  %53 = load float, ptr %52, align 4, !tbaa !35
  %54 = fsub float %51, %53
  %55 = tail call float @llvm.fabs.f32(float %54)
  %56 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 %48
  %57 = load float, ptr %56, align 4, !tbaa !35
  %58 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 %48
  %59 = load float, ptr %58, align 4, !tbaa !35
  %60 = fcmp olt float %57, %59
  %61 = select i1 %60, float %57, float %59
  %62 = fdiv float %55, %61
  %63 = fcmp ogt float %49, %62
  %64 = select i1 %63, float %49, float %62
  %65 = fcmp ult float %64, 1.000000e+00
  br i1 %65, label %66, label %78

66:                                               ; preds = %47
  %67 = fcmp ogt float %57, %59
  %68 = select i1 %67, float %57, float %59
  %69 = fdiv float %61, %68
  %70 = fsub float 1.000000e+00, %69
  %71 = fmul float %70, 2.000000e+00
  %72 = fcmp ogt float %64, %71
  %73 = select i1 %72, float %64, float %71
  %74 = fcmp ult float %73, 1.000000e+00
  %75 = add nuw nsw i64 %48, 1
  %76 = icmp eq i64 %48, 0
  %77 = and i1 %74, %76
  br i1 %77, label %47, label %78, !llvm.loop !44

78:                                               ; preds = %47, %66
  %79 = phi float [ %64, %47 ], [ %73, %66 ]
  %80 = fcmp olt float %79, 1.000000e+00
  %81 = select i1 %80, float %79, float 1.000000e+00
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  br label %82

82:                                               ; preds = %4, %78
  %83 = phi float [ %81, %78 ], [ 1.000000e+00, %4 ]
  %84 = icmp ne i32 %3, 0
  %85 = fcmp ogt float %83, 0x3E80000000000000
  %86 = and i1 %84, %85
  br i1 %86, label %87, label %110

87:                                               ; preds = %82
  %88 = call zeroext i8 @BLI_rctf_compare(ptr noundef nonnull %13, ptr noundef nonnull %14, float noundef 0x3E80000000000000) #7
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %110

90:                                               ; preds = %87
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %14, i64 16, i1 false), !tbaa.struct !34
  %91 = sitofp i32 %3 to double
  %92 = fdiv double %91, 1.000000e+03
  %93 = getelementptr inbounds %struct.SmoothView2DStore, ptr %9, i64 0, i32 2
  %94 = fpext float %83 to double
  %95 = fmul double %92, %94
  store double %95, ptr %93, align 8, !tbaa !47
  %96 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 24
  %97 = load ptr, ptr %96, align 8, !tbaa !50
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %102

99:                                               ; preds = %90
  %100 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !56
  %101 = call ptr %100(i64 noundef 40, ptr noundef nonnull @.str) #7
  store ptr %101, ptr %96, align 8, !tbaa !50
  br label %102

102:                                              ; preds = %99, %90
  %103 = load ptr, ptr %96, align 8, !tbaa !50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %103, ptr noundef nonnull align 8 dereferenceable(40) %9, i64 40, i1 false), !tbaa.struct !57
  %104 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 25
  %105 = load ptr, ptr %104, align 8, !tbaa !59
  %106 = icmp eq ptr %105, null
  br i1 %106, label %108, label %107

107:                                              ; preds = %102
  call void @WM_event_remove_timer(ptr noundef %10, ptr noundef %11, ptr noundef nonnull %105) #7
  br label %108

108:                                              ; preds = %107, %102
  %109 = call ptr @WM_event_add_timer(ptr noundef %10, ptr noundef %11, i32 noundef 274, double noundef 1.000000e-02) #7
  store ptr %109, ptr %104, align 8, !tbaa !59
  br label %113

110:                                              ; preds = %87, %82
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %13, i64 16, i1 false), !tbaa.struct !34
  call void @UI_view2d_curRect_validate(ptr noundef nonnull %12) #7
  call void @ED_region_tag_redraw(ptr noundef %1) #7
  %111 = call ptr @CTX_wm_screen(ptr noundef %0) #7
  %112 = call ptr @CTX_wm_area(ptr noundef %0) #7
  call void @UI_view2d_sync(ptr noundef %111, ptr noundef %112, ptr noundef nonnull %12, i32 noundef 1) #7
  br label %113

113:                                              ; preds = %108, %110
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %9) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare zeroext i8 @BLI_rctf_compare(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare void @WM_event_remove_timer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @WM_event_add_timer(ptr noundef, ptr noundef, i32 noundef, double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @UI_view2d_curRect_validate(ptr noundef) local_unnamed_addr #2

declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #2

declare void @UI_view2d_sync(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @CTX_wm_screen(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ED_operatortypes_view2d() local_unnamed_addr #0 {
  tail call void @WM_operatortype_append(ptr noundef nonnull @VIEW2D_OT_pan) #7
  tail call void @WM_operatortype_append(ptr noundef nonnull @VIEW2D_OT_scroll_left) #7
  tail call void @WM_operatortype_append(ptr noundef nonnull @VIEW2D_OT_scroll_right) #7
  tail call void @WM_operatortype_append(ptr noundef nonnull @VIEW2D_OT_scroll_up) #7
  tail call void @WM_operatortype_append(ptr noundef nonnull @VIEW2D_OT_scroll_down) #7
  tail call void @WM_operatortype_append(ptr noundef nonnull @VIEW2D_OT_zoom_in) #7
  tail call void @WM_operatortype_append(ptr noundef nonnull @VIEW2D_OT_zoom_out) #7
  tail call void @WM_operatortype_append(ptr noundef nonnull @VIEW2D_OT_zoom) #7
  tail call void @WM_operatortype_append(ptr noundef nonnull @VIEW2D_OT_zoom_border) #7
  tail call void @WM_operatortype_append(ptr noundef nonnull @VIEW2D_OT_ndof) #7
  tail call void @WM_operatortype_append(ptr noundef nonnull @VIEW2D_OT_smoothview) #7
  tail call void @WM_operatortype_append(ptr noundef nonnull @VIEW2D_OT_scroller_activate) #7
  tail call void @WM_operatortype_append(ptr noundef nonnull @VIEW2D_OT_reset) #7
  ret void
}

declare void @WM_operatortype_append(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @VIEW2D_OT_pan(ptr nocapture noundef %0) #0 {
  store ptr @.str.17, ptr %0, align 8, !tbaa !60
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.18, ptr %2, align 8, !tbaa !64
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.3, ptr %3, align 8, !tbaa !65
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @view_pan_exec, ptr %4, align 8, !tbaa !66
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @view_pan_invoke, ptr %5, align 8, !tbaa !67
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @view_pan_modal, ptr %6, align 8, !tbaa !68
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @view_pan_cancel, ptr %7, align 8, !tbaa !69
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 20, ptr %8, align 8, !tbaa !70
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !71
  %11 = tail call ptr @RNA_def_int(ptr noundef %10, ptr noundef nonnull @.str.19, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef -2147483648, i32 noundef 2147483647) #7
  %12 = load ptr, ptr %9, align 8, !tbaa !71
  %13 = tail call ptr @RNA_def_int(ptr noundef %12, ptr noundef nonnull @.str.22, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.21, i32 noundef -2147483648, i32 noundef 2147483647) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @VIEW2D_OT_scroll_left(ptr nocapture noundef %0) #0 {
  store ptr @.str.25, ptr %0, align 8, !tbaa !60
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.26, ptr %2, align 8, !tbaa !64
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.5, ptr %3, align 8, !tbaa !65
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @view_scrollleft_exec, ptr %4, align 8, !tbaa !66
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %6 = load ptr, ptr %5, align 8, !tbaa !71
  %7 = tail call ptr @RNA_def_int(ptr noundef %6, ptr noundef nonnull @.str.19, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef -2147483648, i32 noundef 2147483647) #7
  %8 = load ptr, ptr %5, align 8, !tbaa !71
  %9 = tail call ptr @RNA_def_int(ptr noundef %8, ptr noundef nonnull @.str.22, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.21, i32 noundef -2147483648, i32 noundef 2147483647) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @VIEW2D_OT_scroll_right(ptr nocapture noundef %0) #0 {
  store ptr @.str.27, ptr %0, align 8, !tbaa !60
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.28, ptr %2, align 8, !tbaa !64
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.4, ptr %3, align 8, !tbaa !65
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @view_scrollright_exec, ptr %4, align 8, !tbaa !66
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %6 = load ptr, ptr %5, align 8, !tbaa !71
  %7 = tail call ptr @RNA_def_int(ptr noundef %6, ptr noundef nonnull @.str.19, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef -2147483648, i32 noundef 2147483647) #7
  %8 = load ptr, ptr %5, align 8, !tbaa !71
  %9 = tail call ptr @RNA_def_int(ptr noundef %8, ptr noundef nonnull @.str.22, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.21, i32 noundef -2147483648, i32 noundef 2147483647) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @VIEW2D_OT_scroll_up(ptr nocapture noundef %0) #0 {
  store ptr @.str.29, ptr %0, align 8, !tbaa !60
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.30, ptr %2, align 8, !tbaa !64
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.7, ptr %3, align 8, !tbaa !65
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @view_scrollup_exec, ptr %4, align 8, !tbaa !66
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %6 = load ptr, ptr %5, align 8, !tbaa !71
  %7 = tail call ptr @RNA_def_int(ptr noundef %6, ptr noundef nonnull @.str.19, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef -2147483648, i32 noundef 2147483647) #7
  %8 = load ptr, ptr %5, align 8, !tbaa !71
  %9 = tail call ptr @RNA_def_int(ptr noundef %8, ptr noundef nonnull @.str.22, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.21, i32 noundef -2147483648, i32 noundef 2147483647) #7
  %10 = load ptr, ptr %5, align 8, !tbaa !71
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.15, i32 noundef 0, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @VIEW2D_OT_scroll_down(ptr nocapture noundef %0) #0 {
  store ptr @.str.33, ptr %0, align 8, !tbaa !60
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.34, ptr %2, align 8, !tbaa !64
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.6, ptr %3, align 8, !tbaa !65
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @view_scrolldown_exec, ptr %4, align 8, !tbaa !66
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %6 = load ptr, ptr %5, align 8, !tbaa !71
  %7 = tail call ptr @RNA_def_int(ptr noundef %6, ptr noundef nonnull @.str.19, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef -2147483648, i32 noundef 2147483647) #7
  %8 = load ptr, ptr %5, align 8, !tbaa !71
  %9 = tail call ptr @RNA_def_int(ptr noundef %8, ptr noundef nonnull @.str.22, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.21, i32 noundef -2147483648, i32 noundef 2147483647) #7
  %10 = load ptr, ptr %5, align 8, !tbaa !71
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.15, i32 noundef 0, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.35) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @VIEW2D_OT_zoom_in(ptr nocapture noundef %0) #0 {
  store ptr @.str.36, ptr %0, align 8, !tbaa !60
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.37, ptr %2, align 8, !tbaa !64
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.10, ptr %3, align 8, !tbaa !65
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @view_zoomin_invoke, ptr %4, align 8, !tbaa !67
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @view_zoomin_exec, ptr %5, align 8, !tbaa !66
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @view_zoom_poll, ptr %6, align 8, !tbaa !72
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !71
  %9 = tail call ptr @RNA_def_float(ptr noundef %8, ptr noundef nonnull @.str.38, float noundef 0.000000e+00, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.21, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000) #7
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 524288) #7
  %10 = load ptr, ptr %7, align 8, !tbaa !71
  %11 = tail call ptr @RNA_def_float(ptr noundef %10, ptr noundef nonnull @.str.40, float noundef 0.000000e+00, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.21, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000) #7
  tail call void @RNA_def_property_flag(ptr noundef %11, i32 noundef 524288) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @VIEW2D_OT_zoom_out(ptr nocapture noundef %0) #0 {
  store ptr @.str.43, ptr %0, align 8, !tbaa !60
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.44, ptr %2, align 8, !tbaa !64
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.9, ptr %3, align 8, !tbaa !65
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @view_zoomout_invoke, ptr %4, align 8, !tbaa !67
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @view_zoom_poll, ptr %5, align 8, !tbaa !72
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !71
  %8 = tail call ptr @RNA_def_float(ptr noundef %7, ptr noundef nonnull @.str.38, float noundef 0.000000e+00, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.21, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000) #7
  tail call void @RNA_def_property_flag(ptr noundef %8, i32 noundef 524288) #7
  %9 = load ptr, ptr %6, align 8, !tbaa !71
  %10 = tail call ptr @RNA_def_float(ptr noundef %9, ptr noundef nonnull @.str.40, float noundef 0.000000e+00, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.21, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000) #7
  tail call void @RNA_def_property_flag(ptr noundef %10, i32 noundef 524288) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @VIEW2D_OT_zoom(ptr nocapture noundef %0) #0 {
  store ptr @.str.45, ptr %0, align 8, !tbaa !60
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.46, ptr %2, align 8, !tbaa !64
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.11, ptr %3, align 8, !tbaa !65
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @view_zoomdrag_exec, ptr %4, align 8, !tbaa !66
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @view_zoomdrag_invoke, ptr %5, align 8, !tbaa !67
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @view_zoomdrag_modal, ptr %6, align 8, !tbaa !68
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @view_zoomdrag_cancel, ptr %7, align 8, !tbaa !69
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @view_zoom_poll, ptr %8, align 8, !tbaa !72
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 20, ptr %9, align 8, !tbaa !70
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !71
  %12 = tail call ptr @RNA_def_float(ptr noundef %11, ptr noundef nonnull @.str.19, float noundef 0.000000e+00, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000) #7
  tail call void @RNA_def_property_flag(ptr noundef %12, i32 noundef 524288) #7
  %13 = load ptr, ptr %10, align 8, !tbaa !71
  %14 = tail call ptr @RNA_def_float(ptr noundef %13, ptr noundef nonnull @.str.22, float noundef 0.000000e+00, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.21, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000) #7
  tail call void @RNA_def_property_flag(ptr noundef %14, i32 noundef 524288) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @VIEW2D_OT_zoom_border(ptr noundef %0) #0 {
  store ptr @.str.47, ptr %0, align 8, !tbaa !60
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.48, ptr %2, align 8, !tbaa !64
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.13, ptr %3, align 8, !tbaa !65
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_border_select_invoke, ptr %4, align 8, !tbaa !67
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @view_borderzoom_exec, ptr %5, align 8, !tbaa !66
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @WM_border_select_modal, ptr %6, align 8, !tbaa !68
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @WM_border_select_cancel, ptr %7, align 8, !tbaa !69
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @view_zoom_poll, ptr %8, align 8, !tbaa !72
  tail call void @WM_operator_properties_gesture_border(ptr noundef nonnull %0, i8 noundef zeroext 0) #7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @VIEW2D_OT_ndof(ptr nocapture noundef writeonly %0) #5 {
  store ptr @.str.50, ptr %0, align 8, !tbaa !60
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.8, ptr %2, align 8, !tbaa !65
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.51, ptr %3, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @view2d_ndof_invoke, ptr %4, align 8, !tbaa !67
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @view2d_poll, ptr %5, align 8, !tbaa !72
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 128, ptr %6, align 8, !tbaa !70
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @VIEW2D_OT_smoothview(ptr noundef %0) #0 {
  store ptr @.str.52, ptr %0, align 8, !tbaa !60
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.21, ptr %2, align 8, !tbaa !64
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.12, ptr %3, align 8, !tbaa !65
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @view2d_smoothview_invoke, ptr %4, align 8, !tbaa !67
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @view2d_poll, ptr %5, align 8, !tbaa !72
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 64, ptr %6, align 8, !tbaa !70
  tail call void @WM_operator_properties_gesture_border(ptr noundef nonnull %0, i8 noundef zeroext 0) #7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @VIEW2D_OT_scroller_activate(ptr nocapture noundef writeonly %0) #5 {
  store ptr @.str.53, ptr %0, align 8, !tbaa !60
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.54, ptr %2, align 8, !tbaa !64
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %3, align 8, !tbaa !65
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 4, ptr %4, align 8, !tbaa !70
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @scroller_activate_invoke, ptr %5, align 8, !tbaa !67
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @scroller_activate_modal, ptr %6, align 8, !tbaa !68
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @scroller_activate_cancel, ptr %7, align 8, !tbaa !69
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @view2d_poll, ptr %8, align 8, !tbaa !72
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @VIEW2D_OT_reset(ptr nocapture noundef writeonly %0) #5 {
  store ptr @.str.56, ptr %0, align 8, !tbaa !60
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.57, ptr %2, align 8, !tbaa !64
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.16, ptr %3, align 8, !tbaa !65
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @reset_exec, ptr %4, align 8, !tbaa !66
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @view2d_poll, ptr %5, align 8, !tbaa !72
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_keymap_view2d(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef 0) #7
  %3 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #7
  %4 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef 2, i32 noundef 1, i32 noundef 0, i32 noundef 0) #7
  %5 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef 2, i32 noundef 1, i32 noundef 0, i32 noundef 0) #7
  %6 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef 2, i32 noundef 1, i32 noundef 1, i32 noundef 0) #7
  %7 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef 14, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  %8 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.4, i32 noundef 11, i32 noundef 1, i32 noundef 2, i32 noundef 0) #7
  %9 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef 10, i32 noundef 1, i32 noundef 2, i32 noundef 0) #7
  %10 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef 11, i32 noundef 1, i32 noundef 1, i32 noundef 0) #7
  %11 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef 10, i32 noundef 1, i32 noundef 1, i32 noundef 0) #7
  %12 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef 400, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  %13 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.9, i32 noundef 13, i32 noundef 1, i32 noundef 0, i32 noundef 0) #7
  %14 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.10, i32 noundef 12, i32 noundef 1, i32 noundef 0, i32 noundef 0) #7
  %15 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.9, i32 noundef 162, i32 noundef 1, i32 noundef 0, i32 noundef 0) #7
  %16 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.10, i32 noundef 164, i32 noundef 1, i32 noundef 0, i32 noundef 0) #7
  %17 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.11, i32 noundef 14, i32 noundef 0, i32 noundef 2, i32 noundef 0) #7
  %18 = tail call ptr @WM_keymap_verify_item(ptr noundef %2, ptr noundef nonnull @.str.12, i32 noundef 274, i32 noundef -1, i32 noundef -1, i32 noundef 0) #7
  %19 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef 11, i32 noundef 1, i32 noundef 0, i32 noundef 0) #7
  %20 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef 10, i32 noundef 1, i32 noundef 0, i32 noundef 0) #7
  %21 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.4, i32 noundef 11, i32 noundef 1, i32 noundef 0, i32 noundef 0) #7
  %22 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef 10, i32 noundef 1, i32 noundef 0, i32 noundef 0) #7
  %23 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.11, i32 noundef 2, i32 noundef 1, i32 noundef 2, i32 noundef 0) #7
  %24 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.11, i32 noundef 15, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  %25 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.13, i32 noundef 98, i32 noundef 1, i32 noundef 1, i32 noundef 0) #7
  %26 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef 0, i32 noundef 0) #7
  %27 = tail call ptr @WM_keymap_add_item(ptr noundef %26, ptr noundef nonnull @.str.2, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #7
  %28 = tail call ptr @WM_keymap_add_item(ptr noundef %26, ptr noundef nonnull @.str.2, i32 noundef 2, i32 noundef 1, i32 noundef 0, i32 noundef 0) #7
  %29 = tail call ptr @WM_keymap_add_item(ptr noundef %26, ptr noundef nonnull @.str.3, i32 noundef 2, i32 noundef 1, i32 noundef 0, i32 noundef 0) #7
  %30 = tail call ptr @WM_keymap_add_item(ptr noundef %26, ptr noundef nonnull @.str.3, i32 noundef 14, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  %31 = tail call ptr @WM_keymap_add_item(ptr noundef %26, ptr noundef nonnull @.str.6, i32 noundef 11, i32 noundef 1, i32 noundef 0, i32 noundef 0) #7
  %32 = tail call ptr @WM_keymap_add_item(ptr noundef %26, ptr noundef nonnull @.str.7, i32 noundef 10, i32 noundef 1, i32 noundef 0, i32 noundef 0) #7
  %33 = tail call ptr @WM_keymap_add_item(ptr noundef %26, ptr noundef nonnull @.str.6, i32 noundef 169, i32 noundef 1, i32 noundef 0, i32 noundef 0) #7
  %34 = getelementptr inbounds %struct.wmKeyMapItem, ptr %33, i64 0, i32 17
  %35 = load ptr, ptr %34, align 8, !tbaa !73
  tail call void @RNA_boolean_set(ptr noundef %35, ptr noundef nonnull @.str.15, i32 noundef 1) #7
  %36 = tail call ptr @WM_keymap_add_item(ptr noundef %26, ptr noundef nonnull @.str.7, i32 noundef 168, i32 noundef 1, i32 noundef 0, i32 noundef 0) #7
  %37 = getelementptr inbounds %struct.wmKeyMapItem, ptr %36, i64 0, i32 17
  %38 = load ptr, ptr %37, align 8, !tbaa !73
  tail call void @RNA_boolean_set(ptr noundef %38, ptr noundef nonnull @.str.15, i32 noundef 1) #7
  %39 = tail call ptr @WM_keymap_add_item(ptr noundef %26, ptr noundef nonnull @.str.11, i32 noundef 2, i32 noundef 1, i32 noundef 2, i32 noundef 0) #7
  %40 = tail call ptr @WM_keymap_add_item(ptr noundef %26, ptr noundef nonnull @.str.11, i32 noundef 15, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  %41 = tail call ptr @WM_keymap_add_item(ptr noundef %26, ptr noundef nonnull @.str.11, i32 noundef 14, i32 noundef 0, i32 noundef 2, i32 noundef 0) #7
  %42 = tail call ptr @WM_keymap_add_item(ptr noundef %26, ptr noundef nonnull @.str.9, i32 noundef 162, i32 noundef 1, i32 noundef 0, i32 noundef 0) #7
  %43 = tail call ptr @WM_keymap_add_item(ptr noundef %26, ptr noundef nonnull @.str.10, i32 noundef 164, i32 noundef 1, i32 noundef 0, i32 noundef 0) #7
  %44 = tail call ptr @WM_keymap_add_item(ptr noundef %26, ptr noundef nonnull @.str.16, i32 noundef 167, i32 noundef 1, i32 noundef 0, i32 noundef 0) #7
  ret void
}

declare ptr @WM_keymap_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @WM_keymap_add_item(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @WM_keymap_verify_item(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @RNA_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #6

; Function Attrs: nounwind uwtable
define internal noundef i32 @view_pan_exec(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = tail call fastcc i32 @view_pan_init(ptr noundef %0, ptr noundef %1), !range !75
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %19, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !76
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !78
  %10 = tail call i32 @RNA_int_get(ptr noundef %9, ptr noundef nonnull @.str.19) #7
  %11 = sitofp i32 %10 to float
  %12 = load ptr, ptr %8, align 8, !tbaa !78
  %13 = tail call i32 @RNA_int_get(ptr noundef %12, ptr noundef nonnull @.str.22) #7
  %14 = sitofp i32 %13 to float
  tail call fastcc void @view_pan_apply_ex(ptr noundef %0, ptr noundef %7, float noundef %11, float noundef %14)
  %15 = load ptr, ptr %6, align 8, !tbaa !76
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %5
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %18(ptr noundef nonnull %15) #7
  store ptr null, ptr %6, align 8, !tbaa !76
  br label %19

19:                                               ; preds = %17, %5, %2
  %20 = phi i32 [ 2, %2 ], [ 4, %5 ], [ 4, %17 ]
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @view_pan_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call ptr @CTX_wm_window(ptr noundef %0) #7
  %5 = tail call fastcc i32 @view_pan_init(ptr noundef %0, ptr noundef %1), !range !75
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %59, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !76
  %10 = getelementptr inbounds %struct.v2dViewPanData, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !79
  %12 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %13 = load i32, ptr %12, align 4, !tbaa !81
  %14 = getelementptr inbounds %struct.v2dViewPanData, ptr %9, i64 0, i32 8
  store i32 %13, ptr %14, align 8, !tbaa !83
  %15 = getelementptr inbounds %struct.v2dViewPanData, ptr %9, i64 0, i32 6
  store i32 %13, ptr %15, align 8, !tbaa !84
  %16 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %17 = load i32, ptr %16, align 8, !tbaa !85
  %18 = getelementptr inbounds %struct.v2dViewPanData, ptr %9, i64 0, i32 9
  store i32 %17, ptr %18, align 4, !tbaa !86
  %19 = getelementptr inbounds %struct.v2dViewPanData, ptr %9, i64 0, i32 7
  store i32 %17, ptr %19, align 4, !tbaa !87
  %20 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %21 = load i16, ptr %20, align 8, !tbaa !88
  %22 = sext i16 %21 to i32
  %23 = getelementptr inbounds %struct.v2dViewPanData, ptr %9, i64 0, i32 10
  store i32 %22, ptr %23, align 8, !tbaa !89
  %24 = icmp eq i16 %21, 14
  %25 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !78
  br i1 %24, label %27, label %47

27:                                               ; preds = %7
  %28 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 12
  %29 = load i32, ptr %28, align 8, !tbaa !90
  %30 = sub nsw i32 %29, %13
  tail call void @RNA_int_set(ptr noundef %26, ptr noundef nonnull @.str.19, i32 noundef %30) #7
  %31 = load ptr, ptr %25, align 8, !tbaa !78
  %32 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 13
  %33 = load i32, ptr %32, align 4, !tbaa !91
  %34 = load i32, ptr %16, align 8, !tbaa !85
  %35 = sub nsw i32 %33, %34
  tail call void @RNA_int_set(ptr noundef %31, ptr noundef nonnull @.str.22, i32 noundef %35) #7
  %36 = load ptr, ptr %8, align 8, !tbaa !76
  %37 = load ptr, ptr %25, align 8, !tbaa !78
  %38 = tail call i32 @RNA_int_get(ptr noundef %37, ptr noundef nonnull @.str.19) #7
  %39 = sitofp i32 %38 to float
  %40 = load ptr, ptr %25, align 8, !tbaa !78
  %41 = tail call i32 @RNA_int_get(ptr noundef %40, ptr noundef nonnull @.str.22) #7
  %42 = sitofp i32 %41 to float
  tail call fastcc void @view_pan_apply_ex(ptr noundef %0, ptr noundef %36, float noundef %39, float noundef %42)
  %43 = load ptr, ptr %8, align 8, !tbaa !76
  %44 = icmp eq ptr %43, null
  br i1 %44, label %59, label %45

45:                                               ; preds = %27
  %46 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %46(ptr noundef nonnull %43) #7
  store ptr null, ptr %8, align 8, !tbaa !76
  br label %59

47:                                               ; preds = %7
  tail call void @RNA_int_set(ptr noundef %26, ptr noundef nonnull @.str.19, i32 noundef 0) #7
  %48 = load ptr, ptr %25, align 8, !tbaa !78
  tail call void @RNA_int_set(ptr noundef %48, ptr noundef nonnull @.str.22, i32 noundef 0) #7
  %49 = getelementptr inbounds %struct.View2D, ptr %11, i64 0, i32 13
  %50 = load i16, ptr %49, align 8, !tbaa !92
  %51 = zext i16 %50 to i32
  %52 = and i32 %51, 2
  %53 = icmp eq i32 %52, 0
  %54 = and i32 %51, 4
  %55 = icmp eq i32 %54, 0
  %56 = select i1 %55, i32 14, i32 16
  %57 = select i1 %53, i32 %56, i32 15
  tail call void @WM_cursor_modal_set(ptr noundef %4, i32 noundef %57) #7
  %58 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #7
  br label %59

59:                                               ; preds = %45, %27, %3, %47
  %60 = phi i32 [ 1, %47 ], [ 8, %3 ], [ 4, %27 ], [ 4, %45 ]
  ret i32 %60
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @view_pan_modal(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %7 = load i16, ptr %6, align 8, !tbaa !88
  %8 = icmp eq i16 %7, 4
  br i1 %8, label %9, label %32

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !78
  %12 = getelementptr inbounds %struct.v2dViewPanData, ptr %5, i64 0, i32 8
  %13 = load i32, ptr %12, align 8, !tbaa !83
  %14 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %15 = load i32, ptr %14, align 4, !tbaa !81
  %16 = sub nsw i32 %13, %15
  tail call void @RNA_int_set(ptr noundef %11, ptr noundef nonnull @.str.19, i32 noundef %16) #7
  %17 = load ptr, ptr %10, align 8, !tbaa !78
  %18 = getelementptr inbounds %struct.v2dViewPanData, ptr %5, i64 0, i32 9
  %19 = load i32, ptr %18, align 4, !tbaa !86
  %20 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %21 = load i32, ptr %20, align 8, !tbaa !85
  %22 = sub nsw i32 %19, %21
  tail call void @RNA_int_set(ptr noundef %17, ptr noundef nonnull @.str.22, i32 noundef %22) #7
  %23 = load i32, ptr %14, align 4, !tbaa !81
  store i32 %23, ptr %12, align 8, !tbaa !83
  %24 = load i32, ptr %20, align 8, !tbaa !85
  store i32 %24, ptr %18, align 4, !tbaa !86
  %25 = load ptr, ptr %4, align 8, !tbaa !76
  %26 = load ptr, ptr %10, align 8, !tbaa !78
  %27 = tail call i32 @RNA_int_get(ptr noundef %26, ptr noundef nonnull @.str.19) #7
  %28 = sitofp i32 %27 to float
  %29 = load ptr, ptr %10, align 8, !tbaa !78
  %30 = tail call i32 @RNA_int_get(ptr noundef %29, ptr noundef nonnull @.str.22) #7
  %31 = sitofp i32 %30 to float
  tail call fastcc void @view_pan_apply_ex(ptr noundef %0, ptr noundef %25, float noundef %28, float noundef %31)
  br label %63

32:                                               ; preds = %3
  %33 = sext i16 %7 to i32
  %34 = getelementptr inbounds %struct.v2dViewPanData, ptr %5, i64 0, i32 10
  %35 = load i32, ptr %34, align 8, !tbaa !89
  %36 = icmp eq i32 %35, %33
  %37 = icmp eq i16 %7, 218
  %38 = or i1 %37, %36
  br i1 %38, label %39, label %63

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %41 = load i16, ptr %40, align 2, !tbaa !93
  %42 = icmp eq i16 %41, 2
  br i1 %42, label %43, label %63

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %45 = load ptr, ptr %44, align 8, !tbaa !78
  %46 = getelementptr inbounds %struct.v2dViewPanData, ptr %5, i64 0, i32 6
  %47 = load i32, ptr %46, align 8, !tbaa !84
  %48 = getelementptr inbounds %struct.v2dViewPanData, ptr %5, i64 0, i32 8
  %49 = load i32, ptr %48, align 8, !tbaa !83
  %50 = sub nsw i32 %47, %49
  tail call void @RNA_int_set(ptr noundef %45, ptr noundef nonnull @.str.19, i32 noundef %50) #7
  %51 = load ptr, ptr %44, align 8, !tbaa !78
  %52 = getelementptr inbounds %struct.v2dViewPanData, ptr %5, i64 0, i32 7
  %53 = load i32, ptr %52, align 4, !tbaa !87
  %54 = getelementptr inbounds %struct.v2dViewPanData, ptr %5, i64 0, i32 9
  %55 = load i32, ptr %54, align 4, !tbaa !86
  %56 = sub nsw i32 %53, %55
  tail call void @RNA_int_set(ptr noundef %51, ptr noundef nonnull @.str.22, i32 noundef %56) #7
  %57 = load ptr, ptr %4, align 8, !tbaa !76
  %58 = icmp eq ptr %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %43
  %60 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %60(ptr noundef nonnull %57) #7
  store ptr null, ptr %4, align 8, !tbaa !76
  br label %61

61:                                               ; preds = %43, %59
  %62 = tail call ptr @CTX_wm_window(ptr noundef %0) #7
  tail call void @WM_cursor_modal_restore(ptr noundef %62) #7
  br label %63

63:                                               ; preds = %9, %39, %32, %61
  %64 = phi i32 [ 4, %61 ], [ 1, %32 ], [ 1, %39 ], [ 1, %9 ]
  ret i32 %64
}

; Function Attrs: nounwind uwtable
define internal void @view_pan_cancel(ptr nocapture readnone %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !76
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %7(ptr noundef nonnull %4) #7
  store ptr null, ptr %3, align 8, !tbaa !76
  br label %8

8:                                                ; preds = %2, %6
  ret void
}

declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @view_pan_init(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_region(ptr noundef %0) #7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %48, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 2, i32 13
  %7 = load i16, ptr %6, align 8, !tbaa !92
  %8 = and i16 %7, 6
  %9 = icmp eq i16 %8, 6
  br i1 %9, label %48, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 2
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %13 = tail call ptr %12(i64 noundef 64, ptr noundef nonnull @.str.24) #7
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %13, ptr %14, align 8, !tbaa !76
  %15 = tail call ptr @CTX_wm_screen(ptr noundef %0) #7
  store ptr %15, ptr %13, align 8, !tbaa !94
  %16 = tail call ptr @CTX_wm_area(ptr noundef %0) #7
  %17 = getelementptr inbounds %struct.v2dViewPanData, ptr %13, i64 0, i32 1
  store ptr %16, ptr %17, align 8, !tbaa !95
  %18 = getelementptr inbounds %struct.v2dViewPanData, ptr %13, i64 0, i32 3
  store ptr %11, ptr %18, align 8, !tbaa !79
  %19 = getelementptr inbounds %struct.v2dViewPanData, ptr %13, i64 0, i32 2
  store ptr %3, ptr %19, align 8, !tbaa !96
  %20 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 3
  %21 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 3, i32 1
  %22 = load i32, ptr %21, align 4, !tbaa !97
  %23 = load i32, ptr %20, align 4, !tbaa !98
  %24 = add i32 %22, 1
  %25 = sub i32 %24, %23
  %26 = sitofp i32 %25 to float
  %27 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 3, i32 3
  %28 = load i32, ptr %27, align 4, !tbaa !99
  %29 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 3, i32 2
  %30 = load i32, ptr %29, align 4, !tbaa !100
  %31 = add i32 %28, 1
  %32 = sub i32 %31, %30
  %33 = sitofp i32 %32 to float
  %34 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 2, i32 1
  %35 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 2, i32 1, i32 1
  %36 = load float, ptr %35, align 4, !tbaa !39
  %37 = load float, ptr %34, align 4, !tbaa !41
  %38 = fsub float %36, %37
  %39 = fdiv float %38, %26
  %40 = getelementptr inbounds %struct.v2dViewPanData, ptr %13, i64 0, i32 4
  store float %39, ptr %40, align 8, !tbaa !101
  %41 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 2, i32 1, i32 3
  %42 = load float, ptr %41, align 4, !tbaa !42
  %43 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 2, i32 1, i32 2
  %44 = load float, ptr %43, align 4, !tbaa !43
  %45 = fsub float %42, %44
  %46 = fdiv float %45, %33
  %47 = getelementptr inbounds %struct.v2dViewPanData, ptr %13, i64 0, i32 5
  store float %46, ptr %47, align 4, !tbaa !102
  br label %48

48:                                               ; preds = %5, %2, %10
  %49 = phi i32 [ 1, %10 ], [ 0, %2 ], [ 0, %5 ]
  ret i32 %49
}

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @view_pan_apply_ex(ptr noundef %0, ptr nocapture noundef readonly %1, float noundef %2, float noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.v2dViewPanData, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !79
  %7 = getelementptr inbounds %struct.v2dViewPanData, ptr %1, i64 0, i32 5
  %8 = load float, ptr %7, align 4, !tbaa !102
  %9 = fmul float %8, %3
  %10 = getelementptr inbounds %struct.View2D, ptr %6, i64 0, i32 13
  %11 = load i16, ptr %10, align 8, !tbaa !92
  %12 = and i16 %11, 2
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.v2dViewPanData, ptr %1, i64 0, i32 4
  %16 = load float, ptr %15, align 8, !tbaa !101
  %17 = fmul float %16, %2
  %18 = getelementptr inbounds %struct.View2D, ptr %6, i64 0, i32 1
  %19 = load float, ptr %18, align 8, !tbaa !103
  %20 = fadd float %19, %17
  store float %20, ptr %18, align 8, !tbaa !103
  %21 = getelementptr inbounds %struct.View2D, ptr %6, i64 0, i32 1, i32 1
  %22 = load float, ptr %21, align 4, !tbaa !104
  %23 = fadd float %17, %22
  store float %23, ptr %21, align 4, !tbaa !104
  br label %24

24:                                               ; preds = %14, %4
  %25 = and i16 %11, 4
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.View2D, ptr %6, i64 0, i32 1, i32 2
  %29 = load float, ptr %28, align 8, !tbaa !105
  %30 = fadd float %9, %29
  store float %30, ptr %28, align 8, !tbaa !105
  %31 = getelementptr inbounds %struct.View2D, ptr %6, i64 0, i32 1, i32 3
  %32 = load float, ptr %31, align 4, !tbaa !106
  %33 = fadd float %9, %32
  store float %33, ptr %31, align 4, !tbaa !106
  br label %34

34:                                               ; preds = %27, %24
  tail call void @UI_view2d_curRect_validate(ptr noundef %6) #7
  %35 = getelementptr inbounds %struct.v2dViewPanData, ptr %1, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !96
  tail call void @ED_region_tag_redraw(ptr noundef %36) #7
  tail call void @WM_event_add_mousemove(ptr noundef %0) #7
  %37 = load ptr, ptr %1, align 8, !tbaa !94
  %38 = getelementptr inbounds %struct.v2dViewPanData, ptr %1, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !95
  tail call void @UI_view2d_sync(ptr noundef %37, ptr noundef %39, ptr noundef %6, i32 noundef 1) #7
  %40 = load ptr, ptr %38, align 8, !tbaa !95
  %41 = getelementptr inbounds %struct.ScrArea, ptr %40, i64 0, i32 8
  %42 = load i8, ptr %41, align 8, !tbaa !107
  %43 = icmp eq i8 %42, 3
  br i1 %43, label %44, label %50

44:                                               ; preds = %34
  %45 = getelementptr inbounds %struct.ScrArea, ptr %40, i64 0, i32 19
  %46 = load ptr, ptr %45, align 8, !tbaa !109
  %47 = getelementptr inbounds %struct.SpaceOops, ptr %46, i64 0, i32 13
  %48 = load i16, ptr %47, align 4, !tbaa !110
  %49 = or i16 %48, 2
  store i16 %49, ptr %47, align 4, !tbaa !110
  br label %50

50:                                               ; preds = %44, %34
  ret void
}

declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @WM_event_add_mousemove(ptr noundef) local_unnamed_addr #2

declare void @RNA_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @WM_cursor_modal_set(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @WM_cursor_modal_restore(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @view_scrollleft_exec(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = tail call fastcc i32 @view_pan_init(ptr noundef %0, ptr noundef %1), !range !75
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %33, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !76
  %8 = getelementptr inbounds %struct.v2dViewPanData, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !79
  %10 = getelementptr inbounds %struct.View2D, ptr %9, i64 0, i32 13
  %11 = load i16, ptr %10, align 8, !tbaa !92
  %12 = and i16 %11, 2
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %5
  %15 = icmp eq ptr %7, null
  br i1 %15, label %33, label %29

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !78
  tail call void @RNA_int_set(ptr noundef %18, ptr noundef nonnull @.str.19, i32 noundef -20) #7
  %19 = load ptr, ptr %17, align 8, !tbaa !78
  tail call void @RNA_int_set(ptr noundef %19, ptr noundef nonnull @.str.22, i32 noundef 0) #7
  %20 = load ptr, ptr %6, align 8, !tbaa !76
  %21 = load ptr, ptr %17, align 8, !tbaa !78
  %22 = tail call i32 @RNA_int_get(ptr noundef %21, ptr noundef nonnull @.str.19) #7
  %23 = sitofp i32 %22 to float
  %24 = load ptr, ptr %17, align 8, !tbaa !78
  %25 = tail call i32 @RNA_int_get(ptr noundef %24, ptr noundef nonnull @.str.22) #7
  %26 = sitofp i32 %25 to float
  tail call fastcc void @view_pan_apply_ex(ptr noundef %0, ptr noundef %20, float noundef %23, float noundef %26)
  %27 = load ptr, ptr %6, align 8, !tbaa !76
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %16, %14
  %30 = phi ptr [ %7, %14 ], [ %27, %16 ]
  %31 = phi i32 [ 8, %14 ], [ 4, %16 ]
  %32 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %32(ptr noundef nonnull %30) #7
  store ptr null, ptr %6, align 8, !tbaa !76
  br label %33

33:                                               ; preds = %29, %16, %14, %2
  %34 = phi i32 [ 8, %2 ], [ 8, %14 ], [ 4, %16 ], [ %31, %29 ]
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @view_scrollright_exec(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = tail call fastcc i32 @view_pan_init(ptr noundef %0, ptr noundef %1), !range !75
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %33, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !76
  %8 = getelementptr inbounds %struct.v2dViewPanData, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !79
  %10 = getelementptr inbounds %struct.View2D, ptr %9, i64 0, i32 13
  %11 = load i16, ptr %10, align 8, !tbaa !92
  %12 = and i16 %11, 2
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %5
  %15 = icmp eq ptr %7, null
  br i1 %15, label %33, label %29

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !78
  tail call void @RNA_int_set(ptr noundef %18, ptr noundef nonnull @.str.19, i32 noundef 20) #7
  %19 = load ptr, ptr %17, align 8, !tbaa !78
  tail call void @RNA_int_set(ptr noundef %19, ptr noundef nonnull @.str.22, i32 noundef 0) #7
  %20 = load ptr, ptr %6, align 8, !tbaa !76
  %21 = load ptr, ptr %17, align 8, !tbaa !78
  %22 = tail call i32 @RNA_int_get(ptr noundef %21, ptr noundef nonnull @.str.19) #7
  %23 = sitofp i32 %22 to float
  %24 = load ptr, ptr %17, align 8, !tbaa !78
  %25 = tail call i32 @RNA_int_get(ptr noundef %24, ptr noundef nonnull @.str.22) #7
  %26 = sitofp i32 %25 to float
  tail call fastcc void @view_pan_apply_ex(ptr noundef %0, ptr noundef %20, float noundef %23, float noundef %26)
  %27 = load ptr, ptr %6, align 8, !tbaa !76
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %16, %14
  %30 = phi ptr [ %7, %14 ], [ %27, %16 ]
  %31 = phi i32 [ 8, %14 ], [ 4, %16 ]
  %32 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %32(ptr noundef nonnull %30) #7
  store ptr null, ptr %6, align 8, !tbaa !76
  br label %33

33:                                               ; preds = %29, %16, %14, %2
  %34 = phi i32 [ 8, %2 ], [ 8, %14 ], [ 4, %16 ], [ %31, %29 ]
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @view_scrollup_exec(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = tail call fastcc i32 @view_pan_init(ptr noundef %0, ptr noundef %1), !range !75
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %45, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !76
  %8 = getelementptr inbounds %struct.v2dViewPanData, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !79
  %10 = getelementptr inbounds %struct.View2D, ptr %9, i64 0, i32 13
  %11 = load i16, ptr %10, align 8, !tbaa !92
  %12 = and i16 %11, 4
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %5
  %15 = icmp eq ptr %7, null
  br i1 %15, label %45, label %41

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !78
  tail call void @RNA_int_set(ptr noundef %18, ptr noundef nonnull @.str.19, i32 noundef 0) #7
  %19 = load ptr, ptr %17, align 8, !tbaa !78
  tail call void @RNA_int_set(ptr noundef %19, ptr noundef nonnull @.str.22, i32 noundef 40) #7
  %20 = load ptr, ptr %17, align 8, !tbaa !78
  %21 = tail call i32 @RNA_boolean_get(ptr noundef %20, ptr noundef nonnull @.str.15) #7
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %16
  %24 = tail call ptr @CTX_wm_region(ptr noundef %0) #7
  %25 = load ptr, ptr %17, align 8, !tbaa !78
  %26 = getelementptr inbounds %struct.ARegion, ptr %24, i64 0, i32 2, i32 4, i32 3
  %27 = load i32, ptr %26, align 4, !tbaa !99
  %28 = getelementptr inbounds %struct.ARegion, ptr %24, i64 0, i32 2, i32 4, i32 2
  %29 = load i32, ptr %28, align 4, !tbaa !100
  %30 = sub nsw i32 %27, %29
  tail call void @RNA_int_set(ptr noundef %25, ptr noundef nonnull @.str.22, i32 noundef %30) #7
  br label %31

31:                                               ; preds = %23, %16
  %32 = load ptr, ptr %6, align 8, !tbaa !76
  %33 = load ptr, ptr %17, align 8, !tbaa !78
  %34 = tail call i32 @RNA_int_get(ptr noundef %33, ptr noundef nonnull @.str.19) #7
  %35 = sitofp i32 %34 to float
  %36 = load ptr, ptr %17, align 8, !tbaa !78
  %37 = tail call i32 @RNA_int_get(ptr noundef %36, ptr noundef nonnull @.str.22) #7
  %38 = sitofp i32 %37 to float
  tail call fastcc void @view_pan_apply_ex(ptr noundef %0, ptr noundef %32, float noundef %35, float noundef %38)
  %39 = load ptr, ptr %6, align 8, !tbaa !76
  %40 = icmp eq ptr %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %31, %14
  %42 = phi ptr [ %7, %14 ], [ %39, %31 ]
  %43 = phi i32 [ 8, %14 ], [ 4, %31 ]
  %44 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %44(ptr noundef nonnull %42) #7
  store ptr null, ptr %6, align 8, !tbaa !76
  br label %45

45:                                               ; preds = %41, %31, %14, %2
  %46 = phi i32 [ 8, %2 ], [ 8, %14 ], [ 4, %31 ], [ %43, %41 ]
  ret i32 %46
}

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @view_scrolldown_exec(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = tail call fastcc i32 @view_pan_init(ptr noundef %0, ptr noundef %1), !range !75
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %45, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !76
  %8 = getelementptr inbounds %struct.v2dViewPanData, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !79
  %10 = getelementptr inbounds %struct.View2D, ptr %9, i64 0, i32 13
  %11 = load i16, ptr %10, align 8, !tbaa !92
  %12 = and i16 %11, 4
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %5
  %15 = icmp eq ptr %7, null
  br i1 %15, label %45, label %41

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !78
  tail call void @RNA_int_set(ptr noundef %18, ptr noundef nonnull @.str.19, i32 noundef 0) #7
  %19 = load ptr, ptr %17, align 8, !tbaa !78
  tail call void @RNA_int_set(ptr noundef %19, ptr noundef nonnull @.str.22, i32 noundef -40) #7
  %20 = load ptr, ptr %17, align 8, !tbaa !78
  %21 = tail call i32 @RNA_boolean_get(ptr noundef %20, ptr noundef nonnull @.str.15) #7
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %16
  %24 = tail call ptr @CTX_wm_region(ptr noundef %0) #7
  %25 = load ptr, ptr %17, align 8, !tbaa !78
  %26 = getelementptr inbounds %struct.ARegion, ptr %24, i64 0, i32 2, i32 4, i32 2
  %27 = load i32, ptr %26, align 8, !tbaa !113
  %28 = getelementptr inbounds %struct.ARegion, ptr %24, i64 0, i32 2, i32 4, i32 3
  %29 = load i32, ptr %28, align 4, !tbaa !115
  %30 = sub nsw i32 %27, %29
  tail call void @RNA_int_set(ptr noundef %25, ptr noundef nonnull @.str.22, i32 noundef %30) #7
  br label %31

31:                                               ; preds = %23, %16
  %32 = load ptr, ptr %6, align 8, !tbaa !76
  %33 = load ptr, ptr %17, align 8, !tbaa !78
  %34 = tail call i32 @RNA_int_get(ptr noundef %33, ptr noundef nonnull @.str.19) #7
  %35 = sitofp i32 %34 to float
  %36 = load ptr, ptr %17, align 8, !tbaa !78
  %37 = tail call i32 @RNA_int_get(ptr noundef %36, ptr noundef nonnull @.str.22) #7
  %38 = sitofp i32 %37 to float
  tail call fastcc void @view_pan_apply_ex(ptr noundef %0, ptr noundef %32, float noundef %35, float noundef %38)
  %39 = load ptr, ptr %6, align 8, !tbaa !76
  %40 = icmp eq ptr %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %31, %14
  %42 = phi ptr [ %7, %14 ], [ %39, %31 ]
  %43 = phi i32 [ 8, %14 ], [ 4, %31 ]
  %44 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %44(ptr noundef nonnull %42) #7
  store ptr null, ptr %6, align 8, !tbaa !76
  br label %45

45:                                               ; preds = %41, %31, %14, %2
  %46 = phi i32 [ 8, %2 ], [ 8, %14 ], [ 4, %31 ], [ %43, %41 ]
  ret i32 %46
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @view_zoomin_invoke(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %35, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2, i32 12
  %8 = load i16, ptr %7, align 2, !tbaa !116
  %9 = and i16 %8, 768
  %10 = icmp eq i16 %9, 768
  br i1 %10, label %35, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2
  %13 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %14 = tail call ptr %13(i64 noundef 64, ptr noundef nonnull @.str.42) #7
  %15 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %14, ptr %15, align 8, !tbaa !76
  store ptr %12, ptr %14, align 8, !tbaa !117
  %16 = getelementptr inbounds %struct.v2dViewZoomData, ptr %14, i64 0, i32 1
  store ptr %4, ptr %16, align 8, !tbaa !119
  %17 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !120
  %18 = and i32 %17, 1048576
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %33, label %20

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !76
  %23 = tail call ptr @CTX_wm_region(ptr noundef %0) #7
  %24 = getelementptr inbounds %struct.ARegion, ptr %23, i64 0, i32 2
  %25 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %26 = load i32, ptr %25, align 4, !tbaa !124
  %27 = sitofp i32 %26 to float
  %28 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %29 = load i32, ptr %28, align 4, !tbaa !124
  %30 = sitofp i32 %29 to float
  %31 = getelementptr inbounds %struct.v2dViewZoomData, ptr %22, i64 0, i32 9
  %32 = getelementptr inbounds %struct.v2dViewZoomData, ptr %22, i64 0, i32 10
  tail call void @UI_view2d_region_to_view(ptr noundef nonnull %24, float noundef %27, float noundef %30, ptr noundef nonnull %31, ptr noundef nonnull %32) #7
  br label %33

33:                                               ; preds = %20, %11
  %34 = tail call i32 @view_zoomin_exec(ptr noundef %0, ptr noundef %1), !range !125
  br label %35

35:                                               ; preds = %6, %3, %33
  %36 = phi i32 [ %34, %33 ], [ 8, %3 ], [ 8, %6 ]
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @view_zoomin_exec(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = tail call ptr @CTX_wm_region(ptr noundef %0) #7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %40, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 2, i32 12
  %7 = load i16, ptr %6, align 2, !tbaa !116
  %8 = and i16 %7, 768
  %9 = icmp eq i16 %8, 768
  br i1 %9, label %40, label %10

10:                                               ; preds = %5
  %11 = tail call ptr @CTX_wm_area(ptr noundef %0) #7
  %12 = icmp eq ptr %11, null
  br i1 %12, label %25, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.ScrArea, ptr %11, i64 0, i32 8
  %15 = load i8, ptr %14, align 8, !tbaa !107
  %16 = icmp eq i8 %15, 8
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  %18 = tail call ptr @CTX_wm_region(ptr noundef %0) #7
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.ARegion, ptr %18, i64 0, i32 8
  %22 = load i16, ptr %21, align 2, !tbaa !126
  %23 = icmp eq i16 %22, 7
  %24 = select i1 %23, float 0x3FA3333340000000, float 0.000000e+00
  br label %25

25:                                               ; preds = %20, %10, %13, %17
  %26 = phi float [ 0x3FA3333340000000, %10 ], [ 0x3FA3333340000000, %17 ], [ 0x3FA3333340000000, %13 ], [ %24, %20 ]
  %27 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %28 = load ptr, ptr %27, align 8, !tbaa !78
  tail call void @RNA_float_set(ptr noundef %28, ptr noundef nonnull @.str.38, float noundef 0x3FA3333340000000) #7
  %29 = load ptr, ptr %27, align 8, !tbaa !78
  tail call void @RNA_float_set(ptr noundef %29, ptr noundef nonnull @.str.40, float noundef %26) #7
  %30 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %31 = load ptr, ptr %30, align 8, !tbaa !76
  %32 = load ptr, ptr %27, align 8, !tbaa !78
  %33 = tail call float @RNA_float_get(ptr noundef %32, ptr noundef nonnull @.str.38) #7
  %34 = load ptr, ptr %27, align 8, !tbaa !78
  %35 = tail call float @RNA_float_get(ptr noundef %34, ptr noundef nonnull @.str.40) #7
  tail call fastcc void @view_zoomstep_apply_ex(ptr noundef %0, ptr noundef %31, i8 noundef zeroext 1, float noundef %33, float noundef %35)
  tail call void @UI_view2d_zoom_cache_reset() #7
  %36 = load ptr, ptr %30, align 8, !tbaa !76
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %25
  %39 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %39(ptr noundef nonnull %36) #7
  store ptr null, ptr %30, align 8, !tbaa !76
  br label %40

40:                                               ; preds = %2, %38, %25, %5
  %41 = phi i32 [ 8, %5 ], [ 4, %25 ], [ 4, %38 ], [ 8, %2 ]
  ret i32 %41
}

; Function Attrs: nounwind uwtable
define internal i32 @view_zoom_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_wm_region(ptr noundef %0) #7
  %3 = icmp eq ptr %2, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 12
  %6 = load i16, ptr %5, align 2, !tbaa !116
  %7 = and i16 %6, 768
  %8 = icmp ne i16 %7, 768
  %9 = zext i1 %8 to i32
  br label %10

10:                                               ; preds = %4, %1
  %11 = phi i32 [ 0, %1 ], [ %9, %4 ]
  ret i32 %11
}

declare ptr @RNA_def_float(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @UI_view2d_region_to_view(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_float_set(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @view_zoomstep_apply_ex(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, float noundef %3, float noundef %4) unnamed_addr #0 {
  %6 = tail call ptr @CTX_wm_region(ptr noundef %0) #7
  %7 = fcmp ult float %3, 0.000000e+00
  %8 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 2, i32 1
  %9 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 2, i32 1, i32 1
  %10 = load float, ptr %9, align 4, !tbaa !39
  %11 = load float, ptr %8, align 4, !tbaa !41
  %12 = fsub float %10, %11
  br i1 %7, label %19, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 2, i32 1, i32 3
  %15 = load float, ptr %14, align 4, !tbaa !42
  %16 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 2, i32 1, i32 2
  %17 = load float, ptr %16, align 4, !tbaa !43
  %18 = fsub float %15, %17
  br label %29

19:                                               ; preds = %5
  %20 = tail call float @llvm.fmuladd.f32(float %3, float 2.000000e+00, float 1.000000e+00)
  %21 = fdiv float %12, %20
  %22 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 2, i32 1, i32 3
  %23 = load float, ptr %22, align 4, !tbaa !42
  %24 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 2, i32 1, i32 2
  %25 = load float, ptr %24, align 4, !tbaa !43
  %26 = fsub float %23, %25
  %27 = tail call float @llvm.fmuladd.f32(float %4, float 2.000000e+00, float 1.000000e+00)
  %28 = fdiv float %26, %27
  br label %29

29:                                               ; preds = %19, %13
  %30 = phi float [ %18, %13 ], [ %28, %19 ]
  %31 = phi float [ %12, %13 ], [ %21, %19 ]
  %32 = fmul float %31, %3
  %33 = fmul float %30, %4
  %34 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 2, i32 12
  %35 = load i16, ptr %34, align 2, !tbaa !116
  %36 = and i16 %35, 256
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %38, label %95

38:                                               ; preds = %29
  %39 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 2, i32 13
  %40 = load i16, ptr %39, align 8, !tbaa !92
  %41 = zext i16 %40 to i32
  %42 = and i32 %41, 2
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 2, i32 1, i32 1
  %46 = load float, ptr %45, align 4, !tbaa !104
  %47 = tail call float @llvm.fmuladd.f32(float %32, float -2.000000e+00, float %46)
  store float %47, ptr %45, align 4, !tbaa !104
  br label %95

48:                                               ; preds = %38
  %49 = and i32 %41, 8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %64, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 2, i32 15
  %53 = load i16, ptr %52, align 4, !tbaa !127
  %54 = and i16 %53, 1
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 2, i32 1
  %58 = load float, ptr %57, align 8, !tbaa !103
  %59 = tail call float @llvm.fmuladd.f32(float %32, float 2.000000e+00, float %58)
  store float %59, ptr %57, align 8, !tbaa !103
  br label %95

60:                                               ; preds = %51
  %61 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 2, i32 1, i32 1
  %62 = load float, ptr %61, align 4, !tbaa !104
  %63 = tail call float @llvm.fmuladd.f32(float %32, float -2.000000e+00, float %62)
  store float %63, ptr %61, align 4, !tbaa !104
  br label %95

64:                                               ; preds = %48
  %65 = icmp eq i8 %2, 0
  br i1 %65, label %88, label %66

66:                                               ; preds = %64
  %67 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !120
  %68 = and i32 %67, 1048576
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %88, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.v2dViewZoomData, ptr %1, i64 0, i32 9
  %72 = load float, ptr %71, align 4, !tbaa !128
  %73 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 2, i32 1
  %74 = load float, ptr %73, align 8, !tbaa !41
  %75 = fsub float %72, %74
  %76 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 2, i32 1, i32 1
  %77 = load float, ptr %76, align 4, !tbaa !39
  %78 = fsub float %77, %74
  %79 = fdiv float %75, %78
  %80 = fsub float 1.000000e+00, %79
  %81 = fneg float %80
  %82 = fmul float %32, %81
  %83 = tail call float @llvm.fmuladd.f32(float %79, float %32, float %82)
  %84 = fadd float %32, %83
  %85 = fadd float %74, %84
  store float %85, ptr %73, align 8, !tbaa !103
  %86 = fsub float %83, %32
  %87 = fadd float %77, %86
  store float %87, ptr %76, align 4, !tbaa !104
  br label %95

88:                                               ; preds = %66, %64
  %89 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 2, i32 1
  %90 = load float, ptr %89, align 8, !tbaa !103
  %91 = fadd float %32, %90
  store float %91, ptr %89, align 8, !tbaa !103
  %92 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 2, i32 1, i32 1
  %93 = load float, ptr %92, align 4, !tbaa !104
  %94 = fsub float %93, %32
  store float %94, ptr %92, align 4, !tbaa !104
  br label %95

95:                                               ; preds = %44, %70, %88, %56, %60, %29
  %96 = and i16 %35, 512
  %97 = icmp eq i16 %96, 0
  br i1 %97, label %98, label %155

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 2, i32 13
  %100 = load i16, ptr %99, align 8, !tbaa !92
  %101 = zext i16 %100 to i32
  %102 = and i32 %101, 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %98
  %105 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 2, i32 1, i32 3
  %106 = load float, ptr %105, align 4, !tbaa !106
  %107 = tail call float @llvm.fmuladd.f32(float %33, float -2.000000e+00, float %106)
  store float %107, ptr %105, align 4, !tbaa !106
  br label %155

108:                                              ; preds = %98
  %109 = and i32 %101, 16
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %124, label %111

111:                                              ; preds = %108
  %112 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 2, i32 15
  %113 = load i16, ptr %112, align 4, !tbaa !127
  %114 = and i16 %113, 4
  %115 = icmp eq i16 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 2, i32 1, i32 2
  %118 = load float, ptr %117, align 8, !tbaa !105
  %119 = tail call float @llvm.fmuladd.f32(float %33, float 2.000000e+00, float %118)
  store float %119, ptr %117, align 8, !tbaa !105
  br label %155

120:                                              ; preds = %111
  %121 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 2, i32 1, i32 3
  %122 = load float, ptr %121, align 4, !tbaa !106
  %123 = tail call float @llvm.fmuladd.f32(float %33, float -2.000000e+00, float %122)
  store float %123, ptr %121, align 4, !tbaa !106
  br label %155

124:                                              ; preds = %108
  %125 = icmp eq i8 %2, 0
  br i1 %125, label %148, label %126

126:                                              ; preds = %124
  %127 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !120
  %128 = and i32 %127, 1048576
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %148, label %130

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.v2dViewZoomData, ptr %1, i64 0, i32 10
  %132 = load float, ptr %131, align 8, !tbaa !129
  %133 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 2, i32 1, i32 2
  %134 = load float, ptr %133, align 8, !tbaa !43
  %135 = fsub float %132, %134
  %136 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 2, i32 1, i32 3
  %137 = load float, ptr %136, align 4, !tbaa !42
  %138 = fsub float %137, %134
  %139 = fdiv float %135, %138
  %140 = fsub float 1.000000e+00, %139
  %141 = fneg float %140
  %142 = fmul float %33, %141
  %143 = tail call float @llvm.fmuladd.f32(float %139, float %33, float %142)
  %144 = fadd float %33, %143
  %145 = fadd float %134, %144
  store float %145, ptr %133, align 8, !tbaa !105
  %146 = fsub float %143, %33
  %147 = fadd float %137, %146
  store float %147, ptr %136, align 4, !tbaa !106
  br label %155

148:                                              ; preds = %126, %124
  %149 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 2, i32 1, i32 2
  %150 = load float, ptr %149, align 8, !tbaa !105
  %151 = fadd float %33, %150
  store float %151, ptr %149, align 8, !tbaa !105
  %152 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 2, i32 1, i32 3
  %153 = load float, ptr %152, align 4, !tbaa !106
  %154 = fsub float %153, %33
  store float %154, ptr %152, align 4, !tbaa !106
  br label %155

155:                                              ; preds = %104, %130, %148, %116, %120, %95
  %156 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 2
  tail call void @UI_view2d_curRect_validate(ptr noundef nonnull %156) #7
  %157 = getelementptr inbounds %struct.v2dViewZoomData, ptr %1, i64 0, i32 1
  %158 = load ptr, ptr %157, align 8, !tbaa !119
  tail call void @ED_region_tag_redraw(ptr noundef %158) #7
  %159 = tail call ptr @CTX_wm_screen(ptr noundef %0) #7
  %160 = tail call ptr @CTX_wm_area(ptr noundef %0) #7
  tail call void @UI_view2d_sync(ptr noundef %159, ptr noundef %160, ptr noundef nonnull %156, i32 noundef 1) #7
  ret void
}

declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

declare void @UI_view2d_zoom_cache_reset() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @view_zoomout_invoke(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %71, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2, i32 12
  %8 = load i16, ptr %7, align 2, !tbaa !116
  %9 = and i16 %8, 768
  %10 = icmp eq i16 %9, 768
  br i1 %10, label %71, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2
  %13 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %14 = tail call ptr %13(i64 noundef 64, ptr noundef nonnull @.str.42) #7
  %15 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %14, ptr %15, align 8, !tbaa !76
  store ptr %12, ptr %14, align 8, !tbaa !117
  %16 = getelementptr inbounds %struct.v2dViewZoomData, ptr %14, i64 0, i32 1
  store ptr %4, ptr %16, align 8, !tbaa !119
  %17 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !120
  %18 = and i32 %17, 1048576
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %33, label %20

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !76
  %23 = tail call ptr @CTX_wm_region(ptr noundef %0) #7
  %24 = getelementptr inbounds %struct.ARegion, ptr %23, i64 0, i32 2
  %25 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %26 = load i32, ptr %25, align 4, !tbaa !124
  %27 = sitofp i32 %26 to float
  %28 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %29 = load i32, ptr %28, align 4, !tbaa !124
  %30 = sitofp i32 %29 to float
  %31 = getelementptr inbounds %struct.v2dViewZoomData, ptr %22, i64 0, i32 9
  %32 = getelementptr inbounds %struct.v2dViewZoomData, ptr %22, i64 0, i32 10
  tail call void @UI_view2d_region_to_view(ptr noundef nonnull %24, float noundef %27, float noundef %30, ptr noundef nonnull %31, ptr noundef nonnull %32) #7
  br label %33

33:                                               ; preds = %20, %11
  %34 = tail call ptr @CTX_wm_region(ptr noundef %0) #7
  %35 = icmp eq ptr %34, null
  br i1 %35, label %71, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.ARegion, ptr %34, i64 0, i32 2, i32 12
  %38 = load i16, ptr %37, align 2, !tbaa !116
  %39 = and i16 %38, 768
  %40 = icmp eq i16 %39, 768
  br i1 %40, label %71, label %41

41:                                               ; preds = %36
  %42 = tail call ptr @CTX_wm_area(ptr noundef %0) #7
  %43 = icmp eq ptr %42, null
  br i1 %43, label %56, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.ScrArea, ptr %42, i64 0, i32 8
  %46 = load i8, ptr %45, align 8, !tbaa !107
  %47 = icmp eq i8 %46, 8
  br i1 %47, label %48, label %56

48:                                               ; preds = %44
  %49 = tail call ptr @CTX_wm_region(ptr noundef %0) #7
  %50 = icmp eq ptr %49, null
  br i1 %50, label %56, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.ARegion, ptr %49, i64 0, i32 8
  %53 = load i16, ptr %52, align 2, !tbaa !126
  %54 = icmp eq i16 %53, 7
  %55 = select i1 %54, float 0xBFA3333340000000, float 0.000000e+00
  br label %56

56:                                               ; preds = %51, %41, %44, %48
  %57 = phi float [ 0xBFA3333340000000, %41 ], [ 0xBFA3333340000000, %48 ], [ 0xBFA3333340000000, %44 ], [ %55, %51 ]
  %58 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %59 = load ptr, ptr %58, align 8, !tbaa !78
  tail call void @RNA_float_set(ptr noundef %59, ptr noundef nonnull @.str.38, float noundef 0xBFA3333340000000) #7
  %60 = load ptr, ptr %58, align 8, !tbaa !78
  tail call void @RNA_float_set(ptr noundef %60, ptr noundef nonnull @.str.40, float noundef %57) #7
  %61 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %62 = load ptr, ptr %61, align 8, !tbaa !76
  %63 = load ptr, ptr %58, align 8, !tbaa !78
  %64 = tail call float @RNA_float_get(ptr noundef %63, ptr noundef nonnull @.str.38) #7
  %65 = load ptr, ptr %58, align 8, !tbaa !78
  %66 = tail call float @RNA_float_get(ptr noundef %65, ptr noundef nonnull @.str.40) #7
  tail call fastcc void @view_zoomstep_apply_ex(ptr noundef %0, ptr noundef %62, i8 noundef zeroext 1, float noundef %64, float noundef %66)
  tail call void @UI_view2d_zoom_cache_reset() #7
  %67 = load ptr, ptr %61, align 8, !tbaa !76
  %68 = icmp eq ptr %67, null
  br i1 %68, label %71, label %69

69:                                               ; preds = %56
  %70 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %70(ptr noundef nonnull %67) #7
  store ptr null, ptr %61, align 8, !tbaa !76
  br label %71

71:                                               ; preds = %69, %56, %36, %33, %6, %3
  %72 = phi i32 [ 8, %3 ], [ 8, %6 ], [ 8, %36 ], [ 4, %56 ], [ 4, %69 ], [ 8, %33 ]
  ret i32 %72
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @view_zoomdrag_exec(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = tail call ptr @CTX_wm_region(ptr noundef %0) #7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %30, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 2, i32 12
  %7 = load i16, ptr %6, align 2, !tbaa !116
  %8 = and i16 %7, 768
  %9 = icmp eq i16 %8, 768
  br i1 %9, label %30, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 2
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %13 = tail call ptr %12(i64 noundef 64, ptr noundef nonnull @.str.42) #7
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %13, ptr %14, align 8, !tbaa !76
  store ptr %11, ptr %13, align 8, !tbaa !117
  %15 = getelementptr inbounds %struct.v2dViewZoomData, ptr %13, i64 0, i32 1
  store ptr %3, ptr %15, align 8, !tbaa !119
  tail call fastcc void @view_zoomdrag_apply(ptr noundef %0, ptr noundef %1)
  tail call void @UI_view2d_zoom_cache_reset() #7
  %16 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !76
  %18 = icmp eq ptr %17, null
  br i1 %18, label %30, label %19

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.v2dViewZoomData, ptr %17, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !130
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = tail call ptr @CTX_wm_manager(ptr noundef %0) #7
  %25 = tail call ptr @CTX_wm_window(ptr noundef %0) #7
  %26 = load ptr, ptr %20, align 8, !tbaa !130
  tail call void @WM_event_remove_timer(ptr noundef %24, ptr noundef %25, ptr noundef %26) #7
  br label %27

27:                                               ; preds = %23, %19
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  %29 = load ptr, ptr %16, align 8, !tbaa !76
  tail call void %28(ptr noundef %29) #7
  store ptr null, ptr %16, align 8, !tbaa !76
  br label %30

30:                                               ; preds = %27, %10, %5, %2
  %31 = phi i32 [ 8, %2 ], [ 8, %5 ], [ 4, %10 ], [ 4, %27 ]
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @view_zoomdrag_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call ptr @CTX_wm_window(ptr noundef %0) #7
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %130, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2, i32 12
  %9 = load i16, ptr %8, align 2, !tbaa !116
  %10 = and i16 %9, 768
  %11 = icmp eq i16 %10, 768
  br i1 %11, label %130, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2
  %14 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %15 = tail call ptr %14(i64 noundef 64, ptr noundef nonnull @.str.42) #7
  %16 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %15, ptr %16, align 8, !tbaa !76
  store ptr %13, ptr %15, align 8, !tbaa !117
  %17 = getelementptr inbounds %struct.v2dViewZoomData, ptr %15, i64 0, i32 1
  store ptr %5, ptr %17, align 8, !tbaa !119
  %18 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %19 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %20 = load i16, ptr %19, align 8, !tbaa !88
  %21 = and i16 %20, -2
  %22 = icmp eq i16 %21, 14
  %23 = getelementptr inbounds %struct.v2dViewZoomData, ptr %15, i64 0, i32 4
  %24 = getelementptr inbounds %struct.v2dViewZoomData, ptr %15, i64 0, i32 5
  br i1 %22, label %25, label %86

25:                                               ; preds = %12
  %26 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 12
  %27 = load i32, ptr %26, align 8, !tbaa !90
  store i32 %27, ptr %23, align 8, !tbaa !131
  %28 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 13
  %29 = load i32, ptr %28, align 4, !tbaa !91
  store i32 %29, ptr %24, align 4, !tbaa !132
  %30 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %31 = load i32, ptr %30, align 4, !tbaa !81
  %32 = sub nsw i32 %27, %31
  %33 = sitofp i32 %32 to float
  %34 = fmul float %33, 0x3F847AE140000000
  %35 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2, i32 1
  %36 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2, i32 1, i32 1
  %37 = load float, ptr %36, align 4, !tbaa !39
  %38 = load float, ptr %35, align 4, !tbaa !41
  %39 = fsub float %37, %38
  %40 = fmul float %34, %39
  %41 = fdiv float %40, 1.000000e+01
  %42 = icmp eq i16 %20, 14
  br i1 %42, label %43, label %49

43:                                               ; preds = %25
  %44 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %45 = load i32, ptr %44, align 8, !tbaa !85
  %46 = sub nsw i32 %29, %45
  %47 = sitofp i32 %46 to float
  %48 = fmul float %47, 0x3F847AE140000000
  br label %49

49:                                               ; preds = %43, %25
  %50 = phi float [ %48, %43 ], [ %34, %25 ]
  %51 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2, i32 1, i32 3
  %52 = load float, ptr %51, align 4, !tbaa !42
  %53 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2, i32 1, i32 2
  %54 = load float, ptr %53, align 4, !tbaa !43
  %55 = fsub float %52, %54
  %56 = fmul float %50, %55
  %57 = fdiv float %56, 1.000000e+01
  %58 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2, i32 12
  %59 = load i16, ptr %58, align 2, !tbaa !116
  %60 = and i16 %59, 2
  %61 = icmp eq i16 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %49
  %63 = tail call float @llvm.fabs.f32(float %41)
  %64 = tail call float @llvm.fabs.f32(float %57)
  %65 = fcmp ogt float %63, %64
  %66 = select i1 %65, float %41, float %57
  br label %67

67:                                               ; preds = %62, %49
  %68 = phi float [ %41, %49 ], [ %66, %62 ]
  %69 = phi float [ %57, %49 ], [ %66, %62 ]
  %70 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %71 = load ptr, ptr %70, align 8, !tbaa !78
  tail call void @RNA_float_set(ptr noundef %71, ptr noundef nonnull @.str.19, float noundef %68) #7
  %72 = load ptr, ptr %70, align 8, !tbaa !78
  tail call void @RNA_float_set(ptr noundef %72, ptr noundef nonnull @.str.22, float noundef %69) #7
  tail call fastcc void @view_zoomdrag_apply(ptr noundef %0, ptr noundef %1)
  tail call void @UI_view2d_zoom_cache_reset() #7
  %73 = load ptr, ptr %18, align 8, !tbaa !76
  %74 = icmp eq ptr %73, null
  br i1 %74, label %130, label %75

75:                                               ; preds = %67
  %76 = getelementptr inbounds %struct.v2dViewZoomData, ptr %73, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !130
  %78 = icmp eq ptr %77, null
  br i1 %78, label %83, label %79

79:                                               ; preds = %75
  %80 = tail call ptr @CTX_wm_manager(ptr noundef %0) #7
  %81 = tail call ptr @CTX_wm_window(ptr noundef %0) #7
  %82 = load ptr, ptr %76, align 8, !tbaa !130
  tail call void @WM_event_remove_timer(ptr noundef %80, ptr noundef %81, ptr noundef %82) #7
  br label %83

83:                                               ; preds = %79, %75
  %84 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  %85 = load ptr, ptr %18, align 8, !tbaa !76
  tail call void %84(ptr noundef %85) #7
  store ptr null, ptr %18, align 8, !tbaa !76
  br label %130

86:                                               ; preds = %12
  %87 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %88 = load i32, ptr %87, align 4, !tbaa !81
  store i32 %88, ptr %23, align 8, !tbaa !131
  %89 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %90 = load i32, ptr %89, align 8, !tbaa !85
  store i32 %90, ptr %24, align 4, !tbaa !132
  %91 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %92 = load ptr, ptr %91, align 8, !tbaa !78
  tail call void @RNA_float_set(ptr noundef %92, ptr noundef nonnull @.str.19, float noundef 0.000000e+00) #7
  %93 = load ptr, ptr %91, align 8, !tbaa !78
  tail call void @RNA_float_set(ptr noundef %93, ptr noundef nonnull @.str.22, float noundef 0.000000e+00) #7
  %94 = load i16, ptr %19, align 8, !tbaa !88
  %95 = sext i16 %94 to i32
  %96 = getelementptr inbounds %struct.v2dViewZoomData, ptr %15, i64 0, i32 6
  store i32 %95, ptr %96, align 8, !tbaa !133
  %97 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !120
  %98 = and i32 %97, 1048576
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %111, label %100

100:                                              ; preds = %86
  %101 = tail call ptr @CTX_wm_region(ptr noundef %0) #7
  %102 = getelementptr inbounds %struct.ARegion, ptr %101, i64 0, i32 2
  %103 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %104 = load i32, ptr %103, align 4, !tbaa !124
  %105 = sitofp i32 %104 to float
  %106 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %107 = load i32, ptr %106, align 4, !tbaa !124
  %108 = sitofp i32 %107 to float
  %109 = getelementptr inbounds %struct.v2dViewZoomData, ptr %15, i64 0, i32 9
  %110 = getelementptr inbounds %struct.v2dViewZoomData, ptr %15, i64 0, i32 10
  tail call void @UI_view2d_region_to_view(ptr noundef nonnull %102, float noundef %105, float noundef %108, ptr noundef nonnull %109, ptr noundef nonnull %110) #7
  br label %111

111:                                              ; preds = %100, %86
  %112 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2, i32 13
  %113 = load i16, ptr %112, align 8, !tbaa !92
  %114 = zext i16 %113 to i32
  %115 = and i32 %114, 2
  %116 = icmp eq i32 %115, 0
  %117 = and i32 %114, 4
  %118 = icmp eq i32 %117, 0
  %119 = select i1 %118, i32 14, i32 16
  %120 = select i1 %116, i32 %119, i32 15
  tail call void @WM_cursor_modal_set(ptr noundef %4, i32 noundef %120) #7
  %121 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #7
  %122 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 26), align 2, !tbaa !134
  %123 = icmp eq i16 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %111
  %125 = tail call ptr @CTX_wm_manager(ptr noundef %0) #7
  %126 = tail call ptr @WM_event_add_timer(ptr noundef %125, ptr noundef %4, i32 noundef 272, double noundef 0x3F847AE140000000) #7
  %127 = getelementptr inbounds %struct.v2dViewZoomData, ptr %15, i64 0, i32 2
  store ptr %126, ptr %127, align 8, !tbaa !130
  %128 = tail call double @PIL_check_seconds_timer() #7
  %129 = getelementptr inbounds %struct.v2dViewZoomData, ptr %15, i64 0, i32 3
  store double %128, ptr %129, align 8, !tbaa !135
  br label %130

130:                                              ; preds = %83, %67, %7, %3, %111, %124
  %131 = phi i32 [ 1, %124 ], [ 1, %111 ], [ 8, %3 ], [ 8, %7 ], [ 4, %67 ], [ 4, %83 ]
  ret i32 %131
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @view_zoomdrag_modal(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !76
  %6 = load ptr, ptr %5, align 8, !tbaa !117
  %7 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %8 = load i16, ptr %7, align 8, !tbaa !88
  switch i16 %8, label %158 [
    i16 272, label %9
    i16 4, label %18
  ]

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 28
  %11 = load ptr, ptr %10, align 8, !tbaa !136
  %12 = getelementptr inbounds %struct.v2dViewZoomData, ptr %5, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !130
  %14 = icmp eq ptr %11, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  tail call fastcc void @view_zoomdrag_apply(ptr noundef %0, ptr noundef %1)
  br label %206

16:                                               ; preds = %9
  %17 = icmp eq i16 %8, 4
  br i1 %17, label %18, label %158

18:                                               ; preds = %3, %16
  %19 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 26), align 2, !tbaa !134
  %20 = icmp eq i16 %19, 1
  br i1 %20, label %21, label %86

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.View2D, ptr %6, i64 0, i32 4
  %23 = getelementptr inbounds %struct.View2D, ptr %6, i64 0, i32 4, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !97
  %25 = load i32, ptr %22, align 4, !tbaa !98
  %26 = sub nsw i32 %24, %25
  %27 = sitofp i32 %26 to float
  %28 = fmul float %27, 5.000000e-01
  %29 = getelementptr inbounds %struct.v2dViewZoomData, ptr %5, i64 0, i32 4
  %30 = load i32, ptr %29, align 8, !tbaa !131
  %31 = getelementptr inbounds %struct.v2dViewZoomData, ptr %5, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !119
  %33 = getelementptr inbounds %struct.ARegion, ptr %32, i64 0, i32 3
  %34 = load i32, ptr %33, align 8, !tbaa !137
  %35 = sub nsw i32 %30, %34
  %36 = sitofp i32 %35 to float
  %37 = fsub float %36, %28
  %38 = tail call float @llvm.fabs.f32(float %37)
  %39 = fadd float %38, 2.000000e+00
  %40 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %41 = load i32, ptr %40, align 4, !tbaa !124
  %42 = sitofp i32 %41 to float
  %43 = fsub float %42, %28
  %44 = tail call float @llvm.fabs.f32(float %43)
  %45 = fadd float %44, 2.000000e+00
  %46 = fdiv float %39, %45
  %47 = fsub float 1.000000e+00, %46
  %48 = getelementptr inbounds %struct.View2D, ptr %6, i64 0, i32 1
  %49 = getelementptr inbounds %struct.View2D, ptr %6, i64 0, i32 1, i32 1
  %50 = load float, ptr %49, align 4, !tbaa !39
  %51 = load float, ptr %48, align 4, !tbaa !41
  %52 = fsub float %50, %51
  %53 = fmul float %52, 5.000000e-01
  %54 = fmul float %53, %47
  %55 = getelementptr inbounds %struct.View2D, ptr %6, i64 0, i32 4, i32 3
  %56 = load i32, ptr %55, align 4, !tbaa !99
  %57 = getelementptr inbounds %struct.View2D, ptr %6, i64 0, i32 4, i32 2
  %58 = load i32, ptr %57, align 4, !tbaa !100
  %59 = sub nsw i32 %56, %58
  %60 = sitofp i32 %59 to float
  %61 = fmul float %60, 5.000000e-01
  %62 = getelementptr inbounds %struct.v2dViewZoomData, ptr %5, i64 0, i32 5
  %63 = load i32, ptr %62, align 4, !tbaa !132
  %64 = getelementptr inbounds %struct.ARegion, ptr %32, i64 0, i32 3, i32 2
  %65 = load i32, ptr %64, align 8, !tbaa !138
  %66 = sub nsw i32 %63, %65
  %67 = sitofp i32 %66 to float
  %68 = fsub float %67, %61
  %69 = tail call float @llvm.fabs.f32(float %68)
  %70 = fadd float %69, 2.000000e+00
  %71 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %72 = load i32, ptr %71, align 4, !tbaa !124
  %73 = sitofp i32 %72 to float
  %74 = fsub float %73, %61
  %75 = tail call float @llvm.fabs.f32(float %74)
  %76 = fadd float %75, 2.000000e+00
  %77 = fdiv float %70, %76
  %78 = fsub float 1.000000e+00, %77
  %79 = getelementptr inbounds %struct.View2D, ptr %6, i64 0, i32 1, i32 3
  %80 = load float, ptr %79, align 4, !tbaa !42
  %81 = getelementptr inbounds %struct.View2D, ptr %6, i64 0, i32 1, i32 2
  %82 = load float, ptr %81, align 4, !tbaa !43
  %83 = fsub float %80, %82
  %84 = fmul float %83, 5.000000e-01
  %85 = fmul float %84, %78
  br label %124

86:                                               ; preds = %18
  %87 = getelementptr inbounds %struct.View2D, ptr %6, i64 0, i32 8
  %88 = load float, ptr %87, align 4, !tbaa !139
  %89 = fcmp ogt float %88, 0.000000e+00
  br i1 %89, label %90, label %96

90:                                               ; preds = %86
  %91 = fmul float %88, 0x3F50624DE0000000
  %92 = fcmp olt float %91, 0x3F50624DE0000000
  br i1 %92, label %96, label %93

93:                                               ; preds = %90
  %94 = fcmp ogt float %91, 0x3F847AE140000000
  br i1 %94, label %96, label %95

95:                                               ; preds = %93
  br label %96

96:                                               ; preds = %90, %93, %95, %86
  %97 = phi float [ 0x3F847AE140000000, %86 ], [ 0x3F50624DE0000000, %90 ], [ %91, %95 ], [ 0x3F847AE140000000, %93 ]
  %98 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %99 = load i32, ptr %98, align 4, !tbaa !81
  %100 = getelementptr inbounds %struct.v2dViewZoomData, ptr %5, i64 0, i32 4
  %101 = load i32, ptr %100, align 8, !tbaa !131
  %102 = sub nsw i32 %99, %101
  %103 = sitofp i32 %102 to float
  %104 = fmul float %97, %103
  %105 = getelementptr inbounds %struct.View2D, ptr %6, i64 0, i32 1
  %106 = getelementptr inbounds %struct.View2D, ptr %6, i64 0, i32 1, i32 1
  %107 = load float, ptr %106, align 4, !tbaa !39
  %108 = load float, ptr %105, align 4, !tbaa !41
  %109 = fsub float %107, %108
  %110 = fmul float %104, %109
  %111 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %112 = load i32, ptr %111, align 8, !tbaa !85
  %113 = getelementptr inbounds %struct.v2dViewZoomData, ptr %5, i64 0, i32 5
  %114 = load i32, ptr %113, align 4, !tbaa !132
  %115 = sub nsw i32 %112, %114
  %116 = sitofp i32 %115 to float
  %117 = fmul float %97, %116
  %118 = getelementptr inbounds %struct.View2D, ptr %6, i64 0, i32 1, i32 3
  %119 = load float, ptr %118, align 4, !tbaa !42
  %120 = getelementptr inbounds %struct.View2D, ptr %6, i64 0, i32 1, i32 2
  %121 = load float, ptr %120, align 4, !tbaa !43
  %122 = fsub float %119, %121
  %123 = fmul float %117, %122
  br label %124

124:                                              ; preds = %96, %21
  %125 = phi float [ %85, %21 ], [ %123, %96 ]
  %126 = phi float [ %54, %21 ], [ %110, %96 ]
  %127 = getelementptr inbounds %struct.View2D, ptr %6, i64 0, i32 12
  %128 = load i16, ptr %127, align 2, !tbaa !116
  %129 = and i16 %128, 2
  %130 = icmp eq i16 %129, 0
  br i1 %130, label %136, label %131

131:                                              ; preds = %124
  %132 = tail call float @llvm.fabs.f32(float %126)
  %133 = tail call float @llvm.fabs.f32(float %125)
  %134 = fcmp ogt float %132, %133
  %135 = select i1 %134, float %126, float %125
  br label %136

136:                                              ; preds = %131, %124
  %137 = phi float [ %125, %124 ], [ %135, %131 ]
  %138 = phi float [ %126, %124 ], [ %135, %131 ]
  %139 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %140 = load ptr, ptr %139, align 8, !tbaa !78
  tail call void @RNA_float_set(ptr noundef %140, ptr noundef nonnull @.str.19, float noundef %138) #7
  %141 = load ptr, ptr %139, align 8, !tbaa !78
  tail call void @RNA_float_set(ptr noundef %141, ptr noundef nonnull @.str.22, float noundef %137) #7
  %142 = getelementptr inbounds %struct.v2dViewZoomData, ptr %5, i64 0, i32 7
  %143 = load float, ptr %142, align 4, !tbaa !140
  %144 = fadd float %138, %143
  store float %144, ptr %142, align 4, !tbaa !140
  %145 = getelementptr inbounds %struct.v2dViewZoomData, ptr %5, i64 0, i32 8
  %146 = load float, ptr %145, align 8, !tbaa !141
  %147 = fadd float %137, %146
  store float %147, ptr %145, align 8, !tbaa !141
  %148 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 26), align 2, !tbaa !134
  %149 = icmp eq i16 %148, 0
  br i1 %149, label %157, label %150

150:                                              ; preds = %136
  %151 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %152 = load i32, ptr %151, align 4, !tbaa !81
  %153 = getelementptr inbounds %struct.v2dViewZoomData, ptr %5, i64 0, i32 4
  store i32 %152, ptr %153, align 8, !tbaa !131
  %154 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %155 = load i32, ptr %154, align 8, !tbaa !85
  %156 = getelementptr inbounds %struct.v2dViewZoomData, ptr %5, i64 0, i32 5
  store i32 %155, ptr %156, align 4, !tbaa !132
  br label %157

157:                                              ; preds = %150, %136
  tail call fastcc void @view_zoomdrag_apply(ptr noundef %0, ptr noundef %1)
  br label %206

158:                                              ; preds = %3, %16
  %159 = sext i16 %8 to i32
  %160 = getelementptr inbounds %struct.v2dViewZoomData, ptr %5, i64 0, i32 6
  %161 = load i32, ptr %160, align 8, !tbaa !133
  %162 = icmp eq i32 %161, %159
  %163 = icmp eq i16 %8, 218
  %164 = or i1 %163, %162
  br i1 %164, label %165, label %206

165:                                              ; preds = %158
  %166 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %167 = load i16, ptr %166, align 2, !tbaa !93
  %168 = icmp eq i16 %167, 2
  br i1 %168, label %169, label %206

169:                                              ; preds = %165
  %170 = getelementptr inbounds %struct.View2D, ptr %6, i64 0, i32 12
  %171 = load i16, ptr %170, align 2, !tbaa !116
  %172 = and i16 %171, 256
  %173 = icmp eq i16 %172, 0
  %174 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %175 = load ptr, ptr %174, align 8, !tbaa !78
  br i1 %173, label %176, label %179

176:                                              ; preds = %169
  %177 = getelementptr inbounds %struct.v2dViewZoomData, ptr %5, i64 0, i32 7
  %178 = load float, ptr %177, align 4, !tbaa !140
  br label %179

179:                                              ; preds = %169, %176
  %180 = phi float [ %178, %176 ], [ 0.000000e+00, %169 ]
  tail call void @RNA_float_set(ptr noundef %175, ptr noundef nonnull @.str.19, float noundef %180) #7
  %181 = load i16, ptr %170, align 2, !tbaa !116
  %182 = and i16 %181, 512
  %183 = icmp eq i16 %182, 0
  %184 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %185 = load ptr, ptr %184, align 8, !tbaa !78
  br i1 %183, label %186, label %189

186:                                              ; preds = %179
  %187 = getelementptr inbounds %struct.v2dViewZoomData, ptr %5, i64 0, i32 8
  %188 = load float, ptr %187, align 8, !tbaa !141
  br label %189

189:                                              ; preds = %179, %186
  %190 = phi float [ %188, %186 ], [ 0.000000e+00, %179 ]
  tail call void @RNA_float_set(ptr noundef %185, ptr noundef nonnull @.str.22, float noundef %190) #7
  tail call void @UI_view2d_zoom_cache_reset() #7
  %191 = load ptr, ptr %4, align 8, !tbaa !76
  %192 = icmp eq ptr %191, null
  br i1 %192, label %204, label %193

193:                                              ; preds = %189
  %194 = getelementptr inbounds %struct.v2dViewZoomData, ptr %191, i64 0, i32 2
  %195 = load ptr, ptr %194, align 8, !tbaa !130
  %196 = icmp eq ptr %195, null
  br i1 %196, label %201, label %197

197:                                              ; preds = %193
  %198 = tail call ptr @CTX_wm_manager(ptr noundef %0) #7
  %199 = tail call ptr @CTX_wm_window(ptr noundef %0) #7
  %200 = load ptr, ptr %194, align 8, !tbaa !130
  tail call void @WM_event_remove_timer(ptr noundef %198, ptr noundef %199, ptr noundef %200) #7
  br label %201

201:                                              ; preds = %197, %193
  %202 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  %203 = load ptr, ptr %4, align 8, !tbaa !76
  tail call void %202(ptr noundef %203) #7
  store ptr null, ptr %4, align 8, !tbaa !76
  br label %204

204:                                              ; preds = %189, %201
  %205 = tail call ptr @CTX_wm_window(ptr noundef %0) #7
  tail call void @WM_cursor_modal_restore(ptr noundef %205) #7
  br label %206

206:                                              ; preds = %15, %165, %157, %158, %204
  %207 = phi i32 [ 4, %204 ], [ 1, %158 ], [ 1, %157 ], [ 1, %165 ], [ 1, %15 ]
  ret i32 %207
}

; Function Attrs: nounwind uwtable
define internal void @view_zoomdrag_cancel(ptr noundef %0, ptr nocapture noundef %1) #0 {
  tail call void @UI_view2d_zoom_cache_reset() #7
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !76
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.v2dViewZoomData, ptr %4, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !130
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = tail call ptr @CTX_wm_manager(ptr noundef %0) #7
  %12 = tail call ptr @CTX_wm_window(ptr noundef %0) #7
  %13 = load ptr, ptr %7, align 8, !tbaa !130
  tail call void @WM_event_remove_timer(ptr noundef %11, ptr noundef %12, ptr noundef %13) #7
  br label %14

14:                                               ; preds = %10, %6
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  %16 = load ptr, ptr %3, align 8, !tbaa !76
  tail call void %15(ptr noundef %16) #7
  store ptr null, ptr %3, align 8, !tbaa !76
  br label %17

17:                                               ; preds = %2, %14
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @view_zoomdrag_apply(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !76
  %5 = load ptr, ptr %4, align 8, !tbaa !117
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !78
  %8 = tail call float @RNA_float_get(ptr noundef %7, ptr noundef nonnull @.str.19) #7
  %9 = load ptr, ptr %6, align 8, !tbaa !78
  %10 = tail call float @RNA_float_get(ptr noundef %9, ptr noundef nonnull @.str.22) #7
  %11 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !120
  %12 = and i32 %11, 33554432
  %13 = icmp eq i32 %12, 0
  %14 = fneg float %8
  %15 = fneg float %10
  %16 = select i1 %13, float %10, float %15
  %17 = select i1 %13, float %8, float %14
  %18 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 26), align 2, !tbaa !134
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %2
  %21 = tail call double @PIL_check_seconds_timer() #7
  %22 = getelementptr inbounds %struct.v2dViewZoomData, ptr %4, i64 0, i32 3
  %23 = load double, ptr %22, align 8, !tbaa !135
  %24 = fsub double %21, %23
  %25 = fptrunc double %24 to float
  %26 = fmul float %25, 5.000000e-01
  %27 = fmul float %17, %26
  %28 = fmul float %16, %26
  store double %21, ptr %22, align 8, !tbaa !135
  br label %29

29:                                               ; preds = %20, %2
  %30 = phi float [ %28, %20 ], [ %16, %2 ]
  %31 = phi float [ %27, %20 ], [ %17, %2 ]
  %32 = getelementptr inbounds %struct.View2D, ptr %5, i64 0, i32 12
  %33 = load i16, ptr %32, align 2, !tbaa !116
  %34 = and i16 %33, 256
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %36, label %74

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.View2D, ptr %5, i64 0, i32 13
  %38 = load i16, ptr %37, align 8, !tbaa !92
  %39 = and i16 %38, 2
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.View2D, ptr %5, i64 0, i32 1, i32 1
  %43 = load float, ptr %42, align 4, !tbaa !104
  %44 = tail call float @llvm.fmuladd.f32(float %31, float -2.000000e+00, float %43)
  store float %44, ptr %42, align 4, !tbaa !104
  br label %74

45:                                               ; preds = %36
  %46 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !120
  %47 = and i32 %46, 1048576
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %67, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.v2dViewZoomData, ptr %4, i64 0, i32 9
  %51 = load float, ptr %50, align 4, !tbaa !128
  %52 = getelementptr inbounds %struct.View2D, ptr %5, i64 0, i32 1
  %53 = load float, ptr %52, align 8, !tbaa !41
  %54 = fsub float %51, %53
  %55 = getelementptr inbounds %struct.View2D, ptr %5, i64 0, i32 1, i32 1
  %56 = load float, ptr %55, align 4, !tbaa !39
  %57 = fsub float %56, %53
  %58 = fdiv float %54, %57
  %59 = fsub float 1.000000e+00, %58
  %60 = fneg float %59
  %61 = fmul float %31, %60
  %62 = tail call float @llvm.fmuladd.f32(float %58, float %31, float %61)
  %63 = fadd float %31, %62
  %64 = fadd float %53, %63
  store float %64, ptr %52, align 8, !tbaa !103
  %65 = fsub float %62, %31
  %66 = fadd float %56, %65
  store float %66, ptr %55, align 4, !tbaa !104
  br label %74

67:                                               ; preds = %45
  %68 = getelementptr inbounds %struct.View2D, ptr %5, i64 0, i32 1
  %69 = load float, ptr %68, align 8, !tbaa !103
  %70 = fadd float %31, %69
  store float %70, ptr %68, align 8, !tbaa !103
  %71 = getelementptr inbounds %struct.View2D, ptr %5, i64 0, i32 1, i32 1
  %72 = load float, ptr %71, align 4, !tbaa !104
  %73 = fsub float %72, %31
  store float %73, ptr %71, align 4, !tbaa !104
  br label %74

74:                                               ; preds = %41, %67, %49, %29
  %75 = and i16 %33, 512
  %76 = icmp eq i16 %75, 0
  br i1 %76, label %77, label %115

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.View2D, ptr %5, i64 0, i32 13
  %79 = load i16, ptr %78, align 8, !tbaa !92
  %80 = and i16 %79, 4
  %81 = icmp eq i16 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.View2D, ptr %5, i64 0, i32 1, i32 3
  %84 = load float, ptr %83, align 4, !tbaa !106
  %85 = tail call float @llvm.fmuladd.f32(float %30, float -2.000000e+00, float %84)
  store float %85, ptr %83, align 4, !tbaa !106
  br label %115

86:                                               ; preds = %77
  %87 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !120
  %88 = and i32 %87, 1048576
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %108, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.v2dViewZoomData, ptr %4, i64 0, i32 10
  %92 = load float, ptr %91, align 8, !tbaa !129
  %93 = getelementptr inbounds %struct.View2D, ptr %5, i64 0, i32 1, i32 2
  %94 = load float, ptr %93, align 8, !tbaa !43
  %95 = fsub float %92, %94
  %96 = getelementptr inbounds %struct.View2D, ptr %5, i64 0, i32 1, i32 3
  %97 = load float, ptr %96, align 4, !tbaa !42
  %98 = fsub float %97, %94
  %99 = fdiv float %95, %98
  %100 = fsub float 1.000000e+00, %99
  %101 = fneg float %100
  %102 = fmul float %30, %101
  %103 = tail call float @llvm.fmuladd.f32(float %99, float %30, float %102)
  %104 = fadd float %30, %103
  %105 = fadd float %94, %104
  store float %105, ptr %93, align 8, !tbaa !105
  %106 = fsub float %103, %30
  %107 = fadd float %97, %106
  store float %107, ptr %96, align 4, !tbaa !106
  br label %115

108:                                              ; preds = %86
  %109 = getelementptr inbounds %struct.View2D, ptr %5, i64 0, i32 1, i32 2
  %110 = load float, ptr %109, align 8, !tbaa !105
  %111 = fadd float %30, %110
  store float %111, ptr %109, align 8, !tbaa !105
  %112 = getelementptr inbounds %struct.View2D, ptr %5, i64 0, i32 1, i32 3
  %113 = load float, ptr %112, align 4, !tbaa !106
  %114 = fsub float %113, %30
  store float %114, ptr %112, align 4, !tbaa !106
  br label %115

115:                                              ; preds = %82, %108, %90, %74
  tail call void @UI_view2d_curRect_validate(ptr noundef %5) #7
  %116 = getelementptr inbounds %struct.v2dViewZoomData, ptr %4, i64 0, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !119
  tail call void @ED_region_tag_redraw(ptr noundef %117) #7
  %118 = tail call ptr @CTX_wm_screen(ptr noundef %0) #7
  %119 = tail call ptr @CTX_wm_area(ptr noundef %0) #7
  tail call void @UI_view2d_sync(ptr noundef %118, ptr noundef %119, ptr noundef %5, i32 noundef 1) #7
  ret void
}

declare double @PIL_check_seconds_timer() local_unnamed_addr #2

declare i32 @WM_border_select_invoke(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @view_borderzoom_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.rctf, align 4
  %4 = alloca %struct.rctf, align 4
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #7
  %6 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7
  %7 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !34
  %8 = tail call i32 @WM_operator_smooth_viewtx_get(ptr noundef %1) #7
  call void @WM_operator_properties_border_to_rctf(ptr noundef %1, ptr noundef nonnull %3) #7
  call void @UI_view2d_region_to_view_rctf(ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef nonnull %3) #7
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !78
  %11 = call i32 @RNA_int_get(ptr noundef %10, ptr noundef nonnull @.str.49) #7
  %12 = icmp eq i32 %11, 9
  %13 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2, i32 12
  %14 = load i16, ptr %13, align 2, !tbaa !116
  %15 = and i16 %14, 256
  %16 = icmp eq i16 %15, 0
  br i1 %12, label %17, label %33

17:                                               ; preds = %2
  br i1 %16, label %18, label %23

18:                                               ; preds = %17
  %19 = load float, ptr %3, align 4, !tbaa !41
  store float %19, ptr %4, align 4, !tbaa !41
  %20 = getelementptr inbounds %struct.rctf, ptr %3, i64 0, i32 1
  %21 = load float, ptr %20, align 4, !tbaa !39
  %22 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 1
  store float %21, ptr %22, align 4, !tbaa !39
  br label %23

23:                                               ; preds = %18, %17
  %24 = and i16 %14, 512
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %26, label %69

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.rctf, ptr %3, i64 0, i32 2
  %28 = load float, ptr %27, align 4, !tbaa !43
  %29 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 2
  store float %28, ptr %29, align 4, !tbaa !43
  %30 = getelementptr inbounds %struct.rctf, ptr %3, i64 0, i32 3
  %31 = load float, ptr %30, align 4, !tbaa !42
  %32 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 3
  store float %31, ptr %32, align 4, !tbaa !42
  br label %69

33:                                               ; preds = %2
  br i1 %16, label %34, label %49

34:                                               ; preds = %33
  %35 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 1
  %36 = load float, ptr %35, align 4, !tbaa !39
  %37 = load float, ptr %4, align 4, !tbaa !41
  %38 = fsub float %36, %37
  %39 = getelementptr inbounds %struct.rctf, ptr %3, i64 0, i32 1
  %40 = load float, ptr %39, align 4, !tbaa !39
  %41 = load float, ptr %3, align 4, !tbaa !41
  %42 = fsub float %40, %41
  %43 = fdiv float %38, %42
  %44 = fadd float %36, %37
  %45 = fmul float %44, 5.000000e-01
  %46 = fneg float %38
  %47 = call float @llvm.fmuladd.f32(float %46, float %43, float %45)
  store float %47, ptr %4, align 4, !tbaa !41
  %48 = call float @llvm.fmuladd.f32(float %38, float %43, float %45)
  store float %48, ptr %35, align 4, !tbaa !39
  br label %49

49:                                               ; preds = %34, %33
  %50 = and i16 %14, 512
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %52, label %69

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 3
  %54 = load float, ptr %53, align 4, !tbaa !42
  %55 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 2
  %56 = load float, ptr %55, align 4, !tbaa !43
  %57 = fsub float %54, %56
  %58 = getelementptr inbounds %struct.rctf, ptr %3, i64 0, i32 3
  %59 = load float, ptr %58, align 4, !tbaa !42
  %60 = getelementptr inbounds %struct.rctf, ptr %3, i64 0, i32 2
  %61 = load float, ptr %60, align 4, !tbaa !43
  %62 = fsub float %59, %61
  %63 = fdiv float %57, %62
  %64 = fadd float %54, %56
  %65 = fmul float %64, 5.000000e-01
  %66 = fneg float %57
  %67 = call float @llvm.fmuladd.f32(float %66, float %63, float %65)
  store float %67, ptr %55, align 4, !tbaa !43
  %68 = call float @llvm.fmuladd.f32(float %57, float %63, float %65)
  store float %68, ptr %53, align 4, !tbaa !42
  br label %69

69:                                               ; preds = %49, %52, %23, %26
  call void @UI_view2d_smooth_view(ptr noundef %0, ptr noundef %5, ptr noundef nonnull %4, i32 noundef %8)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  ret i32 4
}

declare i32 @WM_border_select_modal(ptr noundef, ptr noundef, ptr noundef) #2

declare void @WM_border_select_cancel(ptr noundef, ptr noundef) #2

declare void @WM_operator_properties_gesture_border(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare i32 @WM_operator_smooth_viewtx_get(ptr noundef) local_unnamed_addr #2

declare void @WM_operator_properties_border_to_rctf(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @UI_view2d_region_to_view_rctf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @view2d_ndof_invoke(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca [3 x float], align 4
  %5 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %6 = load i16, ptr %5, align 8, !tbaa !88
  %7 = icmp eq i16 %6, 400
  br i1 %7, label %8, label %104

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 28
  %10 = load ptr, ptr %9, align 8, !tbaa !136
  %11 = load float, ptr %10, align 4, !tbaa !35
  %12 = fcmp une float %11, 0.000000e+00
  br i1 %12, label %13, label %25

13:                                               ; preds = %8
  %14 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !35
  %16 = fcmp une float %15, 0.000000e+00
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  %18 = tail call ptr @CTX_wm_region(ptr noundef %0) #7
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.ARegion, ptr %18, i64 0, i32 2, i32 13
  %22 = load i16, ptr %21, align 8, !tbaa !92
  %23 = and i16 %22, 6
  %24 = icmp eq i16 %23, 6
  br label %25

25:                                               ; preds = %20, %17, %13, %8
  %26 = phi i1 [ true, %13 ], [ true, %8 ], [ true, %17 ], [ %24, %20 ]
  %27 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  %28 = load float, ptr %27, align 4, !tbaa !35
  %29 = fcmp une float %28, 0.000000e+00
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = tail call ptr @CTX_wm_region(ptr noundef %0) #7
  %32 = icmp eq ptr %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.ARegion, ptr %31, i64 0, i32 2, i32 12
  %35 = load i16, ptr %34, align 2, !tbaa !116
  %36 = and i16 %35, 768
  %37 = icmp eq i16 %36, 768
  br label %38

38:                                               ; preds = %33, %30, %25
  %39 = phi i1 [ true, %25 ], [ true, %30 ], [ %37, %33 ]
  br i1 %26, label %56, label %40

40:                                               ; preds = %38
  %41 = tail call fastcc i32 @view_pan_init(ptr noundef %0, ptr noundef %1), !range !75
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %56, label %43

43:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #7
  call void @WM_event_ndof_pan_get(ptr noundef nonnull %10, ptr noundef nonnull %4, i8 noundef zeroext 0) #7
  %44 = load float, ptr %4, align 4, !tbaa !35
  %45 = fmul float %44, 1.000000e+01
  store float %45, ptr %4, align 4, !tbaa !35
  %46 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %47 = load float, ptr %46, align 4, !tbaa !35
  %48 = fmul float %47, 1.000000e+01
  store float %48, ptr %46, align 4, !tbaa !35
  %49 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %50 = load ptr, ptr %49, align 8, !tbaa !76
  call fastcc void @view_pan_apply_ex(ptr noundef %0, ptr noundef %50, float noundef %45, float noundef %48)
  %51 = load ptr, ptr %49, align 8, !tbaa !76
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %43
  %54 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  call void %54(ptr noundef nonnull %51) #7
  store ptr null, ptr %49, align 8, !tbaa !76
  br label %55

55:                                               ; preds = %43, %53
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #7
  br label %56

56:                                               ; preds = %40, %55, %38
  br i1 %39, label %104, label %57

57:                                               ; preds = %56
  %58 = call ptr @CTX_wm_region(ptr noundef %0) #7
  %59 = icmp eq ptr %58, null
  br i1 %59, label %104, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.ARegion, ptr %58, i64 0, i32 2, i32 12
  %62 = load i16, ptr %61, align 2, !tbaa !116
  %63 = and i16 %62, 768
  %64 = icmp eq i16 %63, 768
  br i1 %64, label %104, label %65

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.ARegion, ptr %58, i64 0, i32 2
  %67 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %68 = call ptr %67(i64 noundef 64, ptr noundef nonnull @.str.42) #7
  %69 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %68, ptr %69, align 8, !tbaa !76
  store ptr %66, ptr %68, align 8, !tbaa !117
  %70 = getelementptr inbounds %struct.v2dViewZoomData, ptr %68, i64 0, i32 1
  store ptr %58, ptr %70, align 8, !tbaa !119
  %71 = getelementptr inbounds %struct.wmNDOFMotionData, ptr %10, i64 0, i32 2
  %72 = load float, ptr %71, align 4, !tbaa !142
  %73 = fmul float %72, 5.000000e-01
  %74 = load float, ptr %27, align 4, !tbaa !35
  %75 = fneg float %74
  %76 = fmul float %73, %75
  %77 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 87), align 4, !tbaa !144
  %78 = and i32 %77, 256
  %79 = icmp eq i32 %78, 0
  %80 = fneg float %76
  %81 = select i1 %79, float %76, float %80
  %82 = call ptr @CTX_wm_area(ptr noundef %0) #7
  %83 = icmp eq ptr %82, null
  br i1 %83, label %96, label %84

84:                                               ; preds = %65
  %85 = getelementptr inbounds %struct.ScrArea, ptr %82, i64 0, i32 8
  %86 = load i8, ptr %85, align 8, !tbaa !107
  %87 = icmp eq i8 %86, 8
  br i1 %87, label %88, label %96

88:                                               ; preds = %84
  %89 = call ptr @CTX_wm_region(ptr noundef %0) #7
  %90 = icmp eq ptr %89, null
  br i1 %90, label %96, label %91

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.ARegion, ptr %89, i64 0, i32 8
  %93 = load i16, ptr %92, align 2, !tbaa !126
  %94 = icmp eq i16 %93, 7
  %95 = select i1 %94, float %81, float 0.000000e+00
  br label %96

96:                                               ; preds = %91, %65, %84, %88
  %97 = phi float [ %81, %65 ], [ %81, %88 ], [ %81, %84 ], [ %95, %91 ]
  %98 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %99 = load ptr, ptr %98, align 8, !tbaa !76
  call fastcc void @view_zoomstep_apply_ex(ptr noundef %0, ptr noundef %99, i8 noundef zeroext 0, float noundef %81, float noundef %97)
  call void @UI_view2d_zoom_cache_reset() #7
  %100 = load ptr, ptr %98, align 8, !tbaa !76
  %101 = icmp eq ptr %100, null
  br i1 %101, label %104, label %102

102:                                              ; preds = %96
  %103 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  call void %103(ptr noundef nonnull %100) #7
  store ptr null, ptr %98, align 8, !tbaa !76
  br label %104

104:                                              ; preds = %102, %96, %60, %57, %56, %3
  %105 = phi i32 [ 2, %3 ], [ 4, %56 ], [ 4, %57 ], [ 4, %60 ], [ 4, %96 ], [ 4, %102 ]
  ret i32 %105
}

; Function Attrs: nounwind uwtable
define internal i32 @view2d_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_wm_region(ptr noundef %0) #7
  %3 = icmp eq ptr %2, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 14
  %6 = load i16, ptr %5, align 2, !tbaa !145
  %7 = lshr i16 %6, 10
  %8 = and i16 %7, 1
  %9 = zext nneg i16 %8 to i32
  br label %10

10:                                               ; preds = %4, %1
  %11 = phi i32 [ 0, %1 ], [ %9, %4 ]
  ret i32 %11
}

declare void @WM_event_ndof_pan_get(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @view2d_smoothview_invoke(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #7
  %5 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2
  %6 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2, i32 24
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  %8 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2, i32 25
  %9 = load ptr, ptr %8, align 8, !tbaa !59
  %10 = icmp eq ptr %9, null
  br i1 %10, label %48, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 28
  %13 = load ptr, ptr %12, align 8, !tbaa !136
  %14 = icmp eq ptr %9, %13
  br i1 %14, label %15, label %48

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.SmoothView2DStore, ptr %7, i64 0, i32 2
  %17 = load double, ptr %16, align 8, !tbaa !47
  %18 = fcmp une double %17, 0.000000e+00
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.wmTimer, ptr %9, i64 0, i32 6
  %21 = load double, ptr %20, align 8, !tbaa !146
  %22 = fdiv double %21, %17
  %23 = fptrunc double %22 to float
  br label %24

24:                                               ; preds = %15, %19
  %25 = phi float [ %23, %19 ], [ 1.000000e+00, %15 ]
  %26 = fcmp ult float %25, 1.000000e+00
  br i1 %26, label %34, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2, i32 1
  %29 = getelementptr inbounds %struct.SmoothView2DStore, ptr %7, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %28, ptr noundef nonnull align 8 dereferenceable(16) %29, i64 16, i1 false), !tbaa.struct !34
  %30 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %30(ptr noundef %7) #7
  store ptr null, ptr %6, align 8, !tbaa !50
  %31 = tail call ptr @CTX_wm_manager(ptr noundef %0) #7
  %32 = tail call ptr @CTX_wm_window(ptr noundef %0) #7
  %33 = load ptr, ptr %8, align 8, !tbaa !59
  tail call void @WM_event_remove_timer(ptr noundef %31, ptr noundef %32, ptr noundef %33) #7
  store ptr null, ptr %8, align 8, !tbaa !59
  br label %42

34:                                               ; preds = %24
  %35 = fmul float %25, 3.000000e+00
  %36 = fmul float %25, -2.000000e+00
  %37 = fmul float %25, %36
  %38 = fmul float %25, %37
  %39 = tail call float @llvm.fmuladd.f32(float %35, float %25, float %38)
  %40 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2, i32 1
  %41 = getelementptr inbounds %struct.SmoothView2DStore, ptr %7, i64 0, i32 1
  tail call void @BLI_rctf_interp(ptr noundef nonnull %40, ptr noundef %7, ptr noundef nonnull %41, float noundef %39) #7
  br label %42

42:                                               ; preds = %34, %27
  tail call void @UI_view2d_curRect_validate(ptr noundef nonnull %5) #7
  %43 = tail call ptr @CTX_wm_screen(ptr noundef %0) #7
  %44 = tail call ptr @CTX_wm_area(ptr noundef %0) #7
  tail call void @UI_view2d_sync(ptr noundef %43, ptr noundef %44, ptr noundef nonnull %5, i32 noundef 1) #7
  tail call void @ED_region_tag_redraw(ptr noundef %4) #7
  %45 = load ptr, ptr %6, align 8, !tbaa !50
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  tail call void @UI_view2d_zoom_cache_reset() #7
  br label %48

48:                                               ; preds = %42, %47, %3, %11
  %49 = phi i32 [ 8, %11 ], [ 8, %3 ], [ 4, %47 ], [ 4, %42 ]
  ret i32 %49
}

declare void @BLI_rctf_interp(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @scroller_activate_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.rctf, align 4
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #7
  %6 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2
  %7 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %8 = load i32, ptr %7, align 4, !tbaa !81
  %9 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !85
  %11 = tail call signext i16 @UI_view2d_mouse_in_scrollers(ptr noundef %0, ptr noundef nonnull %6, i32 noundef %8, i32 noundef %10) #7
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %310, label %13

13:                                               ; preds = %3
  %14 = tail call ptr @CTX_wm_region(ptr noundef %0) #7
  %15 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %17 = tail call ptr %16(i64 noundef 48, ptr noundef nonnull @.str.55) #7
  %18 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %17, ptr %18, align 8, !tbaa !76
  store ptr %15, ptr %17, align 8, !tbaa !148
  %19 = getelementptr inbounds %struct.v2dScrollerMove, ptr %17, i64 0, i32 1
  store ptr %14, ptr %19, align 8, !tbaa !150
  %20 = getelementptr inbounds %struct.v2dScrollerMove, ptr %17, i64 0, i32 2
  store i16 %11, ptr %20, align 8, !tbaa !151
  %21 = load i32, ptr %7, align 4, !tbaa !81
  %22 = getelementptr inbounds %struct.v2dScrollerMove, ptr %17, i64 0, i32 9
  store i32 %21, ptr %22, align 8, !tbaa !152
  %23 = load i32, ptr %9, align 8, !tbaa !85
  %24 = getelementptr inbounds %struct.v2dScrollerMove, ptr %17, i64 0, i32 10
  store i32 %23, ptr %24, align 4, !tbaa !153
  %25 = tail call ptr @UI_view2d_scrollers_calc(ptr noundef %0, ptr noundef nonnull %15, i16 noundef signext -1, i16 noundef signext -1, i16 noundef signext -1, i16 noundef signext -1) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %15, i64 16, i1 false), !tbaa.struct !34
  %26 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 2, i32 1
  call void @BLI_rctf_union(ptr noundef nonnull %4, ptr noundef nonnull %26) #7
  %27 = icmp eq i16 %11, 104
  br i1 %27, label %28, label %117

28:                                               ; preds = %13
  %29 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 2, i32 3
  %30 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 2, i32 3, i32 1
  %31 = load i32, ptr %30, align 4, !tbaa !97
  %32 = load i32, ptr %29, align 4, !tbaa !98
  %33 = sub nsw i32 %31, %32
  %34 = sitofp i32 %33 to float
  %35 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 1
  %36 = load float, ptr %35, align 4, !tbaa !39
  %37 = load float, ptr %4, align 4, !tbaa !41
  %38 = fsub float %36, %37
  %39 = fdiv float %38, %34
  %40 = getelementptr inbounds %struct.v2dScrollerMove, ptr %17, i64 0, i32 4
  store float %39, ptr %40, align 4, !tbaa !154
  %41 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 2, i32 1, i32 1
  %42 = load float, ptr %41, align 4, !tbaa !39
  %43 = load float, ptr %26, align 4, !tbaa !41
  %44 = fsub float %42, %43
  %45 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 3
  %46 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 3, i32 1
  %47 = load i32, ptr %46, align 4, !tbaa !97
  %48 = load i32, ptr %45, align 4, !tbaa !98
  %49 = add i32 %47, 1
  %50 = sub i32 %49, %48
  %51 = sitofp i32 %50 to float
  %52 = fdiv float %44, %51
  %53 = getelementptr inbounds %struct.v2dScrollerMove, ptr %17, i64 0, i32 5
  store float %52, ptr %53, align 8, !tbaa !155
  %54 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %55 = load i32, ptr %54, align 4, !tbaa !124
  %56 = getelementptr inbounds %struct.View2DScrollers, ptr %25, i64 0, i32 2
  %57 = load i32, ptr %56, align 4, !tbaa !156
  %58 = getelementptr inbounds %struct.View2DScrollers, ptr %25, i64 0, i32 3
  %59 = load i32, ptr %58, align 4, !tbaa !158
  %60 = icmp sgt i32 %57, %32
  %61 = icmp slt i32 %59, %31
  %62 = icmp eq i32 %57, %59
  br i1 %62, label %63, label %65

63:                                               ; preds = %28
  %64 = and i1 %60, %61
  br label %71

65:                                               ; preds = %28
  %66 = or i1 %60, %61
  %67 = icmp sgt i32 %59, %32
  %68 = icmp slt i32 %57, %31
  %69 = and i1 %68, %67
  %70 = and i1 %69, %66
  br label %71

71:                                               ; preds = %65, %63
  %72 = phi i1 [ %64, %63 ], [ %70, %65 ]
  br i1 %72, label %73, label %103

73:                                               ; preds = %71
  %74 = sitofp i32 %55 to float
  %75 = sitofp i32 %59 to float
  %76 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !159
  %77 = sitofp i16 %76 to float
  %78 = call float @llvm.fmuladd.f32(float %77, float 0xBFE3333340000000, float %75)
  %79 = fcmp ole float %78, %74
  %80 = call float @llvm.fmuladd.f32(float %77, float 0x3FE3333340000000, float %75)
  %81 = fcmp oge float %80, %74
  %82 = select i1 %79, i1 %81, i1 false
  %83 = sitofp i32 %57 to float
  %84 = call float @llvm.fmuladd.f32(float %77, float 0x3FE3333340000000, float %83)
  %85 = fcmp oge float %84, %74
  %86 = call float @llvm.fmuladd.f32(float %77, float 0xBFE3333340000000, float %83)
  %87 = fcmp ole float %86, %74
  %88 = select i1 %85, i1 %87, i1 false
  %89 = fcmp ogt float %78, %74
  %90 = fcmp olt float %84, %74
  %91 = select i1 %89, i1 %90, i1 false
  %92 = fcmp ogt float %86, %74
  %93 = select i1 %91, i1 true, i1 %82
  %94 = xor i1 %91, true
  %95 = zext i1 %94 to i16
  %96 = select i1 %93, i1 true, i1 %88
  %97 = select i1 %96, i1 true, i1 %92
  %98 = select i1 %88, i16 -1, i16 2
  %99 = select i1 %93, i16 %95, i16 %98
  br i1 %97, label %103, label %100

100:                                              ; preds = %73
  %101 = fcmp olt float %80, %74
  %102 = select i1 %101, i16 3, i16 0
  br label %103

103:                                              ; preds = %71, %73, %100
  %104 = phi i16 [ 0, %71 ], [ %99, %73 ], [ %102, %100 ]
  %105 = getelementptr inbounds %struct.v2dScrollerMove, ptr %17, i64 0, i32 3
  store i16 %104, ptr %105, align 2, !tbaa !160
  %106 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 2, i32 12
  %107 = load i16, ptr %106, align 2, !tbaa !116
  %108 = and i16 %107, 256
  %109 = icmp eq i16 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %103
  switch i16 %104, label %112 [
    i16 -1, label %111
    i16 1, label %111
  ]

111:                                              ; preds = %110, %110
  store i16 0, ptr %105, align 2, !tbaa !160
  br label %112

112:                                              ; preds = %111, %110, %103
  %113 = sub nsw i32 %59, %57
  %114 = sitofp i32 %113 to float
  %115 = getelementptr inbounds %struct.v2dScrollerMove, ptr %17, i64 0, i32 7
  store float %114, ptr %115, align 8, !tbaa !161
  %116 = add nsw i32 %59, %57
  br label %207

117:                                              ; preds = %13
  %118 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 2, i32 2, i32 3
  %119 = load i32, ptr %118, align 4, !tbaa !99
  %120 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 2, i32 2, i32 2
  %121 = load i32, ptr %120, align 4, !tbaa !100
  %122 = sub nsw i32 %119, %121
  %123 = sitofp i32 %122 to float
  %124 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 3
  %125 = load float, ptr %124, align 4, !tbaa !42
  %126 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 2
  %127 = load float, ptr %126, align 4, !tbaa !43
  %128 = fsub float %125, %127
  %129 = fdiv float %128, %123
  %130 = getelementptr inbounds %struct.v2dScrollerMove, ptr %17, i64 0, i32 4
  store float %129, ptr %130, align 4, !tbaa !154
  %131 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 2, i32 1, i32 3
  %132 = load float, ptr %131, align 4, !tbaa !42
  %133 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 2, i32 1, i32 2
  %134 = load float, ptr %133, align 4, !tbaa !43
  %135 = fsub float %132, %134
  %136 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 3, i32 3
  %137 = load i32, ptr %136, align 4, !tbaa !99
  %138 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 3, i32 2
  %139 = load i32, ptr %138, align 4, !tbaa !100
  %140 = add i32 %137, 1
  %141 = sub i32 %140, %139
  %142 = sitofp i32 %141 to float
  %143 = fdiv float %135, %142
  %144 = getelementptr inbounds %struct.v2dScrollerMove, ptr %17, i64 0, i32 5
  store float %143, ptr %144, align 8, !tbaa !155
  %145 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %146 = load i32, ptr %145, align 4, !tbaa !124
  %147 = load i32, ptr %25, align 4, !tbaa !162
  %148 = getelementptr inbounds %struct.View2DScrollers, ptr %25, i64 0, i32 1
  %149 = load i32, ptr %148, align 4, !tbaa !163
  %150 = icmp sgt i32 %147, %121
  %151 = icmp slt i32 %149, %119
  %152 = icmp eq i32 %147, %149
  br i1 %152, label %153, label %155

153:                                              ; preds = %117
  %154 = and i1 %150, %151
  br label %161

155:                                              ; preds = %117
  %156 = or i1 %150, %151
  %157 = icmp sgt i32 %149, %121
  %158 = icmp slt i32 %147, %119
  %159 = and i1 %158, %157
  %160 = and i1 %159, %156
  br label %161

161:                                              ; preds = %155, %153
  %162 = phi i1 [ %154, %153 ], [ %160, %155 ]
  br i1 %162, label %163, label %193

163:                                              ; preds = %161
  %164 = sitofp i32 %146 to float
  %165 = sitofp i32 %149 to float
  %166 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !159
  %167 = sitofp i16 %166 to float
  %168 = call float @llvm.fmuladd.f32(float %167, float 0xBFE3333340000000, float %165)
  %169 = fcmp ole float %168, %164
  %170 = call float @llvm.fmuladd.f32(float %167, float 0x3FE3333340000000, float %165)
  %171 = fcmp oge float %170, %164
  %172 = select i1 %169, i1 %171, i1 false
  %173 = sitofp i32 %147 to float
  %174 = call float @llvm.fmuladd.f32(float %167, float 0x3FE3333340000000, float %173)
  %175 = fcmp oge float %174, %164
  %176 = call float @llvm.fmuladd.f32(float %167, float 0xBFE3333340000000, float %173)
  %177 = fcmp ole float %176, %164
  %178 = select i1 %175, i1 %177, i1 false
  %179 = fcmp ogt float %168, %164
  %180 = fcmp olt float %174, %164
  %181 = select i1 %179, i1 %180, i1 false
  %182 = fcmp ogt float %176, %164
  %183 = select i1 %181, i1 true, i1 %172
  %184 = xor i1 %181, true
  %185 = zext i1 %184 to i16
  %186 = select i1 %183, i1 true, i1 %178
  %187 = select i1 %186, i1 true, i1 %182
  %188 = select i1 %178, i16 -1, i16 2
  %189 = select i1 %183, i16 %185, i16 %188
  br i1 %187, label %193, label %190

190:                                              ; preds = %163
  %191 = fcmp olt float %170, %164
  %192 = select i1 %191, i16 3, i16 0
  br label %193

193:                                              ; preds = %161, %163, %190
  %194 = phi i16 [ 0, %161 ], [ %189, %163 ], [ %192, %190 ]
  %195 = getelementptr inbounds %struct.v2dScrollerMove, ptr %17, i64 0, i32 3
  store i16 %194, ptr %195, align 2, !tbaa !160
  %196 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 2, i32 12
  %197 = load i16, ptr %196, align 2, !tbaa !116
  %198 = and i16 %197, 512
  %199 = icmp eq i16 %198, 0
  br i1 %199, label %202, label %200

200:                                              ; preds = %193
  switch i16 %194, label %202 [
    i16 -1, label %201
    i16 1, label %201
  ]

201:                                              ; preds = %200, %200
  store i16 0, ptr %195, align 2, !tbaa !160
  br label %202

202:                                              ; preds = %201, %200, %193
  %203 = sub nsw i32 %149, %147
  %204 = sitofp i32 %203 to float
  %205 = getelementptr inbounds %struct.v2dScrollerMove, ptr %17, i64 0, i32 7
  store float %204, ptr %205, align 8, !tbaa !161
  %206 = add nsw i32 %149, %147
  br label %207

207:                                              ; preds = %112, %202
  %208 = phi i32 [ %116, %112 ], [ %206, %202 ]
  %209 = phi i32 [ %48, %112 ], [ %139, %202 ]
  %210 = sdiv i32 %208, 2
  %211 = add nsw i32 %210, %209
  %212 = getelementptr inbounds %struct.v2dScrollerMove, ptr %17, i64 0, i32 8
  store i32 %211, ptr %212, align 4, !tbaa !164
  call void @UI_view2d_scrollers_free(ptr noundef %25) #7
  call void @ED_region_tag_redraw(ptr noundef %14) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7
  %213 = load ptr, ptr %18, align 8, !tbaa !76
  %214 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %215 = load i16, ptr %214, align 8, !tbaa !88
  %216 = icmp eq i16 %215, 2
  br i1 %216, label %217, label %231

217:                                              ; preds = %207
  %218 = getelementptr inbounds %struct.v2dScrollerMove, ptr %213, i64 0, i32 2
  %219 = load i16, ptr %218, align 8, !tbaa !151
  switch i16 %219, label %229 [
    i16 104, label %221
    i16 118, label %220
  ]

220:                                              ; preds = %217
  br label %221

221:                                              ; preds = %217, %220
  %222 = phi ptr [ %9, %220 ], [ %7, %217 ]
  %223 = load i32, ptr %222, align 4, !tbaa !124
  %224 = getelementptr inbounds %struct.v2dScrollerMove, ptr %213, i64 0, i32 8
  %225 = load i32, ptr %224, align 4, !tbaa !164
  %226 = sub nsw i32 %223, %225
  %227 = sitofp i32 %226 to float
  %228 = getelementptr inbounds %struct.v2dScrollerMove, ptr %213, i64 0, i32 6
  store float %227, ptr %228, align 4, !tbaa !165
  br label %229

229:                                              ; preds = %221, %217
  call fastcc void @scroller_activate_apply(ptr noundef %0, ptr noundef %1)
  %230 = getelementptr inbounds %struct.v2dScrollerMove, ptr %213, i64 0, i32 3
  store i16 0, ptr %230, align 2, !tbaa !160
  br label %231

231:                                              ; preds = %229, %207
  %232 = getelementptr inbounds %struct.v2dScrollerMove, ptr %213, i64 0, i32 3
  %233 = load i16, ptr %232, align 2, !tbaa !160
  switch i16 %233, label %250 [
    i16 -1, label %234
    i16 1, label %234
  ]

234:                                              ; preds = %231, %231
  %235 = getelementptr inbounds %struct.v2dScrollerMove, ptr %213, i64 0, i32 2
  %236 = load i16, ptr %235, align 8, !tbaa !151
  switch i16 %236, label %250 [
    i16 104, label %237
    i16 118, label %244
  ]

237:                                              ; preds = %234
  %238 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2, i32 9
  %239 = load i16, ptr %238, align 8, !tbaa !166
  %240 = and i16 %239, 64
  %241 = icmp eq i16 %240, 0
  br i1 %241, label %249, label %242

242:                                              ; preds = %237
  %243 = icmp eq i16 %236, 118
  br i1 %243, label %244, label %250

244:                                              ; preds = %234, %242
  %245 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2, i32 9
  %246 = load i16, ptr %245, align 8, !tbaa !166
  %247 = and i16 %246, 32
  %248 = icmp eq i16 %247, 0
  br i1 %248, label %249, label %250

249:                                              ; preds = %244, %237
  store i16 0, ptr %232, align 2, !tbaa !160
  br label %250

250:                                              ; preds = %234, %231, %242, %244, %249
  %251 = load i16, ptr %232, align 2, !tbaa !160
  %252 = icmp eq i16 %251, 0
  br i1 %252, label %253, label %278

253:                                              ; preds = %250
  %254 = getelementptr inbounds %struct.v2dScrollerMove, ptr %213, i64 0, i32 2
  %255 = load i16, ptr %254, align 8, !tbaa !151
  switch i16 %255, label %278 [
    i16 104, label %256
    i16 118, label %263
  ]

256:                                              ; preds = %253
  %257 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2, i32 13
  %258 = load i16, ptr %257, align 8, !tbaa !92
  %259 = and i16 %258, 2
  %260 = icmp eq i16 %259, 0
  br i1 %260, label %261, label %268

261:                                              ; preds = %256
  %262 = icmp eq i16 %255, 118
  br i1 %262, label %263, label %278

263:                                              ; preds = %253, %261
  %264 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2, i32 13
  %265 = load i16, ptr %264, align 8, !tbaa !92
  %266 = and i16 %265, 4
  %267 = icmp eq i16 %266, 0
  br i1 %267, label %278, label %268

268:                                              ; preds = %263, %256
  %269 = load ptr, ptr %18, align 8, !tbaa !76
  %270 = icmp eq ptr %269, null
  br i1 %270, label %310, label %271

271:                                              ; preds = %268
  %272 = load ptr, ptr %269, align 8, !tbaa !148
  %273 = getelementptr inbounds %struct.View2D, ptr %272, i64 0, i32 10
  %274 = load i16, ptr %273, align 2, !tbaa !167
  %275 = and i16 %274, -4
  store i16 %275, ptr %273, align 2, !tbaa !167
  %276 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  call void %276(ptr noundef nonnull %269) #7
  store ptr null, ptr %18, align 8, !tbaa !76
  %277 = call ptr @CTX_wm_region(ptr noundef %0) #7
  call void @ED_region_tag_redraw(ptr noundef %277) #7
  br label %310

278:                                              ; preds = %253, %261, %263, %250
  %279 = getelementptr inbounds %struct.v2dScrollerMove, ptr %213, i64 0, i32 2
  %280 = load i16, ptr %279, align 8, !tbaa !151
  %281 = icmp eq i16 %280, 104
  br i1 %281, label %282, label %287

282:                                              ; preds = %278
  %283 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2, i32 9
  %284 = load i16, ptr %283, align 8, !tbaa !166
  %285 = and i16 %284, 1024
  %286 = icmp eq i16 %285, 0
  br i1 %286, label %287, label %294

287:                                              ; preds = %282, %278
  %288 = icmp eq i16 %280, 118
  br i1 %288, label %289, label %304

289:                                              ; preds = %287
  %290 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2, i32 9
  %291 = load i16, ptr %290, align 8, !tbaa !166
  %292 = and i16 %291, 512
  %293 = icmp eq i16 %292, 0
  br i1 %293, label %304, label %294

294:                                              ; preds = %289, %282
  %295 = load ptr, ptr %18, align 8, !tbaa !76
  %296 = icmp eq ptr %295, null
  br i1 %296, label %310, label %297

297:                                              ; preds = %294
  %298 = load ptr, ptr %295, align 8, !tbaa !148
  %299 = getelementptr inbounds %struct.View2D, ptr %298, i64 0, i32 10
  %300 = load i16, ptr %299, align 2, !tbaa !167
  %301 = and i16 %300, -4
  store i16 %301, ptr %299, align 2, !tbaa !167
  %302 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  call void %302(ptr noundef nonnull %295) #7
  store ptr null, ptr %18, align 8, !tbaa !76
  %303 = call ptr @CTX_wm_region(ptr noundef %0) #7
  call void @ED_region_tag_redraw(ptr noundef %303) #7
  br label %310

304:                                              ; preds = %289, %287
  %305 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2, i32 10
  %306 = load i16, ptr %305, align 2, !tbaa !167
  %307 = select i1 %281, i16 1, i16 2
  %308 = or i16 %306, %307
  store i16 %308, ptr %305, align 2, !tbaa !167
  %309 = call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #7
  br label %310

310:                                              ; preds = %297, %294, %271, %268, %3, %304
  %311 = phi i32 [ 1, %304 ], [ 8, %3 ], [ 8, %268 ], [ 8, %271 ], [ 8, %294 ], [ 8, %297 ]
  ret i32 %311
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @scroller_activate_modal(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %7 = load i16, ptr %6, align 8, !tbaa !88
  switch i16 %7, label %96 [
    i16 4, label %8
    i16 1, label %52
    i16 2, label %52
  ]

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.v2dScrollerMove, ptr %5, i64 0, i32 3
  %10 = load i16, ptr %9, align 2, !tbaa !160
  switch i16 %10, label %45 [
    i16 0, label %11
    i16 1, label %11
    i16 -1, label %26
  ]

11:                                               ; preds = %8, %8
  %12 = getelementptr inbounds %struct.v2dScrollerMove, ptr %5, i64 0, i32 2
  %13 = load i16, ptr %12, align 8, !tbaa !151
  switch i16 %13, label %45 [
    i16 104, label %14
    i16 118, label %20
  ]

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %16 = load i32, ptr %15, align 4, !tbaa !81
  %17 = getelementptr inbounds %struct.v2dScrollerMove, ptr %5, i64 0, i32 9
  %18 = load i32, ptr %17, align 8, !tbaa !152
  %19 = sub nsw i32 %16, %18
  br label %41

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %22 = load i32, ptr %21, align 8, !tbaa !85
  %23 = getelementptr inbounds %struct.v2dScrollerMove, ptr %5, i64 0, i32 10
  %24 = load i32, ptr %23, align 4, !tbaa !153
  %25 = sub nsw i32 %22, %24
  br label %41

26:                                               ; preds = %8
  %27 = getelementptr inbounds %struct.v2dScrollerMove, ptr %5, i64 0, i32 2
  %28 = load i16, ptr %27, align 8, !tbaa !151
  switch i16 %28, label %45 [
    i16 104, label %29
    i16 118, label %35
  ]

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.v2dScrollerMove, ptr %5, i64 0, i32 9
  %31 = load i32, ptr %30, align 8, !tbaa !152
  %32 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %33 = load i32, ptr %32, align 4, !tbaa !81
  %34 = sub nsw i32 %31, %33
  br label %41

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.v2dScrollerMove, ptr %5, i64 0, i32 10
  %37 = load i32, ptr %36, align 4, !tbaa !153
  %38 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %39 = load i32, ptr %38, align 8, !tbaa !85
  %40 = sub nsw i32 %37, %39
  br label %41

41:                                               ; preds = %20, %14, %29, %35
  %42 = phi i32 [ %40, %35 ], [ %34, %29 ], [ %19, %14 ], [ %25, %20 ]
  %43 = sitofp i32 %42 to float
  %44 = getelementptr inbounds %struct.v2dScrollerMove, ptr %5, i64 0, i32 6
  store float %43, ptr %44, align 4, !tbaa !165
  br label %45

45:                                               ; preds = %41, %8, %26, %11
  %46 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %47 = load i32, ptr %46, align 4, !tbaa !81
  %48 = getelementptr inbounds %struct.v2dScrollerMove, ptr %5, i64 0, i32 9
  store i32 %47, ptr %48, align 8, !tbaa !152
  %49 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %50 = load i32, ptr %49, align 8, !tbaa !85
  %51 = getelementptr inbounds %struct.v2dScrollerMove, ptr %5, i64 0, i32 10
  store i32 %50, ptr %51, align 4, !tbaa !153
  tail call fastcc void @scroller_activate_apply(ptr noundef %0, ptr noundef %1)
  br label %96

52:                                               ; preds = %3, %3
  %53 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %54 = load i16, ptr %53, align 2, !tbaa !93
  %55 = icmp eq i16 %54, 2
  br i1 %55, label %56, label %96

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.v2dScrollerMove, ptr %5, i64 0, i32 3
  %58 = load i16, ptr %57, align 2, !tbaa !160
  %59 = and i16 %58, -2
  %60 = icmp eq i16 %59, 2
  br i1 %60, label %61, label %79

61:                                               ; preds = %56
  switch i16 %58, label %69 [
    i16 2, label %63
    i16 3, label %62
  ]

62:                                               ; preds = %61
  br label %63

63:                                               ; preds = %61, %62
  %64 = phi float [ 0x3FE99999A0000000, %62 ], [ 0xBFE99999A0000000, %61 ]
  %65 = getelementptr inbounds %struct.v2dScrollerMove, ptr %5, i64 0, i32 7
  %66 = load float, ptr %65, align 8, !tbaa !161
  %67 = fmul float %66, %64
  %68 = getelementptr inbounds %struct.v2dScrollerMove, ptr %5, i64 0, i32 6
  store float %67, ptr %68, align 4, !tbaa !165
  br label %69

69:                                               ; preds = %63, %61
  tail call fastcc void @scroller_activate_apply(ptr noundef %0, ptr noundef %1)
  %70 = load ptr, ptr %4, align 8, !tbaa !76
  %71 = icmp eq ptr %70, null
  br i1 %71, label %96, label %72

72:                                               ; preds = %69
  %73 = load ptr, ptr %70, align 8, !tbaa !148
  %74 = getelementptr inbounds %struct.View2D, ptr %73, i64 0, i32 10
  %75 = load i16, ptr %74, align 2, !tbaa !167
  %76 = and i16 %75, -4
  store i16 %76, ptr %74, align 2, !tbaa !167
  %77 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %77(ptr noundef nonnull %70) #7
  store ptr null, ptr %4, align 8, !tbaa !76
  %78 = tail call ptr @CTX_wm_region(ptr noundef %0) #7
  tail call void @ED_region_tag_redraw(ptr noundef %78) #7
  br label %96

79:                                               ; preds = %56
  %80 = getelementptr inbounds %struct.v2dScrollerMove, ptr %5, i64 0, i32 9
  %81 = load i32, ptr %80, align 8, !tbaa !152
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.v2dScrollerMove, ptr %5, i64 0, i32 10
  %85 = load i32, ptr %84, align 4, !tbaa !153
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83, %79
  %88 = icmp eq ptr %5, null
  br i1 %88, label %96, label %89

89:                                               ; preds = %87
  %90 = load ptr, ptr %5, align 8, !tbaa !148
  %91 = getelementptr inbounds %struct.View2D, ptr %90, i64 0, i32 10
  %92 = load i16, ptr %91, align 2, !tbaa !167
  %93 = and i16 %92, -4
  store i16 %93, ptr %91, align 2, !tbaa !167
  %94 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %94(ptr noundef nonnull %5) #7
  store ptr null, ptr %4, align 8, !tbaa !76
  %95 = tail call ptr @CTX_wm_region(ptr noundef %0) #7
  tail call void @ED_region_tag_redraw(ptr noundef %95) #7
  br label %96

96:                                               ; preds = %89, %87, %72, %69, %45, %3, %83, %52
  %97 = phi i32 [ 1, %52 ], [ 1, %83 ], [ 1, %3 ], [ 1, %45 ], [ 4, %69 ], [ 4, %72 ], [ 4, %87 ], [ 4, %89 ]
  ret i32 %97
}

; Function Attrs: nounwind uwtable
define internal void @scroller_activate_cancel(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !76
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !148
  %8 = getelementptr inbounds %struct.View2D, ptr %7, i64 0, i32 10
  %9 = load i16, ptr %8, align 2, !tbaa !167
  %10 = and i16 %9, -4
  store i16 %10, ptr %8, align 2, !tbaa !167
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %11(ptr noundef nonnull %4) #7
  store ptr null, ptr %3, align 8, !tbaa !76
  %12 = tail call ptr @CTX_wm_region(ptr noundef %0) #7
  tail call void @ED_region_tag_redraw(ptr noundef %12) #7
  br label %13

13:                                               ; preds = %2, %6
  ret void
}

declare signext i16 @UI_view2d_mouse_in_scrollers(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @scroller_activate_apply(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !76
  %5 = load ptr, ptr %4, align 8, !tbaa !148
  %6 = getelementptr inbounds %struct.v2dScrollerMove, ptr %4, i64 0, i32 4
  %7 = load float, ptr %6, align 4, !tbaa !154
  %8 = getelementptr inbounds %struct.v2dScrollerMove, ptr %4, i64 0, i32 6
  %9 = load float, ptr %8, align 4, !tbaa !165
  %10 = fmul float %7, %9
  %11 = getelementptr inbounds %struct.v2dScrollerMove, ptr %4, i64 0, i32 5
  %12 = load float, ptr %11, align 8, !tbaa !155
  %13 = fdiv float %10, %12
  %14 = fadd float %13, 5.000000e-01
  %15 = tail call float @llvm.floor.f32(float %14)
  %16 = fmul float %12, %15
  %17 = getelementptr inbounds %struct.v2dScrollerMove, ptr %4, i64 0, i32 3
  %18 = load i16, ptr %17, align 2, !tbaa !160
  %19 = getelementptr inbounds %struct.v2dScrollerMove, ptr %4, i64 0, i32 2
  %20 = load i16, ptr %19, align 8, !tbaa !151
  switch i16 %18, label %63 [
    i16 -1, label %21
    i16 1, label %42
  ]

21:                                               ; preds = %2
  switch i16 %20, label %90 [
    i16 104, label %22
    i16 118, label %33
  ]

22:                                               ; preds = %21
  %23 = getelementptr inbounds %struct.View2D, ptr %5, i64 0, i32 12
  %24 = load i16, ptr %23, align 2, !tbaa !116
  %25 = and i16 %24, 256
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.View2D, ptr %5, i64 0, i32 1
  %29 = load float, ptr %28, align 8, !tbaa !103
  %30 = fsub float %29, %16
  store float %30, ptr %28, align 8, !tbaa !103
  br label %31

31:                                               ; preds = %27, %22
  %32 = icmp eq i16 %20, 118
  br i1 %32, label %33, label %90

33:                                               ; preds = %21, %31
  %34 = getelementptr inbounds %struct.View2D, ptr %5, i64 0, i32 12
  %35 = load i16, ptr %34, align 2, !tbaa !116
  %36 = and i16 %35, 512
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %38, label %90

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.View2D, ptr %5, i64 0, i32 1, i32 2
  %40 = load float, ptr %39, align 8, !tbaa !105
  %41 = fsub float %40, %16
  store float %41, ptr %39, align 8, !tbaa !105
  br label %90

42:                                               ; preds = %2
  switch i16 %20, label %90 [
    i16 104, label %43
    i16 118, label %54
  ]

43:                                               ; preds = %42
  %44 = getelementptr inbounds %struct.View2D, ptr %5, i64 0, i32 12
  %45 = load i16, ptr %44, align 2, !tbaa !116
  %46 = and i16 %45, 256
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.View2D, ptr %5, i64 0, i32 1, i32 1
  %50 = load float, ptr %49, align 4, !tbaa !104
  %51 = fadd float %16, %50
  store float %51, ptr %49, align 4, !tbaa !104
  br label %52

52:                                               ; preds = %48, %43
  %53 = icmp eq i16 %20, 118
  br i1 %53, label %54, label %90

54:                                               ; preds = %42, %52
  %55 = getelementptr inbounds %struct.View2D, ptr %5, i64 0, i32 12
  %56 = load i16, ptr %55, align 2, !tbaa !116
  %57 = and i16 %56, 512
  %58 = icmp eq i16 %57, 0
  br i1 %58, label %59, label %90

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.View2D, ptr %5, i64 0, i32 1, i32 3
  %61 = load float, ptr %60, align 4, !tbaa !106
  %62 = fadd float %16, %61
  store float %62, ptr %60, align 4, !tbaa !106
  br label %90

63:                                               ; preds = %2
  switch i16 %20, label %90 [
    i16 104, label %64
    i16 118, label %78
  ]

64:                                               ; preds = %63
  %65 = getelementptr inbounds %struct.View2D, ptr %5, i64 0, i32 13
  %66 = load i16, ptr %65, align 8, !tbaa !92
  %67 = and i16 %66, 2
  %68 = icmp eq i16 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.View2D, ptr %5, i64 0, i32 1
  %71 = load float, ptr %70, align 8, !tbaa !103
  %72 = fadd float %16, %71
  store float %72, ptr %70, align 8, !tbaa !103
  %73 = getelementptr inbounds %struct.View2D, ptr %5, i64 0, i32 1, i32 1
  %74 = load float, ptr %73, align 4, !tbaa !104
  %75 = fadd float %16, %74
  store float %75, ptr %73, align 4, !tbaa !104
  br label %76

76:                                               ; preds = %69, %64
  %77 = icmp eq i16 %20, 118
  br i1 %77, label %78, label %90

78:                                               ; preds = %63, %76
  %79 = getelementptr inbounds %struct.View2D, ptr %5, i64 0, i32 13
  %80 = load i16, ptr %79, align 8, !tbaa !92
  %81 = and i16 %80, 4
  %82 = icmp eq i16 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.View2D, ptr %5, i64 0, i32 1, i32 2
  %85 = load float, ptr %84, align 8, !tbaa !105
  %86 = fadd float %16, %85
  store float %86, ptr %84, align 8, !tbaa !105
  %87 = getelementptr inbounds %struct.View2D, ptr %5, i64 0, i32 1, i32 3
  %88 = load float, ptr %87, align 4, !tbaa !106
  %89 = fadd float %16, %88
  store float %89, ptr %87, align 4, !tbaa !106
  br label %90

90:                                               ; preds = %63, %42, %21, %76, %78, %83, %52, %54, %59, %31, %33, %38
  tail call void @UI_view2d_curRect_validate(ptr noundef %5) #7
  %91 = getelementptr inbounds %struct.v2dScrollerMove, ptr %4, i64 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !150
  tail call void @ED_region_tag_redraw(ptr noundef %92) #7
  %93 = tail call ptr @CTX_wm_screen(ptr noundef %0) #7
  %94 = tail call ptr @CTX_wm_area(ptr noundef %0) #7
  tail call void @UI_view2d_sync(ptr noundef %93, ptr noundef %94, ptr noundef %5, i32 noundef 1) #7
  ret void
}

declare ptr @UI_view2d_scrollers_calc(ptr noundef, ptr noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext) local_unnamed_addr #2

declare void @BLI_rctf_union(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @UI_view2d_scrollers_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #6

; Function Attrs: nounwind uwtable
define internal noundef i32 @reset_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @UI_GetStyle() #7
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #7
  %5 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2, i32 4
  %6 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2, i32 4, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !97
  %8 = load i32, ptr %5, align 4, !tbaa !98
  %9 = add i32 %7, 1
  %10 = sub i32 %9, %8
  %11 = sitofp i32 %10 to float
  %12 = fptosi float %11 to i32
  %13 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2, i32 4, i32 3
  %14 = load i32, ptr %13, align 4, !tbaa !99
  %15 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2, i32 4, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !100
  %17 = add i32 %14, 1
  %18 = sub i32 %17, %16
  %19 = sitofp i32 %18 to float
  %20 = fptosi float %19 to i32
  %21 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2, i32 1
  %22 = load float, ptr %21, align 8, !tbaa !103
  %23 = sitofp i32 %12 to float
  %24 = fadd float %22, %23
  %25 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2, i32 1, i32 1
  store float %24, ptr %25, align 4, !tbaa !104
  %26 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2, i32 1, i32 2
  %27 = load float, ptr %26, align 8, !tbaa !105
  %28 = sitofp i32 %20 to float
  %29 = fadd float %27, %28
  %30 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2, i32 1, i32 3
  store float %29, ptr %30, align 4, !tbaa !106
  %31 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2, i32 15
  %32 = load i16, ptr %31, align 4, !tbaa !127
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %63, label %34

34:                                               ; preds = %2
  %35 = zext i16 %32 to i32
  %36 = and i32 %35, 3
  switch i32 %36, label %49 [
    i32 1, label %37
    i32 2, label %43
  ]

37:                                               ; preds = %34
  store float 0.000000e+00, ptr %25, align 4, !tbaa !104
  %38 = sub nsw i32 0, %12
  %39 = sitofp i32 %38 to float
  %40 = getelementptr inbounds %struct.uiStyle, ptr %3, i64 0, i32 7
  %41 = load float, ptr %40, align 8, !tbaa !168
  %42 = fmul float %41, %39
  br label %47

43:                                               ; preds = %34
  %44 = getelementptr inbounds %struct.uiStyle, ptr %3, i64 0, i32 7
  %45 = load float, ptr %44, align 8, !tbaa !168
  %46 = fmul float %45, %23
  store float %46, ptr %25, align 4, !tbaa !104
  br label %47

47:                                               ; preds = %37, %43
  %48 = phi float [ 0.000000e+00, %43 ], [ %42, %37 ]
  store float %48, ptr %21, align 8, !tbaa !103
  br label %49

49:                                               ; preds = %47, %34
  %50 = and i32 %35, 12
  switch i32 %50, label %63 [
    i32 4, label %51
    i32 8, label %57
  ]

51:                                               ; preds = %49
  store float 0.000000e+00, ptr %30, align 4, !tbaa !106
  %52 = sub nsw i32 0, %20
  %53 = sitofp i32 %52 to float
  %54 = getelementptr inbounds %struct.uiStyle, ptr %3, i64 0, i32 7
  %55 = load float, ptr %54, align 8, !tbaa !168
  %56 = fmul float %55, %53
  br label %61

57:                                               ; preds = %49
  %58 = getelementptr inbounds %struct.uiStyle, ptr %3, i64 0, i32 7
  %59 = load float, ptr %58, align 8, !tbaa !168
  %60 = fmul float %59, %28
  store float %60, ptr %30, align 4, !tbaa !106
  br label %61

61:                                               ; preds = %57, %51
  %62 = phi float [ %56, %51 ], [ 0.000000e+00, %57 ]
  store float %62, ptr %26, align 8, !tbaa !105
  br label %63

63:                                               ; preds = %61, %49, %2
  %64 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2
  tail call void @UI_view2d_curRect_validate(ptr noundef nonnull %64) #7
  tail call void @ED_region_tag_redraw(ptr noundef %4) #7
  %65 = tail call ptr @CTX_wm_screen(ptr noundef %0) #7
  %66 = tail call ptr @CTX_wm_area(ptr noundef %0) #7
  tail call void @UI_view2d_sync(ptr noundef %65, ptr noundef %66, ptr noundef nonnull %64, i32 noundef 1) #7
  tail call void @UI_view2d_zoom_cache_reset() #7
  ret i32 4
}

declare ptr @UI_GetStyle() local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!34 = !{i64 0, i64 4, !35, i64 4, i64 4, !35, i64 8, i64 4, !35, i64 12, i64 4, !35}
!35 = !{!36, !36, i64 0}
!36 = !{!"float", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !36, i64 4}
!40 = !{!"rctf", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12}
!41 = !{!40, !36, i64 0}
!42 = !{!40, !36, i64 12}
!43 = !{!40, !36, i64 8}
!44 = distinct !{!44, !45, !46}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!"llvm.loop.unroll.disable"}
!47 = !{!48, !49, i64 32}
!48 = !{!"SmoothView2DStore", !40, i64 0, !40, i64 16, !49, i64 32}
!49 = !{!"double", !37, i64 0}
!50 = !{!51, !55, i64 144}
!51 = !{!"View2D", !40, i64 0, !40, i64 16, !52, i64 32, !52, i64 48, !52, i64 64, !37, i64 80, !37, i64 88, !36, i64 96, !36, i64 100, !54, i64 104, !54, i64 106, !54, i64 108, !54, i64 110, !54, i64 112, !54, i64 114, !54, i64 116, !54, i64 118, !54, i64 120, !54, i64 122, !54, i64 124, !54, i64 126, !55, i64 128, !53, i64 136, !53, i64 140, !55, i64 144, !55, i64 152}
!52 = !{!"rcti", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12}
!53 = !{!"int", !37, i64 0}
!54 = !{!"short", !37, i64 0}
!55 = !{!"any pointer", !37, i64 0}
!56 = !{!55, !55, i64 0}
!57 = !{i64 0, i64 4, !35, i64 4, i64 4, !35, i64 8, i64 4, !35, i64 12, i64 4, !35, i64 16, i64 4, !35, i64 20, i64 4, !35, i64 24, i64 4, !35, i64 28, i64 4, !35, i64 32, i64 8, !58}
!58 = !{!49, !49, i64 0}
!59 = !{!51, !55, i64 152}
!60 = !{!61, !55, i64 0}
!61 = !{!"wmOperatorType", !55, i64 0, !55, i64 8, !55, i64 16, !55, i64 24, !55, i64 32, !55, i64 40, !55, i64 48, !55, i64 56, !55, i64 64, !55, i64 72, !55, i64 80, !55, i64 88, !55, i64 96, !55, i64 104, !62, i64 112, !55, i64 128, !55, i64 136, !55, i64 144, !63, i64 152, !54, i64 184}
!62 = !{!"ListBase", !55, i64 0, !55, i64 8}
!63 = !{!"ExtensionRNA", !55, i64 0, !55, i64 8, !55, i64 16, !55, i64 24}
!64 = !{!61, !55, i64 24}
!65 = !{!61, !55, i64 8}
!66 = !{!61, !55, i64 32}
!67 = !{!61, !55, i64 48}
!68 = !{!61, !55, i64 64}
!69 = !{!61, !55, i64 56}
!70 = !{!61, !54, i64 184}
!71 = !{!61, !55, i64 88}
!72 = !{!61, !55, i64 72}
!73 = !{!74, !55, i64 176}
!74 = !{!"wmKeyMapItem", !55, i64 0, !55, i64 8, !37, i64 16, !55, i64 80, !37, i64 88, !54, i64 152, !54, i64 154, !54, i64 156, !54, i64 158, !54, i64 160, !54, i64 162, !54, i64 164, !54, i64 166, !54, i64 168, !54, i64 170, !54, i64 172, !54, i64 174, !55, i64 176}
!75 = !{i32 0, i32 2}
!76 = !{!77, !55, i64 96}
!77 = !{!"wmOperator", !55, i64 0, !55, i64 8, !37, i64 16, !55, i64 80, !55, i64 88, !55, i64 96, !55, i64 104, !55, i64 112, !55, i64 120, !62, i64 128, !55, i64 144, !55, i64 152, !54, i64 160, !37, i64 162}
!78 = !{!77, !55, i64 112}
!79 = !{!80, !55, i64 24}
!80 = !{!"v2dViewPanData", !55, i64 0, !55, i64 8, !55, i64 16, !55, i64 24, !36, i64 32, !36, i64 36, !53, i64 40, !53, i64 44, !53, i64 48, !53, i64 52, !53, i64 56, !54, i64 60}
!81 = !{!82, !53, i64 20}
!82 = !{!"wmEvent", !55, i64 0, !55, i64 8, !54, i64 16, !54, i64 18, !53, i64 20, !53, i64 24, !37, i64 28, !37, i64 36, !37, i64 42, !37, i64 43, !54, i64 44, !54, i64 46, !53, i64 48, !53, i64 52, !49, i64 56, !53, i64 64, !53, i64 68, !54, i64 72, !54, i64 74, !54, i64 76, !54, i64 78, !54, i64 80, !54, i64 82, !55, i64 88, !55, i64 96, !54, i64 104, !54, i64 106, !53, i64 108, !55, i64 112}
!83 = !{!80, !53, i64 48}
!84 = !{!80, !53, i64 40}
!85 = !{!82, !53, i64 24}
!86 = !{!80, !53, i64 52}
!87 = !{!80, !53, i64 44}
!88 = !{!82, !54, i64 16}
!89 = !{!80, !53, i64 56}
!90 = !{!82, !53, i64 48}
!91 = !{!82, !53, i64 52}
!92 = !{!51, !54, i64 112}
!93 = !{!82, !54, i64 18}
!94 = !{!80, !55, i64 0}
!95 = !{!80, !55, i64 8}
!96 = !{!80, !55, i64 16}
!97 = !{!52, !53, i64 4}
!98 = !{!52, !53, i64 0}
!99 = !{!52, !53, i64 12}
!100 = !{!52, !53, i64 8}
!101 = !{!80, !36, i64 32}
!102 = !{!80, !36, i64 36}
!103 = !{!51, !36, i64 16}
!104 = !{!51, !36, i64 20}
!105 = !{!51, !36, i64 24}
!106 = !{!51, !36, i64 28}
!107 = !{!108, !37, i64 72}
!108 = !{!"ScrArea", !55, i64 0, !55, i64 8, !55, i64 16, !55, i64 24, !55, i64 32, !55, i64 40, !55, i64 48, !52, i64 56, !37, i64 72, !37, i64 73, !54, i64 74, !54, i64 76, !54, i64 78, !54, i64 80, !54, i64 82, !54, i64 84, !37, i64 86, !37, i64 87, !55, i64 88, !62, i64 96, !62, i64 112, !62, i64 128, !62, i64 144}
!109 = !{!108, !55, i64 96}
!110 = !{!111, !54, i64 292}
!111 = !{!"SpaceOops", !55, i64 0, !55, i64 8, !62, i64 16, !53, i64 32, !36, i64 36, !37, i64 40, !51, i64 56, !62, i64 216, !55, i64 232, !37, i64 240, !112, i64 272, !54, i64 288, !54, i64 290, !54, i64 292, !54, i64 294, !55, i64 296}
!112 = !{!"TreeStoreElem", !54, i64 0, !54, i64 2, !54, i64 4, !54, i64 6, !55, i64 8}
!113 = !{!114, !53, i64 88}
!114 = !{!"ARegion", !55, i64 0, !55, i64 8, !51, i64 16, !52, i64 176, !52, i64 192, !54, i64 208, !54, i64 210, !54, i64 212, !54, i64 214, !54, i64 216, !54, i64 218, !36, i64 220, !54, i64 224, !54, i64 226, !54, i64 228, !54, i64 230, !54, i64 232, !54, i64 234, !54, i64 236, !54, i64 238, !55, i64 240, !62, i64 248, !62, i64 264, !62, i64 280, !62, i64 296, !62, i64 312, !62, i64 328, !62, i64 344, !55, i64 360, !55, i64 368, !55, i64 376}
!115 = !{!114, !53, i64 92}
!116 = !{!51, !54, i64 110}
!117 = !{!118, !55, i64 0}
!118 = !{!"v2dViewZoomData", !55, i64 0, !55, i64 8, !55, i64 16, !49, i64 24, !53, i64 32, !53, i64 36, !53, i64 40, !36, i64 44, !36, i64 48, !36, i64 52, !36, i64 56}
!119 = !{!118, !55, i64 8}
!120 = !{!121, !53, i64 8484}
!121 = !{!"UserDef", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !53, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !53, i64 8468, !54, i64 8472, !54, i64 8474, !54, i64 8476, !54, i64 8478, !54, i64 8480, !54, i64 8482, !53, i64 8484, !53, i64 8488, !53, i64 8492, !54, i64 8496, !54, i64 8498, !53, i64 8500, !53, i64 8504, !53, i64 8508, !53, i64 8512, !53, i64 8516, !53, i64 8520, !53, i64 8524, !54, i64 8528, !54, i64 8530, !54, i64 8532, !54, i64 8534, !62, i64 8536, !62, i64 8552, !62, i64 8568, !62, i64 8584, !62, i64 8600, !62, i64 8616, !62, i64 8632, !37, i64 8648, !54, i64 8712, !54, i64 8714, !54, i64 8716, !54, i64 8718, !54, i64 8720, !54, i64 8722, !54, i64 8724, !54, i64 8726, !37, i64 8728, !54, i64 8896, !54, i64 8898, !54, i64 8900, !54, i64 8902, !54, i64 8904, !54, i64 8906, !54, i64 8908, !54, i64 8910, !53, i64 8912, !53, i64 8916, !54, i64 8920, !54, i64 8922, !54, i64 8924, !54, i64 8926, !54, i64 8928, !54, i64 8930, !54, i64 8932, !54, i64 8934, !54, i64 8936, !54, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !54, i64 8944, !54, i64 8946, !54, i64 8948, !54, i64 8950, !54, i64 8952, !54, i64 8954, !36, i64 8956, !36, i64 8960, !53, i64 8964, !54, i64 8968, !54, i64 8970, !36, i64 8972, !54, i64 8976, !54, i64 8978, !54, i64 8980, !54, i64 8982, !122, i64 8984, !37, i64 9760, !37, i64 9772, !54, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !53, i64 10896, !53, i64 10900, !36, i64 10904, !36, i64 10908, !53, i64 10912, !54, i64 10916, !54, i64 10918, !54, i64 10920, !54, i64 10922, !54, i64 10924, !54, i64 10926, !123, i64 10928}
!122 = !{!"ColorBand", !54, i64 0, !54, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!123 = !{!"WalkNavigation", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !54, i64 24, !37, i64 26}
!124 = !{!53, !53, i64 0}
!125 = !{i32 4, i32 9}
!126 = !{!114, !54, i64 214}
!127 = !{!51, !54, i64 116}
!128 = !{!118, !36, i64 52}
!129 = !{!118, !36, i64 56}
!130 = !{!118, !55, i64 16}
!131 = !{!118, !53, i64 32}
!132 = !{!118, !53, i64 36}
!133 = !{!118, !53, i64 40}
!134 = !{!121, !54, i64 8498}
!135 = !{!118, !49, i64 24}
!136 = !{!82, !55, i64 112}
!137 = !{!114, !53, i64 176}
!138 = !{!114, !53, i64 184}
!139 = !{!51, !36, i64 100}
!140 = !{!118, !36, i64 44}
!141 = !{!118, !36, i64 48}
!142 = !{!143, !36, i64 24}
!143 = !{!"wmNDOFMotionData", !37, i64 0, !37, i64 12, !36, i64 24, !53, i64 28}
!144 = !{!121, !53, i64 8964}
!145 = !{!114, !54, i64 130}
!146 = !{!147, !49, i64 48}
!147 = !{!"wmTimer", !55, i64 0, !55, i64 8, !55, i64 16, !49, i64 24, !53, i64 32, !55, i64 40, !49, i64 48, !49, i64 56, !49, i64 64, !49, i64 72, !49, i64 80, !53, i64 88}
!148 = !{!149, !55, i64 0}
!149 = !{!"v2dScrollerMove", !55, i64 0, !55, i64 8, !54, i64 16, !54, i64 18, !36, i64 20, !36, i64 24, !36, i64 28, !36, i64 32, !53, i64 36, !53, i64 40, !53, i64 44}
!150 = !{!149, !55, i64 8}
!151 = !{!149, !54, i64 16}
!152 = !{!149, !53, i64 40}
!153 = !{!149, !53, i64 44}
!154 = !{!149, !36, i64 20}
!155 = !{!149, !36, i64 24}
!156 = !{!157, !53, i64 8}
!157 = !{!"View2DScrollers", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12}
!158 = !{!157, !53, i64 12}
!159 = !{!121, !54, i64 8948}
!160 = !{!149, !54, i64 18}
!161 = !{!149, !36, i64 32}
!162 = !{!157, !53, i64 0}
!163 = !{!157, !53, i64 4}
!164 = !{!149, !53, i64 36}
!165 = !{!149, !36, i64 28}
!166 = !{!51, !54, i64 104}
!167 = !{!51, !54, i64 106}
!168 = !{!169, !36, i64 208}
!169 = !{!"uiStyle", !55, i64 0, !55, i64 8, !37, i64 16, !170, i64 80, !170, i64 112, !170, i64 144, !170, i64 176, !36, i64 208, !54, i64 212, !54, i64 214, !54, i64 216, !54, i64 218, !54, i64 220, !54, i64 222, !54, i64 224, !54, i64 226, !54, i64 228, !54, i64 230}
!170 = !{!"uiFontStyle", !54, i64 0, !54, i64 2, !54, i64 4, !37, i64 6, !54, i64 12, !54, i64 14, !54, i64 16, !54, i64 18, !54, i64 20, !54, i64 22, !36, i64 24, !36, i64 28}
