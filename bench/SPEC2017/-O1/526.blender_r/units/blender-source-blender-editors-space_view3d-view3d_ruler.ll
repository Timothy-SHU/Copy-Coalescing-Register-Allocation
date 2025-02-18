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
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
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
%struct.bGPdata = type { %struct.ID, %struct.ListBase, i32, i16, i16, ptr }
%struct.bGPDframe = type { ptr, ptr, %struct.ListBase, i32, i32 }
%struct.bGPDstroke = type { ptr, ptr, ptr, ptr, i32, i16, i16, double }
%struct.RulerItem = type { ptr, ptr, [3 x [3 x float]], i8, i32, i32 }
%struct.bGPDspoint = type { float, float, float, float, float }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.RulerInfo = type { %struct.ListBase, i32, i32, i32, i32, [3 x float], ptr, ptr, ptr, ptr }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.View3D = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], [4 x float], float, float, i8, [3 x i8], i32, i32, i16, i16, ptr, ptr, %struct.rctf, %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, i16, i16, float, float, float, float, [3 x float], [3 x float], i16, i16, i16, i8, i8, i8, i8, [2 x i8], %struct.ListBase, %struct.ListBase, %struct.ListBase, i8, i8, i8, [5 x i8], ptr, ptr, ptr }
%struct.RegionView3D = type { [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [6 x [4 x float]], [6 x [4 x float]], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x [4 x float]], [4 x float], float, float, float, float, [3 x float], float, i8, i8, i8, i8, i8, [3 x i8], [2 x float], i16, i16, [4 x float], i16, i16, float, [3 x float], float, [3 x float] }
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
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

; Function Attrs: nounwind uwtable
define internal noundef i32 @view3d_ruler_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #1 {
  %4 = tail call ptr @CTX_wm_window(ptr noundef %0) #6
  %5 = tail call ptr @CTX_wm_area(ptr noundef %0) #6
  %6 = tail call ptr @CTX_wm_region(ptr noundef %0) #6
  %7 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %8 = tail call ptr %7(i64 noundef 80, ptr noundef nonnull @.str.3) #6
  %9 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %10 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 39
  %11 = load ptr, ptr %10, align 8, !tbaa !50
  %12 = icmp eq ptr %11, null
  br i1 %12, label %78, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.bGPdata, ptr %11, i64 0, i32 1
  %15 = tail call ptr @BLI_findstring(ptr noundef nonnull %14, ptr noundef nonnull @.str.4, i32 noundef 64) #6
  %16 = icmp eq ptr %15, null
  br i1 %16, label %78, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !73
  %20 = tail call ptr @gpencil_layer_getframe(ptr noundef nonnull %15, i32 noundef %19, i16 noundef signext 0) #6
  %21 = icmp eq ptr %20, null
  br i1 %21, label %78, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.bGPDframe, ptr %20, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !49
  %25 = icmp eq ptr %24, null
  br i1 %25, label %78, label %26

26:                                               ; preds = %22, %71
  %27 = phi ptr [ %73, %71 ], [ %24, %22 ]
  %28 = phi i8 [ %72, %71 ], [ 0, %22 ]
  %29 = getelementptr inbounds %struct.bGPDstroke, ptr %27, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !74
  %31 = getelementptr inbounds %struct.bGPDstroke, ptr %27, i64 0, i32 4
  %32 = load i32, ptr %31, align 8, !tbaa !77
  switch i32 %32, label %71 [
    i32 3, label %33
    i32 2, label %54
  ]

33:                                               ; preds = %26
  %34 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %35 = tail call ptr %34(i64 noundef 64, ptr noundef nonnull @.str.5) #6
  tail call void @BLI_addtail(ptr noundef %8, ptr noundef %35) #6
  br label %36

36:                                               ; preds = %33, %36
  %37 = phi i64 [ 0, %33 ], [ %48, %36 ]
  %38 = phi ptr [ %30, %33 ], [ %47, %36 ]
  %39 = getelementptr inbounds %struct.RulerItem, ptr %35, i64 0, i32 2, i64 %37
  %40 = load float, ptr %38, align 4, !tbaa !78
  store float %40, ptr %39, align 4, !tbaa !78
  %41 = getelementptr inbounds float, ptr %38, i64 1
  %42 = load float, ptr %41, align 4, !tbaa !78
  %43 = getelementptr inbounds float, ptr %39, i64 1
  store float %42, ptr %43, align 4, !tbaa !78
  %44 = getelementptr inbounds float, ptr %38, i64 2
  %45 = load float, ptr %44, align 4, !tbaa !78
  %46 = getelementptr inbounds float, ptr %39, i64 2
  store float %45, ptr %46, align 4, !tbaa !78
  %47 = getelementptr inbounds %struct.bGPDspoint, ptr %38, i64 1
  %48 = add nuw nsw i64 %37, 1
  %49 = icmp eq i64 %48, 3
  br i1 %49, label %50, label %36, !llvm.loop !79

50:                                               ; preds = %36
  %51 = getelementptr inbounds %struct.RulerItem, ptr %35, i64 0, i32 4
  %52 = load i32, ptr %51, align 8, !tbaa !82
  %53 = or i32 %52, 1
  store i32 %53, ptr %51, align 8, !tbaa !82
  br label %71

54:                                               ; preds = %26
  %55 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %56 = tail call ptr %55(i64 noundef 64, ptr noundef nonnull @.str.5) #6
  tail call void @BLI_addtail(ptr noundef %8, ptr noundef %56) #6
  br label %57

57:                                               ; preds = %54, %57
  %58 = phi i64 [ 0, %54 ], [ %69, %57 ]
  %59 = phi ptr [ %30, %54 ], [ %68, %57 ]
  %60 = getelementptr inbounds %struct.RulerItem, ptr %56, i64 0, i32 2, i64 %58
  %61 = load float, ptr %59, align 4, !tbaa !78
  store float %61, ptr %60, align 4, !tbaa !78
  %62 = getelementptr inbounds float, ptr %59, i64 1
  %63 = load float, ptr %62, align 4, !tbaa !78
  %64 = getelementptr inbounds float, ptr %60, i64 1
  store float %63, ptr %64, align 4, !tbaa !78
  %65 = getelementptr inbounds float, ptr %59, i64 2
  %66 = load float, ptr %65, align 4, !tbaa !78
  %67 = getelementptr inbounds float, ptr %60, i64 2
  store float %66, ptr %67, align 4, !tbaa !78
  %68 = getelementptr inbounds %struct.bGPDspoint, ptr %59, i64 1
  %69 = add nuw nsw i64 %58, 2
  %70 = icmp eq i64 %58, 0
  br i1 %70, label %57, label %71, !llvm.loop !84

71:                                               ; preds = %57, %50, %26
  %72 = phi i8 [ 1, %50 ], [ %28, %26 ], [ 1, %57 ]
  %73 = load ptr, ptr %27, align 8, !tbaa !49
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %26, !llvm.loop !85

75:                                               ; preds = %71
  %76 = icmp eq i8 %72, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %75
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 252248064, ptr noundef null) #6
  br label %78

78:                                               ; preds = %3, %13, %17, %22, %77, %75
  %79 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %8, ptr %79, align 8, !tbaa !86
  %80 = getelementptr inbounds %struct.RulerInfo, ptr %8, i64 0, i32 6
  store ptr %4, ptr %80, align 8, !tbaa !88
  %81 = getelementptr inbounds %struct.RulerInfo, ptr %8, i64 0, i32 7
  store ptr %5, ptr %81, align 8, !tbaa !90
  %82 = getelementptr inbounds %struct.RulerInfo, ptr %8, i64 0, i32 8
  store ptr %6, ptr %82, align 8, !tbaa !91
  %83 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 20
  %84 = load ptr, ptr %83, align 8, !tbaa !92
  %85 = tail call ptr @ED_region_draw_cb_activate(ptr noundef %84, ptr noundef nonnull @ruler_info_draw_pixel, ptr noundef %8, i32 noundef 1) #6
  %86 = getelementptr inbounds %struct.RulerInfo, ptr %8, i64 0, i32 9
  store ptr %85, ptr %86, align 8, !tbaa !95
  tail call void @ED_area_headerprint(ptr noundef %5, ptr noundef nonnull @.str.8) #6
  tail call void @WM_cursor_modal_set(ptr noundef %4, i32 noundef 6) #6
  %87 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #6
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal void @view3d_ruler_cancel(ptr nocapture readnone %0, ptr nocapture noundef %1) #1 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !86
  %5 = getelementptr inbounds %struct.RulerInfo, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !91
  %7 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 20
  %8 = load ptr, ptr %7, align 8, !tbaa !92
  %9 = getelementptr inbounds %struct.RulerInfo, ptr %4, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !95
  tail call void @ED_region_draw_cb_exit(ptr noundef %8, ptr noundef %10) #6
  tail call void @BLI_freelistN(ptr noundef %4) #6
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %11(ptr noundef %4) #6
  store ptr null, ptr %3, align 8, !tbaa !86
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @view3d_ruler_modal(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) #1 {
  %4 = alloca [3 x [2 x float]], align 16
  %5 = alloca [2 x float], align 4
  %6 = alloca [2 x [2 x float]], align 16
  %7 = alloca [256 x i8], align 16
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !86
  %10 = getelementptr inbounds %struct.RulerInfo, ptr %9, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !90
  %12 = getelementptr inbounds %struct.RulerInfo, ptr %9, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !91
  %14 = getelementptr inbounds %struct.ARegion, ptr %13, i64 0, i32 30
  %15 = load ptr, ptr %14, align 8, !tbaa !96
  %16 = tail call ptr @CTX_wm_region(ptr noundef %0) #6
  %17 = icmp eq ptr %13, %16
  br i1 %17, label %18, label %441

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %20 = load i16, ptr %19, align 8, !tbaa !97
  switch i16 %20, label %435 [
    i16 1, label %21
    i16 99, label %305
    i16 215, label %317
    i16 212, label %317
    i16 4, label %318
    i16 218, label %436
    i16 220, label %333
    i16 224, label %412
  ]

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %23 = load i16, ptr %22, align 2, !tbaa !99
  %24 = icmp eq i16 %23, 2
  %25 = getelementptr inbounds %struct.RulerInfo, ptr %9, i64 0, i32 4
  %26 = load i32, ptr %25, align 4, !tbaa !100
  br i1 %24, label %27, label %61

27:                                               ; preds = %21
  %28 = icmp eq i32 %26, 1
  br i1 %28, label %29, label %436

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.RulerInfo, ptr %9, i64 0, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !101
  %32 = tail call ptr @BLI_findlink(ptr noundef %9, i32 noundef %31) #6
  %33 = icmp eq ptr %32, null
  br i1 %33, label %51, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.RulerItem, ptr %32, i64 0, i32 3
  %36 = load i8, ptr %35, align 4, !tbaa !102
  %37 = icmp eq i8 %36, 1
  br i1 %37, label %38, label %51

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.RulerItem, ptr %32, i64 0, i32 4
  %40 = load i32, ptr %39, align 8, !tbaa !82
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.ARegion, ptr %13, i64 0, i32 3
  %45 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %46 = tail call zeroext i8 @BLI_rcti_isect_pt_v(ptr noundef nonnull %44, ptr noundef nonnull %45) #6
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, ptr %39, align 8, !tbaa !82
  %50 = and i32 %49, -2
  store i32 %50, ptr %39, align 8, !tbaa !82
  br label %51

51:                                               ; preds = %43, %48, %38, %34, %29
  %52 = phi i8 [ 0, %43 ], [ 1, %48 ], [ 0, %38 ], [ 0, %34 ], [ 0, %29 ]
  %53 = getelementptr inbounds %struct.RulerInfo, ptr %9, i64 0, i32 3
  %54 = load i32, ptr %53, align 8, !tbaa !103
  %55 = and i32 %54, 1
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %51
  %58 = and i32 %54, -2
  store i32 %58, ptr %53, align 8, !tbaa !103
  br label %59

59:                                               ; preds = %57, %51
  %60 = phi i8 [ 1, %57 ], [ %52, %51 ]
  store i32 0, ptr %25, align 4, !tbaa !100
  br label %436

61:                                               ; preds = %21
  %62 = icmp eq i32 %26, 0
  br i1 %62, label %63, label %436

63:                                               ; preds = %61
  %64 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 18
  %65 = load i16, ptr %64, align 2, !tbaa !104
  %66 = icmp eq i16 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load ptr, ptr %9, align 8, !tbaa !105
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %146

70:                                               ; preds = %67, %63
  %71 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #6
  %72 = getelementptr inbounds %struct.View3D, ptr %71, i64 0, i32 24
  %73 = load i16, ptr %72, align 8, !tbaa !106
  %74 = icmp sgt i16 %73, 2
  %75 = getelementptr inbounds %struct.RulerInfo, ptr %9, i64 0, i32 1
  %76 = load i32, ptr %75, align 8, !tbaa !101
  %77 = tail call ptr @BLI_findlink(ptr noundef %9, i32 noundef %76) #6
  store i32 1, ptr %25, align 4, !tbaa !100
  %78 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %79 = tail call ptr %78(i64 noundef 64, ptr noundef nonnull @.str.5) #6
  tail call void @BLI_addtail(ptr noundef %9, ptr noundef %79) #6
  %80 = tail call i32 @BLI_findindex(ptr noundef %9, ptr noundef %79) #6
  store i32 %80, ptr %75, align 8, !tbaa !101
  br i1 %74, label %81, label %96

