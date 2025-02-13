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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ED_armature_edit_bone_add(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %4 = tail call ptr %3(i64 noundef 184, ptr noundef nonnull @.str) #15
  %5 = getelementptr inbounds %struct.EditBone, ptr %4, i64 0, i32 5
  %6 = tail call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef %1, i64 noundef 64) #15
  %7 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !38
  tail call void @unique_editbone_name(ptr noundef %8, ptr noundef nonnull %5, ptr noundef null) #15
  %9 = load ptr, ptr %7, align 8, !tbaa !38
  tail call void @BLI_addtail(ptr noundef %9, ptr noundef %4) #15
  %10 = getelementptr inbounds %struct.EditBone, ptr %4, i64 0, i32 9
  %11 = load i32, ptr %10, align 4, !tbaa !44
  %12 = or i32 %11, 4
  store i32 %12, ptr %10, align 4, !tbaa !44
  %13 = getelementptr inbounds %struct.EditBone, ptr %4, i64 0, i32 11
  store <2 x float> <float 2.500000e-01, float 1.000000e+00>, ptr %13, align 4, !tbaa !47
  %14 = getelementptr inbounds %struct.EditBone, ptr %4, i64 0, i32 13
  store float 0x3FB99999A0000000, ptr %14, align 4, !tbaa !48
  %15 = getelementptr inbounds %struct.EditBone, ptr %4, i64 0, i32 15
  store <4 x float> <float 0x3FB99999A0000000, float 1.000000e+00, float 1.000000e+00, float 0x3FB99999A0000000>, ptr %15, align 4, !tbaa !47
  %16 = getelementptr inbounds %struct.EditBone, ptr %4, i64 0, i32 19
  store float 0x3FA99999A0000000, ptr %16, align 4, !tbaa !49
  %17 = getelementptr inbounds %struct.EditBone, ptr %4, i64 0, i32 21
  store i16 1, ptr %17, align 4, !tbaa !50
  %18 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 15
  %19 = load i32, ptr %18, align 8, !tbaa !51
  %20 = getelementptr inbounds %struct.EditBone, ptr %4, i64 0, i32 10
  store i32 %19, ptr %20, align 8, !tbaa !52
  ret ptr %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @unique_editbone_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ED_armature_edit_bone_add_primitive(ptr noundef %0, float noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !53
  tail call void @ED_armature_deselect_all(ptr noundef %0, i32 noundef 0) #15
  %6 = tail call ptr @ED_armature_edit_bone_add(ptr noundef %5, ptr noundef nonnull @.str.1) #16
  %7 = getelementptr inbounds %struct.bArmature, ptr %5, i64 0, i32 6
  store ptr %6, ptr %7, align 8, !tbaa !57
  %8 = getelementptr inbounds %struct.EditBone, ptr %6, i64 0, i32 7
  tail call fastcc void @zero_v3(ptr noundef nonnull %8) #16
  %9 = getelementptr inbounds %struct.EditBone, ptr %6, i64 0, i32 8
  tail call fastcc void @zero_v3(ptr noundef nonnull %9) #16
  %10 = icmp eq i8 %2, 0
  %11 = select i1 %10, i64 2, i64 1
  %12 = getelementptr inbounds %struct.EditBone, ptr %6, i64 0, i32 8, i64 %11
  store float %1, ptr %12, align 4, !tbaa !47
  ret ptr %6
}

