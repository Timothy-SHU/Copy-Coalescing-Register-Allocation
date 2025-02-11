; ModuleID = 'blender/source/blender/editors/armature/pose_utils.c'
source_filename = "blender/source/blender/editors/armature/pose_utils.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.StructRNA = type opaque
%struct.ListBase = type { ptr, ptr }
%struct.CollectionPointerLink = type { ptr, ptr, %struct.PointerRNA }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.bPoseChannel = type { ptr, ptr, ptr, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i8, i8, [6 x i8], ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], float, i16, i16, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.tPChanFCurveLink = type { ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [4 x float], float, [3 x float], ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.bArmature = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.Bone = type { ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], float, [3 x float], [3 x float], [3 x [3 x float]], i32, [3 x float], [3 x float], [4 x [4 x float]], float, float, float, float, float, float, float, float, float, float, [3 x float], i32, i16, [1 x i16] }
%struct.bPose = type { %struct.ListBase, ptr, i16, i16, i32, i32, float, [3 x float], [3 x float], %struct.ListBase, i32, i32, ptr, ptr, %struct.bAnimVizSettings, [64 x i8] }
%struct.LinkData = type { ptr, ptr, ptr }
%struct.FCurve = type { ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i32, float, i16, i16, i32, ptr, i32, [3 x float], float, float }

@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [15 x i8] c"WholeCharacter\00", align 1
@RNA_PoseBone = external global %struct.StructRNA, align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"tPChanFCurveLink\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @poseAnim_mapping_get(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.ListBase, align 8
  %6 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9
  %7 = call i32 @CTX_data_selected_pose_bones(ptr noundef %0, ptr noundef nonnull %5) #10
  %8 = load ptr, ptr %5, align 8, !tbaa !5
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %4, %10
  %11 = phi ptr [ %14, %10 ], [ %8, %4 ]
  %12 = getelementptr inbounds %struct.CollectionPointerLink, ptr %11, i64 0, i32 2, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !9
  call fastcc void @fcurves_to_pchan_links_get(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %13) #11
  %14 = load ptr, ptr %11, align 8, !tbaa !5
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %10, !llvm.loop !13

16:                                               ; preds = %10, %4
  call void @BLI_freelistN(ptr noundef nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9
  %17 = call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef %1) #11, !range !15
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #9
  %20 = call i32 @CTX_data_visible_pose_bones(ptr noundef %0, ptr noundef nonnull %6) #10
  %21 = load ptr, ptr %6, align 8, !tbaa !5
  %22 = icmp eq ptr %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %19, %23
  %24 = phi ptr [ %27, %23 ], [ %21, %19 ]
  %25 = getelementptr inbounds %struct.CollectionPointerLink, ptr %24, i64 0, i32 2, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !9
  call fastcc void @fcurves_to_pchan_links_get(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %26) #11
  %27 = load ptr, ptr %24, align 8, !tbaa !5
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %23, !llvm.loop !16

