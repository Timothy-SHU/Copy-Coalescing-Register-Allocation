; ModuleID = 'blender/source/blender/editors/interface/interface_eyedropper.c'
source_filename = "blender/source/blender/editors/interface/interface_eyedropper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ListBase = type { ptr, ptr }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.Eyedropper = type { ptr, %struct.PointerRNA, ptr, i32, i8, [3 x float], i32 }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.DataDropper = type { %struct.PointerRNA, ptr, i16, ptr, ptr, ptr, [200 x i8] }
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
%struct.wmWindow = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, ptr, ptr, ptr, i32, i32, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.bScreen = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"Eyedropper\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"UI_OT_eyedropper_color\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"Sample a color from the Blender Window to store in a property\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Eyedropper Datablock\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"UI_OT_eyedropper_id\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [12 x i8] c"DataDropper\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"Failed to set value\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"Incompatible, expected a %s\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @UI_OT_eyedropper_color(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.1, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @eyedropper_invoke, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @eyedropper_modal, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @eyedropper_cancel, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @eyedropper_exec, ptr %7, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @eyedropper_poll, ptr %8, align 8, !tbaa !48
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 4, ptr %9, align 8, !tbaa !49
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @eyedropper_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #1 {
  %4 = tail call fastcc zeroext i8 @eyedropper_init(ptr noundef %0, ptr noundef %1), !range !50
  %5 = icmp eq i8 %4, 0
  %6 = tail call ptr @CTX_wm_window(ptr noundef %0) #6
  br i1 %5, label %9, label %7

7:                                                ; preds = %3
  tail call void @WM_cursor_modal_set(ptr noundef %6, i32 noundef 17) #6
  %8 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #6
  br label %15

9:                                                ; preds = %3
  tail call void @WM_cursor_modal_restore(ptr noundef %6) #6
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !51
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !53
  tail call void %14(ptr noundef nonnull %11) #6
  store ptr null, ptr %10, align 8, !tbaa !51
  br label %15

