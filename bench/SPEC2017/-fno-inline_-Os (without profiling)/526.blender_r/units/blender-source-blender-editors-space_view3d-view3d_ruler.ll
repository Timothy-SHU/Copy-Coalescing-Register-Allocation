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
  store ptr @.str, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.1, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @view3d_ruler_invoke, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @view3d_ruler_cancel, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @view3d_ruler_modal, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_view3d_active, ptr %7, align 8, !tbaa !18
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %8, align 8, !tbaa !19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @view3d_ruler_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #1 {
  %4 = tail call ptr @CTX_wm_window(ptr noundef %0) #11
  %5 = tail call ptr @CTX_wm_area(ptr noundef %0) #11
  %6 = tail call ptr @CTX_wm_region(ptr noundef %0) #11
  %7 = load ptr, ptr @MEM_callocN, align 8, !tbaa !20
  %8 = tail call ptr %7(i64 noundef 80, ptr noundef nonnull @.str.3) #11
  %9 = tail call fastcc zeroext i8 @view3d_ruler_from_gpencil(ptr noundef %0, ptr noundef %8) #12, !range !21
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 252248064, ptr noundef null) #11
  br label %12

12:                                               ; preds = %11, %3
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %8, ptr %13, align 8, !tbaa !22
  %14 = getelementptr inbounds %struct.RulerInfo, ptr %8, i64 0, i32 6
  store ptr %4, ptr %14, align 8, !tbaa !24
  %15 = getelementptr inbounds %struct.RulerInfo, ptr %8, i64 0, i32 7
  store ptr %5, ptr %15, align 8, !tbaa !27
  %16 = getelementptr inbounds %struct.RulerInfo, ptr %8, i64 0, i32 8
  store ptr %6, ptr %16, align 8, !tbaa !28
  %17 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 20
  %18 = load ptr, ptr %17, align 8, !tbaa !29
  %19 = tail call ptr @ED_region_draw_cb_activate(ptr noundef %18, ptr noundef nonnull @ruler_info_draw_pixel, ptr noundef %8, i32 noundef 1) #11
  %20 = getelementptr inbounds %struct.RulerInfo, ptr %8, i64 0, i32 9
  store ptr %19, ptr %20, align 8, !tbaa !35
  tail call fastcc void @view3d_ruler_header_update(ptr noundef %5) #12
  tail call void @WM_cursor_modal_set(ptr noundef %4, i32 noundef 6) #11
  %21 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #11
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @view3d_ruler_cancel(ptr nocapture readnone %0, ptr nocapture noundef %1) #1 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !22
  tail call fastcc void @view3d_ruler_end(ptr noundef %4) #12
  tail call fastcc void @view3d_ruler_free(ptr noundef %4) #12
  store ptr null, ptr %3, align 8, !tbaa !22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @view3d_ruler_modal(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) #1 {
  %4 = alloca [2 x float], align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca [2 x [2 x float]], align 16
  %8 = alloca [256 x i8], align 16
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !22
  %11 = getelementptr inbounds %struct.RulerInfo, ptr %10, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !27
  %13 = getelementptr inbounds %struct.RulerInfo, ptr %10, i64 0, i32 8
  %14 = load ptr, ptr %13, align 8, !tbaa !28
  %15 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 30
  %16 = load ptr, ptr %15, align 8, !tbaa !36
  %17 = tail call ptr @CTX_wm_region(ptr noundef %0) #11
  %18 = icmp eq ptr %14, %17
  br i1 %18, label %19, label %207

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %21 = load i16, ptr %20, align 8, !tbaa !37
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
  %24 = load i16, ptr %23, align 2, !tbaa !40
  %25 = icmp eq i16 %24, 2
  %26 = getelementptr inbounds %struct.RulerInfo, ptr %10, i64 0, i32 4
  %27 = load i32, ptr %26, align 4, !tbaa !41
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
  %35 = load i8, ptr %34, align 4, !tbaa !42
  %36 = icmp eq i8 %35, 1
  br i1 %36, label %37, label %50

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.RulerItem, ptr %31, i64 0, i32 4
  %39 = load i32, ptr %38, align 8, !tbaa !44
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
  %48 = load i32, ptr %38, align 8, !tbaa !44
  %49 = and i32 %48, -2
  store i32 %49, ptr %38, align 8, !tbaa !44
  br label %50

50:                                               ; preds = %42, %47, %37, %33, %30
  %51 = phi i8 [ 0, %42 ], [ 1, %47 ], [ 0, %37 ], [ 0, %33 ], [ 0, %30 ]
  %52 = getelementptr inbounds %struct.RulerInfo, ptr %10, i64 0, i32 3
  %53 = load i32, ptr %52, align 8, !tbaa !45
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %50
  %57 = and i32 %53, -2
  store i32 %57, ptr %52, align 8, !tbaa !45
  br label %58

58:                                               ; preds = %56, %50
  %59 = phi i8 [ 1, %56 ], [ %51, %50 ]
  store i32 0, ptr %26, align 4, !tbaa !41
  br label %199

60:                                               ; preds = %22
  %61 = icmp eq i32 %27, 0
  br i1 %61, label %62, label %211

62:                                               ; preds = %60
  %63 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 18
  %64 = load i16, ptr %63, align 2, !tbaa !46
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %10) #12, !range !21
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %102, label %69

69:                                               ; preds = %66, %62
  %70 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #11
  %71 = getelementptr inbounds %struct.View3D, ptr %70, i64 0, i32 24
  %72 = load i16, ptr %71, align 8, !tbaa !47
  %73 = icmp sgt i16 %72, 2
  %74 = tail call fastcc ptr @ruler_item_active_get(ptr noundef nonnull %10) #12
  store i32 1, ptr %26, align 4, !tbaa !41
  %75 = tail call fastcc ptr @ruler_item_add(ptr noundef nonnull %10) #12
  tail call fastcc void @ruler_item_active_set(ptr noundef nonnull %10, ptr noundef %75) #12
  br i1 %73, label %76, label %84

76:                                               ; preds = %69
  %77 = getelementptr inbounds %struct.RulerItem, ptr %75, i64 0, i32 3
  store i8 0, ptr %77, align 4, !tbaa !42
  %78 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %79 = tail call fastcc zeroext i8 @view3d_ruler_item_mousemove(ptr noundef %0, ptr noundef nonnull %10, ptr noundef nonnull %78, i8 noundef zeroext 0, i8 noundef zeroext 1) #12, !range !21
  %80 = getelementptr inbounds %struct.RulerInfo, ptr %10, i64 0, i32 5
  %81 = load i8, ptr %77, align 4, !tbaa !42
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
  %89 = load i8, ptr %88, align 4, !tbaa !42
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
  store i8 2, ptr %101, align 4, !tbaa !42
  br label %203

