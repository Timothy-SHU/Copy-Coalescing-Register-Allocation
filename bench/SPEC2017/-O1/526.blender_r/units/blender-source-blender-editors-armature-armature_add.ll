; ModuleID = 'blender/source/blender/editors/armature/armature_add.c'
source_filename = "blender/source/blender/editors/armature/armature_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.EditBone = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], float, [3 x float], [3 x float], i32, i32, float, float, float, float, float, float, float, float, float, float, i16 }
%struct.bArmature = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.bPoseChannel = type { ptr, ptr, ptr, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i8, i8, [6 x i8], ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], float, i16, i16, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.bConstraintTypeInfo = type { i16, i16, [32 x i8], [32 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bConstraintTarget = type { ptr, ptr, ptr, [64 x i8], [4 x [4 x float]], i16, i16, i16, i16 }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.RegionView3D = type { [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [6 x [4 x float]], [6 x [4 x float]], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x [4 x float]], [4 x float], float, float, float, float, [3 x float], float, i8, i8, i8, i8, i8, [3 x i8], [2 x float], i16, i16, [4 x float], i16, i16, float, [3 x float], float, [3 x float] }
%struct.CollectionPointerLink = type { ptr, ptr, %struct.PointerRNA }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [6 x i8] c"eBone\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Bone\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Click-Extrude\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"ARMATURE_OT_click_extrude\00", align 1
@.str.4 = private unnamed_addr constant [75 x i8] c"Create a new bone going from the last selected joint to the mouse position\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c"addup_editbone\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Duplicate Selected Bone(s)\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"ARMATURE_OT_duplicate\00", align 1
@.str.8 = private unnamed_addr constant [59 x i8] c"Make copies of the selected bones within the same armature\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"Extrude\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"ARMATURE_OT_extrude\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"Create new bones from the selected joints\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"forked\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"Forked\00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"Add Bone\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"ARMATURE_OT_bone_primitive_add\00", align 1
@.str.17 = private unnamed_addr constant [40 x i8] c"Add a new bone located at the 3D-Cursor\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"Name of the newly created bone\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"Subdivide Multi\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"ARMATURE_OT_subdivide\00", align 1
@.str.23 = private unnamed_addr constant [50 x i8] c"Break selected bones into chains of smaller bones\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"number_cuts\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"Number of Cuts\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"extrudebone\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"_L\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"_R\00", align 1
@U = external local_unnamed_addr global %struct.UserDef, align 8
@.str.29 = private unnamed_addr constant [13 x i8] c"ebone subdiv\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @ED_armature_edit_bone_add(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %4 = tail call ptr %3(i64 noundef 184, ptr noundef nonnull @.str) #10
  %5 = getelementptr inbounds %struct.EditBone, ptr %4, i64 0, i32 5
  %6 = tail call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef %1, i64 noundef 64) #10
  %7 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !38
  tail call void @unique_editbone_name(ptr noundef %8, ptr noundef nonnull %5, ptr noundef null) #10
  %9 = load ptr, ptr %7, align 8, !tbaa !38
  tail call void @BLI_addtail(ptr noundef %9, ptr noundef %4) #10
  %10 = getelementptr inbounds %struct.EditBone, ptr %4, i64 0, i32 9
  %11 = load i32, ptr %10, align 4, !tbaa !44
  %12 = or i32 %11, 4
  store i32 %12, ptr %10, align 4, !tbaa !44
  %13 = getelementptr inbounds %struct.EditBone, ptr %4, i64 0, i32 12
  store float 1.000000e+00, ptr %13, align 8, !tbaa !47
  %14 = getelementptr inbounds %struct.EditBone, ptr %4, i64 0, i32 11
  store float 2.500000e-01, ptr %14, align 4, !tbaa !48
  %15 = getelementptr inbounds %struct.EditBone, ptr %4, i64 0, i32 13
  store float 0x3FB99999A0000000, ptr %15, align 4, !tbaa !49
  %16 = getelementptr inbounds %struct.EditBone, ptr %4, i64 0, i32 15
  store float 0x3FB99999A0000000, ptr %16, align 4, !tbaa !50
  %17 = getelementptr inbounds %struct.EditBone, ptr %4, i64 0, i32 16
  store float 1.000000e+00, ptr %17, align 8, !tbaa !51
  %18 = getelementptr inbounds %struct.EditBone, ptr %4, i64 0, i32 17
  store float 1.000000e+00, ptr %18, align 4, !tbaa !52
  %19 = getelementptr inbounds %struct.EditBone, ptr %4, i64 0, i32 18
  store float 0x3FB99999A0000000, ptr %19, align 8, !tbaa !53
  %20 = getelementptr inbounds %struct.EditBone, ptr %4, i64 0, i32 19
  store float 0x3FA99999A0000000, ptr %20, align 4, !tbaa !54
  %21 = getelementptr inbounds %struct.EditBone, ptr %4, i64 0, i32 21
  store i16 1, ptr %21, align 4, !tbaa !55
  %22 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 15
  %23 = load i32, ptr %22, align 8, !tbaa !56
  %24 = getelementptr inbounds %struct.EditBone, ptr %4, i64 0, i32 10
  store i32 %23, ptr %24, align 8, !tbaa !57
  ret ptr %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @unique_editbone_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @ED_armature_edit_bone_add_primitive(ptr noundef %0, float noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !58
  tail call void @ED_armature_deselect_all(ptr noundef %0, i32 noundef 0) #10
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %7 = tail call ptr %6(i64 noundef 184, ptr noundef nonnull @.str) #10
  %8 = getelementptr inbounds %struct.EditBone, ptr %7, i64 0, i32 5
  %9 = tail call ptr @BLI_strncpy(ptr noundef nonnull %8, ptr noundef nonnull @.str.1, i64 noundef 64) #10
  %10 = getelementptr inbounds %struct.bArmature, ptr %5, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !38
  tail call void @unique_editbone_name(ptr noundef %11, ptr noundef nonnull %8, ptr noundef null) #10
  %12 = load ptr, ptr %10, align 8, !tbaa !38
  tail call void @BLI_addtail(ptr noundef %12, ptr noundef %7) #10
  %13 = getelementptr inbounds %struct.EditBone, ptr %7, i64 0, i32 9
  %14 = load i32, ptr %13, align 4, !tbaa !44
  %15 = or i32 %14, 4
  store i32 %15, ptr %13, align 4, !tbaa !44
  %16 = getelementptr inbounds %struct.EditBone, ptr %7, i64 0, i32 12
  store float 1.000000e+00, ptr %16, align 8, !tbaa !47
  %17 = getelementptr inbounds %struct.EditBone, ptr %7, i64 0, i32 11
  store float 2.500000e-01, ptr %17, align 4, !tbaa !48
  %18 = getelementptr inbounds %struct.EditBone, ptr %7, i64 0, i32 13
  store float 0x3FB99999A0000000, ptr %18, align 4, !tbaa !49
  %19 = getelementptr inbounds %struct.EditBone, ptr %7, i64 0, i32 15
  store float 0x3FB99999A0000000, ptr %19, align 4, !tbaa !50
  %20 = getelementptr inbounds %struct.EditBone, ptr %7, i64 0, i32 16
  store float 1.000000e+00, ptr %20, align 8, !tbaa !51
  %21 = getelementptr inbounds %struct.EditBone, ptr %7, i64 0, i32 17
  store float 1.000000e+00, ptr %21, align 4, !tbaa !52
  %22 = getelementptr inbounds %struct.EditBone, ptr %7, i64 0, i32 18
  store float 0x3FB99999A0000000, ptr %22, align 8, !tbaa !53
  %23 = getelementptr inbounds %struct.EditBone, ptr %7, i64 0, i32 19
  store float 0x3FA99999A0000000, ptr %23, align 4, !tbaa !54
  %24 = getelementptr inbounds %struct.EditBone, ptr %7, i64 0, i32 21
  store i16 1, ptr %24, align 4, !tbaa !55
  %25 = getelementptr inbounds %struct.bArmature, ptr %5, i64 0, i32 15
  %26 = load i32, ptr %25, align 8, !tbaa !56
  %27 = getelementptr inbounds %struct.EditBone, ptr %7, i64 0, i32 10
  store i32 %26, ptr %27, align 8, !tbaa !57
  %28 = getelementptr inbounds %struct.bArmature, ptr %5, i64 0, i32 6
  store ptr %7, ptr %28, align 8, !tbaa !62
  %29 = getelementptr inbounds %struct.EditBone, ptr %7, i64 0, i32 7
  %30 = icmp eq i8 %2, 0
  %31 = select i1 %30, i64 2, i64 1
  %32 = getelementptr inbounds %struct.EditBone, ptr %7, i64 0, i32 8, i64 %31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %29, i8 0, i64 24, i1 false)
  store float %1, ptr %32, align 4, !tbaa !63
  ret ptr %7
}

