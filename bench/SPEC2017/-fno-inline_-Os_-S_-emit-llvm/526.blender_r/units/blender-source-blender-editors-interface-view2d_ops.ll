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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @UI_view2d_smooth_view(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.SmoothView2DStore, align 8
  %6 = tail call ptr @CTX_wm_manager(ptr noundef %0) #12
  %7 = tail call ptr @CTX_wm_window(ptr noundef %0) #12
  %8 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, i8 0, i64 40, i1 false)
  %9 = getelementptr inbounds %struct.SmoothView2DStore, ptr %5, i64 0, i32 1
  %10 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %10, i64 16, i1 false), !tbaa.struct !5
  %11 = icmp eq ptr %2, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !5
  %13 = tail call fastcc float @smooth_view_rect_to_fac(ptr noundef nonnull %10, ptr noundef nonnull %2) #14
  br label %14

14:                                               ; preds = %4, %12
  %15 = phi float [ %13, %12 ], [ 1.000000e+00, %4 ]
  %16 = icmp ne i32 %3, 0
  %17 = fcmp ogt float %15, 0x3E80000000000000
  %18 = and i1 %16, %17
  br i1 %18, label %19, label %42

19:                                               ; preds = %14
  %20 = call zeroext i8 @BLI_rctf_compare(ptr noundef nonnull %9, ptr noundef nonnull %10, float noundef 0x3E80000000000000) #12
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %42

22:                                               ; preds = %19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %10, i64 16, i1 false), !tbaa.struct !5
  %23 = sitofp i32 %3 to double
  %24 = fdiv double %23, 1.000000e+03
  %25 = getelementptr inbounds %struct.SmoothView2DStore, ptr %5, i64 0, i32 2
  %26 = fpext float %15 to double
  %27 = fmul double %24, %26
  store double %27, ptr %25, align 8, !tbaa !10
  %28 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 24
  %29 = load ptr, ptr %28, align 8, !tbaa !14
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %22
  %32 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !20
  %33 = call ptr %32(i64 noundef 40, ptr noundef nonnull @.str) #12
  store ptr %33, ptr %28, align 8, !tbaa !14
  br label %34

34:                                               ; preds = %31, %22
  %35 = phi ptr [ %33, %31 ], [ %29, %22 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %35, ptr noundef nonnull align 8 dereferenceable(40) %5, i64 40, i1 false), !tbaa.struct !21
  %36 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 25
  %37 = load ptr, ptr %36, align 8, !tbaa !23
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  call void @WM_event_remove_timer(ptr noundef %6, ptr noundef %7, ptr noundef nonnull %37) #12
  br label %40

40:                                               ; preds = %39, %34
  %41 = call ptr @WM_event_add_timer(ptr noundef %6, ptr noundef %7, i32 noundef 274, double noundef 1.000000e-02) #12
  store ptr %41, ptr %36, align 8, !tbaa !23
  br label %45

42:                                               ; preds = %19, %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !5
  call void @UI_view2d_curRect_validate(ptr noundef nonnull %8) #12
  call void @ED_region_tag_redraw(ptr noundef nonnull %1) #12
  %43 = call ptr @CTX_wm_screen(ptr noundef %0) #12
  %44 = call ptr @CTX_wm_area(ptr noundef %0) #12
  call void @UI_view2d_sync(ptr noundef %43, ptr noundef %44, ptr noundef nonnull %8, i32 noundef 1) #12
  br label %45