102:                                              ; preds = %66
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  %103 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %104 = load <2 x i32>, ptr %103, align 4, !tbaa !49
  %105 = sitofp <2 x i32> %104 to <2 x float>
  store <2 x float> %105, ptr %4, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  %106 = call fastcc zeroext i8 @view3d_ruler_pick(ptr noundef nonnull %10, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #12, !range !21
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %149, label %108

108:                                              ; preds = %102
  %109 = load i32, ptr %6, align 4, !tbaa !49
  %110 = icmp eq i32 %109, -1
  %111 = load ptr, ptr %5, align 8, !tbaa !20
  br i1 %110, label %112, label %142

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.RulerItem, ptr %111, i64 0, i32 4
  %114 = load i32, ptr %113, align 8, !tbaa !44
  %115 = and i32 %114, 1
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %149

117:                                              ; preds = %112
  call fastcc void @ruler_item_active_set(ptr noundef nonnull %10, ptr noundef nonnull %111) #12
  %118 = load i32, ptr %113, align 8, !tbaa !44
  %119 = or i32 %118, 1
  store i32 %119, ptr %113, align 8, !tbaa !44
  %120 = getelementptr inbounds %struct.RulerItem, ptr %111, i64 0, i32 3
  store i8 1, ptr %120, align 4, !tbaa !42
  store i32 1, ptr %26, align 4, !tbaa !41
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
  %135 = load i16, ptr %134, align 8, !tbaa !51
  %136 = icmp ne i16 %135, 0
  %137 = zext i1 %136 to i8
  %138 = load i16, ptr %63, align 2, !tbaa !46
  %139 = icmp ne i16 %138, 0
  %140 = zext i1 %139 to i8
  %141 = call fastcc zeroext i8 @view3d_ruler_item_mousemove(ptr noundef %0, ptr noundef nonnull %10, ptr noundef nonnull %103, i8 noundef zeroext %137, i8 noundef zeroext %140) #12, !range !21
  br label %149

142:                                              ; preds = %108
  call fastcc void @ruler_item_active_set(ptr noundef nonnull %10, ptr noundef %111) #12
  %143 = trunc i32 %109 to i8
  %144 = getelementptr inbounds %struct.RulerItem, ptr %111, i64 0, i32 3
  store i8 %143, ptr %144, align 4, !tbaa !42
  store i32 1, ptr %26, align 4, !tbaa !41
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
  %154 = load i16, ptr %153, align 2, !tbaa !46
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
  %165 = load i32, ptr %164, align 4, !tbaa !41
  %166 = icmp eq i32 %165, 1
  br i1 %166, label %167, label %211

167:                                              ; preds = %163
  %168 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %169 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 17
  %170 = load i16, ptr %169, align 8, !tbaa !51
  %171 = icmp ne i16 %170, 0
  %172 = zext i1 %171 to i8
  %173 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 18
  %174 = load i16, ptr %173, align 2, !tbaa !46
  %175 = icmp ne i16 %174, 0
  %176 = zext i1 %175 to i8
  %177 = tail call fastcc zeroext i8 @view3d_ruler_item_mousemove(ptr noundef %0, ptr noundef nonnull %10, ptr noundef nonnull %168, i8 noundef zeroext %172, i8 noundef zeroext %176) #12, !range !21
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %211, label %203

179:                                              ; preds = %19
  tail call fastcc void @view3d_ruler_to_gpencil(ptr noundef %0, ptr noundef nonnull %10) #12
  br label %203

180:                                              ; preds = %19
  %181 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %182 = load i16, ptr %181, align 2, !tbaa !40
  %183 = icmp eq i16 %182, 1
  br i1 %183, label %184, label %211

184:                                              ; preds = %180
  %185 = getelementptr inbounds %struct.RulerInfo, ptr %10, i64 0, i32 4
  %186 = load i32, ptr %185, align 4, !tbaa !41
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %211

188:                                              ; preds = %184
  %189 = tail call fastcc ptr @ruler_item_active_get(ptr noundef nonnull %10) #12
  %190 = icmp eq ptr %189, null
  br i1 %190, label %211, label %191

191:                                              ; preds = %188
  %192 = getelementptr inbounds %struct.RulerItem, ptr %189, i64 0, i32 1
  %193 = load ptr, ptr %192, align 8, !tbaa !52
  %194 = icmp eq ptr %193, null
  br i1 %194, label %195, label %197

195:                                              ; preds = %191
  %196 = load ptr, ptr %189, align 8, !tbaa !53
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
  %210 = load ptr, ptr %209, align 8, !tbaa !24
  call void @WM_cursor_modal_restore(ptr noundef %210) #11
  call fastcc void @view3d_ruler_end(ptr noundef nonnull %10) #12
  call fastcc void @view3d_ruler_free(ptr noundef nonnull %10) #12
  store ptr null, ptr %9, align 8, !tbaa !22
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
define internal fastcc zeroext i8 @view3d_ruler_from_gpencil(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #11
  %4 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 39
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = icmp eq ptr %5, null
  br i1 %6, label %52, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.bGPdata, ptr %5, i64 0, i32 1
  %9 = tail call ptr @BLI_findstring(ptr noundef nonnull %8, ptr noundef nonnull @.str.4, i32 noundef 64) #11
  %10 = icmp eq ptr %9, null
  br i1 %10, label %52, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !73
  %14 = tail call ptr @gpencil_layer_getframe(ptr noundef nonnull %9, i32 noundef %13, i16 noundef signext 0) #11
  %15 = icmp eq ptr %14, null
  br i1 %15, label %52, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.bGPDframe, ptr %14, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !20
  %19 = icmp eq ptr %18, null
  br i1 %19, label %52, label %20

20:                                               ; preds = %16, %48
  %21 = phi ptr [ %50, %48 ], [ %18, %16 ]
  %22 = phi i8 [ %49, %48 ], [ 0, %16 ]
  %23 = getelementptr inbounds %struct.bGPDstroke, ptr %21, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !74
  %25 = getelementptr inbounds %struct.bGPDstroke, ptr %21, i64 0, i32 4
  %26 = load i32, ptr %25, align 8, !tbaa !76
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
  br i1 %35, label %36, label %29, !llvm.loop !77

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.RulerItem, ptr %28, i64 0, i32 4
  %38 = load i32, ptr %37, align 8, !tbaa !44
  %39 = or i32 %38, 1
  store i32 %39, ptr %37, align 8, !tbaa !44
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
  br i1 %43, label %42, label %48, !llvm.loop !79

48:                                               ; preds = %42, %20, %36
  %49 = phi i8 [ 1, %36 ], [ %22, %20 ], [ 1, %42 ]
  %50 = load ptr, ptr %21, align 8, !tbaa !20
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %20, !llvm.loop !80

52:                                               ; preds = %48, %16, %7, %11, %2
  %53 = phi i8 [ 0, %2 ], [ 0, %7 ], [ 0, %11 ], [ 0, %16 ], [ %49, %48 ]
  ret i8 %53
}

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_region_draw_cb_activate(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ruler_info_draw_pixel(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
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
  %30 = load ptr, ptr %29, align 8, !tbaa !28
  %31 = getelementptr inbounds %struct.ARegion, ptr %30, i64 0, i32 30
  %32 = load ptr, ptr %31, align 8, !tbaa !36
  %33 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !81
  %34 = fmul float %33, 4.000000e+00
  %35 = fmul float %33, 6.400000e+01
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 -2130706433, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %6) #13
  tail call void @glEnable(i32 noundef 2848) #11
  %36 = load i32, ptr @blf_mono_font, align 4, !tbaa !49
  tail call void @BLF_enable(i32 noundef %36, i32 noundef 1) #11
  %37 = load i32, ptr @blf_mono_font, align 4, !tbaa !49
  %38 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !81
  %39 = fmul float %38, 1.400000e+01
  %40 = fptosi float %39 to i32
  %41 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !85
  tail call void @BLF_size(i32 noundef %37, i32 noundef %40, i32 noundef %41) #11
  %42 = load i32, ptr @blf_mono_font, align 4, !tbaa !49
  tail call void @BLF_rotation(i32 noundef %42, float noundef 0.000000e+00) #11
  call void @UI_GetThemeColor3ubv(i32 noundef 3, ptr noundef nonnull %5) #11
  call void @UI_GetThemeColor3ubv(i32 noundef 25, ptr noundef nonnull %6) #11
  %43 = load ptr, ptr %2, align 8, !tbaa !20
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
  %62 = load i32, ptr %46, align 8, !tbaa !86
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
  br i1 %69, label %70, label %63, !llvm.loop !87

70:                                               ; preds = %63
  %71 = icmp eq i32 %61, %62
  call void @glEnable(i32 noundef 3042) #11
  %72 = select i1 %71, i32 16777215, i32 0
  call void @cpack(i32 noundef %72) #11
  %73 = getelementptr inbounds %struct.RulerItem, ptr %60, i64 0, i32 4
  %74 = load i32, ptr %73, align 8, !tbaa !44
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
  br i1 %81, label %82, label %77, !llvm.loop !88

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
  br i1 %87, label %88, label %83, !llvm.loop !89

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
  br i1 %106, label %107, label %101, !llvm.loop !90

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
  %108 = load i32, ptr @blf_mono_font, align 4, !tbaa !49
  call void @BLF_width_and_height(i32 noundef %108, ptr noundef nonnull %16, i64 noundef 256, ptr noundef nonnull %17, ptr noundef nonnull %49) #11
  %109 = load float, ptr %47, align 8, !tbaa !50
  %110 = fadd float %109, 8.000000e+00
  %111 = load float, ptr %50, align 4, !tbaa !50
  %112 = load float, ptr %49, align 4, !tbaa !50
  %113 = fmul float %112, 5.000000e-01
  %114 = fsub float %111, %113
  call void @glColor4ubv(ptr noundef nonnull %4) #11
  call void @uiSetRoundBox(i32 noundef 15) #11
  %115 = fsub float %110, %34
  %116 = fsub float %114, %34
  %117 = fadd float %34, %110
  %118 = load float, ptr %17, align 4, !tbaa !50
  %119 = fadd float %117, %118
  %120 = fadd float %34, %114
  %121 = load float, ptr %49, align 4, !tbaa !50
  %122 = fadd float %120, %121
  call void @uiRoundBox(float noundef %115, float noundef %116, float noundef %119, float noundef %122, float noundef %34) #11
  call void @glColor3ubv(ptr noundef nonnull %5) #11
  %123 = load i32, ptr @blf_mono_font, align 4, !tbaa !49
  call void @BLF_position(i32 noundef %123, float noundef %110, float noundef %114, float noundef 0.000000e+00) #11
  %124 = load i32, ptr @blf_mono_font, align 4, !tbaa !49
  call void @BLF_rotation(i32 noundef %124, float noundef 0.000000e+00) #11
  %125 = load i32, ptr @blf_mono_font, align 4, !tbaa !49
  call void @BLF_draw(i32 noundef %125, ptr noundef nonnull %16, i64 noundef 256) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #13
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %16) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %20) #13
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %47) #12
  %126 = load float, ptr %51, align 4, !tbaa !50
  %127 = fneg float %126
  store float %127, ptr %18, align 4, !tbaa !50
  %128 = load float, ptr %7, align 4, !tbaa !50
  store float %128, ptr %52, align 4, !tbaa !50
  call fastcc void @normalize_v2(ptr noundef nonnull %18) #12
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %7, ptr noundef nonnull %47, ptr noundef nonnull %48) #12
  %129 = load float, ptr %51, align 4, !tbaa !50
  %130 = fneg float %129
  store float %130, ptr %19, align 4, !tbaa !50
  %131 = load float, ptr %7, align 4, !tbaa !50
  store float %131, ptr %53, align 4, !tbaa !50
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
  %132 = load float, ptr %47, align 8, !tbaa !50
  %133 = fadd float %132, -4.000000e+00
  %134 = load float, ptr %50, align 4, !tbaa !50
  %135 = fadd float %134, -4.000000e+00
  call void @glVertex2f(float noundef %133, float noundef %135) #11
  %136 = load float, ptr %47, align 8, !tbaa !50
  %137 = fadd float %136, 4.000000e+00
  %138 = load float, ptr %50, align 4, !tbaa !50
  %139 = fadd float %138, 4.000000e+00
  call void @glVertex2f(float noundef %137, float noundef %139) #11
  %140 = load float, ptr %47, align 8, !tbaa !50
  %141 = fadd float %140, -4.000000e+00
  %142 = load float, ptr %50, align 4, !tbaa !50
  %143 = fadd float %142, 4.000000e+00
  call void @glVertex2f(float noundef %141, float noundef %143) #11
  %144 = load float, ptr %47, align 8, !tbaa !50
  %145 = fadd float %144, 4.000000e+00
  %146 = load float, ptr %50, align 4, !tbaa !50
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
  %149 = load i32, ptr @blf_mono_font, align 4, !tbaa !49
  call void @BLF_width_and_height(i32 noundef %149, ptr noundef nonnull %21, i64 noundef 256, ptr noundef nonnull %22, ptr noundef nonnull %54) #11
  call void @mid_v2_v2v2(ptr noundef nonnull %23, ptr noundef nonnull %8, ptr noundef nonnull %48) #11
  %150 = load <2 x float>, ptr %22, align 8, !tbaa !50
  %151 = fmul <2 x float> %150, <float 5.000000e-01, float 5.000000e-01>
  %152 = load <2 x float>, ptr %23, align 8, !tbaa !50
  %153 = fsub <2 x float> %152, %151
  store <2 x float> %153, ptr %23, align 8, !tbaa !50
  call void @glColor4ubv(ptr noundef nonnull %4) #11
  call void @uiSetRoundBox(i32 noundef 15) #11
  %154 = load float, ptr %23, align 8, !tbaa !50
  %155 = fsub float %154, %34
  %156 = load float, ptr %55, align 4, !tbaa !50
  %157 = fsub float %156, %34
  %158 = fadd float %34, %154
  %159 = load float, ptr %22, align 8, !tbaa !50
  %160 = fadd float %158, %159
  %161 = fadd float %34, %156
  %162 = load float, ptr %54, align 4, !tbaa !50
  %163 = fadd float %161, %162
  call void @uiRoundBox(float noundef %155, float noundef %157, float noundef %160, float noundef %163, float noundef %34) #11
  call void @glColor3ubv(ptr noundef nonnull %5) #11
  %164 = load i32, ptr @blf_mono_font, align 4, !tbaa !49
  %165 = load float, ptr %23, align 8, !tbaa !50
  %166 = load float, ptr %55, align 4, !tbaa !50
  call void @BLF_position(i32 noundef %164, float noundef %165, float noundef %166, float noundef 0.000000e+00) #11
  %167 = load i32, ptr @blf_mono_font, align 4, !tbaa !49
  call void @BLF_draw(i32 noundef %167, ptr noundef nonnull %21, i64 noundef 256) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %23) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %22) #13
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %21) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %24) #13
  %168 = load float, ptr %51, align 4, !tbaa !50
  %169 = fneg float %168
  store float %169, ptr %24, align 4, !tbaa !50
  %170 = load float, ptr %7, align 4, !tbaa !50
  store float %170, ptr %56, align 4, !tbaa !50
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
  %173 = load ptr, ptr %60, align 8, !tbaa !20
  %174 = icmp eq ptr %173, null
  br i1 %174, label %175, label %59, !llvm.loop !91

