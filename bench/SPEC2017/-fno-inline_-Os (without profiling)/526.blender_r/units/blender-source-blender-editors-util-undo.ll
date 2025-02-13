; ModuleID = 'blender/source/blender/editors/util/undo.c'
source_filename = "blender/source/blender/editors/util/undo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.wmWindowManager = type { %struct.ID, ptr, ptr, %struct.ListBase, i32, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ReportList, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, %struct.ListBase, ptr, i8, [7 x i8] }
%struct.ReportList = type { %struct.ListBase, i32, i32, i32, i32, ptr }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.SpaceImage = type { ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.ImageUser, ptr, %struct.Scopes, %struct.Histogram, ptr, [2 x float], float, float, float, float, float, i8, i8, i16, i16, i16, i8, i8, i8, i8, %struct.MaskSpaceInfo }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.Scopes = type { i32, i32, i32, float, i32, float, float, i32, float, i32, [3 x [2 x float]], %struct.Histogram, ptr, ptr, ptr, ptr, i32, i32 }
%struct.Histogram = type { i32, i32, [256 x float], [256 x float], [256 x float], [256 x float], [256 x float], float, float, i16, i16, i32, [2 x [2 x float]] }
%struct.MaskSpaceInfo = type { ptr, i8, i8, i8, [5 x i8] }
%struct.wmWindow = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, ptr, ptr, ptr, i32, i32, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }

@G = external local_unnamed_addr global %struct.Global, align 8
@.str = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@__func__.ED_undo_push = private unnamed_addr constant [13 x i8] c"ED_undo_push\00", align 1
@U = external local_unnamed_addr global %struct.UserDef, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"Undo\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Undo previous action\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"ED_OT_undo\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Undo Push\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Add an undo state (internal use only)\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"ED_OT_undo_push\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"message\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"Add an undo step *function may be moved*\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"Undo Message\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"Redo\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"Redo previous action\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"ED_OT_redo\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"redo_cb: operator redo %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [46 x i8] c"redo_cb: operator redo failed: %s, return %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [53 x i8] c"redo_cb: WM_operator_repeat_check returned false %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"Undo History\00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"Redo specific action in history\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"ED_OT_undo_history\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"item\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"Item\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@str = private unnamed_addr constant [55 x i8] c"redo_cb: ED_undo_operator_repeat called with NULL 'op'\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_undo_push(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_manager(ptr noundef %0) #7
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #7
  %5 = tail call ptr @CTX_data_active_object(ptr noundef %0) #7
  %6 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !5
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @__func__.ED_undo_push, ptr noundef %1) #8
  br label %11

11:                                               ; preds = %9, %2
  %12 = icmp eq ptr %4, null
  br i1 %12, label %25, label %13

13:                                               ; preds = %11
  %14 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 46), align 8, !tbaa !13
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %46, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 3
  %18 = load i16, ptr %17, align 8, !tbaa !18
  switch i16 %18, label %41 [
    i16 1, label %19
    i16 2, label %20
    i16 3, label %20
    i16 4, label %21
    i16 5, label %22
    i16 22, label %23
    i16 25, label %24
  ]

19:                                               ; preds = %16
  tail call void @undo_push_mesh(ptr noundef %0, ptr noundef %1) #7
  br label %41

20:                                               ; preds = %16, %16
  tail call void @undo_push_curve(ptr noundef %0, ptr noundef %1) #7
  br label %41

21:                                               ; preds = %16
  tail call void @undo_push_font(ptr noundef %0, ptr noundef %1) #7
  br label %41

22:                                               ; preds = %16
  tail call void @undo_push_mball(ptr noundef %0, ptr noundef %1) #7
  br label %41

23:                                               ; preds = %16
  tail call void @undo_push_lattice(ptr noundef %0, ptr noundef %1) #7
  br label %41

24:                                               ; preds = %16
  tail call void @undo_push_armature(ptr noundef %0, ptr noundef %1) #7
  br label %41

25:                                               ; preds = %11
  %26 = icmp eq ptr %5, null
  br i1 %26, label %40, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 27
  %29 = load i32, ptr %28, align 8, !tbaa !23
  %30 = and i32 %29, 32
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 46), align 8, !tbaa !13
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %46, label %35

35:                                               ; preds = %32
  %36 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  tail call void @PE_undo_push(ptr noundef %36, ptr noundef %1) #7
  br label %41

37:                                               ; preds = %27
  %38 = and i32 %29, 2
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %25, %37
  tail call void @BKE_write_undo(ptr noundef %0, ptr noundef %1) #7
  br label %41

41:                                               ; preds = %16, %35, %37, %40, %19, %21, %23, %24, %22, %20
  %42 = getelementptr inbounds %struct.wmWindowManager, ptr %3, i64 0, i32 5
  %43 = load i16, ptr %42, align 4, !tbaa !24
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  store i16 0, ptr %42, align 4, !tbaa !24
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 16973824, ptr noundef null) #7
  br label %46