declare void @ED_armature_deselect_all(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ARMATURE_OT_click_extrude(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.2, ptr %0, align 8, !tbaa !64
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.3, ptr %2, align 8, !tbaa !67
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.4, ptr %3, align 8, !tbaa !68
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @armature_click_extrude_invoke, ptr %4, align 8, !tbaa !69
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @armature_click_extrude_exec, ptr %5, align 8, !tbaa !70
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editarmature, ptr %6, align 8, !tbaa !71
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !72
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @armature_click_extrude_invoke(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #10
  %7 = tail call ptr @CTX_wm_region(ptr noundef %0) #10
  %8 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #10
  %9 = tail call ptr @ED_view3d_cursor3d_get(ptr noundef %6, ptr noundef %8) #10
  %10 = load float, ptr %9, align 4, !tbaa !63
  %11 = getelementptr inbounds float, ptr %9, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !63
  %13 = getelementptr inbounds float, ptr %9, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !63
  %15 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %16 = load i32, ptr %15, align 4, !tbaa !73
  %17 = sitofp i32 %16 to float
  store float %17, ptr %5, align 4, !tbaa !63
  %18 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %19 = load i32, ptr %18, align 4, !tbaa !73
  %20 = sitofp i32 %19 to float
  %21 = getelementptr inbounds float, ptr %5, i64 1
  store float %20, ptr %21, align 4, !tbaa !63
  call void @ED_view3d_win_to_3d(ptr noundef %7, ptr noundef nonnull %9, ptr noundef nonnull %5, ptr noundef nonnull %4) #10
  %22 = load float, ptr %4, align 4, !tbaa !63
  store float %22, ptr %9, align 4, !tbaa !63
  %23 = getelementptr inbounds float, ptr %4, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !63
  store float %24, ptr %11, align 4, !tbaa !63
  %25 = getelementptr inbounds float, ptr %4, i64 2
  %26 = load float, ptr %25, align 4, !tbaa !63
  store float %26, ptr %13, align 4, !tbaa !63
  %27 = call i32 @armature_click_extrude_exec(ptr noundef %0, ptr poison), !range !74
  store float %10, ptr %9, align 4, !tbaa !63
  store float %12, ptr %11, align 4, !tbaa !63
  store float %14, ptr %13, align 4, !tbaa !63
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @armature_click_extrude_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca [3 x [3 x float]], align 16
  %4 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #10
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #10
  %6 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #10
  %7 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #10
  %8 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !58
  %10 = getelementptr inbounds %struct.bArmature, ptr %9, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !38
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.bArmature, ptr %9, i64 0, i32 15
  %16 = load i32, ptr %15, align 8, !tbaa !56
  %17 = getelementptr inbounds %struct.bArmature, ptr %9, i64 0, i32 6
  br label %26

18:                                               ; preds = %44, %2
  %19 = phi i1 [ %13, %2 ], [ %46, %44 ]
  %20 = load ptr, ptr %11, align 8, !tbaa !34
  %21 = icmp eq ptr %20, null
  br i1 %21, label %184, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.bArmature, ptr %9, i64 0, i32 15
  %24 = load i32, ptr %23, align 8, !tbaa !56
  %25 = getelementptr inbounds %struct.bArmature, ptr %9, i64 0, i32 6
  br label %47

26:                                               ; preds = %14, %44
  %27 = phi i1 [ %13, %14 ], [ %46, %44 ]
  %28 = phi ptr [ %12, %14 ], [ %45, %44 ]
  %29 = getelementptr inbounds %struct.EditBone, ptr %28, i64 0, i32 10
  %30 = load i32, ptr %29, align 8, !tbaa !57
  %31 = and i32 %30, %16
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.EditBone, ptr %28, i64 0, i32 9
  %35 = load i32, ptr %34, align 4, !tbaa !44
  %36 = and i32 %35, 1024
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = and i32 %35, 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %67

41:                                               ; preds = %38
  %42 = load ptr, ptr %17, align 8, !tbaa !62
  %43 = icmp eq ptr %42, %28
  br i1 %43, label %67, label %44

44:                                               ; preds = %33, %41, %26
  %45 = load ptr, ptr %28, align 8, !tbaa !34
  %46 = icmp eq ptr %45, null
  br i1 %46, label %18, label %26, !llvm.loop !75

47:                                               ; preds = %22, %64
  %48 = phi ptr [ %20, %22 ], [ %65, %64 ]
  %49 = getelementptr inbounds %struct.EditBone, ptr %48, i64 0, i32 10
  %50 = load i32, ptr %49, align 8, !tbaa !57
  %51 = and i32 %50, %24
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %64, label %53

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.EditBone, ptr %48, i64 0, i32 9
  %55 = load i32, ptr %54, align 4, !tbaa !44
  %56 = and i32 %55, 1024
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = and i32 %55, 2
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = load ptr, ptr %25, align 8, !tbaa !62
  %63 = icmp eq ptr %62, %48
  br i1 %63, label %67, label %64

64:                                               ; preds = %53, %61, %47
  %65 = load ptr, ptr %48, align 8, !tbaa !34
  %66 = icmp eq ptr %65, null
  br i1 %66, label %184, label %47, !llvm.loop !78

67:                                               ; preds = %41, %38, %61, %58
  %68 = phi i1 [ %19, %58 ], [ %19, %61 ], [ %27, %38 ], [ %27, %41 ]
  %69 = phi ptr [ %48, %58 ], [ %48, %61 ], [ %28, %38 ], [ %28, %41 ]
  tail call void @ED_armature_deselect_all(ptr noundef %7, i32 noundef 0) #10
  %70 = getelementptr inbounds %struct.bArmature, ptr %9, i64 0, i32 8
  %71 = load i32, ptr %70, align 8, !tbaa !79
  %72 = and i32 %71, 256
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %67
  %75 = load ptr, ptr %10, align 8, !tbaa !38
  %76 = tail call ptr @ED_armature_bone_get_mirrored(ptr noundef %75, ptr noundef nonnull %69) #10
  br label %77

77:                                               ; preds = %74, %67
  %78 = phi ptr [ %76, %74 ], [ null, %67 ]
  %79 = getelementptr inbounds %struct.bArmature, ptr %9, i64 0, i32 15
  %80 = getelementptr inbounds %struct.bArmature, ptr %9, i64 0, i32 6
  %81 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 47
  %82 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 47, i64 3
  %83 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 47, i64 3, i64 1
  %84 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 47, i64 3, i64 2
  br label %85

85:                                               ; preds = %77, %159
  %86 = phi ptr [ %69, %77 ], [ %94, %159 ]
  %87 = phi ptr [ %78, %77 ], [ %93, %159 ]
  %88 = phi i32 [ 0, %77 ], [ %180, %159 ]
  %89 = icmp eq i32 %88, 1
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = icmp eq ptr %87, null
  br i1 %91, label %182, label %92

92:                                               ; preds = %90, %85
  %93 = phi ptr [ %87, %85 ], [ %86, %90 ]
  %94 = phi ptr [ %86, %85 ], [ %87, %90 ]
  %95 = getelementptr inbounds %struct.EditBone, ptr %94, i64 0, i32 5
  %96 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %97 = call ptr %96(i64 noundef 184, ptr noundef nonnull @.str) #10
  %98 = getelementptr inbounds %struct.EditBone, ptr %97, i64 0, i32 5
  %99 = call ptr @BLI_strncpy(ptr noundef nonnull %98, ptr noundef nonnull %95, i64 noundef 64) #10
  %100 = load ptr, ptr %10, align 8, !tbaa !38
  call void @unique_editbone_name(ptr noundef %100, ptr noundef nonnull %98, ptr noundef null) #10
  %101 = load ptr, ptr %10, align 8, !tbaa !38
  call void @BLI_addtail(ptr noundef %101, ptr noundef %97) #10
  %102 = getelementptr inbounds %struct.EditBone, ptr %97, i64 0, i32 9
  %103 = load i32, ptr %102, align 4, !tbaa !44
  %104 = or i32 %103, 4
  store i32 %104, ptr %102, align 4, !tbaa !44
  %105 = getelementptr inbounds %struct.EditBone, ptr %97, i64 0, i32 12
  store float 1.000000e+00, ptr %105, align 8, !tbaa !47
  %106 = getelementptr inbounds %struct.EditBone, ptr %97, i64 0, i32 11
  store float 2.500000e-01, ptr %106, align 4, !tbaa !48
  %107 = getelementptr inbounds %struct.EditBone, ptr %97, i64 0, i32 13
  store float 0x3FB99999A0000000, ptr %107, align 4, !tbaa !49
  %108 = getelementptr inbounds %struct.EditBone, ptr %97, i64 0, i32 15
  store float 0x3FB99999A0000000, ptr %108, align 4, !tbaa !50
  %109 = getelementptr inbounds %struct.EditBone, ptr %97, i64 0, i32 16
  store float 1.000000e+00, ptr %109, align 8, !tbaa !51
  %110 = getelementptr inbounds %struct.EditBone, ptr %97, i64 0, i32 17
  store float 1.000000e+00, ptr %110, align 4, !tbaa !52
  %111 = getelementptr inbounds %struct.EditBone, ptr %97, i64 0, i32 18
  store float 0x3FB99999A0000000, ptr %111, align 8, !tbaa !53
  %112 = getelementptr inbounds %struct.EditBone, ptr %97, i64 0, i32 19
  store float 0x3FA99999A0000000, ptr %112, align 4, !tbaa !54
  %113 = getelementptr inbounds %struct.EditBone, ptr %97, i64 0, i32 21
  store i16 1, ptr %113, align 4, !tbaa !55
  %114 = load i32, ptr %79, align 8, !tbaa !56
  %115 = getelementptr inbounds %struct.EditBone, ptr %97, i64 0, i32 10
  store i32 %114, ptr %115, align 8, !tbaa !57
  store ptr %97, ptr %80, align 8, !tbaa !62
  %116 = getelementptr inbounds %struct.EditBone, ptr %97, i64 0, i32 7
  %117 = getelementptr inbounds %struct.EditBone, ptr %97, i64 0, i32 7, i64 1
  %118 = getelementptr inbounds %struct.EditBone, ptr %97, i64 0, i32 7, i64 2
  %119 = getelementptr inbounds %struct.EditBone, ptr %94, i64 0, i32 19
  br i1 %68, label %120, label %131

120:                                              ; preds = %92
  %121 = getelementptr inbounds %struct.EditBone, ptr %94, i64 0, i32 7
  %122 = load float, ptr %121, align 4, !tbaa !63
  store float %122, ptr %116, align 4, !tbaa !63
  %123 = getelementptr inbounds %struct.EditBone, ptr %94, i64 0, i32 7, i64 1
  %124 = load float, ptr %123, align 4, !tbaa !63
  store float %124, ptr %117, align 4, !tbaa !63
  %125 = getelementptr inbounds %struct.EditBone, ptr %94, i64 0, i32 7, i64 2
  %126 = load float, ptr %125, align 4, !tbaa !63
  store float %126, ptr %118, align 4, !tbaa !63
  %127 = load float, ptr %119, align 4, !tbaa !54
  store float %127, ptr %111, align 8, !tbaa !53
  %128 = getelementptr inbounds %struct.EditBone, ptr %94, i64 0, i32 3
  %129 = load ptr, ptr %128, align 8, !tbaa !80
  %130 = getelementptr inbounds %struct.EditBone, ptr %97, i64 0, i32 3
  store ptr %129, ptr %130, align 8, !tbaa !80
  br label %141

131:                                              ; preds = %92
  %132 = getelementptr inbounds %struct.EditBone, ptr %94, i64 0, i32 8
  %133 = load float, ptr %132, align 4, !tbaa !63
  store float %133, ptr %116, align 4, !tbaa !63
  %134 = getelementptr inbounds %struct.EditBone, ptr %94, i64 0, i32 8, i64 1
  %135 = load float, ptr %134, align 4, !tbaa !63
  store float %135, ptr %117, align 4, !tbaa !63
  %136 = getelementptr inbounds %struct.EditBone, ptr %94, i64 0, i32 8, i64 2
  %137 = load float, ptr %136, align 4, !tbaa !63
  store float %137, ptr %118, align 4, !tbaa !63
  %138 = load float, ptr %119, align 4, !tbaa !54
  store float %138, ptr %111, align 8, !tbaa !53
  %139 = getelementptr inbounds %struct.EditBone, ptr %97, i64 0, i32 3
  store ptr %94, ptr %139, align 8, !tbaa !80
  %140 = or i32 %103, 20
  store i32 %140, ptr %102, align 4, !tbaa !44
  br label %141

141:                                              ; preds = %131, %120
  %142 = call ptr @ED_view3d_cursor3d_get(ptr noundef %5, ptr noundef %6) #10
  %143 = getelementptr inbounds %struct.EditBone, ptr %97, i64 0, i32 8
  %144 = load float, ptr %142, align 4, !tbaa !63
  store float %144, ptr %143, align 4, !tbaa !63
  %145 = getelementptr inbounds float, ptr %142, i64 1
  %146 = load float, ptr %145, align 4, !tbaa !63
  %147 = getelementptr inbounds %struct.EditBone, ptr %97, i64 0, i32 8, i64 1
  store float %146, ptr %147, align 4, !tbaa !63
  %148 = getelementptr inbounds float, ptr %142, i64 2
  %149 = load float, ptr %148, align 4, !tbaa !63
  %150 = getelementptr inbounds %struct.EditBone, ptr %97, i64 0, i32 8, i64 2
  store float %149, ptr %150, align 4, !tbaa !63
  %151 = load float, ptr %82, align 4, !tbaa !63
  %152 = fsub float %144, %151
  store float %152, ptr %143, align 4, !tbaa !63
  %153 = load float, ptr %83, align 4, !tbaa !63
  %154 = fsub float %146, %153
  store float %154, ptr %147, align 4, !tbaa !63
  %155 = load float, ptr %84, align 4, !tbaa !63
  %156 = fsub float %149, %155
  store float %156, ptr %150, align 4, !tbaa !63
  br i1 %89, label %157, label %159

157:                                              ; preds = %141
  %158 = fneg float %152
  store float %158, ptr %143, align 8, !tbaa !63
  br label %159

159:                                              ; preds = %157, %141
  call void @copy_m3_m4(ptr noundef nonnull %3, ptr noundef nonnull %81) #10
  %160 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %4, ptr noundef nonnull %3) #10
  call void @mul_m3_v3(ptr noundef nonnull %4, ptr noundef nonnull %143) #10
  %161 = getelementptr inbounds %struct.EditBone, ptr %97, i64 0, i32 7
  %162 = load float, ptr %143, align 4, !tbaa !63
  %163 = load float, ptr %161, align 4, !tbaa !63
  %164 = fsub float %162, %163
  %165 = load float, ptr %147, align 4, !tbaa !63
  %166 = getelementptr inbounds %struct.EditBone, ptr %97, i64 0, i32 7, i64 1
  %167 = load float, ptr %166, align 4, !tbaa !63
  %168 = fsub float %165, %167
  %169 = load float, ptr %150, align 4, !tbaa !63
  %170 = getelementptr inbounds %struct.EditBone, ptr %97, i64 0, i32 7, i64 2
  %171 = load float, ptr %170, align 4, !tbaa !63
  %172 = fsub float %169, %171
  %173 = fmul float %168, %168
  %174 = call float @llvm.fmuladd.f32(float %164, float %164, float %173)
  %175 = call float @llvm.fmuladd.f32(float %172, float %172, float %174)
  %176 = call float @sqrtf(float noundef %175) #10
  %177 = getelementptr inbounds %struct.EditBone, ptr %97, i64 0, i32 14
  store float %176, ptr %177, align 8, !tbaa !81
  %178 = fmul float %176, 0x3FA99999A0000000
  store float %178, ptr %112, align 4, !tbaa !54
  %179 = fmul float %176, 2.500000e-01
  store float %179, ptr %106, align 4, !tbaa !48
  %180 = add nuw nsw i32 %88, 1
  %181 = icmp eq i32 %88, 0
  br i1 %181, label %85, label %182, !llvm.loop !82

182:                                              ; preds = %90, %159
  %183 = load ptr, ptr %10, align 8, !tbaa !38
  call void @ED_armature_sync_selection(ptr noundef %183) #10
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85327872, ptr noundef %7) #10
  br label %184

184:                                              ; preds = %64, %18, %182
  %185 = phi i32 [ 4, %182 ], [ 2, %18 ], [ 2, %64 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #10
  ret i32 %185
}

declare i32 @ED_operator_editarmature(ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local ptr @add_points_bone(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !58
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %7 = tail call ptr %6(i64 noundef 184, ptr noundef nonnull @.str) #10
  %8 = getelementptr inbounds %struct.EditBone, ptr %7, i64 0, i32 5
  %9 = tail call ptr @BLI_strncpy(ptr noundef nonnull %8, ptr noundef nonnull @.str.1, i64 noundef 64) #10
  %10 = getelementptr inbounds %struct.bArmature, ptr %5, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !38
  tail call void @unique_editbone_name(ptr noundef %11, ptr noundef nonnull %8, ptr noundef null) #10
  %12 = load ptr, ptr %10, align 8, !tbaa !38
  tail call void @BLI_addtail(ptr noundef %12, ptr noundef %7) #10
  %13 = getelementptr inbounds %struct.EditBone, ptr %7, i64 0, i32 9
  %14 = load i32, ptr %13, align 4, !tbaa !44
  %15 = or i32 %14, 4
  store i32 %15, ptr %13, align 4, !tbaa !44
  %16 = getelementptr inbounds %struct.EditBone, ptr %7, i64 0, i32 12
  store float 1.000000e+00, ptr %16, align 8, !tbaa !47
  %17 = getelementptr inbounds %struct.EditBone, ptr %7, i64 0, i32 11
  store float 2.500000e-01, ptr %17, align 4, !tbaa !48
  %18 = getelementptr inbounds %struct.EditBone, ptr %7, i64 0, i32 13
  store float 0x3FB99999A0000000, ptr %18, align 4, !tbaa !49
  %19 = getelementptr inbounds %struct.EditBone, ptr %7, i64 0, i32 15
  store float 0x3FB99999A0000000, ptr %19, align 4, !tbaa !50
  %20 = getelementptr inbounds %struct.EditBone, ptr %7, i64 0, i32 16
  store float 1.000000e+00, ptr %20, align 8, !tbaa !51
  %21 = getelementptr inbounds %struct.EditBone, ptr %7, i64 0, i32 17
  store float 1.000000e+00, ptr %21, align 4, !tbaa !52
  %22 = getelementptr inbounds %struct.EditBone, ptr %7, i64 0, i32 18
  store float 0x3FB99999A0000000, ptr %22, align 8, !tbaa !53
  %23 = getelementptr inbounds %struct.EditBone, ptr %7, i64 0, i32 19
  store float 0x3FA99999A0000000, ptr %23, align 4, !tbaa !54
  %24 = getelementptr inbounds %struct.EditBone, ptr %7, i64 0, i32 21
  store i16 1, ptr %24, align 4, !tbaa !55
  %25 = getelementptr inbounds %struct.bArmature, ptr %5, i64 0, i32 15
  %26 = load i32, ptr %25, align 8, !tbaa !56
  %27 = getelementptr inbounds %struct.EditBone, ptr %7, i64 0, i32 10
  store i32 %26, ptr %27, align 8, !tbaa !57
  %28 = getelementptr inbounds %struct.EditBone, ptr %7, i64 0, i32 7
  %29 = load float, ptr %1, align 4, !tbaa !63
  store float %29, ptr %28, align 4, !tbaa !63
  %30 = getelementptr inbounds float, ptr %1, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !63
  %32 = getelementptr inbounds %struct.EditBone, ptr %7, i64 0, i32 7, i64 1
  store float %31, ptr %32, align 4, !tbaa !63
  %33 = getelementptr inbounds float, ptr %1, i64 2
  %34 = load float, ptr %33, align 4, !tbaa !63
  %35 = getelementptr inbounds %struct.EditBone, ptr %7, i64 0, i32 7, i64 2
  store float %34, ptr %35, align 4, !tbaa !63
  %36 = getelementptr inbounds %struct.EditBone, ptr %7, i64 0, i32 8
  %37 = load float, ptr %2, align 4, !tbaa !63
  store float %37, ptr %36, align 4, !tbaa !63
  %38 = getelementptr inbounds float, ptr %2, i64 1
  %39 = load float, ptr %38, align 4, !tbaa !63
  %40 = getelementptr inbounds %struct.EditBone, ptr %7, i64 0, i32 8, i64 1
  store float %39, ptr %40, align 4, !tbaa !63
  %41 = getelementptr inbounds float, ptr %2, i64 2
  %42 = load float, ptr %41, align 4, !tbaa !63
  %43 = getelementptr inbounds %struct.EditBone, ptr %7, i64 0, i32 8, i64 2
  store float %42, ptr %43, align 4, !tbaa !63
  ret ptr %7
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @preEditBoneDuplicate(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %7, %4 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.EditBone, ptr %5, i64 0, i32 4
  store ptr null, ptr %6, align 8, !tbaa !83
  %7 = load ptr, ptr %5, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %4, !llvm.loop !84

9:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @updateDuplicateSubtargetObjects(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readnone %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.ListBase, align 8
  %6 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 18
  %7 = load ptr, ptr %6, align 8, !tbaa !85
  %8 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 5
  %9 = tail call ptr @BKE_pose_channel_verify(ptr noundef %7, ptr noundef nonnull %8) #10
  %10 = icmp eq ptr %9, null
  br i1 %10, label %66, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.bPoseChannel, ptr %9, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = icmp eq ptr %13, null
  br i1 %14, label %66, label %15

15:                                               ; preds = %11, %63
  %16 = phi ptr [ %64, %63 ], [ %13, %11 ]
  %17 = call ptr @BKE_constraint_typeinfo_get(ptr noundef nonnull %16) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %18 = icmp eq ptr %17, null
  br i1 %18, label %63, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %17, i64 0, i32 8
  %21 = load ptr, ptr %20, align 8, !tbaa !86
  %22 = icmp eq ptr %21, null
  br i1 %22, label %63, label %23

23:                                               ; preds = %19
  %24 = call i32 %21(ptr noundef nonnull %16, ptr noundef nonnull %5) #10
  %25 = load ptr, ptr %5, align 8, !tbaa !34
  %26 = icmp eq ptr %25, null
  br i1 %26, label %58, label %27

27:                                               ; preds = %23, %55
  %28 = phi ptr [ %56, %55 ], [ %25, %23 ]
  %29 = getelementptr inbounds %struct.bConstraintTarget, ptr %28, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !88
  %31 = icmp eq ptr %30, %2
  br i1 %31, label %32, label %55

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.bConstraintTarget, ptr %28, i64 0, i32 3
  %34 = load i8, ptr %33, align 8, !tbaa !90
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %55, label %36

36:                                               ; preds = %32
  store ptr %3, ptr %29, align 8, !tbaa !88
  br label %37

37:                                               ; preds = %41, %36
  %38 = phi ptr [ %1, %36 ], [ %39, %41 ]
  %39 = load ptr, ptr %38, align 8, !tbaa !34
  %40 = icmp eq ptr %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.EditBone, ptr %39, i64 0, i32 5
  %43 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %33, ptr noundef nonnull dereferenceable(1) %42) #11
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %37, !llvm.loop !91

45:                                               ; preds = %37, %41
  %46 = phi ptr [ %39, %41 ], [ null, %37 ]
  %47 = icmp eq ptr %46, null
  br i1 %47, label %55, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.EditBone, ptr %46, i64 0, i32 4
  %50 = load ptr, ptr %49, align 8, !tbaa !83
  %51 = icmp eq ptr %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.EditBone, ptr %50, i64 0, i32 5
  %54 = call ptr @BLI_strncpy(ptr noundef nonnull %33, ptr noundef nonnull %53, i64 noundef 64) #10
  br label %55

55:                                               ; preds = %27, %32, %48, %52, %45
  %56 = load ptr, ptr %28, align 8, !tbaa !34
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %27, !llvm.loop !92

58:                                               ; preds = %55, %23
  %59 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %17, i64 0, i32 9
  %60 = load ptr, ptr %59, align 8, !tbaa !93
  %61 = icmp eq ptr %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %58
  call void %60(ptr noundef nonnull %16, ptr noundef nonnull %5, i8 noundef zeroext 0) #10
  br label %63

63:                                               ; preds = %58, %62, %19, %15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #10
  %64 = load ptr, ptr %16, align 8, !tbaa !34
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %15, !llvm.loop !94

66:                                               ; preds = %63, %11, %4
  ret void
}

declare ptr @BKE_pose_channel_verify(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_constraint_typeinfo_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define dso_local void @updateDuplicateSubtarget(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  tail call void @updateDuplicateSubtargetObjects(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %2)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @duplicateEditBoneObjects(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) local_unnamed_addr #0 {
  %6 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %7 = tail call ptr %6(i64 noundef 184, ptr noundef nonnull @.str.5) #10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %7, ptr noundef nonnull align 8 dereferenceable(184) %0, i64 184, i1 false)
  %8 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 4
  store ptr %7, ptr %8, align 8, !tbaa !83
  %9 = getelementptr inbounds %struct.EditBone, ptr %7, i64 0, i32 4
  store ptr %0, ptr %9, align 8, !tbaa !83
  %10 = icmp eq ptr %1, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.EditBone, ptr %7, i64 0, i32 5
  %13 = tail call ptr @BLI_strncpy(ptr noundef nonnull %12, ptr noundef nonnull %1, i64 noundef 64) #10
  br label %14

14:                                               ; preds = %11, %5
  %15 = getelementptr inbounds %struct.EditBone, ptr %7, i64 0, i32 5
  tail call void @unique_editbone_name(ptr noundef %2, ptr noundef nonnull %15, ptr noundef null) #10
  tail call void @BLI_addtail(ptr noundef %2, ptr noundef %7) #10
  %16 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !95
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = tail call ptr @IDP_CopyProperty(ptr noundef nonnull %17) #10
  %21 = getelementptr inbounds %struct.EditBone, ptr %7, i64 0, i32 2
  store ptr %20, ptr %21, align 8, !tbaa !95
  br label %22

22:                                               ; preds = %19, %14
  %23 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 18
  %24 = load ptr, ptr %23, align 8, !tbaa !85
  %25 = icmp eq ptr %24, null
  br i1 %25, label %36, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 5
  %28 = tail call ptr @BKE_pose_channel_verify(ptr noundef nonnull %24, ptr noundef nonnull %27) #10
  %29 = icmp eq ptr %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 18
  %32 = load ptr, ptr %31, align 8, !tbaa !85
  %33 = tail call ptr @BKE_pose_channel_verify(ptr noundef %32, ptr noundef nonnull %15) #10
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  tail call void @BKE_pose_channel_copy_data(ptr noundef nonnull %33, ptr noundef nonnull %28) #10
  br label %36

36:                                               ; preds = %26, %35, %30, %22
  ret ptr %7
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

declare ptr @IDP_CopyProperty(ptr noundef) local_unnamed_addr #2

declare void @BKE_pose_channel_copy_data(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @duplicateEditBone(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = tail call ptr @duplicateEditBoneObjects(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %3)
  ret ptr %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ARMATURE_OT_duplicate(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.6, ptr %0, align 8, !tbaa !64
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.7, ptr %2, align 8, !tbaa !67
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.8, ptr %3, align 8, !tbaa !68
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @armature_duplicate_selected_exec, ptr %4, align 8, !tbaa !70
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editarmature, ptr %5, align 8, !tbaa !71
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !72
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @armature_duplicate_selected_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #10
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !58
  %6 = tail call i32 @ctx_data_list_count(ptr noundef %0, ptr noundef nonnull @CTX_data_selected_bones) #10
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %166, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.bArmature, ptr %5, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !38
  tail call void @ED_armature_sync_selection(ptr noundef %10) #10
  %11 = load ptr, ptr %9, align 8, !tbaa !38
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %8, %14
  %15 = phi ptr [ %17, %14 ], [ %12, %8 ]
  %16 = getelementptr inbounds %struct.EditBone, ptr %15, i64 0, i32 4
  store ptr null, ptr %16, align 8, !tbaa !83
  %17 = load ptr, ptr %15, align 8, !tbaa !34
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %14, !llvm.loop !84

19:                                               ; preds = %14, %8
  %20 = getelementptr inbounds %struct.bArmature, ptr %5, i64 0, i32 8
  %21 = load i32, ptr %20, align 8, !tbaa !79
  %22 = and i32 %21, 256
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %52, label %24

24:                                               ; preds = %19
  %25 = load ptr, ptr %11, align 8, !tbaa !34
  %26 = icmp eq ptr %25, null
  br i1 %26, label %52, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.bArmature, ptr %5, i64 0, i32 15
  br label %29

29:                                               ; preds = %27, %49
  %30 = phi ptr [ %25, %27 ], [ %50, %49 ]
  %31 = load i32, ptr %28, align 8, !tbaa !56
  %32 = getelementptr inbounds %struct.EditBone, ptr %30, i64 0, i32 10
  %33 = load i32, ptr %32, align 8, !tbaa !57
  %34 = and i32 %33, %31
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %49, label %36

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.EditBone, ptr %30, i64 0, i32 9
  %38 = load i32, ptr %37, align 4, !tbaa !44
  %39 = and i32 %38, 1025
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load ptr, ptr %9, align 8, !tbaa !38
  %43 = tail call ptr @ED_armature_bone_get_mirrored(ptr noundef %42, ptr noundef nonnull %30) #10
  %44 = icmp eq ptr %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.EditBone, ptr %43, i64 0, i32 9
  %47 = load i32, ptr %46, align 4, !tbaa !44
  %48 = or i32 %47, 1
  store i32 %48, ptr %46, align 4, !tbaa !44
  br label %49

49:                                               ; preds = %36, %41, %45, %29
  %50 = load ptr, ptr %30, align 8, !tbaa !34
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %29, !llvm.loop !96

52:                                               ; preds = %49, %24, %19
  %53 = load ptr, ptr %9, align 8, !tbaa !38
  %54 = load ptr, ptr %53, align 8, !tbaa !34
  %55 = icmp eq ptr %54, null
  br i1 %55, label %83, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.bArmature, ptr %5, i64 0, i32 15
  br label %58

58:                                               ; preds = %56, %77
  %59 = phi ptr [ %54, %56 ], [ %79, %77 ]
  %60 = phi ptr [ null, %56 ], [ %78, %77 ]
  %61 = load i32, ptr %57, align 8, !tbaa !56
  %62 = getelementptr inbounds %struct.EditBone, ptr %59, i64 0, i32 10
  %63 = load i32, ptr %62, align 8, !tbaa !57
  %64 = and i32 %63, %61
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %77, label %66

66:                                               ; preds = %58
  %67 = getelementptr inbounds %struct.EditBone, ptr %59, i64 0, i32 9
  %68 = load i32, ptr %67, align 4, !tbaa !44
  %69 = and i32 %68, 1025
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.EditBone, ptr %59, i64 0, i32 5
  %73 = load ptr, ptr %9, align 8, !tbaa !38
  %74 = tail call ptr @duplicateEditBoneObjects(ptr noundef nonnull %59, ptr noundef nonnull %72, ptr noundef %73, ptr noundef %3, ptr noundef %3)
  %75 = icmp eq ptr %60, null
  %76 = select i1 %75, ptr %74, ptr %60
  br label %77

77:                                               ; preds = %71, %66, %58
  %78 = phi ptr [ %60, %66 ], [ %60, %58 ], [ %76, %71 ]
  %79 = load ptr, ptr %59, align 8, !tbaa !34
  %80 = icmp ne ptr %79, null
  %81 = icmp ne ptr %79, %78
  %82 = select i1 %80, i1 %81, i1 false
  br i1 %82, label %58, label %83, !llvm.loop !97

83:                                               ; preds = %77, %52
  %84 = phi ptr [ null, %52 ], [ %78, %77 ]
  %85 = load ptr, ptr %9, align 8, !tbaa !38
  %86 = load ptr, ptr %85, align 8, !tbaa !34
  %87 = icmp ne ptr %86, null
  %88 = icmp ne ptr %86, %84
  %89 = select i1 %87, i1 %88, i1 false
  br i1 %89, label %90, label %129

90:                                               ; preds = %83
  %91 = getelementptr inbounds %struct.bArmature, ptr %5, i64 0, i32 15
  br label %92

92:                                               ; preds = %90, %124
  %93 = phi ptr [ %86, %90 ], [ %125, %124 ]
  %94 = load i32, ptr %91, align 8, !tbaa !56
  %95 = getelementptr inbounds %struct.EditBone, ptr %93, i64 0, i32 10
  %96 = load i32, ptr %95, align 8, !tbaa !57
  %97 = and i32 %96, %94
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %124, label %99

99:                                               ; preds = %92
  %100 = getelementptr inbounds %struct.EditBone, ptr %93, i64 0, i32 9
  %101 = load i32, ptr %100, align 4, !tbaa !44
  %102 = and i32 %101, 1025
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %104, label %124

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.EditBone, ptr %93, i64 0, i32 4
  %106 = load ptr, ptr %105, align 8, !tbaa !83
  %107 = getelementptr inbounds %struct.EditBone, ptr %93, i64 0, i32 3
  %108 = load ptr, ptr %107, align 8, !tbaa !80
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %112

110:                                              ; preds = %104
  %111 = getelementptr inbounds %struct.EditBone, ptr %106, i64 0, i32 3
  store ptr null, ptr %111, align 8, !tbaa !80
  br label %122

112:                                              ; preds = %104
  %113 = getelementptr inbounds %struct.EditBone, ptr %108, i64 0, i32 4
  %114 = load ptr, ptr %113, align 8, !tbaa !83
  %115 = icmp eq ptr %114, null
  %116 = getelementptr inbounds %struct.EditBone, ptr %106, i64 0, i32 3
  br i1 %115, label %118, label %117

117:                                              ; preds = %112
  store ptr %114, ptr %116, align 8, !tbaa !80
  br label %122

118:                                              ; preds = %112
  store ptr %108, ptr %116, align 8, !tbaa !80
  %119 = getelementptr inbounds %struct.EditBone, ptr %106, i64 0, i32 9
  %120 = load i32, ptr %119, align 4, !tbaa !44
  %121 = and i32 %120, -17
  store i32 %121, ptr %119, align 4, !tbaa !44
  br label %122

122:                                              ; preds = %117, %118, %110
  %123 = load ptr, ptr %9, align 8, !tbaa !38
  tail call void @updateDuplicateSubtargetObjects(ptr noundef %106, ptr noundef %123, ptr noundef %3, ptr noundef %3)
  br label %124

124:                                              ; preds = %99, %122, %92
  %125 = load ptr, ptr %93, align 8, !tbaa !34
  %126 = icmp ne ptr %125, null
  %127 = icmp ne ptr %125, %84
  %128 = select i1 %126, i1 %127, i1 false
  br i1 %128, label %92, label %129, !llvm.loop !98

129:                                              ; preds = %124, %83
  %130 = getelementptr inbounds %struct.bArmature, ptr %5, i64 0, i32 6
  %131 = load ptr, ptr %130, align 8, !tbaa !62
  %132 = icmp eq ptr %131, null
  br i1 %132, label %138, label %133

133:                                              ; preds = %129
  %134 = getelementptr inbounds %struct.EditBone, ptr %131, i64 0, i32 4
  %135 = load ptr, ptr %134, align 8, !tbaa !83
  %136 = icmp eq ptr %135, null
  br i1 %136, label %138, label %137

137:                                              ; preds = %133
  store ptr %135, ptr %130, align 8, !tbaa !62
  br label %138

138:                                              ; preds = %133, %137, %129
  %139 = load ptr, ptr %9, align 8, !tbaa !38
  %140 = load ptr, ptr %139, align 8, !tbaa !34
  %141 = icmp ne ptr %140, null
  %142 = icmp ne ptr %140, %84
  %143 = select i1 %141, i1 %142, i1 false
  br i1 %143, label %144, label %165

144:                                              ; preds = %138
  %145 = getelementptr inbounds %struct.bArmature, ptr %5, i64 0, i32 15
  %146 = load i32, ptr %145, align 8, !tbaa !56
  br label %147

147:                                              ; preds = %144, %160
  %148 = phi ptr [ %140, %144 ], [ %161, %160 ]
  %149 = getelementptr inbounds %struct.EditBone, ptr %148, i64 0, i32 10
  %150 = load i32, ptr %149, align 8, !tbaa !57
  %151 = and i32 %150, %146
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %160, label %153

153:                                              ; preds = %147
  %154 = getelementptr inbounds %struct.EditBone, ptr %148, i64 0, i32 9
  %155 = load i32, ptr %154, align 4, !tbaa !44
  %156 = and i32 %155, 1024
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %153
  %159 = and i32 %155, -1032
  store i32 %159, ptr %154, align 4, !tbaa !44
  br label %160

160:                                              ; preds = %153, %158, %147
  %161 = load ptr, ptr %148, align 8, !tbaa !34
  %162 = icmp ne ptr %161, null
  %163 = icmp ne ptr %161, %84
  %164 = select i1 %162, i1 %163, i1 false
  br i1 %164, label %147, label %165, !llvm.loop !99

165:                                              ; preds = %160, %138
  tail call void @ED_armature_validate_active(ptr noundef %5) #10
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85327872, ptr noundef %3) #10
  br label %166

166:                                              ; preds = %2, %165
  %167 = phi i32 [ 4, %165 ], [ 2, %2 ]
  ret i32 %167
}

; Function Attrs: nounwind uwtable
define dso_local void @ARMATURE_OT_extrude(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.9, ptr %0, align 8, !tbaa !64
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.10, ptr %2, align 8, !tbaa !67
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.11, ptr %3, align 8, !tbaa !68
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @armature_extrude_exec, ptr %4, align 8, !tbaa !70
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editarmature, ptr %5, align 8, !tbaa !71
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !72
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !100
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.12, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @armature_extrude_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !101
  %5 = tail call i32 @RNA_boolean_get(ptr noundef %4, ptr noundef nonnull @.str.12) #10
  %6 = trunc i32 %5 to i8
  %7 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #10
  %8 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !58
  %10 = getelementptr inbounds %struct.bArmature, ptr %9, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !38
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.bArmature, ptr %9, i64 0, i32 15
  %16 = load i32, ptr %15, align 8, !tbaa !56
  br label %23

17:                                               ; preds = %48, %2
  %18 = load ptr, ptr %11, align 8, !tbaa !34
  %19 = icmp eq ptr %18, null
  br i1 %19, label %233, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.bArmature, ptr %9, i64 0, i32 15
  %22 = getelementptr inbounds %struct.bArmature, ptr %9, i64 0, i32 8
  br label %51

23:                                               ; preds = %14, %48
  %24 = phi ptr [ %12, %14 ], [ %49, %48 ]
  %25 = getelementptr inbounds %struct.EditBone, ptr %24, i64 0, i32 10
  %26 = load i32, ptr %25, align 8, !tbaa !57
  %27 = and i32 %26, %16
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %48, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.EditBone, ptr %24, i64 0, i32 9
  %31 = load i32, ptr %30, align 4, !tbaa !44
  %32 = and i32 %31, 1026
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %34, label %48

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.EditBone, ptr %24, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !80
  %37 = icmp eq ptr %36, null
  %38 = and i32 %31, 16
  %39 = icmp eq i32 %38, 0
  %40 = or i1 %39, %37
  br i1 %40, label %48, label %41

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.EditBone, ptr %36, i64 0, i32 9
  %43 = load i32, ptr %42, align 4, !tbaa !44
  %44 = and i32 %43, 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %41
  %47 = and i32 %31, -1027
  store i32 %47, ptr %30, align 4, !tbaa !44
  br label %48

48:                                               ; preds = %29, %34, %46, %41, %23
  %49 = load ptr, ptr %24, align 8, !tbaa !34
  %50 = icmp eq ptr %49, null
  br i1 %50, label %17, label %23, !llvm.loop !103

51:                                               ; preds = %20, %224
  %52 = phi ptr [ %18, %20 ], [ %229, %224 ]
  %53 = phi i8 [ %6, %20 ], [ %227, %224 ]
  %54 = phi i32 [ 0, %20 ], [ %226, %224 ]
  %55 = phi ptr [ null, %20 ], [ %225, %224 ]
  %56 = load i32, ptr %21, align 8, !tbaa !56
  %57 = getelementptr inbounds %struct.EditBone, ptr %52, i64 0, i32 10
  %58 = load i32, ptr %57, align 8, !tbaa !57
  %59 = and i32 %58, %56
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %224, label %61

61:                                               ; preds = %51
  %62 = getelementptr inbounds %struct.EditBone, ptr %52, i64 0, i32 9
  %63 = load i32, ptr %62, align 4, !tbaa !44
  %64 = and i32 %63, 1024
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %224

66:                                               ; preds = %61
  %67 = and i32 %63, 5
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %66
  %70 = and i32 %63, 2
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %216, label %72

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.EditBone, ptr %52, i64 0, i32 3
  %74 = load ptr, ptr %73, align 8, !tbaa !80
  %75 = icmp eq ptr %74, null
  br i1 %75, label %81, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.EditBone, ptr %74, i64 0, i32 9
  %78 = load i32, ptr %77, align 4, !tbaa !44
  %79 = and i32 %78, 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %216

81:                                               ; preds = %72, %76, %66
  %82 = load i32, ptr %22, align 8, !tbaa !79
  %83 = and i32 %82, 256
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %101, label %85

85:                                               ; preds = %81
  %86 = load ptr, ptr %10, align 8, !tbaa !38
  %87 = tail call ptr @ED_armature_bone_get_mirrored(ptr noundef %86, ptr noundef nonnull %52) #10
  %88 = icmp eq ptr %87, null
  br i1 %88, label %96, label %89

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.EditBone, ptr %87, i64 0, i32 9
  %91 = load i32, ptr %90, align 4, !tbaa !44
  %92 = and i32 %91, 7
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %89
  %95 = and i32 %91, -8
  store i32 %95, ptr %90, align 4, !tbaa !44
  br label %96

96:                                               ; preds = %89, %94, %85
  %97 = phi i8 [ 0, %94 ], [ 0, %89 ], [ %53, %85 ]
  %98 = icmp ne i8 %97, 0
  %99 = select i1 %88, i1 %98, i1 false
  %100 = select i1 %99, ptr %52, ptr %87
  br label %101

101:                                              ; preds = %96, %81
  %102 = phi ptr [ null, %81 ], [ %100, %96 ]
  %103 = phi i8 [ %53, %81 ], [ %97, %96 ]
  %104 = icmp ne i8 %103, 0
  %105 = add i32 %54, 2
  br label %106

106:                                              ; preds = %101, %206
  %107 = phi ptr [ %52, %101 ], [ %213, %206 ]
  %108 = phi i32 [ %54, %101 ], [ %118, %206 ]
  %109 = phi i32 [ 0, %101 ], [ %214, %206 ]
  %110 = phi ptr [ %55, %101 ], [ %210, %206 ]
  %111 = phi ptr [ %102, %101 ], [ %212, %206 ]
  %112 = icmp eq i32 %109, 1
  br i1 %112, label %113, label %115

113:                                              ; preds = %106
  %114 = icmp eq ptr %111, null
  br i1 %114, label %216, label %115

115:                                              ; preds = %113, %106
  %116 = phi ptr [ %111, %106 ], [ %107, %113 ]
  %117 = phi ptr [ %107, %106 ], [ %111, %113 ]
  %118 = add nsw i32 %108, 1
  %119 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %120 = tail call ptr %119(i64 noundef 184, ptr noundef nonnull @.str.26) #10
  %121 = getelementptr inbounds %struct.EditBone, ptr %120, i64 0, i32 7
  %122 = getelementptr inbounds %struct.EditBone, ptr %120, i64 0, i32 7, i64 1
  %123 = getelementptr inbounds %struct.EditBone, ptr %120, i64 0, i32 7, i64 2
  %124 = getelementptr inbounds %struct.EditBone, ptr %120, i64 0, i32 8
  br i1 %68, label %142, label %125

125:                                              ; preds = %115
  %126 = getelementptr inbounds %struct.EditBone, ptr %117, i64 0, i32 8
  %127 = load float, ptr %126, align 4, !tbaa !63
  store float %127, ptr %121, align 4, !tbaa !63
  %128 = getelementptr inbounds %struct.EditBone, ptr %117, i64 0, i32 8, i64 1
  %129 = load float, ptr %128, align 4, !tbaa !63
  store float %129, ptr %122, align 4, !tbaa !63
  %130 = getelementptr inbounds %struct.EditBone, ptr %117, i64 0, i32 8, i64 2
  %131 = load float, ptr %130, align 4, !tbaa !63
  store float %131, ptr %123, align 4, !tbaa !63
  store float %127, ptr %124, align 4, !tbaa !63
  %132 = getelementptr inbounds %struct.EditBone, ptr %120, i64 0, i32 8, i64 1
  store float %129, ptr %132, align 4, !tbaa !63
  %133 = getelementptr inbounds %struct.EditBone, ptr %120, i64 0, i32 8, i64 2
  store float %131, ptr %133, align 4, !tbaa !63
  %134 = getelementptr inbounds %struct.EditBone, ptr %120, i64 0, i32 3
  store ptr %117, ptr %134, align 8, !tbaa !80
  %135 = getelementptr inbounds %struct.EditBone, ptr %117, i64 0, i32 9
  %136 = load i32, ptr %135, align 4, !tbaa !44
  %137 = and i32 %136, 8388612
  %138 = getelementptr inbounds %struct.EditBone, ptr %120, i64 0, i32 9
  store i32 %137, ptr %138, align 4, !tbaa !44
  %139 = icmp eq ptr %117, null
  br i1 %139, label %165, label %140

140:                                              ; preds = %125
  %141 = or disjoint i32 %137, 16
  store i32 %141, ptr %138, align 4, !tbaa !44
  br label %165

142:                                              ; preds = %115
  %143 = getelementptr inbounds %struct.EditBone, ptr %117, i64 0, i32 7
  %144 = load float, ptr %143, align 4, !tbaa !63
  store float %144, ptr %121, align 4, !tbaa !63
  %145 = getelementptr inbounds %struct.EditBone, ptr %117, i64 0, i32 7, i64 1
  %146 = load float, ptr %145, align 4, !tbaa !63
  store float %146, ptr %122, align 4, !tbaa !63
  %147 = getelementptr inbounds %struct.EditBone, ptr %117, i64 0, i32 7, i64 2
  %148 = load float, ptr %147, align 4, !tbaa !63
  store float %148, ptr %123, align 4, !tbaa !63
  %149 = load float, ptr %143, align 4, !tbaa !63
  store float %149, ptr %124, align 4, !tbaa !63
  %150 = load float, ptr %145, align 4, !tbaa !63
  %151 = getelementptr inbounds %struct.EditBone, ptr %120, i64 0, i32 8, i64 1
  store float %150, ptr %151, align 4, !tbaa !63
  %152 = load float, ptr %147, align 4, !tbaa !63
  %153 = getelementptr inbounds %struct.EditBone, ptr %120, i64 0, i32 8, i64 2
  store float %152, ptr %153, align 4, !tbaa !63
  %154 = getelementptr inbounds %struct.EditBone, ptr %117, i64 0, i32 3
  %155 = load ptr, ptr %154, align 8, !tbaa !80
  %156 = getelementptr inbounds %struct.EditBone, ptr %120, i64 0, i32 3
  store ptr %155, ptr %156, align 8, !tbaa !80
  %157 = getelementptr inbounds %struct.EditBone, ptr %120, i64 0, i32 9
  store i32 4, ptr %157, align 4, !tbaa !44
  %158 = icmp eq ptr %155, null
  br i1 %158, label %165, label %159

159:                                              ; preds = %142
  %160 = getelementptr inbounds %struct.EditBone, ptr %117, i64 0, i32 9
  %161 = load i32, ptr %160, align 4, !tbaa !44
  %162 = and i32 %161, 16
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %159
  store i32 20, ptr %157, align 4, !tbaa !44
  br label %165

165:                                              ; preds = %142, %159, %164, %125, %140
  %166 = getelementptr inbounds %struct.EditBone, ptr %117, i64 0, i32 12
  %167 = load float, ptr %166, align 8, !tbaa !47
  %168 = getelementptr inbounds %struct.EditBone, ptr %120, i64 0, i32 12
  store float %167, ptr %168, align 8, !tbaa !47
  %169 = getelementptr inbounds %struct.EditBone, ptr %117, i64 0, i32 11
  %170 = load float, ptr %169, align 4, !tbaa !48
  %171 = getelementptr inbounds %struct.EditBone, ptr %120, i64 0, i32 11
  store float %170, ptr %171, align 4, !tbaa !48
  %172 = getelementptr inbounds %struct.EditBone, ptr %117, i64 0, i32 13
  %173 = load float, ptr %172, align 4, !tbaa !49
  %174 = getelementptr inbounds %struct.EditBone, ptr %120, i64 0, i32 13
  store float %173, ptr %174, align 4, !tbaa !49
  %175 = getelementptr inbounds %struct.EditBone, ptr %117, i64 0, i32 15
  %176 = load float, ptr %175, align 4, !tbaa !50
  %177 = getelementptr inbounds %struct.EditBone, ptr %120, i64 0, i32 15
  store float %176, ptr %177, align 4, !tbaa !50
  %178 = getelementptr inbounds %struct.EditBone, ptr %117, i64 0, i32 16
  %179 = load float, ptr %178, align 8, !tbaa !51
  %180 = getelementptr inbounds %struct.EditBone, ptr %120, i64 0, i32 16
  store float %179, ptr %180, align 8, !tbaa !51
  %181 = getelementptr inbounds %struct.EditBone, ptr %117, i64 0, i32 17
  %182 = load float, ptr %181, align 4, !tbaa !52
  %183 = getelementptr inbounds %struct.EditBone, ptr %120, i64 0, i32 17
  store float %182, ptr %183, align 4, !tbaa !52
  %184 = getelementptr inbounds %struct.EditBone, ptr %117, i64 0, i32 19
  %185 = load float, ptr %184, align 4, !tbaa !54
  %186 = getelementptr inbounds %struct.EditBone, ptr %120, i64 0, i32 18
  store float %185, ptr %186, align 8, !tbaa !53
  %187 = getelementptr inbounds %struct.EditBone, ptr %120, i64 0, i32 19
  store float %185, ptr %187, align 4, !tbaa !54
  %188 = getelementptr inbounds %struct.EditBone, ptr %120, i64 0, i32 21
  store i16 1, ptr %188, align 4, !tbaa !55
  %189 = getelementptr inbounds %struct.EditBone, ptr %117, i64 0, i32 10
  %190 = load i32, ptr %189, align 8, !tbaa !57
  %191 = getelementptr inbounds %struct.EditBone, ptr %120, i64 0, i32 10
  store i32 %190, ptr %191, align 8, !tbaa !57
  %192 = getelementptr inbounds %struct.EditBone, ptr %120, i64 0, i32 5
  %193 = getelementptr inbounds %struct.EditBone, ptr %117, i64 0, i32 5
  %194 = tail call ptr @BLI_strncpy(ptr noundef nonnull %192, ptr noundef nonnull %193, i64 noundef 64) #10
  %195 = icmp ne ptr %116, null
  %196 = select i1 %195, i1 %104, i1 false
  br i1 %196, label %197, label %206

197:                                              ; preds = %165
  %198 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %192) #11
  %199 = icmp ult i64 %198, 62
  br i1 %199, label %200, label %206

200:                                              ; preds = %197
  %201 = icmp eq i32 %109, 0
  %202 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %192)
  %203 = getelementptr inbounds i8, ptr %192, i64 %202
  br i1 %201, label %204, label %205

204:                                              ; preds = %200
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %203, ptr noundef nonnull align 1 dereferenceable(3) @.str.27, i64 3, i1 false)
  br label %206

205:                                              ; preds = %200
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %203, ptr noundef nonnull align 1 dereferenceable(3) @.str.28, i64 3, i1 false)
  br label %206

206:                                              ; preds = %197, %205, %204, %165
  %207 = load ptr, ptr %10, align 8, !tbaa !38
  tail call void @unique_editbone_name(ptr noundef %207, ptr noundef nonnull %192, ptr noundef null) #10
  %208 = load ptr, ptr %10, align 8, !tbaa !38
  tail call void @BLI_addtail(ptr noundef %208, ptr noundef %120) #10
  %209 = icmp eq ptr %110, null
  %210 = select i1 %209, ptr %120, ptr %110
  %211 = and i1 %112, %195
  %212 = select i1 %211, ptr %117, ptr %116
  %213 = select i1 %211, ptr %116, ptr %117
  %214 = add nuw nsw i32 %109, 1
  %215 = icmp eq i32 %109, 0
  br i1 %215, label %106, label %216, !llvm.loop !104

216:                                              ; preds = %206, %113, %76, %69
  %217 = phi ptr [ %55, %69 ], [ %55, %76 ], [ %210, %206 ], [ %110, %113 ]
  %218 = phi i32 [ %54, %69 ], [ %54, %76 ], [ %105, %206 ], [ %108, %113 ]
  %219 = phi i8 [ %53, %69 ], [ %53, %76 ], [ %103, %113 ], [ %103, %206 ]
  %220 = phi ptr [ %52, %69 ], [ %52, %76 ], [ %213, %206 ], [ %107, %113 ]
  %221 = getelementptr inbounds %struct.EditBone, ptr %220, i64 0, i32 9
  %222 = load i32, ptr %221, align 4, !tbaa !44
  %223 = and i32 %222, -8
  store i32 %223, ptr %221, align 4, !tbaa !44
  br label %224

224:                                              ; preds = %61, %216, %51
  %225 = phi ptr [ %217, %216 ], [ %55, %61 ], [ %55, %51 ]
  %226 = phi i32 [ %218, %216 ], [ %54, %61 ], [ %54, %51 ]
  %227 = phi i8 [ %219, %216 ], [ %53, %61 ], [ %53, %51 ]
  %228 = phi ptr [ %220, %216 ], [ %52, %61 ], [ %52, %51 ]
  %229 = load ptr, ptr %228, align 8, !tbaa !34
  %230 = icmp ne ptr %229, null
  %231 = icmp ne ptr %229, %225
  %232 = select i1 %230, i1 %231, i1 false
  br i1 %232, label %51, label %233, !llvm.loop !105

233:                                              ; preds = %224, %17
  %234 = phi ptr [ null, %17 ], [ %225, %224 ]
  %235 = phi i32 [ 0, %17 ], [ %226, %224 ]
  %236 = icmp eq i32 %235, 1
  %237 = icmp ne ptr %234, null
  %238 = select i1 %236, i1 %237, i1 false
  br i1 %238, label %239, label %241

239:                                              ; preds = %233
  %240 = getelementptr inbounds %struct.bArmature, ptr %9, i64 0, i32 6
  store ptr %234, ptr %240, align 8, !tbaa !62
  br label %241

241:                                              ; preds = %239, %233
  %242 = icmp eq i32 %235, 0
  br i1 %242, label %245, label %243

243:                                              ; preds = %241
  %244 = load ptr, ptr %10, align 8, !tbaa !38
  tail call void @ED_armature_sync_selection(ptr noundef %244) #10
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85327872, ptr noundef %7) #10
  br label %245

245:                                              ; preds = %241, %243
  %246 = phi i32 [ 4, %243 ], [ 2, %241 ]
  ret i32 %246
}

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ARMATURE_OT_bone_primitive_add(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.15, ptr %0, align 8, !tbaa !64
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.16, ptr %2, align 8, !tbaa !67
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.17, ptr %3, align 8, !tbaa !68
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @armature_bone_primitive_add_exec, ptr %4, align 8, !tbaa !70
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editarmature, ptr %5, align 8, !tbaa !71
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !72
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !100
  %9 = tail call ptr @RNA_def_string(ptr noundef %8, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 64, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @armature_bone_primitive_add_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [3 x [3 x float]], align 16
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x [3 x float]], align 16
  %6 = alloca [3 x [3 x float]], align 16
  %7 = alloca [3 x [3 x float]], align 16
  %8 = alloca [64 x i8], align 16
  %9 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #10
  %10 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #10
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #10
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !101
  call void @RNA_string_get(ptr noundef %12, ptr noundef nonnull @.str.18, ptr noundef nonnull %8) #10
  %13 = call ptr @CTX_data_scene(ptr noundef %0) #10
  %14 = call ptr @CTX_wm_view3d(ptr noundef %0) #10
  %15 = call ptr @ED_view3d_cursor3d_get(ptr noundef %13, ptr noundef %14) #10
  %16 = load float, ptr %15, align 4, !tbaa !63
  store float %16, ptr %4, align 4, !tbaa !63
  %17 = getelementptr inbounds float, ptr %15, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !63
  %19 = getelementptr inbounds float, ptr %4, i64 1
  store float %18, ptr %19, align 4, !tbaa !63
  %20 = getelementptr inbounds float, ptr %15, i64 2
  %21 = load float, ptr %20, align 4, !tbaa !63
  %22 = getelementptr inbounds float, ptr %4, i64 2
  store float %21, ptr %22, align 4, !tbaa !63
  %23 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 50
  %24 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 47
  %25 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %23, ptr noundef nonnull %24) #10
  call void @mul_m4_v3(ptr noundef nonnull %23, ptr noundef nonnull %4) #10
  %26 = icmp eq ptr %9, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %2
  %28 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !106
  %29 = and i32 %28, 524288
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 1
  call void @copy_m3_m4(ptr noundef nonnull %3, ptr noundef nonnull %32) #10
  br label %34

33:                                               ; preds = %27, %2
  call void @unit_m3(ptr noundef nonnull %3) #10
  br label %34

34:                                               ; preds = %33, %31
  call void @copy_m3_m4(ptr noundef nonnull %5, ptr noundef nonnull %24) #10
  call void @mul_m3_m3m3(ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef nonnull %5) #10
  %35 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %7, ptr noundef nonnull %6) #10
  call void @ED_armature_deselect_all(ptr noundef %10, i32 noundef 0) #10
  %36 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 19
  %37 = load ptr, ptr %36, align 8, !tbaa !58
  %38 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %39 = call ptr %38(i64 noundef 184, ptr noundef nonnull @.str) #10
  %40 = getelementptr inbounds %struct.EditBone, ptr %39, i64 0, i32 5
  %41 = call ptr @BLI_strncpy(ptr noundef nonnull %40, ptr noundef nonnull %8, i64 noundef 64) #10
  %42 = getelementptr inbounds %struct.bArmature, ptr %37, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !38
  call void @unique_editbone_name(ptr noundef %43, ptr noundef nonnull %40, ptr noundef null) #10
  %44 = load ptr, ptr %42, align 8, !tbaa !38
  call void @BLI_addtail(ptr noundef %44, ptr noundef %39) #10
  %45 = getelementptr inbounds %struct.EditBone, ptr %39, i64 0, i32 9
  %46 = load i32, ptr %45, align 4, !tbaa !44
  %47 = or i32 %46, 4
  store i32 %47, ptr %45, align 4, !tbaa !44
  %48 = getelementptr inbounds %struct.EditBone, ptr %39, i64 0, i32 12
  store float 1.000000e+00, ptr %48, align 8, !tbaa !47
  %49 = getelementptr inbounds %struct.EditBone, ptr %39, i64 0, i32 11
  store float 2.500000e-01, ptr %49, align 4, !tbaa !48
  %50 = getelementptr inbounds %struct.EditBone, ptr %39, i64 0, i32 13
  store float 0x3FB99999A0000000, ptr %50, align 4, !tbaa !49
  %51 = getelementptr inbounds %struct.EditBone, ptr %39, i64 0, i32 15
  store float 0x3FB99999A0000000, ptr %51, align 4, !tbaa !50
  %52 = getelementptr inbounds %struct.EditBone, ptr %39, i64 0, i32 16
  store float 1.000000e+00, ptr %52, align 8, !tbaa !51
  %53 = getelementptr inbounds %struct.EditBone, ptr %39, i64 0, i32 17
  store float 1.000000e+00, ptr %53, align 4, !tbaa !52
  %54 = getelementptr inbounds %struct.EditBone, ptr %39, i64 0, i32 18
  store float 0x3FB99999A0000000, ptr %54, align 8, !tbaa !53
  %55 = getelementptr inbounds %struct.EditBone, ptr %39, i64 0, i32 19
  store float 0x3FA99999A0000000, ptr %55, align 4, !tbaa !54
  %56 = getelementptr inbounds %struct.EditBone, ptr %39, i64 0, i32 21
  store i16 1, ptr %56, align 4, !tbaa !55
  %57 = getelementptr inbounds %struct.bArmature, ptr %37, i64 0, i32 15
  %58 = load i32, ptr %57, align 8, !tbaa !56
  %59 = getelementptr inbounds %struct.EditBone, ptr %39, i64 0, i32 10
  store i32 %58, ptr %59, align 8, !tbaa !57
  %60 = getelementptr inbounds %struct.EditBone, ptr %39, i64 0, i32 7
  %61 = load float, ptr %4, align 4, !tbaa !63
  store float %61, ptr %60, align 4, !tbaa !63
  %62 = load float, ptr %19, align 4, !tbaa !63
  %63 = getelementptr inbounds %struct.EditBone, ptr %39, i64 0, i32 7, i64 1
  store float %62, ptr %63, align 4, !tbaa !63
  %64 = load float, ptr %22, align 4, !tbaa !63
  %65 = getelementptr inbounds %struct.EditBone, ptr %39, i64 0, i32 7, i64 2
  store float %64, ptr %65, align 4, !tbaa !63
  br i1 %26, label %81, label %66

