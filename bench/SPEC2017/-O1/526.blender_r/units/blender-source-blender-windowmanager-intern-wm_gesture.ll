; ModuleID = 'blender/source/blender/windowmanager/intern/wm_gesture.c'
source_filename = "blender/source/blender/windowmanager/intern/wm_gesture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.wmWindow = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, ptr, ptr, ptr, i32, i32, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.wmGesture = type { ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.LassoFillData = type { ptr, i32 }
%struct.bScreen = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [12 x i8] c"new gesture\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"gesture rect new\00", align 1
@circle_select_size = external local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"lasso points\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@U = external local_unnamed_addr global %struct.UserDef, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@__func__.draw_filled_lasso = private unnamed_addr constant [18 x i8] c"draw_filled_lasso\00", align 1
@switch.table.wm_gesture_evaluate = private unnamed_addr constant [7 x i32] [i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 8], align 4

; Function Attrs: nounwind uwtable
define dso_local ptr @WM_gesture_new(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %7 = tail call ptr %6(i64 noundef 56, ptr noundef nonnull @.str) #7
  %8 = tail call ptr @CTX_wm_window(ptr noundef %0) #7
  %9 = tail call ptr @CTX_wm_region(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  %10 = getelementptr inbounds %struct.wmWindow, ptr %8, i64 0, i32 31
  tail call void @BLI_addtail(ptr noundef nonnull %10, ptr noundef %7) #7
  %11 = getelementptr inbounds %struct.wmGesture, ptr %7, i64 0, i32 4
  store i32 %2, ptr %11, align 8, !tbaa !38
  %12 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 2
  %13 = load i16, ptr %12, align 8, !tbaa !41
  %14 = sext i16 %13 to i32
  %15 = getelementptr inbounds %struct.wmGesture, ptr %7, i64 0, i32 2
  store i32 %14, ptr %15, align 8, !tbaa !45
  %16 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 7
  %17 = load i16, ptr %16, align 4, !tbaa !46
  %18 = sext i16 %17 to i32
  %19 = getelementptr inbounds %struct.wmGesture, ptr %7, i64 0, i32 5
  store i32 %18, ptr %19, align 4, !tbaa !53
  call void @wm_subwindow_origin_get(ptr noundef %8, i32 noundef %18, ptr noundef nonnull %4, ptr noundef nonnull %5) #7
  switch i32 %2, label %59 [
    i32 6, label %20
    i32 5, label %20
    i32 3, label %20
    i32 2, label %20
    i32 0, label %20
    i32 4, label %42
    i32 1, label %42
  ]

20:                                               ; preds = %3, %3, %3, %3, %3
  %21 = icmp eq i32 %2, 5
  %22 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %23 = call ptr %22(i64 noundef 16, ptr noundef nonnull @.str.1) #7
  %24 = getelementptr inbounds %struct.wmGesture, ptr %7, i64 0, i32 8
  store ptr %23, ptr %24, align 8, !tbaa !54
  %25 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 4
  %26 = load i32, ptr %25, align 4, !tbaa !55
  %27 = load i32, ptr %4, align 4, !tbaa !56
  %28 = sub nsw i32 %26, %27
  store i32 %28, ptr %23, align 4, !tbaa !57
  %29 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 5
  %30 = load i32, ptr %29, align 8, !tbaa !58
  %31 = load i32, ptr %5, align 4, !tbaa !56
  %32 = sub nsw i32 %30, %31
  %33 = getelementptr inbounds %struct.rcti, ptr %23, i64 0, i32 2
  store i32 %32, ptr %33, align 4, !tbaa !59
  br i1 %21, label %34, label %37

34:                                               ; preds = %20
  %35 = load i32, ptr @circle_select_size, align 4, !tbaa !56
  %36 = getelementptr inbounds %struct.rcti, ptr %23, i64 0, i32 1
  store i32 %35, ptr %36, align 4, !tbaa !60
  br label %59

37:                                               ; preds = %20
  %38 = load i32, ptr %4, align 4, !tbaa !56
  %39 = sub nsw i32 %26, %38
  %40 = getelementptr inbounds %struct.rcti, ptr %23, i64 0, i32 1
  store i32 %39, ptr %40, align 4, !tbaa !60
  %41 = getelementptr inbounds %struct.rcti, ptr %23, i64 0, i32 3
  store i32 %32, ptr %41, align 4, !tbaa !61
  br label %59

42:                                               ; preds = %3, %3
  %43 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %44 = call ptr %43(i64 noundef 4096, ptr noundef nonnull @.str.2) #7
  %45 = getelementptr inbounds %struct.wmGesture, ptr %7, i64 0, i32 8
  store ptr %44, ptr %45, align 8, !tbaa !54
  %46 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 4
  %47 = load i32, ptr %46, align 4, !tbaa !55
  %48 = load i32, ptr %4, align 4, !tbaa !56
  %49 = sub nsw i32 %47, %48
  %50 = trunc i32 %49 to i16
  store i16 %50, ptr %44, align 2, !tbaa !62
  %51 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 5
  %52 = load i32, ptr %51, align 8, !tbaa !58
  %53 = load i32, ptr %5, align 4, !tbaa !56
  %54 = sub nsw i32 %52, %53
  %55 = trunc i32 %54 to i16
  %56 = getelementptr inbounds i16, ptr %44, i64 1
  store i16 %55, ptr %56, align 2, !tbaa !62
  %57 = getelementptr inbounds %struct.wmGesture, ptr %7, i64 0, i32 6
  store i32 1, ptr %57, align 8, !tbaa !63
  %58 = getelementptr inbounds %struct.wmGesture, ptr %7, i64 0, i32 7
  store i32 1024, ptr %58, align 4, !tbaa !64
  br label %59

59:                                               ; preds = %3, %34, %37, %42
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  ret ptr %7
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @wm_subwindow_origin_get(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @WM_gesture_end(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_window(ptr noundef %0) #7
  %4 = getelementptr inbounds %struct.wmWindow, ptr %3, i64 0, i32 23
  %5 = load ptr, ptr %4, align 8, !tbaa !65
  %6 = icmp eq ptr %5, %1
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  store ptr null, ptr %4, align 8, !tbaa !65
  br label %8

8:                                                ; preds = %7, %2
  %9 = getelementptr inbounds %struct.wmWindow, ptr %3, i64 0, i32 31
  tail call void @BLI_remlink(ptr noundef nonnull %9, ptr noundef %1) #7
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %11 = getelementptr inbounds %struct.wmGesture, ptr %1, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !54
  tail call void %10(ptr noundef %12) #7
  %13 = getelementptr inbounds %struct.wmGesture, ptr %1, i64 0, i32 9
  %14 = load ptr, ptr %13, align 8, !tbaa !67
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %8
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %17(ptr noundef nonnull %14) #7
  br label %18

18:                                               ; preds = %16, %8
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %19(ptr noundef %1) #7
  ret void
}

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @WM_gestures_remove(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_window(ptr noundef %0) #7
  %3 = getelementptr inbounds %struct.wmWindow, ptr %2, i64 0, i32 31
  %4 = load ptr, ptr %3, align 8, !tbaa !68
  %5 = icmp eq ptr %4, null
  br i1 %5, label %27, label %6

6:                                                ; preds = %1, %23
  %7 = phi ptr [ %25, %23 ], [ %4, %1 ]
  %8 = tail call ptr @CTX_wm_window(ptr noundef %0) #7
  %9 = getelementptr inbounds %struct.wmWindow, ptr %8, i64 0, i32 23
  %10 = load ptr, ptr %9, align 8, !tbaa !65
  %11 = icmp eq ptr %10, %7
  br i1 %11, label %12, label %13

12:                                               ; preds = %6
  store ptr null, ptr %9, align 8, !tbaa !65
  br label %13

13:                                               ; preds = %12, %6
  %14 = getelementptr inbounds %struct.wmWindow, ptr %8, i64 0, i32 31
  tail call void @BLI_remlink(ptr noundef nonnull %14, ptr noundef nonnull %7) #7
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %16 = getelementptr inbounds %struct.wmGesture, ptr %7, i64 0, i32 8
  %17 = load ptr, ptr %16, align 8, !tbaa !54
  tail call void %15(ptr noundef %17) #7
  %18 = getelementptr inbounds %struct.wmGesture, ptr %7, i64 0, i32 9
  %19 = load ptr, ptr %18, align 8, !tbaa !67
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %13
  %22 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %22(ptr noundef nonnull %19) #7
  br label %23

23:                                               ; preds = %13, %21
  %24 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %24(ptr noundef nonnull %7) #7
  %25 = load ptr, ptr %3, align 8, !tbaa !68
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %6, !llvm.loop !69

27:                                               ; preds = %23, %1
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: write) uwtable
define dso_local i32 @wm_gesture_evaluate(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.wmGesture, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !38
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %40

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.wmGesture, ptr %0, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !54
  %8 = getelementptr inbounds %struct.rcti, ptr %7, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !60
  %10 = load i32, ptr %7, align 4, !tbaa !57
  %11 = sub nsw i32 %9, %10
  %12 = getelementptr inbounds %struct.rcti, ptr %7, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !61
  %14 = getelementptr inbounds %struct.rcti, ptr %7, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !59
  %16 = sub nsw i32 %13, %15
  %17 = tail call i32 @llvm.abs.i32(i32 %11, i1 true)
  %18 = tail call i32 @llvm.abs.i32(i32 %16, i1 true)
  %19 = add nuw nsw i32 %18, %17
  %20 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 98), align 4, !tbaa !72
  %21 = sext i16 %20 to i32
  %22 = icmp sgt i32 %19, %21
  br i1 %22, label %23, label %38

23:                                               ; preds = %5
  %24 = sitofp i32 %16 to float
  %25 = sitofp i32 %11 to float
  %26 = tail call float @atan2f(float noundef %24, float noundef %25) #7
  %27 = fmul float %26, 4.000000e+00
  %28 = fdiv float %27, 0x400921FB60000000
  %29 = fadd float %28, 5.000000e-01
  %30 = tail call float @llvm.floor.f32(float %29)
  %31 = fptosi float %30 to i32
  %32 = add i32 %31, 3
  %33 = icmp ult i32 %32, 7
  br i1 %33, label %34, label %38

34:                                               ; preds = %23
  %35 = zext nneg i32 %32 to i64
  %36 = getelementptr inbounds [7 x i32], ptr @switch.table.wm_gesture_evaluate, i64 0, i64 %35
  %37 = load i32, ptr %36, align 4
  br label %38

38:                                               ; preds = %23, %34, %5
  %39 = phi i32 [ undef, %5 ], [ %37, %34 ], [ 7, %23 ]
  br i1 %22, label %41, label %40

40:                                               ; preds = %38, %1
  br label %41

41:                                               ; preds = %38, %40
  %42 = phi i32 [ %39, %38 ], [ 0, %40 ]
  ret i32 %42
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @wm_gesture_draw(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 31
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %79, label %5

5:                                                ; preds = %1, %76
  %6 = phi ptr [ %77, %76 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.wmGesture, ptr %6, i64 0, i32 5
  %8 = load i32, ptr %7, align 4, !tbaa !53
  tail call void @wmSubWindowSet(ptr noundef %0, i32 noundef %8) #7
  %9 = getelementptr inbounds %struct.wmGesture, ptr %6, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !38
  switch i32 %10, label %76 [
    i32 2, label %11
    i32 5, label %12
    i32 3, label %33
    i32 1, label %60
    i32 4, label %61
    i32 6, label %62
  ]

11:                                               ; preds = %5
  tail call fastcc void @wm_gesture_draw_rect(ptr noundef nonnull %6)
  br label %76

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.wmGesture, ptr %6, i64 0, i32 8
  %14 = load ptr, ptr %13, align 8, !tbaa !54
  %15 = load i32, ptr %14, align 4, !tbaa !57
  %16 = sitofp i32 %15 to float
  %17 = getelementptr inbounds %struct.rcti, ptr %14, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !59
  %19 = sitofp i32 %18 to float
  tail call void @glTranslatef(float noundef %16, float noundef %19, float noundef 0.000000e+00) #7
  tail call void @glEnable(i32 noundef 3042) #7
  tail call void @glColor4f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 0x3FA99999A0000000) #7
  %20 = getelementptr inbounds %struct.rcti, ptr %14, i64 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !60
  %22 = sitofp i32 %21 to float
  tail call void @glutil_draw_filled_arc(float noundef 0.000000e+00, float noundef 0x401921FB60000000, float noundef %22, i32 noundef 40) #7
  tail call void @glDisable(i32 noundef 3042) #7
  tail call void @glEnable(i32 noundef 2852) #7
  tail call void @glColor3ub(i8 noundef zeroext 96, i8 noundef zeroext 96, i8 noundef zeroext 96) #7
  tail call void @glLineStipple(i32 noundef 1, i16 noundef zeroext -21846) #7
  %23 = load i32, ptr %20, align 4, !tbaa !60
  %24 = sitofp i32 %23 to float
  tail call void @glutil_draw_lined_arc(float noundef 0.000000e+00, float noundef 0x401921FB60000000, float noundef %24, i32 noundef 40) #7
  tail call void @glColor3ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1) #7
  tail call void @glLineStipple(i32 noundef 1, i16 noundef zeroext 21845) #7
  %25 = load i32, ptr %20, align 4, !tbaa !60
  %26 = sitofp i32 %25 to float
  tail call void @glutil_draw_lined_arc(float noundef 0.000000e+00, float noundef 0x401921FB60000000, float noundef %26, i32 noundef 40) #7
  tail call void @glDisable(i32 noundef 2852) #7
  %27 = load i32, ptr %14, align 4, !tbaa !57
  %28 = sub nsw i32 0, %27
  %29 = sitofp i32 %28 to float
  %30 = load i32, ptr %17, align 4, !tbaa !59
  %31 = sub nsw i32 0, %30
  %32 = sitofp i32 %31 to float
  tail call void @glTranslatef(float noundef %29, float noundef %32, float noundef 0.000000e+00) #7
  br label %76

33:                                               ; preds = %5
  %34 = getelementptr inbounds %struct.wmGesture, ptr %6, i64 0, i32 3
  %35 = load i32, ptr %34, align 4, !tbaa !76
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  tail call fastcc void @wm_gesture_draw_rect(ptr noundef nonnull %6)
  br label %76

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.wmGesture, ptr %6, i64 0, i32 8
  %40 = load ptr, ptr %39, align 8, !tbaa !54
  %41 = tail call i32 @WM_window_pixels_x(ptr noundef %0) #7
  %42 = tail call i32 @WM_window_pixels_y(ptr noundef %0) #7
  tail call void @glEnable(i32 noundef 2852) #7
  tail call void @glColor3ub(i8 noundef zeroext 96, i8 noundef zeroext 96, i8 noundef zeroext 96) #7
  tail call void @glLineStipple(i32 noundef 1, i16 noundef zeroext -13108) #7
  %43 = load i32, ptr %40, align 4, !tbaa !57
  %44 = sub nsw i32 %43, %41
  %45 = getelementptr inbounds %struct.rcti, ptr %40, i64 0, i32 2
  %46 = load i32, ptr %45, align 4, !tbaa !59
  %47 = add nsw i32 %43, %41
  tail call void @sdrawline(i32 noundef %44, i32 noundef %46, i32 noundef %47, i32 noundef %46) #7
  %48 = load i32, ptr %40, align 4, !tbaa !57
  %49 = load i32, ptr %45, align 4, !tbaa !59
  %50 = sub nsw i32 %49, %42
  %51 = add nsw i32 %49, %42
  tail call void @sdrawline(i32 noundef %48, i32 noundef %50, i32 noundef %48, i32 noundef %51) #7
  tail call void @glColor3ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1) #7
  tail call void @glLineStipple(i32 noundef 1, i16 noundef zeroext 13107) #7
  %52 = load i32, ptr %40, align 4, !tbaa !57
  %53 = sub nsw i32 %52, %41
  %54 = load i32, ptr %45, align 4, !tbaa !59
  %55 = add nsw i32 %52, %41
  tail call void @sdrawline(i32 noundef %53, i32 noundef %54, i32 noundef %55, i32 noundef %54) #7
  %56 = load i32, ptr %40, align 4, !tbaa !57
  %57 = load i32, ptr %45, align 4, !tbaa !59
  %58 = sub nsw i32 %57, %42
  %59 = add nsw i32 %57, %42
  tail call void @sdrawline(i32 noundef %56, i32 noundef %58, i32 noundef %56, i32 noundef %59) #7
  tail call void @glDisable(i32 noundef 2852) #7
  br label %76

60:                                               ; preds = %5
  tail call fastcc void @wm_gesture_draw_lasso(ptr noundef %0, ptr noundef nonnull %6, i8 noundef zeroext 0)
  br label %76

61:                                               ; preds = %5
  tail call fastcc void @wm_gesture_draw_lasso(ptr noundef %0, ptr noundef nonnull %6, i8 noundef zeroext 1)
  br label %76

62:                                               ; preds = %5
  %63 = getelementptr inbounds %struct.wmGesture, ptr %6, i64 0, i32 8
  %64 = load ptr, ptr %63, align 8, !tbaa !54
  tail call void @glEnable(i32 noundef 2852) #7
  tail call void @glColor3ub(i8 noundef zeroext 96, i8 noundef zeroext 96, i8 noundef zeroext 96) #7
  tail call void @glLineStipple(i32 noundef 1, i16 noundef zeroext -21846) #7
  %65 = load i32, ptr %64, align 4, !tbaa !57
  %66 = getelementptr inbounds %struct.rcti, ptr %64, i64 0, i32 2
  %67 = load i32, ptr %66, align 4, !tbaa !59
  %68 = getelementptr inbounds %struct.rcti, ptr %64, i64 0, i32 1
  %69 = load i32, ptr %68, align 4, !tbaa !60
  %70 = getelementptr inbounds %struct.rcti, ptr %64, i64 0, i32 3
  %71 = load i32, ptr %70, align 4, !tbaa !61
  tail call void @sdrawline(i32 noundef %65, i32 noundef %67, i32 noundef %69, i32 noundef %71) #7
  tail call void @glColor3ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1) #7
  tail call void @glLineStipple(i32 noundef 1, i16 noundef zeroext 21845) #7
  %72 = load i32, ptr %64, align 4, !tbaa !57
  %73 = load i32, ptr %66, align 4, !tbaa !59
  %74 = load i32, ptr %68, align 4, !tbaa !60
  %75 = load i32, ptr %70, align 4, !tbaa !61
  tail call void @sdrawline(i32 noundef %72, i32 noundef %73, i32 noundef %74, i32 noundef %75) #7
  tail call void @glDisable(i32 noundef 2852) #7
  br label %76

76:                                               ; preds = %5, %11, %38, %37, %61, %62, %60, %12
  %77 = load ptr, ptr %6, align 8, !tbaa !34
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %5, !llvm.loop !77

79:                                               ; preds = %76, %1
  ret void
}

