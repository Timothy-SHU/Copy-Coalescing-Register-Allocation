; ModuleID = 'blender/source/blender/editors/interface/interface_anim.c'
source_filename = "blender/source/blender/editors/interface/interface_anim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.uiBut = type { ptr, ptr, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, [128 x i8], [400 x i8], %struct.rctf, ptr, float, float, float, float, float, float, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x i16], ptr, ptr, i32, i8, i8, i8, i8, i8, i16, i16, ptr, ptr, %struct.PointerRNA, ptr, i32, %struct.PointerRNA, ptr, ptr, ptr, i16, i8, i8, ptr, ptr, float, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.uiBlock = type { ptr, ptr, %struct.ListBase, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, %struct.ListBase, [128 x i8], [4 x [4 x float]], %struct.rctf, float, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i8, i8, i8, [7 x i8], double, ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, %struct.rctf, %struct.ListBase, ptr, ptr, ptr, ptr, [3 x float], i8, [64 x i8], %struct.PieMenuData }
%struct.PieMenuData = type { [2 x float], [2 x float], [2 x float], [2 x float], double, i32, i32, float }
%struct.FCurve = type { ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i32, float, i16, i16, i32, ptr, i32, [3 x float], float, float }
%struct.ChannelDriver = type { %struct.ListBase, [256 x i8], ptr, float, float, i32, i32 }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bActionGroup = type { ptr, ptr, %struct.ListBase, i32, i32, [64 x i8], %struct.ThemeWireColor }
%struct.ThemeWireColor = type { [4 x i8], [4 x i8], [4 x i8], i16, i16 }

@G = external local_unnamed_addr global %struct.Global, align 8
@.str.2 = private unnamed_addr constant [80 x i8] c"ERROR: create expression failed - invalid id-datablock for adding drivers (%p)\0A\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"ANIM_OT_keyframe_insert_button\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"ANIM_OT_keyframe_delete_button\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"ANIM_OT_keyframe_clear_button\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"ANIM_OT_driver_button_add\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"ANIM_OT_driver_button_remove\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"ANIM_OT_copy_driver_button\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"ANIM_OT_paste_driver_button\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"ANIM_OT_keyingset_button_add\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"ANIM_OT_keyingset_button_remove\00", align 1
@str = private unnamed_addr constant [75 x i8] c"ERROR: create expression failed - can't create expression for entire array\00", align 1
@str.12 = private unnamed_addr constant [66 x i8] c"ERROR: create expression failed - button has no RNA info attached\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ui_but_anim_flag(ptr noundef %0, float noundef %1) local_unnamed_addr #0 {
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #5
  %4 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = and i32 %5, -57345
  store i32 %6, ptr %4, align 8, !tbaa !34
  %7 = call fastcc ptr @ui_but_get_fcurve(ptr noundef %0, ptr noundef null, ptr noundef nonnull %3) #6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %24, label %9

9:                                                ; preds = %2
  %10 = load i8, ptr %3, align 1, !tbaa !45
  %11 = icmp eq i8 %10, 0
  %12 = load i32, ptr %4, align 8, !tbaa !34
  br i1 %11, label %13, label %20

13:                                               ; preds = %9
  %14 = or i32 %12, 8192
  store i32 %14, ptr %4, align 8, !tbaa !34
  %15 = call zeroext i8 @fcurve_frame_has_keyframe(ptr noundef nonnull %7, float noundef %1, i16 noundef signext 0) #7
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %13
  %18 = load i32, ptr %4, align 8, !tbaa !34
  %19 = or i32 %18, 16384
  br label %22

20:                                               ; preds = %9
  %21 = or i32 %12, 32768
  br label %22

22:                                               ; preds = %17, %20
  %23 = phi i32 [ %21, %20 ], [ %19, %17 ]
  store i32 %23, ptr %4, align 8, !tbaa !34
  br label %24

