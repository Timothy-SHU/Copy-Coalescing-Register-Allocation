; ModuleID = 'blender/source/blender/editors/armature/pose_group.c'
source_filename = "blender/source/blender/editors/armature/pose_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ListBase = type { ptr, ptr }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.bPose = type { %struct.ListBase, ptr, i16, i16, i32, i32, float, [3 x float], [3 x float], %struct.ListBase, i32, i32, ptr, ptr, %struct.bAnimVizSettings, [64 x i8] }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.bActionGroup = type { ptr, ptr, %struct.ListBase, i32, i32, [64 x i8], %struct.ThemeWireColor }
%struct.ThemeWireColor = type { [4 x i8], [4 x i8], [4 x i8], i16, i16 }
%struct.CollectionPointerLink = type { ptr, ptr, %struct.PointerRNA }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.bPoseChannel = type { ptr, ptr, ptr, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i8, i8, [6 x i8], ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], float, i16, i16, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.tSortActionGroup = type { ptr, i32 }
%struct.Bone = type { ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], float, [3 x float], [3 x float], [3 x [3 x float]], i32, [3 x float], [3 x float], [4 x [4 x float]], float, float, float, float, float, float, float, float, float, float, [3 x float], i32, i16, [1 x i16] }

@.str = private unnamed_addr constant [15 x i8] c"Add Bone Group\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"POSE_OT_group_add\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Add a new bone group\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Remove Bone Group\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"POSE_OT_group_remove\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Remove the active bone group\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Add Selected to Bone Group\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"POSE_OT_group_assign\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"Add selected bones to the chosen bone group\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"Bone Group Index\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"Remove Selected from Bone Groups\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"POSE_OT_group_unassign\00", align 1
@.str.14 = private unnamed_addr constant [43 x i8] c"Remove selected bones from all bone groups\00", align 1
@POSE_OT_group_move.group_slot_move = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.15, i32 0, ptr @.str.16, ptr @.str.11 }, %struct.EnumPropertyItem { i32 -1, ptr @.str.17, i32 0, ptr @.str.18, ptr @.str.11 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.15 = private unnamed_addr constant [3 x i8] c"UP\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"Up\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"DOWN\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"Down\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"Move Bone Group\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"POSE_OT_group_move\00", align 1
@.str.21 = private unnamed_addr constant [60 x i8] c"Change position of active Bone Group in list of Bone Groups\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"direction\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"Direction\00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"Direction to move, UP or DOWN\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"Sort Bone Groups\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"POSE_OT_group_sort\00", align 1
@.str.27 = private unnamed_addr constant [51 x i8] c"Sort Bone Groups by their names in ascending order\00", align 1
@.str.28 = private unnamed_addr constant [27 x i8] c"Select Bones of Bone Group\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"POSE_OT_group_select\00", align 1
@.str.30 = private unnamed_addr constant [34 x i8] c"Select bones in active Bone Group\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"Deselect Bone Group\00", align 1
@.str.32 = private unnamed_addr constant [23 x i8] c"POSE_OT_group_deselect\00", align 1
@.str.33 = private unnamed_addr constant [36 x i8] c"Deselect bones of active Bone Group\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"assign\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"New Group\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.36 = private unnamed_addr constant [17 x i8] c"sort bone groups\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @POSE_OT_group_add(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.1, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pose_group_add_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_posemode_context, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @pose_group_add_exec(ptr noundef %0, ptr nocapture readnone %1) #1 !PGOFuncName !47 {
  %3 = tail call ptr @ED_pose_object_from_context(ptr noundef %0) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 18
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @BKE_pose_add_group(ptr noundef nonnull %7, ptr noundef null) #8
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85196800, ptr noundef nonnull %3) #8
  br label %11

11:                                               ; preds = %2, %5, %9
  %12 = phi i32 [ 4, %9 ], [ 2, %5 ], [ 2, %2 ]
  ret i32 %12
}

