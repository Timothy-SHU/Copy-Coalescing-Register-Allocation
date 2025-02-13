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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_armature_apply_transform(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  tail call void @ED_armature_to_edit(ptr noundef %4) #16
  tail call void @ED_armature_transform_bones(ptr noundef %4, ptr noundef %1) #17
  tail call void @ED_armature_from_edit(ptr noundef %4) #16
  tail call void @ED_armature_edit_free(ptr noundef %4) #16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @ED_armature_to_edit(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_armature_transform_bones(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [3 x [3 x float]], align 16
  %4 = alloca [3 x [3 x float]], align 16
  %5 = tail call float @mat4_to_scale(ptr noundef %1) #16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #18
  call void @copy_m3_m4(ptr noundef nonnull %3, ptr noundef %1) #16
  call void @normalize_m3(ptr noundef nonnull %3) #16
  %6 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = icmp eq ptr %8, null
  br i1 %9, label %32, label %10

10:                                               ; preds = %2
  %11 = insertelement <2 x float> poison, float %5, i64 0
  %12 = shufflevector <2 x float> %11, <2 x float> poison, <2 x i32> zeroinitializer
  br label %13

13:                                               ; preds = %10, %13
  %14 = phi ptr [ %30, %13 ], [ %8, %10 ]
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #18
  call void @ED_armature_ebone_to_mat3(ptr noundef nonnull %14, ptr noundef nonnull %4) #16
  call void @mul_m3_m3m3(ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef nonnull %4) #16
  %15 = getelementptr inbounds %struct.EditBone, ptr %14, i64 0, i32 7
  call void @mul_m4_v3(ptr noundef %1, ptr noundef nonnull %15) #16
  %16 = getelementptr inbounds %struct.EditBone, ptr %14, i64 0, i32 8
  call void @mul_m4_v3(ptr noundef %1, ptr noundef nonnull %16) #16
  %17 = getelementptr inbounds %struct.EditBone, ptr %14, i64 0, i32 6
  call void @mat3_to_vec_roll(ptr noundef nonnull %4, ptr noundef null, ptr noundef nonnull %17) #16
  %18 = getelementptr inbounds %struct.EditBone, ptr %14, i64 0, i32 18
  %19 = load <2 x float>, ptr %18, align 8, !tbaa !49
  %20 = fmul <2 x float> %12, %19
  store <2 x float> %20, ptr %18, align 8, !tbaa !49
  %21 = getelementptr inbounds %struct.EditBone, ptr %14, i64 0, i32 11
  %22 = load float, ptr %21, align 4, !tbaa !50
  %23 = fmul float %5, %22
  store float %23, ptr %21, align 4, !tbaa !50
  %24 = getelementptr inbounds %struct.EditBone, ptr %14, i64 0, i32 13
  %25 = load float, ptr %24, align 4, !tbaa !52
  %26 = fmul float %5, %25
  store float %26, ptr %24, align 4, !tbaa !52
  %27 = getelementptr inbounds %struct.EditBone, ptr %14, i64 0, i32 15
  %28 = load float, ptr %27, align 4, !tbaa !53
  %29 = fmul float %5, %28
  store float %29, ptr %27, align 4, !tbaa !53
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #18
  %30 = load ptr, ptr %14, align 8, !tbaa !48
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %13, !llvm.loop !54

32:                                               ; preds = %13, %2
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #18
  ret void
}

; Function Attrs: optsize
declare void @ED_armature_from_edit(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_armature_edit_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare float @mat4_to_scale(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @normalize_m3(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_armature_ebone_to_mat3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_m3_m3m3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mat3_to_vec_roll(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_armature_transform(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @ED_armature_transform_bones(ptr noundef nonnull %0, ptr noundef %1) #17
  br label %8

7:                                                ; preds = %2
  tail call void @ED_armature_to_edit(ptr noundef nonnull %0) #16
  tail call void @ED_armature_transform_bones(ptr noundef nonnull %0, ptr noundef %1) #17
  tail call void @ED_armature_from_edit(ptr noundef nonnull %0) #16
  tail call void @ED_armature_edit_free(ptr noundef nonnull %0) #16
  br label %8

8:                                                ; preds = %7, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_armature_origin_set(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 8
  %8 = alloca [3 x float], align 8
  %9 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !56
  %11 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #18
  %13 = icmp eq ptr %10, %1
  br i1 %13, label %15, label %14

14:                                               ; preds = %5
  tail call void @ED_armature_to_edit(ptr noundef %12) #16
  br label %15

15:                                               ; preds = %14, %5
  %16 = phi ptr [ null, %14 ], [ %1, %5 ]
  %17 = icmp eq i32 %3, 2
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef %2) #17
  %19 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 50
  %20 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  %21 = tail call zeroext i8 @invert_m4_m4(ptr noundef nonnull %19, ptr noundef nonnull %20) #16
  call void @mul_m4_v3(ptr noundef nonnull %19, ptr noundef nonnull %6) #16
  br label %54

22:                                               ; preds = %15
  %23 = icmp eq i32 %4, 3
  br i1 %23, label %24, label %40

24:                                               ; preds = %22
  call fastcc void @zero_v3(ptr noundef nonnull %6) #17
  %25 = getelementptr inbounds %struct.bArmature, ptr %12, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !46
  %27 = load ptr, ptr %26, align 8, !tbaa !48
  %28 = icmp eq ptr %27, null
  br i1 %28, label %54, label %29

29:                                               ; preds = %24, %29
  %30 = phi ptr [ %35, %29 ], [ %27, %24 ]
  %31 = phi i32 [ %32, %29 ], [ 0, %24 ]
  %32 = add nuw nsw i32 %31, 2
  %33 = getelementptr inbounds %struct.EditBone, ptr %30, i64 0, i32 7
  call fastcc void @add_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %33) #17
  %34 = getelementptr inbounds %struct.EditBone, ptr %30, i64 0, i32 8
  call fastcc void @add_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %34) #17
  %35 = load ptr, ptr %30, align 8, !tbaa !48
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %29, !llvm.loop !75

37:                                               ; preds = %29
  %38 = sitofp i32 %32 to float
  %39 = fdiv float 1.000000e+00, %38
  call fastcc void @mul_v3_fl(ptr noundef nonnull %6, float noundef %39) #17
  br label %54

40:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #18
  %41 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  store float 0x46293E5940000000, ptr %41, align 8, !tbaa !49
  store <2 x float> <float 0x46293E5940000000, float 0x46293E5940000000>, ptr %7, align 8, !tbaa !49
  %42 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  store float 0xC6293E5940000000, ptr %42, align 8, !tbaa !49
  store <2 x float> <float 0xC6293E5940000000, float 0xC6293E5940000000>, ptr %8, align 8, !tbaa !49
  %43 = getelementptr inbounds %struct.bArmature, ptr %12, i64 0, i32 4
  %44 = load ptr, ptr %43, align 8, !tbaa !46
  %45 = load ptr, ptr %44, align 8, !tbaa !48
  %46 = icmp eq ptr %45, null
  br i1 %46, label %53, label %47

47:                                               ; preds = %40, %47
  %48 = phi ptr [ %51, %47 ], [ %45, %40 ]
  %49 = getelementptr inbounds %struct.EditBone, ptr %48, i64 0, i32 7
  call void @minmax_v3v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %49) #16
  %50 = getelementptr inbounds %struct.EditBone, ptr %48, i64 0, i32 8
  call void @minmax_v3v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %50) #16
  %51 = load ptr, ptr %48, align 8, !tbaa !48
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %47, !llvm.loop !76

53:                                               ; preds = %47, %40
  call void @mid_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #18
  br label %54

54:                                               ; preds = %24, %37, %53, %18
  %55 = getelementptr inbounds %struct.bArmature, ptr %12, i64 0, i32 4
  %56 = load ptr, ptr %55, align 8, !tbaa !46
  %57 = load ptr, ptr %56, align 8, !tbaa !48
  %58 = icmp eq ptr %57, null
  br i1 %58, label %65, label %59

59:                                               ; preds = %54, %59
  %60 = phi ptr [ %63, %59 ], [ %57, %54 ]
  %61 = getelementptr inbounds %struct.EditBone, ptr %60, i64 0, i32 7
  call fastcc void @sub_v3_v3(ptr noundef nonnull %61, ptr noundef nonnull %6) #17
  %62 = getelementptr inbounds %struct.EditBone, ptr %60, i64 0, i32 8
  call fastcc void @sub_v3_v3(ptr noundef nonnull %62, ptr noundef nonnull %6) #17
  %63 = load ptr, ptr %60, align 8, !tbaa !48
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %59, !llvm.loop !77

65:                                               ; preds = %59, %54
  %66 = icmp eq ptr %16, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %65
  call void @ED_armature_from_edit(ptr noundef %12) #16
  call void @ED_armature_edit_free(ptr noundef %12) #16
  %68 = icmp eq i32 %3, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %67
  %70 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  call void @mul_mat3_m4_v3(ptr noundef nonnull %70, ptr noundef nonnull %6) #16
  %71 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 33
  call fastcc void @add_v3_v3(ptr noundef nonnull %71, ptr noundef nonnull %6) #17
  br label %72

72:                                               ; preds = %65, %69, %67
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !78 {
  %3 = load float, ptr %1, align 4, !tbaa !49
  store float %3, ptr %0, align 4, !tbaa !49
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !49
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !49
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !49
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !49
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #4 !PGOFuncName !79 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !49
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !80 {
  %3 = load float, ptr %1, align 4, !tbaa !49
  %4 = load float, ptr %0, align 4, !tbaa !49
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !49
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !49
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !49
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !49
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !49
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !49
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #3 !PGOFuncName !81 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !49
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !49
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !49
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !49
  ret void
}

; Function Attrs: optsize
declare void @minmax_v3v3_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !82 {
  %3 = load float, ptr %1, align 4, !tbaa !49
  %4 = load float, ptr %0, align 4, !tbaa !49
  %5 = fsub float %4, %3
  store float %5, ptr %0, align 4, !tbaa !49
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !49
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !49
  %10 = fsub float %9, %7
  store float %10, ptr %8, align 4, !tbaa !49
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !49
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !49
  %15 = fsub float %14, %12
  store float %15, ptr %13, align 4, !tbaa !49
  ret void
}

; Function Attrs: optsize
declare void @mul_mat3_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @ED_rollBoneToVector(ptr nocapture noundef readonly %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca [3 x [3 x float]], align 16
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #18
  %8 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 8
  %9 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 7
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %8, ptr noundef nonnull %9) #17
  %10 = call fastcc float @normalize_v3(ptr noundef nonnull %5) #17
  %11 = fcmp ugt float %10, 0x3E80000000000000
  br i1 %11, label %12, label %30

12:                                               ; preds = %3
  %13 = call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef nonnull %5) #17
  %14 = tail call float @llvm.fabs.f32(float %13)
  %15 = fcmp ult float %14, 0x3FEFFFFFC0000000
  br i1 %15, label %16, label %30

16:                                               ; preds = %12
  call void @vec_roll_to_mat3_normalized(ptr noundef nonnull %5, float noundef 0.000000e+00, ptr noundef nonnull %4) #16
  call void @project_v3_v3v3(ptr noundef nonnull %6, ptr noundef %1, ptr noundef nonnull %5) #16
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %7, ptr noundef %1, ptr noundef nonnull %6) #17
  %17 = icmp eq i8 %2, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 2
  %20 = call float @angle_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %19) #16
  %21 = fcmp ogt float %20, 0x3FF921FB60000000
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  call fastcc void @negate_v3(ptr noundef nonnull %7) #17
  br label %23

23:                                               ; preds = %18, %22, %16
  %24 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 2
  %25 = call float @angle_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %24) #16
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %24, ptr noundef nonnull %7) #17
  %26 = call fastcc float @dot_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %5) #17
  %27 = fcmp olt float %26, 0.000000e+00
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = fneg float %25
  br label %30