81:                                               ; preds = %70
  %82 = getelementptr inbounds %struct.RulerItem, ptr %79, i64 0, i32 3
  store i8 0, ptr %82, align 4, !tbaa !102
  %83 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %84 = tail call fastcc zeroext i8 @view3d_ruler_item_mousemove(ptr noundef %0, ptr noundef %9, ptr noundef nonnull %83, i8 noundef zeroext 0, i8 noundef zeroext 1), !range !108
  %85 = getelementptr inbounds %struct.RulerInfo, ptr %9, i64 0, i32 5
  %86 = load i8, ptr %82, align 4, !tbaa !102
  %87 = zext i8 %86 to i64
  %88 = getelementptr inbounds %struct.RulerItem, ptr %79, i64 0, i32 2, i64 %87
  %89 = load float, ptr %88, align 4, !tbaa !78
  store float %89, ptr %85, align 4, !tbaa !78
  %90 = getelementptr inbounds float, ptr %88, i64 1
  %91 = load float, ptr %90, align 4, !tbaa !78
  %92 = getelementptr inbounds %struct.RulerInfo, ptr %9, i64 0, i32 5, i64 1
  store float %91, ptr %92, align 4, !tbaa !78
  %93 = getelementptr inbounds float, ptr %88, i64 2
  %94 = load float, ptr %93, align 4, !tbaa !78
  %95 = getelementptr inbounds %struct.RulerInfo, ptr %9, i64 0, i32 5, i64 2
  store float %94, ptr %95, align 4, !tbaa !78
  br label %135

96:                                               ; preds = %70
  %97 = icmp eq ptr %77, null
  %98 = getelementptr inbounds %struct.RulerInfo, ptr %9, i64 0, i32 5
  %99 = getelementptr inbounds %struct.RulerInfo, ptr %9, i64 0, i32 5, i64 2
  br i1 %97, label %111, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.RulerItem, ptr %77, i64 0, i32 3
  %102 = load i8, ptr %101, align 4, !tbaa !102
  %103 = zext i8 %102 to i64
  %104 = getelementptr inbounds %struct.RulerItem, ptr %77, i64 0, i32 2, i64 %103
  %105 = load float, ptr %104, align 4, !tbaa !78
  store float %105, ptr %98, align 4, !tbaa !78
  %106 = getelementptr inbounds float, ptr %104, i64 1
  %107 = load float, ptr %106, align 4, !tbaa !78
  %108 = getelementptr inbounds %struct.RulerInfo, ptr %9, i64 0, i32 5, i64 1
  store float %107, ptr %108, align 4, !tbaa !78
  %109 = getelementptr inbounds float, ptr %104, i64 2
  %110 = load float, ptr %109, align 4, !tbaa !78
  br label %122

111:                                              ; preds = %96
  %112 = getelementptr inbounds %struct.RegionView3D, ptr %15, i64 0, i32 22
  %113 = load float, ptr %112, align 4, !tbaa !78
  %114 = fneg float %113
  store float %114, ptr %98, align 4, !tbaa !78
  %115 = getelementptr inbounds %struct.RegionView3D, ptr %15, i64 0, i32 22, i64 1
  %116 = load float, ptr %115, align 4, !tbaa !78
  %117 = fneg float %116
  %118 = getelementptr inbounds %struct.RulerInfo, ptr %9, i64 0, i32 5, i64 1
  store float %117, ptr %118, align 4, !tbaa !78
  %119 = getelementptr inbounds %struct.RegionView3D, ptr %15, i64 0, i32 22, i64 2
  %120 = load float, ptr %119, align 4, !tbaa !78
  %121 = fneg float %120
  br label %122

122:                                              ; preds = %111, %100
  %123 = phi float [ %121, %111 ], [ %110, %100 ]
  store float %123, ptr %99, align 4, !tbaa !78
  %124 = getelementptr inbounds %struct.RulerItem, ptr %79, i64 0, i32 2
  %125 = getelementptr inbounds %struct.RulerInfo, ptr %9, i64 0, i32 5
  %126 = load float, ptr %125, align 4, !tbaa !78
  store float %126, ptr %124, align 4, !tbaa !78
  %127 = getelementptr inbounds %struct.RulerInfo, ptr %9, i64 0, i32 5, i64 1
  %128 = load float, ptr %127, align 4, !tbaa !78
  %129 = getelementptr inbounds %struct.RulerItem, ptr %79, i64 0, i32 2, i64 0, i64 1
  store float %128, ptr %129, align 4, !tbaa !78
  %130 = getelementptr inbounds %struct.RulerInfo, ptr %9, i64 0, i32 5, i64 2
  %131 = load float, ptr %130, align 4, !tbaa !78
  %132 = getelementptr inbounds %struct.RulerItem, ptr %79, i64 0, i32 2, i64 0, i64 2
  store float %131, ptr %132, align 4, !tbaa !78
  %133 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %134 = load ptr, ptr %12, align 8, !tbaa !91
  tail call void @ED_view3d_win_to_3d_int(ptr noundef %134, ptr noundef nonnull %124, ptr noundef nonnull %133, ptr noundef nonnull %124) #6
  br label %135

135:                                              ; preds = %122, %81
  %136 = getelementptr inbounds %struct.RulerItem, ptr %79, i64 0, i32 2
  %137 = getelementptr inbounds %struct.RulerItem, ptr %79, i64 0, i32 2, i64 2
  %138 = load float, ptr %136, align 4, !tbaa !78
  store float %138, ptr %137, align 4, !tbaa !78
  %139 = getelementptr inbounds %struct.RulerItem, ptr %79, i64 0, i32 2, i64 0, i64 1
  %140 = load float, ptr %139, align 4, !tbaa !78
  %141 = getelementptr inbounds %struct.RulerItem, ptr %79, i64 0, i32 2, i64 2, i64 1
  store float %140, ptr %141, align 4, !tbaa !78
  %142 = getelementptr inbounds %struct.RulerItem, ptr %79, i64 0, i32 2, i64 0, i64 2
  %143 = load float, ptr %142, align 4, !tbaa !78
  %144 = getelementptr inbounds %struct.RulerItem, ptr %79, i64 0, i32 2, i64 2, i64 2
  store float %143, ptr %144, align 4, !tbaa !78
  %145 = getelementptr inbounds %struct.RulerItem, ptr %79, i64 0, i32 3
  store i8 2, ptr %145, align 4, !tbaa !102
  br label %436

146:                                              ; preds = %67
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  %147 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %148 = load i32, ptr %147, align 4, !tbaa !109
  %149 = sitofp i32 %148 to float
  store float %149, ptr %5, align 4, !tbaa !78
  %150 = getelementptr inbounds float, ptr %5, i64 1
  %151 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %152 = load i32, ptr %151, align 4, !tbaa !109
  %153 = sitofp i32 %152 to float
  store float %153, ptr %150, align 4, !tbaa !78
  %154 = load ptr, ptr %12, align 8, !tbaa !91
  %155 = load ptr, ptr %9, align 8, !tbaa !49
  %156 = icmp eq ptr %155, null
  br i1 %156, label %247, label %157

157:                                              ; preds = %146
  %158 = getelementptr inbounds [3 x [2 x float]], ptr %4, i64 0, i64 1
  %159 = getelementptr inbounds [3 x [2 x float]], ptr %4, i64 0, i64 2
  %160 = getelementptr inbounds float, ptr %4, i64 1
  %161 = getelementptr inbounds [3 x [2 x float]], ptr %4, i64 0, i64 1, i64 1
  %162 = getelementptr inbounds [3 x [2 x float]], ptr %4, i64 0, i64 2, i64 1
  br label %163