declare void @wmSubWindowSet(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @wm_gesture_draw_rect(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wmGesture, ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  tail call void @glEnable(i32 noundef 3042) #7
  tail call void @glColor4f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 0x3FA99999A0000000) #7
  tail call void @glBegin(i32 noundef 7) #7
  %4 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !60
  %6 = trunc i32 %5 to i16
  %7 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !59
  %9 = trunc i32 %8 to i16
  tail call void @glVertex2s(i16 noundef signext %6, i16 noundef signext %9) #7
  %10 = load i32, ptr %4, align 4, !tbaa !60
  %11 = trunc i32 %10 to i16
  %12 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !61
  %14 = trunc i32 %13 to i16
  tail call void @glVertex2s(i16 noundef signext %11, i16 noundef signext %14) #7
  %15 = load i32, ptr %3, align 4, !tbaa !57
  %16 = trunc i32 %15 to i16
  %17 = load i32, ptr %12, align 4, !tbaa !61
  %18 = trunc i32 %17 to i16
  tail call void @glVertex2s(i16 noundef signext %16, i16 noundef signext %18) #7
  %19 = load i32, ptr %3, align 4, !tbaa !57
  %20 = trunc i32 %19 to i16
  %21 = load i32, ptr %7, align 4, !tbaa !59
  %22 = trunc i32 %21 to i16
  tail call void @glVertex2s(i16 noundef signext %20, i16 noundef signext %22) #7
  tail call void @glEnd() #7
  tail call void @glDisable(i32 noundef 3042) #7
  tail call void @glEnable(i32 noundef 2852) #7
  tail call void @glColor3ub(i8 noundef zeroext 96, i8 noundef zeroext 96, i8 noundef zeroext 96) #7
  tail call void @glLineStipple(i32 noundef 1, i16 noundef zeroext -13108) #7
  %23 = load i32, ptr %3, align 4, !tbaa !57
  %24 = load i32, ptr %7, align 4, !tbaa !59
  %25 = load i32, ptr %4, align 4, !tbaa !60
  %26 = load i32, ptr %12, align 4, !tbaa !61
  tail call void @sdrawbox(i32 noundef %23, i32 noundef %24, i32 noundef %25, i32 noundef %26) #7
  tail call void @glColor3ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1) #7
  tail call void @glLineStipple(i32 noundef 1, i16 noundef zeroext 13107) #7
  %27 = load i32, ptr %3, align 4, !tbaa !57
  %28 = load i32, ptr %7, align 4, !tbaa !59
  %29 = load i32, ptr %4, align 4, !tbaa !60
  %30 = load i32, ptr %12, align 4, !tbaa !61
  tail call void @sdrawbox(i32 noundef %27, i32 noundef %28, i32 noundef %29, i32 noundef %30) #7
  tail call void @glDisable(i32 noundef 2852) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @wm_gesture_draw_lasso(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca %struct.rcti, align 4
  %5 = alloca %struct.rcti, align 4
  %6 = alloca %struct.LassoFillData, align 8
  %7 = getelementptr inbounds %struct.wmGesture, ptr %1, i64 0, i32 8
  %8 = load ptr, ptr %7, align 8, !tbaa !54
  %9 = icmp eq i8 %2, 0
  br i1 %9, label %75, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.wmGesture, ptr %1, i64 0, i32 6
  %12 = load i32, ptr %11, align 8, !tbaa !63
  %13 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %14 = add nsw i32 %12, 1
  %15 = sext i32 %14 to i64
  %16 = shl nsw i64 %15, 3
  %17 = tail call ptr %13(i64 noundef %16, ptr noundef nonnull @__func__.draw_filled_lasso) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7
  %18 = icmp sgt i32 %12, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %10
  %20 = zext nneg i32 %12 to i64
  br label %21

21:                                               ; preds = %19, %21
  %22 = phi i64 [ 0, %19 ], [ %31, %21 ]
  %23 = phi ptr [ %8, %19 ], [ %32, %21 ]
  %24 = load i16, ptr %23, align 2, !tbaa !62
  %25 = sext i16 %24 to i32
  %26 = getelementptr inbounds [2 x i32], ptr %17, i64 %22
  store i32 %25, ptr %26, align 4, !tbaa !56
  %27 = getelementptr inbounds i16, ptr %23, i64 1
  %28 = load i16, ptr %27, align 2, !tbaa !62
  %29 = sext i16 %28 to i32
  %30 = getelementptr inbounds [2 x i32], ptr %17, i64 %22, i64 1
  store i32 %29, ptr %30, align 4, !tbaa !56
  %31 = add nuw nsw i64 %22, 1
  %32 = getelementptr inbounds i16, ptr %23, i64 2
  %33 = icmp eq i64 %31, %20
  br i1 %33, label %34, label %21, !llvm.loop !78

34:                                               ; preds = %21, %10
  call void @BLI_lasso_boundbox(ptr noundef nonnull %4, ptr noundef %17, i32 noundef %12) #7
  %35 = getelementptr inbounds %struct.wmGesture, ptr %1, i64 0, i32 5
  %36 = load i32, ptr %35, align 4, !tbaa !53
  call void @wm_subwindow_rect_get(ptr noundef %0, i32 noundef %36, ptr noundef nonnull %5) #7
  %37 = load i32, ptr %5, align 4, !tbaa !57
  %38 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 2
  %39 = load i32, ptr %38, align 4, !tbaa !59
  call void @BLI_rcti_translate(ptr noundef nonnull %4, i32 noundef %37, i32 noundef %39) #7
  %40 = call zeroext i8 @BLI_rcti_isect(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %4) #7
  %41 = load i32, ptr %5, align 4, !tbaa !57
  %42 = sub nsw i32 0, %41
  %43 = load i32, ptr %38, align 4, !tbaa !59
  %44 = sub nsw i32 0, %43
  call void @BLI_rcti_translate(ptr noundef nonnull %4, i32 noundef %42, i32 noundef %44) #7
  %45 = call zeroext i8 @BLI_rcti_is_empty(ptr noundef nonnull %4) #7
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %73

47:                                               ; preds = %34
  %48 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 1
  %49 = load i32, ptr %48, align 4, !tbaa !60
  %50 = load i32, ptr %4, align 4, !tbaa !57
  %51 = sub nsw i32 %49, %50
  %52 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 3
  %53 = load i32, ptr %52, align 4, !tbaa !61
  %54 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 2
  %55 = load i32, ptr %54, align 4, !tbaa !59
  %56 = sub nsw i32 %53, %55
  %57 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %58 = sext i32 %51 to i64
  %59 = shl nsw i64 %58, 2
  %60 = sext i32 %56 to i64
  %61 = mul i64 %59, %60
  %62 = call ptr %57(i64 noundef %61, ptr noundef nonnull @__func__.draw_filled_lasso) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7
  store ptr %62, ptr %6, align 8, !tbaa !79
  %63 = getelementptr inbounds %struct.LassoFillData, ptr %6, i64 0, i32 1
  store i32 %51, ptr %63, align 8, !tbaa !81
  %64 = load i32, ptr %4, align 4, !tbaa !57
  %65 = load i32, ptr %54, align 4, !tbaa !59
  %66 = load i32, ptr %48, align 4, !tbaa !60
  %67 = load i32, ptr %52, align 4, !tbaa !61
  call void @fill_poly_v2i_n(i32 noundef %64, i32 noundef %65, i32 noundef %66, i32 noundef %67, ptr noundef %17, i32 noundef %12, ptr noundef nonnull @draw_filled_lasso_px_cb, ptr noundef nonnull %6) #7
  call void @glEnable(i32 noundef 3042) #7
  %68 = load i32, ptr %4, align 4, !tbaa !57
  %69 = sitofp i32 %68 to float
  %70 = load i32, ptr %54, align 4, !tbaa !59
  %71 = sitofp i32 %70 to float
  call void @glRasterPos2f(float noundef %69, float noundef %71) #7
  call void @glDrawPixels(i32 noundef %51, i32 noundef %56, i32 noundef 6408, i32 noundef 5121, ptr noundef %62) #7
  call void @glDisable(i32 noundef 3042) #7
  %72 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %72(ptr noundef %62) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7
  br label %73

73:                                               ; preds = %34, %47
  %74 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %74(ptr noundef %17) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7
  br label %75

75:                                               ; preds = %73, %3
  call void @glEnable(i32 noundef 2852) #7
  call void @glColor3ub(i8 noundef zeroext 96, i8 noundef zeroext 96, i8 noundef zeroext 96) #7
  call void @glLineStipple(i32 noundef 1, i16 noundef zeroext -21846) #7
  call void @glBegin(i32 noundef 3) #7
  %76 = getelementptr inbounds %struct.wmGesture, ptr %1, i64 0, i32 6
  %77 = load i32, ptr %76, align 8, !tbaa !63
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %75, %79
  %80 = phi i32 [ %82, %79 ], [ 0, %75 ]
  %81 = phi ptr [ %83, %79 ], [ %8, %75 ]
  call void @glVertex2sv(ptr noundef %81) #7
  %82 = add nuw nsw i32 %80, 1
  %83 = getelementptr inbounds i16, ptr %81, i64 2
  %84 = load i32, ptr %76, align 8, !tbaa !63
  %85 = icmp slt i32 %82, %84
  br i1 %85, label %79, label %86, !llvm.loop !82

86:                                               ; preds = %79, %75
  %87 = getelementptr inbounds %struct.wmGesture, ptr %1, i64 0, i32 6
  %88 = getelementptr inbounds %struct.wmGesture, ptr %1, i64 0, i32 4
  %89 = load i32, ptr %88, align 8, !tbaa !38
  %90 = icmp eq i32 %89, 4
  br i1 %90, label %91, label %93

91:                                               ; preds = %86
  %92 = load ptr, ptr %7, align 8, !tbaa !54
  call void @glVertex2sv(ptr noundef %92) #7
  br label %93

93:                                               ; preds = %91, %86
  call void @glEnd() #7
  call void @glColor3ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1) #7
  call void @glLineStipple(i32 noundef 1, i16 noundef zeroext 21845) #7
  call void @glBegin(i32 noundef 3) #7
  %94 = load i32, ptr %87, align 8, !tbaa !63
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %93
  %97 = load ptr, ptr %7, align 8, !tbaa !54
  br label %98

