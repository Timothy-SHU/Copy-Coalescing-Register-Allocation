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
%struct.DataDropper = type { %struct.PointerRNA, ptr, i16, ptr, ptr, ptr, [200 x i8] }
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @UI_OT_eyedropper_color(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.1, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @eyedropper_invoke, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @eyedropper_modal, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @eyedropper_cancel, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @eyedropper_exec, ptr %7, align 8, !tbaa !18
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @eyedropper_poll, ptr %8, align 8, !tbaa !19
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 4, ptr %9, align 8, !tbaa !20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @eyedropper_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #1 {
  %4 = tail call fastcc zeroext i8 @eyedropper_init(ptr noundef %0, ptr noundef %1) #6, !range !21
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @CTX_wm_window(ptr noundef %0) #7
  tail call void @WM_cursor_modal_set(ptr noundef %7, i32 noundef 17) #7
  %8 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #7
  br label %10

9:                                                ; preds = %3
  tail call fastcc void @eyedropper_exit(ptr noundef %0, ptr noundef %1) #6
  br label %10

10:                                               ; preds = %9, %6
  %11 = phi i32 [ 1, %6 ], [ 2, %9 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @eyedropper_modal(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #1 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !22
  %6 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %7 = load i16, ptr %6, align 8, !tbaa !24
  switch i16 %7, label %49 [
    i16 218, label %8
    i16 3, label %8
    i16 1, label %9
    i16 4, label %29
    i16 221, label %38
  ]

8:                                                ; preds = %3, %3
  tail call void @eyedropper_cancel(ptr noundef %0, ptr noundef nonnull %1) #6
  br label %49

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %11 = load i16, ptr %10, align 2, !tbaa !28
  switch i16 %11, label %49 [
    i16 2, label %12
    i16 1, label %23
  ]

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.Eyedropper, ptr %5, i64 0, i32 6
  %14 = load i32, ptr %13, align 4, !tbaa !29
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %18 = load i32, ptr %17, align 4, !tbaa !33
  %19 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %20 = load i32, ptr %19, align 8, !tbaa !34
  tail call fastcc void @eyedropper_color_sample(ptr noundef %0, ptr noundef nonnull %5, i32 noundef %18, i32 noundef %20) #6
  br label %22

21:                                               ; preds = %12
  tail call fastcc void @eyedropper_color_set_accum(ptr noundef %0, ptr noundef nonnull %5) #6
  br label %22

22:                                               ; preds = %21, %16
  tail call fastcc void @eyedropper_exit(ptr noundef %0, ptr noundef nonnull %1) #6
  br label %49

23:                                               ; preds = %9
  %24 = getelementptr inbounds %struct.Eyedropper, ptr %5, i64 0, i32 4
  store i8 1, ptr %24, align 4, !tbaa !35
  %25 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %26 = load i32, ptr %25, align 4, !tbaa !33
  %27 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %28 = load i32, ptr %27, align 8, !tbaa !34
  tail call fastcc void @eyedropper_color_sample_accum(ptr noundef %0, ptr noundef %5, i32 noundef %26, i32 noundef %28) #6
  br label %49

29:                                               ; preds = %3
  %30 = getelementptr inbounds %struct.Eyedropper, ptr %5, i64 0, i32 4
  %31 = load i8, ptr %30, align 4, !tbaa !35
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %49, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %35 = load i32, ptr %34, align 4, !tbaa !33
  %36 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %37 = load i32, ptr %36, align 8, !tbaa !34
  tail call fastcc void @eyedropper_color_sample_accum(ptr noundef %0, ptr noundef nonnull %5, i32 noundef %35, i32 noundef %37) #6
  tail call fastcc void @eyedropper_color_set_accum(ptr noundef %0, ptr noundef nonnull %5) #6
  br label %49

38:                                               ; preds = %3
  %39 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %40 = load i16, ptr %39, align 2, !tbaa !28
  %41 = icmp eq i16 %40, 2
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.Eyedropper, ptr %5, i64 0, i32 6
  store i32 0, ptr %43, align 4, !tbaa !29
  %44 = getelementptr inbounds %struct.Eyedropper, ptr %5, i64 0, i32 5
  tail call fastcc void @zero_v3(ptr noundef nonnull %44) #6
  %45 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %46 = load i32, ptr %45, align 4, !tbaa !33
  %47 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %48 = load i32, ptr %47, align 8, !tbaa !34
  tail call fastcc void @eyedropper_color_sample_accum(ptr noundef %0, ptr noundef %5, i32 noundef %46, i32 noundef %48) #6
  tail call fastcc void @eyedropper_color_set_accum(ptr noundef %0, ptr noundef %5) #6
  br label %49

49:                                               ; preds = %3, %23, %33, %29, %42, %38, %9, %22, %8
  %50 = phi i32 [ 4, %22 ], [ 2, %8 ], [ 1, %9 ], [ 1, %38 ], [ 1, %42 ], [ 1, %29 ], [ 1, %33 ], [ 1, %23 ], [ 1, %3 ]
  ret i32 %50
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @eyedropper_cancel(ptr noundef %0, ptr nocapture noundef %1) #1 {
  tail call fastcc void @eyedropper_exit(ptr noundef %0, ptr noundef %1) #6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @eyedropper_exec(ptr noundef %0, ptr nocapture noundef %1) #1 {
  %3 = tail call fastcc zeroext i8 @eyedropper_init(ptr noundef %0, ptr noundef %1) #6, !range !21
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call fastcc void @eyedropper_exit(ptr noundef %0, ptr noundef %1) #6
  br label %6

6:                                                ; preds = %2, %5
  %7 = phi i32 [ 4, %5 ], [ 2, %2 ]
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @eyedropper_poll(ptr noundef %0) #1 {
  %2 = tail call ptr @CTX_wm_window(ptr noundef %0) #7
  %3 = icmp ne ptr %2, null
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @UI_OT_eyedropper_id(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.3, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.4, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @datadropper_invoke, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @datadropper_modal, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @datadropper_cancel, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @datadropper_exec, ptr %7, align 8, !tbaa !18
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @datadropper_poll, ptr %8, align 8, !tbaa !19
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 4, ptr %9, align 8, !tbaa !20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @datadropper_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #1 {
  %4 = tail call fastcc i32 @datadropper_init(ptr noundef %0, ptr noundef %1) #6, !range !36
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @CTX_wm_window(ptr noundef %0) #7
  tail call void @WM_cursor_modal_set(ptr noundef %7, i32 noundef 17) #7
  %8 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #7
  br label %10

9:                                                ; preds = %3
  tail call fastcc void @datadropper_exit(ptr noundef %0, ptr noundef %1) #6
  br label %10

10:                                               ; preds = %9, %6
  %11 = phi i32 [ 1, %6 ], [ 2, %9 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @datadropper_modal(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #1 {
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !22
  %7 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %8 = load i16, ptr %7, align 8, !tbaa !24
  switch i16 %8, label %29 [
    i16 218, label %9
    i16 3, label %9
    i16 1, label %10
    i16 4, label %24
  ]

9:                                                ; preds = %3, %3
  tail call void @datadropper_cancel(ptr noundef %0, ptr noundef nonnull %1) #6
  br label %29

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %12 = load i16, ptr %11, align 2, !tbaa !28
  %13 = icmp eq i16 %12, 2
  br i1 %13, label %14, label %29

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %16 = load i32, ptr %15, align 4, !tbaa !33
  %17 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %18 = load i32, ptr %17, align 8, !tbaa !34
  %19 = tail call fastcc zeroext i8 @datadropper_id_sample(ptr noundef %0, ptr noundef %6, i32 noundef %16, i32 noundef %18) #6, !range !21
  tail call fastcc void @datadropper_exit(ptr noundef %0, ptr noundef nonnull %1) #6
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !37
  tail call void @BKE_report(ptr noundef %23, i32 noundef 16, ptr noundef nonnull @.str.6) #7
  br label %29

24:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  %25 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %26 = load i32, ptr %25, align 4, !tbaa !33
  %27 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %28 = load i32, ptr %27, align 8, !tbaa !34
  call fastcc void @datadropper_id_sample_pt(ptr noundef %0, ptr noundef %6, i32 noundef %26, i32 noundef %28, ptr noundef nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  br label %29

29:                                               ; preds = %24, %3, %10, %21, %14, %9
  %30 = phi i32 [ 2, %9 ], [ 2, %21 ], [ 4, %14 ], [ 1, %10 ], [ 1, %3 ], [ 1, %24 ]
  ret i32 %30
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @datadropper_cancel(ptr noundef %0, ptr nocapture noundef %1) #1 {
  tail call fastcc void @datadropper_exit(ptr noundef %0, ptr noundef %1) #6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @datadropper_exec(ptr noundef %0, ptr nocapture noundef %1) #1 {
  %3 = tail call fastcc i32 @datadropper_init(ptr noundef %0, ptr noundef %1) #6, !range !36
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call fastcc void @datadropper_exit(ptr noundef %0, ptr noundef %1) #6
  br label %6

6:                                                ; preds = %2, %5
  %7 = phi i32 [ 4, %5 ], [ 2, %2 ]
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @datadropper_poll(ptr noundef %0) #1 {
  %2 = tail call ptr @CTX_wm_window(ptr noundef %0) #7
  %3 = icmp ne ptr %2, null
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @eyedropper_init(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #1 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !38
  %5 = tail call ptr %4(i64 noundef 64, ptr noundef nonnull @.str) #7
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %5, ptr %6, align 8, !tbaa !22
  %7 = getelementptr inbounds %struct.Eyedropper, ptr %5, i64 0, i32 1
  %8 = getelementptr inbounds %struct.Eyedropper, ptr %5, i64 0, i32 2
  %9 = getelementptr inbounds %struct.Eyedropper, ptr %5, i64 0, i32 3
  tail call void @uiContextActiveProperty(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #7
  %10 = getelementptr inbounds %struct.Eyedropper, ptr %5, i64 0, i32 1, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !39
  %12 = icmp eq ptr %11, null
  br i1 %12, label %34, label %13

13:                                               ; preds = %2
  %14 = load ptr, ptr %8, align 8, !tbaa !40
  %15 = icmp eq ptr %14, null
  br i1 %15, label %34, label %16

16:                                               ; preds = %13
  %17 = tail call zeroext i8 @RNA_property_editable(ptr noundef nonnull %7, ptr noundef nonnull %14) #7
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %34, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr %8, align 8, !tbaa !40
  %21 = tail call i32 @RNA_property_array_length(ptr noundef nonnull %7, ptr noundef %20) #7
  %22 = icmp slt i32 %21, 3
  br i1 %22, label %34, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr %8, align 8, !tbaa !40
  %25 = tail call i32 @RNA_property_type(ptr noundef %24) #7
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = load ptr, ptr %8, align 8, !tbaa !40
  %29 = tail call i32 @RNA_property_subtype(ptr noundef %28) #7
  %30 = icmp eq i32 %29, 20
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 45
  %33 = tail call ptr @IMB_colormanagement_display_get_named(ptr noundef nonnull %32) #7
  store ptr %33, ptr %5, align 8, !tbaa !41
  br label %34

34:                                               ; preds = %27, %31, %2, %13, %16, %19, %23
  %35 = phi i8 [ 0, %23 ], [ 0, %19 ], [ 0, %16 ], [ 0, %13 ], [ 0, %2 ], [ 1, %31 ], [ 1, %27 ]
  ret i8 %35
}

; Function Attrs: optsize
declare void @WM_cursor_modal_set(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @eyedropper_exit(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #1 {
  %3 = tail call ptr @CTX_wm_window(ptr noundef %0) #7
  tail call void @WM_cursor_modal_restore(ptr noundef %3) #7
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !22
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !38
  tail call void %8(ptr noundef nonnull %5) #7
  store ptr null, ptr %4, align 8, !tbaa !22
  br label %9

9:                                                ; preds = %7, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiContextActiveProperty(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @RNA_property_editable(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_property_array_length(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_property_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_property_subtype(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @IMB_colormanagement_display_get_named(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare void @WM_cursor_modal_restore(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @eyedropper_color_sample(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #1 {
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #8
  call fastcc void @eyedropper_color_sample_fl(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %5) #6
  call fastcc void @eyedropper_color_set(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @eyedropper_color_set_accum(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #8
  %4 = getelementptr inbounds %struct.Eyedropper, ptr %1, i64 0, i32 5
  %5 = getelementptr inbounds %struct.Eyedropper, ptr %1, i64 0, i32 6
  %6 = load i32, ptr %5, align 4, !tbaa !29
  %7 = sitofp i32 %6 to float
  %8 = fdiv float 1.000000e+00, %7
  call fastcc void @mul_v3_v3fl(ptr noundef nonnull %3, ptr noundef nonnull %4, float noundef %8) #6
  call fastcc void @eyedropper_color_set(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @eyedropper_color_sample_accum(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #1 {
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #8
  call fastcc void @eyedropper_color_sample_fl(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %5) #6
  %6 = getelementptr inbounds %struct.Eyedropper, ptr %1, i64 0, i32 5
  call fastcc void @add_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %5) #6
  %7 = getelementptr inbounds %struct.Eyedropper, ptr %1, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !29
  %9 = add nsw i32 %8, 1
  store i32 %9, ptr %7, align 4, !tbaa !29
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #0 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !42
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !42
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @eyedropper_color_sample_fl(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #1 {
  %5 = alloca [2 x i32], align 4
  %6 = alloca [2 x i32], align 4
  %7 = alloca [2 x i32], align 4
  %8 = tail call ptr @CTX_wm_window(ptr noundef %0) #7
  %9 = getelementptr inbounds %struct.wmWindow, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !44
  %11 = getelementptr inbounds %struct.bScreen, ptr %10, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !38
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
  %21 = call zeroext i8 @BLI_rcti_isect_pt(ptr noundef nonnull %20, i32 noundef %1, i32 noundef %2) #7
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %80, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.ScrArea, ptr %19, i64 0, i32 8
  %25 = load i8, ptr %24, align 8, !tbaa !46
  switch i8 %25, label %80 [
    i8 6, label %26
    i8 16, label %44
    i8 20, label %62
  ]

26:                                               ; preds = %23
  %27 = call ptr @BKE_area_find_region_type(ptr noundef nonnull %19, i32 noundef 0) #7
  %28 = icmp eq ptr %27, null
  br i1 %28, label %80, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.ARegion, ptr %27, i64 0, i32 3
  %31 = call zeroext i8 @BLI_rcti_isect_pt(ptr noundef nonnull %30, i32 noundef %1, i32 noundef %2) #7
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %80, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.ScrArea, ptr %19, i64 0, i32 19
  %35 = load ptr, ptr %34, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  %36 = load i32, ptr %30, align 8, !tbaa !50
  %37 = sub nsw i32 %1, %36
  store i32 %37, ptr %5, align 4, !tbaa !54
  %38 = getelementptr inbounds %struct.ARegion, ptr %27, i64 0, i32 3, i32 2
  %39 = load i32, ptr %38, align 8, !tbaa !55
  %40 = sub nsw i32 %2, %39
  store i32 %40, ptr %17, align 4, !tbaa !54
  %41 = call ptr @CTX_data_scene(ptr noundef %0) #7
  %42 = call zeroext i8 @ED_space_image_color_sample(ptr noundef %41, ptr noundef %35, ptr noundef nonnull %27, ptr noundef nonnull %5, ptr noundef %3) #7
  %43 = icmp eq i8 %42, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  br i1 %43, label %80, label %84

44:                                               ; preds = %23
  %45 = call ptr @BKE_area_find_region_type(ptr noundef nonnull %19, i32 noundef 0) #7
  %46 = icmp eq ptr %45, null
  br i1 %46, label %80, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.ARegion, ptr %45, i64 0, i32 3
  %49 = call zeroext i8 @BLI_rcti_isect_pt(ptr noundef nonnull %48, i32 noundef %1, i32 noundef %2) #7
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %80, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.ScrArea, ptr %19, i64 0, i32 19
  %53 = load ptr, ptr %52, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  %54 = load i32, ptr %48, align 8, !tbaa !50
  %55 = sub nsw i32 %1, %54
  store i32 %55, ptr %6, align 4, !tbaa !54
  %56 = getelementptr inbounds %struct.ARegion, ptr %45, i64 0, i32 3, i32 2
  %57 = load i32, ptr %56, align 8, !tbaa !55
  %58 = sub nsw i32 %2, %57
  store i32 %58, ptr %16, align 4, !tbaa !54
  %59 = call ptr @CTX_data_scene(ptr noundef %0) #7
  %60 = call zeroext i8 @ED_space_node_color_sample(ptr noundef %59, ptr noundef %53, ptr noundef nonnull %45, ptr noundef nonnull %6, ptr noundef %3) #7
  %61 = icmp eq i8 %60, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  br i1 %61, label %80, label %84

62:                                               ; preds = %23
  %63 = call ptr @BKE_area_find_region_type(ptr noundef nonnull %19, i32 noundef 0) #7
  %64 = icmp eq ptr %63, null
  br i1 %64, label %80, label %65

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.ARegion, ptr %63, i64 0, i32 3
  %67 = call zeroext i8 @BLI_rcti_isect_pt(ptr noundef nonnull %66, i32 noundef %1, i32 noundef %2) #7
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %80, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.ScrArea, ptr %19, i64 0, i32 19
  %71 = load ptr, ptr %70, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  %72 = load i32, ptr %66, align 8, !tbaa !50
  %73 = sub nsw i32 %1, %72
  store i32 %73, ptr %7, align 4, !tbaa !54
  %74 = getelementptr inbounds %struct.ARegion, ptr %63, i64 0, i32 3, i32 2
  %75 = load i32, ptr %74, align 8, !tbaa !55
  %76 = sub nsw i32 %2, %75
  store i32 %76, ptr %15, align 4, !tbaa !54
  %77 = call ptr @CTX_data_scene(ptr noundef %0) #7
  %78 = call zeroext i8 @ED_space_clip_color_sample(ptr noundef %77, ptr noundef %71, ptr noundef nonnull %63, ptr noundef nonnull %7, ptr noundef %3) #7
  %79 = icmp eq i8 %78, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  br i1 %79, label %80, label %84

80:                                               ; preds = %62, %65, %69, %44, %47, %51, %26, %29, %33, %23, %18
  %81 = load ptr, ptr %19, align 8, !tbaa !38
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %18, !llvm.loop !56

83:                                               ; preds = %80, %4
  call void @glReadBuffer(i32 noundef 1028) #7
  call void @glReadPixels(i32 noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef 1, i32 noundef 6407, i32 noundef 5126, ptr noundef %3) #7
  call void @glReadBuffer(i32 noundef 1029) #7
  br label %84

84:                                               ; preds = %69, %51, %33, %83
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @eyedropper_color_set(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #1 {
  %4 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  %5 = getelementptr inbounds %struct.Eyedropper, ptr %1, i64 0, i32 1
  %6 = getelementptr inbounds %struct.Eyedropper, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !40
  call void @RNA_property_float_get_array(ptr noundef nonnull %5, ptr noundef %7, ptr noundef nonnull %4) #7
  %8 = load ptr, ptr %1, align 8, !tbaa !41
  %9 = icmp eq ptr %8, null
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef %2) #6
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  call void @IMB_colormanagement_display_to_scene_linear_v3(ptr noundef nonnull %4, ptr noundef nonnull %8) #7
  br label %11

11:                                               ; preds = %3, %10
  %12 = load ptr, ptr %6, align 8, !tbaa !40
  call void @RNA_property_float_set_array(ptr noundef nonnull %5, ptr noundef %12, ptr noundef nonnull %4) #7
  %13 = load ptr, ptr %6, align 8, !tbaa !40
  call void @RNA_property_update(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %13) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BLI_rcti_isect_pt(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_area_find_region_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ED_space_image_color_sample(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ED_space_node_color_sample(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ED_space_clip_color_sample(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glReadBuffer(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glReadPixels(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_property_float_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 {
  %3 = load float, ptr %1, align 4, !tbaa !42
  store float %3, ptr %0, align 4, !tbaa !42
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !42
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !42
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !42
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !42
  ret void
}

; Function Attrs: optsize
declare void @IMB_colormanagement_display_to_scene_linear_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_property_float_set_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_property_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #4 {
  %4 = load float, ptr %1, align 4, !tbaa !42
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !42
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !42
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !42
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !42
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !42
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #4 {
  %3 = load float, ptr %1, align 4, !tbaa !42
  %4 = load float, ptr %0, align 4, !tbaa !42
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !42
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !42
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !42
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !42
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !42
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !42
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !42
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @datadropper_init(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #1 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  %4 = tail call ptr @BKE_spacetype_from_id(i32 noundef 1) #7
  %5 = tail call ptr @BKE_regiontype_from_id(ptr noundef %4, i32 noundef 0) #7
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !38
  %7 = tail call ptr %6(i64 noundef 264, ptr noundef nonnull @.str.5) #7
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %7, ptr %8, align 8, !tbaa !22
  %9 = getelementptr inbounds %struct.DataDropper, ptr %7, i64 0, i32 1
  call void @uiContextActiveProperty(ptr noundef %0, ptr noundef %7, ptr noundef nonnull %9, ptr noundef nonnull %3) #7
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %7, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !58
  %12 = icmp eq ptr %11, null
  br i1 %12, label %34, label %13

13:                                               ; preds = %2
  %14 = load ptr, ptr %9, align 8, !tbaa !60
  %15 = icmp eq ptr %14, null
  br i1 %15, label %34, label %16

16:                                               ; preds = %13
  %17 = call zeroext i8 @RNA_property_editable(ptr noundef nonnull %7, ptr noundef nonnull %14) #7
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %34, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr %9, align 8, !tbaa !60
  %21 = call i32 @RNA_property_type(ptr noundef %20) #7
  %22 = icmp eq i32 %21, 5
  br i1 %22, label %23, label %34

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.DataDropper, ptr %7, i64 0, i32 4
  store ptr %5, ptr %24, align 8, !tbaa !61
  %25 = call ptr @ED_region_draw_cb_activate(ptr noundef %5, ptr noundef nonnull @datadropper_draw_cb, ptr noundef nonnull %7, i32 noundef 1) #7
  %26 = getelementptr inbounds %struct.DataDropper, ptr %7, i64 0, i32 5
  store ptr %25, ptr %26, align 8, !tbaa !62
  %27 = load ptr, ptr %9, align 8, !tbaa !60
  %28 = call ptr @RNA_property_pointer_type(ptr noundef nonnull %7, ptr noundef %27) #7
  %29 = call signext i16 @RNA_type_to_ID_code(ptr noundef %28) #7
  %30 = getelementptr inbounds %struct.DataDropper, ptr %7, i64 0, i32 2
  store i16 %29, ptr %30, align 8, !tbaa !63
  %31 = sext i16 %29 to i32
  %32 = call ptr @BKE_idcode_to_name(i32 noundef %31) #7
  %33 = getelementptr inbounds %struct.DataDropper, ptr %7, i64 0, i32 3
  store ptr %32, ptr %33, align 8, !tbaa !64
  br label %34

34:                                               ; preds = %2, %13, %16, %19, %23
  %35 = phi i32 [ 1, %23 ], [ 0, %19 ], [ 0, %16 ], [ 0, %13 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 %35
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @datadropper_exit(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #1 {
  %3 = tail call ptr @CTX_wm_window(ptr noundef %0) #7
  tail call void @WM_cursor_modal_restore(ptr noundef %3) #7
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !22
  %6 = icmp eq ptr %5, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.DataDropper, ptr %5, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !61
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.DataDropper, ptr %5, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !62
  tail call void @ED_region_draw_cb_exit(ptr noundef nonnull %9, ptr noundef %13) #7
  %14 = load ptr, ptr %4, align 8, !tbaa !22
  br label %15

15:                                               ; preds = %11, %7
  %16 = phi ptr [ %14, %11 ], [ %5, %7 ]
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !38
  tail call void %17(ptr noundef %16) #7
  store ptr null, ptr %4, align 8, !tbaa !22
  br label %18

18:                                               ; preds = %15, %2
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_spacetype_from_id(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_regiontype_from_id(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_region_draw_cb_activate(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @datadropper_draw_cb(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.DataDropper, ptr %2, i64 0, i32 6
  %5 = tail call ptr @CTX_wm_window(ptr noundef %0) #7
  %6 = getelementptr inbounds %struct.wmWindow, ptr %5, i64 0, i32 21
  %7 = load ptr, ptr %6, align 8, !tbaa !65
  %8 = getelementptr inbounds %struct.wmEvent, ptr %7, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !33
  %10 = getelementptr inbounds %struct.wmEvent, ptr %7, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !34
  %12 = load i8, ptr %4, align 1, !tbaa !66
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %37, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %16 = tail call zeroext i8 @BLI_rcti_isect_pt(ptr noundef nonnull %15, i32 noundef %9, i32 noundef %11) #7
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %37, label %18

18:                                               ; preds = %14
  %19 = tail call i32 @UI_GetStringWidth(ptr noundef nonnull %4) #7
  %20 = load i32, ptr %15, align 8, !tbaa !50
  %21 = sub nsw i32 %9, %20
  %22 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !55
  %24 = sub nsw i32 %11, %23
  %25 = add nsw i32 %24, 20
  tail call void @glColor4ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 50) #7
  tail call void @uiSetRoundBox(i32 noundef 31) #7
  %26 = sitofp i32 %21 to float
  %27 = sitofp i32 %25 to float
  %28 = add i32 %19, 8
  %29 = add i32 %28, %21
  %30 = sitofp i32 %29 to float
  %31 = add nsw i32 %24, 35
  %32 = sitofp i32 %31 to float
  tail call void @uiRoundBox(float noundef %26, float noundef %27, float noundef %30, float noundef %32, float noundef 4.000000e+00) #7
  tail call void @glColor4ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1) #7
  %33 = add nsw i32 %21, 4
  %34 = sitofp i32 %33 to float
  %35 = add nsw i32 %24, 24
  %36 = sitofp i32 %35 to float
  tail call void @UI_DrawString(float noundef %34, float noundef %36, ptr noundef nonnull %4) #7
  br label %37

37:                                               ; preds = %3, %14, %18
  ret void
}

; Function Attrs: optsize
declare ptr @RNA_property_pointer_type(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare signext i16 @RNA_type_to_ID_code(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_idcode_to_name(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @UI_GetStringWidth(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glColor4ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiSetRoundBox(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiRoundBox(float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_DrawString(float noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_draw_cb_exit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @datadropper_id_sample(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #1 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  store ptr null, ptr %5, align 8, !tbaa !38
  call fastcc void @datadropper_id_sample_pt(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %5) #6
  %6 = load ptr, ptr %5, align 8, !tbaa !38
  %7 = tail call fastcc zeroext i8 @datadropper_id_set(ptr noundef %0, ptr noundef %1, ptr noundef %6) #6, !range !21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  ret i8 %7
}

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @datadropper_id_sample_pt(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) unnamed_addr #1 {
  %6 = alloca [2 x i32], align 4
  %7 = tail call ptr @CTX_wm_window(ptr noundef %0) #7
  %8 = tail call ptr @CTX_wm_area(ptr noundef %0) #7
  %9 = tail call ptr @CTX_wm_region(ptr noundef %0) #7
  %10 = getelementptr inbounds %struct.DataDropper, ptr %1, i64 0, i32 6
  store i8 0, ptr %10, align 8, !tbaa !66
  %11 = getelementptr inbounds %struct.wmWindow, ptr %7, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !44
  %13 = getelementptr inbounds %struct.bScreen, ptr %12, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !38
  %15 = icmp eq ptr %14, null
  br i1 %15, label %73, label %16

16:                                               ; preds = %5
  %17 = getelementptr inbounds i32, ptr %6, i64 1
  br label %18

18:                                               ; preds = %16, %70
  %19 = phi ptr [ %14, %16 ], [ %71, %70 ]
  %20 = getelementptr inbounds %struct.ScrArea, ptr %19, i64 0, i32 7
  %21 = call zeroext i8 @BLI_rcti_isect_pt(ptr noundef nonnull %20, i32 noundef %2, i32 noundef %3) #7
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %70, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.ScrArea, ptr %19, i64 0, i32 8
  %25 = load i8, ptr %24, align 8, !tbaa !46
  %26 = icmp eq i8 %25, 1
  br i1 %26, label %27, label %70

27:                                               ; preds = %23
  %28 = call ptr @BKE_area_find_region_type(ptr noundef nonnull %19, i32 noundef 0) #7
  %29 = icmp eq ptr %28, null
  br i1 %29, label %70, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.ARegion, ptr %28, i64 0, i32 3
  %32 = call zeroext i8 @BLI_rcti_isect_pt(ptr noundef nonnull %31, i32 noundef %2, i32 noundef %3) #7
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %70, label %34

34:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  %35 = load i32, ptr %31, align 8, !tbaa !50
  %36 = sub nsw i32 %2, %35
  store i32 %36, ptr %6, align 4, !tbaa !54
  %37 = getelementptr inbounds %struct.ARegion, ptr %28, i64 0, i32 3, i32 2
  %38 = load i32, ptr %37, align 8, !tbaa !55
  %39 = sub nsw i32 %3, %38
  store i32 %39, ptr %17, align 4, !tbaa !54
  call void @CTX_wm_area_set(ptr noundef %0, ptr noundef nonnull %19) #7
  call void @CTX_wm_region_set(ptr noundef %0, ptr noundef nonnull %28) #7
  call void @ED_region_tag_redraw(ptr noundef nonnull %28) #7
  %40 = call ptr @ED_view3d_give_base_under_cursor(ptr noundef %0, ptr noundef nonnull %6) #7
  %41 = icmp eq ptr %40, null
  br i1 %41, label %68, label %42

42:                                               ; preds = %34
  %43 = getelementptr inbounds %struct.Base, ptr %40, i64 0, i32 7
  %44 = load ptr, ptr %43, align 8, !tbaa !67
  %45 = getelementptr inbounds %struct.DataDropper, ptr %1, i64 0, i32 2
  %46 = load i16, ptr %45, align 8, !tbaa !63
  %47 = icmp eq i16 %46, 16975
  br i1 %47, label %60, label %48

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.Object, ptr %44, i64 0, i32 19
  %50 = load ptr, ptr %49, align 8, !tbaa !69
  %51 = icmp eq ptr %50, null
  br i1 %51, label %69, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.ID, ptr %50, i64 0, i32 4
  %54 = load i16, ptr %53, align 8, !tbaa !74
  %55 = icmp eq i16 %54, %46
  br i1 %55, label %62, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.DataDropper, ptr %1, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !64
  %59 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %10, i64 noundef 200, ptr noundef nonnull @.str.7, ptr noundef %58) #7
  br label %69

60:                                               ; preds = %42
  %61 = icmp eq ptr %44, null
  br i1 %61, label %69, label %62

62:                                               ; preds = %52, %60
  %63 = phi ptr [ %44, %60 ], [ %50, %52 ]
  %64 = getelementptr inbounds %struct.DataDropper, ptr %1, i64 0, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !64
  %66 = getelementptr inbounds %struct.ID, ptr %63, i64 0, i32 4, i64 2
  %67 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %10, i64 noundef 200, ptr noundef nonnull @.str.8, ptr noundef %65, ptr noundef nonnull %66) #7
  store ptr %63, ptr %4, align 8, !tbaa !38
  br label %69

68:                                               ; preds = %34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  br label %70

69:                                               ; preds = %48, %56, %60, %62
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  br label %73

70:                                               ; preds = %27, %30, %68, %18, %23
  %71 = load ptr, ptr %19, align 8, !tbaa !38
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %18, !llvm.loop !75

73:                                               ; preds = %70, %5, %69
  call void @CTX_wm_area_set(ptr noundef %0, ptr noundef %8) #7
  call void @CTX_wm_region_set(ptr noundef %0, ptr noundef %9) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @datadropper_id_set(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #8
  call void @RNA_id_pointer_create(ptr noundef %2, ptr noundef nonnull %4) #7
  %6 = getelementptr inbounds %struct.DataDropper, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !60
  call void @RNA_property_pointer_set(ptr noundef %1, ptr noundef %7, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %4) #7
  %8 = load ptr, ptr %6, align 8, !tbaa !60
  call void @RNA_property_update(ptr noundef %0, ptr noundef %1, ptr noundef %8) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #8
  %9 = load ptr, ptr %6, align 8, !tbaa !60
  call void @RNA_property_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef %1, ptr noundef %9) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !76
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #8
  %10 = load ptr, ptr %4, align 8, !tbaa !77
  %11 = icmp eq ptr %10, %2
  %12 = zext i1 %11 to i8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #8
  ret i8 %12
}

; Function Attrs: optsize
declare void @RNA_id_pointer_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_property_pointer_set(ptr noundef, ptr noundef, ptr noundef byval(%struct.PointerRNA) align 8) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_property_pointer_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CTX_wm_area_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CTX_wm_region_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_view3d_give_base_under_cursor(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { optsize }
attributes #7 = { nounwind optsize }
attributes #8 = { nounwind }

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
!13 = !{!6, !7, i64 8}
!14 = !{!6, !7, i64 24}
!15 = !{!6, !7, i64 48}
!16 = !{!6, !7, i64 64}
!17 = !{!6, !7, i64 56}
!18 = !{!6, !7, i64 32}
!19 = !{!6, !7, i64 72}
!20 = !{!6, !12, i64 184}
!21 = !{i8 0, i8 2}
!22 = !{!23, !7, i64 96}
!23 = !{!"wmOperator", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !10, i64 128, !7, i64 144, !7, i64 152, !12, i64 160, !8, i64 162}
!24 = !{!25, !12, i64 16}
!25 = !{!"wmEvent", !7, i64 0, !7, i64 8, !12, i64 16, !12, i64 18, !26, i64 20, !26, i64 24, !8, i64 28, !8, i64 36, !8, i64 42, !8, i64 43, !12, i64 44, !12, i64 46, !26, i64 48, !26, i64 52, !27, i64 56, !26, i64 64, !26, i64 68, !12, i64 72, !12, i64 74, !12, i64 76, !12, i64 78, !12, i64 80, !12, i64 82, !7, i64 88, !7, i64 96, !12, i64 104, !12, i64 106, !26, i64 108, !7, i64 112}
!26 = !{!"int", !8, i64 0}
!27 = !{!"double", !8, i64 0}
!28 = !{!25, !12, i64 18}
!29 = !{!30, !26, i64 60}
!30 = !{!"Eyedropper", !7, i64 0, !31, i64 8, !7, i64 32, !26, i64 40, !8, i64 44, !8, i64 48, !26, i64 60}
!31 = !{!"PointerRNA", !32, i64 0, !7, i64 8, !7, i64 16}
!32 = !{!"", !7, i64 0}
!33 = !{!25, !26, i64 20}
!34 = !{!25, !26, i64 24}
!35 = !{!30, !8, i64 44}
!36 = !{i32 0, i32 2}
!37 = !{!23, !7, i64 120}
!38 = !{!7, !7, i64 0}
!39 = !{!30, !7, i64 24}
!40 = !{!30, !7, i64 32}
!41 = !{!30, !7, i64 0}
!42 = !{!43, !43, i64 0}
!43 = !{!"float", !8, i64 0}
!44 = !{!45, !7, i64 24}
!45 = !{!"wmWindow", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !8, i64 40, !12, i64 104, !12, i64 106, !12, i64 108, !12, i64 110, !12, i64 112, !12, i64 114, !12, i64 116, !12, i64 118, !12, i64 120, !12, i64 122, !12, i64 124, !12, i64 126, !26, i64 128, !12, i64 132, !12, i64 134, !7, i64 136, !7, i64 144, !7, i64 152, !26, i64 160, !26, i64 164, !7, i64 168, !10, i64 176, !10, i64 192, !10, i64 208, !10, i64 224, !10, i64 240}
!46 = !{!47, !8, i64 72}
!47 = !{!"ScrArea", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !48, i64 56, !8, i64 72, !8, i64 73, !12, i64 74, !12, i64 76, !12, i64 78, !12, i64 80, !12, i64 82, !12, i64 84, !8, i64 86, !8, i64 87, !7, i64 88, !10, i64 96, !10, i64 112, !10, i64 128, !10, i64 144}
!48 = !{!"rcti", !26, i64 0, !26, i64 4, !26, i64 8, !26, i64 12}
!49 = !{!47, !7, i64 96}
!50 = !{!51, !26, i64 176}
!51 = !{!"ARegion", !7, i64 0, !7, i64 8, !52, i64 16, !48, i64 176, !48, i64 192, !12, i64 208, !12, i64 210, !12, i64 212, !12, i64 214, !12, i64 216, !12, i64 218, !43, i64 220, !12, i64 224, !12, i64 226, !12, i64 228, !12, i64 230, !12, i64 232, !12, i64 234, !12, i64 236, !12, i64 238, !7, i64 240, !10, i64 248, !10, i64 264, !10, i64 280, !10, i64 296, !10, i64 312, !10, i64 328, !10, i64 344, !7, i64 360, !7, i64 368, !7, i64 376}
!52 = !{!"View2D", !53, i64 0, !53, i64 16, !48, i64 32, !48, i64 48, !48, i64 64, !8, i64 80, !8, i64 88, !43, i64 96, !43, i64 100, !12, i64 104, !12, i64 106, !12, i64 108, !12, i64 110, !12, i64 112, !12, i64 114, !12, i64 116, !12, i64 118, !12, i64 120, !12, i64 122, !12, i64 124, !12, i64 126, !7, i64 128, !26, i64 136, !26, i64 140, !7, i64 144, !7, i64 152}
!53 = !{!"rctf", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12}
!54 = !{!26, !26, i64 0}
!55 = !{!51, !26, i64 184}
!56 = distinct !{!56, !57}
!57 = !{!"llvm.loop.mustprogress"}
!58 = !{!59, !7, i64 16}
!59 = !{!"DataDropper", !31, i64 0, !7, i64 24, !12, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !8, i64 64}
!60 = !{!59, !7, i64 24}
!61 = !{!59, !7, i64 48}
!62 = !{!59, !7, i64 56}
!63 = !{!59, !12, i64 32}
!64 = !{!59, !7, i64 40}
!65 = !{!45, !7, i64 136}
!66 = !{!8, !8, i64 0}
!67 = !{!68, !7, i64 32}
!68 = !{!"Base", !7, i64 0, !7, i64 8, !26, i64 16, !26, i64 20, !26, i64 24, !12, i64 28, !12, i64 30, !7, i64 32}
!69 = !{!70, !7, i64 296}
!70 = !{!"Object", !71, i64 0, !7, i64 120, !7, i64 128, !12, i64 136, !12, i64 138, !26, i64 140, !26, i64 144, !26, i64 148, !8, i64 152, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288, !7, i64 296, !7, i64 304, !72, i64 312, !7, i64 360, !10, i64 368, !10, i64 384, !10, i64 400, !10, i64 416, !26, i64 432, !26, i64 436, !7, i64 440, !7, i64 448, !26, i64 456, !26, i64 460, !8, i64 464, !8, i64 476, !8, i64 488, !8, i64 500, !8, i64 512, !8, i64 524, !8, i64 536, !8, i64 548, !8, i64 560, !8, i64 576, !8, i64 592, !8, i64 604, !43, i64 616, !43, i64 620, !8, i64 624, !8, i64 688, !8, i64 752, !8, i64 816, !8, i64 880, !26, i64 944, !12, i64 948, !12, i64 950, !12, i64 952, !12, i64 954, !12, i64 956, !12, i64 958, !12, i64 960, !12, i64 962, !12, i64 964, !8, i64 966, !8, i64 967, !26, i64 968, !26, i64 972, !26, i64 976, !26, i64 980, !26, i64 984, !43, i64 988, !43, i64 992, !43, i64 996, !43, i64 1000, !43, i64 1004, !43, i64 1008, !43, i64 1012, !43, i64 1016, !43, i64 1020, !43, i64 1024, !43, i64 1028, !43, i64 1032, !12, i64 1036, !12, i64 1038, !12, i64 1040, !8, i64 1042, !8, i64 1043, !12, i64 1044, !8, i64 1046, !8, i64 1047, !43, i64 1048, !43, i64 1052, !10, i64 1056, !10, i64 1072, !10, i64 1088, !10, i64 1104, !43, i64 1120, !12, i64 1124, !12, i64 1126, !8, i64 1128, !26, i64 1144, !26, i64 1148, !7, i64 1152, !8, i64 1160, !8, i64 1161, !12, i64 1162, !8, i64 1164, !10, i64 1176, !10, i64 1192, !10, i64 1208, !10, i64 1224, !7, i64 1240, !7, i64 1248, !7, i64 1256, !8, i64 1264, !8, i64 1265, !12, i64 1266, !43, i64 1268, !7, i64 1272, !7, i64 1280, !7, i64 1288, !7, i64 1296, !73, i64 1304, !73, i64 1312, !26, i64 1320, !26, i64 1324, !10, i64 1328, !10, i64 1344, !7, i64 1360, !7, i64 1368, !7, i64 1376, !8, i64 1384, !7, i64 1392, !10, i64 1400, !7, i64 1416}
!71 = !{!"ID", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !12, i64 98, !26, i64 100, !26, i64 104, !26, i64 108, !7, i64 112}
!72 = !{!"bAnimVizSettings", !26, i64 0, !26, i64 4, !26, i64 8, !26, i64 12, !12, i64 16, !12, i64 18, !12, i64 20, !12, i64 22, !12, i64 24, !12, i64 26, !12, i64 28, !12, i64 30, !26, i64 32, !26, i64 36, !26, i64 40, !26, i64 44}
!73 = !{!"long", !8, i64 0}
!74 = !{!12, !12, i64 0}
!75 = distinct !{!75, !57}
!76 = !{i64 0, i64 8, !38, i64 8, i64 8, !38, i64 16, i64 8, !38}
!77 = !{!31, !7, i64 0}