175:                                              ; preds = %171, %3
  call void @glDisable(i32 noundef 2848) #11
  %176 = load i32, ptr @blf_mono_font, align 4, !tbaa !49
  call void @BLF_disable(i32 noundef %176, i32 noundef 1) #11
  %177 = getelementptr inbounds %struct.RulerInfo, ptr %2, i64 0, i32 3
  %178 = load i32, ptr %177, align 8, !tbaa !45
  %179 = and i32 %178, 1
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %201, label %181

181:                                              ; preds = %175
  %182 = getelementptr inbounds %struct.RulerInfo, ptr %2, i64 0, i32 4
  %183 = load i32, ptr %182, align 4, !tbaa !41
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
  %192 = load i8, ptr %191, align 4, !tbaa !42
  %193 = zext i8 %192 to i64
  %194 = getelementptr inbounds %struct.RulerItem, ptr %186, i64 0, i32 2, i64 %193
  %195 = call i32 @ED_view3d_project_float_global(ptr noundef %1, ptr noundef nonnull %194, ptr noundef nonnull %26, i32 noundef 0) #11
  call void @cpack(i32 noundef 16777215) #11
  %196 = load float, ptr %26, align 4, !tbaa !50
  %197 = getelementptr inbounds [3 x float], ptr %26, i64 0, i64 1
  %198 = load float, ptr %197, align 4, !tbaa !50
  %199 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !81
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
define internal fastcc void @view3d_ruler_header_update(ptr noundef %0) unnamed_addr #1 {
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
define internal fastcc noundef ptr @ruler_item_add(ptr noundef %0) unnamed_addr #1 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !20
  %3 = tail call ptr %2(i64 noundef 64, ptr noundef nonnull @.str.5) #11
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef %3) #11
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 {
  %3 = load float, ptr %1, align 4, !tbaa !50
  store float %3, ptr %0, align 4, !tbaa !50
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !50
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !50
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !50
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !50
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
define internal fastcc noundef float @min_fff(float noundef %0, float noundef %1, float noundef %2) unnamed_addr #5 {
  %4 = tail call fastcc float @min_ff(float noundef %0, float noundef %1) #12
  %5 = tail call fastcc float @min_ff(float noundef %4, float noundef %2) #12
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 {
  %3 = load float, ptr %0, align 4, !tbaa !50
  %4 = load float, ptr %1, align 4, !tbaa !50
  %5 = fsub float %3, %4
  %6 = getelementptr inbounds float, ptr %0, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !50
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !50
  %10 = fsub float %7, %9
  %11 = fmul float %10, %10
  %12 = tail call float @llvm.fmuladd.f32(float %5, float %5, float %11)
  %13 = tail call float @llvm.sqrt.f32(float %12)
  ret float %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #4 {
  %4 = load float, ptr %1, align 4, !tbaa !50
  %5 = load float, ptr %2, align 4, !tbaa !50
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !50
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !50
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !50
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !50
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !50
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !50
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !50
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3(ptr nocapture noundef %0) unnamed_addr #7 {
  tail call fastcc void @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @cross_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #4 {
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !50
  %6 = getelementptr inbounds float, ptr %2, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !50
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !50
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !50
  %12 = fneg float %9
  %13 = fmul float %11, %12
  %14 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %13)
  store float %14, ptr %0, align 4, !tbaa !50
  %15 = load float, ptr %8, align 4, !tbaa !50
  %16 = load float, ptr %2, align 4, !tbaa !50
  %17 = load float, ptr %1, align 4, !tbaa !50
  %18 = load float, ptr %6, align 4, !tbaa !50
  %19 = fneg float %17
  %20 = fmul float %18, %19
  %21 = tail call float @llvm.fmuladd.f32(float %15, float %16, float %20)
  %22 = getelementptr inbounds float, ptr %0, i64 1
  store float %21, ptr %22, align 4, !tbaa !50
  %23 = load float, ptr %1, align 4, !tbaa !50
  %24 = load float, ptr %10, align 4, !tbaa !50
  %25 = load float, ptr %4, align 4, !tbaa !50
  %26 = load float, ptr %2, align 4, !tbaa !50
  %27 = fneg float %25
  %28 = fmul float %26, %27
  %29 = tail call float @llvm.fmuladd.f32(float %23, float %24, float %28)
  %30 = getelementptr inbounds float, ptr %0, i64 2
  store float %29, ptr %30, align 4, !tbaa !50
  ret void
}