163:                                              ; preds = %241, %157
  %164 = phi ptr [ %155, %157 ], [ %245, %241 ]
  %165 = phi i32 [ -1, %157 ], [ %244, %241 ]
  %166 = phi ptr [ null, %157 ], [ %243, %241 ]
  %167 = phi float [ 1.440000e+02, %157 ], [ %242, %241 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #6
  br label %168

168:                                              ; preds = %168, %163
  %169 = phi i64 [ 0, %163 ], [ %173, %168 ]
  %170 = getelementptr inbounds %struct.RulerItem, ptr %164, i64 0, i32 2, i64 %169
  %171 = getelementptr inbounds [3 x [2 x float]], ptr %4, i64 0, i64 %169
  %172 = call i32 @ED_view3d_project_float_global(ptr noundef %154, ptr noundef nonnull %170, ptr noundef nonnull %171, i32 noundef 0) #6
  %173 = add nuw nsw i64 %169, 1
  %174 = icmp eq i64 %173, 3
  br i1 %174, label %175, label %168, !llvm.loop !110

175:                                              ; preds = %168
  %176 = getelementptr inbounds %struct.RulerItem, ptr %164, i64 0, i32 4
  %177 = load i32, ptr %176, align 8, !tbaa !82
  %178 = and i32 %177, 1
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %218, label %180

180:                                              ; preds = %175
  %181 = call float @dist_squared_to_line_segment_v2(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %158) #6
  %182 = call float @dist_squared_to_line_segment_v2(ptr noundef nonnull %5, ptr noundef nonnull %158, ptr noundef nonnull %159) #6
  %183 = fcmp olt float %181, %182
  %184 = select i1 %183, float %181, float %182
  %185 = fcmp olt float %184, %167
  br i1 %185, label %186, label %241

186:                                              ; preds = %180
  %187 = load float, ptr %5, align 4, !tbaa !78
  %188 = load float, ptr %4, align 16, !tbaa !78
  %189 = fsub float %187, %188
  %190 = load float, ptr %150, align 4, !tbaa !78
  %191 = load float, ptr %160, align 4, !tbaa !78
  %192 = fsub float %190, %191
  %193 = fmul float %192, %192
  %194 = call float @llvm.fmuladd.f32(float %189, float %189, float %193)
  %195 = load float, ptr %158, align 8, !tbaa !78
  %196 = fsub float %187, %195
  %197 = load float, ptr %161, align 4, !tbaa !78
  %198 = fsub float %190, %197
  %199 = fmul float %198, %198
  %200 = call float @llvm.fmuladd.f32(float %196, float %196, float %199)
  %201 = load float, ptr %159, align 16, !tbaa !78
  %202 = fsub float %187, %201
  %203 = load float, ptr %162, align 4, !tbaa !78
  %204 = fsub float %190, %203
  %205 = fmul float %204, %204
  %206 = call float @llvm.fmuladd.f32(float %202, float %202, float %205)
  %207 = fcmp olt float %194, %200
  %208 = select i1 %207, float %194, float %200
  %209 = fcmp olt float %208, %206
  %210 = select i1 %209, float %208, float %206
  %211 = fcmp olt float %210, 1.440000e+02
  br i1 %211, label %212, label %241

212:                                              ; preds = %186
  %213 = fcmp olt float %194, %206
  %214 = select i1 %213, i32 0, i32 2
  %215 = fcmp olt float %200, %206
  %216 = select i1 %215, i32 1, i32 2
  %217 = select i1 %207, i32 %214, i32 %216
  br label %241

218:                                              ; preds = %175
  %219 = call float @dist_squared_to_line_segment_v2(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %159) #6
  %220 = fcmp olt float %219, %167
  br i1 %220, label %221, label %241

221:                                              ; preds = %218
  %222 = load float, ptr %5, align 4, !tbaa !78
  %223 = load float, ptr %4, align 16, !tbaa !78
  %224 = fsub float %222, %223
  %225 = load float, ptr %150, align 4, !tbaa !78
  %226 = load float, ptr %160, align 4, !tbaa !78
  %227 = fsub float %225, %226
  %228 = fmul float %227, %227
  %229 = call float @llvm.fmuladd.f32(float %224, float %224, float %228)
  %230 = load float, ptr %159, align 16, !tbaa !78
  %231 = fsub float %222, %230
  %232 = load float, ptr %162, align 4, !tbaa !78
  %233 = fsub float %225, %232
  %234 = fmul float %233, %233
  %235 = call float @llvm.fmuladd.f32(float %231, float %231, float %234)
  %236 = fcmp olt float %229, %235
  %237 = select i1 %236, float %229, float %235
  %238 = fcmp olt float %237, 1.440000e+02
  %239 = select i1 %236, i32 0, i32 2
  %240 = select i1 %238, i32 %239, i32 -1
  br label %241

241:                                              ; preds = %221, %218, %212, %186, %180
  %242 = phi float [ %167, %180 ], [ %219, %221 ], [ %167, %218 ], [ %184, %186 ], [ %184, %212 ]
  %243 = phi ptr [ %166, %180 ], [ %164, %221 ], [ %166, %218 ], [ %164, %186 ], [ %164, %212 ]
  %244 = phi i32 [ %165, %180 ], [ %240, %221 ], [ %165, %218 ], [ -1, %186 ], [ %217, %212 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #6
  %245 = load ptr, ptr %164, align 8, !tbaa !49
  %246 = icmp eq ptr %245, null
  br i1 %246, label %247, label %163, !llvm.loop !111

247:                                              ; preds = %241, %146
  %248 = phi ptr [ null, %146 ], [ %243, %241 ]
  %249 = phi i32 [ -1, %146 ], [ %244, %241 ]
  %250 = icmp eq ptr %248, null
  %251 = select i1 %250, i32 -1, i32 %249
  br i1 %250, label %302, label %252

252:                                              ; preds = %247
  %253 = icmp eq i32 %251, -1
  br i1 %253, label %254, label %286

254:                                              ; preds = %252
  %255 = getelementptr inbounds %struct.RulerItem, ptr %248, i64 0, i32 4
  %256 = load i32, ptr %255, align 8, !tbaa !82
  %257 = and i32 %256, 1
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %259, label %302

259:                                              ; preds = %254
  %260 = call i32 @BLI_findindex(ptr noundef nonnull %9, ptr noundef nonnull %248) #6
  %261 = getelementptr inbounds %struct.RulerInfo, ptr %9, i64 0, i32 1
  store i32 %260, ptr %261, align 8, !tbaa !101
  %262 = load i32, ptr %255, align 8, !tbaa !82
  %263 = or i32 %262, 1
  store i32 %263, ptr %255, align 8, !tbaa !82
  %264 = getelementptr inbounds %struct.RulerItem, ptr %248, i64 0, i32 3
  store i8 1, ptr %264, align 4, !tbaa !102
  store i32 1, ptr %25, align 4, !tbaa !100
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #6
  %265 = getelementptr inbounds %struct.RulerItem, ptr %248, i64 0, i32 2
  %266 = call i32 @ED_view3d_project_float_global(ptr noundef %13, ptr noundef nonnull %265, ptr noundef nonnull %6, i32 noundef 0) #6
  %267 = getelementptr inbounds %struct.RulerItem, ptr %248, i64 0, i32 2, i64 2
  %268 = getelementptr inbounds [2 x [2 x float]], ptr %6, i64 0, i64 1
  %269 = call i32 @ED_view3d_project_float_global(ptr noundef %13, ptr noundef nonnull %267, ptr noundef nonnull %268, i32 noundef 0) #6
  %270 = call float @line_point_factor_v2(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %268) #6
  %271 = fcmp olt float %270, 0.000000e+00
  br i1 %271, label %275, label %272

272:                                              ; preds = %259
  %273 = fcmp ogt float %270, 1.000000e+00
  br i1 %273, label %274, label %275

274:                                              ; preds = %272
  br label %275

275:                                              ; preds = %259, %272, %274
  %276 = phi float [ 1.000000e+00, %274 ], [ %270, %272 ], [ 0.000000e+00, %259 ]
  %277 = getelementptr inbounds %struct.RulerItem, ptr %248, i64 0, i32 2, i64 1
  call void @interp_v3_v3v3(ptr noundef nonnull %277, ptr noundef nonnull %265, ptr noundef nonnull %267, float noundef %276) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6
  %278 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 17
  %279 = load i16, ptr %278, align 8, !tbaa !112
  %280 = icmp ne i16 %279, 0
  %281 = zext i1 %280 to i8
  %282 = load i16, ptr %64, align 2, !tbaa !104
  %283 = icmp ne i16 %282, 0
  %284 = zext i1 %283 to i8
  %285 = call fastcc zeroext i8 @view3d_ruler_item_mousemove(ptr noundef %0, ptr noundef nonnull %9, ptr noundef nonnull %147, i8 noundef zeroext %281, i8 noundef zeroext %284), !range !108
  br label %302

286:                                              ; preds = %252
  %287 = call i32 @BLI_findindex(ptr noundef nonnull %9, ptr noundef nonnull %248) #6
  %288 = getelementptr inbounds %struct.RulerInfo, ptr %9, i64 0, i32 1
  store i32 %287, ptr %288, align 8, !tbaa !101
  %289 = trunc i32 %251 to i8
  %290 = getelementptr inbounds %struct.RulerItem, ptr %248, i64 0, i32 3
  store i8 %289, ptr %290, align 4, !tbaa !102
  store i32 1, ptr %25, align 4, !tbaa !100
  %291 = getelementptr inbounds %struct.RulerInfo, ptr %9, i64 0, i32 5
  %292 = and i32 %251, 255
  %293 = zext nneg i32 %292 to i64
  %294 = getelementptr inbounds %struct.RulerItem, ptr %248, i64 0, i32 2, i64 %293
  %295 = load float, ptr %294, align 4, !tbaa !78
  store float %295, ptr %291, align 4, !tbaa !78
  %296 = getelementptr inbounds float, ptr %294, i64 1
  %297 = load float, ptr %296, align 4, !tbaa !78
  %298 = getelementptr inbounds %struct.RulerInfo, ptr %9, i64 0, i32 5, i64 1
  store float %297, ptr %298, align 4, !tbaa !78
  %299 = getelementptr inbounds float, ptr %294, i64 2
  %300 = load float, ptr %299, align 4, !tbaa !78
  %301 = getelementptr inbounds %struct.RulerInfo, ptr %9, i64 0, i32 5, i64 2
  store float %300, ptr %301, align 4, !tbaa !78
  br label %302

302:                                              ; preds = %247, %286, %275, %254
  %303 = phi i32 [ 1, %275 ], [ 1, %254 ], [ 1, %286 ], [ 8, %247 ]
  %304 = phi i8 [ 1, %275 ], [ 0, %254 ], [ 1, %286 ], [ 0, %247 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  br label %436

305:                                              ; preds = %18
  %306 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 18
  %307 = load i16, ptr %306, align 2, !tbaa !104
  %308 = icmp eq i16 %307, 0
  br i1 %308, label %436, label %309

309:                                              ; preds = %305
  %310 = getelementptr inbounds %struct.RulerInfo, ptr %9, i64 0, i32 1
  %311 = load i32, ptr %310, align 8, !tbaa !101
  %312 = tail call ptr @BLI_findlink(ptr noundef %9, i32 noundef %311) #6
  %313 = icmp eq ptr %312, null
  br i1 %313, label %436, label %314

314:                                              ; preds = %309
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %7) #6
  %315 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %316 = getelementptr inbounds %struct.Scene, ptr %315, i64 0, i32 38
  call fastcc void @ruler_item_as_string(ptr noundef nonnull %312, ptr noundef nonnull %316, ptr noundef nonnull %7, i32 noundef 8)
  call void @WM_clipboard_text_set(ptr noundef nonnull %7, i8 noundef zeroext 0) #6
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %7) #6
  br label %436

317:                                              ; preds = %18, %18
  tail call void @WM_event_add_mousemove(ptr noundef %0) #6
  br label %436

318:                                              ; preds = %18
  %319 = getelementptr inbounds %struct.RulerInfo, ptr %9, i64 0, i32 4
  %320 = load i32, ptr %319, align 4, !tbaa !100
  %321 = icmp eq i32 %320, 1
  br i1 %321, label %322, label %436

322:                                              ; preds = %318
  %323 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %324 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 17
  %325 = load i16, ptr %324, align 8, !tbaa !112
  %326 = icmp ne i16 %325, 0
  %327 = zext i1 %326 to i8
  %328 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 18
  %329 = load i16, ptr %328, align 2, !tbaa !104
  %330 = icmp ne i16 %329, 0
  %331 = zext i1 %330 to i8
  %332 = tail call fastcc zeroext i8 @view3d_ruler_item_mousemove(ptr noundef %0, ptr noundef %9, ptr noundef nonnull %323, i8 noundef zeroext %327, i8 noundef zeroext %331), !range !108
  br label %436

333:                                              ; preds = %18
  %334 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %335 = getelementptr inbounds %struct.Scene, ptr %334, i64 0, i32 39
  %336 = load ptr, ptr %335, align 8, !tbaa !50
  %337 = icmp eq ptr %336, null
  br i1 %337, label %338, label %340

338:                                              ; preds = %333
  %339 = tail call ptr @gpencil_data_addnew(ptr noundef nonnull @.str.9) #6
  store ptr %339, ptr %335, align 8, !tbaa !50
  br label %340

340:                                              ; preds = %338, %333
  %341 = load ptr, ptr %335, align 8, !tbaa !50
  %342 = getelementptr inbounds %struct.bGPdata, ptr %341, i64 0, i32 1
  %343 = tail call ptr @BLI_findstring(ptr noundef nonnull %342, ptr noundef nonnull @.str.4, i32 noundef 64) #6
  %344 = icmp eq ptr %343, null
  br i1 %344, label %345, label %352

345:                                              ; preds = %340
  %346 = load ptr, ptr %335, align 8, !tbaa !50
  %347 = tail call ptr @gpencil_layer_addnew(ptr noundef %346, ptr noundef nonnull @.str.4, i32 noundef 0) #6
  %348 = getelementptr inbounds %struct.bGPDlayer, ptr %347, i64 0, i32 5
  store i16 1, ptr %348, align 4, !tbaa !113
  %349 = getelementptr inbounds %struct.bGPDlayer, ptr %347, i64 0, i32 4
  %350 = load i32, ptr %349, align 8, !tbaa !115
  %351 = or i32 %350, 1
  store i32 %351, ptr %349, align 8, !tbaa !115
  br label %352

352:                                              ; preds = %345, %340
  %353 = phi ptr [ %347, %345 ], [ %343, %340 ]
  %354 = getelementptr inbounds %struct.Scene, ptr %334, i64 0, i32 22, i32 5
  %355 = load i32, ptr %354, align 8, !tbaa !73
  %356 = tail call ptr @gpencil_layer_getframe(ptr noundef %353, i32 noundef %355, i16 noundef signext 1) #6
  %357 = tail call zeroext i8 @free_gpencil_strokes(ptr noundef %356) #6
  %358 = load ptr, ptr %9, align 8, !tbaa !49
  %359 = icmp eq ptr %358, null
  br i1 %359, label %436, label %360

360:                                              ; preds = %352
  %361 = getelementptr inbounds %struct.bGPDframe, ptr %356, i64 0, i32 2
  br label %362

362:                                              ; preds = %360, %408
  %363 = phi ptr [ %358, %360 ], [ %410, %408 ]
  %364 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %365 = tail call ptr %364(i64 noundef 48, ptr noundef nonnull @.str.10) #6
  %366 = getelementptr inbounds %struct.RulerItem, ptr %363, i64 0, i32 4
  %367 = load i32, ptr %366, align 8, !tbaa !82
  %368 = and i32 %367, 1
  %369 = icmp eq i32 %368, 0
  %370 = getelementptr inbounds %struct.bGPDstroke, ptr %365, i64 0, i32 4
  %371 = getelementptr inbounds %struct.bGPDstroke, ptr %365, i64 0, i32 2
  br i1 %369, label %390, label %372

372:                                              ; preds = %362
  store i32 3, ptr %370, align 8, !tbaa !77
  %373 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %374 = tail call ptr %373(i64 noundef 60, ptr noundef nonnull @.str.11) #6
  store ptr %374, ptr %371, align 8, !tbaa !74
  br label %375

375:                                              ; preds = %372, %375
  %376 = phi i64 [ 0, %372 ], [ %388, %375 ]
  %377 = phi ptr [ %374, %372 ], [ %387, %375 ]
  %378 = getelementptr inbounds %struct.RulerItem, ptr %363, i64 0, i32 2, i64 %376
  %379 = load float, ptr %378, align 4, !tbaa !78
  store float %379, ptr %377, align 4, !tbaa !78
  %380 = getelementptr inbounds float, ptr %378, i64 1
  %381 = load float, ptr %380, align 4, !tbaa !78
  %382 = getelementptr inbounds float, ptr %377, i64 1
  store float %381, ptr %382, align 4, !tbaa !78
  %383 = getelementptr inbounds float, ptr %378, i64 2
  %384 = load float, ptr %383, align 4, !tbaa !78
  %385 = getelementptr inbounds float, ptr %377, i64 2
  store float %384, ptr %385, align 4, !tbaa !78
  %386 = getelementptr inbounds %struct.bGPDspoint, ptr %377, i64 0, i32 3
  store float 1.000000e+00, ptr %386, align 4, !tbaa !116
  %387 = getelementptr inbounds %struct.bGPDspoint, ptr %377, i64 1
  %388 = add nuw nsw i64 %376, 1
  %389 = icmp eq i64 %388, 3
  br i1 %389, label %408, label %375, !llvm.loop !118

390:                                              ; preds = %362
  store i32 2, ptr %370, align 8, !tbaa !77
  %391 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %392 = tail call ptr %391(i64 noundef 40, ptr noundef nonnull @.str.11) #6
  store ptr %392, ptr %371, align 8, !tbaa !74
  br label %393

393:                                              ; preds = %390, %393
  %394 = phi i64 [ 0, %390 ], [ %406, %393 ]
  %395 = phi ptr [ %392, %390 ], [ %405, %393 ]
  %396 = getelementptr inbounds %struct.RulerItem, ptr %363, i64 0, i32 2, i64 %394
  %397 = load float, ptr %396, align 4, !tbaa !78
  store float %397, ptr %395, align 4, !tbaa !78
  %398 = getelementptr inbounds float, ptr %396, i64 1
  %399 = load float, ptr %398, align 4, !tbaa !78
  %400 = getelementptr inbounds float, ptr %395, i64 1
  store float %399, ptr %400, align 4, !tbaa !78
  %401 = getelementptr inbounds float, ptr %396, i64 2
  %402 = load float, ptr %401, align 4, !tbaa !78
  %403 = getelementptr inbounds float, ptr %395, i64 2
  store float %402, ptr %403, align 4, !tbaa !78
  %404 = getelementptr inbounds %struct.bGPDspoint, ptr %395, i64 0, i32 3
  store float 1.000000e+00, ptr %404, align 4, !tbaa !116
  %405 = getelementptr inbounds %struct.bGPDspoint, ptr %395, i64 1
  %406 = add nuw nsw i64 %394, 2
  %407 = icmp eq i64 %394, 0
  br i1 %407, label %393, label %408, !llvm.loop !119

408:                                              ; preds = %375, %393
  %409 = getelementptr inbounds %struct.bGPDstroke, ptr %365, i64 0, i32 6
  store i16 1, ptr %409, align 2, !tbaa !120
  tail call void @BLI_addtail(ptr noundef nonnull %361, ptr noundef %365) #6
  %410 = load ptr, ptr %363, align 8, !tbaa !49
  %411 = icmp eq ptr %410, null
  br i1 %411, label %436, label %362, !llvm.loop !121

412:                                              ; preds = %18
  %413 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %414 = load i16, ptr %413, align 2, !tbaa !99
  %415 = icmp eq i16 %414, 1
  br i1 %415, label %416, label %436

416:                                              ; preds = %412
  %417 = getelementptr inbounds %struct.RulerInfo, ptr %9, i64 0, i32 4
  %418 = load i32, ptr %417, align 4, !tbaa !100
  %419 = icmp eq i32 %418, 0
  br i1 %419, label %420, label %436

420:                                              ; preds = %416
  %421 = getelementptr inbounds %struct.RulerInfo, ptr %9, i64 0, i32 1
  %422 = load i32, ptr %421, align 8, !tbaa !101
  %423 = tail call ptr @BLI_findlink(ptr noundef %9, i32 noundef %422) #6
  %424 = icmp eq ptr %423, null
  br i1 %424, label %436, label %425

425:                                              ; preds = %420
  %426 = getelementptr inbounds %struct.RulerItem, ptr %423, i64 0, i32 1
  %427 = load ptr, ptr %426, align 8, !tbaa !122
  %428 = icmp eq ptr %427, null
  br i1 %428, label %429, label %431

429:                                              ; preds = %425
  %430 = load ptr, ptr %423, align 8, !tbaa !123
  br label %431

431:                                              ; preds = %425, %429
  %432 = phi ptr [ %430, %429 ], [ %427, %425 ]
  tail call void @BLI_remlink(ptr noundef %9, ptr noundef nonnull %423) #6
  %433 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %433(ptr noundef nonnull %423) #6
  %434 = tail call i32 @BLI_findindex(ptr noundef %9, ptr noundef %432) #6
  store i32 %434, ptr %421, align 8, !tbaa !101
  br label %436

435:                                              ; preds = %18
  br label %436

436:                                              ; preds = %408, %352, %322, %420, %431, %18, %309, %314, %412, %416, %318, %305, %59, %27, %135, %302, %61, %435, %317
  %437 = phi i32 [ 8, %435 ], [ 1, %416 ], [ 1, %412 ], [ 1, %318 ], [ 1, %317 ], [ 1, %305 ], [ 1, %59 ], [ 1, %27 ], [ 1, %135 ], [ %303, %302 ], [ 1, %61 ], [ 1, %314 ], [ 1, %309 ], [ 1, %322 ], [ 2, %18 ], [ 1, %431 ], [ 1, %420 ], [ 4, %352 ], [ 4, %408 ]
  %438 = phi i8 [ 0, %435 ], [ 0, %416 ], [ 0, %412 ], [ 0, %318 ], [ 0, %317 ], [ 0, %305 ], [ %60, %59 ], [ 0, %27 ], [ 1, %135 ], [ %304, %302 ], [ 0, %61 ], [ 0, %314 ], [ 0, %309 ], [ %332, %322 ], [ 1, %18 ], [ 1, %431 ], [ 0, %420 ], [ 1, %352 ], [ 1, %408 ]
  %439 = icmp eq i8 %438, 0
  br i1 %439, label %441, label %440

440:                                              ; preds = %436
  call void @ED_area_headerprint(ptr noundef %11, ptr noundef nonnull @.str.8) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 252248064, ptr noundef null) #6
  br label %441

