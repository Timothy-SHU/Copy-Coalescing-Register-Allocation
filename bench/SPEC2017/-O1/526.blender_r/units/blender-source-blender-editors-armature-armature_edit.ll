; ModuleID = 'blender/source/blender/editors/armature/armature_edit.c'
source_filename = "blender/source/blender/editors/armature/armature_edit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.bArmature = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.EditBone = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], float, [3 x float], [3 x float], i32, i32, float, float, float, float, float, float, float, float, float, float, i16 }
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
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.RegionView3D = type { [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [6 x [4 x float]], [6 x [4 x float]], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x [4 x float]], [4 x float], float, float, float, float, [3 x float], float, i8, i8, i8, i8, i8, [3 x i8], [2 x float], i16, i16, [4 x float], i16, i16, float, [3 x float], float, [3 x float] }
%struct.CollectionPointerLink = type { ptr, ptr, %struct.PointerRNA }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.EditBonePoint = type { ptr, ptr, ptr, ptr, [3 x float] }
%struct.LinkData = type { ptr, ptr, ptr }
%struct.bPoseChannel = type { ptr, ptr, ptr, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i8, i8, [6 x i8], ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], float, i16, i16, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.bConstraintTypeInfo = type { i16, i16, [32 x i8], [32 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bConstraint = type { ptr, ptr, ptr, i16, i16, i8, i8, [64 x i8], i16, float, float, ptr, float, float }
%struct.bConstraintTarget = type { ptr, ptr, ptr, [64 x i8], [4 x [4 x float]], i16, i16, i16, i16 }

@.str = private unnamed_addr constant [17 x i8] c"Recalculate Roll\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"ARMATURE_OT_calculate_roll\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"Automatically fix alignment of select bones' axes\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@prop_calc_roll_types = internal global [9 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 3, ptr @.str.43, i32 0, ptr @.str.44, ptr @.str.5 }, %struct.EnumPropertyItem { i32 4, ptr @.str.45, i32 0, ptr @.str.46, ptr @.str.5 }, %struct.EnumPropertyItem { i32 0, ptr @.str.47, i32 0, ptr @.str.48, ptr @.str.5 }, %struct.EnumPropertyItem { i32 1, ptr @.str.49, i32 0, ptr @.str.50, ptr @.str.5 }, %struct.EnumPropertyItem { i32 2, ptr @.str.51, i32 0, ptr @.str.52, ptr @.str.5 }, %struct.EnumPropertyItem { i32 5, ptr @.str.53, i32 0, ptr @.str.54, ptr @.str.5 }, %struct.EnumPropertyItem { i32 6, ptr @.str.55, i32 0, ptr @.str.56, ptr @.str.5 }, %struct.EnumPropertyItem { i32 7, ptr @.str.57, i32 0, ptr @.str.58, ptr @.str.5 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.4 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"axis_flip\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"Flip Axis\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"Negate the alignment axis\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"axis_only\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"Shortest Rotation\00", align 1
@.str.11 = private unnamed_addr constant [62 x i8] c"Ignore the axis direction, use the shortest rotation to align\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"Fill Between Joints\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"ARMATURE_OT_fill\00", align 1
@.str.14 = private unnamed_addr constant [52 x i8] c"Add bone between selected joint(s) and/or 3D-Cursor\00", align 1
@ARMATURE_OT_merge.merge_types = internal global [2 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.15, i32 0, ptr @.str.16, ptr @.str.5 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.15 = private unnamed_addr constant [13 x i8] c"WITHIN_CHAIN\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"Within Chains\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"Merge Bones\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"ARMATURE_OT_merge\00", align 1
@.str.19 = private unnamed_addr constant [42 x i8] c"Merge continuous chains of selected bones\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"Switch Direction\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"ARMATURE_OT_switch_direction\00", align 1
@.str.22 = private unnamed_addr constant [74 x i8] c"Change the direction that a chain of bones points in (head <-> tail swap)\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"Align Bones\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"ARMATURE_OT_align\00", align 1
@.str.25 = private unnamed_addr constant [61 x i8] c"Align selected bones to the active bone (or to their parent)\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"Split\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"ARMATURE_OT_split\00", align 1
@.str.28 = private unnamed_addr constant [57 x i8] c"Split off selected bones from connected unselected bones\00", align 1
@.str.29 = private unnamed_addr constant [24 x i8] c"Delete Selected Bone(s)\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"ARMATURE_OT_delete\00", align 1
@.str.31 = private unnamed_addr constant [40 x i8] c"Remove selected bones from the armature\00", align 1
@.str.32 = private unnamed_addr constant [20 x i8] c"Hide Selected Bones\00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"ARMATURE_OT_hide\00", align 1
@.str.34 = private unnamed_addr constant [50 x i8] c"Tag selected bones to not be visible in Edit Mode\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"unselected\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"Unselected\00", align 1
@.str.37 = private unnamed_addr constant [37 x i8] c"Hide unselected rather than selected\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"Reveal Bones\00", align 1
@.str.39 = private unnamed_addr constant [19 x i8] c"ARMATURE_OT_reveal\00", align 1
@.str.40 = private unnamed_addr constant [65 x i8] c"Unhide all bones that have been tagged to be hidden in Edit Mode\00", align 1
@.str.41 = private unnamed_addr constant [27 x i8] c"No region view3d available\00", align 1
@.str.42 = private unnamed_addr constant [19 x i8] c"No active bone set\00", align 1
@.str.43 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.44 = private unnamed_addr constant [16 x i8] c"Local X Tangent\00", align 1
@.str.45 = private unnamed_addr constant [2 x i8] c"Z\00", align 1
@.str.46 = private unnamed_addr constant [16 x i8] c"Local Z Tangent\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"GLOBAL_X\00", align 1
@.str.48 = private unnamed_addr constant [14 x i8] c"Global X Axis\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"GLOBAL_Y\00", align 1
@.str.50 = private unnamed_addr constant [14 x i8] c"Global Y Axis\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"GLOBAL_Z\00", align 1
@.str.52 = private unnamed_addr constant [14 x i8] c"Global Z Axis\00", align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"ACTIVE\00", align 1
@.str.54 = private unnamed_addr constant [12 x i8] c"Active Bone\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"VIEW\00", align 1
@.str.56 = private unnamed_addr constant [10 x i8] c"View Axis\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"CURSOR\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"Cursor\00", align 1
@.str.59 = private unnamed_addr constant [19 x i8] c"No joints selected\00", align 1
@.str.60 = private unnamed_addr constant [22 x i8] c"Same bone selected...\00", align 1
@.str.61 = private unnamed_addr constant [29 x i8] c"Too many points selected: %d\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.62 = private unnamed_addr constant [14 x i8] c"EditBonePoint\00", align 1
@.str.63 = private unnamed_addr constant [10 x i8] c"BoneChain\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.65 = private unnamed_addr constant [23 x i8] c"\09start = %s, end = %s\0A\00", align 1
@.str.66 = private unnamed_addr constant [34 x i8] c"Operation requires an active bone\00", align 1
@.str.67 = private unnamed_addr constant [28 x i8] c"Aligned bone '%s' to parent\00", align 1
@.str.68 = private unnamed_addr constant [30 x i8] c"%d bones aligned to bone '%s'\00", align 1
@str = private unnamed_addr constant [18 x i8] c"Error: same bone!\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @ED_armature_apply_transform(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  tail call void @ED_armature_to_edit(ptr noundef %4) #11
  tail call void @ED_armature_transform_bones(ptr noundef %4, ptr noundef %1)
  tail call void @ED_armature_from_edit(ptr noundef %4) #11
  tail call void @ED_armature_edit_free(ptr noundef %4) #11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @ED_armature_to_edit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ED_armature_transform_bones(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [3 x [3 x float]], align 16
  %4 = alloca [3 x [3 x float]], align 16
  %5 = tail call float @mat4_to_scale(ptr noundef %1) #11
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #11
  call void @copy_m3_m4(ptr noundef nonnull %3, ptr noundef %1) #11
  call void @normalize_m3(ptr noundef nonnull %3) #11
  %6 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = icmp eq ptr %8, null
  br i1 %9, label %32, label %10

10:                                               ; preds = %2, %10
  %11 = phi ptr [ %30, %10 ], [ %8, %2 ]
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #11
  call void @ED_armature_ebone_to_mat3(ptr noundef nonnull %11, ptr noundef nonnull %4) #11
  call void @mul_m3_m3m3(ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef nonnull %4) #11
  %12 = getelementptr inbounds %struct.EditBone, ptr %11, i64 0, i32 7
  call void @mul_m4_v3(ptr noundef %1, ptr noundef nonnull %12) #11
  %13 = getelementptr inbounds %struct.EditBone, ptr %11, i64 0, i32 8
  call void @mul_m4_v3(ptr noundef %1, ptr noundef nonnull %13) #11
  %14 = getelementptr inbounds %struct.EditBone, ptr %11, i64 0, i32 6
  call void @mat3_to_vec_roll(ptr noundef nonnull %4, ptr noundef null, ptr noundef nonnull %14) #11
  %15 = getelementptr inbounds %struct.EditBone, ptr %11, i64 0, i32 18
  %16 = load float, ptr %15, align 8, !tbaa !49
  %17 = fmul float %5, %16
  store float %17, ptr %15, align 8, !tbaa !49
  %18 = getelementptr inbounds %struct.EditBone, ptr %11, i64 0, i32 19
  %19 = load float, ptr %18, align 4, !tbaa !51
  %20 = fmul float %5, %19
  store float %20, ptr %18, align 4, !tbaa !51
  %21 = getelementptr inbounds %struct.EditBone, ptr %11, i64 0, i32 11
  %22 = load float, ptr %21, align 4, !tbaa !52
  %23 = fmul float %5, %22
  store float %23, ptr %21, align 4, !tbaa !52
  %24 = getelementptr inbounds %struct.EditBone, ptr %11, i64 0, i32 13
  %25 = load float, ptr %24, align 4, !tbaa !53
  %26 = fmul float %5, %25
  store float %26, ptr %24, align 4, !tbaa !53
  %27 = getelementptr inbounds %struct.EditBone, ptr %11, i64 0, i32 15
  %28 = load float, ptr %27, align 4, !tbaa !54
  %29 = fmul float %5, %28
  store float %29, ptr %27, align 4, !tbaa !54
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #11
  %30 = load ptr, ptr %11, align 8, !tbaa !48
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %10, !llvm.loop !55

32:                                               ; preds = %10, %2
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #11
  ret void
}

declare void @ED_armature_from_edit(ptr noundef) local_unnamed_addr #2

declare void @ED_armature_edit_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare float @mat4_to_scale(ptr noundef) local_unnamed_addr #2

declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @normalize_m3(ptr noundef) local_unnamed_addr #2

declare void @ED_armature_ebone_to_mat3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_m3_m3m3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mat3_to_vec_roll(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ED_armature_transform(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @ED_armature_transform_bones(ptr noundef %0, ptr noundef %1)
  br label %8

7:                                                ; preds = %2
  tail call void @ED_armature_to_edit(ptr noundef %0) #11
  tail call void @ED_armature_transform_bones(ptr noundef %0, ptr noundef %1)
  tail call void @ED_armature_from_edit(ptr noundef %0) #11
  tail call void @ED_armature_edit_free(ptr noundef %0) #11
  br label %8

8:                                                ; preds = %7, %6
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_armature_origin_set(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !58
  %11 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #11
  %13 = icmp eq ptr %10, %1
  br i1 %13, label %15, label %14

14:                                               ; preds = %5
  tail call void @ED_armature_to_edit(ptr noundef %12) #11
  br label %15

15:                                               ; preds = %14, %5
  %16 = phi ptr [ null, %14 ], [ %10, %5 ]
  %17 = icmp eq i32 %3, 2
  br i1 %17, label %18, label %29

18:                                               ; preds = %15
  %19 = load float, ptr %2, align 4, !tbaa !77
  store float %19, ptr %6, align 4, !tbaa !77
  %20 = getelementptr inbounds float, ptr %2, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !77
  %22 = getelementptr inbounds float, ptr %6, i64 1
  store float %21, ptr %22, align 4, !tbaa !77
  %23 = getelementptr inbounds float, ptr %2, i64 2
  %24 = load float, ptr %23, align 4, !tbaa !77
  %25 = getelementptr inbounds float, ptr %6, i64 2
  store float %24, ptr %25, align 4, !tbaa !77
  %26 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 50
  %27 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  %28 = tail call zeroext i8 @invert_m4_m4(ptr noundef nonnull %26, ptr noundef nonnull %27) #11
  call void @mul_m4_v3(ptr noundef nonnull %26, ptr noundef nonnull %6) #11
  br label %97

29:                                               ; preds = %15
  %30 = icmp eq i32 %4, 3
  br i1 %30, label %31, label %81

31:                                               ; preds = %29
  store float 0.000000e+00, ptr %6, align 4, !tbaa !77
  %32 = getelementptr inbounds float, ptr %6, i64 1
  store float 0.000000e+00, ptr %32, align 4, !tbaa !77
  %33 = getelementptr inbounds float, ptr %6, i64 2
  store float 0.000000e+00, ptr %33, align 4, !tbaa !77
  %34 = getelementptr inbounds %struct.bArmature, ptr %12, i64 0, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !46
  %36 = load float, ptr %6, align 4, !tbaa !77
  %37 = load ptr, ptr %35, align 8, !tbaa !48
  %38 = icmp eq ptr %37, null
  br i1 %38, label %66, label %39

39:                                               ; preds = %31, %39
  %40 = phi ptr [ %64, %39 ], [ %37, %31 ]
  %41 = phi i32 [ %45, %39 ], [ 0, %31 ]
  %42 = phi float [ %57, %39 ], [ %36, %31 ]
  %43 = phi float [ %60, %39 ], [ 0.000000e+00, %31 ]
  %44 = phi float [ %63, %39 ], [ 0.000000e+00, %31 ]
  %45 = add nuw nsw i32 %41, 2
  %46 = getelementptr inbounds %struct.EditBone, ptr %40, i64 0, i32 7
  %47 = load float, ptr %46, align 4, !tbaa !77
  %48 = fadd float %47, %42
  %49 = getelementptr inbounds %struct.EditBone, ptr %40, i64 0, i32 7, i64 1
  %50 = load float, ptr %49, align 4, !tbaa !77
  %51 = fadd float %50, %43
  %52 = getelementptr inbounds %struct.EditBone, ptr %40, i64 0, i32 7, i64 2
  %53 = load float, ptr %52, align 4, !tbaa !77
  %54 = fadd float %53, %44
  %55 = getelementptr inbounds %struct.EditBone, ptr %40, i64 0, i32 8
  %56 = load float, ptr %55, align 4, !tbaa !77
  %57 = fadd float %48, %56
  %58 = getelementptr inbounds %struct.EditBone, ptr %40, i64 0, i32 8, i64 1
  %59 = load float, ptr %58, align 4, !tbaa !77
  %60 = fadd float %51, %59
  %61 = getelementptr inbounds %struct.EditBone, ptr %40, i64 0, i32 8, i64 2
  %62 = load float, ptr %61, align 4, !tbaa !77
  %63 = fadd float %54, %62
  %64 = load ptr, ptr %40, align 8, !tbaa !48
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %39, !llvm.loop !78

66:                                               ; preds = %39, %31
  %67 = phi float [ 0.000000e+00, %31 ], [ %63, %39 ]
  %68 = phi float [ 0.000000e+00, %31 ], [ %60, %39 ]
  %69 = phi float [ %36, %31 ], [ %57, %39 ]
  %70 = phi i32 [ 0, %31 ], [ %45, %39 ]
  store float %69, ptr %6, align 4, !tbaa !77
  store float %68, ptr %32, align 4, !tbaa !77
  store float %67, ptr %33, align 4, !tbaa !77
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %97, label %72

72:                                               ; preds = %66
  %73 = sitofp i32 %70 to float
  %74 = fdiv float 1.000000e+00, %73
  %75 = load float, ptr %6, align 4, !tbaa !77
  %76 = fmul float %74, %75
  store float %76, ptr %6, align 4, !tbaa !77
  %77 = load float, ptr %32, align 4, !tbaa !77
  %78 = fmul float %74, %77
  store float %78, ptr %32, align 4, !tbaa !77
  %79 = load float, ptr %33, align 4, !tbaa !77
  %80 = fmul float %74, %79
  store float %80, ptr %33, align 4, !tbaa !77
  br label %97

81:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #11
  %82 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  store float 0x46293E5940000000, ptr %82, align 4, !tbaa !77
  %83 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  store float 0x46293E5940000000, ptr %83, align 4, !tbaa !77
  store float 0x46293E5940000000, ptr %7, align 4, !tbaa !77
  %84 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  store float 0xC6293E5940000000, ptr %84, align 4, !tbaa !77
  %85 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 1
  store float 0xC6293E5940000000, ptr %85, align 4, !tbaa !77
  store float 0xC6293E5940000000, ptr %8, align 4, !tbaa !77
  %86 = getelementptr inbounds %struct.bArmature, ptr %12, i64 0, i32 4
  %87 = load ptr, ptr %86, align 8, !tbaa !46
  %88 = load ptr, ptr %87, align 8, !tbaa !48
  %89 = icmp eq ptr %88, null
  br i1 %89, label %96, label %90

90:                                               ; preds = %81, %90
  %91 = phi ptr [ %94, %90 ], [ %88, %81 ]
  %92 = getelementptr inbounds %struct.EditBone, ptr %91, i64 0, i32 7
  call void @minmax_v3v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %92) #11
  %93 = getelementptr inbounds %struct.EditBone, ptr %91, i64 0, i32 8
  call void @minmax_v3v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %93) #11
  %94 = load ptr, ptr %91, align 8, !tbaa !48
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %90, !llvm.loop !79

96:                                               ; preds = %90, %81
  call void @mid_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #11
  br label %97

97:                                               ; preds = %66, %72, %96, %18
  %98 = getelementptr inbounds %struct.bArmature, ptr %12, i64 0, i32 4
  %99 = load ptr, ptr %98, align 8, !tbaa !46
  %100 = load ptr, ptr %99, align 8, !tbaa !48
  %101 = icmp eq ptr %100, null
  br i1 %101, label %130, label %102

102:                                              ; preds = %97
  %103 = load float, ptr %6, align 4, !tbaa !77
  %104 = getelementptr inbounds float, ptr %6, i64 1
  %105 = load float, ptr %104, align 4, !tbaa !77
  %106 = getelementptr inbounds float, ptr %6, i64 2
  %107 = load float, ptr %106, align 4, !tbaa !77
  br label %108

108:                                              ; preds = %102, %108
  %109 = phi ptr [ %100, %102 ], [ %128, %108 ]
  %110 = getelementptr inbounds %struct.EditBone, ptr %109, i64 0, i32 7
  %111 = load float, ptr %110, align 4, !tbaa !77
  %112 = fsub float %111, %103
  store float %112, ptr %110, align 4, !tbaa !77
  %113 = getelementptr inbounds %struct.EditBone, ptr %109, i64 0, i32 7, i64 1
  %114 = load float, ptr %113, align 4, !tbaa !77
  %115 = fsub float %114, %105
  store float %115, ptr %113, align 4, !tbaa !77
  %116 = getelementptr inbounds %struct.EditBone, ptr %109, i64 0, i32 7, i64 2
  %117 = load float, ptr %116, align 4, !tbaa !77
  %118 = fsub float %117, %107
  store float %118, ptr %116, align 4, !tbaa !77
  %119 = getelementptr inbounds %struct.EditBone, ptr %109, i64 0, i32 8
  %120 = load float, ptr %119, align 4, !tbaa !77
  %121 = fsub float %120, %103
  store float %121, ptr %119, align 4, !tbaa !77
  %122 = getelementptr inbounds %struct.EditBone, ptr %109, i64 0, i32 8, i64 1
  %123 = load float, ptr %122, align 4, !tbaa !77
  %124 = fsub float %123, %105
  store float %124, ptr %122, align 4, !tbaa !77
  %125 = getelementptr inbounds %struct.EditBone, ptr %109, i64 0, i32 8, i64 2
  %126 = load float, ptr %125, align 4, !tbaa !77
  %127 = fsub float %126, %107
  store float %127, ptr %125, align 4, !tbaa !77
  %128 = load ptr, ptr %109, align 8, !tbaa !48
  %129 = icmp eq ptr %128, null
  br i1 %129, label %130, label %108, !llvm.loop !80

130:                                              ; preds = %108, %97
  %131 = icmp eq ptr %16, null
  br i1 %131, label %132, label %133

132:                                              ; preds = %130
  call void @ED_armature_from_edit(ptr noundef %12) #11
  call void @ED_armature_edit_free(ptr noundef %12) #11
  br label %133

133:                                              ; preds = %132, %130
  %134 = icmp ne i32 %3, 0
  %135 = and i1 %134, %131
  br i1 %135, label %136, label %152

136:                                              ; preds = %133
  %137 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  call void @mul_mat3_m4_v3(ptr noundef nonnull %137, ptr noundef nonnull %6) #11
  %138 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 33
  %139 = load float, ptr %6, align 4, !tbaa !77
  %140 = load float, ptr %138, align 4, !tbaa !77
  %141 = fadd float %139, %140
  store float %141, ptr %138, align 4, !tbaa !77
  %142 = getelementptr inbounds float, ptr %6, i64 1
  %143 = load float, ptr %142, align 4, !tbaa !77
  %144 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 33, i64 1
  %145 = load float, ptr %144, align 4, !tbaa !77
  %146 = fadd float %143, %145
  store float %146, ptr %144, align 4, !tbaa !77
  %147 = getelementptr inbounds float, ptr %6, i64 2
  %148 = load float, ptr %147, align 4, !tbaa !77
  %149 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 33, i64 2
  %150 = load float, ptr %149, align 4, !tbaa !77
  %151 = fadd float %148, %150
  store float %151, ptr %149, align 4, !tbaa !77
  br label %152

152:                                              ; preds = %136, %133
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #11
  ret void
}

declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @minmax_v3v3_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_mat3_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local float @ED_rollBoneToVector(ptr nocapture noundef readonly %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca [3 x [3 x float]], align 16
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #11
  %8 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 8
  %9 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 7
  %10 = load float, ptr %8, align 4, !tbaa !77
  %11 = load float, ptr %9, align 4, !tbaa !77
  %12 = fsub float %10, %11
  store float %12, ptr %5, align 4, !tbaa !77
  %13 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 8, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !77
  %15 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 7, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !77
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %5, i64 1
  store float %17, ptr %18, align 4, !tbaa !77
  %19 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 8, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !77
  %21 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 7, i64 2
  %22 = load float, ptr %21, align 4, !tbaa !77
  %23 = fsub float %20, %22
  %24 = getelementptr inbounds float, ptr %5, i64 2
  store float %23, ptr %24, align 4, !tbaa !77
  %25 = fmul float %17, %17
  %26 = tail call float @llvm.fmuladd.f32(float %12, float %12, float %25)
  %27 = tail call float @llvm.fmuladd.f32(float %23, float %23, float %26)
  %28 = fcmp ogt float %27, 0x38AA95A5C0000000
  br i1 %28, label %29, label %39

29:                                               ; preds = %3
  %30 = tail call float @sqrtf(float noundef %27) #11
  %31 = fdiv float 1.000000e+00, %30
  %32 = load float, ptr %5, align 4, !tbaa !77
  %33 = fmul float %32, %31
  store float %33, ptr %5, align 4, !tbaa !77
  %34 = load float, ptr %18, align 4, !tbaa !77
  %35 = fmul float %31, %34
  store float %35, ptr %18, align 4, !tbaa !77
  %36 = load float, ptr %24, align 4, !tbaa !77
  %37 = fmul float %31, %36
  %38 = fcmp ugt float %30, 0x3E80000000000000
  br label %40

39:                                               ; preds = %3
  store float 0.000000e+00, ptr %5, align 4, !tbaa !77
  store float 0.000000e+00, ptr %18, align 4, !tbaa !77
  br label %40

40:                                               ; preds = %29, %39
  %41 = phi float [ 0.000000e+00, %39 ], [ %37, %29 ]
  %42 = phi i1 [ false, %39 ], [ %38, %29 ]
  store float %41, ptr %24, align 4, !tbaa !77
  br i1 %42, label %43, label %111

43:                                               ; preds = %40
  %44 = load float, ptr %1, align 4, !tbaa !77
  %45 = load float, ptr %5, align 4, !tbaa !77
  %46 = getelementptr inbounds float, ptr %1, i64 1
  %47 = load float, ptr %46, align 4, !tbaa !77
  %48 = load float, ptr %18, align 4, !tbaa !77
  %49 = fmul float %47, %48
  %50 = tail call float @llvm.fmuladd.f32(float %44, float %45, float %49)
  %51 = getelementptr inbounds float, ptr %1, i64 2
  %52 = load float, ptr %51, align 4, !tbaa !77
  %53 = tail call float @llvm.fmuladd.f32(float %52, float %41, float %50)
  %54 = tail call float @llvm.fabs.f32(float %53)
  %55 = fcmp ult float %54, 0x3FEFFFFFC0000000
  br i1 %55, label %56, label %111

56:                                               ; preds = %43
  call void @vec_roll_to_mat3_normalized(ptr noundef nonnull %5, float noundef 0.000000e+00, ptr noundef nonnull %4) #11
  call void @project_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %1, ptr noundef nonnull %5) #11
  %57 = load float, ptr %1, align 4, !tbaa !77
  %58 = load float, ptr %6, align 4, !tbaa !77
  %59 = fsub float %57, %58
  store float %59, ptr %7, align 4, !tbaa !77
  %60 = load float, ptr %46, align 4, !tbaa !77
  %61 = getelementptr inbounds float, ptr %6, i64 1
  %62 = load float, ptr %61, align 4, !tbaa !77
  %63 = fsub float %60, %62
  %64 = getelementptr inbounds float, ptr %7, i64 1
  store float %63, ptr %64, align 4, !tbaa !77
  %65 = load float, ptr %51, align 4, !tbaa !77
  %66 = getelementptr inbounds float, ptr %6, i64 2
  %67 = load float, ptr %66, align 4, !tbaa !77
  %68 = fsub float %65, %67
  %69 = getelementptr inbounds float, ptr %7, i64 2
  store float %68, ptr %69, align 4, !tbaa !77
  %70 = icmp eq i8 %2, 0
  br i1 %70, label %82, label %71

71:                                               ; preds = %56
  %72 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 2
  %73 = call float @angle_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %72) #11
  %74 = fcmp ogt float %73, 0x3FF921FB60000000
  br i1 %74, label %75, label %82

75:                                               ; preds = %71
  %76 = load float, ptr %7, align 4, !tbaa !77
  %77 = fneg float %76
  store float %77, ptr %7, align 4, !tbaa !77
  %78 = load float, ptr %64, align 4, !tbaa !77
  %79 = fneg float %78
  store float %79, ptr %64, align 4, !tbaa !77
  %80 = load float, ptr %69, align 4, !tbaa !77
  %81 = fneg float %80
  store float %81, ptr %69, align 4, !tbaa !77
  br label %82

82:                                               ; preds = %71, %75, %56
  %83 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 2
  %84 = call float @angle_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %83) #11
  %85 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 2, i64 1
  %86 = load float, ptr %85, align 4, !tbaa !77
  %87 = load float, ptr %69, align 4, !tbaa !77
  %88 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 2, i64 2
  %89 = load float, ptr %88, align 16, !tbaa !77
  %90 = load float, ptr %64, align 4, !tbaa !77
  %91 = fneg float %89
  %92 = fmul float %90, %91
  %93 = call float @llvm.fmuladd.f32(float %86, float %87, float %92)
  store float %93, ptr %6, align 4, !tbaa !77
  %94 = load float, ptr %7, align 4, !tbaa !77
  %95 = load float, ptr %83, align 8, !tbaa !77
  %96 = fneg float %95
  %97 = fmul float %87, %96
  %98 = call float @llvm.fmuladd.f32(float %89, float %94, float %97)
  store float %98, ptr %61, align 4, !tbaa !77
  %99 = fneg float %86
  %100 = fmul float %94, %99
  %101 = call float @llvm.fmuladd.f32(float %95, float %90, float %100)
  store float %101, ptr %66, align 4, !tbaa !77
  %102 = load float, ptr %5, align 4, !tbaa !77
  %103 = load float, ptr %18, align 4, !tbaa !77
  %104 = fmul float %98, %103
  %105 = call float @llvm.fmuladd.f32(float %93, float %102, float %104)
  %106 = load float, ptr %24, align 4, !tbaa !77
  %107 = call float @llvm.fmuladd.f32(float %101, float %106, float %105)
  %108 = fcmp olt float %107, 0.000000e+00
  br i1 %108, label %109, label %111