; Function Attrs: optsize
declare float @angle_normalized_v3v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @axis_angle_to_quat(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glColor3ubv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v3_v3v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) unnamed_addr #4 {
  %5 = load float, ptr %1, align 4, !tbaa !50
  %6 = load float, ptr %2, align 4, !tbaa !50
  %7 = tail call float @llvm.fmuladd.f32(float %6, float %3, float %5)
  store float %7, ptr %0, align 4, !tbaa !50
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !50
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !50
  %12 = tail call float @llvm.fmuladd.f32(float %11, float %3, float %9)
  %13 = getelementptr inbounds float, ptr %0, i64 1
  store float %12, ptr %13, align 4, !tbaa !50
  %14 = getelementptr inbounds float, ptr %1, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !50
  %16 = getelementptr inbounds float, ptr %2, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !50
  %18 = tail call float @llvm.fmuladd.f32(float %17, float %3, float %15)
  %19 = getelementptr inbounds float, ptr %0, i64 2
  store float %18, ptr %19, align 4, !tbaa !50
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
define internal fastcc void @ruler_item_as_string(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.UnitSettings, ptr %1, i64 0, i32 3
  %6 = load i16, ptr %5, align 2, !tbaa !92
  %7 = trunc i16 %6 to i8
  %8 = and i8 %7, 1
  %9 = getelementptr inbounds %struct.RulerItem, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !44
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  %13 = getelementptr inbounds %struct.RulerItem, ptr %0, i64 0, i32 2
  br i1 %12, label %29, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.RulerItem, ptr %0, i64 0, i32 2, i64 1
  %16 = getelementptr inbounds %struct.RulerItem, ptr %0, i64 0, i32 2, i64 2
  %17 = tail call float @angle_v3v3v3(ptr noundef nonnull %13, ptr noundef nonnull %15, ptr noundef nonnull %16) #11
  %18 = getelementptr inbounds %struct.UnitSettings, ptr %1, i64 0, i32 1
  %19 = load i8, ptr %18, align 4, !tbaa !93
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
  %33 = load i8, ptr %32, align 4, !tbaa !93
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = fpext float %31 to double
  %37 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %2, i64 noundef 256, ptr noundef nonnull @.str.7, i32 noundef %3, double noundef %36) #11
  br label %44

38:                                               ; preds = %29
  %39 = zext i8 %33 to i32
  %40 = load float, ptr %1, align 4, !tbaa !94
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
define internal fastcc void @sub_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #4 {
  %4 = load float, ptr %1, align 4, !tbaa !50
  %5 = load float, ptr %2, align 4, !tbaa !50
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !50
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !50
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !50
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !50
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v2(ptr nocapture noundef %0) unnamed_addr #7 {
  tail call fastcc void @normalize_v2_v2(ptr noundef %0, ptr noundef %0) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v2_v2v2fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) unnamed_addr #4 {
  %5 = load float, ptr %1, align 4, !tbaa !50
  %6 = load float, ptr %2, align 4, !tbaa !50
  %7 = tail call float @llvm.fmuladd.f32(float %6, float %3, float %5)
  store float %7, ptr %0, align 4, !tbaa !50
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !50
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !50
  %12 = tail call float @llvm.fmuladd.f32(float %11, float %3, float %9)
  %13 = getelementptr inbounds float, ptr %0, i64 1
  store float %12, ptr %13, align 4, !tbaa !50
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
define internal fastcc ptr @ruler_item_active_get(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.RulerInfo, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !86
  %4 = tail call ptr @BLI_findlink(ptr noundef %0, i32 noundef %3) #11
  ret ptr %4
}