; Function Attrs: optsize
declare i32 @ED_operator_posemode_context(ptr noundef) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @POSE_OT_group_remove(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.3, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.4, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.5, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pose_group_remove_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_posemode_context, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @pose_group_remove_exec(ptr noundef %0, ptr nocapture readnone %1) #1 !PGOFuncName !55 {
  %3 = tail call ptr @ED_pose_object_from_context(ptr noundef %0) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 18
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.bPose, ptr %7, i64 0, i32 10
  %11 = load i32, ptr %10, align 8, !tbaa !56
  tail call void @BKE_pose_remove_group_index(ptr noundef nonnull %7, i32 noundef %11) #8
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85196800, ptr noundef nonnull %3) #8
  br label %12

12:                                               ; preds = %2, %5, %9
  %13 = phi i32 [ 4, %9 ], [ 2, %5 ], [ 2, %2 ]
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @POSE_OT_group_assign(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.6, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.7, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.8, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @pose_groups_menu_invoke, ptr %4, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pose_group_assign_exec, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_posemode_context, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !59
  %10 = tail call ptr @RNA_def_int(ptr noundef %9, ptr noundef nonnull @.str.9, i32 noundef 0, i32 noundef 0, i32 noundef 2147483647, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 0, i32 noundef 10) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @pose_groups_menu_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #1 !PGOFuncName !60 {
  %4 = tail call ptr @ED_pose_object_from_context(ptr noundef %0) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %44, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 18
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = icmp eq ptr %8, null
  br i1 %9, label %44, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.bPose, ptr %8, i64 0, i32 10
  %12 = load i32, ptr %11, align 8, !tbaa !56
  %13 = icmp slt i32 %12, 1
  br i1 %13, label %14, label %36

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !61
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  %18 = tail call ptr @uiPupMenuBegin(ptr noundef %0, ptr noundef %17, i32 noundef 0) #8
  %19 = tail call ptr @uiPupMenuLayout(ptr noundef %18) #8
  %20 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 2
  %21 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %20, ptr noundef nonnull dereferenceable(1) @.str.34) #9
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %14
  tail call void @uiItemIntO(ptr noundef %19, ptr noundef nonnull @.str.35, i32 noundef 0, ptr noundef nonnull %20, ptr noundef nonnull @.str.9, i32 noundef 0) #8
  tail call void @uiItemS(ptr noundef %19) #8
  br label %24

24:                                               ; preds = %23, %14
  %25 = getelementptr inbounds %struct.bPose, ptr %8, i64 0, i32 9
  %26 = load ptr, ptr %25, align 8, !tbaa !63
  %27 = icmp eq ptr %26, null
  br i1 %27, label %35, label %28

28:                                               ; preds = %24, %28
  %29 = phi ptr [ %33, %28 ], [ %26, %24 ]
  %30 = phi i32 [ %32, %28 ], [ 1, %24 ]
  %31 = getelementptr inbounds %struct.bActionGroup, ptr %29, i64 0, i32 5
  tail call void @uiItemIntO(ptr noundef %19, ptr noundef nonnull %31, i32 noundef 0, ptr noundef nonnull %20, ptr noundef nonnull @.str.9, i32 noundef %30) #8
  %32 = add nuw nsw i32 %30, 1
  %33 = load ptr, ptr %29, align 8, !tbaa !63
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %28, !llvm.loop !64

35:                                               ; preds = %28, %24
  tail call void @uiPupMenuEnd(ptr noundef %0, ptr noundef %18) #8
  br label %44

36:                                               ; preds = %10
  %37 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %38 = load ptr, ptr %37, align 8, !tbaa !66
  tail call void @RNA_int_set(ptr noundef %38, ptr noundef nonnull @.str.9, i32 noundef %12) #8
  %39 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %40 = load ptr, ptr %39, align 8, !tbaa !61
  %41 = getelementptr inbounds %struct.wmOperatorType, ptr %40, i64 0, i32 4
  %42 = load ptr, ptr %41, align 8, !tbaa !44
  %43 = tail call i32 %42(ptr noundef %0, ptr noundef %1) #8
  br label %44