15:                                               ; preds = %13, %9, %7
  %16 = phi i32 [ 1, %7 ], [ 2, %9 ], [ 2, %13 ]
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @eyedropper_modal(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #1 {
  %4 = alloca [4 x float], align 16
  %5 = alloca [4 x float], align 16
  %6 = alloca [4 x float], align 16
  %7 = alloca [4 x float], align 16
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !51
  %14 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %15 = load i16, ptr %14, align 8, !tbaa !54
  switch i16 %15, label %186 [
    i16 218, label %16
    i16 3, label %16
    i16 1, label %22
    i16 4, label %102
    i16 221, label %144
  ]

16:                                               ; preds = %3, %3
  %17 = tail call ptr @CTX_wm_window(ptr noundef %0) #6
  tail call void @WM_cursor_modal_restore(ptr noundef %17) #6
  %18 = load ptr, ptr %12, align 8, !tbaa !51
  %19 = icmp eq ptr %18, null
  br i1 %19, label %186, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr @MEM_freeN, align 8, !tbaa !53
  tail call void %21(ptr noundef nonnull %18) #6
  store ptr null, ptr %12, align 8, !tbaa !51
  br label %186

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %24 = load i16, ptr %23, align 2, !tbaa !58
  switch i16 %24, label %186 [
    i16 2, label %25
    i16 1, label %79
  ]

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.Eyedropper, ptr %13, i64 0, i32 6
  %27 = load i32, ptr %26, align 4, !tbaa !59
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %50

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %31 = load i32, ptr %30, align 4, !tbaa !63
  %32 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %33 = load i32, ptr %32, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #6
  call fastcc void @eyedropper_color_sample_fl(ptr noundef %0, i32 noundef %31, i32 noundef %33, ptr noundef nonnull %11)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #6
  %34 = getelementptr inbounds %struct.Eyedropper, ptr %13, i64 0, i32 1
  %35 = getelementptr inbounds %struct.Eyedropper, ptr %13, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !65
  call void @RNA_property_float_get_array(ptr noundef nonnull %34, ptr noundef %36, ptr noundef nonnull %7) #6
  %37 = load ptr, ptr %13, align 8, !tbaa !66
  %38 = icmp eq ptr %37, null
  %39 = load float, ptr %11, align 4, !tbaa !67
  store float %39, ptr %7, align 16, !tbaa !67
  %40 = getelementptr inbounds float, ptr %11, i64 1
  %41 = load float, ptr %40, align 4, !tbaa !67
  %42 = getelementptr inbounds float, ptr %7, i64 1
  store float %41, ptr %42, align 4, !tbaa !67
  %43 = getelementptr inbounds float, ptr %11, i64 2
  %44 = load float, ptr %43, align 4, !tbaa !67
  %45 = getelementptr inbounds float, ptr %7, i64 2
  store float %44, ptr %45, align 8, !tbaa !67
  br i1 %38, label %47, label %46

46:                                               ; preds = %29
  call void @IMB_colormanagement_display_to_scene_linear_v3(ptr noundef nonnull %7, ptr noundef nonnull %37) #6
  br label %47

47:                                               ; preds = %29, %46
  %48 = load ptr, ptr %35, align 8, !tbaa !65
  call void @RNA_property_float_set_array(ptr noundef nonnull %34, ptr noundef %48, ptr noundef nonnull %7) #6
  %49 = load ptr, ptr %35, align 8, !tbaa !65
  call void @RNA_property_update(ptr noundef %0, ptr noundef nonnull %34, ptr noundef %49) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #6
  br label %73

50:                                               ; preds = %25
  %51 = getelementptr inbounds %struct.Eyedropper, ptr %13, i64 0, i32 5
  %52 = sitofp i32 %27 to float
  %53 = fdiv float 1.000000e+00, %52
  %54 = load float, ptr %51, align 4, !tbaa !67
  %55 = fmul float %53, %54
  %56 = getelementptr inbounds %struct.Eyedropper, ptr %13, i64 0, i32 5, i64 1
  %57 = load float, ptr %56, align 4, !tbaa !67
  %58 = fmul float %53, %57
  %59 = getelementptr inbounds %struct.Eyedropper, ptr %13, i64 0, i32 5, i64 2
  %60 = load float, ptr %59, align 4, !tbaa !67
  %61 = fmul float %53, %60
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #6
  %62 = getelementptr inbounds %struct.Eyedropper, ptr %13, i64 0, i32 1
  %63 = getelementptr inbounds %struct.Eyedropper, ptr %13, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !65
  call void @RNA_property_float_get_array(ptr noundef nonnull %62, ptr noundef %64, ptr noundef nonnull %6) #6
  %65 = load ptr, ptr %13, align 8, !tbaa !66
  %66 = icmp eq ptr %65, null
  store float %55, ptr %6, align 16, !tbaa !67
  %67 = getelementptr inbounds float, ptr %6, i64 1
  store float %58, ptr %67, align 4, !tbaa !67
  %68 = getelementptr inbounds float, ptr %6, i64 2
  store float %61, ptr %68, align 8, !tbaa !67
  br i1 %66, label %70, label %69

69:                                               ; preds = %50
  call void @IMB_colormanagement_display_to_scene_linear_v3(ptr noundef nonnull %6, ptr noundef nonnull %65) #6
  br label %70

70:                                               ; preds = %50, %69
  %71 = load ptr, ptr %63, align 8, !tbaa !65
  call void @RNA_property_float_set_array(ptr noundef nonnull %62, ptr noundef %71, ptr noundef nonnull %6) #6
  %72 = load ptr, ptr %63, align 8, !tbaa !65
  call void @RNA_property_update(ptr noundef %0, ptr noundef nonnull %62, ptr noundef %72) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6
  br label %73

73:                                               ; preds = %70, %47
  %74 = call ptr @CTX_wm_window(ptr noundef %0) #6
  call void @WM_cursor_modal_restore(ptr noundef %74) #6
  %75 = load ptr, ptr %12, align 8, !tbaa !51
  %76 = icmp eq ptr %75, null
  br i1 %76, label %186, label %77

77:                                               ; preds = %73
  %78 = load ptr, ptr @MEM_freeN, align 8, !tbaa !53
  call void %78(ptr noundef nonnull %75) #6
  store ptr null, ptr %12, align 8, !tbaa !51
  br label %186

79:                                               ; preds = %22
  %80 = getelementptr inbounds %struct.Eyedropper, ptr %13, i64 0, i32 4
  store i8 1, ptr %80, align 4, !tbaa !69
  %81 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %82 = load i32, ptr %81, align 4, !tbaa !63
  %83 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %84 = load i32, ptr %83, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #6
  call fastcc void @eyedropper_color_sample_fl(ptr noundef %0, i32 noundef %82, i32 noundef %84, ptr noundef nonnull %10)
  %85 = getelementptr inbounds %struct.Eyedropper, ptr %13, i64 0, i32 5
  %86 = load float, ptr %10, align 4, !tbaa !67
  %87 = load float, ptr %85, align 4, !tbaa !67
  %88 = fadd float %86, %87
  store float %88, ptr %85, align 4, !tbaa !67
  %89 = getelementptr inbounds float, ptr %10, i64 1
  %90 = load float, ptr %89, align 4, !tbaa !67
  %91 = getelementptr inbounds %struct.Eyedropper, ptr %13, i64 0, i32 5, i64 1
  %92 = load float, ptr %91, align 4, !tbaa !67
  %93 = fadd float %90, %92
  store float %93, ptr %91, align 4, !tbaa !67
  %94 = getelementptr inbounds float, ptr %10, i64 2
  %95 = load float, ptr %94, align 4, !tbaa !67
  %96 = getelementptr inbounds %struct.Eyedropper, ptr %13, i64 0, i32 5, i64 2
  %97 = load float, ptr %96, align 4, !tbaa !67
  %98 = fadd float %95, %97
  store float %98, ptr %96, align 4, !tbaa !67
  %99 = getelementptr inbounds %struct.Eyedropper, ptr %13, i64 0, i32 6
  %100 = load i32, ptr %99, align 4, !tbaa !59
  %101 = add nsw i32 %100, 1
  store i32 %101, ptr %99, align 4, !tbaa !59
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #6
  br label %186

102:                                              ; preds = %3
  %103 = getelementptr inbounds %struct.Eyedropper, ptr %13, i64 0, i32 4
  %104 = load i8, ptr %103, align 4, !tbaa !69
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %186, label %106

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %108 = load i32, ptr %107, align 4, !tbaa !63
  %109 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %110 = load i32, ptr %109, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #6
  call fastcc void @eyedropper_color_sample_fl(ptr noundef %0, i32 noundef %108, i32 noundef %110, ptr noundef nonnull %9)
  %111 = getelementptr inbounds %struct.Eyedropper, ptr %13, i64 0, i32 5
  %112 = load float, ptr %9, align 4, !tbaa !67
  %113 = load float, ptr %111, align 4, !tbaa !67
  %114 = fadd float %112, %113
  store float %114, ptr %111, align 4, !tbaa !67
  %115 = getelementptr inbounds float, ptr %9, i64 1
  %116 = load float, ptr %115, align 4, !tbaa !67
  %117 = getelementptr inbounds %struct.Eyedropper, ptr %13, i64 0, i32 5, i64 1
  %118 = load float, ptr %117, align 4, !tbaa !67
  %119 = fadd float %116, %118
  store float %119, ptr %117, align 4, !tbaa !67
  %120 = getelementptr inbounds float, ptr %9, i64 2
  %121 = load float, ptr %120, align 4, !tbaa !67
  %122 = getelementptr inbounds %struct.Eyedropper, ptr %13, i64 0, i32 5, i64 2
  %123 = load float, ptr %122, align 4, !tbaa !67
  %124 = fadd float %121, %123
  store float %124, ptr %122, align 4, !tbaa !67
  %125 = getelementptr inbounds %struct.Eyedropper, ptr %13, i64 0, i32 6
  %126 = load i32, ptr %125, align 4, !tbaa !59
  %127 = add nsw i32 %126, 1
  store i32 %127, ptr %125, align 4, !tbaa !59
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #6
  %128 = sitofp i32 %127 to float
  %129 = fdiv float 1.000000e+00, %128
  %130 = fmul float %114, %129
  %131 = fmul float %119, %129
  %132 = fmul float %124, %129
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6
  %133 = getelementptr inbounds %struct.Eyedropper, ptr %13, i64 0, i32 1
  %134 = getelementptr inbounds %struct.Eyedropper, ptr %13, i64 0, i32 2
  %135 = load ptr, ptr %134, align 8, !tbaa !65
  call void @RNA_property_float_get_array(ptr noundef nonnull %133, ptr noundef %135, ptr noundef nonnull %5) #6
  %136 = load ptr, ptr %13, align 8, !tbaa !66
  %137 = icmp eq ptr %136, null
  store float %130, ptr %5, align 16, !tbaa !67
  %138 = getelementptr inbounds float, ptr %5, i64 1
  store float %131, ptr %138, align 4, !tbaa !67
  %139 = getelementptr inbounds float, ptr %5, i64 2
  store float %132, ptr %139, align 8, !tbaa !67
  br i1 %137, label %141, label %140

140:                                              ; preds = %106
  call void @IMB_colormanagement_display_to_scene_linear_v3(ptr noundef nonnull %5, ptr noundef nonnull %136) #6
  br label %141

141:                                              ; preds = %106, %140
  %142 = load ptr, ptr %134, align 8, !tbaa !65
  call void @RNA_property_float_set_array(ptr noundef nonnull %133, ptr noundef %142, ptr noundef nonnull %5) #6
  %143 = load ptr, ptr %134, align 8, !tbaa !65
  call void @RNA_property_update(ptr noundef %0, ptr noundef nonnull %133, ptr noundef %143) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6
  br label %186

144:                                              ; preds = %3
  %145 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %146 = load i16, ptr %145, align 2, !tbaa !58
  %147 = icmp eq i16 %146, 2
  br i1 %147, label %148, label %186

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.Eyedropper, ptr %13, i64 0, i32 6
  %150 = getelementptr inbounds %struct.Eyedropper, ptr %13, i64 0, i32 5
  %151 = getelementptr inbounds %struct.Eyedropper, ptr %13, i64 0, i32 5, i64 1
  %152 = getelementptr inbounds %struct.Eyedropper, ptr %13, i64 0, i32 5, i64 2
  %153 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %150, i8 0, i64 16, i1 false)
  %154 = load i32, ptr %153, align 4, !tbaa !63
  %155 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %156 = load i32, ptr %155, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #6
  call fastcc void @eyedropper_color_sample_fl(ptr noundef %0, i32 noundef %154, i32 noundef %156, ptr noundef nonnull %8)
  %157 = load float, ptr %8, align 4, !tbaa !67
  %158 = load float, ptr %150, align 4, !tbaa !67
  %159 = fadd float %157, %158
  store float %159, ptr %150, align 4, !tbaa !67
  %160 = getelementptr inbounds float, ptr %8, i64 1
  %161 = load float, ptr %160, align 4, !tbaa !67
  %162 = load float, ptr %151, align 4, !tbaa !67
  %163 = fadd float %161, %162
  store float %163, ptr %151, align 4, !tbaa !67
  %164 = getelementptr inbounds float, ptr %8, i64 2
  %165 = load float, ptr %164, align 4, !tbaa !67
  %166 = load float, ptr %152, align 4, !tbaa !67
  %167 = fadd float %165, %166
  store float %167, ptr %152, align 4, !tbaa !67
  %168 = load i32, ptr %149, align 4, !tbaa !59
  %169 = add nsw i32 %168, 1
  store i32 %169, ptr %149, align 4, !tbaa !59
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #6
  %170 = sitofp i32 %169 to float
  %171 = fdiv float 1.000000e+00, %170
  %172 = fmul float %159, %171
  %173 = fmul float %163, %171
  %174 = fmul float %167, %171
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6
  %175 = getelementptr inbounds %struct.Eyedropper, ptr %13, i64 0, i32 1
  %176 = getelementptr inbounds %struct.Eyedropper, ptr %13, i64 0, i32 2
  %177 = load ptr, ptr %176, align 8, !tbaa !65
  call void @RNA_property_float_get_array(ptr noundef nonnull %175, ptr noundef %177, ptr noundef nonnull %4) #6
  %178 = load ptr, ptr %13, align 8, !tbaa !66
  %179 = icmp eq ptr %178, null
  store float %172, ptr %4, align 16, !tbaa !67
  %180 = getelementptr inbounds float, ptr %4, i64 1
  store float %173, ptr %180, align 4, !tbaa !67
  %181 = getelementptr inbounds float, ptr %4, i64 2
  store float %174, ptr %181, align 8, !tbaa !67
  br i1 %179, label %183, label %182