98:                                               ; preds = %96, %98
  %99 = phi i32 [ %101, %98 ], [ 0, %96 ]
  %100 = phi ptr [ %102, %98 ], [ %97, %96 ]
  call void @glVertex2sv(ptr noundef %100) #7
  %101 = add nuw nsw i32 %99, 1
  %102 = getelementptr inbounds i16, ptr %100, i64 2
  %103 = load i32, ptr %87, align 8, !tbaa !63
  %104 = icmp slt i32 %101, %103
  br i1 %104, label %98, label %105, !llvm.loop !83

105:                                              ; preds = %98, %93
  %106 = load i32, ptr %88, align 8, !tbaa !38
  %107 = icmp eq i32 %106, 4
  br i1 %107, label %108, label %110

108:                                              ; preds = %105
  %109 = load ptr, ptr %7, align 8, !tbaa !54
  call void @glVertex2sv(ptr noundef %109) #7
  br label %110

110:                                              ; preds = %108, %105
  call void @glEnd() #7
  call void @glDisable(i32 noundef 2852) #7
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @wm_gesture_tag_redraw(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_window(ptr noundef %0) #7
  %3 = tail call ptr @CTX_wm_screen(ptr noundef %0) #7
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #7
  %5 = icmp eq ptr %3, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.bScreen, ptr %3, i64 0, i32 14
  store i16 1, ptr %7, align 2, !tbaa !84
  br label %8

8:                                                ; preds = %6, %1
  tail call void @wm_tag_redraw_overlay(ptr noundef %2, ptr noundef %4) #7
  ret void
}

