; ModuleID = 'blender/source/blender/editors/armature/pose_transform.c'
source_filename = "blender/source/blender/editors/armature/pose_transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.bArmature = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.bPoseChannel = type { ptr, ptr, ptr, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i8, i8, [6 x i8], ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], float, i16, i16, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.EditBone = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], float, [3 x float], [3 x float], i32, i32, float, float, float, float, float, float, float, float, float, float, i16 }
%struct.CollectionPointerLink = type { ptr, ptr, %struct.PointerRNA }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.BakeData = type { %struct.ImageFormatData, [1024 x i8], i16, i16, i16, i16, float, float, [3 x i8], i8, i8, [3 x i8], [64 x i8] }
%struct.AudioData = type { i32, float, float, float, i32, i16, i16, float, float }
%struct.GameFraming = type { [3 x float], i8, i8, i8, i8 }
%struct.GameData = type { %struct.GameFraming, i16, i16, i16, i16, i16, i16, i16, i16, i16, [3 x i16], %struct.GameDome, i16, i16, float, %struct.RecastData, float, float, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float }
%struct.GameDome = type { i16, i16, i16, i16, float, float, ptr }
%struct.RecastData = type { float, float, float, float, float, float, float, float, float, float, i32, float, float, i16, i16 }
%struct.UnitSettings = type { float, i8, i8, i16 }
%struct.PhysicsSettings = type { [3 x float], i32, i32, i32 }
%struct.ColorManagedViewSettings = type { i32, i32, [64 x i8], [64 x i8], float, float, ptr, ptr }
%struct.ColorManagedDisplaySettings = type { [64 x i8] }
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.Bone = type { ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], float, [3 x float], [3 x float], [3 x [3 x float]], i32, [3 x float], [3 x float], [4 x [4 x float]], float, float, float, float, float, float, float, float, float, float, [3 x float], i32, i16, [1 x i16] }
%struct.bPose = type { %struct.ListBase, ptr, i16, i16, i32, i32, float, [3 x float], [3 x float], %struct.ListBase, i32, i32, ptr, ptr, %struct.bAnimVizSettings, [64 x i8] }

@.str = private unnamed_addr constant [24 x i8] c"Apply Pose as Rest Pose\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"POSE_OT_armature_apply\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Apply the current pose as the new rest pose\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Apply Visual Transform to Pose\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"POSE_OT_visual_transform_apply\00", align 1
@.str.5 = private unnamed_addr constant [66 x i8] c"Apply final constrained position of pose bones to their transform\00", align 1
@g_posebuf = internal global ptr null, align 8
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [10 x i8] c"Copy Pose\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"POSE_OT_copy\00", align 1
@.str.8 = private unnamed_addr constant [67 x i8] c"Copies the current pose of the selected bones to copy/paste buffer\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"Paste Pose\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"POSE_OT_paste\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"Paste the stored pose on to the current pose\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"flipped\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"Flipped on X-Axis\00", align 1
@.str.14 = private unnamed_addr constant [49 x i8] c"Paste the stored pose flipped on to current pose\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"selected_mask\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"On Selected Only\00", align 1
@.str.17 = private unnamed_addr constant [68 x i8] c"Only paste the stored pose on to selected bones in the current pose\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"Clear Pose Scale\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"POSE_OT_scale_clear\00", align 1
@.str.20 = private unnamed_addr constant [56 x i8] c"Reset scaling of selected bones to their default values\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"Clear Pose Rotation\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"POSE_OT_rot_clear\00", align 1
@.str.23 = private unnamed_addr constant [58 x i8] c"Reset rotations of selected bones to their default values\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"Clear Pose Location\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"POSE_OT_loc_clear\00", align 1
@.str.26 = private unnamed_addr constant [58 x i8] c"Reset locations of selected bones to their default values\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c"Clear Pose Transforms\00", align 1
@.str.28 = private unnamed_addr constant [25 x i8] c"POSE_OT_transforms_clear\00", align 1
@.str.29 = private unnamed_addr constant [80 x i8] c"Reset location, rotation, and scaling of selected bones to their default values\00", align 1
@.str.30 = private unnamed_addr constant [22 x i8] c"Clear User Transforms\00", align 1
@.str.31 = private unnamed_addr constant [30 x i8] c"POSE_OT_user_transforms_clear\00", align 1
@.str.32 = private unnamed_addr constant [48 x i8] c"Reset pose on selected bones to keyframed state\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"only_selected\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"Only Selected\00", align 1
@.str.35 = private unnamed_addr constant [28 x i8] c"Only visible/selected bones\00", align 1
@.str.36 = private unnamed_addr constant [41 x i8] c"Cannot apply pose to lib-linked armature\00", align 1
@.str.37 = private unnamed_addr constant [124 x i8] c"Actions on this armature will be destroyed by this new rest pose as the transforms stored are relative to the old rest pose\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.38 = private unnamed_addr constant [16 x i8] c"No pose to copy\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"WholeCharacter\00", align 1
@.str.40 = private unnamed_addr constant [21 x i8] c"Copy buffer is empty\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"Scaling\00", align 1
@.str.42 = private unnamed_addr constant [71 x i8] c"Programming error: missing clear transform function or keying set name\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"Rotation\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"Location\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"LocRotScale\00", align 1
@.str.46 = private unnamed_addr constant [19 x i8] c"OB<ClearTfmWorkOb>\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @POSE_OT_armature_apply(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.1, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @apply_armature_pose2bones_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_posemode, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @apply_armature_pose2bones_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = alloca [3 x [3 x float]], align 16
  %4 = alloca [3 x [3 x float]], align 16
  %5 = alloca [3 x [3 x float]], align 16
  %6 = alloca [3 x [3 x float]], align 16
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %10 = tail call ptr @CTX_data_active_object(ptr noundef %0) #8
  %11 = tail call ptr @BKE_object_pose_armature_get(ptr noundef %10) #8
  %12 = tail call ptr @BKE_armature_from_object(ptr noundef %11) #8
  %13 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 3
  %14 = load i16, ptr %13, align 8, !tbaa !18
  %15 = icmp eq i16 %14, 25
  br i1 %15, label %16, label %66

16:                                               ; preds = %2
  %17 = tail call zeroext i8 @BKE_object_obdata_is_libdata(ptr noundef nonnull %11) #8
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %21 = load ptr, ptr %20, align 8, !tbaa !25
  tail call void @BKE_report(ptr noundef %21, i32 noundef 32, ptr noundef nonnull @.str.36) #8
  br label %66

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !27
  %25 = icmp eq ptr %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr %24, align 8, !tbaa !28
  %28 = icmp eq ptr %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %31 = load ptr, ptr %30, align 8, !tbaa !25
  tail call void @BKE_report(ptr noundef %31, i32 noundef 16, ptr noundef nonnull @.str.37) #8
  br label %32

32:                                               ; preds = %29, %26, %22
  tail call void @ED_armature_to_edit(ptr noundef %12) #8
  %33 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 18
  %34 = load ptr, ptr %33, align 8, !tbaa !30
  %35 = load ptr, ptr %34, align 8, !tbaa !31
  %36 = icmp eq ptr %35, null
  br i1 %36, label %65, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.bArmature, ptr %12, i64 0, i32 4
  %39 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 1
  br label %40

