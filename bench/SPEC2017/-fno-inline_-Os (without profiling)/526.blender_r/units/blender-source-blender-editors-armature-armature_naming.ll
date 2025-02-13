; ModuleID = 'blender/source/blender/editors/armature/armature_naming.c'
source_filename = "blender/source/blender/editors/armature/armature_naming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.anon = type { ptr, ptr }
%struct.anon.0 = type { ptr, ptr }
%struct.bArmature = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.EditBone = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], float, [3 x float], [3 x float], i32, i32, float, float, float, float, float, float, float, float, float, float, i16 }
%struct.Bone = type { ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], float, [3 x float], [3 x float], [3 x [3 x float]], i32, [3 x float], [3 x float], [4 x [4 x float]], float, float, float, float, float, float, float, float, float, float, [3 x float], i32, i16, [1 x i16] }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.bPose = type { %struct.ListBase, ptr, i16, i16, i32, i32, float, [3 x float], [3 x float], %struct.ListBase, i32, i32, ptr, ptr, %struct.bAnimVizSettings, [64 x i8] }
%struct.bPoseChannel = type { ptr, ptr, ptr, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i8, i8, [6 x i8], ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], float, i16, i16, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.bDeformGroup = type { ptr, ptr, [64 x i8], i8, [7 x i8] }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.HookModifierData = type { %struct.ModifierData, ptr, [64 x i8], [4 x [4 x float]], [3 x float], float, ptr, i32, float, [64 x i8] }
%struct.UVWarpModifierData = type { %struct.ModifierData, i8, i8, [6 x i8], [2 x float], ptr, [64 x i8], ptr, [64 x i8], [64 x i8], [64 x i8] }
%struct.bScreen = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.SpaceLink = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16] }
%struct.View3D = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], [4 x float], float, float, i8, [3 x i8], i32, i32, i16, i16, ptr, ptr, %struct.rctf, %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, i16, i16, float, float, float, float, [3 x float], [3 x float], i16, i16, i16, i8, i8, i8, i8, [2 x i8], %struct.ListBase, %struct.ListBase, %struct.ListBase, i8, i8, i8, [5 x i8], ptr, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.bConstraintTypeInfo = type { i16, i16, [32 x i8], [32 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bConstraintTarget = type { ptr, ptr, ptr, [64 x i8], [4 x [4 x float]], i16, i16, i16, i16 }
%struct.bConstraint = type { ptr, ptr, ptr, i16, i16, i8, i8, [64 x i8], i16, float, float, ptr, float, float }
%struct.bActionConstraint = type { ptr, i16, i16, i32, i32, float, float, i32, ptr, [64 x i8] }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.CollectionPointerLink = type { ptr, ptr, %struct.PointerRNA }
%struct.PointerRNA = type { %struct.anon.1, ptr, ptr }
%struct.anon.1 = type { ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }

@.str = private unnamed_addr constant [5 x i8] c"Bone\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"pose.bones\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Flip Names\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"ARMATURE_OT_flip_names\00", align 1
@.str.4 = private unnamed_addr constant [70 x i8] c"Flips (and corrects) the axis suffixes of the names of selected bones\00", align 1
@ARMATURE_OT_autoside_names.axis_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.5, i32 0, ptr @.str.6, ptr @.str.7 }, %struct.EnumPropertyItem { i32 1, ptr @.str.8, i32 0, ptr @.str.9, ptr @.str.10 }, %struct.EnumPropertyItem { i32 2, ptr @.str.11, i32 0, ptr @.str.12, ptr @.str.13 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.5 = private unnamed_addr constant [6 x i8] c"XAXIS\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"X-Axis\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"Left/Right\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"YAXIS\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"Y-Axis\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"Front/Back\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"ZAXIS\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"Z-Axis\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"Top/Bottom\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"AutoName by Axis\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"ARMATURE_OT_autoside_names\00", align 1
@.str.16 = private unnamed_addr constant [97 x i8] c"Automatically renames the selected bones according to which side of the target axis they fall on\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"Axis\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"Axis tag names with\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @unique_editbone_name(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.anon, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6
  store ptr %0, ptr %4, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.anon, ptr %4, i64 0, i32 1
  store ptr %2, ptr %5, align 8, !tbaa !10
  %6 = call zeroext i8 @BLI_uniquename_cb(ptr noundef nonnull @editbone_unique_check, ptr noundef nonnull %4, ptr noundef nonnull @.str, i8 noundef zeroext 46, ptr noundef %1, i32 noundef 64) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare zeroext i8 @BLI_uniquename_cb(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @editbone_unique_check(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !5
  %4 = tail call ptr @ED_armature_bone_find_name(ptr noundef %3, ptr noundef %1) #7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.anon.0, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !10
  %9 = icmp ne ptr %4, %8
  %10 = zext i1 %9 to i8
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i8 [ 0, %2 ], [ %10, %6 ]
  ret i8 %12
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_armature_bone_rename(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [64 x i8], align 16
  %5 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #6
  %6 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %2, i64 noundef 64) #8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %206, label %8

8:                                                ; preds = %3
  %9 = call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef %2, i64 noundef 64) #7
  %10 = call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef %1, i64 noundef 64) #7
  %11 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !11
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %8
  %15 = call ptr @ED_armature_bone_find_name(ptr noundef nonnull %12, ptr noundef nonnull %5) #7
  %16 = icmp eq ptr %15, null
  br i1 %16, label %206, label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr %11, align 8, !tbaa !11
  call void @unique_editbone_name(ptr noundef %18, ptr noundef nonnull %4, ptr noundef null) #9
  %19 = getelementptr inbounds %struct.EditBone, ptr %15, i64 0, i32 5
  br label %25

20:                                               ; preds = %8
  %21 = call ptr @BKE_armature_find_bone_name(ptr noundef nonnull %0, ptr noundef nonnull %5) #7
  %22 = icmp eq ptr %21, null
  br i1 %22, label %206, label %23

23:                                               ; preds = %20
  call fastcc void @unique_bone_name(ptr noundef nonnull %0, ptr noundef nonnull %4) #9
  %24 = getelementptr inbounds %struct.Bone, ptr %21, i64 0, i32 5
  br label %25

25:                                               ; preds = %23, %17
  %26 = phi ptr [ %24, %23 ], [ %19, %17 ]
  %27 = call ptr @BLI_strncpy(ptr noundef nonnull %26, ptr noundef nonnull %4, i64 noundef 64) #7
  %28 = load ptr, ptr @G, align 8, !tbaa !17
  %29 = getelementptr inbounds %struct.Main, ptr %28, i64 0, i32 13
  %30 = load ptr, ptr %29, align 8, !tbaa !19
  %31 = icmp eq ptr %30, null
  br i1 %31, label %163, label %35

32:                                               ; preds = %160, %111
  %33 = load ptr, ptr %36, align 8, !tbaa !19
  %34 = icmp eq ptr %33, null
  br i1 %34, label %163, label %35, !llvm.loop !20

35:                                               ; preds = %25, %32
  %36 = phi ptr [ %33, %32 ], [ %30, %25 ]
  %37 = getelementptr inbounds %struct.Object, ptr %36, i64 0, i32 19
  %38 = load ptr, ptr %37, align 8, !tbaa !22
  %39 = icmp eq ptr %38, %0
  br i1 %39, label %40, label %84

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.Object, ptr %36, i64 0, i32 18
  %42 = load ptr, ptr %41, align 8, !tbaa !27
  %43 = icmp eq ptr %42, null
  br i1 %43, label %58, label %44

44:                                               ; preds = %40
  %45 = call ptr @BKE_pose_channel_find_name(ptr noundef nonnull %42, ptr noundef nonnull %5) #7
  %46 = icmp eq ptr %45, null
  br i1 %46, label %58, label %47

47:                                               ; preds = %44
  %48 = load ptr, ptr %41, align 8, !tbaa !27
  %49 = getelementptr inbounds %struct.bPose, ptr %48, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !28
  %51 = icmp eq ptr %50, null
  %52 = getelementptr inbounds %struct.bPoseChannel, ptr %45, i64 0, i32 4
  br i1 %51, label %53, label %55

53:                                               ; preds = %47
  %54 = call ptr @BLI_strncpy(ptr noundef nonnull %52, ptr noundef nonnull %4, i64 noundef 64) #7
  br label %58

55:                                               ; preds = %47
  %56 = call zeroext i8 @BLI_ghash_remove(ptr noundef nonnull %50, ptr noundef nonnull %52, ptr noundef null, ptr noundef null) #7
  %57 = call ptr @BLI_strncpy(ptr noundef nonnull %52, ptr noundef nonnull %4, i64 noundef 64) #7
  call void @BLI_ghash_insert(ptr noundef nonnull %50, ptr noundef nonnull %52, ptr noundef nonnull %45) #7
  br label %58

58:                                               ; preds = %53, %44, %55, %40
  %59 = load ptr, ptr @G, align 8, !tbaa !17
  %60 = getelementptr inbounds %struct.Main, ptr %59, i64 0, i32 13
  %61 = load ptr, ptr %60, align 8, !tbaa !19
  %62 = icmp eq ptr %61, null
  br i1 %62, label %84, label %63

63:                                               ; preds = %58, %81
  %64 = phi ptr [ %82, %81 ], [ %61, %58 ]
  %65 = getelementptr inbounds %struct.Object, ptr %64, i64 0, i32 106
  %66 = load ptr, ptr %65, align 8, !tbaa !30
  %67 = icmp eq ptr %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %63
  call fastcc void @constraint_bone_name_fix(ptr noundef nonnull %36, ptr noundef nonnull %65, ptr noundef nonnull %5, ptr noundef nonnull %4) #9
  br label %69

69:                                               ; preds = %68, %63
  %70 = getelementptr inbounds %struct.Object, ptr %64, i64 0, i32 18
  %71 = load ptr, ptr %70, align 8, !tbaa !27
  %72 = icmp eq ptr %71, null
  br i1 %72, label %81, label %73

73:                                               ; preds = %69
  %74 = load ptr, ptr %71, align 8, !tbaa !19
  %75 = icmp eq ptr %74, null
  br i1 %75, label %81, label %76

76:                                               ; preds = %73, %76
  %77 = phi ptr [ %79, %76 ], [ %74, %73 ]
  %78 = getelementptr inbounds %struct.bPoseChannel, ptr %77, i64 0, i32 3
  call fastcc void @constraint_bone_name_fix(ptr noundef nonnull %36, ptr noundef nonnull %78, ptr noundef nonnull %5, ptr noundef nonnull %4) #9
  %79 = load ptr, ptr %77, align 8, !tbaa !19
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %76, !llvm.loop !31

81:                                               ; preds = %76, %73, %69
  %82 = load ptr, ptr %64, align 8, !tbaa !19
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %63, !llvm.loop !32

84:                                               ; preds = %81, %58, %35
  %85 = getelementptr inbounds %struct.Object, ptr %36, i64 0, i32 9
  %86 = load ptr, ptr %85, align 8, !tbaa !33
  %87 = icmp eq ptr %86, null
  br i1 %87, label %102, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.Object, ptr %86, i64 0, i32 19
  %90 = load ptr, ptr %89, align 8, !tbaa !22
  %91 = icmp eq ptr %90, %0
  br i1 %91, label %92, label %102

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.Object, ptr %36, i64 0, i32 4
  %94 = load i16, ptr %93, align 2, !tbaa !34
  %95 = icmp eq i16 %94, 7
  br i1 %95, label %96, label %102

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.Object, ptr %36, i64 0, i32 8
  %98 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %97, ptr noundef nonnull dereferenceable(1) %5) #8
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %101 = call ptr @BLI_strncpy(ptr noundef nonnull %97, ptr noundef nonnull %4, i64 noundef 64) #7
  br label %102

102:                                              ; preds = %92, %100, %96, %88, %84
  %103 = call zeroext i8 @modifiers_usesArmature(ptr noundef nonnull %36, ptr noundef %0) #7
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %111, label %105

105:                                              ; preds = %102
  %106 = call ptr @defgroup_find_name(ptr noundef nonnull %36, ptr noundef nonnull %5) #7
  %107 = icmp eq ptr %106, null
  br i1 %107, label %111, label %108

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.bDeformGroup, ptr %106, i64 0, i32 2
  %110 = call ptr @BLI_strncpy(ptr noundef nonnull %109, ptr noundef nonnull %4, i64 noundef 64) #7
  br label %111

111:                                              ; preds = %105, %108, %102
  %112 = getelementptr inbounds %struct.Object, ptr %36, i64 0, i32 26
  %113 = load ptr, ptr %112, align 8, !tbaa !19
  %114 = icmp eq ptr %113, null
  br i1 %114, label %32, label %115

115:                                              ; preds = %111, %160
  %116 = phi ptr [ %161, %160 ], [ %113, %111 ]
  %117 = getelementptr inbounds %struct.ModifierData, ptr %116, i64 0, i32 2
  %118 = load i32, ptr %117, align 8, !tbaa !35
  switch i32 %118, label %160 [
    i32 9, label %119
    i32 45, label %131
  ]

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.HookModifierData, ptr %116, i64 0, i32 1
  %121 = load ptr, ptr %120, align 8, !tbaa !37
  %122 = icmp eq ptr %121, null
  br i1 %122, label %160, label %123

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.Object, ptr %121, i64 0, i32 19
  %125 = load ptr, ptr %124, align 8, !tbaa !22
  %126 = icmp eq ptr %125, %0
  br i1 %126, label %127, label %160

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.HookModifierData, ptr %116, i64 0, i32 2
  %129 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %128, ptr noundef nonnull dereferenceable(1) %5) #8
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %157, label %160