declare ptr @CTX_wm_screen(ptr noundef) local_unnamed_addr #2

declare void @wm_tag_redraw_overlay(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #4

declare void @glEnable(i32 noundef) local_unnamed_addr #2

declare void @glColor4f(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @glBegin(i32 noundef) local_unnamed_addr #2

declare void @glVertex2s(i16 noundef signext, i16 noundef signext) local_unnamed_addr #2

declare void @glEnd() local_unnamed_addr #2

declare void @glDisable(i32 noundef) local_unnamed_addr #2

declare void @glColor3ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare void @glLineStipple(i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

declare void @sdrawbox(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @glTranslatef(float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @glutil_draw_filled_arc(float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #2

declare void @glutil_draw_lined_arc(float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #2

declare i32 @WM_window_pixels_x(ptr noundef) local_unnamed_addr #2

declare i32 @WM_window_pixels_y(ptr noundef) local_unnamed_addr #2

declare void @sdrawline(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @glVertex2sv(ptr noundef) local_unnamed_addr #2

declare void @BLI_lasso_boundbox(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @wm_subwindow_rect_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_rcti_translate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @BLI_rcti_isect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BLI_rcti_is_empty(ptr noundef) local_unnamed_addr #2

declare void @fill_poly_v2i_n(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @draw_filled_lasso_px_cb(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #6 {
  %4 = load ptr, ptr %2, align 8, !tbaa !79
  %5 = getelementptr inbounds %struct.LassoFillData, ptr %2, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !81
  %7 = mul nsw i32 %6, %1
  %8 = add nsw i32 %7, %0
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, ptr %4, i64 %9
  %11 = getelementptr inbounds i8, ptr %10, i64 2
  store i8 -1, ptr %11, align 1, !tbaa !87
  %12 = getelementptr inbounds i8, ptr %10, i64 1
  store i8 -1, ptr %12, align 1, !tbaa !87
  store i8 -1, ptr %10, align 1, !tbaa !87
  %13 = getelementptr inbounds i8, ptr %10, i64 3
  store i8 16, ptr %13, align 1, !tbaa !87
  ret void
}

declare void @glRasterPos2f(float noundef, float noundef) local_unnamed_addr #2

declare void @glDrawPixels(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !40, i64 24}
!39 = !{!"wmGesture", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !35, i64 40, !35, i64 48}
!40 = !{!"int", !36, i64 0}
!41 = !{!42, !43, i64 16}
!42 = !{!"wmEvent", !35, i64 0, !35, i64 8, !43, i64 16, !43, i64 18, !40, i64 20, !40, i64 24, !36, i64 28, !36, i64 36, !36, i64 42, !36, i64 43, !43, i64 44, !43, i64 46, !40, i64 48, !40, i64 52, !44, i64 56, !40, i64 64, !40, i64 68, !43, i64 72, !43, i64 74, !43, i64 76, !43, i64 78, !43, i64 80, !43, i64 82, !35, i64 88, !35, i64 96, !43, i64 104, !43, i64 106, !40, i64 108, !35, i64 112}
!43 = !{!"short", !36, i64 0}
!44 = !{!"double", !36, i64 0}
!45 = !{!39, !40, i64 16}
!46 = !{!47, !43, i64 212}
!47 = !{!"ARegion", !35, i64 0, !35, i64 8, !48, i64 16, !51, i64 176, !51, i64 192, !43, i64 208, !43, i64 210, !43, i64 212, !43, i64 214, !43, i64 216, !43, i64 218, !50, i64 220, !43, i64 224, !43, i64 226, !43, i64 228, !43, i64 230, !43, i64 232, !43, i64 234, !43, i64 236, !43, i64 238, !35, i64 240, !52, i64 248, !52, i64 264, !52, i64 280, !52, i64 296, !52, i64 312, !52, i64 328, !52, i64 344, !35, i64 360, !35, i64 368, !35, i64 376}
!48 = !{!"View2D", !49, i64 0, !49, i64 16, !51, i64 32, !51, i64 48, !51, i64 64, !36, i64 80, !36, i64 88, !50, i64 96, !50, i64 100, !43, i64 104, !43, i64 106, !43, i64 108, !43, i64 110, !43, i64 112, !43, i64 114, !43, i64 116, !43, i64 118, !43, i64 120, !43, i64 122, !43, i64 124, !43, i64 126, !35, i64 128, !40, i64 136, !40, i64 140, !35, i64 144, !35, i64 152}
!49 = !{!"rctf", !50, i64 0, !50, i64 4, !50, i64 8, !50, i64 12}
!50 = !{!"float", !36, i64 0}
!51 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!52 = !{!"ListBase", !35, i64 0, !35, i64 8}
!53 = !{!39, !40, i64 28}
!54 = !{!39, !35, i64 40}
!55 = !{!42, !40, i64 20}
!56 = !{!40, !40, i64 0}
!57 = !{!51, !40, i64 0}
!58 = !{!42, !40, i64 24}
!59 = !{!51, !40, i64 8}
!60 = !{!51, !40, i64 4}
!61 = !{!51, !40, i64 12}
!62 = !{!43, !43, i64 0}
!63 = !{!39, !40, i64 32}
!64 = !{!39, !40, i64 36}
!65 = !{!66, !35, i64 152}
!66 = !{!"wmWindow", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !36, i64 40, !43, i64 104, !43, i64 106, !43, i64 108, !43, i64 110, !43, i64 112, !43, i64 114, !43, i64 116, !43, i64 118, !43, i64 120, !43, i64 122, !43, i64 124, !43, i64 126, !40, i64 128, !43, i64 132, !43, i64 134, !35, i64 136, !35, i64 144, !35, i64 152, !40, i64 160, !40, i64 164, !35, i64 168, !52, i64 176, !52, i64 192, !52, i64 208, !52, i64 224, !52, i64 240}
!67 = !{!39, !35, i64 48}
!68 = !{!66, !35, i64 240}
!69 = distinct !{!69, !70, !71}
!70 = !{!"llvm.loop.mustprogress"}
!71 = !{!"llvm.loop.unroll.disable"}
!72 = !{!73, !43, i64 9788}
!73 = !{!"UserDef", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !36, i64 20, !36, i64 788, !36, i64 1556, !36, i64 2580, !36, i64 3348, !36, i64 4116, !36, i64 4884, !36, i64 5652, !36, i64 6420, !36, i64 7444, !40, i64 8468, !43, i64 8472, !43, i64 8474, !43, i64 8476, !43, i64 8478, !43, i64 8480, !43, i64 8482, !40, i64 8484, !40, i64 8488, !40, i64 8492, !43, i64 8496, !43, i64 8498, !40, i64 8500, !40, i64 8504, !40, i64 8508, !40, i64 8512, !40, i64 8516, !40, i64 8520, !40, i64 8524, !43, i64 8528, !43, i64 8530, !43, i64 8532, !43, i64 8534, !52, i64 8536, !52, i64 8552, !52, i64 8568, !52, i64 8584, !52, i64 8600, !52, i64 8616, !52, i64 8632, !36, i64 8648, !43, i64 8712, !43, i64 8714, !43, i64 8716, !43, i64 8718, !43, i64 8720, !43, i64 8722, !43, i64 8724, !43, i64 8726, !36, i64 8728, !43, i64 8896, !43, i64 8898, !43, i64 8900, !43, i64 8902, !43, i64 8904, !43, i64 8906, !43, i64 8908, !43, i64 8910, !40, i64 8912, !40, i64 8916, !43, i64 8920, !43, i64 8922, !43, i64 8924, !43, i64 8926, !43, i64 8928, !43, i64 8930, !43, i64 8932, !43, i64 8934, !43, i64 8936, !43, i64 8938, !36, i64 8940, !36, i64 8941, !36, i64 8942, !36, i64 8943, !43, i64 8944, !43, i64 8946, !43, i64 8948, !43, i64 8950, !43, i64 8952, !43, i64 8954, !50, i64 8956, !50, i64 8960, !40, i64 8964, !43, i64 8968, !43, i64 8970, !50, i64 8972, !43, i64 8976, !43, i64 8978, !43, i64 8980, !43, i64 8982, !74, i64 8984, !36, i64 9760, !36, i64 9772, !43, i64 9788, !36, i64 9790, !36, i64 9791, !36, i64 9792, !36, i64 9872, !40, i64 10896, !40, i64 10900, !50, i64 10904, !50, i64 10908, !40, i64 10912, !43, i64 10916, !43, i64 10918, !43, i64 10920, !43, i64 10922, !43, i64 10924, !43, i64 10926, !75, i64 10928}
!74 = !{!"ColorBand", !43, i64 0, !43, i64 2, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !36, i64 8}
!75 = !{!"WalkNavigation", !50, i64 0, !50, i64 4, !50, i64 8, !50, i64 12, !50, i64 16, !50, i64 20, !43, i64 24, !36, i64 26}
!76 = !{!39, !40, i64 20}
!77 = distinct !{!77, !70, !71}
!78 = distinct !{!78, !70, !71}
!79 = !{!80, !35, i64 0}
!80 = !{!"LassoFillData", !35, i64 0, !40, i64 8}
!81 = !{!80, !40, i64 8}
!82 = distinct !{!82, !70, !71}
!83 = distinct !{!83, !70, !71}
!84 = !{!85, !43, i64 218}
!85 = !{!"bScreen", !86, i64 0, !52, i64 120, !52, i64 136, !52, i64 152, !52, i64 168, !35, i64 184, !35, i64 192, !40, i64 200, !40, i64 204, !43, i64 208, !43, i64 210, !43, i64 212, !43, i64 214, !43, i64 216, !43, i64 218, !43, i64 220, !43, i64 222, !43, i64 224, !43, i64 226, !43, i64 228, !43, i64 230, !35, i64 232, !35, i64 240}
!86 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !43, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !35, i64 112}
!87 = !{!36, !36, i64 0}