44:                                               ; preds = %3, %6, %36, %35
  %45 = phi i32 [ 32, %35 ], [ %43, %36 ], [ 2, %6 ], [ 2, %3 ]
  ret i32 %45
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @pose_group_assign_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 !PGOFuncName !67 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @ED_pose_object_from_context(ptr noundef %0) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %35, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 18
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = icmp eq ptr %8, null
  br i1 %9, label %35, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !66
  %13 = tail call i32 @RNA_int_get(ptr noundef %12, ptr noundef nonnull @.str.9) #8
  %14 = getelementptr inbounds %struct.bPose, ptr %8, i64 0, i32 10
  store i32 %13, ptr %14, align 8, !tbaa !56
  %15 = icmp eq i32 %13, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load ptr, ptr %7, align 8, !tbaa !48
  %18 = tail call ptr @BKE_pose_add_group(ptr noundef %17, ptr noundef null) #8
  br label %19

19:                                               ; preds = %16, %10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  %20 = call i32 @CTX_data_selected_pose_bones(ptr noundef %0, ptr noundef nonnull %3) #8
  %21 = load ptr, ptr %3, align 8, !tbaa !63
  %22 = icmp eq ptr %21, null
  br i1 %22, label %33, label %23

23:                                               ; preds = %19
  %24 = load i32, ptr %14, align 8, !tbaa !56
  %25 = trunc i32 %24 to i16
  br label %26

26:                                               ; preds = %23, %26
  %27 = phi ptr [ %21, %23 ], [ %31, %26 ]
  %28 = getelementptr inbounds %struct.CollectionPointerLink, ptr %27, i64 0, i32 2, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !68
  %30 = getelementptr inbounds %struct.bPoseChannel, ptr %29, i64 0, i32 8
  store i16 %25, ptr %30, align 2, !tbaa !72
  %31 = load ptr, ptr %27, align 8, !tbaa !63
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %26, !llvm.loop !74

33:                                               ; preds = %26, %19
  %34 = phi i32 [ 2, %19 ], [ 4, %26 ]
  call void @BLI_freelistN(ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85196800, ptr noundef nonnull %4) #8
  br label %35

35:                                               ; preds = %33, %2, %6
  %36 = phi i32 [ 2, %6 ], [ 2, %2 ], [ %34, %33 ]
  ret i32 %36
}

