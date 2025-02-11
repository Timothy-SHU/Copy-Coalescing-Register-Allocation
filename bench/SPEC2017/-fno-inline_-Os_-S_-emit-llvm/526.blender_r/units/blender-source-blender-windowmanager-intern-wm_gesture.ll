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
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %7 = tail call ptr %6(i64 noundef 56, ptr noundef nonnull @.str) #9
  %8 = tail call ptr @CTX_wm_window(ptr noundef %0) #9
  %9 = tail call ptr @CTX_wm_region(ptr noundef %0) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  %10 = getelementptr inbounds %struct.wmWindow, ptr %8, i64 0, i32 31
  tail call void @BLI_addtail(ptr noundef nonnull %10, ptr noundef %7) #9
  %11 = getelementptr inbounds %struct.wmGesture, ptr %7, i64 0, i32 4
  store i32 %2, ptr %11, align 8, !tbaa !9
  %12 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 2
  %13 = load i16, ptr %12, align 8, !tbaa !12
  %14 = sext i16 %13 to i32
  %15 = getelementptr inbounds %struct.wmGesture, ptr %7, i64 0, i32 2
  store i32 %14, ptr %15, align 8, !tbaa !16
  %16 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 7
  %17 = load i16, ptr %16, align 4, !tbaa !17
  %18 = sext i16 %17 to i32
  %19 = getelementptr inbounds %struct.wmGesture, ptr %7, i64 0, i32 5
  store i32 %18, ptr %19, align 4, !tbaa !24
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
  %22 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %23 = call ptr %22(i64 noundef 16, ptr noundef nonnull @.str.1) #9
  %24 = getelementptr inbounds %struct.wmGesture, ptr %7, i64 0, i32 8
  store ptr %23, ptr %24, align 8, !tbaa !25
  %25 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 4
  %26 = load i32, ptr %25, align 4, !tbaa !26
  %27 = load i32, ptr %4, align 4, !tbaa !27
  %28 = sub nsw i32 %26, %27
  store i32 %28, ptr %23, align 4, !tbaa !28
  %29 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 5
  %30 = load i32, ptr %29, align 8, !tbaa !29
  %31 = load i32, ptr %5, align 4, !tbaa !27
  %32 = sub nsw i32 %30, %31
  %33 = getelementptr inbounds %struct.rcti, ptr %23, i64 0, i32 2
  store i32 %32, ptr %33, align 4, !tbaa !30
  br i1 %21, label %34, label %37

34:                                               ; preds = %20
  %35 = load i32, ptr @circle_select_size, align 4, !tbaa !27
  %36 = getelementptr inbounds %struct.rcti, ptr %23, i64 0, i32 1
  store i32 %35, ptr %36, align 4, !tbaa !31
  br label %59

37:                                               ; preds = %20
  %38 = load i32, ptr %4, align 4, !tbaa !27
  %39 = sub nsw i32 %26, %38
  %40 = getelementptr inbounds %struct.rcti, ptr %23, i64 0, i32 1
  store i32 %39, ptr %40, align 4, !tbaa !31
  %41 = getelementptr inbounds %struct.rcti, ptr %23, i64 0, i32 3
  store i32 %32, ptr %41, align 4, !tbaa !32
  br label %59