24:                                               ; preds = %22, %13, %2
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ui_but_get_fcurve(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !46 {
  %4 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 56
  %5 = load i32, ptr %4, align 8, !tbaa !47
  %6 = icmp eq i32 %5, -1
  %7 = select i1 %6, i32 0, i32 %5
  %8 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 74
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = getelementptr inbounds %struct.uiBlock, ptr %9, i64 0, i32 48
  %11 = load ptr, ptr %10, align 8, !tbaa !49
  %12 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 54
  %13 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 55
  %14 = load ptr, ptr %13, align 8, !tbaa !54
  %15 = tail call ptr @rna_get_fcurve_context_ui(ptr noundef %11, ptr noundef nonnull %12, ptr noundef %14, i32 noundef %7, ptr noundef %1, ptr noundef %2) #7
  ret ptr %15
}

; Function Attrs: optsize
declare zeroext i8 @fcurve_frame_has_keyframe(ptr noundef, float noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @ui_but_anim_expression_get(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #5
  %5 = call fastcc ptr @ui_but_get_fcurve(ptr noundef %0, ptr noundef null, ptr noundef nonnull %4) #6
  %6 = icmp ne ptr %5, null
  %7 = load i8, ptr %4, align 1
  %8 = icmp ne i8 %7, 0
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %21

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.FCurve, ptr %5, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !55
  %13 = icmp eq ptr %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.ChannelDriver, ptr %12, i64 0, i32 5
  %16 = load i32, ptr %15, align 8, !tbaa !57
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.ChannelDriver, ptr %12, i64 0, i32 1
  %20 = call ptr @BLI_strncpy(ptr noundef %1, ptr noundef nonnull %19, i64 noundef %2) #7
  br label %21

21:                                               ; preds = %3, %14, %10, %18
  %22 = phi i8 [ 1, %18 ], [ 0, %10 ], [ 0, %14 ], [ 0, %3 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #5
  ret i8 %22
}

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @ui_but_anim_expression_set(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #5
  %4 = call fastcc ptr @ui_but_get_fcurve(ptr noundef %0, ptr noundef null, ptr noundef nonnull %3) #6
  %5 = icmp ne ptr %4, null
  %6 = load i8, ptr %3, align 1
  %7 = icmp ne i8 %6, 0
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %31

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.FCurve, ptr %4, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !55
  %12 = icmp eq ptr %11, null
  br i1 %12, label %31, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ChannelDriver, ptr %11, i64 0, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !57
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %31

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.ChannelDriver, ptr %11, i64 0, i32 1
  %19 = call ptr @BLI_strncpy_utf8(ptr noundef nonnull %18, ptr noundef %1, i64 noundef 256) #7
  %20 = getelementptr inbounds %struct.ChannelDriver, ptr %11, i64 0, i32 6
  %21 = load i32, ptr %20, align 4, !tbaa !59
  %22 = and i32 %21, -10
  %23 = or disjoint i32 %22, 8
  store i32 %23, ptr %20, align 4, !tbaa !59
  %24 = getelementptr inbounds %struct.FCurve, ptr %4, i64 0, i32 9
  %25 = load i16, ptr %24, align 8, !tbaa !60
  %26 = and i16 %25, -1025
  store i16 %26, ptr %24, align 8, !tbaa !60
  %27 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 74
  %28 = load ptr, ptr %27, align 8, !tbaa !48
  %29 = getelementptr inbounds %struct.uiBlock, ptr %28, i64 0, i32 48
  %30 = load ptr, ptr %29, align 8, !tbaa !49
  call void @WM_event_add_notifier(ptr noundef %30, i32 noundef 239468544, ptr noundef null) #7
  br label %31

31:                                               ; preds = %2, %13, %9, %17
  %32 = phi i8 [ 1, %17 ], [ 0, %9 ], [ 0, %13 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #5
  ret i8 %32
}

; Function Attrs: optsize
declare ptr @BLI_strncpy_utf8(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @ui_but_anim_expression_create(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 74
  %4 = load ptr, ptr %3, align 8, !tbaa !48
  %5 = getelementptr inbounds %struct.uiBlock, ptr %4, i64 0, i32 48
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  %7 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 54
  %8 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 54, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !61
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 55
  %13 = load ptr, ptr %12, align 8, !tbaa !54
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %11, %2
  %16 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !62
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %69, label %19

19:                                               ; preds = %15
  %20 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.12)
  br label %69

21:                                               ; preds = %11
  %22 = tail call zeroext i8 @RNA_property_array_check(ptr noundef nonnull %13) #7
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 56
  %26 = load i32, ptr %25, align 8, !tbaa !47
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !62
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %69, label %32

32:                                               ; preds = %28
  %33 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %69

34:                                               ; preds = %24, %21
  %35 = load ptr, ptr %7, align 8, !tbaa !64
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.ID, ptr %35, i64 0, i32 4
  %39 = load i16, ptr %38, align 8, !tbaa !65
  switch i16 %39, label %46 [
    i16 16717, label %40
    i16 17748, label %40
  ]

40:                                               ; preds = %37, %37, %34
  %41 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !62
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %69, label %44

44:                                               ; preds = %40
  %45 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef %35) #6
  br label %69

46:                                               ; preds = %37
  %47 = load ptr, ptr %12, align 8, !tbaa !54
  %48 = tail call ptr @RNA_path_from_ID_to_property(ptr noundef nonnull %7, ptr noundef %47) #7
  %49 = icmp eq ptr %48, null
  br i1 %49, label %69, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 56
  %52 = load i32, ptr %51, align 8, !tbaa !47
  %53 = tail call ptr @verify_driver_fcurve(ptr noundef nonnull %35, ptr noundef nonnull %48, i32 noundef %52, i16 noundef signext 1) #7
  %54 = icmp eq ptr %53, null
  br i1 %54, label %66, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.FCurve, ptr %53, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !55
  %58 = icmp eq ptr %57, null
  br i1 %58, label %66, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.ChannelDriver, ptr %57, i64 0, i32 5
  store i32 1, ptr %60, align 8, !tbaa !57
  %61 = getelementptr inbounds %struct.ChannelDriver, ptr %57, i64 0, i32 1
  %62 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %61, ptr noundef %1, i64 noundef 256) #7
  %63 = getelementptr inbounds %struct.ChannelDriver, ptr %57, i64 0, i32 6
  %64 = load i32, ptr %63, align 4, !tbaa !59
  %65 = or i32 %64, 8
  store i32 %65, ptr %63, align 4, !tbaa !59
  tail call void @WM_event_add_notifier(ptr noundef %6, i32 noundef 239468544, ptr noundef null) #7
  br label %66

66:                                               ; preds = %55, %59, %50
  %67 = phi i8 [ 0, %50 ], [ 1, %59 ], [ 0, %55 ]
  %68 = load ptr, ptr @MEM_freeN, align 8, !tbaa !66
  tail call void %68(ptr noundef nonnull %48) #7
  br label %69

69:                                               ; preds = %46, %40, %44, %28, %32, %15, %19, %66
  %70 = phi i8 [ %67, %66 ], [ 0, %19 ], [ 0, %15 ], [ 0, %32 ], [ 0, %28 ], [ 0, %44 ], [ 0, %40 ], [ 0, %46 ]
  ret i8 %70
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @RNA_property_array_check(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_path_from_ID_to_property(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @verify_driver_fcurve(ptr noundef, ptr noundef, i32 noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ui_but_anim_autokey(ptr noundef %0, ptr noundef %1, ptr noundef %2, float noundef %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #5
  %7 = call fastcc ptr @ui_but_get_fcurve(ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %6) #6
  %8 = icmp eq ptr %7, null
  %9 = load i8, ptr %6, align 1
  %10 = icmp ne i8 %9, 0
  %11 = select i1 %8, i1 true, i1 %10
  br i1 %11, label %34, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 54
  %14 = load ptr, ptr %13, align 8, !tbaa !64
  %15 = call i32 @autokeyframe_cfra_can_key(ptr noundef %2, ptr noundef %14) #7
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %34, label %17

17:                                               ; preds = %12
  %18 = call ptr @CTX_wm_reports(ptr noundef %0) #7
  %19 = call signext i16 @ANIM_get_keyframing_flags(ptr noundef %2, i16 noundef signext 1) #7
  %20 = getelementptr inbounds %struct.FCurve, ptr %7, i64 0, i32 9
  %21 = load i16, ptr %20, align 8, !tbaa !60
  %22 = and i16 %21, -3
  store i16 %22, ptr %20, align 8, !tbaa !60
  %23 = load ptr, ptr %5, align 8, !tbaa !66
  %24 = getelementptr inbounds %struct.FCurve, ptr %7, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !67
  %26 = icmp eq ptr %25, null
  %27 = getelementptr inbounds %struct.bActionGroup, ptr %25, i64 0, i32 5
  %28 = select i1 %26, ptr null, ptr %27
  %29 = getelementptr inbounds %struct.FCurve, ptr %7, i64 0, i32 12
  %30 = load ptr, ptr %29, align 8, !tbaa !68
  %31 = getelementptr inbounds %struct.FCurve, ptr %7, i64 0, i32 11
  %32 = load i32, ptr %31, align 4, !tbaa !69
  %33 = call signext i16 @insert_keyframe(ptr noundef %18, ptr noundef %14, ptr noundef %23, ptr noundef %28, ptr noundef %30, i32 noundef %32, float noundef %3, i16 noundef signext %19) #7
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239468545, ptr noundef null) #7
  br label %34

34:                                               ; preds = %12, %17, %4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  ret void
}

; Function Attrs: optsize
declare i32 @autokeyframe_cfra_can_key(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_reports(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare signext i16 @ANIM_get_keyframing_flags(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare signext i16 @insert_keyframe(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, float noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ui_but_anim_insert_keyframe(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef nonnull @.str.3, i16 noundef signext 0, ptr noundef null) #7
  ret void
}

; Function Attrs: optsize
declare i32 @WM_operator_name_call(ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ui_but_anim_delete_keyframe(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef nonnull @.str.4, i16 noundef signext 0, ptr noundef null) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ui_but_anim_clear_keyframe(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef nonnull @.str.5, i16 noundef signext 0, ptr noundef null) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ui_but_anim_add_driver(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef nonnull @.str.6, i16 noundef signext 0, ptr noundef null) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ui_but_anim_remove_driver(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef nonnull @.str.7, i16 noundef signext 0, ptr noundef null) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ui_but_anim_copy_driver(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef nonnull @.str.8, i16 noundef signext 0, ptr noundef null) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ui_but_anim_paste_driver(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef nonnull @.str.9, i16 noundef signext 0, ptr noundef null) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ui_but_anim_add_keyingset(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef nonnull @.str.10, i16 noundef signext 0, ptr noundef null) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ui_but_anim_remove_keyingset(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef nonnull @.str.11, i16 noundef signext 0, ptr noundef null) #7
  ret void
}

; Function Attrs: optsize
declare ptr @rna_get_fcurve_context_ui(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #4

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind }
attributes #6 = { optsize }
attributes #7 = { nounwind optsize }

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
!34 = !{!35, !39, i64 16}
!35 = !{!"uiBut", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !40, i64 32, !40, i64 34, !40, i64 36, !40, i64 38, !40, i64 40, !40, i64 42, !40, i64 44, !40, i64 46, !40, i64 48, !36, i64 56, !37, i64 64, !37, i64 192, !41, i64 592, !36, i64 608, !42, i64 616, !42, i64 620, !42, i64 624, !42, i64 628, !42, i64 632, !42, i64 636, !37, i64 640, !36, i64 648, !36, i64 656, !36, i64 664, !36, i64 672, !36, i64 680, !36, i64 688, !36, i64 696, !36, i64 704, !36, i64 712, !36, i64 720, !36, i64 728, !36, i64 736, !36, i64 744, !36, i64 752, !37, i64 760, !36, i64 768, !36, i64 776, !39, i64 784, !37, i64 788, !37, i64 789, !37, i64 790, !37, i64 791, !37, i64 792, !40, i64 794, !40, i64 796, !36, i64 800, !36, i64 808, !43, i64 816, !36, i64 840, !39, i64 848, !43, i64 856, !36, i64 880, !36, i64 888, !36, i64 896, !40, i64 904, !37, i64 906, !37, i64 907, !36, i64 912, !36, i64 920, !42, i64 928, !36, i64 936, !36, i64 944, !36, i64 952, !36, i64 960, !36, i64 968, !36, i64 976, !36, i64 984, !36, i64 992}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"short", !37, i64 0}
!41 = !{!"rctf", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12}
!42 = !{!"float", !37, i64 0}
!43 = !{!"PointerRNA", !44, i64 0, !36, i64 8, !36, i64 16}
!44 = !{!"", !36, i64 0}
!45 = !{!37, !37, i64 0}
!46 = !{!"interface_anim.c:ui_but_get_fcurve"}
!47 = !{!35, !39, i64 848}
!48 = !{!35, !36, i64 992}
!49 = !{!50, !36, i64 528}
!50 = !{!"uiBlock", !36, i64 0, !36, i64 8, !51, i64 16, !36, i64 32, !36, i64 40, !51, i64 48, !51, i64 64, !36, i64 80, !51, i64 88, !37, i64 104, !37, i64 232, !41, i64 296, !42, i64 312, !39, i64 316, !36, i64 320, !36, i64 328, !36, i64 336, !36, i64 344, !36, i64 352, !36, i64 360, !36, i64 368, !36, i64 376, !36, i64 384, !36, i64 392, !36, i64 400, !36, i64 408, !36, i64 416, !39, i64 424, !40, i64 428, !37, i64 430, !37, i64 431, !37, i64 432, !37, i64 433, !52, i64 440, !36, i64 448, !37, i64 456, !37, i64 457, !37, i64 458, !37, i64 459, !39, i64 460, !39, i64 464, !39, i64 468, !39, i64 472, !39, i64 476, !41, i64 480, !51, i64 496, !36, i64 512, !36, i64 520, !36, i64 528, !36, i64 536, !37, i64 544, !37, i64 556, !37, i64 557, !53, i64 624}
!51 = !{!"ListBase", !36, i64 0, !36, i64 8}
!52 = !{!"double", !37, i64 0}
!53 = !{!"PieMenuData", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !52, i64 32, !39, i64 40, !39, i64 44, !42, i64 48}
!54 = !{!35, !36, i64 840}
!55 = !{!56, !36, i64 24}
!56 = !{!"FCurve", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !51, i64 32, !36, i64 48, !36, i64 56, !39, i64 64, !42, i64 68, !40, i64 72, !40, i64 74, !39, i64 76, !36, i64 80, !39, i64 88, !37, i64 92, !42, i64 104, !42, i64 108}
!57 = !{!58, !39, i64 288}
!58 = !{!"ChannelDriver", !51, i64 0, !37, i64 16, !36, i64 272, !42, i64 280, !42, i64 284, !39, i64 288, !39, i64 292}
!59 = !{!58, !39, i64 292}
!60 = !{!56, !40, i64 72}
!61 = !{!35, !36, i64 832}
!62 = !{!63, !39, i64 2100}
!63 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !51, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !40, i64 2084, !40, i64 2086, !40, i64 2088, !37, i64 2090, !40, i64 2092, !39, i64 2096, !39, i64 2100, !37, i64 2104, !39, i64 2108, !39, i64 2112, !37, i64 2116}
!64 = !{!35, !36, i64 816}
!65 = !{!40, !40, i64 0}
!66 = !{!36, !36, i64 0}
!67 = !{!56, !36, i64 16}
!68 = !{!56, !36, i64 80}
!69 = !{!56, !39, i64 76}
