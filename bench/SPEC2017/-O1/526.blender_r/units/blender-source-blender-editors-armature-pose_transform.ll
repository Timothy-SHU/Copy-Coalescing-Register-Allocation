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
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.CollectionPointerLink = type { ptr, ptr, %struct.PointerRNA }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.Bone = type { ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], float, [3 x float], [3 x float], [3 x [3 x float]], i32, [3 x float], [3 x float], [4 x [4 x float]], float, float, float, float, float, float, float, float, float, float, [3 x float], i32, i16, [1 x i16] }
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @POSE_OT_armature_apply(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.1, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @apply_armature_pose2bones_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_posemode, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @apply_armature_pose2bones_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = alloca %struct.Object, align 8
  %4 = alloca [3 x [3 x float]], align 16
  %5 = alloca [3 x [3 x float]], align 16
  %6 = alloca [3 x [3 x float]], align 16
  %7 = alloca [3 x [3 x float]], align 16
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %11 = tail call ptr @CTX_data_active_object(ptr noundef %0) #7
  %12 = tail call ptr @BKE_object_pose_armature_get(ptr noundef %11) #7
  %13 = tail call ptr @BKE_armature_from_object(ptr noundef %12) #7
  %14 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 3
  %15 = load i16, ptr %14, align 8, !tbaa !47
  %16 = icmp eq i16 %15, 25
  br i1 %16, label %17, label %114

17:                                               ; preds = %2
  %18 = tail call zeroext i8 @BKE_object_obdata_is_libdata(ptr noundef %12) #7
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %22 = load ptr, ptr %21, align 8, !tbaa !54
  tail call void @BKE_report(ptr noundef %22, i32 noundef 32, ptr noundef nonnull @.str.36) #7
  br label %114

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !56
  %26 = icmp eq ptr %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr %25, align 8, !tbaa !57
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %32 = load ptr, ptr %31, align 8, !tbaa !54
  tail call void @BKE_report(ptr noundef %32, i32 noundef 16, ptr noundef nonnull @.str.37) #7
  br label %33

33:                                               ; preds = %30, %27, %23
  tail call void @ED_armature_to_edit(ptr noundef %13) #7
  %34 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 18
  %35 = load ptr, ptr %34, align 8, !tbaa !59
  %36 = load ptr, ptr %35, align 8, !tbaa !60
  %37 = icmp eq ptr %36, null
  br i1 %37, label %90, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.bArmature, ptr %13, i64 0, i32 4
  %40 = getelementptr inbounds float, ptr %8, i64 1
  %41 = getelementptr inbounds float, ptr %8, i64 2
  %42 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 1
  br label %43

43:                                               ; preds = %38, %43
  %44 = phi ptr [ %36, %38 ], [ %88, %43 ]
  %45 = load ptr, ptr %39, align 8, !tbaa !61
  %46 = getelementptr inbounds %struct.bPoseChannel, ptr %44, i64 0, i32 4
  %47 = call ptr @ED_armature_bone_find_name(ptr noundef %45, ptr noundef nonnull %46) #7
  %48 = getelementptr inbounds %struct.EditBone, ptr %47, i64 0, i32 7
  %49 = getelementptr inbounds %struct.bPoseChannel, ptr %44, i64 0, i32 31
  %50 = load float, ptr %49, align 4, !tbaa !63
  store float %50, ptr %48, align 4, !tbaa !63
  %51 = getelementptr inbounds %struct.bPoseChannel, ptr %44, i64 0, i32 31, i64 1
  %52 = load float, ptr %51, align 4, !tbaa !63
  %53 = getelementptr inbounds %struct.EditBone, ptr %47, i64 0, i32 7, i64 1
  store float %52, ptr %53, align 4, !tbaa !63
  %54 = getelementptr inbounds %struct.bPoseChannel, ptr %44, i64 0, i32 31, i64 2
  %55 = load float, ptr %54, align 4, !tbaa !63
  %56 = getelementptr inbounds %struct.EditBone, ptr %47, i64 0, i32 7, i64 2
  store float %55, ptr %56, align 4, !tbaa !63
  %57 = getelementptr inbounds %struct.EditBone, ptr %47, i64 0, i32 8
  %58 = getelementptr inbounds %struct.bPoseChannel, ptr %44, i64 0, i32 32
  %59 = load float, ptr %58, align 4, !tbaa !63
  store float %59, ptr %57, align 4, !tbaa !63
  %60 = getelementptr inbounds %struct.bPoseChannel, ptr %44, i64 0, i32 32, i64 1
  %61 = load float, ptr %60, align 4, !tbaa !63
  %62 = getelementptr inbounds %struct.EditBone, ptr %47, i64 0, i32 8, i64 1
  store float %61, ptr %62, align 4, !tbaa !63
  %63 = getelementptr inbounds %struct.bPoseChannel, ptr %44, i64 0, i32 32, i64 2
  %64 = load float, ptr %63, align 4, !tbaa !63
  %65 = getelementptr inbounds %struct.EditBone, ptr %47, i64 0, i32 8, i64 2
  store float %64, ptr %65, align 4, !tbaa !63
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #7
  %66 = fsub float %59, %50
  store float %66, ptr %8, align 4, !tbaa !63
  %67 = fsub float %61, %52
  store float %67, ptr %40, align 4, !tbaa !63
  %68 = fsub float %64, %55
  store float %68, ptr %41, align 4, !tbaa !63
  call void @vec_roll_to_mat3(ptr noundef nonnull %8, float noundef 0.000000e+00, ptr noundef nonnull %4) #7
  %69 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %5, ptr noundef nonnull %4) #7
  %70 = getelementptr inbounds %struct.bPoseChannel, ptr %44, i64 0, i32 29
  call void @copy_m3_m4(ptr noundef nonnull %6, ptr noundef nonnull %70) #7
  call void @mul_m3_m3m3(ptr noundef nonnull %7, ptr noundef nonnull %5, ptr noundef nonnull %6) #7
  call void @mat3_to_eul(ptr noundef nonnull %9, ptr noundef nonnull %7) #7
  %71 = load float, ptr %42, align 4, !tbaa !63
  %72 = getelementptr inbounds %struct.EditBone, ptr %47, i64 0, i32 6
  store float %71, ptr %72, align 8, !tbaa !64
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #7
  %73 = getelementptr inbounds %struct.bPoseChannel, ptr %44, i64 0, i32 20
  store float 0.000000e+00, ptr %73, align 4, !tbaa !63
  %74 = getelementptr inbounds %struct.bPoseChannel, ptr %44, i64 0, i32 20, i64 1
  store float 0.000000e+00, ptr %74, align 4, !tbaa !63
  %75 = getelementptr inbounds %struct.bPoseChannel, ptr %44, i64 0, i32 20, i64 2
  store float 0.000000e+00, ptr %75, align 4, !tbaa !63
  %76 = getelementptr inbounds %struct.bPoseChannel, ptr %44, i64 0, i32 22
  store float 0.000000e+00, ptr %76, align 4, !tbaa !63
  %77 = getelementptr inbounds %struct.bPoseChannel, ptr %44, i64 0, i32 22, i64 1
  store float 0.000000e+00, ptr %77, align 4, !tbaa !63
  %78 = getelementptr inbounds %struct.bPoseChannel, ptr %44, i64 0, i32 22, i64 2
  store float 0.000000e+00, ptr %78, align 4, !tbaa !63
  %79 = getelementptr inbounds %struct.bPoseChannel, ptr %44, i64 0, i32 23
  call void @unit_qt(ptr noundef nonnull %79) #7
  %80 = getelementptr inbounds %struct.bPoseChannel, ptr %44, i64 0, i32 24
  %81 = getelementptr inbounds %struct.bPoseChannel, ptr %44, i64 0, i32 25
  call void @unit_axis_angle(ptr noundef nonnull %80, ptr noundef nonnull %81) #7
  %82 = getelementptr inbounds %struct.bPoseChannel, ptr %44, i64 0, i32 21
  %83 = getelementptr inbounds %struct.bPoseChannel, ptr %44, i64 0, i32 21, i64 2
  store float 1.000000e+00, ptr %83, align 4, !tbaa !63
  %84 = getelementptr inbounds %struct.bPoseChannel, ptr %44, i64 0, i32 21, i64 1
  store float 1.000000e+00, ptr %84, align 4, !tbaa !63
  store float 1.000000e+00, ptr %82, align 4, !tbaa !63
  %85 = getelementptr inbounds %struct.EditBone, ptr %47, i64 0, i32 9
  %86 = load i32, ptr %85, align 4, !tbaa !66
  %87 = or i32 %86, 8192
  store i32 %87, ptr %85, align 4, !tbaa !66
  %88 = load ptr, ptr %44, align 8, !tbaa !60
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %43, !llvm.loop !67

