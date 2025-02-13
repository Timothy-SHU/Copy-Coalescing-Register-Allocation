; ModuleID = 'blender/source/blender/editors/space_view3d/view3d_ruler.c'
source_filename = "blender/source/blender/editors/space_view3d/view3d_ruler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.RulerInfo = type { %struct.ListBase, i32, i32, i32, i32, [3 x float], ptr, ptr, ptr, ptr }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.RulerItem = type { ptr, ptr, [3 x [3 x float]], i8, i32, i32 }
%struct.View3D = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], [4 x float], float, float, i8, [3 x i8], i32, i32, i16, i16, ptr, ptr, %struct.rctf, %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, i16, i16, float, float, float, float, [3 x float], [3 x float], i16, i16, i16, i8, i8, i8, i8, [2 x i8], %struct.ListBase, %struct.ListBase, %struct.ListBase, i8, i8, i8, [5 x i8], ptr, ptr, ptr }
%struct.RegionView3D = type { [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [6 x [4 x float]], [6 x [4 x float]], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x [4 x float]], [4 x float], float, float, float, float, [3 x float], float, i8, i8, i8, i8, i8, [3 x i8], [2 x float], i16, i16, [4 x float], i16, i16, float, [3 x float], float, [3 x float] }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
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
%struct.bGPdata = type { %struct.ID, %struct.ListBase, i32, i16, i16, ptr }
%struct.bGPDframe = type { ptr, ptr, %struct.ListBase, i32, i32 }
%struct.bGPDstroke = type { ptr, ptr, ptr, ptr, i32, i16, i16, double }
%struct.bGPDspoint = type { float, float, float, float, float }
%struct.bGPDlayer = type { ptr, ptr, %struct.ListBase, ptr, i32, i16, i16, [4 x float], [128 x i8] }

@.str = private unnamed_addr constant [17 x i8] c"Ruler/Protractor\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Interactive ruler\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"VIEW3D_OT_ruler\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"RulerInfo\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"RulerData3D\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"RulerItem\00", align 1
@U = external local_unnamed_addr global %struct.UserDef, align 8
@blf_mono_font = external local_unnamed_addr global i32, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"%.*f\C2\B0\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%.*f\00", align 1
@.str.8 = private unnamed_addr constant [115 x i8] c"Ctrl+LMB: Add, Del: Remove, Ctrl+Drag: Snap, Shift+Drag: Thickness, Ctrl+C: Copy Value, Enter: Store,  Esc: Cancel\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.9 = private unnamed_addr constant [8 x i8] c"GPencil\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"gp_stroke\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"gp_stroke_points\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @VIEW3D_OT_ruler(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.1, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @view3d_ruler_invoke, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @view3d_ruler_cancel, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @view3d_ruler_modal, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_view3d_active, ptr %7, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %8, align 8, !tbaa !48
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @view3d_ruler_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #1 !PGOFuncName !49 {
  %4 = tail call ptr @CTX_wm_window(ptr noundef %0) #11
  %5 = tail call ptr @CTX_wm_area(ptr noundef %0) #11
  %6 = tail call ptr @CTX_wm_region(ptr noundef %0) #11
  %7 = load ptr, ptr @MEM_callocN, align 8, !tbaa !50
  %8 = tail call ptr %7(i64 noundef 80, ptr noundef nonnull @.str.3) #11
  %9 = tail call fastcc zeroext i8 @view3d_ruler_from_gpencil(ptr noundef %0, ptr noundef %8) #12, !range !51
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 252248064, ptr noundef null) #11
  br label %12

12:                                               ; preds = %11, %3
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %8, ptr %13, align 8, !tbaa !52
  %14 = getelementptr inbounds %struct.RulerInfo, ptr %8, i64 0, i32 6
  store ptr %4, ptr %14, align 8, !tbaa !54
  %15 = getelementptr inbounds %struct.RulerInfo, ptr %8, i64 0, i32 7
  store ptr %5, ptr %15, align 8, !tbaa !57
  %16 = getelementptr inbounds %struct.RulerInfo, ptr %8, i64 0, i32 8
  store ptr %6, ptr %16, align 8, !tbaa !58
  %17 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 20
  %18 = load ptr, ptr %17, align 8, !tbaa !59
  %19 = tail call ptr @ED_region_draw_cb_activate(ptr noundef %18, ptr noundef nonnull @ruler_info_draw_pixel, ptr noundef %8, i32 noundef 1) #11
  %20 = getelementptr inbounds %struct.RulerInfo, ptr %8, i64 0, i32 9
  store ptr %19, ptr %20, align 8, !tbaa !65
  tail call fastcc void @view3d_ruler_header_update(ptr noundef %5) #12
  tail call void @WM_cursor_modal_set(ptr noundef %4, i32 noundef 6) #11
  %21 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #11
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @view3d_ruler_cancel(ptr nocapture readnone %0, ptr nocapture noundef %1) #1 !PGOFuncName !66 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !52
  tail call fastcc void @view3d_ruler_end(ptr noundef %4) #12
  tail call fastcc void @view3d_ruler_free(ptr noundef %4) #12
  store ptr null, ptr %3, align 8, !tbaa !52
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @view3d_ruler_modal(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) #1 !PGOFuncName !67 {
  %4 = alloca [2 x float], align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca [2 x [2 x float]], align 16
  %8 = alloca [256 x i8], align 16
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !52
  %11 = getelementptr inbounds %struct.RulerInfo, ptr %10, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !57
  %13 = getelementptr inbounds %struct.RulerInfo, ptr %10, i64 0, i32 8
  %14 = load ptr, ptr %13, align 8, !tbaa !58
  %15 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 30
  %16 = load ptr, ptr %15, align 8, !tbaa !68
  %17 = tail call ptr @CTX_wm_region(ptr noundef %0) #11
  %18 = icmp eq ptr %14, %17
  br i1 %18, label %19, label %207

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %21 = load i16, ptr %20, align 8, !tbaa !69
  switch i16 %21, label %211 [
    i16 1, label %22
    i16 99, label %152
    i16 215, label %162
    i16 212, label %162
    i16 4, label %163
    i16 218, label %203
    i16 220, label %179
    i16 224, label %180
  ]

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %24 = load i16, ptr %23, align 2, !tbaa !72
  %25 = icmp eq i16 %24, 2
  %26 = getelementptr inbounds %struct.RulerInfo, ptr %10, i64 0, i32 4
  %27 = load i32, ptr %26, align 4, !tbaa !73
  br i1 %25, label %28, label %60

28:                                               ; preds = %22
  %29 = icmp eq i32 %27, 1
  br i1 %29, label %30, label %211

30:                                               ; preds = %28
  %31 = tail call fastcc ptr @ruler_item_active_get(ptr noundef nonnull %10) #12
  %32 = icmp eq ptr %31, null
  br i1 %32, label %50, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.RulerItem, ptr %31, i64 0, i32 3
  %35 = load i8, ptr %34, align 4, !tbaa !74
  %36 = icmp eq i8 %35, 1
  br i1 %36, label %37, label %50

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.RulerItem, ptr %31, i64 0, i32 4
  %39 = load i32, ptr %38, align 8, !tbaa !76
  %40 = and i32 %39, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 3
  %44 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %45 = tail call zeroext i8 @BLI_rcti_isect_pt_v(ptr noundef nonnull %43, ptr noundef nonnull %44) #11
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, ptr %38, align 8, !tbaa !76
  %49 = and i32 %48, -2
  store i32 %49, ptr %38, align 8, !tbaa !76
  br label %50

50:                                               ; preds = %42, %47, %37, %33, %30
  %51 = phi i8 [ 0, %42 ], [ 1, %47 ], [ 0, %37 ], [ 0, %33 ], [ 0, %30 ]
  %52 = getelementptr inbounds %struct.RulerInfo, ptr %10, i64 0, i32 3
  %53 = load i32, ptr %52, align 8, !tbaa !77
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %50
  %57 = and i32 %53, -2
  store i32 %57, ptr %52, align 8, !tbaa !77
  br label %58

58:                                               ; preds = %56, %50
  %59 = phi i8 [ 1, %56 ], [ %51, %50 ]
  store i32 0, ptr %26, align 4, !tbaa !73
  br label %199

60:                                               ; preds = %22
  %61 = icmp eq i32 %27, 0
  br i1 %61, label %62, label %211

62:                                               ; preds = %60
  %63 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 18
  %64 = load i16, ptr %63, align 2, !tbaa !78
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %10) #12, !range !51
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %102, label %69

69:                                               ; preds = %66, %62
  %70 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #11
  %71 = getelementptr inbounds %struct.View3D, ptr %70, i64 0, i32 24
  %72 = load i16, ptr %71, align 8, !tbaa !79
  %73 = icmp sgt i16 %72, 2
  %74 = tail call fastcc ptr @ruler_item_active_get(ptr noundef nonnull %10) #12
  store i32 1, ptr %26, align 4, !tbaa !73
  %75 = tail call fastcc ptr @ruler_item_add(ptr noundef nonnull %10) #12
  tail call fastcc void @ruler_item_active_set(ptr noundef nonnull %10, ptr noundef %75) #12
  br i1 %73, label %76, label %84

76:                                               ; preds = %69
  %77 = getelementptr inbounds %struct.RulerItem, ptr %75, i64 0, i32 3
  store i8 0, ptr %77, align 4, !tbaa !74
  %78 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %79 = tail call fastcc zeroext i8 @view3d_ruler_item_mousemove(ptr noundef %0, ptr noundef nonnull %10, ptr noundef nonnull %78, i8 noundef zeroext 0, i8 noundef zeroext 1) #12, !range !51
  %80 = getelementptr inbounds %struct.RulerInfo, ptr %10, i64 0, i32 5
  %81 = load i8, ptr %77, align 4, !tbaa !74
  %82 = zext i8 %81 to i64
  %83 = getelementptr inbounds %struct.RulerItem, ptr %75, i64 0, i32 2, i64 %82
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %80, ptr noundef nonnull %83) #12
  br label %98

84:                                               ; preds = %69
  %85 = icmp eq ptr %74, null
  %86 = getelementptr inbounds %struct.RulerInfo, ptr %10, i64 0, i32 5
  br i1 %85, label %92, label %87

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.RulerItem, ptr %74, i64 0, i32 3
  %89 = load i8, ptr %88, align 4, !tbaa !74
  %90 = zext i8 %89 to i64
  %91 = getelementptr inbounds %struct.RulerItem, ptr %74, i64 0, i32 2, i64 %90
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %86, ptr noundef nonnull %91) #12
  br label %94

92:                                               ; preds = %84
  %93 = getelementptr inbounds %struct.RegionView3D, ptr %16, i64 0, i32 22
  tail call fastcc void @negate_v3_v3(ptr noundef nonnull %86, ptr noundef nonnull %93) #12
  br label %94

94:                                               ; preds = %92, %87
  %95 = getelementptr inbounds %struct.RulerItem, ptr %75, i64 0, i32 2
  %96 = getelementptr inbounds %struct.RulerInfo, ptr %10, i64 0, i32 5
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %95, ptr noundef nonnull %96) #12
  %97 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  tail call fastcc void @view3d_ruler_item_project(ptr noundef nonnull %10, ptr noundef nonnull %95, ptr noundef nonnull %97) #12
  br label %98

98:                                               ; preds = %94, %76
  %99 = getelementptr inbounds %struct.RulerItem, ptr %75, i64 0, i32 2
  %100 = getelementptr inbounds %struct.RulerItem, ptr %75, i64 0, i32 2, i64 2
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %100, ptr noundef nonnull %99) #12
  %101 = getelementptr inbounds %struct.RulerItem, ptr %75, i64 0, i32 3
  store i8 2, ptr %101, align 4, !tbaa !74
  br label %203