42:                                               ; preds = %3, %3
  %43 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %44 = call ptr %43(i64 noundef 4096, ptr noundef nonnull @.str.2) #9
  %45 = getelementptr inbounds %struct.wmGesture, ptr %7, i64 0, i32 8
  store ptr %44, ptr %45, align 8, !tbaa !25
  %46 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 4
  %47 = load i32, ptr %46, align 4, !tbaa !26
  %48 = load i32, ptr %4, align 4, !tbaa !27
  %49 = sub nsw i32 %47, %48
  %50 = trunc i32 %49 to i16
  store i16 %50, ptr %44, align 2, !tbaa !33
  %51 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 5
  %52 = load i32, ptr %51, align 8, !tbaa !29
  %53 = load i32, ptr %5, align 4, !tbaa !27
  %54 = sub nsw i32 %52, %53
  %55 = trunc i32 %54 to i16
  %56 = getelementptr inbounds i16, ptr %44, i64 1
  store i16 %55, ptr %56, align 2, !tbaa !33
  %57 = getelementptr inbounds %struct.wmGesture, ptr %7, i64 0, i32 6
  store i32 1, ptr %57, align 8, !tbaa !34
  %58 = getelementptr inbounds %struct.wmGesture, ptr %7, i64 0, i32 7
  store i32 1024, ptr %58, align 4, !tbaa !35
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
  %5 = load ptr, ptr %4, align 8, !tbaa !36
  %6 = icmp eq ptr %5, %1
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  store ptr null, ptr %4, align 8, !tbaa !36
  br label %8

8:                                                ; preds = %7, %2
  %9 = getelementptr inbounds %struct.wmWindow, ptr %3, i64 0, i32 31
  tail call void @BLI_remlink(ptr noundef nonnull %9, ptr noundef %1) #9
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !5
  %11 = getelementptr inbounds %struct.wmGesture, ptr %1, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !25
  tail call void %10(ptr noundef %12) #9
  %13 = getelementptr inbounds %struct.wmGesture, ptr %1, i64 0, i32 9
  %14 = load ptr, ptr %13, align 8, !tbaa !38
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %8
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !5
  tail call void %17(ptr noundef nonnull %14) #9
  br label %18