109:                                              ; preds = %82
  %110 = fneg float %84
  br label %111

111:                                              ; preds = %82, %40, %43, %109
  %112 = phi float [ %110, %109 ], [ 0.000000e+00, %43 ], [ 0.000000e+00, %40 ], [ %84, %82 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #11
  ret float %112
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #3

declare void @vec_roll_to_mat3_normalized(ptr noundef, float noundef, ptr noundef) local_unnamed_addr #2

declare void @project_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @angle_v3v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ARMATURE_OT_calculate_roll(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !81
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.1, ptr %2, align 8, !tbaa !84
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %3, align 8, !tbaa !85
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !86
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @armature_calc_roll_exec, ptr %5, align 8, !tbaa !87
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editarmature, ptr %6, align 8, !tbaa !88
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !89
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !90
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.3, ptr noundef nonnull @prop_calc_roll_types, i32 noundef 3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #11
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !91
  %12 = load ptr, ptr %8, align 8, !tbaa !90
  %13 = tail call ptr @RNA_def_boolean(ptr noundef %12, ptr noundef nonnull @.str.6, i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #11
  %14 = load ptr, ptr %8, align 8, !tbaa !90
  %15 = tail call ptr @RNA_def_boolean(ptr noundef %14, ptr noundef nonnull @.str.9, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #11
  ret void
}

declare i32 @WM_menu_invoke(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @armature_calc_roll_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [3 x [3 x float]], align 16
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x [3 x float]], align 16
  %9 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !92
  %12 = tail call i32 @RNA_enum_get(ptr noundef %11, ptr noundef nonnull @.str.3) #11
  %13 = zext i32 %12 to i64
  %14 = load ptr, ptr %10, align 8, !tbaa !92
  %15 = tail call i32 @RNA_boolean_get(ptr noundef %14, ptr noundef nonnull @.str.9) #11
  %16 = trunc i32 %15 to i8
  %17 = load ptr, ptr %10, align 8, !tbaa !92
  %18 = tail call i32 @RNA_boolean_get(ptr noundef %17, ptr noundef nonnull @.str.6) #11
  %19 = trunc i32 %18 to i8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #11
  %20 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 19
  %21 = load ptr, ptr %20, align 8, !tbaa !34
  %22 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 47
  call void @copy_m3_m4(ptr noundef nonnull %3, ptr noundef nonnull %22) #11
  %23 = call zeroext i8 @invert_m3(ptr noundef nonnull %3) #11
  %24 = shl i32 %12, 16
  %25 = ashr exact i32 %24, 16
  %26 = icmp eq i32 %24, 458752
  br i1 %26, label %27, label %106

27:                                               ; preds = %2
  %28 = call ptr @CTX_data_scene(ptr noundef %0) #11
  %29 = call ptr @CTX_wm_view3d(ptr noundef %0) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #11
  %30 = call ptr @ED_view3d_cursor3d_get(ptr noundef %28, ptr noundef %29) #11
  %31 = load float, ptr %30, align 4, !tbaa !77
  store float %31, ptr %4, align 4, !tbaa !77
  %32 = getelementptr inbounds float, ptr %30, i64 1
  %33 = load float, ptr %32, align 4, !tbaa !77
  %34 = getelementptr inbounds float, ptr %4, i64 1
  store float %33, ptr %34, align 4, !tbaa !77
  %35 = getelementptr inbounds float, ptr %30, i64 2
  %36 = load float, ptr %35, align 4, !tbaa !77
  %37 = getelementptr inbounds float, ptr %4, i64 2
  store float %36, ptr %37, align 4, !tbaa !77
  call void @mul_m3_v3(ptr noundef nonnull %3, ptr noundef nonnull %4) #11
  %38 = getelementptr inbounds %struct.bArmature, ptr %21, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !46
  %40 = load ptr, ptr %39, align 8, !tbaa !48
  %41 = icmp eq ptr %40, null
  br i1 %41, label %105, label %42

42:                                               ; preds = %27
  %43 = getelementptr inbounds %struct.bArmature, ptr %21, i64 0, i32 15
  %44 = getelementptr inbounds float, ptr %5, i64 1
  %45 = getelementptr inbounds float, ptr %5, i64 2
  %46 = icmp eq i8 %19, 0
  br label %47

47:                                               ; preds = %42, %102
  %48 = phi ptr [ %40, %42 ], [ %103, %102 ]
  %49 = load i32, ptr %43, align 8, !tbaa !94
  %50 = getelementptr inbounds %struct.EditBone, ptr %48, i64 0, i32 10
  %51 = load i32, ptr %50, align 8, !tbaa !95
  %52 = and i32 %51, %49
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %102, label %54

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.EditBone, ptr %48, i64 0, i32 9
  %56 = load i32, ptr %55, align 4, !tbaa !96
  %57 = and i32 %56, 525313
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %102

59:                                               ; preds = %54
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #11
  %60 = getelementptr inbounds %struct.EditBone, ptr %48, i64 0, i32 7
  %61 = load float, ptr %4, align 4, !tbaa !77
  %62 = load float, ptr %60, align 4, !tbaa !77
  %63 = fsub float %61, %62
  store float %63, ptr %5, align 4, !tbaa !77
  %64 = load float, ptr %34, align 4, !tbaa !77
  %65 = getelementptr inbounds %struct.EditBone, ptr %48, i64 0, i32 7, i64 1
  %66 = load float, ptr %65, align 4, !tbaa !77
  %67 = fsub float %64, %66
  store float %67, ptr %44, align 4, !tbaa !77
  %68 = load float, ptr %37, align 4, !tbaa !77
  %69 = getelementptr inbounds %struct.EditBone, ptr %48, i64 0, i32 7, i64 2
  %70 = load float, ptr %69, align 4, !tbaa !77
  %71 = fsub float %68, %70
  store float %71, ptr %45, align 4, !tbaa !77
  br i1 %46, label %76, label %72

72:                                               ; preds = %59
  %73 = fneg float %63
  store float %73, ptr %5, align 4, !tbaa !77
  %74 = fneg float %67
  store float %74, ptr %44, align 4, !tbaa !77
  %75 = fneg float %71
  store float %75, ptr %45, align 4, !tbaa !77
  br label %76

76:                                               ; preds = %72, %59
  %77 = load float, ptr %5, align 4, !tbaa !77
  %78 = load float, ptr %44, align 4, !tbaa !77
  %79 = fmul float %78, %78
  %80 = call float @llvm.fmuladd.f32(float %77, float %77, float %79)
  %81 = load float, ptr %45, align 4, !tbaa !77
  %82 = call float @llvm.fmuladd.f32(float %81, float %81, float %80)
  %83 = fcmp ogt float %82, 0x38AA95A5C0000000
  br i1 %83, label %84, label %93

84:                                               ; preds = %76
  %85 = call float @sqrtf(float noundef %82) #11
  %86 = fdiv float 1.000000e+00, %85
  %87 = load float, ptr %5, align 4, !tbaa !77
  %88 = fmul float %87, %86
  store float %88, ptr %5, align 4, !tbaa !77
  %89 = load float, ptr %44, align 4, !tbaa !77
  %90 = fmul float %86, %89
  store float %90, ptr %44, align 4, !tbaa !77
  %91 = load float, ptr %45, align 4, !tbaa !77
  %92 = fmul float %86, %91
  br label %94

93:                                               ; preds = %76
  store float 0.000000e+00, ptr %5, align 4, !tbaa !77
  store float 0.000000e+00, ptr %44, align 4, !tbaa !77
  br label %94

94:                                               ; preds = %84, %93
  %95 = phi float [ 0.000000e+00, %93 ], [ %92, %84 ]
  %96 = phi float [ 0.000000e+00, %93 ], [ %85, %84 ]
  store float %95, ptr %45, align 4, !tbaa !77
  %97 = fcmp une float %96, 0.000000e+00
  br i1 %97, label %98, label %101

98:                                               ; preds = %94
  %99 = call float @ED_rollBoneToVector(ptr noundef nonnull %48, ptr noundef nonnull %5, i8 noundef zeroext %16)
  %100 = getelementptr inbounds %struct.EditBone, ptr %48, i64 0, i32 6
  store float %99, ptr %100, align 8, !tbaa !97
  br label %101

101:                                              ; preds = %98, %94
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #11
  br label %102

102:                                              ; preds = %54, %101, %47
  %103 = load ptr, ptr %48, align 8, !tbaa !48
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %47, !llvm.loop !98

105:                                              ; preds = %102, %27
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #11
  br label %364

106:                                              ; preds = %2
  %107 = icmp eq i32 %24, 262144
  switch i32 %24, label %284 [
    i32 262144, label %108
    i32 196608, label %108
  ]

108:                                              ; preds = %106, %106
  %109 = getelementptr inbounds %struct.bArmature, ptr %21, i64 0, i32 4
  %110 = load ptr, ptr %109, align 8, !tbaa !46
  %111 = load ptr, ptr %110, align 8, !tbaa !48
  %112 = icmp eq ptr %111, null
  br i1 %112, label %364, label %113

113:                                              ; preds = %108
  %114 = getelementptr inbounds %struct.bArmature, ptr %21, i64 0, i32 15
  %115 = getelementptr inbounds float, ptr %6, i64 1
  %116 = getelementptr inbounds float, ptr %6, i64 2
  %117 = getelementptr inbounds float, ptr %6, i64 1
  %118 = getelementptr inbounds float, ptr %6, i64 2
  %119 = getelementptr inbounds float, ptr %6, i64 1
  %120 = getelementptr inbounds float, ptr %6, i64 2
  %121 = icmp eq i8 %19, 0
  br label %122

122:                                              ; preds = %113, %281
  %123 = phi ptr [ %111, %113 ], [ %282, %281 ]
  %124 = getelementptr inbounds %struct.EditBone, ptr %123, i64 0, i32 3
  %125 = load ptr, ptr %124, align 8, !tbaa !99
  %126 = icmp eq ptr %125, null
  br i1 %126, label %281, label %127

127:                                              ; preds = %122
  %128 = load i32, ptr %114, align 8, !tbaa !94
  %129 = getelementptr inbounds %struct.EditBone, ptr %123, i64 0, i32 10
  %130 = load i32, ptr %129, align 8, !tbaa !95
  %131 = and i32 %130, %128
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %141, label %133

133:                                              ; preds = %127
  %134 = getelementptr inbounds %struct.EditBone, ptr %123, i64 0, i32 9
  %135 = load i32, ptr %134, align 4, !tbaa !96
  %136 = and i32 %135, 1025
  %137 = icmp eq i32 %136, 1
  br i1 %137, label %138, label %141

138:                                              ; preds = %133
  %139 = and i32 %135, 524288
  %140 = icmp eq i32 %139, 0
  br label %141

141:                                              ; preds = %127, %138, %133
  %142 = phi i1 [ false, %133 ], [ %140, %138 ], [ false, %127 ]
  %143 = getelementptr inbounds %struct.EditBone, ptr %125, i64 0, i32 10
  %144 = load i32, ptr %143, align 8, !tbaa !95
  %145 = and i32 %144, %128
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %155, label %147

147:                                              ; preds = %141
  %148 = getelementptr inbounds %struct.EditBone, ptr %125, i64 0, i32 9
  %149 = load i32, ptr %148, align 4, !tbaa !96
  %150 = and i32 %149, 1025
  %151 = icmp eq i32 %150, 1
  br i1 %151, label %152, label %155

152:                                              ; preds = %147
  %153 = and i32 %149, 524288
  %154 = icmp eq i32 %153, 0
  br label %155

155:                                              ; preds = %141, %152, %147
  %156 = phi i1 [ false, %147 ], [ %154, %152 ], [ false, %141 ]
  %157 = or i1 %142, %156
  br i1 %157, label %158, label %281

158:                                              ; preds = %155
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #11
  %159 = getelementptr inbounds %struct.EditBone, ptr %123, i64 0, i32 8
  %160 = getelementptr inbounds %struct.EditBone, ptr %123, i64 0, i32 7
  %161 = load float, ptr %159, align 4, !tbaa !77
  %162 = load float, ptr %160, align 4, !tbaa !77
  %163 = fsub float %161, %162
  %164 = getelementptr inbounds %struct.EditBone, ptr %123, i64 0, i32 8, i64 1
  %165 = load float, ptr %164, align 4, !tbaa !77
  %166 = getelementptr inbounds %struct.EditBone, ptr %123, i64 0, i32 7, i64 1
  %167 = load float, ptr %166, align 4, !tbaa !77
  %168 = fsub float %165, %167
  %169 = getelementptr inbounds %struct.EditBone, ptr %123, i64 0, i32 8, i64 2
  %170 = load float, ptr %169, align 4, !tbaa !77
  %171 = getelementptr inbounds %struct.EditBone, ptr %123, i64 0, i32 7, i64 2
  %172 = load float, ptr %171, align 4, !tbaa !77
  %173 = fsub float %170, %172
  %174 = fmul float %168, %168
  %175 = call float @llvm.fmuladd.f32(float %163, float %163, float %174)
  %176 = call float @llvm.fmuladd.f32(float %173, float %173, float %175)
  %177 = fcmp ogt float %176, 0x38AA95A5C0000000
  br i1 %177, label %178, label %184

178:                                              ; preds = %158
  %179 = call float @sqrtf(float noundef %176) #11
  %180 = fdiv float 1.000000e+00, %179
  %181 = fmul float %163, %180
  %182 = fmul float %168, %180
  %183 = fmul float %173, %180
  br label %184

184:                                              ; preds = %158, %178
  %185 = phi float [ %182, %178 ], [ 0.000000e+00, %158 ]
  %186 = phi float [ %181, %178 ], [ 0.000000e+00, %158 ]
  %187 = phi float [ %183, %178 ], [ 0.000000e+00, %158 ]
  %188 = fneg float %187
  %189 = fneg float %186
  %190 = fneg float %185
  br label %191

191:                                              ; preds = %255, %184
  %192 = phi ptr [ %125, %184 ], [ %257, %255 ]
  %193 = getelementptr inbounds %struct.EditBone, ptr %192, i64 0, i32 7
  %194 = getelementptr inbounds %struct.EditBone, ptr %192, i64 0, i32 8
  %195 = load float, ptr %193, align 4, !tbaa !77
  %196 = load float, ptr %194, align 4, !tbaa !77
  %197 = fsub float %195, %196
  %198 = getelementptr inbounds %struct.EditBone, ptr %192, i64 0, i32 7, i64 1
  %199 = load float, ptr %198, align 4, !tbaa !77
  %200 = getelementptr inbounds %struct.EditBone, ptr %192, i64 0, i32 8, i64 1
  %201 = load float, ptr %200, align 4, !tbaa !77
  %202 = fsub float %199, %201
  %203 = getelementptr inbounds %struct.EditBone, ptr %192, i64 0, i32 7, i64 2
  %204 = load float, ptr %203, align 4, !tbaa !77
  %205 = getelementptr inbounds %struct.EditBone, ptr %192, i64 0, i32 8, i64 2
  %206 = load float, ptr %205, align 4, !tbaa !77
  %207 = fsub float %204, %206
  %208 = fmul float %202, %202
  %209 = call float @llvm.fmuladd.f32(float %197, float %197, float %208)
  %210 = call float @llvm.fmuladd.f32(float %207, float %207, float %209)
  %211 = fcmp ogt float %210, 0x38AA95A5C0000000
  br i1 %211, label %212, label %218

212:                                              ; preds = %191
  %213 = call float @sqrtf(float noundef %210) #11
  %214 = fdiv float 1.000000e+00, %213
  %215 = fmul float %197, %214
  %216 = fmul float %202, %214
  %217 = fmul float %207, %214
  br label %218

218:                                              ; preds = %191, %212
  %219 = phi float [ %216, %212 ], [ 0.000000e+00, %191 ]
  %220 = phi float [ %215, %212 ], [ 0.000000e+00, %191 ]
  %221 = phi float [ %217, %212 ], [ 0.000000e+00, %191 ]
  br i1 %107, label %222, label %229

222:                                              ; preds = %218
  %223 = fmul float %219, %188
  %224 = call float @llvm.fmuladd.f32(float %185, float %221, float %223)
  store float %224, ptr %6, align 4, !tbaa !77
  %225 = fmul float %221, %189
  %226 = call float @llvm.fmuladd.f32(float %187, float %220, float %225)
  store float %226, ptr %119, align 4, !tbaa !77
  %227 = fmul float %220, %190
  %228 = call float @llvm.fmuladd.f32(float %186, float %219, float %227)
  store float %228, ptr %120, align 4, !tbaa !77
  br label %233

229:                                              ; preds = %218
  %230 = fadd float %186, %220
  store float %230, ptr %6, align 4, !tbaa !77
  %231 = fadd float %185, %219
  store float %231, ptr %117, align 4, !tbaa !77
  %232 = fadd float %187, %221
  store float %232, ptr %118, align 4, !tbaa !77
  br label %233

233:                                              ; preds = %222, %229
  %234 = load float, ptr %6, align 4, !tbaa !77
  %235 = load float, ptr %115, align 4, !tbaa !77
  %236 = fmul float %235, %235
  %237 = call float @llvm.fmuladd.f32(float %234, float %234, float %236)
  %238 = load float, ptr %116, align 4, !tbaa !77
  %239 = call float @llvm.fmuladd.f32(float %238, float %238, float %237)
  %240 = fcmp ogt float %239, 0x38AA95A5C0000000
  br i1 %240, label %241, label %250

241:                                              ; preds = %233
  %242 = call float @sqrtf(float noundef %239) #11
  %243 = fdiv float 1.000000e+00, %242
  %244 = load float, ptr %6, align 4, !tbaa !77
  %245 = fmul float %244, %243
  store float %245, ptr %6, align 4, !tbaa !77
  %246 = load float, ptr %115, align 4, !tbaa !77
  %247 = fmul float %243, %246
  store float %247, ptr %115, align 4, !tbaa !77
  %248 = load float, ptr %116, align 4, !tbaa !77
  %249 = fmul float %243, %248
  br label %251

250:                                              ; preds = %233
  store float 0.000000e+00, ptr %6, align 4, !tbaa !77
  store float 0.000000e+00, ptr %115, align 4, !tbaa !77
  br label %251

251:                                              ; preds = %241, %250
  %252 = phi float [ 0.000000e+00, %250 ], [ %249, %241 ]
  %253 = phi float [ 0.000000e+00, %250 ], [ %242, %241 ]
  store float %252, ptr %116, align 4, !tbaa !77
  %254 = fcmp olt float %253, 0x3EE4F8B580000000
  br i1 %254, label %255, label %259

255:                                              ; preds = %251
  %256 = getelementptr inbounds %struct.EditBone, ptr %192, i64 0, i32 3
  %257 = load ptr, ptr %256, align 8, !tbaa !99
  %258 = icmp eq ptr %257, null
  br i1 %258, label %280, label %191, !llvm.loop !100

259:                                              ; preds = %251
  br i1 %121, label %266, label %260

260:                                              ; preds = %259
  %261 = load float, ptr %6, align 4, !tbaa !77
  %262 = fneg float %261
  store float %262, ptr %6, align 4, !tbaa !77
  %263 = load float, ptr %115, align 4, !tbaa !77
  %264 = fneg float %263
  store float %264, ptr %115, align 4, !tbaa !77
  %265 = fneg float %252
  store float %265, ptr %116, align 4, !tbaa !77
  br label %266

266:                                              ; preds = %260, %259
  br i1 %142, label %267, label %270

267:                                              ; preds = %266
  %268 = call float @ED_rollBoneToVector(ptr noundef nonnull %123, ptr noundef nonnull %6, i8 noundef zeroext %16)
  %269 = getelementptr inbounds %struct.EditBone, ptr %123, i64 0, i32 6
  store float %268, ptr %269, align 8, !tbaa !97
  br label %270

270:                                              ; preds = %267, %266
  br i1 %156, label %271, label %280

271:                                              ; preds = %270
  %272 = load ptr, ptr %124, align 8, !tbaa !99
  %273 = getelementptr inbounds %struct.EditBone, ptr %272, i64 0, i32 3
  %274 = load ptr, ptr %273, align 8, !tbaa !99
  %275 = icmp eq ptr %274, null
  br i1 %275, label %276, label %280

276:                                              ; preds = %271
  %277 = call float @ED_rollBoneToVector(ptr noundef %272, ptr noundef nonnull %6, i8 noundef zeroext %16)
  %278 = load ptr, ptr %124, align 8, !tbaa !99
  %279 = getelementptr inbounds %struct.EditBone, ptr %278, i64 0, i32 6
  store float %277, ptr %279, align 8, !tbaa !97
  br label %280

280:                                              ; preds = %255, %270, %276, %271
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #11
  br label %281

281:                                              ; preds = %280, %155, %122
  %282 = load ptr, ptr %123, align 8, !tbaa !48
  %283 = icmp eq ptr %282, null
  br i1 %283, label %364, label %122, !llvm.loop !101

284:                                              ; preds = %106
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %7, i8 0, i64 12, i1 false)
  switch i32 %24, label %318 [
    i32 393216, label %285
    i32 327680, label %301
  ]

285:                                              ; preds = %284
  %286 = call ptr @CTX_wm_region_view3d(ptr noundef %0) #11
  %287 = icmp eq ptr %286, null
  br i1 %287, label %288, label %291

288:                                              ; preds = %285
  %289 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %290 = load ptr, ptr %289, align 8, !tbaa !102
  call void @BKE_report(ptr noundef %290, i32 noundef 32, ptr noundef nonnull @.str.41) #11
  br label %300

291:                                              ; preds = %285
  %292 = getelementptr inbounds %struct.RegionView3D, ptr %286, i64 0, i32 2, i64 2
  %293 = load float, ptr %292, align 4, !tbaa !77
  store float %293, ptr %7, align 4, !tbaa !77
  %294 = getelementptr inbounds %struct.RegionView3D, ptr %286, i64 0, i32 2, i64 2, i64 1
  %295 = load float, ptr %294, align 4, !tbaa !77
  %296 = getelementptr inbounds float, ptr %7, i64 1
  store float %295, ptr %296, align 4, !tbaa !77
  %297 = getelementptr inbounds %struct.RegionView3D, ptr %286, i64 0, i32 2, i64 2, i64 2
  %298 = load float, ptr %297, align 4, !tbaa !77
  %299 = getelementptr inbounds float, ptr %7, i64 2
  store float %298, ptr %299, align 4, !tbaa !77
  call void @mul_m3_v3(ptr noundef nonnull %3, ptr noundef nonnull %7) #11
  br label %300

300:                                              ; preds = %291, %288
  br i1 %287, label %412, label %327

301:                                              ; preds = %284
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %8) #11
  %302 = getelementptr inbounds %struct.bArmature, ptr %21, i64 0, i32 6
  %303 = load ptr, ptr %302, align 8, !tbaa !103
  %304 = icmp eq ptr %303, null
  br i1 %304, label %305, label %308

305:                                              ; preds = %301
  %306 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %307 = load ptr, ptr %306, align 8, !tbaa !102
  call void @BKE_report(ptr noundef %307, i32 noundef 32, ptr noundef nonnull @.str.42) #11
  br label %317

308:                                              ; preds = %301
  call void @ED_armature_ebone_to_mat3(ptr noundef nonnull %303, ptr noundef nonnull %8) #11
  %309 = getelementptr inbounds [3 x [3 x float]], ptr %8, i64 0, i64 2
  %310 = load float, ptr %309, align 8, !tbaa !77
  store float %310, ptr %7, align 4, !tbaa !77
  %311 = getelementptr inbounds [3 x [3 x float]], ptr %8, i64 0, i64 2, i64 1
  %312 = load float, ptr %311, align 4, !tbaa !77
  %313 = getelementptr inbounds float, ptr %7, i64 1
  store float %312, ptr %313, align 4, !tbaa !77
  %314 = getelementptr inbounds [3 x [3 x float]], ptr %8, i64 0, i64 2, i64 2
  %315 = load float, ptr %314, align 16, !tbaa !77
  %316 = getelementptr inbounds float, ptr %7, i64 2
  store float %315, ptr %316, align 4, !tbaa !77
  br label %317

317:                                              ; preds = %308, %305
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %8) #11
  br i1 %304, label %412, label %327