90:                                               ; preds = %43, %33
  call void @ED_armature_from_edit(ptr noundef %13) #7
  call void @ED_armature_edit_free(ptr noundef %13) #7
  call void @BKE_pose_where_is(ptr noundef %10, ptr noundef %12) #7
  call void @llvm.lifetime.start.p0(i64 1424, ptr nonnull %3) #7
  %91 = load ptr, ptr @G, align 8, !tbaa !70
  %92 = getelementptr inbounds %struct.Main, ptr %91, i64 0, i32 13
  %93 = load ptr, ptr %92, align 8, !tbaa !60
  %94 = icmp eq ptr %93, null
  br i1 %94, label %113, label %95

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 47
  br label %97

97:                                               ; preds = %95, %110
  %98 = phi ptr [ %93, %95 ], [ %111, %110 ]
  %99 = getelementptr inbounds %struct.Object, ptr %98, i64 0, i32 9
  %100 = load ptr, ptr %99, align 8, !tbaa !72
  %101 = icmp eq ptr %100, %12
  br i1 %101, label %102, label %110

102:                                              ; preds = %97
  %103 = getelementptr inbounds %struct.Object, ptr %98, i64 0, i32 4
  %104 = load i16, ptr %103, align 2, !tbaa !73
  %105 = icmp eq i16 %104, 7
  br i1 %105, label %106, label %110

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.Object, ptr %98, i64 0, i32 47
  call void @BKE_object_apply_mat4(ptr noundef nonnull %98, ptr noundef nonnull %107, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  call void @BKE_object_workob_calc_parent(ptr noundef %10, ptr noundef nonnull %98, ptr noundef nonnull %3) #7
  %108 = getelementptr inbounds %struct.Object, ptr %98, i64 0, i32 48
  %109 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %108, ptr noundef nonnull %96) #7
  br label %110

110:                                              ; preds = %106, %102, %97
  %111 = load ptr, ptr %98, align 8, !tbaa !60
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %97, !llvm.loop !74

113:                                              ; preds = %110, %90
  call void @llvm.lifetime.end.p0(i64 1424, ptr nonnull %3) #7
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85196800, ptr noundef %12) #7
  br label %114

114:                                              ; preds = %2, %113, %20
  %115 = phi i32 [ 2, %20 ], [ 4, %113 ], [ 2, %2 ]
  ret i32 %115
}