441:                                              ; preds = %3, %436, %440
  %442 = phi i32 [ %437, %440 ], [ %437, %436 ], [ 4, %3 ]
  switch i32 %442, label %452 [
    i32 4, label %443
    i32 2, label %443
  ]

443:                                              ; preds = %441, %441
  %444 = getelementptr inbounds %struct.RulerInfo, ptr %9, i64 0, i32 6
  %445 = load ptr, ptr %444, align 8, !tbaa !88
  call void @WM_cursor_modal_restore(ptr noundef %445) #6
  %446 = load ptr, ptr %12, align 8, !tbaa !91
  %447 = getelementptr inbounds %struct.ARegion, ptr %446, i64 0, i32 20
  %448 = load ptr, ptr %447, align 8, !tbaa !92
  %449 = getelementptr inbounds %struct.RulerInfo, ptr %9, i64 0, i32 9
  %450 = load ptr, ptr %449, align 8, !tbaa !95
  call void @ED_region_draw_cb_exit(ptr noundef %448, ptr noundef %450) #6
  call void @BLI_freelistN(ptr noundef %9) #6
  %451 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  call void %451(ptr noundef %9) #6
  store ptr null, ptr %8, align 8, !tbaa !86
  call void @ED_area_headerprint(ptr noundef %11, ptr noundef null) #6
  br label %452

452:                                              ; preds = %441, %443
  ret i32 %442
}

declare i32 @ED_operator_view3d_active(ptr noundef) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ED_region_draw_cb_activate(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @ruler_info_draw_pixel(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = alloca [4 x i8], align 4
  %5 = alloca [3 x i8], align 1
  %6 = alloca [3 x i8], align 1
  %7 = alloca [3 x [2 x float]], align 16
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [25 x [2 x float]], align 16
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca [4 x float], align 16
  %14 = alloca [3 x float], align 4
  %15 = alloca [256 x i8], align 16
  %16 = alloca [2 x float], align 4
  %17 = alloca [2 x float], align 4
  %18 = alloca [256 x i8], align 16
  %19 = alloca [2 x float], align 4
  %20 = alloca [2 x float], align 4
  %21 = alloca [2 x float], align 4
  %22 = alloca [3 x float], align 4
  %23 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %24 = getelementptr inbounds %struct.Scene, ptr %23, i64 0, i32 38
  %25 = getelementptr inbounds %struct.RulerInfo, ptr %2, i64 0, i32 8
  %26 = load ptr, ptr %25, align 8, !tbaa !91
  %27 = getelementptr inbounds %struct.ARegion, ptr %26, i64 0, i32 30
  %28 = load ptr, ptr %27, align 8, !tbaa !96
  %29 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !124
  %30 = fmul float %29, 4.000000e+00
  %31 = fmul float %29, 6.400000e+01
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 -2130706433, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %6) #6
  tail call void @glEnable(i32 noundef 2848) #6
  %32 = load i32, ptr @blf_mono_font, align 4, !tbaa !109
  tail call void @BLF_enable(i32 noundef %32, i32 noundef 1) #6
  %33 = load i32, ptr @blf_mono_font, align 4, !tbaa !109
  %34 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !124
  %35 = fmul float %34, 1.400000e+01
  %36 = fptosi float %35 to i32
  %37 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !128
  tail call void @BLF_size(i32 noundef %33, i32 noundef %36, i32 noundef %37) #6
  %38 = load i32, ptr @blf_mono_font, align 4, !tbaa !109
  tail call void @BLF_rotation(i32 noundef %38, float noundef 0.000000e+00) #6
  call void @UI_GetThemeColor3ubv(i32 noundef 3, ptr noundef nonnull %5) #6
  call void @UI_GetThemeColor3ubv(i32 noundef 25, ptr noundef nonnull %6) #6
  %39 = load ptr, ptr %2, align 8, !tbaa !49
  %40 = icmp eq ptr %39, null
  br i1 %40, label %375, label %41

41:                                               ; preds = %3
  %42 = getelementptr inbounds %struct.RulerInfo, ptr %2, i64 0, i32 1
  %43 = getelementptr inbounds [3 x [2 x float]], ptr %7, i64 0, i64 1
  %44 = getelementptr inbounds float, ptr %7, i64 1
  %45 = getelementptr inbounds [3 x [2 x float]], ptr %7, i64 0, i64 1, i64 1
  %46 = getelementptr inbounds [3 x [2 x float]], ptr %7, i64 0, i64 2
  %47 = getelementptr inbounds [3 x [2 x float]], ptr %7, i64 0, i64 2, i64 1
  %48 = getelementptr inbounds float, ptr %11, i64 1
  %49 = getelementptr inbounds float, ptr %11, i64 2
  %50 = getelementptr inbounds float, ptr %12, i64 1
  %51 = getelementptr inbounds float, ptr %12, i64 2
  %52 = getelementptr inbounds float, ptr %14, i64 1
  %53 = getelementptr inbounds float, ptr %14, i64 2
  %54 = getelementptr inbounds float, ptr %8, i64 1
  %55 = getelementptr inbounds float, ptr %8, i64 2
  %56 = getelementptr inbounds float, ptr %9, i64 1
  %57 = getelementptr inbounds float, ptr %9, i64 2
  %58 = getelementptr inbounds [2 x float], ptr %16, i64 0, i64 1
  %59 = getelementptr inbounds float, ptr %17, i64 1
  %60 = getelementptr inbounds [3 x [2 x float]], ptr %7, i64 0, i64 2
  %61 = getelementptr inbounds float, ptr %7, i64 1
  %62 = getelementptr inbounds [3 x [2 x float]], ptr %7, i64 0, i64 2, i64 1
  %63 = getelementptr inbounds [2 x float], ptr %19, i64 0, i64 1
  %64 = getelementptr inbounds [2 x float], ptr %20, i64 0, i64 1
  %65 = getelementptr inbounds float, ptr %21, i64 1
  br label %66

66:                                               ; preds = %41, %371
  %67 = phi ptr [ %39, %41 ], [ %373, %371 ]
  %68 = phi i32 [ 0, %41 ], [ %372, %371 ]
  %69 = load i32, ptr %42, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #6
  br label %70

70:                                               ; preds = %66, %70
  %71 = phi i64 [ 0, %66 ], [ %75, %70 ]
  %72 = getelementptr inbounds %struct.RulerItem, ptr %67, i64 0, i32 2, i64 %71
  %73 = getelementptr inbounds [3 x [2 x float]], ptr %7, i64 0, i64 %71
  %74 = call i32 @ED_view3d_project_float_global(ptr noundef %1, ptr noundef nonnull %72, ptr noundef nonnull %73, i32 noundef 0) #6
  %75 = add nuw nsw i64 %71, 1
  %76 = icmp eq i64 %75, 3
  br i1 %76, label %77, label %70, !llvm.loop !129

77:                                               ; preds = %70
  %78 = icmp eq i32 %68, %69
  call void @glEnable(i32 noundef 3042) #6
  %79 = select i1 %78, i32 16777215, i32 0
  call void @cpack(i32 noundef %79) #6
  %80 = getelementptr inbounds %struct.RulerItem, ptr %67, i64 0, i32 4
  %81 = load i32, ptr %80, align 8, !tbaa !82
  %82 = and i32 %81, 1
  %83 = icmp eq i32 %82, 0
  call void @glBegin(i32 noundef 3) #6
  br i1 %83, label %302, label %84

84:                                               ; preds = %77, %84
  %85 = phi i64 [ %87, %84 ], [ 0, %77 ]
  %86 = getelementptr inbounds [3 x [2 x float]], ptr %7, i64 0, i64 %85
  call void @glVertex2fv(ptr noundef nonnull %86) #6
  %87 = add nuw nsw i64 %85, 1
  %88 = icmp eq i64 %87, 3
  br i1 %88, label %89, label %84, !llvm.loop !130

89:                                               ; preds = %84
  call void @glEnd() #6
  call void @cpack(i32 noundef 11184810) #6
  call void @setlinestyle(i32 noundef 3) #6
  call void @glBegin(i32 noundef 3) #6
  br label %90

90:                                               ; preds = %89, %90
  %91 = phi i64 [ 0, %89 ], [ %93, %90 ]
  %92 = getelementptr inbounds [3 x [2 x float]], ptr %7, i64 0, i64 %91
  call void @glVertex2fv(ptr noundef nonnull %92) #6
  %93 = add nuw nsw i64 %91, 1
  %94 = icmp eq i64 %93, 3
  br i1 %94, label %95, label %90, !llvm.loop !131

95:                                               ; preds = %90
  call void @glEnd() #6
  call void @setlinestyle(i32 noundef 0) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #6
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %10) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #6
  %96 = getelementptr inbounds %struct.RulerItem, ptr %67, i64 0, i32 2
  %97 = getelementptr inbounds %struct.RulerItem, ptr %67, i64 0, i32 2, i64 1
  %98 = call float @ED_view3d_pixel_size(ptr noundef %28, ptr noundef nonnull %97) #6
  %99 = load float, ptr %7, align 16, !tbaa !78
  %100 = load float, ptr %43, align 8, !tbaa !78
  %101 = fsub float %99, %100
  %102 = load float, ptr %44, align 4, !tbaa !78
  %103 = load float, ptr %45, align 4, !tbaa !78
  %104 = fsub float %102, %103
  %105 = fmul float %104, %104
  %106 = call float @llvm.fmuladd.f32(float %101, float %101, float %105)
  %107 = call float @sqrtf(float noundef %106) #6
  %108 = fmul float %107, 5.000000e-01
  %109 = load float, ptr %46, align 16, !tbaa !78
  %110 = load float, ptr %43, align 8, !tbaa !78
  %111 = fsub float %109, %110
  %112 = load float, ptr %47, align 4, !tbaa !78
  %113 = load float, ptr %45, align 4, !tbaa !78
  %114 = fsub float %112, %113
  %115 = fmul float %114, %114
  %116 = call float @llvm.fmuladd.f32(float %111, float %111, float %115)
  %117 = call float @sqrtf(float noundef %116) #6
  %118 = fmul float %117, 5.000000e-01
  %119 = fcmp olt float %31, %108
  %120 = select i1 %119, float %31, float %108
  %121 = fcmp olt float %120, %118
  %122 = select i1 %121, float %120, float %118
  %123 = fmul float %98, %122
  %124 = load float, ptr %96, align 4, !tbaa !78
  %125 = load float, ptr %97, align 4, !tbaa !78
  %126 = fsub float %124, %125
  store float %126, ptr %11, align 4, !tbaa !78
  %127 = getelementptr inbounds %struct.RulerItem, ptr %67, i64 0, i32 2, i64 0, i64 1
  %128 = load float, ptr %127, align 4, !tbaa !78
  %129 = getelementptr inbounds %struct.RulerItem, ptr %67, i64 0, i32 2, i64 1, i64 1
  %130 = load float, ptr %129, align 4, !tbaa !78
  %131 = fsub float %128, %130
  store float %131, ptr %48, align 4, !tbaa !78
  %132 = getelementptr inbounds %struct.RulerItem, ptr %67, i64 0, i32 2, i64 0, i64 2
  %133 = load float, ptr %132, align 4, !tbaa !78
  %134 = getelementptr inbounds %struct.RulerItem, ptr %67, i64 0, i32 2, i64 1, i64 2
  %135 = load float, ptr %134, align 4, !tbaa !78
  %136 = fsub float %133, %135
  store float %136, ptr %49, align 4, !tbaa !78
  %137 = getelementptr inbounds %struct.RulerItem, ptr %67, i64 0, i32 2, i64 2
  %138 = load float, ptr %137, align 4, !tbaa !78
  %139 = fsub float %138, %125
  store float %139, ptr %12, align 4, !tbaa !78
  %140 = getelementptr inbounds %struct.RulerItem, ptr %67, i64 0, i32 2, i64 2, i64 1
  %141 = load float, ptr %140, align 4, !tbaa !78
  %142 = fsub float %141, %130
  store float %142, ptr %50, align 4, !tbaa !78
  %143 = getelementptr inbounds %struct.RulerItem, ptr %67, i64 0, i32 2, i64 2, i64 2
  %144 = load float, ptr %143, align 4, !tbaa !78
  %145 = fsub float %144, %135
  store float %145, ptr %51, align 4, !tbaa !78
  %146 = fmul float %131, %131
  %147 = call float @llvm.fmuladd.f32(float %126, float %126, float %146)
  %148 = call float @llvm.fmuladd.f32(float %136, float %136, float %147)
  %149 = fcmp ogt float %148, 0x38AA95A5C0000000
  br i1 %149, label %150, label %159