; Function Attrs: optsize
declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @POSE_OT_group_unassign(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.12, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.13, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.14, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pose_group_unassign_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_posemode_context, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @pose_group_unassign_exec(ptr noundef %0, ptr nocapture readnone %1) #1 !PGOFuncName !75 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @ED_pose_object_from_context(ptr noundef %0) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %32, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 18
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = icmp eq ptr %8, null
  br i1 %9, label %32, label %10

10:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  %11 = call i32 @CTX_data_selected_pose_bones(ptr noundef %0, ptr noundef nonnull %3) #8
  %12 = load ptr, ptr %3, align 8, !tbaa !63
  %13 = icmp eq ptr %12, null
  br i1 %13, label %30, label %14

14:                                               ; preds = %10, %23
  %15 = phi ptr [ %25, %23 ], [ %12, %10 ]
  %16 = phi i8 [ %24, %23 ], [ 0, %10 ]
  %17 = getelementptr inbounds %struct.CollectionPointerLink, ptr %15, i64 0, i32 2, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !68
  %19 = getelementptr inbounds %struct.bPoseChannel, ptr %18, i64 0, i32 8
  %20 = load i16, ptr %19, align 2, !tbaa !72
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %14
  store i16 0, ptr %19, align 2, !tbaa !72
  br label %23

23:                                               ; preds = %22, %14
  %24 = phi i8 [ 1, %22 ], [ %16, %14 ]
  %25 = load ptr, ptr %15, align 8, !tbaa !63
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %14, !llvm.loop !76

27:                                               ; preds = %23
  %28 = icmp eq i8 %24, 0
  %29 = select i1 %28, i32 2, i32 4
  br label %30

30:                                               ; preds = %27, %10
  %31 = phi i32 [ 2, %10 ], [ %29, %27 ]
  call void @BLI_freelistN(ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85196800, ptr noundef nonnull %4) #8
  br label %32

32:                                               ; preds = %30, %2, %6
  %33 = phi i32 [ 2, %6 ], [ 2, %2 ], [ %31, %30 ]
  ret i32 %33
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @POSE_OT_group_move(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.19, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.20, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.21, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @group_move_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_posemode_context, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !59
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.22, ptr noundef nonnull @POSE_OT_group_move.group_slot_move, i32 noundef 0, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @group_move_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 !PGOFuncName !77 {
  %3 = tail call ptr @ED_pose_object_from_context(ptr noundef %0) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 18
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  br label %8

8:                                                ; preds = %2, %5
  %9 = phi ptr [ %7, %5 ], [ null, %2 ]
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !66
  %12 = tail call i32 @RNA_enum_get(ptr noundef %11, ptr noundef nonnull @.str.22) #8
  %13 = icmp eq ptr %9, null
  %14 = select i1 %4, i1 true, i1 %13
  br i1 %14, label %60, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.bPose, ptr %9, i64 0, i32 10
  %17 = load i32, ptr %16, align 8, !tbaa !56
  %18 = icmp slt i32 %17, 1
  br i1 %18, label %60, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.bPose, ptr %9, i64 0, i32 9
  %21 = add nsw i32 %17, -1
  %22 = tail call ptr @BLI_findlink(ptr noundef nonnull %20, i32 noundef %21) #8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %60, label %24

24:                                               ; preds = %19
  %25 = load i32, ptr %16, align 8, !tbaa !56
  %26 = icmp eq i32 %12, 1
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.bActionGroup, ptr %22, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !78
  %30 = icmp eq ptr %29, null
  br i1 %30, label %60, label %31

31:                                               ; preds = %27
  tail call void @BLI_remlink(ptr noundef nonnull %20, ptr noundef nonnull %22) #8
  tail call void @BLI_insertlinkbefore(ptr noundef nonnull %20, ptr noundef nonnull %29, ptr noundef nonnull %22) #8
  br label %36

32:                                               ; preds = %24
  %33 = load ptr, ptr %22, align 8, !tbaa !81
  %34 = icmp eq ptr %33, null
  br i1 %34, label %60, label %35

35:                                               ; preds = %32
  tail call void @BLI_remlink(ptr noundef nonnull %20, ptr noundef nonnull %22) #8
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %20, ptr noundef nonnull %33, ptr noundef nonnull %22) #8
  br label %36

36:                                               ; preds = %35, %31
  %37 = phi i32 [ 1, %35 ], [ -1, %31 ]
  %38 = add nsw i32 %25, %37
  %39 = load i32, ptr %16, align 8, !tbaa !56
  %40 = add nsw i32 %39, %37
  store i32 %40, ptr %16, align 8, !tbaa !56
  %41 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 18
  %42 = load ptr, ptr %41, align 8, !tbaa !48
  %43 = load ptr, ptr %42, align 8, !tbaa !63
  %44 = icmp eq ptr %43, null
  br i1 %44, label %59, label %45

45:                                               ; preds = %36, %56
  %46 = phi ptr [ %57, %56 ], [ %43, %36 ]
  %47 = getelementptr inbounds %struct.bPoseChannel, ptr %46, i64 0, i32 8
  %48 = load i16, ptr %47, align 2, !tbaa !72
  %49 = sext i16 %48 to i32
  %50 = icmp eq i32 %38, %49
  br i1 %50, label %53, label %51

51:                                               ; preds = %45
  %52 = icmp eq i32 %25, %49
  br i1 %52, label %53, label %56

53:                                               ; preds = %51, %45
  %54 = phi i32 [ %25, %45 ], [ %38, %51 ]
  %55 = trunc i32 %54 to i16
  store i16 %55, ptr %47, align 2, !tbaa !72
  br label %56

56:                                               ; preds = %53, %51
  %57 = load ptr, ptr %46, align 8, !tbaa !63
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %45, !llvm.loop !82

59:                                               ; preds = %56, %36
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85196800, ptr noundef %3) #8
  br label %60

60:                                               ; preds = %32, %27, %19, %15, %8, %59
  %61 = phi i32 [ 4, %59 ], [ 2, %8 ], [ 2, %15 ], [ 2, %19 ], [ 4, %27 ], [ 4, %32 ]
  ret i32 %61
}