; Function Attrs: optsize
declare void @ED_armature_deselect_all(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #3 !PGOFuncName !58 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !47
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !47
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @ARMATURE_OT_click_extrude(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.2, ptr %0, align 8, !tbaa !59
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.3, ptr %2, align 8, !tbaa !62
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.4, ptr %3, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @armature_click_extrude_invoke, ptr %4, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @armature_click_extrude_exec, ptr %5, align 8, !tbaa !65
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editarmature, ptr %6, align 8, !tbaa !66
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !67
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @armature_click_extrude_invoke(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !68 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [2 x float], align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #17
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %8 = tail call ptr @CTX_wm_region(ptr noundef %0) #15
  %9 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #15
  %10 = tail call ptr @ED_view3d_cursor3d_get(ptr noundef %7, ptr noundef %9) #15
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef %10) #16
  %11 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %12 = load <2 x i32>, ptr %11, align 4, !tbaa !69
  %13 = sitofp <2 x i32> %12 to <2 x float>
  store <2 x float> %13, ptr %6, align 8, !tbaa !47
  call void @ED_view3d_win_to_3d(ptr noundef %8, ptr noundef %10, ptr noundef nonnull %6, ptr noundef nonnull %4) #15
  call fastcc void @copy_v3_v3(ptr noundef %10, ptr noundef nonnull %4) #16
  %14 = call i32 @armature_click_extrude_exec(ptr noundef %0, ptr poison) #16, !range !70
  call fastcc void @copy_v3_v3(ptr noundef %10, ptr noundef nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #17
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @armature_click_extrude_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !71 {
  %3 = alloca [3 x [3 x float]], align 16
  %4 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #17
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %6 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #15
  %7 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #15
  %8 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !53
  %10 = getelementptr inbounds %struct.bArmature, ptr %9, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !38
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = icmp eq ptr %12, null
  br i1 %13, label %124, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.bArmature, ptr %9, i64 0, i32 15
  %16 = load i32, ptr %15, align 8, !tbaa !51
  %17 = getelementptr inbounds %struct.bArmature, ptr %9, i64 0, i32 6
  br label %23

18:                                               ; preds = %40
  br i1 %13, label %124, label %19

19:                                               ; preds = %18
  %20 = getelementptr inbounds %struct.bArmature, ptr %9, i64 0, i32 15
  %21 = load i32, ptr %20, align 8, !tbaa !51
  %22 = getelementptr inbounds %struct.bArmature, ptr %9, i64 0, i32 6
  br label %43

23:                                               ; preds = %14, %40
  %24 = phi ptr [ %12, %14 ], [ %41, %40 ]
  %25 = getelementptr inbounds %struct.EditBone, ptr %24, i64 0, i32 10
  %26 = load i32, ptr %25, align 8, !tbaa !52
  %27 = and i32 %26, %16
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.EditBone, ptr %24, i64 0, i32 9
  %31 = load i32, ptr %30, align 4, !tbaa !44
  %32 = and i32 %31, 1024
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = and i32 %31, 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %63

37:                                               ; preds = %34
  %38 = load ptr, ptr %17, align 8, !tbaa !57
  %39 = icmp eq ptr %38, %24
  br i1 %39, label %63, label %40

40:                                               ; preds = %29, %37, %23
  %41 = load ptr, ptr %24, align 8, !tbaa !34
  %42 = icmp eq ptr %41, null
  br i1 %42, label %18, label %23, !llvm.loop !72

43:                                               ; preds = %19, %60
  %44 = phi ptr [ %12, %19 ], [ %61, %60 ]
  %45 = getelementptr inbounds %struct.EditBone, ptr %44, i64 0, i32 10
  %46 = load i32, ptr %45, align 8, !tbaa !52
  %47 = and i32 %46, %21
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %60, label %49

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.EditBone, ptr %44, i64 0, i32 9
  %51 = load i32, ptr %50, align 4, !tbaa !44
  %52 = and i32 %51, 1024
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = and i32 %51, 2
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load ptr, ptr %22, align 8, !tbaa !57
  %59 = icmp eq ptr %58, %44
  br i1 %59, label %63, label %60

60:                                               ; preds = %49, %57, %43
  %61 = load ptr, ptr %44, align 8, !tbaa !34
  %62 = icmp eq ptr %61, null
  br i1 %62, label %124, label %43, !llvm.loop !74

63:                                               ; preds = %37, %34, %57, %54
  %64 = phi i1 [ true, %54 ], [ true, %57 ], [ false, %34 ], [ false, %37 ]
  %65 = phi ptr [ %44, %54 ], [ %44, %57 ], [ %24, %34 ], [ %24, %37 ]
  tail call void @ED_armature_deselect_all(ptr noundef %7, i32 noundef 0) #15
  %66 = getelementptr inbounds %struct.bArmature, ptr %9, i64 0, i32 8
  %67 = load i32, ptr %66, align 8, !tbaa !75
  %68 = and i32 %67, 256
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %63
  %71 = load ptr, ptr %10, align 8, !tbaa !38
  %72 = tail call ptr @ED_armature_bone_get_mirrored(ptr noundef %71, ptr noundef nonnull %65) #15
  br label %73

73:                                               ; preds = %70, %63
  %74 = phi ptr [ %72, %70 ], [ null, %63 ]
  %75 = getelementptr inbounds %struct.bArmature, ptr %9, i64 0, i32 6
  %76 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 47
  %77 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 47, i64 3
  br label %78

78:                                               ; preds = %73, %113
  %79 = phi ptr [ %65, %73 ], [ %87, %113 ]
  %80 = phi ptr [ %74, %73 ], [ %86, %113 ]
  %81 = phi i1 [ false, %73 ], [ true, %113 ]
  %82 = phi i1 [ true, %73 ], [ false, %113 ]
  br i1 %81, label %83, label %85

83:                                               ; preds = %78
  %84 = icmp eq ptr %80, null
  br i1 %84, label %122, label %85

85:                                               ; preds = %83, %78
  %86 = phi ptr [ %80, %78 ], [ %79, %83 ]
  %87 = phi ptr [ %79, %78 ], [ %80, %83 ]
  %88 = getelementptr inbounds %struct.EditBone, ptr %87, i64 0, i32 5
  %89 = call ptr @ED_armature_edit_bone_add(ptr noundef nonnull %9, ptr noundef nonnull %88) #16
  store ptr %89, ptr %75, align 8, !tbaa !57
  %90 = getelementptr inbounds %struct.EditBone, ptr %89, i64 0, i32 7
  %91 = getelementptr inbounds %struct.EditBone, ptr %87, i64 0, i32 19
  br i1 %64, label %92, label %97

92:                                               ; preds = %85
  %93 = getelementptr inbounds %struct.EditBone, ptr %87, i64 0, i32 7
  call fastcc void @copy_v3_v3(ptr noundef nonnull %90, ptr noundef nonnull %93) #16
  %94 = load float, ptr %91, align 4, !tbaa !49
  %95 = getelementptr inbounds %struct.EditBone, ptr %87, i64 0, i32 3
  %96 = load ptr, ptr %95, align 8, !tbaa !76
  br label %103

97:                                               ; preds = %85
  %98 = getelementptr inbounds %struct.EditBone, ptr %87, i64 0, i32 8
  call fastcc void @copy_v3_v3(ptr noundef nonnull %90, ptr noundef nonnull %98) #16
  %99 = load float, ptr %91, align 4, !tbaa !49
  %100 = getelementptr inbounds %struct.EditBone, ptr %89, i64 0, i32 9
  %101 = load i32, ptr %100, align 4, !tbaa !44
  %102 = or i32 %101, 16
  store i32 %102, ptr %100, align 4, !tbaa !44
  br label %103

103:                                              ; preds = %97, %92
  %104 = phi float [ %94, %92 ], [ %99, %97 ]
  %105 = phi ptr [ %96, %92 ], [ %87, %97 ]
  %106 = getelementptr inbounds %struct.EditBone, ptr %89, i64 0, i32 18
  store float %104, ptr %106, align 8
  %107 = getelementptr inbounds %struct.EditBone, ptr %89, i64 0, i32 3
  store ptr %105, ptr %107, align 8
  %108 = call ptr @ED_view3d_cursor3d_get(ptr noundef %5, ptr noundef %6) #15
  %109 = getelementptr inbounds %struct.EditBone, ptr %89, i64 0, i32 8
  call fastcc void @copy_v3_v3(ptr noundef nonnull %109, ptr noundef %108) #16
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %109, ptr noundef nonnull %109, ptr noundef nonnull %77) #16
  br i1 %81, label %110, label %113

110:                                              ; preds = %103
  %111 = load float, ptr %109, align 8, !tbaa !47
  %112 = fneg float %111
  store float %112, ptr %109, align 8, !tbaa !47
  br label %113

113:                                              ; preds = %110, %103
  call void @copy_m3_m4(ptr noundef nonnull %3, ptr noundef nonnull %76) #15
  %114 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %4, ptr noundef nonnull %3) #15
  call void @mul_m3_v3(ptr noundef nonnull %4, ptr noundef nonnull %109) #15
  %115 = getelementptr inbounds %struct.EditBone, ptr %89, i64 0, i32 7
  %116 = call fastcc float @len_v3v3(ptr noundef nonnull %115, ptr noundef nonnull %109) #16
  %117 = getelementptr inbounds %struct.EditBone, ptr %89, i64 0, i32 14
  store float %116, ptr %117, align 8, !tbaa !77
  %118 = fmul float %116, 0x3FA99999A0000000
  %119 = getelementptr inbounds %struct.EditBone, ptr %89, i64 0, i32 19
  store float %118, ptr %119, align 4, !tbaa !49
  %120 = fmul float %116, 2.500000e-01
  %121 = getelementptr inbounds %struct.EditBone, ptr %89, i64 0, i32 11
  store float %120, ptr %121, align 4, !tbaa !78
  br i1 %82, label %78, label %122, !llvm.loop !79

122:                                              ; preds = %83, %113
  %123 = load ptr, ptr %10, align 8, !tbaa !38
  call void @ED_armature_sync_selection(ptr noundef %123) #15
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85327872, ptr noundef %7) #15
  br label %124

124:                                              ; preds = %60, %2, %18, %122
  %125 = phi i32 [ 4, %122 ], [ 2, %18 ], [ 2, %2 ], [ 2, %60 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #17
  ret i32 %125
}

; Function Attrs: optsize
declare i32 @ED_operator_editarmature(ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @add_points_bone(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !53
  %6 = tail call ptr @ED_armature_edit_bone_add(ptr noundef %5, ptr noundef nonnull @.str.1) #16
  %7 = getelementptr inbounds %struct.EditBone, ptr %6, i64 0, i32 7
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef %1) #16
  %8 = getelementptr inbounds %struct.EditBone, ptr %6, i64 0, i32 8
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef %2) #16
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !80 {
  %3 = load float, ptr %1, align 4, !tbaa !47
  store float %3, ptr %0, align 4, !tbaa !47
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !47
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !47
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !47
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !47
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @preEditBoneDuplicate(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %7, %4 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.EditBone, ptr %5, i64 0, i32 4
  store ptr null, ptr %6, align 8, !tbaa !81
  %7 = load ptr, ptr %5, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %4, !llvm.loop !82

9:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @updateDuplicateSubtargetObjects(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readnone %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.ListBase, align 8
  %6 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 18
  %7 = load ptr, ptr %6, align 8, !tbaa !83
  %8 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 5
  %9 = tail call ptr @BKE_pose_channel_verify(ptr noundef %7, ptr noundef nonnull %8) #15
  %10 = icmp eq ptr %9, null
  br i1 %10, label %57, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.bPoseChannel, ptr %9, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = icmp eq ptr %13, null
  br i1 %14, label %57, label %15

15:                                               ; preds = %11, %54
  %16 = phi ptr [ %55, %54 ], [ %13, %11 ]
  %17 = call ptr @BKE_constraint_typeinfo_get(ptr noundef nonnull %16) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %18 = icmp eq ptr %17, null
  br i1 %18, label %54, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %17, i64 0, i32 8
  %21 = load ptr, ptr %20, align 8, !tbaa !84
  %22 = icmp eq ptr %21, null
  br i1 %22, label %54, label %23

23:                                               ; preds = %19
  %24 = call i32 %21(ptr noundef nonnull %16, ptr noundef nonnull %5) #15
  %25 = load ptr, ptr %5, align 8, !tbaa !34
  %26 = icmp eq ptr %25, null
  br i1 %26, label %49, label %27

27:                                               ; preds = %23, %46
  %28 = phi ptr [ %47, %46 ], [ %25, %23 ]
  %29 = getelementptr inbounds %struct.bConstraintTarget, ptr %28, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !86
  %31 = icmp eq ptr %30, %2
  br i1 %31, label %32, label %46

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.bConstraintTarget, ptr %28, i64 0, i32 3
  %34 = load i8, ptr %33, align 8, !tbaa !88
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %32
  store ptr %3, ptr %29, align 8, !tbaa !86
  %37 = call fastcc ptr @get_named_editbone(ptr noundef %1, ptr noundef nonnull %33) #16
  %38 = icmp eq ptr %37, null
  br i1 %38, label %46, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.EditBone, ptr %37, i64 0, i32 4
  %41 = load ptr, ptr %40, align 8, !tbaa !81
  %42 = icmp eq ptr %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.EditBone, ptr %41, i64 0, i32 5
  %45 = call ptr @BLI_strncpy(ptr noundef nonnull %33, ptr noundef nonnull %44, i64 noundef 64) #15
  br label %46

46:                                               ; preds = %27, %32, %39, %43, %36
  %47 = load ptr, ptr %28, align 8, !tbaa !34
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %27, !llvm.loop !89

49:                                               ; preds = %46, %23
  %50 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %17, i64 0, i32 9
  %51 = load ptr, ptr %50, align 8, !tbaa !90
  %52 = icmp eq ptr %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  call void %51(ptr noundef nonnull %16, ptr noundef nonnull %5, i8 noundef zeroext 0) #15
  br label %54

54:                                               ; preds = %49, %53, %19, %15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #17
  %55 = load ptr, ptr %16, align 8, !tbaa !34
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %15, !llvm.loop !91

57:                                               ; preds = %54, %11, %4
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_pose_channel_verify(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_constraint_typeinfo_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_named_editbone(ptr nocapture noundef readonly %0, ptr noundef readonly %1) unnamed_addr #7 !PGOFuncName !92 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %2, %8
  %5 = phi ptr [ %6, %8 ], [ %0, %2 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.EditBone, ptr %6, i64 0, i32 5
  %10 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %9) #18
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %4, !llvm.loop !93

12:                                               ; preds = %4, %8, %2
  %13 = phi ptr [ null, %2 ], [ null, %4 ], [ %6, %8 ]
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @updateDuplicateSubtarget(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  tail call void @updateDuplicateSubtargetObjects(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %2) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @duplicateEditBoneObjects(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) local_unnamed_addr #0 {
  %6 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %7 = tail call ptr %6(i64 noundef 184, ptr noundef nonnull @.str.5) #15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %7, ptr noundef nonnull align 8 dereferenceable(184) %0, i64 184, i1 false)
  %8 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 4
  store ptr %7, ptr %8, align 8, !tbaa !81
  %9 = getelementptr inbounds %struct.EditBone, ptr %7, i64 0, i32 4
  store ptr %0, ptr %9, align 8, !tbaa !81
  %10 = icmp eq ptr %1, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.EditBone, ptr %7, i64 0, i32 5
  %13 = tail call ptr @BLI_strncpy(ptr noundef nonnull %12, ptr noundef nonnull %1, i64 noundef 64) #15
  br label %14

14:                                               ; preds = %11, %5
  %15 = getelementptr inbounds %struct.EditBone, ptr %7, i64 0, i32 5
  tail call void @unique_editbone_name(ptr noundef %2, ptr noundef nonnull %15, ptr noundef null) #15
  tail call void @BLI_addtail(ptr noundef %2, ptr noundef nonnull %7) #15
  %16 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !94
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = tail call ptr @IDP_CopyProperty(ptr noundef nonnull %17) #15
  %21 = getelementptr inbounds %struct.EditBone, ptr %7, i64 0, i32 2
  store ptr %20, ptr %21, align 8, !tbaa !94
  br label %22

22:                                               ; preds = %19, %14
  %23 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 18
  %24 = load ptr, ptr %23, align 8, !tbaa !83
  %25 = icmp eq ptr %24, null
  br i1 %25, label %36, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 5
  %28 = tail call ptr @BKE_pose_channel_verify(ptr noundef nonnull %24, ptr noundef nonnull %27) #15
  %29 = icmp eq ptr %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 18
  %32 = load ptr, ptr %31, align 8, !tbaa !83
  %33 = tail call ptr @BKE_pose_channel_verify(ptr noundef %32, ptr noundef nonnull %15) #15
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  tail call void @BKE_pose_channel_copy_data(ptr noundef nonnull %33, ptr noundef nonnull %28) #15
  br label %36

36:                                               ; preds = %26, %35, %30, %22
  ret ptr %7
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: optsize
declare ptr @IDP_CopyProperty(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_pose_channel_copy_data(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @duplicateEditBone(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = tail call ptr @duplicateEditBoneObjects(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %3) #16
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @ARMATURE_OT_duplicate(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.6, ptr %0, align 8, !tbaa !59
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.7, ptr %2, align 8, !tbaa !62
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.8, ptr %3, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @armature_duplicate_selected_exec, ptr %4, align 8, !tbaa !65
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editarmature, ptr %5, align 8, !tbaa !66
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !67
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @armature_duplicate_selected_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !95 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #15
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !53
  %6 = tail call i32 @ctx_data_list_count(ptr noundef %0, ptr noundef nonnull @CTX_data_selected_bones) #15
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %161, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.bArmature, ptr %5, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !38
  tail call void @ED_armature_sync_selection(ptr noundef %10) #15
  %11 = load ptr, ptr %9, align 8, !tbaa !38
  tail call void @preEditBoneDuplicate(ptr noundef %11) #16
  %12 = getelementptr inbounds %struct.bArmature, ptr %5, i64 0, i32 8
  %13 = load i32, ptr %12, align 8, !tbaa !75
  %14 = and i32 %13, 256
  %15 = icmp eq i32 %14, 0
  %16 = load ptr, ptr %9, align 8, !tbaa !38
  br i1 %15, label %47, label %17

17:                                               ; preds = %8
  %18 = load ptr, ptr %16, align 8, !tbaa !34
  %19 = icmp eq ptr %18, null
  br i1 %19, label %123, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.bArmature, ptr %5, i64 0, i32 15
  br label %22

22:                                               ; preds = %20, %42
  %23 = phi ptr [ %18, %20 ], [ %43, %42 ]
  %24 = load i32, ptr %21, align 8, !tbaa !51
  %25 = getelementptr inbounds %struct.EditBone, ptr %23, i64 0, i32 10
  %26 = load i32, ptr %25, align 8, !tbaa !52
  %27 = and i32 %26, %24
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %42, label %29

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.EditBone, ptr %23, i64 0, i32 9
  %31 = load i32, ptr %30, align 4, !tbaa !44
  %32 = and i32 %31, 1025
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load ptr, ptr %9, align 8, !tbaa !38
  %36 = tail call ptr @ED_armature_bone_get_mirrored(ptr noundef %35, ptr noundef nonnull %23) #15
  %37 = icmp eq ptr %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.EditBone, ptr %36, i64 0, i32 9
  %40 = load i32, ptr %39, align 4, !tbaa !44
  %41 = or i32 %40, 1
  store i32 %41, ptr %39, align 4, !tbaa !44
  br label %42

42:                                               ; preds = %29, %34, %38, %22
  %43 = load ptr, ptr %23, align 8, !tbaa !34
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %22, !llvm.loop !96

45:                                               ; preds = %42
  %46 = load ptr, ptr %9, align 8, !tbaa !38
  br label %47

47:                                               ; preds = %45, %8
  %48 = phi ptr [ %16, %8 ], [ %46, %45 ]
  %49 = load ptr, ptr %48, align 8, !tbaa !34
  %50 = icmp eq ptr %49, null
  br i1 %50, label %123, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.bArmature, ptr %5, i64 0, i32 15
  br label %53

53:                                               ; preds = %51, %72
  %54 = phi ptr [ %49, %51 ], [ %74, %72 ]
  %55 = phi ptr [ null, %51 ], [ %73, %72 ]
  %56 = load i32, ptr %52, align 8, !tbaa !51
  %57 = getelementptr inbounds %struct.EditBone, ptr %54, i64 0, i32 10
  %58 = load i32, ptr %57, align 8, !tbaa !52
  %59 = and i32 %58, %56
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %72, label %61

61:                                               ; preds = %53
  %62 = getelementptr inbounds %struct.EditBone, ptr %54, i64 0, i32 9
  %63 = load i32, ptr %62, align 4, !tbaa !44
  %64 = and i32 %63, 1025
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.EditBone, ptr %54, i64 0, i32 5
  %68 = load ptr, ptr %9, align 8, !tbaa !38
  %69 = tail call ptr @duplicateEditBone(ptr noundef nonnull %54, ptr noundef nonnull %67, ptr noundef %68, ptr noundef %3) #16
  %70 = icmp eq ptr %55, null
  %71 = select i1 %70, ptr %69, ptr %55
  br label %72

72:                                               ; preds = %66, %61, %53
  %73 = phi ptr [ %55, %61 ], [ %55, %53 ], [ %71, %66 ]
  %74 = load ptr, ptr %54, align 8, !tbaa !34
  %75 = icmp ne ptr %74, null
  %76 = icmp ne ptr %74, %73
  %77 = select i1 %75, i1 %76, i1 false
  br i1 %77, label %53, label %78, !llvm.loop !97

78:                                               ; preds = %72
  %79 = load ptr, ptr %9, align 8, !tbaa !38
  %80 = load ptr, ptr %79, align 8, !tbaa !34
  %81 = icmp ne ptr %80, null
  %82 = icmp ne ptr %80, %73
  %83 = select i1 %81, i1 %82, i1 false
  br i1 %83, label %84, label %123

84:                                               ; preds = %78
  %85 = getelementptr inbounds %struct.bArmature, ptr %5, i64 0, i32 15
  br label %86

86:                                               ; preds = %84, %118
  %87 = phi ptr [ %80, %84 ], [ %119, %118 ]
  %88 = load i32, ptr %85, align 8, !tbaa !51
  %89 = getelementptr inbounds %struct.EditBone, ptr %87, i64 0, i32 10
  %90 = load i32, ptr %89, align 8, !tbaa !52
  %91 = and i32 %90, %88
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %118, label %93

93:                                               ; preds = %86
  %94 = getelementptr inbounds %struct.EditBone, ptr %87, i64 0, i32 9
  %95 = load i32, ptr %94, align 4, !tbaa !44
  %96 = and i32 %95, 1025
  %97 = icmp eq i32 %96, 1
  br i1 %97, label %98, label %118

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.EditBone, ptr %87, i64 0, i32 4
  %100 = load ptr, ptr %99, align 8, !tbaa !81
  %101 = getelementptr inbounds %struct.EditBone, ptr %87, i64 0, i32 3
  %102 = load ptr, ptr %101, align 8, !tbaa !76
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %106

104:                                              ; preds = %98
  %105 = getelementptr inbounds %struct.EditBone, ptr %100, i64 0, i32 3
  store ptr null, ptr %105, align 8, !tbaa !76
  br label %116

106:                                              ; preds = %98
  %107 = getelementptr inbounds %struct.EditBone, ptr %102, i64 0, i32 4
  %108 = load ptr, ptr %107, align 8, !tbaa !81
  %109 = icmp eq ptr %108, null
  %110 = getelementptr inbounds %struct.EditBone, ptr %100, i64 0, i32 3
  br i1 %109, label %112, label %111

111:                                              ; preds = %106
  store ptr %108, ptr %110, align 8, !tbaa !76
  br label %116

112:                                              ; preds = %106
  store ptr %102, ptr %110, align 8, !tbaa !76
  %113 = getelementptr inbounds %struct.EditBone, ptr %100, i64 0, i32 9
  %114 = load i32, ptr %113, align 4, !tbaa !44
  %115 = and i32 %114, -17
  store i32 %115, ptr %113, align 4, !tbaa !44
  br label %116

116:                                              ; preds = %111, %112, %104
  %117 = load ptr, ptr %9, align 8, !tbaa !38
  tail call void @updateDuplicateSubtarget(ptr noundef nonnull %100, ptr noundef %117, ptr noundef %3) #16
  br label %118

118:                                              ; preds = %93, %116, %86
  %119 = load ptr, ptr %87, align 8, !tbaa !34
  %120 = icmp ne ptr %119, null
  %121 = icmp ne ptr %119, %73
  %122 = select i1 %120, i1 %121, i1 false
  br i1 %122, label %86, label %123, !llvm.loop !98

123:                                              ; preds = %118, %17, %47, %78
  %124 = phi ptr [ %73, %78 ], [ null, %47 ], [ null, %17 ], [ %73, %118 ]
  %125 = getelementptr inbounds %struct.bArmature, ptr %5, i64 0, i32 6
  %126 = load ptr, ptr %125, align 8, !tbaa !57
  %127 = icmp eq ptr %126, null
  br i1 %127, label %133, label %128

128:                                              ; preds = %123
  %129 = getelementptr inbounds %struct.EditBone, ptr %126, i64 0, i32 4
  %130 = load ptr, ptr %129, align 8, !tbaa !81
  %131 = icmp eq ptr %130, null
  br i1 %131, label %133, label %132

132:                                              ; preds = %128
  store ptr %130, ptr %125, align 8, !tbaa !57
  br label %133

133:                                              ; preds = %128, %132, %123
  %134 = load ptr, ptr %9, align 8, !tbaa !38
  %135 = load ptr, ptr %134, align 8, !tbaa !34
  %136 = icmp ne ptr %135, null
  %137 = icmp ne ptr %135, %124
  %138 = select i1 %136, i1 %137, i1 false
  br i1 %138, label %139, label %160

139:                                              ; preds = %133
  %140 = getelementptr inbounds %struct.bArmature, ptr %5, i64 0, i32 15
  %141 = load i32, ptr %140, align 8, !tbaa !51
  br label %142

142:                                              ; preds = %139, %155
  %143 = phi ptr [ %135, %139 ], [ %156, %155 ]
  %144 = getelementptr inbounds %struct.EditBone, ptr %143, i64 0, i32 10
  %145 = load i32, ptr %144, align 8, !tbaa !52
  %146 = and i32 %145, %141
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %155, label %148

148:                                              ; preds = %142
  %149 = getelementptr inbounds %struct.EditBone, ptr %143, i64 0, i32 9
  %150 = load i32, ptr %149, align 4, !tbaa !44
  %151 = and i32 %150, 1024
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %148
  %154 = and i32 %150, -1032
  store i32 %154, ptr %149, align 4, !tbaa !44
  br label %155

155:                                              ; preds = %148, %153, %142
  %156 = load ptr, ptr %143, align 8, !tbaa !34
  %157 = icmp ne ptr %156, null
  %158 = icmp ne ptr %156, %124
  %159 = select i1 %157, i1 %158, i1 false
  br i1 %159, label %142, label %160, !llvm.loop !99

160:                                              ; preds = %155, %133
  tail call void @ED_armature_validate_active(ptr noundef nonnull %5) #15
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85327872, ptr noundef %3) #15
  br label %161

161:                                              ; preds = %2, %160
  %162 = phi i32 [ 4, %160 ], [ 2, %2 ]
  ret i32 %162
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ARMATURE_OT_extrude(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.9, ptr %0, align 8, !tbaa !59
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.10, ptr %2, align 8, !tbaa !62
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.11, ptr %3, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @armature_extrude_exec, ptr %4, align 8, !tbaa !65
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editarmature, ptr %5, align 8, !tbaa !66
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !67
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !100
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.12, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @armature_extrude_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !101 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !102
  %5 = tail call i32 @RNA_boolean_get(ptr noundef %4, ptr noundef nonnull @.str.12) #15
  %6 = trunc i32 %5 to i8
  %7 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #15
  %8 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !53
  %10 = getelementptr inbounds %struct.bArmature, ptr %9, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !38
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = icmp eq ptr %12, null
  br i1 %13, label %219, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.bArmature, ptr %9, i64 0, i32 15
  %16 = load i32, ptr %15, align 8, !tbaa !51
  br label %21

17:                                               ; preds = %46
  br i1 %13, label %219, label %18

18:                                               ; preds = %17
  %19 = getelementptr inbounds %struct.bArmature, ptr %9, i64 0, i32 15
  %20 = getelementptr inbounds %struct.bArmature, ptr %9, i64 0, i32 8
  br label %49

21:                                               ; preds = %14, %46
  %22 = phi ptr [ %12, %14 ], [ %47, %46 ]
  %23 = getelementptr inbounds %struct.EditBone, ptr %22, i64 0, i32 10
  %24 = load i32, ptr %23, align 8, !tbaa !52
  %25 = and i32 %24, %16
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %46, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.EditBone, ptr %22, i64 0, i32 9
  %29 = load i32, ptr %28, align 4, !tbaa !44
  %30 = and i32 %29, 1026
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %46

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.EditBone, ptr %22, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !76
  %35 = icmp eq ptr %34, null
  %36 = and i32 %29, 16
  %37 = icmp eq i32 %36, 0
  %38 = or i1 %37, %35
  br i1 %38, label %46, label %39

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.EditBone, ptr %34, i64 0, i32 9
  %41 = load i32, ptr %40, align 4, !tbaa !44
  %42 = and i32 %41, 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %39
  %45 = and i32 %29, -1027
  store i32 %45, ptr %28, align 4, !tbaa !44
  br label %46

46:                                               ; preds = %27, %32, %44, %39, %21
  %47 = load ptr, ptr %22, align 8, !tbaa !34
  %48 = icmp eq ptr %47, null
  br i1 %48, label %17, label %21, !llvm.loop !104

49:                                               ; preds = %18, %200
  %50 = phi ptr [ %12, %18 ], [ %205, %200 ]
  %51 = phi i8 [ %6, %18 ], [ %203, %200 ]
  %52 = phi i32 [ 0, %18 ], [ %202, %200 ]
  %53 = phi ptr [ null, %18 ], [ %201, %200 ]
  %54 = load i32, ptr %19, align 8, !tbaa !51
  %55 = getelementptr inbounds %struct.EditBone, ptr %50, i64 0, i32 10
  %56 = load i32, ptr %55, align 8, !tbaa !52
  %57 = and i32 %56, %54
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %200, label %59

59:                                               ; preds = %49
  %60 = getelementptr inbounds %struct.EditBone, ptr %50, i64 0, i32 9
  %61 = load i32, ptr %60, align 4, !tbaa !44
  %62 = and i32 %61, 1024
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %200

64:                                               ; preds = %59
  %65 = and i32 %61, 5
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %64
  %68 = and i32 %61, 2
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %192, label %70

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.EditBone, ptr %50, i64 0, i32 3
  %72 = load ptr, ptr %71, align 8, !tbaa !76
  %73 = icmp eq ptr %72, null
  br i1 %73, label %79, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.EditBone, ptr %72, i64 0, i32 9
  %76 = load i32, ptr %75, align 4, !tbaa !44
  %77 = and i32 %76, 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %192

79:                                               ; preds = %70, %74, %64
  %80 = load i32, ptr %20, align 8, !tbaa !75
  %81 = and i32 %80, 256
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %99, label %83

83:                                               ; preds = %79
  %84 = load ptr, ptr %10, align 8, !tbaa !38
  %85 = tail call ptr @ED_armature_bone_get_mirrored(ptr noundef %84, ptr noundef nonnull %50) #15
  %86 = icmp eq ptr %85, null
  br i1 %86, label %94, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.EditBone, ptr %85, i64 0, i32 9
  %89 = load i32, ptr %88, align 4, !tbaa !44
  %90 = and i32 %89, 7
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %87
  %93 = and i32 %89, -8
  store i32 %93, ptr %88, align 4, !tbaa !44
  br label %94

94:                                               ; preds = %87, %92, %83
  %95 = phi i8 [ 0, %92 ], [ 0, %87 ], [ %51, %83 ]
  %96 = icmp ne i8 %95, 0
  %97 = select i1 %86, i1 %96, i1 false
  %98 = select i1 %97, ptr %50, ptr %85
  br label %99

99:                                               ; preds = %94, %79
  %100 = phi ptr [ null, %79 ], [ %98, %94 ]
  %101 = phi i8 [ %51, %79 ], [ %95, %94 ]
  %102 = icmp ne i8 %101, 0
  %103 = add i32 %52, 2
  br label %104

104:                                              ; preds = %99, %178
  %105 = phi ptr [ %50, %99 ], [ %185, %178 ]
  %106 = phi i32 [ %52, %99 ], [ %116, %178 ]
  %107 = phi i1 [ false, %99 ], [ true, %178 ]
  %108 = phi i1 [ true, %99 ], [ false, %178 ]
  %109 = phi ptr [ %53, %99 ], [ %182, %178 ]
  %110 = phi ptr [ %100, %99 ], [ %184, %178 ]
  br i1 %107, label %111, label %113

111:                                              ; preds = %104
  %112 = icmp eq ptr %110, null
  br i1 %112, label %186, label %113

113:                                              ; preds = %111, %104
  %114 = phi ptr [ %110, %104 ], [ %105, %111 ]
  %115 = phi ptr [ %105, %104 ], [ %110, %111 ]
  %116 = add nsw i32 %106, 1
  %117 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %118 = tail call ptr %117(i64 noundef 184, ptr noundef nonnull @.str.26) #15
  %119 = getelementptr inbounds %struct.EditBone, ptr %118, i64 0, i32 7
  %120 = getelementptr inbounds %struct.EditBone, ptr %118, i64 0, i32 8
  br i1 %66, label %129, label %121

121:                                              ; preds = %113
  %122 = getelementptr inbounds %struct.EditBone, ptr %115, i64 0, i32 8
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %119, ptr noundef nonnull %122) #16
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %120, ptr noundef nonnull %119) #16
  %123 = getelementptr inbounds %struct.EditBone, ptr %118, i64 0, i32 3
  store ptr %115, ptr %123, align 8, !tbaa !76
  %124 = getelementptr inbounds %struct.EditBone, ptr %115, i64 0, i32 9
  %125 = load i32, ptr %124, align 4, !tbaa !44
  %126 = and i32 %125, 8388612
  %127 = getelementptr inbounds %struct.EditBone, ptr %118, i64 0, i32 9
  %128 = or disjoint i32 %126, 16
  store i32 %128, ptr %127, align 4, !tbaa !44
  br label %142

129:                                              ; preds = %113
  %130 = getelementptr inbounds %struct.EditBone, ptr %115, i64 0, i32 7
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %119, ptr noundef nonnull %130) #16
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %120, ptr noundef nonnull %130) #16
  %131 = getelementptr inbounds %struct.EditBone, ptr %115, i64 0, i32 3
  %132 = load ptr, ptr %131, align 8, !tbaa !76
  %133 = getelementptr inbounds %struct.EditBone, ptr %118, i64 0, i32 3
  store ptr %132, ptr %133, align 8, !tbaa !76
  %134 = getelementptr inbounds %struct.EditBone, ptr %118, i64 0, i32 9
  store i32 4, ptr %134, align 4, !tbaa !44
  %135 = icmp eq ptr %132, null
  br i1 %135, label %142, label %136

136:                                              ; preds = %129
  %137 = getelementptr inbounds %struct.EditBone, ptr %115, i64 0, i32 9
  %138 = load i32, ptr %137, align 4, !tbaa !44
  %139 = and i32 %138, 16
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %142, label %141

141:                                              ; preds = %136
  store i32 20, ptr %134, align 4, !tbaa !44
  br label %142

142:                                              ; preds = %129, %136, %141, %121
  %143 = getelementptr inbounds %struct.EditBone, ptr %115, i64 0, i32 11
  %144 = getelementptr inbounds %struct.EditBone, ptr %118, i64 0, i32 11
  %145 = load <2 x float>, ptr %143, align 4, !tbaa !47
  store <2 x float> %145, ptr %144, align 4, !tbaa !47
  %146 = getelementptr inbounds %struct.EditBone, ptr %115, i64 0, i32 13
  %147 = load float, ptr %146, align 4, !tbaa !48
  %148 = getelementptr inbounds %struct.EditBone, ptr %118, i64 0, i32 13
  store float %147, ptr %148, align 4, !tbaa !48
  %149 = getelementptr inbounds %struct.EditBone, ptr %115, i64 0, i32 15
  %150 = load float, ptr %149, align 4, !tbaa !105
  %151 = getelementptr inbounds %struct.EditBone, ptr %118, i64 0, i32 15
  %152 = getelementptr inbounds %struct.EditBone, ptr %115, i64 0, i32 16
  %153 = load <2 x float>, ptr %152, align 8, !tbaa !47
  %154 = getelementptr inbounds %struct.EditBone, ptr %115, i64 0, i32 19
  %155 = load float, ptr %154, align 4, !tbaa !49
  %156 = insertelement <4 x float> poison, float %150, i64 0
  %157 = shufflevector <2 x float> %153, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %158 = shufflevector <4 x float> %156, <4 x float> %157, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %159 = insertelement <4 x float> %158, float %155, i64 3
  store <4 x float> %159, ptr %151, align 4, !tbaa !47
  %160 = getelementptr inbounds %struct.EditBone, ptr %118, i64 0, i32 19
  store float %155, ptr %160, align 4, !tbaa !49
  %161 = getelementptr inbounds %struct.EditBone, ptr %118, i64 0, i32 21
  store i16 1, ptr %161, align 4, !tbaa !50
  %162 = getelementptr inbounds %struct.EditBone, ptr %115, i64 0, i32 10
  %163 = load i32, ptr %162, align 8, !tbaa !52
  %164 = getelementptr inbounds %struct.EditBone, ptr %118, i64 0, i32 10
  store i32 %163, ptr %164, align 8, !tbaa !52
  %165 = getelementptr inbounds %struct.EditBone, ptr %118, i64 0, i32 5
  %166 = getelementptr inbounds %struct.EditBone, ptr %115, i64 0, i32 5
  %167 = tail call ptr @BLI_strncpy(ptr noundef nonnull %165, ptr noundef nonnull %166, i64 noundef 64) #15
  %168 = icmp ne ptr %114, null
  %169 = select i1 %168, i1 %102, i1 false
  br i1 %169, label %170, label %178

170:                                              ; preds = %142
  %171 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %165) #18
  %172 = icmp ult i64 %171, 62
  br i1 %172, label %173, label %178

173:                                              ; preds = %170
  %174 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %165)
  %175 = getelementptr inbounds i8, ptr %165, i64 %174
  br i1 %108, label %176, label %177

176:                                              ; preds = %173
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %175, ptr noundef nonnull align 1 dereferenceable(3) @.str.27, i64 3, i1 false)
  br label %178

177:                                              ; preds = %173
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %175, ptr noundef nonnull align 1 dereferenceable(3) @.str.28, i64 3, i1 false)
  br label %178

178:                                              ; preds = %170, %177, %176, %142
  %179 = load ptr, ptr %10, align 8, !tbaa !38
  tail call void @unique_editbone_name(ptr noundef %179, ptr noundef nonnull %165, ptr noundef null) #15
  %180 = load ptr, ptr %10, align 8, !tbaa !38
  tail call void @BLI_addtail(ptr noundef %180, ptr noundef nonnull %118) #15
  %181 = icmp eq ptr %109, null
  %182 = select i1 %181, ptr %118, ptr %109
  %183 = and i1 %107, %168
  %184 = select i1 %183, ptr %115, ptr %114
  %185 = select i1 %183, ptr %114, ptr %115
  br i1 %108, label %104, label %186, !llvm.loop !106

186:                                              ; preds = %111, %178
  %187 = phi ptr [ %182, %178 ], [ %109, %111 ]
  %188 = phi i32 [ %103, %178 ], [ %106, %111 ]
  %189 = phi ptr [ %185, %178 ], [ %105, %111 ]
  %190 = getelementptr inbounds %struct.EditBone, ptr %189, i64 0, i32 9
  %191 = load i32, ptr %190, align 4, !tbaa !44
  br label %192

192:                                              ; preds = %186, %74, %67
  %193 = phi i32 [ %61, %67 ], [ %61, %74 ], [ %191, %186 ]
  %194 = phi ptr [ %53, %67 ], [ %53, %74 ], [ %187, %186 ]
  %195 = phi i32 [ %52, %67 ], [ %52, %74 ], [ %188, %186 ]
  %196 = phi i8 [ %51, %67 ], [ %51, %74 ], [ %101, %186 ]
  %197 = phi ptr [ %50, %67 ], [ %50, %74 ], [ %189, %186 ]
  %198 = getelementptr inbounds %struct.EditBone, ptr %197, i64 0, i32 9
  %199 = and i32 %193, -8
  store i32 %199, ptr %198, align 4, !tbaa !44
  br label %200

200:                                              ; preds = %59, %192, %49
  %201 = phi ptr [ %194, %192 ], [ %53, %59 ], [ %53, %49 ]
  %202 = phi i32 [ %195, %192 ], [ %52, %59 ], [ %52, %49 ]
  %203 = phi i8 [ %196, %192 ], [ %51, %59 ], [ %51, %49 ]
  %204 = phi ptr [ %197, %192 ], [ %50, %59 ], [ %50, %49 ]
  %205 = load ptr, ptr %204, align 8, !tbaa !34
  %206 = icmp ne ptr %205, null
  %207 = icmp ne ptr %205, %201
  %208 = select i1 %206, i1 %207, i1 false
  br i1 %208, label %49, label %209, !llvm.loop !107

209:                                              ; preds = %200
  %210 = icmp eq i32 %202, 1
  %211 = icmp ne ptr %201, null
  %212 = select i1 %210, i1 %211, i1 false
  br i1 %212, label %213, label %215

213:                                              ; preds = %209
  %214 = getelementptr inbounds %struct.bArmature, ptr %9, i64 0, i32 6
  store ptr %201, ptr %214, align 8, !tbaa !57
  br label %217

215:                                              ; preds = %209
  %216 = icmp eq i32 %202, 0
  br i1 %216, label %219, label %217

217:                                              ; preds = %213, %215
  %218 = load ptr, ptr %10, align 8, !tbaa !38
  tail call void @ED_armature_sync_selection(ptr noundef %218) #15
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85327872, ptr noundef %7) #15
  br label %219

219:                                              ; preds = %17, %2, %215, %217
  %220 = phi i32 [ 4, %217 ], [ 2, %215 ], [ 2, %2 ], [ 2, %17 ]
  ret i32 %220
}

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ARMATURE_OT_bone_primitive_add(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.15, ptr %0, align 8, !tbaa !59
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.16, ptr %2, align 8, !tbaa !62
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.17, ptr %3, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @armature_bone_primitive_add_exec, ptr %4, align 8, !tbaa !65
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editarmature, ptr %5, align 8, !tbaa !66
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !67
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !100
  %9 = tail call ptr @RNA_def_string(ptr noundef %8, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 64, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @armature_bone_primitive_add_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !108 {
  %3 = alloca [3 x [3 x float]], align 16
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x [3 x float]], align 16
  %6 = alloca [3 x [3 x float]], align 16
  %7 = alloca [3 x [3 x float]], align 16
  %8 = alloca [64 x i8], align 16
  %9 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #15
  %10 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #15
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #17
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !102
  call void @RNA_string_get(ptr noundef %12, ptr noundef nonnull @.str.18, ptr noundef nonnull %8) #15
  %13 = call ptr @CTX_data_scene(ptr noundef %0) #15
  %14 = call ptr @CTX_wm_view3d(ptr noundef %0) #15
  %15 = call ptr @ED_view3d_cursor3d_get(ptr noundef %13, ptr noundef %14) #15
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef %15) #16
  %16 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 50
  %17 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 47
  %18 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %16, ptr noundef nonnull %17) #15
  call void @mul_m4_v3(ptr noundef nonnull %16, ptr noundef nonnull %4) #15
  %19 = icmp eq ptr %9, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %2
  %21 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !109
  %22 = and i32 %21, 524288
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 1
  call void @copy_m3_m4(ptr noundef nonnull %3, ptr noundef nonnull %25) #15
  br label %27

