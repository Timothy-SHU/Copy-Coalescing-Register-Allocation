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
  store ptr @.str, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.1, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pose_group_add_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_posemode_context, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @pose_group_add_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = tail call ptr @ED_pose_object_from_context(ptr noundef %0) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 18
  %7 = load ptr, ptr %6, align 8, !tbaa !18
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
  store ptr @.str.3, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.4, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.5, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pose_group_remove_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_posemode_context, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @pose_group_remove_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = tail call ptr @ED_pose_object_from_context(ptr noundef %0) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 18
  %7 = load ptr, ptr %6, align 8, !tbaa !18
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.bPose, ptr %7, i64 0, i32 10
  %11 = load i32, ptr %10, align 8, !tbaa !25
  tail call void @BKE_pose_remove_group_index(ptr noundef nonnull %7, i32 noundef %11) #8
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85196800, ptr noundef nonnull %3) #8
  br label %12

12:                                               ; preds = %2, %5, %9
  %13 = phi i32 [ 4, %9 ], [ 2, %5 ], [ 2, %2 ]
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @POSE_OT_group_assign(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.6, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.7, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.8, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @pose_groups_menu_invoke, ptr %4, align 8, !tbaa !27
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pose_group_assign_exec, ptr %5, align 8, !tbaa !15
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_posemode_context, ptr %6, align 8, !tbaa !16
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !17
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !28
  %10 = tail call ptr @RNA_def_int(ptr noundef %9, ptr noundef nonnull @.str.9, i32 noundef 0, i32 noundef 0, i32 noundef 2147483647, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 0, i32 noundef 10) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @pose_groups_menu_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #1 {
  %4 = tail call ptr @ED_pose_object_from_context(ptr noundef %0) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %44, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 18
  %8 = load ptr, ptr %7, align 8, !tbaa !18
  %9 = icmp eq ptr %8, null
  br i1 %9, label %44, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.bPose, ptr %8, i64 0, i32 10
  %12 = load i32, ptr %11, align 8, !tbaa !25
  %13 = icmp slt i32 %12, 1
  br i1 %13, label %14, label %36

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !29
  %17 = load ptr, ptr %16, align 8, !tbaa !5
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
  %26 = load ptr, ptr %25, align 8, !tbaa !31
  %27 = icmp eq ptr %26, null
  br i1 %27, label %35, label %28

28:                                               ; preds = %24, %28
  %29 = phi ptr [ %33, %28 ], [ %26, %24 ]
  %30 = phi i32 [ %32, %28 ], [ 1, %24 ]
  %31 = getelementptr inbounds %struct.bActionGroup, ptr %29, i64 0, i32 5
  tail call void @uiItemIntO(ptr noundef %19, ptr noundef nonnull %31, i32 noundef 0, ptr noundef nonnull %20, ptr noundef nonnull @.str.9, i32 noundef %30) #8
  %32 = add nuw nsw i32 %30, 1
  %33 = load ptr, ptr %29, align 8, !tbaa !31
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %28, !llvm.loop !32

35:                                               ; preds = %28, %24
  tail call void @uiPupMenuEnd(ptr noundef %0, ptr noundef %18) #8
  br label %44

36:                                               ; preds = %10
  %37 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %38 = load ptr, ptr %37, align 8, !tbaa !34
  tail call void @RNA_int_set(ptr noundef %38, ptr noundef nonnull @.str.9, i32 noundef %12) #8
  %39 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %40 = load ptr, ptr %39, align 8, !tbaa !29
  %41 = getelementptr inbounds %struct.wmOperatorType, ptr %40, i64 0, i32 4
  %42 = load ptr, ptr %41, align 8, !tbaa !15
  %43 = tail call i32 %42(ptr noundef %0, ptr noundef %1) #8
  br label %44

44:                                               ; preds = %3, %6, %36, %35
  %45 = phi i32 [ 32, %35 ], [ %43, %36 ], [ 2, %6 ], [ 2, %3 ]
  ret i32 %45
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @pose_group_assign_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @ED_pose_object_from_context(ptr noundef %0) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %35, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 18
  %8 = load ptr, ptr %7, align 8, !tbaa !18
  %9 = icmp eq ptr %8, null
  br i1 %9, label %35, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = tail call i32 @RNA_int_get(ptr noundef %12, ptr noundef nonnull @.str.9) #8
  %14 = getelementptr inbounds %struct.bPose, ptr %8, i64 0, i32 10
  store i32 %13, ptr %14, align 8, !tbaa !25
  %15 = icmp eq i32 %13, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load ptr, ptr %7, align 8, !tbaa !18
  %18 = tail call ptr @BKE_pose_add_group(ptr noundef %17, ptr noundef null) #8
  br label %19

19:                                               ; preds = %16, %10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  %20 = call i32 @CTX_data_selected_pose_bones(ptr noundef %0, ptr noundef nonnull %3) #8
  %21 = load ptr, ptr %3, align 8, !tbaa !31
  %22 = icmp eq ptr %21, null
  br i1 %22, label %33, label %23

23:                                               ; preds = %19
  %24 = load i32, ptr %14, align 8, !tbaa !25
  %25 = trunc i32 %24 to i16
  br label %26

26:                                               ; preds = %23, %26
  %27 = phi ptr [ %21, %23 ], [ %31, %26 ]
  %28 = getelementptr inbounds %struct.CollectionPointerLink, ptr %27, i64 0, i32 2, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !35
  %30 = getelementptr inbounds %struct.bPoseChannel, ptr %29, i64 0, i32 8
  store i16 %25, ptr %30, align 2, !tbaa !39
  %31 = load ptr, ptr %27, align 8, !tbaa !31
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %26, !llvm.loop !41

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
  store ptr @.str.12, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.13, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.14, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pose_group_unassign_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_posemode_context, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @pose_group_unassign_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @ED_pose_object_from_context(ptr noundef %0) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %32, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 18
  %8 = load ptr, ptr %7, align 8, !tbaa !18
  %9 = icmp eq ptr %8, null
  br i1 %9, label %32, label %10

10:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  %11 = call i32 @CTX_data_selected_pose_bones(ptr noundef %0, ptr noundef nonnull %3) #8
  %12 = load ptr, ptr %3, align 8, !tbaa !31
  %13 = icmp eq ptr %12, null
  br i1 %13, label %30, label %14

14:                                               ; preds = %10, %23
  %15 = phi ptr [ %25, %23 ], [ %12, %10 ]
  %16 = phi i8 [ %24, %23 ], [ 0, %10 ]
  %17 = getelementptr inbounds %struct.CollectionPointerLink, ptr %15, i64 0, i32 2, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !35
  %19 = getelementptr inbounds %struct.bPoseChannel, ptr %18, i64 0, i32 8
  %20 = load i16, ptr %19, align 2, !tbaa !39
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %14
  store i16 0, ptr %19, align 2, !tbaa !39
  br label %23

23:                                               ; preds = %22, %14
  %24 = phi i8 [ 1, %22 ], [ %16, %14 ]
  %25 = load ptr, ptr %15, align 8, !tbaa !31
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %14, !llvm.loop !42

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
  store ptr @.str.19, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.20, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.21, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @group_move_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_posemode_context, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !28
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.22, ptr noundef nonnull @POSE_OT_group_move.group_slot_move, i32 noundef 0, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @group_move_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = tail call ptr @ED_pose_object_from_context(ptr noundef %0) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 18
  %7 = load ptr, ptr %6, align 8, !tbaa !18
  br label %8

8:                                                ; preds = %2, %5
  %9 = phi ptr [ %7, %5 ], [ null, %2 ]
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = tail call i32 @RNA_enum_get(ptr noundef %11, ptr noundef nonnull @.str.22) #8
  %13 = icmp eq ptr %9, null
  %14 = select i1 %4, i1 true, i1 %13
  br i1 %14, label %60, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.bPose, ptr %9, i64 0, i32 10
  %17 = load i32, ptr %16, align 8, !tbaa !25
  %18 = icmp slt i32 %17, 1
  br i1 %18, label %60, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.bPose, ptr %9, i64 0, i32 9
  %21 = add nsw i32 %17, -1
  %22 = tail call ptr @BLI_findlink(ptr noundef nonnull %20, i32 noundef %21) #8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %60, label %24

24:                                               ; preds = %19
  %25 = load i32, ptr %16, align 8, !tbaa !25
  %26 = icmp eq i32 %12, 1
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.bActionGroup, ptr %22, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !43
  %30 = icmp eq ptr %29, null
  br i1 %30, label %60, label %31

31:                                               ; preds = %27
  tail call void @BLI_remlink(ptr noundef nonnull %20, ptr noundef nonnull %22) #8
  tail call void @BLI_insertlinkbefore(ptr noundef nonnull %20, ptr noundef nonnull %29, ptr noundef nonnull %22) #8
  br label %36

32:                                               ; preds = %24
  %33 = load ptr, ptr %22, align 8, !tbaa !46
  %34 = icmp eq ptr %33, null
  br i1 %34, label %60, label %35

35:                                               ; preds = %32
  tail call void @BLI_remlink(ptr noundef nonnull %20, ptr noundef nonnull %22) #8
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %20, ptr noundef nonnull %33, ptr noundef nonnull %22) #8
  br label %36