; Function Attrs: optsize
declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @POSE_OT_group_sort(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.25, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.26, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.27, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @group_sort_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_posemode_context, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @group_sort_exec(ptr noundef %0, ptr nocapture readnone %1) #1 !PGOFuncName !83 {
  %3 = tail call ptr @ED_pose_object_from_context(ptr noundef %0) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %69, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 18
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  %8 = icmp eq ptr %7, null
  br i1 %8, label %69, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.bPose, ptr %7, i64 0, i32 10
  %11 = load i32, ptr %10, align 8, !tbaa !56
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %69, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.bPose, ptr %7, i64 0, i32 9
  %15 = tail call i32 @BLI_countlist(ptr noundef nonnull %14) #8
  %16 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !63
  %17 = sext i32 %15 to i64
  %18 = shl nsw i64 %17, 4
  %19 = tail call ptr %16(i64 noundef %18, ptr noundef nonnull @.str.36) #8
  %20 = load ptr, ptr %14, align 8, !tbaa !63
  %21 = icmp eq ptr %20, null
  br i1 %21, label %31, label %22

22:                                               ; preds = %13, %22
  %23 = phi i64 [ %26, %22 ], [ 0, %13 ]
  %24 = phi ptr [ %29, %22 ], [ %20, %13 ]
  %25 = getelementptr inbounds %struct.tSortActionGroup, ptr %19, i64 %23
  store ptr %24, ptr %25, align 8, !tbaa !84
  %26 = add nuw i64 %23, 1
  %27 = getelementptr inbounds %struct.tSortActionGroup, ptr %19, i64 %23, i32 1
  %28 = trunc i64 %26 to i32
  store i32 %28, ptr %27, align 8, !tbaa !86
  %29 = load ptr, ptr %24, align 8, !tbaa !63
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %22, !llvm.loop !87

31:                                               ; preds = %22, %13
  tail call void @qsort(ptr noundef %19, i64 noundef %17, i64 noundef 16, ptr noundef nonnull @compare_agroup) #8
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %14) #11
  %32 = icmp sgt i32 %15, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %31
  %34 = zext nneg i32 %15 to i64
  br label %35

35:                                               ; preds = %33, %35
  %36 = phi i64 [ 0, %33 ], [ %39, %35 ]
  %37 = getelementptr inbounds %struct.tSortActionGroup, ptr %19, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !84
  tail call void @BLI_addtail(ptr noundef nonnull %14, ptr noundef %38) #8
  %39 = add nuw nsw i64 %36, 1
  %40 = icmp eq i64 %39, %34
  br i1 %40, label %41, label %35, !llvm.loop !88

41:                                               ; preds = %35, %31
  %42 = load ptr, ptr %6, align 8, !tbaa !48
  %43 = load ptr, ptr %42, align 8, !tbaa !63
  %44 = icmp eq ptr %43, null
  br i1 %44, label %67, label %45

45:                                               ; preds = %41
  %46 = zext nneg i32 %15 to i64
  br label %47

47:                                               ; preds = %45, %64
  %48 = phi ptr [ %43, %45 ], [ %65, %64 ]
  br i1 %32, label %49, label %64

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.bPoseChannel, ptr %48, i64 0, i32 8
  %51 = load i16, ptr %50, align 2, !tbaa !72
  %52 = sext i16 %51 to i32
  br label %53

53:                                               ; preds = %49, %61
  %54 = phi i64 [ 0, %49 ], [ %62, %61 ]
  %55 = getelementptr inbounds %struct.tSortActionGroup, ptr %19, i64 %54, i32 1
  %56 = load i32, ptr %55, align 8, !tbaa !86
  %57 = icmp eq i32 %56, %52
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = trunc i64 %54 to i16
  %60 = add i16 %59, 1
  store i16 %60, ptr %50, align 2, !tbaa !72
  br label %64

