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
%struct.bScreen = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.LassoFillData = type { ptr, i32 }

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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @WM_gesture_new(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %7 = tail call ptr %6(i64 noundef 56, ptr noundef nonnull @.str) #9
  %8 = tail call ptr @CTX_wm_window(ptr noundef %0) #9
  %9 = tail call ptr @CTX_wm_region(ptr noundef %0) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  %10 = getelementptr inbounds %struct.wmWindow, ptr %8, i64 0, i32 31
  tail call void @BLI_addtail(ptr noundef nonnull %10, ptr noundef %7) #9
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
  call void @wm_subwindow_origin_get(ptr noundef %8, i32 noundef %18, ptr noundef nonnull %4, ptr noundef nonnull %5) #9
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
  %23 = call ptr %22(i64 noundef 16, ptr noundef nonnull @.str.1) #9
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
  %44 = call ptr %43(i64 noundef 4096, ptr noundef nonnull @.str.2) #9
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
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  ret ptr %7
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @wm_subwindow_origin_get(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_gesture_end(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_window(ptr noundef %0) #9
  %4 = getelementptr inbounds %struct.wmWindow, ptr %3, i64 0, i32 23
  %5 = load ptr, ptr %4, align 8, !tbaa !65
  %6 = icmp eq ptr %5, %1
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  store ptr null, ptr %4, align 8, !tbaa !65
  br label %8

8:                                                ; preds = %7, %2
  %9 = getelementptr inbounds %struct.wmWindow, ptr %3, i64 0, i32 31
  tail call void @BLI_remlink(ptr noundef nonnull %9, ptr noundef %1) #9
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %11 = getelementptr inbounds %struct.wmGesture, ptr %1, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !54
  tail call void %10(ptr noundef %12) #9
  %13 = getelementptr inbounds %struct.wmGesture, ptr %1, i64 0, i32 9
  %14 = load ptr, ptr %13, align 8, !tbaa !67
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %8
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %17(ptr noundef nonnull %14) #9
  br label %18

18:                                               ; preds = %16, %8
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %19(ptr noundef nonnull %1) #9
  ret void
}

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_gestures_remove(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_window(ptr noundef %0) #9
  %3 = getelementptr inbounds %struct.wmWindow, ptr %2, i64 0, i32 31
  %4 = load ptr, ptr %3, align 8, !tbaa !68
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %1, %6
  %7 = phi ptr [ %8, %6 ], [ %4, %1 ]
  tail call void @WM_gesture_end(ptr noundef %0, ptr noundef nonnull %7) #11
  %8 = load ptr, ptr %3, align 8, !tbaa !68
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %6, !llvm.loop !69

10:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable
define dso_local noundef i32 @wm_gesture_evaluate(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.wmGesture, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !38
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %29

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.wmGesture, ptr %0, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !54
  %8 = tail call fastcc i32 @BLI_rcti_size_x(ptr noundef %7) #11
  %9 = tail call fastcc i32 @BLI_rcti_size_y(ptr noundef %7) #11
  %10 = tail call i32 @llvm.abs.i32(i32 %8, i1 true)
  %11 = tail call i32 @llvm.abs.i32(i32 %9, i1 true)
  %12 = add nuw nsw i32 %11, %10
  %13 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 98), align 4, !tbaa !71
  %14 = sext i16 %13 to i32
  %15 = icmp sgt i32 %12, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %5
  %17 = sitofp i32 %9 to float
  %18 = sitofp i32 %8 to float
  %19 = tail call float @atan2f(float noundef %17, float noundef %18) #9
  %20 = fmul float %19, 4.000000e+00
  %21 = fdiv float %20, 0x400921FB60000000
  %22 = tail call fastcc i32 @iroundf(float noundef %21) #11
  %23 = add i32 %22, 3
  %24 = icmp ult i32 %23, 7
  br i1 %24, label %25, label %29

25:                                               ; preds = %16
  %26 = zext nneg i32 %23 to i64
  %27 = getelementptr inbounds [7 x i32], ptr @switch.table.wm_gesture_evaluate, i64 0, i64 %26
  %28 = load i32, ptr %27, align 4
  br label %29

29:                                               ; preds = %16, %25, %1, %5
  %30 = phi i32 [ 0, %5 ], [ 0, %1 ], [ %28, %25 ], [ 7, %16 ]
  ret i32 %30
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_x(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !75 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !60
  %4 = load i32, ptr %0, align 4, !tbaa !57
  %5 = sub nsw i32 %3, %4
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_y(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !76 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !61
  %4 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !59
  %6 = sub nsw i32 %3, %5
  ret i32 %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @iroundf(float noundef %0) unnamed_addr #6 !PGOFuncName !77 {
  %2 = fadd float %0, 5.000000e-01
  %3 = tail call float @llvm.floor.f32(float %2)
  %4 = fptosi float %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @wm_gesture_draw(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 31
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %25, label %5

5:                                                ; preds = %1, %22
  %6 = phi ptr [ %23, %22 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.wmGesture, ptr %6, i64 0, i32 5
  %8 = load i32, ptr %7, align 4, !tbaa !53
  tail call void @wmSubWindowSet(ptr noundef %0, i32 noundef %8) #9
  %9 = getelementptr inbounds %struct.wmGesture, ptr %6, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !38
  switch i32 %10, label %22 [
    i32 2, label %11
    i32 5, label %12
    i32 3, label %13
    i32 1, label %19
    i32 4, label %20
    i32 6, label %21
  ]

11:                                               ; preds = %5
  tail call fastcc void @wm_gesture_draw_rect(ptr noundef nonnull %6) #11
  br label %22

12:                                               ; preds = %5
  tail call fastcc void @wm_gesture_draw_circle(ptr noundef nonnull %6) #11
  br label %22

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.wmGesture, ptr %6, i64 0, i32 3
  %15 = load i32, ptr %14, align 4, !tbaa !78
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  tail call fastcc void @wm_gesture_draw_rect(ptr noundef nonnull %6) #11
  br label %22

18:                                               ; preds = %13
  tail call fastcc void @wm_gesture_draw_cross(ptr noundef %0, ptr noundef nonnull %6) #11
  br label %22

19:                                               ; preds = %5
  tail call fastcc void @wm_gesture_draw_lasso(ptr noundef %0, ptr noundef nonnull %6, i8 noundef zeroext 0) #11
  br label %22

20:                                               ; preds = %5
  tail call fastcc void @wm_gesture_draw_lasso(ptr noundef %0, ptr noundef nonnull %6, i8 noundef zeroext 1) #11
  br label %22

21:                                               ; preds = %5
  tail call fastcc void @wm_gesture_draw_line(ptr noundef nonnull %6) #11
  br label %22

22:                                               ; preds = %5, %11, %18, %17, %20, %21, %19, %12
  %23 = load ptr, ptr %6, align 8, !tbaa !34
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %5, !llvm.loop !79

25:                                               ; preds = %22, %1
  ret void
}

; Function Attrs: optsize
declare void @wmSubWindowSet(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @wm_gesture_draw_rect(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !80 {
  %2 = getelementptr inbounds %struct.wmGesture, ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  tail call void @glEnable(i32 noundef 3042) #9
  tail call void @glColor4f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 0x3FA99999A0000000) #9
  tail call void @glBegin(i32 noundef 7) #9
  %4 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !60
  %6 = trunc i32 %5 to i16
  %7 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !59
  %9 = trunc i32 %8 to i16
  tail call void @glVertex2s(i16 noundef signext %6, i16 noundef signext %9) #9
  %10 = load i32, ptr %4, align 4, !tbaa !60
  %11 = trunc i32 %10 to i16
  %12 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !61
  %14 = trunc i32 %13 to i16
  tail call void @glVertex2s(i16 noundef signext %11, i16 noundef signext %14) #9
  %15 = load i32, ptr %3, align 4, !tbaa !57
  %16 = trunc i32 %15 to i16
  %17 = load i32, ptr %12, align 4, !tbaa !61
  %18 = trunc i32 %17 to i16
  tail call void @glVertex2s(i16 noundef signext %16, i16 noundef signext %18) #9
  %19 = load i32, ptr %3, align 4, !tbaa !57
  %20 = trunc i32 %19 to i16
  %21 = load i32, ptr %7, align 4, !tbaa !59
  %22 = trunc i32 %21 to i16
  tail call void @glVertex2s(i16 noundef signext %20, i16 noundef signext %22) #9
  tail call void @glEnd() #9
  tail call void @glDisable(i32 noundef 3042) #9
  tail call void @glEnable(i32 noundef 2852) #9
  tail call void @glColor3ub(i8 noundef zeroext 96, i8 noundef zeroext 96, i8 noundef zeroext 96) #9
  tail call void @glLineStipple(i32 noundef 1, i16 noundef zeroext -13108) #9
  %23 = load i32, ptr %3, align 4, !tbaa !57
  %24 = load i32, ptr %7, align 4, !tbaa !59
  %25 = load i32, ptr %4, align 4, !tbaa !60
  %26 = load i32, ptr %12, align 4, !tbaa !61
  tail call void @sdrawbox(i32 noundef %23, i32 noundef %24, i32 noundef %25, i32 noundef %26) #9
  tail call void @glColor3ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1) #9
  tail call void @glLineStipple(i32 noundef 1, i16 noundef zeroext 13107) #9
  %27 = load i32, ptr %3, align 4, !tbaa !57
  %28 = load i32, ptr %7, align 4, !tbaa !59
  %29 = load i32, ptr %4, align 4, !tbaa !60
  %30 = load i32, ptr %12, align 4, !tbaa !61
  tail call void @sdrawbox(i32 noundef %27, i32 noundef %28, i32 noundef %29, i32 noundef %30) #9
  tail call void @glDisable(i32 noundef 2852) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @wm_gesture_draw_circle(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !81 {
  %2 = getelementptr inbounds %struct.wmGesture, ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  %4 = load i32, ptr %3, align 4, !tbaa !57
  %5 = sitofp i32 %4 to float
  %6 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !59
  %8 = sitofp i32 %7 to float
  tail call void @glTranslatef(float noundef %5, float noundef %8, float noundef 0.000000e+00) #9
  tail call void @glEnable(i32 noundef 3042) #9
  tail call void @glColor4f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 0x3FA99999A0000000) #9
  %9 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !60
  %11 = sitofp i32 %10 to float
  tail call void @glutil_draw_filled_arc(float noundef 0.000000e+00, float noundef 0x401921FB60000000, float noundef %11, i32 noundef 40) #9
  tail call void @glDisable(i32 noundef 3042) #9
  tail call void @glEnable(i32 noundef 2852) #9
  tail call void @glColor3ub(i8 noundef zeroext 96, i8 noundef zeroext 96, i8 noundef zeroext 96) #9
  tail call void @glLineStipple(i32 noundef 1, i16 noundef zeroext -21846) #9
  %12 = load i32, ptr %9, align 4, !tbaa !60
  %13 = sitofp i32 %12 to float
  tail call void @glutil_draw_lined_arc(float noundef 0.000000e+00, float noundef 0x401921FB60000000, float noundef %13, i32 noundef 40) #9
  tail call void @glColor3ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1) #9
  tail call void @glLineStipple(i32 noundef 1, i16 noundef zeroext 21845) #9
  %14 = load i32, ptr %9, align 4, !tbaa !60
  %15 = sitofp i32 %14 to float
  tail call void @glutil_draw_lined_arc(float noundef 0.000000e+00, float noundef 0x401921FB60000000, float noundef %15, i32 noundef 40) #9
  tail call void @glDisable(i32 noundef 2852) #9
  %16 = load i32, ptr %3, align 4, !tbaa !57
  %17 = sub nsw i32 0, %16
  %18 = sitofp i32 %17 to float
  %19 = load i32, ptr %6, align 4, !tbaa !59
  %20 = sub nsw i32 0, %19
  %21 = sitofp i32 %20 to float
  tail call void @glTranslatef(float noundef %18, float noundef %21, float noundef 0.000000e+00) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @wm_gesture_draw_cross(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !82 {
  %3 = getelementptr inbounds %struct.wmGesture, ptr %1, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = tail call i32 @WM_window_pixels_x(ptr noundef %0) #9
  %6 = tail call i32 @WM_window_pixels_y(ptr noundef %0) #9
  tail call void @glEnable(i32 noundef 2852) #9
  tail call void @glColor3ub(i8 noundef zeroext 96, i8 noundef zeroext 96, i8 noundef zeroext 96) #9
  tail call void @glLineStipple(i32 noundef 1, i16 noundef zeroext -13108) #9
  %7 = load i32, ptr %4, align 4, !tbaa !57
  %8 = sub nsw i32 %7, %5
  %9 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !59
  %11 = add nsw i32 %7, %5
  tail call void @sdrawline(i32 noundef %8, i32 noundef %10, i32 noundef %11, i32 noundef %10) #9
  %12 = load i32, ptr %4, align 4, !tbaa !57
  %13 = load i32, ptr %9, align 4, !tbaa !59
  %14 = sub nsw i32 %13, %6
  %15 = add nsw i32 %13, %6
  tail call void @sdrawline(i32 noundef %12, i32 noundef %14, i32 noundef %12, i32 noundef %15) #9
  tail call void @glColor3ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1) #9
  tail call void @glLineStipple(i32 noundef 1, i16 noundef zeroext 13107) #9
  %16 = load i32, ptr %4, align 4, !tbaa !57
  %17 = sub nsw i32 %16, %5
  %18 = load i32, ptr %9, align 4, !tbaa !59
  %19 = add nsw i32 %16, %5
  tail call void @sdrawline(i32 noundef %17, i32 noundef %18, i32 noundef %19, i32 noundef %18) #9
  %20 = load i32, ptr %4, align 4, !tbaa !57
  %21 = load i32, ptr %9, align 4, !tbaa !59
  %22 = sub nsw i32 %21, %6
  %23 = add nsw i32 %21, %6
  tail call void @sdrawline(i32 noundef %20, i32 noundef %22, i32 noundef %20, i32 noundef %23) #9
  tail call void @glDisable(i32 noundef 2852) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @wm_gesture_draw_lasso(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 !PGOFuncName !83 {
  %4 = getelementptr inbounds %struct.wmGesture, ptr %1, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = icmp eq i8 %2, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call fastcc void @draw_filled_lasso(ptr noundef %0, ptr noundef nonnull %1) #11
  br label %8

8:                                                ; preds = %7, %3
  tail call void @glEnable(i32 noundef 2852) #9
  tail call void @glColor3ub(i8 noundef zeroext 96, i8 noundef zeroext 96, i8 noundef zeroext 96) #9
  tail call void @glLineStipple(i32 noundef 1, i16 noundef zeroext -21846) #9
  tail call void @glBegin(i32 noundef 3) #9
  %9 = getelementptr inbounds %struct.wmGesture, ptr %1, i64 0, i32 6
  %10 = load i32, ptr %9, align 8, !tbaa !63
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %8, %12
  %13 = phi i32 [ %15, %12 ], [ 0, %8 ]
  %14 = phi ptr [ %16, %12 ], [ %5, %8 ]
  tail call void @glVertex2sv(ptr noundef %14) #9
  %15 = add nuw nsw i32 %13, 1
  %16 = getelementptr inbounds i16, ptr %14, i64 2
  %17 = load i32, ptr %9, align 8, !tbaa !63
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %12, label %19, !llvm.loop !84

19:                                               ; preds = %12, %8
  %20 = getelementptr inbounds %struct.wmGesture, ptr %1, i64 0, i32 4
  %21 = load i32, ptr %20, align 8, !tbaa !38
  %22 = icmp eq i32 %21, 4
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load ptr, ptr %4, align 8, !tbaa !54
  tail call void @glVertex2sv(ptr noundef %24) #9
  br label %25

25:                                               ; preds = %23, %19
  tail call void @glEnd() #9
  tail call void @glColor3ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1) #9
  tail call void @glLineStipple(i32 noundef 1, i16 noundef zeroext 21845) #9
  tail call void @glBegin(i32 noundef 3) #9
  %26 = load i32, ptr %9, align 8, !tbaa !63
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %25
  %29 = load ptr, ptr %4, align 8, !tbaa !54
  br label %30

30:                                               ; preds = %28, %30
  %31 = phi i32 [ %33, %30 ], [ 0, %28 ]
  %32 = phi ptr [ %34, %30 ], [ %29, %28 ]
  tail call void @glVertex2sv(ptr noundef %32) #9
  %33 = add nuw nsw i32 %31, 1
  %34 = getelementptr inbounds i16, ptr %32, i64 2
  %35 = load i32, ptr %9, align 8, !tbaa !63
  %36 = icmp slt i32 %33, %35
  br i1 %36, label %30, label %37, !llvm.loop !85

37:                                               ; preds = %30, %25
  %38 = load i32, ptr %20, align 8, !tbaa !38
  %39 = icmp eq i32 %38, 4
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load ptr, ptr %4, align 8, !tbaa !54
  tail call void @glVertex2sv(ptr noundef %41) #9
  br label %42

42:                                               ; preds = %40, %37
  tail call void @glEnd() #9
  tail call void @glDisable(i32 noundef 2852) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @wm_gesture_draw_line(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !86 {
  %2 = getelementptr inbounds %struct.wmGesture, ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  tail call void @glEnable(i32 noundef 2852) #9
  tail call void @glColor3ub(i8 noundef zeroext 96, i8 noundef zeroext 96, i8 noundef zeroext 96) #9
  tail call void @glLineStipple(i32 noundef 1, i16 noundef zeroext -21846) #9
  %4 = load i32, ptr %3, align 4, !tbaa !57
  %5 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !59
  %7 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !60
  %9 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !61
  tail call void @sdrawline(i32 noundef %4, i32 noundef %6, i32 noundef %8, i32 noundef %10) #9
  tail call void @glColor3ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1) #9
  tail call void @glLineStipple(i32 noundef 1, i16 noundef zeroext 21845) #9
  %11 = load i32, ptr %3, align 4, !tbaa !57
  %12 = load i32, ptr %5, align 4, !tbaa !59
  %13 = load i32, ptr %7, align 4, !tbaa !60
  %14 = load i32, ptr %9, align 4, !tbaa !61
  tail call void @sdrawline(i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14) #9
  tail call void @glDisable(i32 noundef 2852) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @wm_gesture_tag_redraw(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_window(ptr noundef %0) #9
  %3 = tail call ptr @CTX_wm_screen(ptr noundef %0) #9
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #9
  %5 = icmp eq ptr %3, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.bScreen, ptr %3, i64 0, i32 14
  store i16 1, ptr %7, align 2, !tbaa !87
  br label %8

8:                                                ; preds = %6, %1
  tail call void @wm_tag_redraw_overlay(ptr noundef %2, ptr noundef %4) #9
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_wm_screen(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @wm_tag_redraw_overlay(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #5

; Function Attrs: optsize
declare void @glEnable(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glColor4f(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glBegin(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glVertex2s(i16 noundef signext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glEnd() local_unnamed_addr #2

; Function Attrs: optsize
declare void @glDisable(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glColor3ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glLineStipple(i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sdrawbox(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glTranslatef(float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glutil_draw_filled_arc(float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glutil_draw_lined_arc(float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @WM_window_pixels_x(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @WM_window_pixels_y(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sdrawline(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_filled_lasso(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !90 {
  %3 = alloca %struct.rcti, align 4
  %4 = alloca %struct.rcti, align 4
  %5 = alloca %struct.LassoFillData, align 8
  %6 = getelementptr inbounds %struct.wmGesture, ptr %1, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !54
  %8 = getelementptr inbounds %struct.wmGesture, ptr %1, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !63
  %10 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %11 = add nsw i32 %9, 1
  %12 = sext i32 %11 to i64
  %13 = shl nsw i64 %12, 3
  %14 = tail call ptr %10(i64 noundef %13, ptr noundef nonnull @__func__.draw_filled_lasso) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #10
  %15 = icmp sgt i32 %9, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %2
  %17 = zext nneg i32 %9 to i64
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi i64 [ 0, %16 ], [ %28, %18 ]
  %20 = phi ptr [ %7, %16 ], [ %29, %18 ]
  %21 = load i16, ptr %20, align 2, !tbaa !62
  %22 = sext i16 %21 to i32
  %23 = getelementptr inbounds [2 x i32], ptr %14, i64 %19
  store i32 %22, ptr %23, align 4, !tbaa !56
  %24 = getelementptr inbounds i16, ptr %20, i64 1
  %25 = load i16, ptr %24, align 2, !tbaa !62
  %26 = sext i16 %25 to i32
  %27 = getelementptr inbounds [2 x i32], ptr %14, i64 %19, i64 1
  store i32 %26, ptr %27, align 4, !tbaa !56
  %28 = add nuw nsw i64 %19, 1
  %29 = getelementptr inbounds i16, ptr %20, i64 2
  %30 = icmp eq i64 %28, %17
  br i1 %30, label %31, label %18, !llvm.loop !91

31:                                               ; preds = %18, %2
  call void @BLI_lasso_boundbox(ptr noundef nonnull %3, ptr noundef %14, i32 noundef %9) #9
  %32 = getelementptr inbounds %struct.wmGesture, ptr %1, i64 0, i32 5
  %33 = load i32, ptr %32, align 4, !tbaa !53
  call void @wm_subwindow_rect_get(ptr noundef %0, i32 noundef %33, ptr noundef nonnull %4) #9
  %34 = load i32, ptr %4, align 4, !tbaa !57
  %35 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 2
  %36 = load i32, ptr %35, align 4, !tbaa !59
  call void @BLI_rcti_translate(ptr noundef nonnull %3, i32 noundef %34, i32 noundef %36) #9
  %37 = call zeroext i8 @BLI_rcti_isect(ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef nonnull %3) #9
  %38 = load i32, ptr %4, align 4, !tbaa !57
  %39 = sub nsw i32 0, %38
  %40 = load i32, ptr %35, align 4, !tbaa !59
  %41 = sub nsw i32 0, %40
  call void @BLI_rcti_translate(ptr noundef nonnull %3, i32 noundef %39, i32 noundef %41) #9
  %42 = call zeroext i8 @BLI_rcti_is_empty(ptr noundef nonnull %3) #9
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %66

44:                                               ; preds = %31
  %45 = call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %3) #11
  %46 = call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %3) #11
  %47 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %48 = sext i32 %45 to i64
  %49 = shl nsw i64 %48, 2
  %50 = sext i32 %46 to i64
  %51 = mul i64 %49, %50
  %52 = call ptr %47(i64 noundef %51, ptr noundef nonnull @__func__.draw_filled_lasso) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #10
  store ptr %52, ptr %5, align 8, !tbaa !92
  %53 = getelementptr inbounds %struct.LassoFillData, ptr %5, i64 0, i32 1
  store i32 %45, ptr %53, align 8, !tbaa !94
  %54 = load i32, ptr %3, align 4, !tbaa !57
  %55 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 2
  %56 = load i32, ptr %55, align 4, !tbaa !59
  %57 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 1
  %58 = load i32, ptr %57, align 4, !tbaa !60
  %59 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 3
  %60 = load i32, ptr %59, align 4, !tbaa !61
  call void @fill_poly_v2i_n(i32 noundef %54, i32 noundef %56, i32 noundef %58, i32 noundef %60, ptr noundef %14, i32 noundef %9, ptr noundef nonnull @draw_filled_lasso_px_cb, ptr noundef nonnull %5) #9
  call void @glEnable(i32 noundef 3042) #9
  %61 = load i32, ptr %3, align 4, !tbaa !57
  %62 = sitofp i32 %61 to float
  %63 = load i32, ptr %55, align 4, !tbaa !59
  %64 = sitofp i32 %63 to float
  call void @glRasterPos2f(float noundef %62, float noundef %64) #9
  call void @glDrawPixels(i32 noundef %45, i32 noundef %46, i32 noundef 6408, i32 noundef 5121, ptr noundef %52) #9
  call void @glDisable(i32 noundef 3042) #9
  %65 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %65(ptr noundef %52) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #10
  br label %66

66:                                               ; preds = %44, %31
  %67 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %67(ptr noundef %14) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  ret void
}

; Function Attrs: optsize
declare void @glVertex2sv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_lasso_boundbox(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @wm_subwindow_rect_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_rcti_translate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BLI_rcti_isect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BLI_rcti_is_empty(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @fill_poly_v2i_n(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @draw_filled_lasso_px_cb(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #8 !PGOFuncName !95 {
  %4 = load ptr, ptr %2, align 8, !tbaa !92
  %5 = getelementptr inbounds %struct.LassoFillData, ptr %2, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !94
  %7 = mul nsw i32 %6, %1
  %8 = add nsw i32 %7, %0
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, ptr %4, i64 %9
  store <4 x i8> <i8 -1, i8 -1, i8 -1, i8 16>, ptr %10, align 1, !tbaa !96
  ret void
}

; Function Attrs: optsize
declare void @glRasterPos2f(float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glDrawPixels(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind optsize }
attributes #10 = { nounwind }
attributes #11 = { optsize }

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
!69 = distinct !{!69, !70}
!70 = !{!"llvm.loop.mustprogress"}
!71 = !{!72, !43, i64 9788}
!72 = !{!"UserDef", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !36, i64 20, !36, i64 788, !36, i64 1556, !36, i64 2580, !36, i64 3348, !36, i64 4116, !36, i64 4884, !36, i64 5652, !36, i64 6420, !36, i64 7444, !40, i64 8468, !43, i64 8472, !43, i64 8474, !43, i64 8476, !43, i64 8478, !43, i64 8480, !43, i64 8482, !40, i64 8484, !40, i64 8488, !40, i64 8492, !43, i64 8496, !43, i64 8498, !40, i64 8500, !40, i64 8504, !40, i64 8508, !40, i64 8512, !40, i64 8516, !40, i64 8520, !40, i64 8524, !43, i64 8528, !43, i64 8530, !43, i64 8532, !43, i64 8534, !52, i64 8536, !52, i64 8552, !52, i64 8568, !52, i64 8584, !52, i64 8600, !52, i64 8616, !52, i64 8632, !36, i64 8648, !43, i64 8712, !43, i64 8714, !43, i64 8716, !43, i64 8718, !43, i64 8720, !43, i64 8722, !43, i64 8724, !43, i64 8726, !36, i64 8728, !43, i64 8896, !43, i64 8898, !43, i64 8900, !43, i64 8902, !43, i64 8904, !43, i64 8906, !43, i64 8908, !43, i64 8910, !40, i64 8912, !40, i64 8916, !43, i64 8920, !43, i64 8922, !43, i64 8924, !43, i64 8926, !43, i64 8928, !43, i64 8930, !43, i64 8932, !43, i64 8934, !43, i64 8936, !43, i64 8938, !36, i64 8940, !36, i64 8941, !36, i64 8942, !36, i64 8943, !43, i64 8944, !43, i64 8946, !43, i64 8948, !43, i64 8950, !43, i64 8952, !43, i64 8954, !50, i64 8956, !50, i64 8960, !40, i64 8964, !43, i64 8968, !43, i64 8970, !50, i64 8972, !43, i64 8976, !43, i64 8978, !43, i64 8980, !43, i64 8982, !73, i64 8984, !36, i64 9760, !36, i64 9772, !43, i64 9788, !36, i64 9790, !36, i64 9791, !36, i64 9792, !36, i64 9872, !40, i64 10896, !40, i64 10900, !50, i64 10904, !50, i64 10908, !40, i64 10912, !43, i64 10916, !43, i64 10918, !43, i64 10920, !43, i64 10922, !43, i64 10924, !43, i64 10926, !74, i64 10928}
!73 = !{!"ColorBand", !43, i64 0, !43, i64 2, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !36, i64 8}
!74 = !{!"WalkNavigation", !50, i64 0, !50, i64 4, !50, i64 8, !50, i64 12, !50, i64 16, !50, i64 20, !43, i64 24, !36, i64 26}
!75 = !{!"wm_gesture.c:BLI_rcti_size_x"}
!76 = !{!"wm_gesture.c:BLI_rcti_size_y"}
!77 = !{!"wm_gesture.c:iroundf"}
!78 = !{!39, !40, i64 20}
!79 = distinct !{!79, !70}
!80 = !{!"wm_gesture.c:wm_gesture_draw_rect"}
!81 = !{!"wm_gesture.c:wm_gesture_draw_circle"}
!82 = !{!"wm_gesture.c:wm_gesture_draw_cross"}
!83 = !{!"wm_gesture.c:wm_gesture_draw_lasso"}
!84 = distinct !{!84, !70}
!85 = distinct !{!85, !70}
!86 = !{!"wm_gesture.c:wm_gesture_draw_line"}
!87 = !{!88, !43, i64 218}
!88 = !{!"bScreen", !89, i64 0, !52, i64 120, !52, i64 136, !52, i64 152, !52, i64 168, !35, i64 184, !35, i64 192, !40, i64 200, !40, i64 204, !43, i64 208, !43, i64 210, !43, i64 212, !43, i64 214, !43, i64 216, !43, i64 218, !43, i64 220, !43, i64 222, !43, i64 224, !43, i64 226, !43, i64 228, !43, i64 230, !35, i64 232, !35, i64 240}
!89 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !43, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !35, i64 112}
!90 = !{!"wm_gesture.c:draw_filled_lasso"}
!91 = distinct !{!91, !70}
!92 = !{!93, !35, i64 0}
!93 = !{!"LassoFillData", !35, i64 0, !40, i64 8}
!94 = !{!93, !40, i64 8}
!95 = !{!"wm_gesture.c:draw_filled_lasso_px_cb"}
!96 = !{!36, !36, i64 0}