318:                                              ; preds = %284
  %319 = icmp slt i32 %25, 3
  %320 = add nsw i32 %25, -2
  %321 = zext nneg i32 %320 to i64
  %322 = shl i64 %13, 48
  %323 = ashr exact i64 %322, 48
  %324 = select i1 %319, i64 %323, i64 %321
  %325 = select i1 %319, float 1.000000e+00, float -1.000000e+00
  %326 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 %324
  store float %325, ptr %326, align 4, !tbaa !77
  call void @mul_m3_v3(ptr noundef nonnull %3, ptr noundef nonnull %7) #11
  br label %327

327:                                              ; preds = %318, %317, %300
  %328 = icmp eq i8 %19, 0
  br i1 %328, label %338, label %329

329:                                              ; preds = %327
  %330 = load float, ptr %7, align 4, !tbaa !77
  %331 = fneg float %330
  store float %331, ptr %7, align 4, !tbaa !77
  %332 = getelementptr inbounds float, ptr %7, i64 1
  %333 = load float, ptr %332, align 4, !tbaa !77
  %334 = fneg float %333
  store float %334, ptr %332, align 4, !tbaa !77
  %335 = getelementptr inbounds float, ptr %7, i64 2
  %336 = load float, ptr %335, align 4, !tbaa !77
  %337 = fneg float %336
  store float %337, ptr %335, align 4, !tbaa !77
  br label %338

338:                                              ; preds = %329, %327
  %339 = getelementptr inbounds %struct.bArmature, ptr %21, i64 0, i32 4
  %340 = load ptr, ptr %339, align 8, !tbaa !46
  %341 = load ptr, ptr %340, align 8, !tbaa !48
  %342 = icmp eq ptr %341, null
  br i1 %342, label %363, label %343

343:                                              ; preds = %338
  %344 = getelementptr inbounds %struct.bArmature, ptr %21, i64 0, i32 15
  br label %345

345:                                              ; preds = %343, %360
  %346 = phi ptr [ %341, %343 ], [ %361, %360 ]
  %347 = load i32, ptr %344, align 8, !tbaa !94
  %348 = getelementptr inbounds %struct.EditBone, ptr %346, i64 0, i32 10
  %349 = load i32, ptr %348, align 8, !tbaa !95
  %350 = and i32 %349, %347
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %360, label %352

352:                                              ; preds = %345
  %353 = getelementptr inbounds %struct.EditBone, ptr %346, i64 0, i32 9
  %354 = load i32, ptr %353, align 4, !tbaa !96
  %355 = and i32 %354, 525313
  %356 = icmp eq i32 %355, 1
  br i1 %356, label %357, label %360

357:                                              ; preds = %352
  %358 = call float @ED_rollBoneToVector(ptr noundef nonnull %346, ptr noundef nonnull %7, i8 noundef zeroext %16)
  %359 = getelementptr inbounds %struct.EditBone, ptr %346, i64 0, i32 6
  store float %358, ptr %359, align 8, !tbaa !97
  br label %360

360:                                              ; preds = %352, %357, %345
  %361 = load ptr, ptr %346, align 8, !tbaa !48
  %362 = icmp eq ptr %361, null
  br i1 %362, label %363, label %345, !llvm.loop !104

363:                                              ; preds = %360, %338
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #11
  br label %364

364:                                              ; preds = %281, %108, %363, %105
  %365 = getelementptr inbounds %struct.bArmature, ptr %21, i64 0, i32 8
  %366 = load i32, ptr %365, align 8, !tbaa !105
  %367 = and i32 %366, 256
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %411, label %369

369:                                              ; preds = %364
  %370 = getelementptr inbounds %struct.bArmature, ptr %21, i64 0, i32 4
  %371 = load ptr, ptr %370, align 8, !tbaa !46
  %372 = load ptr, ptr %371, align 8, !tbaa !48
  %373 = icmp eq ptr %372, null
  br i1 %373, label %411, label %374