61:                                               ; preds = %53
  %62 = add nuw nsw i64 %54, 1
  %63 = icmp eq i64 %62, %46
  br i1 %63, label %64, label %53, !llvm.loop !89

64:                                               ; preds = %61, %47, %58
  %65 = load ptr, ptr %48, align 8, !tbaa !63
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %47, !llvm.loop !90

67:                                               ; preds = %64, %41
  %68 = load ptr, ptr @MEM_freeN, align 8, !tbaa !63
  tail call void %68(ptr noundef %19) #8
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85196800, ptr noundef nonnull %3) #8
  br label %69

69:                                               ; preds = %2, %9, %5, %67
  %70 = phi i32 [ 4, %67 ], [ 2, %5 ], [ 2, %9 ], [ 2, %2 ]
  ret i32 %70
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @POSE_OT_group_select(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.28, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.29, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.30, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pose_group_select_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_posemode_context, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @pose_group_select_exec(ptr noundef %0, ptr nocapture readnone %1) #1 !PGOFuncName !91 {
  %3 = tail call ptr @ED_pose_object_from_context(ptr noundef %0) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 18
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call fastcc void @pose_group_select(ptr noundef %0, ptr noundef nonnull %3, i8 noundef zeroext 1) #11
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85196800, ptr noundef nonnull %3) #8
  br label %10

10:                                               ; preds = %2, %5, %9
  %11 = phi i32 [ 4, %9 ], [ 2, %5 ], [ 2, %2 ]
  ret i32 %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @POSE_OT_group_deselect(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.31, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.32, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.33, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pose_group_deselect_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_posemode_context, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @pose_group_deselect_exec(ptr noundef %0, ptr nocapture readnone %1) #1 !PGOFuncName !92 {
  %3 = tail call ptr @ED_pose_object_from_context(ptr noundef %0) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 18
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call fastcc void @pose_group_select(ptr noundef %0, ptr noundef nonnull %3, i8 noundef zeroext 0) #11
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85196800, ptr noundef nonnull %3) #8
  br label %10