150:                                              ; preds = %95
  %151 = call float @sqrtf(float noundef %148) #6
  %152 = fdiv float 1.000000e+00, %151
  %153 = load float, ptr %11, align 4, !tbaa !78
  %154 = fmul float %153, %152
  store float %154, ptr %11, align 4, !tbaa !78
  %155 = load float, ptr %48, align 4, !tbaa !78
  %156 = fmul float %152, %155
  store float %156, ptr %48, align 4, !tbaa !78
  %157 = load float, ptr %49, align 4, !tbaa !78
  %158 = fmul float %152, %157
  br label %160

159:                                              ; preds = %95
  store float 0.000000e+00, ptr %11, align 4, !tbaa !78
  store float 0.000000e+00, ptr %48, align 4, !tbaa !78
  br label %160

160:                                              ; preds = %150, %159
  %161 = phi float [ 0.000000e+00, %159 ], [ %158, %150 ]
  store float %161, ptr %49, align 4, !tbaa !78
  %162 = load float, ptr %12, align 4, !tbaa !78
  %163 = load float, ptr %50, align 4, !tbaa !78
  %164 = fmul float %163, %163
  %165 = call float @llvm.fmuladd.f32(float %162, float %162, float %164)
  %166 = load float, ptr %51, align 4, !tbaa !78
  %167 = call float @llvm.fmuladd.f32(float %166, float %166, float %165)
  %168 = fcmp ogt float %167, 0x38AA95A5C0000000
  br i1 %168, label %169, label %178

169:                                              ; preds = %160
  %170 = call float @sqrtf(float noundef %167) #6
  %171 = fdiv float 1.000000e+00, %170
  %172 = load float, ptr %12, align 4, !tbaa !78
  %173 = fmul float %172, %171
  store float %173, ptr %12, align 4, !tbaa !78
  %174 = load float, ptr %50, align 4, !tbaa !78
  %175 = fmul float %171, %174
  store float %175, ptr %50, align 4, !tbaa !78
  %176 = load float, ptr %51, align 4, !tbaa !78
  %177 = fmul float %171, %176
  br label %179

178:                                              ; preds = %160
  store float 0.000000e+00, ptr %12, align 4, !tbaa !78
  store float 0.000000e+00, ptr %50, align 4, !tbaa !78
  br label %179

179:                                              ; preds = %169, %178
  %180 = phi float [ 0.000000e+00, %178 ], [ %177, %169 ]
  store float %180, ptr %51, align 4, !tbaa !78
  %181 = load float, ptr %48, align 4, !tbaa !78
  %182 = load float, ptr %49, align 4, !tbaa !78
  %183 = load float, ptr %50, align 4, !tbaa !78
  %184 = fneg float %182
  %185 = fmul float %183, %184
  %186 = call float @llvm.fmuladd.f32(float %181, float %180, float %185)
  store float %186, ptr %14, align 4, !tbaa !78
  %187 = load float, ptr %12, align 4, !tbaa !78
  %188 = load float, ptr %11, align 4, !tbaa !78
  %189 = fneg float %188
  %190 = fmul float %180, %189
  %191 = call float @llvm.fmuladd.f32(float %182, float %187, float %190)
  store float %191, ptr %52, align 4, !tbaa !78
  %192 = fneg float %181
  %193 = fmul float %187, %192
  %194 = call float @llvm.fmuladd.f32(float %188, float %183, float %193)
  store float %194, ptr %53, align 4, !tbaa !78
  %195 = call float @angle_normalized_v3v3(ptr noundef nonnull %11, ptr noundef nonnull %12) #6
  %196 = fdiv float %195, 2.400000e+01
  call void @axis_angle_to_quat(ptr noundef nonnull %13, ptr noundef nonnull %14, float noundef %196) #6
  %197 = load float, ptr %11, align 4, !tbaa !78
  store float %197, ptr %8, align 4, !tbaa !78
  %198 = load float, ptr %48, align 4, !tbaa !78
  store float %198, ptr %54, align 4, !tbaa !78
  %199 = load float, ptr %49, align 4, !tbaa !78
  store float %199, ptr %55, align 4, !tbaa !78
  call void @glColor3ubv(ptr noundef nonnull %6) #6
  br label %200

200:                                              ; preds = %179, %200
  %201 = phi i64 [ 0, %179 ], [ %213, %200 ]
  %202 = load float, ptr %97, align 4, !tbaa !78
  %203 = load float, ptr %8, align 4, !tbaa !78
  %204 = call float @llvm.fmuladd.f32(float %203, float %123, float %202)
  store float %204, ptr %9, align 4, !tbaa !78
  %205 = load float, ptr %129, align 4, !tbaa !78
  %206 = load float, ptr %54, align 4, !tbaa !78
  %207 = call float @llvm.fmuladd.f32(float %206, float %123, float %205)
  store float %207, ptr %56, align 4, !tbaa !78
  %208 = load float, ptr %134, align 4, !tbaa !78
  %209 = load float, ptr %55, align 4, !tbaa !78
  %210 = call float @llvm.fmuladd.f32(float %209, float %123, float %208)
  store float %210, ptr %57, align 4, !tbaa !78
  %211 = getelementptr inbounds [25 x [2 x float]], ptr %10, i64 0, i64 %201
  %212 = call i32 @ED_view3d_project_float_global(ptr noundef %1, ptr noundef nonnull %9, ptr noundef nonnull %211, i32 noundef 0) #6
  call void @mul_qt_v3(ptr noundef nonnull %13, ptr noundef nonnull %8) #6
  %213 = add nuw nsw i64 %201, 1
  %214 = icmp eq i64 %213, 25
  br i1 %214, label %215, label %200, !llvm.loop !132

215:                                              ; preds = %200
  call void @glEnableClientState(i32 noundef 32884) #6
  call void @glVertexPointer(i32 noundef 2, i32 noundef 5126, i32 noundef 0, ptr noundef nonnull %10) #6
  call void @glDrawArrays(i32 noundef 3, i32 noundef 0, i32 noundef 25) #6
  call void @glDisableClientState(i32 noundef 32884) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #6
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %10) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #6
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %15) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #6
  call fastcc void @ruler_item_as_string(ptr noundef nonnull %67, ptr noundef nonnull %24, ptr noundef nonnull %15, i32 noundef 2)
  %216 = load i32, ptr @blf_mono_font, align 4, !tbaa !109
  call void @BLF_width_and_height(i32 noundef %216, ptr noundef nonnull %15, i64 noundef 256, ptr noundef nonnull %16, ptr noundef nonnull %58) #6
  %217 = load float, ptr %43, align 8, !tbaa !78
  %218 = fadd float %217, 8.000000e+00
  %219 = load float, ptr %45, align 4, !tbaa !78
  %220 = load float, ptr %58, align 4, !tbaa !78
  %221 = fmul float %220, 5.000000e-01
  %222 = fsub float %219, %221
  call void @glColor4ubv(ptr noundef nonnull %4) #6
  call void @uiSetRoundBox(i32 noundef 15) #6
  %223 = fsub float %218, %30
  %224 = fsub float %222, %30
  %225 = fadd float %30, %218
  %226 = load float, ptr %16, align 4, !tbaa !78
  %227 = fadd float %225, %226
  %228 = fadd float %30, %222
  %229 = load float, ptr %58, align 4, !tbaa !78
  %230 = fadd float %228, %229
  call void @uiRoundBox(float noundef %223, float noundef %224, float noundef %227, float noundef %230, float noundef %30) #6
  call void @glColor3ubv(ptr noundef nonnull %5) #6
  %231 = load i32, ptr @blf_mono_font, align 4, !tbaa !109
  call void @BLF_position(i32 noundef %231, float noundef %218, float noundef %222, float noundef 0.000000e+00) #6
  %232 = load i32, ptr @blf_mono_font, align 4, !tbaa !109
  call void @BLF_rotation(i32 noundef %232, float noundef 0.000000e+00) #6
  %233 = load i32, ptr @blf_mono_font, align 4, !tbaa !109
  call void @BLF_draw(i32 noundef %233, ptr noundef nonnull %15, i64 noundef 256) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #6
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %15) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #6
  %234 = load float, ptr %7, align 16, !tbaa !78
  %235 = load float, ptr %43, align 8, !tbaa !78
  %236 = fsub float %234, %235
  %237 = load float, ptr %44, align 4, !tbaa !78
  %238 = load float, ptr %45, align 4, !tbaa !78
  %239 = fsub float %237, %238
  %240 = fmul float %236, %236
  %241 = call float @llvm.fmuladd.f32(float %239, float %239, float %240)
  %242 = fcmp ogt float %241, 0x38AA95A5C0000000
  br i1 %242, label %243, label %249

243:                                              ; preds = %215
  %244 = fneg float %239
  %245 = call float @sqrtf(float noundef %241) #6
  %246 = fdiv float 1.000000e+00, %245
  %247 = fmul float %246, %244
  %248 = fmul float %236, %246
  br label %249

249:                                              ; preds = %215, %243
  %250 = phi float [ %247, %243 ], [ 0.000000e+00, %215 ]
  %251 = phi float [ %248, %243 ], [ 0.000000e+00, %215 ]
  %252 = load float, ptr %43, align 8, !tbaa !78
  %253 = load float, ptr %46, align 16, !tbaa !78
  %254 = fsub float %252, %253
  %255 = load float, ptr %45, align 4, !tbaa !78
  %256 = load float, ptr %47, align 4, !tbaa !78
  %257 = fsub float %255, %256
  %258 = fmul float %254, %254
  %259 = call float @llvm.fmuladd.f32(float %257, float %257, float %258)
  %260 = fcmp ogt float %259, 0x38AA95A5C0000000
  br i1 %260, label %261, label %267

261:                                              ; preds = %249
  %262 = fneg float %257
  %263 = call float @sqrtf(float noundef %259) #6
  %264 = fdiv float 1.000000e+00, %263
  %265 = fmul float %264, %262
  %266 = fmul float %254, %264
  br label %267