29:                                               ; preds = %23, %19
  call void @BLI_freelistN(ptr noundef nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #9
  br label %30

30:                                               ; preds = %29, %16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @CTX_data_selected_pose_bones(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fcurves_to_pchan_links_get(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.ListBase, align 8
  %6 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %7 = call signext i16 @action_get_item_transforms(ptr noundef %2, ptr noundef %1, ptr noundef %3, ptr noundef nonnull %5) #10
  %8 = zext i16 %7 to i32
  %9 = getelementptr inbounds %struct.bPoseChannel, ptr %3, i64 0, i32 5
  %10 = load i16, ptr %9, align 8, !tbaa !17
  %11 = and i16 %10, -8
  store i16 %11, ptr %9, align 8, !tbaa !17
  %12 = icmp eq i16 %7, 0
  br i1 %12, label %61, label %13

13:                                               ; preds = %4
  %14 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %15 = call ptr %14(i64 noundef 128, ptr noundef nonnull @.str.1) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #9
  %16 = getelementptr inbounds %struct.tPChanFCurveLink, ptr %15, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !22
  %17 = getelementptr inbounds %struct.tPChanFCurveLink, ptr %15, i64 0, i32 3
  store ptr %3, ptr %17, align 8, !tbaa !23
  call void @RNA_pointer_create(ptr noundef %1, ptr noundef nonnull @RNA_PoseBone, ptr noundef nonnull %3, ptr noundef nonnull %6) #10
  %18 = call ptr @RNA_path_from_ID_to_struct(ptr noundef nonnull %6) #10
  %19 = getelementptr inbounds %struct.tPChanFCurveLink, ptr %15, i64 0, i32 4
  store ptr %18, ptr %19, align 8, !tbaa !25
  call void @BLI_addtail(ptr noundef %0, ptr noundef %15) #10
  %20 = and i32 %8, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %13
  %23 = load i16, ptr %9, align 8, !tbaa !17
  %24 = or i16 %23, 1
  store i16 %24, ptr %9, align 8, !tbaa !17
  br label %25

25:                                               ; preds = %22, %13
  %26 = and i32 %8, 2
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i16, ptr %9, align 8, !tbaa !17
  %30 = or i16 %29, 2
  store i16 %30, ptr %9, align 8, !tbaa !17
  br label %31

31:                                               ; preds = %28, %25
  %32 = and i32 %8, 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i16, ptr %9, align 8, !tbaa !17
  %36 = or i16 %35, 4
  store i16 %36, ptr %9, align 8, !tbaa !17
  br label %37

37:                                               ; preds = %34, %31
  %38 = getelementptr inbounds %struct.tPChanFCurveLink, ptr %15, i64 0, i32 5
  %39 = getelementptr inbounds %struct.bPoseChannel, ptr %3, i64 0, i32 20
  call fastcc void @copy_v3_v3(ptr noundef nonnull %38, ptr noundef nonnull %39) #11
  %40 = getelementptr inbounds %struct.tPChanFCurveLink, ptr %15, i64 0, i32 6
  %41 = getelementptr inbounds %struct.bPoseChannel, ptr %3, i64 0, i32 22
  call fastcc void @copy_v3_v3(ptr noundef nonnull %40, ptr noundef nonnull %41) #11
  %42 = getelementptr inbounds %struct.tPChanFCurveLink, ptr %15, i64 0, i32 7
  %43 = getelementptr inbounds %struct.bPoseChannel, ptr %3, i64 0, i32 21
  call fastcc void @copy_v3_v3(ptr noundef nonnull %42, ptr noundef nonnull %43) #11
  %44 = getelementptr inbounds %struct.tPChanFCurveLink, ptr %15, i64 0, i32 8
  %45 = getelementptr inbounds %struct.bPoseChannel, ptr %3, i64 0, i32 23
  call void @copy_qt_qt(ptr noundef nonnull %44, ptr noundef nonnull %45) #10
  %46 = getelementptr inbounds %struct.tPChanFCurveLink, ptr %15, i64 0, i32 10
  %47 = getelementptr inbounds %struct.bPoseChannel, ptr %3, i64 0, i32 24
  call fastcc void @copy_v3_v3(ptr noundef nonnull %46, ptr noundef nonnull %47) #11
  %48 = getelementptr inbounds %struct.bPoseChannel, ptr %3, i64 0, i32 25
  %49 = load float, ptr %48, align 8, !tbaa !26
  %50 = getelementptr inbounds %struct.tPChanFCurveLink, ptr %15, i64 0, i32 9
  store float %49, ptr %50, align 4, !tbaa !27
  %51 = getelementptr inbounds %struct.bPoseChannel, ptr %3, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !28
  %53 = icmp eq ptr %52, null
  %54 = and i32 %8, 8
  %55 = icmp eq i32 %54, 0
  %56 = or i1 %55, %53
  br i1 %56, label %60, label %57

57:                                               ; preds = %37
  %58 = call ptr @IDP_CopyProperty(ptr noundef nonnull %52) #10
  %59 = getelementptr inbounds %struct.tPChanFCurveLink, ptr %15, i64 0, i32 11
  store ptr %58, ptr %59, align 8, !tbaa !29
  br label %60

60:                                               ; preds = %57, %37
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #9
  br label %61

61:                                               ; preds = %60, %4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = load ptr, ptr %0, align 8, !tbaa !30
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare i32 @CTX_data_visible_pose_bones(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @poseAnim_mapping_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !30
  %3 = icmp eq ptr %2, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %1, %13
  %5 = phi ptr [ %6, %13 ], [ %2, %1 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !31
  %7 = getelementptr inbounds %struct.tPChanFCurveLink, ptr %5, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !29
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %4
  tail call void @IDP_FreeProperty(ptr noundef nonnull %8) #10
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !5
  %12 = load ptr, ptr %7, align 8, !tbaa !29
  tail call void %11(ptr noundef %12) #10
  br label %13

13:                                               ; preds = %10, %4
  %14 = getelementptr inbounds %struct.tPChanFCurveLink, ptr %5, i64 0, i32 2
  tail call void @BLI_freelistN(ptr noundef nonnull %14) #10
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !5
  %16 = getelementptr inbounds %struct.tPChanFCurveLink, ptr %5, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !25
  tail call void %15(ptr noundef %17) #10
  tail call void @BLI_freelinkN(ptr noundef nonnull %0, ptr noundef nonnull %5) #10
  %18 = icmp eq ptr %6, null
  br i1 %18, label %19, label %4, !llvm.loop !32

19:                                               ; preds = %13, %1
  ret void
}

; Function Attrs: optsize
declare void @IDP_FreeProperty(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @poseAnim_mapping_refresh(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !33
  %6 = getelementptr inbounds %struct.bArmature, ptr %5, i64 0, i32 8
  %7 = load i32, ptr %6, align 8, !tbaa !39
  %8 = and i32 %7, 64
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  tail call void @DAG_id_tag_update(ptr noundef nonnull %2, i16 noundef signext 2) #10
  br label %12

11:                                               ; preds = %3
  tail call void @BKE_pose_where_is(ptr noundef %1, ptr noundef nonnull %2) #10
  br label %12

12:                                               ; preds = %11, %10
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85196800, ptr noundef nonnull %2) #10
  ret void
}

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_pose_where_is(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @poseAnim_mapping_reset(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %31, label %4

4:                                                ; preds = %1, %28
  %5 = phi ptr [ %29, %28 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.tPChanFCurveLink, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !23
  %8 = getelementptr inbounds %struct.bPoseChannel, ptr %7, i64 0, i32 20
  %9 = getelementptr inbounds %struct.tPChanFCurveLink, ptr %5, i64 0, i32 5
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %9) #11
  %10 = getelementptr inbounds %struct.bPoseChannel, ptr %7, i64 0, i32 22
  %11 = getelementptr inbounds %struct.tPChanFCurveLink, ptr %5, i64 0, i32 6
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %10, ptr noundef nonnull %11) #11
  %12 = getelementptr inbounds %struct.bPoseChannel, ptr %7, i64 0, i32 21
  %13 = getelementptr inbounds %struct.tPChanFCurveLink, ptr %5, i64 0, i32 7
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %12, ptr noundef nonnull %13) #11
  %14 = getelementptr inbounds %struct.bPoseChannel, ptr %7, i64 0, i32 23
  %15 = getelementptr inbounds %struct.tPChanFCurveLink, ptr %5, i64 0, i32 8
  tail call void @copy_qt_qt(ptr noundef nonnull %14, ptr noundef nonnull %15) #10
  %16 = getelementptr inbounds %struct.bPoseChannel, ptr %7, i64 0, i32 24
  %17 = getelementptr inbounds %struct.tPChanFCurveLink, ptr %5, i64 0, i32 10
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %16, ptr noundef nonnull %17) #11
  %18 = getelementptr inbounds %struct.tPChanFCurveLink, ptr %5, i64 0, i32 9
  %19 = load float, ptr %18, align 4, !tbaa !27
  %20 = getelementptr inbounds %struct.bPoseChannel, ptr %7, i64 0, i32 25
  store float %19, ptr %20, align 8, !tbaa !26
  %21 = getelementptr inbounds %struct.tPChanFCurveLink, ptr %5, i64 0, i32 11
  %22 = load ptr, ptr %21, align 8, !tbaa !29
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %4
  %25 = load ptr, ptr %6, align 8, !tbaa !23
  %26 = getelementptr inbounds %struct.bPoseChannel, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !28
  tail call void @IDP_SyncGroupValues(ptr noundef %27, ptr noundef nonnull %22) #10
  br label %28

28:                                               ; preds = %24, %4
  %29 = load ptr, ptr %5, align 8, !tbaa !5
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %4, !llvm.loop !41

31:                                               ; preds = %28, %1
  ret void
}

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
declare void @copy_qt_qt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IDP_SyncGroupValues(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @poseAnim_mapping_autoKeyframe(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, float noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.ListBase, align 8
  %7 = tail call i32 @autokeyframe_cfra_can_key(ptr noundef %1, ptr noundef %2) #10
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %37, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @ANIM_get_keyingset_for_autokeying(ptr noundef %1, ptr noundef nonnull @.str) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %11 = load ptr, ptr %3, align 8, !tbaa !5
  %12 = icmp eq ptr %11, null
  br i1 %12, label %27, label %13

13:                                               ; preds = %9, %24
  %14 = phi ptr [ %25, %24 ], [ %11, %9 ]
  %15 = getelementptr inbounds %struct.tPChanFCurveLink, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !23
  call void @ANIM_relative_keyingset_add_source(ptr noundef nonnull %6, ptr noundef %2, ptr noundef nonnull @RNA_PoseBone, ptr noundef %16) #10
  %17 = getelementptr inbounds %struct.bPoseChannel, ptr %16, i64 0, i32 12
  %18 = load ptr, ptr %17, align 8, !tbaa !43
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.Bone, ptr %18, i64 0, i32 10
  %22 = load i32, ptr %21, align 8, !tbaa !44
  %23 = and i32 %22, -8193
  store i32 %23, ptr %21, align 8, !tbaa !44
  br label %24

24:                                               ; preds = %20, %13
  %25 = load ptr, ptr %14, align 8, !tbaa !5
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %13, !llvm.loop !46

27:                                               ; preds = %24, %9
  %28 = call i32 @ANIM_apply_keyingset(ptr noundef %0, ptr noundef nonnull %6, ptr noundef null, ptr noundef %10, i16 noundef signext 0, float noundef %4) #10
  call void @BLI_freelistN(ptr noundef nonnull %6) #10
  %29 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 18
  %30 = load ptr, ptr %29, align 8, !tbaa !47
  %31 = getelementptr inbounds %struct.bPose, ptr %30, i64 0, i32 14, i32 11
  %32 = load i16, ptr %31, align 2, !tbaa !48
  %33 = and i16 %32, 4
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %27
  call void @ED_pose_recalculate_paths(ptr noundef %1, ptr noundef nonnull %2) #10
  br label %36

36:                                               ; preds = %35, %27
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #9
  br label %37

37:                                               ; preds = %36, %5
  ret void
}

; Function Attrs: optsize
declare i32 @autokeyframe_cfra_can_key(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ANIM_get_keyingset_for_autokeying(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: optsize
declare void @ANIM_relative_keyingset_add_source(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ANIM_apply_keyingset(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_pose_recalculate_paths(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @poseAnim_mapping_getNextFCurve(ptr noundef readonly %0, ptr noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #6 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = icmp eq ptr %0, null
  br i1 %6, label %22, label %7

7:                                                ; preds = %5, %3
  %8 = phi ptr [ %1, %3 ], [ %0, %5 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = icmp eq ptr %9, null
  br i1 %10, label %22, label %11

11:                                               ; preds = %7, %19
  %12 = phi ptr [ %20, %19 ], [ %9, %7 ]
  %13 = getelementptr inbounds %struct.LinkData, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !50
  %15 = getelementptr inbounds %struct.FCurve, ptr %14, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !52
  %17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %16) #12
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %11
  %20 = load ptr, ptr %12, align 8, !tbaa !54
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %11, !llvm.loop !55

22:                                               ; preds = %11, %19, %5, %7
  %23 = phi ptr [ null, %7 ], [ null, %5 ], [ null, %19 ], [ %12, %11 ]
  ret ptr %23
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare signext i16 @action_get_item_transforms(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: optsize
declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_path_from_ID_to_struct(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @IDP_CopyProperty(ptr noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nounwind }
attributes #10 = { nounwind optsize }
attributes #11 = { optsize }
attributes #12 = { nounwind optsize willreturn memory(read) }

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
!9 = !{!10, !6, i64 32}
!10 = !{!"CollectionPointerLink", !6, i64 0, !6, i64 8, !11, i64 16}
!11 = !{!"PointerRNA", !12, i64 0, !6, i64 8, !6, i64 16}
!12 = !{!"", !6, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{i8 0, i8 2}
!16 = distinct !{!16, !14}
!17 = !{!18, !20, i64 104}
!18 = !{!"bPoseChannel", !6, i64 0, !6, i64 8, !6, i64 16, !19, i64 24, !7, i64 40, !20, i64 104, !20, i64 106, !20, i64 108, !20, i64 110, !7, i64 112, !7, i64 113, !7, i64 114, !6, i64 120, !6, i64 128, !6, i64 136, !19, i64 144, !19, i64 160, !6, i64 176, !6, i64 184, !6, i64 192, !7, i64 200, !7, i64 212, !7, i64 224, !7, i64 236, !7, i64 252, !21, i64 264, !20, i64 268, !20, i64 270, !7, i64 272, !7, i64 336, !7, i64 400, !7, i64 464, !7, i64 476, !7, i64 488, !7, i64 500, !7, i64 512, !21, i64 524, !21, i64 528, !21, i64 532, !6, i64 536}
!19 = !{!"ListBase", !6, i64 0, !6, i64 8}
!20 = !{!"short", !7, i64 0}
!21 = !{!"float", !7, i64 0}
!22 = !{i64 0, i64 8, !5, i64 8, i64 8, !5}
!23 = !{!24, !6, i64 32}
!24 = !{!"tPChanFCurveLink", !6, i64 0, !6, i64 8, !19, i64 16, !6, i64 32, !6, i64 40, !7, i64 48, !7, i64 60, !7, i64 72, !7, i64 84, !21, i64 100, !7, i64 104, !6, i64 120}
!25 = !{!24, !6, i64 40}
!26 = !{!18, !21, i64 264}
!27 = !{!24, !21, i64 100}
!28 = !{!18, !6, i64 16}
!29 = !{!24, !6, i64 120}
!30 = !{!19, !6, i64 0}
!31 = !{!24, !6, i64 0}
!32 = distinct !{!32, !14}
!33 = !{!34, !6, i64 296}
!34 = !{!"Object", !35, i64 0, !6, i64 120, !6, i64 128, !20, i64 136, !20, i64 138, !36, i64 140, !36, i64 144, !36, i64 148, !7, i64 152, !6, i64 216, !6, i64 224, !6, i64 232, !6, i64 240, !6, i64 248, !6, i64 256, !6, i64 264, !6, i64 272, !6, i64 280, !6, i64 288, !6, i64 296, !6, i64 304, !37, i64 312, !6, i64 360, !19, i64 368, !19, i64 384, !19, i64 400, !19, i64 416, !36, i64 432, !36, i64 436, !6, i64 440, !6, i64 448, !36, i64 456, !36, i64 460, !7, i64 464, !7, i64 476, !7, i64 488, !7, i64 500, !7, i64 512, !7, i64 524, !7, i64 536, !7, i64 548, !7, i64 560, !7, i64 576, !7, i64 592, !7, i64 604, !21, i64 616, !21, i64 620, !7, i64 624, !7, i64 688, !7, i64 752, !7, i64 816, !7, i64 880, !36, i64 944, !20, i64 948, !20, i64 950, !20, i64 952, !20, i64 954, !20, i64 956, !20, i64 958, !20, i64 960, !20, i64 962, !20, i64 964, !7, i64 966, !7, i64 967, !36, i64 968, !36, i64 972, !36, i64 976, !36, i64 980, !36, i64 984, !21, i64 988, !21, i64 992, !21, i64 996, !21, i64 1000, !21, i64 1004, !21, i64 1008, !21, i64 1012, !21, i64 1016, !21, i64 1020, !21, i64 1024, !21, i64 1028, !21, i64 1032, !20, i64 1036, !20, i64 1038, !20, i64 1040, !7, i64 1042, !7, i64 1043, !20, i64 1044, !7, i64 1046, !7, i64 1047, !21, i64 1048, !21, i64 1052, !19, i64 1056, !19, i64 1072, !19, i64 1088, !19, i64 1104, !21, i64 1120, !20, i64 1124, !20, i64 1126, !7, i64 1128, !36, i64 1144, !36, i64 1148, !6, i64 1152, !7, i64 1160, !7, i64 1161, !20, i64 1162, !7, i64 1164, !19, i64 1176, !19, i64 1192, !19, i64 1208, !19, i64 1224, !6, i64 1240, !6, i64 1248, !6, i64 1256, !7, i64 1264, !7, i64 1265, !20, i64 1266, !21, i64 1268, !6, i64 1272, !6, i64 1280, !6, i64 1288, !6, i64 1296, !38, i64 1304, !38, i64 1312, !36, i64 1320, !36, i64 1324, !19, i64 1328, !19, i64 1344, !6, i64 1360, !6, i64 1368, !6, i64 1376, !7, i64 1384, !6, i64 1392, !19, i64 1400, !6, i64 1416}
!35 = !{!"ID", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !7, i64 32, !20, i64 98, !36, i64 100, !36, i64 104, !36, i64 108, !6, i64 112}
!36 = !{!"int", !7, i64 0}
!37 = !{!"bAnimVizSettings", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !20, i64 16, !20, i64 18, !20, i64 20, !20, i64 22, !20, i64 24, !20, i64 26, !20, i64 28, !20, i64 30, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44}
!38 = !{!"long", !7, i64 0}
!39 = !{!40, !36, i64 192}
!40 = !{!"bArmature", !35, i64 0, !6, i64 120, !19, i64 128, !19, i64 144, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184, !36, i64 192, !36, i64 196, !36, i64 200, !36, i64 204, !20, i64 208, !20, i64 210, !36, i64 212, !36, i64 216, !36, i64 220, !20, i64 224, !20, i64 226, !20, i64 228, !20, i64 230, !36, i64 232, !36, i64 236, !36, i64 240, !36, i64 244, !36, i64 248, !36, i64 252}
!41 = distinct !{!41, !14}
!42 = !{!21, !21, i64 0}
!43 = !{!18, !6, i64 120}
!44 = !{!45, !36, i64 176}
!45 = !{!"Bone", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !19, i64 32, !7, i64 48, !21, i64 112, !7, i64 116, !7, i64 128, !7, i64 140, !36, i64 176, !7, i64 180, !7, i64 192, !7, i64 204, !21, i64 268, !21, i64 272, !21, i64 276, !21, i64 280, !21, i64 284, !21, i64 288, !21, i64 292, !21, i64 296, !21, i64 300, !21, i64 304, !7, i64 308, !36, i64 320, !20, i64 324, !7, i64 326}
!46 = distinct !{!46, !14}
!47 = !{!34, !6, i64 288}
!48 = !{!49, !20, i64 134}
!49 = !{!"bPose", !19, i64 0, !6, i64 16, !20, i64 24, !20, i64 26, !36, i64 28, !36, i64 32, !21, i64 36, !7, i64 40, !7, i64 52, !19, i64 64, !36, i64 80, !36, i64 84, !6, i64 88, !6, i64 96, !37, i64 104, !7, i64 152}
!50 = !{!51, !6, i64 16}
!51 = !{!"LinkData", !6, i64 0, !6, i64 8, !6, i64 16}
!52 = !{!53, !6, i64 80}
!53 = !{!"FCurve", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !19, i64 32, !6, i64 48, !6, i64 56, !36, i64 64, !21, i64 68, !20, i64 72, !20, i64 74, !36, i64 76, !6, i64 80, !36, i64 88, !7, i64 92, !21, i64 104, !21, i64 108}
!54 = !{!51, !6, i64 0}
!55 = distinct !{!55, !14}