; Function Attrs: optsize
declare float @UI_GetThemeValuef(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @circ(float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0, float noundef %1) unnamed_addr #5 {
  %3 = fcmp olt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 {
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
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 {
  %3 = load float, ptr %0, align 4, !tbaa !50
  %4 = load float, ptr %1, align 4, !tbaa !50
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !50
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !50
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !50
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !50
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #4 {
  %4 = load float, ptr %1, align 4, !tbaa !50
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !50
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !50
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !50
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !50
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !50
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #0 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !50
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !50
  ret void
}

; Function Attrs: optsize
declare float @angle_v3v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @bUnit_AsString(ptr noundef, i32 noundef, double noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #13
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #12
  %4 = call fastcc float @len_v3(ptr noundef nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #13
  ret float %4
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %0) #12
  %3 = tail call float @sqrtf(float noundef %2) #11
  ret float %3
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 {
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
define internal fastcc float @dot_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 {
  %3 = load float, ptr %0, align 4, !tbaa !50
  %4 = load float, ptr %1, align 4, !tbaa !50
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !50
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !50
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  ret float %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v2_v2fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #4 {
  %4 = load float, ptr %1, align 4, !tbaa !50
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !50
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !50
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !50
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v2(ptr nocapture noundef writeonly %0) unnamed_addr #0 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !50
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_area_headerprint(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @view3d_ruler_end(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.RulerInfo, ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !28
  %4 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !29
  %6 = getelementptr inbounds %struct.RulerInfo, ptr %0, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !35
  tail call void @ED_region_draw_cb_exit(ptr noundef %5, ptr noundef %7) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @view3d_ruler_free(ptr noundef %0) unnamed_addr #1 {
  tail call void @BLI_freelistN(ptr noundef %0) #11
  %2 = load ptr, ptr @MEM_freeN, align 8, !tbaa !20
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
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = load ptr, ptr %0, align 8, !tbaa !95
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare ptr @CTX_wm_view3d(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ruler_item_active_set(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = tail call i32 @BLI_findindex(ptr noundef %0, ptr noundef %1) #11
  %4 = getelementptr inbounds %struct.RulerInfo, ptr %0, i64 0, i32 1
  store i32 %3, ptr %4, align 8, !tbaa !86
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @view3d_ruler_item_mousemove(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #1 {
  %6 = alloca [2 x float], align 8
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [2 x float], align 8
  %10 = tail call fastcc ptr @ruler_item_active_get(ptr noundef %1) #12
  %11 = getelementptr inbounds %struct.RulerInfo, ptr %1, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !45
  %13 = and i32 %12, -2
  store i32 %13, ptr %11, align 8, !tbaa !45
  %14 = icmp eq ptr %10, null
  br i1 %14, label %51, label %15

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.RulerItem, ptr %10, i64 0, i32 3
  %17 = load i8, ptr %16, align 4, !tbaa !42
  %18 = zext i8 %17 to i64
  %19 = getelementptr inbounds %struct.RulerItem, ptr %10, i64 0, i32 2, i64 %18
  %20 = getelementptr inbounds %struct.RulerInfo, ptr %1, i64 0, i32 5
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %19, ptr noundef nonnull %20) #12
  tail call fastcc void @view3d_ruler_item_project(ptr noundef nonnull %1, ptr noundef nonnull %19, ptr noundef %2) #12
  %21 = icmp eq i8 %3, 0
  br i1 %21, label %35, label %22

22:                                               ; preds = %15
  %23 = load i8, ptr %16, align 4, !tbaa !42
  %24 = icmp eq i8 %23, 1
  br i1 %24, label %35, label %25

25:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #13
  %26 = load <2 x i32>, ptr %2, align 4, !tbaa !49
  %27 = sitofp <2 x i32> %26 to <2 x float>
  store <2 x float> %27, ptr %6, align 8, !tbaa !50
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
  %38 = load <2 x i32>, ptr %2, align 4, !tbaa !49
  %39 = sitofp <2 x i32> %38 to <2 x float>
  store <2 x float> %39, ptr %9, align 8, !tbaa !50
  %40 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #11
  %41 = getelementptr inbounds %struct.View3D, ptr %40, i64 0, i32 24
  %42 = load i16, ptr %41, align 8, !tbaa !47
  %43 = icmp sgt i16 %42, 2
  %44 = zext i1 %43 to i8
  %45 = call fastcc zeroext i8 @ED_view3d_snap_co(ptr noundef %0, ptr noundef nonnull %19, ptr noundef null, ptr noundef nonnull %9, i8 noundef zeroext %44, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext %44) #12
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %37
  %48 = load i32, ptr %11, align 8, !tbaa !45
  %49 = or i32 %48, 1
  store i32 %49, ptr %11, align 8, !tbaa !45
  br label %50

50:                                               ; preds = %47, %37
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #13
  br label %51

51:                                               ; preds = %5, %34, %50, %35
  %52 = phi i8 [ 1, %35 ], [ 1, %50 ], [ 1, %34 ], [ 0, %5 ]
  ret i8 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 {
  %3 = load float, ptr %1, align 4, !tbaa !50
  %4 = fneg float %3
  store float %4, ptr %0, align 4, !tbaa !50
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !50
  %7 = fneg float %6
  %8 = getelementptr inbounds float, ptr %0, i64 1
  store float %7, ptr %8, align 4, !tbaa !50
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !50
  %11 = fneg float %10
  %12 = getelementptr inbounds float, ptr %0, i64 2
  store float %11, ptr %12, align 4, !tbaa !50
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @view3d_ruler_item_project(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.RulerInfo, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !28
  tail call void @ED_view3d_win_to_3d_int(ptr noundef %5, ptr noundef %1, ptr noundef %2, ptr noundef %1) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @view3d_ruler_pick(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #1 {
  %5 = alloca [3 x [2 x float]], align 16
  %6 = alloca [3 x float], align 4
  %7 = getelementptr inbounds %struct.RulerInfo, ptr %0, i64 0, i32 8
  %8 = load ptr, ptr %7, align 8, !tbaa !28
  %9 = load ptr, ptr %0, align 8, !tbaa !20
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
  br i1 %27, label %28, label %21, !llvm.loop !96

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.RulerItem, ptr %17, i64 0, i32 4
  %30 = load i32, ptr %29, align 8, !tbaa !44
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
  store float %39, ptr %6, align 4, !tbaa !50
  %40 = call fastcc float @len_squared_v2v2(ptr noundef nonnull %12, ptr noundef %1) #12
  store float %40, ptr %14, align 4, !tbaa !50
  %41 = call fastcc float @len_squared_v2v2(ptr noundef nonnull %13, ptr noundef %1) #12
  store float %41, ptr %15, align 4, !tbaa !50
  %42 = call fastcc float @min_fff(float noundef %39, float noundef %40, float noundef %41) #12
  %43 = fcmp olt float %42, 1.440000e+02
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = call fastcc i32 @min_axis_v3(ptr noundef nonnull %6) #12, !range !97
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
  %63 = load ptr, ptr %17, align 8, !tbaa !20
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %16, !llvm.loop !98

65:                                               ; preds = %59, %4
  %66 = phi ptr [ null, %4 ], [ %61, %59 ]
  %67 = phi i32 [ -1, %4 ], [ %62, %59 ]
  %68 = icmp ne ptr %66, null
  %69 = select i1 %68, i32 %67, i32 -1
  %70 = zext i1 %68 to i8
  store ptr %66, ptr %2, align 8, !tbaa !20
  store i32 %69, ptr %3, align 4, !tbaa !49
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
define internal fastcc void @view3d_ruler_to_gpencil(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #11
  %4 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 39
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = tail call ptr @gpencil_data_addnew(ptr noundef nonnull @.str.9) #11
  store ptr %8, ptr %4, align 8, !tbaa !54
  br label %9

9:                                                ; preds = %7, %2
  %10 = phi ptr [ %8, %7 ], [ %5, %2 ]
  %11 = getelementptr inbounds %struct.bGPdata, ptr %10, i64 0, i32 1
  %12 = tail call ptr @BLI_findstring(ptr noundef nonnull %11, ptr noundef nonnull @.str.4, i32 noundef 64) #11
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %9
  %15 = load ptr, ptr %4, align 8, !tbaa !54
  %16 = tail call ptr @gpencil_layer_addnew(ptr noundef %15, ptr noundef nonnull @.str.4, i32 noundef 0) #11
  %17 = getelementptr inbounds %struct.bGPDlayer, ptr %16, i64 0, i32 5
  store i16 1, ptr %17, align 4, !tbaa !99
  %18 = getelementptr inbounds %struct.bGPDlayer, ptr %16, i64 0, i32 4
  %19 = load i32, ptr %18, align 8, !tbaa !101
  %20 = or i32 %19, 1
  store i32 %20, ptr %18, align 8, !tbaa !101
  br label %21

21:                                               ; preds = %14, %9
  %22 = phi ptr [ %16, %14 ], [ %12, %9 ]
  %23 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 5
  %24 = load i32, ptr %23, align 8, !tbaa !73
  %25 = tail call ptr @gpencil_layer_getframe(ptr noundef nonnull %22, i32 noundef %24, i16 noundef signext 1) #11
  %26 = tail call zeroext i8 @free_gpencil_strokes(ptr noundef %25) #11
  %27 = load ptr, ptr %1, align 8, !tbaa !20
  %28 = icmp eq ptr %27, null
  br i1 %28, label %66, label %29

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.bGPDframe, ptr %25, i64 0, i32 2
  br label %31

31:                                               ; preds = %29, %62
  %32 = phi ptr [ %27, %29 ], [ %64, %62 ]
  %33 = load ptr, ptr @MEM_callocN, align 8, !tbaa !20
  %34 = tail call ptr %33(i64 noundef 48, ptr noundef nonnull @.str.10) #11
  %35 = getelementptr inbounds %struct.RulerItem, ptr %32, i64 0, i32 4
  %36 = load i32, ptr %35, align 8, !tbaa !44
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  %39 = getelementptr inbounds %struct.bGPDstroke, ptr %34, i64 0, i32 4
  %40 = getelementptr inbounds %struct.bGPDstroke, ptr %34, i64 0, i32 2
  br i1 %38, label %52, label %41

41:                                               ; preds = %31
  store i32 3, ptr %39, align 8, !tbaa !76
  %42 = load ptr, ptr @MEM_callocN, align 8, !tbaa !20
  %43 = tail call ptr %42(i64 noundef 60, ptr noundef nonnull @.str.11) #11
  store ptr %43, ptr %40, align 8, !tbaa !74
  br label %44

44:                                               ; preds = %41, %44
  %45 = phi i64 [ 0, %41 ], [ %50, %44 ]
  %46 = phi ptr [ %43, %41 ], [ %49, %44 ]
  %47 = getelementptr inbounds %struct.RulerItem, ptr %32, i64 0, i32 2, i64 %45
  tail call fastcc void @copy_v3_v3(ptr noundef %46, ptr noundef nonnull %47) #12
  %48 = getelementptr inbounds %struct.bGPDspoint, ptr %46, i64 0, i32 3
  store float 1.000000e+00, ptr %48, align 4, !tbaa !102
  %49 = getelementptr inbounds %struct.bGPDspoint, ptr %46, i64 1
  %50 = add nuw nsw i64 %45, 1
  %51 = icmp eq i64 %50, 3
  br i1 %51, label %62, label %44, !llvm.loop !104

52:                                               ; preds = %31
  store i32 2, ptr %39, align 8, !tbaa !76
  %53 = load ptr, ptr @MEM_callocN, align 8, !tbaa !20
  %54 = tail call ptr %53(i64 noundef 40, ptr noundef nonnull @.str.11) #11
  store ptr %54, ptr %40, align 8, !tbaa !74
  br label %55

55:                                               ; preds = %52, %55
  %56 = phi i1 [ true, %52 ], [ false, %55 ]
  %57 = phi i64 [ 0, %52 ], [ 2, %55 ]
  %58 = phi ptr [ %54, %52 ], [ %61, %55 ]
  %59 = getelementptr inbounds %struct.RulerItem, ptr %32, i64 0, i32 2, i64 %57
  tail call fastcc void @copy_v3_v3(ptr noundef %58, ptr noundef nonnull %59) #12
  %60 = getelementptr inbounds %struct.bGPDspoint, ptr %58, i64 0, i32 3
  store float 1.000000e+00, ptr %60, align 4, !tbaa !102
  %61 = getelementptr inbounds %struct.bGPDspoint, ptr %58, i64 1
  br i1 %56, label %55, label %62, !llvm.loop !105

62:                                               ; preds = %44, %55
  %63 = getelementptr inbounds %struct.bGPDstroke, ptr %34, i64 0, i32 6
  store i16 1, ptr %63, align 2, !tbaa !106
  tail call void @BLI_addtail(ptr noundef nonnull %30, ptr noundef %34) #11
  %64 = load ptr, ptr %32, align 8, !tbaa !20
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %31, !llvm.loop !107

66:                                               ; preds = %62, %21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ruler_item_remove(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  tail call void @BLI_remlink(ptr noundef %0, ptr noundef %1) #11
  %3 = load ptr, ptr @MEM_freeN, align 8, !tbaa !20
  tail call void %3(ptr noundef %1) #11
  ret void
}

; Function Attrs: optsize
declare void @WM_cursor_modal_restore(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ED_view3d_snap_co(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext %6, i8 noundef zeroext %7) unnamed_addr #1 {
  %9 = alloca float, align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #13
  store float 1.200000e+01, ptr %9, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #13
  store float 0x47DFFFFFE0000000, ptr %11, align 4, !tbaa !50
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
  store float 0x47DFFFFFE0000000, ptr %11, align 4, !tbaa !50
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
  store float 0x47DFFFFFE0000000, ptr %11, align 4, !tbaa !50
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
define internal fastcc void @negate_v3(ptr nocapture noundef %0) unnamed_addr #4 {
  %2 = load <2 x float>, ptr %0, align 4, !tbaa !50
  %3 = fneg <2 x float> %2
  store <2 x float> %3, ptr %0, align 4, !tbaa !50
  %4 = getelementptr inbounds float, ptr %0, i64 2
  %5 = load float, ptr %4, align 4, !tbaa !50
  %6 = fneg float %5
  store float %6, ptr %4, align 4, !tbaa !50
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ED_view3d_snap_ray(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 {
  %5 = alloca float, align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store float 1.200000e+01, ptr %5, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #13
  store float 0x47DFFFFFE0000000, ptr %7, align 4, !tbaa !50
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
define internal fastcc float @len_squared_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 {
  %3 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #12
  %4 = call fastcc float @dot_v2v2(ptr noundef nonnull %3, ptr noundef nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @min_axis_v3(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = load float, ptr %0, align 4, !tbaa !50
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !50
  %5 = getelementptr inbounds float, ptr %0, i64 2
  %6 = load float, ptr %5, align 4, !tbaa !50
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

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"wmOperatorType", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !10, i64 112, !7, i64 128, !7, i64 136, !7, i64 144, !11, i64 152, !12, i64 184}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"ListBase", !7, i64 0, !7, i64 8}
!11 = !{!"ExtensionRNA", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!12 = !{!"short", !8, i64 0}
!13 = !{!6, !7, i64 24}
!14 = !{!6, !7, i64 8}
!15 = !{!6, !7, i64 48}
!16 = !{!6, !7, i64 56}
!17 = !{!6, !7, i64 64}
!18 = !{!6, !7, i64 72}
!19 = !{!6, !12, i64 184}
!20 = !{!7, !7, i64 0}
!21 = !{i8 0, i8 2}
!22 = !{!23, !7, i64 96}
!23 = !{!"wmOperator", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !10, i64 128, !7, i64 144, !7, i64 152, !12, i64 160, !8, i64 162}
!24 = !{!25, !7, i64 48}
!25 = !{!"RulerInfo", !10, i64 0, !26, i64 16, !26, i64 20, !26, i64 24, !26, i64 28, !8, i64 32, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72}
!26 = !{!"int", !8, i64 0}
!27 = !{!25, !7, i64 56}
!28 = !{!25, !7, i64 64}
!29 = !{!30, !7, i64 240}
!30 = !{!"ARegion", !7, i64 0, !7, i64 8, !31, i64 16, !34, i64 176, !34, i64 192, !12, i64 208, !12, i64 210, !12, i64 212, !12, i64 214, !12, i64 216, !12, i64 218, !33, i64 220, !12, i64 224, !12, i64 226, !12, i64 228, !12, i64 230, !12, i64 232, !12, i64 234, !12, i64 236, !12, i64 238, !7, i64 240, !10, i64 248, !10, i64 264, !10, i64 280, !10, i64 296, !10, i64 312, !10, i64 328, !10, i64 344, !7, i64 360, !7, i64 368, !7, i64 376}
!31 = !{!"View2D", !32, i64 0, !32, i64 16, !34, i64 32, !34, i64 48, !34, i64 64, !8, i64 80, !8, i64 88, !33, i64 96, !33, i64 100, !12, i64 104, !12, i64 106, !12, i64 108, !12, i64 110, !12, i64 112, !12, i64 114, !12, i64 116, !12, i64 118, !12, i64 120, !12, i64 122, !12, i64 124, !12, i64 126, !7, i64 128, !26, i64 136, !26, i64 140, !7, i64 144, !7, i64 152}
!32 = !{!"rctf", !33, i64 0, !33, i64 4, !33, i64 8, !33, i64 12}
!33 = !{!"float", !8, i64 0}
!34 = !{!"rcti", !26, i64 0, !26, i64 4, !26, i64 8, !26, i64 12}
!35 = !{!25, !7, i64 72}
!36 = !{!30, !7, i64 376}
!37 = !{!38, !12, i64 16}
!38 = !{!"wmEvent", !7, i64 0, !7, i64 8, !12, i64 16, !12, i64 18, !26, i64 20, !26, i64 24, !8, i64 28, !8, i64 36, !8, i64 42, !8, i64 43, !12, i64 44, !12, i64 46, !26, i64 48, !26, i64 52, !39, i64 56, !26, i64 64, !26, i64 68, !12, i64 72, !12, i64 74, !12, i64 76, !12, i64 78, !12, i64 80, !12, i64 82, !7, i64 88, !7, i64 96, !12, i64 104, !12, i64 106, !26, i64 108, !7, i64 112}
!39 = !{!"double", !8, i64 0}
!40 = !{!38, !12, i64 18}
!41 = !{!25, !26, i64 28}
!42 = !{!43, !8, i64 52}
!43 = !{!"RulerItem", !7, i64 0, !7, i64 8, !8, i64 16, !8, i64 52, !26, i64 56, !26, i64 60}
!44 = !{!43, !26, i64 56}
!45 = !{!25, !26, i64 24}
!46 = !{!38, !12, i64 74}
!47 = !{!48, !12, i64 232}
!48 = !{!"View3D", !7, i64 0, !7, i64 8, !10, i64 16, !26, i64 32, !33, i64 36, !8, i64 40, !8, i64 56, !33, i64 72, !33, i64 76, !8, i64 80, !8, i64 81, !26, i64 84, !26, i64 88, !12, i64 92, !12, i64 94, !7, i64 96, !7, i64 104, !32, i64 112, !10, i64 128, !7, i64 144, !7, i64 152, !8, i64 160, !26, i64 224, !26, i64 228, !12, i64 232, !12, i64 234, !12, i64 236, !12, i64 238, !12, i64 240, !12, i64 242, !33, i64 244, !33, i64 248, !33, i64 252, !33, i64 256, !8, i64 260, !8, i64 272, !12, i64 284, !12, i64 286, !12, i64 288, !8, i64 290, !8, i64 291, !8, i64 292, !8, i64 293, !8, i64 294, !10, i64 296, !10, i64 312, !10, i64 328, !8, i64 344, !8, i64 345, !8, i64 346, !8, i64 347, !7, i64 352, !7, i64 360, !7, i64 368}
!49 = !{!26, !26, i64 0}
!50 = !{!33, !33, i64 0}
!51 = !{!38, !12, i64 72}
!52 = !{!43, !7, i64 8}
!53 = !{!43, !7, i64 0}
!54 = !{!55, !7, i64 4608}
!55 = !{!"Scene", !56, i64 0, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !10, i64 152, !7, i64 168, !7, i64 176, !8, i64 184, !8, i64 196, !8, i64 208, !8, i64 220, !26, i64 232, !26, i64 236, !26, i64 240, !12, i64 244, !8, i64 246, !8, i64 247, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !57, i64 280, !64, i64 4264, !10, i64 4296, !10, i64 4312, !7, i64 4328, !7, i64 4336, !7, i64 4344, !7, i64 4352, !7, i64 4360, !7, i64 4368, !12, i64 4376, !12, i64 4378, !26, i64 4380, !10, i64 4384, !65, i64 4400, !66, i64 4416, !69, i64 4600, !7, i64 4608, !70, i64 4616, !7, i64 4640, !71, i64 4648, !71, i64 4656, !59, i64 4664, !60, i64 4824, !72, i64 4888, !7, i64 4952}
!56 = !{!"ID", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !12, i64 98, !26, i64 100, !26, i64 104, !26, i64 108, !7, i64 112}
!57 = !{!"RenderData", !58, i64 0, !7, i64 248, !7, i64 256, !61, i64 264, !62, i64 328, !26, i64 400, !26, i64 404, !26, i64 408, !33, i64 412, !26, i64 416, !26, i64 420, !26, i64 424, !26, i64 428, !12, i64 432, !12, i64 434, !33, i64 436, !33, i64 440, !33, i64 444, !33, i64 448, !33, i64 452, !12, i64 456, !12, i64 458, !12, i64 460, !12, i64 462, !12, i64 464, !12, i64 466, !26, i64 468, !12, i64 472, !12, i64 474, !12, i64 476, !12, i64 478, !12, i64 480, !12, i64 482, !26, i64 484, !26, i64 488, !12, i64 492, !12, i64 494, !26, i64 496, !26, i64 500, !12, i64 504, !12, i64 506, !12, i64 508, !12, i64 510, !12, i64 512, !8, i64 514, !8, i64 515, !26, i64 516, !26, i64 520, !26, i64 524, !12, i64 528, !12, i64 530, !12, i64 532, !12, i64 534, !12, i64 536, !12, i64 538, !12, i64 540, !12, i64 542, !32, i64 544, !32, i64 560, !34, i64 576, !10, i64 592, !12, i64 608, !12, i64 610, !33, i64 612, !33, i64 616, !33, i64 620, !33, i64 624, !26, i64 628, !33, i64 632, !33, i64 636, !33, i64 640, !33, i64 644, !12, i64 648, !12, i64 650, !12, i64 652, !12, i64 654, !12, i64 656, !12, i64 658, !33, i64 660, !33, i64 664, !12, i64 668, !12, i64 670, !33, i64 672, !33, i64 676, !8, i64 680, !26, i64 1704, !12, i64 1708, !12, i64 1710, !8, i64 1712, !8, i64 2480, !8, i64 2496, !8, i64 2512, !8, i64 2513, !8, i64 2514, !8, i64 2515, !26, i64 2520, !12, i64 2524, !12, i64 2526, !33, i64 2528, !33, i64 2532, !12, i64 2536, !12, i64 2538, !33, i64 2540, !12, i64 2544, !12, i64 2546, !26, i64 2548, !12, i64 2552, !12, i64 2554, !12, i64 2556, !12, i64 2558, !33, i64 2560, !33, i64 2564, !7, i64 2568, !26, i64 2576, !33, i64 2580, !8, i64 2584, !63, i64 2616, !26, i64 3976, !26, i64 3980}
!58 = !{!"ImageFormatData", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !12, i64 8, !12, i64 10, !33, i64 12, !8, i64 16, !8, i64 17, !8, i64 18, !59, i64 24, !60, i64 184}
!59 = !{!"ColorManagedViewSettings", !26, i64 0, !26, i64 4, !8, i64 8, !8, i64 72, !33, i64 136, !33, i64 140, !7, i64 144, !7, i64 152}
!60 = !{!"ColorManagedDisplaySettings", !8, i64 0}
!61 = !{!"QuicktimeCodecSettings", !26, i64 0, !26, i64 4, !26, i64 8, !26, i64 12, !26, i64 16, !26, i64 20, !26, i64 24, !26, i64 28, !26, i64 32, !26, i64 36, !26, i64 40, !26, i64 44, !12, i64 48, !12, i64 50, !26, i64 52, !26, i64 56, !26, i64 60}
!62 = !{!"FFMpegCodecData", !26, i64 0, !26, i64 4, !26, i64 8, !26, i64 12, !26, i64 16, !26, i64 20, !26, i64 24, !26, i64 28, !33, i64 32, !26, i64 36, !26, i64 40, !26, i64 44, !26, i64 48, !26, i64 52, !26, i64 56, !26, i64 60, !7, i64 64}
!63 = !{!"BakeData", !58, i64 0, !8, i64 248, !12, i64 1272, !12, i64 1274, !12, i64 1276, !12, i64 1278, !33, i64 1280, !33, i64 1284, !8, i64 1288, !8, i64 1291, !8, i64 1292, !8, i64 1293, !8, i64 1296}
!64 = !{!"AudioData", !26, i64 0, !33, i64 4, !33, i64 8, !33, i64 12, !26, i64 16, !12, i64 20, !12, i64 22, !33, i64 24, !33, i64 28}
!65 = !{!"GameFraming", !8, i64 0, !8, i64 12, !8, i64 13, !8, i64 14, !8, i64 15}
!66 = !{!"GameData", !65, i64 0, !12, i64 16, !12, i64 18, !12, i64 20, !12, i64 22, !12, i64 24, !12, i64 26, !12, i64 28, !12, i64 30, !12, i64 32, !8, i64 34, !67, i64 40, !12, i64 64, !12, i64 66, !33, i64 68, !68, i64 72, !33, i64 128, !33, i64 132, !26, i64 136, !12, i64 140, !12, i64 142, !12, i64 144, !12, i64 146, !12, i64 148, !12, i64 150, !12, i64 152, !12, i64 154, !12, i64 156, !12, i64 158, !12, i64 160, !12, i64 162, !33, i64 164, !33, i64 168, !33, i64 172, !33, i64 176, !33, i64 180}
!67 = !{!"GameDome", !12, i64 0, !12, i64 2, !12, i64 4, !12, i64 6, !33, i64 8, !33, i64 12, !7, i64 16}
!68 = !{!"RecastData", !33, i64 0, !33, i64 4, !33, i64 8, !33, i64 12, !33, i64 16, !33, i64 20, !33, i64 24, !33, i64 28, !33, i64 32, !33, i64 36, !26, i64 40, !33, i64 44, !33, i64 48, !12, i64 52, !12, i64 54}
!69 = !{!"UnitSettings", !33, i64 0, !8, i64 4, !8, i64 5, !12, i64 6}
!70 = !{!"PhysicsSettings", !8, i64 0, !26, i64 12, !26, i64 16, !26, i64 20}
!71 = !{!"long", !8, i64 0}
!72 = !{!"ColorManagedColorspaceSettings", !8, i64 0}
!73 = !{!55, !26, i64 680}
!74 = !{!75, !7, i64 16}
!75 = !{!"bGPDstroke", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !26, i64 32, !12, i64 36, !12, i64 38, !39, i64 40}
!76 = !{!75, !26, i64 32}
!77 = distinct !{!77, !78}
!78 = !{!"llvm.loop.mustprogress"}
!79 = distinct !{!79, !78}
!80 = distinct !{!80, !78}
!81 = !{!82, !33, i64 10908}
!82 = !{!"UserDef", !26, i64 0, !26, i64 4, !26, i64 8, !26, i64 12, !26, i64 16, !8, i64 20, !8, i64 788, !8, i64 1556, !8, i64 2580, !8, i64 3348, !8, i64 4116, !8, i64 4884, !8, i64 5652, !8, i64 6420, !8, i64 7444, !26, i64 8468, !12, i64 8472, !12, i64 8474, !12, i64 8476, !12, i64 8478, !12, i64 8480, !12, i64 8482, !26, i64 8484, !26, i64 8488, !26, i64 8492, !12, i64 8496, !12, i64 8498, !26, i64 8500, !26, i64 8504, !26, i64 8508, !26, i64 8512, !26, i64 8516, !26, i64 8520, !26, i64 8524, !12, i64 8528, !12, i64 8530, !12, i64 8532, !12, i64 8534, !10, i64 8536, !10, i64 8552, !10, i64 8568, !10, i64 8584, !10, i64 8600, !10, i64 8616, !10, i64 8632, !8, i64 8648, !12, i64 8712, !12, i64 8714, !12, i64 8716, !12, i64 8718, !12, i64 8720, !12, i64 8722, !12, i64 8724, !12, i64 8726, !8, i64 8728, !12, i64 8896, !12, i64 8898, !12, i64 8900, !12, i64 8902, !12, i64 8904, !12, i64 8906, !12, i64 8908, !12, i64 8910, !26, i64 8912, !26, i64 8916, !12, i64 8920, !12, i64 8922, !12, i64 8924, !12, i64 8926, !12, i64 8928, !12, i64 8930, !12, i64 8932, !12, i64 8934, !12, i64 8936, !12, i64 8938, !8, i64 8940, !8, i64 8941, !8, i64 8942, !8, i64 8943, !12, i64 8944, !12, i64 8946, !12, i64 8948, !12, i64 8950, !12, i64 8952, !12, i64 8954, !33, i64 8956, !33, i64 8960, !26, i64 8964, !12, i64 8968, !12, i64 8970, !33, i64 8972, !12, i64 8976, !12, i64 8978, !12, i64 8980, !12, i64 8982, !83, i64 8984, !8, i64 9760, !8, i64 9772, !12, i64 9788, !8, i64 9790, !8, i64 9791, !8, i64 9792, !8, i64 9872, !26, i64 10896, !26, i64 10900, !33, i64 10904, !33, i64 10908, !26, i64 10912, !12, i64 10916, !12, i64 10918, !12, i64 10920, !12, i64 10922, !12, i64 10924, !12, i64 10926, !84, i64 10928}
!83 = !{!"ColorBand", !12, i64 0, !12, i64 2, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !8, i64 8}
!84 = !{!"WalkNavigation", !33, i64 0, !33, i64 4, !33, i64 8, !33, i64 12, !33, i64 16, !33, i64 20, !12, i64 24, !8, i64 26}
!85 = !{!82, !26, i64 8524}
!86 = !{!25, !26, i64 16}
!87 = distinct !{!87, !78}
!88 = distinct !{!88, !78}
!89 = distinct !{!89, !78}
!90 = distinct !{!90, !78}
!91 = distinct !{!91, !78}
!92 = !{!69, !12, i64 6}
!93 = !{!69, !8, i64 4}
!94 = !{!69, !33, i64 0}
!95 = !{!10, !7, i64 0}
!96 = distinct !{!96, !78}
!97 = !{i32 0, i32 3}
!98 = distinct !{!98, !78}
!99 = !{!100, !12, i64 44}
!100 = !{!"bGPDlayer", !7, i64 0, !7, i64 8, !10, i64 16, !7, i64 32, !26, i64 40, !12, i64 44, !12, i64 46, !8, i64 48, !8, i64 64}
!101 = !{!100, !26, i64 40}
!102 = !{!103, !33, i64 12}
!103 = !{!"bGPDspoint", !33, i64 0, !33, i64 4, !33, i64 8, !33, i64 12, !33, i64 16}
!104 = distinct !{!104, !78}
!105 = distinct !{!105, !78}
!106 = !{!75, !12, i64 38}
!107 = distinct !{!107, !78}