131:                                              ; preds = %115
  %132 = getelementptr inbounds %struct.UVWarpModifierData, ptr %116, i64 0, i32 5
  %133 = load ptr, ptr %132, align 8, !tbaa !39
  %134 = icmp eq ptr %133, null
  br i1 %134, label %145, label %135

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct.Object, ptr %133, i64 0, i32 19
  %137 = load ptr, ptr %136, align 8, !tbaa !22
  %138 = icmp eq ptr %137, %0
  br i1 %138, label %139, label %145

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.UVWarpModifierData, ptr %116, i64 0, i32 6
  %141 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %140, ptr noundef nonnull dereferenceable(1) %5) #8
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %139
  %144 = call ptr @BLI_strncpy(ptr noundef nonnull %140, ptr noundef nonnull %4, i64 noundef 64) #7
  br label %145

145:                                              ; preds = %139, %143, %135, %131
  %146 = getelementptr inbounds %struct.UVWarpModifierData, ptr %116, i64 0, i32 7
  %147 = load ptr, ptr %146, align 8, !tbaa !41
  %148 = icmp eq ptr %147, null
  br i1 %148, label %160, label %149

149:                                              ; preds = %145
  %150 = getelementptr inbounds %struct.Object, ptr %147, i64 0, i32 19
  %151 = load ptr, ptr %150, align 8, !tbaa !22
  %152 = icmp eq ptr %151, %0
  br i1 %152, label %153, label %160

