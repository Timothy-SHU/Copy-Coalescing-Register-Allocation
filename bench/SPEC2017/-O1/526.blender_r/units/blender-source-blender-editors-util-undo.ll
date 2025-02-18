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

; Function Attrs: nounwind uwtable
define dso_local void @ED_undo_push(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_manager(ptr noundef %0) #7
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #7
  %5 = tail call ptr @CTX_data_active_object(ptr noundef %0) #7
  %6 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !34
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @__func__.ED_undo_push, ptr noundef %1)
  br label %11

11:                                               ; preds = %9, %2
  %12 = icmp eq ptr %4, null
  br i1 %12, label %25, label %13

13:                                               ; preds = %11
  %14 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 46), align 8, !tbaa !42
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %46, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 3
  %18 = load i16, ptr %17, align 8, !tbaa !47
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
  %29 = load i32, ptr %28, align 8, !tbaa !52
  %30 = and i32 %29, 32
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 46), align 8, !tbaa !42
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
  %43 = load i16, ptr %42, align 4, !tbaa !53
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  store i16 0, ptr %42, align 4, !tbaa !53
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 16973824, ptr noundef null) #7
  br label %46

46:                                               ; preds = %41, %45, %32, %13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

declare void @undo_push_mesh(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @undo_push_curve(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @undo_push_font(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @undo_push_mball(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @undo_push_lattice(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @undo_push_armature(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @PE_undo_push(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare void @BKE_write_undo(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @ED_undo_pop(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc i32 @ed_undo_step(ptr noundef %0, i32 noundef 1, ptr noundef null)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ed_undo_step(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = tail call ptr @CTX_wm_manager(ptr noundef %0) #7
  %5 = tail call ptr @CTX_wm_window(ptr noundef %0) #7
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %7 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #7
  %8 = tail call ptr @CTX_data_active_object(ptr noundef %0) #7
  %9 = tail call ptr @CTX_wm_area(ptr noundef %0) #7
  %10 = tail call zeroext i8 @WM_jobs_test(ptr noundef %4, ptr noundef %6, i32 noundef 0) #7
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %94

12:                                               ; preds = %3
  %13 = tail call i32 @ED_gpencil_session_active() #7
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = tail call i32 @ED_undo_gpencil_step(ptr noundef %0, i32 noundef %1, ptr noundef %2) #7
  br label %94

17:                                               ; preds = %12
  %18 = icmp eq ptr %9, null
  br i1 %18, label %49, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.ScrArea, ptr %9, i64 0, i32 8
  %21 = load i8, ptr %20, align 8, !tbaa !56
  switch i8 %21, label %49 [
    i8 6, label %22
    i8 9, label %48
  ]

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.ScrArea, ptr %9, i64 0, i32 19
  %24 = load ptr, ptr %23, align 8, !tbaa !59
  %25 = icmp eq ptr %8, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 27
  %28 = load i32, ptr %27, align 8, !tbaa !52
  %29 = and i32 %28, 16
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26, %22
  %32 = getelementptr inbounds %struct.SpaceImage, ptr %24, i64 0, i32 17
  %33 = load i8, ptr %32, align 4, !tbaa !60
  %34 = icmp eq i8 %33, 1
  br i1 %34, label %35, label %46

35:                                               ; preds = %31, %26
  %36 = tail call i32 @ED_undo_paint_step(ptr noundef %0, i32 noundef 0, i32 noundef %1, ptr noundef %2) #7
  %37 = icmp eq i32 %36, 0
  %38 = icmp ne ptr %2, null
  %39 = and i1 %38, %37
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !66
  %42 = and i32 %41, 8192
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  tail call void @ED_viewport_render_kill_jobs(ptr noundef %0, i8 noundef zeroext 1) #7
  tail call void @BKE_undo_name(ptr noundef %0, ptr noundef nonnull %2) #7
  br label %45

45:                                               ; preds = %40, %44, %35
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 33554432, ptr noundef null) #7
  br label %94

46:                                               ; preds = %31
  %47 = icmp eq i8 %21, 9
  br i1 %47, label %48, label %49

48:                                               ; preds = %19, %46
  tail call void @ED_text_undo_step(ptr noundef %0, i32 noundef %1) #7
  br label %90

49:                                               ; preds = %19, %17, %46
  %50 = icmp eq ptr %7, null
  br i1 %50, label %59, label %51

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 3
  %53 = load i16, ptr %52, align 8, !tbaa !47
  switch i16 %53, label %90 [
    i16 1, label %54
    i16 4, label %54
    i16 2, label %54
    i16 3, label %54
    i16 5, label %54
    i16 22, label %54
    i16 25, label %54
  ]

54:                                               ; preds = %51, %51, %51, %51, %51, %51, %51
  %55 = icmp eq ptr %2, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %54
  tail call void @undo_editmode_name(ptr noundef %0, ptr noundef nonnull %2) #7
  br label %58

57:                                               ; preds = %54
  tail call void @undo_editmode_step(ptr noundef %0, i32 noundef %1) #7
  br label %58

58:                                               ; preds = %57, %56
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef null) #7
  br label %90

59:                                               ; preds = %49
  %60 = icmp eq ptr %8, null
  br i1 %60, label %80, label %61

61:                                               ; preds = %59
  %62 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 27
  %63 = load i32, ptr %62, align 8, !tbaa !52
  %64 = and i32 %63, 16
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %61
  %67 = tail call i32 @ED_undo_paint_step(ptr noundef %0, i32 noundef 0, i32 noundef %1, ptr noundef %2) #7
  br label %90

68:                                               ; preds = %61
  %69 = and i32 %63, 2
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %68
  %72 = tail call i32 @ED_undo_paint_step(ptr noundef %0, i32 noundef 1, i32 noundef %1, ptr noundef %2) #7
  br label %90

73:                                               ; preds = %68
  %74 = and i32 %63, 32
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %73
  %77 = icmp eq i32 %1, 1
  br i1 %77, label %78, label %79

78:                                               ; preds = %76
  tail call void @PE_undo(ptr noundef %6) #7
  br label %90

79:                                               ; preds = %76
  tail call void @PE_redo(ptr noundef %6) #7
  br label %90

80:                                               ; preds = %59, %73
  %81 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !66
  %82 = and i32 %81, 8192
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %80
  tail call void @undo_editmode_clear() #7
  tail call void @ED_viewport_render_kill_jobs(ptr noundef %0, i8 noundef zeroext 1) #7
  %85 = icmp eq ptr %2, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %84
  tail call void @BKE_undo_name(ptr noundef %0, ptr noundef nonnull %2) #7
  br label %88

87:                                               ; preds = %84
  tail call void @BKE_undo_step(ptr noundef %0, i32 noundef %1) #7
  br label %88

88:                                               ; preds = %87, %86
  %89 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 73728000, ptr noundef %89) #7
  br label %90

90:                                               ; preds = %51, %58, %71, %80, %88, %78, %79, %66, %48
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 33554432, ptr noundef null) #7
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 17170432, ptr noundef null) #7
  %91 = icmp eq ptr %5, null
  br i1 %91, label %94, label %92

92:                                               ; preds = %90
  %93 = getelementptr inbounds %struct.wmWindow, ptr %5, i64 0, i32 17
  store i16 1, ptr %93, align 2, !tbaa !67
  br label %94

94:                                               ; preds = %90, %92, %45, %3, %15
  %95 = phi i32 [ %16, %15 ], [ 2, %3 ], [ 4, %45 ], [ 4, %92 ], [ 4, %90 ]
  ret i32 %95
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_undo_redo(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc i32 @ed_undo_step(ptr noundef %0, i32 noundef -1, ptr noundef null)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_undo_push_op(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !69
  %5 = load ptr, ptr %4, align 8, !tbaa !71
  tail call void @ED_undo_push(ptr noundef %0, ptr noundef %5)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_undo_pop_op(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !69
  %5 = load ptr, ptr %4, align 8, !tbaa !71
  %6 = tail call fastcc i32 @ed_undo_step(ptr noundef %0, i32 noundef 0, ptr noundef %5)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ED_undo_valid(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #7
  %4 = tail call ptr @CTX_data_active_object(ptr noundef %0) #7
  %5 = tail call ptr @CTX_wm_area(ptr noundef %0) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %25, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ScrArea, ptr %5, i64 0, i32 8
  %9 = load i8, ptr %8, align 8, !tbaa !56
  switch i8 %9, label %25 [
    i8 6, label %10
    i8 9, label %60
  ]

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.ScrArea, ptr %5, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !59
  %13 = icmp eq ptr %4, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 27
  %16 = load i32, ptr %15, align 8, !tbaa !52
  %17 = and i32 %16, 16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %60

19:                                               ; preds = %14, %10
  %20 = getelementptr inbounds %struct.SpaceImage, ptr %12, i64 0, i32 17
  %21 = load i8, ptr %20, align 4, !tbaa !60
  %22 = icmp eq i8 %21, 1
  %23 = icmp eq i8 %9, 9
  %24 = or i1 %23, %22
  br i1 %24, label %60, label %25

25:                                               ; preds = %19, %7, %2
  %26 = icmp eq ptr %3, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %29 = load i16, ptr %28, align 8, !tbaa !47
  switch i16 %29, label %60 [
    i16 1, label %30
    i16 4, label %30
    i16 2, label %30
    i16 3, label %30
    i16 5, label %30
    i16 22, label %30
    i16 25, label %30
  ]

30:                                               ; preds = %27, %27, %27, %27, %27, %27, %27
  %31 = tail call i32 @undo_editmode_valid(ptr noundef %1) #7
  br label %60

32:                                               ; preds = %25
  %33 = icmp eq ptr %4, null
  br i1 %33, label %54, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 27
  %36 = load i32, ptr %35, align 8, !tbaa !52
  %37 = and i32 %36, 16
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = tail call i32 @ED_undo_paint_valid(i32 noundef 0, ptr noundef %1) #7
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %54, label %60

42:                                               ; preds = %34
  %43 = and i32 %36, 2
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = tail call i32 @ED_undo_paint_valid(i32 noundef 1, ptr noundef %1) #7
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %54, label %60

48:                                               ; preds = %42
  %49 = and i32 %36, 32
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %53 = tail call i32 @PE_undo_valid(ptr noundef %52) #7
  br label %60

54:                                               ; preds = %32, %45, %48, %39
  %55 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !66
  %56 = and i32 %55, 8192
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %54
  %59 = tail call i32 @BKE_undo_valid(ptr noundef %1) #7
  br label %60

60:                                               ; preds = %7, %54, %27, %45, %39, %19, %14, %58, %51, %30
  %61 = phi i32 [ %31, %30 ], [ %59, %58 ], [ %53, %51 ], [ 1, %14 ], [ 1, %19 ], [ 1, %39 ], [ 1, %45 ], [ 0, %27 ], [ 0, %54 ], [ 1, %7 ]
  ret i32 %61
}

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

declare i32 @undo_editmode_valid(ptr noundef) local_unnamed_addr #2

declare i32 @ED_undo_paint_valid(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @PE_undo_valid(ptr noundef) local_unnamed_addr #2

declare i32 @BKE_undo_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ED_OT_undo(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.1, ptr %0, align 8, !tbaa !71
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %2, align 8, !tbaa !74
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.3, ptr %3, align 8, !tbaa !75
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @ed_undo_exec, ptr %4, align 8, !tbaa !76
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_screenactive, ptr %5, align 8, !tbaa !77
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @ed_undo_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_wm_manager(ptr noundef %0) #7
  tail call void @WM_operator_stack_clear(ptr noundef %3) #7
  %4 = tail call fastcc i32 @ed_undo_step(ptr noundef %0, i32 noundef 1, ptr noundef null)
  ret i32 %4
}

declare i32 @ED_operator_screenactive(ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local void @ED_OT_undo_push(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.4, ptr %0, align 8, !tbaa !71
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.5, ptr %2, align 8, !tbaa !74
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.6, ptr %3, align 8, !tbaa !75
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @ed_undo_push_exec, ptr %4, align 8, !tbaa !76
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 64, ptr %5, align 8, !tbaa !78
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !79
  %8 = tail call ptr @RNA_def_string(ptr noundef %7, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 64, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @ed_undo_push_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #7
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !80
  call void @RNA_string_get(ptr noundef %5, ptr noundef nonnull @.str.7, ptr noundef nonnull %3) #7
  call void @ED_undo_push(ptr noundef %0, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #7
  ret i32 4
}

declare ptr @RNA_def_string(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ED_OT_redo(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.11, ptr %0, align 8, !tbaa !71
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.12, ptr %2, align 8, !tbaa !74
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.13, ptr %3, align 8, !tbaa !75
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @ed_redo_exec, ptr %4, align 8, !tbaa !76
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_screenactive, ptr %5, align 8, !tbaa !77
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @ed_redo_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call fastcc i32 @ed_undo_step(ptr noundef %0, i32 noundef -1, ptr noundef null)
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ED_undo_operator_repeat(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %71, label %4

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
  br i1 %14, label %60, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !69
  %18 = tail call i32 @WM_operator_poll(ptr noundef %0, ptr noundef %17) #7
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %60, label %20

20:                                               ; preds = %15
  %21 = tail call zeroext i8 @WM_jobs_test(ptr noundef %5, ptr noundef %6, i32 noundef 0) #7
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %60

23:                                               ; preds = %20
  tail call void @ED_viewport_render_kill_jobs(ptr noundef %0, i8 noundef zeroext 1) #7
  %24 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !34
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr %16, align 8, !tbaa !69
  %29 = load ptr, ptr %28, align 8, !tbaa !71
  %30 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, ptr noundef %29)
  br label %31

31:                                               ; preds = %27, %23
  %32 = load ptr, ptr %16, align 8, !tbaa !69
  %33 = load ptr, ptr %32, align 8, !tbaa !71
  %34 = tail call fastcc i32 @ed_undo_step(ptr noundef %0, i32 noundef 0, ptr noundef %33)
  %35 = load ptr, ptr %16, align 8, !tbaa !69
  %36 = getelementptr inbounds %struct.wmOperatorType, ptr %35, i64 0, i32 5
  %37 = load ptr, ptr %36, align 8, !tbaa !81
  %38 = icmp eq ptr %37, null
  br i1 %38, label %46, label %39

39:                                               ; preds = %31
  %40 = tail call zeroext i8 %37(ptr noundef %0, ptr noundef nonnull %1) #7
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = tail call ptr @CTX_wm_menu(ptr noundef %0) #7
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %42
  tail call void @ED_region_tag_refresh_ui(ptr noundef nonnull %43) #7
  br label %46

46:                                               ; preds = %42, %45, %39, %31
  %47 = tail call i32 @WM_operator_repeat(ptr noundef %0, ptr noundef nonnull %1) #7
  %48 = and i32 %47, 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %69

50:                                               ; preds = %46
  %51 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !34
  %52 = and i32 %51, 1
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = load ptr, ptr %16, align 8, !tbaa !69
  %56 = load ptr, ptr %55, align 8, !tbaa !71
  %57 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, ptr noundef %56, i32 noundef %47)
  br label %58

58:                                               ; preds = %54, %50
  %59 = tail call fastcc i32 @ed_undo_step(ptr noundef %0, i32 noundef -1, ptr noundef null)
  br label %69

60:                                               ; preds = %20, %15, %12
  %61 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !34
  %62 = and i32 %61, 1
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %66 = load ptr, ptr %65, align 8, !tbaa !69
  %67 = load ptr, ptr %66, align 8, !tbaa !71
  %68 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, ptr noundef %67)
  br label %69

69:                                               ; preds = %58, %46, %60, %64
  %70 = phi i32 [ 0, %64 ], [ 0, %60 ], [ 0, %58 ], [ 1, %46 ]
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef %7) #7
  br label %77

71:                                               ; preds = %2
  %72 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !34
  %73 = and i32 %72, 1
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %71
  %76 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %77

77:                                               ; preds = %71, %75, %69
  %78 = phi i32 [ %70, %69 ], [ 0, %75 ], [ 0, %71 ]
  ret i32 %78
}

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_area_find_region_active_win(ptr noundef) local_unnamed_addr #2

declare void @CTX_wm_region_set(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @WM_operator_repeat_check(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @WM_operator_poll(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @WM_jobs_test(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @ED_viewport_render_kill_jobs(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @CTX_wm_menu(ptr noundef) local_unnamed_addr #2

declare void @ED_region_tag_refresh_ui(ptr noundef) local_unnamed_addr #2

declare i32 @WM_operator_repeat(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ED_undo_operator_repeat_cb(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  %4 = tail call i32 @ED_undo_operator_repeat(ptr noundef %0, ptr noundef %1), !range !82
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_undo_operator_repeat_cb_evt(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @ED_undo_operator_repeat(ptr noundef %0, ptr noundef %1), !range !82
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_OT_undo_history(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.18, ptr %0, align 8, !tbaa !71
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.19, ptr %2, align 8, !tbaa !74
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.20, ptr %3, align 8, !tbaa !75
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @undo_history_invoke, ptr %4, align 8, !tbaa !83
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @undo_history_exec, ptr %5, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_screenactive, ptr %6, align 8, !tbaa !77
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !79
  %9 = tail call ptr @RNA_def_int(ptr noundef %8, ptr noundef nonnull @.str.21, i32 noundef 0, i32 noundef 0, i32 noundef 2147483647, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.10, i32 noundef 0, i32 noundef 2147483647) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @undo_history_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = alloca %struct.EnumPropertyItem, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  store i32 0, ptr %7, align 4, !tbaa !84
  %8 = tail call fastcc i32 @get_undo_system(ptr noundef %0), !range !85
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %93, label %10

10:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  store ptr null, ptr %5, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  %11 = getelementptr inbounds %struct.EnumPropertyItem, ptr %4, i64 0, i32 1
  %12 = getelementptr inbounds %struct.EnumPropertyItem, ptr %4, i64 0, i32 3
  %13 = getelementptr inbounds %struct.EnumPropertyItem, ptr %4, i64 0, i32 2
  %14 = getelementptr inbounds %struct.EnumPropertyItem, ptr %4, i64 0, i32 2
  br label %15

15:                                               ; preds = %36, %10
  %16 = phi i32 [ 0, %10 ], [ %37, %36 ]
  switch i32 %8, label %24 [
    i32 3, label %17
    i32 2, label %20
    i32 4, label %22
  ]

17:                                               ; preds = %15
  %18 = call ptr @CTX_data_scene(ptr noundef %0) #7
  %19 = call ptr @PE_undo_get_name(ptr noundef %18, i32 noundef %16, ptr noundef nonnull %6) #7
  br label %26

20:                                               ; preds = %15
  %21 = call ptr @undo_editmode_get_name(ptr noundef %0, i32 noundef %16, ptr noundef nonnull %6) #7
  br label %26

22:                                               ; preds = %15
  %23 = call ptr @ED_undo_paint_get_name(ptr noundef %0, i32 noundef 0, i32 noundef %16, ptr noundef nonnull %6) #7
  br label %26

24:                                               ; preds = %15
  %25 = call ptr @BKE_undo_get_name(i32 noundef %16, ptr noundef nonnull %6) #7
  br label %26

26:                                               ; preds = %24, %22, %20, %17
  %27 = phi ptr [ %19, %17 ], [ %21, %20 ], [ %23, %22 ], [ %25, %24 ]
  %28 = icmp eq ptr %27, null
  br i1 %28, label %36, label %29

29:                                               ; preds = %26
  store ptr %27, ptr %11, align 8, !tbaa !87
  store ptr %27, ptr %12, align 8, !tbaa !89
  %30 = load i32, ptr %6, align 4, !tbaa !84
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  store i32 253, ptr %13, align 8, !tbaa !90
  br label %34

33:                                               ; preds = %29
  store i32 0, ptr %14, align 8, !tbaa !90
  br label %34

34:                                               ; preds = %33, %32
  %35 = add nsw i32 %16, 1
  store i32 %16, ptr %4, align 8, !tbaa !91
  call void @RNA_enum_item_add(ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull %4) #7
  br label %36

36:                                               ; preds = %34, %26
  %37 = phi i32 [ %35, %34 ], [ %16, %26 ]
  br i1 %28, label %38, label %15

38:                                               ; preds = %36
  call void @RNA_enum_item_end(ptr noundef nonnull %5, ptr noundef nonnull %7) #7
  %39 = load ptr, ptr %5, align 8, !tbaa !86
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #7
  %40 = load i32, ptr %7, align 4, !tbaa !84
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %93

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %44 = load ptr, ptr %43, align 8, !tbaa !69
  %45 = getelementptr inbounds %struct.wmOperatorType, ptr %44, i64 0, i32 11
  %46 = load ptr, ptr %45, align 8, !tbaa !79
  %47 = call ptr @RNA_struct_ui_name(ptr noundef %46) #7
  %48 = call ptr @uiPupMenuBegin(ptr noundef %0, ptr noundef %47, i32 noundef 0) #7
  %49 = call ptr @uiPupMenuLayout(ptr noundef %48) #7
  %50 = call ptr @uiLayoutSplit(ptr noundef %49, float noundef 0.000000e+00, i32 noundef 0) #7
  %51 = load i32, ptr %7, align 4, !tbaa !84
  %52 = sdiv i32 %51, 12
  %53 = add nsw i32 %52, 20
  %54 = icmp eq i32 %51, 0
  br i1 %54, label %91, label %55

55:                                               ; preds = %42
  %56 = sext i32 %51 to i64
  br label %57

57:                                               ; preds = %55, %86
  %58 = phi i64 [ %56, %55 ], [ %62, %86 ]
  %59 = phi i8 [ 1, %55 ], [ %88, %86 ]
  %60 = phi i32 [ 0, %55 ], [ %87, %86 ]
  %61 = phi ptr [ null, %55 ], [ %70, %86 ]
  %62 = add nsw i64 %58, -1
  %63 = icmp eq i8 %59, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %57
  %65 = srem i32 %60, %53
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = call ptr @uiLayoutColumn(ptr noundef %50, i32 noundef 0) #7
  br label %69

69:                                               ; preds = %67, %64, %57
  %70 = phi ptr [ %61, %64 ], [ %68, %67 ], [ %61, %57 ]
  %71 = phi i8 [ %59, %64 ], [ 0, %67 ], [ %59, %57 ]
  %72 = getelementptr inbounds %struct.EnumPropertyItem, ptr %39, i64 %62, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !87
  %74 = icmp eq ptr %73, null
  br i1 %74, label %86, label %75

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.EnumPropertyItem, ptr %39, i64 %62
  %77 = getelementptr inbounds %struct.EnumPropertyItem, ptr %39, i64 %62, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !89
  %79 = getelementptr inbounds %struct.EnumPropertyItem, ptr %39, i64 %62, i32 2
  %80 = load i32, ptr %79, align 8, !tbaa !90
  %81 = load ptr, ptr %43, align 8, !tbaa !69
  %82 = getelementptr inbounds %struct.wmOperatorType, ptr %81, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !75
  %84 = load i32, ptr %76, align 8, !tbaa !91
  call void @uiItemIntO(ptr noundef %70, ptr noundef %78, i32 noundef %80, ptr noundef %83, ptr noundef nonnull @.str.21, i32 noundef %84) #7
  %85 = add nsw i32 %60, 1
  br label %86

86:                                               ; preds = %75, %69
  %87 = phi i32 [ %85, %75 ], [ %60, %69 ]
  %88 = phi i8 [ 1, %75 ], [ %71, %69 ]
  %89 = and i64 %62, 4294967295
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %57, !llvm.loop !92

91:                                               ; preds = %86, %42
  %92 = load ptr, ptr @MEM_freeN, align 8, !tbaa !86
  call void %92(ptr noundef %39) #7
  call void @uiPupMenuEnd(ptr noundef %0, ptr noundef %48) #7
  br label %93

93:                                               ; preds = %38, %91, %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  ret i32 2
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @undo_history_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !80
  %5 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %4, ptr noundef nonnull @.str.21) #7
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %2
  %8 = tail call fastcc i32 @get_undo_system(ptr noundef %0), !range !85
  %9 = load ptr, ptr %3, align 8, !tbaa !80
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

declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #2

declare i32 @ED_gpencil_session_active() local_unnamed_addr #2

declare i32 @ED_undo_gpencil_step(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ED_undo_paint_step(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_undo_name(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_text_undo_step(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @undo_editmode_name(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @undo_editmode_step(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @PE_undo(ptr noundef) local_unnamed_addr #2

declare void @PE_redo(ptr noundef) local_unnamed_addr #2

declare void @undo_editmode_clear() local_unnamed_addr #2

declare void @BKE_undo_step(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @WM_operator_stack_clear(ptr noundef) local_unnamed_addr #2

declare void @RNA_string_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @get_undo_system(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @CTX_data_active_object(ptr noundef %0) #7
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #7
  %4 = tail call ptr @CTX_wm_area(ptr noundef %0) #7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %26, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ScrArea, ptr %4, i64 0, i32 8
  %8 = load i8, ptr %7, align 8, !tbaa !56
  %9 = icmp eq i8 %8, 6
  br i1 %9, label %10, label %26

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ScrArea, ptr %4, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !59
  %13 = icmp eq ptr %2, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 27
  %16 = load i32, ptr %15, align 8, !tbaa !52
  %17 = and i32 %16, 16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14, %10
  %20 = getelementptr inbounds %struct.SpaceImage, ptr %12, i64 0, i32 17
  %21 = load i8, ptr %20, align 4, !tbaa !60
  %22 = icmp eq i8 %21, 1
  br i1 %22, label %23, label %26

23:                                               ; preds = %19, %14
  %24 = tail call zeroext i8 @ED_undo_paint_empty(i32 noundef 0) #7
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %54, label %26

26:                                               ; preds = %19, %23, %6, %1
  %27 = icmp eq ptr %3, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %30 = load i16, ptr %29, align 8, !tbaa !47
  switch i16 %30, label %53 [
    i16 1, label %54
    i16 4, label %54
    i16 2, label %54
    i16 3, label %54
    i16 5, label %54
    i16 22, label %54
    i16 25, label %54
  ]

31:                                               ; preds = %26
  %32 = tail call ptr @CTX_data_active_object(ptr noundef %0) #7
  %33 = icmp eq ptr %32, null
  br i1 %33, label %45, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.Object, ptr %32, i64 0, i32 27
  %36 = load i32, ptr %35, align 8, !tbaa !52
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

45:                                               ; preds = %42, %39, %31
  %46 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !66
  %47 = and i32 %46, 8192
  %48 = icmp eq i32 %47, 0
  %49 = select i1 %48, i32 4, i32 1
  br label %50

50:                                               ; preds = %45, %42, %34
  %51 = phi i1 [ false, %34 ], [ false, %42 ], [ %48, %45 ]
  %52 = phi i32 [ 3, %34 ], [ 4, %42 ], [ %49, %45 ]
  br i1 %51, label %53, label %54

53:                                               ; preds = %28, %50
  br label %54

54:                                               ; preds = %28, %28, %28, %28, %28, %28, %28, %23, %50, %53
  %55 = phi i32 [ 0, %53 ], [ %52, %50 ], [ 4, %23 ], [ 2, %28 ], [ 2, %28 ], [ 2, %28 ], [ 2, %28 ], [ 2, %28 ], [ 2, %28 ], [ 2, %28 ]
  ret i32 %55
}

declare ptr @uiPupMenuBegin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @RNA_struct_ui_name(ptr noundef) local_unnamed_addr #2

declare ptr @uiPupMenuLayout(ptr noundef) local_unnamed_addr #2

declare ptr @uiLayoutSplit(ptr noundef, float noundef, i32 noundef) local_unnamed_addr #2

declare ptr @uiLayoutColumn(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @uiItemIntO(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @uiPupMenuEnd(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @ED_undo_paint_empty(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare ptr @PE_undo_get_name(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @undo_editmode_get_name(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ED_undo_paint_get_name(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_undo_get_name(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_enum_item_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_enum_item_end(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @RNA_struct_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @PE_undo_number(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @undo_editmode_number(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @ED_undo_paint_step_num(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @BKE_undo_number(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nofree nounwind }
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
!34 = !{!35, !41, i64 2100}
!35 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !39, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !40, i64 2084, !40, i64 2086, !40, i64 2088, !37, i64 2090, !40, i64 2092, !41, i64 2096, !41, i64 2100, !37, i64 2104, !41, i64 2108, !41, i64 2112, !37, i64 2116}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"ListBase", !36, i64 0, !36, i64 8}
!40 = !{!"short", !37, i64 0}
!41 = !{!"int", !37, i64 0}
!42 = !{!43, !40, i64 8712}
!43 = !{!"UserDef", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !41, i64 8468, !40, i64 8472, !40, i64 8474, !40, i64 8476, !40, i64 8478, !40, i64 8480, !40, i64 8482, !41, i64 8484, !41, i64 8488, !41, i64 8492, !40, i64 8496, !40, i64 8498, !41, i64 8500, !41, i64 8504, !41, i64 8508, !41, i64 8512, !41, i64 8516, !41, i64 8520, !41, i64 8524, !40, i64 8528, !40, i64 8530, !40, i64 8532, !40, i64 8534, !39, i64 8536, !39, i64 8552, !39, i64 8568, !39, i64 8584, !39, i64 8600, !39, i64 8616, !39, i64 8632, !37, i64 8648, !40, i64 8712, !40, i64 8714, !40, i64 8716, !40, i64 8718, !40, i64 8720, !40, i64 8722, !40, i64 8724, !40, i64 8726, !37, i64 8728, !40, i64 8896, !40, i64 8898, !40, i64 8900, !40, i64 8902, !40, i64 8904, !40, i64 8906, !40, i64 8908, !40, i64 8910, !41, i64 8912, !41, i64 8916, !40, i64 8920, !40, i64 8922, !40, i64 8924, !40, i64 8926, !40, i64 8928, !40, i64 8930, !40, i64 8932, !40, i64 8934, !40, i64 8936, !40, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !40, i64 8944, !40, i64 8946, !40, i64 8948, !40, i64 8950, !40, i64 8952, !40, i64 8954, !44, i64 8956, !44, i64 8960, !41, i64 8964, !40, i64 8968, !40, i64 8970, !44, i64 8972, !40, i64 8976, !40, i64 8978, !40, i64 8980, !40, i64 8982, !45, i64 8984, !37, i64 9760, !37, i64 9772, !40, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !41, i64 10896, !41, i64 10900, !44, i64 10904, !44, i64 10908, !41, i64 10912, !40, i64 10916, !40, i64 10918, !40, i64 10920, !40, i64 10922, !40, i64 10924, !40, i64 10926, !46, i64 10928}
!44 = !{!"float", !37, i64 0}
!45 = !{!"ColorBand", !40, i64 0, !40, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!46 = !{!"WalkNavigation", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !40, i64 24, !37, i64 26}
!47 = !{!48, !40, i64 136}
!48 = !{!"Object", !49, i64 0, !36, i64 120, !36, i64 128, !40, i64 136, !40, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !50, i64 312, !36, i64 360, !39, i64 368, !39, i64 384, !39, i64 400, !39, i64 416, !41, i64 432, !41, i64 436, !36, i64 440, !36, i64 448, !41, i64 456, !41, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !44, i64 616, !44, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !41, i64 944, !40, i64 948, !40, i64 950, !40, i64 952, !40, i64 954, !40, i64 956, !40, i64 958, !40, i64 960, !40, i64 962, !40, i64 964, !37, i64 966, !37, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !44, i64 988, !44, i64 992, !44, i64 996, !44, i64 1000, !44, i64 1004, !44, i64 1008, !44, i64 1012, !44, i64 1016, !44, i64 1020, !44, i64 1024, !44, i64 1028, !44, i64 1032, !40, i64 1036, !40, i64 1038, !40, i64 1040, !37, i64 1042, !37, i64 1043, !40, i64 1044, !37, i64 1046, !37, i64 1047, !44, i64 1048, !44, i64 1052, !39, i64 1056, !39, i64 1072, !39, i64 1088, !39, i64 1104, !44, i64 1120, !40, i64 1124, !40, i64 1126, !37, i64 1128, !41, i64 1144, !41, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !40, i64 1162, !37, i64 1164, !39, i64 1176, !39, i64 1192, !39, i64 1208, !39, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !40, i64 1266, !44, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !51, i64 1304, !51, i64 1312, !41, i64 1320, !41, i64 1324, !39, i64 1328, !39, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !39, i64 1400, !36, i64 1416}
!49 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !40, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !36, i64 112}
!50 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!51 = !{!"long", !37, i64 0}
!52 = !{!48, !41, i64 432}
!53 = !{!54, !40, i64 156}
!54 = !{!"wmWindowManager", !49, i64 0, !36, i64 120, !36, i64 128, !39, i64 136, !41, i64 152, !40, i64 156, !40, i64 158, !39, i64 160, !39, i64 176, !55, i64 192, !39, i64 232, !39, i64 248, !39, i64 264, !39, i64 280, !36, i64 296, !36, i64 304, !36, i64 312, !39, i64 320, !36, i64 336, !37, i64 344, !37, i64 345}
!55 = !{!"ReportList", !39, i64 0, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !36, i64 32}
!56 = !{!57, !37, i64 72}
!57 = !{!"ScrArea", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !58, i64 56, !37, i64 72, !37, i64 73, !40, i64 74, !40, i64 76, !40, i64 78, !40, i64 80, !40, i64 82, !40, i64 84, !37, i64 86, !37, i64 87, !36, i64 88, !39, i64 96, !39, i64 112, !39, i64 128, !39, i64 144}
!58 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!59 = !{!57, !36, i64 96}
!60 = !{!61, !37, i64 10556}
!61 = !{!"SpaceImage", !36, i64 0, !36, i64 8, !39, i64 16, !41, i64 32, !41, i64 36, !36, i64 40, !62, i64 48, !36, i64 88, !63, i64 96, !64, i64 5360, !36, i64 10520, !37, i64 10528, !44, i64 10536, !44, i64 10540, !44, i64 10544, !44, i64 10548, !44, i64 10552, !37, i64 10556, !37, i64 10557, !40, i64 10558, !40, i64 10560, !40, i64 10562, !37, i64 10564, !37, i64 10565, !37, i64 10566, !37, i64 10567, !65, i64 10568}
!62 = !{!"ImageUser", !36, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !37, i64 24, !37, i64 25, !37, i64 26, !37, i64 27, !40, i64 28, !40, i64 30, !40, i64 32, !40, i64 34, !41, i64 36}
!63 = !{!"Scopes", !41, i64 0, !41, i64 4, !41, i64 8, !44, i64 12, !41, i64 16, !44, i64 20, !44, i64 24, !41, i64 28, !44, i64 32, !41, i64 36, !37, i64 40, !64, i64 64, !36, i64 5224, !36, i64 5232, !36, i64 5240, !36, i64 5248, !41, i64 5256, !41, i64 5260}
!64 = !{!"Histogram", !41, i64 0, !41, i64 4, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 3080, !37, i64 4104, !44, i64 5128, !44, i64 5132, !40, i64 5136, !40, i64 5138, !41, i64 5140, !37, i64 5144}
!65 = !{!"MaskSpaceInfo", !36, i64 0, !37, i64 8, !37, i64 9, !37, i64 10, !37, i64 11}
!66 = !{!43, !41, i64 8484}
!67 = !{!68, !40, i64 126}
!68 = !{!"wmWindow", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !40, i64 104, !40, i64 106, !40, i64 108, !40, i64 110, !40, i64 112, !40, i64 114, !40, i64 116, !40, i64 118, !40, i64 120, !40, i64 122, !40, i64 124, !40, i64 126, !41, i64 128, !40, i64 132, !40, i64 134, !36, i64 136, !36, i64 144, !36, i64 152, !41, i64 160, !41, i64 164, !36, i64 168, !39, i64 176, !39, i64 192, !39, i64 208, !39, i64 224, !39, i64 240}
!69 = !{!70, !36, i64 88}
!70 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !40, i64 160, !37, i64 162}
!71 = !{!72, !36, i64 0}
!72 = !{!"wmOperatorType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !39, i64 112, !36, i64 128, !36, i64 136, !36, i64 144, !73, i64 152, !40, i64 184}
!73 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!74 = !{!72, !36, i64 24}
!75 = !{!72, !36, i64 8}
!76 = !{!72, !36, i64 32}
!77 = !{!72, !36, i64 72}
!78 = !{!72, !40, i64 184}
!79 = !{!72, !36, i64 88}
!80 = !{!70, !36, i64 112}
!81 = !{!72, !36, i64 40}
!82 = !{i32 0, i32 2}
!83 = !{!72, !36, i64 48}
!84 = !{!41, !41, i64 0}
!85 = !{i32 0, i32 5}
!86 = !{!36, !36, i64 0}
!87 = !{!88, !36, i64 8}
!88 = !{!"EnumPropertyItem", !41, i64 0, !36, i64 8, !41, i64 16, !36, i64 24, !36, i64 32}
!89 = !{!88, !36, i64 24}
!90 = !{!88, !41, i64 16}
!91 = !{!88, !41, i64 0}
!92 = distinct !{!92, !93, !94}
!93 = !{!"llvm.loop.mustprogress"}
!94 = !{!"llvm.loop.unroll.disable"}