40:                                               ; preds = %37, %40
  %41 = phi ptr [ %35, %37 ], [ %63, %40 ]
  %42 = load ptr, ptr %38, align 8, !tbaa !32
  %43 = getelementptr inbounds %struct.bPoseChannel, ptr %41, i64 0, i32 4
  %44 = call ptr @ED_armature_bone_find_name(ptr noundef %42, ptr noundef nonnull %43) #8
  %45 = getelementptr inbounds %struct.EditBone, ptr %44, i64 0, i32 7
  %46 = getelementptr inbounds %struct.bPoseChannel, ptr %41, i64 0, i32 31
  call fastcc void @copy_v3_v3(ptr noundef nonnull %45, ptr noundef nonnull %46) #9
  %47 = getelementptr inbounds %struct.EditBone, ptr %44, i64 0, i32 8
  %48 = getelementptr inbounds %struct.bPoseChannel, ptr %41, i64 0, i32 32
  call fastcc void @copy_v3_v3(ptr noundef nonnull %47, ptr noundef nonnull %48) #9
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #10
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %47, ptr noundef nonnull %45) #9
  call void @vec_roll_to_mat3(ptr noundef nonnull %7, float noundef 0.000000e+00, ptr noundef nonnull %3) #8
  %49 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %4, ptr noundef nonnull %3) #8
  %50 = getelementptr inbounds %struct.bPoseChannel, ptr %41, i64 0, i32 29
  call void @copy_m3_m4(ptr noundef nonnull %5, ptr noundef nonnull %50) #8
  call void @mul_m3_m3m3(ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %5) #8
  call void @mat3_to_eul(ptr noundef nonnull %8, ptr noundef nonnull %6) #8
  %51 = load float, ptr %39, align 4, !tbaa !34
  %52 = getelementptr inbounds %struct.EditBone, ptr %44, i64 0, i32 6
  store float %51, ptr %52, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #10
  %53 = getelementptr inbounds %struct.bPoseChannel, ptr %41, i64 0, i32 20
  call fastcc void @zero_v3(ptr noundef nonnull %53) #9
  %54 = getelementptr inbounds %struct.bPoseChannel, ptr %41, i64 0, i32 22
  call fastcc void @zero_v3(ptr noundef nonnull %54) #9
  %55 = getelementptr inbounds %struct.bPoseChannel, ptr %41, i64 0, i32 23
  call void @unit_qt(ptr noundef nonnull %55) #8
  %56 = getelementptr inbounds %struct.bPoseChannel, ptr %41, i64 0, i32 24
  %57 = getelementptr inbounds %struct.bPoseChannel, ptr %41, i64 0, i32 25
  call void @unit_axis_angle(ptr noundef nonnull %56, ptr noundef nonnull %57) #8
  %58 = getelementptr inbounds %struct.bPoseChannel, ptr %41, i64 0, i32 21
  %59 = getelementptr inbounds %struct.bPoseChannel, ptr %41, i64 0, i32 21, i64 2
  store float 1.000000e+00, ptr %59, align 4, !tbaa !34
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %58, align 4, !tbaa !34
  %60 = getelementptr inbounds %struct.EditBone, ptr %44, i64 0, i32 9
  %61 = load i32, ptr %60, align 4, !tbaa !37
  %62 = or i32 %61, 8192
  store i32 %62, ptr %60, align 4, !tbaa !37
  %63 = load ptr, ptr %41, align 8, !tbaa !31
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %40, !llvm.loop !38

65:                                               ; preds = %40, %32
  call void @ED_armature_from_edit(ptr noundef %12) #8
  call void @ED_armature_edit_free(ptr noundef %12) #8
  call void @BKE_pose_where_is(ptr noundef %9, ptr noundef %11) #8
  call fastcc void @applyarmature_fix_boneparents(ptr noundef %9, ptr noundef %11) #9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85196800, ptr noundef %11) #8
  br label %66

66:                                               ; preds = %2, %65, %19
  %67 = phi i32 [ 2, %19 ], [ 4, %65 ], [ 2, %2 ]
  ret i32 %67
}