102:                                              ; preds = %66
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  %103 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %104 = load <2 x i32>, ptr %103, align 4, !tbaa !81
  %105 = sitofp <2 x i32> %104 to <2 x float>
  store <2 x float> %105, ptr %4, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  %106 = call fastcc zeroext i8 @view3d_ruler_pick(ptr noundef nonnull %10, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #12, !range !51
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %149, label %108

108:                                              ; preds = %102
  %109 = load i32, ptr %6, align 4, !tbaa !81
  %110 = icmp eq i32 %109, -1
  %111 = load ptr, ptr %5, align 8, !tbaa !50
  br i1 %110, label %112, label %142

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.RulerItem, ptr %111, i64 0, i32 4
  %114 = load i32, ptr %113, align 8, !tbaa !76
  %115 = and i32 %114, 1
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %149

117:                                              ; preds = %112
  call fastcc void @ruler_item_active_set(ptr noundef nonnull %10, ptr noundef nonnull %111) #12
  %118 = load i32, ptr %113, align 8, !tbaa !76
  %119 = or i32 %118, 1
  store i32 %119, ptr %113, align 8, !tbaa !76
  %120 = getelementptr inbounds %struct.RulerItem, ptr %111, i64 0, i32 3
  store i8 1, ptr %120, align 4, !tbaa !74
  store i32 1, ptr %26, align 4, !tbaa !73
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #13
  %121 = getelementptr inbounds %struct.RulerItem, ptr %111, i64 0, i32 2
  %122 = call i32 @ED_view3d_project_float_global(ptr noundef nonnull %14, ptr noundef nonnull %121, ptr noundef nonnull %7, i32 noundef 0) #11
  %123 = getelementptr inbounds %struct.RulerItem, ptr %111, i64 0, i32 2, i64 2
  %124 = getelementptr inbounds [2 x [2 x float]], ptr %7, i64 0, i64 1
  %125 = call i32 @ED_view3d_project_float_global(ptr noundef nonnull %14, ptr noundef nonnull %123, ptr noundef nonnull %124, i32 noundef 0) #11
  %126 = call float @line_point_factor_v2(ptr noundef nonnull %4, ptr noundef nonnull %7, ptr noundef nonnull %124) #11
  %127 = fcmp olt float %126, 0.000000e+00
  br i1 %127, label %131, label %128

128:                                              ; preds = %117
  %129 = fcmp ogt float %126, 1.000000e+00
  br i1 %129, label %130, label %131

130:                                              ; preds = %128
  br label %131

131:                                              ; preds = %117, %128, %130
  %132 = phi float [ 1.000000e+00, %130 ], [ %126, %128 ], [ 0.000000e+00, %117 ]
  %133 = getelementptr inbounds %struct.RulerItem, ptr %111, i64 0, i32 2, i64 1
  call void @interp_v3_v3v3(ptr noundef nonnull %133, ptr noundef nonnull %121, ptr noundef nonnull %123, float noundef %132) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #13
  %134 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 17
  %135 = load i16, ptr %134, align 8, !tbaa !83
  %136 = icmp ne i16 %135, 0
  %137 = zext i1 %136 to i8
  %138 = load i16, ptr %63, align 2, !tbaa !78
  %139 = icmp ne i16 %138, 0
  %140 = zext i1 %139 to i8
  %141 = call fastcc zeroext i8 @view3d_ruler_item_mousemove(ptr noundef %0, ptr noundef nonnull %10, ptr noundef nonnull %103, i8 noundef zeroext %137, i8 noundef zeroext %140) #12, !range !51
  br label %149

142:                                              ; preds = %108
  call fastcc void @ruler_item_active_set(ptr noundef nonnull %10, ptr noundef %111) #12
  %143 = trunc i32 %109 to i8
  %144 = getelementptr inbounds %struct.RulerItem, ptr %111, i64 0, i32 3
  store i8 %143, ptr %144, align 4, !tbaa !74
  store i32 1, ptr %26, align 4, !tbaa !73
  %145 = getelementptr inbounds %struct.RulerInfo, ptr %10, i64 0, i32 5
  %146 = and i32 %109, 255
  %147 = zext nneg i32 %146 to i64
  %148 = getelementptr inbounds %struct.RulerItem, ptr %111, i64 0, i32 2, i64 %147
  call fastcc void @copy_v3_v3(ptr noundef nonnull %145, ptr noundef nonnull %148) #12
  br label %149

149:                                              ; preds = %102, %142, %131, %112
  %150 = phi i32 [ 1, %131 ], [ 1, %112 ], [ 1, %142 ], [ 8, %102 ]
  %151 = phi i8 [ 1, %131 ], [ 0, %112 ], [ 1, %142 ], [ 0, %102 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  br label %199

152:                                              ; preds = %19
  %153 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 18
  %154 = load i16, ptr %153, align 2, !tbaa !78
  %155 = icmp eq i16 %154, 0
  br i1 %155, label %211, label %156

156:                                              ; preds = %152
  %157 = tail call fastcc ptr @ruler_item_active_get(ptr noundef nonnull %10) #12
  %158 = icmp eq ptr %157, null
  br i1 %158, label %211, label %159

159:                                              ; preds = %156
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %8) #13
  %160 = tail call ptr @CTX_data_scene(ptr noundef %0) #11
  %161 = getelementptr inbounds %struct.Scene, ptr %160, i64 0, i32 38
  call fastcc void @ruler_item_as_string(ptr noundef nonnull %157, ptr noundef nonnull %161, ptr noundef nonnull %8, i32 noundef 8) #12
  call void @WM_clipboard_text_set(ptr noundef nonnull %8, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %8) #13
  br label %211

162:                                              ; preds = %19, %19
  tail call void @WM_event_add_mousemove(ptr noundef %0) #11
  br label %211

163:                                              ; preds = %19
  %164 = getelementptr inbounds %struct.RulerInfo, ptr %10, i64 0, i32 4
  %165 = load i32, ptr %164, align 4, !tbaa !73
  %166 = icmp eq i32 %165, 1
  br i1 %166, label %167, label %211

167:                                              ; preds = %163
  %168 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %169 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 17
  %170 = load i16, ptr %169, align 8, !tbaa !83
  %171 = icmp ne i16 %170, 0
  %172 = zext i1 %171 to i8
  %173 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 18
  %174 = load i16, ptr %173, align 2, !tbaa !78
  %175 = icmp ne i16 %174, 0
  %176 = zext i1 %175 to i8
  %177 = tail call fastcc zeroext i8 @view3d_ruler_item_mousemove(ptr noundef %0, ptr noundef nonnull %10, ptr noundef nonnull %168, i8 noundef zeroext %172, i8 noundef zeroext %176) #12, !range !51
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %211, label %203

179:                                              ; preds = %19
  tail call fastcc void @view3d_ruler_to_gpencil(ptr noundef %0, ptr noundef nonnull %10) #12
  br label %203

180:                                              ; preds = %19
  %181 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %182 = load i16, ptr %181, align 2, !tbaa !72
  %183 = icmp eq i16 %182, 1
  br i1 %183, label %184, label %211

184:                                              ; preds = %180
  %185 = getelementptr inbounds %struct.RulerInfo, ptr %10, i64 0, i32 4
  %186 = load i32, ptr %185, align 4, !tbaa !73
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %211

188:                                              ; preds = %184
  %189 = tail call fastcc ptr @ruler_item_active_get(ptr noundef nonnull %10) #12
  %190 = icmp eq ptr %189, null
  br i1 %190, label %211, label %191

191:                                              ; preds = %188
  %192 = getelementptr inbounds %struct.RulerItem, ptr %189, i64 0, i32 1
  %193 = load ptr, ptr %192, align 8, !tbaa !84
  %194 = icmp eq ptr %193, null
  br i1 %194, label %195, label %197

195:                                              ; preds = %191
  %196 = load ptr, ptr %189, align 8, !tbaa !85
  br label %197

197:                                              ; preds = %191, %195
  %198 = phi ptr [ %196, %195 ], [ %193, %191 ]
  tail call fastcc void @ruler_item_remove(ptr noundef nonnull %10, ptr noundef nonnull %189) #12
  tail call fastcc void @ruler_item_active_set(ptr noundef nonnull %10, ptr noundef %198) #12
  br label %203

199:                                              ; preds = %58, %149
  %200 = phi i32 [ 1, %58 ], [ %150, %149 ]
  %201 = phi i8 [ %59, %58 ], [ %151, %149 ]
  %202 = icmp eq i8 %201, 0
  br i1 %202, label %205, label %203

203:                                              ; preds = %197, %19, %167, %98, %179, %199
  %204 = phi i32 [ %200, %199 ], [ 1, %197 ], [ 2, %19 ], [ 1, %167 ], [ 1, %98 ], [ 4, %179 ]
  call fastcc void @view3d_ruler_header_update(ptr noundef %12) #12
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 252248064, ptr noundef null) #11
  br label %205

205:                                              ; preds = %199, %203
  %206 = phi i32 [ %204, %203 ], [ %200, %199 ]
  switch i32 %206, label %211 [
    i32 4, label %207
    i32 2, label %207
  ]

207:                                              ; preds = %3, %205, %205
  %208 = phi i32 [ %206, %205 ], [ %206, %205 ], [ 4, %3 ]
  %209 = getelementptr inbounds %struct.RulerInfo, ptr %10, i64 0, i32 6
  %210 = load ptr, ptr %209, align 8, !tbaa !54
  call void @WM_cursor_modal_restore(ptr noundef %210) #11
  call fastcc void @view3d_ruler_end(ptr noundef nonnull %10) #12
  call fastcc void @view3d_ruler_free(ptr noundef nonnull %10) #12
  store ptr null, ptr %9, align 8, !tbaa !52
  call void @ED_area_headerprint(ptr noundef %12, ptr noundef null) #11
  br label %211

211:                                              ; preds = %167, %19, %184, %180, %163, %162, %152, %28, %60, %159, %156, %188, %205, %207
  %212 = phi i32 [ %206, %205 ], [ %208, %207 ], [ 1, %167 ], [ 8, %19 ], [ 1, %184 ], [ 1, %180 ], [ 1, %163 ], [ 1, %162 ], [ 1, %152 ], [ 1, %28 ], [ 1, %60 ], [ 1, %159 ], [ 1, %156 ], [ 1, %188 ]
  ret i32 %212
}

; Function Attrs: optsize
declare i32 @ED_operator_view3d_active(ptr noundef) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @view3d_ruler_from_gpencil(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !PGOFuncName !86 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #11
  %4 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 39
  %5 = load ptr, ptr %4, align 8, !tbaa !87
  %6 = icmp eq ptr %5, null
  br i1 %6, label %52, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.bGPdata, ptr %5, i64 0, i32 1
  %9 = tail call ptr @BLI_findstring(ptr noundef nonnull %8, ptr noundef nonnull @.str.4, i32 noundef 64) #11
  %10 = icmp eq ptr %9, null
  br i1 %10, label %52, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !106
  %14 = tail call ptr @gpencil_layer_getframe(ptr noundef nonnull %9, i32 noundef %13, i16 noundef signext 0) #11
  %15 = icmp eq ptr %14, null
  br i1 %15, label %52, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.bGPDframe, ptr %14, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !50
  %19 = icmp eq ptr %18, null
  br i1 %19, label %52, label %20

20:                                               ; preds = %16, %48
  %21 = phi ptr [ %50, %48 ], [ %18, %16 ]
  %22 = phi i8 [ %49, %48 ], [ 0, %16 ]
  %23 = getelementptr inbounds %struct.bGPDstroke, ptr %21, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !107
  %25 = getelementptr inbounds %struct.bGPDstroke, ptr %21, i64 0, i32 4
  %26 = load i32, ptr %25, align 8, !tbaa !109
  switch i32 %26, label %48 [
    i32 3, label %27
    i32 2, label %40
  ]

27:                                               ; preds = %20
  %28 = tail call fastcc ptr @ruler_item_add(ptr noundef %1) #12
  br label %29

29:                                               ; preds = %27, %29
  %30 = phi i64 [ 0, %27 ], [ %34, %29 ]
  %31 = phi ptr [ %24, %27 ], [ %33, %29 ]
  %32 = getelementptr inbounds %struct.RulerItem, ptr %28, i64 0, i32 2, i64 %30
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %32, ptr noundef %31) #12
  %33 = getelementptr inbounds %struct.bGPDspoint, ptr %31, i64 1
  %34 = add nuw nsw i64 %30, 1
  %35 = icmp eq i64 %34, 3
  br i1 %35, label %36, label %29, !llvm.loop !110

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.RulerItem, ptr %28, i64 0, i32 4
  %38 = load i32, ptr %37, align 8, !tbaa !76
  %39 = or i32 %38, 1
  store i32 %39, ptr %37, align 8, !tbaa !76
  br label %48