26:                                               ; preds = %20, %2
  call void @unit_m3(ptr noundef nonnull %3) #15
  br label %27

27:                                               ; preds = %26, %24
  call void @copy_m3_m4(ptr noundef nonnull %5, ptr noundef nonnull %17) #15
  call void @mul_m3_m3m3(ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef nonnull %5) #15
  %28 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %7, ptr noundef nonnull %6) #15
  call void @ED_armature_deselect_all(ptr noundef %10, i32 noundef 0) #15
  %29 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 19
  %30 = load ptr, ptr %29, align 8, !tbaa !53
  %31 = call ptr @ED_armature_edit_bone_add(ptr noundef %30, ptr noundef nonnull %8) #16
  %32 = getelementptr inbounds %struct.EditBone, ptr %31, i64 0, i32 7
  call fastcc void @copy_v3_v3(ptr noundef nonnull %32, ptr noundef nonnull %4) #16
  br i1 %19, label %37, label %33

33:                                               ; preds = %27
  %34 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !109
  %35 = and i32 %34, 524288
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33, %27
  br label %38

38:                                               ; preds = %33, %37
  %39 = phi i64 [ 2, %37 ], [ 1, %33 ]
  %40 = getelementptr inbounds %struct.EditBone, ptr %31, i64 0, i32 8
  %41 = getelementptr inbounds [3 x [3 x float]], ptr %7, i64 0, i64 %39
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %40, ptr noundef nonnull %32, ptr noundef nonnull %41) #16
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85327872, ptr noundef nonnull %10) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #17
  ret i32 4
}

