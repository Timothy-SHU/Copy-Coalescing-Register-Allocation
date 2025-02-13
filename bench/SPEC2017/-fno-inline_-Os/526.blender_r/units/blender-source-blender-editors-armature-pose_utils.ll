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
  %8 = load ptr, ptr %5, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %4, %10
  %11 = phi ptr [ %14, %10 ], [ %8, %4 ]
  %12 = getelementptr inbounds %struct.CollectionPointerLink, ptr %11, i64 0, i32 2, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !38
  call fastcc void @fcurves_to_pchan_links_get(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %13) #11
  %14 = load ptr, ptr %11, align 8, !tbaa !34
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %10, !llvm.loop !42

16:                                               ; preds = %10, %4
  call void @BLI_freelistN(ptr noundef nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9
  %17 = call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef %1) #11, !range !44
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #9
  %20 = call i32 @CTX_data_visible_pose_bones(ptr noundef %0, ptr noundef nonnull %6) #10
  %21 = load ptr, ptr %6, align 8, !tbaa !34
  %22 = icmp eq ptr %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %19, %23
  %24 = phi ptr [ %27, %23 ], [ %21, %19 ]
  %25 = getelementptr inbounds %struct.CollectionPointerLink, ptr %24, i64 0, i32 2, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !38
  call fastcc void @fcurves_to_pchan_links_get(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %26) #11
  %27 = load ptr, ptr %24, align 8, !tbaa !34
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %23, !llvm.loop !45

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
define internal fastcc void @fcurves_to_pchan_links_get(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !46 {
  %5 = alloca %struct.ListBase, align 8
  %6 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %7 = call signext i16 @action_get_item_transforms(ptr noundef %2, ptr noundef %1, ptr noundef %3, ptr noundef nonnull %5) #10
  %8 = zext i16 %7 to i32
  %9 = getelementptr inbounds %struct.bPoseChannel, ptr %3, i64 0, i32 5
  %10 = load i16, ptr %9, align 8, !tbaa !47
  %11 = and i16 %10, -8
  store i16 %11, ptr %9, align 8, !tbaa !47
  %12 = icmp eq i16 %7, 0
  br i1 %12, label %61, label %13

13:                                               ; preds = %4
  %14 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %15 = call ptr %14(i64 noundef 128, ptr noundef nonnull @.str.1) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #9
  %16 = getelementptr inbounds %struct.tPChanFCurveLink, ptr %15, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !52
  %17 = getelementptr inbounds %struct.tPChanFCurveLink, ptr %15, i64 0, i32 3
  store ptr %3, ptr %17, align 8, !tbaa !53
  call void @RNA_pointer_create(ptr noundef %1, ptr noundef nonnull @RNA_PoseBone, ptr noundef nonnull %3, ptr noundef nonnull %6) #10
  %18 = call ptr @RNA_path_from_ID_to_struct(ptr noundef nonnull %6) #10
  %19 = getelementptr inbounds %struct.tPChanFCurveLink, ptr %15, i64 0, i32 4
  store ptr %18, ptr %19, align 8, !tbaa !55
  call void @BLI_addtail(ptr noundef %0, ptr noundef %15) #10
  %20 = and i32 %8, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %13
  %23 = load i16, ptr %9, align 8, !tbaa !47
  %24 = or i16 %23, 1
  store i16 %24, ptr %9, align 8, !tbaa !47
  br label %25

25:                                               ; preds = %22, %13
  %26 = and i32 %8, 2
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i16, ptr %9, align 8, !tbaa !47
  %30 = or i16 %29, 2
  store i16 %30, ptr %9, align 8, !tbaa !47
  br label %31

31:                                               ; preds = %28, %25
  %32 = and i32 %8, 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i16, ptr %9, align 8, !tbaa !47
  %36 = or i16 %35, 4
  store i16 %36, ptr %9, align 8, !tbaa !47
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
  %49 = load float, ptr %48, align 8, !tbaa !56
  %50 = getelementptr inbounds %struct.tPChanFCurveLink, ptr %15, i64 0, i32 9
  store float %49, ptr %50, align 4, !tbaa !57
  %51 = getelementptr inbounds %struct.bPoseChannel, ptr %3, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !58
  %53 = icmp eq ptr %52, null
  %54 = and i32 %8, 8
  %55 = icmp eq i32 %54, 0
  %56 = or i1 %55, %53
  br i1 %56, label %60, label %57

57:                                               ; preds = %37
  %58 = call ptr @IDP_CopyProperty(ptr noundef nonnull %52) #10
  %59 = getelementptr inbounds %struct.tPChanFCurveLink, ptr %15, i64 0, i32 11
  store ptr %58, ptr %59, align 8, !tbaa !59
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
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !60 {
  %2 = load ptr, ptr %0, align 8, !tbaa !61
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare i32 @CTX_data_visible_pose_bones(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @poseAnim_mapping_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !61
  %3 = icmp eq ptr %2, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %1, %13
  %5 = phi ptr [ %6, %13 ], [ %2, %1 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.tPChanFCurveLink, ptr %5, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !59
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %4
  tail call void @IDP_FreeProperty(ptr noundef nonnull %8) #10
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %12 = load ptr, ptr %7, align 8, !tbaa !59
  tail call void %11(ptr noundef %12) #10
  br label %13

13:                                               ; preds = %10, %4
  %14 = getelementptr inbounds %struct.tPChanFCurveLink, ptr %5, i64 0, i32 2
  tail call void @BLI_freelistN(ptr noundef nonnull %14) #10
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %16 = getelementptr inbounds %struct.tPChanFCurveLink, ptr %5, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !55
  tail call void %15(ptr noundef %17) #10
  tail call void @BLI_freelinkN(ptr noundef nonnull %0, ptr noundef nonnull %5) #10
  %18 = icmp eq ptr %6, null
  br i1 %18, label %19, label %4, !llvm.loop !63

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
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.bArmature, ptr %5, i64 0, i32 8
  %7 = load i32, ptr %6, align 8, !tbaa !70
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
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  br i1 %3, label %31, label %4

4:                                                ; preds = %1, %28
  %5 = phi ptr [ %29, %28 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.tPChanFCurveLink, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !53
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
  %19 = load float, ptr %18, align 4, !tbaa !57
  %20 = getelementptr inbounds %struct.bPoseChannel, ptr %7, i64 0, i32 25
  store float %19, ptr %20, align 8, !tbaa !56
  %21 = getelementptr inbounds %struct.tPChanFCurveLink, ptr %5, i64 0, i32 11
  %22 = load ptr, ptr %21, align 8, !tbaa !59
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %4
  %25 = load ptr, ptr %6, align 8, !tbaa !53
  %26 = getelementptr inbounds %struct.bPoseChannel, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !58
  tail call void @IDP_SyncGroupValues(ptr noundef %27, ptr noundef nonnull %22) #10
  br label %28

28:                                               ; preds = %24, %4
  %29 = load ptr, ptr %5, align 8, !tbaa !34
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %4, !llvm.loop !72

31:                                               ; preds = %28, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !73 {
  %3 = load float, ptr %1, align 4, !tbaa !74
  store float %3, ptr %0, align 4, !tbaa !74
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !74
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !74
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !74
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !74
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
  %11 = load ptr, ptr %3, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %27, label %13

13:                                               ; preds = %9, %24
  %14 = phi ptr [ %25, %24 ], [ %11, %9 ]
  %15 = getelementptr inbounds %struct.tPChanFCurveLink, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !53
  call void @ANIM_relative_keyingset_add_source(ptr noundef nonnull %6, ptr noundef %2, ptr noundef nonnull @RNA_PoseBone, ptr noundef %16) #10
  %17 = getelementptr inbounds %struct.bPoseChannel, ptr %16, i64 0, i32 12
  %18 = load ptr, ptr %17, align 8, !tbaa !75
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.Bone, ptr %18, i64 0, i32 10
  %22 = load i32, ptr %21, align 8, !tbaa !76
  %23 = and i32 %22, -8193
  store i32 %23, ptr %21, align 8, !tbaa !76
  br label %24

24:                                               ; preds = %20, %13
  %25 = load ptr, ptr %14, align 8, !tbaa !34
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %13, !llvm.loop !78

27:                                               ; preds = %24, %9
  %28 = call i32 @ANIM_apply_keyingset(ptr noundef %0, ptr noundef nonnull %6, ptr noundef null, ptr noundef %10, i16 noundef signext 0, float noundef %4) #10
  call void @BLI_freelistN(ptr noundef nonnull %6) #10
  %29 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 18
  %30 = load ptr, ptr %29, align 8, !tbaa !79
  %31 = getelementptr inbounds %struct.bPose, ptr %30, i64 0, i32 14, i32 11
  %32 = load i16, ptr %31, align 2, !tbaa !80
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
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %22, label %11

11:                                               ; preds = %7, %19
  %12 = phi ptr [ %20, %19 ], [ %9, %7 ]
  %13 = getelementptr inbounds %struct.LinkData, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !82
  %15 = getelementptr inbounds %struct.FCurve, ptr %14, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !84
  %17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %16) #12
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %11
  %20 = load ptr, ptr %12, align 8, !tbaa !86
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %11, !llvm.loop !87

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
!38 = !{!39, !35, i64 32}
!39 = !{!"CollectionPointerLink", !35, i64 0, !35, i64 8, !40, i64 16}
!40 = !{!"PointerRNA", !41, i64 0, !35, i64 8, !35, i64 16}
!41 = !{!"", !35, i64 0}
!42 = distinct !{!42, !43}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{i8 0, i8 2}
!45 = distinct !{!45, !43}
!46 = !{!"pose_utils.c:fcurves_to_pchan_links_get"}
!47 = !{!48, !50, i64 104}
!48 = !{!"bPoseChannel", !35, i64 0, !35, i64 8, !35, i64 16, !49, i64 24, !36, i64 40, !50, i64 104, !50, i64 106, !50, i64 108, !50, i64 110, !36, i64 112, !36, i64 113, !36, i64 114, !35, i64 120, !35, i64 128, !35, i64 136, !49, i64 144, !49, i64 160, !35, i64 176, !35, i64 184, !35, i64 192, !36, i64 200, !36, i64 212, !36, i64 224, !36, i64 236, !36, i64 252, !51, i64 264, !50, i64 268, !50, i64 270, !36, i64 272, !36, i64 336, !36, i64 400, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !51, i64 524, !51, i64 528, !51, i64 532, !35, i64 536}
!49 = !{!"ListBase", !35, i64 0, !35, i64 8}
!50 = !{!"short", !36, i64 0}
!51 = !{!"float", !36, i64 0}
!52 = !{i64 0, i64 8, !34, i64 8, i64 8, !34}
!53 = !{!54, !35, i64 32}
!54 = !{!"tPChanFCurveLink", !35, i64 0, !35, i64 8, !49, i64 16, !35, i64 32, !35, i64 40, !36, i64 48, !36, i64 60, !36, i64 72, !36, i64 84, !51, i64 100, !36, i64 104, !35, i64 120}
!55 = !{!54, !35, i64 40}
!56 = !{!48, !51, i64 264}
!57 = !{!54, !51, i64 100}
!58 = !{!48, !35, i64 16}
!59 = !{!54, !35, i64 120}
!60 = !{!"pose_utils.c:BLI_listbase_is_empty"}
!61 = !{!49, !35, i64 0}
!62 = !{!54, !35, i64 0}
!63 = distinct !{!63, !43}
!64 = !{!65, !35, i64 296}
!65 = !{!"Object", !66, i64 0, !35, i64 120, !35, i64 128, !50, i64 136, !50, i64 138, !67, i64 140, !67, i64 144, !67, i64 148, !36, i64 152, !35, i64 216, !35, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !35, i64 280, !35, i64 288, !35, i64 296, !35, i64 304, !68, i64 312, !35, i64 360, !49, i64 368, !49, i64 384, !49, i64 400, !49, i64 416, !67, i64 432, !67, i64 436, !35, i64 440, !35, i64 448, !67, i64 456, !67, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !51, i64 616, !51, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !67, i64 944, !50, i64 948, !50, i64 950, !50, i64 952, !50, i64 954, !50, i64 956, !50, i64 958, !50, i64 960, !50, i64 962, !50, i64 964, !36, i64 966, !36, i64 967, !67, i64 968, !67, i64 972, !67, i64 976, !67, i64 980, !67, i64 984, !51, i64 988, !51, i64 992, !51, i64 996, !51, i64 1000, !51, i64 1004, !51, i64 1008, !51, i64 1012, !51, i64 1016, !51, i64 1020, !51, i64 1024, !51, i64 1028, !51, i64 1032, !50, i64 1036, !50, i64 1038, !50, i64 1040, !36, i64 1042, !36, i64 1043, !50, i64 1044, !36, i64 1046, !36, i64 1047, !51, i64 1048, !51, i64 1052, !49, i64 1056, !49, i64 1072, !49, i64 1088, !49, i64 1104, !51, i64 1120, !50, i64 1124, !50, i64 1126, !36, i64 1128, !67, i64 1144, !67, i64 1148, !35, i64 1152, !36, i64 1160, !36, i64 1161, !50, i64 1162, !36, i64 1164, !49, i64 1176, !49, i64 1192, !49, i64 1208, !49, i64 1224, !35, i64 1240, !35, i64 1248, !35, i64 1256, !36, i64 1264, !36, i64 1265, !50, i64 1266, !51, i64 1268, !35, i64 1272, !35, i64 1280, !35, i64 1288, !35, i64 1296, !69, i64 1304, !69, i64 1312, !67, i64 1320, !67, i64 1324, !49, i64 1328, !49, i64 1344, !35, i64 1360, !35, i64 1368, !35, i64 1376, !36, i64 1384, !35, i64 1392, !49, i64 1400, !35, i64 1416}
!66 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !50, i64 98, !67, i64 100, !67, i64 104, !67, i64 108, !35, i64 112}
!67 = !{!"int", !36, i64 0}
!68 = !{!"bAnimVizSettings", !67, i64 0, !67, i64 4, !67, i64 8, !67, i64 12, !50, i64 16, !50, i64 18, !50, i64 20, !50, i64 22, !50, i64 24, !50, i64 26, !50, i64 28, !50, i64 30, !67, i64 32, !67, i64 36, !67, i64 40, !67, i64 44}
!69 = !{!"long", !36, i64 0}
!70 = !{!71, !67, i64 192}
!71 = !{!"bArmature", !66, i64 0, !35, i64 120, !49, i64 128, !49, i64 144, !35, i64 160, !35, i64 168, !35, i64 176, !35, i64 184, !67, i64 192, !67, i64 196, !67, i64 200, !67, i64 204, !50, i64 208, !50, i64 210, !67, i64 212, !67, i64 216, !67, i64 220, !50, i64 224, !50, i64 226, !50, i64 228, !50, i64 230, !67, i64 232, !67, i64 236, !67, i64 240, !67, i64 244, !67, i64 248, !67, i64 252}
!72 = distinct !{!72, !43}
!73 = !{!"pose_utils.c:copy_v3_v3"}
!74 = !{!51, !51, i64 0}
!75 = !{!48, !35, i64 120}
!76 = !{!77, !67, i64 176}
!77 = !{!"Bone", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !49, i64 32, !36, i64 48, !51, i64 112, !36, i64 116, !36, i64 128, !36, i64 140, !67, i64 176, !36, i64 180, !36, i64 192, !36, i64 204, !51, i64 268, !51, i64 272, !51, i64 276, !51, i64 280, !51, i64 284, !51, i64 288, !51, i64 292, !51, i64 296, !51, i64 300, !51, i64 304, !36, i64 308, !67, i64 320, !50, i64 324, !36, i64 326}
!78 = distinct !{!78, !43}
!79 = !{!65, !35, i64 288}
!80 = !{!81, !50, i64 134}
!81 = !{!"bPose", !49, i64 0, !35, i64 16, !50, i64 24, !50, i64 26, !67, i64 28, !67, i64 32, !51, i64 36, !36, i64 40, !36, i64 52, !49, i64 64, !67, i64 80, !67, i64 84, !35, i64 88, !35, i64 96, !68, i64 104, !36, i64 152}
!82 = !{!83, !35, i64 16}
!83 = !{!"LinkData", !35, i64 0, !35, i64 8, !35, i64 16}
!84 = !{!85, !35, i64 80}
!85 = !{!"FCurve", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !49, i64 32, !35, i64 48, !35, i64 56, !67, i64 64, !51, i64 68, !50, i64 72, !50, i64 74, !67, i64 76, !35, i64 80, !67, i64 88, !36, i64 92, !51, i64 104, !51, i64 108}
!86 = !{!83, !35, i64 0}
!87 = distinct !{!87, !43}