40:                                               ; preds = %20
  %41 = tail call fastcc ptr @ruler_item_add(ptr noundef %1) #12
  br label %42

42:                                               ; preds = %40, %42
  %43 = phi i1 [ true, %40 ], [ false, %42 ]
  %44 = phi i64 [ 0, %40 ], [ 2, %42 ]
  %45 = phi ptr [ %24, %40 ], [ %47, %42 ]
  %46 = getelementptr inbounds %struct.RulerItem, ptr %41, i64 0, i32 2, i64 %44
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %46, ptr noundef %45) #12
  %47 = getelementptr inbounds %struct.bGPDspoint, ptr %45, i64 1
  br i1 %43, label %42, label %48, !llvm.loop !112

48:                                               ; preds = %42, %20, %36
  %49 = phi i8 [ 1, %36 ], [ %22, %20 ], [ 1, %42 ]
  %50 = load ptr, ptr %21, align 8, !tbaa !50
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %20, !llvm.loop !113

52:                                               ; preds = %48, %16, %7, %11, %2
  %53 = phi i8 [ 0, %2 ], [ 0, %7 ], [ 0, %11 ], [ 0, %16 ], [ %49, %48 ]
  ret i8 %53
}

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_region_draw_cb_activate(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ruler_info_draw_pixel(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 !PGOFuncName !114 {
  %4 = alloca [4 x i8], align 4
  %5 = alloca [3 x i8], align 1
  %6 = alloca [3 x i8], align 1
  %7 = alloca [2 x float], align 4
  %8 = alloca [3 x [2 x float]], align 16
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [25 x [2 x float]], align 16
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca [4 x float], align 16
  %15 = alloca [3 x float], align 4
  %16 = alloca [256 x i8], align 16
  %17 = alloca [2 x float], align 4
  %18 = alloca [2 x float], align 4
  %19 = alloca [2 x float], align 4
  %20 = alloca [2 x float], align 4
  %21 = alloca [256 x i8], align 16
  %22 = alloca [2 x float], align 8
  %23 = alloca [2 x float], align 8
  %24 = alloca [2 x float], align 4
  %25 = alloca [2 x float], align 4
  %26 = alloca [3 x float], align 4
  %27 = tail call ptr @CTX_data_scene(ptr noundef %0) #11
  %28 = getelementptr inbounds %struct.Scene, ptr %27, i64 0, i32 38
  %29 = getelementptr inbounds %struct.RulerInfo, ptr %2, i64 0, i32 8
  %30 = load ptr, ptr %29, align 8, !tbaa !58
  %31 = getelementptr inbounds %struct.ARegion, ptr %30, i64 0, i32 30
  %32 = load ptr, ptr %31, align 8, !tbaa !68
  %33 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !115
  %34 = fmul float %33, 4.000000e+00
  %35 = fmul float %33, 6.400000e+01
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 -2130706433, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %6) #13
  tail call void @glEnable(i32 noundef 2848) #11
  %36 = load i32, ptr @blf_mono_font, align 4, !tbaa !81
  tail call void @BLF_enable(i32 noundef %36, i32 noundef 1) #11
  %37 = load i32, ptr @blf_mono_font, align 4, !tbaa !81
  %38 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !115
  %39 = fmul float %38, 1.400000e+01
  %40 = fptosi float %39 to i32
  %41 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !119
  tail call void @BLF_size(i32 noundef %37, i32 noundef %40, i32 noundef %41) #11
  %42 = load i32, ptr @blf_mono_font, align 4, !tbaa !81
  tail call void @BLF_rotation(i32 noundef %42, float noundef 0.000000e+00) #11
  call void @UI_GetThemeColor3ubv(i32 noundef 3, ptr noundef nonnull %5) #11
  call void @UI_GetThemeColor3ubv(i32 noundef 25, ptr noundef nonnull %6) #11
  %43 = load ptr, ptr %2, align 8, !tbaa !50
  %44 = icmp eq ptr %43, null
  br i1 %44, label %175, label %45

45:                                               ; preds = %3
  %46 = getelementptr inbounds %struct.RulerInfo, ptr %2, i64 0, i32 1
  %47 = getelementptr inbounds [3 x [2 x float]], ptr %8, i64 0, i64 1
  %48 = getelementptr inbounds [3 x [2 x float]], ptr %8, i64 0, i64 2
  %49 = getelementptr inbounds [2 x float], ptr %17, i64 0, i64 1
  %50 = getelementptr inbounds [3 x [2 x float]], ptr %8, i64 0, i64 1, i64 1
  %51 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  %52 = getelementptr inbounds [2 x float], ptr %18, i64 0, i64 1
  %53 = getelementptr inbounds [2 x float], ptr %19, i64 0, i64 1
  %54 = getelementptr inbounds [2 x float], ptr %22, i64 0, i64 1
  %55 = getelementptr inbounds [2 x float], ptr %23, i64 0, i64 1
  %56 = getelementptr inbounds float, ptr %24, i64 1
  %57 = getelementptr inbounds [3 x [2 x float]], ptr %8, i64 0, i64 2
  %58 = getelementptr inbounds [3 x [2 x float]], ptr %8, i64 0, i64 2
  br label %59

59:                                               ; preds = %45, %171
  %60 = phi ptr [ %43, %45 ], [ %173, %171 ]
  %61 = phi i32 [ 0, %45 ], [ %172, %171 ]
  %62 = load i32, ptr %46, align 8, !tbaa !120
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #13
  br label %63

63:                                               ; preds = %59, %63
  %64 = phi i64 [ 0, %59 ], [ %68, %63 ]
  %65 = getelementptr inbounds %struct.RulerItem, ptr %60, i64 0, i32 2, i64 %64
  %66 = getelementptr inbounds [3 x [2 x float]], ptr %8, i64 0, i64 %64
  %67 = call i32 @ED_view3d_project_float_global(ptr noundef %1, ptr noundef nonnull %65, ptr noundef nonnull %66, i32 noundef 0) #11
  %68 = add nuw nsw i64 %64, 1
  %69 = icmp eq i64 %68, 3
  br i1 %69, label %70, label %63, !llvm.loop !121

70:                                               ; preds = %63
  %71 = icmp eq i32 %61, %62
  call void @glEnable(i32 noundef 3042) #11
  %72 = select i1 %71, i32 16777215, i32 0
  call void @cpack(i32 noundef %72) #11
  %73 = getelementptr inbounds %struct.RulerItem, ptr %60, i64 0, i32 4
  %74 = load i32, ptr %73, align 8, !tbaa !76
  %75 = and i32 %74, 1
  %76 = icmp eq i32 %75, 0
  call void @glBegin(i32 noundef 3) #11
  br i1 %76, label %148, label %77

77:                                               ; preds = %70, %77
  %78 = phi i64 [ %80, %77 ], [ 0, %70 ]
  %79 = getelementptr inbounds [3 x [2 x float]], ptr %8, i64 0, i64 %78
  call void @glVertex2fv(ptr noundef nonnull %79) #11
  %80 = add nuw nsw i64 %78, 1
  %81 = icmp eq i64 %80, 3
  br i1 %81, label %82, label %77, !llvm.loop !122

82:                                               ; preds = %77
  call void @glEnd() #11
  call void @cpack(i32 noundef 11184810) #11
  call void @setlinestyle(i32 noundef 3) #11
  call void @glBegin(i32 noundef 3) #11
  br label %83

83:                                               ; preds = %82, %83
  %84 = phi i64 [ 0, %82 ], [ %86, %83 ]
  %85 = getelementptr inbounds [3 x [2 x float]], ptr %8, i64 0, i64 %84
  call void @glVertex2fv(ptr noundef nonnull %85) #11
  %86 = add nuw nsw i64 %84, 1
  %87 = icmp eq i64 %86, 3
  br i1 %87, label %88, label %83, !llvm.loop !123

88:                                               ; preds = %83
  call void @glEnd() #11
  call void @setlinestyle(i32 noundef 0) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %11) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #13
  %89 = getelementptr inbounds %struct.RulerItem, ptr %60, i64 0, i32 2
  %90 = getelementptr inbounds %struct.RulerItem, ptr %60, i64 0, i32 2, i64 1
  %91 = call float @ED_view3d_pixel_size(ptr noundef %32, ptr noundef nonnull %90) #11
  %92 = call fastcc float @len_v2v2(ptr noundef nonnull %8, ptr noundef nonnull %47) #12
  %93 = fmul float %92, 5.000000e-01
  %94 = call fastcc float @len_v2v2(ptr noundef nonnull %48, ptr noundef nonnull %47) #12
  %95 = fmul float %94, 5.000000e-01
  %96 = call fastcc float @min_fff(float noundef %35, float noundef %93, float noundef %95) #12
  %97 = fmul float %91, %96
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %12, ptr noundef nonnull %89, ptr noundef nonnull %90) #12
  %98 = getelementptr inbounds %struct.RulerItem, ptr %60, i64 0, i32 2, i64 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %13, ptr noundef nonnull %98, ptr noundef nonnull %90) #12
  call fastcc void @normalize_v3(ptr noundef nonnull %12) #12
  call fastcc void @normalize_v3(ptr noundef nonnull %13) #12
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %15, ptr noundef nonnull %12, ptr noundef nonnull %13) #12
  %99 = call float @angle_normalized_v3v3(ptr noundef nonnull %12, ptr noundef nonnull %13) #11
  %100 = fdiv float %99, 2.400000e+01
  call void @axis_angle_to_quat(ptr noundef nonnull %14, ptr noundef nonnull %15, float noundef %100) #11
  call fastcc void @copy_v3_v3(ptr noundef nonnull %9, ptr noundef nonnull %12) #12
  call void @glColor3ubv(ptr noundef nonnull %6) #11
  br label %101

101:                                              ; preds = %88, %101
  %102 = phi i64 [ 0, %88 ], [ %105, %101 ]
  call fastcc void @madd_v3_v3v3fl(ptr noundef nonnull %10, ptr noundef nonnull %90, ptr noundef nonnull %9, float noundef %97) #12
  %103 = getelementptr inbounds [25 x [2 x float]], ptr %11, i64 0, i64 %102
  %104 = call i32 @ED_view3d_project_float_global(ptr noundef %1, ptr noundef nonnull %10, ptr noundef nonnull %103, i32 noundef 0) #11
  call void @mul_qt_v3(ptr noundef nonnull %14, ptr noundef nonnull %9) #11
  %105 = add nuw nsw i64 %102, 1
  %106 = icmp eq i64 %105, 25
  br i1 %106, label %107, label %101, !llvm.loop !124