182:                                              ; preds = %148
  call void @IMB_colormanagement_display_to_scene_linear_v3(ptr noundef nonnull %4, ptr noundef nonnull %178) #6
  br label %183

183:                                              ; preds = %148, %182
  %184 = load ptr, ptr %176, align 8, !tbaa !65
  call void @RNA_property_float_set_array(ptr noundef nonnull %175, ptr noundef %184, ptr noundef nonnull %4) #6
  %185 = load ptr, ptr %176, align 8, !tbaa !65
  call void @RNA_property_update(ptr noundef %0, ptr noundef nonnull %175, ptr noundef %185) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6
  br label %186

186:                                              ; preds = %77, %73, %20, %16, %3, %79, %141, %102, %183, %144, %22
  %187 = phi i32 [ 1, %22 ], [ 1, %144 ], [ 1, %183 ], [ 1, %102 ], [ 1, %141 ], [ 1, %79 ], [ 1, %3 ], [ 2, %16 ], [ 2, %20 ], [ 4, %73 ], [ 4, %77 ]
  ret i32 %187
}

; Function Attrs: nounwind uwtable
define internal void @eyedropper_cancel(ptr noundef %0, ptr nocapture noundef %1) #1 {
  %3 = tail call ptr @CTX_wm_window(ptr noundef %0) #6
  tail call void @WM_cursor_modal_restore(ptr noundef %3) #6
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !51
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !53
  tail call void %8(ptr noundef nonnull %5) #6
  store ptr null, ptr %4, align 8, !tbaa !51
  br label %9

9:                                                ; preds = %2, %7
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @eyedropper_exec(ptr noundef %0, ptr nocapture noundef %1) #1 {
  %3 = tail call fastcc zeroext i8 @eyedropper_init(ptr noundef %0, ptr noundef %1), !range !50
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @CTX_wm_window(ptr noundef %0) #6
  tail call void @WM_cursor_modal_restore(ptr noundef %6) #6
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !51
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !53
  tail call void %11(ptr noundef nonnull %8) #6
  store ptr null, ptr %7, align 8, !tbaa !51
  br label %12