; Function Attrs: optsize
declare ptr @RNA_def_string(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ARMATURE_OT_subdivide(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.21, ptr %0, align 8, !tbaa !59
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.22, ptr %2, align 8, !tbaa !62
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.23, ptr %3, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @armature_subdivide_exec, ptr %4, align 8, !tbaa !65
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editarmature, ptr %5, align 8, !tbaa !66
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !67
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !100
  %9 = tail call ptr @RNA_def_int(ptr noundef %8, ptr noundef nonnull @.str.24, i32 noundef 1, i32 noundef 1, i32 noundef 2147483647, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.14, i32 noundef 1, i32 noundef 10) #15
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 268435456) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @armature_subdivide_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !113 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca [3 x float], align 8
  %5 = alloca [3 x float], align 8
  %6 = alloca [3 x float], align 8
  %7 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #15
  %8 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !53
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !102
  %12 = tail call i32 @RNA_int_get(ptr noundef %11, ptr noundef nonnull @.str.24) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #17
  %13 = call i32 @CTX_data_selected_editable_bones(ptr noundef %0, ptr noundef nonnull %3) #15
  %14 = load ptr, ptr %3, align 8, !tbaa !34
  %15 = icmp eq ptr %14, null
  br i1 %15, label %84, label %16

16:                                               ; preds = %2
  %17 = add nsw i32 %12, 1
  %18 = icmp sgt i32 %12, 0
  %19 = getelementptr inbounds %struct.bArmature, ptr %9, i64 0, i32 4
  %20 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %21 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %22 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  br label %26

23:                                               ; preds = %80, %26
  %24 = load ptr, ptr %27, align 8, !tbaa !34
  %25 = icmp eq ptr %24, null
  br i1 %25, label %84, label %26, !llvm.loop !114

26:                                               ; preds = %16, %23
  %27 = phi ptr [ %14, %16 ], [ %24, %23 ]
  %28 = getelementptr inbounds %struct.CollectionPointerLink, ptr %27, i64 0, i32 2, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !115
  br i1 %18, label %30, label %23

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.EditBone, ptr %29, i64 0, i32 7
  %32 = getelementptr inbounds %struct.EditBone, ptr %29, i64 0, i32 8
  %33 = getelementptr inbounds %struct.EditBone, ptr %29, i64 0, i32 18
  %34 = getelementptr inbounds %struct.EditBone, ptr %29, i64 0, i32 19
  br label %35

35:                                               ; preds = %30, %80
  %36 = phi i32 [ %17, %30 ], [ %82, %80 ]
  %37 = sitofp i32 %36 to float
  %38 = fdiv float 1.000000e+00, %37
  %39 = fsub float 1.000000e+00, %38
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #17
  %40 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %41 = call ptr %40(i64 noundef 184, ptr noundef nonnull @.str.29) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %41, ptr noundef nonnull align 8 dereferenceable(184) %29, i64 184, i1 false), !tbaa.struct !119
  %42 = load ptr, ptr %19, align 8, !tbaa !38
  call void @BLI_addtail(ptr noundef %42, ptr noundef %41) #15
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %31) #16
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %32) #16
  %43 = getelementptr inbounds %struct.EditBone, ptr %41, i64 0, i32 7
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %43) #16
  %44 = load <2 x float>, ptr %4, align 8, !tbaa !47
  %45 = load <2 x float>, ptr %5, align 8, !tbaa !47
  %46 = insertelement <2 x float> poison, float %39, i64 0
  %47 = shufflevector <2 x float> %46, <2 x float> poison, <2 x i32> zeroinitializer
  %48 = fmul <2 x float> %47, %45
  %49 = insertelement <2 x float> poison, float %38, i64 0
  %50 = shufflevector <2 x float> %49, <2 x float> poison, <2 x i32> zeroinitializer
  %51 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %44, <2 x float> %50, <2 x float> %48)
  store <2 x float> %51, ptr %6, align 8, !tbaa !47
  %52 = load float, ptr %20, align 8, !tbaa !47
  %53 = load float, ptr %21, align 8, !tbaa !47
  %54 = fmul float %39, %53
  %55 = call float @llvm.fmuladd.f32(float %52, float %38, float %54)
  store float %55, ptr %22, align 8, !tbaa !47
  call fastcc void @copy_v3_v3(ptr noundef nonnull %43, ptr noundef nonnull %6) #16
  %56 = getelementptr inbounds %struct.EditBone, ptr %41, i64 0, i32 8
  call fastcc void @copy_v3_v3(ptr noundef nonnull %56, ptr noundef nonnull %32) #16
  call fastcc void @copy_v3_v3(ptr noundef nonnull %32, ptr noundef nonnull %43) #16
  %57 = load float, ptr %33, align 8, !tbaa !121
  %58 = load float, ptr %34, align 4, !tbaa !49
  %59 = fmul float %39, %58
  %60 = call float @llvm.fmuladd.f32(float %57, float %38, float %59)
  %61 = getelementptr inbounds %struct.EditBone, ptr %41, i64 0, i32 18
  store float %60, ptr %61, align 8, !tbaa !121
  store float %60, ptr %34, align 4, !tbaa !49
  %62 = getelementptr inbounds %struct.EditBone, ptr %41, i64 0, i32 9
  %63 = load i32, ptr %62, align 4, !tbaa !44
  %64 = or i32 %63, 16
  store i32 %64, ptr %62, align 4, !tbaa !44
  %65 = getelementptr inbounds %struct.EditBone, ptr %41, i64 0, i32 2
  store ptr null, ptr %65, align 8, !tbaa !94
  %66 = load ptr, ptr %19, align 8, !tbaa !38
  %67 = getelementptr inbounds %struct.EditBone, ptr %41, i64 0, i32 5
  call void @unique_editbone_name(ptr noundef %66, ptr noundef nonnull %67, ptr noundef null) #15
  %68 = load ptr, ptr %19, align 8, !tbaa !38
  %69 = load ptr, ptr %68, align 8, !tbaa !34
  %70 = icmp eq ptr %69, null
  br i1 %70, label %80, label %71