45:                                               ; preds = %40, %42
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define internal fastcc noundef float @smooth_view_rect_to_fac(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 {
  %3 = alloca [2 x float], align 4
  %4 = alloca [2 x float], align 4
  %5 = alloca [2 x float], align 4
  %6 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  %7 = tail call fastcc float @BLI_rctf_size_x(ptr noundef %0) #14
  store float %7, ptr %3, align 4, !tbaa !6
  %8 = getelementptr inbounds float, ptr %3, i64 1
  %9 = tail call fastcc float @BLI_rctf_size_y(ptr noundef %0) #14
  store float %9, ptr %8, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  %10 = tail call fastcc float @BLI_rctf_size_x(ptr noundef %1) #14
  store float %10, ptr %4, align 4, !tbaa !6
  %11 = getelementptr inbounds float, ptr %4, i64 1
  %12 = tail call fastcc float @BLI_rctf_size_y(ptr noundef %1) #14
  store float %12, ptr %11, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  %13 = tail call fastcc float @BLI_rctf_cent_x(ptr noundef %0) #14
  store float %13, ptr %5, align 4, !tbaa !6
  %14 = getelementptr inbounds float, ptr %5, i64 1
  %15 = tail call fastcc float @BLI_rctf_cent_y(ptr noundef %0) #14
  store float %15, ptr %14, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #13
  %16 = tail call fastcc float @BLI_rctf_cent_x(ptr noundef %1) #14
  store float %16, ptr %6, align 4, !tbaa !6
  %17 = getelementptr inbounds float, ptr %6, i64 1
  %18 = tail call fastcc float @BLI_rctf_cent_y(ptr noundef %1) #14
  store float %18, ptr %17, align 4, !tbaa !6
  br label %19

19:                                               ; preds = %37, %2
  %20 = phi i1 [ true, %2 ], [ false, %37 ]
  %21 = phi i64 [ 0, %2 ], [ 1, %37 ]
  %22 = phi float [ 0.000000e+00, %2 ], [ %42, %37 ]
  %23 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 %21
  %24 = load float, ptr %23, align 4, !tbaa !6
  %25 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 %21
  %26 = load float, ptr %25, align 4, !tbaa !6
  %27 = fsub float %24, %26
  %28 = tail call float @llvm.fabs.f32(float %27)
  %29 = getelementptr inbounds [2 x float], ptr %3, i64 0, i64 %21
  %30 = load float, ptr %29, align 4, !tbaa !6
  %31 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 %21
  %32 = load float, ptr %31, align 4, !tbaa !6
  %33 = tail call fastcc float @min_ff(float noundef %30, float noundef %32) #14
  %34 = fdiv float %28, %33
  %35 = tail call fastcc float @max_ff(float noundef %22, float noundef %34) #14
  %36 = fcmp ult float %35, 1.000000e+00
  br i1 %36, label %37, label %45

37:                                               ; preds = %19
  %38 = tail call fastcc float @max_ff(float noundef %30, float noundef %32) #14
  %39 = fdiv float %33, %38
  %40 = fsub float 1.000000e+00, %39
  %41 = fmul float %40, 2.000000e+00
  %42 = tail call fastcc float @max_ff(float noundef %35, float noundef %41) #14
  %43 = fcmp ult float %42, 1.000000e+00
  %44 = and i1 %43, %20
  br i1 %44, label %19, label %45, !llvm.loop !24

45:                                               ; preds = %37, %19
  %46 = phi float [ %35, %19 ], [ %42, %37 ]
  %47 = tail call fastcc float @min_ff(float noundef %46, float noundef 1.000000e+00) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  ret float %47
}

; Function Attrs: optsize
declare zeroext i8 @BLI_rctf_compare(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_event_remove_timer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_event_add_timer(ptr noundef, ptr noundef, i32 noundef, double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @UI_view2d_curRect_validate(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_view2d_sync(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_screen(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_operatortypes_view2d() local_unnamed_addr #0 {
  tail call void @WM_operatortype_append(ptr noundef nonnull @VIEW2D_OT_pan) #12
  tail call void @WM_operatortype_append(ptr noundef nonnull @VIEW2D_OT_scroll_left) #12
  tail call void @WM_operatortype_append(ptr noundef nonnull @VIEW2D_OT_scroll_right) #12
  tail call void @WM_operatortype_append(ptr noundef nonnull @VIEW2D_OT_scroll_up) #12
  tail call void @WM_operatortype_append(ptr noundef nonnull @VIEW2D_OT_scroll_down) #12
  tail call void @WM_operatortype_append(ptr noundef nonnull @VIEW2D_OT_zoom_in) #12
  tail call void @WM_operatortype_append(ptr noundef nonnull @VIEW2D_OT_zoom_out) #12
  tail call void @WM_operatortype_append(ptr noundef nonnull @VIEW2D_OT_zoom) #12
  tail call void @WM_operatortype_append(ptr noundef nonnull @VIEW2D_OT_zoom_border) #12
  tail call void @WM_operatortype_append(ptr noundef nonnull @VIEW2D_OT_ndof) #12
  tail call void @WM_operatortype_append(ptr noundef nonnull @VIEW2D_OT_smoothview) #12
  tail call void @WM_operatortype_append(ptr noundef nonnull @VIEW2D_OT_scroller_activate) #12
  tail call void @WM_operatortype_append(ptr noundef nonnull @VIEW2D_OT_reset) #12
  ret void
}

; Function Attrs: optsize
declare void @WM_operatortype_append(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @VIEW2D_OT_pan(ptr nocapture noundef %0) #0 {
  store ptr @.str.17, ptr %0, align 8, !tbaa !26
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.18, ptr %2, align 8, !tbaa !30
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.3, ptr %3, align 8, !tbaa !31
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @view_pan_exec, ptr %4, align 8, !tbaa !32
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @view_pan_invoke, ptr %5, align 8, !tbaa !33
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @view_pan_modal, ptr %6, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @view_pan_cancel, ptr %7, align 8, !tbaa !35
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 20, ptr %8, align 8, !tbaa !36
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !37
  %11 = tail call ptr @RNA_def_int(ptr noundef %10, ptr noundef nonnull @.str.19, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef -2147483648, i32 noundef 2147483647) #12
  %12 = load ptr, ptr %9, align 8, !tbaa !37
  %13 = tail call ptr @RNA_def_int(ptr noundef %12, ptr noundef nonnull @.str.22, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.21, i32 noundef -2147483648, i32 noundef 2147483647) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @VIEW2D_OT_scroll_left(ptr nocapture noundef %0) #0 {
  store ptr @.str.25, ptr %0, align 8, !tbaa !26
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.26, ptr %2, align 8, !tbaa !30
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.5, ptr %3, align 8, !tbaa !31
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @view_scrollleft_exec, ptr %4, align 8, !tbaa !32
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %6 = load ptr, ptr %5, align 8, !tbaa !37
  %7 = tail call ptr @RNA_def_int(ptr noundef %6, ptr noundef nonnull @.str.19, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef -2147483648, i32 noundef 2147483647) #12
  %8 = load ptr, ptr %5, align 8, !tbaa !37
  %9 = tail call ptr @RNA_def_int(ptr noundef %8, ptr noundef nonnull @.str.22, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.21, i32 noundef -2147483648, i32 noundef 2147483647) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @VIEW2D_OT_scroll_right(ptr nocapture noundef %0) #0 {
  store ptr @.str.27, ptr %0, align 8, !tbaa !26
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.28, ptr %2, align 8, !tbaa !30
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.4, ptr %3, align 8, !tbaa !31
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @view_scrollright_exec, ptr %4, align 8, !tbaa !32
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %6 = load ptr, ptr %5, align 8, !tbaa !37
  %7 = tail call ptr @RNA_def_int(ptr noundef %6, ptr noundef nonnull @.str.19, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef -2147483648, i32 noundef 2147483647) #12
  %8 = load ptr, ptr %5, align 8, !tbaa !37
  %9 = tail call ptr @RNA_def_int(ptr noundef %8, ptr noundef nonnull @.str.22, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.21, i32 noundef -2147483648, i32 noundef 2147483647) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @VIEW2D_OT_scroll_up(ptr nocapture noundef %0) #0 {
  store ptr @.str.29, ptr %0, align 8, !tbaa !26
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.30, ptr %2, align 8, !tbaa !30
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.7, ptr %3, align 8, !tbaa !31
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @view_scrollup_exec, ptr %4, align 8, !tbaa !32
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %6 = load ptr, ptr %5, align 8, !tbaa !37
  %7 = tail call ptr @RNA_def_int(ptr noundef %6, ptr noundef nonnull @.str.19, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef -2147483648, i32 noundef 2147483647) #12
  %8 = load ptr, ptr %5, align 8, !tbaa !37
  %9 = tail call ptr @RNA_def_int(ptr noundef %8, ptr noundef nonnull @.str.22, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.21, i32 noundef -2147483648, i32 noundef 2147483647) #12
  %10 = load ptr, ptr %5, align 8, !tbaa !37
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.15, i32 noundef 0, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @VIEW2D_OT_scroll_down(ptr nocapture noundef %0) #0 {
  store ptr @.str.33, ptr %0, align 8, !tbaa !26
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.34, ptr %2, align 8, !tbaa !30
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.6, ptr %3, align 8, !tbaa !31
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @view_scrolldown_exec, ptr %4, align 8, !tbaa !32
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %6 = load ptr, ptr %5, align 8, !tbaa !37
  %7 = tail call ptr @RNA_def_int(ptr noundef %6, ptr noundef nonnull @.str.19, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef -2147483648, i32 noundef 2147483647) #12
  %8 = load ptr, ptr %5, align 8, !tbaa !37
  %9 = tail call ptr @RNA_def_int(ptr noundef %8, ptr noundef nonnull @.str.22, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.21, i32 noundef -2147483648, i32 noundef 2147483647) #12
  %10 = load ptr, ptr %5, align 8, !tbaa !37
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.15, i32 noundef 0, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.35) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @VIEW2D_OT_zoom_in(ptr nocapture noundef %0) #0 {
  store ptr @.str.36, ptr %0, align 8, !tbaa !26
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.37, ptr %2, align 8, !tbaa !30
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.10, ptr %3, align 8, !tbaa !31
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @view_zoomin_invoke, ptr %4, align 8, !tbaa !33
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @view_zoomin_exec, ptr %5, align 8, !tbaa !32
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @view_zoom_poll, ptr %6, align 8, !tbaa !38
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !37
  %9 = tail call ptr @RNA_def_float(ptr noundef %8, ptr noundef nonnull @.str.38, float noundef 0.000000e+00, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.21, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000) #12
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 524288) #12
  %10 = load ptr, ptr %7, align 8, !tbaa !37
  %11 = tail call ptr @RNA_def_float(ptr noundef %10, ptr noundef nonnull @.str.40, float noundef 0.000000e+00, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.21, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000) #12
  tail call void @RNA_def_property_flag(ptr noundef %11, i32 noundef 524288) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @VIEW2D_OT_zoom_out(ptr nocapture noundef %0) #0 {
  store ptr @.str.43, ptr %0, align 8, !tbaa !26
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.44, ptr %2, align 8, !tbaa !30
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.9, ptr %3, align 8, !tbaa !31
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @view_zoomout_invoke, ptr %4, align 8, !tbaa !33
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @view_zoom_poll, ptr %5, align 8, !tbaa !38
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !37
  %8 = tail call ptr @RNA_def_float(ptr noundef %7, ptr noundef nonnull @.str.38, float noundef 0.000000e+00, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.21, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000) #12
  tail call void @RNA_def_property_flag(ptr noundef %8, i32 noundef 524288) #12
  %9 = load ptr, ptr %6, align 8, !tbaa !37
  %10 = tail call ptr @RNA_def_float(ptr noundef %9, ptr noundef nonnull @.str.40, float noundef 0.000000e+00, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.21, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000) #12
  tail call void @RNA_def_property_flag(ptr noundef %10, i32 noundef 524288) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @VIEW2D_OT_zoom(ptr nocapture noundef %0) #0 {
  store ptr @.str.45, ptr %0, align 8, !tbaa !26
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.46, ptr %2, align 8, !tbaa !30
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.11, ptr %3, align 8, !tbaa !31
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @view_zoomdrag_exec, ptr %4, align 8, !tbaa !32
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @view_zoomdrag_invoke, ptr %5, align 8, !tbaa !33
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @view_zoomdrag_modal, ptr %6, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @view_zoomdrag_cancel, ptr %7, align 8, !tbaa !35
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @view_zoom_poll, ptr %8, align 8, !tbaa !38
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 20, ptr %9, align 8, !tbaa !36
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !37
  %12 = tail call ptr @RNA_def_float(ptr noundef %11, ptr noundef nonnull @.str.19, float noundef 0.000000e+00, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000) #12
  tail call void @RNA_def_property_flag(ptr noundef %12, i32 noundef 524288) #12
  %13 = load ptr, ptr %10, align 8, !tbaa !37
  %14 = tail call ptr @RNA_def_float(ptr noundef %13, ptr noundef nonnull @.str.22, float noundef 0.000000e+00, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.21, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000) #12
  tail call void @RNA_def_property_flag(ptr noundef %14, i32 noundef 524288) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @VIEW2D_OT_zoom_border(ptr noundef %0) #0 {
  store ptr @.str.47, ptr %0, align 8, !tbaa !26
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.48, ptr %2, align 8, !tbaa !30
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.13, ptr %3, align 8, !tbaa !31
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_border_select_invoke, ptr %4, align 8, !tbaa !33
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @view_borderzoom_exec, ptr %5, align 8, !tbaa !32
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @WM_border_select_modal, ptr %6, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @WM_border_select_cancel, ptr %7, align 8, !tbaa !35
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @view_zoom_poll, ptr %8, align 8, !tbaa !38
  tail call void @WM_operator_properties_gesture_border(ptr noundef nonnull %0, i8 noundef zeroext 0) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @VIEW2D_OT_ndof(ptr nocapture noundef writeonly %0) #6 {
  store ptr @.str.50, ptr %0, align 8, !tbaa !26
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.8, ptr %2, align 8, !tbaa !31
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.51, ptr %3, align 8, !tbaa !30
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @view2d_ndof_invoke, ptr %4, align 8, !tbaa !33
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @view2d_poll, ptr %5, align 8, !tbaa !38
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 128, ptr %6, align 8, !tbaa !36
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @VIEW2D_OT_smoothview(ptr noundef %0) #0 {
  store ptr @.str.52, ptr %0, align 8, !tbaa !26
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.21, ptr %2, align 8, !tbaa !30
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.12, ptr %3, align 8, !tbaa !31
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @view2d_smoothview_invoke, ptr %4, align 8, !tbaa !33
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @view2d_poll, ptr %5, align 8, !tbaa !38
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 64, ptr %6, align 8, !tbaa !36
  tail call void @WM_operator_properties_gesture_border(ptr noundef nonnull %0, i8 noundef zeroext 0) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @VIEW2D_OT_scroller_activate(ptr nocapture noundef writeonly %0) #6 {
  store ptr @.str.53, ptr %0, align 8, !tbaa !26
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.54, ptr %2, align 8, !tbaa !30
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %3, align 8, !tbaa !31
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 4, ptr %4, align 8, !tbaa !36
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @scroller_activate_invoke, ptr %5, align 8, !tbaa !33
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @scroller_activate_modal, ptr %6, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @scroller_activate_cancel, ptr %7, align 8, !tbaa !35
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @view2d_poll, ptr %8, align 8, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @VIEW2D_OT_reset(ptr nocapture noundef writeonly %0) #6 {
  store ptr @.str.56, ptr %0, align 8, !tbaa !26
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.57, ptr %2, align 8, !tbaa !30
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.16, ptr %3, align 8, !tbaa !31
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @reset_exec, ptr %4, align 8, !tbaa !32
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @view2d_poll, ptr %5, align 8, !tbaa !38
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_keymap_view2d(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef 0) #12
  %3 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  %4 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef 2, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  %5 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef 2, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  %6 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef 2, i32 noundef 1, i32 noundef 1, i32 noundef 0) #12
  %7 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef 14, i32 noundef 0, i32 noundef 0, i32 noundef 0) #12
  %8 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.4, i32 noundef 11, i32 noundef 1, i32 noundef 2, i32 noundef 0) #12
  %9 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef 10, i32 noundef 1, i32 noundef 2, i32 noundef 0) #12
  %10 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef 11, i32 noundef 1, i32 noundef 1, i32 noundef 0) #12
  %11 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef 10, i32 noundef 1, i32 noundef 1, i32 noundef 0) #12
  %12 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef 400, i32 noundef 0, i32 noundef 0, i32 noundef 0) #12
  %13 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.9, i32 noundef 13, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  %14 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.10, i32 noundef 12, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  %15 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.9, i32 noundef 162, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  %16 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.10, i32 noundef 164, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  %17 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.11, i32 noundef 14, i32 noundef 0, i32 noundef 2, i32 noundef 0) #12
  %18 = tail call ptr @WM_keymap_verify_item(ptr noundef %2, ptr noundef nonnull @.str.12, i32 noundef 274, i32 noundef -1, i32 noundef -1, i32 noundef 0) #12
  %19 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef 11, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  %20 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef 10, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  %21 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.4, i32 noundef 11, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  %22 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef 10, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  %23 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.11, i32 noundef 2, i32 noundef 1, i32 noundef 2, i32 noundef 0) #12
  %24 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.11, i32 noundef 15, i32 noundef 0, i32 noundef 0, i32 noundef 0) #12
  %25 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.13, i32 noundef 98, i32 noundef 1, i32 noundef 1, i32 noundef 0) #12
  %26 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef 0, i32 noundef 0) #12
  %27 = tail call ptr @WM_keymap_add_item(ptr noundef %26, ptr noundef nonnull @.str.2, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  %28 = tail call ptr @WM_keymap_add_item(ptr noundef %26, ptr noundef nonnull @.str.2, i32 noundef 2, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  %29 = tail call ptr @WM_keymap_add_item(ptr noundef %26, ptr noundef nonnull @.str.3, i32 noundef 2, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  %30 = tail call ptr @WM_keymap_add_item(ptr noundef %26, ptr noundef nonnull @.str.3, i32 noundef 14, i32 noundef 0, i32 noundef 0, i32 noundef 0) #12
  %31 = tail call ptr @WM_keymap_add_item(ptr noundef %26, ptr noundef nonnull @.str.6, i32 noundef 11, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  %32 = tail call ptr @WM_keymap_add_item(ptr noundef %26, ptr noundef nonnull @.str.7, i32 noundef 10, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  %33 = tail call ptr @WM_keymap_add_item(ptr noundef %26, ptr noundef nonnull @.str.6, i32 noundef 169, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  %34 = getelementptr inbounds %struct.wmKeyMapItem, ptr %33, i64 0, i32 17
  %35 = load ptr, ptr %34, align 8, !tbaa !39
  tail call void @RNA_boolean_set(ptr noundef %35, ptr noundef nonnull @.str.15, i32 noundef 1) #12
  %36 = tail call ptr @WM_keymap_add_item(ptr noundef %26, ptr noundef nonnull @.str.7, i32 noundef 168, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  %37 = getelementptr inbounds %struct.wmKeyMapItem, ptr %36, i64 0, i32 17
  %38 = load ptr, ptr %37, align 8, !tbaa !39
  tail call void @RNA_boolean_set(ptr noundef %38, ptr noundef nonnull @.str.15, i32 noundef 1) #12
  %39 = tail call ptr @WM_keymap_add_item(ptr noundef %26, ptr noundef nonnull @.str.11, i32 noundef 2, i32 noundef 1, i32 noundef 2, i32 noundef 0) #12
  %40 = tail call ptr @WM_keymap_add_item(ptr noundef %26, ptr noundef nonnull @.str.11, i32 noundef 15, i32 noundef 0, i32 noundef 0, i32 noundef 0) #12
  %41 = tail call ptr @WM_keymap_add_item(ptr noundef %26, ptr noundef nonnull @.str.11, i32 noundef 14, i32 noundef 0, i32 noundef 2, i32 noundef 0) #12
  %42 = tail call ptr @WM_keymap_add_item(ptr noundef %26, ptr noundef nonnull @.str.9, i32 noundef 162, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  %43 = tail call ptr @WM_keymap_add_item(ptr noundef %26, ptr noundef nonnull @.str.10, i32 noundef 164, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  %44 = tail call ptr @WM_keymap_add_item(ptr noundef %26, ptr noundef nonnull @.str.16, i32 noundef 167, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  ret void
}

; Function Attrs: optsize
declare ptr @WM_keymap_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_keymap_add_item(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_keymap_verify_item(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_x(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %3 = load float, ptr %2, align 4, !tbaa !41
  %4 = load float, ptr %0, align 4, !tbaa !42
  %5 = fsub float %3, %4
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_y(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %3 = load float, ptr %2, align 4, !tbaa !43
  %4 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %5 = load float, ptr %4, align 4, !tbaa !44
  %6 = fsub float %3, %5
  ret float %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_cent_x(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = load float, ptr %0, align 4, !tbaa !42
  %3 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %4 = load float, ptr %3, align 4, !tbaa !41
  %5 = fadd float %2, %4
  %6 = fmul float %5, 5.000000e-01
  ret float %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_cent_y(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %3 = load float, ptr %2, align 4, !tbaa !44
  %4 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %5 = load float, ptr %4, align 4, !tbaa !43
  %6 = fadd float %3, %5
  %7 = fmul float %6, 5.000000e-01
  ret float %7
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0, float noundef %1) unnamed_addr #9 {
  %3 = fcmp olt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ff(float noundef %0, float noundef %1) unnamed_addr #9 {
  %3 = fcmp ogt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @view_pan_exec(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = tail call fastcc i32 @view_pan_init(ptr noundef %0, ptr noundef %1) #14, !range !45
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call fastcc void @view_pan_apply(ptr noundef %0, ptr noundef %1) #14
  tail call fastcc void @view_pan_exit(ptr noundef %1) #14
  br label %6

6:                                                ; preds = %2, %5
  %7 = phi i32 [ 4, %5 ], [ 2, %2 ]
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @view_pan_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call ptr @CTX_wm_window(ptr noundef %0) #12
  %5 = tail call fastcc i32 @view_pan_init(ptr noundef %0, ptr noundef %1) #14, !range !45
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %46, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = getelementptr inbounds %struct.v2dViewPanData, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !48
  %12 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %13 = getelementptr inbounds %struct.v2dViewPanData, ptr %9, i64 0, i32 6
  %14 = load <2 x i32>, ptr %12, align 4, !tbaa !50
  %15 = shufflevector <2 x i32> %14, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  store <4 x i32> %15, ptr %13, align 8, !tbaa !50
  %16 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %17 = load i16, ptr %16, align 8, !tbaa !51
  %18 = sext i16 %17 to i32
  %19 = getelementptr inbounds %struct.v2dViewPanData, ptr %9, i64 0, i32 10
  store i32 %18, ptr %19, align 8, !tbaa !53
  %20 = icmp eq i16 %17, 14
  %21 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !54
  br i1 %20, label %23, label %34

23:                                               ; preds = %7
  %24 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %25 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 12
  %26 = load i32, ptr %25, align 8, !tbaa !55
  %27 = extractelement <2 x i32> %14, i64 0
  %28 = sub nsw i32 %26, %27
  tail call void @RNA_int_set(ptr noundef %22, ptr noundef nonnull @.str.19, i32 noundef %28) #12
  %29 = load ptr, ptr %21, align 8, !tbaa !54
  %30 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 13
  %31 = load i32, ptr %30, align 4, !tbaa !56
  %32 = load i32, ptr %24, align 8, !tbaa !57
  %33 = sub nsw i32 %31, %32
  tail call void @RNA_int_set(ptr noundef %29, ptr noundef nonnull @.str.22, i32 noundef %33) #12
  tail call fastcc void @view_pan_apply(ptr noundef %0, ptr noundef nonnull %1) #14
  tail call fastcc void @view_pan_exit(ptr noundef nonnull %1) #14
  br label %46

34:                                               ; preds = %7
  tail call void @RNA_int_set(ptr noundef %22, ptr noundef nonnull @.str.19, i32 noundef 0) #12
  %35 = load ptr, ptr %21, align 8, !tbaa !54
  tail call void @RNA_int_set(ptr noundef %35, ptr noundef nonnull @.str.22, i32 noundef 0) #12
  %36 = getelementptr inbounds %struct.View2D, ptr %11, i64 0, i32 13
  %37 = load i16, ptr %36, align 8, !tbaa !58
  %38 = zext i16 %37 to i32
  %39 = and i32 %38, 2
  %40 = icmp eq i32 %39, 0
  %41 = and i32 %38, 4
  %42 = icmp eq i32 %41, 0
  %43 = select i1 %42, i32 14, i32 16
  %44 = select i1 %40, i32 %43, i32 15
  tail call void @WM_cursor_modal_set(ptr noundef %4, i32 noundef %44) #12
  %45 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef nonnull %1) #12
  br label %46

46:                                               ; preds = %3, %34, %23
  %47 = phi i32 [ 4, %23 ], [ 1, %34 ], [ 8, %3 ]
  ret i32 %47
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @view_pan_modal(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %7 = load i16, ptr %6, align 8, !tbaa !51
  %8 = icmp eq i16 %7, 4
  br i1 %8, label %9, label %24

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !54
  %12 = getelementptr inbounds %struct.v2dViewPanData, ptr %5, i64 0, i32 8
  %13 = load i32, ptr %12, align 8, !tbaa !59
  %14 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %15 = load i32, ptr %14, align 4, !tbaa !60
  %16 = sub nsw i32 %13, %15
  tail call void @RNA_int_set(ptr noundef %11, ptr noundef nonnull @.str.19, i32 noundef %16) #12
  %17 = load ptr, ptr %10, align 8, !tbaa !54
  %18 = getelementptr inbounds %struct.v2dViewPanData, ptr %5, i64 0, i32 9
  %19 = load i32, ptr %18, align 4, !tbaa !61
  %20 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %21 = load i32, ptr %20, align 8, !tbaa !57
  %22 = sub nsw i32 %19, %21
  tail call void @RNA_int_set(ptr noundef %17, ptr noundef nonnull @.str.22, i32 noundef %22) #12
  %23 = load <2 x i32>, ptr %14, align 4, !tbaa !50
  store <2 x i32> %23, ptr %12, align 8, !tbaa !50
  tail call fastcc void @view_pan_apply(ptr noundef %0, ptr noundef nonnull %1) #14
  br label %50

24:                                               ; preds = %3
  %25 = sext i16 %7 to i32
  %26 = getelementptr inbounds %struct.v2dViewPanData, ptr %5, i64 0, i32 10
  %27 = load i32, ptr %26, align 8, !tbaa !53
  %28 = icmp eq i32 %27, %25
  %29 = icmp eq i16 %7, 218
  %30 = or i1 %29, %28
  br i1 %30, label %31, label %50

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %33 = load i16, ptr %32, align 2, !tbaa !62
  %34 = icmp eq i16 %33, 2
  br i1 %34, label %35, label %50

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %37 = load ptr, ptr %36, align 8, !tbaa !54
  %38 = getelementptr inbounds %struct.v2dViewPanData, ptr %5, i64 0, i32 6
  %39 = load i32, ptr %38, align 8, !tbaa !63
  %40 = getelementptr inbounds %struct.v2dViewPanData, ptr %5, i64 0, i32 8
  %41 = load i32, ptr %40, align 8, !tbaa !59
  %42 = sub nsw i32 %39, %41
  tail call void @RNA_int_set(ptr noundef %37, ptr noundef nonnull @.str.19, i32 noundef %42) #12
  %43 = load ptr, ptr %36, align 8, !tbaa !54
  %44 = getelementptr inbounds %struct.v2dViewPanData, ptr %5, i64 0, i32 7
  %45 = load i32, ptr %44, align 4, !tbaa !64
  %46 = getelementptr inbounds %struct.v2dViewPanData, ptr %5, i64 0, i32 9
  %47 = load i32, ptr %46, align 4, !tbaa !61
  %48 = sub nsw i32 %45, %47
  tail call void @RNA_int_set(ptr noundef %43, ptr noundef nonnull @.str.22, i32 noundef %48) #12
  tail call fastcc void @view_pan_exit(ptr noundef nonnull %1) #14
  %49 = tail call ptr @CTX_wm_window(ptr noundef %0) #12
  tail call void @WM_cursor_modal_restore(ptr noundef %49) #12
  br label %50

50:                                               ; preds = %9, %31, %24, %35
  %51 = phi i32 [ 4, %35 ], [ 1, %24 ], [ 1, %31 ], [ 1, %9 ]
  ret i32 %51
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @view_pan_cancel(ptr nocapture readnone %0, ptr nocapture noundef %1) #0 {
  tail call fastcc void @view_pan_exit(ptr noundef %1) #14
  ret void
}

; Function Attrs: optsize
declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @view_pan_init(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_region(ptr noundef %0) #12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %34, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 2, i32 13
  %7 = load i16, ptr %6, align 8, !tbaa !58
  %8 = and i16 %7, 6
  %9 = icmp eq i16 %8, 6
  br i1 %9, label %34, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 2
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !20
  %13 = tail call ptr %12(i64 noundef 64, ptr noundef nonnull @.str.24) #12
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %13, ptr %14, align 8, !tbaa !46
  %15 = tail call ptr @CTX_wm_screen(ptr noundef %0) #12
  store ptr %15, ptr %13, align 8, !tbaa !65
  %16 = tail call ptr @CTX_wm_area(ptr noundef %0) #12
  %17 = getelementptr inbounds %struct.v2dViewPanData, ptr %13, i64 0, i32 1
  store ptr %16, ptr %17, align 8, !tbaa !66
  %18 = getelementptr inbounds %struct.v2dViewPanData, ptr %13, i64 0, i32 3
  store ptr %11, ptr %18, align 8, !tbaa !48
  %19 = getelementptr inbounds %struct.v2dViewPanData, ptr %13, i64 0, i32 2
  store ptr %3, ptr %19, align 8, !tbaa !67
  %20 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 3
  %21 = tail call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %20) #14
  %22 = add nsw i32 %21, 1
  %23 = sitofp i32 %22 to float
  %24 = tail call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %20) #14
  %25 = add nsw i32 %24, 1
  %26 = sitofp i32 %25 to float
  %27 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 2, i32 1
  %28 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %27) #14
  %29 = fdiv float %28, %23
  %30 = getelementptr inbounds %struct.v2dViewPanData, ptr %13, i64 0, i32 4
  store float %29, ptr %30, align 8, !tbaa !68
  %31 = tail call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %27) #14
  %32 = fdiv float %31, %26
  %33 = getelementptr inbounds %struct.v2dViewPanData, ptr %13, i64 0, i32 5
  store float %32, ptr %33, align 4, !tbaa !69
  br label %34

34:                                               ; preds = %5, %2, %10
  %35 = phi i32 [ 1, %10 ], [ 0, %2 ], [ 0, %5 ]
  ret i32 %35
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @view_pan_apply(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !54
  %7 = tail call i32 @RNA_int_get(ptr noundef %6, ptr noundef nonnull @.str.19) #12
  %8 = sitofp i32 %7 to float
  %9 = load ptr, ptr %5, align 8, !tbaa !54
  %10 = tail call i32 @RNA_int_get(ptr noundef %9, ptr noundef nonnull @.str.22) #12
  %11 = sitofp i32 %10 to float
  tail call fastcc void @view_pan_apply_ex(ptr noundef %0, ptr noundef %4, float noundef %8, float noundef %11) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @view_pan_exit(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !20
  tail call void %6(ptr noundef nonnull %3) #12
  store ptr null, ptr %2, align 8, !tbaa !46
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_x(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !70
  %4 = load i32, ptr %0, align 4, !tbaa !71
  %5 = sub nsw i32 %3, %4
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_y(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !72
  %4 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !73
  %6 = sub nsw i32 %3, %5
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @view_pan_apply_ex(ptr noundef %0, ptr nocapture noundef readonly %1, float noundef %2, float noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.v2dViewPanData, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = getelementptr inbounds %struct.v2dViewPanData, ptr %1, i64 0, i32 5
  %8 = load float, ptr %7, align 4, !tbaa !69
  %9 = fmul float %8, %3
  %10 = getelementptr inbounds %struct.View2D, ptr %6, i64 0, i32 13
  %11 = load i16, ptr %10, align 8, !tbaa !58
  %12 = and i16 %11, 2
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.v2dViewPanData, ptr %1, i64 0, i32 4
  %16 = load float, ptr %15, align 8, !tbaa !68
  %17 = fmul float %16, %2
  %18 = getelementptr inbounds %struct.View2D, ptr %6, i64 0, i32 1
  %19 = load <2 x float>, ptr %18, align 8, !tbaa !6
  %20 = insertelement <2 x float> poison, float %17, i64 0
  %21 = shufflevector <2 x float> %20, <2 x float> poison, <2 x i32> zeroinitializer
  %22 = fadd <2 x float> %19, %21
  store <2 x float> %22, ptr %18, align 8, !tbaa !6
  br label %23

23:                                               ; preds = %14, %4
  %24 = and i16 %11, 4
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.View2D, ptr %6, i64 0, i32 1, i32 2
  %28 = load <2 x float>, ptr %27, align 8, !tbaa !6
  %29 = insertelement <2 x float> poison, float %9, i64 0
  %30 = shufflevector <2 x float> %29, <2 x float> poison, <2 x i32> zeroinitializer
  %31 = fadd <2 x float> %30, %28
  store <2 x float> %31, ptr %27, align 8, !tbaa !6
  br label %32

32:                                               ; preds = %26, %23
  tail call void @UI_view2d_curRect_validate(ptr noundef nonnull %6) #12
  %33 = getelementptr inbounds %struct.v2dViewPanData, ptr %1, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !67
  tail call void @ED_region_tag_redraw(ptr noundef %34) #12
  tail call void @WM_event_add_mousemove(ptr noundef %0) #12
  %35 = load ptr, ptr %1, align 8, !tbaa !65
  %36 = getelementptr inbounds %struct.v2dViewPanData, ptr %1, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !66
  tail call void @UI_view2d_sync(ptr noundef %35, ptr noundef %37, ptr noundef nonnull %6, i32 noundef 1) #12
  %38 = load ptr, ptr %36, align 8, !tbaa !66
  %39 = getelementptr inbounds %struct.ScrArea, ptr %38, i64 0, i32 8
  %40 = load i8, ptr %39, align 8, !tbaa !74
  %41 = icmp eq i8 %40, 3
  br i1 %41, label %42, label %48

42:                                               ; preds = %32
  %43 = getelementptr inbounds %struct.ScrArea, ptr %38, i64 0, i32 19
  %44 = load ptr, ptr %43, align 8, !tbaa !76
  %45 = getelementptr inbounds %struct.SpaceOops, ptr %44, i64 0, i32 13
  %46 = load i16, ptr %45, align 4, !tbaa !77
  %47 = or i16 %46, 2
  store i16 %47, ptr %45, align 4, !tbaa !77
  br label %48

48:                                               ; preds = %42, %32
  ret void
}

; Function Attrs: optsize
declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_event_add_mousemove(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_cursor_modal_set(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_cursor_modal_restore(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @view_scrollleft_exec(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = tail call fastcc i32 @view_pan_init(ptr noundef %0, ptr noundef %1) #14, !range !45
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %20, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.v2dViewPanData, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = getelementptr inbounds %struct.View2D, ptr %9, i64 0, i32 13
  %11 = load i16, ptr %10, align 8, !tbaa !58
  %12 = and i16 %11, 2
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !54
  tail call void @RNA_int_set(ptr noundef %16, ptr noundef nonnull @.str.19, i32 noundef -20) #12
  %17 = load ptr, ptr %15, align 8, !tbaa !54
  tail call void @RNA_int_set(ptr noundef %17, ptr noundef nonnull @.str.22, i32 noundef 0) #12
  tail call fastcc void @view_pan_apply(ptr noundef %0, ptr noundef nonnull %1) #14
  br label %18

18:                                               ; preds = %5, %14
  %19 = phi i32 [ 4, %14 ], [ 8, %5 ]
  tail call fastcc void @view_pan_exit(ptr noundef nonnull %1) #14
  br label %20

20:                                               ; preds = %18, %2
  %21 = phi i32 [ 8, %2 ], [ %19, %18 ]
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @view_scrollright_exec(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = tail call fastcc i32 @view_pan_init(ptr noundef %0, ptr noundef %1) #14, !range !45
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %20, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.v2dViewPanData, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = getelementptr inbounds %struct.View2D, ptr %9, i64 0, i32 13
  %11 = load i16, ptr %10, align 8, !tbaa !58
  %12 = and i16 %11, 2
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !54
  tail call void @RNA_int_set(ptr noundef %16, ptr noundef nonnull @.str.19, i32 noundef 20) #12
  %17 = load ptr, ptr %15, align 8, !tbaa !54
  tail call void @RNA_int_set(ptr noundef %17, ptr noundef nonnull @.str.22, i32 noundef 0) #12
  tail call fastcc void @view_pan_apply(ptr noundef %0, ptr noundef nonnull %1) #14
  br label %18

18:                                               ; preds = %5, %14
  %19 = phi i32 [ 4, %14 ], [ 8, %5 ]
  tail call fastcc void @view_pan_exit(ptr noundef nonnull %1) #14
  br label %20

20:                                               ; preds = %18, %2
  %21 = phi i32 [ 8, %2 ], [ %19, %18 ]
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @view_scrollup_exec(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = tail call fastcc i32 @view_pan_init(ptr noundef %0, ptr noundef %1) #14, !range !45
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %29, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.v2dViewPanData, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = getelementptr inbounds %struct.View2D, ptr %9, i64 0, i32 13
  %11 = load i16, ptr %10, align 8, !tbaa !58
  %12 = and i16 %11, 4
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !54
  tail call void @RNA_int_set(ptr noundef %16, ptr noundef nonnull @.str.19, i32 noundef 0) #12
  %17 = load ptr, ptr %15, align 8, !tbaa !54
  tail call void @RNA_int_set(ptr noundef %17, ptr noundef nonnull @.str.22, i32 noundef 40) #12
  %18 = load ptr, ptr %15, align 8, !tbaa !54
  %19 = tail call i32 @RNA_boolean_get(ptr noundef %18, ptr noundef nonnull @.str.15) #12
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %14
  %22 = tail call ptr @CTX_wm_region(ptr noundef %0) #12
  %23 = load ptr, ptr %15, align 8, !tbaa !54
  %24 = getelementptr inbounds %struct.ARegion, ptr %22, i64 0, i32 2, i32 4
  %25 = tail call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %24) #14
  tail call void @RNA_int_set(ptr noundef %23, ptr noundef nonnull @.str.22, i32 noundef %25) #12
  br label %26

26:                                               ; preds = %21, %14
  tail call fastcc void @view_pan_apply(ptr noundef %0, ptr noundef nonnull %1) #14
  br label %27

27:                                               ; preds = %5, %26
  %28 = phi i32 [ 4, %26 ], [ 8, %5 ]
  tail call fastcc void @view_pan_exit(ptr noundef nonnull %1) #14
  br label %29

29:                                               ; preds = %27, %2
  %30 = phi i32 [ 8, %2 ], [ %28, %27 ]
  ret i32 %30
}

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @view_scrolldown_exec(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = tail call fastcc i32 @view_pan_init(ptr noundef %0, ptr noundef %1) #14, !range !45
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %32, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.v2dViewPanData, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = getelementptr inbounds %struct.View2D, ptr %9, i64 0, i32 13
  %11 = load i16, ptr %10, align 8, !tbaa !58
  %12 = and i16 %11, 4
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !54
  tail call void @RNA_int_set(ptr noundef %16, ptr noundef nonnull @.str.19, i32 noundef 0) #12
  %17 = load ptr, ptr %15, align 8, !tbaa !54
  tail call void @RNA_int_set(ptr noundef %17, ptr noundef nonnull @.str.22, i32 noundef -40) #12
  %18 = load ptr, ptr %15, align 8, !tbaa !54
  %19 = tail call i32 @RNA_boolean_get(ptr noundef %18, ptr noundef nonnull @.str.15) #12
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %14
  %22 = tail call ptr @CTX_wm_region(ptr noundef %0) #12
  %23 = load ptr, ptr %15, align 8, !tbaa !54
  %24 = getelementptr inbounds %struct.ARegion, ptr %22, i64 0, i32 2, i32 4, i32 2
  %25 = load i32, ptr %24, align 8, !tbaa !80
  %26 = getelementptr inbounds %struct.ARegion, ptr %22, i64 0, i32 2, i32 4, i32 3
  %27 = load i32, ptr %26, align 4, !tbaa !82
  %28 = sub nsw i32 %25, %27
  tail call void @RNA_int_set(ptr noundef %23, ptr noundef nonnull @.str.22, i32 noundef %28) #12
  br label %29

29:                                               ; preds = %21, %14
  tail call fastcc void @view_pan_apply(ptr noundef %0, ptr noundef nonnull %1) #14
  br label %30

30:                                               ; preds = %5, %29
  %31 = phi i32 [ 4, %29 ], [ 8, %5 ]
  tail call fastcc void @view_pan_exit(ptr noundef nonnull %1) #14
  br label %32

32:                                               ; preds = %30, %2
  %33 = phi i32 [ 8, %2 ], [ %31, %30 ]
  ret i32 %33
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @view_zoomin_invoke(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call fastcc i32 @view_zoomdrag_init(ptr noundef %0, ptr noundef %1) #14, !range !45
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %25, label %6

6:                                                ; preds = %3
  %7 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !83
  %8 = and i32 %7, 1048576
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %23, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = tail call ptr @CTX_wm_region(ptr noundef %0) #12
  %14 = getelementptr inbounds %struct.ARegion, ptr %13, i64 0, i32 2
  %15 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %16 = load i32, ptr %15, align 4, !tbaa !50
  %17 = sitofp i32 %16 to float
  %18 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %19 = load i32, ptr %18, align 4, !tbaa !50
  %20 = sitofp i32 %19 to float
  %21 = getelementptr inbounds %struct.v2dViewZoomData, ptr %12, i64 0, i32 9
  %22 = getelementptr inbounds %struct.v2dViewZoomData, ptr %12, i64 0, i32 10
  tail call void @UI_view2d_region_to_view(ptr noundef nonnull %14, float noundef %17, float noundef %20, ptr noundef nonnull %21, ptr noundef nonnull %22) #12
  br label %23

23:                                               ; preds = %10, %6
  %24 = tail call i32 @view_zoomin_exec(ptr noundef %0, ptr noundef %1) #14, !range !87
  br label %25

25:                                               ; preds = %3, %23
  %26 = phi i32 [ %24, %23 ], [ 8, %3 ]
  ret i32 %26
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @view_zoomin_exec(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = alloca [2 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #13
  %4 = tail call i32 @view_zoom_poll(ptr noundef %0) #14, !range !45
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  call fastcc void @view_zoom_axis_lock_defaults(ptr noundef %0, ptr noundef nonnull %3) #14
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !54
  %9 = load i8, ptr %3, align 1, !tbaa !88
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, float 0.000000e+00, float 0x3FA3333340000000
  tail call void @RNA_float_set(ptr noundef %8, ptr noundef nonnull @.str.38, float noundef %11) #12
  %12 = load ptr, ptr %7, align 8, !tbaa !54
  %13 = getelementptr inbounds [2 x i8], ptr %3, i64 0, i64 1
  %14 = load i8, ptr %13, align 1, !tbaa !88
  %15 = icmp eq i8 %14, 0
  %16 = select i1 %15, float 0.000000e+00, float 0x3FA3333340000000
  tail call void @RNA_float_set(ptr noundef %12, ptr noundef nonnull @.str.40, float noundef %16) #12
  tail call fastcc void @view_zoomstep_apply(ptr noundef %0, ptr noundef %1) #14
  tail call fastcc void @view_zoomstep_exit(ptr noundef %1) #14
  br label %17

17:                                               ; preds = %2, %6
  %18 = phi i32 [ 4, %6 ], [ 8, %2 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #13
  ret i32 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @view_zoom_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_wm_region(ptr noundef %0) #12
  %3 = icmp eq ptr %2, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 12
  %6 = load i16, ptr %5, align 2, !tbaa !89
  %7 = and i16 %6, 768
  %8 = icmp ne i16 %7, 768
  %9 = zext i1 %8 to i32
  br label %10

10:                                               ; preds = %4, %1
  %11 = phi i32 [ 0, %1 ], [ %9, %4 ]
  ret i32 %11
}

; Function Attrs: optsize
declare ptr @RNA_def_float(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @view_zoomdrag_init(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_region(ptr noundef %0) #12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 2, i32 12
  %7 = load i16, ptr %6, align 2, !tbaa !89
  %8 = and i16 %7, 768
  %9 = icmp eq i16 %8, 768
  br i1 %9, label %16, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 2
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !20
  %13 = tail call ptr %12(i64 noundef 64, ptr noundef nonnull @.str.42) #12
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %13, ptr %14, align 8, !tbaa !46
  store ptr %11, ptr %13, align 8, !tbaa !90
  %15 = getelementptr inbounds %struct.v2dViewZoomData, ptr %13, i64 0, i32 1
  store ptr %3, ptr %15, align 8, !tbaa !92
  br label %16

16:                                               ; preds = %5, %2, %10
  %17 = phi i32 [ 1, %10 ], [ 0, %2 ], [ 0, %5 ]
  ret i32 %17
}

; Function Attrs: optsize
declare void @UI_view2d_region_to_view(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @view_zoom_axis_lock_defaults(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_area(ptr noundef %0) #12
  store i8 1, ptr %1, align 1, !tbaa !88
  %4 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 1, ptr %4, align 1, !tbaa !88
  %5 = icmp eq ptr %3, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 8
  %8 = load i8, ptr %7, align 8, !tbaa !74
  %9 = icmp eq i8 %8, 8
  br i1 %9, label %10, label %18

10:                                               ; preds = %6
  %11 = tail call ptr @CTX_wm_region(ptr noundef %0) #12
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 8
  %15 = load i16, ptr %14, align 2, !tbaa !93
  %16 = icmp eq i16 %15, 7
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  store i8 0, ptr %4, align 1, !tbaa !88
  br label %18

18:                                               ; preds = %10, %13, %17, %6, %2
  ret void
}

; Function Attrs: optsize
declare void @RNA_float_set(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @view_zoomstep_apply(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !54
  %7 = tail call float @RNA_float_get(ptr noundef %6, ptr noundef nonnull @.str.38) #12
  %8 = load ptr, ptr %5, align 8, !tbaa !54
  %9 = tail call float @RNA_float_get(ptr noundef %8, ptr noundef nonnull @.str.40) #12
  tail call fastcc void @view_zoomstep_apply_ex(ptr noundef %0, ptr noundef %4, i8 noundef zeroext 1, float noundef %7, float noundef %9) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @view_zoomstep_exit(ptr nocapture noundef %0) unnamed_addr #0 {
  tail call void @UI_view2d_zoom_cache_reset() #12
  %2 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !20
  tail call void %6(ptr noundef nonnull %3) #12
  store ptr null, ptr %2, align 8, !tbaa !46
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @view_zoomstep_apply_ex(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, float noundef %3, float noundef %4) unnamed_addr #0 {
  %6 = tail call ptr @CTX_wm_region(ptr noundef %0) #12
  %7 = fcmp ult float %3, 0.000000e+00
  %8 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 2, i32 1
  %9 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %8) #14
  br i1 %7, label %14, label %10

10:                                               ; preds = %5
  %11 = tail call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %8) #14
  %12 = insertelement <2 x float> poison, float %9, i64 0
  %13 = insertelement <2 x float> %12, float %11, i64 1
  br label %22

14:                                               ; preds = %5
  %15 = insertelement <2 x float> poison, float %3, i64 0
  %16 = insertelement <2 x float> %15, float %4, i64 1
  %17 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %16, <2 x float> <float 2.000000e+00, float 2.000000e+00>, <2 x float> <float 1.000000e+00, float 1.000000e+00>)
  %18 = tail call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %8) #14
  %19 = insertelement <2 x float> poison, float %9, i64 0
  %20 = insertelement <2 x float> %19, float %18, i64 1
  %21 = fdiv <2 x float> %20, %17
  br label %22

22:                                               ; preds = %14, %10
  %23 = phi <2 x float> [ %13, %10 ], [ %21, %14 ]
  %24 = extractelement <2 x float> %23, i64 0
  %25 = fmul float %24, %3
  %26 = extractelement <2 x float> %23, i64 1
  %27 = fmul float %26, %4
  %28 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 2, i32 12
  %29 = load i16, ptr %28, align 2, !tbaa !89
  %30 = and i16 %29, 256
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %32, label %89

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 2, i32 13
  %34 = load i16, ptr %33, align 8, !tbaa !58
  %35 = zext i16 %34 to i32
  %36 = and i32 %35, 2
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 2, i32 1, i32 1
  %40 = load float, ptr %39, align 4, !tbaa !94
  %41 = tail call float @llvm.fmuladd.f32(float %25, float -2.000000e+00, float %40)
  store float %41, ptr %39, align 4, !tbaa !94
  br label %89

42:                                               ; preds = %32
  %43 = and i32 %35, 8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %58, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 2, i32 15
  %47 = load i16, ptr %46, align 4, !tbaa !95
  %48 = and i16 %47, 1
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 2, i32 1
  %52 = load float, ptr %51, align 8, !tbaa !96
  %53 = tail call float @llvm.fmuladd.f32(float %25, float 2.000000e+00, float %52)
  store float %53, ptr %51, align 8, !tbaa !96
  br label %89

54:                                               ; preds = %45
  %55 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 2, i32 1, i32 1
  %56 = load float, ptr %55, align 4, !tbaa !94
  %57 = tail call float @llvm.fmuladd.f32(float %25, float -2.000000e+00, float %56)
  store float %57, ptr %55, align 4, !tbaa !94
  br label %89

58:                                               ; preds = %42
  %59 = icmp eq i8 %2, 0
  br i1 %59, label %82, label %60

60:                                               ; preds = %58
  %61 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !83
  %62 = and i32 %61, 1048576
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %82, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.v2dViewZoomData, ptr %1, i64 0, i32 9
  %66 = load float, ptr %65, align 4, !tbaa !97
  %67 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 2, i32 1
  %68 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %67) #14
  %69 = load <2 x float>, ptr %67, align 8, !tbaa !6
  %70 = extractelement <2 x float> %69, i64 0
  %71 = fsub float %66, %70
  %72 = fdiv float %71, %68
  %73 = fsub float 1.000000e+00, %72
  %74 = fneg float %73
  %75 = fmul float %25, %74
  %76 = tail call float @llvm.fmuladd.f32(float %72, float %25, float %75)
  %77 = fadd float %25, %76
  %78 = fsub float %76, %25
  %79 = insertelement <2 x float> poison, float %77, i64 0
  %80 = insertelement <2 x float> %79, float %78, i64 1
  %81 = fadd <2 x float> %69, %80
  store <2 x float> %81, ptr %67, align 8, !tbaa !6
  br label %89

82:                                               ; preds = %60, %58
  %83 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 2, i32 1
  %84 = load float, ptr %83, align 8, !tbaa !96
  %85 = fadd float %25, %84
  store float %85, ptr %83, align 8, !tbaa !96
  %86 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 2, i32 1, i32 1
  %87 = load float, ptr %86, align 4, !tbaa !94
  %88 = fsub float %87, %25
  store float %88, ptr %86, align 4, !tbaa !94
  br label %89

89:                                               ; preds = %38, %64, %82, %50, %54, %22
  %90 = and i16 %29, 512
  %91 = icmp eq i16 %90, 0
  br i1 %91, label %92, label %150

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 2, i32 13
  %94 = load i16, ptr %93, align 8, !tbaa !58
  %95 = zext i16 %94 to i32
  %96 = and i32 %95, 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %92
  %99 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 2, i32 1, i32 3
  %100 = load float, ptr %99, align 4, !tbaa !98
  %101 = tail call float @llvm.fmuladd.f32(float %27, float -2.000000e+00, float %100)
  store float %101, ptr %99, align 4, !tbaa !98
  br label %150

102:                                              ; preds = %92
  %103 = and i32 %95, 16
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %118, label %105

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 2, i32 15
  %107 = load i16, ptr %106, align 4, !tbaa !95
  %108 = and i16 %107, 4
  %109 = icmp eq i16 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 2, i32 1, i32 2
  %112 = load float, ptr %111, align 8, !tbaa !99
  %113 = tail call float @llvm.fmuladd.f32(float %27, float 2.000000e+00, float %112)
  store float %113, ptr %111, align 8, !tbaa !99
  br label %150

114:                                              ; preds = %105
  %115 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 2, i32 1, i32 3
  %116 = load float, ptr %115, align 4, !tbaa !98
  %117 = tail call float @llvm.fmuladd.f32(float %27, float -2.000000e+00, float %116)
  store float %117, ptr %115, align 4, !tbaa !98
  br label %150

118:                                              ; preds = %102
  %119 = icmp eq i8 %2, 0
  br i1 %119, label %143, label %120

120:                                              ; preds = %118
  %121 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !83
  %122 = and i32 %121, 1048576
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %143, label %124

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.v2dViewZoomData, ptr %1, i64 0, i32 10
  %126 = load float, ptr %125, align 8, !tbaa !100
  %127 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 2, i32 1
  %128 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 2, i32 1, i32 2
  %129 = tail call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %127) #14
  %130 = load <2 x float>, ptr %128, align 8, !tbaa !6
  %131 = extractelement <2 x float> %130, i64 0
  %132 = fsub float %126, %131
  %133 = fdiv float %132, %129
  %134 = fsub float 1.000000e+00, %133
  %135 = fneg float %134
  %136 = fmul float %27, %135
  %137 = tail call float @llvm.fmuladd.f32(float %133, float %27, float %136)
  %138 = fadd float %27, %137
  %139 = fsub float %137, %27
  %140 = insertelement <2 x float> poison, float %138, i64 0
  %141 = insertelement <2 x float> %140, float %139, i64 1
  %142 = fadd <2 x float> %130, %141
  store <2 x float> %142, ptr %128, align 8, !tbaa !6
  br label %150

143:                                              ; preds = %120, %118
  %144 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 2, i32 1, i32 2
  %145 = load float, ptr %144, align 8, !tbaa !99
  %146 = fadd float %27, %145
  store float %146, ptr %144, align 8, !tbaa !99
  %147 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 2, i32 1, i32 3
  %148 = load float, ptr %147, align 4, !tbaa !98
  %149 = fsub float %148, %27
  store float %149, ptr %147, align 4, !tbaa !98
  br label %150

150:                                              ; preds = %98, %124, %143, %110, %114, %89
  %151 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 2
  tail call void @UI_view2d_curRect_validate(ptr noundef nonnull %151) #12
  %152 = getelementptr inbounds %struct.v2dViewZoomData, ptr %1, i64 0, i32 1
  %153 = load ptr, ptr %152, align 8, !tbaa !92
  tail call void @ED_region_tag_redraw(ptr noundef %153) #12
  %154 = tail call ptr @CTX_wm_screen(ptr noundef %0) #12
  %155 = tail call ptr @CTX_wm_area(ptr noundef %0) #12
  tail call void @UI_view2d_sync(ptr noundef %154, ptr noundef %155, ptr noundef nonnull %151, i32 noundef 1) #12
  ret void
}

; Function Attrs: optsize
declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: optsize
declare void @UI_view2d_zoom_cache_reset() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @view_zoomout_invoke(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call fastcc i32 @view_zoomdrag_init(ptr noundef %0, ptr noundef %1) #14, !range !45
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %25, label %6

6:                                                ; preds = %3
  %7 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !83
  %8 = and i32 %7, 1048576
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %23, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = tail call ptr @CTX_wm_region(ptr noundef %0) #12
  %14 = getelementptr inbounds %struct.ARegion, ptr %13, i64 0, i32 2
  %15 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %16 = load i32, ptr %15, align 4, !tbaa !50
  %17 = sitofp i32 %16 to float
  %18 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %19 = load i32, ptr %18, align 4, !tbaa !50
  %20 = sitofp i32 %19 to float
  %21 = getelementptr inbounds %struct.v2dViewZoomData, ptr %12, i64 0, i32 9
  %22 = getelementptr inbounds %struct.v2dViewZoomData, ptr %12, i64 0, i32 10
  tail call void @UI_view2d_region_to_view(ptr noundef nonnull %14, float noundef %17, float noundef %20, ptr noundef nonnull %21, ptr noundef nonnull %22) #12
  br label %23

23:                                               ; preds = %10, %6
  %24 = tail call fastcc i32 @view_zoomout_exec(ptr noundef %0, ptr noundef %1) #14, !range !87
  br label %25

25:                                               ; preds = %3, %23
  %26 = phi i32 [ %24, %23 ], [ 8, %3 ]
  ret i32 %26
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @view_zoomout_exec(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = alloca [2 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #13
  %4 = tail call i32 @view_zoom_poll(ptr noundef %0) #14, !range !45
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  call fastcc void @view_zoom_axis_lock_defaults(ptr noundef %0, ptr noundef nonnull %3) #14
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !54
  %9 = load i8, ptr %3, align 1, !tbaa !88
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, float 0.000000e+00, float 0xBFA3333340000000
  tail call void @RNA_float_set(ptr noundef %8, ptr noundef nonnull @.str.38, float noundef %11) #12
  %12 = load ptr, ptr %7, align 8, !tbaa !54
  %13 = getelementptr inbounds [2 x i8], ptr %3, i64 0, i64 1
  %14 = load i8, ptr %13, align 1, !tbaa !88
  %15 = icmp eq i8 %14, 0
  %16 = select i1 %15, float 0.000000e+00, float 0xBFA3333340000000
  tail call void @RNA_float_set(ptr noundef %12, ptr noundef nonnull @.str.40, float noundef %16) #12
  tail call fastcc void @view_zoomstep_apply(ptr noundef %0, ptr noundef %1) #14
  tail call fastcc void @view_zoomstep_exit(ptr noundef %1) #14
  br label %17

17:                                               ; preds = %2, %6
  %18 = phi i32 [ 4, %6 ], [ 8, %2 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #13
  ret i32 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @view_zoomdrag_exec(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = tail call fastcc i32 @view_zoomdrag_init(ptr noundef %0, ptr noundef %1) #14, !range !45
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call fastcc void @view_zoomdrag_apply(ptr noundef %0, ptr noundef %1) #14
  tail call fastcc void @view_zoomdrag_exit(ptr noundef %0, ptr noundef %1) #14
  br label %6

6:                                                ; preds = %2, %5
  %7 = phi i32 [ 4, %5 ], [ 8, %2 ]
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @view_zoomdrag_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call ptr @CTX_wm_window(ptr noundef %0) #12
  %5 = tail call fastcc i32 @view_zoomdrag_init(ptr noundef %0, ptr noundef %1) #14, !range !45
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %100, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = load ptr, ptr %9, align 8, !tbaa !90
  %11 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %12 = load i16, ptr %11, align 8, !tbaa !51
  %13 = and i16 %12, -2
  %14 = icmp eq i16 %13, 14
  %15 = getelementptr inbounds %struct.v2dViewZoomData, ptr %9, i64 0, i32 4
  br i1 %14, label %16, label %58

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.v2dViewZoomData, ptr %9, i64 0, i32 5
  %18 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 12
  %19 = load i32, ptr %18, align 8, !tbaa !55
  store i32 %19, ptr %15, align 8, !tbaa !101
  %20 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 13
  %21 = load i32, ptr %20, align 4, !tbaa !56
  store i32 %21, ptr %17, align 4, !tbaa !102
  %22 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %23 = load i32, ptr %22, align 4, !tbaa !60
  %24 = sub nsw i32 %19, %23
  %25 = sitofp i32 %24 to float
  %26 = fmul float %25, 0x3F847AE140000000
  %27 = getelementptr inbounds %struct.View2D, ptr %10, i64 0, i32 1
  %28 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %27) #14
  %29 = fmul float %28, %26
  %30 = fdiv float %29, 1.000000e+01
  %31 = icmp eq i16 %12, 14
  br i1 %31, label %32, label %38

32:                                               ; preds = %16
  %33 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %34 = load i32, ptr %33, align 8, !tbaa !57
  %35 = sub nsw i32 %21, %34
  %36 = sitofp i32 %35 to float
  %37 = fmul float %36, 0x3F847AE140000000
  br label %38

38:                                               ; preds = %32, %16
  %39 = phi float [ %37, %32 ], [ %26, %16 ]
  %40 = tail call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %27) #14
  %41 = fmul float %39, %40
  %42 = fdiv float %41, 1.000000e+01
  %43 = getelementptr inbounds %struct.View2D, ptr %10, i64 0, i32 12
  %44 = load i16, ptr %43, align 2, !tbaa !89
  %45 = and i16 %44, 2
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %38
  %48 = tail call float @llvm.fabs.f32(float %30)
  %49 = tail call float @llvm.fabs.f32(float %42)
  %50 = fcmp ogt float %48, %49
  %51 = select i1 %50, float %30, float %42
  br label %52

52:                                               ; preds = %47, %38
  %53 = phi float [ %30, %38 ], [ %51, %47 ]
  %54 = phi float [ %42, %38 ], [ %51, %47 ]
  %55 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %56 = load ptr, ptr %55, align 8, !tbaa !54
  tail call void @RNA_float_set(ptr noundef %56, ptr noundef nonnull @.str.19, float noundef %53) #12
  %57 = load ptr, ptr %55, align 8, !tbaa !54
  tail call void @RNA_float_set(ptr noundef %57, ptr noundef nonnull @.str.22, float noundef %54) #12
  tail call fastcc void @view_zoomdrag_apply(ptr noundef %0, ptr noundef nonnull %1) #14
  tail call fastcc void @view_zoomdrag_exit(ptr noundef %0, ptr noundef nonnull %1) #14
  br label %100

58:                                               ; preds = %7
  %59 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %60 = load <2 x i32>, ptr %59, align 4, !tbaa !50
  store <2 x i32> %60, ptr %15, align 8, !tbaa !50
  %61 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %62 = load ptr, ptr %61, align 8, !tbaa !54
  tail call void @RNA_float_set(ptr noundef %62, ptr noundef nonnull @.str.19, float noundef 0.000000e+00) #12
  %63 = load ptr, ptr %61, align 8, !tbaa !54
  tail call void @RNA_float_set(ptr noundef %63, ptr noundef nonnull @.str.22, float noundef 0.000000e+00) #12
  %64 = load i16, ptr %11, align 8, !tbaa !51
  %65 = sext i16 %64 to i32
  %66 = getelementptr inbounds %struct.v2dViewZoomData, ptr %9, i64 0, i32 6
  store i32 %65, ptr %66, align 8, !tbaa !103
  %67 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !83
  %68 = and i32 %67, 1048576
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %81, label %70

70:                                               ; preds = %58
  %71 = tail call ptr @CTX_wm_region(ptr noundef %0) #12
  %72 = getelementptr inbounds %struct.ARegion, ptr %71, i64 0, i32 2
  %73 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %74 = load i32, ptr %73, align 4, !tbaa !50
  %75 = sitofp i32 %74 to float
  %76 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %77 = load i32, ptr %76, align 4, !tbaa !50
  %78 = sitofp i32 %77 to float
  %79 = getelementptr inbounds %struct.v2dViewZoomData, ptr %9, i64 0, i32 9
  %80 = getelementptr inbounds %struct.v2dViewZoomData, ptr %9, i64 0, i32 10
  tail call void @UI_view2d_region_to_view(ptr noundef nonnull %72, float noundef %75, float noundef %78, ptr noundef nonnull %79, ptr noundef nonnull %80) #12
  br label %81

81:                                               ; preds = %70, %58
  %82 = getelementptr inbounds %struct.View2D, ptr %10, i64 0, i32 13
  %83 = load i16, ptr %82, align 8, !tbaa !58
  %84 = zext i16 %83 to i32
  %85 = and i32 %84, 2
  %86 = icmp eq i32 %85, 0
  %87 = and i32 %84, 4
  %88 = icmp eq i32 %87, 0
  %89 = select i1 %88, i32 14, i32 16
  %90 = select i1 %86, i32 %89, i32 15
  tail call void @WM_cursor_modal_set(ptr noundef %4, i32 noundef %90) #12
  %91 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef nonnull %1) #12
  %92 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 26), align 2, !tbaa !104
  %93 = icmp eq i16 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %81
  %95 = tail call ptr @CTX_wm_manager(ptr noundef %0) #12
  %96 = tail call ptr @WM_event_add_timer(ptr noundef %95, ptr noundef %4, i32 noundef 272, double noundef 0x3F847AE140000000) #12
  %97 = getelementptr inbounds %struct.v2dViewZoomData, ptr %9, i64 0, i32 2
  store ptr %96, ptr %97, align 8, !tbaa !105
  %98 = tail call double @PIL_check_seconds_timer() #12
  %99 = getelementptr inbounds %struct.v2dViewZoomData, ptr %9, i64 0, i32 3
  store double %98, ptr %99, align 8, !tbaa !106
  br label %100

100:                                              ; preds = %81, %94, %3, %52
  %101 = phi i32 [ 4, %52 ], [ 8, %3 ], [ 1, %94 ], [ 1, %81 ]
  ret i32 %101
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @view_zoomdrag_modal(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = load ptr, ptr %5, align 8, !tbaa !90
  %7 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %8 = load i16, ptr %7, align 8, !tbaa !51
  switch i16 %8, label %117 [
    i16 272, label %9
    i16 4, label %16
  ]

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 28
  %11 = load ptr, ptr %10, align 8, !tbaa !107
  %12 = getelementptr inbounds %struct.v2dViewZoomData, ptr %5, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !105
  %14 = icmp eq ptr %11, %13
  br i1 %14, label %15, label %117

15:                                               ; preds = %9
  tail call fastcc void @view_zoomdrag_apply(ptr noundef %0, ptr noundef nonnull %1) #14
  br label %151

16:                                               ; preds = %3
  %17 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 26), align 2, !tbaa !104
  %18 = icmp eq i16 %17, 1
  br i1 %18, label %19, label %57

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.View2D, ptr %6, i64 0, i32 4
  %21 = tail call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %20) #14
  %22 = getelementptr inbounds %struct.v2dViewZoomData, ptr %5, i64 0, i32 4
  %23 = getelementptr inbounds %struct.v2dViewZoomData, ptr %5, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !92
  %25 = getelementptr inbounds %struct.ARegion, ptr %24, i64 0, i32 3
  %26 = load i32, ptr %25, align 8, !tbaa !108
  %27 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %28 = getelementptr inbounds %struct.View2D, ptr %6, i64 0, i32 1
  %29 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %28) #14
  %30 = tail call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %20) #14
  %31 = load <2 x i32>, ptr %22, align 8, !tbaa !50
  %32 = getelementptr inbounds %struct.ARegion, ptr %24, i64 0, i32 3, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !109
  %34 = tail call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %28) #14
  %35 = insertelement <2 x i32> poison, i32 %21, i64 0
  %36 = insertelement <2 x i32> %35, i32 %30, i64 1
  %37 = sitofp <2 x i32> %36 to <2 x float>
  %38 = fmul <2 x float> %37, <float 5.000000e-01, float 5.000000e-01>
  %39 = insertelement <2 x i32> poison, i32 %26, i64 0
  %40 = insertelement <2 x i32> %39, i32 %33, i64 1
  %41 = sub nsw <2 x i32> %31, %40
  %42 = sitofp <2 x i32> %41 to <2 x float>
  %43 = fsub <2 x float> %42, %38
  %44 = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %43)
  %45 = fadd <2 x float> %44, <float 2.000000e+00, float 2.000000e+00>
  %46 = load <2 x i32>, ptr %27, align 4, !tbaa !50
  %47 = sitofp <2 x i32> %46 to <2 x float>
  %48 = fsub <2 x float> %47, %38
  %49 = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %48)
  %50 = fadd <2 x float> %49, <float 2.000000e+00, float 2.000000e+00>
  %51 = fdiv <2 x float> %45, %50
  %52 = fsub <2 x float> <float 1.000000e+00, float 1.000000e+00>, %51
  %53 = insertelement <2 x float> poison, float %29, i64 0
  %54 = insertelement <2 x float> %53, float %34, i64 1
  %55 = fmul <2 x float> %54, <float 5.000000e-01, float 5.000000e-01>
  %56 = fmul <2 x float> %55, %52
  br label %84

57:                                               ; preds = %16
  %58 = getelementptr inbounds %struct.View2D, ptr %6, i64 0, i32 8
  %59 = load float, ptr %58, align 4, !tbaa !110
  %60 = fcmp ogt float %59, 0.000000e+00
  br i1 %60, label %61, label %67

61:                                               ; preds = %57
  %62 = fmul float %59, 0x3F50624DE0000000
  %63 = fcmp olt float %62, 0x3F50624DE0000000
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = fcmp ogt float %62, 0x3F847AE140000000
  br i1 %65, label %67, label %66

66:                                               ; preds = %64
  br label %67

67:                                               ; preds = %61, %64, %66, %57
  %68 = phi float [ 0x3F847AE140000000, %57 ], [ 0x3F50624DE0000000, %61 ], [ %62, %66 ], [ 0x3F847AE140000000, %64 ]
  %69 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %70 = getelementptr inbounds %struct.v2dViewZoomData, ptr %5, i64 0, i32 4
  %71 = getelementptr inbounds %struct.View2D, ptr %6, i64 0, i32 1
  %72 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %71) #14
  %73 = load <2 x i32>, ptr %69, align 4, !tbaa !50
  %74 = load <2 x i32>, ptr %70, align 8, !tbaa !50
  %75 = sub nsw <2 x i32> %73, %74
  %76 = sitofp <2 x i32> %75 to <2 x float>
  %77 = insertelement <2 x float> poison, float %68, i64 0
  %78 = shufflevector <2 x float> %77, <2 x float> poison, <2 x i32> zeroinitializer
  %79 = fmul <2 x float> %78, %76
  %80 = tail call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %71) #14
  %81 = insertelement <2 x float> poison, float %72, i64 0
  %82 = insertelement <2 x float> %81, float %80, i64 1
  %83 = fmul <2 x float> %82, %79
  br label %84

84:                                               ; preds = %67, %19
  %85 = phi <2 x float> [ %56, %19 ], [ %83, %67 ]
  %86 = getelementptr inbounds %struct.View2D, ptr %6, i64 0, i32 12
  %87 = load i16, ptr %86, align 2, !tbaa !89
  %88 = and i16 %87, 2
  %89 = icmp eq i16 %88, 0
  br i1 %89, label %100, label %90

90:                                               ; preds = %84
  %91 = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %85)
  %92 = extractelement <2 x float> %91, i64 0
  %93 = extractelement <2 x float> %91, i64 1
  %94 = fcmp ogt float %92, %93
  %95 = extractelement <2 x float> %85, i64 0
  %96 = extractelement <2 x float> %85, i64 1
  %97 = select i1 %94, float %95, float %96
  %98 = insertelement <2 x float> poison, float %97, i64 0
  %99 = shufflevector <2 x float> %98, <2 x float> poison, <2 x i32> zeroinitializer
  br label %100

100:                                              ; preds = %90, %84
  %101 = phi <2 x float> [ %85, %84 ], [ %99, %90 ]
  %102 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %103 = load ptr, ptr %102, align 8, !tbaa !54
  %104 = extractelement <2 x float> %101, i64 0
  tail call void @RNA_float_set(ptr noundef %103, ptr noundef nonnull @.str.19, float noundef %104) #12
  %105 = load ptr, ptr %102, align 8, !tbaa !54
  %106 = extractelement <2 x float> %101, i64 1
  tail call void @RNA_float_set(ptr noundef %105, ptr noundef nonnull @.str.22, float noundef %106) #12
  %107 = getelementptr inbounds %struct.v2dViewZoomData, ptr %5, i64 0, i32 7
  %108 = load <2 x float>, ptr %107, align 4, !tbaa !6
  %109 = fadd <2 x float> %101, %108
  store <2 x float> %109, ptr %107, align 4, !tbaa !6
  %110 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 26), align 2, !tbaa !104
  %111 = icmp eq i16 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %100
  %113 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %114 = getelementptr inbounds %struct.v2dViewZoomData, ptr %5, i64 0, i32 4
  %115 = load <2 x i32>, ptr %113, align 4, !tbaa !50
  store <2 x i32> %115, ptr %114, align 8, !tbaa !50
  br label %116

116:                                              ; preds = %112, %100
  tail call fastcc void @view_zoomdrag_apply(ptr noundef %0, ptr noundef nonnull %1) #14
  br label %151

117:                                              ; preds = %3, %9
  %118 = sext i16 %8 to i32
  %119 = getelementptr inbounds %struct.v2dViewZoomData, ptr %5, i64 0, i32 6
  %120 = load i32, ptr %119, align 8, !tbaa !103
  %121 = icmp eq i32 %120, %118
  %122 = icmp eq i16 %8, 218
  %123 = or i1 %122, %121
  br i1 %123, label %124, label %151

124:                                              ; preds = %117
  %125 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %126 = load i16, ptr %125, align 2, !tbaa !62
  %127 = icmp eq i16 %126, 2
  br i1 %127, label %128, label %151

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.View2D, ptr %6, i64 0, i32 12
  %130 = load i16, ptr %129, align 2, !tbaa !89
  %131 = and i16 %130, 256
  %132 = icmp eq i16 %131, 0
  %133 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %134 = load ptr, ptr %133, align 8, !tbaa !54
  br i1 %132, label %135, label %138

135:                                              ; preds = %128
  %136 = getelementptr inbounds %struct.v2dViewZoomData, ptr %5, i64 0, i32 7
  %137 = load float, ptr %136, align 4, !tbaa !111
  br label %138

138:                                              ; preds = %128, %135
  %139 = phi float [ %137, %135 ], [ 0.000000e+00, %128 ]
  tail call void @RNA_float_set(ptr noundef %134, ptr noundef nonnull @.str.19, float noundef %139) #12
  %140 = load i16, ptr %129, align 2, !tbaa !89
  %141 = and i16 %140, 512
  %142 = icmp eq i16 %141, 0
  %143 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %144 = load ptr, ptr %143, align 8, !tbaa !54
  br i1 %142, label %145, label %148

145:                                              ; preds = %138
  %146 = getelementptr inbounds %struct.v2dViewZoomData, ptr %5, i64 0, i32 8
  %147 = load float, ptr %146, align 8, !tbaa !112
  br label %148

148:                                              ; preds = %138, %145
  %149 = phi float [ %147, %145 ], [ 0.000000e+00, %138 ]
  tail call void @RNA_float_set(ptr noundef %144, ptr noundef nonnull @.str.22, float noundef %149) #12
  tail call fastcc void @view_zoomdrag_exit(ptr noundef %0, ptr noundef nonnull %1) #14
  %150 = tail call ptr @CTX_wm_window(ptr noundef %0) #12
  tail call void @WM_cursor_modal_restore(ptr noundef %150) #12
  br label %151

151:                                              ; preds = %15, %124, %116, %117, %148
  %152 = phi i32 [ 4, %148 ], [ 1, %117 ], [ 1, %116 ], [ 1, %124 ], [ 1, %15 ]
  ret i32 %152
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @view_zoomdrag_cancel(ptr noundef %0, ptr nocapture noundef %1) #0 {
  tail call fastcc void @view_zoomdrag_exit(ptr noundef %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @view_zoomdrag_apply(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = load ptr, ptr %4, align 8, !tbaa !90
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !54
  %8 = tail call float @RNA_float_get(ptr noundef %7, ptr noundef nonnull @.str.19) #12
  %9 = load ptr, ptr %6, align 8, !tbaa !54
  %10 = tail call float @RNA_float_get(ptr noundef %9, ptr noundef nonnull @.str.22) #12
  %11 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !83
  %12 = and i32 %11, 33554432
  %13 = icmp eq i32 %12, 0
  %14 = fneg float %8
  %15 = fneg float %10
  %16 = select i1 %13, float %10, float %15
  %17 = select i1 %13, float %8, float %14
  %18 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 26), align 2, !tbaa !104
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %2
  %21 = tail call double @PIL_check_seconds_timer() #12
  %22 = getelementptr inbounds %struct.v2dViewZoomData, ptr %4, i64 0, i32 3
  %23 = load double, ptr %22, align 8, !tbaa !106
  %24 = fsub double %21, %23
  %25 = fptrunc double %24 to float
  %26 = fmul float %25, 5.000000e-01
  %27 = fmul float %17, %26
  %28 = fmul float %16, %26
  store double %21, ptr %22, align 8, !tbaa !106
  br label %29

29:                                               ; preds = %20, %2
  %30 = phi float [ %28, %20 ], [ %16, %2 ]
  %31 = phi float [ %27, %20 ], [ %17, %2 ]
  %32 = getelementptr inbounds %struct.View2D, ptr %5, i64 0, i32 12
  %33 = load i16, ptr %32, align 2, !tbaa !89
  %34 = and i16 %33, 256
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %36, label %74

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.View2D, ptr %5, i64 0, i32 13
  %38 = load i16, ptr %37, align 8, !tbaa !58
  %39 = and i16 %38, 2
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.View2D, ptr %5, i64 0, i32 1, i32 1
  %43 = load float, ptr %42, align 4, !tbaa !94
  %44 = tail call float @llvm.fmuladd.f32(float %31, float -2.000000e+00, float %43)
  store float %44, ptr %42, align 4, !tbaa !94
  br label %74

45:                                               ; preds = %36
  %46 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !83
  %47 = and i32 %46, 1048576
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %67, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.v2dViewZoomData, ptr %4, i64 0, i32 9
  %51 = load float, ptr %50, align 4, !tbaa !97
  %52 = getelementptr inbounds %struct.View2D, ptr %5, i64 0, i32 1
  %53 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %52) #14
  %54 = load <2 x float>, ptr %52, align 8, !tbaa !6
  %55 = extractelement <2 x float> %54, i64 0
  %56 = fsub float %51, %55
  %57 = fdiv float %56, %53
  %58 = fsub float 1.000000e+00, %57
  %59 = fneg float %58
  %60 = fmul float %31, %59
  %61 = tail call float @llvm.fmuladd.f32(float %57, float %31, float %60)
  %62 = fadd float %31, %61
  %63 = fsub float %61, %31
  %64 = insertelement <2 x float> poison, float %62, i64 0
  %65 = insertelement <2 x float> %64, float %63, i64 1
  %66 = fadd <2 x float> %54, %65
  store <2 x float> %66, ptr %52, align 8, !tbaa !6
  br label %74

67:                                               ; preds = %45
  %68 = getelementptr inbounds %struct.View2D, ptr %5, i64 0, i32 1
  %69 = load float, ptr %68, align 8, !tbaa !96
  %70 = fadd float %31, %69
  store float %70, ptr %68, align 8, !tbaa !96
  %71 = getelementptr inbounds %struct.View2D, ptr %5, i64 0, i32 1, i32 1
  %72 = load float, ptr %71, align 4, !tbaa !94
  %73 = fsub float %72, %31
  store float %73, ptr %71, align 4, !tbaa !94
  br label %74

74:                                               ; preds = %41, %67, %49, %29
  %75 = and i16 %33, 512
  %76 = icmp eq i16 %75, 0
  br i1 %76, label %77, label %116

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.View2D, ptr %5, i64 0, i32 13
  %79 = load i16, ptr %78, align 8, !tbaa !58
  %80 = and i16 %79, 4
  %81 = icmp eq i16 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.View2D, ptr %5, i64 0, i32 1, i32 3
  %84 = load float, ptr %83, align 4, !tbaa !98
  %85 = tail call float @llvm.fmuladd.f32(float %30, float -2.000000e+00, float %84)
  store float %85, ptr %83, align 4, !tbaa !98
  br label %116

86:                                               ; preds = %77
  %87 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !83
  %88 = and i32 %87, 1048576
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %109, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.v2dViewZoomData, ptr %4, i64 0, i32 10
  %92 = load float, ptr %91, align 8, !tbaa !100
  %93 = getelementptr inbounds %struct.View2D, ptr %5, i64 0, i32 1
  %94 = getelementptr inbounds %struct.View2D, ptr %5, i64 0, i32 1, i32 2
  %95 = tail call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %93) #14
  %96 = load <2 x float>, ptr %94, align 8, !tbaa !6
  %97 = extractelement <2 x float> %96, i64 0
  %98 = fsub float %92, %97
  %99 = fdiv float %98, %95
  %100 = fsub float 1.000000e+00, %99
  %101 = fneg float %100
  %102 = fmul float %30, %101
  %103 = tail call float @llvm.fmuladd.f32(float %99, float %30, float %102)
  %104 = fadd float %30, %103
  %105 = fsub float %103, %30
  %106 = insertelement <2 x float> poison, float %104, i64 0
  %107 = insertelement <2 x float> %106, float %105, i64 1
  %108 = fadd <2 x float> %96, %107
  store <2 x float> %108, ptr %94, align 8, !tbaa !6
  br label %116

109:                                              ; preds = %86
  %110 = getelementptr inbounds %struct.View2D, ptr %5, i64 0, i32 1, i32 2
  %111 = load float, ptr %110, align 8, !tbaa !99
  %112 = fadd float %30, %111
  store float %112, ptr %110, align 8, !tbaa !99
  %113 = getelementptr inbounds %struct.View2D, ptr %5, i64 0, i32 1, i32 3
  %114 = load float, ptr %113, align 4, !tbaa !98
  %115 = fsub float %114, %30
  store float %115, ptr %113, align 4, !tbaa !98
  br label %116

116:                                              ; preds = %82, %109, %90, %74
  tail call void @UI_view2d_curRect_validate(ptr noundef nonnull %5) #12
  %117 = getelementptr inbounds %struct.v2dViewZoomData, ptr %4, i64 0, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !92
  tail call void @ED_region_tag_redraw(ptr noundef %118) #12
  %119 = tail call ptr @CTX_wm_screen(ptr noundef %0) #12
  %120 = tail call ptr @CTX_wm_area(ptr noundef %0) #12
  tail call void @UI_view2d_sync(ptr noundef %119, ptr noundef %120, ptr noundef nonnull %5, i32 noundef 1) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @view_zoomdrag_exit(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  tail call void @UI_view2d_zoom_cache_reset() #12
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.v2dViewZoomData, ptr %4, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !105
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = tail call ptr @CTX_wm_manager(ptr noundef %0) #12
  %12 = tail call ptr @CTX_wm_window(ptr noundef %0) #12
  %13 = load ptr, ptr %7, align 8, !tbaa !105
  tail call void @WM_event_remove_timer(ptr noundef %11, ptr noundef %12, ptr noundef %13) #12
  %14 = load ptr, ptr %3, align 8, !tbaa !46
  br label %15

15:                                               ; preds = %10, %6
  %16 = phi ptr [ %14, %10 ], [ %4, %6 ]
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !20
  tail call void %17(ptr noundef %16) #12
  store ptr null, ptr %3, align 8, !tbaa !46
  br label %18

18:                                               ; preds = %15, %2
  ret void
}

; Function Attrs: optsize
declare double @PIL_check_seconds_timer() local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @WM_border_select_invoke(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @view_borderzoom_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.rctf, align 8
  %4 = alloca %struct.rctf, align 8
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #12
  %6 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #13
  %7 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !5
  %8 = tail call i32 @WM_operator_smooth_viewtx_get(ptr noundef %1) #12
  call void @WM_operator_properties_border_to_rctf(ptr noundef %1, ptr noundef nonnull %3) #12
  call void @UI_view2d_region_to_view_rctf(ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef nonnull %3) #12
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !54
  %11 = call i32 @RNA_int_get(ptr noundef %10, ptr noundef nonnull @.str.49) #12
  %12 = icmp eq i32 %11, 9
  %13 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2, i32 12
  %14 = load i16, ptr %13, align 2, !tbaa !89
  %15 = and i16 %14, 256
  %16 = icmp eq i16 %15, 0
  br i1 %12, label %17, label %29

17:                                               ; preds = %2
  br i1 %16, label %18, label %20

18:                                               ; preds = %17
  %19 = load <2 x float>, ptr %3, align 8, !tbaa !6
  store <2 x float> %19, ptr %4, align 8, !tbaa !6
  br label %20

20:                                               ; preds = %18, %17
  %21 = and i16 %14, 512
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %23, label %58

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.rctf, ptr %3, i64 0, i32 2
  %25 = load float, ptr %24, align 8, !tbaa !44
  %26 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 2
  store float %25, ptr %26, align 8, !tbaa !44
  %27 = getelementptr inbounds %struct.rctf, ptr %3, i64 0, i32 3
  %28 = load float, ptr %27, align 4, !tbaa !43
  br label %55

29:                                               ; preds = %2
  br i1 %16, label %30, label %43

30:                                               ; preds = %29
  %31 = call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %4) #14
  %32 = call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %3) #14
  %33 = fdiv float %31, %32
  %34 = call fastcc float @BLI_rctf_cent_x(ptr noundef nonnull %4) #14
  %35 = fneg float %31
  %36 = insertelement <2 x float> poison, float %35, i64 0
  %37 = insertelement <2 x float> %36, float %31, i64 1
  %38 = insertelement <2 x float> poison, float %33, i64 0
  %39 = shufflevector <2 x float> %38, <2 x float> poison, <2 x i32> zeroinitializer
  %40 = insertelement <2 x float> poison, float %34, i64 0
  %41 = shufflevector <2 x float> %40, <2 x float> poison, <2 x i32> zeroinitializer
  %42 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %37, <2 x float> %39, <2 x float> %41)
  store <2 x float> %42, ptr %4, align 8, !tbaa !6
  br label %43

43:                                               ; preds = %30, %29
  %44 = and i16 %14, 512
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %43
  %47 = call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %4) #14
  %48 = call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %3) #14
  %49 = fdiv float %47, %48
  %50 = call fastcc float @BLI_rctf_cent_y(ptr noundef nonnull %4) #14
  %51 = fneg float %47
  %52 = call float @llvm.fmuladd.f32(float %51, float %49, float %50)
  %53 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 2
  store float %52, ptr %53, align 8, !tbaa !44
  %54 = call float @llvm.fmuladd.f32(float %47, float %49, float %50)
  br label %55

55:                                               ; preds = %23, %46
  %56 = phi float [ %54, %46 ], [ %28, %23 ]
  %57 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 3
  store float %56, ptr %57, align 4, !tbaa !43
  br label %58

58:                                               ; preds = %55, %43, %20
  call void @UI_view2d_smooth_view(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %4, i32 noundef %8) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  ret i32 4
}

; Function Attrs: optsize
declare i32 @WM_border_select_modal(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare void @WM_border_select_cancel(ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare void @WM_operator_properties_gesture_border(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @WM_operator_smooth_viewtx_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_operator_properties_border_to_rctf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_view2d_region_to_view_rctf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @view2d_ndof_invoke(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca [3 x float], align 8
  %5 = alloca [2 x i8], align 1
  %6 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %7 = load i16, ptr %6, align 8, !tbaa !51
  %8 = icmp eq i16 %7, 400
  br i1 %8, label %9, label %66

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 28
  %11 = load ptr, ptr %10, align 8, !tbaa !107
  %12 = load float, ptr %11, align 4, !tbaa !6
  %13 = fcmp une float %12, 0.000000e+00
  br i1 %13, label %14, label %21

14:                                               ; preds = %9
  %15 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !6
  %17 = fcmp une float %16, 0.000000e+00
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = tail call fastcc i32 @view_pan_poll(ptr noundef %0) #14, !range !45
  %20 = icmp eq i32 %19, 0
  br label %21

21:                                               ; preds = %18, %14, %9
  %22 = phi i1 [ true, %14 ], [ true, %9 ], [ %20, %18 ]
  %23 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 2
  %24 = load float, ptr %23, align 4, !tbaa !6
  %25 = fcmp une float %24, 0.000000e+00
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = tail call i32 @view_zoom_poll(ptr noundef %0) #14, !range !45
  %28 = icmp eq i32 %27, 0
  br label %29

29:                                               ; preds = %26, %21
  %30 = phi i1 [ true, %21 ], [ %28, %26 ]
  br i1 %22, label %41, label %31

31:                                               ; preds = %29
  %32 = tail call fastcc i32 @view_pan_init(ptr noundef %0, ptr noundef %1) #14, !range !45
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #13
  call void @WM_event_ndof_pan_get(ptr noundef nonnull %11, ptr noundef nonnull %4, i8 noundef zeroext 0) #12
  %35 = load <2 x float>, ptr %4, align 8, !tbaa !6
  %36 = fmul <2 x float> %35, <float 1.000000e+01, float 1.000000e+01>
  store <2 x float> %36, ptr %4, align 8, !tbaa !6
  %37 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %38 = load ptr, ptr %37, align 8, !tbaa !46
  %39 = extractelement <2 x float> %36, i64 0
  %40 = extractelement <2 x float> %36, i64 1
  call fastcc void @view_pan_apply_ex(ptr noundef %0, ptr noundef %38, float noundef %39, float noundef %40) #14
  call fastcc void @view_pan_exit(ptr noundef %1) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #13
  br label %41

41:                                               ; preds = %31, %34, %29
  br i1 %30, label %66, label %42

42:                                               ; preds = %41
  %43 = call fastcc i32 @view_zoomdrag_init(ptr noundef %0, ptr noundef %1) #14, !range !45
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %66, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.wmNDOFMotionData, ptr %11, i64 0, i32 2
  %47 = load float, ptr %46, align 4, !tbaa !113
  %48 = fmul float %47, 5.000000e-01
  %49 = load float, ptr %23, align 4, !tbaa !6
  %50 = fneg float %49
  %51 = fmul float %48, %50
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #13
  %52 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 87), align 4, !tbaa !115
  %53 = and i32 %52, 256
  %54 = icmp eq i32 %53, 0
  %55 = fneg float %51
  %56 = select i1 %54, float %51, float %55
  call fastcc void @view_zoom_axis_lock_defaults(ptr noundef %0, ptr noundef nonnull %5) #14
  %57 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %58 = load ptr, ptr %57, align 8, !tbaa !46
  %59 = load i8, ptr %5, align 1, !tbaa !88
  %60 = icmp eq i8 %59, 0
  %61 = select i1 %60, float 0.000000e+00, float %56
  %62 = getelementptr inbounds [2 x i8], ptr %5, i64 0, i64 1
  %63 = load i8, ptr %62, align 1, !tbaa !88
  %64 = icmp eq i8 %63, 0
  %65 = select i1 %64, float 0.000000e+00, float %56
  call fastcc void @view_zoomstep_apply_ex(ptr noundef %0, ptr noundef %58, i8 noundef zeroext 0, float noundef %61, float noundef %65) #14
  call fastcc void @view_zoomstep_exit(ptr noundef %1) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #13
  br label %66

66:                                               ; preds = %41, %45, %42, %3
  %67 = phi i32 [ 2, %3 ], [ 4, %42 ], [ 4, %45 ], [ 4, %41 ]
  ret i32 %67
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @view2d_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_wm_region(ptr noundef %0) #12
  %3 = icmp eq ptr %2, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 14
  %6 = load i16, ptr %5, align 2, !tbaa !116
  %7 = lshr i16 %6, 10
  %8 = and i16 %7, 1
  %9 = zext nneg i16 %8 to i32
  br label %10

10:                                               ; preds = %4, %1
  %11 = phi i32 [ 0, %1 ], [ %9, %4 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @view_pan_poll(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_region(ptr noundef %0) #12
  %3 = icmp eq ptr %2, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 13
  %6 = load i16, ptr %5, align 8, !tbaa !58
  %7 = and i16 %6, 6
  %8 = icmp ne i16 %7, 6
  %9 = zext i1 %8 to i32
  br label %10

10:                                               ; preds = %4, %1
  %11 = phi i32 [ 0, %1 ], [ %9, %4 ]
  ret i32 %11
}

; Function Attrs: optsize
declare void @WM_event_ndof_pan_get(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @view2d_smoothview_invoke(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #12
  %5 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2
  %6 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2, i32 24
  %7 = load ptr, ptr %6, align 8, !tbaa !14
  %8 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2, i32 25
  %9 = load ptr, ptr %8, align 8, !tbaa !23
  %10 = icmp eq ptr %9, null
  br i1 %10, label %46, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 28
  %13 = load ptr, ptr %12, align 8, !tbaa !107
  %14 = icmp eq ptr %9, %13
  br i1 %14, label %15, label %46

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.SmoothView2DStore, ptr %7, i64 0, i32 2
  %17 = load double, ptr %16, align 8, !tbaa !10
  %18 = fcmp une double %17, 0.000000e+00
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.wmTimer, ptr %9, i64 0, i32 6
  %21 = load double, ptr %20, align 8, !tbaa !117
  %22 = fdiv double %21, %17
  %23 = fptrunc double %22 to float
  %24 = fcmp ult float %23, 1.000000e+00
  br i1 %24, label %32, label %25

25:                                               ; preds = %15, %19
  %26 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2, i32 1
  %27 = getelementptr inbounds %struct.SmoothView2DStore, ptr %7, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %26, ptr noundef nonnull align 8 dereferenceable(16) %27, i64 16, i1 false), !tbaa.struct !5
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !20
  tail call void %28(ptr noundef nonnull %7) #12
  store ptr null, ptr %6, align 8, !tbaa !14
  %29 = tail call ptr @CTX_wm_manager(ptr noundef %0) #12
  %30 = tail call ptr @CTX_wm_window(ptr noundef %0) #12
  %31 = load ptr, ptr %8, align 8, !tbaa !23
  tail call void @WM_event_remove_timer(ptr noundef %29, ptr noundef %30, ptr noundef %31) #12
  store ptr null, ptr %8, align 8, !tbaa !23
  br label %40

32:                                               ; preds = %19
  %33 = fmul float %23, 3.000000e+00
  %34 = fmul float %23, -2.000000e+00
  %35 = fmul float %34, %23
  %36 = fmul float %35, %23
  %37 = tail call float @llvm.fmuladd.f32(float %33, float %23, float %36)
  %38 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2, i32 1
  %39 = getelementptr inbounds %struct.SmoothView2DStore, ptr %7, i64 0, i32 1
  tail call void @BLI_rctf_interp(ptr noundef nonnull %38, ptr noundef nonnull %7, ptr noundef nonnull %39, float noundef %37) #12
  br label %40

40:                                               ; preds = %32, %25
  tail call void @UI_view2d_curRect_validate(ptr noundef nonnull %5) #12
  %41 = tail call ptr @CTX_wm_screen(ptr noundef %0) #12
  %42 = tail call ptr @CTX_wm_area(ptr noundef %0) #12
  tail call void @UI_view2d_sync(ptr noundef %41, ptr noundef %42, ptr noundef nonnull %5, i32 noundef 1) #12
  tail call void @ED_region_tag_redraw(ptr noundef nonnull %4) #12
  %43 = load ptr, ptr %6, align 8, !tbaa !14
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  tail call void @UI_view2d_zoom_cache_reset() #12
  br label %46

46:                                               ; preds = %40, %45, %3, %11
  %47 = phi i32 [ 8, %11 ], [ 8, %3 ], [ 4, %45 ], [ 4, %40 ]
  ret i32 %47
}

; Function Attrs: optsize
declare void @BLI_rctf_interp(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @scroller_activate_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #12
  %5 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2
  %6 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !60
  %8 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %9 = load i32, ptr %8, align 8, !tbaa !57
  %10 = tail call signext i16 @UI_view2d_mouse_in_scrollers(ptr noundef %0, ptr noundef nonnull %5, i32 noundef %7, i32 noundef %9) #12
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %90, label %12

12:                                               ; preds = %3
  tail call fastcc void @scroller_activate_init(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i16 noundef signext %10) #14
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  %15 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %16 = load i16, ptr %15, align 8, !tbaa !51
  %17 = icmp eq i16 %16, 2
  br i1 %17, label %18, label %32

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.v2dScrollerMove, ptr %14, i64 0, i32 2
  %20 = load i16, ptr %19, align 8, !tbaa !119
  switch i16 %20, label %30 [
    i16 104, label %22
    i16 118, label %21
  ]

21:                                               ; preds = %18
  br label %22

22:                                               ; preds = %18, %21
  %23 = phi ptr [ %8, %21 ], [ %6, %18 ]
  %24 = load i32, ptr %23, align 4, !tbaa !50
  %25 = getelementptr inbounds %struct.v2dScrollerMove, ptr %14, i64 0, i32 8
  %26 = load i32, ptr %25, align 4, !tbaa !121
  %27 = sub nsw i32 %24, %26
  %28 = sitofp i32 %27 to float
  %29 = getelementptr inbounds %struct.v2dScrollerMove, ptr %14, i64 0, i32 6
  store float %28, ptr %29, align 4, !tbaa !122
  br label %30

30:                                               ; preds = %22, %18
  tail call fastcc void @scroller_activate_apply(ptr noundef %0, ptr noundef nonnull %1) #14
  %31 = getelementptr inbounds %struct.v2dScrollerMove, ptr %14, i64 0, i32 3
  store i16 0, ptr %31, align 2, !tbaa !123
  br label %55

32:                                               ; preds = %12
  %33 = getelementptr inbounds %struct.v2dScrollerMove, ptr %14, i64 0, i32 3
  %34 = load i16, ptr %33, align 2, !tbaa !123
  %35 = getelementptr inbounds %struct.v2dScrollerMove, ptr %14, i64 0, i32 3
  switch i16 %34, label %52 [
    i16 -1, label %36
    i16 1, label %36
    i16 0, label %55
  ]

36:                                               ; preds = %32, %32
  %37 = getelementptr inbounds %struct.v2dScrollerMove, ptr %14, i64 0, i32 2
  %38 = load i16, ptr %37, align 8, !tbaa !119
  switch i16 %38, label %50 [
    i16 104, label %39
    i16 118, label %44
  ]

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2, i32 9
  %41 = load i16, ptr %40, align 8, !tbaa !124
  %42 = and i16 %41, 64
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %49, label %50

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2, i32 9
  %46 = load i16, ptr %45, align 8, !tbaa !124
  %47 = and i16 %46, 32
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %39, %44
  store i16 0, ptr %35, align 2, !tbaa !123
  br label %58

50:                                               ; preds = %44, %39, %36
  %51 = icmp eq i16 %34, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %32, %50
  %53 = getelementptr inbounds %struct.v2dScrollerMove, ptr %14, i64 0, i32 2
  %54 = load i16, ptr %53, align 8, !tbaa !119
  br label %71

55:                                               ; preds = %32, %30, %50
  %56 = getelementptr inbounds %struct.v2dScrollerMove, ptr %14, i64 0, i32 2
  %57 = load i16, ptr %56, align 8, !tbaa !119
  br label %58

58:                                               ; preds = %55, %49
  %59 = phi i16 [ %57, %55 ], [ %38, %49 ]
  switch i16 %59, label %71 [
    i16 104, label %60
    i16 118, label %65
  ]

60:                                               ; preds = %58
  %61 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2, i32 13
  %62 = load i16, ptr %61, align 8, !tbaa !58
  %63 = and i16 %62, 2
  %64 = icmp eq i16 %63, 0
  br i1 %64, label %73, label %70

65:                                               ; preds = %58
  %66 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2, i32 13
  %67 = load i16, ptr %66, align 8, !tbaa !58
  %68 = and i16 %67, 4
  %69 = icmp eq i16 %68, 0
  br i1 %69, label %78, label %70

70:                                               ; preds = %65, %60
  tail call fastcc void @scroller_activate_exit(ptr noundef %0, ptr noundef nonnull %1) #14
  br label %90

71:                                               ; preds = %52, %58
  %72 = phi i16 [ %54, %52 ], [ %59, %58 ]
  switch i16 %72, label %84 [
    i16 104, label %73
    i16 118, label %78
  ]

73:                                               ; preds = %60, %71
  %74 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2, i32 9
  %75 = load i16, ptr %74, align 8, !tbaa !124
  %76 = and i16 %75, 1024
  %77 = icmp eq i16 %76, 0
  br i1 %77, label %84, label %83

78:                                               ; preds = %65, %71
  %79 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2, i32 9
  %80 = load i16, ptr %79, align 8, !tbaa !124
  %81 = and i16 %80, 512
  %82 = icmp eq i16 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %78, %73
  tail call fastcc void @scroller_activate_exit(ptr noundef %0, ptr noundef nonnull %1) #14
  br label %90

84:                                               ; preds = %78, %71, %73
  %85 = phi i16 [ 1, %73 ], [ 2, %71 ], [ 2, %78 ]
  %86 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2, i32 10
  %87 = load i16, ptr %86, align 2, !tbaa !125
  %88 = or i16 %87, %85
  store i16 %88, ptr %86, align 2, !tbaa !125
  %89 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef nonnull %1) #12
  br label %90

90:                                               ; preds = %3, %70, %83, %84
  %91 = phi i32 [ 8, %70 ], [ 8, %83 ], [ 1, %84 ], [ 8, %3 ]
  ret i32 %91
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @scroller_activate_modal(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %7 = load i16, ptr %6, align 8, !tbaa !51
  switch i16 %7, label %76 [
    i16 4, label %8
    i16 1, label %49
    i16 2, label %49
  ]

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.v2dScrollerMove, ptr %5, i64 0, i32 3
  %10 = load i16, ptr %9, align 2, !tbaa !123
  switch i16 %10, label %45 [
    i16 0, label %11
    i16 1, label %11
    i16 -1, label %26
  ]

11:                                               ; preds = %8, %8
  %12 = getelementptr inbounds %struct.v2dScrollerMove, ptr %5, i64 0, i32 2
  %13 = load i16, ptr %12, align 8, !tbaa !119
  switch i16 %13, label %45 [
    i16 104, label %14
    i16 118, label %20
  ]

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %16 = load i32, ptr %15, align 4, !tbaa !60
  %17 = getelementptr inbounds %struct.v2dScrollerMove, ptr %5, i64 0, i32 9
  %18 = load i32, ptr %17, align 8, !tbaa !126
  %19 = sub nsw i32 %16, %18
  br label %41

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %22 = load i32, ptr %21, align 8, !tbaa !57
  %23 = getelementptr inbounds %struct.v2dScrollerMove, ptr %5, i64 0, i32 10
  %24 = load i32, ptr %23, align 4, !tbaa !127
  %25 = sub nsw i32 %22, %24
  br label %41

26:                                               ; preds = %8
  %27 = getelementptr inbounds %struct.v2dScrollerMove, ptr %5, i64 0, i32 2
  %28 = load i16, ptr %27, align 8, !tbaa !119
  switch i16 %28, label %45 [
    i16 104, label %29
    i16 118, label %35
  ]

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.v2dScrollerMove, ptr %5, i64 0, i32 9
  %31 = load i32, ptr %30, align 8, !tbaa !126
  %32 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %33 = load i32, ptr %32, align 4, !tbaa !60
  %34 = sub nsw i32 %31, %33
  br label %41

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.v2dScrollerMove, ptr %5, i64 0, i32 10
  %37 = load i32, ptr %36, align 4, !tbaa !127
  %38 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %39 = load i32, ptr %38, align 8, !tbaa !57
  %40 = sub nsw i32 %37, %39
  br label %41

41:                                               ; preds = %20, %14, %29, %35
  %42 = phi i32 [ %40, %35 ], [ %34, %29 ], [ %19, %14 ], [ %25, %20 ]
  %43 = sitofp i32 %42 to float
  %44 = getelementptr inbounds %struct.v2dScrollerMove, ptr %5, i64 0, i32 6
  store float %43, ptr %44, align 4, !tbaa !122
  br label %45

45:                                               ; preds = %41, %8, %26, %11
  %46 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %47 = getelementptr inbounds %struct.v2dScrollerMove, ptr %5, i64 0, i32 9
  %48 = load <2 x i32>, ptr %46, align 4, !tbaa !50
  store <2 x i32> %48, ptr %47, align 8, !tbaa !50
  tail call fastcc void @scroller_activate_apply(ptr noundef %0, ptr noundef nonnull %1) #14
  br label %76

49:                                               ; preds = %3, %3
  %50 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %51 = load i16, ptr %50, align 2, !tbaa !62
  %52 = icmp eq i16 %51, 2
  br i1 %52, label %53, label %76

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.v2dScrollerMove, ptr %5, i64 0, i32 3
  %55 = load i16, ptr %54, align 2, !tbaa !123
  %56 = and i16 %55, -2
  %57 = icmp eq i16 %56, 2
  br i1 %57, label %58, label %67

58:                                               ; preds = %53
  switch i16 %55, label %66 [
    i16 2, label %60
    i16 3, label %59
  ]

59:                                               ; preds = %58
  br label %60

60:                                               ; preds = %58, %59
  %61 = phi float [ 0x3FE99999A0000000, %59 ], [ 0xBFE99999A0000000, %58 ]
  %62 = getelementptr inbounds %struct.v2dScrollerMove, ptr %5, i64 0, i32 7
  %63 = load float, ptr %62, align 8, !tbaa !128
  %64 = fmul float %63, %61
  %65 = getelementptr inbounds %struct.v2dScrollerMove, ptr %5, i64 0, i32 6
  store float %64, ptr %65, align 4, !tbaa !122
  br label %66

66:                                               ; preds = %60, %58
  tail call fastcc void @scroller_activate_apply(ptr noundef %0, ptr noundef nonnull %1) #14
  tail call fastcc void @scroller_activate_exit(ptr noundef %0, ptr noundef nonnull %1) #14
  br label %76

67:                                               ; preds = %53
  %68 = getelementptr inbounds %struct.v2dScrollerMove, ptr %5, i64 0, i32 9
  %69 = load i32, ptr %68, align 8, !tbaa !126
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.v2dScrollerMove, ptr %5, i64 0, i32 10
  %73 = load i32, ptr %72, align 4, !tbaa !127
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %71, %67
  tail call fastcc void @scroller_activate_exit(ptr noundef %0, ptr noundef nonnull %1) #14
  br label %76

76:                                               ; preds = %45, %3, %71, %49, %75, %66
  %77 = phi i32 [ 4, %66 ], [ 4, %75 ], [ 1, %49 ], [ 1, %71 ], [ 1, %3 ], [ 1, %45 ]
  ret i32 %77
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @scroller_activate_cancel(ptr noundef %0, ptr nocapture noundef %1) #0 {
  tail call fastcc void @scroller_activate_exit(ptr noundef %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: optsize
declare signext i16 @UI_view2d_mouse_in_scrollers(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @scroller_activate_init(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2, i16 noundef signext %3) unnamed_addr #0 {
  %5 = alloca %struct.rctf, align 4
  %6 = tail call ptr @CTX_wm_region(ptr noundef %0) #12
  %7 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #13
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !20
  %9 = tail call ptr %8(i64 noundef 48, ptr noundef nonnull @.str.55) #12
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %9, ptr %10, align 8, !tbaa !46
  store ptr %7, ptr %9, align 8, !tbaa !129
  %11 = getelementptr inbounds %struct.v2dScrollerMove, ptr %9, i64 0, i32 1
  store ptr %6, ptr %11, align 8, !tbaa !130
  %12 = getelementptr inbounds %struct.v2dScrollerMove, ptr %9, i64 0, i32 2
  store i16 %3, ptr %12, align 8, !tbaa !119
  %13 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %14 = getelementptr inbounds %struct.v2dScrollerMove, ptr %9, i64 0, i32 9
  %15 = load <2 x i32>, ptr %13, align 4, !tbaa !50
  store <2 x i32> %15, ptr %14, align 8, !tbaa !50
  %16 = tail call ptr @UI_view2d_scrollers_calc(ptr noundef %0, ptr noundef nonnull %7, i16 noundef signext -1, i16 noundef signext -1, i16 noundef signext -1, i16 noundef signext -1) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !5
  %17 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 2, i32 1
  call void @BLI_rctf_union(ptr noundef nonnull %5, ptr noundef nonnull %17) #12
  %18 = icmp eq i16 %3, 104
  %19 = getelementptr inbounds %struct.v2dScrollerMove, ptr %9, i64 0, i32 4
  %20 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 3
  %21 = getelementptr inbounds %struct.v2dScrollerMove, ptr %9, i64 0, i32 5
  br i1 %18, label %22, label %55

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 2, i32 3
  %24 = call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %23) #14
  %25 = sitofp i32 %24 to float
  %26 = call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %5) #14
  %27 = fdiv float %26, %25
  store float %27, ptr %19, align 4, !tbaa !131
  %28 = call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %17) #14
  %29 = call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %20) #14
  %30 = add nsw i32 %29, 1
  %31 = sitofp i32 %30 to float
  %32 = fdiv float %28, %31
  store float %32, ptr %21, align 8, !tbaa !132
  %33 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %34 = load i32, ptr %33, align 4, !tbaa !50
  %35 = load i32, ptr %23, align 8, !tbaa !133
  %36 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 2, i32 3, i32 1
  %37 = load i32, ptr %36, align 4, !tbaa !134
  %38 = getelementptr inbounds %struct.View2DScrollers, ptr %16, i64 0, i32 2
  %39 = load i32, ptr %38, align 4, !tbaa !135
  %40 = getelementptr inbounds %struct.View2DScrollers, ptr %16, i64 0, i32 3
  %41 = load i32, ptr %40, align 4, !tbaa !137
  %42 = call fastcc signext i16 @mouse_in_scroller_handle(i32 noundef %34, i32 noundef %35, i32 noundef %37, i32 noundef %39, i32 noundef %41) #14, !range !138
  %43 = getelementptr inbounds %struct.v2dScrollerMove, ptr %9, i64 0, i32 3
  store i16 %42, ptr %43, align 2, !tbaa !123
  %44 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 2, i32 12
  %45 = load i16, ptr %44, align 2, !tbaa !89
  %46 = and i16 %45, 256
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %22
  switch i16 %42, label %50 [
    i16 -1, label %49
    i16 1, label %49
  ]

49:                                               ; preds = %48, %48
  store i16 0, ptr %43, align 2, !tbaa !123
  br label %50

50:                                               ; preds = %48, %49, %22
  %51 = sub nsw i32 %41, %39
  %52 = sitofp i32 %51 to float
  %53 = getelementptr inbounds %struct.v2dScrollerMove, ptr %9, i64 0, i32 7
  store float %52, ptr %53, align 8, !tbaa !128
  %54 = add nsw i32 %41, %39
  br label %89

55:                                               ; preds = %4
  %56 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 2, i32 2
  %57 = call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %56) #14
  %58 = sitofp i32 %57 to float
  %59 = call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %5) #14
  %60 = fdiv float %59, %58
  store float %60, ptr %19, align 4, !tbaa !131
  %61 = call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %17) #14
  %62 = call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %20) #14
  %63 = add nsw i32 %62, 1
  %64 = sitofp i32 %63 to float
  %65 = fdiv float %61, %64
  store float %65, ptr %21, align 8, !tbaa !132
  %66 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %67 = load i32, ptr %66, align 4, !tbaa !50
  %68 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 2, i32 2, i32 2
  %69 = load i32, ptr %68, align 8, !tbaa !139
  %70 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 2, i32 2, i32 3
  %71 = load i32, ptr %70, align 4, !tbaa !140
  %72 = load i32, ptr %16, align 4, !tbaa !141
  %73 = getelementptr inbounds %struct.View2DScrollers, ptr %16, i64 0, i32 1
  %74 = load i32, ptr %73, align 4, !tbaa !142
  %75 = call fastcc signext i16 @mouse_in_scroller_handle(i32 noundef %67, i32 noundef %69, i32 noundef %71, i32 noundef %72, i32 noundef %74) #14, !range !138
  %76 = getelementptr inbounds %struct.v2dScrollerMove, ptr %9, i64 0, i32 3
  store i16 %75, ptr %76, align 2, !tbaa !123
  %77 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 2, i32 12
  %78 = load i16, ptr %77, align 2, !tbaa !89
  %79 = and i16 %78, 512
  %80 = icmp eq i16 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %55
  switch i16 %75, label %83 [
    i16 -1, label %82
    i16 1, label %82
  ]

82:                                               ; preds = %81, %81
  store i16 0, ptr %76, align 2, !tbaa !123
  br label %83

83:                                               ; preds = %81, %82, %55
  %84 = sub nsw i32 %74, %72
  %85 = sitofp i32 %84 to float
  %86 = getelementptr inbounds %struct.v2dScrollerMove, ptr %9, i64 0, i32 7
  store float %85, ptr %86, align 8, !tbaa !128
  %87 = add nsw i32 %74, %72
  %88 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 3, i32 2
  br label %89

89:                                               ; preds = %83, %50
  %90 = phi ptr [ %88, %83 ], [ %20, %50 ]
  %91 = phi i32 [ %87, %83 ], [ %54, %50 ]
  %92 = sdiv i32 %91, 2
  %93 = load i32, ptr %90, align 8, !tbaa !50
  %94 = add nsw i32 %93, %92
  %95 = getelementptr inbounds %struct.v2dScrollerMove, ptr %9, i64 0, i32 8
  store i32 %94, ptr %95, align 4, !tbaa !121
  call void @UI_view2d_scrollers_free(ptr noundef nonnull %16) #12
  call void @ED_region_tag_redraw(ptr noundef nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @scroller_activate_apply(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = load ptr, ptr %4, align 8, !tbaa !129
  %6 = getelementptr inbounds %struct.v2dScrollerMove, ptr %4, i64 0, i32 4
  %7 = load float, ptr %6, align 4, !tbaa !131
  %8 = getelementptr inbounds %struct.v2dScrollerMove, ptr %4, i64 0, i32 6
  %9 = load float, ptr %8, align 4, !tbaa !122
  %10 = fmul float %7, %9
  %11 = getelementptr inbounds %struct.v2dScrollerMove, ptr %4, i64 0, i32 5
  %12 = load float, ptr %11, align 8, !tbaa !132
  %13 = fdiv float %10, %12
  %14 = fadd float %13, 5.000000e-01
  %15 = tail call float @llvm.floor.f32(float %14)
  %16 = fmul float %12, %15
  %17 = getelementptr inbounds %struct.v2dScrollerMove, ptr %4, i64 0, i32 3
  %18 = load i16, ptr %17, align 2, !tbaa !123
  %19 = getelementptr inbounds %struct.v2dScrollerMove, ptr %4, i64 0, i32 2
  %20 = load i16, ptr %19, align 8, !tbaa !119
  switch i16 %18, label %59 [
    i16 -1, label %21
    i16 1, label %40
  ]

21:                                               ; preds = %2
  switch i16 %20, label %82 [
    i16 104, label %22
    i16 118, label %31
  ]

22:                                               ; preds = %21
  %23 = getelementptr inbounds %struct.View2D, ptr %5, i64 0, i32 12
  %24 = load i16, ptr %23, align 2, !tbaa !89
  %25 = and i16 %24, 256
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %27, label %82

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.View2D, ptr %5, i64 0, i32 1
  %29 = load float, ptr %28, align 8, !tbaa !96
  %30 = fsub float %29, %16
  store float %30, ptr %28, align 8, !tbaa !96
  br label %82

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct.View2D, ptr %5, i64 0, i32 12
  %33 = load i16, ptr %32, align 2, !tbaa !89
  %34 = and i16 %33, 512
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %36, label %82

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.View2D, ptr %5, i64 0, i32 1, i32 2
  %38 = load float, ptr %37, align 8, !tbaa !99
  %39 = fsub float %38, %16
  store float %39, ptr %37, align 8, !tbaa !99
  br label %82

40:                                               ; preds = %2
  switch i16 %20, label %82 [
    i16 104, label %41
    i16 118, label %50
  ]

41:                                               ; preds = %40
  %42 = getelementptr inbounds %struct.View2D, ptr %5, i64 0, i32 12
  %43 = load i16, ptr %42, align 2, !tbaa !89
  %44 = and i16 %43, 256
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %46, label %82

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.View2D, ptr %5, i64 0, i32 1, i32 1
  %48 = load float, ptr %47, align 4, !tbaa !94
  %49 = fadd float %16, %48
  store float %49, ptr %47, align 4, !tbaa !94
  br label %82

50:                                               ; preds = %40
  %51 = getelementptr inbounds %struct.View2D, ptr %5, i64 0, i32 12
  %52 = load i16, ptr %51, align 2, !tbaa !89
  %53 = and i16 %52, 512
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %55, label %82

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.View2D, ptr %5, i64 0, i32 1, i32 3
  %57 = load float, ptr %56, align 4, !tbaa !98
  %58 = fadd float %16, %57
  store float %58, ptr %56, align 4, !tbaa !98
  br label %82

59:                                               ; preds = %2
  switch i16 %20, label %82 [
    i16 104, label %60
    i16 118, label %71
  ]

60:                                               ; preds = %59
  %61 = getelementptr inbounds %struct.View2D, ptr %5, i64 0, i32 13
  %62 = load i16, ptr %61, align 8, !tbaa !58
  %63 = and i16 %62, 2
  %64 = icmp eq i16 %63, 0
  br i1 %64, label %65, label %82

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.View2D, ptr %5, i64 0, i32 1
  %67 = load <2 x float>, ptr %66, align 8, !tbaa !6
  %68 = insertelement <2 x float> poison, float %16, i64 0
  %69 = shufflevector <2 x float> %68, <2 x float> poison, <2 x i32> zeroinitializer
  %70 = fadd <2 x float> %69, %67
  store <2 x float> %70, ptr %66, align 8, !tbaa !6
  br label %82

71:                                               ; preds = %59
  %72 = getelementptr inbounds %struct.View2D, ptr %5, i64 0, i32 13
  %73 = load i16, ptr %72, align 8, !tbaa !58
  %74 = and i16 %73, 4
  %75 = icmp eq i16 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.View2D, ptr %5, i64 0, i32 1, i32 2
  %78 = load <2 x float>, ptr %77, align 8, !tbaa !6
  %79 = insertelement <2 x float> poison, float %16, i64 0
  %80 = shufflevector <2 x float> %79, <2 x float> poison, <2 x i32> zeroinitializer
  %81 = fadd <2 x float> %80, %78
  store <2 x float> %81, ptr %77, align 8, !tbaa !6
  br label %82

82:                                               ; preds = %59, %40, %21, %60, %65, %41, %46, %22, %27, %71, %76, %50, %55, %31, %36
  tail call void @UI_view2d_curRect_validate(ptr noundef %5) #12
  %83 = getelementptr inbounds %struct.v2dScrollerMove, ptr %4, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !130
  tail call void @ED_region_tag_redraw(ptr noundef %84) #12
  %85 = tail call ptr @CTX_wm_screen(ptr noundef %0) #12
  %86 = tail call ptr @CTX_wm_area(ptr noundef %0) #12
  tail call void @UI_view2d_sync(ptr noundef %85, ptr noundef %86, ptr noundef %5, i32 noundef 1) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @scroller_activate_exit(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !129
  %8 = getelementptr inbounds %struct.View2D, ptr %7, i64 0, i32 10
  %9 = load i16, ptr %8, align 2, !tbaa !125
  %10 = and i16 %9, -4
  store i16 %10, ptr %8, align 2, !tbaa !125
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !20
  tail call void %11(ptr noundef nonnull %4) #12
  store ptr null, ptr %3, align 8, !tbaa !46
  %12 = tail call ptr @CTX_wm_region(ptr noundef %0) #12
  tail call void @ED_region_tag_redraw(ptr noundef %12) #12
  br label %13

13:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: optsize
declare ptr @UI_view2d_scrollers_calc(ptr noundef, ptr noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_rctf_union(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc signext i16 @mouse_in_scroller_handle(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #10 {
  %6 = icmp sgt i32 %3, %1
  %7 = icmp slt i32 %4, %2
  %8 = icmp eq i32 %3, %4
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  br i1 %7, label %15, label %47

10:                                               ; preds = %5
  %11 = or i1 %6, %7
  %12 = icmp sgt i32 %4, %1
  %13 = and i1 %12, %11
  %14 = icmp slt i32 %3, %2
  br i1 %14, label %15, label %47

15:                                               ; preds = %10, %9
  %16 = phi i1 [ %6, %9 ], [ %13, %10 ]
  br i1 %16, label %17, label %47

17:                                               ; preds = %15
  %18 = sitofp i32 %0 to float
  %19 = sitofp i32 %4 to float
  %20 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !143
  %21 = sitofp i16 %20 to float
  %22 = tail call float @llvm.fmuladd.f32(float %21, float 0xBFE3333340000000, float %19)
  %23 = fcmp ole float %22, %18
  %24 = tail call float @llvm.fmuladd.f32(float %21, float 0x3FE3333340000000, float %19)
  %25 = fcmp oge float %24, %18
  %26 = select i1 %23, i1 %25, i1 false
  %27 = sitofp i32 %3 to float
  %28 = tail call float @llvm.fmuladd.f32(float %21, float 0x3FE3333340000000, float %27)
  %29 = fcmp oge float %28, %18
  %30 = tail call float @llvm.fmuladd.f32(float %21, float 0xBFE3333340000000, float %27)
  %31 = fcmp ole float %30, %18
  %32 = select i1 %29, i1 %31, i1 false
  %33 = fcmp ogt float %22, %18
  %34 = fcmp olt float %28, %18
  %35 = select i1 %33, i1 %34, i1 false
  %36 = fcmp ogt float %30, %18
  %37 = select i1 %35, i1 true, i1 %26
  %38 = xor i1 %35, true
  %39 = zext i1 %38 to i16
  %40 = select i1 %37, i1 true, i1 %32
  %41 = select i1 %40, i1 true, i1 %36
  %42 = select i1 %32, i16 -1, i16 2
  %43 = select i1 %37, i16 %39, i16 %42
  br i1 %41, label %47, label %44

44:                                               ; preds = %17
  %45 = fcmp olt float %24, %18
  %46 = select i1 %45, i16 3, i16 0
  br label %47

47:                                               ; preds = %10, %9, %17, %44, %15
  %48 = phi i16 [ 0, %15 ], [ %43, %17 ], [ %46, %44 ], [ 0, %9 ], [ 0, %10 ]
  ret i16 %48
}

; Function Attrs: optsize
declare void @UI_view2d_scrollers_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #8

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @reset_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @UI_GetStyle() #12
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #12
  %5 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2, i32 4
  %6 = tail call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %5) #14
  %7 = add nsw i32 %6, 1
  %8 = sitofp i32 %7 to float
  %9 = fptosi float %8 to i32
  %10 = tail call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %5) #14
  %11 = add nsw i32 %10, 1
  %12 = sitofp i32 %11 to float
  %13 = fptosi float %12 to i32
  %14 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2, i32 1
  %15 = load float, ptr %14, align 8, !tbaa !96
  %16 = sitofp i32 %9 to float
  %17 = fadd float %15, %16
  %18 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2, i32 1, i32 1
  store float %17, ptr %18, align 4, !tbaa !94
  %19 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2, i32 1, i32 2
  %20 = load float, ptr %19, align 8, !tbaa !99
  %21 = sitofp i32 %13 to float
  %22 = fadd float %20, %21
  %23 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2, i32 1, i32 3
  store float %22, ptr %23, align 4, !tbaa !98
  %24 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2, i32 15
  %25 = load i16, ptr %24, align 4, !tbaa !95
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %56, label %27

27:                                               ; preds = %2
  %28 = zext i16 %25 to i32
  %29 = and i32 %28, 3
  switch i32 %29, label %42 [
    i32 1, label %30
    i32 2, label %36
  ]

30:                                               ; preds = %27
  store float 0.000000e+00, ptr %18, align 4, !tbaa !94
  %31 = sub nsw i32 0, %9
  %32 = sitofp i32 %31 to float
  %33 = getelementptr inbounds %struct.uiStyle, ptr %3, i64 0, i32 7
  %34 = load float, ptr %33, align 8, !tbaa !144
  %35 = fmul float %34, %32
  br label %40

36:                                               ; preds = %27
  %37 = getelementptr inbounds %struct.uiStyle, ptr %3, i64 0, i32 7
  %38 = load float, ptr %37, align 8, !tbaa !144
  %39 = fmul float %38, %16
  store float %39, ptr %18, align 4, !tbaa !94
  br label %40

40:                                               ; preds = %30, %36
  %41 = phi float [ 0.000000e+00, %36 ], [ %35, %30 ]
  store float %41, ptr %14, align 8, !tbaa !96
  br label %42

42:                                               ; preds = %40, %27
  %43 = and i32 %28, 12
  switch i32 %43, label %56 [
    i32 4, label %44
    i32 8, label %50
  ]

44:                                               ; preds = %42
  store float 0.000000e+00, ptr %23, align 4, !tbaa !98
  %45 = sub nsw i32 0, %13
  %46 = sitofp i32 %45 to float
  %47 = getelementptr inbounds %struct.uiStyle, ptr %3, i64 0, i32 7
  %48 = load float, ptr %47, align 8, !tbaa !144
  %49 = fmul float %48, %46
  br label %54

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.uiStyle, ptr %3, i64 0, i32 7
  %52 = load float, ptr %51, align 8, !tbaa !144
  %53 = fmul float %52, %21
  store float %53, ptr %23, align 4, !tbaa !98
  br label %54

54:                                               ; preds = %50, %44
  %55 = phi float [ %49, %44 ], [ 0.000000e+00, %50 ]
  store float %55, ptr %19, align 8, !tbaa !99
  br label %56

56:                                               ; preds = %54, %42, %2
  %57 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2
  tail call void @UI_view2d_curRect_validate(ptr noundef nonnull %57) #12
  tail call void @ED_region_tag_redraw(ptr noundef nonnull %4) #12
  %58 = tail call ptr @CTX_wm_screen(ptr noundef %0) #12
  %59 = tail call ptr @CTX_wm_area(ptr noundef %0) #12
  tail call void @UI_view2d_sync(ptr noundef %58, ptr noundef %59, ptr noundef nonnull %57, i32 noundef 1) #12
  tail call void @UI_view2d_zoom_cache_reset() #12
  ret i32 4
}

; Function Attrs: optsize
declare ptr @UI_GetStyle() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #11

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind optsize }
attributes #13 = { nounwind }
attributes #14 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{i64 0, i64 4, !6, i64 4, i64 4, !6, i64 8, i64 4, !6, i64 12, i64 4, !6}
!6 = !{!7, !7, i64 0}
!7 = !{!"float", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !13, i64 32}
!11 = !{!"SmoothView2DStore", !12, i64 0, !12, i64 16, !13, i64 32}
!12 = !{!"rctf", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12}
!13 = !{!"double", !8, i64 0}
!14 = !{!15, !19, i64 144}
!15 = !{!"View2D", !12, i64 0, !12, i64 16, !16, i64 32, !16, i64 48, !16, i64 64, !8, i64 80, !8, i64 88, !7, i64 96, !7, i64 100, !18, i64 104, !18, i64 106, !18, i64 108, !18, i64 110, !18, i64 112, !18, i64 114, !18, i64 116, !18, i64 118, !18, i64 120, !18, i64 122, !18, i64 124, !18, i64 126, !19, i64 128, !17, i64 136, !17, i64 140, !19, i64 144, !19, i64 152}
!16 = !{!"rcti", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12}
!17 = !{!"int", !8, i64 0}
!18 = !{!"short", !8, i64 0}
!19 = !{!"any pointer", !8, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{i64 0, i64 4, !6, i64 4, i64 4, !6, i64 8, i64 4, !6, i64 12, i64 4, !6, i64 16, i64 4, !6, i64 20, i64 4, !6, i64 24, i64 4, !6, i64 28, i64 4, !6, i64 32, i64 8, !22}
!22 = !{!13, !13, i64 0}
!23 = !{!15, !19, i64 152}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!27, !19, i64 0}
!27 = !{!"wmOperatorType", !19, i64 0, !19, i64 8, !19, i64 16, !19, i64 24, !19, i64 32, !19, i64 40, !19, i64 48, !19, i64 56, !19, i64 64, !19, i64 72, !19, i64 80, !19, i64 88, !19, i64 96, !19, i64 104, !28, i64 112, !19, i64 128, !19, i64 136, !19, i64 144, !29, i64 152, !18, i64 184}
!28 = !{!"ListBase", !19, i64 0, !19, i64 8}
!29 = !{!"ExtensionRNA", !19, i64 0, !19, i64 8, !19, i64 16, !19, i64 24}
!30 = !{!27, !19, i64 24}
!31 = !{!27, !19, i64 8}
!32 = !{!27, !19, i64 32}
!33 = !{!27, !19, i64 48}
!34 = !{!27, !19, i64 64}
!35 = !{!27, !19, i64 56}
!36 = !{!27, !18, i64 184}
!37 = !{!27, !19, i64 88}
!38 = !{!27, !19, i64 72}
!39 = !{!40, !19, i64 176}
!40 = !{!"wmKeyMapItem", !19, i64 0, !19, i64 8, !8, i64 16, !19, i64 80, !8, i64 88, !18, i64 152, !18, i64 154, !18, i64 156, !18, i64 158, !18, i64 160, !18, i64 162, !18, i64 164, !18, i64 166, !18, i64 168, !18, i64 170, !18, i64 172, !18, i64 174, !19, i64 176}
!41 = !{!12, !7, i64 4}
!42 = !{!12, !7, i64 0}
!43 = !{!12, !7, i64 12}
!44 = !{!12, !7, i64 8}
!45 = !{i32 0, i32 2}
!46 = !{!47, !19, i64 96}
!47 = !{!"wmOperator", !19, i64 0, !19, i64 8, !8, i64 16, !19, i64 80, !19, i64 88, !19, i64 96, !19, i64 104, !19, i64 112, !19, i64 120, !28, i64 128, !19, i64 144, !19, i64 152, !18, i64 160, !8, i64 162}
!48 = !{!49, !19, i64 24}
!49 = !{!"v2dViewPanData", !19, i64 0, !19, i64 8, !19, i64 16, !19, i64 24, !7, i64 32, !7, i64 36, !17, i64 40, !17, i64 44, !17, i64 48, !17, i64 52, !17, i64 56, !18, i64 60}
!50 = !{!17, !17, i64 0}
!51 = !{!52, !18, i64 16}
!52 = !{!"wmEvent", !19, i64 0, !19, i64 8, !18, i64 16, !18, i64 18, !17, i64 20, !17, i64 24, !8, i64 28, !8, i64 36, !8, i64 42, !8, i64 43, !18, i64 44, !18, i64 46, !17, i64 48, !17, i64 52, !13, i64 56, !17, i64 64, !17, i64 68, !18, i64 72, !18, i64 74, !18, i64 76, !18, i64 78, !18, i64 80, !18, i64 82, !19, i64 88, !19, i64 96, !18, i64 104, !18, i64 106, !17, i64 108, !19, i64 112}
!53 = !{!49, !17, i64 56}
!54 = !{!47, !19, i64 112}
!55 = !{!52, !17, i64 48}
!56 = !{!52, !17, i64 52}
!57 = !{!52, !17, i64 24}
!58 = !{!15, !18, i64 112}
!59 = !{!49, !17, i64 48}
!60 = !{!52, !17, i64 20}
!61 = !{!49, !17, i64 52}
!62 = !{!52, !18, i64 18}
!63 = !{!49, !17, i64 40}
!64 = !{!49, !17, i64 44}
!65 = !{!49, !19, i64 0}
!66 = !{!49, !19, i64 8}
!67 = !{!49, !19, i64 16}
!68 = !{!49, !7, i64 32}
!69 = !{!49, !7, i64 36}
!70 = !{!16, !17, i64 4}
!71 = !{!16, !17, i64 0}
!72 = !{!16, !17, i64 12}
!73 = !{!16, !17, i64 8}
!74 = !{!75, !8, i64 72}
!75 = !{!"ScrArea", !19, i64 0, !19, i64 8, !19, i64 16, !19, i64 24, !19, i64 32, !19, i64 40, !19, i64 48, !16, i64 56, !8, i64 72, !8, i64 73, !18, i64 74, !18, i64 76, !18, i64 78, !18, i64 80, !18, i64 82, !18, i64 84, !8, i64 86, !8, i64 87, !19, i64 88, !28, i64 96, !28, i64 112, !28, i64 128, !28, i64 144}
!76 = !{!75, !19, i64 96}
!77 = !{!78, !18, i64 292}
!78 = !{!"SpaceOops", !19, i64 0, !19, i64 8, !28, i64 16, !17, i64 32, !7, i64 36, !8, i64 40, !15, i64 56, !28, i64 216, !19, i64 232, !8, i64 240, !79, i64 272, !18, i64 288, !18, i64 290, !18, i64 292, !18, i64 294, !19, i64 296}
!79 = !{!"TreeStoreElem", !18, i64 0, !18, i64 2, !18, i64 4, !18, i64 6, !19, i64 8}
!80 = !{!81, !17, i64 88}
!81 = !{!"ARegion", !19, i64 0, !19, i64 8, !15, i64 16, !16, i64 176, !16, i64 192, !18, i64 208, !18, i64 210, !18, i64 212, !18, i64 214, !18, i64 216, !18, i64 218, !7, i64 220, !18, i64 224, !18, i64 226, !18, i64 228, !18, i64 230, !18, i64 232, !18, i64 234, !18, i64 236, !18, i64 238, !19, i64 240, !28, i64 248, !28, i64 264, !28, i64 280, !28, i64 296, !28, i64 312, !28, i64 328, !28, i64 344, !19, i64 360, !19, i64 368, !19, i64 376}
!82 = !{!81, !17, i64 92}
!83 = !{!84, !17, i64 8484}
!84 = !{!"UserDef", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12, !17, i64 16, !8, i64 20, !8, i64 788, !8, i64 1556, !8, i64 2580, !8, i64 3348, !8, i64 4116, !8, i64 4884, !8, i64 5652, !8, i64 6420, !8, i64 7444, !17, i64 8468, !18, i64 8472, !18, i64 8474, !18, i64 8476, !18, i64 8478, !18, i64 8480, !18, i64 8482, !17, i64 8484, !17, i64 8488, !17, i64 8492, !18, i64 8496, !18, i64 8498, !17, i64 8500, !17, i64 8504, !17, i64 8508, !17, i64 8512, !17, i64 8516, !17, i64 8520, !17, i64 8524, !18, i64 8528, !18, i64 8530, !18, i64 8532, !18, i64 8534, !28, i64 8536, !28, i64 8552, !28, i64 8568, !28, i64 8584, !28, i64 8600, !28, i64 8616, !28, i64 8632, !8, i64 8648, !18, i64 8712, !18, i64 8714, !18, i64 8716, !18, i64 8718, !18, i64 8720, !18, i64 8722, !18, i64 8724, !18, i64 8726, !8, i64 8728, !18, i64 8896, !18, i64 8898, !18, i64 8900, !18, i64 8902, !18, i64 8904, !18, i64 8906, !18, i64 8908, !18, i64 8910, !17, i64 8912, !17, i64 8916, !18, i64 8920, !18, i64 8922, !18, i64 8924, !18, i64 8926, !18, i64 8928, !18, i64 8930, !18, i64 8932, !18, i64 8934, !18, i64 8936, !18, i64 8938, !8, i64 8940, !8, i64 8941, !8, i64 8942, !8, i64 8943, !18, i64 8944, !18, i64 8946, !18, i64 8948, !18, i64 8950, !18, i64 8952, !18, i64 8954, !7, i64 8956, !7, i64 8960, !17, i64 8964, !18, i64 8968, !18, i64 8970, !7, i64 8972, !18, i64 8976, !18, i64 8978, !18, i64 8980, !18, i64 8982, !85, i64 8984, !8, i64 9760, !8, i64 9772, !18, i64 9788, !8, i64 9790, !8, i64 9791, !8, i64 9792, !8, i64 9872, !17, i64 10896, !17, i64 10900, !7, i64 10904, !7, i64 10908, !17, i64 10912, !18, i64 10916, !18, i64 10918, !18, i64 10920, !18, i64 10922, !18, i64 10924, !18, i64 10926, !86, i64 10928}
!85 = !{!"ColorBand", !18, i64 0, !18, i64 2, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !8, i64 8}
!86 = !{!"WalkNavigation", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !18, i64 24, !8, i64 26}
!87 = !{i32 4, i32 9}
!88 = !{!8, !8, i64 0}
!89 = !{!15, !18, i64 110}
!90 = !{!91, !19, i64 0}
!91 = !{!"v2dViewZoomData", !19, i64 0, !19, i64 8, !19, i64 16, !13, i64 24, !17, i64 32, !17, i64 36, !17, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56}
!92 = !{!91, !19, i64 8}
!93 = !{!81, !18, i64 214}
!94 = !{!15, !7, i64 20}
!95 = !{!15, !18, i64 116}
!96 = !{!15, !7, i64 16}
!97 = !{!91, !7, i64 52}
!98 = !{!15, !7, i64 28}
!99 = !{!15, !7, i64 24}
!100 = !{!91, !7, i64 56}
!101 = !{!91, !17, i64 32}
!102 = !{!91, !17, i64 36}
!103 = !{!91, !17, i64 40}
!104 = !{!84, !18, i64 8498}
!105 = !{!91, !19, i64 16}
!106 = !{!91, !13, i64 24}
!107 = !{!52, !19, i64 112}
!108 = !{!81, !17, i64 176}
!109 = !{!81, !17, i64 184}
!110 = !{!15, !7, i64 100}
!111 = !{!91, !7, i64 44}
!112 = !{!91, !7, i64 48}
!113 = !{!114, !7, i64 24}
!114 = !{!"wmNDOFMotionData", !8, i64 0, !8, i64 12, !7, i64 24, !17, i64 28}
!115 = !{!84, !17, i64 8964}
!116 = !{!81, !18, i64 130}
!117 = !{!118, !13, i64 48}
!118 = !{!"wmTimer", !19, i64 0, !19, i64 8, !19, i64 16, !13, i64 24, !17, i64 32, !19, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !17, i64 88}
!119 = !{!120, !18, i64 16}
!120 = !{!"v2dScrollerMove", !19, i64 0, !19, i64 8, !18, i64 16, !18, i64 18, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !17, i64 36, !17, i64 40, !17, i64 44}
!121 = !{!120, !17, i64 36}
!122 = !{!120, !7, i64 28}
!123 = !{!120, !18, i64 18}
!124 = !{!15, !18, i64 104}
!125 = !{!15, !18, i64 106}
!126 = !{!120, !17, i64 40}
!127 = !{!120, !17, i64 44}
!128 = !{!120, !7, i64 32}
!129 = !{!120, !19, i64 0}
!130 = !{!120, !19, i64 8}
!131 = !{!120, !7, i64 20}
!132 = !{!120, !7, i64 24}
!133 = !{!15, !17, i64 48}
!134 = !{!15, !17, i64 52}
!135 = !{!136, !17, i64 8}
!136 = !{!"View2DScrollers", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12}
!137 = !{!136, !17, i64 12}
!138 = !{i16 -1, i16 4}
!139 = !{!15, !17, i64 40}
!140 = !{!15, !17, i64 44}
!141 = !{!136, !17, i64 0}
!142 = !{!136, !17, i64 4}
!143 = !{!84, !18, i64 8948}
!144 = !{!145, !7, i64 208}
!145 = !{!"uiStyle", !19, i64 0, !19, i64 8, !8, i64 16, !146, i64 80, !146, i64 112, !146, i64 144, !146, i64 176, !7, i64 208, !18, i64 212, !18, i64 214, !18, i64 216, !18, i64 218, !18, i64 220, !18, i64 222, !18, i64 224, !18, i64 226, !18, i64 228, !18, i64 230}
!146 = !{!"uiFontStyle", !18, i64 0, !18, i64 2, !18, i64 4, !8, i64 6, !18, i64 12, !18, i64 14, !18, i64 16, !18, i64 18, !18, i64 20, !18, i64 22, !7, i64 24, !7, i64 28}