; Function Attrs: optsize
declare i32 @ED_operator_posemode(ptr noundef) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @POSE_OT_visual_transform_apply(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.3, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.4, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.5, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pose_visual_transform_apply_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_posemode, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @pose_visual_transform_apply_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca [4 x [4 x float]], align 16
  %5 = tail call ptr @CTX_data_active_object(ptr noundef %0) #8
  %6 = tail call ptr @BKE_object_pose_armature_get(ptr noundef %5) #8
  %7 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 3
  %8 = load i16, ptr %7, align 8, !tbaa !18
  %9 = icmp eq i16 %8, 25
  br i1 %9, label %10, label %22

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  %11 = call i32 @CTX_data_selected_pose_bones(ptr noundef %0, ptr noundef nonnull %3) #8
  %12 = load ptr, ptr %3, align 8, !tbaa !31
  %13 = icmp eq ptr %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %10, %14
  %15 = phi ptr [ %19, %14 ], [ %12, %10 ]
  %16 = getelementptr inbounds %struct.CollectionPointerLink, ptr %15, i64 0, i32 2, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #10
  %18 = getelementptr inbounds %struct.bPoseChannel, ptr %17, i64 0, i32 29
  call void @BKE_armature_mat_pose_to_bone(ptr noundef %17, ptr noundef nonnull %18, ptr noundef nonnull %4) #8
  call void @BKE_pchan_apply_mat4(ptr noundef %17, ptr noundef nonnull %4, i8 noundef zeroext 1) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #10
  %19 = load ptr, ptr %15, align 8, !tbaa !31
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %14, !llvm.loop !44

21:                                               ; preds = %14, %10
  call void @BLI_freelistN(ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  call void @DAG_id_tag_update(ptr noundef %6, i16 noundef signext 2) #8
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85196800, ptr noundef %6) #8
  br label %22

22:                                               ; preds = %2, %21
  %23 = phi i32 [ 4, %21 ], [ 2, %2 ]
  ret i32 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_clipboard_posebuf_free() local_unnamed_addr #1 {
  %1 = load ptr, ptr @g_posebuf, align 8, !tbaa !31
  %2 = icmp eq ptr %1, null
  br i1 %2, label %23, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr %1, align 8, !tbaa !31
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %3, %14
  %7 = phi ptr [ %15, %14 ], [ %4, %3 ]
  %8 = getelementptr inbounds %struct.bPoseChannel, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  tail call void @IDP_FreeProperty(ptr noundef nonnull %9) #8
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !31
  %13 = load ptr, ptr %8, align 8, !tbaa !45
  tail call void %12(ptr noundef %13) #8
  br label %14

14:                                               ; preds = %6, %11
  %15 = load ptr, ptr %7, align 8, !tbaa !31
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %6, !llvm.loop !47

17:                                               ; preds = %14
  %18 = load ptr, ptr @g_posebuf, align 8, !tbaa !31
  br label %19

19:                                               ; preds = %17, %3
  %20 = phi ptr [ %18, %17 ], [ %1, %3 ]
  tail call void @BLI_freelistN(ptr noundef %20) #8
  %21 = load ptr, ptr @MEM_freeN, align 8, !tbaa !31
  %22 = load ptr, ptr @g_posebuf, align 8, !tbaa !31
  tail call void %21(ptr noundef %22) #8
  br label %23

23:                                               ; preds = %19, %0
  store ptr null, ptr @g_posebuf, align 8, !tbaa !31
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare void @IDP_FreeProperty(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @POSE_OT_copy(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.6, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.7, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.8, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pose_copy_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_posemode, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 1, ptr %6, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @pose_copy_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = tail call ptr @CTX_data_active_object(ptr noundef %0) #8
  %4 = tail call ptr @BKE_object_pose_armature_get(ptr noundef %3) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 18
  %8 = load ptr, ptr %7, align 8, !tbaa !30
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %6, %2
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !25
  tail call void @BKE_report(ptr noundef %12, i32 noundef 32, ptr noundef nonnull @.str.38) #8
  br label %15

13:                                               ; preds = %6
  tail call void @ED_clipboard_posebuf_free() #9
  tail call fastcc void @set_pose_keys(ptr noundef nonnull %4) #9
  %14 = load ptr, ptr %7, align 8, !tbaa !30
  tail call void @BKE_pose_copy_data(ptr noundef nonnull @g_posebuf, ptr noundef %14, i8 noundef zeroext 0) #8
  br label %15

15:                                               ; preds = %13, %10
  %16 = phi i32 [ 2, %10 ], [ 4, %13 ]
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @POSE_OT_paste(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.9, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.10, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.11, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pose_paste_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_posemode, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.12, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #8
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 268435456) #8
  %10 = load ptr, ptr %7, align 8, !tbaa !48
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.15, i32 noundef 0, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @pose_paste_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = tail call ptr @CTX_data_active_object(ptr noundef %0) #8
  %4 = tail call ptr @BKE_object_pose_armature_get(ptr noundef %3) #8
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = tail call i32 @RNA_boolean_get(ptr noundef %7, ptr noundef nonnull @.str.12) #8
  %9 = trunc i32 %8 to i8
  %10 = load ptr, ptr %6, align 8, !tbaa !49
  %11 = tail call i32 @RNA_boolean_get(ptr noundef %10, ptr noundef nonnull @.str.15) #8
  %12 = trunc i32 %11 to i8
  %13 = tail call ptr @ANIM_get_keyingset_for_autokeying(ptr noundef %5, ptr noundef nonnull @.str.39) #8
  %14 = icmp eq ptr %4, null
  br i1 %14, label %52, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 18
  %17 = load ptr, ptr %16, align 8, !tbaa !30
  %18 = icmp eq ptr %17, null
  br i1 %18, label %52, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr @g_posebuf, align 8, !tbaa !31
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %24 = load ptr, ptr %23, align 8, !tbaa !25
  tail call void @BKE_report(ptr noundef %24, i32 noundef 32, ptr noundef nonnull @.str.40) #8
  br label %52

25:                                               ; preds = %19
  %26 = icmp eq i8 %12, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %25
  %28 = tail call i32 @ctx_data_list_count(ptr noundef %0, ptr noundef nonnull @CTX_data_selected_pose_bones) #8
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, i8 0, i8 %12
  %31 = load ptr, ptr @g_posebuf, align 8, !tbaa !31
  br label %32

32:                                               ; preds = %27, %25
  %33 = phi ptr [ %20, %25 ], [ %31, %27 ]
  %34 = phi i8 [ 0, %25 ], [ %30, %27 ]
  %35 = load ptr, ptr %33, align 8, !tbaa !31
  %36 = icmp eq ptr %35, null
  br i1 %36, label %51, label %37

37:                                               ; preds = %32, %48
  %38 = phi ptr [ %49, %48 ], [ %35, %32 ]
  %39 = getelementptr inbounds %struct.bPoseChannel, ptr %38, i64 0, i32 5
  %40 = load i16, ptr %39, align 8, !tbaa !50
  %41 = and i16 %40, 2048
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %37
  %44 = tail call fastcc ptr @pose_bone_do_paste(ptr noundef nonnull %4, ptr noundef nonnull %38, i8 noundef zeroext %34, i8 noundef zeroext %9) #9
  %45 = icmp eq ptr %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %43
  %47 = tail call zeroext i8 @ED_autokeyframe_pchan(ptr noundef %0, ptr noundef %5, ptr noundef nonnull %4, ptr noundef nonnull %44, ptr noundef %13) #8
  br label %48

48:                                               ; preds = %43, %46, %37
  %49 = load ptr, ptr %38, align 8, !tbaa !31
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %37, !llvm.loop !51

51:                                               ; preds = %48, %32
  tail call void @DAG_id_tag_update(ptr noundef nonnull %4, i16 noundef signext 2) #8
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85196800, ptr noundef nonnull %4) #8
  br label %52

52:                                               ; preds = %2, %15, %51, %22
  %53 = phi i32 [ 2, %22 ], [ 4, %51 ], [ 2, %15 ], [ 2, %2 ]
  ret i32 %53
}

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @POSE_OT_scale_clear(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.18, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.19, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.20, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pose_clear_scale_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_posemode, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @pose_clear_scale_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = tail call fastcc i32 @pose_clear_transform_generic_exec(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @pchan_clear_scale, ptr noundef nonnull @.str.41) #9, !range !52
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @POSE_OT_rot_clear(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.21, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.22, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.23, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pose_clear_rot_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_posemode, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @pose_clear_rot_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = tail call fastcc i32 @pose_clear_transform_generic_exec(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @pchan_clear_rot, ptr noundef nonnull @.str.43) #9, !range !52
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @POSE_OT_loc_clear(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.24, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.25, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.26, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pose_clear_loc_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_posemode, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @pose_clear_loc_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = tail call fastcc i32 @pose_clear_transform_generic_exec(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @pchan_clear_loc, ptr noundef nonnull @.str.44) #9, !range !52
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @POSE_OT_transforms_clear(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.27, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.28, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.29, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pose_clear_transforms_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_posemode, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @pose_clear_transforms_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = tail call fastcc i32 @pose_clear_transform_generic_exec(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @pchan_clear_transforms, ptr noundef nonnull @.str.45) #9, !range !52
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @POSE_OT_user_transforms_clear(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.30, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.31, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.32, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pose_clear_user_transforms_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_posemode, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.33, i32 noundef 1, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @pose_clear_user_transforms_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.Object, align 8
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %6 = tail call ptr @CTX_data_active_object(ptr noundef %0) #8
  %7 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 22, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !53
  %9 = sitofp i32 %8 to float
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !49
  %12 = tail call i32 @RNA_boolean_get(ptr noundef %11, ptr noundef nonnull @.str.33) #8
  %13 = trunc i32 %12 to i8
  %14 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !27
  %16 = icmp eq ptr %15, null
  br i1 %16, label %62, label %17

17:                                               ; preds = %2
  %18 = load ptr, ptr %15, align 8, !tbaa !28
  %19 = icmp eq ptr %18, null
  br i1 %19, label %62, label %20

20:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  store ptr null, ptr %3, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 1424, ptr nonnull %4) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1424) %4, i8 0, i64 1424, i1 false)
  %21 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 18
  %22 = load ptr, ptr %21, align 8, !tbaa !30
  call void @BKE_pose_copy_data(ptr noundef nonnull %3, ptr noundef %22, i8 noundef zeroext 0) #8
  %23 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 4
  %24 = call ptr @BLI_strncpy(ptr noundef nonnull %23, ptr noundef nonnull @.str.46, i64 noundef 66) #8
  %25 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 3
  store i16 25, ptr %25, align 8, !tbaa !18
  %26 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 19
  %27 = load ptr, ptr %26, align 8, !tbaa !72
  %28 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  store ptr %27, ptr %28, align 8, !tbaa !72
  %29 = load ptr, ptr %14, align 8, !tbaa !27
  %30 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 1
  store ptr %29, ptr %30, align 8, !tbaa !27
  %31 = load ptr, ptr %3, align 8, !tbaa !31
  %32 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 18
  store ptr %31, ptr %32, align 8, !tbaa !30
  call void @BKE_animsys_evaluate_animdata(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef %29, float noundef %9, i16 noundef signext 2) #8
  %33 = load ptr, ptr %3, align 8, !tbaa !31
  %34 = load ptr, ptr %33, align 8, !tbaa !31
  %35 = icmp eq ptr %34, null
  br i1 %35, label %58, label %36

36:                                               ; preds = %20, %36
  %37 = phi ptr [ %39, %36 ], [ %34, %20 ]
  %38 = call fastcc ptr @pose_bone_do_paste(ptr noundef %6, ptr noundef nonnull %37, i8 noundef zeroext %13, i8 noundef zeroext 0) #9
  %39 = load ptr, ptr %37, align 8, !tbaa !31
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %36, !llvm.loop !73

41:                                               ; preds = %36
  %42 = load ptr, ptr %3, align 8, !tbaa !31
  %43 = load ptr, ptr %42, align 8, !tbaa !31
  %44 = icmp eq ptr %43, null
  br i1 %44, label %58, label %45

45:                                               ; preds = %41, %53
  %46 = phi ptr [ %54, %53 ], [ %43, %41 ]
  %47 = getelementptr inbounds %struct.bPoseChannel, ptr %46, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !45
  %49 = icmp eq ptr %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %45
  call void @IDP_FreeProperty(ptr noundef nonnull %48) #8
  %51 = load ptr, ptr @MEM_freeN, align 8, !tbaa !31
  %52 = load ptr, ptr %47, align 8, !tbaa !45
  call void %51(ptr noundef %52) #8
  br label %53

53:                                               ; preds = %45, %50
  %54 = load ptr, ptr %46, align 8, !tbaa !31
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %45, !llvm.loop !74

56:                                               ; preds = %53
  %57 = load ptr, ptr %3, align 8, !tbaa !31
  br label %58

58:                                               ; preds = %20, %56, %41
  %59 = phi ptr [ %57, %56 ], [ %42, %41 ], [ %33, %20 ]
  call void @BLI_freelistN(ptr noundef %59) #8
  %60 = load ptr, ptr @MEM_freeN, align 8, !tbaa !31
  %61 = load ptr, ptr %3, align 8, !tbaa !31
  call void %60(ptr noundef %61) #8
  call void @llvm.lifetime.end.p0(i64 1424, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  br label %65

62:                                               ; preds = %17, %2
  %63 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 18
  %64 = load ptr, ptr %63, align 8, !tbaa !30
  tail call void @BKE_pose_rest(ptr noundef %64) #8
  br label %65

65:                                               ; preds = %62, %58
  call void @DAG_id_tag_update(ptr noundef %6, i16 noundef signext 2) #8
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85065728, ptr noundef %6) #8
  ret i32 4
}

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_object_pose_armature_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_armature_from_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BKE_object_obdata_is_libdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_armature_to_edit(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_armature_bone_find_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  store float %3, ptr %0, align 4, !tbaa !34
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #4 {
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = load float, ptr %2, align 4, !tbaa !34
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !34
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !34
  ret void
}

; Function Attrs: optsize
declare void @vec_roll_to_mat3(ptr noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @invert_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_m3_m3m3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mat3_to_eul(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #0 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !34
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !34
  ret void
}

; Function Attrs: optsize
declare void @unit_qt(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @unit_axis_angle(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_armature_from_edit(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_armature_edit_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_pose_where_is(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @applyarmature_fix_boneparents(ptr noundef %0, ptr noundef readnone %1) unnamed_addr #1 {
  %3 = alloca %struct.Object, align 8
  call void @llvm.lifetime.start.p0(i64 1424, ptr nonnull %3) #10
  %4 = load ptr, ptr @G, align 8, !tbaa !75
  %5 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 13
  %6 = load ptr, ptr %5, align 8, !tbaa !31
  %7 = icmp eq ptr %6, null
  br i1 %7, label %26, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 47
  br label %10

10:                                               ; preds = %8, %23
  %11 = phi ptr [ %6, %8 ], [ %24, %23 ]
  %12 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !77
  %14 = icmp eq ptr %13, %1
  br i1 %14, label %15, label %23

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 4
  %17 = load i16, ptr %16, align 2, !tbaa !78
  %18 = icmp eq i16 %17, 7
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 47
  call void @BKE_object_apply_mat4(ptr noundef nonnull %11, ptr noundef nonnull %20, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  call void @BKE_object_workob_calc_parent(ptr noundef %0, ptr noundef nonnull %11, ptr noundef nonnull %3) #8
  %21 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 48
  %22 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %21, ptr noundef nonnull %9) #8
  br label %23

23:                                               ; preds = %10, %15, %19
  %24 = load ptr, ptr %11, align 8, !tbaa !31
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %10, !llvm.loop !79

26:                                               ; preds = %23, %2
  call void @llvm.lifetime.end.p0(i64 1424, ptr nonnull %3) #10
  ret void
}

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_object_apply_mat4(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_object_workob_calc_parent(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CTX_data_selected_pose_bones(ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare void @BKE_armature_mat_pose_to_bone(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_pchan_apply_mat4(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_pose_keys(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !72
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 18
  %5 = load ptr, ptr %4, align 8, !tbaa !30
  %6 = icmp eq ptr %5, null
  br i1 %6, label %39, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %5, align 8, !tbaa !31
  %9 = icmp eq ptr %8, null
  br i1 %9, label %39, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.bArmature, ptr %3, i64 0, i32 15
  br label %12

12:                                               ; preds = %10, %36
  %13 = phi ptr [ %8, %10 ], [ %37, %36 ]
  %14 = getelementptr inbounds %struct.bPoseChannel, ptr %13, i64 0, i32 12
  %15 = load ptr, ptr %14, align 8, !tbaa !80
  %16 = icmp eq ptr %15, null
  br i1 %16, label %32, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.Bone, ptr %15, i64 0, i32 10
  %19 = load i32, ptr %18, align 8, !tbaa !81
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %17
  %23 = load i32, ptr %11, align 8, !tbaa !83
  %24 = getelementptr inbounds %struct.Bone, ptr %15, i64 0, i32 25
  %25 = load i32, ptr %24, align 8, !tbaa !84
  %26 = and i32 %25, %23
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.bPoseChannel, ptr %13, i64 0, i32 5
  %30 = load i16, ptr %29, align 8, !tbaa !50
  %31 = or i16 %30, 2048
  store i16 %31, ptr %29, align 8, !tbaa !50
  br label %36

32:                                               ; preds = %22, %17, %12
  %33 = getelementptr inbounds %struct.bPoseChannel, ptr %13, i64 0, i32 5
  %34 = load i16, ptr %33, align 8, !tbaa !50
  %35 = and i16 %34, -2049
  store i16 %35, ptr %33, align 8, !tbaa !50
  br label %36

36:                                               ; preds = %32, %28
  %37 = load ptr, ptr %13, align 8, !tbaa !31
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %12, !llvm.loop !85

39:                                               ; preds = %36, %7, %1
  ret void
}

; Function Attrs: optsize
declare void @BKE_pose_copy_data(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ANIM_get_keyingset_for_autokeying(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ctx_data_list_count(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @pose_bone_do_paste(ptr nocapture noundef readonly %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #1 {
  %5 = alloca [64 x i8], align 16
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #10
  %8 = icmp eq i8 %3, 0
  %9 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 4
  br i1 %8, label %11, label %10

10:                                               ; preds = %4
  call void @BKE_deform_flip_side_name(ptr noundef nonnull %5, ptr noundef nonnull %9, i8 noundef zeroext 0) #8
  br label %13

11:                                               ; preds = %4
  %12 = call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef nonnull %9, i64 noundef 64) #8
  br label %13

13:                                               ; preds = %11, %10
  %14 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 18
  %15 = load ptr, ptr %14, align 8, !tbaa !30
  %16 = call ptr @BKE_pose_channel_find_name(ptr noundef %15, ptr noundef nonnull %5) #8
  %17 = icmp eq i8 %2, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %13
  %19 = icmp eq ptr %16, null
  br i1 %19, label %126, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.bPoseChannel, ptr %16, i64 0, i32 12
  %22 = load ptr, ptr %21, align 8, !tbaa !80
  %23 = getelementptr inbounds %struct.Bone, ptr %22, i64 0, i32 10
  %24 = load i32, ptr %23, align 8, !tbaa !81
  %25 = trunc i32 %24 to i16
  %26 = and i16 %25, 1
  br label %30

27:                                               ; preds = %13
  %28 = icmp ne ptr %16, null
  %29 = zext i1 %28 to i16
  br label %30

30:                                               ; preds = %20, %27
  %31 = phi i16 [ %29, %27 ], [ %26, %20 ]
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %126, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.bPoseChannel, ptr %16, i64 0, i32 20
  %35 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 20
  call fastcc void @copy_v3_v3(ptr noundef nonnull %34, ptr noundef nonnull %35) #9
  %36 = getelementptr inbounds %struct.bPoseChannel, ptr %16, i64 0, i32 21
  %37 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 21
  call fastcc void @copy_v3_v3(ptr noundef nonnull %36, ptr noundef nonnull %37) #9
  %38 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 5
  %39 = load i16, ptr %38, align 8, !tbaa !50
  %40 = getelementptr inbounds %struct.bPoseChannel, ptr %16, i64 0, i32 5
  store i16 %39, ptr %40, align 8, !tbaa !50
  %41 = getelementptr inbounds %struct.bPoseChannel, ptr %16, i64 0, i32 26
  %42 = load i16, ptr %41, align 4, !tbaa !86
  %43 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 26
  %44 = load i16, ptr %43, align 4, !tbaa !86
  %45 = icmp eq i16 %42, %44
  %46 = icmp sgt i16 %42, 0
  br i1 %45, label %47, label %62

47:                                               ; preds = %33
  br i1 %46, label %48, label %51

48:                                               ; preds = %47
  %49 = getelementptr inbounds %struct.bPoseChannel, ptr %16, i64 0, i32 22
  %50 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 22
  call fastcc void @copy_v3_v3(ptr noundef nonnull %49, ptr noundef nonnull %50) #9
  br label %90

51:                                               ; preds = %47
  %52 = icmp eq i16 %42, -1
  br i1 %52, label %53, label %59

53:                                               ; preds = %51
  %54 = getelementptr inbounds %struct.bPoseChannel, ptr %16, i64 0, i32 24
  %55 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 24
  call fastcc void @copy_v3_v3(ptr noundef nonnull %54, ptr noundef nonnull %55) #9
  %56 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 25
  %57 = load float, ptr %56, align 8, !tbaa !87
  %58 = getelementptr inbounds %struct.bPoseChannel, ptr %16, i64 0, i32 25
  store float %57, ptr %58, align 8, !tbaa !87
  br label %90

59:                                               ; preds = %51
  %60 = getelementptr inbounds %struct.bPoseChannel, ptr %16, i64 0, i32 23
  %61 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 23
  call void @copy_qt_qt(ptr noundef nonnull %60, ptr noundef nonnull %61) #8
  br label %90

62:                                               ; preds = %33
  br i1 %46, label %63, label %72

63:                                               ; preds = %62
  %64 = icmp eq i16 %44, -1
  %65 = getelementptr inbounds %struct.bPoseChannel, ptr %16, i64 0, i32 22
  br i1 %64, label %66, label %70

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 24
  %68 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 25
  %69 = load float, ptr %68, align 8, !tbaa !87
  call void @axis_angle_to_eulO(ptr noundef nonnull %65, i16 noundef signext %42, ptr noundef nonnull %67, float noundef %69) #8
  br label %90

70:                                               ; preds = %63
  %71 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 23
  call void @quat_to_eulO(ptr noundef nonnull %65, i16 noundef signext %42, ptr noundef nonnull %71) #8
  br label %90

72:                                               ; preds = %62
  %73 = icmp eq i16 %42, -1
  %74 = icmp sgt i16 %44, 0
  br i1 %73, label %75, label %82

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.bPoseChannel, ptr %16, i64 0, i32 24
  %77 = getelementptr inbounds %struct.bPoseChannel, ptr %16, i64 0, i32 25
  br i1 %74, label %78, label %80

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 22
  call void @eulO_to_axis_angle(ptr noundef nonnull %76, ptr noundef nonnull %77, ptr noundef nonnull %79, i16 noundef signext %44) #8
  br label %90

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 23
  call void @quat_to_axis_angle(ptr noundef nonnull %76, ptr noundef nonnull %77, ptr noundef nonnull %81) #8
  br label %90

82:                                               ; preds = %72
  %83 = getelementptr inbounds %struct.bPoseChannel, ptr %16, i64 0, i32 23
  br i1 %74, label %84, label %86

84:                                               ; preds = %82
  %85 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 22
  call void @eulO_to_quat(ptr noundef nonnull %83, ptr noundef nonnull %85, i16 noundef signext %44) #8
  br label %90

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 24
  %88 = getelementptr inbounds %struct.bPoseChannel, ptr %16, i64 0, i32 25
  %89 = load float, ptr %88, align 8, !tbaa !87
  call void @axis_angle_to_quat(ptr noundef nonnull %83, ptr noundef nonnull %87, float noundef %89) #8
  br label %90

90:                                               ; preds = %70, %66, %84, %86, %78, %80, %48, %59, %53
  br i1 %8, label %115, label %91

91:                                               ; preds = %90
  %92 = load float, ptr %34, align 8, !tbaa !34
  %93 = fneg float %92
  store float %93, ptr %34, align 8, !tbaa !34
  %94 = load i16, ptr %41, align 4, !tbaa !86
  %95 = icmp sgt i16 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.bPoseChannel, ptr %16, i64 0, i32 22, i64 1
  %98 = load <2 x float>, ptr %97, align 4, !tbaa !34
  %99 = fneg <2 x float> %98
  store <2 x float> %99, ptr %97, align 4, !tbaa !34
  br label %115

100:                                              ; preds = %91
  %101 = icmp eq i16 %94, -1
  br i1 %101, label %102, label %109

102:                                              ; preds = %100
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  %103 = getelementptr inbounds %struct.bPoseChannel, ptr %16, i64 0, i32 24
  %104 = getelementptr inbounds %struct.bPoseChannel, ptr %16, i64 0, i32 25
  %105 = load float, ptr %104, align 8, !tbaa !87
  call void @axis_angle_to_eulO(ptr noundef nonnull %6, i16 noundef signext 1, ptr noundef nonnull %103, float noundef %105) #8
  %106 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %107 = load <2 x float>, ptr %106, align 4, !tbaa !34
  %108 = fneg <2 x float> %107
  store <2 x float> %108, ptr %106, align 4, !tbaa !34
  call void @eulO_to_axis_angle(ptr noundef nonnull %103, ptr noundef nonnull %104, ptr noundef nonnull %6, i16 noundef signext 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  br label %115

109:                                              ; preds = %100
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #10
  %110 = getelementptr inbounds %struct.bPoseChannel, ptr %16, i64 0, i32 23
  %111 = call float @normalize_qt(ptr noundef nonnull %110) #8
  call void @quat_to_eul(ptr noundef nonnull %7, ptr noundef nonnull %110) #8
  %112 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  %113 = load <2 x float>, ptr %112, align 4, !tbaa !34
  %114 = fneg <2 x float> %113
  store <2 x float> %114, ptr %112, align 4, !tbaa !34
  call void @eul_to_quat(ptr noundef nonnull %110, ptr noundef nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #10
  br label %115

115:                                              ; preds = %96, %109, %102, %90
  %116 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 2
  %117 = load ptr, ptr %116, align 8, !tbaa !45
  %118 = icmp eq ptr %117, null
  br i1 %118, label %126, label %119

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.bPoseChannel, ptr %16, i64 0, i32 2
  %121 = load ptr, ptr %120, align 8, !tbaa !45
  %122 = icmp eq ptr %121, null
  br i1 %122, label %124, label %123

123:                                              ; preds = %119
  call void @IDP_SyncGroupValues(ptr noundef nonnull %121, ptr noundef nonnull %117) #8
  br label %126

124:                                              ; preds = %119
  %125 = call ptr @IDP_CopyProperty(ptr noundef nonnull %117) #8
  store ptr %125, ptr %120, align 8, !tbaa !45
  br label %126

126:                                              ; preds = %18, %115, %124, %123, %30
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #10
  ret ptr %16
}

; Function Attrs: optsize
declare zeroext i8 @ED_autokeyframe_pchan(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_deform_flip_side_name(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_pose_channel_find_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @copy_qt_qt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @axis_angle_to_eulO(ptr noundef, i16 noundef signext, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @quat_to_eulO(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @eulO_to_axis_angle(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @quat_to_axis_angle(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @eulO_to_quat(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @axis_angle_to_quat(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @normalize_qt(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @quat_to_eul(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @eul_to_quat(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IDP_SyncGroupValues(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @IDP_CopyProperty(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @pose_clear_transform_generic_exec(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr noundef %3) unnamed_addr #1 {
  %5 = alloca %struct.ListBase, align 8
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %7 = tail call ptr @CTX_data_active_object(ptr noundef %0) #8
  %8 = tail call ptr @BKE_object_pose_armature_get(ptr noundef %7) #8
  %9 = icmp eq ptr %2, null
  %10 = icmp eq ptr %3, null
  %11 = or i1 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %14 = load ptr, ptr %13, align 8, !tbaa !25
  tail call void @BKE_report(ptr noundef %14, i32 noundef 32, ptr noundef nonnull @.str.42) #8
  br label %60

15:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #10
  %16 = call i32 @CTX_data_selected_pose_bones(ptr noundef %0, ptr noundef nonnull %5) #8
  %17 = load ptr, ptr %5, align 8, !tbaa !31
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  call void @BLI_freelistN(ptr noundef nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #10
  br label %59

20:                                               ; preds = %15, %40
  %21 = phi ptr [ %42, %40 ], [ %17, %15 ]
  %22 = phi i16 [ %41, %40 ], [ 0, %15 ]
  %23 = getelementptr inbounds %struct.CollectionPointerLink, ptr %21, i64 0, i32 2, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !40
  call void %2(ptr noundef %24) #8, !callees !88
  %25 = call i32 @autokeyframe_cfra_can_key(ptr noundef %6, ptr noundef %8) #8
  %26 = icmp eq i32 %25, 0
  %27 = getelementptr inbounds %struct.bPoseChannel, ptr %24, i64 0, i32 12
  %28 = load ptr, ptr %27, align 8, !tbaa !80
  %29 = icmp eq ptr %28, null
  br i1 %26, label %35, label %30

30:                                               ; preds = %20
  br i1 %29, label %40, label %31

31:                                               ; preds = %30
  %32 = getelementptr inbounds %struct.Bone, ptr %28, i64 0, i32 10
  %33 = load i32, ptr %32, align 8, !tbaa !81
  %34 = and i32 %33, -8193
  store i32 %34, ptr %32, align 8, !tbaa !81
  br label %40

35:                                               ; preds = %20
  br i1 %29, label %40, label %36

36:                                               ; preds = %35
  %37 = getelementptr inbounds %struct.Bone, ptr %28, i64 0, i32 10
  %38 = load i32, ptr %37, align 8, !tbaa !81
  %39 = or i32 %38, 8192
  store i32 %39, ptr %37, align 8, !tbaa !81
  br label %40

40:                                               ; preds = %30, %31, %35, %36
  %41 = phi i16 [ %22, %36 ], [ %22, %35 ], [ 1, %31 ], [ 1, %30 ]
  %42 = load ptr, ptr %21, align 8, !tbaa !31
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %20, !llvm.loop !89

44:                                               ; preds = %40
  %45 = icmp eq i16 %41, 0
  call void @BLI_freelistN(ptr noundef nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #10
  br i1 %45, label %59, label %46

46:                                               ; preds = %44
  %47 = call ptr @ANIM_get_keyingset_for_autokeying(ptr noundef %6, ptr noundef %3) #8
  %48 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 5
  %49 = load i32, ptr %48, align 8, !tbaa !53
  %50 = sitofp i32 %49 to float
  %51 = call i32 @ANIM_apply_keyingset(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef %47, i16 noundef signext 0, float noundef %50) #8
  %52 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 18
  %53 = load ptr, ptr %52, align 8, !tbaa !30
  %54 = getelementptr inbounds %struct.bPose, ptr %53, i64 0, i32 14, i32 11
  %55 = load i16, ptr %54, align 2, !tbaa !90
  %56 = and i16 %55, 4
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %46
  call void @ED_pose_recalculate_paths(ptr noundef nonnull %6, ptr noundef nonnull %8) #8
  br label %59

59:                                               ; preds = %19, %46, %58, %44
  call void @DAG_id_tag_update(ptr noundef %8, i16 noundef signext 2) #8
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85065728, ptr noundef %8) #8
  br label %60

60:                                               ; preds = %59, %12
  %61 = phi i32 [ 2, %12 ], [ 4, %59 ]
  ret i32 %61
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @pchan_clear_scale(ptr nocapture noundef %0) #4 {
  %2 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 7
  %3 = load i16, ptr %2, align 4, !tbaa !92
  %4 = and i16 %3, 64
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 21
  store float 1.000000e+00, ptr %7, align 4, !tbaa !34
  br label %8

8:                                                ; preds = %6, %1
  %9 = and i16 %3, 128
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 21, i64 1
  store float 1.000000e+00, ptr %12, align 4, !tbaa !34
  br label %13

13:                                               ; preds = %11, %8
  %14 = and i16 %3, 256
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 21, i64 2
  store float 1.000000e+00, ptr %17, align 4, !tbaa !34
  br label %18

18:                                               ; preds = %16, %13
  ret void
}

; Function Attrs: optsize
declare i32 @autokeyframe_cfra_can_key(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ANIM_apply_keyingset(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_pose_recalculate_paths(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @pchan_clear_rot(ptr noundef %0) #1 {
  %2 = alloca [3 x float], align 8
  %3 = alloca [3 x float], align 4
  %4 = alloca [4 x float], align 16
  %5 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 7
  %6 = load i16, ptr %5, align 4, !tbaa !92
  %7 = zext i16 %6 to i32
  %8 = and i32 %7, 568
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %140, label %10

10:                                               ; preds = %1
  %11 = and i32 %7, 1024
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %86, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 26
  %15 = load i16, ptr %14, align 4, !tbaa !86
  switch i16 %15, label %71 [
    i16 -1, label %16
    i16 0, label %51
  ]

16:                                               ; preds = %13
  %17 = and i32 %7, 512
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 25
  store float 0.000000e+00, ptr %20, align 8, !tbaa !87
  br label %21

21:                                               ; preds = %19, %16
  %22 = and i16 %6, 8
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 24
  store float 0.000000e+00, ptr %25, align 4, !tbaa !34
  br label %26

26:                                               ; preds = %24, %21
  %27 = and i16 %6, 16
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 24, i64 1
  store float 0.000000e+00, ptr %30, align 4, !tbaa !34
  br label %31

31:                                               ; preds = %29, %26
  %32 = and i16 %6, 32
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 24, i64 2
  store float 0.000000e+00, ptr %35, align 4, !tbaa !34
  br label %36

36:                                               ; preds = %34, %31
  %37 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 24
  %38 = load float, ptr %37, align 4, !tbaa !34
  %39 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 24, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !34
  %41 = fsub float %38, %40
  %42 = tail call float @llvm.fabs.f32(float %41)
  %43 = fcmp ult float %42, 0x3E80000000000000
  br i1 %43, label %44, label %150

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 24, i64 2
  %46 = load float, ptr %45, align 4, !tbaa !34
  %47 = fsub float %40, %46
  %48 = tail call float @llvm.fabs.f32(float %47)
  %49 = fcmp ult float %48, 0x3E80000000000000
  br i1 %49, label %50, label %150

50:                                               ; preds = %44
  store float 1.000000e+00, ptr %39, align 4, !tbaa !34
  br label %150

51:                                               ; preds = %13
  %52 = and i32 %7, 512
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 23
  store float 1.000000e+00, ptr %55, align 4, !tbaa !34
  br label %56

56:                                               ; preds = %54, %51
  %57 = and i16 %6, 8
  %58 = icmp eq i16 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 23, i64 1
  store float 0.000000e+00, ptr %60, align 4, !tbaa !34
  br label %61

61:                                               ; preds = %59, %56
  %62 = and i16 %6, 16
  %63 = icmp eq i16 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 23, i64 2
  store float 0.000000e+00, ptr %65, align 4, !tbaa !34
  br label %66

66:                                               ; preds = %64, %61
  %67 = and i16 %6, 32
  %68 = icmp eq i16 %67, 0
  br i1 %68, label %69, label %150

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 23, i64 3
  store float 0.000000e+00, ptr %70, align 4, !tbaa !34
  br label %150

71:                                               ; preds = %13
  %72 = and i32 %7, 8
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 22
  store float 0.000000e+00, ptr %75, align 8, !tbaa !34
  br label %76

76:                                               ; preds = %74, %71
  %77 = and i16 %6, 16
  %78 = icmp eq i16 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 22, i64 1
  store float 0.000000e+00, ptr %80, align 4, !tbaa !34
  br label %81

81:                                               ; preds = %79, %76
  %82 = and i16 %6, 32
  %83 = icmp eq i16 %82, 0
  br i1 %83, label %84, label %150

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 22, i64 2
  store float 0.000000e+00, ptr %85, align 8, !tbaa !34
  br label %150

86:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %87 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 26
  %88 = load i16, ptr %87, align 4, !tbaa !86
  switch i16 %88, label %96 [
    i16 0, label %89
    i16 -1, label %92
  ]

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 23
  %91 = call float @normalize_qt_qt(ptr noundef nonnull %4, ptr noundef nonnull %90) #8
  call void @quat_to_eul(ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  br label %98

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 24
  %94 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 25
  %95 = load float, ptr %94, align 8, !tbaa !87
  call void @axis_angle_to_eulO(ptr noundef nonnull %3, i16 noundef signext 1, ptr noundef nonnull %93, float noundef %95) #8
  br label %98

96:                                               ; preds = %86
  %97 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 22
  call fastcc void @copy_v3_v3(ptr noundef nonnull %3, ptr noundef nonnull %97) #9
  br label %98

98:                                               ; preds = %92, %96, %89
  %99 = phi float [ %91, %89 ], [ 0.000000e+00, %92 ], [ 0.000000e+00, %96 ]
  %100 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 2
  store float 0.000000e+00, ptr %100, align 8, !tbaa !34
  %101 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 1
  store <2 x float> zeroinitializer, ptr %2, align 8, !tbaa !34
  %102 = load i16, ptr %5, align 4, !tbaa !92
  %103 = and i16 %102, 8
  %104 = icmp eq i16 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %98
  %106 = load float, ptr %3, align 4, !tbaa !34
  store float %106, ptr %2, align 8, !tbaa !34
  br label %107

107:                                              ; preds = %105, %98
  %108 = and i16 %102, 16
  %109 = icmp eq i16 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %107
  %111 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  %112 = load float, ptr %111, align 4, !tbaa !34
  store float %112, ptr %101, align 4, !tbaa !34
  br label %113

113:                                              ; preds = %110, %107
  %114 = and i16 %102, 32
  %115 = icmp eq i16 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %113
  %117 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  %118 = load float, ptr %117, align 4, !tbaa !34
  store float %118, ptr %100, align 8, !tbaa !34
  br label %119

119:                                              ; preds = %116, %113
  %120 = load i16, ptr %87, align 4, !tbaa !86
  switch i16 %120, label %137 [
    i16 0, label %121
    i16 -1, label %134
  ]

121:                                              ; preds = %119
  %122 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 23
  call void @eul_to_quat(ptr noundef nonnull %122, ptr noundef nonnull %2) #8
  call void @mul_qt_fl(ptr noundef nonnull %122, float noundef %99) #8
  %123 = load float, ptr %4, align 16, !tbaa !34
  %124 = fcmp olt float %123, 0.000000e+00
  br i1 %124, label %125, label %128

125:                                              ; preds = %121
  %126 = load float, ptr %122, align 4, !tbaa !34
  %127 = fcmp ogt float %126, 0.000000e+00
  br i1 %127, label %133, label %128

128:                                              ; preds = %125, %121
  %129 = fcmp ogt float %123, 0.000000e+00
  br i1 %129, label %130, label %139

130:                                              ; preds = %128
  %131 = load float, ptr %122, align 4, !tbaa !34
  %132 = fcmp olt float %131, 0.000000e+00
  br i1 %132, label %133, label %139

133:                                              ; preds = %130, %125
  call void @mul_qt_fl(ptr noundef nonnull %122, float noundef -1.000000e+00) #8
  br label %139

134:                                              ; preds = %119
  %135 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 24
  %136 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 25
  call void @eulO_to_axis_angle(ptr noundef nonnull %135, ptr noundef nonnull %136, ptr noundef nonnull %2, i16 noundef signext 1) #8
  br label %139

137:                                              ; preds = %119
  %138 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 22
  call fastcc void @copy_v3_v3(ptr noundef nonnull %138, ptr noundef nonnull %2) #9
  br label %139

139:                                              ; preds = %134, %137, %128, %130, %133
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #10
  br label %150

140:                                              ; preds = %1
  %141 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 26
  %142 = load i16, ptr %141, align 4, !tbaa !86
  switch i16 %142, label %148 [
    i16 0, label %143
    i16 -1, label %145
  ]

143:                                              ; preds = %140
  %144 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 23
  tail call void @unit_qt(ptr noundef nonnull %144) #8
  br label %150

145:                                              ; preds = %140
  %146 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 24
  %147 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 25
  tail call void @unit_axis_angle(ptr noundef nonnull %146, ptr noundef nonnull %147) #8
  br label %150

148:                                              ; preds = %140
  %149 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 22
  tail call fastcc void @zero_v3(ptr noundef nonnull %149) #9
  br label %150

150:                                              ; preds = %143, %148, %145, %139, %69, %66, %84, %81, %36, %44, %50
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: optsize
declare float @normalize_qt_qt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_qt_fl(ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @pchan_clear_loc(ptr nocapture noundef %0) #4 {
  %2 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 7
  %3 = load i16, ptr %2, align 4, !tbaa !92
  %4 = and i16 %3, 1
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 20
  store float 0.000000e+00, ptr %7, align 8, !tbaa !34
  br label %8

8:                                                ; preds = %6, %1
  %9 = and i16 %3, 2
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 20, i64 1
  store float 0.000000e+00, ptr %12, align 4, !tbaa !34
  br label %13

13:                                               ; preds = %11, %8
  %14 = and i16 %3, 4
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 20, i64 2
  store float 0.000000e+00, ptr %17, align 8, !tbaa !34
  br label %18

18:                                               ; preds = %16, %13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @pchan_clear_transforms(ptr noundef %0) #1 {
  tail call void @pchan_clear_loc(ptr noundef %0) #9
  tail call void @pchan_clear_rot(ptr noundef %0) #9
  tail call void @pchan_clear_scale(ptr noundef %0) #9
  ret void
}

; Function Attrs: optsize
declare void @BKE_animsys_evaluate_animdata(ptr noundef, ptr noundef, ptr noundef, float noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_pose_rest(ptr noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }
attributes #10 = { nounwind }

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
!18 = !{!19, !12, i64 136}
!19 = !{!"Object", !20, i64 0, !7, i64 120, !7, i64 128, !12, i64 136, !12, i64 138, !21, i64 140, !21, i64 144, !21, i64 148, !8, i64 152, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288, !7, i64 296, !7, i64 304, !22, i64 312, !7, i64 360, !10, i64 368, !10, i64 384, !10, i64 400, !10, i64 416, !21, i64 432, !21, i64 436, !7, i64 440, !7, i64 448, !21, i64 456, !21, i64 460, !8, i64 464, !8, i64 476, !8, i64 488, !8, i64 500, !8, i64 512, !8, i64 524, !8, i64 536, !8, i64 548, !8, i64 560, !8, i64 576, !8, i64 592, !8, i64 604, !23, i64 616, !23, i64 620, !8, i64 624, !8, i64 688, !8, i64 752, !8, i64 816, !8, i64 880, !21, i64 944, !12, i64 948, !12, i64 950, !12, i64 952, !12, i64 954, !12, i64 956, !12, i64 958, !12, i64 960, !12, i64 962, !12, i64 964, !8, i64 966, !8, i64 967, !21, i64 968, !21, i64 972, !21, i64 976, !21, i64 980, !21, i64 984, !23, i64 988, !23, i64 992, !23, i64 996, !23, i64 1000, !23, i64 1004, !23, i64 1008, !23, i64 1012, !23, i64 1016, !23, i64 1020, !23, i64 1024, !23, i64 1028, !23, i64 1032, !12, i64 1036, !12, i64 1038, !12, i64 1040, !8, i64 1042, !8, i64 1043, !12, i64 1044, !8, i64 1046, !8, i64 1047, !23, i64 1048, !23, i64 1052, !10, i64 1056, !10, i64 1072, !10, i64 1088, !10, i64 1104, !23, i64 1120, !12, i64 1124, !12, i64 1126, !8, i64 1128, !21, i64 1144, !21, i64 1148, !7, i64 1152, !8, i64 1160, !8, i64 1161, !12, i64 1162, !8, i64 1164, !10, i64 1176, !10, i64 1192, !10, i64 1208, !10, i64 1224, !7, i64 1240, !7, i64 1248, !7, i64 1256, !8, i64 1264, !8, i64 1265, !12, i64 1266, !23, i64 1268, !7, i64 1272, !7, i64 1280, !7, i64 1288, !7, i64 1296, !24, i64 1304, !24, i64 1312, !21, i64 1320, !21, i64 1324, !10, i64 1328, !10, i64 1344, !7, i64 1360, !7, i64 1368, !7, i64 1376, !8, i64 1384, !7, i64 1392, !10, i64 1400, !7, i64 1416}
!20 = !{!"ID", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !12, i64 98, !21, i64 100, !21, i64 104, !21, i64 108, !7, i64 112}
!21 = !{!"int", !8, i64 0}
!22 = !{!"bAnimVizSettings", !21, i64 0, !21, i64 4, !21, i64 8, !21, i64 12, !12, i64 16, !12, i64 18, !12, i64 20, !12, i64 22, !12, i64 24, !12, i64 26, !12, i64 28, !12, i64 30, !21, i64 32, !21, i64 36, !21, i64 40, !21, i64 44}
!23 = !{!"float", !8, i64 0}
!24 = !{!"long", !8, i64 0}
!25 = !{!26, !7, i64 120}
!26 = !{!"wmOperator", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !10, i64 128, !7, i64 144, !7, i64 152, !12, i64 160, !8, i64 162}
!27 = !{!19, !7, i64 120}
!28 = !{!29, !7, i64 0}
!29 = !{!"AnimData", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !7, i64 40, !10, i64 48, !10, i64 64, !21, i64 80, !21, i64 84, !12, i64 88, !12, i64 90, !23, i64 92}
!30 = !{!19, !7, i64 288}
!31 = !{!7, !7, i64 0}
!32 = !{!33, !7, i64 160}
!33 = !{!"bArmature", !20, i64 0, !7, i64 120, !10, i64 128, !10, i64 144, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !21, i64 192, !21, i64 196, !21, i64 200, !21, i64 204, !12, i64 208, !12, i64 210, !21, i64 212, !21, i64 216, !21, i64 220, !12, i64 224, !12, i64 226, !12, i64 228, !12, i64 230, !21, i64 232, !21, i64 236, !21, i64 240, !21, i64 244, !21, i64 248, !21, i64 252}
!34 = !{!23, !23, i64 0}
!35 = !{!36, !23, i64 104}
!36 = !{!"EditBone", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !8, i64 40, !23, i64 104, !8, i64 108, !8, i64 120, !21, i64 132, !21, i64 136, !23, i64 140, !23, i64 144, !23, i64 148, !23, i64 152, !23, i64 156, !23, i64 160, !23, i64 164, !23, i64 168, !23, i64 172, !23, i64 176, !12, i64 180}
!37 = !{!36, !21, i64 132}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!41, !7, i64 32}
!41 = !{!"CollectionPointerLink", !7, i64 0, !7, i64 8, !42, i64 16}
!42 = !{!"PointerRNA", !43, i64 0, !7, i64 8, !7, i64 16}
!43 = !{!"", !7, i64 0}
!44 = distinct !{!44, !39}
!45 = !{!46, !7, i64 16}
!46 = !{!"bPoseChannel", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !8, i64 40, !12, i64 104, !12, i64 106, !12, i64 108, !12, i64 110, !8, i64 112, !8, i64 113, !8, i64 114, !7, i64 120, !7, i64 128, !7, i64 136, !10, i64 144, !10, i64 160, !7, i64 176, !7, i64 184, !7, i64 192, !8, i64 200, !8, i64 212, !8, i64 224, !8, i64 236, !8, i64 252, !23, i64 264, !12, i64 268, !12, i64 270, !8, i64 272, !8, i64 336, !8, i64 400, !8, i64 464, !8, i64 476, !8, i64 488, !8, i64 500, !8, i64 512, !23, i64 524, !23, i64 528, !23, i64 532, !7, i64 536}
!47 = distinct !{!47, !39}
!48 = !{!6, !7, i64 88}
!49 = !{!26, !7, i64 112}
!50 = !{!46, !12, i64 104}
!51 = distinct !{!51, !39}
!52 = !{i32 2, i32 5}
!53 = !{!54, !21, i64 680}
!54 = !{!"Scene", !20, i64 0, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !10, i64 152, !7, i64 168, !7, i64 176, !8, i64 184, !8, i64 196, !8, i64 208, !8, i64 220, !21, i64 232, !21, i64 236, !21, i64 240, !12, i64 244, !8, i64 246, !8, i64 247, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !55, i64 280, !64, i64 4264, !10, i64 4296, !10, i64 4312, !7, i64 4328, !7, i64 4336, !7, i64 4344, !7, i64 4352, !7, i64 4360, !7, i64 4368, !12, i64 4376, !12, i64 4378, !21, i64 4380, !10, i64 4384, !65, i64 4400, !66, i64 4416, !69, i64 4600, !7, i64 4608, !70, i64 4616, !7, i64 4640, !24, i64 4648, !24, i64 4656, !57, i64 4664, !58, i64 4824, !71, i64 4888, !7, i64 4952}
!55 = !{!"RenderData", !56, i64 0, !7, i64 248, !7, i64 256, !59, i64 264, !60, i64 328, !21, i64 400, !21, i64 404, !21, i64 408, !23, i64 412, !21, i64 416, !21, i64 420, !21, i64 424, !21, i64 428, !12, i64 432, !12, i64 434, !23, i64 436, !23, i64 440, !23, i64 444, !23, i64 448, !23, i64 452, !12, i64 456, !12, i64 458, !12, i64 460, !12, i64 462, !12, i64 464, !12, i64 466, !21, i64 468, !12, i64 472, !12, i64 474, !12, i64 476, !12, i64 478, !12, i64 480, !12, i64 482, !21, i64 484, !21, i64 488, !12, i64 492, !12, i64 494, !21, i64 496, !21, i64 500, !12, i64 504, !12, i64 506, !12, i64 508, !12, i64 510, !12, i64 512, !8, i64 514, !8, i64 515, !21, i64 516, !21, i64 520, !21, i64 524, !12, i64 528, !12, i64 530, !12, i64 532, !12, i64 534, !12, i64 536, !12, i64 538, !12, i64 540, !12, i64 542, !61, i64 544, !61, i64 560, !62, i64 576, !10, i64 592, !12, i64 608, !12, i64 610, !23, i64 612, !23, i64 616, !23, i64 620, !23, i64 624, !21, i64 628, !23, i64 632, !23, i64 636, !23, i64 640, !23, i64 644, !12, i64 648, !12, i64 650, !12, i64 652, !12, i64 654, !12, i64 656, !12, i64 658, !23, i64 660, !23, i64 664, !12, i64 668, !12, i64 670, !23, i64 672, !23, i64 676, !8, i64 680, !21, i64 1704, !12, i64 1708, !12, i64 1710, !8, i64 1712, !8, i64 2480, !8, i64 2496, !8, i64 2512, !8, i64 2513, !8, i64 2514, !8, i64 2515, !21, i64 2520, !12, i64 2524, !12, i64 2526, !23, i64 2528, !23, i64 2532, !12, i64 2536, !12, i64 2538, !23, i64 2540, !12, i64 2544, !12, i64 2546, !21, i64 2548, !12, i64 2552, !12, i64 2554, !12, i64 2556, !12, i64 2558, !23, i64 2560, !23, i64 2564, !7, i64 2568, !21, i64 2576, !23, i64 2580, !8, i64 2584, !63, i64 2616, !21, i64 3976, !21, i64 3980}
!56 = !{!"ImageFormatData", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !12, i64 8, !12, i64 10, !23, i64 12, !8, i64 16, !8, i64 17, !8, i64 18, !57, i64 24, !58, i64 184}
!57 = !{!"ColorManagedViewSettings", !21, i64 0, !21, i64 4, !8, i64 8, !8, i64 72, !23, i64 136, !23, i64 140, !7, i64 144, !7, i64 152}
!58 = !{!"ColorManagedDisplaySettings", !8, i64 0}
!59 = !{!"QuicktimeCodecSettings", !21, i64 0, !21, i64 4, !21, i64 8, !21, i64 12, !21, i64 16, !21, i64 20, !21, i64 24, !21, i64 28, !21, i64 32, !21, i64 36, !21, i64 40, !21, i64 44, !12, i64 48, !12, i64 50, !21, i64 52, !21, i64 56, !21, i64 60}
!60 = !{!"FFMpegCodecData", !21, i64 0, !21, i64 4, !21, i64 8, !21, i64 12, !21, i64 16, !21, i64 20, !21, i64 24, !21, i64 28, !23, i64 32, !21, i64 36, !21, i64 40, !21, i64 44, !21, i64 48, !21, i64 52, !21, i64 56, !21, i64 60, !7, i64 64}
!61 = !{!"rctf", !23, i64 0, !23, i64 4, !23, i64 8, !23, i64 12}
!62 = !{!"rcti", !21, i64 0, !21, i64 4, !21, i64 8, !21, i64 12}
!63 = !{!"BakeData", !56, i64 0, !8, i64 248, !12, i64 1272, !12, i64 1274, !12, i64 1276, !12, i64 1278, !23, i64 1280, !23, i64 1284, !8, i64 1288, !8, i64 1291, !8, i64 1292, !8, i64 1293, !8, i64 1296}
!64 = !{!"AudioData", !21, i64 0, !23, i64 4, !23, i64 8, !23, i64 12, !21, i64 16, !12, i64 20, !12, i64 22, !23, i64 24, !23, i64 28}
!65 = !{!"GameFraming", !8, i64 0, !8, i64 12, !8, i64 13, !8, i64 14, !8, i64 15}
!66 = !{!"GameData", !65, i64 0, !12, i64 16, !12, i64 18, !12, i64 20, !12, i64 22, !12, i64 24, !12, i64 26, !12, i64 28, !12, i64 30, !12, i64 32, !8, i64 34, !67, i64 40, !12, i64 64, !12, i64 66, !23, i64 68, !68, i64 72, !23, i64 128, !23, i64 132, !21, i64 136, !12, i64 140, !12, i64 142, !12, i64 144, !12, i64 146, !12, i64 148, !12, i64 150, !12, i64 152, !12, i64 154, !12, i64 156, !12, i64 158, !12, i64 160, !12, i64 162, !23, i64 164, !23, i64 168, !23, i64 172, !23, i64 176, !23, i64 180}
!67 = !{!"GameDome", !12, i64 0, !12, i64 2, !12, i64 4, !12, i64 6, !23, i64 8, !23, i64 12, !7, i64 16}
!68 = !{!"RecastData", !23, i64 0, !23, i64 4, !23, i64 8, !23, i64 12, !23, i64 16, !23, i64 20, !23, i64 24, !23, i64 28, !23, i64 32, !23, i64 36, !21, i64 40, !23, i64 44, !23, i64 48, !12, i64 52, !12, i64 54}
!69 = !{!"UnitSettings", !23, i64 0, !8, i64 4, !8, i64 5, !12, i64 6}
!70 = !{!"PhysicsSettings", !8, i64 0, !21, i64 12, !21, i64 16, !21, i64 20}
!71 = !{!"ColorManagedColorspaceSettings", !8, i64 0}
!72 = !{!19, !7, i64 296}
!73 = distinct !{!73, !39}
!74 = distinct !{!74, !39}
!75 = !{!76, !7, i64 0}
!76 = !{!"Global", !7, i64 0, !8, i64 8, !8, i64 1032, !8, i64 2056, !8, i64 2057, !8, i64 2058, !10, i64 2064, !8, i64 2080, !8, i64 2081, !8, i64 2082, !12, i64 2084, !12, i64 2086, !12, i64 2088, !8, i64 2090, !12, i64 2092, !21, i64 2096, !21, i64 2100, !8, i64 2104, !21, i64 2108, !21, i64 2112, !8, i64 2116}
!77 = !{!19, !7, i64 216}
!78 = !{!19, !12, i64 138}
!79 = distinct !{!79, !39}
!80 = !{!46, !7, i64 120}
!81 = !{!82, !21, i64 176}
!82 = !{!"Bone", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !10, i64 32, !8, i64 48, !23, i64 112, !8, i64 116, !8, i64 128, !8, i64 140, !21, i64 176, !8, i64 180, !8, i64 192, !8, i64 204, !23, i64 268, !23, i64 272, !23, i64 276, !23, i64 280, !23, i64 284, !23, i64 288, !23, i64 292, !23, i64 296, !23, i64 300, !23, i64 304, !8, i64 308, !21, i64 320, !12, i64 324, !8, i64 326}
!83 = !{!33, !21, i64 216}
!84 = !{!82, !21, i64 320}
!85 = distinct !{!85, !39}
!86 = !{!46, !12, i64 268}
!87 = !{!46, !23, i64 264}
!88 = !{ptr @pchan_clear_loc, ptr @pchan_clear_rot, ptr @pchan_clear_scale, ptr @pchan_clear_transforms}
!89 = distinct !{!89, !39}
!90 = !{!91, !12, i64 134}
!91 = !{!"bPose", !10, i64 0, !7, i64 16, !12, i64 24, !12, i64 26, !21, i64 28, !21, i64 32, !23, i64 36, !8, i64 40, !8, i64 52, !10, i64 64, !21, i64 80, !21, i64 84, !7, i64 88, !7, i64 96, !22, i64 104, !8, i64 152}
!92 = !{!46, !12, i64 108}