36:                                               ; preds = %35, %31
  %37 = phi i32 [ 1, %35 ], [ -1, %31 ]
  %38 = add nsw i32 %25, %37
  %39 = load i32, ptr %16, align 8, !tbaa !25
  %40 = add nsw i32 %39, %37
  store i32 %40, ptr %16, align 8, !tbaa !25
  %41 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 18
  %42 = load ptr, ptr %41, align 8, !tbaa !18
  %43 = load ptr, ptr %42, align 8, !tbaa !31
  %44 = icmp eq ptr %43, null
  br i1 %44, label %59, label %45

45:                                               ; preds = %36, %56
  %46 = phi ptr [ %57, %56 ], [ %43, %36 ]
  %47 = getelementptr inbounds %struct.bPoseChannel, ptr %46, i64 0, i32 8
  %48 = load i16, ptr %47, align 2, !tbaa !39
  %49 = sext i16 %48 to i32
  %50 = icmp eq i32 %38, %49
  br i1 %50, label %53, label %51

51:                                               ; preds = %45
  %52 = icmp eq i32 %25, %49
  br i1 %52, label %53, label %56

53:                                               ; preds = %51, %45
  %54 = phi i32 [ %25, %45 ], [ %38, %51 ]
  %55 = trunc i32 %54 to i16
  store i16 %55, ptr %47, align 2, !tbaa !39
  br label %56