267:                                              ; preds = %249, %261
  %268 = phi float [ %265, %261 ], [ 0.000000e+00, %249 ]
  %269 = phi float [ %266, %261 ], [ 0.000000e+00, %249 ]
  call void @glEnable(i32 noundef 3042) #6
  call void @glColor3ubv(ptr noundef nonnull %6) #6
  call void @glBegin(i32 noundef 1) #6
  %270 = load float, ptr %7, align 16, !tbaa !78
  %271 = call float @llvm.fmuladd.f32(float %250, float 4.000000e+00, float %270)
  store float %271, ptr %17, align 4, !tbaa !78
  %272 = load float, ptr %44, align 4, !tbaa !78
  %273 = call float @llvm.fmuladd.f32(float %251, float 4.000000e+00, float %272)
  store float %273, ptr %59, align 4, !tbaa !78
  call void @glVertex2fv(ptr noundef nonnull %17) #6
  %274 = load float, ptr %7, align 16, !tbaa !78
  %275 = call float @llvm.fmuladd.f32(float %250, float -4.000000e+00, float %274)
  store float %275, ptr %17, align 4, !tbaa !78
  %276 = load float, ptr %44, align 4, !tbaa !78
  %277 = call float @llvm.fmuladd.f32(float %251, float -4.000000e+00, float %276)
  store float %277, ptr %59, align 4, !tbaa !78
  call void @glVertex2fv(ptr noundef nonnull %17) #6
  %278 = load float, ptr %46, align 16, !tbaa !78
  %279 = call float @llvm.fmuladd.f32(float %268, float 4.000000e+00, float %278)
  store float %279, ptr %17, align 4, !tbaa !78
  %280 = load float, ptr %47, align 4, !tbaa !78
  %281 = call float @llvm.fmuladd.f32(float %269, float 4.000000e+00, float %280)
  store float %281, ptr %59, align 4, !tbaa !78
  call void @glVertex2fv(ptr noundef nonnull %17) #6
  %282 = load float, ptr %46, align 16, !tbaa !78
  %283 = call float @llvm.fmuladd.f32(float %268, float -4.000000e+00, float %282)
  store float %283, ptr %17, align 4, !tbaa !78
  %284 = load float, ptr %47, align 4, !tbaa !78
  %285 = call float @llvm.fmuladd.f32(float %269, float -4.000000e+00, float %284)
  store float %285, ptr %59, align 4, !tbaa !78
  call void @glVertex2fv(ptr noundef nonnull %17) #6
  %286 = load float, ptr %43, align 8, !tbaa !78
  %287 = fadd float %286, -4.000000e+00
  %288 = load float, ptr %45, align 4, !tbaa !78
  %289 = fadd float %288, -4.000000e+00
  call void @glVertex2f(float noundef %287, float noundef %289) #6
  %290 = load float, ptr %43, align 8, !tbaa !78
  %291 = fadd float %290, 4.000000e+00
  %292 = load float, ptr %45, align 4, !tbaa !78
  %293 = fadd float %292, 4.000000e+00
  call void @glVertex2f(float noundef %291, float noundef %293) #6
  %294 = load float, ptr %43, align 8, !tbaa !78
  %295 = fadd float %294, -4.000000e+00
  %296 = load float, ptr %45, align 4, !tbaa !78
  %297 = fadd float %296, 4.000000e+00
  call void @glVertex2f(float noundef %295, float noundef %297) #6
  %298 = load float, ptr %43, align 8, !tbaa !78
  %299 = fadd float %298, 4.000000e+00
  %300 = load float, ptr %45, align 4, !tbaa !78
  %301 = fadd float %300, -4.000000e+00
  call void @glVertex2f(float noundef %299, float noundef %301) #6
  call void @glEnd() #6
  call void @glDisable(i32 noundef 3042) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #6
  br label %371

302:                                              ; preds = %77, %302
  %303 = phi i64 [ %305, %302 ], [ 0, %77 ]
  %304 = getelementptr inbounds [3 x [2 x float]], ptr %7, i64 0, i64 %303
  call void @glVertex2fv(ptr noundef nonnull %304) #6
  %305 = add nuw nsw i64 %303, 2
  %306 = icmp eq i64 %303, 0
  br i1 %306, label %302, label %307, !llvm.loop !133

307:                                              ; preds = %302
  call void @glEnd() #6
  call void @cpack(i32 noundef 11184810) #6
  call void @setlinestyle(i32 noundef 3) #6
  call void @glBegin(i32 noundef 3) #6
  br label %308

308:                                              ; preds = %307, %308
  %309 = phi i64 [ 0, %307 ], [ %311, %308 ]
  %310 = getelementptr inbounds [3 x [2 x float]], ptr %7, i64 0, i64 %309
  call void @glVertex2fv(ptr noundef nonnull %310) #6
  %311 = add nuw nsw i64 %309, 2
  %312 = icmp eq i64 %309, 0
  br i1 %312, label %308, label %313, !llvm.loop !134

313:                                              ; preds = %308
  call void @glEnd() #6
  call void @setlinestyle(i32 noundef 0) #6
  %314 = load float, ptr %7, align 16, !tbaa !78
  %315 = load float, ptr %60, align 16, !tbaa !78
  %316 = fsub float %314, %315
  %317 = load float, ptr %61, align 4, !tbaa !78
  %318 = load float, ptr %62, align 4, !tbaa !78
  %319 = fsub float %317, %318
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %18) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %20) #6
  call fastcc void @ruler_item_as_string(ptr noundef nonnull %67, ptr noundef nonnull %24, ptr noundef nonnull %18, i32 noundef 6)
  %320 = load i32, ptr @blf_mono_font, align 4, !tbaa !109
  call void @BLF_width_and_height(i32 noundef %320, ptr noundef nonnull %18, i64 noundef 256, ptr noundef nonnull %19, ptr noundef nonnull %63) #6
  call void @mid_v2_v2v2(ptr noundef nonnull %20, ptr noundef nonnull %7, ptr noundef nonnull %60) #6
  %321 = load float, ptr %19, align 4, !tbaa !78
  %322 = fmul float %321, 5.000000e-01
  %323 = load float, ptr %20, align 4, !tbaa !78
  %324 = fsub float %323, %322
  store float %324, ptr %20, align 4, !tbaa !78
  %325 = load float, ptr %63, align 4, !tbaa !78
  %326 = fmul float %325, 5.000000e-01
  %327 = load float, ptr %64, align 4, !tbaa !78
  %328 = fsub float %327, %326
  store float %328, ptr %64, align 4, !tbaa !78
  call void @glColor4ubv(ptr noundef nonnull %4) #6
  call void @uiSetRoundBox(i32 noundef 15) #6
  %329 = load float, ptr %20, align 4, !tbaa !78
  %330 = fsub float %329, %30
  %331 = load float, ptr %64, align 4, !tbaa !78
  %332 = fsub float %331, %30
  %333 = fadd float %30, %329
  %334 = load float, ptr %19, align 4, !tbaa !78
  %335 = fadd float %333, %334
  %336 = fadd float %30, %331
  %337 = load float, ptr %63, align 4, !tbaa !78
  %338 = fadd float %336, %337
  call void @uiRoundBox(float noundef %330, float noundef %332, float noundef %335, float noundef %338, float noundef %30) #6
  call void @glColor3ubv(ptr noundef nonnull %5) #6
  %339 = load i32, ptr @blf_mono_font, align 4, !tbaa !109
  %340 = load float, ptr %20, align 4, !tbaa !78
  %341 = load float, ptr %64, align 4, !tbaa !78
  call void @BLF_position(i32 noundef %339, float noundef %340, float noundef %341, float noundef 0.000000e+00) #6
  %342 = load i32, ptr @blf_mono_font, align 4, !tbaa !109
  call void @BLF_draw(i32 noundef %342, ptr noundef nonnull %18, i64 noundef 256) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #6
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %18) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %21) #6
  %343 = fmul float %316, %316
  %344 = call float @llvm.fmuladd.f32(float %319, float %319, float %343)
  %345 = fcmp ogt float %344, 0x38AA95A5C0000000
  br i1 %345, label %346, label %352

346:                                              ; preds = %313
  %347 = fneg float %319
  %348 = call float @sqrtf(float noundef %344) #6
  %349 = fdiv float 1.000000e+00, %348
  %350 = fmul float %349, %347
  %351 = fmul float %316, %349
  br label %352

352:                                              ; preds = %313, %346
  %353 = phi float [ %350, %346 ], [ 0.000000e+00, %313 ]
  %354 = phi float [ %351, %346 ], [ 0.000000e+00, %313 ]
  call void @glEnable(i32 noundef 3042) #6
  call void @glColor3ubv(ptr noundef nonnull %6) #6
  call void @glBegin(i32 noundef 1) #6
  %355 = load float, ptr %7, align 16, !tbaa !78
  %356 = call float @llvm.fmuladd.f32(float %353, float 4.000000e+00, float %355)
  store float %356, ptr %21, align 4, !tbaa !78
  %357 = load float, ptr %61, align 4, !tbaa !78
  %358 = call float @llvm.fmuladd.f32(float %354, float 4.000000e+00, float %357)
  store float %358, ptr %65, align 4, !tbaa !78
  call void @glVertex2fv(ptr noundef nonnull %21) #6
  %359 = load float, ptr %7, align 16, !tbaa !78
  %360 = call float @llvm.fmuladd.f32(float %353, float -4.000000e+00, float %359)
  store float %360, ptr %21, align 4, !tbaa !78
  %361 = load float, ptr %61, align 4, !tbaa !78
  %362 = call float @llvm.fmuladd.f32(float %354, float -4.000000e+00, float %361)
  store float %362, ptr %65, align 4, !tbaa !78
  call void @glVertex2fv(ptr noundef nonnull %21) #6
  %363 = load float, ptr %60, align 16, !tbaa !78
  %364 = call float @llvm.fmuladd.f32(float %353, float 4.000000e+00, float %363)
  store float %364, ptr %21, align 4, !tbaa !78
  %365 = load float, ptr %62, align 4, !tbaa !78
  %366 = call float @llvm.fmuladd.f32(float %354, float 4.000000e+00, float %365)
  store float %366, ptr %65, align 4, !tbaa !78
  call void @glVertex2fv(ptr noundef nonnull %21) #6
  %367 = load float, ptr %60, align 16, !tbaa !78
  %368 = call float @llvm.fmuladd.f32(float %353, float -4.000000e+00, float %367)
  store float %368, ptr %21, align 4, !tbaa !78
  %369 = load float, ptr %62, align 4, !tbaa !78
  %370 = call float @llvm.fmuladd.f32(float %354, float -4.000000e+00, float %369)
  store float %370, ptr %65, align 4, !tbaa !78
  call void @glVertex2fv(ptr noundef nonnull %21) #6
  call void @glEnd() #6
  call void @glDisable(i32 noundef 3042) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %21) #6
  br label %371

371:                                              ; preds = %352, %267
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #6
  %372 = add nuw nsw i32 %68, 1
  %373 = load ptr, ptr %67, align 8, !tbaa !49
  %374 = icmp eq ptr %373, null
  br i1 %374, label %375, label %66, !llvm.loop !135

375:                                              ; preds = %371, %3
  call void @glDisable(i32 noundef 2848) #6
  %376 = load i32, ptr @blf_mono_font, align 4, !tbaa !109
  call void @BLF_disable(i32 noundef %376, i32 noundef 1) #6
  %377 = getelementptr inbounds %struct.RulerInfo, ptr %2, i64 0, i32 3
  %378 = load i32, ptr %377, align 8, !tbaa !103
  %379 = and i32 %378, 1
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %403, label %381

381:                                              ; preds = %375
  %382 = getelementptr inbounds %struct.RulerInfo, ptr %2, i64 0, i32 4
  %383 = load i32, ptr %382, align 4, !tbaa !100
  %384 = icmp eq i32 %383, 1
  br i1 %384, label %385, label %403

385:                                              ; preds = %381
  %386 = getelementptr inbounds %struct.RulerInfo, ptr %2, i64 0, i32 1
  %387 = load i32, ptr %386, align 8, !tbaa !101
  %388 = call ptr @BLI_findlink(ptr noundef nonnull %2, i32 noundef %387) #6
  %389 = icmp eq ptr %388, null
  br i1 %389, label %403, label %390

390:                                              ; preds = %385
  %391 = call float @UI_GetThemeValuef(i32 noundef 36) #6
  %392 = fmul float %391, 2.500000e+00
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %22) #6
  %393 = getelementptr inbounds %struct.RulerItem, ptr %388, i64 0, i32 3
  %394 = load i8, ptr %393, align 4, !tbaa !102
  %395 = zext i8 %394 to i64
  %396 = getelementptr inbounds %struct.RulerItem, ptr %388, i64 0, i32 2, i64 %395
  %397 = call i32 @ED_view3d_project_float_global(ptr noundef %1, ptr noundef nonnull %396, ptr noundef nonnull %22, i32 noundef 0) #6
  call void @cpack(i32 noundef 16777215) #6
  %398 = load float, ptr %22, align 4, !tbaa !78
  %399 = getelementptr inbounds [3 x float], ptr %22, i64 0, i64 1
  %400 = load float, ptr %399, align 4, !tbaa !78
  %401 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !124
  %402 = fmul float %392, %401
  call void @circ(float noundef %398, float noundef %400, float noundef %402) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %22) #6
  br label %403

403:                                              ; preds = %385, %390, %381, %375
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  ret void
}