71:                                               ; preds = %35, %77
  %72 = phi ptr [ %78, %77 ], [ %69, %35 ]
  %73 = getelementptr inbounds %struct.EditBone, ptr %72, i64 0, i32 3
  %74 = load ptr, ptr %73, align 8, !tbaa !76
  %75 = icmp eq ptr %74, %29
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  store ptr %41, ptr %73, align 8, !tbaa !76
  br label %77

77:                                               ; preds = %71, %76
  %78 = load ptr, ptr %72, align 8, !tbaa !34
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %71, !llvm.loop !122

80:                                               ; preds = %77, %35
  %81 = getelementptr inbounds %struct.EditBone, ptr %41, i64 0, i32 3
  store ptr %29, ptr %81, align 8, !tbaa !76
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #17
  %82 = add nsw i32 %36, -1
  %83 = icmp sgt i32 %36, 2
  br i1 %83, label %35, label %23, !llvm.loop !123

84:                                               ; preds = %23, %2
  call void @BLI_freelistN(ptr noundef nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #17
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85327872, ptr noundef %7) #15
  ret i32 4
}

; Function Attrs: optsize
declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_view3d(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_view3d_cursor3d_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_view3d_win_to_3d(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_armature_bone_get_mirrored(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #4 !PGOFuncName !124 {
  %4 = load float, ptr %1, align 4, !tbaa !47
  %5 = load float, ptr %2, align 4, !tbaa !47
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !47
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !47
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !47
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !47
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !47
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !47
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !47
  ret void
}

; Function Attrs: optsize
declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @invert_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !PGOFuncName !125 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #17
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #16
  %4 = call fastcc float @len_v3(ptr noundef nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #17
  ret float %4
}

; Function Attrs: optsize
declare void @ED_armature_sync_selection(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3(ptr nocapture noundef readonly %0) unnamed_addr #9 !PGOFuncName !126 {
  %2 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %0) #16
  %3 = tail call float @sqrtf(float noundef %2) #15
  ret float %3
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #11 !PGOFuncName !127 {
  %3 = load float, ptr %0, align 4, !tbaa !47
  %4 = load float, ptr %1, align 4, !tbaa !47
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !47
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !47
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !47
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !47
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #12

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: optsize
declare i32 @ctx_data_list_count(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CTX_data_selected_bones(ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare void @ED_armature_validate_active(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: optsize
declare ptr @CTX_wm_region_view3d(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_string_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @unit_m3(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_m3_m3m3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #4 !PGOFuncName !128 {
  %4 = load float, ptr %1, align 4, !tbaa !47
  %5 = load float, ptr %2, align 4, !tbaa !47
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !47
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !47
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !47
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !47
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !47
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !47
  %17 = fadd float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !47
  ret void
}

; Function Attrs: optsize
declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CTX_data_selected_editable_bones(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #14

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind optsize }
attributes #16 = { optsize }
attributes #17 = { nounwind }
attributes #18 = { nounwind optsize willreturn memory(read) }

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
!38 = !{!39, !35, i64 160}
!39 = !{!"bArmature", !40, i64 0, !35, i64 120, !43, i64 128, !43, i64 144, !35, i64 160, !35, i64 168, !35, i64 176, !35, i64 184, !42, i64 192, !42, i64 196, !42, i64 200, !42, i64 204, !41, i64 208, !41, i64 210, !42, i64 212, !42, i64 216, !42, i64 220, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !42, i64 232, !42, i64 236, !42, i64 240, !42, i64 244, !42, i64 248, !42, i64 252}
!40 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !41, i64 98, !42, i64 100, !42, i64 104, !42, i64 108, !35, i64 112}
!41 = !{!"short", !36, i64 0}
!42 = !{!"int", !36, i64 0}
!43 = !{!"ListBase", !35, i64 0, !35, i64 8}
!44 = !{!45, !42, i64 132}
!45 = !{!"EditBone", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !36, i64 40, !46, i64 104, !36, i64 108, !36, i64 120, !42, i64 132, !42, i64 136, !46, i64 140, !46, i64 144, !46, i64 148, !46, i64 152, !46, i64 156, !46, i64 160, !46, i64 164, !46, i64 168, !46, i64 172, !46, i64 176, !41, i64 180}
!46 = !{!"float", !36, i64 0}
!47 = !{!46, !46, i64 0}
!48 = !{!45, !46, i64 148}
!49 = !{!45, !46, i64 172}
!50 = !{!45, !41, i64 180}
!51 = !{!39, !42, i64 216}
!52 = !{!45, !42, i64 136}
!53 = !{!54, !35, i64 296}
!54 = !{!"Object", !40, i64 0, !35, i64 120, !35, i64 128, !41, i64 136, !41, i64 138, !42, i64 140, !42, i64 144, !42, i64 148, !36, i64 152, !35, i64 216, !35, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !35, i64 280, !35, i64 288, !35, i64 296, !35, i64 304, !55, i64 312, !35, i64 360, !43, i64 368, !43, i64 384, !43, i64 400, !43, i64 416, !42, i64 432, !42, i64 436, !35, i64 440, !35, i64 448, !42, i64 456, !42, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !46, i64 616, !46, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !42, i64 944, !41, i64 948, !41, i64 950, !41, i64 952, !41, i64 954, !41, i64 956, !41, i64 958, !41, i64 960, !41, i64 962, !41, i64 964, !36, i64 966, !36, i64 967, !42, i64 968, !42, i64 972, !42, i64 976, !42, i64 980, !42, i64 984, !46, i64 988, !46, i64 992, !46, i64 996, !46, i64 1000, !46, i64 1004, !46, i64 1008, !46, i64 1012, !46, i64 1016, !46, i64 1020, !46, i64 1024, !46, i64 1028, !46, i64 1032, !41, i64 1036, !41, i64 1038, !41, i64 1040, !36, i64 1042, !36, i64 1043, !41, i64 1044, !36, i64 1046, !36, i64 1047, !46, i64 1048, !46, i64 1052, !43, i64 1056, !43, i64 1072, !43, i64 1088, !43, i64 1104, !46, i64 1120, !41, i64 1124, !41, i64 1126, !36, i64 1128, !42, i64 1144, !42, i64 1148, !35, i64 1152, !36, i64 1160, !36, i64 1161, !41, i64 1162, !36, i64 1164, !43, i64 1176, !43, i64 1192, !43, i64 1208, !43, i64 1224, !35, i64 1240, !35, i64 1248, !35, i64 1256, !36, i64 1264, !36, i64 1265, !41, i64 1266, !46, i64 1268, !35, i64 1272, !35, i64 1280, !35, i64 1288, !35, i64 1296, !56, i64 1304, !56, i64 1312, !42, i64 1320, !42, i64 1324, !43, i64 1328, !43, i64 1344, !35, i64 1360, !35, i64 1368, !35, i64 1376, !36, i64 1384, !35, i64 1392, !43, i64 1400, !35, i64 1416}
!55 = !{!"bAnimVizSettings", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !42, i64 32, !42, i64 36, !42, i64 40, !42, i64 44}
!56 = !{!"long", !36, i64 0}
!57 = !{!39, !35, i64 176}
!58 = !{!"armature_add.c:zero_v3"}
!59 = !{!60, !35, i64 0}
!60 = !{!"wmOperatorType", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !35, i64 88, !35, i64 96, !35, i64 104, !43, i64 112, !35, i64 128, !35, i64 136, !35, i64 144, !61, i64 152, !41, i64 184}
!61 = !{!"ExtensionRNA", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24}
!62 = !{!60, !35, i64 8}
!63 = !{!60, !35, i64 24}
!64 = !{!60, !35, i64 48}
!65 = !{!60, !35, i64 32}
!66 = !{!60, !35, i64 72}
!67 = !{!60, !41, i64 184}
!68 = !{!"armature_add.c:armature_click_extrude_invoke"}
!69 = !{!42, !42, i64 0}
!70 = !{i32 2, i32 5}
!71 = !{!"armature_add.c:armature_click_extrude_exec"}
!72 = distinct !{!72, !73}
!73 = !{!"llvm.loop.mustprogress"}
!74 = distinct !{!74, !73}
!75 = !{!39, !42, i64 192}
!76 = !{!45, !35, i64 24}
!77 = !{!45, !46, i64 152}
!78 = !{!45, !46, i64 140}
!79 = distinct !{!79, !73}
!80 = !{!"armature_add.c:copy_v3_v3"}
!81 = !{!45, !35, i64 32}
!82 = distinct !{!82, !73}
!83 = !{!54, !35, i64 288}
!84 = !{!85, !35, i64 104}
!85 = !{!"bConstraintTypeInfo", !41, i64 0, !41, i64 2, !36, i64 4, !36, i64 36, !35, i64 72, !35, i64 80, !35, i64 88, !35, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !35, i64 128}
!86 = !{!87, !35, i64 16}
!87 = !{!"bConstraintTarget", !35, i64 0, !35, i64 8, !35, i64 16, !36, i64 24, !36, i64 88, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158}
!88 = !{!36, !36, i64 0}
!89 = distinct !{!89, !73}
!90 = !{!85, !35, i64 112}
!91 = distinct !{!91, !73}
!92 = !{!"armature_add.c:get_named_editbone"}
!93 = distinct !{!93, !73}
!94 = !{!45, !35, i64 16}
!95 = !{!"armature_add.c:armature_duplicate_selected_exec"}
!96 = distinct !{!96, !73}
!97 = distinct !{!97, !73}
!98 = distinct !{!98, !73}
!99 = distinct !{!99, !73}
!100 = !{!60, !35, i64 88}
!101 = !{!"armature_add.c:armature_extrude_exec"}
!102 = !{!103, !35, i64 112}
!103 = !{!"wmOperator", !35, i64 0, !35, i64 8, !36, i64 16, !35, i64 80, !35, i64 88, !35, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !43, i64 128, !35, i64 144, !35, i64 152, !41, i64 160, !36, i64 162}
!104 = distinct !{!104, !73}
!105 = !{!45, !46, i64 156}
!106 = distinct !{!106, !73}
!107 = distinct !{!107, !73}
!108 = !{!"armature_add.c:armature_bone_primitive_add_exec"}
!109 = !{!110, !42, i64 8}
!110 = !{!"UserDef", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !36, i64 20, !36, i64 788, !36, i64 1556, !36, i64 2580, !36, i64 3348, !36, i64 4116, !36, i64 4884, !36, i64 5652, !36, i64 6420, !36, i64 7444, !42, i64 8468, !41, i64 8472, !41, i64 8474, !41, i64 8476, !41, i64 8478, !41, i64 8480, !41, i64 8482, !42, i64 8484, !42, i64 8488, !42, i64 8492, !41, i64 8496, !41, i64 8498, !42, i64 8500, !42, i64 8504, !42, i64 8508, !42, i64 8512, !42, i64 8516, !42, i64 8520, !42, i64 8524, !41, i64 8528, !41, i64 8530, !41, i64 8532, !41, i64 8534, !43, i64 8536, !43, i64 8552, !43, i64 8568, !43, i64 8584, !43, i64 8600, !43, i64 8616, !43, i64 8632, !36, i64 8648, !41, i64 8712, !41, i64 8714, !41, i64 8716, !41, i64 8718, !41, i64 8720, !41, i64 8722, !41, i64 8724, !41, i64 8726, !36, i64 8728, !41, i64 8896, !41, i64 8898, !41, i64 8900, !41, i64 8902, !41, i64 8904, !41, i64 8906, !41, i64 8908, !41, i64 8910, !42, i64 8912, !42, i64 8916, !41, i64 8920, !41, i64 8922, !41, i64 8924, !41, i64 8926, !41, i64 8928, !41, i64 8930, !41, i64 8932, !41, i64 8934, !41, i64 8936, !41, i64 8938, !36, i64 8940, !36, i64 8941, !36, i64 8942, !36, i64 8943, !41, i64 8944, !41, i64 8946, !41, i64 8948, !41, i64 8950, !41, i64 8952, !41, i64 8954, !46, i64 8956, !46, i64 8960, !42, i64 8964, !41, i64 8968, !41, i64 8970, !46, i64 8972, !41, i64 8976, !41, i64 8978, !41, i64 8980, !41, i64 8982, !111, i64 8984, !36, i64 9760, !36, i64 9772, !41, i64 9788, !36, i64 9790, !36, i64 9791, !36, i64 9792, !36, i64 9872, !42, i64 10896, !42, i64 10900, !46, i64 10904, !46, i64 10908, !42, i64 10912, !41, i64 10916, !41, i64 10918, !41, i64 10920, !41, i64 10922, !41, i64 10924, !41, i64 10926, !112, i64 10928}
!111 = !{!"ColorBand", !41, i64 0, !41, i64 2, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !36, i64 8}
!112 = !{!"WalkNavigation", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12, !46, i64 16, !46, i64 20, !41, i64 24, !36, i64 26}
!113 = !{!"armature_add.c:armature_subdivide_exec"}
!114 = distinct !{!114, !73}
!115 = !{!116, !35, i64 32}
!116 = !{!"CollectionPointerLink", !35, i64 0, !35, i64 8, !117, i64 16}
!117 = !{!"PointerRNA", !118, i64 0, !35, i64 8, !35, i64 16}
!118 = !{!"", !35, i64 0}
!119 = !{i64 0, i64 8, !34, i64 8, i64 8, !34, i64 16, i64 8, !34, i64 24, i64 8, !34, i64 32, i64 8, !34, i64 40, i64 64, !88, i64 104, i64 4, !47, i64 108, i64 12, !88, i64 120, i64 12, !88, i64 132, i64 4, !69, i64 136, i64 4, !69, i64 140, i64 4, !47, i64 144, i64 4, !47, i64 148, i64 4, !47, i64 152, i64 4, !47, i64 156, i64 4, !47, i64 160, i64 4, !47, i64 164, i64 4, !47, i64 168, i64 4, !47, i64 172, i64 4, !47, i64 176, i64 4, !47, i64 180, i64 2, !120}
!120 = !{!41, !41, i64 0}
!121 = !{!45, !46, i64 168}
!122 = distinct !{!122, !73}
!123 = distinct !{!123, !73}
!124 = !{!"armature_add.c:sub_v3_v3v3"}
!125 = !{!"armature_add.c:len_v3v3"}
!126 = !{!"armature_add.c:len_v3"}
!127 = !{!"armature_add.c:dot_v3v3"}
!128 = !{!"armature_add.c:add_v3_v3v3"}