18:                                               ; preds = %16, %8
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !5
  tail call void %19(ptr noundef nonnull %1) #9
  ret void
}

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_gestures_remove(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_window(ptr noundef %0) #9
  %3 = getelementptr inbounds %struct.wmWindow, ptr %2, i64 0, i32 31
  %4 = load ptr, ptr %3, align 8, !tbaa !39
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %1, %6
  %7 = phi ptr [ %8, %6 ], [ %4, %1 ]
  tail call void @WM_gesture_end(ptr noundef %0, ptr noundef nonnull %7) #11
  %8 = load ptr, ptr %3, align 8, !tbaa !39
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %6, !llvm.loop !40

10:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable
define dso_local noundef i32 @wm_gesture_evaluate(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.wmGesture, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !9
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %29

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.wmGesture, ptr %0, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !25
  %8 = tail call fastcc i32 @BLI_rcti_size_x(ptr noundef %7) #11
  %9 = tail call fastcc i32 @BLI_rcti_size_y(ptr noundef %7) #11
  %10 = tail call i32 @llvm.abs.i32(i32 %8, i1 true)
  %11 = tail call i32 @llvm.abs.i32(i32 %9, i1 true)
  %12 = add nuw nsw i32 %11, %10
  %13 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 98), align 4, !tbaa !42
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
define internal fastcc i32 @BLI_rcti_size_x(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !31
  %4 = load i32, ptr %0, align 4, !tbaa !28
  %5 = sub nsw i32 %3, %4
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_y(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !32
  %4 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !30
  %6 = sub nsw i32 %3, %5
  ret i32 %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @iroundf(float noundef %0) unnamed_addr #6 {
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
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %25, label %5

5:                                                ; preds = %1, %22
  %6 = phi ptr [ %23, %22 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.wmGesture, ptr %6, i64 0, i32 5
  %8 = load i32, ptr %7, align 4, !tbaa !24
  tail call void @wmSubWindowSet(ptr noundef %0, i32 noundef %8) #9
  %9 = getelementptr inbounds %struct.wmGesture, ptr %6, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !9
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
  %15 = load i32, ptr %14, align 4, !tbaa !46
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
  %23 = load ptr, ptr %6, align 8, !tbaa !5
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %5, !llvm.loop !47

25:                                               ; preds = %22, %1
  ret void
}

; Function Attrs: optsize
declare void @wmSubWindowSet(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @wm_gesture_draw_rect(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wmGesture, ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !25
  tail call void @glEnable(i32 noundef 3042) #9
  tail call void @glColor4f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 0x3FA99999A0000000) #9
  tail call void @glBegin(i32 noundef 7) #9
  %4 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !31
  %6 = trunc i32 %5 to i16
  %7 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !30
  %9 = trunc i32 %8 to i16
  tail call void @glVertex2s(i16 noundef signext %6, i16 noundef signext %9) #9
  %10 = load i32, ptr %4, align 4, !tbaa !31
  %11 = trunc i32 %10 to i16
  %12 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !32
  %14 = trunc i32 %13 to i16
  tail call void @glVertex2s(i16 noundef signext %11, i16 noundef signext %14) #9
  %15 = load i32, ptr %3, align 4, !tbaa !28
  %16 = trunc i32 %15 to i16
  %17 = load i32, ptr %12, align 4, !tbaa !32
  %18 = trunc i32 %17 to i16
  tail call void @glVertex2s(i16 noundef signext %16, i16 noundef signext %18) #9
  %19 = load i32, ptr %3, align 4, !tbaa !28
  %20 = trunc i32 %19 to i16
  %21 = load i32, ptr %7, align 4, !tbaa !30
  %22 = trunc i32 %21 to i16
  tail call void @glVertex2s(i16 noundef signext %20, i16 noundef signext %22) #9
  tail call void @glEnd() #9
  tail call void @glDisable(i32 noundef 3042) #9
  tail call void @glEnable(i32 noundef 2852) #9
  tail call void @glColor3ub(i8 noundef zeroext 96, i8 noundef zeroext 96, i8 noundef zeroext 96) #9
  tail call void @glLineStipple(i32 noundef 1, i16 noundef zeroext -13108) #9
  %23 = load i32, ptr %3, align 4, !tbaa !28
  %24 = load i32, ptr %7, align 4, !tbaa !30
  %25 = load i32, ptr %4, align 4, !tbaa !31
  %26 = load i32, ptr %12, align 4, !tbaa !32
  tail call void @sdrawbox(i32 noundef %23, i32 noundef %24, i32 noundef %25, i32 noundef %26) #9
  tail call void @glColor3ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1) #9
  tail call void @glLineStipple(i32 noundef 1, i16 noundef zeroext 13107) #9
  %27 = load i32, ptr %3, align 4, !tbaa !28
  %28 = load i32, ptr %7, align 4, !tbaa !30
  %29 = load i32, ptr %4, align 4, !tbaa !31
  %30 = load i32, ptr %12, align 4, !tbaa !32
  tail call void @sdrawbox(i32 noundef %27, i32 noundef %28, i32 noundef %29, i32 noundef %30) #9
  tail call void @glDisable(i32 noundef 2852) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @wm_gesture_draw_circle(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wmGesture, ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !25
  %4 = load i32, ptr %3, align 4, !tbaa !28
  %5 = sitofp i32 %4 to float
  %6 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !30
  %8 = sitofp i32 %7 to float
  tail call void @glTranslatef(float noundef %5, float noundef %8, float noundef 0.000000e+00) #9
  tail call void @glEnable(i32 noundef 3042) #9
  tail call void @glColor4f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 0x3FA99999A0000000) #9
  %9 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !31
  %11 = sitofp i32 %10 to float
  tail call void @glutil_draw_filled_arc(float noundef 0.000000e+00, float noundef 0x401921FB60000000, float noundef %11, i32 noundef 40) #9
  tail call void @glDisable(i32 noundef 3042) #9
  tail call void @glEnable(i32 noundef 2852) #9
  tail call void @glColor3ub(i8 noundef zeroext 96, i8 noundef zeroext 96, i8 noundef zeroext 96) #9
  tail call void @glLineStipple(i32 noundef 1, i16 noundef zeroext -21846) #9
  %12 = load i32, ptr %9, align 4, !tbaa !31
  %13 = sitofp i32 %12 to float
  tail call void @glutil_draw_lined_arc(float noundef 0.000000e+00, float noundef 0x401921FB60000000, float noundef %13, i32 noundef 40) #9
  tail call void @glColor3ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1) #9
  tail call void @glLineStipple(i32 noundef 1, i16 noundef zeroext 21845) #9
  %14 = load i32, ptr %9, align 4, !tbaa !31
  %15 = sitofp i32 %14 to float
  tail call void @glutil_draw_lined_arc(float noundef 0.000000e+00, float noundef 0x401921FB60000000, float noundef %15, i32 noundef 40) #9
  tail call void @glDisable(i32 noundef 2852) #9
  %16 = load i32, ptr %3, align 4, !tbaa !28
  %17 = sub nsw i32 0, %16
  %18 = sitofp i32 %17 to float
  %19 = load i32, ptr %6, align 4, !tbaa !30
  %20 = sub nsw i32 0, %19
  %21 = sitofp i32 %20 to float
  tail call void @glTranslatef(float noundef %18, float noundef %21, float noundef 0.000000e+00) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @wm_gesture_draw_cross(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmGesture, ptr %1, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !25
  %5 = tail call i32 @WM_window_pixels_x(ptr noundef %0) #9
  %6 = tail call i32 @WM_window_pixels_y(ptr noundef %0) #9
  tail call void @glEnable(i32 noundef 2852) #9
  tail call void @glColor3ub(i8 noundef zeroext 96, i8 noundef zeroext 96, i8 noundef zeroext 96) #9
  tail call void @glLineStipple(i32 noundef 1, i16 noundef zeroext -13108) #9
  %7 = load i32, ptr %4, align 4, !tbaa !28
  %8 = sub nsw i32 %7, %5
  %9 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !30
  %11 = add nsw i32 %7, %5
  tail call void @sdrawline(i32 noundef %8, i32 noundef %10, i32 noundef %11, i32 noundef %10) #9
  %12 = load i32, ptr %4, align 4, !tbaa !28
  %13 = load i32, ptr %9, align 4, !tbaa !30
  %14 = sub nsw i32 %13, %6
  %15 = add nsw i32 %13, %6
  tail call void @sdrawline(i32 noundef %12, i32 noundef %14, i32 noundef %12, i32 noundef %15) #9
  tail call void @glColor3ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1) #9
  tail call void @glLineStipple(i32 noundef 1, i16 noundef zeroext 13107) #9
  %16 = load i32, ptr %4, align 4, !tbaa !28
  %17 = sub nsw i32 %16, %5
  %18 = load i32, ptr %9, align 4, !tbaa !30
  %19 = add nsw i32 %16, %5
  tail call void @sdrawline(i32 noundef %17, i32 noundef %18, i32 noundef %19, i32 noundef %18) #9
  %20 = load i32, ptr %4, align 4, !tbaa !28
  %21 = load i32, ptr %9, align 4, !tbaa !30
  %22 = sub nsw i32 %21, %6
  %23 = add nsw i32 %21, %6
  tail call void @sdrawline(i32 noundef %20, i32 noundef %22, i32 noundef %20, i32 noundef %23) #9
  tail call void @glDisable(i32 noundef 2852) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @wm_gesture_draw_lasso(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.wmGesture, ptr %1, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !25
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
  %10 = load i32, ptr %9, align 8, !tbaa !34
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %8, %12
  %13 = phi i32 [ %15, %12 ], [ 0, %8 ]
  %14 = phi ptr [ %16, %12 ], [ %5, %8 ]
  tail call void @glVertex2sv(ptr noundef %14) #9
  %15 = add nuw nsw i32 %13, 1
  %16 = getelementptr inbounds i16, ptr %14, i64 2
  %17 = load i32, ptr %9, align 8, !tbaa !34
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %12, label %19, !llvm.loop !48

19:                                               ; preds = %12, %8
  %20 = getelementptr inbounds %struct.wmGesture, ptr %1, i64 0, i32 4
  %21 = load i32, ptr %20, align 8, !tbaa !9
  %22 = icmp eq i32 %21, 4
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load ptr, ptr %4, align 8, !tbaa !25
  tail call void @glVertex2sv(ptr noundef %24) #9
  br label %25

25:                                               ; preds = %23, %19
  tail call void @glEnd() #9
  tail call void @glColor3ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1) #9
  tail call void @glLineStipple(i32 noundef 1, i16 noundef zeroext 21845) #9
  tail call void @glBegin(i32 noundef 3) #9
  %26 = load i32, ptr %9, align 8, !tbaa !34
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %25
  %29 = load ptr, ptr %4, align 8, !tbaa !25
  br label %30

30:                                               ; preds = %28, %30
  %31 = phi i32 [ %33, %30 ], [ 0, %28 ]
  %32 = phi ptr [ %34, %30 ], [ %29, %28 ]
  tail call void @glVertex2sv(ptr noundef %32) #9
  %33 = add nuw nsw i32 %31, 1
  %34 = getelementptr inbounds i16, ptr %32, i64 2
  %35 = load i32, ptr %9, align 8, !tbaa !34
  %36 = icmp slt i32 %33, %35
  br i1 %36, label %30, label %37, !llvm.loop !49

37:                                               ; preds = %30, %25
  %38 = load i32, ptr %20, align 8, !tbaa !9
  %39 = icmp eq i32 %38, 4
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load ptr, ptr %4, align 8, !tbaa !25
  tail call void @glVertex2sv(ptr noundef %41) #9
  br label %42

42:                                               ; preds = %40, %37
  tail call void @glEnd() #9
  tail call void @glDisable(i32 noundef 2852) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @wm_gesture_draw_line(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wmGesture, ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !25
  tail call void @glEnable(i32 noundef 2852) #9
  tail call void @glColor3ub(i8 noundef zeroext 96, i8 noundef zeroext 96, i8 noundef zeroext 96) #9
  tail call void @glLineStipple(i32 noundef 1, i16 noundef zeroext -21846) #9
  %4 = load i32, ptr %3, align 4, !tbaa !28
  %5 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !30
  %7 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !31
  %9 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !32
  tail call void @sdrawline(i32 noundef %4, i32 noundef %6, i32 noundef %8, i32 noundef %10) #9
  tail call void @glColor3ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1) #9
  tail call void @glLineStipple(i32 noundef 1, i16 noundef zeroext 21845) #9
  %11 = load i32, ptr %3, align 4, !tbaa !28
  %12 = load i32, ptr %5, align 4, !tbaa !30
  %13 = load i32, ptr %7, align 4, !tbaa !31
  %14 = load i32, ptr %9, align 4, !tbaa !32
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
  store i16 1, ptr %7, align 2, !tbaa !50
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
define internal fastcc void @draw_filled_lasso(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct.rcti, align 4
  %4 = alloca %struct.rcti, align 4
  %5 = alloca %struct.LassoFillData, align 8
  %6 = getelementptr inbounds %struct.wmGesture, ptr %1, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !25
  %8 = getelementptr inbounds %struct.wmGesture, ptr %1, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !34
  %10 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !5
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
  %21 = load i16, ptr %20, align 2, !tbaa !33
  %22 = sext i16 %21 to i32
  %23 = getelementptr inbounds [2 x i32], ptr %14, i64 %19
  store i32 %22, ptr %23, align 4, !tbaa !27
  %24 = getelementptr inbounds i16, ptr %20, i64 1
  %25 = load i16, ptr %24, align 2, !tbaa !33
  %26 = sext i16 %25 to i32
  %27 = getelementptr inbounds [2 x i32], ptr %14, i64 %19, i64 1
  store i32 %26, ptr %27, align 4, !tbaa !27
  %28 = add nuw nsw i64 %19, 1
  %29 = getelementptr inbounds i16, ptr %20, i64 2
  %30 = icmp eq i64 %28, %17
  br i1 %30, label %31, label %18, !llvm.loop !53

31:                                               ; preds = %18, %2
  call void @BLI_lasso_boundbox(ptr noundef nonnull %3, ptr noundef %14, i32 noundef %9) #9
  %32 = getelementptr inbounds %struct.wmGesture, ptr %1, i64 0, i32 5
  %33 = load i32, ptr %32, align 4, !tbaa !24
  call void @wm_subwindow_rect_get(ptr noundef %0, i32 noundef %33, ptr noundef nonnull %4) #9
  %34 = load i32, ptr %4, align 4, !tbaa !28
  %35 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 2
  %36 = load i32, ptr %35, align 4, !tbaa !30
  call void @BLI_rcti_translate(ptr noundef nonnull %3, i32 noundef %34, i32 noundef %36) #9
  %37 = call zeroext i8 @BLI_rcti_isect(ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef nonnull %3) #9
  %38 = load i32, ptr %4, align 4, !tbaa !28
  %39 = sub nsw i32 0, %38
  %40 = load i32, ptr %35, align 4, !tbaa !30
  %41 = sub nsw i32 0, %40
  call void @BLI_rcti_translate(ptr noundef nonnull %3, i32 noundef %39, i32 noundef %41) #9
  %42 = call zeroext i8 @BLI_rcti_is_empty(ptr noundef nonnull %3) #9
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %66

44:                                               ; preds = %31
  %45 = call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %3) #11
  %46 = call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %3) #11
  %47 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %48 = sext i32 %45 to i64
  %49 = shl nsw i64 %48, 2
  %50 = sext i32 %46 to i64
  %51 = mul i64 %49, %50
  %52 = call ptr %47(i64 noundef %51, ptr noundef nonnull @__func__.draw_filled_lasso) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #10
  store ptr %52, ptr %5, align 8, !tbaa !54
  %53 = getelementptr inbounds %struct.LassoFillData, ptr %5, i64 0, i32 1
  store i32 %45, ptr %53, align 8, !tbaa !56
  %54 = load i32, ptr %3, align 4, !tbaa !28
  %55 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 2
  %56 = load i32, ptr %55, align 4, !tbaa !30
  %57 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 1
  %58 = load i32, ptr %57, align 4, !tbaa !31
  %59 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 3
  %60 = load i32, ptr %59, align 4, !tbaa !32
  call void @fill_poly_v2i_n(i32 noundef %54, i32 noundef %56, i32 noundef %58, i32 noundef %60, ptr noundef %14, i32 noundef %9, ptr noundef nonnull @draw_filled_lasso_px_cb, ptr noundef nonnull %5) #9
  call void @glEnable(i32 noundef 3042) #9
  %61 = load i32, ptr %3, align 4, !tbaa !28
  %62 = sitofp i32 %61 to float
  %63 = load i32, ptr %55, align 4, !tbaa !30
  %64 = sitofp i32 %63 to float
  call void @glRasterPos2f(float noundef %62, float noundef %64) #9
  call void @glDrawPixels(i32 noundef %45, i32 noundef %46, i32 noundef 6408, i32 noundef 5121, ptr noundef %52) #9
  call void @glDisable(i32 noundef 3042) #9
  %65 = load ptr, ptr @MEM_freeN, align 8, !tbaa !5
  call void %65(ptr noundef %52) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #10
  br label %66

66:                                               ; preds = %44, %31
  %67 = load ptr, ptr @MEM_freeN, align 8, !tbaa !5
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
define internal void @draw_filled_lasso_px_cb(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #8 {
  %4 = load ptr, ptr %2, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.LassoFillData, ptr %2, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !56
  %7 = mul nsw i32 %6, %1
  %8 = add nsw i32 %7, %0
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, ptr %4, i64 %9
  store <4 x i8> <i8 -1, i8 -1, i8 -1, i8 16>, ptr %10, align 1, !tbaa !57
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

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 24}
!10 = !{!"wmGesture", !6, i64 0, !6, i64 8, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !6, i64 40, !6, i64 48}
!11 = !{!"int", !7, i64 0}
!12 = !{!13, !14, i64 16}
!13 = !{!"wmEvent", !6, i64 0, !6, i64 8, !14, i64 16, !14, i64 18, !11, i64 20, !11, i64 24, !7, i64 28, !7, i64 36, !7, i64 42, !7, i64 43, !14, i64 44, !14, i64 46, !11, i64 48, !11, i64 52, !15, i64 56, !11, i64 64, !11, i64 68, !14, i64 72, !14, i64 74, !14, i64 76, !14, i64 78, !14, i64 80, !14, i64 82, !6, i64 88, !6, i64 96, !14, i64 104, !14, i64 106, !11, i64 108, !6, i64 112}
!14 = !{!"short", !7, i64 0}
!15 = !{!"double", !7, i64 0}
!16 = !{!10, !11, i64 16}
!17 = !{!18, !14, i64 212}
!18 = !{!"ARegion", !6, i64 0, !6, i64 8, !19, i64 16, !22, i64 176, !22, i64 192, !14, i64 208, !14, i64 210, !14, i64 212, !14, i64 214, !14, i64 216, !14, i64 218, !21, i64 220, !14, i64 224, !14, i64 226, !14, i64 228, !14, i64 230, !14, i64 232, !14, i64 234, !14, i64 236, !14, i64 238, !6, i64 240, !23, i64 248, !23, i64 264, !23, i64 280, !23, i64 296, !23, i64 312, !23, i64 328, !23, i64 344, !6, i64 360, !6, i64 368, !6, i64 376}
!19 = !{!"View2D", !20, i64 0, !20, i64 16, !22, i64 32, !22, i64 48, !22, i64 64, !7, i64 80, !7, i64 88, !21, i64 96, !21, i64 100, !14, i64 104, !14, i64 106, !14, i64 108, !14, i64 110, !14, i64 112, !14, i64 114, !14, i64 116, !14, i64 118, !14, i64 120, !14, i64 122, !14, i64 124, !14, i64 126, !6, i64 128, !11, i64 136, !11, i64 140, !6, i64 144, !6, i64 152}
!20 = !{!"rctf", !21, i64 0, !21, i64 4, !21, i64 8, !21, i64 12}
!21 = !{!"float", !7, i64 0}
!22 = !{!"rcti", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12}
!23 = !{!"ListBase", !6, i64 0, !6, i64 8}
!24 = !{!10, !11, i64 28}
!25 = !{!10, !6, i64 40}
!26 = !{!13, !11, i64 20}
!27 = !{!11, !11, i64 0}
!28 = !{!22, !11, i64 0}
!29 = !{!13, !11, i64 24}
!30 = !{!22, !11, i64 8}
!31 = !{!22, !11, i64 4}
!32 = !{!22, !11, i64 12}
!33 = !{!14, !14, i64 0}
!34 = !{!10, !11, i64 32}
!35 = !{!10, !11, i64 36}
!36 = !{!37, !6, i64 152}
!37 = !{!"wmWindow", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !7, i64 40, !14, i64 104, !14, i64 106, !14, i64 108, !14, i64 110, !14, i64 112, !14, i64 114, !14, i64 116, !14, i64 118, !14, i64 120, !14, i64 122, !14, i64 124, !14, i64 126, !11, i64 128, !14, i64 132, !14, i64 134, !6, i64 136, !6, i64 144, !6, i64 152, !11, i64 160, !11, i64 164, !6, i64 168, !23, i64 176, !23, i64 192, !23, i64 208, !23, i64 224, !23, i64 240}
!38 = !{!10, !6, i64 48}
!39 = !{!37, !6, i64 240}
!40 = distinct !{!40, !41}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!43, !14, i64 9788}
!43 = !{!"UserDef", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !7, i64 20, !7, i64 788, !7, i64 1556, !7, i64 2580, !7, i64 3348, !7, i64 4116, !7, i64 4884, !7, i64 5652, !7, i64 6420, !7, i64 7444, !11, i64 8468, !14, i64 8472, !14, i64 8474, !14, i64 8476, !14, i64 8478, !14, i64 8480, !14, i64 8482, !11, i64 8484, !11, i64 8488, !11, i64 8492, !14, i64 8496, !14, i64 8498, !11, i64 8500, !11, i64 8504, !11, i64 8508, !11, i64 8512, !11, i64 8516, !11, i64 8520, !11, i64 8524, !14, i64 8528, !14, i64 8530, !14, i64 8532, !14, i64 8534, !23, i64 8536, !23, i64 8552, !23, i64 8568, !23, i64 8584, !23, i64 8600, !23, i64 8616, !23, i64 8632, !7, i64 8648, !14, i64 8712, !14, i64 8714, !14, i64 8716, !14, i64 8718, !14, i64 8720, !14, i64 8722, !14, i64 8724, !14, i64 8726, !7, i64 8728, !14, i64 8896, !14, i64 8898, !14, i64 8900, !14, i64 8902, !14, i64 8904, !14, i64 8906, !14, i64 8908, !14, i64 8910, !11, i64 8912, !11, i64 8916, !14, i64 8920, !14, i64 8922, !14, i64 8924, !14, i64 8926, !14, i64 8928, !14, i64 8930, !14, i64 8932, !14, i64 8934, !14, i64 8936, !14, i64 8938, !7, i64 8940, !7, i64 8941, !7, i64 8942, !7, i64 8943, !14, i64 8944, !14, i64 8946, !14, i64 8948, !14, i64 8950, !14, i64 8952, !14, i64 8954, !21, i64 8956, !21, i64 8960, !11, i64 8964, !14, i64 8968, !14, i64 8970, !21, i64 8972, !14, i64 8976, !14, i64 8978, !14, i64 8980, !14, i64 8982, !44, i64 8984, !7, i64 9760, !7, i64 9772, !14, i64 9788, !7, i64 9790, !7, i64 9791, !7, i64 9792, !7, i64 9872, !11, i64 10896, !11, i64 10900, !21, i64 10904, !21, i64 10908, !11, i64 10912, !14, i64 10916, !14, i64 10918, !14, i64 10920, !14, i64 10922, !14, i64 10924, !14, i64 10926, !45, i64 10928}
!44 = !{!"ColorBand", !14, i64 0, !14, i64 2, !7, i64 4, !7, i64 5, !7, i64 6, !7, i64 7, !7, i64 8}
!45 = !{!"WalkNavigation", !21, i64 0, !21, i64 4, !21, i64 8, !21, i64 12, !21, i64 16, !21, i64 20, !14, i64 24, !7, i64 26}
!46 = !{!10, !11, i64 20}
!47 = distinct !{!47, !41}
!48 = distinct !{!48, !41}
!49 = distinct !{!49, !41}
!50 = !{!51, !14, i64 218}
!51 = !{!"bScreen", !52, i64 0, !23, i64 120, !23, i64 136, !23, i64 152, !23, i64 168, !6, i64 184, !6, i64 192, !11, i64 200, !11, i64 204, !14, i64 208, !14, i64 210, !14, i64 212, !14, i64 214, !14, i64 216, !14, i64 218, !14, i64 220, !14, i64 222, !14, i64 224, !14, i64 226, !14, i64 228, !14, i64 230, !6, i64 232, !6, i64 240}
!52 = !{!"ID", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !7, i64 32, !14, i64 98, !11, i64 100, !11, i64 104, !11, i64 108, !6, i64 112}
!53 = distinct !{!53, !41}
!54 = !{!55, !6, i64 0}
!55 = !{!"LassoFillData", !6, i64 0, !11, i64 8}
!56 = !{!55, !11, i64 8}
!57 = !{!7, !7, i64 0}