30:                                               ; preds = %23, %3, %12, %28
  %31 = phi float [ %29, %28 ], [ 0.000000e+00, %12 ], [ 0.000000e+00, %3 ], [ %25, %23 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #18
  ret float %31
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 !PGOFuncName !83 {
  %4 = load float, ptr %1, align 4, !tbaa !49
  %5 = load float, ptr %2, align 4, !tbaa !49
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !49
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !49
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !49
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !49
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !49
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !49
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3(ptr nocapture noundef %0) unnamed_addr #5 !PGOFuncName !84 {
  %2 = tail call fastcc float @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #17
  ret float %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !85 {
  %3 = load float, ptr %0, align 4, !tbaa !49
  %4 = load float, ptr %1, align 4, !tbaa !49
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !49
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !49
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !49
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !49
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

; Function Attrs: optsize
declare void @vec_roll_to_mat3_normalized(ptr noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @project_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @angle_v3v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v3(ptr nocapture noundef %0) unnamed_addr #3 !PGOFuncName !86 {
  %2 = load <2 x float>, ptr %0, align 4, !tbaa !49
  %3 = fneg <2 x float> %2
  store <2 x float> %3, ptr %0, align 4, !tbaa !49
  %4 = getelementptr inbounds float, ptr %0, i64 2
  %5 = load float, ptr %4, align 4, !tbaa !49
  %6 = fneg float %5
  store float %6, ptr %4, align 4, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @cross_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 !PGOFuncName !87 {
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !49
  %6 = getelementptr inbounds float, ptr %2, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !49
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !49
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !49
  %12 = fneg float %9
  %13 = fmul float %11, %12
  %14 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %13)
  store float %14, ptr %0, align 4, !tbaa !49
  %15 = load float, ptr %8, align 4, !tbaa !49
  %16 = load float, ptr %2, align 4, !tbaa !49
  %17 = load float, ptr %1, align 4, !tbaa !49
  %18 = load float, ptr %6, align 4, !tbaa !49
  %19 = fneg float %17
  %20 = fmul float %18, %19
  %21 = tail call float @llvm.fmuladd.f32(float %15, float %16, float %20)
  %22 = getelementptr inbounds float, ptr %0, i64 1
  store float %21, ptr %22, align 4, !tbaa !49
  %23 = load float, ptr %1, align 4, !tbaa !49
  %24 = load float, ptr %10, align 4, !tbaa !49
  %25 = load float, ptr %4, align 4, !tbaa !49
  %26 = load float, ptr %2, align 4, !tbaa !49
  %27 = fneg float %25
  %28 = fmul float %26, %27
  %29 = tail call float @llvm.fmuladd.f32(float %23, float %24, float %28)
  %30 = getelementptr inbounds float, ptr %0, i64 2
  store float %29, ptr %30, align 4, !tbaa !49
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ARMATURE_OT_calculate_roll(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !88
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.1, ptr %2, align 8, !tbaa !91
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %3, align 8, !tbaa !92
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !93
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @armature_calc_roll_exec, ptr %5, align 8, !tbaa !94
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editarmature, ptr %6, align 8, !tbaa !95
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !96
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !97
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.3, ptr noundef nonnull @prop_calc_roll_types, i32 noundef 3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #16
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !98
  %12 = load ptr, ptr %8, align 8, !tbaa !97
  %13 = tail call ptr @RNA_def_boolean(ptr noundef %12, ptr noundef nonnull @.str.6, i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #16
  %14 = load ptr, ptr %8, align 8, !tbaa !97
  %15 = tail call ptr @RNA_def_boolean(ptr noundef %14, ptr noundef nonnull @.str.9, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #16
  ret void
}

; Function Attrs: optsize
declare i32 @WM_menu_invoke(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @armature_calc_roll_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !99 {
  %3 = alloca [3 x [3 x float]], align 16
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x [3 x float]], align 16
  %11 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #16
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !100
  %14 = tail call i32 @RNA_enum_get(ptr noundef %13, ptr noundef nonnull @.str.3) #16
  %15 = zext i32 %14 to i64
  %16 = load ptr, ptr %12, align 8, !tbaa !100
  %17 = tail call i32 @RNA_boolean_get(ptr noundef %16, ptr noundef nonnull @.str.9) #16
  %18 = trunc i32 %17 to i8
  %19 = load ptr, ptr %12, align 8, !tbaa !100
  %20 = tail call i32 @RNA_boolean_get(ptr noundef %19, ptr noundef nonnull @.str.6) #16
  %21 = trunc i32 %20 to i8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #18
  %22 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 19
  %23 = load ptr, ptr %22, align 8, !tbaa !34
  %24 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 47
  call void @copy_m3_m4(ptr noundef nonnull %3, ptr noundef nonnull %24) #16
  %25 = call zeroext i8 @invert_m3(ptr noundef nonnull %3) #16
  %26 = shl i32 %14, 16
  %27 = ashr exact i32 %26, 16
  %28 = icmp eq i32 %26, 458752
  br i1 %28, label %29, label %66

29:                                               ; preds = %2
  %30 = call ptr @CTX_data_scene(ptr noundef %0) #16
  %31 = call ptr @CTX_wm_view3d(ptr noundef %0) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #18
  %32 = call ptr @ED_view3d_cursor3d_get(ptr noundef %30, ptr noundef %31) #16
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef %32) #17
  call void @mul_m3_v3(ptr noundef nonnull %3, ptr noundef nonnull %4) #16
  %33 = getelementptr inbounds %struct.bArmature, ptr %23, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !46
  %35 = load ptr, ptr %34, align 8, !tbaa !48
  %36 = icmp eq ptr %35, null
  br i1 %36, label %65, label %37

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.bArmature, ptr %23, i64 0, i32 15
  %39 = icmp eq i8 %21, 0
  br label %40

40:                                               ; preds = %37, %62
  %41 = phi ptr [ %35, %37 ], [ %63, %62 ]
  %42 = load i32, ptr %38, align 8, !tbaa !102
  %43 = getelementptr inbounds %struct.EditBone, ptr %41, i64 0, i32 10
  %44 = load i32, ptr %43, align 8, !tbaa !103
  %45 = and i32 %44, %42
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %62, label %47

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.EditBone, ptr %41, i64 0, i32 9
  %49 = load i32, ptr %48, align 4, !tbaa !104
  %50 = and i32 %49, 525313
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %62

52:                                               ; preds = %47
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #18
  %53 = getelementptr inbounds %struct.EditBone, ptr %41, i64 0, i32 7
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %53) #17
  br i1 %39, label %55, label %54

54:                                               ; preds = %52
  call fastcc void @negate_v3(ptr noundef nonnull %5) #17
  br label %55

55:                                               ; preds = %54, %52
  %56 = call fastcc float @normalize_v3(ptr noundef nonnull %5) #17
  %57 = fcmp une float %56, 0.000000e+00
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = call float @ED_rollBoneToVector(ptr noundef nonnull %41, ptr noundef nonnull %5, i8 noundef zeroext %18) #17
  %60 = getelementptr inbounds %struct.EditBone, ptr %41, i64 0, i32 6
  store float %59, ptr %60, align 8, !tbaa !105
  br label %61

61:                                               ; preds = %58, %55
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #18
  br label %62

62:                                               ; preds = %47, %61, %40
  %63 = load ptr, ptr %41, align 8, !tbaa !48
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %40, !llvm.loop !106

65:                                               ; preds = %62, %29
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #18
  br label %206

66:                                               ; preds = %2
  %67 = icmp eq i32 %26, 262144
  switch i32 %26, label %150 [
    i32 262144, label %68
    i32 196608, label %68
  ]

68:                                               ; preds = %66, %66
  %69 = getelementptr inbounds %struct.bArmature, ptr %23, i64 0, i32 4
  %70 = load ptr, ptr %69, align 8, !tbaa !46
  %71 = load ptr, ptr %70, align 8, !tbaa !48
  %72 = icmp eq ptr %71, null
  br i1 %72, label %206, label %73

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.bArmature, ptr %23, i64 0, i32 15
  %75 = icmp eq i8 %21, 0
  br label %76

76:                                               ; preds = %73, %147
  %77 = phi ptr [ %71, %73 ], [ %148, %147 ]
  %78 = getelementptr inbounds %struct.EditBone, ptr %77, i64 0, i32 3
  %79 = load ptr, ptr %78, align 8, !tbaa !107
  %80 = icmp eq ptr %79, null
  br i1 %80, label %147, label %81

81:                                               ; preds = %76
  %82 = load i32, ptr %74, align 8, !tbaa !102
  %83 = getelementptr inbounds %struct.EditBone, ptr %77, i64 0, i32 10
  %84 = load i32, ptr %83, align 8, !tbaa !103
  %85 = and i32 %84, %82
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %95, label %87

87:                                               ; preds = %81
  %88 = getelementptr inbounds %struct.EditBone, ptr %77, i64 0, i32 9
  %89 = load i32, ptr %88, align 4, !tbaa !104
  %90 = and i32 %89, 1025
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = and i32 %89, 524288
  %94 = icmp eq i32 %93, 0
  br label %95

95:                                               ; preds = %81, %92, %87
  %96 = phi i1 [ false, %87 ], [ %94, %92 ], [ false, %81 ]
  %97 = getelementptr inbounds %struct.EditBone, ptr %79, i64 0, i32 10
  %98 = load i32, ptr %97, align 8, !tbaa !103
  %99 = and i32 %98, %82
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %109, label %101

101:                                              ; preds = %95
  %102 = getelementptr inbounds %struct.EditBone, ptr %79, i64 0, i32 9
  %103 = load i32, ptr %102, align 4, !tbaa !104
  %104 = and i32 %103, 1025
  %105 = icmp eq i32 %104, 1
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = and i32 %103, 524288
  %108 = icmp eq i32 %107, 0
  br label %109

109:                                              ; preds = %95, %106, %101
  %110 = phi i1 [ false, %101 ], [ %108, %106 ], [ false, %95 ]
  %111 = or i1 %96, %110
  br i1 %111, label %112, label %147

112:                                              ; preds = %109
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #18
  %113 = getelementptr inbounds %struct.EditBone, ptr %77, i64 0, i32 8
  %114 = getelementptr inbounds %struct.EditBone, ptr %77, i64 0, i32 7
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %113, ptr noundef nonnull %114) #17
  %115 = call fastcc float @normalize_v3(ptr noundef nonnull %6) #17
  br label %116

116:                                              ; preds = %126, %112
  %117 = phi ptr [ %79, %112 ], [ %128, %126 ]
  %118 = getelementptr inbounds %struct.EditBone, ptr %117, i64 0, i32 7
  %119 = getelementptr inbounds %struct.EditBone, ptr %117, i64 0, i32 8
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %118, ptr noundef nonnull %119) #17
  %120 = call fastcc float @normalize_v3(ptr noundef nonnull %7) #17
  br i1 %67, label %121, label %122

121:                                              ; preds = %116
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %6, ptr noundef nonnull %7) #17
  br label %123

122:                                              ; preds = %116
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %6, ptr noundef nonnull %7) #17
  br label %123

123:                                              ; preds = %121, %122
  %124 = call fastcc float @normalize_v3(ptr noundef nonnull %8) #17
  %125 = fcmp olt float %124, 0x3EE4F8B580000000
  br i1 %125, label %126, label %130

126:                                              ; preds = %123
  %127 = getelementptr inbounds %struct.EditBone, ptr %117, i64 0, i32 3
  %128 = load ptr, ptr %127, align 8, !tbaa !107
  %129 = icmp eq ptr %128, null
  br i1 %129, label %146, label %116, !llvm.loop !108

130:                                              ; preds = %123
  br i1 %75, label %132, label %131

131:                                              ; preds = %130
  call fastcc void @negate_v3(ptr noundef nonnull %8) #17
  br label %132

132:                                              ; preds = %131, %130
  br i1 %96, label %133, label %136

133:                                              ; preds = %132
  %134 = call float @ED_rollBoneToVector(ptr noundef nonnull %77, ptr noundef nonnull %8, i8 noundef zeroext %18) #17
  %135 = getelementptr inbounds %struct.EditBone, ptr %77, i64 0, i32 6
  store float %134, ptr %135, align 8, !tbaa !105
  br label %136

136:                                              ; preds = %133, %132
  br i1 %110, label %137, label %146

137:                                              ; preds = %136
  %138 = load ptr, ptr %78, align 8, !tbaa !107
  %139 = getelementptr inbounds %struct.EditBone, ptr %138, i64 0, i32 3
  %140 = load ptr, ptr %139, align 8, !tbaa !107
  %141 = icmp eq ptr %140, null
  br i1 %141, label %142, label %146

142:                                              ; preds = %137
  %143 = call float @ED_rollBoneToVector(ptr noundef nonnull %138, ptr noundef nonnull %8, i8 noundef zeroext %18) #17
  %144 = load ptr, ptr %78, align 8, !tbaa !107
  %145 = getelementptr inbounds %struct.EditBone, ptr %144, i64 0, i32 6
  store float %143, ptr %145, align 8, !tbaa !105
  br label %146

146:                                              ; preds = %126, %136, %142, %137
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #18
  br label %147

147:                                              ; preds = %146, %109, %76
  %148 = load ptr, ptr %77, align 8, !tbaa !48
  %149 = icmp eq ptr %148, null
  br i1 %149, label %206, label %76, !llvm.loop !109

150:                                              ; preds = %66
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %9, i8 0, i64 12, i1 false)
  switch i32 %26, label %168 [
    i32 393216, label %151
    i32 327680, label %159
  ]

151:                                              ; preds = %150
  %152 = call ptr @CTX_wm_region_view3d(ptr noundef %0) #16
  %153 = icmp eq ptr %152, null
  br i1 %153, label %154, label %157

154:                                              ; preds = %151
  %155 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %156 = load ptr, ptr %155, align 8, !tbaa !110
  call void @BKE_report(ptr noundef %156, i32 noundef 32, ptr noundef nonnull @.str.41) #16
  br label %254

157:                                              ; preds = %151
  %158 = getelementptr inbounds %struct.RegionView3D, ptr %152, i64 0, i32 2, i64 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %9, ptr noundef nonnull %158) #17
  call void @mul_m3_v3(ptr noundef nonnull %3, ptr noundef nonnull %9) #16
  br label %177