56:                                               ; preds = %53, %51
  %57 = load ptr, ptr %46, align 8, !tbaa !31
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %45, !llvm.loop !47

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
  store ptr @.str.25, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.26, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.27, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @group_sort_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_posemode_context, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @group_sort_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = tail call ptr @ED_pose_object_from_context(ptr noundef %0) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %69, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 18
  %7 = load ptr, ptr %6, align 8, !tbaa !18
  %8 = icmp eq ptr %7, null
  br i1 %8, label %69, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.bPose, ptr %7, i64 0, i32 10
  %11 = load i32, ptr %10, align 8, !tbaa !25
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %69, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.bPose, ptr %7, i64 0, i32 9
  %15 = tail call i32 @BLI_countlist(ptr noundef nonnull %14) #8
  %16 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !31
  %17 = sext i32 %15 to i64
  %18 = shl nsw i64 %17, 4
  %19 = tail call ptr %16(i64 noundef %18, ptr noundef nonnull @.str.36) #8
  %20 = load ptr, ptr %14, align 8, !tbaa !31
  %21 = icmp eq ptr %20, null
  br i1 %21, label %31, label %22

22:                                               ; preds = %13, %22
  %23 = phi i64 [ %26, %22 ], [ 0, %13 ]
  %24 = phi ptr [ %29, %22 ], [ %20, %13 ]
  %25 = getelementptr inbounds %struct.tSortActionGroup, ptr %19, i64 %23
  store ptr %24, ptr %25, align 8, !tbaa !48
  %26 = add nuw i64 %23, 1
  %27 = getelementptr inbounds %struct.tSortActionGroup, ptr %19, i64 %23, i32 1
  %28 = trunc i64 %26 to i32
  store i32 %28, ptr %27, align 8, !tbaa !50
  %29 = load ptr, ptr %24, align 8, !tbaa !31
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %22, !llvm.loop !51

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
  %38 = load ptr, ptr %37, align 8, !tbaa !48
  tail call void @BLI_addtail(ptr noundef nonnull %14, ptr noundef %38) #8
  %39 = add nuw nsw i64 %36, 1
  %40 = icmp eq i64 %39, %34
  br i1 %40, label %41, label %35, !llvm.loop !52