66:                                               ; preds = %34
  %67 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !106
  %68 = and i32 %67, 524288
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %81, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.EditBone, ptr %39, i64 0, i32 8
  %72 = getelementptr inbounds [3 x [3 x float]], ptr %7, i64 0, i64 1
  %73 = load float, ptr %72, align 4, !tbaa !63
  %74 = fadd float %61, %73
  store float %74, ptr %71, align 4, !tbaa !63
  %75 = getelementptr inbounds [3 x [3 x float]], ptr %7, i64 0, i64 1, i64 1
  %76 = load float, ptr %75, align 16, !tbaa !63
  %77 = fadd float %62, %76
  %78 = getelementptr inbounds %struct.EditBone, ptr %39, i64 0, i32 8, i64 1
  store float %77, ptr %78, align 4, !tbaa !63
  %79 = getelementptr inbounds [3 x [3 x float]], ptr %7, i64 0, i64 1, i64 2
  %80 = load float, ptr %79, align 4, !tbaa !63
  br label %92

81:                                               ; preds = %66, %34
  %82 = getelementptr inbounds %struct.EditBone, ptr %39, i64 0, i32 8
  %83 = getelementptr inbounds [3 x [3 x float]], ptr %7, i64 0, i64 2
  %84 = load float, ptr %83, align 8, !tbaa !63
  %85 = fadd float %61, %84
  store float %85, ptr %82, align 4, !tbaa !63
  %86 = getelementptr inbounds [3 x [3 x float]], ptr %7, i64 0, i64 2, i64 1
  %87 = load float, ptr %86, align 4, !tbaa !63
  %88 = fadd float %62, %87
  %89 = getelementptr inbounds %struct.EditBone, ptr %39, i64 0, i32 8, i64 1
  store float %88, ptr %89, align 4, !tbaa !63
  %90 = getelementptr inbounds [3 x [3 x float]], ptr %7, i64 0, i64 2, i64 2
  %91 = load float, ptr %90, align 16, !tbaa !63
  br label %92