107:                                              ; preds = %101
  call void @glEnableClientState(i32 noundef 32884) #11
  call void @glVertexPointer(i32 noundef 2, i32 noundef 5126, i32 noundef 0, ptr noundef nonnull %11) #11
  call void @glDrawArrays(i32 noundef 3, i32 noundef 0, i32 noundef 25) #11
  call void @glDisableClientState(i32 noundef 32884) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %16) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #13
  call fastcc void @ruler_item_as_string(ptr noundef nonnull %60, ptr noundef nonnull %28, ptr noundef nonnull %16, i32 noundef 2) #12
  %108 = load i32, ptr @blf_mono_font, align 4, !tbaa !81
  call void @BLF_width_and_height(i32 noundef %108, ptr noundef nonnull %16, i64 noundef 256, ptr noundef nonnull %17, ptr noundef nonnull %49) #11
  %109 = load float, ptr %47, align 8, !tbaa !82
  %110 = fadd float %109, 8.000000e+00
  %111 = load float, ptr %50, align 4, !tbaa !82
  %112 = load float, ptr %49, align 4, !tbaa !82
  %113 = fmul float %112, 5.000000e-01
  %114 = fsub float %111, %113
  call void @glColor4ubv(ptr noundef nonnull %4) #11
  call void @uiSetRoundBox(i32 noundef 15) #11
  %115 = fsub float %110, %34
  %116 = fsub float %114, %34
  %117 = fadd float %34, %110
  %118 = load float, ptr %17, align 4, !tbaa !82
  %119 = fadd float %117, %118
  %120 = fadd float %34, %114
  %121 = load float, ptr %49, align 4, !tbaa !82
  %122 = fadd float %120, %121
  call void @uiRoundBox(float noundef %115, float noundef %116, float noundef %119, float noundef %122, float noundef %34) #11
  call void @glColor3ubv(ptr noundef nonnull %5) #11
  %123 = load i32, ptr @blf_mono_font, align 4, !tbaa !81
  call void @BLF_position(i32 noundef %123, float noundef %110, float noundef %114, float noundef 0.000000e+00) #11
  %124 = load i32, ptr @blf_mono_font, align 4, !tbaa !81
  call void @BLF_rotation(i32 noundef %124, float noundef 0.000000e+00) #11
  %125 = load i32, ptr @blf_mono_font, align 4, !tbaa !81
  call void @BLF_draw(i32 noundef %125, ptr noundef nonnull %16, i64 noundef 256) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #13
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %16) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %20) #13
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %47) #12
  %126 = load float, ptr %51, align 4, !tbaa !82
  %127 = fneg float %126
  store float %127, ptr %18, align 4, !tbaa !82
  %128 = load float, ptr %7, align 4, !tbaa !82
  store float %128, ptr %52, align 4, !tbaa !82
  call fastcc void @normalize_v2(ptr noundef nonnull %18) #12
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %7, ptr noundef nonnull %47, ptr noundef nonnull %48) #12
  %129 = load float, ptr %51, align 4, !tbaa !82
  %130 = fneg float %129
  store float %130, ptr %19, align 4, !tbaa !82
  %131 = load float, ptr %7, align 4, !tbaa !82
  store float %131, ptr %53, align 4, !tbaa !82
  call fastcc void @normalize_v2(ptr noundef nonnull %19) #12
  call void @glEnable(i32 noundef 3042) #11
  call void @glColor3ubv(ptr noundef nonnull %6) #11
  call void @glBegin(i32 noundef 1) #11
  call fastcc void @madd_v2_v2v2fl(ptr noundef nonnull %20, ptr noundef nonnull %8, ptr noundef nonnull %18, float noundef 4.000000e+00) #12
  call void @glVertex2fv(ptr noundef nonnull %20) #11
  call fastcc void @madd_v2_v2v2fl(ptr noundef nonnull %20, ptr noundef nonnull %8, ptr noundef nonnull %18, float noundef -4.000000e+00) #12
  call void @glVertex2fv(ptr noundef nonnull %20) #11
  call fastcc void @madd_v2_v2v2fl(ptr noundef nonnull %20, ptr noundef nonnull %48, ptr noundef nonnull %19, float noundef 4.000000e+00) #12
  call void @glVertex2fv(ptr noundef nonnull %20) #11
  call fastcc void @madd_v2_v2v2fl(ptr noundef nonnull %20, ptr noundef nonnull %48, ptr noundef nonnull %19, float noundef -4.000000e+00) #12
  call void @glVertex2fv(ptr noundef nonnull %20) #11
  %132 = load float, ptr %47, align 8, !tbaa !82
  %133 = fadd float %132, -4.000000e+00
  %134 = load float, ptr %50, align 4, !tbaa !82
  %135 = fadd float %134, -4.000000e+00
  call void @glVertex2f(float noundef %133, float noundef %135) #11
  %136 = load float, ptr %47, align 8, !tbaa !82
  %137 = fadd float %136, 4.000000e+00
  %138 = load float, ptr %50, align 4, !tbaa !82
  %139 = fadd float %138, 4.000000e+00
  call void @glVertex2f(float noundef %137, float noundef %139) #11
  %140 = load float, ptr %47, align 8, !tbaa !82
  %141 = fadd float %140, -4.000000e+00
  %142 = load float, ptr %50, align 4, !tbaa !82
  %143 = fadd float %142, 4.000000e+00
  call void @glVertex2f(float noundef %141, float noundef %143) #11
  %144 = load float, ptr %47, align 8, !tbaa !82
  %145 = fadd float %144, 4.000000e+00
  %146 = load float, ptr %50, align 4, !tbaa !82
  %147 = fadd float %146, -4.000000e+00
  call void @glVertex2f(float noundef %145, float noundef %147) #11
  call void @glEnd() #11
  call void @glDisable(i32 noundef 3042) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #13
  br label %171

148:                                              ; preds = %70
  call void @glVertex2fv(ptr noundef nonnull %8) #11
  call void @glVertex2fv(ptr noundef nonnull %57) #11
  call void @glEnd() #11
  call void @cpack(i32 noundef 11184810) #11
  call void @setlinestyle(i32 noundef 3) #11
  call void @glBegin(i32 noundef 3) #11
  call void @glVertex2fv(ptr noundef nonnull %8) #11
  call void @glVertex2fv(ptr noundef nonnull %58) #11
  call void @glEnd() #11
  call void @setlinestyle(i32 noundef 0) #11
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %48) #12
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %21) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %22) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %23) #13
  call fastcc void @ruler_item_as_string(ptr noundef nonnull %60, ptr noundef nonnull %28, ptr noundef nonnull %21, i32 noundef 6) #12
  %149 = load i32, ptr @blf_mono_font, align 4, !tbaa !81
  call void @BLF_width_and_height(i32 noundef %149, ptr noundef nonnull %21, i64 noundef 256, ptr noundef nonnull %22, ptr noundef nonnull %54) #11
  call void @mid_v2_v2v2(ptr noundef nonnull %23, ptr noundef nonnull %8, ptr noundef nonnull %48) #11
  %150 = load <2 x float>, ptr %22, align 8, !tbaa !82
  %151 = fmul <2 x float> %150, <float 5.000000e-01, float 5.000000e-01>
  %152 = load <2 x float>, ptr %23, align 8, !tbaa !82
  %153 = fsub <2 x float> %152, %151
  store <2 x float> %153, ptr %23, align 8, !tbaa !82
  call void @glColor4ubv(ptr noundef nonnull %4) #11
  call void @uiSetRoundBox(i32 noundef 15) #11
  %154 = load float, ptr %23, align 8, !tbaa !82
  %155 = fsub float %154, %34
  %156 = load float, ptr %55, align 4, !tbaa !82
  %157 = fsub float %156, %34
  %158 = fadd float %34, %154
  %159 = load float, ptr %22, align 8, !tbaa !82
  %160 = fadd float %158, %159
  %161 = fadd float %34, %156
  %162 = load float, ptr %54, align 4, !tbaa !82
  %163 = fadd float %161, %162
  call void @uiRoundBox(float noundef %155, float noundef %157, float noundef %160, float noundef %163, float noundef %34) #11
  call void @glColor3ubv(ptr noundef nonnull %5) #11
  %164 = load i32, ptr @blf_mono_font, align 4, !tbaa !81
  %165 = load float, ptr %23, align 8, !tbaa !82
  %166 = load float, ptr %55, align 4, !tbaa !82
  call void @BLF_position(i32 noundef %164, float noundef %165, float noundef %166, float noundef 0.000000e+00) #11
  %167 = load i32, ptr @blf_mono_font, align 4, !tbaa !81
  call void @BLF_draw(i32 noundef %167, ptr noundef nonnull %21, i64 noundef 256) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %23) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %22) #13
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %21) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %24) #13
  %168 = load float, ptr %51, align 4, !tbaa !82
  %169 = fneg float %168
  store float %169, ptr %24, align 4, !tbaa !82
  %170 = load float, ptr %7, align 4, !tbaa !82
  store float %170, ptr %56, align 4, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %25) #13
  call fastcc void @normalize_v2(ptr noundef nonnull %24) #12
  call void @glEnable(i32 noundef 3042) #11
  call void @glColor3ubv(ptr noundef nonnull %6) #11
  call void @glBegin(i32 noundef 1) #11
  call fastcc void @madd_v2_v2v2fl(ptr noundef nonnull %25, ptr noundef nonnull %8, ptr noundef nonnull %24, float noundef 4.000000e+00) #12
  call void @glVertex2fv(ptr noundef nonnull %25) #11
  call fastcc void @madd_v2_v2v2fl(ptr noundef nonnull %25, ptr noundef nonnull %8, ptr noundef nonnull %24, float noundef -4.000000e+00) #12
  call void @glVertex2fv(ptr noundef nonnull %25) #11
  call fastcc void @madd_v2_v2v2fl(ptr noundef nonnull %25, ptr noundef nonnull %48, ptr noundef nonnull %24, float noundef 4.000000e+00) #12
  call void @glVertex2fv(ptr noundef nonnull %25) #11
  call fastcc void @madd_v2_v2v2fl(ptr noundef nonnull %25, ptr noundef nonnull %48, ptr noundef nonnull %24, float noundef -4.000000e+00) #12
  call void @glVertex2fv(ptr noundef nonnull %25) #11
  call void @glEnd() #11
  call void @glDisable(i32 noundef 3042) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %25) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %24) #13
  br label %171

171:                                              ; preds = %148, %107
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  %172 = add nuw nsw i32 %61, 1
  %173 = load ptr, ptr %60, align 8, !tbaa !50
  %174 = icmp eq ptr %173, null
  br i1 %174, label %175, label %59, !llvm.loop !125

175:                                              ; preds = %171, %3
  call void @glDisable(i32 noundef 2848) #11
  %176 = load i32, ptr @blf_mono_font, align 4, !tbaa !81
  call void @BLF_disable(i32 noundef %176, i32 noundef 1) #11
  %177 = getelementptr inbounds %struct.RulerInfo, ptr %2, i64 0, i32 3
  %178 = load i32, ptr %177, align 8, !tbaa !77
  %179 = and i32 %178, 1
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %201, label %181

181:                                              ; preds = %175
  %182 = getelementptr inbounds %struct.RulerInfo, ptr %2, i64 0, i32 4
  %183 = load i32, ptr %182, align 4, !tbaa !73
  %184 = icmp eq i32 %183, 1
  br i1 %184, label %185, label %201

185:                                              ; preds = %181
  %186 = call fastcc ptr @ruler_item_active_get(ptr noundef nonnull %2) #12
  %187 = icmp eq ptr %186, null
  br i1 %187, label %201, label %188

188:                                              ; preds = %185
  %189 = call float @UI_GetThemeValuef(i32 noundef 36) #11
  %190 = fmul float %189, 2.500000e+00
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %26) #13
  %191 = getelementptr inbounds %struct.RulerItem, ptr %186, i64 0, i32 3
  %192 = load i8, ptr %191, align 4, !tbaa !74
  %193 = zext i8 %192 to i64
  %194 = getelementptr inbounds %struct.RulerItem, ptr %186, i64 0, i32 2, i64 %193
  %195 = call i32 @ED_view3d_project_float_global(ptr noundef %1, ptr noundef nonnull %194, ptr noundef nonnull %26, i32 noundef 0) #11
  call void @cpack(i32 noundef 16777215) #11
  %196 = load float, ptr %26, align 4, !tbaa !82
  %197 = getelementptr inbounds [3 x float], ptr %26, i64 0, i64 1
  %198 = load float, ptr %197, align 4, !tbaa !82
  %199 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !115
  %200 = fmul float %190, %199
  call void @circ(float noundef %196, float noundef %198, float noundef %200) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %26) #13
  br label %201

201:                                              ; preds = %185, %188, %181, %175
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @view3d_ruler_header_update(ptr noundef %0) unnamed_addr #1 !PGOFuncName !126 {
  tail call void @ED_area_headerprint(ptr noundef %0, ptr noundef nonnull @.str.8) #11
  ret void
}