159:                                              ; preds = %150
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %10) #18
  %160 = getelementptr inbounds %struct.bArmature, ptr %23, i64 0, i32 6
  %161 = load ptr, ptr %160, align 8, !tbaa !111
  %162 = icmp eq ptr %161, null
  br i1 %162, label %163, label %166

163:                                              ; preds = %159
  %164 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %165 = load ptr, ptr %164, align 8, !tbaa !110
  call void @BKE_report(ptr noundef %165, i32 noundef 32, ptr noundef nonnull @.str.42) #16
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %10) #18
  br label %254

166:                                              ; preds = %159
  call void @ED_armature_ebone_to_mat3(ptr noundef nonnull %161, ptr noundef nonnull %10) #16
  %167 = getelementptr inbounds [3 x [3 x float]], ptr %10, i64 0, i64 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %9, ptr noundef nonnull %167) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %10) #18
  br label %177

168:                                              ; preds = %150
  %169 = icmp slt i32 %27, 3
  %170 = add nsw i32 %27, -2
  %171 = zext nneg i32 %170 to i64
  %172 = shl i64 %15, 48
  %173 = ashr exact i64 %172, 48
  %174 = select i1 %169, i64 %173, i64 %171
  %175 = select i1 %169, float 1.000000e+00, float -1.000000e+00
  %176 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 %174
  store float %175, ptr %176, align 4, !tbaa !49
  call void @mul_m3_v3(ptr noundef nonnull %3, ptr noundef nonnull %9) #16
  br label %177

177:                                              ; preds = %166, %157, %168
  %178 = icmp eq i8 %21, 0
  br i1 %178, label %180, label %179

179:                                              ; preds = %177
  call fastcc void @negate_v3(ptr noundef nonnull %9) #17
  br label %180

180:                                              ; preds = %179, %177
  %181 = getelementptr inbounds %struct.bArmature, ptr %23, i64 0, i32 4
  %182 = load ptr, ptr %181, align 8, !tbaa !46
  %183 = load ptr, ptr %182, align 8, !tbaa !48
  %184 = icmp eq ptr %183, null
  br i1 %184, label %205, label %185

185:                                              ; preds = %180
  %186 = getelementptr inbounds %struct.bArmature, ptr %23, i64 0, i32 15
  br label %187

187:                                              ; preds = %185, %202
  %188 = phi ptr [ %183, %185 ], [ %203, %202 ]
  %189 = load i32, ptr %186, align 8, !tbaa !102
  %190 = getelementptr inbounds %struct.EditBone, ptr %188, i64 0, i32 10
  %191 = load i32, ptr %190, align 8, !tbaa !103
  %192 = and i32 %191, %189
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %202, label %194

194:                                              ; preds = %187
  %195 = getelementptr inbounds %struct.EditBone, ptr %188, i64 0, i32 9
  %196 = load i32, ptr %195, align 4, !tbaa !104
  %197 = and i32 %196, 525313
  %198 = icmp eq i32 %197, 1
  br i1 %198, label %199, label %202

199:                                              ; preds = %194
  %200 = call float @ED_rollBoneToVector(ptr noundef nonnull %188, ptr noundef nonnull %9, i8 noundef zeroext %18) #17
  %201 = getelementptr inbounds %struct.EditBone, ptr %188, i64 0, i32 6
  store float %200, ptr %201, align 8, !tbaa !105
  br label %202

202:                                              ; preds = %194, %199, %187
  %203 = load ptr, ptr %188, align 8, !tbaa !48
  %204 = icmp eq ptr %203, null
  br i1 %204, label %205, label %187, !llvm.loop !112

205:                                              ; preds = %202, %180
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #18
  br label %206

206:                                              ; preds = %147, %68, %205, %65
  %207 = getelementptr inbounds %struct.bArmature, ptr %23, i64 0, i32 8
  %208 = load i32, ptr %207, align 8, !tbaa !113
  %209 = and i32 %208, 256
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %253, label %211

211:                                              ; preds = %206
  %212 = getelementptr inbounds %struct.bArmature, ptr %23, i64 0, i32 4
  %213 = load ptr, ptr %212, align 8, !tbaa !46
  %214 = load ptr, ptr %213, align 8, !tbaa !48
  %215 = icmp eq ptr %214, null
  br i1 %215, label %253, label %216

216:                                              ; preds = %211
  %217 = getelementptr inbounds %struct.bArmature, ptr %23, i64 0, i32 15
  br label %218

218:                                              ; preds = %216, %250
  %219 = phi ptr [ %214, %216 ], [ %251, %250 ]
  %220 = load i32, ptr %217, align 8, !tbaa !102
  %221 = getelementptr inbounds %struct.EditBone, ptr %219, i64 0, i32 10
  %222 = load i32, ptr %221, align 8, !tbaa !103
  %223 = and i32 %222, %220
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %230, label %225

225:                                              ; preds = %218
  %226 = getelementptr inbounds %struct.EditBone, ptr %219, i64 0, i32 9
  %227 = load i32, ptr %226, align 4, !tbaa !104
  %228 = and i32 %227, 525313
  %229 = icmp eq i32 %228, 1
  br i1 %229, label %250, label %230

230:                                              ; preds = %225, %218
  %231 = load ptr, ptr %212, align 8, !tbaa !46
  %232 = call ptr @ED_armature_bone_get_mirrored(ptr noundef %231, ptr noundef nonnull %219) #16
  %233 = icmp eq ptr %232, null
  br i1 %233, label %250, label %234

234:                                              ; preds = %230
  %235 = load i32, ptr %217, align 8, !tbaa !102
  %236 = getelementptr inbounds %struct.EditBone, ptr %232, i64 0, i32 10
  %237 = load i32, ptr %236, align 8, !tbaa !103
  %238 = and i32 %237, %235
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %250, label %240

240:                                              ; preds = %234
  %241 = getelementptr inbounds %struct.EditBone, ptr %232, i64 0, i32 9
  %242 = load i32, ptr %241, align 4, !tbaa !104
  %243 = and i32 %242, 525313
  %244 = icmp eq i32 %243, 1
  br i1 %244, label %245, label %250

245:                                              ; preds = %240
  %246 = getelementptr inbounds %struct.EditBone, ptr %232, i64 0, i32 6
  %247 = load float, ptr %246, align 8, !tbaa !105
  %248 = fneg float %247
  %249 = getelementptr inbounds %struct.EditBone, ptr %219, i64 0, i32 6
  store float %248, ptr %249, align 8, !tbaa !105
  br label %250

250:                                              ; preds = %225, %230, %240, %245, %234
  %251 = load ptr, ptr %219, align 8, !tbaa !48
  %252 = icmp eq ptr %251, null
  br i1 %252, label %253, label %218, !llvm.loop !114

253:                                              ; preds = %250, %211, %206
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85327872, ptr noundef %11) #16
  br label %255

254:                                              ; preds = %163, %154
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #18
  br label %255

255:                                              ; preds = %254, %253
  %256 = phi i32 [ 4, %253 ], [ 2, %254 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #18
  ret i32 %256
}

; Function Attrs: optsize
declare i32 @ED_operator_editarmature(ptr noundef) #2

; Function Attrs: optsize
declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @ARMATURE_OT_fill(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.12, ptr %0, align 8, !tbaa !88
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.13, ptr %2, align 8, !tbaa !91
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.14, ptr %3, align 8, !tbaa !92
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @armature_fill_bones_exec, ptr %4, align 8, !tbaa !94
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editarmature, ptr %5, align 8, !tbaa !95
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !96
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @armature_fill_bones_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !115 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.ListBase, align 8
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #16
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 19
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = icmp eq ptr %15, null
  br label %17

17:                                               ; preds = %2, %13
  %18 = phi i1 [ %16, %13 ], [ true, %2 ]
  %19 = tail call ptr @CTX_data_scene(ptr noundef %0) #16
  %20 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  br i1 %18, label %132, label %21

21:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #18
  %22 = call i32 @CTX_data_visible_bones(ptr noundef %0, ptr noundef nonnull %4) #16
  %23 = load ptr, ptr %4, align 8, !tbaa !48
  %24 = icmp eq ptr %23, null
  br i1 %24, label %43, label %25

25:                                               ; preds = %21, %40
  %26 = phi ptr [ %41, %40 ], [ %23, %21 ]
  %27 = getelementptr inbounds %struct.CollectionPointerLink, ptr %26, i64 0, i32 2, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !116
  %29 = getelementptr inbounds %struct.EditBone, ptr %28, i64 0, i32 9
  %30 = load i32, ptr %29, align 4, !tbaa !104
  %31 = and i32 %30, 18
  %32 = icmp eq i32 %31, 2
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  call fastcc void @fill_add_joint(ptr noundef nonnull %28, i16 noundef signext 0, ptr noundef nonnull %3) #17
  %34 = load i32, ptr %29, align 4, !tbaa !104
  br label %35

35:                                               ; preds = %33, %25
  %36 = phi i32 [ %34, %33 ], [ %30, %25 ]
  %37 = and i32 %36, 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  call fastcc void @fill_add_joint(ptr noundef nonnull %28, i16 noundef signext 1, ptr noundef nonnull %3) #17
  br label %40

40:                                               ; preds = %39, %35
  %41 = load ptr, ptr %26, align 8, !tbaa !48
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %25, !llvm.loop !120

43:                                               ; preds = %40, %21
  call void @BLI_freelistN(ptr noundef nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #18
  %44 = call i32 @BLI_countlist(ptr noundef nonnull %3) #16
  switch i32 %44, label %125 [
    i32 0, label %45
    i32 1, label %48
    i32 2, label %56
  ]

45:                                               ; preds = %43
  %46 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %47 = load ptr, ptr %46, align 8, !tbaa !110
  call void @BKE_report(ptr noundef %47, i32 noundef 32, ptr noundef nonnull @.str.59) #16
  br label %132

48:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #18
  %49 = load ptr, ptr %3, align 8, !tbaa !121
  %50 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 50
  %51 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 47
  %52 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %50, ptr noundef nonnull %51) #16
  %53 = call ptr @ED_view3d_cursor3d_get(ptr noundef %19, ptr noundef %20) #16
  call void @mul_v3_m4v3(ptr noundef nonnull %5, ptr noundef nonnull %50, ptr noundef %53) #16
  %54 = getelementptr inbounds %struct.EditBonePoint, ptr %49, i64 0, i32 4
  %55 = call ptr @add_points_bone(ptr noundef %11, ptr noundef nonnull %54, ptr noundef nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #18
  br label %128

56:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #18
  %57 = load ptr, ptr %3, align 8, !tbaa !121
  %58 = load ptr, ptr %57, align 8, !tbaa !122
  %59 = getelementptr inbounds %struct.EditBonePoint, ptr %57, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !124
  %61 = getelementptr inbounds %struct.EditBonePoint, ptr %58, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !125
  %63 = icmp ne ptr %60, %62
  %64 = icmp eq ptr %60, null
  %65 = or i1 %64, %63
  br i1 %65, label %66, label %129

66:                                               ; preds = %56
  %67 = getelementptr inbounds %struct.EditBonePoint, ptr %57, i64 0, i32 3
  %68 = load ptr, ptr %67, align 8, !tbaa !125
  %69 = getelementptr inbounds %struct.EditBonePoint, ptr %58, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !124
  %71 = icmp ne ptr %68, %70
  %72 = icmp eq ptr %68, null
  %73 = or i1 %72, %71
  br i1 %73, label %74, label %129

74:                                               ; preds = %66
  %75 = icmp eq ptr %70, null
  %76 = or i1 %64, %75
  %77 = icmp eq ptr %62, null
  %78 = or i1 %77, %72
  %79 = and i1 %78, %76
  br i1 %79, label %90, label %80

80:                                               ; preds = %74
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #18
  %81 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 50
  %82 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 47
  %83 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %81, ptr noundef nonnull %82) #16
  %84 = call ptr @ED_view3d_cursor3d_get(ptr noundef %19, ptr noundef %20) #16
  call void @mul_v3_m4v3(ptr noundef nonnull %8, ptr noundef nonnull %81, ptr noundef %84) #16
  %85 = getelementptr inbounds %struct.EditBonePoint, ptr %57, i64 0, i32 4
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %85, ptr noundef nonnull %8) #17
  %86 = getelementptr inbounds %struct.EditBonePoint, ptr %58, i64 0, i32 4
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %10, ptr noundef nonnull %86, ptr noundef nonnull %8) #17
  %87 = call fastcc float @len_v3(ptr noundef nonnull %9) #17
  %88 = call fastcc float @len_v3(ptr noundef nonnull %10) #17
  %89 = fcmp olt float %87, %88
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #18
  br i1 %89, label %92, label %100

90:                                               ; preds = %74
  br i1 %64, label %91, label %100

91:                                               ; preds = %90
  br i1 %75, label %124, label %92

92:                                               ; preds = %80, %91
  %93 = getelementptr inbounds %struct.EditBonePoint, ptr %57, i64 0, i32 4
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %93) #17
  %94 = getelementptr inbounds %struct.EditBonePoint, ptr %58, i64 0, i32 4
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %94) #17
  %95 = call ptr @add_points_bone(ptr noundef %11, ptr noundef nonnull %6, ptr noundef nonnull %7) #16
  %96 = load ptr, ptr %67, align 8, !tbaa !125
  %97 = icmp eq ptr %96, null
  br i1 %97, label %106, label %98