41:                                               ; preds = %35, %31
  %42 = load ptr, ptr %6, align 8, !tbaa !18
  %43 = load ptr, ptr %42, align 8, !tbaa !31
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
  %51 = load i16, ptr %50, align 2, !tbaa !39
  %52 = sext i16 %51 to i32
  br label %53

53:                                               ; preds = %49, %61
  %54 = phi i64 [ 0, %49 ], [ %62, %61 ]
  %55 = getelementptr inbounds %struct.tSortActionGroup, ptr %19, i64 %54, i32 1
  %56 = load i32, ptr %55, align 8, !tbaa !50
  %57 = icmp eq i32 %56, %52
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = trunc i64 %54 to i16
  %60 = add i16 %59, 1
  store i16 %60, ptr %50, align 2, !tbaa !39
  br label %64

61:                                               ; preds = %53
  %62 = add nuw nsw i64 %54, 1
  %63 = icmp eq i64 %62, %46
  br i1 %63, label %64, label %53, !llvm.loop !53

64:                                               ; preds = %61, %47, %58
  %65 = load ptr, ptr %48, align 8, !tbaa !31
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %47, !llvm.loop !54

67:                                               ; preds = %64, %41
  %68 = load ptr, ptr @MEM_freeN, align 8, !tbaa !31
  tail call void %68(ptr noundef %19) #8
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85196800, ptr noundef nonnull %3) #8
  br label %69