153:                                              ; preds = %149
  %154 = getelementptr inbounds %struct.UVWarpModifierData, ptr %116, i64 0, i32 8
  %155 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %154, ptr noundef nonnull dereferenceable(1) %5) #8
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %153, %127
  %158 = phi ptr [ %128, %127 ], [ %154, %153 ]
  %159 = call ptr @BLI_strncpy(ptr noundef nonnull %158, ptr noundef nonnull %4, i64 noundef 64) #7
  br label %160

160:                                              ; preds = %157, %145, %149, %153, %119, %123, %127, %115
  %161 = load ptr, ptr %116, align 8, !tbaa !19
  %162 = icmp eq ptr %161, null
  br i1 %162, label %32, label %115, !llvm.loop !42

163:                                              ; preds = %32, %25
  call void @BKE_all_animdata_fix_paths_rename(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull %5, ptr noundef nonnull %4) #7
  %164 = load ptr, ptr @G, align 8, !tbaa !17
  %165 = getelementptr inbounds %struct.Main, ptr %164, i64 0, i32 26
  %166 = load ptr, ptr %165, align 8, !tbaa !19
  %167 = icmp eq ptr %166, null
  br i1 %167, label %206, label %171

168:                                              ; preds = %176, %171
  %169 = load ptr, ptr %172, align 8, !tbaa !19
  %170 = icmp eq ptr %169, null
  br i1 %170, label %206, label %171, !llvm.loop !43