declare i32 @ED_operator_posemode(ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @POSE_OT_visual_transform_apply(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.3, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.4, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.5, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pose_visual_transform_apply_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_posemode, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @pose_visual_transform_apply_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca [4 x [4 x float]], align 16
  %5 = tail call ptr @CTX_data_active_object(ptr noundef %0) #7
  %6 = tail call ptr @BKE_object_pose_armature_get(ptr noundef %5) #7
  %7 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 3
  %8 = load i16, ptr %7, align 8, !tbaa !47
  %9 = icmp eq i16 %8, 25
  br i1 %9, label %10, label %22

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  %11 = call i32 @CTX_data_selected_pose_bones(ptr noundef %0, ptr noundef nonnull %3) #7
  %12 = load ptr, ptr %3, align 8, !tbaa !60
  %13 = icmp eq ptr %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %10, %14
  %15 = phi ptr [ %19, %14 ], [ %12, %10 ]
  %16 = getelementptr inbounds %struct.CollectionPointerLink, ptr %15, i64 0, i32 2, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #7
  %18 = getelementptr inbounds %struct.bPoseChannel, ptr %17, i64 0, i32 29
  call void @BKE_armature_mat_pose_to_bone(ptr noundef %17, ptr noundef nonnull %18, ptr noundef nonnull %4) #7
  call void @BKE_pchan_apply_mat4(ptr noundef %17, ptr noundef nonnull %4, i8 noundef zeroext 1) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #7
  %19 = load ptr, ptr %15, align 8, !tbaa !60
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %14, !llvm.loop !79

21:                                               ; preds = %14, %10
  call void @BLI_freelistN(ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  call void @DAG_id_tag_update(ptr noundef %6, i16 noundef signext 2) #7
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85196800, ptr noundef %6) #7
  br label %22

22:                                               ; preds = %2, %21
  %23 = phi i32 [ 4, %21 ], [ 2, %2 ]
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_clipboard_posebuf_free() local_unnamed_addr #1 {
  %1 = load ptr, ptr @g_posebuf, align 8, !tbaa !60
  %2 = icmp eq ptr %1, null
  br i1 %2, label %21, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr %1, align 8, !tbaa !60
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %3, %14
  %7 = phi ptr [ %15, %14 ], [ %4, %3 ]
  %8 = getelementptr inbounds %struct.bPoseChannel, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !80
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  tail call void @IDP_FreeProperty(ptr noundef nonnull %9) #7
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !60
  %13 = load ptr, ptr %8, align 8, !tbaa !80
  tail call void %12(ptr noundef %13) #7
  br label %14

14:                                               ; preds = %6, %11
  %15 = load ptr, ptr %7, align 8, !tbaa !60
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %6, !llvm.loop !82

17:                                               ; preds = %14, %3
  %18 = load ptr, ptr @g_posebuf, align 8, !tbaa !60
  tail call void @BLI_freelistN(ptr noundef %18) #7
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !60
  %20 = load ptr, ptr @g_posebuf, align 8, !tbaa !60
  tail call void %19(ptr noundef %20) #7
  br label %21

21:                                               ; preds = %17, %0
  store ptr null, ptr @g_posebuf, align 8, !tbaa !60
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare void @IDP_FreeProperty(ptr noundef) local_unnamed_addr #2

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @POSE_OT_copy(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.6, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.7, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.8, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pose_copy_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_posemode, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 1, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @pose_copy_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = tail call ptr @CTX_data_active_object(ptr noundef %0) #7
  %4 = tail call ptr @BKE_object_pose_armature_get(ptr noundef %3) #7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 18
  %8 = load ptr, ptr %7, align 8, !tbaa !59
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %6, %2
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !54
  tail call void @BKE_report(ptr noundef %12, i32 noundef 32, ptr noundef nonnull @.str.38) #7
  br label %72

13:                                               ; preds = %6
  %14 = load ptr, ptr @g_posebuf, align 8, !tbaa !60
  %15 = icmp eq ptr %14, null
  br i1 %15, label %34, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr %14, align 8, !tbaa !60
  %18 = icmp eq ptr %17, null
  br i1 %18, label %30, label %19

19:                                               ; preds = %16, %27
  %20 = phi ptr [ %28, %27 ], [ %17, %16 ]
  %21 = getelementptr inbounds %struct.bPoseChannel, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !80
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  tail call void @IDP_FreeProperty(ptr noundef nonnull %22) #7
  %25 = load ptr, ptr @MEM_freeN, align 8, !tbaa !60
  %26 = load ptr, ptr %21, align 8, !tbaa !80
  tail call void %25(ptr noundef %26) #7
  br label %27

27:                                               ; preds = %24, %19
  %28 = load ptr, ptr %20, align 8, !tbaa !60
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %19, !llvm.loop !82

30:                                               ; preds = %27, %16
  %31 = load ptr, ptr @g_posebuf, align 8, !tbaa !60
  tail call void @BLI_freelistN(ptr noundef %31) #7
  %32 = load ptr, ptr @MEM_freeN, align 8, !tbaa !60
  %33 = load ptr, ptr @g_posebuf, align 8, !tbaa !60
  tail call void %32(ptr noundef %33) #7
  br label %34

34:                                               ; preds = %13, %30
  store ptr null, ptr @g_posebuf, align 8, !tbaa !60
  %35 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %36 = load ptr, ptr %35, align 8, !tbaa !83
  %37 = load ptr, ptr %7, align 8, !tbaa !59
  %38 = icmp eq ptr %37, null
  br i1 %38, label %71, label %39

39:                                               ; preds = %34
  %40 = load ptr, ptr %37, align 8, !tbaa !60
  %41 = icmp eq ptr %40, null
  br i1 %41, label %71, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.bArmature, ptr %36, i64 0, i32 15
  br label %44

44:                                               ; preds = %42, %68
  %45 = phi ptr [ %40, %42 ], [ %69, %68 ]
  %46 = getelementptr inbounds %struct.bPoseChannel, ptr %45, i64 0, i32 12
  %47 = load ptr, ptr %46, align 8, !tbaa !84
  %48 = icmp eq ptr %47, null
  br i1 %48, label %64, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.Bone, ptr %47, i64 0, i32 10
  %51 = load i32, ptr %50, align 8, !tbaa !85
  %52 = and i32 %51, 1
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %64, label %54

54:                                               ; preds = %49
  %55 = load i32, ptr %43, align 8, !tbaa !87
  %56 = getelementptr inbounds %struct.Bone, ptr %47, i64 0, i32 25
  %57 = load i32, ptr %56, align 8, !tbaa !88
  %58 = and i32 %57, %55
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.bPoseChannel, ptr %45, i64 0, i32 5
  %62 = load i16, ptr %61, align 8, !tbaa !89
  %63 = or i16 %62, 2048
  store i16 %63, ptr %61, align 8, !tbaa !89
  br label %68

64:                                               ; preds = %54, %49, %44
  %65 = getelementptr inbounds %struct.bPoseChannel, ptr %45, i64 0, i32 5
  %66 = load i16, ptr %65, align 8, !tbaa !89
  %67 = and i16 %66, -2049
  store i16 %67, ptr %65, align 8, !tbaa !89
  br label %68

68:                                               ; preds = %64, %60
  %69 = load ptr, ptr %45, align 8, !tbaa !60
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %44, !llvm.loop !90

71:                                               ; preds = %68, %39, %34
  tail call void @BKE_pose_copy_data(ptr noundef nonnull @g_posebuf, ptr noundef %37, i8 noundef zeroext 0) #7
  br label %72

72:                                               ; preds = %71, %10
  %73 = phi i32 [ 2, %10 ], [ 4, %71 ]
  ret i32 %73
}

; Function Attrs: nounwind uwtable
define dso_local void @POSE_OT_paste(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.9, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.10, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.11, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pose_paste_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_posemode, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !91
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.12, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #7
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 268435456) #7
  %10 = load ptr, ptr %7, align 8, !tbaa !91
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.15, i32 noundef 0, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @pose_paste_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = tail call ptr @CTX_data_active_object(ptr noundef %0) #7
  %4 = tail call ptr @BKE_object_pose_armature_get(ptr noundef %3) #7
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !92
  %8 = tail call i32 @RNA_boolean_get(ptr noundef %7, ptr noundef nonnull @.str.12) #7
  %9 = trunc i32 %8 to i8
  %10 = load ptr, ptr %6, align 8, !tbaa !92
  %11 = tail call i32 @RNA_boolean_get(ptr noundef %10, ptr noundef nonnull @.str.15) #7
  %12 = trunc i32 %11 to i8
  %13 = tail call ptr @ANIM_get_keyingset_for_autokeying(ptr noundef %5, ptr noundef nonnull @.str.39) #7
  %14 = icmp eq ptr %4, null
  br i1 %14, label %51, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 18
  %17 = load ptr, ptr %16, align 8, !tbaa !59
  %18 = icmp eq ptr %17, null
  br i1 %18, label %51, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr @g_posebuf, align 8, !tbaa !60
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %24 = load ptr, ptr %23, align 8, !tbaa !54
  tail call void @BKE_report(ptr noundef %24, i32 noundef 32, ptr noundef nonnull @.str.40) #7
  br label %51

25:                                               ; preds = %19
  %26 = icmp eq i8 %12, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %25
  %28 = tail call i32 @ctx_data_list_count(ptr noundef %0, ptr noundef nonnull @CTX_data_selected_pose_bones) #7
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, i8 0, i8 %12
  br label %31

31:                                               ; preds = %27, %25
  %32 = phi i8 [ 0, %25 ], [ %30, %27 ]
  %33 = load ptr, ptr @g_posebuf, align 8, !tbaa !60
  %34 = load ptr, ptr %33, align 8, !tbaa !60
  %35 = icmp eq ptr %34, null
  br i1 %35, label %50, label %36

36:                                               ; preds = %31, %47
  %37 = phi ptr [ %48, %47 ], [ %34, %31 ]
  %38 = getelementptr inbounds %struct.bPoseChannel, ptr %37, i64 0, i32 5
  %39 = load i16, ptr %38, align 8, !tbaa !89
  %40 = and i16 %39, 2048
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %36
  %43 = tail call fastcc ptr @pose_bone_do_paste(ptr noundef nonnull %4, ptr noundef nonnull %37, i8 noundef zeroext %32, i8 noundef zeroext %9)
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %42
  %46 = tail call zeroext i8 @ED_autokeyframe_pchan(ptr noundef %0, ptr noundef %5, ptr noundef nonnull %4, ptr noundef nonnull %43, ptr noundef %13) #7
  br label %47

47:                                               ; preds = %42, %45, %36
  %48 = load ptr, ptr %37, align 8, !tbaa !60
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %36, !llvm.loop !93

50:                                               ; preds = %47, %31
  tail call void @DAG_id_tag_update(ptr noundef nonnull %4, i16 noundef signext 2) #7
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85196800, ptr noundef nonnull %4) #7
  br label %51

51:                                               ; preds = %2, %15, %50, %22
  %52 = phi i32 [ 2, %22 ], [ 4, %50 ], [ 2, %15 ], [ 2, %2 ]
  ret i32 %52
}

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @POSE_OT_scale_clear(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.18, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.19, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.20, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pose_clear_scale_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_posemode, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @pose_clear_scale_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = tail call fastcc i32 @pose_clear_transform_generic_exec(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @pchan_clear_scale, ptr noundef nonnull @.str.41), !range !94
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @POSE_OT_rot_clear(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.21, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.22, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.23, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pose_clear_rot_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_posemode, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @pose_clear_rot_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = tail call fastcc i32 @pose_clear_transform_generic_exec(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @pchan_clear_rot, ptr noundef nonnull @.str.43), !range !94
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @POSE_OT_loc_clear(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.24, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.25, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.26, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pose_clear_loc_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_posemode, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @pose_clear_loc_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = tail call fastcc i32 @pose_clear_transform_generic_exec(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @pchan_clear_loc, ptr noundef nonnull @.str.44), !range !94
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @POSE_OT_transforms_clear(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.27, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.28, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.29, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pose_clear_transforms_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_posemode, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @pose_clear_transforms_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = tail call fastcc i32 @pose_clear_transform_generic_exec(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @pchan_clear_transforms, ptr noundef nonnull @.str.45), !range !94
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define dso_local void @POSE_OT_user_transforms_clear(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.30, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.31, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.32, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pose_clear_user_transforms_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_posemode, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !91
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.33, i32 noundef 1, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @pose_clear_user_transforms_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.Object, align 8
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %6 = tail call ptr @CTX_data_active_object(ptr noundef %0) #7
  %7 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 22, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !95
  %9 = sitofp i32 %8 to float
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !92
  %12 = tail call i32 @RNA_boolean_get(ptr noundef %11, ptr noundef nonnull @.str.33) #7
  %13 = trunc i32 %12 to i8
  %14 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !56
  %16 = icmp eq ptr %15, null
  br i1 %16, label %60, label %17

17:                                               ; preds = %2
  %18 = load ptr, ptr %15, align 8, !tbaa !57
  %19 = icmp eq ptr %18, null
  br i1 %19, label %60, label %20

20:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  store ptr null, ptr %3, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 1424, ptr nonnull %4) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1424) %4, i8 0, i64 1424, i1 false)
  %21 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 18
  %22 = load ptr, ptr %21, align 8, !tbaa !59
  call void @BKE_pose_copy_data(ptr noundef nonnull %3, ptr noundef %22, i8 noundef zeroext 0) #7
  %23 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 4
  %24 = call ptr @BLI_strncpy(ptr noundef nonnull %23, ptr noundef nonnull @.str.46, i64 noundef 66) #7
  %25 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 3
  store i16 25, ptr %25, align 8, !tbaa !47
  %26 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 19
  %27 = load ptr, ptr %26, align 8, !tbaa !83
  %28 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  store ptr %27, ptr %28, align 8, !tbaa !83
  %29 = load ptr, ptr %14, align 8, !tbaa !56
  %30 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 1
  store ptr %29, ptr %30, align 8, !tbaa !56
  %31 = load ptr, ptr %3, align 8, !tbaa !60
  %32 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 18
  store ptr %31, ptr %32, align 8, !tbaa !59
  call void @BKE_animsys_evaluate_animdata(ptr noundef %5, ptr noundef nonnull %4, ptr noundef %29, float noundef %9, i16 noundef signext 2) #7
  %33 = load ptr, ptr %3, align 8, !tbaa !60
  %34 = load ptr, ptr %33, align 8, !tbaa !60
  %35 = icmp eq ptr %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %20, %36
  %37 = phi ptr [ %39, %36 ], [ %34, %20 ]
  %38 = call fastcc ptr @pose_bone_do_paste(ptr noundef %6, ptr noundef nonnull %37, i8 noundef zeroext %13, i8 noundef zeroext 0)
  %39 = load ptr, ptr %37, align 8, !tbaa !60
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %36, !llvm.loop !114

41:                                               ; preds = %36, %20
  %42 = load ptr, ptr %3, align 8, !tbaa !60
  %43 = load ptr, ptr %42, align 8, !tbaa !60
  %44 = icmp eq ptr %43, null
  br i1 %44, label %56, label %45

45:                                               ; preds = %41, %53
  %46 = phi ptr [ %54, %53 ], [ %43, %41 ]
  %47 = getelementptr inbounds %struct.bPoseChannel, ptr %46, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !80
  %49 = icmp eq ptr %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %45
  call void @IDP_FreeProperty(ptr noundef nonnull %48) #7
  %51 = load ptr, ptr @MEM_freeN, align 8, !tbaa !60
  %52 = load ptr, ptr %47, align 8, !tbaa !80
  call void %51(ptr noundef %52) #7
  br label %53

53:                                               ; preds = %45, %50
  %54 = load ptr, ptr %46, align 8, !tbaa !60
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %45, !llvm.loop !115

56:                                               ; preds = %53, %41
  %57 = load ptr, ptr %3, align 8, !tbaa !60
  call void @BLI_freelistN(ptr noundef %57) #7
  %58 = load ptr, ptr @MEM_freeN, align 8, !tbaa !60
  %59 = load ptr, ptr %3, align 8, !tbaa !60
  call void %58(ptr noundef %59) #7
  call void @llvm.lifetime.end.p0(i64 1424, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  br label %63

60:                                               ; preds = %17, %2
  %61 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 18
  %62 = load ptr, ptr %61, align 8, !tbaa !59
  tail call void @BKE_pose_rest(ptr noundef %62) #7
  br label %63

63:                                               ; preds = %60, %56
  call void @DAG_id_tag_update(ptr noundef %6, i16 noundef signext 2) #7
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85065728, ptr noundef %6) #7
  ret i32 4
}

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_object_pose_armature_get(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_armature_from_object(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BKE_object_obdata_is_libdata(ptr noundef) local_unnamed_addr #2

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_armature_to_edit(ptr noundef) local_unnamed_addr #2

declare ptr @ED_armature_bone_find_name(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @vec_roll_to_mat3(ptr noundef, float noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @invert_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_m3_m3m3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mat3_to_eul(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @unit_qt(ptr noundef) local_unnamed_addr #2

declare void @unit_axis_angle(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_armature_from_edit(ptr noundef) local_unnamed_addr #2

declare void @ED_armature_edit_free(ptr noundef) local_unnamed_addr #2

declare void @BKE_pose_where_is(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_object_apply_mat4(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare void @BKE_object_workob_calc_parent(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CTX_data_selected_pose_bones(ptr noundef, ptr noundef) #2

declare void @BKE_armature_mat_pose_to_bone(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_pchan_apply_mat4(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare void @BKE_pose_copy_data(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ANIM_get_keyingset_for_autokeying(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ctx_data_list_count(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @pose_bone_do_paste(ptr nocapture noundef readonly %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #1 {
  %5 = alloca [64 x i8], align 16
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #7
  %8 = icmp eq i8 %3, 0
  %9 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 4
  br i1 %8, label %11, label %10

10:                                               ; preds = %4
  call void @BKE_deform_flip_side_name(ptr noundef nonnull %5, ptr noundef nonnull %9, i8 noundef zeroext 0) #7
  br label %13

11:                                               ; preds = %4
  %12 = call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef nonnull %9, i64 noundef 64) #7
  br label %13

13:                                               ; preds = %11, %10
  %14 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 18
  %15 = load ptr, ptr %14, align 8, !tbaa !59
  %16 = call ptr @BKE_pose_channel_find_name(ptr noundef %15, ptr noundef nonnull %5) #7
  %17 = icmp eq i8 %2, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %13
  %19 = icmp eq ptr %16, null
  br i1 %19, label %30, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.bPoseChannel, ptr %16, i64 0, i32 12
  %22 = load ptr, ptr %21, align 8, !tbaa !84
  %23 = getelementptr inbounds %struct.Bone, ptr %22, i64 0, i32 10
  %24 = load i32, ptr %23, align 8, !tbaa !85
  %25 = trunc i32 %24 to i16
  %26 = and i16 %25, 1
  br label %30

27:                                               ; preds = %13
  %28 = icmp ne ptr %16, null
  %29 = zext i1 %28 to i16
  br label %30

30:                                               ; preds = %18, %20, %27
  %31 = phi i16 [ %29, %27 ], [ 0, %18 ], [ %26, %20 ]
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %163, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.bPoseChannel, ptr %16, i64 0, i32 20
  %35 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 20
  %36 = load float, ptr %35, align 4, !tbaa !63
  store float %36, ptr %34, align 4, !tbaa !63
  %37 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 20, i64 1
  %38 = load float, ptr %37, align 4, !tbaa !63
  %39 = getelementptr inbounds %struct.bPoseChannel, ptr %16, i64 0, i32 20, i64 1
  store float %38, ptr %39, align 4, !tbaa !63
  %40 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 20, i64 2
  %41 = load float, ptr %40, align 4, !tbaa !63
  %42 = getelementptr inbounds %struct.bPoseChannel, ptr %16, i64 0, i32 20, i64 2
  store float %41, ptr %42, align 4, !tbaa !63
  %43 = getelementptr inbounds %struct.bPoseChannel, ptr %16, i64 0, i32 21
  %44 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 21
  %45 = load float, ptr %44, align 4, !tbaa !63
  store float %45, ptr %43, align 4, !tbaa !63
  %46 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 21, i64 1
  %47 = load float, ptr %46, align 4, !tbaa !63
  %48 = getelementptr inbounds %struct.bPoseChannel, ptr %16, i64 0, i32 21, i64 1
  store float %47, ptr %48, align 4, !tbaa !63
  %49 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 21, i64 2
  %50 = load float, ptr %49, align 4, !tbaa !63
  %51 = getelementptr inbounds %struct.bPoseChannel, ptr %16, i64 0, i32 21, i64 2
  store float %50, ptr %51, align 4, !tbaa !63
  %52 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 5
  %53 = load i16, ptr %52, align 8, !tbaa !89
  %54 = getelementptr inbounds %struct.bPoseChannel, ptr %16, i64 0, i32 5
  store i16 %53, ptr %54, align 8, !tbaa !89
  %55 = getelementptr inbounds %struct.bPoseChannel, ptr %16, i64 0, i32 26
  %56 = load i16, ptr %55, align 4, !tbaa !116
  %57 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 26
  %58 = load i16, ptr %57, align 4, !tbaa !116
  %59 = icmp eq i16 %56, %58
  %60 = icmp sgt i16 %56, 0
  br i1 %59, label %61, label %90

61:                                               ; preds = %33
  br i1 %60, label %62, label %72

62:                                               ; preds = %61
  %63 = getelementptr inbounds %struct.bPoseChannel, ptr %16, i64 0, i32 22
  %64 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 22
  %65 = load float, ptr %64, align 4, !tbaa !63
  store float %65, ptr %63, align 4, !tbaa !63
  %66 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 22, i64 1
  %67 = load float, ptr %66, align 4, !tbaa !63
  %68 = getelementptr inbounds %struct.bPoseChannel, ptr %16, i64 0, i32 22, i64 1
  store float %67, ptr %68, align 4, !tbaa !63
  %69 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 22, i64 2
  %70 = load float, ptr %69, align 4, !tbaa !63
  %71 = getelementptr inbounds %struct.bPoseChannel, ptr %16, i64 0, i32 22, i64 2
  store float %70, ptr %71, align 4, !tbaa !63
  br label %118

72:                                               ; preds = %61
  %73 = icmp eq i16 %56, -1
  br i1 %73, label %74, label %87

74:                                               ; preds = %72
  %75 = getelementptr inbounds %struct.bPoseChannel, ptr %16, i64 0, i32 24
  %76 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 24
  %77 = load float, ptr %76, align 4, !tbaa !63
  store float %77, ptr %75, align 4, !tbaa !63
  %78 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 24, i64 1
  %79 = load float, ptr %78, align 4, !tbaa !63
  %80 = getelementptr inbounds %struct.bPoseChannel, ptr %16, i64 0, i32 24, i64 1
  store float %79, ptr %80, align 4, !tbaa !63
  %81 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 24, i64 2
  %82 = load float, ptr %81, align 4, !tbaa !63
  %83 = getelementptr inbounds %struct.bPoseChannel, ptr %16, i64 0, i32 24, i64 2
  store float %82, ptr %83, align 4, !tbaa !63
  %84 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 25
  %85 = load float, ptr %84, align 8, !tbaa !117
  %86 = getelementptr inbounds %struct.bPoseChannel, ptr %16, i64 0, i32 25
  store float %85, ptr %86, align 8, !tbaa !117
  br label %118

87:                                               ; preds = %72
  %88 = getelementptr inbounds %struct.bPoseChannel, ptr %16, i64 0, i32 23
  %89 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 23
  call void @copy_qt_qt(ptr noundef nonnull %88, ptr noundef nonnull %89) #7
  br label %118

90:                                               ; preds = %33
  br i1 %60, label %91, label %100

91:                                               ; preds = %90
  %92 = icmp eq i16 %58, -1
  %93 = getelementptr inbounds %struct.bPoseChannel, ptr %16, i64 0, i32 22
  br i1 %92, label %94, label %98

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 24
  %96 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 25
  %97 = load float, ptr %96, align 8, !tbaa !117
  call void @axis_angle_to_eulO(ptr noundef nonnull %93, i16 noundef signext %56, ptr noundef nonnull %95, float noundef %97) #7
  br label %118

98:                                               ; preds = %91
  %99 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 23
  call void @quat_to_eulO(ptr noundef nonnull %93, i16 noundef signext %56, ptr noundef nonnull %99) #7
  br label %118

100:                                              ; preds = %90
  %101 = icmp eq i16 %56, -1
  %102 = icmp sgt i16 %58, 0
  br i1 %101, label %103, label %110

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.bPoseChannel, ptr %16, i64 0, i32 24
  %105 = getelementptr inbounds %struct.bPoseChannel, ptr %16, i64 0, i32 25
  br i1 %102, label %106, label %108

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 22
  call void @eulO_to_axis_angle(ptr noundef nonnull %104, ptr noundef nonnull %105, ptr noundef nonnull %107, i16 noundef signext %58) #7
  br label %118

108:                                              ; preds = %103
  %109 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 23
  call void @quat_to_axis_angle(ptr noundef nonnull %104, ptr noundef nonnull %105, ptr noundef nonnull %109) #7
  br label %118

110:                                              ; preds = %100
  %111 = getelementptr inbounds %struct.bPoseChannel, ptr %16, i64 0, i32 23
  br i1 %102, label %112, label %114

112:                                              ; preds = %110
  %113 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 22
  call void @eulO_to_quat(ptr noundef nonnull %111, ptr noundef nonnull %113, i16 noundef signext %58) #7
  br label %118

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 24
  %116 = getelementptr inbounds %struct.bPoseChannel, ptr %16, i64 0, i32 25
  %117 = load float, ptr %116, align 8, !tbaa !117
  call void @axis_angle_to_quat(ptr noundef nonnull %111, ptr noundef nonnull %115, float noundef %117) #7
  br label %118

118:                                              ; preds = %98, %94, %112, %114, %106, %108, %62, %87, %74
  br i1 %8, label %152, label %119

119:                                              ; preds = %118
  %120 = load float, ptr %34, align 8, !tbaa !63
  %121 = fneg float %120
  store float %121, ptr %34, align 8, !tbaa !63
  %122 = load i16, ptr %55, align 4, !tbaa !116
  %123 = icmp sgt i16 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %119
  %125 = getelementptr inbounds %struct.bPoseChannel, ptr %16, i64 0, i32 22, i64 1
  %126 = load float, ptr %125, align 4, !tbaa !63
  %127 = fneg float %126
  store float %127, ptr %125, align 4, !tbaa !63
  %128 = getelementptr inbounds %struct.bPoseChannel, ptr %16, i64 0, i32 22, i64 2
  %129 = load float, ptr %128, align 8, !tbaa !63
  %130 = fneg float %129
  store float %130, ptr %128, align 8, !tbaa !63
  br label %152

131:                                              ; preds = %119
  %132 = icmp eq i16 %122, -1
  br i1 %132, label %133, label %143

133:                                              ; preds = %131
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #7
  %134 = getelementptr inbounds %struct.bPoseChannel, ptr %16, i64 0, i32 24
  %135 = getelementptr inbounds %struct.bPoseChannel, ptr %16, i64 0, i32 25
  %136 = load float, ptr %135, align 8, !tbaa !117
  call void @axis_angle_to_eulO(ptr noundef nonnull %6, i16 noundef signext 1, ptr noundef nonnull %134, float noundef %136) #7
  %137 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %138 = load float, ptr %137, align 4, !tbaa !63
  %139 = fneg float %138
  store float %139, ptr %137, align 4, !tbaa !63
  %140 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %141 = load float, ptr %140, align 4, !tbaa !63
  %142 = fneg float %141
  store float %142, ptr %140, align 4, !tbaa !63
  call void @eulO_to_axis_angle(ptr noundef nonnull %134, ptr noundef nonnull %135, ptr noundef nonnull %6, i16 noundef signext 1) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #7
  br label %152

143:                                              ; preds = %131
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #7
  %144 = getelementptr inbounds %struct.bPoseChannel, ptr %16, i64 0, i32 23
  %145 = call float @normalize_qt(ptr noundef nonnull %144) #7
  call void @quat_to_eul(ptr noundef nonnull %7, ptr noundef nonnull %144) #7
  %146 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  %147 = load float, ptr %146, align 4, !tbaa !63
  %148 = fneg float %147
  store float %148, ptr %146, align 4, !tbaa !63
  %149 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  %150 = load float, ptr %149, align 4, !tbaa !63
  %151 = fneg float %150
  store float %151, ptr %149, align 4, !tbaa !63
  call void @eul_to_quat(ptr noundef nonnull %144, ptr noundef nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #7
  br label %152

152:                                              ; preds = %124, %143, %133, %118
  %153 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 2
  %154 = load ptr, ptr %153, align 8, !tbaa !80
  %155 = icmp eq ptr %154, null
  br i1 %155, label %163, label %156

156:                                              ; preds = %152
  %157 = getelementptr inbounds %struct.bPoseChannel, ptr %16, i64 0, i32 2
  %158 = load ptr, ptr %157, align 8, !tbaa !80
  %159 = icmp eq ptr %158, null
  br i1 %159, label %161, label %160

160:                                              ; preds = %156
  call void @IDP_SyncGroupValues(ptr noundef nonnull %158, ptr noundef nonnull %154) #7
  br label %163

161:                                              ; preds = %156
  %162 = call ptr @IDP_CopyProperty(ptr noundef nonnull %154) #7
  store ptr %162, ptr %157, align 8, !tbaa !80
  br label %163

163:                                              ; preds = %152, %161, %160, %30
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #7
  ret ptr %16
}

declare zeroext i8 @ED_autokeyframe_pchan(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_deform_flip_side_name(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @BKE_pose_channel_find_name(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @copy_qt_qt(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @axis_angle_to_eulO(ptr noundef, i16 noundef signext, ptr noundef, float noundef) local_unnamed_addr #2

declare void @quat_to_eulO(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #2

declare void @eulO_to_axis_angle(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare void @quat_to_axis_angle(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @eulO_to_quat(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare void @axis_angle_to_quat(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare float @normalize_qt(ptr noundef) local_unnamed_addr #2

declare void @quat_to_eul(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @eul_to_quat(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @IDP_SyncGroupValues(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @IDP_CopyProperty(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @pose_clear_transform_generic_exec(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr noundef %3) unnamed_addr #1 {
  %5 = alloca %struct.ListBase, align 8
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %7 = tail call ptr @CTX_data_active_object(ptr noundef %0) #7
  %8 = tail call ptr @BKE_object_pose_armature_get(ptr noundef %7) #7
  %9 = icmp eq ptr %2, null
  %10 = icmp eq ptr %3, null
  %11 = or i1 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %14 = load ptr, ptr %13, align 8, !tbaa !54
  tail call void @BKE_report(ptr noundef %14, i32 noundef 32, ptr noundef nonnull @.str.42) #7
  br label %60

15:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7
  %16 = call i32 @CTX_data_selected_pose_bones(ptr noundef %0, ptr noundef nonnull %5) #7
  %17 = load ptr, ptr %5, align 8, !tbaa !60
  %18 = icmp eq ptr %17, null
  br i1 %18, label %58, label %19

19:                                               ; preds = %15, %39
  %20 = phi ptr [ %41, %39 ], [ %17, %15 ]
  %21 = phi i16 [ %40, %39 ], [ 0, %15 ]
  %22 = getelementptr inbounds %struct.CollectionPointerLink, ptr %20, i64 0, i32 2, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !75
  call void %2(ptr noundef %23) #7, !callees !118
  %24 = call i32 @autokeyframe_cfra_can_key(ptr noundef %6, ptr noundef %8) #7
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds %struct.bPoseChannel, ptr %23, i64 0, i32 12
  %27 = load ptr, ptr %26, align 8, !tbaa !84
  %28 = icmp eq ptr %27, null
  br i1 %25, label %34, label %29

29:                                               ; preds = %19
  br i1 %28, label %39, label %30

30:                                               ; preds = %29
  %31 = getelementptr inbounds %struct.Bone, ptr %27, i64 0, i32 10
  %32 = load i32, ptr %31, align 8, !tbaa !85
  %33 = and i32 %32, -8193
  store i32 %33, ptr %31, align 8, !tbaa !85
  br label %39

34:                                               ; preds = %19
  br i1 %28, label %39, label %35

35:                                               ; preds = %34
  %36 = getelementptr inbounds %struct.Bone, ptr %27, i64 0, i32 10
  %37 = load i32, ptr %36, align 8, !tbaa !85
  %38 = or i32 %37, 8192
  store i32 %38, ptr %36, align 8, !tbaa !85
  br label %39

39:                                               ; preds = %29, %30, %34, %35
  %40 = phi i16 [ %21, %35 ], [ %21, %34 ], [ 1, %30 ], [ 1, %29 ]
  %41 = load ptr, ptr %20, align 8, !tbaa !60
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %19, !llvm.loop !119

43:                                               ; preds = %39
  %44 = icmp eq i16 %40, 0
  call void @BLI_freelistN(ptr noundef nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7
  br i1 %44, label %59, label %45

45:                                               ; preds = %43
  %46 = call ptr @ANIM_get_keyingset_for_autokeying(ptr noundef %6, ptr noundef %3) #7
  %47 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 5
  %48 = load i32, ptr %47, align 8, !tbaa !95
  %49 = sitofp i32 %48 to float
  %50 = call i32 @ANIM_apply_keyingset(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef %46, i16 noundef signext 0, float noundef %49) #7
  %51 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 18
  %52 = load ptr, ptr %51, align 8, !tbaa !59
  %53 = getelementptr inbounds %struct.bPose, ptr %52, i64 0, i32 14, i32 11
  %54 = load i16, ptr %53, align 2, !tbaa !120
  %55 = and i16 %54, 4
  %56 = icmp eq i16 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %45
  call void @ED_pose_recalculate_paths(ptr noundef %6, ptr noundef %8) #7
  br label %59

58:                                               ; preds = %15
  call void @BLI_freelistN(ptr noundef nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7
  br label %59

59:                                               ; preds = %58, %45, %57, %43
  call void @DAG_id_tag_update(ptr noundef %8, i16 noundef signext 2) #7
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85065728, ptr noundef %8) #7
  br label %60

60:                                               ; preds = %59, %12
  %61 = phi i32 [ 2, %12 ], [ 4, %59 ]
  ret i32 %61
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @pchan_clear_scale(ptr nocapture noundef %0) #4 {
  %2 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 7
  %3 = load i16, ptr %2, align 4, !tbaa !122
  %4 = and i16 %3, 64
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 21
  store float 1.000000e+00, ptr %7, align 4, !tbaa !63
  br label %8

8:                                                ; preds = %6, %1
  %9 = and i16 %3, 128
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 21, i64 1
  store float 1.000000e+00, ptr %12, align 4, !tbaa !63
  br label %13

13:                                               ; preds = %11, %8
  %14 = and i16 %3, 256
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 21, i64 2
  store float 1.000000e+00, ptr %17, align 4, !tbaa !63
  br label %18

18:                                               ; preds = %16, %13
  ret void
}

declare i32 @autokeyframe_cfra_can_key(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ANIM_apply_keyingset(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, float noundef) local_unnamed_addr #2

declare void @ED_pose_recalculate_paths(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @pchan_clear_rot(ptr noundef %0) #1 {
  %2 = alloca [3 x float], align 4
  %3 = alloca [3 x float], align 4
  %4 = alloca [4 x float], align 16
  %5 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 7
  %6 = load i16, ptr %5, align 4, !tbaa !122
  %7 = zext i16 %6 to i32
  %8 = and i32 %7, 568
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %152, label %10

10:                                               ; preds = %1
  %11 = and i32 %7, 1024
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %86, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 26
  %15 = load i16, ptr %14, align 4, !tbaa !116
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
  store float 0.000000e+00, ptr %20, align 8, !tbaa !117
  br label %21

21:                                               ; preds = %19, %16
  %22 = and i16 %6, 8
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 24
  store float 0.000000e+00, ptr %25, align 4, !tbaa !63
  br label %26

26:                                               ; preds = %24, %21
  %27 = and i16 %6, 16
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 24, i64 1
  store float 0.000000e+00, ptr %30, align 4, !tbaa !63
  br label %31

31:                                               ; preds = %29, %26
  %32 = and i16 %6, 32
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 24, i64 2
  store float 0.000000e+00, ptr %35, align 4, !tbaa !63
  br label %36

36:                                               ; preds = %34, %31
  %37 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 24
  %38 = load float, ptr %37, align 4, !tbaa !63
  %39 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 24, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !63
  %41 = fsub float %38, %40
  %42 = tail call float @llvm.fabs.f32(float %41)
  %43 = fcmp ult float %42, 0x3E80000000000000
  br i1 %43, label %44, label %164

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 24, i64 2
  %46 = load float, ptr %45, align 4, !tbaa !63
  %47 = fsub float %40, %46
  %48 = tail call float @llvm.fabs.f32(float %47)
  %49 = fcmp ult float %48, 0x3E80000000000000
  br i1 %49, label %50, label %164

50:                                               ; preds = %44
  store float 1.000000e+00, ptr %39, align 4, !tbaa !63
  br label %164

51:                                               ; preds = %13
  %52 = and i32 %7, 512
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 23
  store float 1.000000e+00, ptr %55, align 4, !tbaa !63
  br label %56

56:                                               ; preds = %54, %51
  %57 = and i16 %6, 8
  %58 = icmp eq i16 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 23, i64 1
  store float 0.000000e+00, ptr %60, align 4, !tbaa !63
  br label %61

61:                                               ; preds = %59, %56
  %62 = and i16 %6, 16
  %63 = icmp eq i16 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 23, i64 2
  store float 0.000000e+00, ptr %65, align 4, !tbaa !63
  br label %66

66:                                               ; preds = %64, %61
  %67 = and i16 %6, 32
  %68 = icmp eq i16 %67, 0
  br i1 %68, label %69, label %164

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 23, i64 3
  store float 0.000000e+00, ptr %70, align 4, !tbaa !63
  br label %164

71:                                               ; preds = %13
  %72 = and i32 %7, 8
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 22
  store float 0.000000e+00, ptr %75, align 8, !tbaa !63
  br label %76

76:                                               ; preds = %74, %71
  %77 = and i16 %6, 16
  %78 = icmp eq i16 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 22, i64 1
  store float 0.000000e+00, ptr %80, align 4, !tbaa !63
  br label %81

81:                                               ; preds = %79, %76
  %82 = and i16 %6, 32
  %83 = icmp eq i16 %82, 0
  br i1 %83, label %84, label %164

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 22, i64 2
  store float 0.000000e+00, ptr %85, align 8, !tbaa !63
  br label %164

86:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %87 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 26
  %88 = load i16, ptr %87, align 4, !tbaa !116
  switch i16 %88, label %96 [
    i16 0, label %89
    i16 -1, label %92
  ]

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 23
  %91 = call float @normalize_qt_qt(ptr noundef nonnull %4, ptr noundef nonnull %90) #7
  call void @quat_to_eul(ptr noundef nonnull %3, ptr noundef nonnull %4) #7
  br label %105

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 24
  %94 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 25
  %95 = load float, ptr %94, align 8, !tbaa !117
  call void @axis_angle_to_eulO(ptr noundef nonnull %3, i16 noundef signext 1, ptr noundef nonnull %93, float noundef %95) #7
  br label %105

96:                                               ; preds = %86
  %97 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 22
  %98 = load float, ptr %97, align 4, !tbaa !63
  store float %98, ptr %3, align 4, !tbaa !63
  %99 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 22, i64 1
  %100 = load float, ptr %99, align 4, !tbaa !63
  %101 = getelementptr inbounds float, ptr %3, i64 1
  store float %100, ptr %101, align 4, !tbaa !63
  %102 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 22, i64 2
  %103 = load float, ptr %102, align 4, !tbaa !63
  %104 = getelementptr inbounds float, ptr %3, i64 2
  store float %103, ptr %104, align 4, !tbaa !63
  br label %105

105:                                              ; preds = %92, %96, %89
  %106 = phi float [ %91, %89 ], [ 0.000000e+00, %92 ], [ 0.000000e+00, %96 ]
  %107 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 2
  store float 0.000000e+00, ptr %107, align 4, !tbaa !63
  %108 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 1
  store float 0.000000e+00, ptr %108, align 4, !tbaa !63
  store float 0.000000e+00, ptr %2, align 4, !tbaa !63
  %109 = load i16, ptr %5, align 4, !tbaa !122
  %110 = and i16 %109, 8
  %111 = icmp eq i16 %110, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %105
  %113 = load float, ptr %3, align 4, !tbaa !63
  store float %113, ptr %2, align 4, !tbaa !63
  br label %114

114:                                              ; preds = %112, %105
  %115 = and i16 %109, 16
  %116 = icmp eq i16 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %114
  %118 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  %119 = load float, ptr %118, align 4, !tbaa !63
  store float %119, ptr %108, align 4, !tbaa !63
  br label %120

120:                                              ; preds = %117, %114
  %121 = and i16 %109, 32
  %122 = icmp eq i16 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %120
  %124 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  %125 = load float, ptr %124, align 4, !tbaa !63
  store float %125, ptr %107, align 4, !tbaa !63
  br label %126

126:                                              ; preds = %123, %120
  %127 = load i16, ptr %87, align 4, !tbaa !116
  switch i16 %127, label %144 [
    i16 0, label %128
    i16 -1, label %141
  ]

128:                                              ; preds = %126
  %129 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 23
  call void @eul_to_quat(ptr noundef nonnull %129, ptr noundef nonnull %2) #7
  call void @mul_qt_fl(ptr noundef nonnull %129, float noundef %106) #7
  %130 = load float, ptr %4, align 16, !tbaa !63
  %131 = fcmp olt float %130, 0.000000e+00
  br i1 %131, label %132, label %135

132:                                              ; preds = %128
  %133 = load float, ptr %129, align 4, !tbaa !63
  %134 = fcmp ogt float %133, 0.000000e+00
  br i1 %134, label %140, label %135

135:                                              ; preds = %132, %128
  %136 = fcmp ogt float %130, 0.000000e+00
  br i1 %136, label %137, label %151

137:                                              ; preds = %135
  %138 = load float, ptr %129, align 4, !tbaa !63
  %139 = fcmp olt float %138, 0.000000e+00
  br i1 %139, label %140, label %151

140:                                              ; preds = %137, %132
  call void @mul_qt_fl(ptr noundef nonnull %129, float noundef -1.000000e+00) #7
  br label %151

141:                                              ; preds = %126
  %142 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 24
  %143 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 25
  call void @eulO_to_axis_angle(ptr noundef nonnull %142, ptr noundef nonnull %143, ptr noundef nonnull %2, i16 noundef signext 1) #7
  br label %151

144:                                              ; preds = %126
  %145 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 22
  %146 = load float, ptr %2, align 4, !tbaa !63
  store float %146, ptr %145, align 4, !tbaa !63
  %147 = load float, ptr %108, align 4, !tbaa !63
  %148 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 22, i64 1
  store float %147, ptr %148, align 4, !tbaa !63
  %149 = load float, ptr %107, align 4, !tbaa !63
  %150 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 22, i64 2
  store float %149, ptr %150, align 4, !tbaa !63
  br label %151

151:                                              ; preds = %141, %144, %135, %137, %140
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #7
  br label %164

152:                                              ; preds = %1
  %153 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 26
  %154 = load i16, ptr %153, align 4, !tbaa !116
  switch i16 %154, label %160 [
    i16 0, label %155
    i16 -1, label %157
  ]

155:                                              ; preds = %152
  %156 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 23
  tail call void @unit_qt(ptr noundef nonnull %156) #7
  br label %164

157:                                              ; preds = %152
  %158 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 24
  %159 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 25
  tail call void @unit_axis_angle(ptr noundef nonnull %158, ptr noundef nonnull %159) #7
  br label %164

160:                                              ; preds = %152
  %161 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 22
  store float 0.000000e+00, ptr %161, align 4, !tbaa !63
  %162 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 22, i64 1
  store float 0.000000e+00, ptr %162, align 4, !tbaa !63
  %163 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 22, i64 2
  store float 0.000000e+00, ptr %163, align 4, !tbaa !63
  br label %164

164:                                              ; preds = %155, %160, %157, %151, %69, %66, %84, %81, %36, %44, %50
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

declare float @normalize_qt_qt(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_qt_fl(ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @pchan_clear_loc(ptr nocapture noundef %0) #4 {
  %2 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 7
  %3 = load i16, ptr %2, align 4, !tbaa !122
  %4 = and i16 %3, 1
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 20
  store float 0.000000e+00, ptr %7, align 8, !tbaa !63
  br label %8

8:                                                ; preds = %6, %1
  %9 = and i16 %3, 2
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 20, i64 1
  store float 0.000000e+00, ptr %12, align 4, !tbaa !63
  br label %13

13:                                               ; preds = %11, %8
  %14 = and i16 %3, 4
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 20, i64 2
  store float 0.000000e+00, ptr %17, align 8, !tbaa !63
  br label %18

18:                                               ; preds = %16, %13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @pchan_clear_transforms(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 7
  %3 = load i16, ptr %2, align 4, !tbaa !122
  %4 = and i16 %3, 1
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 20
  store float 0.000000e+00, ptr %7, align 8, !tbaa !63
  br label %8

8:                                                ; preds = %6, %1
  %9 = and i16 %3, 2
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 20, i64 1
  store float 0.000000e+00, ptr %12, align 4, !tbaa !63
  br label %13

13:                                               ; preds = %11, %8
  %14 = and i16 %3, 4
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 20, i64 2
  store float 0.000000e+00, ptr %17, align 8, !tbaa !63
  br label %18

18:                                               ; preds = %13, %16
  tail call void @pchan_clear_rot(ptr noundef %0)
  %19 = load i16, ptr %2, align 4, !tbaa !122
  %20 = and i16 %19, 64
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 21
  store float 1.000000e+00, ptr %23, align 4, !tbaa !63
  br label %24

24:                                               ; preds = %22, %18
  %25 = and i16 %19, 128
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 21, i64 1
  store float 1.000000e+00, ptr %28, align 4, !tbaa !63
  br label %29

29:                                               ; preds = %27, %24
  %30 = and i16 %19, 256
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 21, i64 2
  store float 1.000000e+00, ptr %33, align 4, !tbaa !63
  br label %34

34:                                               ; preds = %29, %32
  ret void
}

declare void @BKE_animsys_evaluate_animdata(ptr noundef, ptr noundef, ptr noundef, float noundef, i16 noundef signext) local_unnamed_addr #2

declare void @BKE_pose_rest(ptr noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
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
!47 = !{!48, !41, i64 136}
!48 = !{!"Object", !49, i64 0, !36, i64 120, !36, i64 128, !41, i64 136, !41, i64 138, !50, i64 140, !50, i64 144, !50, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !51, i64 312, !36, i64 360, !39, i64 368, !39, i64 384, !39, i64 400, !39, i64 416, !50, i64 432, !50, i64 436, !36, i64 440, !36, i64 448, !50, i64 456, !50, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !52, i64 616, !52, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !50, i64 944, !41, i64 948, !41, i64 950, !41, i64 952, !41, i64 954, !41, i64 956, !41, i64 958, !41, i64 960, !41, i64 962, !41, i64 964, !37, i64 966, !37, i64 967, !50, i64 968, !50, i64 972, !50, i64 976, !50, i64 980, !50, i64 984, !52, i64 988, !52, i64 992, !52, i64 996, !52, i64 1000, !52, i64 1004, !52, i64 1008, !52, i64 1012, !52, i64 1016, !52, i64 1020, !52, i64 1024, !52, i64 1028, !52, i64 1032, !41, i64 1036, !41, i64 1038, !41, i64 1040, !37, i64 1042, !37, i64 1043, !41, i64 1044, !37, i64 1046, !37, i64 1047, !52, i64 1048, !52, i64 1052, !39, i64 1056, !39, i64 1072, !39, i64 1088, !39, i64 1104, !52, i64 1120, !41, i64 1124, !41, i64 1126, !37, i64 1128, !50, i64 1144, !50, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !41, i64 1162, !37, i64 1164, !39, i64 1176, !39, i64 1192, !39, i64 1208, !39, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !41, i64 1266, !52, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !53, i64 1304, !53, i64 1312, !50, i64 1320, !50, i64 1324, !39, i64 1328, !39, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !39, i64 1400, !36, i64 1416}
!49 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !50, i64 100, !50, i64 104, !50, i64 108, !36, i64 112}
!50 = !{!"int", !37, i64 0}
!51 = !{!"bAnimVizSettings", !50, i64 0, !50, i64 4, !50, i64 8, !50, i64 12, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !50, i64 32, !50, i64 36, !50, i64 40, !50, i64 44}
!52 = !{!"float", !37, i64 0}
!53 = !{!"long", !37, i64 0}
!54 = !{!55, !36, i64 120}
!55 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!56 = !{!48, !36, i64 120}
!57 = !{!58, !36, i64 0}
!58 = !{!"AnimData", !36, i64 0, !36, i64 8, !36, i64 16, !39, i64 24, !36, i64 40, !39, i64 48, !39, i64 64, !50, i64 80, !50, i64 84, !41, i64 88, !41, i64 90, !52, i64 92}
!59 = !{!48, !36, i64 288}
!60 = !{!36, !36, i64 0}
!61 = !{!62, !36, i64 160}
!62 = !{!"bArmature", !49, i64 0, !36, i64 120, !39, i64 128, !39, i64 144, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !50, i64 192, !50, i64 196, !50, i64 200, !50, i64 204, !41, i64 208, !41, i64 210, !50, i64 212, !50, i64 216, !50, i64 220, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !50, i64 232, !50, i64 236, !50, i64 240, !50, i64 244, !50, i64 248, !50, i64 252}
!63 = !{!52, !52, i64 0}
!64 = !{!65, !52, i64 104}
!65 = !{!"EditBone", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !52, i64 104, !37, i64 108, !37, i64 120, !50, i64 132, !50, i64 136, !52, i64 140, !52, i64 144, !52, i64 148, !52, i64 152, !52, i64 156, !52, i64 160, !52, i64 164, !52, i64 168, !52, i64 172, !52, i64 176, !41, i64 180}
!66 = !{!65, !50, i64 132}
!67 = distinct !{!67, !68, !69}
!68 = !{!"llvm.loop.mustprogress"}
!69 = !{!"llvm.loop.unroll.disable"}
!70 = !{!71, !36, i64 0}
!71 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !39, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !41, i64 2084, !41, i64 2086, !41, i64 2088, !37, i64 2090, !41, i64 2092, !50, i64 2096, !50, i64 2100, !37, i64 2104, !50, i64 2108, !50, i64 2112, !37, i64 2116}
!72 = !{!48, !36, i64 216}
!73 = !{!48, !41, i64 138}
!74 = distinct !{!74, !68, !69}
!75 = !{!76, !36, i64 32}
!76 = !{!"CollectionPointerLink", !36, i64 0, !36, i64 8, !77, i64 16}
!77 = !{!"PointerRNA", !78, i64 0, !36, i64 8, !36, i64 16}
!78 = !{!"", !36, i64 0}
!79 = distinct !{!79, !68, !69}
!80 = !{!81, !36, i64 16}
!81 = !{!"bPoseChannel", !36, i64 0, !36, i64 8, !36, i64 16, !39, i64 24, !37, i64 40, !41, i64 104, !41, i64 106, !41, i64 108, !41, i64 110, !37, i64 112, !37, i64 113, !37, i64 114, !36, i64 120, !36, i64 128, !36, i64 136, !39, i64 144, !39, i64 160, !36, i64 176, !36, i64 184, !36, i64 192, !37, i64 200, !37, i64 212, !37, i64 224, !37, i64 236, !37, i64 252, !52, i64 264, !41, i64 268, !41, i64 270, !37, i64 272, !37, i64 336, !37, i64 400, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !52, i64 524, !52, i64 528, !52, i64 532, !36, i64 536}
!82 = distinct !{!82, !68, !69}
!83 = !{!48, !36, i64 296}
!84 = !{!81, !36, i64 120}
!85 = !{!86, !50, i64 176}
!86 = !{!"Bone", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !39, i64 32, !37, i64 48, !52, i64 112, !37, i64 116, !37, i64 128, !37, i64 140, !50, i64 176, !37, i64 180, !37, i64 192, !37, i64 204, !52, i64 268, !52, i64 272, !52, i64 276, !52, i64 280, !52, i64 284, !52, i64 288, !52, i64 292, !52, i64 296, !52, i64 300, !52, i64 304, !37, i64 308, !50, i64 320, !41, i64 324, !37, i64 326}
!87 = !{!62, !50, i64 216}
!88 = !{!86, !50, i64 320}
!89 = !{!81, !41, i64 104}
!90 = distinct !{!90, !68, !69}
!91 = !{!35, !36, i64 88}
!92 = !{!55, !36, i64 112}
!93 = distinct !{!93, !68, !69}
!94 = !{i32 2, i32 5}
!95 = !{!96, !50, i64 680}
!96 = !{!"Scene", !49, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !50, i64 232, !50, i64 236, !50, i64 240, !41, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !97, i64 280, !106, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !41, i64 4376, !41, i64 4378, !50, i64 4380, !39, i64 4384, !107, i64 4400, !108, i64 4416, !111, i64 4600, !36, i64 4608, !112, i64 4616, !36, i64 4640, !53, i64 4648, !53, i64 4656, !99, i64 4664, !100, i64 4824, !113, i64 4888, !36, i64 4952}
!97 = !{!"RenderData", !98, i64 0, !36, i64 248, !36, i64 256, !101, i64 264, !102, i64 328, !50, i64 400, !50, i64 404, !50, i64 408, !52, i64 412, !50, i64 416, !50, i64 420, !50, i64 424, !50, i64 428, !41, i64 432, !41, i64 434, !52, i64 436, !52, i64 440, !52, i64 444, !52, i64 448, !52, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !50, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !50, i64 484, !50, i64 488, !41, i64 492, !41, i64 494, !50, i64 496, !50, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !37, i64 514, !37, i64 515, !50, i64 516, !50, i64 520, !50, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !103, i64 544, !103, i64 560, !104, i64 576, !39, i64 592, !41, i64 608, !41, i64 610, !52, i64 612, !52, i64 616, !52, i64 620, !52, i64 624, !50, i64 628, !52, i64 632, !52, i64 636, !52, i64 640, !52, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !52, i64 660, !52, i64 664, !41, i64 668, !41, i64 670, !52, i64 672, !52, i64 676, !37, i64 680, !50, i64 1704, !41, i64 1708, !41, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !50, i64 2520, !41, i64 2524, !41, i64 2526, !52, i64 2528, !52, i64 2532, !41, i64 2536, !41, i64 2538, !52, i64 2540, !41, i64 2544, !41, i64 2546, !50, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !52, i64 2560, !52, i64 2564, !36, i64 2568, !50, i64 2576, !52, i64 2580, !37, i64 2584, !105, i64 2616, !50, i64 3976, !50, i64 3980}
!98 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !41, i64 8, !41, i64 10, !52, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !99, i64 24, !100, i64 184}
!99 = !{!"ColorManagedViewSettings", !50, i64 0, !50, i64 4, !37, i64 8, !37, i64 72, !52, i64 136, !52, i64 140, !36, i64 144, !36, i64 152}
!100 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!101 = !{!"QuicktimeCodecSettings", !50, i64 0, !50, i64 4, !50, i64 8, !50, i64 12, !50, i64 16, !50, i64 20, !50, i64 24, !50, i64 28, !50, i64 32, !50, i64 36, !50, i64 40, !50, i64 44, !41, i64 48, !41, i64 50, !50, i64 52, !50, i64 56, !50, i64 60}
!102 = !{!"FFMpegCodecData", !50, i64 0, !50, i64 4, !50, i64 8, !50, i64 12, !50, i64 16, !50, i64 20, !50, i64 24, !50, i64 28, !52, i64 32, !50, i64 36, !50, i64 40, !50, i64 44, !50, i64 48, !50, i64 52, !50, i64 56, !50, i64 60, !36, i64 64}
!103 = !{!"rctf", !52, i64 0, !52, i64 4, !52, i64 8, !52, i64 12}
!104 = !{!"rcti", !50, i64 0, !50, i64 4, !50, i64 8, !50, i64 12}
!105 = !{!"BakeData", !98, i64 0, !37, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !52, i64 1280, !52, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!106 = !{!"AudioData", !50, i64 0, !52, i64 4, !52, i64 8, !52, i64 12, !50, i64 16, !41, i64 20, !41, i64 22, !52, i64 24, !52, i64 28}
!107 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!108 = !{!"GameData", !107, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !37, i64 34, !109, i64 40, !41, i64 64, !41, i64 66, !52, i64 68, !110, i64 72, !52, i64 128, !52, i64 132, !50, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !52, i64 164, !52, i64 168, !52, i64 172, !52, i64 176, !52, i64 180}
!109 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !52, i64 8, !52, i64 12, !36, i64 16}
!110 = !{!"RecastData", !52, i64 0, !52, i64 4, !52, i64 8, !52, i64 12, !52, i64 16, !52, i64 20, !52, i64 24, !52, i64 28, !52, i64 32, !52, i64 36, !50, i64 40, !52, i64 44, !52, i64 48, !41, i64 52, !41, i64 54}
!111 = !{!"UnitSettings", !52, i64 0, !37, i64 4, !37, i64 5, !41, i64 6}
!112 = !{!"PhysicsSettings", !37, i64 0, !50, i64 12, !50, i64 16, !50, i64 20}
!113 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!114 = distinct !{!114, !68, !69}
!115 = distinct !{!115, !68, !69}
!116 = !{!81, !41, i64 268}
!117 = !{!81, !52, i64 264}
!118 = !{ptr @pchan_clear_loc, ptr @pchan_clear_rot, ptr @pchan_clear_scale, ptr @pchan_clear_transforms}
!119 = distinct !{!119, !68, !69}
!120 = !{!121, !41, i64 134}
!121 = !{!"bPose", !39, i64 0, !36, i64 16, !41, i64 24, !41, i64 26, !50, i64 28, !50, i64 32, !52, i64 36, !37, i64 40, !37, i64 52, !39, i64 64, !50, i64 80, !50, i64 84, !36, i64 88, !36, i64 96, !51, i64 104, !37, i64 152}
!122 = !{!81, !41, i64 108}