; Function Attrs: optsize
declare void @WM_cursor_modal_set(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_findstring(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gpencil_layer_getframe(ptr noundef, i32 noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @ruler_item_add(ptr noundef %0) unnamed_addr #1 !PGOFuncName !127 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !50
  %3 = tail call ptr %2(i64 noundef 64, ptr noundef nonnull @.str.5) #11
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef %3) #11
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !128 {
  %3 = load float, ptr %1, align 4, !tbaa !82
  store float %3, ptr %0, align 4, !tbaa !82
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !82
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !82
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !82
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !82
  ret void
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glEnable(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLF_enable(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLF_size(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLF_rotation(i32 noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_GetThemeColor3ubv(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ED_view3d_project_float_global(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @cpack(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glBegin(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glVertex2fv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glEnd() local_unnamed_addr #2

; Function Attrs: optsize
declare void @setlinestyle(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @ED_view3d_pixel_size(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_fff(float noundef %0, float noundef %1, float noundef %2) unnamed_addr #5 !PGOFuncName !129 {
  %4 = tail call fastcc float @min_ff(float noundef %0, float noundef %1) #12
  %5 = tail call fastcc float @min_ff(float noundef %4, float noundef %2) #12
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !130 {
  %3 = load float, ptr %0, align 4, !tbaa !82
  %4 = load float, ptr %1, align 4, !tbaa !82
  %5 = fsub float %3, %4
  %6 = getelementptr inbounds float, ptr %0, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !82
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !82
  %10 = fsub float %7, %9
  %11 = fmul float %10, %10
  %12 = tail call float @llvm.fmuladd.f32(float %5, float %5, float %11)
  %13 = tail call float @llvm.sqrt.f32(float %12)
  ret float %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #4 !PGOFuncName !131 {
  %4 = load float, ptr %1, align 4, !tbaa !82
  %5 = load float, ptr %2, align 4, !tbaa !82
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !82
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !82
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !82
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !82
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !82
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !82
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !82
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3(ptr nocapture noundef %0) unnamed_addr #7 !PGOFuncName !132 {
  tail call fastcc void @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @cross_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #4 !PGOFuncName !133 {
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !82
  %6 = getelementptr inbounds float, ptr %2, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !82
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !82
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !82
  %12 = fneg float %9
  %13 = fmul float %11, %12
  %14 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %13)
  store float %14, ptr %0, align 4, !tbaa !82
  %15 = load float, ptr %8, align 4, !tbaa !82
  %16 = load float, ptr %2, align 4, !tbaa !82
  %17 = load float, ptr %1, align 4, !tbaa !82
  %18 = load float, ptr %6, align 4, !tbaa !82
  %19 = fneg float %17
  %20 = fmul float %18, %19
  %21 = tail call float @llvm.fmuladd.f32(float %15, float %16, float %20)
  %22 = getelementptr inbounds float, ptr %0, i64 1
  store float %21, ptr %22, align 4, !tbaa !82
  %23 = load float, ptr %1, align 4, !tbaa !82
  %24 = load float, ptr %10, align 4, !tbaa !82
  %25 = load float, ptr %4, align 4, !tbaa !82
  %26 = load float, ptr %2, align 4, !tbaa !82
  %27 = fneg float %25
  %28 = fmul float %26, %27
  %29 = tail call float @llvm.fmuladd.f32(float %23, float %24, float %28)
  %30 = getelementptr inbounds float, ptr %0, i64 2
  store float %29, ptr %30, align 4, !tbaa !82
  ret void
}

; Function Attrs: optsize
declare float @angle_normalized_v3v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @axis_angle_to_quat(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glColor3ubv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v3_v3v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) unnamed_addr #4 !PGOFuncName !134 {
  %5 = load float, ptr %1, align 4, !tbaa !82
  %6 = load float, ptr %2, align 4, !tbaa !82
  %7 = tail call float @llvm.fmuladd.f32(float %6, float %3, float %5)
  store float %7, ptr %0, align 4, !tbaa !82
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !82
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !82
  %12 = tail call float @llvm.fmuladd.f32(float %11, float %3, float %9)
  %13 = getelementptr inbounds float, ptr %0, i64 1
  store float %12, ptr %13, align 4, !tbaa !82
  %14 = getelementptr inbounds float, ptr %1, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !82
  %16 = getelementptr inbounds float, ptr %2, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !82
  %18 = tail call float @llvm.fmuladd.f32(float %17, float %3, float %15)
  %19 = getelementptr inbounds float, ptr %0, i64 2
  store float %18, ptr %19, align 4, !tbaa !82
  ret void
}

; Function Attrs: optsize
declare void @mul_qt_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glEnableClientState(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glVertexPointer(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glDrawArrays(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glDisableClientState(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ruler_item_as_string(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) unnamed_addr #1 !PGOFuncName !135 {
  %5 = getelementptr inbounds %struct.UnitSettings, ptr %1, i64 0, i32 3
  %6 = load i16, ptr %5, align 2, !tbaa !136
  %7 = trunc i16 %6 to i8
  %8 = and i8 %7, 1
  %9 = getelementptr inbounds %struct.RulerItem, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !76
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  %13 = getelementptr inbounds %struct.RulerItem, ptr %0, i64 0, i32 2
  br i1 %12, label %29, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.RulerItem, ptr %0, i64 0, i32 2, i64 1
  %16 = getelementptr inbounds %struct.RulerItem, ptr %0, i64 0, i32 2, i64 2
  %17 = tail call float @angle_v3v3v3(ptr noundef nonnull %13, ptr noundef nonnull %15, ptr noundef nonnull %16) #11
  %18 = getelementptr inbounds %struct.UnitSettings, ptr %1, i64 0, i32 1
  %19 = load i8, ptr %18, align 4, !tbaa !137
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %14
  %22 = fmul float %17, 0x404CA5DC20000000
  %23 = fpext float %22 to double
  %24 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %2, i64 noundef 256, ptr noundef nonnull @.str.6, i32 noundef %3, double noundef %23) #11
  br label %44

25:                                               ; preds = %14
  %26 = zext i8 %19 to i32
  %27 = fpext float %17 to double
  %28 = tail call i64 @bUnit_AsString(ptr noundef %2, i32 noundef 256, double noundef %27, i32 noundef %3, i32 noundef %26, i32 noundef 5, i8 noundef zeroext %8, i8 noundef zeroext 0) #11
  br label %44

29:                                               ; preds = %4
  %30 = getelementptr inbounds %struct.RulerItem, ptr %0, i64 0, i32 2, i64 2
  %31 = tail call fastcc float @len_v3v3(ptr noundef nonnull %13, ptr noundef nonnull %30) #12
  %32 = getelementptr inbounds %struct.UnitSettings, ptr %1, i64 0, i32 1
  %33 = load i8, ptr %32, align 4, !tbaa !137
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = fpext float %31 to double
  %37 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %2, i64 noundef 256, ptr noundef nonnull @.str.7, i32 noundef %3, double noundef %36) #11
  br label %44

38:                                               ; preds = %29
  %39 = zext i8 %33 to i32
  %40 = load float, ptr %1, align 4, !tbaa !138
  %41 = fmul float %31, %40
  %42 = fpext float %41 to double
  %43 = tail call i64 @bUnit_AsString(ptr noundef %2, i32 noundef 256, double noundef %42, i32 noundef %3, i32 noundef %39, i32 noundef 1, i8 noundef zeroext %8, i8 noundef zeroext 0) #11
  br label %44

44:                                               ; preds = %35, %38, %21, %25
  ret void
}

; Function Attrs: optsize
declare void @BLF_width_and_height(i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glColor4ubv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiSetRoundBox(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiRoundBox(float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLF_position(i32 noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLF_draw(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #4 !PGOFuncName !139 {
  %4 = load float, ptr %1, align 4, !tbaa !82
  %5 = load float, ptr %2, align 4, !tbaa !82
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !82
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !82
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !82
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !82
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v2(ptr nocapture noundef %0) unnamed_addr #7 !PGOFuncName !140 {
  tail call fastcc void @normalize_v2_v2(ptr noundef %0, ptr noundef %0) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v2_v2v2fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) unnamed_addr #4 !PGOFuncName !141 {
  %5 = load float, ptr %1, align 4, !tbaa !82
  %6 = load float, ptr %2, align 4, !tbaa !82
  %7 = tail call float @llvm.fmuladd.f32(float %6, float %3, float %5)
  store float %7, ptr %0, align 4, !tbaa !82
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !82
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !82
  %12 = tail call float @llvm.fmuladd.f32(float %11, float %3, float %9)
  %13 = getelementptr inbounds float, ptr %0, i64 1
  store float %12, ptr %13, align 4, !tbaa !82
  ret void
}

; Function Attrs: optsize
declare void @glVertex2f(float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glDisable(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mid_v2_v2v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLF_disable(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ruler_item_active_get(ptr noundef %0) unnamed_addr #1 !PGOFuncName !142 {
  %2 = getelementptr inbounds %struct.RulerInfo, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !120
  %4 = tail call ptr @BLI_findlink(ptr noundef %0, i32 noundef %3) #11
  ret ptr %4
}

; Function Attrs: optsize
declare float @UI_GetThemeValuef(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @circ(float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0, float noundef %1) unnamed_addr #5 !PGOFuncName !143 {
  %3 = fcmp olt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !144 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #12
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #11
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #12
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #12
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !145 {
  %3 = load float, ptr %0, align 4, !tbaa !82
  %4 = load float, ptr %1, align 4, !tbaa !82
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !82
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !82
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !82
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !82
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #4 !PGOFuncName !146 {
  %4 = load float, ptr %1, align 4, !tbaa !82
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !82
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !82
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !82
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !82
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !82
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #0 !PGOFuncName !147 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !82
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !82
  ret void
}

; Function Attrs: optsize
declare float @angle_v3v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @bUnit_AsString(ptr noundef, i32 noundef, double noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !148 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #13
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #12
  %4 = call fastcc float @len_v3(ptr noundef nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #13
  ret float %4
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3(ptr nocapture noundef readonly %0) unnamed_addr #7 !PGOFuncName !149 {
  %2 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %0) #12
  %3 = tail call float @sqrtf(float noundef %2) #11
  ret float %3
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !150 {
  %3 = tail call fastcc float @dot_v2v2(ptr noundef %1, ptr noundef %1) #12
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #11
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v2_v2fl(ptr noundef %0, ptr noundef %1, float noundef %7) #12
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v2(ptr noundef %0) #12
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !151 {
  %3 = load float, ptr %0, align 4, !tbaa !82
  %4 = load float, ptr %1, align 4, !tbaa !82
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !82
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !82
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  ret float %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v2_v2fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #4 !PGOFuncName !152 {
  %4 = load float, ptr %1, align 4, !tbaa !82
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !82
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !82
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !82
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v2(ptr nocapture noundef writeonly %0) unnamed_addr #0 !PGOFuncName !153 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !82
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_area_headerprint(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @view3d_ruler_end(ptr nocapture noundef readonly %0) unnamed_addr #1 !PGOFuncName !154 {
  %2 = getelementptr inbounds %struct.RulerInfo, ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !59
  %6 = getelementptr inbounds %struct.RulerInfo, ptr %0, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !65
  tail call void @ED_region_draw_cb_exit(ptr noundef %5, ptr noundef %7) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @view3d_ruler_free(ptr noundef %0) unnamed_addr #1 !PGOFuncName !155 {
  tail call void @BLI_freelistN(ptr noundef %0) #11
  %2 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  tail call void %2(ptr noundef %0) #11
  ret void
}

; Function Attrs: optsize
declare void @ED_region_draw_cb_exit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BLI_rcti_isect_pt_v(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !156 {
  %2 = load ptr, ptr %0, align 8, !tbaa !157
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare ptr @CTX_wm_view3d(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ruler_item_active_set(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !PGOFuncName !158 {
  %3 = tail call i32 @BLI_findindex(ptr noundef %0, ptr noundef %1) #11
  %4 = getelementptr inbounds %struct.RulerInfo, ptr %0, i64 0, i32 1
  store i32 %3, ptr %4, align 8, !tbaa !120
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @view3d_ruler_item_mousemove(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #1 !PGOFuncName !159 {
  %6 = alloca [2 x float], align 8
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [2 x float], align 8
  %10 = tail call fastcc ptr @ruler_item_active_get(ptr noundef %1) #12
  %11 = getelementptr inbounds %struct.RulerInfo, ptr %1, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !77
  %13 = and i32 %12, -2
  store i32 %13, ptr %11, align 8, !tbaa !77
  %14 = icmp eq ptr %10, null
  br i1 %14, label %51, label %15

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.RulerItem, ptr %10, i64 0, i32 3
  %17 = load i8, ptr %16, align 4, !tbaa !74
  %18 = zext i8 %17 to i64
  %19 = getelementptr inbounds %struct.RulerItem, ptr %10, i64 0, i32 2, i64 %18
  %20 = getelementptr inbounds %struct.RulerInfo, ptr %1, i64 0, i32 5
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %19, ptr noundef nonnull %20) #12
  tail call fastcc void @view3d_ruler_item_project(ptr noundef nonnull %1, ptr noundef nonnull %19, ptr noundef %2) #12
  %21 = icmp eq i8 %3, 0
  br i1 %21, label %35, label %22

22:                                               ; preds = %15
  %23 = load i8, ptr %16, align 4, !tbaa !74
  %24 = icmp eq i8 %23, 1
  br i1 %24, label %35, label %25

25:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #13
  %26 = load <2 x i32>, ptr %2, align 4, !tbaa !81
  %27 = sitofp <2 x i32> %26 to <2 x float>
  store <2 x float> %27, ptr %6, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #13
  %28 = call fastcc zeroext i8 @ED_view3d_snap_co(ptr noundef %0, ptr noundef nonnull %19, ptr noundef nonnull %7, ptr noundef nonnull %6, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 1) #12
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = icmp eq i8 %23, 0
  %32 = select i1 %31, i64 2, i64 0
  %33 = getelementptr inbounds %struct.RulerItem, ptr %10, i64 0, i32 2, i64 %32
  call fastcc void @negate_v3(ptr noundef nonnull %7) #12
  call fastcc void @madd_v3_v3v3fl(ptr noundef nonnull %8, ptr noundef nonnull %19, ptr noundef nonnull %7, float noundef 0x3F2A36E2E0000000) #12
  call fastcc void @ED_view3d_snap_ray(ptr noundef %0, ptr noundef nonnull %33, ptr noundef nonnull %8, ptr noundef nonnull %7) #12
  br label %34

34:                                               ; preds = %30, %25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  br label %51

35:                                               ; preds = %22, %15
  %36 = icmp eq i8 %4, 0
  br i1 %36, label %51, label %37

37:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #13
  %38 = load <2 x i32>, ptr %2, align 4, !tbaa !81
  %39 = sitofp <2 x i32> %38 to <2 x float>
  store <2 x float> %39, ptr %9, align 8, !tbaa !82
  %40 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #11
  %41 = getelementptr inbounds %struct.View3D, ptr %40, i64 0, i32 24
  %42 = load i16, ptr %41, align 8, !tbaa !79
  %43 = icmp sgt i16 %42, 2
  %44 = zext i1 %43 to i8
  %45 = call fastcc zeroext i8 @ED_view3d_snap_co(ptr noundef %0, ptr noundef nonnull %19, ptr noundef null, ptr noundef nonnull %9, i8 noundef zeroext %44, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext %44) #12
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %37
  %48 = load i32, ptr %11, align 8, !tbaa !77
  %49 = or i32 %48, 1
  store i32 %49, ptr %11, align 8, !tbaa !77
  br label %50

50:                                               ; preds = %47, %37
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #13
  br label %51

51:                                               ; preds = %5, %34, %50, %35
  %52 = phi i8 [ 1, %35 ], [ 1, %50 ], [ 1, %34 ], [ 0, %5 ]
  ret i8 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !160 {
  %3 = load float, ptr %1, align 4, !tbaa !82
  %4 = fneg float %3
  store float %4, ptr %0, align 4, !tbaa !82
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !82
  %7 = fneg float %6
  %8 = getelementptr inbounds float, ptr %0, i64 1
  store float %7, ptr %8, align 4, !tbaa !82
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !82
  %11 = fneg float %10
  %12 = getelementptr inbounds float, ptr %0, i64 2
  store float %11, ptr %12, align 4, !tbaa !82
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @view3d_ruler_item_project(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 !PGOFuncName !161 {
  %4 = getelementptr inbounds %struct.RulerInfo, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !58
  tail call void @ED_view3d_win_to_3d_int(ptr noundef %5, ptr noundef %1, ptr noundef %2, ptr noundef %1) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @view3d_ruler_pick(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #1 !PGOFuncName !162 {
  %5 = alloca [3 x [2 x float]], align 16
  %6 = alloca [3 x float], align 4
  %7 = getelementptr inbounds %struct.RulerInfo, ptr %0, i64 0, i32 8
  %8 = load ptr, ptr %7, align 8, !tbaa !58
  %9 = load ptr, ptr %0, align 8, !tbaa !50
  %10 = icmp eq ptr %9, null
  br i1 %10, label %65, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds [3 x [2 x float]], ptr %5, i64 0, i64 1
  %13 = getelementptr inbounds [3 x [2 x float]], ptr %5, i64 0, i64 2
  %14 = getelementptr inbounds float, ptr %6, i64 1
  %15 = getelementptr inbounds float, ptr %6, i64 2
  br label %16

16:                                               ; preds = %11, %59
  %17 = phi ptr [ %9, %11 ], [ %63, %59 ]
  %18 = phi i32 [ -1, %11 ], [ %62, %59 ]
  %19 = phi ptr [ null, %11 ], [ %61, %59 ]
  %20 = phi float [ 1.440000e+02, %11 ], [ %60, %59 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #13
  br label %21

21:                                               ; preds = %16, %21
  %22 = phi i64 [ 0, %16 ], [ %26, %21 ]
  %23 = getelementptr inbounds %struct.RulerItem, ptr %17, i64 0, i32 2, i64 %22
  %24 = getelementptr inbounds [3 x [2 x float]], ptr %5, i64 0, i64 %22
  %25 = call i32 @ED_view3d_project_float_global(ptr noundef %8, ptr noundef nonnull %23, ptr noundef nonnull %24, i32 noundef 0) #11
  %26 = add nuw nsw i64 %22, 1
  %27 = icmp eq i64 %26, 3
  br i1 %27, label %28, label %21, !llvm.loop !163

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.RulerItem, ptr %17, i64 0, i32 4
  %30 = load i32, ptr %29, align 8, !tbaa !76
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %48, label %33

33:                                               ; preds = %28
  %34 = call float @dist_squared_to_line_segment_v2(ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %12) #11
  %35 = call float @dist_squared_to_line_segment_v2(ptr noundef %1, ptr noundef nonnull %12, ptr noundef nonnull %13) #11
  %36 = call fastcc float @min_ff(float noundef %34, float noundef %35) #12
  %37 = fcmp olt float %36, %20
  br i1 %37, label %38, label %59

38:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #13
  %39 = call fastcc float @len_squared_v2v2(ptr noundef nonnull %5, ptr noundef %1) #12
  store float %39, ptr %6, align 4, !tbaa !82
  %40 = call fastcc float @len_squared_v2v2(ptr noundef nonnull %12, ptr noundef %1) #12
  store float %40, ptr %14, align 4, !tbaa !82
  %41 = call fastcc float @len_squared_v2v2(ptr noundef nonnull %13, ptr noundef %1) #12
  store float %41, ptr %15, align 4, !tbaa !82
  %42 = call fastcc float @min_fff(float noundef %39, float noundef %40, float noundef %41) #12
  %43 = fcmp olt float %42, 1.440000e+02
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = call fastcc i32 @min_axis_v3(ptr noundef nonnull %6) #12, !range !164
  br label %46

46:                                               ; preds = %38, %44
  %47 = phi i32 [ %45, %44 ], [ -1, %38 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #13
  br label %59

48:                                               ; preds = %28
  %49 = call float @dist_squared_to_line_segment_v2(ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %13) #11
  %50 = fcmp olt float %49, %20
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = call fastcc float @len_squared_v2v2(ptr noundef nonnull %5, ptr noundef %1) #12
  %53 = call fastcc float @len_squared_v2v2(ptr noundef nonnull %13, ptr noundef %1) #12
  %54 = call fastcc float @min_ff(float noundef %52, float noundef %53) #12
  %55 = fcmp olt float %54, 1.440000e+02
  %56 = fcmp olt float %52, %53
  %57 = select i1 %56, i32 0, i32 2
  %58 = select i1 %55, i32 %57, i32 -1
  br label %59

59:                                               ; preds = %48, %51, %33, %46
  %60 = phi float [ %36, %46 ], [ %20, %33 ], [ %49, %51 ], [ %20, %48 ]
  %61 = phi ptr [ %17, %46 ], [ %19, %33 ], [ %17, %51 ], [ %19, %48 ]
  %62 = phi i32 [ %47, %46 ], [ %18, %33 ], [ %58, %51 ], [ %18, %48 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  %63 = load ptr, ptr %17, align 8, !tbaa !50
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %16, !llvm.loop !165

65:                                               ; preds = %59, %4
  %66 = phi ptr [ null, %4 ], [ %61, %59 ]
  %67 = phi i32 [ -1, %4 ], [ %62, %59 ]
  %68 = icmp ne ptr %66, null
  %69 = select i1 %68, i32 %67, i32 -1
  %70 = zext i1 %68 to i8
  store ptr %66, ptr %2, align 8, !tbaa !50
  store i32 %69, ptr %3, align 4, !tbaa !81
  ret i8 %70
}

; Function Attrs: optsize
declare float @line_point_factor_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_clipboard_text_set(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_event_add_mousemove(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @view3d_ruler_to_gpencil(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !PGOFuncName !166 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #11
  %4 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 39
  %5 = load ptr, ptr %4, align 8, !tbaa !87
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = tail call ptr @gpencil_data_addnew(ptr noundef nonnull @.str.9) #11
  store ptr %8, ptr %4, align 8, !tbaa !87
  br label %9

9:                                                ; preds = %7, %2
  %10 = phi ptr [ %8, %7 ], [ %5, %2 ]
  %11 = getelementptr inbounds %struct.bGPdata, ptr %10, i64 0, i32 1
  %12 = tail call ptr @BLI_findstring(ptr noundef nonnull %11, ptr noundef nonnull @.str.4, i32 noundef 64) #11
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %9
  %15 = load ptr, ptr %4, align 8, !tbaa !87
  %16 = tail call ptr @gpencil_layer_addnew(ptr noundef %15, ptr noundef nonnull @.str.4, i32 noundef 0) #11
  %17 = getelementptr inbounds %struct.bGPDlayer, ptr %16, i64 0, i32 5
  store i16 1, ptr %17, align 4, !tbaa !167
  %18 = getelementptr inbounds %struct.bGPDlayer, ptr %16, i64 0, i32 4
  %19 = load i32, ptr %18, align 8, !tbaa !169
  %20 = or i32 %19, 1
  store i32 %20, ptr %18, align 8, !tbaa !169
  br label %21

21:                                               ; preds = %14, %9
  %22 = phi ptr [ %16, %14 ], [ %12, %9 ]
  %23 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 5
  %24 = load i32, ptr %23, align 8, !tbaa !106
  %25 = tail call ptr @gpencil_layer_getframe(ptr noundef nonnull %22, i32 noundef %24, i16 noundef signext 1) #11
  %26 = tail call zeroext i8 @free_gpencil_strokes(ptr noundef %25) #11
  %27 = load ptr, ptr %1, align 8, !tbaa !50
  %28 = icmp eq ptr %27, null
  br i1 %28, label %66, label %29

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.bGPDframe, ptr %25, i64 0, i32 2
  br label %31

31:                                               ; preds = %29, %62
  %32 = phi ptr [ %27, %29 ], [ %64, %62 ]
  %33 = load ptr, ptr @MEM_callocN, align 8, !tbaa !50
  %34 = tail call ptr %33(i64 noundef 48, ptr noundef nonnull @.str.10) #11
  %35 = getelementptr inbounds %struct.RulerItem, ptr %32, i64 0, i32 4
  %36 = load i32, ptr %35, align 8, !tbaa !76
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  %39 = getelementptr inbounds %struct.bGPDstroke, ptr %34, i64 0, i32 4
  %40 = getelementptr inbounds %struct.bGPDstroke, ptr %34, i64 0, i32 2
  br i1 %38, label %52, label %41

41:                                               ; preds = %31
  store i32 3, ptr %39, align 8, !tbaa !109
  %42 = load ptr, ptr @MEM_callocN, align 8, !tbaa !50
  %43 = tail call ptr %42(i64 noundef 60, ptr noundef nonnull @.str.11) #11
  store ptr %43, ptr %40, align 8, !tbaa !107
  br label %44

44:                                               ; preds = %41, %44
  %45 = phi i64 [ 0, %41 ], [ %50, %44 ]
  %46 = phi ptr [ %43, %41 ], [ %49, %44 ]
  %47 = getelementptr inbounds %struct.RulerItem, ptr %32, i64 0, i32 2, i64 %45
  tail call fastcc void @copy_v3_v3(ptr noundef %46, ptr noundef nonnull %47) #12
  %48 = getelementptr inbounds %struct.bGPDspoint, ptr %46, i64 0, i32 3
  store float 1.000000e+00, ptr %48, align 4, !tbaa !170
  %49 = getelementptr inbounds %struct.bGPDspoint, ptr %46, i64 1
  %50 = add nuw nsw i64 %45, 1
  %51 = icmp eq i64 %50, 3
  br i1 %51, label %62, label %44, !llvm.loop !172

52:                                               ; preds = %31
  store i32 2, ptr %39, align 8, !tbaa !109
  %53 = load ptr, ptr @MEM_callocN, align 8, !tbaa !50
  %54 = tail call ptr %53(i64 noundef 40, ptr noundef nonnull @.str.11) #11
  store ptr %54, ptr %40, align 8, !tbaa !107
  br label %55

55:                                               ; preds = %52, %55
  %56 = phi i1 [ true, %52 ], [ false, %55 ]
  %57 = phi i64 [ 0, %52 ], [ 2, %55 ]
  %58 = phi ptr [ %54, %52 ], [ %61, %55 ]
  %59 = getelementptr inbounds %struct.RulerItem, ptr %32, i64 0, i32 2, i64 %57
  tail call fastcc void @copy_v3_v3(ptr noundef %58, ptr noundef nonnull %59) #12
  %60 = getelementptr inbounds %struct.bGPDspoint, ptr %58, i64 0, i32 3
  store float 1.000000e+00, ptr %60, align 4, !tbaa !170
  %61 = getelementptr inbounds %struct.bGPDspoint, ptr %58, i64 1
  br i1 %56, label %55, label %62, !llvm.loop !173

62:                                               ; preds = %44, %55
  %63 = getelementptr inbounds %struct.bGPDstroke, ptr %34, i64 0, i32 6
  store i16 1, ptr %63, align 2, !tbaa !174
  tail call void @BLI_addtail(ptr noundef nonnull %30, ptr noundef %34) #11
  %64 = load ptr, ptr %32, align 8, !tbaa !50
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %31, !llvm.loop !175

66:                                               ; preds = %62, %21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ruler_item_remove(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !PGOFuncName !176 {
  tail call void @BLI_remlink(ptr noundef %0, ptr noundef %1) #11
  %3 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  tail call void %3(ptr noundef %1) #11
  ret void
}

; Function Attrs: optsize
declare void @WM_cursor_modal_restore(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ED_view3d_snap_co(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext %6, i8 noundef zeroext %7) unnamed_addr #1 !PGOFuncName !177 {
  %9 = alloca float, align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #13
  store float 1.200000e+01, ptr %9, align 4, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #13
  store float 0x47DFFFFFE0000000, ptr %11, align 4, !tbaa !82
  %12 = icmp eq ptr %2, null
  %13 = select i1 %12, ptr %10, ptr %2
  %14 = tail call ptr @CTX_data_scene(ptr noundef %0) #11
  %15 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #11
  %16 = tail call ptr @CTX_wm_region(ptr noundef %0) #11
  %17 = icmp eq i8 %5, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %8
  %19 = call zeroext i8 @snapObjectsEx(ptr noundef %14, ptr noundef null, ptr noundef %15, ptr noundef %16, ptr noundef null, i16 noundef signext 1, ptr noundef %3, ptr noundef nonnull %9, ptr noundef %1, ptr noundef nonnull %13, ptr noundef nonnull %11, i32 noundef 0) #11
  br label %20

20:                                               ; preds = %18, %8
  %21 = phi i8 [ %19, %18 ], [ 0, %8 ]
  %22 = icmp eq i8 %6, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %20
  %24 = icmp eq i8 %21, 0
  %25 = icmp ne i8 %4, 0
  %26 = or i1 %25, %24
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = icmp eq i8 %4, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %27
  store float 0x47DFFFFFE0000000, ptr %11, align 4, !tbaa !82
  br label %30

30:                                               ; preds = %29, %27
  %31 = call zeroext i8 @snapObjectsEx(ptr noundef %14, ptr noundef null, ptr noundef %15, ptr noundef %16, ptr noundef null, i16 noundef signext 2, ptr noundef %3, ptr noundef nonnull %9, ptr noundef %1, ptr noundef nonnull %13, ptr noundef nonnull %11, i32 noundef 0) #11
  %32 = or i8 %31, %21
  br label %33

33:                                               ; preds = %23, %30, %20
  %34 = phi i8 [ %32, %30 ], [ %21, %23 ], [ %21, %20 ]
  %35 = icmp eq i8 %7, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %33
  %37 = icmp eq i8 %34, 0
  %38 = icmp ne i8 %4, 0
  %39 = or i1 %38, %37
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = icmp eq i8 %4, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %40
  store float 0x47DFFFFFE0000000, ptr %11, align 4, !tbaa !82
  br label %43

43:                                               ; preds = %42, %40
  %44 = call zeroext i8 @snapObjectsEx(ptr noundef %14, ptr noundef null, ptr noundef %15, ptr noundef %16, ptr noundef null, i16 noundef signext 3, ptr noundef %3, ptr noundef nonnull %9, ptr noundef %1, ptr noundef nonnull %13, ptr noundef nonnull %11, i32 noundef 0) #11
  %45 = or i8 %44, %34
  br label %46

46:                                               ; preds = %36, %43, %33
  %47 = phi i8 [ %45, %43 ], [ %34, %36 ], [ %34, %33 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #13
  ret i8 %47
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v3(ptr nocapture noundef %0) unnamed_addr #4 !PGOFuncName !178 {
  %2 = load <2 x float>, ptr %0, align 4, !tbaa !82
  %3 = fneg <2 x float> %2
  store <2 x float> %3, ptr %0, align 4, !tbaa !82
  %4 = getelementptr inbounds float, ptr %0, i64 2
  %5 = load float, ptr %4, align 4, !tbaa !82
  %6 = fneg float %5
  store float %6, ptr %4, align 4, !tbaa !82
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ED_view3d_snap_ray(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 !PGOFuncName !179 {
  %5 = alloca float, align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store float 1.200000e+01, ptr %5, align 4, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #13
  store float 0x47DFFFFFE0000000, ptr %7, align 4, !tbaa !82
  %8 = tail call ptr @CTX_data_scene(ptr noundef %0) #11
  %9 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %10 = call zeroext i8 @snapObjectsRayEx(ptr noundef %8, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %9, i16 noundef signext 3, ptr noundef null, ptr noundef null, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %7, ptr noundef null, ptr noundef nonnull %5, ptr noundef %1, ptr noundef nonnull %6, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @snapObjectsEx(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @snapObjectsRayEx(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_view3d_win_to_3d_int(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @dist_squared_to_line_segment_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc float @len_squared_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !180 {
  %3 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #12
  %4 = call fastcc float @dot_v2v2(ptr noundef nonnull %3, ptr noundef nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @min_axis_v3(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !181 {
  %2 = load float, ptr %0, align 4, !tbaa !82
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !82
  %5 = getelementptr inbounds float, ptr %0, i64 2
  %6 = load float, ptr %5, align 4, !tbaa !82
  %7 = fcmp olt float %2, %4
  %8 = fcmp olt float %2, %6
  %9 = select i1 %8, i32 0, i32 2
  %10 = fcmp olt float %4, %6
  %11 = select i1 %10, i32 1, i32 2
  %12 = select i1 %7, i32 %9, i32 %11
  ret i32 %12
}

; Function Attrs: optsize
declare ptr @gpencil_data_addnew(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gpencil_layer_addnew(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @free_gpencil_strokes(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #10

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind optsize }
attributes #12 = { optsize }
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
!34 = !{!35, !36, i64 0}
!35 = !{!"wmOperatorType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !39, i64 112, !36, i64 128, !36, i64 136, !36, i64 144, !40, i64 152, !41, i64 184}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"ListBase", !36, i64 0, !36, i64 8}
!40 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!41 = !{!"short", !37, i64 0}
!42 = !{!35, !36, i64 24}
!43 = !{!35, !36, i64 8}
!44 = !{!35, !36, i64 48}
!45 = !{!35, !36, i64 56}
!46 = !{!35, !36, i64 64}
!47 = !{!35, !36, i64 72}
!48 = !{!35, !41, i64 184}
!49 = !{!"view3d_ruler.c:view3d_ruler_invoke"}
!50 = !{!36, !36, i64 0}
!51 = !{i8 0, i8 2}
!52 = !{!53, !36, i64 96}
!53 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!54 = !{!55, !36, i64 48}
!55 = !{!"RulerInfo", !39, i64 0, !56, i64 16, !56, i64 20, !56, i64 24, !56, i64 28, !37, i64 32, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72}
!56 = !{!"int", !37, i64 0}
!57 = !{!55, !36, i64 56}
!58 = !{!55, !36, i64 64}
!59 = !{!60, !36, i64 240}
!60 = !{!"ARegion", !36, i64 0, !36, i64 8, !61, i64 16, !64, i64 176, !64, i64 192, !41, i64 208, !41, i64 210, !41, i64 212, !41, i64 214, !41, i64 216, !41, i64 218, !63, i64 220, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !41, i64 232, !41, i64 234, !41, i64 236, !41, i64 238, !36, i64 240, !39, i64 248, !39, i64 264, !39, i64 280, !39, i64 296, !39, i64 312, !39, i64 328, !39, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!61 = !{!"View2D", !62, i64 0, !62, i64 16, !64, i64 32, !64, i64 48, !64, i64 64, !37, i64 80, !37, i64 88, !63, i64 96, !63, i64 100, !41, i64 104, !41, i64 106, !41, i64 108, !41, i64 110, !41, i64 112, !41, i64 114, !41, i64 116, !41, i64 118, !41, i64 120, !41, i64 122, !41, i64 124, !41, i64 126, !36, i64 128, !56, i64 136, !56, i64 140, !36, i64 144, !36, i64 152}
!62 = !{!"rctf", !63, i64 0, !63, i64 4, !63, i64 8, !63, i64 12}
!63 = !{!"float", !37, i64 0}
!64 = !{!"rcti", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12}
!65 = !{!55, !36, i64 72}
!66 = !{!"view3d_ruler.c:view3d_ruler_cancel"}
!67 = !{!"view3d_ruler.c:view3d_ruler_modal"}
!68 = !{!60, !36, i64 376}
!69 = !{!70, !41, i64 16}
!70 = !{!"wmEvent", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 18, !56, i64 20, !56, i64 24, !37, i64 28, !37, i64 36, !37, i64 42, !37, i64 43, !41, i64 44, !41, i64 46, !56, i64 48, !56, i64 52, !71, i64 56, !56, i64 64, !56, i64 68, !41, i64 72, !41, i64 74, !41, i64 76, !41, i64 78, !41, i64 80, !41, i64 82, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 106, !56, i64 108, !36, i64 112}
!71 = !{!"double", !37, i64 0}
!72 = !{!70, !41, i64 18}
!73 = !{!55, !56, i64 28}
!74 = !{!75, !37, i64 52}
!75 = !{!"RulerItem", !36, i64 0, !36, i64 8, !37, i64 16, !37, i64 52, !56, i64 56, !56, i64 60}
!76 = !{!75, !56, i64 56}
!77 = !{!55, !56, i64 24}
!78 = !{!70, !41, i64 74}
!79 = !{!80, !41, i64 232}
!80 = !{!"View3D", !36, i64 0, !36, i64 8, !39, i64 16, !56, i64 32, !63, i64 36, !37, i64 40, !37, i64 56, !63, i64 72, !63, i64 76, !37, i64 80, !37, i64 81, !56, i64 84, !56, i64 88, !41, i64 92, !41, i64 94, !36, i64 96, !36, i64 104, !62, i64 112, !39, i64 128, !36, i64 144, !36, i64 152, !37, i64 160, !56, i64 224, !56, i64 228, !41, i64 232, !41, i64 234, !41, i64 236, !41, i64 238, !41, i64 240, !41, i64 242, !63, i64 244, !63, i64 248, !63, i64 252, !63, i64 256, !37, i64 260, !37, i64 272, !41, i64 284, !41, i64 286, !41, i64 288, !37, i64 290, !37, i64 291, !37, i64 292, !37, i64 293, !37, i64 294, !39, i64 296, !39, i64 312, !39, i64 328, !37, i64 344, !37, i64 345, !37, i64 346, !37, i64 347, !36, i64 352, !36, i64 360, !36, i64 368}
!81 = !{!56, !56, i64 0}
!82 = !{!63, !63, i64 0}
!83 = !{!70, !41, i64 72}
!84 = !{!75, !36, i64 8}
!85 = !{!75, !36, i64 0}
!86 = !{!"view3d_ruler.c:view3d_ruler_from_gpencil"}
!87 = !{!88, !36, i64 4608}
!88 = !{!"Scene", !89, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !56, i64 232, !56, i64 236, !56, i64 240, !41, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !90, i64 280, !97, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !41, i64 4376, !41, i64 4378, !56, i64 4380, !39, i64 4384, !98, i64 4400, !99, i64 4416, !102, i64 4600, !36, i64 4608, !103, i64 4616, !36, i64 4640, !104, i64 4648, !104, i64 4656, !92, i64 4664, !93, i64 4824, !105, i64 4888, !36, i64 4952}
!89 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !56, i64 100, !56, i64 104, !56, i64 108, !36, i64 112}
!90 = !{!"RenderData", !91, i64 0, !36, i64 248, !36, i64 256, !94, i64 264, !95, i64 328, !56, i64 400, !56, i64 404, !56, i64 408, !63, i64 412, !56, i64 416, !56, i64 420, !56, i64 424, !56, i64 428, !41, i64 432, !41, i64 434, !63, i64 436, !63, i64 440, !63, i64 444, !63, i64 448, !63, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !56, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !56, i64 484, !56, i64 488, !41, i64 492, !41, i64 494, !56, i64 496, !56, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !37, i64 514, !37, i64 515, !56, i64 516, !56, i64 520, !56, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !62, i64 544, !62, i64 560, !64, i64 576, !39, i64 592, !41, i64 608, !41, i64 610, !63, i64 612, !63, i64 616, !63, i64 620, !63, i64 624, !56, i64 628, !63, i64 632, !63, i64 636, !63, i64 640, !63, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !63, i64 660, !63, i64 664, !41, i64 668, !41, i64 670, !63, i64 672, !63, i64 676, !37, i64 680, !56, i64 1704, !41, i64 1708, !41, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !56, i64 2520, !41, i64 2524, !41, i64 2526, !63, i64 2528, !63, i64 2532, !41, i64 2536, !41, i64 2538, !63, i64 2540, !41, i64 2544, !41, i64 2546, !56, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !63, i64 2560, !63, i64 2564, !36, i64 2568, !56, i64 2576, !63, i64 2580, !37, i64 2584, !96, i64 2616, !56, i64 3976, !56, i64 3980}
!91 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !41, i64 8, !41, i64 10, !63, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !92, i64 24, !93, i64 184}
!92 = !{!"ColorManagedViewSettings", !56, i64 0, !56, i64 4, !37, i64 8, !37, i64 72, !63, i64 136, !63, i64 140, !36, i64 144, !36, i64 152}
!93 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!94 = !{!"QuicktimeCodecSettings", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12, !56, i64 16, !56, i64 20, !56, i64 24, !56, i64 28, !56, i64 32, !56, i64 36, !56, i64 40, !56, i64 44, !41, i64 48, !41, i64 50, !56, i64 52, !56, i64 56, !56, i64 60}
!95 = !{!"FFMpegCodecData", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12, !56, i64 16, !56, i64 20, !56, i64 24, !56, i64 28, !63, i64 32, !56, i64 36, !56, i64 40, !56, i64 44, !56, i64 48, !56, i64 52, !56, i64 56, !56, i64 60, !36, i64 64}
!96 = !{!"BakeData", !91, i64 0, !37, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !63, i64 1280, !63, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!97 = !{!"AudioData", !56, i64 0, !63, i64 4, !63, i64 8, !63, i64 12, !56, i64 16, !41, i64 20, !41, i64 22, !63, i64 24, !63, i64 28}
!98 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!99 = !{!"GameData", !98, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !37, i64 34, !100, i64 40, !41, i64 64, !41, i64 66, !63, i64 68, !101, i64 72, !63, i64 128, !63, i64 132, !56, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !63, i64 164, !63, i64 168, !63, i64 172, !63, i64 176, !63, i64 180}
!100 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !63, i64 8, !63, i64 12, !36, i64 16}
!101 = !{!"RecastData", !63, i64 0, !63, i64 4, !63, i64 8, !63, i64 12, !63, i64 16, !63, i64 20, !63, i64 24, !63, i64 28, !63, i64 32, !63, i64 36, !56, i64 40, !63, i64 44, !63, i64 48, !41, i64 52, !41, i64 54}
!102 = !{!"UnitSettings", !63, i64 0, !37, i64 4, !37, i64 5, !41, i64 6}
!103 = !{!"PhysicsSettings", !37, i64 0, !56, i64 12, !56, i64 16, !56, i64 20}
!104 = !{!"long", !37, i64 0}
!105 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!106 = !{!88, !56, i64 680}
!107 = !{!108, !36, i64 16}
!108 = !{!"bGPDstroke", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !56, i64 32, !41, i64 36, !41, i64 38, !71, i64 40}
!109 = !{!108, !56, i64 32}
!110 = distinct !{!110, !111}
!111 = !{!"llvm.loop.mustprogress"}
!112 = distinct !{!112, !111}
!113 = distinct !{!113, !111}
!114 = !{!"view3d_ruler.c:ruler_info_draw_pixel"}
!115 = !{!116, !63, i64 10908}
!116 = !{!"UserDef", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12, !56, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !56, i64 8468, !41, i64 8472, !41, i64 8474, !41, i64 8476, !41, i64 8478, !41, i64 8480, !41, i64 8482, !56, i64 8484, !56, i64 8488, !56, i64 8492, !41, i64 8496, !41, i64 8498, !56, i64 8500, !56, i64 8504, !56, i64 8508, !56, i64 8512, !56, i64 8516, !56, i64 8520, !56, i64 8524, !41, i64 8528, !41, i64 8530, !41, i64 8532, !41, i64 8534, !39, i64 8536, !39, i64 8552, !39, i64 8568, !39, i64 8584, !39, i64 8600, !39, i64 8616, !39, i64 8632, !37, i64 8648, !41, i64 8712, !41, i64 8714, !41, i64 8716, !41, i64 8718, !41, i64 8720, !41, i64 8722, !41, i64 8724, !41, i64 8726, !37, i64 8728, !41, i64 8896, !41, i64 8898, !41, i64 8900, !41, i64 8902, !41, i64 8904, !41, i64 8906, !41, i64 8908, !41, i64 8910, !56, i64 8912, !56, i64 8916, !41, i64 8920, !41, i64 8922, !41, i64 8924, !41, i64 8926, !41, i64 8928, !41, i64 8930, !41, i64 8932, !41, i64 8934, !41, i64 8936, !41, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !41, i64 8944, !41, i64 8946, !41, i64 8948, !41, i64 8950, !41, i64 8952, !41, i64 8954, !63, i64 8956, !63, i64 8960, !56, i64 8964, !41, i64 8968, !41, i64 8970, !63, i64 8972, !41, i64 8976, !41, i64 8978, !41, i64 8980, !41, i64 8982, !117, i64 8984, !37, i64 9760, !37, i64 9772, !41, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !56, i64 10896, !56, i64 10900, !63, i64 10904, !63, i64 10908, !56, i64 10912, !41, i64 10916, !41, i64 10918, !41, i64 10920, !41, i64 10922, !41, i64 10924, !41, i64 10926, !118, i64 10928}
!117 = !{!"ColorBand", !41, i64 0, !41, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!118 = !{!"WalkNavigation", !63, i64 0, !63, i64 4, !63, i64 8, !63, i64 12, !63, i64 16, !63, i64 20, !41, i64 24, !37, i64 26}
!119 = !{!116, !56, i64 8524}
!120 = !{!55, !56, i64 16}
!121 = distinct !{!121, !111}
!122 = distinct !{!122, !111}
!123 = distinct !{!123, !111}
!124 = distinct !{!124, !111}
!125 = distinct !{!125, !111}
!126 = !{!"view3d_ruler.c:view3d_ruler_header_update"}
!127 = !{!"view3d_ruler.c:ruler_item_add"}
!128 = !{!"view3d_ruler.c:copy_v3_v3"}
!129 = !{!"view3d_ruler.c:min_fff"}
!130 = !{!"view3d_ruler.c:len_v2v2"}
!131 = !{!"view3d_ruler.c:sub_v3_v3v3"}
!132 = !{!"view3d_ruler.c:normalize_v3"}
!133 = !{!"view3d_ruler.c:cross_v3_v3v3"}
!134 = !{!"view3d_ruler.c:madd_v3_v3v3fl"}
!135 = !{!"view3d_ruler.c:ruler_item_as_string"}
!136 = !{!102, !41, i64 6}
!137 = !{!102, !37, i64 4}
!138 = !{!102, !63, i64 0}
!139 = !{!"view3d_ruler.c:sub_v2_v2v2"}
!140 = !{!"view3d_ruler.c:normalize_v2"}
!141 = !{!"view3d_ruler.c:madd_v2_v2v2fl"}
!142 = !{!"view3d_ruler.c:ruler_item_active_get"}
!143 = !{!"view3d_ruler.c:min_ff"}
!144 = !{!"view3d_ruler.c:normalize_v3_v3"}
!145 = !{!"view3d_ruler.c:dot_v3v3"}
!146 = !{!"view3d_ruler.c:mul_v3_v3fl"}
!147 = !{!"view3d_ruler.c:zero_v3"}
!148 = !{!"view3d_ruler.c:len_v3v3"}
!149 = !{!"view3d_ruler.c:len_v3"}
!150 = !{!"view3d_ruler.c:normalize_v2_v2"}
!151 = !{!"view3d_ruler.c:dot_v2v2"}
!152 = !{!"view3d_ruler.c:mul_v2_v2fl"}
!153 = !{!"view3d_ruler.c:zero_v2"}
!154 = !{!"view3d_ruler.c:view3d_ruler_end"}
!155 = !{!"view3d_ruler.c:view3d_ruler_free"}
!156 = !{!"view3d_ruler.c:BLI_listbase_is_empty"}
!157 = !{!39, !36, i64 0}
!158 = !{!"view3d_ruler.c:ruler_item_active_set"}
!159 = !{!"view3d_ruler.c:view3d_ruler_item_mousemove"}
!160 = !{!"view3d_ruler.c:negate_v3_v3"}
!161 = !{!"view3d_ruler.c:view3d_ruler_item_project"}
!162 = !{!"view3d_ruler.c:view3d_ruler_pick"}
!163 = distinct !{!163, !111}
!164 = !{i32 0, i32 3}
!165 = distinct !{!165, !111}
!166 = !{!"view3d_ruler.c:view3d_ruler_to_gpencil"}
!167 = !{!168, !41, i64 44}
!168 = !{!"bGPDlayer", !36, i64 0, !36, i64 8, !39, i64 16, !36, i64 32, !56, i64 40, !41, i64 44, !41, i64 46, !37, i64 48, !37, i64 64}
!169 = !{!168, !56, i64 40}
!170 = !{!171, !63, i64 12}
!171 = !{!"bGPDspoint", !63, i64 0, !63, i64 4, !63, i64 8, !63, i64 12, !63, i64 16}
!172 = distinct !{!172, !111}
!173 = distinct !{!173, !111}
!174 = !{!108, !41, i64 38}
!175 = distinct !{!175, !111}
!176 = !{!"view3d_ruler.c:ruler_item_remove"}
!177 = !{!"view3d_ruler.c:ED_view3d_snap_co"}
!178 = !{!"view3d_ruler.c:negate_v3"}
!179 = !{!"view3d_ruler.c:ED_view3d_snap_ray"}
!180 = !{!"view3d_ruler.c:len_squared_v2v2"}
!181 = !{!"view3d_ruler.c:min_axis_v3"}