171:                                              ; preds = %163, %168
  %172 = phi ptr [ %169, %168 ], [ %166, %163 ]
  %173 = getelementptr inbounds %struct.bScreen, ptr %172, i64 0, i32 3
  %174 = load ptr, ptr %173, align 8, !tbaa !19
  %175 = icmp eq ptr %174, null
  br i1 %175, label %168, label %179

176:                                              ; preds = %203, %179
  %177 = load ptr, ptr %180, align 8, !tbaa !19
  %178 = icmp eq ptr %177, null
  br i1 %178, label %168, label %179, !llvm.loop !44

179:                                              ; preds = %171, %176
  %180 = phi ptr [ %177, %176 ], [ %174, %171 ]
  %181 = getelementptr inbounds %struct.ScrArea, ptr %180, i64 0, i32 19
  %182 = load ptr, ptr %181, align 8, !tbaa !19
  %183 = icmp eq ptr %182, null
  br i1 %183, label %176, label %184

184:                                              ; preds = %179, %203
  %185 = phi ptr [ %204, %203 ], [ %182, %179 ]
  %186 = getelementptr inbounds %struct.SpaceLink, ptr %185, i64 0, i32 3
  %187 = load i32, ptr %186, align 8, !tbaa !45
  %188 = icmp eq i32 %187, 1
  br i1 %188, label %189, label %203

189:                                              ; preds = %184
  %190 = getelementptr inbounds %struct.View3D, ptr %185, i64 0, i32 16
  %191 = load ptr, ptr %190, align 8, !tbaa !47
  %192 = icmp eq ptr %191, null
  br i1 %192, label %203, label %193

193:                                              ; preds = %189
  %194 = getelementptr inbounds %struct.Object, ptr %191, i64 0, i32 19
  %195 = load ptr, ptr %194, align 8, !tbaa !22
  %196 = icmp eq ptr %195, %0
  br i1 %196, label %197, label %203

197:                                              ; preds = %193
  %198 = getelementptr inbounds %struct.View3D, ptr %185, i64 0, i32 21
  %199 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %198, ptr noundef nonnull dereferenceable(1) %5) #8
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %203

201:                                              ; preds = %197
  %202 = call ptr @BLI_strncpy(ptr noundef nonnull %198, ptr noundef nonnull %4, i64 noundef 64) #7
  br label %203

203:                                              ; preds = %189, %193, %201, %197, %184
  %204 = load ptr, ptr %185, align 8, !tbaa !19
  %205 = icmp eq ptr %204, null
  br i1 %205, label %176, label %184, !llvm.loop !50