69:                                               ; preds = %2, %9, %5, %67
  %70 = phi i32 [ 4, %67 ], [ 2, %5 ], [ 2, %9 ], [ 2, %2 ]
  ret i32 %70
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @POSE_OT_group_select(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.28, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.29, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.30, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pose_group_select_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_posemode_context, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @pose_group_select_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = tail call ptr @ED_pose_object_from_context(ptr noundef %0) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 18
  %7 = load ptr, ptr %6, align 8, !tbaa !18
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
  store ptr @.str.31, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.32, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.33, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pose_group_deselect_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_posemode_context, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @pose_group_deselect_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = tail call ptr @ED_pose_object_from_context(ptr noundef %0) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 18
  %7 = load ptr, ptr %6, align 8, !tbaa !18
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
define internal i32 @compare_agroup(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = load ptr, ptr %0, align 8, !tbaa !48
  %4 = getelementptr inbounds %struct.bActionGroup, ptr %3, i64 0, i32 5
  %5 = load ptr, ptr %1, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.bActionGroup, ptr %5, i64 0, i32 5
  %7 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %6) #9
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @BLI_listbase_clear(ptr nocapture noundef writeonly %0) unnamed_addr #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pose_group_select(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #1 {
  %4 = alloca %struct.ListBase, align 8
  %5 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 18
  %6 = load ptr, ptr %5, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #10
  %7 = call i32 @CTX_data_visible_pose_bones(ptr noundef %0, ptr noundef nonnull %4) #8
  %8 = load ptr, ptr %4, align 8, !tbaa !31
  %9 = icmp eq ptr %8, null
  br i1 %9, label %40, label %10

10:                                               ; preds = %3
  %11 = icmp eq i8 %2, 0
  %12 = getelementptr inbounds %struct.bPose, ptr %6, i64 0, i32 10
  br label %13

13:                                               ; preds = %10, %37
  %14 = phi ptr [ %8, %10 ], [ %38, %37 ]
  %15 = getelementptr inbounds %struct.CollectionPointerLink, ptr %14, i64 0, i32 2, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !35
  %17 = getelementptr inbounds %struct.bPoseChannel, ptr %16, i64 0, i32 12
  %18 = load ptr, ptr %17, align 8, !tbaa !55
  %19 = getelementptr inbounds %struct.Bone, ptr %18, i64 0, i32 10
  %20 = load i32, ptr %19, align 8, !tbaa !56
  %21 = and i32 %20, 2097152
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %13
  %24 = getelementptr inbounds %struct.bPoseChannel, ptr %16, i64 0, i32 8
  %25 = load i16, ptr %24, align 2, !tbaa !39
  %26 = sext i16 %25 to i32
  %27 = load i32, ptr %12, align 8, !tbaa !25
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
  store i32 %36, ptr %19, align 8, !tbaa !56
  br label %37

37:                                               ; preds = %35, %29, %32, %13
  %38 = load ptr, ptr %14, align 8, !tbaa !31
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %13, !llvm.loop !58

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
!15 = !{!6, !7, i64 32}
!16 = !{!6, !7, i64 72}
!17 = !{!6, !12, i64 184}
!18 = !{!19, !7, i64 288}
!19 = !{!"Object", !20, i64 0, !7, i64 120, !7, i64 128, !12, i64 136, !12, i64 138, !21, i64 140, !21, i64 144, !21, i64 148, !8, i64 152, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288, !7, i64 296, !7, i64 304, !22, i64 312, !7, i64 360, !10, i64 368, !10, i64 384, !10, i64 400, !10, i64 416, !21, i64 432, !21, i64 436, !7, i64 440, !7, i64 448, !21, i64 456, !21, i64 460, !8, i64 464, !8, i64 476, !8, i64 488, !8, i64 500, !8, i64 512, !8, i64 524, !8, i64 536, !8, i64 548, !8, i64 560, !8, i64 576, !8, i64 592, !8, i64 604, !23, i64 616, !23, i64 620, !8, i64 624, !8, i64 688, !8, i64 752, !8, i64 816, !8, i64 880, !21, i64 944, !12, i64 948, !12, i64 950, !12, i64 952, !12, i64 954, !12, i64 956, !12, i64 958, !12, i64 960, !12, i64 962, !12, i64 964, !8, i64 966, !8, i64 967, !21, i64 968, !21, i64 972, !21, i64 976, !21, i64 980, !21, i64 984, !23, i64 988, !23, i64 992, !23, i64 996, !23, i64 1000, !23, i64 1004, !23, i64 1008, !23, i64 1012, !23, i64 1016, !23, i64 1020, !23, i64 1024, !23, i64 1028, !23, i64 1032, !12, i64 1036, !12, i64 1038, !12, i64 1040, !8, i64 1042, !8, i64 1043, !12, i64 1044, !8, i64 1046, !8, i64 1047, !23, i64 1048, !23, i64 1052, !10, i64 1056, !10, i64 1072, !10, i64 1088, !10, i64 1104, !23, i64 1120, !12, i64 1124, !12, i64 1126, !8, i64 1128, !21, i64 1144, !21, i64 1148, !7, i64 1152, !8, i64 1160, !8, i64 1161, !12, i64 1162, !8, i64 1164, !10, i64 1176, !10, i64 1192, !10, i64 1208, !10, i64 1224, !7, i64 1240, !7, i64 1248, !7, i64 1256, !8, i64 1264, !8, i64 1265, !12, i64 1266, !23, i64 1268, !7, i64 1272, !7, i64 1280, !7, i64 1288, !7, i64 1296, !24, i64 1304, !24, i64 1312, !21, i64 1320, !21, i64 1324, !10, i64 1328, !10, i64 1344, !7, i64 1360, !7, i64 1368, !7, i64 1376, !8, i64 1384, !7, i64 1392, !10, i64 1400, !7, i64 1416}
!20 = !{!"ID", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !12, i64 98, !21, i64 100, !21, i64 104, !21, i64 108, !7, i64 112}
!21 = !{!"int", !8, i64 0}
!22 = !{!"bAnimVizSettings", !21, i64 0, !21, i64 4, !21, i64 8, !21, i64 12, !12, i64 16, !12, i64 18, !12, i64 20, !12, i64 22, !12, i64 24, !12, i64 26, !12, i64 28, !12, i64 30, !21, i64 32, !21, i64 36, !21, i64 40, !21, i64 44}
!23 = !{!"float", !8, i64 0}
!24 = !{!"long", !8, i64 0}
!25 = !{!26, !21, i64 80}
!26 = !{!"bPose", !10, i64 0, !7, i64 16, !12, i64 24, !12, i64 26, !21, i64 28, !21, i64 32, !23, i64 36, !8, i64 40, !8, i64 52, !10, i64 64, !21, i64 80, !21, i64 84, !7, i64 88, !7, i64 96, !22, i64 104, !8, i64 152}
!27 = !{!6, !7, i64 48}
!28 = !{!6, !7, i64 88}
!29 = !{!30, !7, i64 88}
!30 = !{!"wmOperator", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !10, i64 128, !7, i64 144, !7, i64 152, !12, i64 160, !8, i64 162}
!31 = !{!7, !7, i64 0}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{!30, !7, i64 112}
!35 = !{!36, !7, i64 32}
!36 = !{!"CollectionPointerLink", !7, i64 0, !7, i64 8, !37, i64 16}
!37 = !{!"PointerRNA", !38, i64 0, !7, i64 8, !7, i64 16}
!38 = !{!"", !7, i64 0}
!39 = !{!40, !12, i64 110}
!40 = !{!"bPoseChannel", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !8, i64 40, !12, i64 104, !12, i64 106, !12, i64 108, !12, i64 110, !8, i64 112, !8, i64 113, !8, i64 114, !7, i64 120, !7, i64 128, !7, i64 136, !10, i64 144, !10, i64 160, !7, i64 176, !7, i64 184, !7, i64 192, !8, i64 200, !8, i64 212, !8, i64 224, !8, i64 236, !8, i64 252, !23, i64 264, !12, i64 268, !12, i64 270, !8, i64 272, !8, i64 336, !8, i64 400, !8, i64 464, !8, i64 476, !8, i64 488, !8, i64 500, !8, i64 512, !23, i64 524, !23, i64 528, !23, i64 532, !7, i64 536}
!41 = distinct !{!41, !33}
!42 = distinct !{!42, !33}
!43 = !{!44, !7, i64 8}
!44 = !{!"bActionGroup", !7, i64 0, !7, i64 8, !10, i64 16, !21, i64 32, !21, i64 36, !8, i64 40, !45, i64 104}
!45 = !{!"ThemeWireColor", !8, i64 0, !8, i64 4, !8, i64 8, !12, i64 12, !12, i64 14}
!46 = !{!44, !7, i64 0}
!47 = distinct !{!47, !33}
!48 = !{!49, !7, i64 0}
!49 = !{!"tSortActionGroup", !7, i64 0, !21, i64 8}
!50 = !{!49, !21, i64 8}
!51 = distinct !{!51, !33}
!52 = distinct !{!52, !33}
!53 = distinct !{!53, !33}
!54 = distinct !{!54, !33}
!55 = !{!40, !7, i64 120}
!56 = !{!57, !21, i64 176}
!57 = !{!"Bone", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !10, i64 32, !8, i64 48, !23, i64 112, !8, i64 116, !8, i64 128, !8, i64 140, !21, i64 176, !8, i64 180, !8, i64 192, !8, i64 204, !23, i64 268, !23, i64 272, !23, i64 276, !23, i64 280, !23, i64 284, !23, i64 288, !23, i64 292, !23, i64 296, !23, i64 300, !23, i64 304, !8, i64 308, !21, i64 320, !12, i64 324, !8, i64 326}
!58 = distinct !{!58, !33}