374:                                              ; preds = %369
  %375 = getelementptr inbounds %struct.bArmature, ptr %21, i64 0, i32 15
  br label %376

376:                                              ; preds = %374, %408
  %377 = phi ptr [ %372, %374 ], [ %409, %408 ]
  %378 = load i32, ptr %375, align 8, !tbaa !94
  %379 = getelementptr inbounds %struct.EditBone, ptr %377, i64 0, i32 10
  %380 = load i32, ptr %379, align 8, !tbaa !95
  %381 = and i32 %380, %378
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %388, label %383

383:                                              ; preds = %376
  %384 = getelementptr inbounds %struct.EditBone, ptr %377, i64 0, i32 9
  %385 = load i32, ptr %384, align 4, !tbaa !96
  %386 = and i32 %385, 525313
  %387 = icmp eq i32 %386, 1
  br i1 %387, label %408, label %388

388:                                              ; preds = %383, %376
  %389 = load ptr, ptr %370, align 8, !tbaa !46
  %390 = call ptr @ED_armature_bone_get_mirrored(ptr noundef %389, ptr noundef nonnull %377) #11
  %391 = icmp eq ptr %390, null
  br i1 %391, label %408, label %392

392:                                              ; preds = %388
  %393 = load i32, ptr %375, align 8, !tbaa !94
  %394 = getelementptr inbounds %struct.EditBone, ptr %390, i64 0, i32 10
  %395 = load i32, ptr %394, align 8, !tbaa !95
  %396 = and i32 %395, %393
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %408, label %398

398:                                              ; preds = %392
  %399 = getelementptr inbounds %struct.EditBone, ptr %390, i64 0, i32 9
  %400 = load i32, ptr %399, align 4, !tbaa !96
  %401 = and i32 %400, 525313
  %402 = icmp eq i32 %401, 1
  br i1 %402, label %403, label %408

403:                                              ; preds = %398
  %404 = getelementptr inbounds %struct.EditBone, ptr %390, i64 0, i32 6
  %405 = load float, ptr %404, align 8, !tbaa !97
  %406 = fneg float %405
  %407 = getelementptr inbounds %struct.EditBone, ptr %377, i64 0, i32 6
  store float %406, ptr %407, align 8, !tbaa !97
  br label %408

408:                                              ; preds = %383, %388, %398, %403, %392
  %409 = load ptr, ptr %377, align 8, !tbaa !48
  %410 = icmp eq ptr %409, null
  br i1 %410, label %411, label %376, !llvm.loop !106

411:                                              ; preds = %408, %369, %364
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85327872, ptr noundef %9) #11
  br label %413

412:                                              ; preds = %317, %300
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #11
  br label %413

413:                                              ; preds = %412, %411
  %414 = phi i32 [ 4, %411 ], [ 2, %412 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #11
  ret i32 %414
}

declare i32 @ED_operator_editarmature(ptr noundef) #2

declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ARMATURE_OT_fill(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.12, ptr %0, align 8, !tbaa !81
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.13, ptr %2, align 8, !tbaa !84
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.14, ptr %3, align 8, !tbaa !85
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @armature_fill_bones_exec, ptr %4, align 8, !tbaa !87
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editarmature, ptr %5, align 8, !tbaa !88
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !89
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @armature_fill_bones_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.ListBase, align 8
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = icmp eq ptr %13, null
  br label %15

15:                                               ; preds = %2, %11
  %16 = phi i1 [ %14, %11 ], [ true, %2 ]
  %17 = tail call ptr @CTX_data_scene(ptr noundef %0) #11
  %18 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  br i1 %16, label %279, label %19

19:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  %20 = call i32 @CTX_data_visible_bones(ptr noundef %0, ptr noundef nonnull %4) #11
  %21 = load ptr, ptr %4, align 8, !tbaa !48
  %22 = icmp eq ptr %21, null
  br i1 %22, label %137, label %23

23:                                               ; preds = %19, %134
  %24 = phi ptr [ %135, %134 ], [ %21, %19 ]
  %25 = getelementptr inbounds %struct.CollectionPointerLink, ptr %24, i64 0, i32 2, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !107
  %27 = getelementptr inbounds %struct.EditBone, ptr %26, i64 0, i32 9
  %28 = load i32, ptr %27, align 4, !tbaa !96
  %29 = and i32 %28, 18
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %31, label %81

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.EditBone, ptr %26, i64 0, i32 7
  %33 = getelementptr inbounds %struct.EditBone, ptr %26, i64 0, i32 7, i64 1
  %34 = getelementptr inbounds %struct.EditBone, ptr %26, i64 0, i32 7, i64 2
  %35 = load float, ptr %32, align 4, !tbaa !77
  %36 = load float, ptr %33, align 4, !tbaa !77
  %37 = load float, ptr %34, align 4, !tbaa !77
  %38 = load ptr, ptr %3, align 8, !tbaa !48
  %39 = icmp eq ptr %38, null
  br i1 %39, label %71, label %40

40:                                               ; preds = %31
  %41 = getelementptr inbounds %struct.EditBone, ptr %26, i64 0, i32 3
  br label %42

42:                                               ; preds = %68, %40
  %43 = phi ptr [ %38, %40 ], [ %69, %68 ]
  %44 = getelementptr inbounds %struct.EditBonePoint, ptr %43, i64 0, i32 4
  %45 = load float, ptr %44, align 4, !tbaa !77
  %46 = fcmp oeq float %45, %35
  br i1 %46, label %47, label %56

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.EditBonePoint, ptr %43, i64 0, i32 4, i64 1
  %49 = load float, ptr %48, align 4, !tbaa !77
  %50 = fcmp oeq float %49, %36
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.EditBonePoint, ptr %43, i64 0, i32 4, i64 2
  %53 = load float, ptr %52, align 4, !tbaa !77
  %54 = fcmp oeq float %53, %37
  %55 = zext i1 %54 to i8
  br label %56

56:                                               ; preds = %51, %47, %42
  %57 = phi i8 [ 0, %47 ], [ 0, %42 ], [ %55, %51 ]
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %68, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.EditBonePoint, ptr %43, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !111
  %62 = icmp eq ptr %61, null
  br i1 %62, label %68, label %63

63:                                               ; preds = %59
  %64 = load ptr, ptr %41, align 8, !tbaa !99
  %65 = icmp eq ptr %64, %61
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.EditBonePoint, ptr %43, i64 0, i32 2
  store ptr %26, ptr %67, align 8, !tbaa !113
  br label %81

68:                                               ; preds = %63, %59, %56
  %69 = load ptr, ptr %43, align 8, !tbaa !48
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %42, !llvm.loop !114

71:                                               ; preds = %68, %31
  %72 = load ptr, ptr @MEM_callocN, align 8, !tbaa !48
  %73 = call ptr %72(i64 noundef 48, ptr noundef nonnull @.str.62) #11
  %74 = getelementptr inbounds %struct.EditBonePoint, ptr %73, i64 0, i32 4
  %75 = load float, ptr %32, align 4, !tbaa !77
  store float %75, ptr %74, align 4, !tbaa !77
  %76 = load float, ptr %33, align 4, !tbaa !77
  %77 = getelementptr inbounds %struct.EditBonePoint, ptr %73, i64 0, i32 4, i64 1
  store float %76, ptr %77, align 4, !tbaa !77
  %78 = load float, ptr %34, align 4, !tbaa !77
  %79 = getelementptr inbounds %struct.EditBonePoint, ptr %73, i64 0, i32 4, i64 2
  store float %78, ptr %79, align 4, !tbaa !77
  %80 = getelementptr inbounds %struct.EditBonePoint, ptr %73, i64 0, i32 2
  store ptr %26, ptr %80, align 8, !tbaa !113
  call void @BLI_addtail(ptr noundef nonnull %3, ptr noundef %73) #11
  br label %81

81:                                               ; preds = %71, %66, %23
  %82 = load i32, ptr %27, align 4, !tbaa !96
  %83 = and i32 %82, 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %134, label %85

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.EditBone, ptr %26, i64 0, i32 8
  %87 = getelementptr inbounds %struct.EditBone, ptr %26, i64 0, i32 8, i64 1
  %88 = getelementptr inbounds %struct.EditBone, ptr %26, i64 0, i32 8, i64 2
  %89 = load float, ptr %86, align 4, !tbaa !77
  %90 = load float, ptr %87, align 4, !tbaa !77
  %91 = load float, ptr %88, align 4, !tbaa !77
  %92 = load ptr, ptr %3, align 8, !tbaa !48
  %93 = icmp eq ptr %92, null
  br i1 %93, label %124, label %94

94:                                               ; preds = %85, %121
  %95 = phi ptr [ %122, %121 ], [ %92, %85 ]
  %96 = getelementptr inbounds %struct.EditBonePoint, ptr %95, i64 0, i32 4
  %97 = load float, ptr %96, align 4, !tbaa !77
  %98 = fcmp oeq float %97, %89
  br i1 %98, label %99, label %108

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.EditBonePoint, ptr %95, i64 0, i32 4, i64 1
  %101 = load float, ptr %100, align 4, !tbaa !77
  %102 = fcmp oeq float %101, %90
  br i1 %102, label %103, label %108

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.EditBonePoint, ptr %95, i64 0, i32 4, i64 2
  %105 = load float, ptr %104, align 4, !tbaa !77
  %106 = fcmp oeq float %105, %91
  %107 = zext i1 %106 to i8
  br label %108

108:                                              ; preds = %103, %99, %94
  %109 = phi i8 [ 0, %99 ], [ 0, %94 ], [ %107, %103 ]
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %121, label %111

111:                                              ; preds = %108
  %112 = getelementptr inbounds %struct.EditBonePoint, ptr %95, i64 0, i32 2
  %113 = load ptr, ptr %112, align 8, !tbaa !113
  %114 = icmp eq ptr %113, null
  br i1 %114, label %121, label %115

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.EditBone, ptr %113, i64 0, i32 3
  %117 = load ptr, ptr %116, align 8, !tbaa !99
  %118 = icmp eq ptr %117, %26
  br i1 %118, label %119, label %121

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.EditBonePoint, ptr %95, i64 0, i32 3
  store ptr %26, ptr %120, align 8, !tbaa !111
  br label %134

121:                                              ; preds = %115, %111, %108
  %122 = load ptr, ptr %95, align 8, !tbaa !48
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %94, !llvm.loop !114

124:                                              ; preds = %121, %85
  %125 = load ptr, ptr @MEM_callocN, align 8, !tbaa !48
  %126 = call ptr %125(i64 noundef 48, ptr noundef nonnull @.str.62) #11
  %127 = getelementptr inbounds %struct.EditBonePoint, ptr %126, i64 0, i32 4
  %128 = load float, ptr %86, align 4, !tbaa !77
  store float %128, ptr %127, align 4, !tbaa !77
  %129 = load float, ptr %87, align 4, !tbaa !77
  %130 = getelementptr inbounds %struct.EditBonePoint, ptr %126, i64 0, i32 4, i64 1
  store float %129, ptr %130, align 4, !tbaa !77
  %131 = load float, ptr %88, align 4, !tbaa !77
  %132 = getelementptr inbounds %struct.EditBonePoint, ptr %126, i64 0, i32 4, i64 2
  store float %131, ptr %132, align 4, !tbaa !77
  %133 = getelementptr inbounds %struct.EditBonePoint, ptr %126, i64 0, i32 3
  store ptr %26, ptr %133, align 8, !tbaa !111
  call void @BLI_addtail(ptr noundef nonnull %3, ptr noundef %126) #11
  br label %134

134:                                              ; preds = %124, %119, %81
  %135 = load ptr, ptr %24, align 8, !tbaa !48
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %23, !llvm.loop !115

137:                                              ; preds = %134, %19
  call void @BLI_freelistN(ptr noundef nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  %138 = call i32 @BLI_countlist(ptr noundef nonnull %3) #11
  switch i32 %138, label %272 [
    i32 0, label %139
    i32 1, label %142
    i32 2, label %150
  ]

139:                                              ; preds = %137
  %140 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %141 = load ptr, ptr %140, align 8, !tbaa !102
  call void @BKE_report(ptr noundef %141, i32 noundef 32, ptr noundef nonnull @.str.59) #11
  br label %279

142:                                              ; preds = %137
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #11
  %143 = load ptr, ptr %3, align 8, !tbaa !116
  %144 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 50
  %145 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 47
  %146 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %144, ptr noundef nonnull %145) #11
  %147 = call ptr @ED_view3d_cursor3d_get(ptr noundef %17, ptr noundef %18) #11
  call void @mul_v3_m4v3(ptr noundef nonnull %5, ptr noundef nonnull %144, ptr noundef %147) #11
  %148 = getelementptr inbounds %struct.EditBonePoint, ptr %143, i64 0, i32 4
  %149 = call ptr @add_points_bone(ptr noundef %9, ptr noundef nonnull %148, ptr noundef nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #11
  br label %275

150:                                              ; preds = %137
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #11
  %151 = load ptr, ptr %3, align 8, !tbaa !116
  %152 = load ptr, ptr %151, align 8, !tbaa !117
  %153 = getelementptr inbounds %struct.EditBonePoint, ptr %151, i64 0, i32 2
  %154 = load ptr, ptr %153, align 8, !tbaa !113
  %155 = getelementptr inbounds %struct.EditBonePoint, ptr %152, i64 0, i32 3
  %156 = load ptr, ptr %155, align 8, !tbaa !111
  %157 = icmp ne ptr %154, %156
  %158 = icmp eq ptr %154, null
  %159 = or i1 %158, %157
  br i1 %159, label %160, label %276

160:                                              ; preds = %150
  %161 = getelementptr inbounds %struct.EditBonePoint, ptr %151, i64 0, i32 3
  %162 = load ptr, ptr %161, align 8, !tbaa !111
  %163 = getelementptr inbounds %struct.EditBonePoint, ptr %152, i64 0, i32 2
  %164 = load ptr, ptr %163, align 8, !tbaa !113
  %165 = icmp ne ptr %162, %164
  %166 = icmp eq ptr %162, null
  %167 = or i1 %166, %165
  br i1 %167, label %168, label %276

168:                                              ; preds = %160
  %169 = icmp eq ptr %164, null
  %170 = or i1 %158, %169
  %171 = icmp eq ptr %156, null
  %172 = or i1 %171, %166
  %173 = and i1 %172, %170
  br i1 %173, label %212, label %174

174:                                              ; preds = %168
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #11
  %175 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 50
  %176 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 47
  %177 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %175, ptr noundef nonnull %176) #11
  %178 = call ptr @ED_view3d_cursor3d_get(ptr noundef %17, ptr noundef %18) #11
  call void @mul_v3_m4v3(ptr noundef nonnull %8, ptr noundef nonnull %175, ptr noundef %178) #11
  %179 = getelementptr inbounds %struct.EditBonePoint, ptr %151, i64 0, i32 4
  %180 = load float, ptr %179, align 4, !tbaa !77
  %181 = load float, ptr %8, align 4, !tbaa !77
  %182 = fsub float %180, %181
  %183 = getelementptr inbounds %struct.EditBonePoint, ptr %151, i64 0, i32 4, i64 1
  %184 = load float, ptr %183, align 4, !tbaa !77
  %185 = getelementptr inbounds float, ptr %8, i64 1
  %186 = load float, ptr %185, align 4, !tbaa !77
  %187 = fsub float %184, %186
  %188 = getelementptr inbounds %struct.EditBonePoint, ptr %151, i64 0, i32 4, i64 2
  %189 = load float, ptr %188, align 4, !tbaa !77
  %190 = getelementptr inbounds float, ptr %8, i64 2
  %191 = load float, ptr %190, align 4, !tbaa !77
  %192 = fsub float %189, %191
  %193 = getelementptr inbounds %struct.EditBonePoint, ptr %152, i64 0, i32 4
  %194 = load float, ptr %193, align 4, !tbaa !77
  %195 = fsub float %194, %181
  %196 = getelementptr inbounds %struct.EditBonePoint, ptr %152, i64 0, i32 4, i64 1
  %197 = load float, ptr %196, align 4, !tbaa !77
  %198 = fsub float %197, %186
  %199 = getelementptr inbounds %struct.EditBonePoint, ptr %152, i64 0, i32 4, i64 2
  %200 = load float, ptr %199, align 4, !tbaa !77
  %201 = fsub float %200, %191
  %202 = fmul float %187, %187
  %203 = call float @llvm.fmuladd.f32(float %182, float %182, float %202)
  %204 = call float @llvm.fmuladd.f32(float %192, float %192, float %203)
  %205 = call float @sqrtf(float noundef %204) #11
  %206 = fmul float %198, %198
  %207 = call float @llvm.fmuladd.f32(float %195, float %195, float %206)
  %208 = call float @llvm.fmuladd.f32(float %201, float %201, float %207)
  %209 = call float @sqrtf(float noundef %208) #11
  %210 = fcmp olt float %205, %209
  %211 = select i1 %210, i16 2, i16 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #11
  br label %215

212:                                              ; preds = %168
  %213 = select i1 %169, i16 0, i16 2
  %214 = select i1 %158, i16 %213, i16 1
  br label %215

215:                                              ; preds = %212, %174
  %216 = phi i16 [ %211, %174 ], [ %214, %212 ]
  %217 = icmp eq i16 %216, 2
  br i1 %217, label %218, label %227

218:                                              ; preds = %215
  %219 = getelementptr inbounds %struct.EditBonePoint, ptr %151, i64 0, i32 4
  %220 = load float, ptr %219, align 4, !tbaa !77
  store float %220, ptr %6, align 4, !tbaa !77
  %221 = getelementptr inbounds %struct.EditBonePoint, ptr %151, i64 0, i32 4, i64 1
  %222 = load float, ptr %221, align 4, !tbaa !77
  %223 = getelementptr inbounds float, ptr %6, i64 1
  store float %222, ptr %223, align 4, !tbaa !77
  %224 = getelementptr inbounds %struct.EditBonePoint, ptr %151, i64 0, i32 4, i64 2
  %225 = load float, ptr %224, align 4, !tbaa !77
  %226 = getelementptr inbounds float, ptr %6, i64 2
  store float %225, ptr %226, align 4, !tbaa !77
  br label %237

227:                                              ; preds = %215
  switch i16 %216, label %248 [
    i16 1, label %228
    i16 0, label %271
  ]

228:                                              ; preds = %227
  %229 = getelementptr inbounds %struct.EditBonePoint, ptr %152, i64 0, i32 4
  %230 = load float, ptr %229, align 4, !tbaa !77
  store float %230, ptr %6, align 4, !tbaa !77
  %231 = getelementptr inbounds %struct.EditBonePoint, ptr %152, i64 0, i32 4, i64 1
  %232 = load float, ptr %231, align 4, !tbaa !77
  %233 = getelementptr inbounds float, ptr %6, i64 1
  store float %232, ptr %233, align 4, !tbaa !77
  %234 = getelementptr inbounds %struct.EditBonePoint, ptr %152, i64 0, i32 4, i64 2
  %235 = load float, ptr %234, align 4, !tbaa !77
  %236 = getelementptr inbounds float, ptr %6, i64 2
  store float %235, ptr %236, align 4, !tbaa !77
  br label %237

237:                                              ; preds = %228, %218
  %238 = phi ptr [ %151, %228 ], [ %152, %218 ]
  %239 = getelementptr inbounds %struct.EditBonePoint, ptr %238, i64 0, i32 4
  %240 = load float, ptr %239, align 4, !tbaa !77
  store float %240, ptr %7, align 4, !tbaa !77
  %241 = getelementptr inbounds %struct.EditBonePoint, ptr %238, i64 0, i32 4, i64 1
  %242 = load float, ptr %241, align 4, !tbaa !77
  %243 = getelementptr inbounds float, ptr %7, i64 1
  store float %242, ptr %243, align 4, !tbaa !77
  %244 = getelementptr inbounds %struct.EditBonePoint, ptr %238, i64 0, i32 4, i64 2
  %245 = load float, ptr %244, align 4, !tbaa !77
  %246 = getelementptr inbounds float, ptr %7, i64 2
  store float %245, ptr %246, align 4, !tbaa !77
  %247 = icmp eq i16 %216, 0
  br i1 %247, label %271, label %248

248:                                              ; preds = %227, %237
  %249 = call ptr @add_points_bone(ptr noundef %9, ptr noundef nonnull %6, ptr noundef nonnull %7) #11
  br i1 %217, label %250, label %253

250:                                              ; preds = %248
  %251 = load ptr, ptr %161, align 8, !tbaa !111
  %252 = icmp eq ptr %251, null
  br i1 %252, label %256, label %259

253:                                              ; preds = %248
  %254 = load ptr, ptr %155, align 8, !tbaa !111
  %255 = icmp eq ptr %254, null
  br i1 %255, label %256, label %259

256:                                              ; preds = %253, %250
  %257 = phi ptr [ %153, %250 ], [ %163, %253 ]
  %258 = load ptr, ptr %257, align 8, !tbaa !113
  br label %259

259:                                              ; preds = %256, %253, %250
  %260 = phi ptr [ %251, %250 ], [ %254, %253 ], [ %258, %256 ]
  %261 = getelementptr inbounds %struct.EditBone, ptr %249, i64 0, i32 3
  store ptr %260, ptr %261, align 8, !tbaa !99
  %262 = load ptr, ptr %161, align 8, !tbaa !111
  %263 = icmp eq ptr %262, null
  br i1 %263, label %264, label %267

264:                                              ; preds = %259
  %265 = load ptr, ptr %155, align 8, !tbaa !111
  %266 = icmp eq ptr %265, null
  br i1 %266, label %271, label %267

267:                                              ; preds = %264, %259
  %268 = getelementptr inbounds %struct.EditBone, ptr %249, i64 0, i32 9
  %269 = load i32, ptr %268, align 4, !tbaa !96
  %270 = or i32 %269, 16
  store i32 %270, ptr %268, align 4, !tbaa !96
  br label %271

271:                                              ; preds = %237, %227, %267, %264
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #11
  br label %275

272:                                              ; preds = %137
  %273 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %274 = load ptr, ptr %273, align 8, !tbaa !102
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %274, i32 noundef 32, ptr noundef nonnull @.str.61, i32 noundef %138) #11
  call void @BLI_freelistN(ptr noundef nonnull %3) #11
  br label %279