98:                                               ; preds = %92
  %99 = getelementptr inbounds %struct.EditBone, ptr %95, i64 0, i32 3
  store ptr %96, ptr %99, align 8, !tbaa !107
  br label %119

100:                                              ; preds = %90, %80
  %101 = getelementptr inbounds %struct.EditBonePoint, ptr %58, i64 0, i32 4
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %101) #17
  %102 = getelementptr inbounds %struct.EditBonePoint, ptr %57, i64 0, i32 4
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %102) #17
  %103 = call ptr @add_points_bone(ptr noundef %11, ptr noundef nonnull %6, ptr noundef nonnull %7) #16
  %104 = load ptr, ptr %61, align 8, !tbaa !125
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %110

106:                                              ; preds = %100, %92
  %107 = phi ptr [ %59, %92 ], [ %69, %100 ]
  %108 = phi ptr [ %95, %92 ], [ %103, %100 ]
  %109 = load ptr, ptr %107, align 8, !tbaa !124
  br label %110

110:                                              ; preds = %106, %100
  %111 = phi ptr [ %103, %100 ], [ %108, %106 ]
  %112 = phi ptr [ %104, %100 ], [ %109, %106 ]
  %113 = getelementptr inbounds %struct.EditBone, ptr %111, i64 0, i32 3
  store ptr %112, ptr %113, align 8, !tbaa !107
  %114 = load ptr, ptr %67, align 8, !tbaa !125
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %119

116:                                              ; preds = %110
  %117 = load ptr, ptr %61, align 8, !tbaa !125
  %118 = icmp eq ptr %117, null
  br i1 %118, label %124, label %119

119:                                              ; preds = %98, %116, %110
  %120 = phi ptr [ %95, %98 ], [ %111, %116 ], [ %111, %110 ]
  %121 = getelementptr inbounds %struct.EditBone, ptr %120, i64 0, i32 9
  %122 = load i32, ptr %121, align 4, !tbaa !104
  %123 = or i32 %122, 16
  store i32 %123, ptr %121, align 4, !tbaa !104
  br label %124

124:                                              ; preds = %91, %119, %116
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #18
  br label %128

125:                                              ; preds = %43
  %126 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %127 = load ptr, ptr %126, align 8, !tbaa !110
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %127, i32 noundef 32, ptr noundef nonnull @.str.61, i32 noundef %44) #16
  call void @BLI_freelistN(ptr noundef nonnull %3) #16
  br label %132

128:                                              ; preds = %124, %48
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85196800, ptr noundef %11) #16
  call void @BLI_freelistN(ptr noundef nonnull %3) #16
  br label %132