92:                                               ; preds = %81, %70
  %93 = phi float [ %91, %81 ], [ %80, %70 ]
  %94 = fadd float %64, %93
  %95 = getelementptr inbounds %struct.EditBone, ptr %39, i64 0, i32 8, i64 2
  store float %94, ptr %95, align 4, !tbaa !63
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85327872, ptr noundef %10) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #10
  ret i32 4
}

declare ptr @RNA_def_string(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ARMATURE_OT_subdivide(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.21, ptr %0, align 8, !tbaa !64
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.22, ptr %2, align 8, !tbaa !67
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.23, ptr %3, align 8, !tbaa !68
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @armature_subdivide_exec, ptr %4, align 8, !tbaa !70
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editarmature, ptr %5, align 8, !tbaa !71
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !72
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !100
  %9 = tail call ptr @RNA_def_int(ptr noundef %8, ptr noundef nonnull @.str.24, i32 noundef 1, i32 noundef 1, i32 noundef 2147483647, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.14, i32 noundef 1, i32 noundef 10) #10
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 268435456) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @armature_subdivide_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #10
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !58
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !101
  %9 = tail call i32 @RNA_int_get(ptr noundef %8, ptr noundef nonnull @.str.24) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  %10 = call i32 @CTX_data_selected_editable_bones(ptr noundef %0, ptr noundef nonnull %3) #10
  %11 = load ptr, ptr %3, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %91, label %13

13:                                               ; preds = %2
  %14 = add nsw i32 %9, 1
  %15 = icmp sgt i32 %9, 0
  %16 = getelementptr inbounds %struct.bArmature, ptr %6, i64 0, i32 4
  br label %20

17:                                               ; preds = %87, %20
  %18 = load ptr, ptr %21, align 8, !tbaa !34
  %19 = icmp eq ptr %18, null
  br i1 %19, label %91, label %20, !llvm.loop !110

20:                                               ; preds = %13, %17
  %21 = phi ptr [ %11, %13 ], [ %18, %17 ]
  %22 = getelementptr inbounds %struct.CollectionPointerLink, ptr %21, i64 0, i32 2, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !111
  br i1 %15, label %24, label %17

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.EditBone, ptr %23, i64 0, i32 7
  %26 = getelementptr inbounds %struct.EditBone, ptr %23, i64 0, i32 7, i64 1
  %27 = getelementptr inbounds %struct.EditBone, ptr %23, i64 0, i32 7, i64 2
  %28 = getelementptr inbounds %struct.EditBone, ptr %23, i64 0, i32 8
  %29 = getelementptr inbounds %struct.EditBone, ptr %23, i64 0, i32 8, i64 1
  %30 = getelementptr inbounds %struct.EditBone, ptr %23, i64 0, i32 8, i64 2
  %31 = getelementptr inbounds %struct.EditBone, ptr %23, i64 0, i32 18
  %32 = getelementptr inbounds %struct.EditBone, ptr %23, i64 0, i32 19
  br label %33

33:                                               ; preds = %24, %87
  %34 = phi i32 [ %14, %24 ], [ %89, %87 ]
  %35 = sitofp i32 %34 to float
  %36 = fdiv float 1.000000e+00, %35
  %37 = fsub float 1.000000e+00, %36
  %38 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %39 = call ptr %38(i64 noundef 184, ptr noundef nonnull @.str.29) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %39, ptr noundef nonnull align 8 dereferenceable(184) %23, i64 184, i1 false), !tbaa.struct !115
  %40 = load ptr, ptr %16, align 8, !tbaa !38
  call void @BLI_addtail(ptr noundef %40, ptr noundef %39) #10
  %41 = load float, ptr %25, align 4, !tbaa !63
  %42 = load float, ptr %26, align 4, !tbaa !63
  %43 = load float, ptr %27, align 4, !tbaa !63
  %44 = load float, ptr %28, align 4, !tbaa !63
  %45 = load float, ptr %29, align 4, !tbaa !63
  %46 = load float, ptr %30, align 4, !tbaa !63
  %47 = getelementptr inbounds %struct.EditBone, ptr %39, i64 0, i32 7
  %48 = getelementptr inbounds %struct.EditBone, ptr %39, i64 0, i32 7, i64 1
  %49 = getelementptr inbounds %struct.EditBone, ptr %39, i64 0, i32 7, i64 2
  %50 = fmul float %37, %44
  %51 = call float @llvm.fmuladd.f32(float %41, float %36, float %50)
  %52 = fmul float %37, %45
  %53 = call float @llvm.fmuladd.f32(float %42, float %36, float %52)
  %54 = fmul float %37, %46
  %55 = call float @llvm.fmuladd.f32(float %43, float %36, float %54)
  store float %51, ptr %47, align 4, !tbaa !63
  store float %53, ptr %48, align 4, !tbaa !63
  store float %55, ptr %49, align 4, !tbaa !63
  %56 = getelementptr inbounds %struct.EditBone, ptr %39, i64 0, i32 8
  %57 = load float, ptr %28, align 4, !tbaa !63
  store float %57, ptr %56, align 4, !tbaa !63
  %58 = load float, ptr %29, align 4, !tbaa !63
  %59 = getelementptr inbounds %struct.EditBone, ptr %39, i64 0, i32 8, i64 1
  store float %58, ptr %59, align 4, !tbaa !63
  %60 = load float, ptr %30, align 4, !tbaa !63
  %61 = getelementptr inbounds %struct.EditBone, ptr %39, i64 0, i32 8, i64 2
  store float %60, ptr %61, align 4, !tbaa !63
  store float %51, ptr %28, align 4, !tbaa !63
  %62 = load float, ptr %48, align 4, !tbaa !63
  store float %62, ptr %29, align 4, !tbaa !63
  %63 = load float, ptr %49, align 4, !tbaa !63
  store float %63, ptr %30, align 4, !tbaa !63
  %64 = load float, ptr %31, align 8, !tbaa !53
  %65 = load float, ptr %32, align 4, !tbaa !54
  %66 = fmul float %37, %65
  %67 = call float @llvm.fmuladd.f32(float %64, float %36, float %66)
  %68 = getelementptr inbounds %struct.EditBone, ptr %39, i64 0, i32 18
  store float %67, ptr %68, align 8, !tbaa !53
  store float %67, ptr %32, align 4, !tbaa !54
  %69 = getelementptr inbounds %struct.EditBone, ptr %39, i64 0, i32 9
  %70 = load i32, ptr %69, align 4, !tbaa !44
  %71 = or i32 %70, 16
  store i32 %71, ptr %69, align 4, !tbaa !44
  %72 = getelementptr inbounds %struct.EditBone, ptr %39, i64 0, i32 2
  store ptr null, ptr %72, align 8, !tbaa !95
  %73 = load ptr, ptr %16, align 8, !tbaa !38
  %74 = getelementptr inbounds %struct.EditBone, ptr %39, i64 0, i32 5
  call void @unique_editbone_name(ptr noundef %73, ptr noundef nonnull %74, ptr noundef null) #10
  %75 = load ptr, ptr %16, align 8, !tbaa !38
  %76 = load ptr, ptr %75, align 8, !tbaa !34
  %77 = icmp eq ptr %76, null
  br i1 %77, label %87, label %78