10:                                               ; preds = %2, %5, %9
  %11 = phi i32 [ 4, %9 ], [ 2, %5 ], [ 2, %2 ]
  ret i32 %11
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare ptr @ED_pose_object_from_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_pose_add_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare void @BKE_pose_remove_group_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiPupMenuBegin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiPupMenuLayout(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @uiItemIntO(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiItemS(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiPupMenuEnd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CTX_data_selected_pose_bones(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_insertlinkbefore(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_insertlinkafter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree optsize
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @compare_agroup(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 !PGOFuncName !93 {
  %3 = load ptr, ptr %0, align 8, !tbaa !84
  %4 = getelementptr inbounds %struct.bActionGroup, ptr %3, i64 0, i32 5
  %5 = load ptr, ptr %1, align 8, !tbaa !84
  %6 = getelementptr inbounds %struct.bActionGroup, ptr %5, i64 0, i32 5
  %7 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %6) #9
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @BLI_listbase_clear(ptr nocapture noundef writeonly %0) unnamed_addr #0 !PGOFuncName !94 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pose_group_select(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #1 !PGOFuncName !95 {
  %4 = alloca %struct.ListBase, align 8
  %5 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 18
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #10
  %7 = call i32 @CTX_data_visible_pose_bones(ptr noundef %0, ptr noundef nonnull %4) #8
  %8 = load ptr, ptr %4, align 8, !tbaa !63
  %9 = icmp eq ptr %8, null
  br i1 %9, label %40, label %10

10:                                               ; preds = %3
  %11 = icmp eq i8 %2, 0
  %12 = getelementptr inbounds %struct.bPose, ptr %6, i64 0, i32 10
  br label %13

13:                                               ; preds = %10, %37
  %14 = phi ptr [ %8, %10 ], [ %38, %37 ]
  %15 = getelementptr inbounds %struct.CollectionPointerLink, ptr %14, i64 0, i32 2, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !68
  %17 = getelementptr inbounds %struct.bPoseChannel, ptr %16, i64 0, i32 12
  %18 = load ptr, ptr %17, align 8, !tbaa !96
  %19 = getelementptr inbounds %struct.Bone, ptr %18, i64 0, i32 10
  %20 = load i32, ptr %19, align 8, !tbaa !97
  %21 = and i32 %20, 2097152
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %13
  %24 = getelementptr inbounds %struct.bPoseChannel, ptr %16, i64 0, i32 8
  %25 = load i16, ptr %24, align 2, !tbaa !72
  %26 = sext i16 %25 to i32
  %27 = load i32, ptr %12, align 8, !tbaa !56
  %28 = icmp eq i32 %27, %26
  br i1 %11, label %32, label %29

29:                                               ; preds = %23
  br i1 %28, label %30, label %37

30:                                               ; preds = %29
  %31 = or i32 %20, 1
  br label %35

32:                                               ; preds = %23
  br i1 %28, label %33, label %37

33:                                               ; preds = %32
  %34 = and i32 %20, -2097154
  br label %35

35:                                               ; preds = %33, %30
  %36 = phi i32 [ %31, %30 ], [ %34, %33 ]
  store i32 %36, ptr %19, align 8, !tbaa !97
  br label %37

37:                                               ; preds = %35, %29, %32, %13
  %38 = load ptr, ptr %14, align 8, !tbaa !63
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %13, !llvm.loop !99

40:                                               ; preds = %37, %3
  call void @BLI_freelistN(ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #10
  ret void
}

; Function Attrs: optsize
declare i32 @CTX_data_visible_pose_bones(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind optsize }
attributes #9 = { nounwind optsize willreturn memory(read) }
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
!44 = !{!35, !36, i64 32}
!45 = !{!35, !36, i64 72}
!46 = !{!35, !41, i64 184}
!47 = !{!"pose_group.c:pose_group_add_exec"}
!48 = !{!49, !36, i64 288}
!49 = !{!"Object", !50, i64 0, !36, i64 120, !36, i64 128, !41, i64 136, !41, i64 138, !51, i64 140, !51, i64 144, !51, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !52, i64 312, !36, i64 360, !39, i64 368, !39, i64 384, !39, i64 400, !39, i64 416, !51, i64 432, !51, i64 436, !36, i64 440, !36, i64 448, !51, i64 456, !51, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !53, i64 616, !53, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !51, i64 944, !41, i64 948, !41, i64 950, !41, i64 952, !41, i64 954, !41, i64 956, !41, i64 958, !41, i64 960, !41, i64 962, !41, i64 964, !37, i64 966, !37, i64 967, !51, i64 968, !51, i64 972, !51, i64 976, !51, i64 980, !51, i64 984, !53, i64 988, !53, i64 992, !53, i64 996, !53, i64 1000, !53, i64 1004, !53, i64 1008, !53, i64 1012, !53, i64 1016, !53, i64 1020, !53, i64 1024, !53, i64 1028, !53, i64 1032, !41, i64 1036, !41, i64 1038, !41, i64 1040, !37, i64 1042, !37, i64 1043, !41, i64 1044, !37, i64 1046, !37, i64 1047, !53, i64 1048, !53, i64 1052, !39, i64 1056, !39, i64 1072, !39, i64 1088, !39, i64 1104, !53, i64 1120, !41, i64 1124, !41, i64 1126, !37, i64 1128, !51, i64 1144, !51, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !41, i64 1162, !37, i64 1164, !39, i64 1176, !39, i64 1192, !39, i64 1208, !39, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !41, i64 1266, !53, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !54, i64 1304, !54, i64 1312, !51, i64 1320, !51, i64 1324, !39, i64 1328, !39, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !39, i64 1400, !36, i64 1416}
!50 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !51, i64 100, !51, i64 104, !51, i64 108, !36, i64 112}
!51 = !{!"int", !37, i64 0}
!52 = !{!"bAnimVizSettings", !51, i64 0, !51, i64 4, !51, i64 8, !51, i64 12, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !51, i64 32, !51, i64 36, !51, i64 40, !51, i64 44}
!53 = !{!"float", !37, i64 0}
!54 = !{!"long", !37, i64 0}
!55 = !{!"pose_group.c:pose_group_remove_exec"}
!56 = !{!57, !51, i64 80}
!57 = !{!"bPose", !39, i64 0, !36, i64 16, !41, i64 24, !41, i64 26, !51, i64 28, !51, i64 32, !53, i64 36, !37, i64 40, !37, i64 52, !39, i64 64, !51, i64 80, !51, i64 84, !36, i64 88, !36, i64 96, !52, i64 104, !37, i64 152}
!58 = !{!35, !36, i64 48}
!59 = !{!35, !36, i64 88}
!60 = !{!"pose_group.c:pose_groups_menu_invoke"}
!61 = !{!62, !36, i64 88}
!62 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!63 = !{!36, !36, i64 0}
!64 = distinct !{!64, !65}
!65 = !{!"llvm.loop.mustprogress"}
!66 = !{!62, !36, i64 112}
!67 = !{!"pose_group.c:pose_group_assign_exec"}
!68 = !{!69, !36, i64 32}
!69 = !{!"CollectionPointerLink", !36, i64 0, !36, i64 8, !70, i64 16}
!70 = !{!"PointerRNA", !71, i64 0, !36, i64 8, !36, i64 16}
!71 = !{!"", !36, i64 0}
!72 = !{!73, !41, i64 110}
!73 = !{!"bPoseChannel", !36, i64 0, !36, i64 8, !36, i64 16, !39, i64 24, !37, i64 40, !41, i64 104, !41, i64 106, !41, i64 108, !41, i64 110, !37, i64 112, !37, i64 113, !37, i64 114, !36, i64 120, !36, i64 128, !36, i64 136, !39, i64 144, !39, i64 160, !36, i64 176, !36, i64 184, !36, i64 192, !37, i64 200, !37, i64 212, !37, i64 224, !37, i64 236, !37, i64 252, !53, i64 264, !41, i64 268, !41, i64 270, !37, i64 272, !37, i64 336, !37, i64 400, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !53, i64 524, !53, i64 528, !53, i64 532, !36, i64 536}
!74 = distinct !{!74, !65}
!75 = !{!"pose_group.c:pose_group_unassign_exec"}
!76 = distinct !{!76, !65}
!77 = !{!"pose_group.c:group_move_exec"}
!78 = !{!79, !36, i64 8}
!79 = !{!"bActionGroup", !36, i64 0, !36, i64 8, !39, i64 16, !51, i64 32, !51, i64 36, !37, i64 40, !80, i64 104}
!80 = !{!"ThemeWireColor", !37, i64 0, !37, i64 4, !37, i64 8, !41, i64 12, !41, i64 14}
!81 = !{!79, !36, i64 0}
!82 = distinct !{!82, !65}
!83 = !{!"pose_group.c:group_sort_exec"}
!84 = !{!85, !36, i64 0}
!85 = !{!"tSortActionGroup", !36, i64 0, !51, i64 8}
!86 = !{!85, !51, i64 8}
!87 = distinct !{!87, !65}
!88 = distinct !{!88, !65}
!89 = distinct !{!89, !65}
!90 = distinct !{!90, !65}
!91 = !{!"pose_group.c:pose_group_select_exec"}
!92 = !{!"pose_group.c:pose_group_deselect_exec"}
!93 = !{!"pose_group.c:compare_agroup"}
!94 = !{!"pose_group.c:BLI_listbase_clear"}
!95 = !{!"pose_group.c:pose_group_select"}
!96 = !{!73, !36, i64 120}
!97 = !{!98, !51, i64 176}
!98 = !{!"Bone", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !39, i64 32, !37, i64 48, !53, i64 112, !37, i64 116, !37, i64 128, !37, i64 140, !51, i64 176, !37, i64 180, !37, i64 192, !37, i64 204, !53, i64 268, !53, i64 272, !53, i64 276, !53, i64 280, !53, i64 284, !53, i64 288, !53, i64 292, !53, i64 296, !53, i64 300, !53, i64 304, !37, i64 308, !51, i64 320, !41, i64 324, !37, i64 326}
!99 = distinct !{!99, !65}