275:                                              ; preds = %271, %142
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85196800, ptr noundef %9) #11
  call void @BLI_freelistN(ptr noundef nonnull %3) #11
  br label %279

276:                                              ; preds = %160, %150
  %277 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %278 = load ptr, ptr %277, align 8, !tbaa !102
  call void @BKE_report(ptr noundef %278, i32 noundef 32, ptr noundef nonnull @.str.60) #11
  call void @BLI_freelistN(ptr noundef nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #11
  br label %279

279:                                              ; preds = %276, %15, %275, %272, %139
  %280 = phi i32 [ 2, %139 ], [ 4, %275 ], [ 2, %272 ], [ 2, %15 ], [ 2, %276 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  ret i32 %280
}

; Function Attrs: nounwind uwtable
define dso_local void @ARMATURE_OT_merge(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.17, ptr %0, align 8, !tbaa !81
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.18, ptr %2, align 8, !tbaa !84
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.19, ptr %3, align 8, !tbaa !85
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !86
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @armature_merge_exec, ptr %5, align 8, !tbaa !87
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editarmature, ptr %6, align 8, !tbaa !88
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !89
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !90
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.3, ptr noundef nonnull @ARMATURE_OT_merge.merge_types, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #11
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !91
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @armature_merge_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi ptr [ %8, %6 ], [ null, %2 ]
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !92
  %13 = tail call i32 @RNA_enum_get(ptr noundef %12, ptr noundef nonnull @.str.3) #11
  %14 = icmp eq ptr %10, null
  %15 = select i1 %5, i1 true, i1 %14
  br i1 %15, label %143, label %16

16:                                               ; preds = %9
  %17 = and i32 %13, 65535
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %139

19:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  tail call void @armature_tag_select_mirrored(ptr noundef %10) #11
  %20 = getelementptr inbounds %struct.bArmature, ptr %10, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !46
  %22 = load ptr, ptr %21, align 8, !tbaa !48
  %23 = icmp eq ptr %22, null
  br i1 %23, label %71, label %24

24:                                               ; preds = %19, %68
  %25 = phi ptr [ %69, %68 ], [ %22, %19 ]
  %26 = load ptr, ptr %3, align 8, !tbaa !48
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %35

28:                                               ; preds = %40, %35
  %29 = load ptr, ptr %36, align 8, !tbaa !48
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %35, !llvm.loop !118

31:                                               ; preds = %28, %24
  %32 = getelementptr inbounds %struct.EditBone, ptr %25, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !99
  %34 = icmp eq ptr %33, null
  br i1 %34, label %64, label %51

35:                                               ; preds = %24, %28
  %36 = phi ptr [ %29, %28 ], [ %26, %24 ]
  %37 = getelementptr inbounds %struct.LinkData, ptr %36, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !48
  %39 = icmp eq ptr %38, null
  br i1 %39, label %28, label %44

40:                                               ; preds = %44
  %41 = getelementptr inbounds %struct.EditBone, ptr %45, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !48
  %43 = icmp eq ptr %42, null
  br i1 %43, label %28, label %44, !llvm.loop !119

44:                                               ; preds = %35, %40
  %45 = phi ptr [ %42, %40 ], [ %38, %35 ]
  %46 = icmp eq ptr %45, %25
  br i1 %46, label %68, label %40

47:                                               ; preds = %54
  %48 = getelementptr inbounds %struct.EditBone, ptr %53, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !99
  %50 = icmp eq ptr %49, null
  br i1 %50, label %64, label %51, !llvm.loop !120

51:                                               ; preds = %31, %47
  %52 = phi i1 [ %50, %47 ], [ %34, %31 ]
  %53 = phi ptr [ %49, %47 ], [ %33, %31 ]
  br label %54

54:                                               ; preds = %58, %51
  %55 = phi ptr [ %56, %58 ], [ %3, %51 ]
  %56 = load ptr, ptr %55, align 8, !tbaa !48
  %57 = icmp eq ptr %56, null
  br i1 %57, label %47, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.LinkData, ptr %56, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !121
  %61 = icmp eq ptr %60, %53
  br i1 %61, label %62, label %54, !llvm.loop !123

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.LinkData, ptr %56, i64 0, i32 2
  store ptr %25, ptr %63, align 8, !tbaa !121
  br i1 %52, label %64, label %68

64:                                               ; preds = %47, %62, %31
  %65 = load ptr, ptr @MEM_callocN, align 8, !tbaa !48
  %66 = call ptr %65(i64 noundef 24, ptr noundef nonnull @.str.63) #11
  %67 = getelementptr inbounds %struct.LinkData, ptr %66, i64 0, i32 2
  store ptr %25, ptr %67, align 8, !tbaa !121
  call void @BLI_addtail(ptr noundef nonnull %3, ptr noundef %66) #11
  br label %68

68:                                               ; preds = %44, %64, %62
  %69 = load ptr, ptr %25, align 8, !tbaa !48
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %24, !llvm.loop !124

71:                                               ; preds = %68, %19
  %72 = load ptr, ptr %3, align 8, !tbaa !116
  %73 = icmp eq ptr %72, null
  br i1 %73, label %142, label %74

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.bArmature, ptr %10, i64 0, i32 15
  br label %76

76:                                               ; preds = %74, %136
  %77 = phi ptr [ %72, %74 ], [ %78, %136 ]
  %78 = load ptr, ptr %77, align 8, !tbaa !125
  call void @BLI_remlink(ptr noundef nonnull %3, ptr noundef nonnull %77) #11
  %79 = getelementptr inbounds %struct.LinkData, ptr %77, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !48
  %81 = icmp eq ptr %80, null
  br i1 %81, label %128, label %82

82:                                               ; preds = %76, %121
  %83 = phi ptr [ %126, %121 ], [ %80, %76 ]
  %84 = phi ptr [ %83, %121 ], [ null, %76 ]
  %85 = phi ptr [ %124, %121 ], [ null, %76 ]
  %86 = phi ptr [ %123, %121 ], [ null, %76 ]
  %87 = phi ptr [ %122, %121 ], [ null, %76 ]
  %88 = load i32, ptr %75, align 8, !tbaa !94
  %89 = getelementptr inbounds %struct.EditBone, ptr %83, i64 0, i32 10
  %90 = load i32, ptr %89, align 8, !tbaa !95
  %91 = and i32 %90, %88
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %116, label %93

93:                                               ; preds = %82
  %94 = getelementptr inbounds %struct.EditBone, ptr %83, i64 0, i32 9
  %95 = load i32, ptr %94, align 4, !tbaa !96
  %96 = and i32 %95, 1024
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %116

98:                                               ; preds = %93
  %99 = and i32 %95, 16
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.EditBone, ptr %83, i64 0, i32 3
  %103 = load ptr, ptr %102, align 8, !tbaa !99
  %104 = icmp ne ptr %103, null
  %105 = and i32 %95, 1
  %106 = icmp eq i32 %105, 0
  %107 = or i1 %106, %104
  br i1 %107, label %116, label %111

108:                                              ; preds = %98
  %109 = and i32 %95, 1
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %116, label %111

111:                                              ; preds = %101, %108
  %112 = icmp eq ptr %86, null
  %113 = select i1 %112, ptr %87, ptr %83
  %114 = select i1 %112, ptr %83, ptr %86
  %115 = select i1 %112, ptr %84, ptr %85
  br label %121

116:                                              ; preds = %82, %108, %101, %93
  %117 = icmp ne ptr %87, null
  %118 = icmp ne ptr %86, null
  %119 = select i1 %117, i1 %118, i1 false
  br i1 %119, label %120, label %121

120:                                              ; preds = %116
  call fastcc void @bones_merge(ptr noundef %4, ptr noundef nonnull %87, ptr noundef nonnull %86, ptr noundef %85, ptr noundef nonnull %3)
  br label %121

121:                                              ; preds = %116, %120, %111
  %122 = phi ptr [ %113, %111 ], [ null, %120 ], [ null, %116 ]
  %123 = phi ptr [ %114, %111 ], [ null, %120 ], [ null, %116 ]
  %124 = phi ptr [ %115, %111 ], [ null, %120 ], [ null, %116 ]
  %125 = getelementptr inbounds %struct.EditBone, ptr %83, i64 0, i32 3
  %126 = load ptr, ptr %125, align 8, !tbaa !48
  %127 = icmp eq ptr %126, null
  br i1 %127, label %128, label %82, !llvm.loop !126

128:                                              ; preds = %121, %76
  %129 = phi ptr [ null, %76 ], [ %122, %121 ]
  %130 = phi ptr [ null, %76 ], [ %123, %121 ]
  %131 = phi ptr [ null, %76 ], [ %124, %121 ]
  %132 = icmp ne ptr %129, null
  %133 = icmp ne ptr %130, null
  %134 = select i1 %132, i1 %133, i1 false
  br i1 %134, label %135, label %136

135:                                              ; preds = %128
  call fastcc void @bones_merge(ptr noundef %4, ptr noundef nonnull %129, ptr noundef nonnull %130, ptr noundef %131, ptr noundef nonnull %3)
  br label %136

136:                                              ; preds = %135, %128
  call void @BLI_insertlinkbefore(ptr noundef nonnull %3, ptr noundef %78, ptr noundef nonnull %77) #11
  %137 = icmp eq ptr %78, null
  br i1 %137, label %138, label %76, !llvm.loop !127

138:                                              ; preds = %136
  call void @armature_tag_unselect(ptr noundef %10) #11
  call void @BLI_freelistN(ptr noundef nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  br label %139

139:                                              ; preds = %138, %16
  %140 = getelementptr inbounds %struct.bArmature, ptr %10, i64 0, i32 4
  %141 = load ptr, ptr %140, align 8, !tbaa !46
  call void @ED_armature_sync_selection(ptr noundef %141) #11
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85196800, ptr noundef %4) #11
  br label %143

142:                                              ; preds = %71
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  br label %143

143:                                              ; preds = %142, %9, %139
  %144 = phi i32 [ 4, %139 ], [ 2, %9 ], [ 2, %142 ]
  ret i32 %144
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ARMATURE_OT_switch_direction(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.20, ptr %0, align 8, !tbaa !81
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.21, ptr %2, align 8, !tbaa !84
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.22, ptr %3, align 8, !tbaa !85
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @armature_switch_direction_exec, ptr %4, align 8, !tbaa !87
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editarmature, ptr %5, align 8, !tbaa !88
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !89
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @armature_switch_direction_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %7 = getelementptr inbounds %struct.bArmature, ptr %6, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = icmp eq ptr %9, null
  br i1 %10, label %58, label %11

11:                                               ; preds = %2, %55
  %12 = phi ptr [ %56, %55 ], [ %9, %2 ]
  %13 = load ptr, ptr %3, align 8, !tbaa !48
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %22

15:                                               ; preds = %27, %22
  %16 = load ptr, ptr %23, align 8, !tbaa !48
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %22, !llvm.loop !118

18:                                               ; preds = %15, %11
  %19 = getelementptr inbounds %struct.EditBone, ptr %12, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !99
  %21 = icmp eq ptr %20, null
  br i1 %21, label %51, label %38

22:                                               ; preds = %11, %15
  %23 = phi ptr [ %16, %15 ], [ %13, %11 ]
  %24 = getelementptr inbounds %struct.LinkData, ptr %23, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !48
  %26 = icmp eq ptr %25, null
  br i1 %26, label %15, label %31

27:                                               ; preds = %31
  %28 = getelementptr inbounds %struct.EditBone, ptr %32, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !48
  %30 = icmp eq ptr %29, null
  br i1 %30, label %15, label %31, !llvm.loop !119

31:                                               ; preds = %22, %27
  %32 = phi ptr [ %29, %27 ], [ %25, %22 ]
  %33 = icmp eq ptr %32, %12
  br i1 %33, label %55, label %27

34:                                               ; preds = %41
  %35 = getelementptr inbounds %struct.EditBone, ptr %40, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !99
  %37 = icmp eq ptr %36, null
  br i1 %37, label %51, label %38, !llvm.loop !120

38:                                               ; preds = %18, %34
  %39 = phi i1 [ %37, %34 ], [ %21, %18 ]
  %40 = phi ptr [ %36, %34 ], [ %20, %18 ]
  br label %41

41:                                               ; preds = %45, %38
  %42 = phi ptr [ %43, %45 ], [ %3, %38 ]
  %43 = load ptr, ptr %42, align 8, !tbaa !48
  %44 = icmp eq ptr %43, null
  br i1 %44, label %34, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.LinkData, ptr %43, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !121
  %48 = icmp eq ptr %47, %40
  br i1 %48, label %49, label %41, !llvm.loop !123

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.LinkData, ptr %43, i64 0, i32 2
  store ptr %12, ptr %50, align 8, !tbaa !121
  br i1 %39, label %51, label %55

51:                                               ; preds = %34, %49, %18
  %52 = load ptr, ptr @MEM_callocN, align 8, !tbaa !48
  %53 = call ptr %52(i64 noundef 24, ptr noundef nonnull @.str.63) #11
  %54 = getelementptr inbounds %struct.LinkData, ptr %53, i64 0, i32 2
  store ptr %12, ptr %54, align 8, !tbaa !121
  call void @BLI_addtail(ptr noundef nonnull %3, ptr noundef %53) #11
  br label %55

55:                                               ; preds = %31, %51, %49
  %56 = load ptr, ptr %12, align 8, !tbaa !48
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %11, !llvm.loop !124

58:                                               ; preds = %55, %2
  %59 = load ptr, ptr %3, align 8, !tbaa !116
  %60 = icmp eq ptr %59, null
  br i1 %60, label %173, label %61

61:                                               ; preds = %58
  call void @armature_tag_select_mirrored(ptr noundef %6) #11
  %62 = load ptr, ptr %7, align 8, !tbaa !46
  %63 = load ptr, ptr %62, align 8, !tbaa !48
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %70

65:                                               ; preds = %70, %61
  %66 = load ptr, ptr %3, align 8, !tbaa !48
  %67 = icmp eq ptr %66, null
  br i1 %67, label %161, label %68

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.bArmature, ptr %6, i64 0, i32 15
  br label %80

70:                                               ; preds = %61, %70
  %71 = phi ptr [ %75, %70 ], [ %63, %61 ]
  %72 = getelementptr inbounds %struct.EditBone, ptr %71, i64 0, i32 9
  %73 = load i32, ptr %72, align 4, !tbaa !96
  %74 = and i32 %73, -9
  store i32 %74, ptr %72, align 4, !tbaa !96
  %75 = load ptr, ptr %71, align 8, !tbaa !48
  %76 = icmp eq ptr %75, null
  br i1 %76, label %65, label %70, !llvm.loop !128

77:                                               ; preds = %158, %80
  %78 = load ptr, ptr %81, align 8, !tbaa !48
  %79 = icmp eq ptr %78, null
  br i1 %79, label %161, label %80, !llvm.loop !129

80:                                               ; preds = %68, %77
  %81 = phi ptr [ %66, %68 ], [ %78, %77 ]
  %82 = getelementptr inbounds %struct.LinkData, ptr %81, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !121
  %84 = icmp eq ptr %83, null
  br i1 %84, label %77, label %85

85:                                               ; preds = %80, %158
  %86 = phi ptr [ %159, %158 ], [ null, %80 ]
  %87 = phi ptr [ %89, %158 ], [ %83, %80 ]
  %88 = getelementptr inbounds %struct.EditBone, ptr %87, i64 0, i32 3
  %89 = load ptr, ptr %88, align 8, !tbaa !99
  %90 = getelementptr inbounds %struct.EditBone, ptr %87, i64 0, i32 9
  %91 = load i32, ptr %90, align 4, !tbaa !96
  %92 = and i32 %91, 8
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %158

94:                                               ; preds = %85
  %95 = load i32, ptr %69, align 8, !tbaa !94
  %96 = getelementptr inbounds %struct.EditBone, ptr %87, i64 0, i32 10
  %97 = load i32, ptr %96, align 8, !tbaa !95
  %98 = and i32 %97, %95
  %99 = icmp ne i32 %98, 0
  %100 = and i32 %91, 525313
  %101 = icmp eq i32 %100, 1
  %102 = and i1 %101, %99
  br i1 %102, label %103, label %137

103:                                              ; preds = %94
  %104 = getelementptr inbounds %struct.EditBone, ptr %87, i64 0, i32 7
  %105 = load float, ptr %104, align 4, !tbaa !77
  %106 = getelementptr inbounds %struct.EditBone, ptr %87, i64 0, i32 8
  %107 = load float, ptr %106, align 8, !tbaa !77
  store float %107, ptr %104, align 4, !tbaa !77
  store float %105, ptr %106, align 8, !tbaa !77
  %108 = getelementptr inbounds %struct.EditBone, ptr %87, i64 0, i32 7, i64 1
  %109 = load float, ptr %108, align 4, !tbaa !77
  %110 = getelementptr inbounds %struct.EditBone, ptr %87, i64 0, i32 8, i64 1
  %111 = load float, ptr %110, align 4, !tbaa !77
  store float %111, ptr %108, align 4, !tbaa !77
  store float %109, ptr %110, align 4, !tbaa !77
  %112 = getelementptr inbounds %struct.EditBone, ptr %87, i64 0, i32 7, i64 2
  %113 = load float, ptr %112, align 4, !tbaa !77
  %114 = getelementptr inbounds %struct.EditBone, ptr %87, i64 0, i32 8, i64 2
  %115 = load float, ptr %114, align 8, !tbaa !77
  store float %115, ptr %112, align 4, !tbaa !77
  store float %113, ptr %114, align 8, !tbaa !77
  store ptr %86, ptr %88, align 8, !tbaa !99
  %116 = icmp eq ptr %86, null
  br i1 %116, label %135, label %117

117:                                              ; preds = %103
  %118 = getelementptr inbounds %struct.EditBone, ptr %86, i64 0, i32 8
  %119 = load float, ptr %118, align 4, !tbaa !77
  %120 = fcmp oeq float %107, %119
  br i1 %120, label %121, label %130

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.EditBone, ptr %86, i64 0, i32 8, i64 1
  %123 = load float, ptr %122, align 4, !tbaa !77
  %124 = fcmp oeq float %111, %123
  br i1 %124, label %125, label %130

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.EditBone, ptr %86, i64 0, i32 8, i64 2
  %127 = load float, ptr %126, align 4, !tbaa !77
  %128 = fcmp oeq float %115, %127
  %129 = zext i1 %128 to i8
  br label %130

130:                                              ; preds = %117, %121, %125
  %131 = phi i8 [ 0, %121 ], [ 0, %117 ], [ %129, %125 ]
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %135, label %133

133:                                              ; preds = %130
  %134 = or i32 %91, 16
  br label %151

135:                                              ; preds = %130, %103
  %136 = and i32 %91, -25
  br label %151

137:                                              ; preds = %94
  %138 = icmp eq ptr %89, null
  br i1 %138, label %154, label %139

139:                                              ; preds = %137
  %140 = getelementptr inbounds %struct.EditBone, ptr %89, i64 0, i32 10
  %141 = load i32, ptr %140, align 8, !tbaa !95
  %142 = and i32 %141, %95
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %154, label %144

144:                                              ; preds = %139
  %145 = getelementptr inbounds %struct.EditBone, ptr %89, i64 0, i32 9
  %146 = load i32, ptr %145, align 4, !tbaa !96
  %147 = and i32 %146, 525313
  %148 = icmp eq i32 %147, 1
  br i1 %148, label %149, label %154

149:                                              ; preds = %144
  store ptr null, ptr %88, align 8, !tbaa !99
  %150 = and i32 %91, -25
  br label %151

151:                                              ; preds = %133, %135, %149
  %152 = phi i32 [ %150, %149 ], [ %136, %135 ], [ %134, %133 ]
  %153 = phi ptr [ null, %149 ], [ %87, %135 ], [ %87, %133 ]
  store i32 %152, ptr %90, align 4, !tbaa !96
  br label %154

154:                                              ; preds = %151, %137, %144, %139
  %155 = phi ptr [ null, %139 ], [ null, %144 ], [ null, %137 ], [ %153, %151 ]
  %156 = load i32, ptr %90, align 4, !tbaa !96
  %157 = or i32 %156, 8
  store i32 %157, ptr %90, align 4, !tbaa !96
  br label %158

158:                                              ; preds = %85, %154
  %159 = phi ptr [ %155, %154 ], [ %86, %85 ]
  %160 = icmp eq ptr %89, null
  br i1 %160, label %77, label %85, !llvm.loop !130

161:                                              ; preds = %77, %65
  call void @BLI_freelistN(ptr noundef nonnull %3) #11
  %162 = load ptr, ptr %7, align 8, !tbaa !46
  %163 = load ptr, ptr %162, align 8, !tbaa !48
  %164 = icmp eq ptr %163, null
  br i1 %164, label %172, label %165

165:                                              ; preds = %161, %165
  %166 = phi ptr [ %170, %165 ], [ %163, %161 ]
  %167 = getelementptr inbounds %struct.EditBone, ptr %166, i64 0, i32 9
  %168 = load i32, ptr %167, align 4, !tbaa !96
  %169 = and i32 %168, -9
  store i32 %169, ptr %167, align 4, !tbaa !96
  %170 = load ptr, ptr %166, align 8, !tbaa !48
  %171 = icmp eq ptr %170, null
  br i1 %171, label %172, label %165, !llvm.loop !128

172:                                              ; preds = %165, %161
  call void @armature_tag_unselect(ptr noundef %6) #11
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85327872, ptr noundef %4) #11
  br label %173

173:                                              ; preds = %58, %172
  %174 = phi i32 [ 4, %172 ], [ 2, %58 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  ret i32 %174
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ARMATURE_OT_align(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.23, ptr %0, align 8, !tbaa !81
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.24, ptr %2, align 8, !tbaa !84
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.25, ptr %3, align 8, !tbaa !85
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @armature_align_bones_exec, ptr %4, align 8, !tbaa !87
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editarmature, ptr %5, align 8, !tbaa !88
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !89
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @armature_align_bones_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = tail call ptr @CTX_data_active_bone(ptr noundef %0) #11
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !102
  tail call void @BKE_report(ptr noundef %11, i32 noundef 32, ptr noundef nonnull @.str.66) #11
  br label %78

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.bArmature, ptr %6, i64 0, i32 8
  %14 = load i32, ptr %13, align 8, !tbaa !105
  %15 = and i32 %14, 256
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.bArmature, ptr %6, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !46
  %20 = tail call ptr @ED_armature_bone_get_mirrored(ptr noundef %19, ptr noundef nonnull %7) #11
  %21 = icmp eq ptr %20, null
  %22 = select i1 %21, ptr %7, ptr %20
  br label %23

23:                                               ; preds = %17, %12
  %24 = phi ptr [ null, %12 ], [ %22, %17 ]
  %25 = tail call i32 @ctx_data_list_count(ptr noundef %0, ptr noundef nonnull @CTX_data_selected_editable_bones) #11
  %26 = icmp slt i32 %25, 2
  br i1 %26, label %27, label %47

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.EditBone, ptr %7, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !99
  %30 = icmp eq ptr %29, null
  br i1 %30, label %77, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.bArmature, ptr %6, i64 0, i32 4
  %33 = load ptr, ptr %32, align 8, !tbaa !46
  tail call fastcc void @bone_align_to_bone(ptr noundef %33, ptr noundef nonnull %7, ptr noundef nonnull %29)
  %34 = load i32, ptr %13, align 8, !tbaa !105
  %35 = and i32 %34, 256
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.EditBone, ptr %24, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !99
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  %42 = load ptr, ptr %32, align 8, !tbaa !46
  tail call fastcc void @bone_align_to_bone(ptr noundef %42, ptr noundef %24, ptr noundef nonnull %39)
  br label %43

43:                                               ; preds = %41, %37, %31
  %44 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %45 = load ptr, ptr %44, align 8, !tbaa !102
  %46 = getelementptr inbounds %struct.EditBone, ptr %7, i64 0, i32 5
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %45, i32 noundef 2, ptr noundef nonnull @.str.67, ptr noundef nonnull %46) #11
  br label %77

47:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  %48 = call i32 @CTX_data_selected_editable_bones(ptr noundef %0, ptr noundef nonnull %3) #11
  %49 = load ptr, ptr %3, align 8, !tbaa !48
  %50 = icmp eq ptr %49, null
  br i1 %50, label %73, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.bArmature, ptr %6, i64 0, i32 4
  %53 = getelementptr inbounds %struct.bArmature, ptr %6, i64 0, i32 4
  br label %54

54:                                               ; preds = %51, %70
  %55 = phi ptr [ %49, %51 ], [ %71, %70 ]
  %56 = getelementptr inbounds %struct.CollectionPointerLink, ptr %55, i64 0, i32 2, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !107
  %58 = icmp ne ptr %57, %7
  %59 = icmp ne ptr %57, %24
  %60 = and i1 %58, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %54
  %62 = getelementptr inbounds %struct.EditBone, ptr %57, i64 0, i32 9
  %63 = load i32, ptr %62, align 4, !tbaa !96
  %64 = and i32 %63, 1
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %61
  %67 = load ptr, ptr %52, align 8, !tbaa !46
  call fastcc void @bone_align_to_bone(ptr noundef %67, ptr noundef %57, ptr noundef nonnull %7)
  br label %70

68:                                               ; preds = %61
  %69 = load ptr, ptr %53, align 8, !tbaa !46
  call fastcc void @bone_align_to_bone(ptr noundef %69, ptr noundef %57, ptr noundef %24)
  br label %70

70:                                               ; preds = %66, %68, %54
  %71 = load ptr, ptr %55, align 8, !tbaa !48
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %54, !llvm.loop !131

73:                                               ; preds = %70, %47
  call void @BLI_freelistN(ptr noundef nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  %74 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %75 = load ptr, ptr %74, align 8, !tbaa !102
  %76 = getelementptr inbounds %struct.EditBone, ptr %7, i64 0, i32 5
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %75, i32 noundef 2, ptr noundef nonnull @.str.68, i32 noundef %25, ptr noundef nonnull %76) #11
  br label %77

77:                                               ; preds = %27, %43, %73
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85327872, ptr noundef %4) #11
  br label %78

78:                                               ; preds = %77, %9
  %79 = phi i32 [ 2, %9 ], [ 4, %77 ]
  ret i32 %79
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ARMATURE_OT_split(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.26, ptr %0, align 8, !tbaa !81
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.27, ptr %2, align 8, !tbaa !84
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.28, ptr %3, align 8, !tbaa !85
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @armature_split_exec, ptr %4, align 8, !tbaa !87
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editarmature, ptr %5, align 8, !tbaa !88
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !89
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @armature_split_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.bArmature, ptr %5, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %28, %2
  %11 = load ptr, ptr %7, align 8, !tbaa !48
  %12 = icmp eq ptr %11, null
  br i1 %12, label %39, label %31

13:                                               ; preds = %2, %28
  %14 = phi ptr [ %29, %28 ], [ %8, %2 ]
  %15 = getelementptr inbounds %struct.EditBone, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !99
  %17 = icmp eq ptr %16, null
  br i1 %17, label %28, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.EditBone, ptr %14, i64 0, i32 9
  %20 = load i32, ptr %19, align 4, !tbaa !96
  %21 = getelementptr inbounds %struct.EditBone, ptr %16, i64 0, i32 9
  %22 = load i32, ptr %21, align 4, !tbaa !96
  %23 = xor i32 %22, %20
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %18
  store ptr null, ptr %15, align 8, !tbaa !99
  %27 = and i32 %20, -17
  store i32 %27, ptr %19, align 4, !tbaa !96
  br label %28

28:                                               ; preds = %13, %18, %26
  %29 = load ptr, ptr %14, align 8, !tbaa !48
  %30 = icmp eq ptr %29, null
  br i1 %30, label %10, label %13, !llvm.loop !132

31:                                               ; preds = %10, %31
  %32 = phi ptr [ %37, %31 ], [ %11, %10 ]
  %33 = getelementptr inbounds %struct.EditBone, ptr %32, i64 0, i32 9
  %34 = load i32, ptr %33, align 4, !tbaa !96
  %35 = trunc i32 %34 to i8
  %36 = and i8 %35, 1
  tail call void @ED_armature_ebone_select_set(ptr noundef nonnull %32, i8 noundef zeroext %36) #11
  %37 = load ptr, ptr %32, align 8, !tbaa !48
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %31, !llvm.loop !133

39:                                               ; preds = %31, %10
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85327872, ptr noundef %3) #11
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ARMATURE_OT_delete(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.29, ptr %0, align 8, !tbaa !81
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.30, ptr %2, align 8, !tbaa !84
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.31, ptr %3, align 8, !tbaa !85
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_operator_confirm, ptr %4, align 8, !tbaa !86
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @armature_delete_selected_exec, ptr %5, align 8, !tbaa !87
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editarmature, ptr %6, align 8, !tbaa !88
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !89
  ret void
}

declare i32 @WM_operator_confirm(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @armature_delete_selected_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = tail call i32 @ctx_data_list_count(ptr noundef %0, ptr noundef nonnull @CTX_data_selected_bones) #11
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %133, label %9

9:                                                ; preds = %2
  tail call void @armature_select_mirrored(ptr noundef %6) #11
  %10 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 18
  %11 = load ptr, ptr %10, align 8, !tbaa !134
  %12 = icmp eq ptr %11, null
  br i1 %12, label %99, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %11, align 8, !tbaa !135
  %15 = icmp eq ptr %14, null
  br i1 %15, label %99, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.bArmature, ptr %6, i64 0, i32 4
  %18 = getelementptr inbounds %struct.bArmature, ptr %6, i64 0, i32 15
  %19 = getelementptr inbounds %struct.bArmature, ptr %6, i64 0, i32 15
  br label %20

20:                                               ; preds = %16, %97
  %21 = phi ptr [ %14, %16 ], [ %22, %97 ]
  %22 = load ptr, ptr %21, align 8, !tbaa !137
  %23 = load ptr, ptr %17, align 8, !tbaa !46
  %24 = getelementptr inbounds %struct.bPoseChannel, ptr %21, i64 0, i32 4
  %25 = call ptr @ED_armature_bone_find_name(ptr noundef %23, ptr noundef nonnull %24) #11
  %26 = icmp eq ptr %25, null
  br i1 %26, label %41, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.EditBone, ptr %25, i64 0, i32 9
  %29 = load i32, ptr %28, align 4, !tbaa !96
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %27
  %33 = load i32, ptr %18, align 8, !tbaa !94
  %34 = getelementptr inbounds %struct.EditBone, ptr %25, i64 0, i32 10
  %35 = load i32, ptr %34, align 8, !tbaa !95
  %36 = and i32 %35, %33
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %32
  call void @BKE_pose_channel_free(ptr noundef nonnull %21) #11
  %39 = load ptr, ptr %10, align 8, !tbaa !134
  call void @BKE_pose_channels_hash_free(ptr noundef %39) #11
  %40 = load ptr, ptr %10, align 8, !tbaa !134
  call void @BLI_freelinkN(ptr noundef %40, ptr noundef nonnull %21) #11
  br label %97

41:                                               ; preds = %32, %27, %20
  %42 = getelementptr inbounds %struct.bPoseChannel, ptr %21, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !48
  %44 = icmp eq ptr %43, null
  br i1 %44, label %97, label %45

45:                                               ; preds = %41, %94
  %46 = phi ptr [ %95, %94 ], [ %43, %41 ]
  %47 = call ptr @BKE_constraint_typeinfo_get(ptr noundef nonnull %46) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %48 = icmp eq ptr %47, null
  br i1 %48, label %94, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %47, i64 0, i32 8
  %51 = load ptr, ptr %50, align 8, !tbaa !139
  %52 = icmp eq ptr %51, null
  br i1 %52, label %94, label %53

53:                                               ; preds = %49
  %54 = call i32 %51(ptr noundef nonnull %46, ptr noundef nonnull %3) #11
  %55 = load ptr, ptr %3, align 8, !tbaa !48
  %56 = icmp eq ptr %55, null
  br i1 %56, label %89, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.bConstraint, ptr %46, i64 0, i32 4
  br label %59

59:                                               ; preds = %57, %86
  %60 = phi ptr [ %55, %57 ], [ %87, %86 ]
  %61 = getelementptr inbounds %struct.bConstraintTarget, ptr %60, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !141
  %63 = icmp eq ptr %62, %4
  br i1 %63, label %64, label %86

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.bConstraintTarget, ptr %60, i64 0, i32 3
  %66 = load i8, ptr %65, align 8, !tbaa !143
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %86, label %68

68:                                               ; preds = %64
  %69 = load ptr, ptr %17, align 8, !tbaa !46
  %70 = call ptr @ED_armature_bone_find_name(ptr noundef %69, ptr noundef nonnull %65) #11
  %71 = icmp eq ptr %70, null
  br i1 %71, label %86, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.EditBone, ptr %70, i64 0, i32 9
  %74 = load i32, ptr %73, align 4, !tbaa !96
  %75 = and i32 %74, 1
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %86, label %77

77:                                               ; preds = %72
  %78 = load i32, ptr %19, align 8, !tbaa !94
  %79 = getelementptr inbounds %struct.EditBone, ptr %70, i64 0, i32 10
  %80 = load i32, ptr %79, align 8, !tbaa !95
  %81 = and i32 %80, %78
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %77
  %84 = load i16, ptr %58, align 2, !tbaa !144
  %85 = or i16 %84, 4
  store i16 %85, ptr %58, align 2, !tbaa !144
  store i8 0, ptr %65, align 8, !tbaa !143
  br label %86

86:                                               ; preds = %59, %68, %72, %77, %83, %64
  %87 = load ptr, ptr %60, align 8, !tbaa !48
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %59, !llvm.loop !146

89:                                               ; preds = %86, %53
  %90 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %47, i64 0, i32 9
  %91 = load ptr, ptr %90, align 8, !tbaa !147
  %92 = icmp eq ptr %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %89
  call void %91(ptr noundef nonnull %46, ptr noundef nonnull %3, i8 noundef zeroext 0) #11
  br label %94

94:                                               ; preds = %89, %93, %49, %45
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  %95 = load ptr, ptr %46, align 8, !tbaa !48
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %45, !llvm.loop !148

97:                                               ; preds = %94, %41, %38
  %98 = icmp eq ptr %22, null
  br i1 %98, label %99, label %20, !llvm.loop !149

99:                                               ; preds = %97, %13, %9
  %100 = getelementptr inbounds %struct.bArmature, ptr %6, i64 0, i32 4
  %101 = load ptr, ptr %100, align 8, !tbaa !46
  %102 = load ptr, ptr %101, align 8, !tbaa !116
  %103 = icmp eq ptr %102, null
  br i1 %103, label %133, label %104

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.bArmature, ptr %6, i64 0, i32 15
  %106 = getelementptr inbounds %struct.bArmature, ptr %6, i64 0, i32 6
  br label %107

107:                                              ; preds = %104, %126
  %108 = phi ptr [ %102, %104 ], [ %110, %126 ]
  %109 = phi i8 [ 0, %104 ], [ %127, %126 ]
  %110 = load ptr, ptr %108, align 8, !tbaa !150
  %111 = load i32, ptr %105, align 8, !tbaa !94
  %112 = getelementptr inbounds %struct.EditBone, ptr %108, i64 0, i32 10
  %113 = load i32, ptr %112, align 8, !tbaa !95
  %114 = and i32 %113, %111
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %126, label %116

116:                                              ; preds = %107
  %117 = getelementptr inbounds %struct.EditBone, ptr %108, i64 0, i32 9
  %118 = load i32, ptr %117, align 4, !tbaa !96
  %119 = and i32 %118, 1
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %116
  %122 = load ptr, ptr %106, align 8, !tbaa !103
  %123 = icmp eq ptr %108, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  store ptr null, ptr %106, align 8, !tbaa !103
  br label %125

125:                                              ; preds = %124, %121
  call void @ED_armature_edit_bone_remove(ptr noundef %6, ptr noundef nonnull %108) #11
  br label %126

126:                                              ; preds = %107, %125, %116
  %127 = phi i8 [ 1, %125 ], [ %109, %116 ], [ %109, %107 ]
  %128 = icmp eq ptr %110, null
  br i1 %128, label %129, label %107, !llvm.loop !151

129:                                              ; preds = %126
  %130 = icmp eq i8 %127, 0
  br i1 %130, label %133, label %131

131:                                              ; preds = %129
  %132 = load ptr, ptr %100, align 8, !tbaa !46
  call void @ED_armature_sync_selection(ptr noundef %132) #11
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85327872, ptr noundef %4) #11
  br label %133

133:                                              ; preds = %99, %129, %2, %131
  %134 = phi i32 [ 4, %131 ], [ 2, %2 ], [ 2, %129 ], [ 2, %99 ]
  ret i32 %134
}

; Function Attrs: nounwind uwtable
define dso_local void @ARMATURE_OT_hide(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.32, ptr %0, align 8, !tbaa !81
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.33, ptr %2, align 8, !tbaa !84
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.34, ptr %3, align 8, !tbaa !85
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @armature_hide_exec, ptr %4, align 8, !tbaa !87
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editarmature, ptr %5, align 8, !tbaa !88
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !89
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !90
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.35, i32 noundef 0, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @armature_hide_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !92
  %8 = tail call i32 @RNA_boolean_get(ptr noundef %7, ptr noundef nonnull @.str.35) #11
  %9 = icmp ne i32 %8, 0
  %10 = tail call i32 @ctx_data_list_count(ptr noundef %0, ptr noundef nonnull @CTX_data_selected_bones) #11
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %43, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.bArmature, ptr %5, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  %15 = load ptr, ptr %14, align 8, !tbaa !48
  %16 = icmp eq ptr %15, null
  br i1 %16, label %41, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.bArmature, ptr %5, i64 0, i32 15
  %19 = load i32, ptr %18, align 8, !tbaa !94
  br label %20

20:                                               ; preds = %17, %38
  %21 = phi ptr [ %15, %17 ], [ %39, %38 ]
  %22 = getelementptr inbounds %struct.EditBone, ptr %21, i64 0, i32 10
  %23 = load i32, ptr %22, align 8, !tbaa !95
  %24 = and i32 %23, %19
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.EditBone, ptr %21, i64 0, i32 9
  %28 = load i32, ptr %27, align 4, !tbaa !96
  %29 = and i32 %28, 1024
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = and i32 %28, 1
  %33 = icmp eq i32 %32, 0
  %34 = xor i1 %9, %33
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = and i32 %28, -1032
  %37 = or disjoint i32 %36, 1024
  store i32 %37, ptr %27, align 4, !tbaa !96
  br label %38

38:                                               ; preds = %26, %35, %31, %20
  %39 = load ptr, ptr %21, align 8, !tbaa !48
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %20, !llvm.loop !152

41:                                               ; preds = %38, %12
  tail call void @ED_armature_validate_active(ptr noundef %5) #11
  %42 = load ptr, ptr %13, align 8, !tbaa !46
  tail call void @ED_armature_sync_selection(ptr noundef %42) #11
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85327872, ptr noundef %3) #11
  br label %43

43:                                               ; preds = %2, %41
  %44 = phi i32 [ 4, %41 ], [ 2, %2 ]
  ret i32 %44
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ARMATURE_OT_reveal(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.38, ptr %0, align 8, !tbaa !81
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.39, ptr %2, align 8, !tbaa !84
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.40, ptr %3, align 8, !tbaa !85
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @armature_reveal_exec, ptr %4, align 8, !tbaa !87
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editarmature, ptr %5, align 8, !tbaa !88
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !89
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @armature_reveal_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.bArmature, ptr %5, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = icmp eq ptr %8, null
  br i1 %9, label %35, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.bArmature, ptr %5, i64 0, i32 15
  %12 = load i32, ptr %11, align 8, !tbaa !94
  br label %13

13:                                               ; preds = %10, %32
  %14 = phi ptr [ %8, %10 ], [ %33, %32 ]
  %15 = getelementptr inbounds %struct.EditBone, ptr %14, i64 0, i32 10
  %16 = load i32, ptr %15, align 8, !tbaa !95
  %17 = and i32 %16, %12
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %32, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.EditBone, ptr %14, i64 0, i32 9
  %21 = load i32, ptr %20, align 4, !tbaa !96
  %22 = and i32 %21, 1024
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %19
  %25 = and i32 %21, 2097152
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = or i32 %21, 7
  store i32 %28, ptr %20, align 4, !tbaa !96
  br label %29

29:                                               ; preds = %27, %24
  %30 = load i32, ptr %20, align 4, !tbaa !96
  %31 = and i32 %30, -1025
  store i32 %31, ptr %20, align 4, !tbaa !96
  br label %32

32:                                               ; preds = %13, %29, %19
  %33 = load ptr, ptr %14, align 8, !tbaa !48
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %13, !llvm.loop !153

35:                                               ; preds = %32, %2
  tail call void @ED_armature_validate_active(ptr noundef %5) #11
  %36 = load ptr, ptr %6, align 8, !tbaa !46
  tail call void @ED_armature_sync_selection(ptr noundef %36) #11
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85327872, ptr noundef %3) #11
  ret i32 4
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #2

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @invert_m3(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_view3d(ptr noundef) local_unnamed_addr #2

declare ptr @ED_view3d_cursor3d_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

declare ptr @CTX_wm_region_view3d(ptr noundef) local_unnamed_addr #2

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ED_armature_bone_get_mirrored(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CTX_data_visible_bones(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #2

declare void @mul_v3_m4v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @add_points_bone(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @armature_tag_select_mirrored(ptr noundef) local_unnamed_addr #2

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @bones_merge(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef writeonly %3, ptr nocapture noundef readonly %4) unnamed_addr #0 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #11
  %10 = icmp eq ptr %1, %2
  br i1 %10, label %11, label %20

11:                                               ; preds = %5
  %12 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !154
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %17 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 5
  %18 = getelementptr inbounds %struct.EditBone, ptr %2, i64 0, i32 5
  %19 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.65, ptr noundef nonnull %17, ptr noundef nonnull %18)
  br label %20

20:                                               ; preds = %11, %15, %5
  %21 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 9
  %22 = load i32, ptr %21, align 4, !tbaa !96
  %23 = and i32 %22, 5
  %24 = icmp eq i32 %23, 4
  %25 = getelementptr inbounds float, ptr %6, i64 1
  %26 = getelementptr inbounds float, ptr %6, i64 2
  br i1 %24, label %27, label %33

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 8
  %29 = load float, ptr %28, align 4, !tbaa !77
  store float %29, ptr %6, align 4, !tbaa !77
  %30 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 8, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !77
  store float %31, ptr %25, align 4, !tbaa !77
  %32 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 8, i64 2
  br label %39

33:                                               ; preds = %20
  %34 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 7
  %35 = load float, ptr %34, align 4, !tbaa !77
  store float %35, ptr %6, align 4, !tbaa !77
  %36 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 7, i64 1
  %37 = load float, ptr %36, align 4, !tbaa !77
  store float %37, ptr %25, align 4, !tbaa !77
  %38 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 7, i64 2
  br label %39

39:                                               ; preds = %33, %27
  %40 = phi ptr [ %38, %33 ], [ %32, %27 ]
  %41 = load float, ptr %40, align 4, !tbaa !77
  store float %41, ptr %26, align 4, !tbaa !77
  %42 = getelementptr inbounds %struct.EditBone, ptr %2, i64 0, i32 9
  %43 = load i32, ptr %42, align 4, !tbaa !96
  %44 = and i32 %43, 3
  %45 = icmp eq i32 %44, 2
  %46 = getelementptr inbounds float, ptr %7, i64 1
  br i1 %45, label %47, label %53

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.EditBone, ptr %2, i64 0, i32 7
  %49 = load float, ptr %48, align 4, !tbaa !77
  store float %49, ptr %7, align 4, !tbaa !77
  %50 = getelementptr inbounds %struct.EditBone, ptr %2, i64 0, i32 7, i64 1
  %51 = load float, ptr %50, align 4, !tbaa !77
  store float %51, ptr %46, align 4, !tbaa !77
  %52 = getelementptr inbounds %struct.EditBone, ptr %2, i64 0, i32 7, i64 2
  br label %59

53:                                               ; preds = %39
  %54 = getelementptr inbounds %struct.EditBone, ptr %2, i64 0, i32 8
  %55 = load float, ptr %54, align 4, !tbaa !77
  store float %55, ptr %7, align 4, !tbaa !77
  %56 = getelementptr inbounds %struct.EditBone, ptr %2, i64 0, i32 8, i64 1
  %57 = load float, ptr %56, align 4, !tbaa !77
  store float %57, ptr %46, align 4, !tbaa !77
  %58 = getelementptr inbounds %struct.EditBone, ptr %2, i64 0, i32 8, i64 2
  br label %59

59:                                               ; preds = %53, %47
  %60 = phi ptr [ %58, %53 ], [ %52, %47 ]
  %61 = load float, ptr %60, align 4, !tbaa !77
  %62 = getelementptr inbounds float, ptr %7, i64 2
  store float %61, ptr %62, align 4, !tbaa !77
  %63 = call ptr @add_points_bone(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7) #11
  %64 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !99
  %66 = getelementptr inbounds %struct.EditBone, ptr %63, i64 0, i32 3
  store ptr %65, ptr %66, align 8, !tbaa !99
  %67 = load i32, ptr %21, align 4, !tbaa !96
  %68 = and i32 %67, 4493952
  %69 = getelementptr inbounds %struct.EditBone, ptr %63, i64 0, i32 9
  store i32 %68, ptr %69, align 4, !tbaa !96
  %70 = load ptr, ptr %4, align 8, !tbaa !48
  %71 = icmp eq ptr %70, null
  br i1 %71, label %107, label %72

72:                                               ; preds = %59
  %73 = icmp eq ptr %2, null
  br label %74

74:                                               ; preds = %72, %104
  %75 = phi ptr [ %70, %72 ], [ %105, %104 ]
  %76 = getelementptr inbounds %struct.LinkData, ptr %75, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !48
  %78 = icmp ne ptr %77, null
  %79 = icmp ne ptr %77, %2
  %80 = and i1 %78, %79
  br i1 %80, label %81, label %104

81:                                               ; preds = %74, %98
  %82 = phi ptr [ %100, %98 ], [ %77, %74 ]
  br i1 %73, label %98, label %83

83:                                               ; preds = %81
  %84 = load ptr, ptr %64, align 8, !tbaa !99
  %85 = getelementptr inbounds %struct.EditBone, ptr %82, i64 0, i32 3
  br label %86

86:                                               ; preds = %83, %94
  %87 = phi ptr [ %2, %83 ], [ %96, %94 ]
  %88 = icmp eq ptr %87, %84
  br i1 %88, label %98, label %89

89:                                               ; preds = %86
  %90 = load ptr, ptr %85, align 8, !tbaa !99
  %91 = icmp eq ptr %90, %87
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.EditBone, ptr %82, i64 0, i32 3
  store ptr %63, ptr %93, align 8, !tbaa !99
  br label %104

94:                                               ; preds = %89
  %95 = getelementptr inbounds %struct.EditBone, ptr %87, i64 0, i32 3
  %96 = load ptr, ptr %95, align 8, !tbaa !99
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %86, !llvm.loop !156

98:                                               ; preds = %94, %86, %81
  %99 = getelementptr inbounds %struct.EditBone, ptr %82, i64 0, i32 3
  %100 = load ptr, ptr %99, align 8, !tbaa !48
  %101 = icmp ne ptr %100, null
  %102 = icmp ne ptr %100, %2
  %103 = and i1 %101, %102
  br i1 %103, label %81, label %104, !llvm.loop !157

104:                                              ; preds = %98, %74, %92
  %105 = load ptr, ptr %75, align 8, !tbaa !48
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %74, !llvm.loop !158

107:                                              ; preds = %104, %59
  %108 = icmp eq ptr %3, null
  br i1 %108, label %111, label %109

109:                                              ; preds = %107
  %110 = getelementptr inbounds %struct.EditBone, ptr %3, i64 0, i32 3
  store ptr %63, ptr %110, align 8, !tbaa !99
  br label %111

111:                                              ; preds = %109, %107
  %112 = icmp eq ptr %2, null
  br i1 %112, label %122, label %113

113:                                              ; preds = %111, %119
  %114 = phi ptr [ %120, %119 ], [ %2, %111 ]
  %115 = icmp eq ptr %114, %1
  br i1 %115, label %119, label %116

116:                                              ; preds = %113
  %117 = getelementptr inbounds %struct.EditBone, ptr %114, i64 0, i32 3
  %118 = load ptr, ptr %117, align 8, !tbaa !99
  br label %119

119:                                              ; preds = %113, %116
  %120 = phi ptr [ %118, %116 ], [ null, %113 ]
  call void @bone_free(ptr noundef %9, ptr noundef nonnull %114) #11
  %121 = icmp eq ptr %120, null
  br i1 %121, label %122, label %113, !llvm.loop !159

122:                                              ; preds = %119, %111
  %123 = load i32, ptr %69, align 4, !tbaa !96
  %124 = or i32 %123, 7
  store i32 %124, ptr %69, align 4, !tbaa !96
  %125 = getelementptr inbounds %struct.bArmature, ptr %9, i64 0, i32 4
  %126 = load ptr, ptr %125, align 8, !tbaa !46
  call void @ED_armature_sync_selection(ptr noundef %126) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #11
  ret void
}

declare void @BLI_insertlinkbefore(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @armature_tag_unselect(ptr noundef) local_unnamed_addr #2

declare void @ED_armature_sync_selection(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #7

declare void @bone_free(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_active_bone(ptr noundef) local_unnamed_addr #2

declare i32 @ctx_data_list_count(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CTX_data_selected_editable_bones(ptr noundef, ptr noundef) #2

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @bone_align_to_bone(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #8 {
  %4 = getelementptr inbounds %struct.EditBone, ptr %2, i64 0, i32 8
  %5 = getelementptr inbounds %struct.EditBone, ptr %2, i64 0, i32 7
  %6 = load float, ptr %4, align 4, !tbaa !77
  %7 = load float, ptr %5, align 4, !tbaa !77
  %8 = fsub float %6, %7
  %9 = getelementptr inbounds %struct.EditBone, ptr %2, i64 0, i32 8, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !77
  %11 = getelementptr inbounds %struct.EditBone, ptr %2, i64 0, i32 7, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !77
  %13 = fsub float %10, %12
  %14 = getelementptr inbounds %struct.EditBone, ptr %2, i64 0, i32 8, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !77
  %16 = getelementptr inbounds %struct.EditBone, ptr %2, i64 0, i32 7, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !77
  %18 = fsub float %15, %17
  %19 = fmul float %13, %13
  %20 = tail call float @llvm.fmuladd.f32(float %8, float %8, float %19)
  %21 = tail call float @llvm.fmuladd.f32(float %18, float %18, float %20)
  %22 = fcmp ogt float %21, 0x38AA95A5C0000000
  br i1 %22, label %23, label %29

23:                                               ; preds = %3
  %24 = tail call float @sqrtf(float noundef %21) #11
  %25 = fdiv float 1.000000e+00, %24
  %26 = fmul float %8, %25
  %27 = fmul float %13, %25
  %28 = fmul float %18, %25
  br label %29

29:                                               ; preds = %3, %23
  %30 = phi float [ %27, %23 ], [ 0.000000e+00, %3 ]
  %31 = phi float [ %26, %23 ], [ 0.000000e+00, %3 ]
  %32 = phi float [ %28, %23 ], [ 0.000000e+00, %3 ]
  %33 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 8
  %34 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 7
  %35 = load float, ptr %33, align 4, !tbaa !77
  %36 = load float, ptr %34, align 4, !tbaa !77
  %37 = fsub float %35, %36
  %38 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 8, i64 1
  %39 = load float, ptr %38, align 4, !tbaa !77
  %40 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 7, i64 1
  %41 = load float, ptr %40, align 4, !tbaa !77
  %42 = fsub float %39, %41
  %43 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 8, i64 2
  %44 = load float, ptr %43, align 4, !tbaa !77
  %45 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 7, i64 2
  %46 = load float, ptr %45, align 4, !tbaa !77
  %47 = fsub float %44, %46
  %48 = fmul float %42, %42
  %49 = tail call float @llvm.fmuladd.f32(float %37, float %37, float %48)
  %50 = tail call float @llvm.fmuladd.f32(float %47, float %47, float %49)
  %51 = tail call float @sqrtf(float noundef %50) #11
  %52 = fmul float %31, %51
  %53 = fmul float %30, %51
  %54 = fmul float %32, %51
  %55 = load float, ptr %34, align 4, !tbaa !77
  %56 = fadd float %55, %52
  store float %56, ptr %33, align 4, !tbaa !77
  %57 = load float, ptr %40, align 4, !tbaa !77
  %58 = fadd float %53, %57
  store float %58, ptr %38, align 4, !tbaa !77
  %59 = load float, ptr %45, align 4, !tbaa !77
  %60 = fadd float %54, %59
  store float %60, ptr %43, align 4, !tbaa !77
  %61 = getelementptr inbounds %struct.EditBone, ptr %2, i64 0, i32 6
  %62 = load float, ptr %61, align 8, !tbaa !97
  %63 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 6
  store float %62, ptr %63, align 8, !tbaa !97
  tail call fastcc void @fix_editbone_connected_children(ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @fix_editbone_connected_children(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #9 {
  %3 = load ptr, ptr %0, align 8, !tbaa !48
  %4 = icmp eq ptr %3, null
  br i1 %4, label %63, label %5

5:                                                ; preds = %2, %60
  %6 = phi ptr [ %61, %60 ], [ %3, %2 ]
  %7 = getelementptr inbounds %struct.EditBone, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !99
  %9 = icmp ne ptr %8, null
  %10 = icmp eq ptr %8, %1
  %11 = and i1 %9, %10
  br i1 %11, label %12, label %60

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.EditBone, ptr %6, i64 0, i32 9
  %14 = load i32, ptr %13, align 4, !tbaa !96
  %15 = and i32 %14, 16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %60, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.EditBone, ptr %8, i64 0, i32 8
  %19 = getelementptr inbounds %struct.EditBone, ptr %6, i64 0, i32 7
  %20 = load float, ptr %18, align 4, !tbaa !77
  %21 = load float, ptr %19, align 4, !tbaa !77
  %22 = fcmp oeq float %20, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.EditBone, ptr %8, i64 0, i32 8, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !77
  %26 = getelementptr inbounds %struct.EditBone, ptr %6, i64 0, i32 7, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !77
  %28 = fcmp oeq float %25, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.EditBone, ptr %8, i64 0, i32 8, i64 2
  %31 = load float, ptr %30, align 4, !tbaa !77
  %32 = getelementptr inbounds %struct.EditBone, ptr %6, i64 0, i32 7, i64 2
  %33 = load float, ptr %32, align 4, !tbaa !77
  %34 = fcmp une float %31, %33
  br i1 %34, label %35, label %59

35:                                               ; preds = %23, %17, %29
  %36 = fsub float %20, %21
  %37 = getelementptr inbounds %struct.EditBone, ptr %8, i64 0, i32 8, i64 1
  %38 = load float, ptr %37, align 4, !tbaa !77
  %39 = getelementptr inbounds %struct.EditBone, ptr %6, i64 0, i32 7, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !77
  %41 = fsub float %38, %40
  %42 = getelementptr inbounds %struct.EditBone, ptr %8, i64 0, i32 8, i64 2
  %43 = load float, ptr %42, align 4, !tbaa !77
  %44 = getelementptr inbounds %struct.EditBone, ptr %6, i64 0, i32 7, i64 2
  %45 = load float, ptr %44, align 4, !tbaa !77
  %46 = fsub float %43, %45
  %47 = fadd float %21, %36
  store float %47, ptr %19, align 4, !tbaa !77
  %48 = fadd float %40, %41
  store float %48, ptr %39, align 4, !tbaa !77
  %49 = fadd float %45, %46
  store float %49, ptr %44, align 4, !tbaa !77
  %50 = getelementptr inbounds %struct.EditBone, ptr %6, i64 0, i32 8
  %51 = load float, ptr %50, align 4, !tbaa !77
  %52 = fadd float %36, %51
  store float %52, ptr %50, align 4, !tbaa !77
  %53 = getelementptr inbounds %struct.EditBone, ptr %6, i64 0, i32 8, i64 1
  %54 = load float, ptr %53, align 4, !tbaa !77
  %55 = fadd float %41, %54
  store float %55, ptr %53, align 4, !tbaa !77
  %56 = getelementptr inbounds %struct.EditBone, ptr %6, i64 0, i32 8, i64 2
  %57 = load float, ptr %56, align 4, !tbaa !77
  %58 = fadd float %46, %57
  store float %58, ptr %56, align 4, !tbaa !77
  br label %59

59:                                               ; preds = %29, %35
  tail call fastcc void @fix_editbone_connected_children(ptr noundef nonnull %0, ptr noundef nonnull %6)
  br label %60

60:                                               ; preds = %5, %12, %59
  %61 = load ptr, ptr %6, align 8, !tbaa !48
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %5, !llvm.loop !160

63:                                               ; preds = %60, %2
  ret void
}

declare void @ED_armature_ebone_select_set(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare i32 @CTX_data_selected_bones(ptr noundef, ptr noundef) #2

declare void @armature_select_mirrored(ptr noundef) local_unnamed_addr #2

declare ptr @ED_armature_bone_find_name(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_pose_channel_free(ptr noundef) local_unnamed_addr #2

declare void @BKE_pose_channels_hash_free(ptr noundef) local_unnamed_addr #2

declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_constraint_typeinfo_get(ptr noundef) local_unnamed_addr #2

declare void @ED_armature_edit_bone_remove(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_armature_validate_active(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { nounwind }

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
!34 = !{!35, !37, i64 296}
!35 = !{!"Object", !36, i64 0, !37, i64 120, !37, i64 128, !40, i64 136, !40, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !42, i64 312, !37, i64 360, !43, i64 368, !43, i64 384, !43, i64 400, !43, i64 416, !41, i64 432, !41, i64 436, !37, i64 440, !37, i64 448, !41, i64 456, !41, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !44, i64 616, !44, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !41, i64 944, !40, i64 948, !40, i64 950, !40, i64 952, !40, i64 954, !40, i64 956, !40, i64 958, !40, i64 960, !40, i64 962, !40, i64 964, !38, i64 966, !38, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !44, i64 988, !44, i64 992, !44, i64 996, !44, i64 1000, !44, i64 1004, !44, i64 1008, !44, i64 1012, !44, i64 1016, !44, i64 1020, !44, i64 1024, !44, i64 1028, !44, i64 1032, !40, i64 1036, !40, i64 1038, !40, i64 1040, !38, i64 1042, !38, i64 1043, !40, i64 1044, !38, i64 1046, !38, i64 1047, !44, i64 1048, !44, i64 1052, !43, i64 1056, !43, i64 1072, !43, i64 1088, !43, i64 1104, !44, i64 1120, !40, i64 1124, !40, i64 1126, !38, i64 1128, !41, i64 1144, !41, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !40, i64 1162, !38, i64 1164, !43, i64 1176, !43, i64 1192, !43, i64 1208, !43, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !40, i64 1266, !44, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !45, i64 1304, !45, i64 1312, !41, i64 1320, !41, i64 1324, !43, i64 1328, !43, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !43, i64 1400, !37, i64 1416}
!36 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !40, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !37, i64 112}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"short", !38, i64 0}
!41 = !{!"int", !38, i64 0}
!42 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!43 = !{!"ListBase", !37, i64 0, !37, i64 8}
!44 = !{!"float", !38, i64 0}
!45 = !{!"long", !38, i64 0}
!46 = !{!47, !37, i64 160}
!47 = !{!"bArmature", !36, i64 0, !37, i64 120, !43, i64 128, !43, i64 144, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !41, i64 192, !41, i64 196, !41, i64 200, !41, i64 204, !40, i64 208, !40, i64 210, !41, i64 212, !41, i64 216, !41, i64 220, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !41, i64 232, !41, i64 236, !41, i64 240, !41, i64 244, !41, i64 248, !41, i64 252}
!48 = !{!37, !37, i64 0}
!49 = !{!50, !44, i64 168}
!50 = !{!"EditBone", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !38, i64 40, !44, i64 104, !38, i64 108, !38, i64 120, !41, i64 132, !41, i64 136, !44, i64 140, !44, i64 144, !44, i64 148, !44, i64 152, !44, i64 156, !44, i64 160, !44, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !40, i64 180}
!51 = !{!50, !44, i64 172}
!52 = !{!50, !44, i64 140}
!53 = !{!50, !44, i64 148}
!54 = !{!50, !44, i64 156}
!55 = distinct !{!55, !56, !57}
!56 = !{!"llvm.loop.mustprogress"}
!57 = !{!"llvm.loop.unroll.disable"}
!58 = !{!59, !37, i64 176}
!59 = !{!"Scene", !36, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !43, i64 152, !37, i64 168, !37, i64 176, !38, i64 184, !38, i64 196, !38, i64 208, !38, i64 220, !41, i64 232, !41, i64 236, !41, i64 240, !40, i64 244, !38, i64 246, !38, i64 247, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !60, i64 280, !69, i64 4264, !43, i64 4296, !43, i64 4312, !37, i64 4328, !37, i64 4336, !37, i64 4344, !37, i64 4352, !37, i64 4360, !37, i64 4368, !40, i64 4376, !40, i64 4378, !41, i64 4380, !43, i64 4384, !70, i64 4400, !71, i64 4416, !74, i64 4600, !37, i64 4608, !75, i64 4616, !37, i64 4640, !45, i64 4648, !45, i64 4656, !62, i64 4664, !63, i64 4824, !76, i64 4888, !37, i64 4952}
!60 = !{!"RenderData", !61, i64 0, !37, i64 248, !37, i64 256, !64, i64 264, !65, i64 328, !41, i64 400, !41, i64 404, !41, i64 408, !44, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !41, i64 428, !40, i64 432, !40, i64 434, !44, i64 436, !44, i64 440, !44, i64 444, !44, i64 448, !44, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !41, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !41, i64 484, !41, i64 488, !40, i64 492, !40, i64 494, !41, i64 496, !41, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !38, i64 514, !38, i64 515, !41, i64 516, !41, i64 520, !41, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !66, i64 544, !66, i64 560, !67, i64 576, !43, i64 592, !40, i64 608, !40, i64 610, !44, i64 612, !44, i64 616, !44, i64 620, !44, i64 624, !41, i64 628, !44, i64 632, !44, i64 636, !44, i64 640, !44, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !44, i64 660, !44, i64 664, !40, i64 668, !40, i64 670, !44, i64 672, !44, i64 676, !38, i64 680, !41, i64 1704, !40, i64 1708, !40, i64 1710, !38, i64 1712, !38, i64 2480, !38, i64 2496, !38, i64 2512, !38, i64 2513, !38, i64 2514, !38, i64 2515, !41, i64 2520, !40, i64 2524, !40, i64 2526, !44, i64 2528, !44, i64 2532, !40, i64 2536, !40, i64 2538, !44, i64 2540, !40, i64 2544, !40, i64 2546, !41, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !44, i64 2560, !44, i64 2564, !37, i64 2568, !41, i64 2576, !44, i64 2580, !38, i64 2584, !68, i64 2616, !41, i64 3976, !41, i64 3980}
!61 = !{!"ImageFormatData", !38, i64 0, !38, i64 1, !38, i64 2, !38, i64 3, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !40, i64 8, !40, i64 10, !44, i64 12, !38, i64 16, !38, i64 17, !38, i64 18, !62, i64 24, !63, i64 184}
!62 = !{!"ColorManagedViewSettings", !41, i64 0, !41, i64 4, !38, i64 8, !38, i64 72, !44, i64 136, !44, i64 140, !37, i64 144, !37, i64 152}
!63 = !{!"ColorManagedDisplaySettings", !38, i64 0}
!64 = !{!"QuicktimeCodecSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !40, i64 48, !40, i64 50, !41, i64 52, !41, i64 56, !41, i64 60}
!65 = !{!"FFMpegCodecData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !44, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !37, i64 64}
!66 = !{!"rctf", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12}
!67 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!68 = !{!"BakeData", !61, i64 0, !38, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !44, i64 1280, !44, i64 1284, !38, i64 1288, !38, i64 1291, !38, i64 1292, !38, i64 1293, !38, i64 1296}
!69 = !{!"AudioData", !41, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !41, i64 16, !40, i64 20, !40, i64 22, !44, i64 24, !44, i64 28}
!70 = !{!"GameFraming", !38, i64 0, !38, i64 12, !38, i64 13, !38, i64 14, !38, i64 15}
!71 = !{!"GameData", !70, i64 0, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !40, i64 32, !38, i64 34, !72, i64 40, !40, i64 64, !40, i64 66, !44, i64 68, !73, i64 72, !44, i64 128, !44, i64 132, !41, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !40, i64 148, !40, i64 150, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !40, i64 160, !40, i64 162, !44, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !44, i64 180}
!72 = !{!"GameDome", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !44, i64 8, !44, i64 12, !37, i64 16}
!73 = !{!"RecastData", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !44, i64 32, !44, i64 36, !41, i64 40, !44, i64 44, !44, i64 48, !40, i64 52, !40, i64 54}
!74 = !{!"UnitSettings", !44, i64 0, !38, i64 4, !38, i64 5, !40, i64 6}
!75 = !{!"PhysicsSettings", !38, i64 0, !41, i64 12, !41, i64 16, !41, i64 20}
!76 = !{!"ColorManagedColorspaceSettings", !38, i64 0}
!77 = !{!44, !44, i64 0}
!78 = distinct !{!78, !56, !57}
!79 = distinct !{!79, !56, !57}
!80 = distinct !{!80, !56, !57}
!81 = !{!82, !37, i64 0}
!82 = !{!"wmOperatorType", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !43, i64 112, !37, i64 128, !37, i64 136, !37, i64 144, !83, i64 152, !40, i64 184}
!83 = !{!"ExtensionRNA", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24}
!84 = !{!82, !37, i64 8}
!85 = !{!82, !37, i64 24}
!86 = !{!82, !37, i64 48}
!87 = !{!82, !37, i64 32}
!88 = !{!82, !37, i64 72}
!89 = !{!82, !40, i64 184}
!90 = !{!82, !37, i64 88}
!91 = !{!82, !37, i64 104}
!92 = !{!93, !37, i64 112}
!93 = !{!"wmOperator", !37, i64 0, !37, i64 8, !38, i64 16, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !43, i64 128, !37, i64 144, !37, i64 152, !40, i64 160, !38, i64 162}
!94 = !{!47, !41, i64 216}
!95 = !{!50, !41, i64 136}
!96 = !{!50, !41, i64 132}
!97 = !{!50, !44, i64 104}
!98 = distinct !{!98, !56, !57}
!99 = !{!50, !37, i64 24}
!100 = distinct !{!100, !56, !57}
!101 = distinct !{!101, !56, !57}
!102 = !{!93, !37, i64 120}
!103 = !{!47, !37, i64 176}
!104 = distinct !{!104, !56, !57}
!105 = !{!47, !41, i64 192}
!106 = distinct !{!106, !56, !57}
!107 = !{!108, !37, i64 32}
!108 = !{!"CollectionPointerLink", !37, i64 0, !37, i64 8, !109, i64 16}
!109 = !{!"PointerRNA", !110, i64 0, !37, i64 8, !37, i64 16}
!110 = !{!"", !37, i64 0}
!111 = !{!112, !37, i64 24}
!112 = !{!"EditBonePoint", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32}
!113 = !{!112, !37, i64 16}
!114 = distinct !{!114, !56, !57}
!115 = distinct !{!115, !56, !57}
!116 = !{!43, !37, i64 0}
!117 = !{!112, !37, i64 0}
!118 = distinct !{!118, !56, !57}
!119 = distinct !{!119, !56, !57}
!120 = distinct !{!120, !56, !57}
!121 = !{!122, !37, i64 16}
!122 = !{!"LinkData", !37, i64 0, !37, i64 8, !37, i64 16}
!123 = distinct !{!123, !56, !57}
!124 = distinct !{!124, !56, !57}
!125 = !{!122, !37, i64 0}
!126 = distinct !{!126, !56, !57}
!127 = distinct !{!127, !56, !57}
!128 = distinct !{!128, !56, !57}
!129 = distinct !{!129, !56, !57}
!130 = distinct !{!130, !56, !57}
!131 = distinct !{!131, !56, !57}
!132 = distinct !{!132, !56, !57}
!133 = distinct !{!133, !56, !57}
!134 = !{!35, !37, i64 288}
!135 = !{!136, !37, i64 0}
!136 = !{!"bPose", !43, i64 0, !37, i64 16, !40, i64 24, !40, i64 26, !41, i64 28, !41, i64 32, !44, i64 36, !38, i64 40, !38, i64 52, !43, i64 64, !41, i64 80, !41, i64 84, !37, i64 88, !37, i64 96, !42, i64 104, !38, i64 152}
!137 = !{!138, !37, i64 0}
!138 = !{!"bPoseChannel", !37, i64 0, !37, i64 8, !37, i64 16, !43, i64 24, !38, i64 40, !40, i64 104, !40, i64 106, !40, i64 108, !40, i64 110, !38, i64 112, !38, i64 113, !38, i64 114, !37, i64 120, !37, i64 128, !37, i64 136, !43, i64 144, !43, i64 160, !37, i64 176, !37, i64 184, !37, i64 192, !38, i64 200, !38, i64 212, !38, i64 224, !38, i64 236, !38, i64 252, !44, i64 264, !40, i64 268, !40, i64 270, !38, i64 272, !38, i64 336, !38, i64 400, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !44, i64 524, !44, i64 528, !44, i64 532, !37, i64 536}
!139 = !{!140, !37, i64 104}
!140 = !{!"bConstraintTypeInfo", !40, i64 0, !40, i64 2, !38, i64 4, !38, i64 36, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !37, i64 128}
!141 = !{!142, !37, i64 16}
!142 = !{!"bConstraintTarget", !37, i64 0, !37, i64 8, !37, i64 16, !38, i64 24, !38, i64 88, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158}
!143 = !{!38, !38, i64 0}
!144 = !{!145, !40, i64 26}
!145 = !{!"bConstraint", !37, i64 0, !37, i64 8, !37, i64 16, !40, i64 24, !40, i64 26, !38, i64 28, !38, i64 29, !38, i64 30, !40, i64 94, !44, i64 96, !44, i64 100, !37, i64 104, !44, i64 112, !44, i64 116}
!146 = distinct !{!146, !56, !57}
!147 = !{!140, !37, i64 112}
!148 = distinct !{!148, !56, !57}
!149 = distinct !{!149, !56, !57}
!150 = !{!50, !37, i64 0}
!151 = distinct !{!151, !56, !57}
!152 = distinct !{!152, !56, !57}
!153 = distinct !{!153, !56, !57}
!154 = !{!155, !41, i64 2100}
!155 = !{!"Global", !37, i64 0, !38, i64 8, !38, i64 1032, !38, i64 2056, !38, i64 2057, !38, i64 2058, !43, i64 2064, !38, i64 2080, !38, i64 2081, !38, i64 2082, !40, i64 2084, !40, i64 2086, !40, i64 2088, !38, i64 2090, !40, i64 2092, !41, i64 2096, !41, i64 2100, !38, i64 2104, !41, i64 2108, !41, i64 2112, !38, i64 2116}
!156 = distinct !{!156, !56, !57}
!157 = distinct !{!157, !56, !57}
!158 = distinct !{!158, !56, !57}
!159 = distinct !{!159, !56, !57}
!160 = distinct !{!160, !56, !57}