78:                                               ; preds = %33, %84
  %79 = phi ptr [ %85, %84 ], [ %76, %33 ]
  %80 = getelementptr inbounds %struct.EditBone, ptr %79, i64 0, i32 3
  %81 = load ptr, ptr %80, align 8, !tbaa !80
  %82 = icmp eq ptr %81, %23
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  store ptr %39, ptr %80, align 8, !tbaa !80
  br label %84

84:                                               ; preds = %78, %83
  %85 = load ptr, ptr %79, align 8, !tbaa !34
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %78, !llvm.loop !117

87:                                               ; preds = %84, %33
  %88 = getelementptr inbounds %struct.EditBone, ptr %39, i64 0, i32 3
  store ptr %23, ptr %88, align 8, !tbaa !80
  %89 = add nsw i32 %34, -1
  %90 = icmp sgt i32 %34, 2
  br i1 %90, label %33, label %17, !llvm.loop !118

91:                                               ; preds = %17, %2
  call void @BLI_freelistN(ptr noundef nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85327872, ptr noundef %4) #10
  ret i32 4
}

declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_view3d(ptr noundef) local_unnamed_addr #2

declare ptr @ED_view3d_cursor3d_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_view3d_win_to_3d(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #2

declare ptr @ED_armature_bone_get_mirrored(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @invert_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_armature_sync_selection(ptr noundef) local_unnamed_addr #2

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

declare i32 @ctx_data_list_count(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CTX_data_selected_bones(ptr noundef, ptr noundef) #2

declare void @ED_armature_validate_active(ptr noundef) local_unnamed_addr #2

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #9

declare ptr @CTX_wm_region_view3d(ptr noundef) local_unnamed_addr #2

declare void @RNA_string_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @unit_m3(ptr noundef) local_unnamed_addr #2

declare void @mul_m3_m3m3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CTX_data_selected_editable_bones(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !35, i64 160}
!39 = !{!"bArmature", !40, i64 0, !35, i64 120, !43, i64 128, !43, i64 144, !35, i64 160, !35, i64 168, !35, i64 176, !35, i64 184, !42, i64 192, !42, i64 196, !42, i64 200, !42, i64 204, !41, i64 208, !41, i64 210, !42, i64 212, !42, i64 216, !42, i64 220, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !42, i64 232, !42, i64 236, !42, i64 240, !42, i64 244, !42, i64 248, !42, i64 252}
!40 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !41, i64 98, !42, i64 100, !42, i64 104, !42, i64 108, !35, i64 112}
!41 = !{!"short", !36, i64 0}
!42 = !{!"int", !36, i64 0}
!43 = !{!"ListBase", !35, i64 0, !35, i64 8}
!44 = !{!45, !42, i64 132}
!45 = !{!"EditBone", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !36, i64 40, !46, i64 104, !36, i64 108, !36, i64 120, !42, i64 132, !42, i64 136, !46, i64 140, !46, i64 144, !46, i64 148, !46, i64 152, !46, i64 156, !46, i64 160, !46, i64 164, !46, i64 168, !46, i64 172, !46, i64 176, !41, i64 180}
!46 = !{!"float", !36, i64 0}
!47 = !{!45, !46, i64 144}
!48 = !{!45, !46, i64 140}
!49 = !{!45, !46, i64 148}
!50 = !{!45, !46, i64 156}
!51 = !{!45, !46, i64 160}
!52 = !{!45, !46, i64 164}
!53 = !{!45, !46, i64 168}
!54 = !{!45, !46, i64 172}
!55 = !{!45, !41, i64 180}
!56 = !{!39, !42, i64 216}
!57 = !{!45, !42, i64 136}
!58 = !{!59, !35, i64 296}
!59 = !{!"Object", !40, i64 0, !35, i64 120, !35, i64 128, !41, i64 136, !41, i64 138, !42, i64 140, !42, i64 144, !42, i64 148, !36, i64 152, !35, i64 216, !35, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !35, i64 280, !35, i64 288, !35, i64 296, !35, i64 304, !60, i64 312, !35, i64 360, !43, i64 368, !43, i64 384, !43, i64 400, !43, i64 416, !42, i64 432, !42, i64 436, !35, i64 440, !35, i64 448, !42, i64 456, !42, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !46, i64 616, !46, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !42, i64 944, !41, i64 948, !41, i64 950, !41, i64 952, !41, i64 954, !41, i64 956, !41, i64 958, !41, i64 960, !41, i64 962, !41, i64 964, !36, i64 966, !36, i64 967, !42, i64 968, !42, i64 972, !42, i64 976, !42, i64 980, !42, i64 984, !46, i64 988, !46, i64 992, !46, i64 996, !46, i64 1000, !46, i64 1004, !46, i64 1008, !46, i64 1012, !46, i64 1016, !46, i64 1020, !46, i64 1024, !46, i64 1028, !46, i64 1032, !41, i64 1036, !41, i64 1038, !41, i64 1040, !36, i64 1042, !36, i64 1043, !41, i64 1044, !36, i64 1046, !36, i64 1047, !46, i64 1048, !46, i64 1052, !43, i64 1056, !43, i64 1072, !43, i64 1088, !43, i64 1104, !46, i64 1120, !41, i64 1124, !41, i64 1126, !36, i64 1128, !42, i64 1144, !42, i64 1148, !35, i64 1152, !36, i64 1160, !36, i64 1161, !41, i64 1162, !36, i64 1164, !43, i64 1176, !43, i64 1192, !43, i64 1208, !43, i64 1224, !35, i64 1240, !35, i64 1248, !35, i64 1256, !36, i64 1264, !36, i64 1265, !41, i64 1266, !46, i64 1268, !35, i64 1272, !35, i64 1280, !35, i64 1288, !35, i64 1296, !61, i64 1304, !61, i64 1312, !42, i64 1320, !42, i64 1324, !43, i64 1328, !43, i64 1344, !35, i64 1360, !35, i64 1368, !35, i64 1376, !36, i64 1384, !35, i64 1392, !43, i64 1400, !35, i64 1416}
!60 = !{!"bAnimVizSettings", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !42, i64 32, !42, i64 36, !42, i64 40, !42, i64 44}
!61 = !{!"long", !36, i64 0}
!62 = !{!39, !35, i64 176}
!63 = !{!46, !46, i64 0}
!64 = !{!65, !35, i64 0}
!65 = !{!"wmOperatorType", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !35, i64 88, !35, i64 96, !35, i64 104, !43, i64 112, !35, i64 128, !35, i64 136, !35, i64 144, !66, i64 152, !41, i64 184}
!66 = !{!"ExtensionRNA", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24}
!67 = !{!65, !35, i64 8}
!68 = !{!65, !35, i64 24}
!69 = !{!65, !35, i64 48}
!70 = !{!65, !35, i64 32}
!71 = !{!65, !35, i64 72}
!72 = !{!65, !41, i64 184}
!73 = !{!42, !42, i64 0}
!74 = !{i32 2, i32 5}
!75 = distinct !{!75, !76, !77}
!76 = !{!"llvm.loop.mustprogress"}
!77 = !{!"llvm.loop.unroll.disable"}
!78 = distinct !{!78, !76, !77}
!79 = !{!39, !42, i64 192}
!80 = !{!45, !35, i64 24}
!81 = !{!45, !46, i64 152}
!82 = distinct !{!82, !76, !77}
!83 = !{!45, !35, i64 32}
!84 = distinct !{!84, !76, !77}
!85 = !{!59, !35, i64 288}
!86 = !{!87, !35, i64 104}
!87 = !{!"bConstraintTypeInfo", !41, i64 0, !41, i64 2, !36, i64 4, !36, i64 36, !35, i64 72, !35, i64 80, !35, i64 88, !35, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !35, i64 128}
!88 = !{!89, !35, i64 16}
!89 = !{!"bConstraintTarget", !35, i64 0, !35, i64 8, !35, i64 16, !36, i64 24, !36, i64 88, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158}
!90 = !{!36, !36, i64 0}
!91 = distinct !{!91, !76, !77}
!92 = distinct !{!92, !76, !77}
!93 = !{!87, !35, i64 112}
!94 = distinct !{!94, !76, !77}
!95 = !{!45, !35, i64 16}
!96 = distinct !{!96, !76, !77}
!97 = distinct !{!97, !76, !77}
!98 = distinct !{!98, !76, !77}
!99 = distinct !{!99, !76, !77}
!100 = !{!65, !35, i64 88}
!101 = !{!102, !35, i64 112}
!102 = !{!"wmOperator", !35, i64 0, !35, i64 8, !36, i64 16, !35, i64 80, !35, i64 88, !35, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !43, i64 128, !35, i64 144, !35, i64 152, !41, i64 160, !36, i64 162}
!103 = distinct !{!103, !76, !77}
!104 = distinct !{!104, !76, !77}
!105 = distinct !{!105, !76, !77}
!106 = !{!107, !42, i64 8}
!107 = !{!"UserDef", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !36, i64 20, !36, i64 788, !36, i64 1556, !36, i64 2580, !36, i64 3348, !36, i64 4116, !36, i64 4884, !36, i64 5652, !36, i64 6420, !36, i64 7444, !42, i64 8468, !41, i64 8472, !41, i64 8474, !41, i64 8476, !41, i64 8478, !41, i64 8480, !41, i64 8482, !42, i64 8484, !42, i64 8488, !42, i64 8492, !41, i64 8496, !41, i64 8498, !42, i64 8500, !42, i64 8504, !42, i64 8508, !42, i64 8512, !42, i64 8516, !42, i64 8520, !42, i64 8524, !41, i64 8528, !41, i64 8530, !41, i64 8532, !41, i64 8534, !43, i64 8536, !43, i64 8552, !43, i64 8568, !43, i64 8584, !43, i64 8600, !43, i64 8616, !43, i64 8632, !36, i64 8648, !41, i64 8712, !41, i64 8714, !41, i64 8716, !41, i64 8718, !41, i64 8720, !41, i64 8722, !41, i64 8724, !41, i64 8726, !36, i64 8728, !41, i64 8896, !41, i64 8898, !41, i64 8900, !41, i64 8902, !41, i64 8904, !41, i64 8906, !41, i64 8908, !41, i64 8910, !42, i64 8912, !42, i64 8916, !41, i64 8920, !41, i64 8922, !41, i64 8924, !41, i64 8926, !41, i64 8928, !41, i64 8930, !41, i64 8932, !41, i64 8934, !41, i64 8936, !41, i64 8938, !36, i64 8940, !36, i64 8941, !36, i64 8942, !36, i64 8943, !41, i64 8944, !41, i64 8946, !41, i64 8948, !41, i64 8950, !41, i64 8952, !41, i64 8954, !46, i64 8956, !46, i64 8960, !42, i64 8964, !41, i64 8968, !41, i64 8970, !46, i64 8972, !41, i64 8976, !41, i64 8978, !41, i64 8980, !41, i64 8982, !108, i64 8984, !36, i64 9760, !36, i64 9772, !41, i64 9788, !36, i64 9790, !36, i64 9791, !36, i64 9792, !36, i64 9872, !42, i64 10896, !42, i64 10900, !46, i64 10904, !46, i64 10908, !42, i64 10912, !41, i64 10916, !41, i64 10918, !41, i64 10920, !41, i64 10922, !41, i64 10924, !41, i64 10926, !109, i64 10928}
!108 = !{!"ColorBand", !41, i64 0, !41, i64 2, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !36, i64 8}
!109 = !{!"WalkNavigation", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12, !46, i64 16, !46, i64 20, !41, i64 24, !36, i64 26}
!110 = distinct !{!110, !76, !77}
!111 = !{!112, !35, i64 32}
!112 = !{!"CollectionPointerLink", !35, i64 0, !35, i64 8, !113, i64 16}
!113 = !{!"PointerRNA", !114, i64 0, !35, i64 8, !35, i64 16}
!114 = !{!"", !35, i64 0}
!115 = !{i64 0, i64 8, !34, i64 8, i64 8, !34, i64 16, i64 8, !34, i64 24, i64 8, !34, i64 32, i64 8, !34, i64 40, i64 64, !90, i64 104, i64 4, !63, i64 108, i64 12, !90, i64 120, i64 12, !90, i64 132, i64 4, !73, i64 136, i64 4, !73, i64 140, i64 4, !63, i64 144, i64 4, !63, i64 148, i64 4, !63, i64 152, i64 4, !63, i64 156, i64 4, !63, i64 160, i64 4, !63, i64 164, i64 4, !63, i64 168, i64 4, !63, i64 172, i64 4, !63, i64 176, i64 4, !63, i64 180, i64 2, !116}
!116 = !{!41, !41, i64 0}
!117 = distinct !{!117, !76, !77}
!118 = distinct !{!118, !76, !77}