declare void @WM_cursor_modal_set(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare ptr @BLI_findstring(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @gpencil_layer_getframe(ptr noundef, i32 noundef, i16 noundef signext) local_unnamed_addr #2

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @glEnable(i32 noundef) local_unnamed_addr #2

declare void @BLF_enable(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @BLF_size(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @BLF_rotation(i32 noundef, float noundef) local_unnamed_addr #2

declare void @UI_GetThemeColor3ubv(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ED_view3d_project_float_global(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @cpack(i32 noundef) local_unnamed_addr #2

declare void @glBegin(i32 noundef) local_unnamed_addr #2

declare void @glVertex2fv(ptr noundef) local_unnamed_addr #2

declare void @glEnd() local_unnamed_addr #2

declare void @setlinestyle(i32 noundef) local_unnamed_addr #2

declare float @ED_view3d_pixel_size(ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @angle_normalized_v3v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @axis_angle_to_quat(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare void @glColor3ubv(ptr noundef) local_unnamed_addr #2

declare void @mul_qt_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @glEnableClientState(i32 noundef) local_unnamed_addr #2

declare void @glVertexPointer(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @glDrawArrays(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @glDisableClientState(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @ruler_item_as_string(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.UnitSettings, ptr %1, i64 0, i32 3
  %6 = load i16, ptr %5, align 2, !tbaa !136
  %7 = trunc i16 %6 to i8
  %8 = and i8 %7, 1
  %9 = getelementptr inbounds %struct.RulerItem, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !82
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  %13 = getelementptr inbounds %struct.RulerItem, ptr %0, i64 0, i32 2
  br i1 %12, label %29, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.RulerItem, ptr %0, i64 0, i32 2, i64 1
  %16 = getelementptr inbounds %struct.RulerItem, ptr %0, i64 0, i32 2, i64 2
  %17 = tail call float @angle_v3v3v3(ptr noundef nonnull %13, ptr noundef nonnull %15, ptr noundef nonnull %16) #6
  %18 = getelementptr inbounds %struct.UnitSettings, ptr %1, i64 0, i32 1
  %19 = load i8, ptr %18, align 4, !tbaa !137
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %14
  %22 = fmul float %17, 0x404CA5DC20000000
  %23 = fpext float %22 to double
  %24 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %2, i64 noundef 256, ptr noundef nonnull @.str.6, i32 noundef %3, double noundef %23) #6
  br label %60

25:                                               ; preds = %14
  %26 = zext i8 %19 to i32
  %27 = fpext float %17 to double
  %28 = tail call i64 @bUnit_AsString(ptr noundef %2, i32 noundef 256, double noundef %27, i32 noundef %3, i32 noundef %26, i32 noundef 5, i8 noundef zeroext %8, i8 noundef zeroext 0) #6
  br label %60

29:                                               ; preds = %4
  %30 = getelementptr inbounds %struct.RulerItem, ptr %0, i64 0, i32 2, i64 2
  %31 = load float, ptr %30, align 4, !tbaa !78
  %32 = load float, ptr %13, align 4, !tbaa !78
  %33 = fsub float %31, %32
  %34 = getelementptr inbounds %struct.RulerItem, ptr %0, i64 0, i32 2, i64 2, i64 1
  %35 = load float, ptr %34, align 4, !tbaa !78
  %36 = getelementptr inbounds %struct.RulerItem, ptr %0, i64 0, i32 2, i64 0, i64 1
  %37 = load float, ptr %36, align 4, !tbaa !78
  %38 = fsub float %35, %37
  %39 = getelementptr inbounds %struct.RulerItem, ptr %0, i64 0, i32 2, i64 2, i64 2
  %40 = load float, ptr %39, align 4, !tbaa !78
  %41 = getelementptr inbounds %struct.RulerItem, ptr %0, i64 0, i32 2, i64 0, i64 2
  %42 = load float, ptr %41, align 4, !tbaa !78
  %43 = fsub float %40, %42
  %44 = fmul float %38, %38
  %45 = tail call float @llvm.fmuladd.f32(float %33, float %33, float %44)
  %46 = tail call float @llvm.fmuladd.f32(float %43, float %43, float %45)
  %47 = tail call float @sqrtf(float noundef %46) #6
  %48 = getelementptr inbounds %struct.UnitSettings, ptr %1, i64 0, i32 1
  %49 = load i8, ptr %48, align 4, !tbaa !137
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %29
  %52 = fpext float %47 to double
  %53 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %2, i64 noundef 256, ptr noundef nonnull @.str.7, i32 noundef %3, double noundef %52) #6
  br label %60

54:                                               ; preds = %29
  %55 = zext i8 %49 to i32
  %56 = load float, ptr %1, align 4, !tbaa !138
  %57 = fmul float %47, %56
  %58 = fpext float %57 to double
  %59 = tail call i64 @bUnit_AsString(ptr noundef %2, i32 noundef 256, double noundef %58, i32 noundef %3, i32 noundef %55, i32 noundef 1, i8 noundef zeroext %8, i8 noundef zeroext 0) #6
  br label %60

60:                                               ; preds = %51, %54, %21, %25
  ret void
}

declare void @BLF_width_and_height(i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @glColor4ubv(ptr noundef) local_unnamed_addr #2

declare void @uiSetRoundBox(i32 noundef) local_unnamed_addr #2

declare void @uiRoundBox(float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @BLF_position(i32 noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @BLF_draw(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @glVertex2f(float noundef, float noundef) local_unnamed_addr #2

declare void @glDisable(i32 noundef) local_unnamed_addr #2

declare void @mid_v2_v2v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLF_disable(i32 noundef, i32 noundef) local_unnamed_addr #2

declare float @UI_GetThemeValuef(i32 noundef) local_unnamed_addr #2

declare void @circ(float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

declare float @angle_v3v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i64 @bUnit_AsString(ptr noundef, i32 noundef, double noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @ED_area_headerprint(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_region_draw_cb_exit(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BLI_rcti_isect_pt_v(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_view3d(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i8 @view3d_ruler_item_mousemove(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #1 {
  %6 = alloca float, align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca float, align 4
  %14 = alloca [2 x float], align 4
  %15 = alloca [3 x float], align 4
  %16 = alloca [3 x float], align 4
  %17 = alloca [2 x float], align 4
  %18 = getelementptr inbounds %struct.RulerInfo, ptr %1, i64 0, i32 1
  %19 = load i32, ptr %18, align 8, !tbaa !101
  %20 = tail call ptr @BLI_findlink(ptr noundef %1, i32 noundef %19) #6
  %21 = getelementptr inbounds %struct.RulerInfo, ptr %1, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !103
  %23 = and i32 %22, -2
  store i32 %23, ptr %21, align 8, !tbaa !103
  %24 = icmp eq ptr %20, null
  br i1 %24, label %116, label %25

25:                                               ; preds = %5
  %26 = getelementptr inbounds %struct.RulerItem, ptr %20, i64 0, i32 3
  %27 = load i8, ptr %26, align 4, !tbaa !102
  %28 = zext i8 %27 to i64
  %29 = getelementptr inbounds %struct.RulerItem, ptr %20, i64 0, i32 2, i64 %28
  %30 = getelementptr inbounds %struct.RulerInfo, ptr %1, i64 0, i32 5
  %31 = load float, ptr %30, align 4, !tbaa !78
  store float %31, ptr %29, align 4, !tbaa !78
  %32 = getelementptr inbounds %struct.RulerInfo, ptr %1, i64 0, i32 5, i64 1
  %33 = load float, ptr %32, align 4, !tbaa !78
  %34 = getelementptr inbounds float, ptr %29, i64 1
  store float %33, ptr %34, align 4, !tbaa !78
  %35 = getelementptr inbounds %struct.RulerInfo, ptr %1, i64 0, i32 5, i64 2
  %36 = load float, ptr %35, align 4, !tbaa !78
  %37 = getelementptr inbounds float, ptr %29, i64 2
  store float %36, ptr %37, align 4, !tbaa !78
  %38 = getelementptr inbounds %struct.RulerInfo, ptr %1, i64 0, i32 8
  %39 = load ptr, ptr %38, align 8, !tbaa !91
  tail call void @ED_view3d_win_to_3d_int(ptr noundef %39, ptr noundef nonnull %29, ptr noundef %2, ptr noundef nonnull %29) #6
  %40 = icmp eq i8 %3, 0
  br i1 %40, label %80, label %41

41:                                               ; preds = %25
  %42 = load i8, ptr %26, align 4, !tbaa !102
  %43 = icmp eq i8 %42, 1
  br i1 %43, label %80, label %44

44:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #6
  %45 = load i32, ptr %2, align 4, !tbaa !109
  %46 = sitofp i32 %45 to float
  store float %46, ptr %14, align 4, !tbaa !78
  %47 = getelementptr inbounds float, ptr %14, i64 1
  %48 = getelementptr inbounds i32, ptr %2, i64 1
  %49 = load i32, ptr %48, align 4, !tbaa !109
  %50 = sitofp i32 %49 to float
  store float %50, ptr %47, align 4, !tbaa !78
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #6
  store float 1.200000e+01, ptr %9, align 4, !tbaa !78
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #6
  store float 0x47DFFFFFE0000000, ptr %10, align 4, !tbaa !78
  %51 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %52 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #6
  %53 = tail call ptr @CTX_wm_region(ptr noundef %0) #6
  %54 = call zeroext i8 @snapObjectsEx(ptr noundef %51, ptr noundef null, ptr noundef %52, ptr noundef %53, ptr noundef null, i16 noundef signext 3, ptr noundef nonnull %14, ptr noundef nonnull %9, ptr noundef nonnull %29, ptr noundef nonnull %15, ptr noundef nonnull %10, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #6
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %79, label %56

56:                                               ; preds = %44
  %57 = icmp eq i8 %42, 0
  %58 = select i1 %57, i64 2, i64 0
  %59 = getelementptr inbounds %struct.RulerItem, ptr %20, i64 0, i32 2, i64 %58
  %60 = load float, ptr %15, align 4, !tbaa !78
  %61 = fneg float %60
  store float %61, ptr %15, align 4, !tbaa !78
  %62 = getelementptr inbounds float, ptr %15, i64 1
  %63 = load float, ptr %62, align 4, !tbaa !78
  %64 = fneg float %63
  store float %64, ptr %62, align 4, !tbaa !78
  %65 = getelementptr inbounds float, ptr %15, i64 2
  %66 = load float, ptr %65, align 4, !tbaa !78
  %67 = fneg float %66
  store float %67, ptr %65, align 4, !tbaa !78
  %68 = load float, ptr %29, align 4, !tbaa !78
  %69 = call float @llvm.fmuladd.f32(float %61, float 0x3F2A36E2E0000000, float %68)
  store float %69, ptr %16, align 4, !tbaa !78
  %70 = load float, ptr %34, align 4, !tbaa !78
  %71 = call float @llvm.fmuladd.f32(float %64, float 0x3F2A36E2E0000000, float %70)
  %72 = getelementptr inbounds float, ptr %16, i64 1
  store float %71, ptr %72, align 4, !tbaa !78
  %73 = load float, ptr %37, align 4, !tbaa !78
  %74 = call float @llvm.fmuladd.f32(float %67, float 0x3F2A36E2E0000000, float %73)
  %75 = getelementptr inbounds float, ptr %16, i64 2
  store float %74, ptr %75, align 4, !tbaa !78
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #6
  store float 1.200000e+01, ptr %11, align 4, !tbaa !78
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #6
  store float 0x47DFFFFFE0000000, ptr %13, align 4, !tbaa !78
  %76 = call ptr @CTX_data_scene(ptr noundef %0) #6
  %77 = call ptr @CTX_data_edit_object(ptr noundef %0) #6
  %78 = call zeroext i8 @snapObjectsRayEx(ptr noundef %76, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %77, i16 noundef signext 3, ptr noundef null, ptr noundef null, ptr noundef nonnull %16, ptr noundef nonnull %15, ptr noundef nonnull %13, ptr noundef null, ptr noundef nonnull %11, ptr noundef nonnull %59, ptr noundef nonnull %12, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #6
  br label %79

79:                                               ; preds = %56, %44
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #6
  br label %116

80:                                               ; preds = %41, %25
  %81 = icmp eq i8 %4, 0
  br i1 %81, label %116, label %82

82:                                               ; preds = %80
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #6
  %83 = load i32, ptr %2, align 4, !tbaa !109
  %84 = sitofp i32 %83 to float
  store float %84, ptr %17, align 4, !tbaa !78
  %85 = getelementptr inbounds float, ptr %17, i64 1
  %86 = getelementptr inbounds i32, ptr %2, i64 1
  %87 = load i32, ptr %86, align 4, !tbaa !109
  %88 = sitofp i32 %87 to float
  store float %88, ptr %85, align 4, !tbaa !78
  %89 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #6
  %90 = getelementptr inbounds %struct.View3D, ptr %89, i64 0, i32 24
  %91 = load i16, ptr %90, align 8, !tbaa !106
  %92 = icmp sgt i16 %91, 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  store float 1.200000e+01, ptr %6, align 4, !tbaa !78
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #6
  store float 0x47DFFFFFE0000000, ptr %8, align 4, !tbaa !78
  %93 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %94 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #6
  %95 = tail call ptr @CTX_wm_region(ptr noundef %0) #6
  %96 = call zeroext i8 @snapObjectsEx(ptr noundef %93, ptr noundef null, ptr noundef %94, ptr noundef %95, ptr noundef null, i16 noundef signext 1, ptr noundef nonnull %17, ptr noundef nonnull %6, ptr noundef nonnull %29, ptr noundef nonnull %7, ptr noundef nonnull %8, i32 noundef 0) #6
  %97 = icmp eq i8 %96, 0
  %98 = or i1 %92, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %82
  br i1 %92, label %101, label %100

100:                                              ; preds = %99
  store float 0x47DFFFFFE0000000, ptr %8, align 4, !tbaa !78
  br label %101

101:                                              ; preds = %100, %99
  %102 = call zeroext i8 @snapObjectsEx(ptr noundef %93, ptr noundef null, ptr noundef %94, ptr noundef %95, ptr noundef null, i16 noundef signext 2, ptr noundef nonnull %17, ptr noundef nonnull %6, ptr noundef nonnull %29, ptr noundef nonnull %7, ptr noundef nonnull %8, i32 noundef 0) #6
  %103 = or i8 %102, %96
  br label %104

104:                                              ; preds = %101, %82
  %105 = phi i8 [ %103, %101 ], [ %96, %82 ]
  br i1 %92, label %106, label %109

106:                                              ; preds = %104
  %107 = call zeroext i8 @snapObjectsEx(ptr noundef %93, ptr noundef null, ptr noundef %94, ptr noundef %95, ptr noundef null, i16 noundef signext 3, ptr noundef nonnull %17, ptr noundef nonnull %6, ptr noundef nonnull %29, ptr noundef nonnull %7, ptr noundef nonnull %8, i32 noundef 0) #6
  %108 = or i8 %107, %105
  br label %109

109:                                              ; preds = %104, %106
  %110 = phi i8 [ %108, %106 ], [ %105, %104 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %109
  %113 = load i32, ptr %21, align 8, !tbaa !103
  %114 = or i32 %113, 1
  store i32 %114, ptr %21, align 8, !tbaa !103
  br label %115

115:                                              ; preds = %112, %109
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #6
  br label %116

116:                                              ; preds = %5, %79, %115, %80
  %117 = phi i8 [ 1, %80 ], [ 1, %115 ], [ 1, %79 ], [ 0, %5 ]
  ret i8 %117
}

declare float @line_point_factor_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare void @WM_clipboard_text_set(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @WM_event_add_mousemove(ptr noundef) local_unnamed_addr #2

declare void @WM_cursor_modal_restore(ptr noundef) local_unnamed_addr #2

declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @snapObjectsEx(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @snapObjectsRayEx(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @ED_view3d_win_to_3d_int(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @dist_squared_to_line_segment_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @gpencil_data_addnew(ptr noundef) local_unnamed_addr #2

declare ptr @gpencil_layer_addnew(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @free_gpencil_strokes(ptr noundef) local_unnamed_addr #2

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

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
!49 = !{!36, !36, i64 0}
!50 = !{!51, !36, i64 4608}
!51 = !{!"Scene", !52, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !53, i64 232, !53, i64 236, !53, i64 240, !41, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !54, i64 280, !64, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !41, i64 4376, !41, i64 4378, !53, i64 4380, !39, i64 4384, !65, i64 4400, !66, i64 4416, !69, i64 4600, !36, i64 4608, !70, i64 4616, !36, i64 4640, !71, i64 4648, !71, i64 4656, !57, i64 4664, !58, i64 4824, !72, i64 4888, !36, i64 4952}
!52 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !53, i64 100, !53, i64 104, !53, i64 108, !36, i64 112}
!53 = !{!"int", !37, i64 0}
!54 = !{!"RenderData", !55, i64 0, !36, i64 248, !36, i64 256, !59, i64 264, !60, i64 328, !53, i64 400, !53, i64 404, !53, i64 408, !56, i64 412, !53, i64 416, !53, i64 420, !53, i64 424, !53, i64 428, !41, i64 432, !41, i64 434, !56, i64 436, !56, i64 440, !56, i64 444, !56, i64 448, !56, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !53, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !53, i64 484, !53, i64 488, !41, i64 492, !41, i64 494, !53, i64 496, !53, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !37, i64 514, !37, i64 515, !53, i64 516, !53, i64 520, !53, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !61, i64 544, !61, i64 560, !62, i64 576, !39, i64 592, !41, i64 608, !41, i64 610, !56, i64 612, !56, i64 616, !56, i64 620, !56, i64 624, !53, i64 628, !56, i64 632, !56, i64 636, !56, i64 640, !56, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !56, i64 660, !56, i64 664, !41, i64 668, !41, i64 670, !56, i64 672, !56, i64 676, !37, i64 680, !53, i64 1704, !41, i64 1708, !41, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !53, i64 2520, !41, i64 2524, !41, i64 2526, !56, i64 2528, !56, i64 2532, !41, i64 2536, !41, i64 2538, !56, i64 2540, !41, i64 2544, !41, i64 2546, !53, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !56, i64 2560, !56, i64 2564, !36, i64 2568, !53, i64 2576, !56, i64 2580, !37, i64 2584, !63, i64 2616, !53, i64 3976, !53, i64 3980}
!55 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !41, i64 8, !41, i64 10, !56, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !57, i64 24, !58, i64 184}
!56 = !{!"float", !37, i64 0}
!57 = !{!"ColorManagedViewSettings", !53, i64 0, !53, i64 4, !37, i64 8, !37, i64 72, !56, i64 136, !56, i64 140, !36, i64 144, !36, i64 152}
!58 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!59 = !{!"QuicktimeCodecSettings", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !53, i64 16, !53, i64 20, !53, i64 24, !53, i64 28, !53, i64 32, !53, i64 36, !53, i64 40, !53, i64 44, !41, i64 48, !41, i64 50, !53, i64 52, !53, i64 56, !53, i64 60}
!60 = !{!"FFMpegCodecData", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !53, i64 16, !53, i64 20, !53, i64 24, !53, i64 28, !56, i64 32, !53, i64 36, !53, i64 40, !53, i64 44, !53, i64 48, !53, i64 52, !53, i64 56, !53, i64 60, !36, i64 64}
!61 = !{!"rctf", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12}
!62 = !{!"rcti", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12}
!63 = !{!"BakeData", !55, i64 0, !37, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !56, i64 1280, !56, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!64 = !{!"AudioData", !53, i64 0, !56, i64 4, !56, i64 8, !56, i64 12, !53, i64 16, !41, i64 20, !41, i64 22, !56, i64 24, !56, i64 28}
!65 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!66 = !{!"GameData", !65, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !37, i64 34, !67, i64 40, !41, i64 64, !41, i64 66, !56, i64 68, !68, i64 72, !56, i64 128, !56, i64 132, !53, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !56, i64 164, !56, i64 168, !56, i64 172, !56, i64 176, !56, i64 180}
!67 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !56, i64 8, !56, i64 12, !36, i64 16}
!68 = !{!"RecastData", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12, !56, i64 16, !56, i64 20, !56, i64 24, !56, i64 28, !56, i64 32, !56, i64 36, !53, i64 40, !56, i64 44, !56, i64 48, !41, i64 52, !41, i64 54}
!69 = !{!"UnitSettings", !56, i64 0, !37, i64 4, !37, i64 5, !41, i64 6}
!70 = !{!"PhysicsSettings", !37, i64 0, !53, i64 12, !53, i64 16, !53, i64 20}
!71 = !{!"long", !37, i64 0}
!72 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!73 = !{!51, !53, i64 680}
!74 = !{!75, !36, i64 16}
!75 = !{!"bGPDstroke", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !53, i64 32, !41, i64 36, !41, i64 38, !76, i64 40}
!76 = !{!"double", !37, i64 0}
!77 = !{!75, !53, i64 32}
!78 = !{!56, !56, i64 0}
!79 = distinct !{!79, !80, !81}
!80 = !{!"llvm.loop.mustprogress"}
!81 = !{!"llvm.loop.unroll.disable"}
!82 = !{!83, !53, i64 56}
!83 = !{!"RulerItem", !36, i64 0, !36, i64 8, !37, i64 16, !37, i64 52, !53, i64 56, !53, i64 60}
!84 = distinct !{!84, !80, !81}
!85 = distinct !{!85, !80, !81}
!86 = !{!87, !36, i64 96}
!87 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!88 = !{!89, !36, i64 48}
!89 = !{!"RulerInfo", !39, i64 0, !53, i64 16, !53, i64 20, !53, i64 24, !53, i64 28, !37, i64 32, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72}
!90 = !{!89, !36, i64 56}
!91 = !{!89, !36, i64 64}
!92 = !{!93, !36, i64 240}
!93 = !{!"ARegion", !36, i64 0, !36, i64 8, !94, i64 16, !62, i64 176, !62, i64 192, !41, i64 208, !41, i64 210, !41, i64 212, !41, i64 214, !41, i64 216, !41, i64 218, !56, i64 220, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !41, i64 232, !41, i64 234, !41, i64 236, !41, i64 238, !36, i64 240, !39, i64 248, !39, i64 264, !39, i64 280, !39, i64 296, !39, i64 312, !39, i64 328, !39, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!94 = !{!"View2D", !61, i64 0, !61, i64 16, !62, i64 32, !62, i64 48, !62, i64 64, !37, i64 80, !37, i64 88, !56, i64 96, !56, i64 100, !41, i64 104, !41, i64 106, !41, i64 108, !41, i64 110, !41, i64 112, !41, i64 114, !41, i64 116, !41, i64 118, !41, i64 120, !41, i64 122, !41, i64 124, !41, i64 126, !36, i64 128, !53, i64 136, !53, i64 140, !36, i64 144, !36, i64 152}
!95 = !{!89, !36, i64 72}
!96 = !{!93, !36, i64 376}
!97 = !{!98, !41, i64 16}
!98 = !{!"wmEvent", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 18, !53, i64 20, !53, i64 24, !37, i64 28, !37, i64 36, !37, i64 42, !37, i64 43, !41, i64 44, !41, i64 46, !53, i64 48, !53, i64 52, !76, i64 56, !53, i64 64, !53, i64 68, !41, i64 72, !41, i64 74, !41, i64 76, !41, i64 78, !41, i64 80, !41, i64 82, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 106, !53, i64 108, !36, i64 112}
!99 = !{!98, !41, i64 18}
!100 = !{!89, !53, i64 28}
!101 = !{!89, !53, i64 16}
!102 = !{!83, !37, i64 52}
!103 = !{!89, !53, i64 24}
!104 = !{!98, !41, i64 74}
!105 = !{!39, !36, i64 0}
!106 = !{!107, !41, i64 232}
!107 = !{!"View3D", !36, i64 0, !36, i64 8, !39, i64 16, !53, i64 32, !56, i64 36, !37, i64 40, !37, i64 56, !56, i64 72, !56, i64 76, !37, i64 80, !37, i64 81, !53, i64 84, !53, i64 88, !41, i64 92, !41, i64 94, !36, i64 96, !36, i64 104, !61, i64 112, !39, i64 128, !36, i64 144, !36, i64 152, !37, i64 160, !53, i64 224, !53, i64 228, !41, i64 232, !41, i64 234, !41, i64 236, !41, i64 238, !41, i64 240, !41, i64 242, !56, i64 244, !56, i64 248, !56, i64 252, !56, i64 256, !37, i64 260, !37, i64 272, !41, i64 284, !41, i64 286, !41, i64 288, !37, i64 290, !37, i64 291, !37, i64 292, !37, i64 293, !37, i64 294, !39, i64 296, !39, i64 312, !39, i64 328, !37, i64 344, !37, i64 345, !37, i64 346, !37, i64 347, !36, i64 352, !36, i64 360, !36, i64 368}
!108 = !{i8 0, i8 2}
!109 = !{!53, !53, i64 0}
!110 = distinct !{!110, !80, !81}
!111 = distinct !{!111, !80, !81}
!112 = !{!98, !41, i64 72}
!113 = !{!114, !41, i64 44}
!114 = !{!"bGPDlayer", !36, i64 0, !36, i64 8, !39, i64 16, !36, i64 32, !53, i64 40, !41, i64 44, !41, i64 46, !37, i64 48, !37, i64 64}
!115 = !{!114, !53, i64 40}
!116 = !{!117, !56, i64 12}
!117 = !{!"bGPDspoint", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12, !56, i64 16}
!118 = distinct !{!118, !80, !81}
!119 = distinct !{!119, !80, !81}
!120 = !{!75, !41, i64 38}
!121 = distinct !{!121, !80, !81}
!122 = !{!83, !36, i64 8}
!123 = !{!83, !36, i64 0}
!124 = !{!125, !56, i64 10908}
!125 = !{!"UserDef", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !53, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !53, i64 8468, !41, i64 8472, !41, i64 8474, !41, i64 8476, !41, i64 8478, !41, i64 8480, !41, i64 8482, !53, i64 8484, !53, i64 8488, !53, i64 8492, !41, i64 8496, !41, i64 8498, !53, i64 8500, !53, i64 8504, !53, i64 8508, !53, i64 8512, !53, i64 8516, !53, i64 8520, !53, i64 8524, !41, i64 8528, !41, i64 8530, !41, i64 8532, !41, i64 8534, !39, i64 8536, !39, i64 8552, !39, i64 8568, !39, i64 8584, !39, i64 8600, !39, i64 8616, !39, i64 8632, !37, i64 8648, !41, i64 8712, !41, i64 8714, !41, i64 8716, !41, i64 8718, !41, i64 8720, !41, i64 8722, !41, i64 8724, !41, i64 8726, !37, i64 8728, !41, i64 8896, !41, i64 8898, !41, i64 8900, !41, i64 8902, !41, i64 8904, !41, i64 8906, !41, i64 8908, !41, i64 8910, !53, i64 8912, !53, i64 8916, !41, i64 8920, !41, i64 8922, !41, i64 8924, !41, i64 8926, !41, i64 8928, !41, i64 8930, !41, i64 8932, !41, i64 8934, !41, i64 8936, !41, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !41, i64 8944, !41, i64 8946, !41, i64 8948, !41, i64 8950, !41, i64 8952, !41, i64 8954, !56, i64 8956, !56, i64 8960, !53, i64 8964, !41, i64 8968, !41, i64 8970, !56, i64 8972, !41, i64 8976, !41, i64 8978, !41, i64 8980, !41, i64 8982, !126, i64 8984, !37, i64 9760, !37, i64 9772, !41, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !53, i64 10896, !53, i64 10900, !56, i64 10904, !56, i64 10908, !53, i64 10912, !41, i64 10916, !41, i64 10918, !41, i64 10920, !41, i64 10922, !41, i64 10924, !41, i64 10926, !127, i64 10928}
!126 = !{!"ColorBand", !41, i64 0, !41, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!127 = !{!"WalkNavigation", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12, !56, i64 16, !56, i64 20, !41, i64 24, !37, i64 26}
!128 = !{!125, !53, i64 8524}
!129 = distinct !{!129, !80, !81}
!130 = distinct !{!130, !80, !81}
!131 = distinct !{!131, !80, !81}
!132 = distinct !{!132, !80, !81}
!133 = distinct !{!133, !80, !81}
!134 = distinct !{!134, !80, !81}
!135 = distinct !{!135, !80, !81}
!136 = !{!69, !41, i64 6}
!137 = !{!69, !37, i64 4}
!138 = !{!69, !56, i64 0}