12:                                               ; preds = %10, %5, %2
  %13 = phi i32 [ 2, %2 ], [ 4, %5 ], [ 4, %10 ]
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal i32 @eyedropper_poll(ptr noundef %0) #1 {
  %2 = tail call ptr @CTX_wm_window(ptr noundef %0) #6
  %3 = icmp ne ptr %2, null
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @UI_OT_eyedropper_id(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.3, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.4, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @datadropper_invoke, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @datadropper_modal, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @datadropper_cancel, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @datadropper_exec, ptr %7, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @datadropper_poll, ptr %8, align 8, !tbaa !48
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 4, ptr %9, align 8, !tbaa !49
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @datadropper_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #1 {
  %4 = tail call fastcc i32 @datadropper_init(ptr noundef %0, ptr noundef %1), !range !70
  %5 = icmp eq i32 %4, 0
  %6 = tail call ptr @CTX_wm_window(ptr noundef %0) #6
  br i1 %5, label %9, label %7

7:                                                ; preds = %3
  tail call void @WM_cursor_modal_set(ptr noundef %6, i32 noundef 17) #6
  %8 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #6
  br label %23

9:                                                ; preds = %3
  tail call void @WM_cursor_modal_restore(ptr noundef %6) #6
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !51
  %12 = icmp eq ptr %11, null
  br i1 %12, label %23, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.DataDropper, ptr %11, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !71
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.DataDropper, ptr %11, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !73
  tail call void @ED_region_draw_cb_exit(ptr noundef nonnull %15, ptr noundef %19) #6
  br label %20

20:                                               ; preds = %17, %13
  %21 = load ptr, ptr @MEM_freeN, align 8, !tbaa !53
  %22 = load ptr, ptr %10, align 8, !tbaa !51
  tail call void %21(ptr noundef %22) #6
  store ptr null, ptr %10, align 8, !tbaa !51
  br label %23

23:                                               ; preds = %20, %9, %7
  %24 = phi i32 [ 1, %7 ], [ 2, %9 ], [ 2, %20 ]
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @datadropper_modal(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #1 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !51
  %10 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %11 = load i16, ptr %10, align 8, !tbaa !54
  switch i16 %11, label %64 [
    i16 218, label %12
    i16 3, label %12
    i16 1, label %26
    i16 4, label %59
  ]

12:                                               ; preds = %3, %3
  %13 = tail call ptr @CTX_wm_window(ptr noundef %0) #6
  tail call void @WM_cursor_modal_restore(ptr noundef %13) #6
  %14 = load ptr, ptr %8, align 8, !tbaa !51
  %15 = icmp eq ptr %14, null
  br i1 %15, label %64, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.DataDropper, ptr %14, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !71
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.DataDropper, ptr %14, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !73
  tail call void @ED_region_draw_cb_exit(ptr noundef nonnull %18, ptr noundef %22) #6
  br label %23

23:                                               ; preds = %20, %16
  %24 = load ptr, ptr @MEM_freeN, align 8, !tbaa !53
  %25 = load ptr, ptr %8, align 8, !tbaa !51
  tail call void %24(ptr noundef %25) #6
  store ptr null, ptr %8, align 8, !tbaa !51
  br label %64

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %28 = load i16, ptr %27, align 2, !tbaa !58
  %29 = icmp eq i16 %28, 2
  br i1 %29, label %30, label %64

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %32 = load i32, ptr %31, align 4, !tbaa !63
  %33 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %34 = load i32, ptr %33, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #6
  store ptr null, ptr %6, align 8, !tbaa !53
  call fastcc void @datadropper_id_sample_pt(ptr noundef %0, ptr noundef %9, i32 noundef %32, i32 noundef %34, ptr noundef nonnull %6)
  %35 = load ptr, ptr %6, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #6
  call void @RNA_id_pointer_create(ptr noundef %35, ptr noundef nonnull %4) #6
  %36 = getelementptr inbounds %struct.DataDropper, ptr %9, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !74
  call void @RNA_property_pointer_set(ptr noundef %9, ptr noundef %37, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %4) #6
  %38 = load ptr, ptr %36, align 8, !tbaa !74
  call void @RNA_property_update(ptr noundef %0, ptr noundef %9, ptr noundef %38) #6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #6
  %39 = load ptr, ptr %36, align 8, !tbaa !74
  call void @RNA_property_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef %9, ptr noundef %39) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !75
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #6
  %40 = load ptr, ptr %4, align 8, !tbaa !76
  %41 = icmp eq ptr %40, %35
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #6
  %42 = call ptr @CTX_wm_window(ptr noundef %0) #6
  call void @WM_cursor_modal_restore(ptr noundef %42) #6
  %43 = load ptr, ptr %8, align 8, !tbaa !51
  %44 = icmp eq ptr %43, null
  br i1 %44, label %55, label %45

45:                                               ; preds = %30
  %46 = getelementptr inbounds %struct.DataDropper, ptr %43, i64 0, i32 4
  %47 = load ptr, ptr %46, align 8, !tbaa !71
  %48 = icmp eq ptr %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.DataDropper, ptr %43, i64 0, i32 5
  %51 = load ptr, ptr %50, align 8, !tbaa !73
  call void @ED_region_draw_cb_exit(ptr noundef nonnull %47, ptr noundef %51) #6
  br label %52

52:                                               ; preds = %49, %45
  %53 = load ptr, ptr @MEM_freeN, align 8, !tbaa !53
  %54 = load ptr, ptr %8, align 8, !tbaa !51
  call void %53(ptr noundef %54) #6
  store ptr null, ptr %8, align 8, !tbaa !51
  br label %55

55:                                               ; preds = %30, %52
  br i1 %41, label %64, label %56

56:                                               ; preds = %55
  %57 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %58 = load ptr, ptr %57, align 8, !tbaa !77
  call void @BKE_report(ptr noundef %58, i32 noundef 16, ptr noundef nonnull @.str.6) #6
  br label %64

59:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #6
  store ptr null, ptr %7, align 8, !tbaa !53
  %60 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %61 = load i32, ptr %60, align 4, !tbaa !63
  %62 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %63 = load i32, ptr %62, align 8, !tbaa !64
  call fastcc void @datadropper_id_sample_pt(ptr noundef %0, ptr noundef %9, i32 noundef %61, i32 noundef %63, ptr noundef nonnull %7)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #6
  br label %64

64:                                               ; preds = %23, %12, %59, %3, %26, %56, %55
  %65 = phi i32 [ 2, %56 ], [ 4, %55 ], [ 1, %26 ], [ 1, %3 ], [ 1, %59 ], [ 2, %12 ], [ 2, %23 ]
  ret i32 %65
}

; Function Attrs: nounwind uwtable
define internal void @datadropper_cancel(ptr noundef %0, ptr nocapture noundef %1) #1 {
  %3 = tail call ptr @CTX_wm_window(ptr noundef %0) #6
  tail call void @WM_cursor_modal_restore(ptr noundef %3) #6
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !51
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.DataDropper, ptr %5, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !71
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.DataDropper, ptr %5, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !73
  tail call void @ED_region_draw_cb_exit(ptr noundef nonnull %9, ptr noundef %13) #6
  br label %14

14:                                               ; preds = %11, %7
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !53
  %16 = load ptr, ptr %4, align 8, !tbaa !51
  tail call void %15(ptr noundef %16) #6
  store ptr null, ptr %4, align 8, !tbaa !51
  br label %17

17:                                               ; preds = %2, %14
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @datadropper_exec(ptr noundef %0, ptr nocapture noundef %1) #1 {
  %3 = tail call fastcc i32 @datadropper_init(ptr noundef %0, ptr noundef %1), !range !70
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %20, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @CTX_wm_window(ptr noundef %0) #6
  tail call void @WM_cursor_modal_restore(ptr noundef %6) #6
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !51
  %9 = icmp eq ptr %8, null
  br i1 %9, label %20, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.DataDropper, ptr %8, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !71
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.DataDropper, ptr %8, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !73
  tail call void @ED_region_draw_cb_exit(ptr noundef nonnull %12, ptr noundef %16) #6
  br label %17

17:                                               ; preds = %14, %10
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !53
  %19 = load ptr, ptr %7, align 8, !tbaa !51
  tail call void %18(ptr noundef %19) #6
  store ptr null, ptr %7, align 8, !tbaa !51
  br label %20