206:                                              ; preds = %168, %163, %20, %14, %3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #6
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_armature_bone_find_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_armature_find_bone_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @unique_bone_name(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call zeroext i8 @BLI_uniquename_cb(ptr noundef nonnull @bone_unique_check, ptr noundef %0, ptr noundef nonnull @.str, i8 noundef zeroext 46, ptr noundef %1, i32 noundef 64) #7
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_pose_channel_find_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BLI_ghash_remove(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @constraint_bone_name_fix(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.ListBase, align 8
  %6 = load ptr, ptr %1, align 8, !tbaa !19
  %7 = icmp eq ptr %6, null
  br i1 %7, label %51, label %8

8:                                                ; preds = %4, %48
  %9 = phi ptr [ %49, %48 ], [ %6, %4 ]
  %10 = call ptr @BKE_constraint_typeinfo_get(ptr noundef nonnull %9) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %11 = icmp eq ptr %10, null
  br i1 %11, label %39, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %10, i64 0, i32 8
  %14 = load ptr, ptr %13, align 8, !tbaa !51
  %15 = icmp eq ptr %14, null
  br i1 %15, label %39, label %16

16:                                               ; preds = %12
  %17 = call i32 %14(ptr noundef nonnull %9, ptr noundef nonnull %5) #7
  %18 = load ptr, ptr %5, align 8, !tbaa !19
  %19 = icmp eq ptr %18, null
  br i1 %19, label %34, label %20

20:                                               ; preds = %16, %31
  %21 = phi ptr [ %32, %31 ], [ %18, %16 ]
  %22 = getelementptr inbounds %struct.bConstraintTarget, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !53
  %24 = icmp eq ptr %23, %0
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.bConstraintTarget, ptr %21, i64 0, i32 3
  %27 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %26, ptr noundef nonnull dereferenceable(1) %2) #8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = call ptr @BLI_strncpy(ptr noundef nonnull %26, ptr noundef %3, i64 noundef 64) #7
  br label %31

31:                                               ; preds = %20, %29, %25
  %32 = load ptr, ptr %21, align 8, !tbaa !19
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %20, !llvm.loop !55

34:                                               ; preds = %31, %16
  %35 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %10, i64 0, i32 9
  %36 = load ptr, ptr %35, align 8, !tbaa !56
  %37 = icmp eq ptr %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  call void %36(ptr noundef nonnull %9, ptr noundef nonnull %5, i8 noundef zeroext 0) #7
  br label %39

39:                                               ; preds = %34, %38, %12, %8
  %40 = getelementptr inbounds %struct.bConstraint, ptr %9, i64 0, i32 3
  %41 = load i16, ptr %40, align 8, !tbaa !57
  %42 = icmp eq i16 %41, 12
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.bConstraint, ptr %9, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !59
  %46 = getelementptr inbounds %struct.bActionConstraint, ptr %45, i64 0, i32 8
  %47 = load ptr, ptr %46, align 8, !tbaa !60
  call void @BKE_action_fix_paths_rename(ptr noundef %0, ptr noundef %47, ptr noundef nonnull @.str.1, ptr noundef %2, ptr noundef %3, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 1) #7
  br label %48

48:                                               ; preds = %43, %39
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6
  %49 = load ptr, ptr %9, align 8, !tbaa !19
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %8, !llvm.loop !62

51:                                               ; preds = %48, %4
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @modifiers_usesArmature(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @defgroup_find_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_all_animdata_fix_paths_rename(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @ARMATURE_OT_flip_names(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.2, ptr %0, align 8, !tbaa !63
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.3, ptr %2, align 8, !tbaa !66
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.4, ptr %3, align 8, !tbaa !67
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @armature_flip_names_exec, ptr %4, align 8, !tbaa !68
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editarmature, ptr %5, align 8, !tbaa !69
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !70
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @armature_flip_names_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca [64 x i8], align 16
  %5 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %27, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 18
  %9 = load ptr, ptr %8, align 8, !tbaa !27
  %10 = icmp eq ptr %9, null
  br i1 %10, label %27, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  %14 = call i32 @CTX_data_selected_editable_bones(ptr noundef %0, ptr noundef nonnull %3) #7
  %15 = load ptr, ptr %3, align 8, !tbaa !19
  %16 = icmp eq ptr %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %11, %17
  %18 = phi ptr [ %22, %17 ], [ %15, %11 ]
  %19 = getelementptr inbounds %struct.CollectionPointerLink, ptr %18, i64 0, i32 2, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #6
  %21 = getelementptr inbounds %struct.EditBone, ptr %20, i64 0, i32 5
  call void @BKE_deform_flip_side_name(ptr noundef nonnull %4, ptr noundef nonnull %21, i8 noundef zeroext 1) #7
  call void @ED_armature_bone_rename(ptr noundef %13, ptr noundef nonnull %21, ptr noundef nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #6
  %22 = load ptr, ptr %18, align 8, !tbaa !19
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %17, !llvm.loop !75

24:                                               ; preds = %17, %11
  call void @BLI_freelistN(ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  call void @DAG_id_tag_update(ptr noundef nonnull %5, i16 noundef signext 2) #7
  %25 = load ptr, ptr %12, align 8, !tbaa !22
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %25) #7
  %26 = load ptr, ptr %12, align 8, !tbaa !22
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239599616, ptr noundef %26) #7
  br label %27

27:                                               ; preds = %2, %7, %24
  %28 = phi i32 [ 4, %24 ], [ 2, %7 ], [ 2, %2 ]
  ret i32 %28
}

; Function Attrs: optsize
declare i32 @ED_operator_editarmature(ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ARMATURE_OT_autoside_names(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.14, ptr %0, align 8, !tbaa !63
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.15, ptr %2, align 8, !tbaa !66
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.16, ptr %3, align 8, !tbaa !67
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !76
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @armature_autoside_names_exec, ptr %5, align 8, !tbaa !68
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editarmature, ptr %6, align 8, !tbaa !69
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !70
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !77
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.17, ptr noundef nonnull @ARMATURE_OT_autoside_names.axis_items, i32 noundef 0, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19) #7
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !78
  ret void
}

; Function Attrs: optsize
declare i32 @WM_menu_invoke(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @armature_autoside_names_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [64 x i8], align 16
  %4 = alloca %struct.ListBase, align 8
  %5 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #6
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !79
  %8 = tail call i32 @RNA_enum_get(ptr noundef %7, ptr noundef nonnull @.str.17) #7
  %9 = trunc i32 %8 to i16
  %10 = icmp eq ptr %5, null
  br i1 %10, label %40, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 18
  %13 = load ptr, ptr %12, align 8, !tbaa !27
  %14 = icmp eq ptr %13, null
  br i1 %14, label %40, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 19
  %17 = load ptr, ptr %16, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6
  %18 = call i32 @CTX_data_selected_editable_bones(ptr noundef %0, ptr noundef nonnull %4) #7
  %19 = load ptr, ptr %4, align 8, !tbaa !19
  %20 = icmp eq ptr %19, null
  br i1 %20, label %39, label %21

21:                                               ; preds = %15
  %22 = sext i16 %9 to i64
  br label %23

23:                                               ; preds = %21, %36
  %24 = phi ptr [ %19, %21 ], [ %37, %36 ]
  %25 = getelementptr inbounds %struct.CollectionPointerLink, ptr %24, i64 0, i32 2, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !71
  %27 = getelementptr inbounds %struct.EditBone, ptr %26, i64 0, i32 5
  %28 = call ptr @BLI_strncpy(ptr noundef nonnull %3, ptr noundef nonnull %27, i64 noundef 64) #7
  %29 = getelementptr inbounds %struct.EditBone, ptr %26, i64 0, i32 7, i64 %22
  %30 = load float, ptr %29, align 4, !tbaa !81
  %31 = getelementptr inbounds %struct.EditBone, ptr %26, i64 0, i32 8, i64 %22
  %32 = load float, ptr %31, align 4, !tbaa !81
  %33 = call i32 @bone_autoside_name(ptr noundef nonnull %3, i32 noundef 1, i16 noundef signext %9, float noundef %30, float noundef %32) #7
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %23
  call void @ED_armature_bone_rename(ptr noundef %17, ptr noundef nonnull %27, ptr noundef nonnull %3) #9
  br label %36

36:                                               ; preds = %35, %23
  %37 = load ptr, ptr %24, align 8, !tbaa !19
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %23, !llvm.loop !82

39:                                               ; preds = %36, %15
  call void @BLI_freelistN(ptr noundef nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6
  call void @DAG_id_tag_update(ptr noundef nonnull %5, i16 noundef signext 2) #7
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85196800, ptr noundef nonnull %5) #7
  br label %40

40:                                               ; preds = %2, %11, %39
  %41 = phi i32 [ 4, %39 ], [ 2, %11 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #6
  ret i32 %41
}

; Function Attrs: optsize
declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @bone_unique_check(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @BKE_armature_find_bone_name(ptr noundef %0, ptr noundef %1) #7
  %4 = icmp ne ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: optsize
declare ptr @BKE_constraint_typeinfo_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: optsize
declare void @BKE_action_fix_paths_rename(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CTX_data_selected_editable_bones(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_deform_flip_side_name(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @bone_autoside_name(ptr noundef, i32 noundef, i16 noundef signext, float noundef, float noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize }
attributes #8 = { nounwind optsize willreturn memory(read) }
attributes #9 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"", !7, i64 0, !7, i64 8}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!6, !7, i64 8}
!11 = !{!12, !7, i64 160}
!12 = !{!"bArmature", !13, i64 0, !7, i64 120, !16, i64 128, !16, i64 144, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !15, i64 192, !15, i64 196, !15, i64 200, !15, i64 204, !14, i64 208, !14, i64 210, !15, i64 212, !15, i64 216, !15, i64 220, !14, i64 224, !14, i64 226, !14, i64 228, !14, i64 230, !15, i64 232, !15, i64 236, !15, i64 240, !15, i64 244, !15, i64 248, !15, i64 252}
!13 = !{!"ID", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !14, i64 98, !15, i64 100, !15, i64 104, !15, i64 108, !7, i64 112}
!14 = !{!"short", !8, i64 0}
!15 = !{!"int", !8, i64 0}
!16 = !{!"ListBase", !7, i64 0, !7, i64 8}
!17 = !{!18, !7, i64 0}
!18 = !{!"Global", !7, i64 0, !8, i64 8, !8, i64 1032, !8, i64 2056, !8, i64 2057, !8, i64 2058, !16, i64 2064, !8, i64 2080, !8, i64 2081, !8, i64 2082, !14, i64 2084, !14, i64 2086, !14, i64 2088, !8, i64 2090, !14, i64 2092, !15, i64 2096, !15, i64 2100, !8, i64 2104, !15, i64 2108, !15, i64 2112, !8, i64 2116}
!19 = !{!7, !7, i64 0}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!23, !7, i64 296}
!23 = !{!"Object", !13, i64 0, !7, i64 120, !7, i64 128, !14, i64 136, !14, i64 138, !15, i64 140, !15, i64 144, !15, i64 148, !8, i64 152, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288, !7, i64 296, !7, i64 304, !24, i64 312, !7, i64 360, !16, i64 368, !16, i64 384, !16, i64 400, !16, i64 416, !15, i64 432, !15, i64 436, !7, i64 440, !7, i64 448, !15, i64 456, !15, i64 460, !8, i64 464, !8, i64 476, !8, i64 488, !8, i64 500, !8, i64 512, !8, i64 524, !8, i64 536, !8, i64 548, !8, i64 560, !8, i64 576, !8, i64 592, !8, i64 604, !25, i64 616, !25, i64 620, !8, i64 624, !8, i64 688, !8, i64 752, !8, i64 816, !8, i64 880, !15, i64 944, !14, i64 948, !14, i64 950, !14, i64 952, !14, i64 954, !14, i64 956, !14, i64 958, !14, i64 960, !14, i64 962, !14, i64 964, !8, i64 966, !8, i64 967, !15, i64 968, !15, i64 972, !15, i64 976, !15, i64 980, !15, i64 984, !25, i64 988, !25, i64 992, !25, i64 996, !25, i64 1000, !25, i64 1004, !25, i64 1008, !25, i64 1012, !25, i64 1016, !25, i64 1020, !25, i64 1024, !25, i64 1028, !25, i64 1032, !14, i64 1036, !14, i64 1038, !14, i64 1040, !8, i64 1042, !8, i64 1043, !14, i64 1044, !8, i64 1046, !8, i64 1047, !25, i64 1048, !25, i64 1052, !16, i64 1056, !16, i64 1072, !16, i64 1088, !16, i64 1104, !25, i64 1120, !14, i64 1124, !14, i64 1126, !8, i64 1128, !15, i64 1144, !15, i64 1148, !7, i64 1152, !8, i64 1160, !8, i64 1161, !14, i64 1162, !8, i64 1164, !16, i64 1176, !16, i64 1192, !16, i64 1208, !16, i64 1224, !7, i64 1240, !7, i64 1248, !7, i64 1256, !8, i64 1264, !8, i64 1265, !14, i64 1266, !25, i64 1268, !7, i64 1272, !7, i64 1280, !7, i64 1288, !7, i64 1296, !26, i64 1304, !26, i64 1312, !15, i64 1320, !15, i64 1324, !16, i64 1328, !16, i64 1344, !7, i64 1360, !7, i64 1368, !7, i64 1376, !8, i64 1384, !7, i64 1392, !16, i64 1400, !7, i64 1416}
!24 = !{!"bAnimVizSettings", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !14, i64 16, !14, i64 18, !14, i64 20, !14, i64 22, !14, i64 24, !14, i64 26, !14, i64 28, !14, i64 30, !15, i64 32, !15, i64 36, !15, i64 40, !15, i64 44}
!25 = !{!"float", !8, i64 0}
!26 = !{!"long", !8, i64 0}
!27 = !{!23, !7, i64 288}
!28 = !{!29, !7, i64 16}
!29 = !{!"bPose", !16, i64 0, !7, i64 16, !14, i64 24, !14, i64 26, !15, i64 28, !15, i64 32, !25, i64 36, !8, i64 40, !8, i64 52, !16, i64 64, !15, i64 80, !15, i64 84, !7, i64 88, !7, i64 96, !24, i64 104, !8, i64 152}
!30 = !{!23, !7, i64 1176}
!31 = distinct !{!31, !21}
!32 = distinct !{!32, !21}
!33 = !{!23, !7, i64 216}
!34 = !{!23, !14, i64 138}
!35 = !{!36, !15, i64 16}
!36 = !{!"ModifierData", !7, i64 0, !7, i64 8, !15, i64 16, !15, i64 20, !15, i64 24, !15, i64 28, !8, i64 32, !7, i64 96, !7, i64 104}
!37 = !{!38, !7, i64 112}
!38 = !{!"HookModifierData", !36, i64 0, !7, i64 112, !8, i64 120, !8, i64 184, !8, i64 248, !25, i64 260, !7, i64 264, !15, i64 272, !25, i64 276, !8, i64 280}
!39 = !{!40, !7, i64 128}
!40 = !{!"UVWarpModifierData", !36, i64 0, !8, i64 112, !8, i64 113, !8, i64 114, !8, i64 120, !7, i64 128, !8, i64 136, !7, i64 200, !8, i64 208, !8, i64 272, !8, i64 336}
!41 = !{!40, !7, i64 200}
!42 = distinct !{!42, !21}
!43 = distinct !{!43, !21}
!44 = distinct !{!44, !21}
!45 = !{!46, !15, i64 32}
!46 = !{!"SpaceLink", !7, i64 0, !7, i64 8, !16, i64 16, !15, i64 32, !25, i64 36, !8, i64 40}
!47 = !{!48, !7, i64 104}
!48 = !{!"View3D", !7, i64 0, !7, i64 8, !16, i64 16, !15, i64 32, !25, i64 36, !8, i64 40, !8, i64 56, !25, i64 72, !25, i64 76, !8, i64 80, !8, i64 81, !15, i64 84, !15, i64 88, !14, i64 92, !14, i64 94, !7, i64 96, !7, i64 104, !49, i64 112, !16, i64 128, !7, i64 144, !7, i64 152, !8, i64 160, !15, i64 224, !15, i64 228, !14, i64 232, !14, i64 234, !14, i64 236, !14, i64 238, !14, i64 240, !14, i64 242, !25, i64 244, !25, i64 248, !25, i64 252, !25, i64 256, !8, i64 260, !8, i64 272, !14, i64 284, !14, i64 286, !14, i64 288, !8, i64 290, !8, i64 291, !8, i64 292, !8, i64 293, !8, i64 294, !16, i64 296, !16, i64 312, !16, i64 328, !8, i64 344, !8, i64 345, !8, i64 346, !8, i64 347, !7, i64 352, !7, i64 360, !7, i64 368}
!49 = !{!"rctf", !25, i64 0, !25, i64 4, !25, i64 8, !25, i64 12}
!50 = distinct !{!50, !21}
!51 = !{!52, !7, i64 104}
!52 = !{!"bConstraintTypeInfo", !14, i64 0, !14, i64 2, !8, i64 4, !8, i64 36, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128}
!53 = !{!54, !7, i64 16}
!54 = !{!"bConstraintTarget", !7, i64 0, !7, i64 8, !7, i64 16, !8, i64 24, !8, i64 88, !14, i64 152, !14, i64 154, !14, i64 156, !14, i64 158}
!55 = distinct !{!55, !21}
!56 = !{!52, !7, i64 112}
!57 = !{!58, !14, i64 24}
!58 = !{!"bConstraint", !7, i64 0, !7, i64 8, !7, i64 16, !14, i64 24, !14, i64 26, !8, i64 28, !8, i64 29, !8, i64 30, !14, i64 94, !25, i64 96, !25, i64 100, !7, i64 104, !25, i64 112, !25, i64 116}
!59 = !{!58, !7, i64 16}
!60 = !{!61, !7, i64 32}
!61 = !{!"bActionConstraint", !7, i64 0, !14, i64 8, !14, i64 10, !15, i64 12, !15, i64 16, !25, i64 20, !25, i64 24, !15, i64 28, !7, i64 32, !8, i64 40}
!62 = distinct !{!62, !21}
!63 = !{!64, !7, i64 0}
!64 = !{!"wmOperatorType", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !16, i64 112, !7, i64 128, !7, i64 136, !7, i64 144, !65, i64 152, !14, i64 184}
!65 = !{!"ExtensionRNA", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!66 = !{!64, !7, i64 8}
!67 = !{!64, !7, i64 24}
!68 = !{!64, !7, i64 32}
!69 = !{!64, !7, i64 72}
!70 = !{!64, !14, i64 184}
!71 = !{!72, !7, i64 32}
!72 = !{!"CollectionPointerLink", !7, i64 0, !7, i64 8, !73, i64 16}
!73 = !{!"PointerRNA", !74, i64 0, !7, i64 8, !7, i64 16}
!74 = !{!"", !7, i64 0}
!75 = distinct !{!75, !21}
!76 = !{!64, !7, i64 48}
!77 = !{!64, !7, i64 88}
!78 = !{!64, !7, i64 104}
!79 = !{!80, !7, i64 112}
!80 = !{!"wmOperator", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !16, i64 128, !7, i64 144, !7, i64 152, !14, i64 160, !8, i64 162}
!81 = !{!25, !25, i64 0}
!82 = distinct !{!82, !21}