46:                                               ; preds = %41, %45, %32, %13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare void @undo_push_mesh(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @undo_push_curve(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @undo_push_font(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @undo_push_mball(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @undo_push_lattice(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @undo_push_armature(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @PE_undo_push(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_write_undo(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_undo_pop(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc i32 @ed_undo_step(ptr noundef %0, i32 noundef 1, ptr noundef null) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @ed_undo_step(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = tail call ptr @CTX_wm_manager(ptr noundef %0) #7
  %5 = tail call ptr @CTX_wm_window(ptr noundef %0) #7
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %7 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #7
  %8 = tail call ptr @CTX_data_active_object(ptr noundef %0) #7
  %9 = tail call ptr @CTX_wm_area(ptr noundef %0) #7
  %10 = tail call zeroext i8 @WM_jobs_test(ptr noundef %4, ptr noundef %6, i32 noundef 0) #7
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %92

12:                                               ; preds = %3
  %13 = tail call i32 @ED_gpencil_session_active() #7
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = tail call i32 @ED_undo_gpencil_step(ptr noundef %0, i32 noundef %1, ptr noundef %2) #7
  br label %92

17:                                               ; preds = %12
  %18 = icmp eq ptr %9, null
  br i1 %18, label %47, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.ScrArea, ptr %9, i64 0, i32 8
  %21 = load i8, ptr %20, align 8, !tbaa !27
  switch i8 %21, label %47 [
    i8 6, label %22
    i8 9, label %46
  ]

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.ScrArea, ptr %9, i64 0, i32 19
  %24 = load ptr, ptr %23, align 8, !tbaa !30
  %25 = icmp eq ptr %8, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 27
  %28 = load i32, ptr %27, align 8, !tbaa !23
  %29 = and i32 %28, 16
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26, %22
  %32 = getelementptr inbounds %struct.SpaceImage, ptr %24, i64 0, i32 17
  %33 = load i8, ptr %32, align 4, !tbaa !31
  %34 = icmp eq i8 %33, 1
  br i1 %34, label %35, label %47

35:                                               ; preds = %31, %26
  %36 = tail call i32 @ED_undo_paint_step(ptr noundef %0, i32 noundef 0, i32 noundef %1, ptr noundef %2) #7
  %37 = icmp eq i32 %36, 0
  %38 = icmp ne ptr %2, null
  %39 = and i1 %38, %37
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !37
  %42 = and i32 %41, 8192
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  tail call void @ED_viewport_render_kill_jobs(ptr noundef %0, i8 noundef zeroext 1) #7
  tail call void @BKE_undo_name(ptr noundef %0, ptr noundef nonnull %2) #7
  br label %45

45:                                               ; preds = %40, %44, %35
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 33554432, ptr noundef null) #7
  br label %92

46:                                               ; preds = %19
  tail call void @ED_text_undo_step(ptr noundef %0, i32 noundef %1) #7
  br label %88

47:                                               ; preds = %19, %31, %17
  %48 = icmp eq ptr %7, null
  br i1 %48, label %57, label %49

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 3
  %51 = load i16, ptr %50, align 8, !tbaa !18
  switch i16 %51, label %88 [
    i16 1, label %52
    i16 4, label %52
    i16 2, label %52
    i16 3, label %52
    i16 5, label %52
    i16 22, label %52
    i16 25, label %52
  ]

52:                                               ; preds = %49, %49, %49, %49, %49, %49, %49
  %53 = icmp eq ptr %2, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %52
  tail call void @undo_editmode_name(ptr noundef %0, ptr noundef nonnull %2) #7
  br label %56

55:                                               ; preds = %52
  tail call void @undo_editmode_step(ptr noundef %0, i32 noundef %1) #7
  br label %56

56:                                               ; preds = %55, %54
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef null) #7
  br label %88

57:                                               ; preds = %47
  %58 = icmp eq ptr %8, null
  br i1 %58, label %78, label %59

59:                                               ; preds = %57
  %60 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 27
  %61 = load i32, ptr %60, align 8, !tbaa !23
  %62 = and i32 %61, 16
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %59
  %65 = tail call i32 @ED_undo_paint_step(ptr noundef %0, i32 noundef 0, i32 noundef %1, ptr noundef %2) #7
  br label %88

66:                                               ; preds = %59
  %67 = and i32 %61, 2
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %66
  %70 = tail call i32 @ED_undo_paint_step(ptr noundef %0, i32 noundef 1, i32 noundef %1, ptr noundef %2) #7
  br label %88

71:                                               ; preds = %66
  %72 = and i32 %61, 32
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %71
  %75 = icmp eq i32 %1, 1
  br i1 %75, label %76, label %77

76:                                               ; preds = %74
  tail call void @PE_undo(ptr noundef %6) #7
  br label %88

77:                                               ; preds = %74
  tail call void @PE_redo(ptr noundef %6) #7
  br label %88

78:                                               ; preds = %57, %71
  %79 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !37
  %80 = and i32 %79, 8192
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %78
  tail call void @undo_editmode_clear() #7
  tail call void @ED_viewport_render_kill_jobs(ptr noundef %0, i8 noundef zeroext 1) #7
  %83 = icmp eq ptr %2, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %82
  tail call void @BKE_undo_name(ptr noundef %0, ptr noundef nonnull %2) #7
  br label %86

85:                                               ; preds = %82
  tail call void @BKE_undo_step(ptr noundef %0, i32 noundef %1) #7
  br label %86

86:                                               ; preds = %85, %84
  %87 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 73728000, ptr noundef %87) #7
  br label %88

88:                                               ; preds = %49, %56, %69, %78, %86, %76, %77, %64, %46
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 33554432, ptr noundef null) #7
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 17170432, ptr noundef null) #7
  %89 = icmp eq ptr %5, null
  br i1 %89, label %92, label %90

90:                                               ; preds = %88
  %91 = getelementptr inbounds %struct.wmWindow, ptr %5, i64 0, i32 17
  store i16 1, ptr %91, align 2, !tbaa !38
  br label %92

92:                                               ; preds = %88, %90, %45, %3, %15
  %93 = phi i32 [ %16, %15 ], [ 2, %3 ], [ 4, %45 ], [ 4, %90 ], [ 4, %88 ]
  ret i32 %93
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_undo_redo(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc i32 @ed_undo_step(ptr noundef %0, i32 noundef -1, ptr noundef null) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_undo_push_op(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !40
  %5 = load ptr, ptr %4, align 8, !tbaa !42
  tail call void @ED_undo_push(ptr noundef %0, ptr noundef %5) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_undo_pop_op(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !40
  %5 = load ptr, ptr %4, align 8, !tbaa !42
  %6 = tail call fastcc i32 @ed_undo_step(ptr noundef %0, i32 noundef 0, ptr noundef %5) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ED_undo_valid(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #7
  %4 = tail call ptr @CTX_data_active_object(ptr noundef %0) #7
  %5 = tail call ptr @CTX_wm_area(ptr noundef %0) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %23, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ScrArea, ptr %5, i64 0, i32 8
  %9 = load i8, ptr %8, align 8, !tbaa !27
  switch i8 %9, label %23 [
    i8 6, label %10
    i8 9, label %58
  ]

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.ScrArea, ptr %5, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !30
  %13 = icmp eq ptr %4, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 27
  %16 = load i32, ptr %15, align 8, !tbaa !23
  %17 = and i32 %16, 16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %58

19:                                               ; preds = %14, %10
  %20 = getelementptr inbounds %struct.SpaceImage, ptr %12, i64 0, i32 17
  %21 = load i8, ptr %20, align 4, !tbaa !31
  %22 = icmp eq i8 %21, 1
  br i1 %22, label %58, label %23

23:                                               ; preds = %7, %19, %2
  %24 = icmp eq ptr %3, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %27 = load i16, ptr %26, align 8, !tbaa !18
  switch i16 %27, label %58 [
    i16 1, label %28
    i16 4, label %28
    i16 2, label %28
    i16 3, label %28
    i16 5, label %28
    i16 22, label %28
    i16 25, label %28
  ]

28:                                               ; preds = %25, %25, %25, %25, %25, %25, %25
  %29 = tail call i32 @undo_editmode_valid(ptr noundef %1) #7
  br label %58

30:                                               ; preds = %23
  %31 = icmp eq ptr %4, null
  br i1 %31, label %52, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 27
  %34 = load i32, ptr %33, align 8, !tbaa !23
  %35 = and i32 %34, 16
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = tail call i32 @ED_undo_paint_valid(i32 noundef 0, ptr noundef %1) #7
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %52, label %58

40:                                               ; preds = %32
  %41 = and i32 %34, 2
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = tail call i32 @ED_undo_paint_valid(i32 noundef 1, ptr noundef %1) #7
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %52, label %58

46:                                               ; preds = %40
  %47 = and i32 %34, 32
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %51 = tail call i32 @PE_undo_valid(ptr noundef %50) #7
  br label %58

52:                                               ; preds = %30, %43, %46, %37
  %53 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !37
  %54 = and i32 %53, 8192
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %52
  %57 = tail call i32 @BKE_undo_valid(ptr noundef %1) #7
  br label %58

58:                                               ; preds = %7, %52, %25, %43, %37, %19, %14, %56, %49, %28
  %59 = phi i32 [ %29, %28 ], [ %57, %56 ], [ %51, %49 ], [ 1, %14 ], [ 1, %19 ], [ 1, %37 ], [ 1, %43 ], [ 0, %25 ], [ 0, %52 ], [ 1, %7 ]
  ret i32 %59
}

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @undo_editmode_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ED_undo_paint_valid(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @PE_undo_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BKE_undo_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @ED_OT_undo(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.1, ptr %0, align 8, !tbaa !42
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %2, align 8, !tbaa !45
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.3, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @ed_undo_exec, ptr %4, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_screenactive, ptr %5, align 8, !tbaa !48
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @ed_undo_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_wm_manager(ptr noundef %0) #7
  tail call void @WM_operator_stack_clear(ptr noundef %3) #7
  %4 = tail call fastcc i32 @ed_undo_step(ptr noundef %0, i32 noundef 1, ptr noundef null) #8
  ret i32 %4
}

; Function Attrs: optsize
declare i32 @ED_operator_screenactive(ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_OT_undo_push(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.4, ptr %0, align 8, !tbaa !42
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.5, ptr %2, align 8, !tbaa !45
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.6, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @ed_undo_push_exec, ptr %4, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 64, ptr %5, align 8, !tbaa !49
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  %8 = tail call ptr @RNA_def_string(ptr noundef %7, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 64, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @ed_undo_push_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #9
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !51
  call void @RNA_string_get(ptr noundef %5, ptr noundef nonnull @.str.7, ptr noundef nonnull %3) #7
  call void @ED_undo_push(ptr noundef %0, ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #9
  ret i32 4
}

; Function Attrs: optsize
declare ptr @RNA_def_string(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @ED_OT_redo(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.11, ptr %0, align 8, !tbaa !42
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.12, ptr %2, align 8, !tbaa !45
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.13, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @ed_redo_exec, ptr %4, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_screenactive, ptr %5, align 8, !tbaa !48
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @ed_redo_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call fastcc i32 @ed_undo_step(ptr noundef %0, i32 noundef -1, ptr noundef null) #8
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ED_undo_operator_repeat(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %67, label %4

4:                                                ; preds = %2
  %5 = tail call ptr @CTX_wm_manager(ptr noundef %0) #7
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %7 = tail call ptr @CTX_wm_region(ptr noundef %0) #7
  %8 = tail call ptr @CTX_wm_area(ptr noundef %0) #7
  %9 = tail call ptr @BKE_area_find_region_active_win(ptr noundef %8) #7
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %4
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef nonnull %9) #7
  br label %12

12:                                               ; preds = %11, %4
  %13 = tail call zeroext i8 @WM_operator_repeat_check(ptr noundef %0, ptr noundef nonnull %1) #7
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %56, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !40
  %18 = tail call i32 @WM_operator_poll(ptr noundef %0, ptr noundef %17) #7
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %56, label %20

20:                                               ; preds = %15
  %21 = tail call zeroext i8 @WM_jobs_test(ptr noundef %5, ptr noundef %6, i32 noundef 0) #7
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %56

23:                                               ; preds = %20
  tail call void @ED_viewport_render_kill_jobs(ptr noundef %0, i8 noundef zeroext 1) #7
  %24 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !5
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr %16, align 8, !tbaa !40
  %29 = load ptr, ptr %28, align 8, !tbaa !42
  %30 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, ptr noundef %29) #8
  br label %31

31:                                               ; preds = %27, %23
  tail call void @ED_undo_pop_op(ptr noundef %0, ptr noundef nonnull %1) #8
  %32 = load ptr, ptr %16, align 8, !tbaa !40
  %33 = getelementptr inbounds %struct.wmOperatorType, ptr %32, i64 0, i32 5
  %34 = load ptr, ptr %33, align 8, !tbaa !52
  %35 = icmp eq ptr %34, null
  br i1 %35, label %43, label %36

36:                                               ; preds = %31
  %37 = tail call zeroext i8 %34(ptr noundef %0, ptr noundef nonnull %1) #7
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %36
  %40 = tail call ptr @CTX_wm_menu(ptr noundef %0) #7
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  tail call void @ED_region_tag_refresh_ui(ptr noundef nonnull %40) #7
  br label %43

43:                                               ; preds = %39, %42, %36, %31
  %44 = tail call i32 @WM_operator_repeat(ptr noundef %0, ptr noundef nonnull %1) #7
  %45 = and i32 %44, 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %65

47:                                               ; preds = %43
  %48 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !5
  %49 = and i32 %48, 1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = load ptr, ptr %16, align 8, !tbaa !40
  %53 = load ptr, ptr %52, align 8, !tbaa !42
  %54 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, ptr noundef %53, i32 noundef %44) #8
  br label %55

55:                                               ; preds = %51, %47
  tail call void @ED_undo_redo(ptr noundef %0) #8
  br label %65

56:                                               ; preds = %20, %15, %12
  %57 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !5
  %58 = and i32 %57, 1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %62 = load ptr, ptr %61, align 8, !tbaa !40
  %63 = load ptr, ptr %62, align 8, !tbaa !42
  %64 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, ptr noundef %63) #8
  br label %65

65:                                               ; preds = %55, %43, %56, %60
  %66 = phi i32 [ 0, %60 ], [ 0, %56 ], [ 0, %55 ], [ 1, %43 ]
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef %7) #7
  br label %73

67:                                               ; preds = %2
  %68 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !5
  %69 = and i32 %68, 1
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %67
  %72 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %73

73:                                               ; preds = %67, %71, %65
  %74 = phi i32 [ %66, %65 ], [ 0, %71 ], [ 0, %67 ]
  ret i32 %74
}

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_area_find_region_active_win(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CTX_wm_region_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @WM_operator_repeat_check(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @WM_operator_poll(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @WM_jobs_test(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_viewport_render_kill_jobs(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_menu(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_tag_refresh_ui(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @WM_operator_repeat(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_undo_operator_repeat_cb(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  %4 = tail call i32 @ED_undo_operator_repeat(ptr noundef %0, ptr noundef %1) #8, !range !53
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_undo_operator_repeat_cb_evt(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @ED_undo_operator_repeat(ptr noundef %0, ptr noundef %1) #8, !range !53
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_OT_undo_history(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.18, ptr %0, align 8, !tbaa !42
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.19, ptr %2, align 8, !tbaa !45
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.20, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @undo_history_invoke, ptr %4, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @undo_history_exec, ptr %5, align 8, !tbaa !47
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_screenactive, ptr %6, align 8, !tbaa !48
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !50
  %9 = tail call ptr @RNA_def_int(ptr noundef %8, ptr noundef nonnull @.str.21, i32 noundef 0, i32 noundef 0, i32 noundef 2147483647, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.10, i32 noundef 0, i32 noundef 2147483647) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @undo_history_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !tbaa !55
  %5 = tail call fastcc i32 @get_undo_system(ptr noundef %0) #8, !range !56
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %62, label %7

7:                                                ; preds = %3
  %8 = call fastcc ptr @rna_undo_itemf(ptr noundef %0, i32 noundef %5, ptr noundef nonnull %4) #8
  %9 = load i32, ptr %4, align 4, !tbaa !55
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %62

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !40
  %14 = getelementptr inbounds %struct.wmOperatorType, ptr %13, i64 0, i32 11
  %15 = load ptr, ptr %14, align 8, !tbaa !50
  %16 = call ptr @RNA_struct_ui_name(ptr noundef %15) #7
  %17 = call ptr @uiPupMenuBegin(ptr noundef %0, ptr noundef %16, i32 noundef 0) #7
  %18 = call ptr @uiPupMenuLayout(ptr noundef %17) #7
  %19 = call ptr @uiLayoutSplit(ptr noundef %18, float noundef 0.000000e+00, i32 noundef 0) #7
  %20 = load i32, ptr %4, align 4, !tbaa !55
  %21 = sdiv i32 %20, 12
  %22 = add nsw i32 %21, 20
  %23 = icmp eq i32 %20, 0
  br i1 %23, label %60, label %24

24:                                               ; preds = %11
  %25 = sext i32 %20 to i64
  br label %26

26:                                               ; preds = %24, %55
  %27 = phi i64 [ %25, %24 ], [ %31, %55 ]
  %28 = phi i8 [ 1, %24 ], [ %57, %55 ]
  %29 = phi i32 [ 0, %24 ], [ %56, %55 ]
  %30 = phi ptr [ null, %24 ], [ %39, %55 ]
  %31 = add nsw i64 %27, -1
  %32 = icmp eq i8 %28, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %26
  %34 = srem i32 %29, %22
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = call ptr @uiLayoutColumn(ptr noundef %19, i32 noundef 0) #7
  br label %38

38:                                               ; preds = %36, %33, %26
  %39 = phi ptr [ %30, %33 ], [ %37, %36 ], [ %30, %26 ]
  %40 = phi i8 [ %28, %33 ], [ 0, %36 ], [ 0, %26 ]
  %41 = getelementptr inbounds %struct.EnumPropertyItem, ptr %8, i64 %31, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !57
  %43 = icmp eq ptr %42, null
  br i1 %43, label %55, label %44

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.EnumPropertyItem, ptr %8, i64 %31
  %46 = getelementptr inbounds %struct.EnumPropertyItem, ptr %8, i64 %31, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !59
  %48 = getelementptr inbounds %struct.EnumPropertyItem, ptr %8, i64 %31, i32 2
  %49 = load i32, ptr %48, align 8, !tbaa !60
  %50 = load ptr, ptr %12, align 8, !tbaa !40
  %51 = getelementptr inbounds %struct.wmOperatorType, ptr %50, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !46
  %53 = load i32, ptr %45, align 8, !tbaa !61
  call void @uiItemIntO(ptr noundef %39, ptr noundef %47, i32 noundef %49, ptr noundef %52, ptr noundef nonnull @.str.21, i32 noundef %53) #7
  %54 = add nsw i32 %29, 1
  br label %55

55:                                               ; preds = %44, %38
  %56 = phi i32 [ %54, %44 ], [ %29, %38 ]
  %57 = phi i8 [ 1, %44 ], [ %40, %38 ]
  %58 = and i64 %31, 4294967295
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %26, !llvm.loop !62

60:                                               ; preds = %55, %11
  %61 = load ptr, ptr @MEM_freeN, align 8, !tbaa !64
  call void %61(ptr noundef %8) #7
  call void @uiPupMenuEnd(ptr noundef %0, ptr noundef %17) #7
  br label %62

62:                                               ; preds = %7, %60, %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret i32 2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @undo_history_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !51
  %5 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %4, ptr noundef nonnull @.str.21) #7
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %2
  %8 = tail call fastcc i32 @get_undo_system(ptr noundef %0) #8, !range !56
  %9 = load ptr, ptr %3, align 8, !tbaa !51
  %10 = tail call i32 @RNA_int_get(ptr noundef %9, ptr noundef nonnull @.str.21) #7
  switch i32 %8, label %16 [
    i32 3, label %11
    i32 2, label %13
    i32 4, label %15
  ]

11:                                               ; preds = %7
  %12 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  tail call void @PE_undo_number(ptr noundef %12, i32 noundef %10) #7
  br label %18

13:                                               ; preds = %7
  %14 = add nsw i32 %10, 1
  tail call void @undo_editmode_number(ptr noundef %0, i32 noundef %14) #7
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef null) #7
  br label %18

15:                                               ; preds = %7
  tail call void @ED_undo_paint_step_num(ptr noundef %0, i32 noundef 0, i32 noundef %10) #7
  br label %18

16:                                               ; preds = %7
  tail call void @ED_viewport_render_kill_jobs(ptr noundef %0, i8 noundef zeroext 1) #7
  tail call void @BKE_undo_number(ptr noundef %0, i32 noundef %10) #7
  %17 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 73728000, ptr noundef %17) #7
  br label %18

18:                                               ; preds = %13, %16, %15, %11
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 33554432, ptr noundef null) #7
  br label %19

19:                                               ; preds = %2, %18
  %20 = phi i32 [ 4, %18 ], [ 2, %2 ]
  ret i32 %20
}

; Function Attrs: optsize
declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ED_gpencil_session_active() local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ED_undo_gpencil_step(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ED_undo_paint_step(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_undo_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_text_undo_step(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @undo_editmode_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @undo_editmode_step(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @PE_undo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @PE_redo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @undo_editmode_clear() local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_undo_step(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_operator_stack_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_string_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @get_undo_system(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @CTX_data_active_object(ptr noundef %0) #7
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #7
  %4 = tail call ptr @CTX_wm_area(ptr noundef %0) #7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %26, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ScrArea, ptr %4, i64 0, i32 8
  %8 = load i8, ptr %7, align 8, !tbaa !27
  %9 = icmp eq i8 %8, 6
  br i1 %9, label %10, label %26

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ScrArea, ptr %4, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !30
  %13 = icmp eq ptr %2, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 27
  %16 = load i32, ptr %15, align 8, !tbaa !23
  %17 = and i32 %16, 16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14, %10
  %20 = getelementptr inbounds %struct.SpaceImage, ptr %12, i64 0, i32 17
  %21 = load i8, ptr %20, align 4, !tbaa !31
  %22 = icmp eq i8 %21, 1
  br i1 %22, label %23, label %26

23:                                               ; preds = %19, %14
  %24 = tail call zeroext i8 @ED_undo_paint_empty(i32 noundef 0) #7
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %50, label %26

26:                                               ; preds = %19, %23, %6, %1
  %27 = icmp eq ptr %3, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %30 = load i16, ptr %29, align 8, !tbaa !18
  switch i16 %30, label %49 [
    i16 1, label %50
    i16 4, label %50
    i16 2, label %50
    i16 3, label %50
    i16 5, label %50
    i16 22, label %50
    i16 25, label %50
  ]

31:                                               ; preds = %26
  %32 = tail call ptr @CTX_data_active_object(ptr noundef %0) #7
  %33 = icmp eq ptr %32, null
  br i1 %33, label %45, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.Object, ptr %32, i64 0, i32 27
  %36 = load i32, ptr %35, align 8, !tbaa !23
  %37 = and i32 %36, 32
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %34
  %40 = and i32 %36, 16
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = tail call zeroext i8 @ED_undo_paint_empty(i32 noundef 0) #7
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %31, %39, %42
  %46 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !37
  %47 = and i32 %46, 8192
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %28, %45
  br label %50

50:                                               ; preds = %42, %34, %28, %28, %28, %28, %28, %28, %28, %23, %45, %49
  %51 = phi i32 [ 0, %49 ], [ 1, %45 ], [ 4, %23 ], [ 2, %28 ], [ 2, %28 ], [ 2, %28 ], [ 2, %28 ], [ 2, %28 ], [ 2, %28 ], [ 2, %28 ], [ 4, %42 ], [ 3, %34 ]
  ret i32 %51
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @rna_undo_itemf(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.EnumPropertyItem, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  store ptr null, ptr %5, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  %7 = getelementptr inbounds %struct.EnumPropertyItem, ptr %4, i64 0, i32 1
  %8 = getelementptr inbounds %struct.EnumPropertyItem, ptr %4, i64 0, i32 3
  %9 = getelementptr inbounds %struct.EnumPropertyItem, ptr %4, i64 0, i32 2
  br label %10

10:                                               ; preds = %24, %3
  %11 = phi i32 [ 0, %3 ], [ %28, %24 ]
  switch i32 %1, label %19 [
    i32 3, label %12
    i32 2, label %15
    i32 4, label %17
  ]

12:                                               ; preds = %10
  %13 = call ptr @CTX_data_scene(ptr noundef %0) #7
  %14 = call ptr @PE_undo_get_name(ptr noundef %13, i32 noundef %11, ptr noundef nonnull %6) #7
  br label %21

15:                                               ; preds = %10
  %16 = call ptr @undo_editmode_get_name(ptr noundef %0, i32 noundef %11, ptr noundef nonnull %6) #7
  br label %21

17:                                               ; preds = %10
  %18 = call ptr @ED_undo_paint_get_name(ptr noundef %0, i32 noundef 0, i32 noundef %11, ptr noundef nonnull %6) #7
  br label %21

19:                                               ; preds = %10
  %20 = call ptr @BKE_undo_get_name(i32 noundef %11, ptr noundef nonnull %6) #7
  br label %21

21:                                               ; preds = %15, %19, %17, %12
  %22 = phi ptr [ %14, %12 ], [ %16, %15 ], [ %18, %17 ], [ %20, %19 ]
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %21
  store ptr %22, ptr %7, align 8, !tbaa !57
  store ptr %22, ptr %8, align 8, !tbaa !59
  %25 = load i32, ptr %6, align 4, !tbaa !55
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, i32 0, i32 253
  store i32 %27, ptr %9, align 8, !tbaa !60
  %28 = add nuw nsw i32 %11, 1
  store i32 %11, ptr %4, align 8, !tbaa !61
  call void @RNA_enum_item_add(ptr noundef nonnull %5, ptr noundef %2, ptr noundef nonnull %4) #7
  br label %10

29:                                               ; preds = %21
  call void @RNA_enum_item_end(ptr noundef nonnull %5, ptr noundef %2) #7
  %30 = load ptr, ptr %5, align 8, !tbaa !64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #9
  ret ptr %30
}

; Function Attrs: optsize
declare ptr @uiPupMenuBegin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_struct_ui_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiPupMenuLayout(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiLayoutSplit(ptr noundef, float noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiLayoutColumn(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiItemIntO(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiPupMenuEnd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ED_undo_paint_empty(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: optsize
declare ptr @PE_undo_get_name(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @undo_editmode_get_name(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_undo_paint_get_name(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_undo_get_name(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_enum_item_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_enum_item_end(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @RNA_struct_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @PE_undo_number(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @undo_editmode_number(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_undo_paint_step_num(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_undo_number(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #6

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !12, i64 2100}
!6 = !{!"Global", !7, i64 0, !8, i64 8, !8, i64 1032, !8, i64 2056, !8, i64 2057, !8, i64 2058, !10, i64 2064, !8, i64 2080, !8, i64 2081, !8, i64 2082, !11, i64 2084, !11, i64 2086, !11, i64 2088, !8, i64 2090, !11, i64 2092, !12, i64 2096, !12, i64 2100, !8, i64 2104, !12, i64 2108, !12, i64 2112, !8, i64 2116}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"ListBase", !7, i64 0, !7, i64 8}
!11 = !{!"short", !8, i64 0}
!12 = !{!"int", !8, i64 0}
!13 = !{!14, !11, i64 8712}
!14 = !{!"UserDef", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !8, i64 20, !8, i64 788, !8, i64 1556, !8, i64 2580, !8, i64 3348, !8, i64 4116, !8, i64 4884, !8, i64 5652, !8, i64 6420, !8, i64 7444, !12, i64 8468, !11, i64 8472, !11, i64 8474, !11, i64 8476, !11, i64 8478, !11, i64 8480, !11, i64 8482, !12, i64 8484, !12, i64 8488, !12, i64 8492, !11, i64 8496, !11, i64 8498, !12, i64 8500, !12, i64 8504, !12, i64 8508, !12, i64 8512, !12, i64 8516, !12, i64 8520, !12, i64 8524, !11, i64 8528, !11, i64 8530, !11, i64 8532, !11, i64 8534, !10, i64 8536, !10, i64 8552, !10, i64 8568, !10, i64 8584, !10, i64 8600, !10, i64 8616, !10, i64 8632, !8, i64 8648, !11, i64 8712, !11, i64 8714, !11, i64 8716, !11, i64 8718, !11, i64 8720, !11, i64 8722, !11, i64 8724, !11, i64 8726, !8, i64 8728, !11, i64 8896, !11, i64 8898, !11, i64 8900, !11, i64 8902, !11, i64 8904, !11, i64 8906, !11, i64 8908, !11, i64 8910, !12, i64 8912, !12, i64 8916, !11, i64 8920, !11, i64 8922, !11, i64 8924, !11, i64 8926, !11, i64 8928, !11, i64 8930, !11, i64 8932, !11, i64 8934, !11, i64 8936, !11, i64 8938, !8, i64 8940, !8, i64 8941, !8, i64 8942, !8, i64 8943, !11, i64 8944, !11, i64 8946, !11, i64 8948, !11, i64 8950, !11, i64 8952, !11, i64 8954, !15, i64 8956, !15, i64 8960, !12, i64 8964, !11, i64 8968, !11, i64 8970, !15, i64 8972, !11, i64 8976, !11, i64 8978, !11, i64 8980, !11, i64 8982, !16, i64 8984, !8, i64 9760, !8, i64 9772, !11, i64 9788, !8, i64 9790, !8, i64 9791, !8, i64 9792, !8, i64 9872, !12, i64 10896, !12, i64 10900, !15, i64 10904, !15, i64 10908, !12, i64 10912, !11, i64 10916, !11, i64 10918, !11, i64 10920, !11, i64 10922, !11, i64 10924, !11, i64 10926, !17, i64 10928}
!15 = !{!"float", !8, i64 0}
!16 = !{!"ColorBand", !11, i64 0, !11, i64 2, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !8, i64 8}
!17 = !{!"WalkNavigation", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !11, i64 24, !8, i64 26}
!18 = !{!19, !11, i64 136}
!19 = !{!"Object", !20, i64 0, !7, i64 120, !7, i64 128, !11, i64 136, !11, i64 138, !12, i64 140, !12, i64 144, !12, i64 148, !8, i64 152, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288, !7, i64 296, !7, i64 304, !21, i64 312, !7, i64 360, !10, i64 368, !10, i64 384, !10, i64 400, !10, i64 416, !12, i64 432, !12, i64 436, !7, i64 440, !7, i64 448, !12, i64 456, !12, i64 460, !8, i64 464, !8, i64 476, !8, i64 488, !8, i64 500, !8, i64 512, !8, i64 524, !8, i64 536, !8, i64 548, !8, i64 560, !8, i64 576, !8, i64 592, !8, i64 604, !15, i64 616, !15, i64 620, !8, i64 624, !8, i64 688, !8, i64 752, !8, i64 816, !8, i64 880, !12, i64 944, !11, i64 948, !11, i64 950, !11, i64 952, !11, i64 954, !11, i64 956, !11, i64 958, !11, i64 960, !11, i64 962, !11, i64 964, !8, i64 966, !8, i64 967, !12, i64 968, !12, i64 972, !12, i64 976, !12, i64 980, !12, i64 984, !15, i64 988, !15, i64 992, !15, i64 996, !15, i64 1000, !15, i64 1004, !15, i64 1008, !15, i64 1012, !15, i64 1016, !15, i64 1020, !15, i64 1024, !15, i64 1028, !15, i64 1032, !11, i64 1036, !11, i64 1038, !11, i64 1040, !8, i64 1042, !8, i64 1043, !11, i64 1044, !8, i64 1046, !8, i64 1047, !15, i64 1048, !15, i64 1052, !10, i64 1056, !10, i64 1072, !10, i64 1088, !10, i64 1104, !15, i64 1120, !11, i64 1124, !11, i64 1126, !8, i64 1128, !12, i64 1144, !12, i64 1148, !7, i64 1152, !8, i64 1160, !8, i64 1161, !11, i64 1162, !8, i64 1164, !10, i64 1176, !10, i64 1192, !10, i64 1208, !10, i64 1224, !7, i64 1240, !7, i64 1248, !7, i64 1256, !8, i64 1264, !8, i64 1265, !11, i64 1266, !15, i64 1268, !7, i64 1272, !7, i64 1280, !7, i64 1288, !7, i64 1296, !22, i64 1304, !22, i64 1312, !12, i64 1320, !12, i64 1324, !10, i64 1328, !10, i64 1344, !7, i64 1360, !7, i64 1368, !7, i64 1376, !8, i64 1384, !7, i64 1392, !10, i64 1400, !7, i64 1416}
!20 = !{!"ID", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !11, i64 98, !12, i64 100, !12, i64 104, !12, i64 108, !7, i64 112}
!21 = !{!"bAnimVizSettings", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !11, i64 16, !11, i64 18, !11, i64 20, !11, i64 22, !11, i64 24, !11, i64 26, !11, i64 28, !11, i64 30, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44}
!22 = !{!"long", !8, i64 0}
!23 = !{!19, !12, i64 432}
!24 = !{!25, !11, i64 156}
!25 = !{!"wmWindowManager", !20, i64 0, !7, i64 120, !7, i64 128, !10, i64 136, !12, i64 152, !11, i64 156, !11, i64 158, !10, i64 160, !10, i64 176, !26, i64 192, !10, i64 232, !10, i64 248, !10, i64 264, !10, i64 280, !7, i64 296, !7, i64 304, !7, i64 312, !10, i64 320, !7, i64 336, !8, i64 344, !8, i64 345}
!26 = !{!"ReportList", !10, i64 0, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !7, i64 32}
!27 = !{!28, !8, i64 72}
!28 = !{!"ScrArea", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !29, i64 56, !8, i64 72, !8, i64 73, !11, i64 74, !11, i64 76, !11, i64 78, !11, i64 80, !11, i64 82, !11, i64 84, !8, i64 86, !8, i64 87, !7, i64 88, !10, i64 96, !10, i64 112, !10, i64 128, !10, i64 144}
!29 = !{!"rcti", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12}
!30 = !{!28, !7, i64 96}
!31 = !{!32, !8, i64 10556}
!32 = !{!"SpaceImage", !7, i64 0, !7, i64 8, !10, i64 16, !12, i64 32, !12, i64 36, !7, i64 40, !33, i64 48, !7, i64 88, !34, i64 96, !35, i64 5360, !7, i64 10520, !8, i64 10528, !15, i64 10536, !15, i64 10540, !15, i64 10544, !15, i64 10548, !15, i64 10552, !8, i64 10556, !8, i64 10557, !11, i64 10558, !11, i64 10560, !11, i64 10562, !8, i64 10564, !8, i64 10565, !8, i64 10566, !8, i64 10567, !36, i64 10568}
!33 = !{!"ImageUser", !7, i64 0, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !8, i64 24, !8, i64 25, !8, i64 26, !8, i64 27, !11, i64 28, !11, i64 30, !11, i64 32, !11, i64 34, !12, i64 36}
!34 = !{!"Scopes", !12, i64 0, !12, i64 4, !12, i64 8, !15, i64 12, !12, i64 16, !15, i64 20, !15, i64 24, !12, i64 28, !15, i64 32, !12, i64 36, !8, i64 40, !35, i64 64, !7, i64 5224, !7, i64 5232, !7, i64 5240, !7, i64 5248, !12, i64 5256, !12, i64 5260}
!35 = !{!"Histogram", !12, i64 0, !12, i64 4, !8, i64 8, !8, i64 1032, !8, i64 2056, !8, i64 3080, !8, i64 4104, !15, i64 5128, !15, i64 5132, !11, i64 5136, !11, i64 5138, !12, i64 5140, !8, i64 5144}
!36 = !{!"MaskSpaceInfo", !7, i64 0, !8, i64 8, !8, i64 9, !8, i64 10, !8, i64 11}
!37 = !{!14, !12, i64 8484}
!38 = !{!39, !11, i64 126}
!39 = !{!"wmWindow", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !8, i64 40, !11, i64 104, !11, i64 106, !11, i64 108, !11, i64 110, !11, i64 112, !11, i64 114, !11, i64 116, !11, i64 118, !11, i64 120, !11, i64 122, !11, i64 124, !11, i64 126, !12, i64 128, !11, i64 132, !11, i64 134, !7, i64 136, !7, i64 144, !7, i64 152, !12, i64 160, !12, i64 164, !7, i64 168, !10, i64 176, !10, i64 192, !10, i64 208, !10, i64 224, !10, i64 240}
!40 = !{!41, !7, i64 88}
!41 = !{!"wmOperator", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !10, i64 128, !7, i64 144, !7, i64 152, !11, i64 160, !8, i64 162}
!42 = !{!43, !7, i64 0}
!43 = !{!"wmOperatorType", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !10, i64 112, !7, i64 128, !7, i64 136, !7, i64 144, !44, i64 152, !11, i64 184}
!44 = !{!"ExtensionRNA", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!45 = !{!43, !7, i64 24}
!46 = !{!43, !7, i64 8}
!47 = !{!43, !7, i64 32}
!48 = !{!43, !7, i64 72}
!49 = !{!43, !11, i64 184}
!50 = !{!43, !7, i64 88}
!51 = !{!41, !7, i64 112}
!52 = !{!43, !7, i64 40}
!53 = !{i32 0, i32 2}
!54 = !{!43, !7, i64 48}
!55 = !{!12, !12, i64 0}
!56 = !{i32 0, i32 5}
!57 = !{!58, !7, i64 8}
!58 = !{!"EnumPropertyItem", !12, i64 0, !7, i64 8, !12, i64 16, !7, i64 24, !7, i64 32}
!59 = !{!58, !7, i64 24}
!60 = !{!58, !12, i64 16}
!61 = !{!58, !12, i64 0}
!62 = distinct !{!62, !63}
!63 = !{!"llvm.loop.mustprogress"}
!64 = !{!7, !7, i64 0}