20:                                               ; preds = %17, %5, %2
  %21 = phi i32 [ 2, %2 ], [ 4, %5 ], [ 4, %17 ]
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal i32 @datadropper_poll(ptr noundef %0) #1 {
  %2 = tail call ptr @CTX_wm_window(ptr noundef %0) #6
  %3 = icmp ne ptr %2, null
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i8 @eyedropper_init(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #1 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !53
  %5 = tail call ptr %4(i64 noundef 64, ptr noundef nonnull @.str) #6
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %5, ptr %6, align 8, !tbaa !51
  %7 = getelementptr inbounds %struct.Eyedropper, ptr %5, i64 0, i32 1
  %8 = getelementptr inbounds %struct.Eyedropper, ptr %5, i64 0, i32 2
  %9 = getelementptr inbounds %struct.Eyedropper, ptr %5, i64 0, i32 3
  tail call void @uiContextActiveProperty(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #6
  %10 = getelementptr inbounds %struct.Eyedropper, ptr %5, i64 0, i32 1, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !78
  %12 = icmp eq ptr %11, null
  br i1 %12, label %34, label %13

13:                                               ; preds = %2
  %14 = load ptr, ptr %8, align 8, !tbaa !65
  %15 = icmp eq ptr %14, null
  br i1 %15, label %34, label %16

16:                                               ; preds = %13
  %17 = tail call zeroext i8 @RNA_property_editable(ptr noundef nonnull %7, ptr noundef nonnull %14) #6
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %34, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr %8, align 8, !tbaa !65
  %21 = tail call i32 @RNA_property_array_length(ptr noundef nonnull %7, ptr noundef %20) #6
  %22 = icmp slt i32 %21, 3
  br i1 %22, label %34, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr %8, align 8, !tbaa !65
  %25 = tail call i32 @RNA_property_type(ptr noundef %24) #6
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = load ptr, ptr %8, align 8, !tbaa !65
  %29 = tail call i32 @RNA_property_subtype(ptr noundef %28) #6
  %30 = icmp eq i32 %29, 20
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 45
  %33 = tail call ptr @IMB_colormanagement_display_get_named(ptr noundef nonnull %32) #6
  store ptr %33, ptr %5, align 8, !tbaa !66
  br label %34

34:                                               ; preds = %27, %31, %2, %13, %16, %19, %23
  %35 = phi i8 [ 0, %23 ], [ 0, %19 ], [ 0, %16 ], [ 0, %13 ], [ 0, %2 ], [ 1, %31 ], [ 1, %27 ]
  ret i8 %35
}

declare void @WM_cursor_modal_set(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #2

declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare void @uiContextActiveProperty(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @RNA_property_editable(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_property_array_length(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_property_type(ptr noundef) local_unnamed_addr #2

declare i32 @RNA_property_subtype(ptr noundef) local_unnamed_addr #2

declare ptr @IMB_colormanagement_display_get_named(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

declare void @WM_cursor_modal_restore(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @eyedropper_color_sample_fl(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #1 {
  %5 = alloca [2 x i32], align 4
  %6 = alloca [2 x i32], align 4
  %7 = alloca [2 x i32], align 4
  %8 = tail call ptr @CTX_wm_window(ptr noundef %0) #6
  %9 = getelementptr inbounds %struct.wmWindow, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !79
  %11 = getelementptr inbounds %struct.bScreen, ptr %10, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !53
  %13 = icmp eq ptr %12, null
  br i1 %13, label %83, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds i32, ptr %7, i64 1
  %16 = getelementptr inbounds i32, ptr %6, i64 1
  %17 = getelementptr inbounds i32, ptr %5, i64 1
  br label %18

18:                                               ; preds = %14, %80
  %19 = phi ptr [ %12, %14 ], [ %81, %80 ]
  %20 = getelementptr inbounds %struct.ScrArea, ptr %19, i64 0, i32 7
  %21 = call zeroext i8 @BLI_rcti_isect_pt(ptr noundef nonnull %20, i32 noundef %1, i32 noundef %2) #6
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %80, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.ScrArea, ptr %19, i64 0, i32 8
  %25 = load i8, ptr %24, align 8, !tbaa !81
  switch i8 %25, label %80 [
    i8 6, label %26
    i8 16, label %44
    i8 20, label %62
  ]

26:                                               ; preds = %23
  %27 = call ptr @BKE_area_find_region_type(ptr noundef nonnull %19, i32 noundef 0) #6
  %28 = icmp eq ptr %27, null
  br i1 %28, label %80, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.ARegion, ptr %27, i64 0, i32 3
  %31 = call zeroext i8 @BLI_rcti_isect_pt(ptr noundef nonnull %30, i32 noundef %1, i32 noundef %2) #6
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %80, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.ScrArea, ptr %19, i64 0, i32 19
  %35 = load ptr, ptr %34, align 8, !tbaa !84
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  %36 = load i32, ptr %30, align 8, !tbaa !85
  %37 = sub nsw i32 %1, %36
  store i32 %37, ptr %5, align 4, !tbaa !89
  %38 = getelementptr inbounds %struct.ARegion, ptr %27, i64 0, i32 3, i32 2
  %39 = load i32, ptr %38, align 8, !tbaa !90
  %40 = sub nsw i32 %2, %39
  store i32 %40, ptr %17, align 4, !tbaa !89
  %41 = call ptr @CTX_data_scene(ptr noundef %0) #6
  %42 = call zeroext i8 @ED_space_image_color_sample(ptr noundef %41, ptr noundef %35, ptr noundef nonnull %27, ptr noundef nonnull %5, ptr noundef %3) #6
  %43 = icmp eq i8 %42, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  br i1 %43, label %80, label %84

44:                                               ; preds = %23
  %45 = call ptr @BKE_area_find_region_type(ptr noundef nonnull %19, i32 noundef 0) #6
  %46 = icmp eq ptr %45, null
  br i1 %46, label %80, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.ARegion, ptr %45, i64 0, i32 3
  %49 = call zeroext i8 @BLI_rcti_isect_pt(ptr noundef nonnull %48, i32 noundef %1, i32 noundef %2) #6
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %80, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.ScrArea, ptr %19, i64 0, i32 19
  %53 = load ptr, ptr %52, align 8, !tbaa !84
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #6
  %54 = load i32, ptr %48, align 8, !tbaa !85
  %55 = sub nsw i32 %1, %54
  store i32 %55, ptr %6, align 4, !tbaa !89
  %56 = getelementptr inbounds %struct.ARegion, ptr %45, i64 0, i32 3, i32 2
  %57 = load i32, ptr %56, align 8, !tbaa !90
  %58 = sub nsw i32 %2, %57
  store i32 %58, ptr %16, align 4, !tbaa !89
  %59 = call ptr @CTX_data_scene(ptr noundef %0) #6
  %60 = call zeroext i8 @ED_space_node_color_sample(ptr noundef %59, ptr noundef %53, ptr noundef nonnull %45, ptr noundef nonnull %6, ptr noundef %3) #6
  %61 = icmp eq i8 %60, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #6
  br i1 %61, label %80, label %84

62:                                               ; preds = %23
  %63 = call ptr @BKE_area_find_region_type(ptr noundef nonnull %19, i32 noundef 0) #6
  %64 = icmp eq ptr %63, null
  br i1 %64, label %80, label %65

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.ARegion, ptr %63, i64 0, i32 3
  %67 = call zeroext i8 @BLI_rcti_isect_pt(ptr noundef nonnull %66, i32 noundef %1, i32 noundef %2) #6
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %80, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.ScrArea, ptr %19, i64 0, i32 19
  %71 = load ptr, ptr %70, align 8, !tbaa !84
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #6
  %72 = load i32, ptr %66, align 8, !tbaa !85
  %73 = sub nsw i32 %1, %72
  store i32 %73, ptr %7, align 4, !tbaa !89
  %74 = getelementptr inbounds %struct.ARegion, ptr %63, i64 0, i32 3, i32 2
  %75 = load i32, ptr %74, align 8, !tbaa !90
  %76 = sub nsw i32 %2, %75
  store i32 %76, ptr %15, align 4, !tbaa !89
  %77 = call ptr @CTX_data_scene(ptr noundef %0) #6
  %78 = call zeroext i8 @ED_space_clip_color_sample(ptr noundef %77, ptr noundef %71, ptr noundef nonnull %63, ptr noundef nonnull %7, ptr noundef %3) #6
  %79 = icmp eq i8 %78, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #6
  br i1 %79, label %80, label %84

80:                                               ; preds = %62, %65, %69, %44, %47, %51, %26, %29, %33, %23, %18
  %81 = load ptr, ptr %19, align 8, !tbaa !53
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %18, !llvm.loop !91

83:                                               ; preds = %80, %4
  call void @glReadBuffer(i32 noundef 1028) #6
  call void @glReadPixels(i32 noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef 1, i32 noundef 6407, i32 noundef 5126, ptr noundef %3) #6
  call void @glReadBuffer(i32 noundef 1029) #6
  br label %84

84:                                               ; preds = %69, %51, %33, %83
  ret void
}

declare zeroext i8 @BLI_rcti_isect_pt(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BKE_area_find_region_type(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @ED_space_image_color_sample(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @ED_space_node_color_sample(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @ED_space_clip_color_sample(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @glReadBuffer(i32 noundef) local_unnamed_addr #2

declare void @glReadPixels(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_property_float_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @IMB_colormanagement_display_to_scene_linear_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_property_float_set_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_property_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @datadropper_init(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #1 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  %4 = tail call ptr @BKE_spacetype_from_id(i32 noundef 1) #6
  %5 = tail call ptr @BKE_regiontype_from_id(ptr noundef %4, i32 noundef 0) #6
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !53
  %7 = tail call ptr %6(i64 noundef 264, ptr noundef nonnull @.str.5) #6
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %7, ptr %8, align 8, !tbaa !51
  %9 = getelementptr inbounds %struct.DataDropper, ptr %7, i64 0, i32 1
  call void @uiContextActiveProperty(ptr noundef %0, ptr noundef %7, ptr noundef nonnull %9, ptr noundef nonnull %3) #6
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %7, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !94
  %12 = icmp eq ptr %11, null
  br i1 %12, label %34, label %13

13:                                               ; preds = %2
  %14 = load ptr, ptr %9, align 8, !tbaa !74
  %15 = icmp eq ptr %14, null
  br i1 %15, label %34, label %16

16:                                               ; preds = %13
  %17 = call zeroext i8 @RNA_property_editable(ptr noundef %7, ptr noundef nonnull %14) #6
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %34, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr %9, align 8, !tbaa !74
  %21 = call i32 @RNA_property_type(ptr noundef %20) #6
  %22 = icmp eq i32 %21, 5
  br i1 %22, label %23, label %34

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.DataDropper, ptr %7, i64 0, i32 4
  store ptr %5, ptr %24, align 8, !tbaa !71
  %25 = call ptr @ED_region_draw_cb_activate(ptr noundef %5, ptr noundef nonnull @datadropper_draw_cb, ptr noundef %7, i32 noundef 1) #6
  %26 = getelementptr inbounds %struct.DataDropper, ptr %7, i64 0, i32 5
  store ptr %25, ptr %26, align 8, !tbaa !73
  %27 = load ptr, ptr %9, align 8, !tbaa !74
  %28 = call ptr @RNA_property_pointer_type(ptr noundef %7, ptr noundef %27) #6
  %29 = call signext i16 @RNA_type_to_ID_code(ptr noundef %28) #6
  %30 = getelementptr inbounds %struct.DataDropper, ptr %7, i64 0, i32 2
  store i16 %29, ptr %30, align 8, !tbaa !95
  %31 = sext i16 %29 to i32
  %32 = call ptr @BKE_idcode_to_name(i32 noundef %31) #6
  %33 = getelementptr inbounds %struct.DataDropper, ptr %7, i64 0, i32 3
  store ptr %32, ptr %33, align 8, !tbaa !96
  br label %34

34:                                               ; preds = %2, %13, %16, %19, %23
  %35 = phi i32 [ 1, %23 ], [ 0, %19 ], [ 0, %16 ], [ 0, %13 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret i32 %35
}

declare ptr @BKE_spacetype_from_id(i32 noundef) local_unnamed_addr #2

declare ptr @BKE_regiontype_from_id(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @ED_region_draw_cb_activate(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @datadropper_draw_cb(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.DataDropper, ptr %2, i64 0, i32 6
  %5 = tail call ptr @CTX_wm_window(ptr noundef %0) #6
  %6 = getelementptr inbounds %struct.wmWindow, ptr %5, i64 0, i32 21
  %7 = load ptr, ptr %6, align 8, !tbaa !97
  %8 = getelementptr inbounds %struct.wmEvent, ptr %7, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !63
  %10 = getelementptr inbounds %struct.wmEvent, ptr %7, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !64
  %12 = load i8, ptr %4, align 1, !tbaa !98
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %37, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %16 = tail call zeroext i8 @BLI_rcti_isect_pt(ptr noundef nonnull %15, i32 noundef %9, i32 noundef %11) #6
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %37, label %18

18:                                               ; preds = %14
  %19 = tail call i32 @UI_GetStringWidth(ptr noundef nonnull %4) #6
  %20 = load i32, ptr %15, align 8, !tbaa !85
  %21 = sub nsw i32 %9, %20
  %22 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !90
  %24 = sub nsw i32 %11, %23
  %25 = add nsw i32 %24, 20
  tail call void @glColor4ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 50) #6
  tail call void @uiSetRoundBox(i32 noundef 31) #6
  %26 = sitofp i32 %21 to float
  %27 = sitofp i32 %25 to float
  %28 = add i32 %19, 8
  %29 = add i32 %28, %21
  %30 = sitofp i32 %29 to float
  %31 = add nsw i32 %24, 35
  %32 = sitofp i32 %31 to float
  tail call void @uiRoundBox(float noundef %26, float noundef %27, float noundef %30, float noundef %32, float noundef 4.000000e+00) #6
  tail call void @glColor4ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1) #6
  %33 = add nsw i32 %21, 4
  %34 = sitofp i32 %33 to float
  %35 = add nsw i32 %24, 24
  %36 = sitofp i32 %35 to float
  tail call void @UI_DrawString(float noundef %34, float noundef %36, ptr noundef nonnull %4) #6
  br label %37

37:                                               ; preds = %3, %14, %18
  ret void
}

declare ptr @RNA_property_pointer_type(ptr noundef, ptr noundef) local_unnamed_addr #2

declare signext i16 @RNA_type_to_ID_code(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_idcode_to_name(i32 noundef) local_unnamed_addr #2

declare i32 @UI_GetStringWidth(ptr noundef) local_unnamed_addr #2

declare void @glColor4ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare void @uiSetRoundBox(i32 noundef) local_unnamed_addr #2

declare void @uiRoundBox(float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @UI_DrawString(float noundef, float noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_region_draw_cb_exit(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @datadropper_id_sample_pt(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) unnamed_addr #1 {
  %6 = alloca [2 x i32], align 4
  %7 = tail call ptr @CTX_wm_window(ptr noundef %0) #6
  %8 = tail call ptr @CTX_wm_area(ptr noundef %0) #6
  %9 = tail call ptr @CTX_wm_region(ptr noundef %0) #6
  %10 = getelementptr inbounds %struct.DataDropper, ptr %1, i64 0, i32 6
  store i8 0, ptr %10, align 8, !tbaa !98
  %11 = getelementptr inbounds %struct.wmWindow, ptr %7, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !79
  %13 = getelementptr inbounds %struct.bScreen, ptr %12, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !53
  %15 = icmp eq ptr %14, null
  br i1 %15, label %77, label %16

16:                                               ; preds = %5
  %17 = getelementptr inbounds i32, ptr %6, i64 1
  %18 = getelementptr inbounds %struct.DataDropper, ptr %1, i64 0, i32 2
  %19 = getelementptr inbounds %struct.DataDropper, ptr %1, i64 0, i32 3
  %20 = getelementptr inbounds %struct.DataDropper, ptr %1, i64 0, i32 3
  br label %21

21:                                               ; preds = %16, %74
  %22 = phi ptr [ %14, %16 ], [ %75, %74 ]
  %23 = getelementptr inbounds %struct.ScrArea, ptr %22, i64 0, i32 7
  %24 = call zeroext i8 @BLI_rcti_isect_pt(ptr noundef nonnull %23, i32 noundef %2, i32 noundef %3) #6
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %74, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.ScrArea, ptr %22, i64 0, i32 8
  %28 = load i8, ptr %27, align 8, !tbaa !81
  %29 = icmp eq i8 %28, 1
  br i1 %29, label %30, label %74

30:                                               ; preds = %26
  %31 = call ptr @BKE_area_find_region_type(ptr noundef nonnull %22, i32 noundef 0) #6
  %32 = icmp eq ptr %31, null
  br i1 %32, label %70, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.ARegion, ptr %31, i64 0, i32 3
  %35 = call zeroext i8 @BLI_rcti_isect_pt(ptr noundef nonnull %34, i32 noundef %2, i32 noundef %3) #6
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %70, label %37

37:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #6
  %38 = load i32, ptr %34, align 8, !tbaa !85
  %39 = sub nsw i32 %2, %38
  store i32 %39, ptr %6, align 4, !tbaa !89
  %40 = getelementptr inbounds %struct.ARegion, ptr %31, i64 0, i32 3, i32 2
  %41 = load i32, ptr %40, align 8, !tbaa !90
  %42 = sub nsw i32 %3, %41
  store i32 %42, ptr %17, align 4, !tbaa !89
  call void @CTX_wm_area_set(ptr noundef %0, ptr noundef nonnull %22) #6
  call void @CTX_wm_region_set(ptr noundef %0, ptr noundef nonnull %31) #6
  call void @ED_region_tag_redraw(ptr noundef nonnull %31) #6
  %43 = call ptr @ED_view3d_give_base_under_cursor(ptr noundef %0, ptr noundef nonnull %6) #6
  %44 = icmp eq ptr %43, null
  br i1 %44, label %68, label %45

45:                                               ; preds = %37
  %46 = getelementptr inbounds %struct.Base, ptr %43, i64 0, i32 7
  %47 = load ptr, ptr %46, align 8, !tbaa !99
  %48 = load i16, ptr %18, align 8, !tbaa !95
  %49 = icmp eq i16 %48, 16975
  br i1 %49, label %61, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.Object, ptr %47, i64 0, i32 19
  %52 = load ptr, ptr %51, align 8, !tbaa !101
  %53 = icmp eq ptr %52, null
  br i1 %53, label %61, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.ID, ptr %52, i64 0, i32 4
  %56 = load i16, ptr %55, align 8, !tbaa !106
  %57 = icmp eq i16 %56, %48
  br i1 %57, label %61, label %58

58:                                               ; preds = %54
  %59 = load ptr, ptr %19, align 8, !tbaa !96
  %60 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %10, i64 noundef 200, ptr noundef nonnull @.str.7, ptr noundef %59) #6
  br label %61

61:                                               ; preds = %54, %45, %50, %58
  %62 = phi ptr [ null, %58 ], [ null, %50 ], [ %47, %45 ], [ %52, %54 ]
  %63 = icmp eq ptr %62, null
  br i1 %63, label %68, label %64

64:                                               ; preds = %61
  %65 = load ptr, ptr %20, align 8, !tbaa !96
  %66 = getelementptr inbounds %struct.ID, ptr %62, i64 0, i32 4, i64 2
  %67 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %10, i64 noundef 200, ptr noundef nonnull @.str.8, ptr noundef %65, ptr noundef nonnull %66) #6
  store ptr %62, ptr %4, align 8, !tbaa !53
  br label %68

68:                                               ; preds = %37, %61, %64
  %69 = phi i32 [ 2, %64 ], [ 2, %61 ], [ 0, %37 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #6
  br i1 %44, label %70, label %71

70:                                               ; preds = %68, %33, %30
  br label %71

71:                                               ; preds = %68, %70
  %72 = phi i32 [ 0, %70 ], [ %69, %68 ]
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71, %21, %26
  %75 = load ptr, ptr %22, align 8, !tbaa !53
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %21, !llvm.loop !107

77:                                               ; preds = %74, %71, %5
  call void @CTX_wm_area_set(ptr noundef %0, ptr noundef %8) #6
  call void @CTX_wm_region_set(ptr noundef %0, ptr noundef %9) #6
  ret void
}

declare void @RNA_id_pointer_create(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_property_pointer_set(ptr noundef, ptr noundef, ptr noundef byval(%struct.PointerRNA) align 8) local_unnamed_addr #2

declare void @RNA_property_pointer_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

declare void @CTX_wm_area_set(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @CTX_wm_region_set(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #2

declare ptr @ED_view3d_give_base_under_cursor(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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
!42 = !{!35, !36, i64 8}
!43 = !{!35, !36, i64 24}
!44 = !{!35, !36, i64 48}
!45 = !{!35, !36, i64 64}
!46 = !{!35, !36, i64 56}
!47 = !{!35, !36, i64 32}
!48 = !{!35, !36, i64 72}
!49 = !{!35, !41, i64 184}
!50 = !{i8 0, i8 2}
!51 = !{!52, !36, i64 96}
!52 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!53 = !{!36, !36, i64 0}
!54 = !{!55, !41, i64 16}
!55 = !{!"wmEvent", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 18, !56, i64 20, !56, i64 24, !37, i64 28, !37, i64 36, !37, i64 42, !37, i64 43, !41, i64 44, !41, i64 46, !56, i64 48, !56, i64 52, !57, i64 56, !56, i64 64, !56, i64 68, !41, i64 72, !41, i64 74, !41, i64 76, !41, i64 78, !41, i64 80, !41, i64 82, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 106, !56, i64 108, !36, i64 112}
!56 = !{!"int", !37, i64 0}
!57 = !{!"double", !37, i64 0}
!58 = !{!55, !41, i64 18}
!59 = !{!60, !56, i64 60}
!60 = !{!"Eyedropper", !36, i64 0, !61, i64 8, !36, i64 32, !56, i64 40, !37, i64 44, !37, i64 48, !56, i64 60}
!61 = !{!"PointerRNA", !62, i64 0, !36, i64 8, !36, i64 16}
!62 = !{!"", !36, i64 0}
!63 = !{!55, !56, i64 20}
!64 = !{!55, !56, i64 24}
!65 = !{!60, !36, i64 32}
!66 = !{!60, !36, i64 0}
!67 = !{!68, !68, i64 0}
!68 = !{!"float", !37, i64 0}
!69 = !{!60, !37, i64 44}
!70 = !{i32 0, i32 2}
!71 = !{!72, !36, i64 48}
!72 = !{!"DataDropper", !61, i64 0, !36, i64 24, !41, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !37, i64 64}
!73 = !{!72, !36, i64 56}
!74 = !{!72, !36, i64 24}
!75 = !{i64 0, i64 8, !53, i64 8, i64 8, !53, i64 16, i64 8, !53}
!76 = !{!61, !36, i64 0}
!77 = !{!52, !36, i64 120}
!78 = !{!60, !36, i64 24}
!79 = !{!80, !36, i64 24}
!80 = !{!"wmWindow", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !41, i64 104, !41, i64 106, !41, i64 108, !41, i64 110, !41, i64 112, !41, i64 114, !41, i64 116, !41, i64 118, !41, i64 120, !41, i64 122, !41, i64 124, !41, i64 126, !56, i64 128, !41, i64 132, !41, i64 134, !36, i64 136, !36, i64 144, !36, i64 152, !56, i64 160, !56, i64 164, !36, i64 168, !39, i64 176, !39, i64 192, !39, i64 208, !39, i64 224, !39, i64 240}
!81 = !{!82, !37, i64 72}
!82 = !{!"ScrArea", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !83, i64 56, !37, i64 72, !37, i64 73, !41, i64 74, !41, i64 76, !41, i64 78, !41, i64 80, !41, i64 82, !41, i64 84, !37, i64 86, !37, i64 87, !36, i64 88, !39, i64 96, !39, i64 112, !39, i64 128, !39, i64 144}
!83 = !{!"rcti", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12}
!84 = !{!82, !36, i64 96}
!85 = !{!86, !56, i64 176}
!86 = !{!"ARegion", !36, i64 0, !36, i64 8, !87, i64 16, !83, i64 176, !83, i64 192, !41, i64 208, !41, i64 210, !41, i64 212, !41, i64 214, !41, i64 216, !41, i64 218, !68, i64 220, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !41, i64 232, !41, i64 234, !41, i64 236, !41, i64 238, !36, i64 240, !39, i64 248, !39, i64 264, !39, i64 280, !39, i64 296, !39, i64 312, !39, i64 328, !39, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!87 = !{!"View2D", !88, i64 0, !88, i64 16, !83, i64 32, !83, i64 48, !83, i64 64, !37, i64 80, !37, i64 88, !68, i64 96, !68, i64 100, !41, i64 104, !41, i64 106, !41, i64 108, !41, i64 110, !41, i64 112, !41, i64 114, !41, i64 116, !41, i64 118, !41, i64 120, !41, i64 122, !41, i64 124, !41, i64 126, !36, i64 128, !56, i64 136, !56, i64 140, !36, i64 144, !36, i64 152}
!88 = !{!"rctf", !68, i64 0, !68, i64 4, !68, i64 8, !68, i64 12}
!89 = !{!56, !56, i64 0}
!90 = !{!86, !56, i64 184}
!91 = distinct !{!91, !92, !93}
!92 = !{!"llvm.loop.mustprogress"}
!93 = !{!"llvm.loop.unroll.disable"}
!94 = !{!72, !36, i64 16}
!95 = !{!72, !41, i64 32}
!96 = !{!72, !36, i64 40}
!97 = !{!80, !36, i64 136}
!98 = !{!37, !37, i64 0}
!99 = !{!100, !36, i64 32}
!100 = !{!"Base", !36, i64 0, !36, i64 8, !56, i64 16, !56, i64 20, !56, i64 24, !41, i64 28, !41, i64 30, !36, i64 32}
!101 = !{!102, !36, i64 296}
!102 = !{!"Object", !103, i64 0, !36, i64 120, !36, i64 128, !41, i64 136, !41, i64 138, !56, i64 140, !56, i64 144, !56, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !104, i64 312, !36, i64 360, !39, i64 368, !39, i64 384, !39, i64 400, !39, i64 416, !56, i64 432, !56, i64 436, !36, i64 440, !36, i64 448, !56, i64 456, !56, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !68, i64 616, !68, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !56, i64 944, !41, i64 948, !41, i64 950, !41, i64 952, !41, i64 954, !41, i64 956, !41, i64 958, !41, i64 960, !41, i64 962, !41, i64 964, !37, i64 966, !37, i64 967, !56, i64 968, !56, i64 972, !56, i64 976, !56, i64 980, !56, i64 984, !68, i64 988, !68, i64 992, !68, i64 996, !68, i64 1000, !68, i64 1004, !68, i64 1008, !68, i64 1012, !68, i64 1016, !68, i64 1020, !68, i64 1024, !68, i64 1028, !68, i64 1032, !41, i64 1036, !41, i64 1038, !41, i64 1040, !37, i64 1042, !37, i64 1043, !41, i64 1044, !37, i64 1046, !37, i64 1047, !68, i64 1048, !68, i64 1052, !39, i64 1056, !39, i64 1072, !39, i64 1088, !39, i64 1104, !68, i64 1120, !41, i64 1124, !41, i64 1126, !37, i64 1128, !56, i64 1144, !56, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !41, i64 1162, !37, i64 1164, !39, i64 1176, !39, i64 1192, !39, i64 1208, !39, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !41, i64 1266, !68, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !105, i64 1304, !105, i64 1312, !56, i64 1320, !56, i64 1324, !39, i64 1328, !39, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !39, i64 1400, !36, i64 1416}
!103 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !56, i64 100, !56, i64 104, !56, i64 108, !36, i64 112}
!104 = !{!"bAnimVizSettings", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !56, i64 32, !56, i64 36, !56, i64 40, !56, i64 44}
!105 = !{!"long", !37, i64 0}
!106 = !{!41, !41, i64 0}
!107 = distinct !{!107, !92, !93}