129:                                              ; preds = %66, %56
  %130 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %131 = load ptr, ptr %130, align 8, !tbaa !110
  call void @BKE_report(ptr noundef %131, i32 noundef 32, ptr noundef nonnull @.str.60) #16
  call void @BLI_freelistN(ptr noundef nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #18
  br label %132

132:                                              ; preds = %129, %17, %128, %125, %45
  %133 = phi i32 [ 2, %45 ], [ 4, %128 ], [ 2, %125 ], [ 2, %17 ], [ 2, %129 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #18
  ret i32 %133
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ARMATURE_OT_merge(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.17, ptr %0, align 8, !tbaa !88
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.18, ptr %2, align 8, !tbaa !91
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.19, ptr %3, align 8, !tbaa !92
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !93
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @armature_merge_exec, ptr %5, align 8, !tbaa !94
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editarmature, ptr %6, align 8, !tbaa !95
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !96
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !97
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.3, ptr noundef nonnull @ARMATURE_OT_merge.merge_types, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #16
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !98
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @armature_merge_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !126 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi ptr [ %8, %6 ], [ null, %2 ]
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !100
  %13 = tail call i32 @RNA_enum_get(ptr noundef %12, ptr noundef nonnull @.str.3) #16
  %14 = icmp eq ptr %10, null
  %15 = select i1 %5, i1 true, i1 %14
  br i1 %15, label %93, label %16

16:                                               ; preds = %9
  %17 = and i32 %13, 65535
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %89

19:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  tail call void @armature_tag_select_mirrored(ptr noundef nonnull %10) #16
  %20 = getelementptr inbounds %struct.bArmature, ptr %10, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !46
  call fastcc void @chains_find_tips(ptr noundef %21, ptr noundef nonnull %3) #17
  %22 = call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %3) #17, !range !127
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %92

24:                                               ; preds = %19
  %25 = load ptr, ptr %3, align 8, !tbaa !121
  %26 = icmp eq ptr %25, null
  br i1 %26, label %88, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.bArmature, ptr %10, i64 0, i32 15
  br label %29

29:                                               ; preds = %27, %86
  %30 = phi ptr [ %25, %27 ], [ %31, %86 ]
  %31 = load ptr, ptr %30, align 8, !tbaa !128
  call void @BLI_remlink(ptr noundef nonnull %3, ptr noundef nonnull %30) #16
  %32 = getelementptr inbounds %struct.LinkData, ptr %30, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !48
  %34 = icmp eq ptr %33, null
  br i1 %34, label %86, label %35

35:                                               ; preds = %29, %74
  %36 = phi ptr [ %79, %74 ], [ %33, %29 ]
  %37 = phi ptr [ %36, %74 ], [ null, %29 ]
  %38 = phi ptr [ %77, %74 ], [ null, %29 ]
  %39 = phi ptr [ %76, %74 ], [ null, %29 ]
  %40 = phi ptr [ %75, %74 ], [ null, %29 ]
  %41 = load i32, ptr %28, align 8, !tbaa !102
  %42 = getelementptr inbounds %struct.EditBone, ptr %36, i64 0, i32 10
  %43 = load i32, ptr %42, align 8, !tbaa !103
  %44 = and i32 %43, %41
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %69, label %46

46:                                               ; preds = %35
  %47 = getelementptr inbounds %struct.EditBone, ptr %36, i64 0, i32 9
  %48 = load i32, ptr %47, align 4, !tbaa !104
  %49 = and i32 %48, 1024
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %69

51:                                               ; preds = %46
  %52 = and i32 %48, 16
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.EditBone, ptr %36, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !107
  %57 = icmp ne ptr %56, null
  %58 = and i32 %48, 1
  %59 = icmp eq i32 %58, 0
  %60 = or i1 %59, %57
  br i1 %60, label %69, label %64

61:                                               ; preds = %51
  %62 = and i32 %48, 1
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %54, %61
  %65 = icmp eq ptr %39, null
  %66 = select i1 %65, ptr %40, ptr %36
  %67 = select i1 %65, ptr %36, ptr %39
  %68 = select i1 %65, ptr %37, ptr %38
  br label %74

69:                                               ; preds = %35, %61, %54, %46
  %70 = icmp ne ptr %40, null
  %71 = icmp ne ptr %39, null
  %72 = select i1 %70, i1 %71, i1 false
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  call fastcc void @bones_merge(ptr noundef %4, ptr noundef nonnull %40, ptr noundef nonnull %39, ptr noundef %38, ptr noundef nonnull %3) #17
  br label %74

74:                                               ; preds = %69, %73, %64
  %75 = phi ptr [ %66, %64 ], [ null, %73 ], [ null, %69 ]
  %76 = phi ptr [ %67, %64 ], [ null, %73 ], [ null, %69 ]
  %77 = phi ptr [ %68, %64 ], [ null, %73 ], [ null, %69 ]
  %78 = getelementptr inbounds %struct.EditBone, ptr %36, i64 0, i32 3
  %79 = load ptr, ptr %78, align 8, !tbaa !48
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %35, !llvm.loop !130

81:                                               ; preds = %74
  %82 = icmp ne ptr %75, null
  %83 = icmp ne ptr %76, null
  %84 = select i1 %82, i1 %83, i1 false
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  call fastcc void @bones_merge(ptr noundef %4, ptr noundef nonnull %75, ptr noundef nonnull %76, ptr noundef %77, ptr noundef nonnull %3) #17
  br label %86

86:                                               ; preds = %29, %85, %81
  call void @BLI_insertlinkbefore(ptr noundef nonnull %3, ptr noundef %31, ptr noundef nonnull %30) #16
  %87 = icmp eq ptr %31, null
  br i1 %87, label %88, label %29, !llvm.loop !131

88:                                               ; preds = %86, %24
  call void @armature_tag_unselect(ptr noundef %10) #16
  call void @BLI_freelistN(ptr noundef nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #18
  br label %89

89:                                               ; preds = %88, %16
  %90 = getelementptr inbounds %struct.bArmature, ptr %10, i64 0, i32 4
  %91 = load ptr, ptr %90, align 8, !tbaa !46
  call void @ED_armature_sync_selection(ptr noundef %91) #16
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85196800, ptr noundef %4) #16
  br label %93

92:                                               ; preds = %19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #18
  br label %93

93:                                               ; preds = %92, %9, %89
  %94 = phi i32 [ 4, %89 ], [ 2, %9 ], [ 2, %92 ]
  ret i32 %94
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @ARMATURE_OT_switch_direction(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.20, ptr %0, align 8, !tbaa !88
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.21, ptr %2, align 8, !tbaa !91
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.22, ptr %3, align 8, !tbaa !92
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @armature_switch_direction_exec, ptr %4, align 8, !tbaa !94
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editarmature, ptr %5, align 8, !tbaa !95
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !96
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @armature_switch_direction_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !132 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #16
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %7 = getelementptr inbounds %struct.bArmature, ptr %6, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  call fastcc void @chains_find_tips(ptr noundef %8, ptr noundef nonnull %3) #17
  %9 = call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %3) #17, !range !127
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %86

11:                                               ; preds = %2
  call void @armature_tag_select_mirrored(ptr noundef nonnull %6) #16
  call fastcc void @armature_clear_swap_done_flags(ptr noundef nonnull %6) #17
  %12 = load ptr, ptr %3, align 8, !tbaa !48
  %13 = icmp eq ptr %12, null
  br i1 %13, label %85, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.bArmature, ptr %6, i64 0, i32 15
  br label %19

16:                                               ; preds = %82, %19
  %17 = load ptr, ptr %20, align 8, !tbaa !48
  %18 = icmp eq ptr %17, null
  br i1 %18, label %85, label %19, !llvm.loop !133

19:                                               ; preds = %14, %16
  %20 = phi ptr [ %12, %14 ], [ %17, %16 ]
  %21 = getelementptr inbounds %struct.LinkData, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !134
  %23 = icmp eq ptr %22, null
  br i1 %23, label %16, label %24

24:                                               ; preds = %19, %82
  %25 = phi ptr [ %83, %82 ], [ null, %19 ]
  %26 = phi ptr [ %28, %82 ], [ %22, %19 ]
  %27 = getelementptr inbounds %struct.EditBone, ptr %26, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !107
  %29 = getelementptr inbounds %struct.EditBone, ptr %26, i64 0, i32 9
  %30 = load i32, ptr %29, align 4, !tbaa !104
  %31 = and i32 %30, 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %82

33:                                               ; preds = %24
  %34 = load i32, ptr %15, align 8, !tbaa !102
  %35 = getelementptr inbounds %struct.EditBone, ptr %26, i64 0, i32 10
  %36 = load i32, ptr %35, align 8, !tbaa !103
  %37 = and i32 %36, %34
  %38 = icmp ne i32 %37, 0
  %39 = and i32 %30, 525313
  %40 = icmp eq i32 %39, 1
  %41 = and i1 %40, %38
  br i1 %41, label %42, label %64

42:                                               ; preds = %33
  %43 = getelementptr inbounds %struct.EditBone, ptr %26, i64 0, i32 7
  %44 = load float, ptr %43, align 4, !tbaa !49
  %45 = getelementptr inbounds %struct.EditBone, ptr %26, i64 0, i32 8
  %46 = load float, ptr %45, align 8, !tbaa !49
  %47 = getelementptr inbounds %struct.EditBone, ptr %26, i64 0, i32 7, i64 1
  %48 = getelementptr inbounds %struct.EditBone, ptr %26, i64 0, i32 8, i64 1
  %49 = load <2 x float>, ptr %48, align 4, !tbaa !49
  %50 = insertelement <4 x float> poison, float %46, i64 0
  %51 = shufflevector <2 x float> %49, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %52 = shufflevector <4 x float> %50, <4 x float> %51, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %53 = insertelement <4 x float> %52, float %44, i64 3
  %54 = load <2 x float>, ptr %47, align 4, !tbaa !49
  store <4 x float> %53, ptr %43, align 4, !tbaa !49
  store <2 x float> %54, ptr %48, align 4, !tbaa !49
  store ptr %25, ptr %27, align 8, !tbaa !107
  %55 = icmp eq ptr %25, null
  br i1 %55, label %62, label %56

56:                                               ; preds = %42
  %57 = getelementptr inbounds %struct.EditBone, ptr %25, i64 0, i32 8
  %58 = call fastcc zeroext i8 @equals_v3v3(ptr noundef nonnull %43, ptr noundef nonnull %57) #17, !range !127
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %56
  %61 = or i32 %30, 16
  br label %78

62:                                               ; preds = %56, %42
  %63 = and i32 %30, -25
  br label %78

64:                                               ; preds = %33
  %65 = icmp eq ptr %28, null
  br i1 %65, label %78, label %66

66:                                               ; preds = %64
  %67 = getelementptr inbounds %struct.EditBone, ptr %28, i64 0, i32 10
  %68 = load i32, ptr %67, align 8, !tbaa !103
  %69 = and i32 %68, %34
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %78, label %71

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.EditBone, ptr %28, i64 0, i32 9
  %73 = load i32, ptr %72, align 4, !tbaa !104
  %74 = and i32 %73, 525313
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  store ptr null, ptr %27, align 8, !tbaa !107
  %77 = and i32 %30, -25
  br label %78

78:                                               ; preds = %60, %62, %64, %71, %76, %66
  %79 = phi i32 [ %30, %66 ], [ %77, %76 ], [ %30, %71 ], [ %30, %64 ], [ %63, %62 ], [ %61, %60 ]
  %80 = phi ptr [ null, %66 ], [ null, %76 ], [ null, %71 ], [ null, %64 ], [ %26, %62 ], [ %26, %60 ]
  %81 = or i32 %79, 8
  store i32 %81, ptr %29, align 4, !tbaa !104
  br label %82

82:                                               ; preds = %24, %78
  %83 = phi ptr [ %80, %78 ], [ %25, %24 ]
  %84 = icmp eq ptr %28, null
  br i1 %84, label %16, label %24, !llvm.loop !135

85:                                               ; preds = %16, %11
  call void @BLI_freelistN(ptr noundef nonnull %3) #16
  call fastcc void @armature_clear_swap_done_flags(ptr noundef %6) #17
  call void @armature_tag_unselect(ptr noundef %6) #16
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85327872, ptr noundef %4) #16
  br label %86

86:                                               ; preds = %2, %85
  %87 = phi i32 [ 4, %85 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #18
  ret i32 %87
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @ARMATURE_OT_align(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.23, ptr %0, align 8, !tbaa !88
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.24, ptr %2, align 8, !tbaa !91
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.25, ptr %3, align 8, !tbaa !92
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @armature_align_bones_exec, ptr %4, align 8, !tbaa !94
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editarmature, ptr %5, align 8, !tbaa !95
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !96
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @armature_align_bones_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !136 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #16
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = tail call ptr @CTX_data_active_bone(ptr noundef %0) #16
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !110
  tail call void @BKE_report(ptr noundef %11, i32 noundef 32, ptr noundef nonnull @.str.66) #16
  br label %76

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.bArmature, ptr %6, i64 0, i32 8
  %14 = load i32, ptr %13, align 8, !tbaa !113
  %15 = and i32 %14, 256
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.bArmature, ptr %6, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !46
  %20 = tail call ptr @ED_armature_bone_get_mirrored(ptr noundef %19, ptr noundef nonnull %7) #16
  %21 = icmp eq ptr %20, null
  %22 = select i1 %21, ptr %7, ptr %20
  br label %23

23:                                               ; preds = %17, %12
  %24 = phi ptr [ null, %12 ], [ %22, %17 ]
  %25 = tail call i32 @ctx_data_list_count(ptr noundef %0, ptr noundef nonnull @CTX_data_selected_editable_bones) #16
  %26 = icmp slt i32 %25, 2
  br i1 %26, label %27, label %47

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.EditBone, ptr %7, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !107
  %30 = icmp eq ptr %29, null
  br i1 %30, label %75, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.bArmature, ptr %6, i64 0, i32 4
  %33 = load ptr, ptr %32, align 8, !tbaa !46
  tail call fastcc void @bone_align_to_bone(ptr noundef %33, ptr noundef nonnull %7, ptr noundef nonnull %29) #17
  %34 = load i32, ptr %13, align 8, !tbaa !113
  %35 = and i32 %34, 256
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.EditBone, ptr %24, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !107
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  %42 = load ptr, ptr %32, align 8, !tbaa !46
  tail call fastcc void @bone_align_to_bone(ptr noundef %42, ptr noundef nonnull %24, ptr noundef nonnull %39) #17
  br label %43

43:                                               ; preds = %41, %37, %31
  %44 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %45 = load ptr, ptr %44, align 8, !tbaa !110
  %46 = getelementptr inbounds %struct.EditBone, ptr %7, i64 0, i32 5
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %45, i32 noundef 2, ptr noundef nonnull @.str.67, ptr noundef nonnull %46) #16
  br label %75

47:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #18
  %48 = call i32 @CTX_data_selected_editable_bones(ptr noundef %0, ptr noundef nonnull %3) #16
  %49 = load ptr, ptr %3, align 8, !tbaa !48
  %50 = icmp eq ptr %49, null
  br i1 %50, label %71, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.bArmature, ptr %6, i64 0, i32 4
  br label %53

53:                                               ; preds = %51, %68
  %54 = phi ptr [ %49, %51 ], [ %69, %68 ]
  %55 = getelementptr inbounds %struct.CollectionPointerLink, ptr %54, i64 0, i32 2, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !116
  %57 = icmp ne ptr %56, %7
  %58 = icmp ne ptr %56, %24
  %59 = and i1 %57, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.EditBone, ptr %56, i64 0, i32 9
  %62 = load i32, ptr %61, align 4, !tbaa !104
  %63 = and i32 %62, 1
  %64 = icmp eq i32 %63, 0
  %65 = load ptr, ptr %52, align 8, !tbaa !46
  br i1 %64, label %67, label %66

66:                                               ; preds = %60
  call fastcc void @bone_align_to_bone(ptr noundef %65, ptr noundef nonnull %56, ptr noundef nonnull %7) #17
  br label %68

67:                                               ; preds = %60
  call fastcc void @bone_align_to_bone(ptr noundef %65, ptr noundef nonnull %56, ptr noundef %24) #17
  br label %68

68:                                               ; preds = %66, %67, %53
  %69 = load ptr, ptr %54, align 8, !tbaa !48
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %53, !llvm.loop !137

71:                                               ; preds = %68, %47
  call void @BLI_freelistN(ptr noundef nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #18
  %72 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %73 = load ptr, ptr %72, align 8, !tbaa !110
  %74 = getelementptr inbounds %struct.EditBone, ptr %7, i64 0, i32 5
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %73, i32 noundef 2, ptr noundef nonnull @.str.68, i32 noundef %25, ptr noundef nonnull %74) #16
  br label %75

75:                                               ; preds = %27, %43, %71
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85327872, ptr noundef %4) #16
  br label %76

76:                                               ; preds = %75, %9
  %77 = phi i32 [ 2, %9 ], [ 4, %75 ]
  ret i32 %77
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @ARMATURE_OT_split(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.26, ptr %0, align 8, !tbaa !88
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.27, ptr %2, align 8, !tbaa !91
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.28, ptr %3, align 8, !tbaa !92
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @armature_split_exec, ptr %4, align 8, !tbaa !94
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editarmature, ptr %5, align 8, !tbaa !95
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !96
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @armature_split_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !138 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #16
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.bArmature, ptr %5, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = icmp eq ptr %8, null
  br i1 %9, label %39, label %13

10:                                               ; preds = %28
  %11 = load ptr, ptr %7, align 8, !tbaa !48
  %12 = icmp eq ptr %11, null
  br i1 %12, label %39, label %31

13:                                               ; preds = %2, %28
  %14 = phi ptr [ %29, %28 ], [ %8, %2 ]
  %15 = getelementptr inbounds %struct.EditBone, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !107
  %17 = icmp eq ptr %16, null
  br i1 %17, label %28, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.EditBone, ptr %14, i64 0, i32 9
  %20 = load i32, ptr %19, align 4, !tbaa !104
  %21 = getelementptr inbounds %struct.EditBone, ptr %16, i64 0, i32 9
  %22 = load i32, ptr %21, align 4, !tbaa !104
  %23 = xor i32 %22, %20
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %18
  store ptr null, ptr %15, align 8, !tbaa !107
  %27 = and i32 %20, -17
  store i32 %27, ptr %19, align 4, !tbaa !104
  br label %28

28:                                               ; preds = %13, %18, %26
  %29 = load ptr, ptr %14, align 8, !tbaa !48
  %30 = icmp eq ptr %29, null
  br i1 %30, label %10, label %13, !llvm.loop !139

31:                                               ; preds = %10, %31
  %32 = phi ptr [ %37, %31 ], [ %11, %10 ]
  %33 = getelementptr inbounds %struct.EditBone, ptr %32, i64 0, i32 9
  %34 = load i32, ptr %33, align 4, !tbaa !104
  %35 = trunc i32 %34 to i8
  %36 = and i8 %35, 1
  tail call void @ED_armature_ebone_select_set(ptr noundef nonnull %32, i8 noundef zeroext %36) #16
  %37 = load ptr, ptr %32, align 8, !tbaa !48
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %31, !llvm.loop !140

39:                                               ; preds = %31, %2, %10
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85327872, ptr noundef %3) #16
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @ARMATURE_OT_delete(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.29, ptr %0, align 8, !tbaa !88
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.30, ptr %2, align 8, !tbaa !91
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.31, ptr %3, align 8, !tbaa !92
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_operator_confirm, ptr %4, align 8, !tbaa !93
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @armature_delete_selected_exec, ptr %5, align 8, !tbaa !94
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editarmature, ptr %6, align 8, !tbaa !95
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !96
  ret void
}

; Function Attrs: optsize
declare i32 @WM_operator_confirm(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @armature_delete_selected_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !141 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #16
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = tail call i32 @ctx_data_list_count(ptr noundef %0, ptr noundef nonnull @CTX_data_selected_bones) #16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %133, label %9

9:                                                ; preds = %2
  tail call void @armature_select_mirrored(ptr noundef %6) #16
  %10 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 18
  %11 = load ptr, ptr %10, align 8, !tbaa !142
  %12 = icmp eq ptr %11, null
  br i1 %12, label %98, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %11, align 8, !tbaa !143
  %15 = icmp eq ptr %14, null
  br i1 %15, label %98, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.bArmature, ptr %6, i64 0, i32 4
  %18 = getelementptr inbounds %struct.bArmature, ptr %6, i64 0, i32 15
  br label %19

19:                                               ; preds = %16, %96
  %20 = phi ptr [ %14, %16 ], [ %21, %96 ]
  %21 = load ptr, ptr %20, align 8, !tbaa !145
  %22 = load ptr, ptr %17, align 8, !tbaa !46
  %23 = getelementptr inbounds %struct.bPoseChannel, ptr %20, i64 0, i32 4
  %24 = call ptr @ED_armature_bone_find_name(ptr noundef %22, ptr noundef nonnull %23) #16
  %25 = icmp eq ptr %24, null
  br i1 %25, label %40, label %26

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.EditBone, ptr %24, i64 0, i32 9
  %28 = load i32, ptr %27, align 4, !tbaa !104
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %26
  %32 = load i32, ptr %18, align 8, !tbaa !102
  %33 = getelementptr inbounds %struct.EditBone, ptr %24, i64 0, i32 10
  %34 = load i32, ptr %33, align 8, !tbaa !103
  %35 = and i32 %34, %32
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %31
  call void @BKE_pose_channel_free(ptr noundef nonnull %20) #16
  %38 = load ptr, ptr %10, align 8, !tbaa !142
  call void @BKE_pose_channels_hash_free(ptr noundef %38) #16
  %39 = load ptr, ptr %10, align 8, !tbaa !142
  call void @BLI_freelinkN(ptr noundef %39, ptr noundef nonnull %20) #16
  br label %96

40:                                               ; preds = %31, %26, %19
  %41 = getelementptr inbounds %struct.bPoseChannel, ptr %20, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !48
  %43 = icmp eq ptr %42, null
  br i1 %43, label %96, label %44

44:                                               ; preds = %40, %93
  %45 = phi ptr [ %94, %93 ], [ %42, %40 ]
  %46 = call ptr @BKE_constraint_typeinfo_get(ptr noundef nonnull %45) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %47 = icmp eq ptr %46, null
  br i1 %47, label %93, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %46, i64 0, i32 8
  %50 = load ptr, ptr %49, align 8, !tbaa !147
  %51 = icmp eq ptr %50, null
  br i1 %51, label %93, label %52

52:                                               ; preds = %48
  %53 = call i32 %50(ptr noundef nonnull %45, ptr noundef nonnull %3) #16
  %54 = load ptr, ptr %3, align 8, !tbaa !48
  %55 = icmp eq ptr %54, null
  br i1 %55, label %88, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.bConstraint, ptr %45, i64 0, i32 4
  br label %58

58:                                               ; preds = %56, %85
  %59 = phi ptr [ %54, %56 ], [ %86, %85 ]
  %60 = getelementptr inbounds %struct.bConstraintTarget, ptr %59, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !149
  %62 = icmp eq ptr %61, %4
  br i1 %62, label %63, label %85

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.bConstraintTarget, ptr %59, i64 0, i32 3
  %65 = load i8, ptr %64, align 8, !tbaa !151
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %85, label %67

67:                                               ; preds = %63
  %68 = load ptr, ptr %17, align 8, !tbaa !46
  %69 = call ptr @ED_armature_bone_find_name(ptr noundef %68, ptr noundef nonnull %64) #16
  %70 = icmp eq ptr %69, null
  br i1 %70, label %85, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.EditBone, ptr %69, i64 0, i32 9
  %73 = load i32, ptr %72, align 4, !tbaa !104
  %74 = and i32 %73, 1
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %85, label %76

76:                                               ; preds = %71
  %77 = load i32, ptr %18, align 8, !tbaa !102
  %78 = getelementptr inbounds %struct.EditBone, ptr %69, i64 0, i32 10
  %79 = load i32, ptr %78, align 8, !tbaa !103
  %80 = and i32 %79, %77
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %76
  %83 = load i16, ptr %57, align 2, !tbaa !152
  %84 = or i16 %83, 4
  store i16 %84, ptr %57, align 2, !tbaa !152
  store i8 0, ptr %64, align 8, !tbaa !151
  br label %85

85:                                               ; preds = %58, %67, %71, %76, %82, %63
  %86 = load ptr, ptr %59, align 8, !tbaa !48
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %58, !llvm.loop !154

88:                                               ; preds = %85, %52
  %89 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %46, i64 0, i32 9
  %90 = load ptr, ptr %89, align 8, !tbaa !155
  %91 = icmp eq ptr %90, null
  br i1 %91, label %93, label %92

92:                                               ; preds = %88
  call void %90(ptr noundef nonnull %45, ptr noundef nonnull %3, i8 noundef zeroext 0) #16
  br label %93

93:                                               ; preds = %88, %92, %48, %44
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #18
  %94 = load ptr, ptr %45, align 8, !tbaa !48
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %44, !llvm.loop !156

96:                                               ; preds = %93, %40, %37
  %97 = icmp eq ptr %21, null
  br i1 %97, label %98, label %19, !llvm.loop !157

98:                                               ; preds = %96, %13, %9
  %99 = getelementptr inbounds %struct.bArmature, ptr %6, i64 0, i32 4
  %100 = load ptr, ptr %99, align 8, !tbaa !46
  %101 = load ptr, ptr %100, align 8, !tbaa !121
  %102 = icmp eq ptr %101, null
  br i1 %102, label %133, label %103

103:                                              ; preds = %98
  %104 = getelementptr inbounds %struct.bArmature, ptr %6, i64 0, i32 15
  %105 = getelementptr inbounds %struct.bArmature, ptr %6, i64 0, i32 6
  br label %106

106:                                              ; preds = %128, %103
  %107 = phi ptr [ %112, %128 ], [ %101, %103 ]
  %108 = phi i1 [ false, %128 ], [ true, %103 ]
  %109 = load i32, ptr %104, align 8, !tbaa !102
  br label %110

110:                                              ; preds = %106, %126
  %111 = phi ptr [ %112, %126 ], [ %107, %106 ]
  %112 = load ptr, ptr %111, align 8, !tbaa !158
  %113 = getelementptr inbounds %struct.EditBone, ptr %111, i64 0, i32 10
  %114 = load i32, ptr %113, align 8, !tbaa !103
  %115 = and i32 %114, %109
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %126, label %117

117:                                              ; preds = %110
  %118 = getelementptr inbounds %struct.EditBone, ptr %111, i64 0, i32 9
  %119 = load i32, ptr %118, align 4, !tbaa !104
  %120 = and i32 %119, 1
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %126, label %122

122:                                              ; preds = %117
  %123 = load ptr, ptr %105, align 8, !tbaa !111
  %124 = icmp eq ptr %111, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  store ptr null, ptr %105, align 8, !tbaa !111
  br label %128

126:                                              ; preds = %110, %117
  %127 = icmp eq ptr %112, null
  br i1 %127, label %130, label %110, !llvm.loop !159

128:                                              ; preds = %122, %125
  call void @ED_armature_edit_bone_remove(ptr noundef nonnull %6, ptr noundef nonnull %111) #16
  %129 = icmp eq ptr %112, null
  br i1 %129, label %131, label %106, !llvm.loop !159

130:                                              ; preds = %126
  br i1 %108, label %133, label %131

131:                                              ; preds = %128, %130
  %132 = load ptr, ptr %99, align 8, !tbaa !46
  call void @ED_armature_sync_selection(ptr noundef %132) #16
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85327872, ptr noundef %4) #16
  br label %133

133:                                              ; preds = %98, %130, %2, %131
  %134 = phi i32 [ 4, %131 ], [ 2, %2 ], [ 2, %130 ], [ 2, %98 ]
  ret i32 %134
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ARMATURE_OT_hide(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.32, ptr %0, align 8, !tbaa !88
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.33, ptr %2, align 8, !tbaa !91
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.34, ptr %3, align 8, !tbaa !92
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @armature_hide_exec, ptr %4, align 8, !tbaa !94
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editarmature, ptr %5, align 8, !tbaa !95
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !96
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !97
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.35, i32 noundef 0, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @armature_hide_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !160 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #16
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !100
  %8 = tail call i32 @RNA_boolean_get(ptr noundef %7, ptr noundef nonnull @.str.35) #16
  %9 = icmp ne i32 %8, 0
  %10 = tail call i32 @ctx_data_list_count(ptr noundef %0, ptr noundef nonnull @CTX_data_selected_bones) #16
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
  %19 = load i32, ptr %18, align 8, !tbaa !102
  br label %20

20:                                               ; preds = %17, %38
  %21 = phi ptr [ %15, %17 ], [ %39, %38 ]
  %22 = getelementptr inbounds %struct.EditBone, ptr %21, i64 0, i32 10
  %23 = load i32, ptr %22, align 8, !tbaa !103
  %24 = and i32 %23, %19
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.EditBone, ptr %21, i64 0, i32 9
  %28 = load i32, ptr %27, align 4, !tbaa !104
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
  store i32 %37, ptr %27, align 4, !tbaa !104
  br label %38

38:                                               ; preds = %26, %35, %31, %20
  %39 = load ptr, ptr %21, align 8, !tbaa !48
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %20, !llvm.loop !161

41:                                               ; preds = %38, %12
  tail call void @ED_armature_validate_active(ptr noundef nonnull %5) #16
  %42 = load ptr, ptr %13, align 8, !tbaa !46
  tail call void @ED_armature_sync_selection(ptr noundef %42) #16
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85327872, ptr noundef %3) #16
  br label %43

43:                                               ; preds = %2, %41
  %44 = phi i32 [ 4, %41 ], [ 2, %2 ]
  ret i32 %44
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @ARMATURE_OT_reveal(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.38, ptr %0, align 8, !tbaa !88
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.39, ptr %2, align 8, !tbaa !91
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.40, ptr %3, align 8, !tbaa !92
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @armature_reveal_exec, ptr %4, align 8, !tbaa !94
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editarmature, ptr %5, align 8, !tbaa !95
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !96
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @armature_reveal_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !162 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #16
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.bArmature, ptr %5, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = icmp eq ptr %8, null
  br i1 %9, label %33, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.bArmature, ptr %5, i64 0, i32 15
  %12 = load i32, ptr %11, align 8, !tbaa !102
  br label %13

13:                                               ; preds = %10, %30
  %14 = phi ptr [ %8, %10 ], [ %31, %30 ]
  %15 = getelementptr inbounds %struct.EditBone, ptr %14, i64 0, i32 10
  %16 = load i32, ptr %15, align 8, !tbaa !103
  %17 = and i32 %16, %12
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.EditBone, ptr %14, i64 0, i32 9
  %21 = load i32, ptr %20, align 4, !tbaa !104
  %22 = and i32 %21, 1024
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %19
  %25 = and i32 %21, 2097152
  %26 = icmp eq i32 %25, 0
  %27 = or i32 %21, 7
  %28 = select i1 %26, i32 %27, i32 %21
  %29 = and i32 %28, -1025
  store i32 %29, ptr %20, align 4, !tbaa !104
  br label %30

30:                                               ; preds = %13, %24, %19
  %31 = load ptr, ptr %14, align 8, !tbaa !48
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %13, !llvm.loop !163

33:                                               ; preds = %30, %2
  tail call void @ED_armature_validate_active(ptr noundef nonnull %5) #16
  %34 = load ptr, ptr %6, align 8, !tbaa !46
  tail call void @ED_armature_sync_selection(ptr noundef %34) #16
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85327872, ptr noundef %3) #16
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !164 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #17
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #16
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #17
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #17
  br label %9

9:                                                ; preds = %8, %5
  %10 = phi float [ %6, %5 ], [ 0.000000e+00, %8 ]
  ret float %10
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #3 !PGOFuncName !165 {
  %4 = load float, ptr %1, align 4, !tbaa !49
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !49
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !49
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !49
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !49
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: optsize
declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @invert_m3(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_view3d(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_view3d_cursor3d_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 !PGOFuncName !166 {
  %4 = load float, ptr %1, align 4, !tbaa !49
  %5 = load float, ptr %2, align 4, !tbaa !49
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !49
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !49
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !49
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !49
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !49
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !49
  %17 = fadd float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: optsize
declare ptr @CTX_wm_region_view3d(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_armature_bone_get_mirrored(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CTX_data_visible_bones(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fill_add_joint(ptr noundef %0, i16 noundef signext %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !167 {
  %4 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #18
  %5 = icmp eq i16 %1, 0
  %6 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 7
  %7 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 8
  %8 = select i1 %5, ptr %6, ptr %7
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %8) #17
  %9 = load ptr, ptr %2, align 8, !tbaa !48
  %10 = icmp eq ptr %9, null
  br i1 %10, label %41, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 3
  br label %13

13:                                               ; preds = %11, %38
  %14 = phi ptr [ %9, %11 ], [ %39, %38 ]
  %15 = getelementptr inbounds %struct.EditBonePoint, ptr %14, i64 0, i32 4
  %16 = call fastcc zeroext i8 @equals_v3v3(ptr noundef nonnull %15, ptr noundef nonnull %4) #17, !range !127
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %38, label %18

18:                                               ; preds = %13
  br i1 %5, label %29, label %19

19:                                               ; preds = %18
  %20 = getelementptr inbounds %struct.EditBonePoint, ptr %14, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !124
  %22 = icmp eq ptr %21, null
  br i1 %22, label %38, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.EditBone, ptr %21, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !107
  %26 = icmp eq ptr %25, %0
  br i1 %26, label %27, label %38

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.EditBonePoint, ptr %14, i64 0, i32 3
  store ptr %0, ptr %28, align 8, !tbaa !125
  br label %53

29:                                               ; preds = %18
  %30 = getelementptr inbounds %struct.EditBonePoint, ptr %14, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !125
  %32 = icmp eq ptr %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr %12, align 8, !tbaa !107
  %35 = icmp eq ptr %34, %31
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.EditBonePoint, ptr %14, i64 0, i32 2
  store ptr %0, ptr %37, align 8, !tbaa !124
  br label %53

38:                                               ; preds = %13, %29, %33, %19, %23
  %39 = load ptr, ptr %14, align 8, !tbaa !48
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %13, !llvm.loop !168

41:                                               ; preds = %38, %3
  %42 = load ptr, ptr @MEM_callocN, align 8, !tbaa !48
  %43 = tail call ptr %42(i64 noundef 48, ptr noundef nonnull @.str.62) #16
  %44 = getelementptr inbounds %struct.EditBonePoint, ptr %43, i64 0, i32 4
  br i1 %5, label %48, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 8
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %44, ptr noundef nonnull %46) #17
  %47 = getelementptr inbounds %struct.EditBonePoint, ptr %43, i64 0, i32 3
  br label %51

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 7
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %44, ptr noundef nonnull %49) #17
  %50 = getelementptr inbounds %struct.EditBonePoint, ptr %43, i64 0, i32 2
  br label %51

51:                                               ; preds = %48, %45
  %52 = phi ptr [ %50, %48 ], [ %47, %45 ]
  store ptr %0, ptr %52, align 8, !tbaa !48
  tail call void @BLI_addtail(ptr noundef nonnull %2, ptr noundef nonnull %43) #16
  br label %53

53:                                               ; preds = %27, %36, %51
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #18
  ret void
}

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_v3_m4v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @add_points_bone(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !169 {
  %2 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %0) #17
  %3 = tail call float @sqrtf(float noundef %2) #16
  ret float %3
}

; Function Attrs: optsize
declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @equals_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !170 {
  %3 = load float, ptr %0, align 4, !tbaa !49
  %4 = load float, ptr %1, align 4, !tbaa !49
  %5 = fcmp oeq float %3, %4
  br i1 %5, label %6, label %19

6:                                                ; preds = %2
  %7 = getelementptr inbounds float, ptr %0, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !49
  %9 = getelementptr inbounds float, ptr %1, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !49
  %11 = fcmp oeq float %8, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %6
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !49
  %15 = getelementptr inbounds float, ptr %1, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !49
  %17 = fcmp oeq float %14, %16
  %18 = zext i1 %17 to i8
  br label %19

19:                                               ; preds = %12, %6, %2
  %20 = phi i8 [ 0, %6 ], [ 0, %2 ], [ %18, %12 ]
  ret i8 %20
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @armature_tag_select_mirrored(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @chains_find_tips(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !171 {
  %3 = load ptr, ptr %0, align 8, !tbaa !48
  %4 = icmp eq ptr %3, null
  br i1 %4, label %51, label %5

5:                                                ; preds = %2, %48
  %6 = phi ptr [ %49, %48 ], [ %3, %2 ]
  %7 = load ptr, ptr %1, align 8, !tbaa !48
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %16

9:                                                ; preds = %21, %16
  %10 = load ptr, ptr %17, align 8, !tbaa !48
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %16, !llvm.loop !172

12:                                               ; preds = %9, %5
  %13 = getelementptr inbounds %struct.EditBone, ptr %6, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !107
  %15 = icmp eq ptr %14, null
  br i1 %15, label %44, label %32

16:                                               ; preds = %5, %9
  %17 = phi ptr [ %10, %9 ], [ %7, %5 ]
  %18 = getelementptr inbounds %struct.LinkData, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !48
  %20 = icmp eq ptr %19, null
  br i1 %20, label %9, label %25

21:                                               ; preds = %25
  %22 = getelementptr inbounds %struct.EditBone, ptr %26, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !48
  %24 = icmp eq ptr %23, null
  br i1 %24, label %9, label %25, !llvm.loop !173

25:                                               ; preds = %16, %21
  %26 = phi ptr [ %23, %21 ], [ %19, %16 ]
  %27 = icmp eq ptr %26, %6
  br i1 %27, label %48, label %21

28:                                               ; preds = %34
  %29 = getelementptr inbounds %struct.EditBone, ptr %33, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !107
  %31 = icmp eq ptr %30, null
  br i1 %31, label %44, label %32, !llvm.loop !174

32:                                               ; preds = %12, %28
  %33 = phi ptr [ %30, %28 ], [ %14, %12 ]
  br label %34

34:                                               ; preds = %32, %38
  %35 = phi ptr [ %36, %38 ], [ %1, %32 ]
  %36 = load ptr, ptr %35, align 8, !tbaa !48
  %37 = icmp eq ptr %36, null
  br i1 %37, label %28, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.LinkData, ptr %36, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !134
  %41 = icmp eq ptr %40, %33
  br i1 %41, label %42, label %34, !llvm.loop !175

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.LinkData, ptr %36, i64 0, i32 2
  store ptr %6, ptr %43, align 8, !tbaa !134
  br label %48

44:                                               ; preds = %28, %12
  %45 = load ptr, ptr @MEM_callocN, align 8, !tbaa !48
  %46 = tail call ptr %45(i64 noundef 24, ptr noundef nonnull @.str.63) #16
  %47 = getelementptr inbounds %struct.LinkData, ptr %46, i64 0, i32 2
  store ptr %6, ptr %47, align 8, !tbaa !134
  tail call void @BLI_addtail(ptr noundef nonnull %1, ptr noundef %46) #16
  br label %48

48:                                               ; preds = %25, %42, %44
  %49 = load ptr, ptr %6, align 8, !tbaa !48
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %5, !llvm.loop !176

51:                                               ; preds = %48, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !177 {
  %2 = load ptr, ptr %0, align 8, !tbaa !121
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bones_merge(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef writeonly %3, ptr nocapture noundef readonly %4) unnamed_addr #0 !PGOFuncName !178 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #18
  %10 = icmp eq ptr %1, %2
  br i1 %10, label %11, label %19

11:                                               ; preds = %5
  %12 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !179
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %17 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 5
  %18 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.65, ptr noundef nonnull %17, ptr noundef nonnull %17) #17
  br label %19

19:                                               ; preds = %11, %15, %5
  %20 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 9
  %21 = load i32, ptr %20, align 4, !tbaa !104
  %22 = and i32 %21, 5
  %23 = icmp eq i32 %22, 4
  %24 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 7
  %25 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 8
  %26 = select i1 %23, ptr %25, ptr %24
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %26) #17
  %27 = getelementptr inbounds %struct.EditBone, ptr %2, i64 0, i32 9
  %28 = load i32, ptr %27, align 4, !tbaa !104
  %29 = and i32 %28, 3
  %30 = icmp eq i32 %29, 2
  %31 = getelementptr inbounds %struct.EditBone, ptr %2, i64 0, i32 8
  %32 = getelementptr inbounds %struct.EditBone, ptr %2, i64 0, i32 7
  %33 = select i1 %30, ptr %32, ptr %31
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %33) #17
  %34 = call ptr @add_points_bone(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef nonnull %7) #16
  %35 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !107
  %37 = getelementptr inbounds %struct.EditBone, ptr %34, i64 0, i32 3
  store ptr %36, ptr %37, align 8, !tbaa !107
  %38 = load i32, ptr %20, align 4, !tbaa !104
  %39 = and i32 %38, 4493952
  %40 = getelementptr inbounds %struct.EditBone, ptr %34, i64 0, i32 9
  store i32 %39, ptr %40, align 4, !tbaa !104
  %41 = load ptr, ptr %4, align 8, !tbaa !48
  %42 = icmp eq ptr %41, null
  br i1 %42, label %75, label %43

43:                                               ; preds = %19, %72
  %44 = phi ptr [ %73, %72 ], [ %41, %19 ]
  %45 = getelementptr inbounds %struct.LinkData, ptr %44, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !48
  %47 = icmp ne ptr %46, null
  %48 = icmp ne ptr %46, %2
  %49 = and i1 %47, %48
  br i1 %49, label %50, label %72

50:                                               ; preds = %43
  %51 = load ptr, ptr %35, align 8, !tbaa !107
  br label %52

52:                                               ; preds = %50, %66
  %53 = phi ptr [ %68, %66 ], [ %46, %50 ]
  %54 = getelementptr inbounds %struct.EditBone, ptr %53, i64 0, i32 3
  br label %55

55:                                               ; preds = %52, %62
  %56 = phi ptr [ %2, %52 ], [ %64, %62 ]
  %57 = icmp eq ptr %56, %51
  br i1 %57, label %66, label %58

58:                                               ; preds = %55
  %59 = load ptr, ptr %54, align 8, !tbaa !107
  %60 = icmp eq ptr %59, %56
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  store ptr %34, ptr %54, align 8, !tbaa !107
  br label %72

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.EditBone, ptr %56, i64 0, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !107
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %55, !llvm.loop !181

66:                                               ; preds = %62, %55
  %67 = getelementptr inbounds %struct.EditBone, ptr %53, i64 0, i32 3
  %68 = load ptr, ptr %67, align 8, !tbaa !48
  %69 = icmp ne ptr %68, null
  %70 = icmp ne ptr %68, %2
  %71 = and i1 %69, %70
  br i1 %71, label %52, label %72, !llvm.loop !182

72:                                               ; preds = %66, %43, %61
  %73 = load ptr, ptr %44, align 8, !tbaa !48
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %43, !llvm.loop !183

75:                                               ; preds = %72, %19
  %76 = icmp eq ptr %3, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %75
  %78 = getelementptr inbounds %struct.EditBone, ptr %3, i64 0, i32 3
  store ptr %34, ptr %78, align 8, !tbaa !107
  br label %79

79:                                               ; preds = %77, %75
  %80 = icmp eq ptr %2, null
  br i1 %80, label %91, label %81

81:                                               ; preds = %79, %85
  %82 = phi ptr [ %87, %85 ], [ %2, %79 ]
  %83 = icmp eq ptr %82, %1
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  call void @bone_free(ptr noundef %9, ptr noundef nonnull %82) #16
  br label %89

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.EditBone, ptr %82, i64 0, i32 3
  %87 = load ptr, ptr %86, align 8, !tbaa !107
  call void @bone_free(ptr noundef %9, ptr noundef nonnull %82) #16
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %81, !llvm.loop !184

89:                                               ; preds = %85, %84
  %90 = load i32, ptr %40, align 4, !tbaa !104
  br label %91

91:                                               ; preds = %89, %79
  %92 = phi i32 [ %90, %89 ], [ %39, %79 ]
  %93 = or i32 %92, 7
  store i32 %93, ptr %40, align 4, !tbaa !104
  %94 = getelementptr inbounds %struct.bArmature, ptr %9, i64 0, i32 4
  %95 = load ptr, ptr %94, align 8, !tbaa !46
  call void @ED_armature_sync_selection(ptr noundef %95) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #18
  ret void
}

; Function Attrs: optsize
declare void @BLI_insertlinkbefore(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @armature_tag_unselect(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_armature_sync_selection(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: optsize
declare void @bone_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @armature_clear_swap_done_flags(ptr nocapture noundef readonly %0) unnamed_addr #11 !PGOFuncName !185 {
  %2 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = load ptr, ptr %3, align 8, !tbaa !48
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %1, %6
  %7 = phi ptr [ %11, %6 ], [ %4, %1 ]
  %8 = getelementptr inbounds %struct.EditBone, ptr %7, i64 0, i32 9
  %9 = load i32, ptr %8, align 4, !tbaa !104
  %10 = and i32 %9, -9
  store i32 %10, ptr %8, align 4, !tbaa !104
  %11 = load ptr, ptr %7, align 8, !tbaa !48
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %6, !llvm.loop !186

13:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_data_active_bone(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ctx_data_list_count(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CTX_data_selected_editable_bones(ptr noundef, ptr noundef) #2

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @bone_align_to_bone(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #12 !PGOFuncName !187 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #18
  %6 = getelementptr inbounds %struct.EditBone, ptr %2, i64 0, i32 8
  %7 = getelementptr inbounds %struct.EditBone, ptr %2, i64 0, i32 7
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #17
  %8 = call fastcc float @normalize_v3(ptr noundef nonnull %5) #17
  %9 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 8
  %10 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 7
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %9, ptr noundef nonnull %10) #17
  %11 = call fastcc float @len_v3(ptr noundef nonnull %4) #17
  call fastcc void @mul_v3_fl(ptr noundef nonnull %5, float noundef %11) #17
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %5) #17
  %12 = getelementptr inbounds %struct.EditBone, ptr %2, i64 0, i32 6
  %13 = load float, ptr %12, align 8, !tbaa !105
  %14 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 6
  store float %13, ptr %14, align 8, !tbaa !105
  tail call fastcc void @fix_editbone_connected_children(ptr noundef %0, ptr noundef %1) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #18
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @fix_editbone_connected_children(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #13 !PGOFuncName !188 {
  %3 = load ptr, ptr %0, align 8, !tbaa !48
  %4 = icmp eq ptr %3, null
  br i1 %4, label %21, label %5

5:                                                ; preds = %2, %18
  %6 = phi ptr [ %19, %18 ], [ %3, %2 ]
  %7 = getelementptr inbounds %struct.EditBone, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !107
  %9 = icmp ne ptr %8, null
  %10 = icmp eq ptr %8, %1
  %11 = and i1 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.EditBone, ptr %6, i64 0, i32 9
  %14 = load i32, ptr %13, align 4, !tbaa !104
  %15 = and i32 %14, 16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  tail call fastcc void @fix_connected_bone(ptr noundef nonnull %6) #17
  tail call fastcc void @fix_editbone_connected_children(ptr noundef nonnull %0, ptr noundef nonnull %6) #17
  br label %18

18:                                               ; preds = %5, %12, %17
  %19 = load ptr, ptr %6, align 8, !tbaa !48
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %5, !llvm.loop !189

21:                                               ; preds = %18, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @fix_connected_bone(ptr nocapture noundef %0) unnamed_addr #14 !PGOFuncName !190 {
  %2 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #18
  %3 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !107
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 9
  %8 = load i32, ptr %7, align 4, !tbaa !104
  %9 = and i32 %8, 16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.EditBone, ptr %4, i64 0, i32 8
  %13 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 7
  %14 = tail call fastcc zeroext i8 @equals_v3v3(ptr noundef nonnull %12, ptr noundef nonnull %13) #17, !range !127
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %2, ptr noundef nonnull %12, ptr noundef nonnull %13) #17
  call fastcc void @add_v3_v3(ptr noundef nonnull %13, ptr noundef nonnull %2) #17
  %17 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 8
  call fastcc void @add_v3_v3(ptr noundef nonnull %17, ptr noundef nonnull %2) #17
  br label %18

18:                                               ; preds = %1, %6, %11, %16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #18
  ret void
}

; Function Attrs: optsize
declare void @ED_armature_ebone_select_set(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CTX_data_selected_bones(ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare void @armature_select_mirrored(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_armature_bone_find_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_pose_channel_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_pose_channels_hash_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_constraint_typeinfo_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_armature_edit_bone_remove(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_armature_validate_active(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #15

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { nounwind optsize }
attributes #17 = { optsize }
attributes #18 = { nounwind }

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
!49 = !{!44, !44, i64 0}
!50 = !{!51, !44, i64 140}
!51 = !{!"EditBone", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !38, i64 40, !44, i64 104, !38, i64 108, !38, i64 120, !41, i64 132, !41, i64 136, !44, i64 140, !44, i64 144, !44, i64 148, !44, i64 152, !44, i64 156, !44, i64 160, !44, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !40, i64 180}
!52 = !{!51, !44, i64 148}
!53 = !{!51, !44, i64 156}
!54 = distinct !{!54, !55}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!57, !37, i64 176}
!57 = !{!"Scene", !36, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !43, i64 152, !37, i64 168, !37, i64 176, !38, i64 184, !38, i64 196, !38, i64 208, !38, i64 220, !41, i64 232, !41, i64 236, !41, i64 240, !40, i64 244, !38, i64 246, !38, i64 247, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !58, i64 280, !67, i64 4264, !43, i64 4296, !43, i64 4312, !37, i64 4328, !37, i64 4336, !37, i64 4344, !37, i64 4352, !37, i64 4360, !37, i64 4368, !40, i64 4376, !40, i64 4378, !41, i64 4380, !43, i64 4384, !68, i64 4400, !69, i64 4416, !72, i64 4600, !37, i64 4608, !73, i64 4616, !37, i64 4640, !45, i64 4648, !45, i64 4656, !60, i64 4664, !61, i64 4824, !74, i64 4888, !37, i64 4952}
!58 = !{!"RenderData", !59, i64 0, !37, i64 248, !37, i64 256, !62, i64 264, !63, i64 328, !41, i64 400, !41, i64 404, !41, i64 408, !44, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !41, i64 428, !40, i64 432, !40, i64 434, !44, i64 436, !44, i64 440, !44, i64 444, !44, i64 448, !44, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !41, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !41, i64 484, !41, i64 488, !40, i64 492, !40, i64 494, !41, i64 496, !41, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !38, i64 514, !38, i64 515, !41, i64 516, !41, i64 520, !41, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !64, i64 544, !64, i64 560, !65, i64 576, !43, i64 592, !40, i64 608, !40, i64 610, !44, i64 612, !44, i64 616, !44, i64 620, !44, i64 624, !41, i64 628, !44, i64 632, !44, i64 636, !44, i64 640, !44, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !44, i64 660, !44, i64 664, !40, i64 668, !40, i64 670, !44, i64 672, !44, i64 676, !38, i64 680, !41, i64 1704, !40, i64 1708, !40, i64 1710, !38, i64 1712, !38, i64 2480, !38, i64 2496, !38, i64 2512, !38, i64 2513, !38, i64 2514, !38, i64 2515, !41, i64 2520, !40, i64 2524, !40, i64 2526, !44, i64 2528, !44, i64 2532, !40, i64 2536, !40, i64 2538, !44, i64 2540, !40, i64 2544, !40, i64 2546, !41, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !44, i64 2560, !44, i64 2564, !37, i64 2568, !41, i64 2576, !44, i64 2580, !38, i64 2584, !66, i64 2616, !41, i64 3976, !41, i64 3980}
!59 = !{!"ImageFormatData", !38, i64 0, !38, i64 1, !38, i64 2, !38, i64 3, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !40, i64 8, !40, i64 10, !44, i64 12, !38, i64 16, !38, i64 17, !38, i64 18, !60, i64 24, !61, i64 184}
!60 = !{!"ColorManagedViewSettings", !41, i64 0, !41, i64 4, !38, i64 8, !38, i64 72, !44, i64 136, !44, i64 140, !37, i64 144, !37, i64 152}
!61 = !{!"ColorManagedDisplaySettings", !38, i64 0}
!62 = !{!"QuicktimeCodecSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !40, i64 48, !40, i64 50, !41, i64 52, !41, i64 56, !41, i64 60}
!63 = !{!"FFMpegCodecData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !44, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !37, i64 64}
!64 = !{!"rctf", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12}
!65 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!66 = !{!"BakeData", !59, i64 0, !38, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !44, i64 1280, !44, i64 1284, !38, i64 1288, !38, i64 1291, !38, i64 1292, !38, i64 1293, !38, i64 1296}
!67 = !{!"AudioData", !41, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !41, i64 16, !40, i64 20, !40, i64 22, !44, i64 24, !44, i64 28}
!68 = !{!"GameFraming", !38, i64 0, !38, i64 12, !38, i64 13, !38, i64 14, !38, i64 15}
!69 = !{!"GameData", !68, i64 0, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !40, i64 32, !38, i64 34, !70, i64 40, !40, i64 64, !40, i64 66, !44, i64 68, !71, i64 72, !44, i64 128, !44, i64 132, !41, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !40, i64 148, !40, i64 150, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !40, i64 160, !40, i64 162, !44, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !44, i64 180}
!70 = !{!"GameDome", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !44, i64 8, !44, i64 12, !37, i64 16}
!71 = !{!"RecastData", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !44, i64 32, !44, i64 36, !41, i64 40, !44, i64 44, !44, i64 48, !40, i64 52, !40, i64 54}
!72 = !{!"UnitSettings", !44, i64 0, !38, i64 4, !38, i64 5, !40, i64 6}
!73 = !{!"PhysicsSettings", !38, i64 0, !41, i64 12, !41, i64 16, !41, i64 20}
!74 = !{!"ColorManagedColorspaceSettings", !38, i64 0}
!75 = distinct !{!75, !55}
!76 = distinct !{!76, !55}
!77 = distinct !{!77, !55}
!78 = !{!"armature_edit.c:copy_v3_v3"}
!79 = !{!"armature_edit.c:zero_v3"}
!80 = !{!"armature_edit.c:add_v3_v3"}
!81 = !{!"armature_edit.c:mul_v3_fl"}
!82 = !{!"armature_edit.c:sub_v3_v3"}
!83 = !{!"armature_edit.c:sub_v3_v3v3"}
!84 = !{!"armature_edit.c:normalize_v3"}
!85 = !{!"armature_edit.c:dot_v3v3"}
!86 = !{!"armature_edit.c:negate_v3"}
!87 = !{!"armature_edit.c:cross_v3_v3v3"}
!88 = !{!89, !37, i64 0}
!89 = !{!"wmOperatorType", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !43, i64 112, !37, i64 128, !37, i64 136, !37, i64 144, !90, i64 152, !40, i64 184}
!90 = !{!"ExtensionRNA", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24}
!91 = !{!89, !37, i64 8}
!92 = !{!89, !37, i64 24}
!93 = !{!89, !37, i64 48}
!94 = !{!89, !37, i64 32}
!95 = !{!89, !37, i64 72}
!96 = !{!89, !40, i64 184}
!97 = !{!89, !37, i64 88}
!98 = !{!89, !37, i64 104}
!99 = !{!"armature_edit.c:armature_calc_roll_exec"}
!100 = !{!101, !37, i64 112}
!101 = !{!"wmOperator", !37, i64 0, !37, i64 8, !38, i64 16, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !43, i64 128, !37, i64 144, !37, i64 152, !40, i64 160, !38, i64 162}
!102 = !{!47, !41, i64 216}
!103 = !{!51, !41, i64 136}
!104 = !{!51, !41, i64 132}
!105 = !{!51, !44, i64 104}
!106 = distinct !{!106, !55}
!107 = !{!51, !37, i64 24}
!108 = distinct !{!108, !55}
!109 = distinct !{!109, !55}
!110 = !{!101, !37, i64 120}
!111 = !{!47, !37, i64 176}
!112 = distinct !{!112, !55}
!113 = !{!47, !41, i64 192}
!114 = distinct !{!114, !55}
!115 = !{!"armature_edit.c:armature_fill_bones_exec"}
!116 = !{!117, !37, i64 32}
!117 = !{!"CollectionPointerLink", !37, i64 0, !37, i64 8, !118, i64 16}
!118 = !{!"PointerRNA", !119, i64 0, !37, i64 8, !37, i64 16}
!119 = !{!"", !37, i64 0}
!120 = distinct !{!120, !55}
!121 = !{!43, !37, i64 0}
!122 = !{!123, !37, i64 0}
!123 = !{!"EditBonePoint", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32}
!124 = !{!123, !37, i64 16}
!125 = !{!123, !37, i64 24}
!126 = !{!"armature_edit.c:armature_merge_exec"}
!127 = !{i8 0, i8 2}
!128 = !{!129, !37, i64 0}
!129 = !{!"LinkData", !37, i64 0, !37, i64 8, !37, i64 16}
!130 = distinct !{!130, !55}
!131 = distinct !{!131, !55}
!132 = !{!"armature_edit.c:armature_switch_direction_exec"}
!133 = distinct !{!133, !55}
!134 = !{!129, !37, i64 16}
!135 = distinct !{!135, !55}
!136 = !{!"armature_edit.c:armature_align_bones_exec"}
!137 = distinct !{!137, !55}
!138 = !{!"armature_edit.c:armature_split_exec"}
!139 = distinct !{!139, !55}
!140 = distinct !{!140, !55}
!141 = !{!"armature_edit.c:armature_delete_selected_exec"}
!142 = !{!35, !37, i64 288}
!143 = !{!144, !37, i64 0}
!144 = !{!"bPose", !43, i64 0, !37, i64 16, !40, i64 24, !40, i64 26, !41, i64 28, !41, i64 32, !44, i64 36, !38, i64 40, !38, i64 52, !43, i64 64, !41, i64 80, !41, i64 84, !37, i64 88, !37, i64 96, !42, i64 104, !38, i64 152}
!145 = !{!146, !37, i64 0}
!146 = !{!"bPoseChannel", !37, i64 0, !37, i64 8, !37, i64 16, !43, i64 24, !38, i64 40, !40, i64 104, !40, i64 106, !40, i64 108, !40, i64 110, !38, i64 112, !38, i64 113, !38, i64 114, !37, i64 120, !37, i64 128, !37, i64 136, !43, i64 144, !43, i64 160, !37, i64 176, !37, i64 184, !37, i64 192, !38, i64 200, !38, i64 212, !38, i64 224, !38, i64 236, !38, i64 252, !44, i64 264, !40, i64 268, !40, i64 270, !38, i64 272, !38, i64 336, !38, i64 400, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !44, i64 524, !44, i64 528, !44, i64 532, !37, i64 536}
!147 = !{!148, !37, i64 104}
!148 = !{!"bConstraintTypeInfo", !40, i64 0, !40, i64 2, !38, i64 4, !38, i64 36, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !37, i64 128}
!149 = !{!150, !37, i64 16}
!150 = !{!"bConstraintTarget", !37, i64 0, !37, i64 8, !37, i64 16, !38, i64 24, !38, i64 88, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158}
!151 = !{!38, !38, i64 0}
!152 = !{!153, !40, i64 26}
!153 = !{!"bConstraint", !37, i64 0, !37, i64 8, !37, i64 16, !40, i64 24, !40, i64 26, !38, i64 28, !38, i64 29, !38, i64 30, !40, i64 94, !44, i64 96, !44, i64 100, !37, i64 104, !44, i64 112, !44, i64 116}
!154 = distinct !{!154, !55}
!155 = !{!148, !37, i64 112}
!156 = distinct !{!156, !55}
!157 = distinct !{!157, !55}
!158 = !{!51, !37, i64 0}
!159 = distinct !{!159, !55}
!160 = !{!"armature_edit.c:armature_hide_exec"}
!161 = distinct !{!161, !55}
!162 = !{!"armature_edit.c:armature_reveal_exec"}
!163 = distinct !{!163, !55}
!164 = !{!"armature_edit.c:normalize_v3_v3"}
!165 = !{!"armature_edit.c:mul_v3_v3fl"}
!166 = !{!"armature_edit.c:add_v3_v3v3"}
!167 = !{!"armature_edit.c:fill_add_joint"}
!168 = distinct !{!168, !55}
!169 = !{!"armature_edit.c:len_v3"}
!170 = !{!"armature_edit.c:equals_v3v3"}
!171 = !{!"armature_edit.c:chains_find_tips"}
!172 = distinct !{!172, !55}
!173 = distinct !{!173, !55}
!174 = distinct !{!174, !55}
!175 = distinct !{!175, !55}
!176 = distinct !{!176, !55}
!177 = !{!"armature_edit.c:BLI_listbase_is_empty"}
!178 = !{!"armature_edit.c:bones_merge"}
!179 = !{!180, !41, i64 2100}
!180 = !{!"Global", !37, i64 0, !38, i64 8, !38, i64 1032, !38, i64 2056, !38, i64 2057, !38, i64 2058, !43, i64 2064, !38, i64 2080, !38, i64 2081, !38, i64 2082, !40, i64 2084, !40, i64 2086, !40, i64 2088, !38, i64 2090, !40, i64 2092, !41, i64 2096, !41, i64 2100, !38, i64 2104, !41, i64 2108, !41, i64 2112, !38, i64 2116}
!181 = distinct !{!181, !55}
!182 = distinct !{!182, !55}
!183 = distinct !{!183, !55}
!184 = distinct !{!184, !55}
!185 = !{!"armature_edit.c:armature_clear_swap_done_flags"}
!186 = distinct !{!186, !55}
!187 = !{!"armature_edit.c:bone_align_to_bone"}
!188 = !{!"armature_edit.c:fix_editbone_connected_children"}
!189 = distinct !{!189, !55}
!190 = !{!"armature_edit.c:fix_connected_bone"}
