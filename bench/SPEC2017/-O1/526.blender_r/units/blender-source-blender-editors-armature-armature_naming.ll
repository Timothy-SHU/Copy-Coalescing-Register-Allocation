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

; Function Attrs: nounwind uwtable
define dso_local void @unique_editbone_name(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.anon, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6
  store ptr %0, ptr %4, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.anon, ptr %4, i64 0, i32 1
  store ptr %2, ptr %5, align 8, !tbaa !39
  %6 = call zeroext i8 @BLI_uniquename_cb(ptr noundef nonnull @editbone_unique_check, ptr noundef nonnull %4, ptr noundef nonnull @.str, i8 noundef zeroext 46, ptr noundef %1, i32 noundef 64) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare zeroext i8 @BLI_uniquename_cb(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal zeroext i8 @editbone_unique_check(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = tail call ptr @ED_armature_bone_find_name(ptr noundef %3, ptr noundef %1) #6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.anon.0, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !39
  %9 = icmp ne ptr %4, %8
  %10 = zext i1 %9 to i8
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i8 [ 0, %2 ], [ %10, %6 ]
  ret i8 %12
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @ED_armature_bone_rename(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.anon, align 8
  %5 = alloca [64 x i8], align 16
  %6 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #6
  %7 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %2, i64 noundef 64) #7
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %211, label %9

9:                                                ; preds = %3
  %10 = call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef %2, i64 noundef 64) #6
  %11 = call ptr @BLI_strncpy(ptr noundef nonnull %6, ptr noundef %1, i64 noundef 64) #6
  %12 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !40
  %14 = icmp eq ptr %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %9
  %16 = call ptr @ED_armature_bone_find_name(ptr noundef nonnull %13, ptr noundef nonnull %6) #6
  %17 = icmp eq ptr %16, null
  br i1 %17, label %211, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %12, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6
  store ptr %19, ptr %4, align 8, !tbaa !34
  %20 = getelementptr inbounds %struct.anon, ptr %4, i64 0, i32 1
  store ptr null, ptr %20, align 8, !tbaa !39
  %21 = call zeroext i8 @BLI_uniquename_cb(ptr noundef nonnull @editbone_unique_check, ptr noundef nonnull %4, ptr noundef nonnull @.str, i8 noundef zeroext 46, ptr noundef nonnull %5, i32 noundef 64) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6
  %22 = getelementptr inbounds %struct.EditBone, ptr %16, i64 0, i32 5
  br label %29

23:                                               ; preds = %9
  %24 = call ptr @BKE_armature_find_bone_name(ptr noundef %0, ptr noundef nonnull %6) #6
  %25 = icmp eq ptr %24, null
  br i1 %25, label %211, label %26

26:                                               ; preds = %23
  %27 = call zeroext i8 @BLI_uniquename_cb(ptr noundef nonnull @bone_unique_check, ptr noundef %0, ptr noundef nonnull @.str, i8 noundef zeroext 46, ptr noundef nonnull %5, i32 noundef 64) #6
  %28 = getelementptr inbounds %struct.Bone, ptr %24, i64 0, i32 5
  br label %29

29:                                               ; preds = %26, %18
  %30 = phi ptr [ %28, %26 ], [ %22, %18 ]
  %31 = call ptr @BLI_strncpy(ptr noundef nonnull %30, ptr noundef nonnull %5, i64 noundef 64) #6
  %32 = load ptr, ptr @G, align 8, !tbaa !46
  %33 = getelementptr inbounds %struct.Main, ptr %32, i64 0, i32 13
  %34 = load ptr, ptr %33, align 8, !tbaa !48
  %35 = icmp eq ptr %34, null
  br i1 %35, label %168, label %39

36:                                               ; preds = %165, %116
  %37 = load ptr, ptr %40, align 8, !tbaa !48
  %38 = icmp eq ptr %37, null
  br i1 %38, label %168, label %39, !llvm.loop !49

39:                                               ; preds = %29, %36
  %40 = phi ptr [ %37, %36 ], [ %34, %29 ]
  %41 = getelementptr inbounds %struct.Object, ptr %40, i64 0, i32 19
  %42 = load ptr, ptr %41, align 8, !tbaa !52
  %43 = icmp eq ptr %42, %0
  br i1 %43, label %44, label %89

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.Object, ptr %40, i64 0, i32 18
  %46 = load ptr, ptr %45, align 8, !tbaa !57
  %47 = icmp eq ptr %46, null
  br i1 %47, label %63, label %48

48:                                               ; preds = %44
  %49 = call ptr @BKE_pose_channel_find_name(ptr noundef nonnull %46, ptr noundef nonnull %6) #6
  %50 = icmp eq ptr %49, null
  br i1 %50, label %63, label %51

51:                                               ; preds = %48
  %52 = load ptr, ptr %45, align 8, !tbaa !57
  %53 = getelementptr inbounds %struct.bPose, ptr %52, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !58
  %55 = icmp eq ptr %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.bPoseChannel, ptr %49, i64 0, i32 4
  %58 = call zeroext i8 @BLI_ghash_remove(ptr noundef nonnull %54, ptr noundef nonnull %57, ptr noundef null, ptr noundef null) #6
  br label %59

59:                                               ; preds = %56, %51
  %60 = getelementptr inbounds %struct.bPoseChannel, ptr %49, i64 0, i32 4
  %61 = call ptr @BLI_strncpy(ptr noundef nonnull %60, ptr noundef nonnull %5, i64 noundef 64) #6
  br i1 %55, label %63, label %62

62:                                               ; preds = %59
  call void @BLI_ghash_insert(ptr noundef nonnull %54, ptr noundef nonnull %60, ptr noundef nonnull %49) #6
  br label %63

63:                                               ; preds = %48, %62, %59, %44
  %64 = load ptr, ptr @G, align 8, !tbaa !46
  %65 = getelementptr inbounds %struct.Main, ptr %64, i64 0, i32 13
  %66 = load ptr, ptr %65, align 8, !tbaa !48
  %67 = icmp eq ptr %66, null
  br i1 %67, label %89, label %68

68:                                               ; preds = %63, %86
  %69 = phi ptr [ %87, %86 ], [ %66, %63 ]
  %70 = getelementptr inbounds %struct.Object, ptr %69, i64 0, i32 106
  %71 = load ptr, ptr %70, align 8, !tbaa !60
  %72 = icmp eq ptr %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %68
  call fastcc void @constraint_bone_name_fix(ptr noundef nonnull %40, ptr noundef nonnull %70, ptr noundef nonnull %6, ptr noundef nonnull %5)
  br label %74

74:                                               ; preds = %73, %68
  %75 = getelementptr inbounds %struct.Object, ptr %69, i64 0, i32 18
  %76 = load ptr, ptr %75, align 8, !tbaa !57
  %77 = icmp eq ptr %76, null
  br i1 %77, label %86, label %78

78:                                               ; preds = %74
  %79 = load ptr, ptr %76, align 8, !tbaa !48
  %80 = icmp eq ptr %79, null
  br i1 %80, label %86, label %81

81:                                               ; preds = %78, %81
  %82 = phi ptr [ %84, %81 ], [ %79, %78 ]
  %83 = getelementptr inbounds %struct.bPoseChannel, ptr %82, i64 0, i32 3
  call fastcc void @constraint_bone_name_fix(ptr noundef nonnull %40, ptr noundef nonnull %83, ptr noundef nonnull %6, ptr noundef nonnull %5)
  %84 = load ptr, ptr %82, align 8, !tbaa !48
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %81, !llvm.loop !61

86:                                               ; preds = %81, %78, %74
  %87 = load ptr, ptr %69, align 8, !tbaa !48
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %68, !llvm.loop !62

89:                                               ; preds = %86, %63, %39
  %90 = getelementptr inbounds %struct.Object, ptr %40, i64 0, i32 9
  %91 = load ptr, ptr %90, align 8, !tbaa !63
  %92 = icmp eq ptr %91, null
  br i1 %92, label %107, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.Object, ptr %91, i64 0, i32 19
  %95 = load ptr, ptr %94, align 8, !tbaa !52
  %96 = icmp eq ptr %95, %0
  br i1 %96, label %97, label %107

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.Object, ptr %40, i64 0, i32 4
  %99 = load i16, ptr %98, align 2, !tbaa !64
  %100 = icmp eq i16 %99, 7
  br i1 %100, label %101, label %107

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.Object, ptr %40, i64 0, i32 8
  %103 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %102, ptr noundef nonnull dereferenceable(1) %6) #7
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  %106 = call ptr @BLI_strncpy(ptr noundef nonnull %102, ptr noundef nonnull %5, i64 noundef 64) #6
  br label %107

107:                                              ; preds = %97, %105, %101, %93, %89
  %108 = call zeroext i8 @modifiers_usesArmature(ptr noundef nonnull %40, ptr noundef %0) #6
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %116, label %110

110:                                              ; preds = %107
  %111 = call ptr @defgroup_find_name(ptr noundef nonnull %40, ptr noundef nonnull %6) #6
  %112 = icmp eq ptr %111, null
  br i1 %112, label %116, label %113

113:                                              ; preds = %110
  %114 = getelementptr inbounds %struct.bDeformGroup, ptr %111, i64 0, i32 2
  %115 = call ptr @BLI_strncpy(ptr noundef nonnull %114, ptr noundef nonnull %5, i64 noundef 64) #6
  br label %116

116:                                              ; preds = %110, %113, %107
  %117 = getelementptr inbounds %struct.Object, ptr %40, i64 0, i32 26
  %118 = load ptr, ptr %117, align 8, !tbaa !48
  %119 = icmp eq ptr %118, null
  br i1 %119, label %36, label %120

120:                                              ; preds = %116, %165
  %121 = phi ptr [ %166, %165 ], [ %118, %116 ]
  %122 = getelementptr inbounds %struct.ModifierData, ptr %121, i64 0, i32 2
  %123 = load i32, ptr %122, align 8, !tbaa !65
  switch i32 %123, label %165 [
    i32 9, label %124
    i32 45, label %136
  ]

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.HookModifierData, ptr %121, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !67
  %127 = icmp eq ptr %126, null
  br i1 %127, label %165, label %128

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.Object, ptr %126, i64 0, i32 19
  %130 = load ptr, ptr %129, align 8, !tbaa !52
  %131 = icmp eq ptr %130, %0
  br i1 %131, label %132, label %165

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.HookModifierData, ptr %121, i64 0, i32 2
  %134 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %133, ptr noundef nonnull dereferenceable(1) %6) #7
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %162, label %165

136:                                              ; preds = %120
  %137 = getelementptr inbounds %struct.UVWarpModifierData, ptr %121, i64 0, i32 5
  %138 = load ptr, ptr %137, align 8, !tbaa !69
  %139 = icmp eq ptr %138, null
  br i1 %139, label %150, label %140

140:                                              ; preds = %136
  %141 = getelementptr inbounds %struct.Object, ptr %138, i64 0, i32 19
  %142 = load ptr, ptr %141, align 8, !tbaa !52
  %143 = icmp eq ptr %142, %0
  br i1 %143, label %144, label %150

144:                                              ; preds = %140
  %145 = getelementptr inbounds %struct.UVWarpModifierData, ptr %121, i64 0, i32 6
  %146 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %145, ptr noundef nonnull dereferenceable(1) %6) #7
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %144
  %149 = call ptr @BLI_strncpy(ptr noundef nonnull %145, ptr noundef nonnull %5, i64 noundef 64) #6
  br label %150

150:                                              ; preds = %144, %148, %140, %136
  %151 = getelementptr inbounds %struct.UVWarpModifierData, ptr %121, i64 0, i32 7
  %152 = load ptr, ptr %151, align 8, !tbaa !71
  %153 = icmp eq ptr %152, null
  br i1 %153, label %165, label %154

154:                                              ; preds = %150
  %155 = getelementptr inbounds %struct.Object, ptr %152, i64 0, i32 19
  %156 = load ptr, ptr %155, align 8, !tbaa !52
  %157 = icmp eq ptr %156, %0
  br i1 %157, label %158, label %165

158:                                              ; preds = %154
  %159 = getelementptr inbounds %struct.UVWarpModifierData, ptr %121, i64 0, i32 8
  %160 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %159, ptr noundef nonnull dereferenceable(1) %6) #7
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %158, %132
  %163 = phi ptr [ %133, %132 ], [ %159, %158 ]
  %164 = call ptr @BLI_strncpy(ptr noundef nonnull %163, ptr noundef nonnull %5, i64 noundef 64) #6
  br label %165

165:                                              ; preds = %162, %150, %154, %158, %124, %128, %132, %120
  %166 = load ptr, ptr %121, align 8, !tbaa !48
  %167 = icmp eq ptr %166, null
  br i1 %167, label %36, label %120, !llvm.loop !72

168:                                              ; preds = %36, %29
  call void @BKE_all_animdata_fix_paths_rename(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull %6, ptr noundef nonnull %5) #6
  %169 = load ptr, ptr @G, align 8, !tbaa !46
  %170 = getelementptr inbounds %struct.Main, ptr %169, i64 0, i32 26
  %171 = load ptr, ptr %170, align 8, !tbaa !48
  %172 = icmp eq ptr %171, null
  br i1 %172, label %211, label %176

173:                                              ; preds = %181, %176
  %174 = load ptr, ptr %177, align 8, !tbaa !48
  %175 = icmp eq ptr %174, null
  br i1 %175, label %211, label %176, !llvm.loop !73

176:                                              ; preds = %168, %173
  %177 = phi ptr [ %174, %173 ], [ %171, %168 ]
  %178 = getelementptr inbounds %struct.bScreen, ptr %177, i64 0, i32 3
  %179 = load ptr, ptr %178, align 8, !tbaa !48
  %180 = icmp eq ptr %179, null
  br i1 %180, label %173, label %184

181:                                              ; preds = %208, %184
  %182 = load ptr, ptr %185, align 8, !tbaa !48
  %183 = icmp eq ptr %182, null
  br i1 %183, label %173, label %184, !llvm.loop !74

184:                                              ; preds = %176, %181
  %185 = phi ptr [ %182, %181 ], [ %179, %176 ]
  %186 = getelementptr inbounds %struct.ScrArea, ptr %185, i64 0, i32 19
  %187 = load ptr, ptr %186, align 8, !tbaa !48
  %188 = icmp eq ptr %187, null
  br i1 %188, label %181, label %189

189:                                              ; preds = %184, %208
  %190 = phi ptr [ %209, %208 ], [ %187, %184 ]
  %191 = getelementptr inbounds %struct.SpaceLink, ptr %190, i64 0, i32 3
  %192 = load i32, ptr %191, align 8, !tbaa !75
  %193 = icmp eq i32 %192, 1
  br i1 %193, label %194, label %208

194:                                              ; preds = %189
  %195 = getelementptr inbounds %struct.View3D, ptr %190, i64 0, i32 16
  %196 = load ptr, ptr %195, align 8, !tbaa !77
  %197 = icmp eq ptr %196, null
  br i1 %197, label %208, label %198

198:                                              ; preds = %194
  %199 = getelementptr inbounds %struct.Object, ptr %196, i64 0, i32 19
  %200 = load ptr, ptr %199, align 8, !tbaa !52
  %201 = icmp eq ptr %200, %0
  br i1 %201, label %202, label %208

202:                                              ; preds = %198
  %203 = getelementptr inbounds %struct.View3D, ptr %190, i64 0, i32 21
  %204 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %203, ptr noundef nonnull dereferenceable(1) %6) #7
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %202
  %207 = call ptr @BLI_strncpy(ptr noundef nonnull %203, ptr noundef nonnull %5, i64 noundef 64) #6
  br label %208

208:                                              ; preds = %194, %198, %206, %202, %189
  %209 = load ptr, ptr %190, align 8, !tbaa !48
  %210 = icmp eq ptr %209, null
  br i1 %210, label %181, label %189, !llvm.loop !80

211:                                              ; preds = %173, %168, %23, %15, %3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #6
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #3

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @ED_armature_bone_find_name(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_armature_find_bone_name(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_pose_channel_find_name(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BLI_ghash_remove(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @constraint_bone_name_fix(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.ListBase, align 8
  %6 = load ptr, ptr %1, align 8, !tbaa !48
  %7 = icmp eq ptr %6, null
  br i1 %7, label %51, label %8

8:                                                ; preds = %4, %48
  %9 = phi ptr [ %49, %48 ], [ %6, %4 ]
  %10 = call ptr @BKE_constraint_typeinfo_get(ptr noundef nonnull %9) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %11 = icmp eq ptr %10, null
  br i1 %11, label %39, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %10, i64 0, i32 8
  %14 = load ptr, ptr %13, align 8, !tbaa !81
  %15 = icmp eq ptr %14, null
  br i1 %15, label %39, label %16

16:                                               ; preds = %12
  %17 = call i32 %14(ptr noundef nonnull %9, ptr noundef nonnull %5) #6
  %18 = load ptr, ptr %5, align 8, !tbaa !48
  %19 = icmp eq ptr %18, null
  br i1 %19, label %34, label %20

20:                                               ; preds = %16, %31
  %21 = phi ptr [ %32, %31 ], [ %18, %16 ]
  %22 = getelementptr inbounds %struct.bConstraintTarget, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !83
  %24 = icmp eq ptr %23, %0
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.bConstraintTarget, ptr %21, i64 0, i32 3
  %27 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %26, ptr noundef nonnull dereferenceable(1) %2) #7
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = call ptr @BLI_strncpy(ptr noundef nonnull %26, ptr noundef %3, i64 noundef 64) #6
  br label %31

31:                                               ; preds = %20, %29, %25
  %32 = load ptr, ptr %21, align 8, !tbaa !48
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %20, !llvm.loop !85

34:                                               ; preds = %31, %16
  %35 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %10, i64 0, i32 9
  %36 = load ptr, ptr %35, align 8, !tbaa !86
  %37 = icmp eq ptr %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  call void %36(ptr noundef nonnull %9, ptr noundef nonnull %5, i8 noundef zeroext 0) #6
  br label %39

39:                                               ; preds = %34, %38, %12, %8
  %40 = getelementptr inbounds %struct.bConstraint, ptr %9, i64 0, i32 3
  %41 = load i16, ptr %40, align 8, !tbaa !87
  %42 = icmp eq i16 %41, 12
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.bConstraint, ptr %9, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !89
  %46 = getelementptr inbounds %struct.bActionConstraint, ptr %45, i64 0, i32 8
  %47 = load ptr, ptr %46, align 8, !tbaa !90
  call void @BKE_action_fix_paths_rename(ptr noundef %0, ptr noundef %47, ptr noundef nonnull @.str.1, ptr noundef %2, ptr noundef %3, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 1) #6
  br label %48

48:                                               ; preds = %43, %39
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6
  %49 = load ptr, ptr %9, align 8, !tbaa !48
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %8, !llvm.loop !92

51:                                               ; preds = %48, %4
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

declare zeroext i8 @modifiers_usesArmature(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @defgroup_find_name(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_all_animdata_fix_paths_rename(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ARMATURE_OT_flip_names(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.2, ptr %0, align 8, !tbaa !93
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.3, ptr %2, align 8, !tbaa !96
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.4, ptr %3, align 8, !tbaa !97
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @armature_flip_names_exec, ptr %4, align 8, !tbaa !98
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editarmature, ptr %5, align 8, !tbaa !99
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !100
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @armature_flip_names_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca [64 x i8], align 16
  %5 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %27, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 18
  %9 = load ptr, ptr %8, align 8, !tbaa !57
  %10 = icmp eq ptr %9, null
  br i1 %10, label %27, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  %14 = call i32 @CTX_data_selected_editable_bones(ptr noundef %0, ptr noundef nonnull %3) #6
  %15 = load ptr, ptr %3, align 8, !tbaa !48
  %16 = icmp eq ptr %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %11, %17
  %18 = phi ptr [ %22, %17 ], [ %15, %11 ]
  %19 = getelementptr inbounds %struct.CollectionPointerLink, ptr %18, i64 0, i32 2, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #6
  %21 = getelementptr inbounds %struct.EditBone, ptr %20, i64 0, i32 5
  call void @BKE_deform_flip_side_name(ptr noundef nonnull %4, ptr noundef nonnull %21, i8 noundef zeroext 1) #6
  call void @ED_armature_bone_rename(ptr noundef %13, ptr noundef nonnull %21, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #6
  %22 = load ptr, ptr %18, align 8, !tbaa !48
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %17, !llvm.loop !105

24:                                               ; preds = %17, %11
  call void @BLI_freelistN(ptr noundef nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  call void @DAG_id_tag_update(ptr noundef nonnull %5, i16 noundef signext 2) #6
  %25 = load ptr, ptr %12, align 8, !tbaa !52
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %25) #6
  %26 = load ptr, ptr %12, align 8, !tbaa !52
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239599616, ptr noundef %26) #6
  br label %27

27:                                               ; preds = %2, %7, %24
  %28 = phi i32 [ 4, %24 ], [ 2, %7 ], [ 2, %2 ]
  ret i32 %28
}

declare i32 @ED_operator_editarmature(ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local void @ARMATURE_OT_autoside_names(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.14, ptr %0, align 8, !tbaa !93
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.15, ptr %2, align 8, !tbaa !96
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.16, ptr %3, align 8, !tbaa !97
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !106
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @armature_autoside_names_exec, ptr %5, align 8, !tbaa !98
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editarmature, ptr %6, align 8, !tbaa !99
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !100
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !107
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.17, ptr noundef nonnull @ARMATURE_OT_autoside_names.axis_items, i32 noundef 0, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19) #6
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !108
  ret void
}

declare i32 @WM_menu_invoke(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @armature_autoside_names_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [64 x i8], align 16
  %4 = alloca %struct.ListBase, align 8
  %5 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #6
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !109
  %8 = tail call i32 @RNA_enum_get(ptr noundef %7, ptr noundef nonnull @.str.17) #6
  %9 = trunc i32 %8 to i16
  %10 = icmp eq ptr %5, null
  br i1 %10, label %40, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 18
  %13 = load ptr, ptr %12, align 8, !tbaa !57
  %14 = icmp eq ptr %13, null
  br i1 %14, label %40, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 19
  %17 = load ptr, ptr %16, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6
  %18 = call i32 @CTX_data_selected_editable_bones(ptr noundef %0, ptr noundef nonnull %4) #6
  %19 = load ptr, ptr %4, align 8, !tbaa !48
  %20 = icmp eq ptr %19, null
  br i1 %20, label %39, label %21

21:                                               ; preds = %15
  %22 = sext i16 %9 to i64
  br label %23

23:                                               ; preds = %21, %36
  %24 = phi ptr [ %19, %21 ], [ %37, %36 ]
  %25 = getelementptr inbounds %struct.CollectionPointerLink, ptr %24, i64 0, i32 2, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !101
  %27 = getelementptr inbounds %struct.EditBone, ptr %26, i64 0, i32 5
  %28 = call ptr @BLI_strncpy(ptr noundef nonnull %3, ptr noundef nonnull %27, i64 noundef 64) #6
  %29 = getelementptr inbounds %struct.EditBone, ptr %26, i64 0, i32 7, i64 %22
  %30 = load float, ptr %29, align 4, !tbaa !111
  %31 = getelementptr inbounds %struct.EditBone, ptr %26, i64 0, i32 8, i64 %22
  %32 = load float, ptr %31, align 4, !tbaa !111
  %33 = call i32 @bone_autoside_name(ptr noundef nonnull %3, i32 noundef 1, i16 noundef signext %9, float noundef %30, float noundef %32) #6
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %23
  call void @ED_armature_bone_rename(ptr noundef %17, ptr noundef nonnull %27, ptr noundef nonnull %3)
  br label %36

36:                                               ; preds = %35, %23
  %37 = load ptr, ptr %24, align 8, !tbaa !48
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %23, !llvm.loop !112

39:                                               ; preds = %36, %15
  call void @BLI_freelistN(ptr noundef nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6
  call void @DAG_id_tag_update(ptr noundef nonnull %5, i16 noundef signext 2) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85196800, ptr noundef nonnull %5) #6
  br label %40

40:                                               ; preds = %2, %11, %39
  %41 = phi i32 [ 4, %39 ], [ 2, %11 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #6
  ret i32 %41
}

declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal zeroext i8 @bone_unique_check(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @BKE_armature_find_bone_name(ptr noundef %0, ptr noundef %1) #6
  %4 = icmp ne ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

declare ptr @BKE_constraint_typeinfo_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare void @BKE_action_fix_paths_rename(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #2

declare i32 @CTX_data_selected_editable_bones(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_deform_flip_side_name(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @bone_autoside_name(ptr noundef, i32 noundef, i16 noundef signext, float noundef, float noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

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
!35 = !{!"", !36, i64 0, !36, i64 8}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!35, !36, i64 8}
!40 = !{!41, !36, i64 160}
!41 = !{!"bArmature", !42, i64 0, !36, i64 120, !45, i64 128, !45, i64 144, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !44, i64 192, !44, i64 196, !44, i64 200, !44, i64 204, !43, i64 208, !43, i64 210, !44, i64 212, !44, i64 216, !44, i64 220, !43, i64 224, !43, i64 226, !43, i64 228, !43, i64 230, !44, i64 232, !44, i64 236, !44, i64 240, !44, i64 244, !44, i64 248, !44, i64 252}
!42 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !43, i64 98, !44, i64 100, !44, i64 104, !44, i64 108, !36, i64 112}
!43 = !{!"short", !37, i64 0}
!44 = !{!"int", !37, i64 0}
!45 = !{!"ListBase", !36, i64 0, !36, i64 8}
!46 = !{!47, !36, i64 0}
!47 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !45, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !43, i64 2084, !43, i64 2086, !43, i64 2088, !37, i64 2090, !43, i64 2092, !44, i64 2096, !44, i64 2100, !37, i64 2104, !44, i64 2108, !44, i64 2112, !37, i64 2116}
!48 = !{!36, !36, i64 0}
!49 = distinct !{!49, !50, !51}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!"llvm.loop.unroll.disable"}
!52 = !{!53, !36, i64 296}
!53 = !{!"Object", !42, i64 0, !36, i64 120, !36, i64 128, !43, i64 136, !43, i64 138, !44, i64 140, !44, i64 144, !44, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !54, i64 312, !36, i64 360, !45, i64 368, !45, i64 384, !45, i64 400, !45, i64 416, !44, i64 432, !44, i64 436, !36, i64 440, !36, i64 448, !44, i64 456, !44, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !55, i64 616, !55, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !44, i64 944, !43, i64 948, !43, i64 950, !43, i64 952, !43, i64 954, !43, i64 956, !43, i64 958, !43, i64 960, !43, i64 962, !43, i64 964, !37, i64 966, !37, i64 967, !44, i64 968, !44, i64 972, !44, i64 976, !44, i64 980, !44, i64 984, !55, i64 988, !55, i64 992, !55, i64 996, !55, i64 1000, !55, i64 1004, !55, i64 1008, !55, i64 1012, !55, i64 1016, !55, i64 1020, !55, i64 1024, !55, i64 1028, !55, i64 1032, !43, i64 1036, !43, i64 1038, !43, i64 1040, !37, i64 1042, !37, i64 1043, !43, i64 1044, !37, i64 1046, !37, i64 1047, !55, i64 1048, !55, i64 1052, !45, i64 1056, !45, i64 1072, !45, i64 1088, !45, i64 1104, !55, i64 1120, !43, i64 1124, !43, i64 1126, !37, i64 1128, !44, i64 1144, !44, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !43, i64 1162, !37, i64 1164, !45, i64 1176, !45, i64 1192, !45, i64 1208, !45, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !43, i64 1266, !55, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !56, i64 1304, !56, i64 1312, !44, i64 1320, !44, i64 1324, !45, i64 1328, !45, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !45, i64 1400, !36, i64 1416}
!54 = !{!"bAnimVizSettings", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !43, i64 16, !43, i64 18, !43, i64 20, !43, i64 22, !43, i64 24, !43, i64 26, !43, i64 28, !43, i64 30, !44, i64 32, !44, i64 36, !44, i64 40, !44, i64 44}
!55 = !{!"float", !37, i64 0}
!56 = !{!"long", !37, i64 0}
!57 = !{!53, !36, i64 288}
!58 = !{!59, !36, i64 16}
!59 = !{!"bPose", !45, i64 0, !36, i64 16, !43, i64 24, !43, i64 26, !44, i64 28, !44, i64 32, !55, i64 36, !37, i64 40, !37, i64 52, !45, i64 64, !44, i64 80, !44, i64 84, !36, i64 88, !36, i64 96, !54, i64 104, !37, i64 152}
!60 = !{!53, !36, i64 1176}
!61 = distinct !{!61, !50, !51}
!62 = distinct !{!62, !50, !51}
!63 = !{!53, !36, i64 216}
!64 = !{!53, !43, i64 138}
!65 = !{!66, !44, i64 16}
!66 = !{!"ModifierData", !36, i64 0, !36, i64 8, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !37, i64 32, !36, i64 96, !36, i64 104}
!67 = !{!68, !36, i64 112}
!68 = !{!"HookModifierData", !66, i64 0, !36, i64 112, !37, i64 120, !37, i64 184, !37, i64 248, !55, i64 260, !36, i64 264, !44, i64 272, !55, i64 276, !37, i64 280}
!69 = !{!70, !36, i64 128}
!70 = !{!"UVWarpModifierData", !66, i64 0, !37, i64 112, !37, i64 113, !37, i64 114, !37, i64 120, !36, i64 128, !37, i64 136, !36, i64 200, !37, i64 208, !37, i64 272, !37, i64 336}
!71 = !{!70, !36, i64 200}
!72 = distinct !{!72, !50, !51}
!73 = distinct !{!73, !50, !51}
!74 = distinct !{!74, !50, !51}
!75 = !{!76, !44, i64 32}
!76 = !{!"SpaceLink", !36, i64 0, !36, i64 8, !45, i64 16, !44, i64 32, !55, i64 36, !37, i64 40}
!77 = !{!78, !36, i64 104}
!78 = !{!"View3D", !36, i64 0, !36, i64 8, !45, i64 16, !44, i64 32, !55, i64 36, !37, i64 40, !37, i64 56, !55, i64 72, !55, i64 76, !37, i64 80, !37, i64 81, !44, i64 84, !44, i64 88, !43, i64 92, !43, i64 94, !36, i64 96, !36, i64 104, !79, i64 112, !45, i64 128, !36, i64 144, !36, i64 152, !37, i64 160, !44, i64 224, !44, i64 228, !43, i64 232, !43, i64 234, !43, i64 236, !43, i64 238, !43, i64 240, !43, i64 242, !55, i64 244, !55, i64 248, !55, i64 252, !55, i64 256, !37, i64 260, !37, i64 272, !43, i64 284, !43, i64 286, !43, i64 288, !37, i64 290, !37, i64 291, !37, i64 292, !37, i64 293, !37, i64 294, !45, i64 296, !45, i64 312, !45, i64 328, !37, i64 344, !37, i64 345, !37, i64 346, !37, i64 347, !36, i64 352, !36, i64 360, !36, i64 368}
!79 = !{!"rctf", !55, i64 0, !55, i64 4, !55, i64 8, !55, i64 12}
!80 = distinct !{!80, !50, !51}
!81 = !{!82, !36, i64 104}
!82 = !{!"bConstraintTypeInfo", !43, i64 0, !43, i64 2, !37, i64 4, !37, i64 36, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128}
!83 = !{!84, !36, i64 16}
!84 = !{!"bConstraintTarget", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !37, i64 88, !43, i64 152, !43, i64 154, !43, i64 156, !43, i64 158}
!85 = distinct !{!85, !50, !51}
!86 = !{!82, !36, i64 112}
!87 = !{!88, !43, i64 24}
!88 = !{!"bConstraint", !36, i64 0, !36, i64 8, !36, i64 16, !43, i64 24, !43, i64 26, !37, i64 28, !37, i64 29, !37, i64 30, !43, i64 94, !55, i64 96, !55, i64 100, !36, i64 104, !55, i64 112, !55, i64 116}
!89 = !{!88, !36, i64 16}
!90 = !{!91, !36, i64 32}
!91 = !{!"bActionConstraint", !36, i64 0, !43, i64 8, !43, i64 10, !44, i64 12, !44, i64 16, !55, i64 20, !55, i64 24, !44, i64 28, !36, i64 32, !37, i64 40}
!92 = distinct !{!92, !50, !51}
!93 = !{!94, !36, i64 0}
!94 = !{!"wmOperatorType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !45, i64 112, !36, i64 128, !36, i64 136, !36, i64 144, !95, i64 152, !43, i64 184}
!95 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!96 = !{!94, !36, i64 8}
!97 = !{!94, !36, i64 24}
!98 = !{!94, !36, i64 32}
!99 = !{!94, !36, i64 72}
!100 = !{!94, !43, i64 184}
!101 = !{!102, !36, i64 32}
!102 = !{!"CollectionPointerLink", !36, i64 0, !36, i64 8, !103, i64 16}
!103 = !{!"PointerRNA", !104, i64 0, !36, i64 8, !36, i64 16}
!104 = !{!"", !36, i64 0}
!105 = distinct !{!105, !50, !51}
!106 = !{!94, !36, i64 48}
!107 = !{!94, !36, i64 88}
!108 = !{!94, !36, i64 104}
!109 = !{!110, !36, i64 112}
!110 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !45, i64 128, !36, i64 144, !36, i64 152, !43, i64 160, !37, i64 162}
!111 = !{!55, !55, i64 0}
!112 = distinct !{!112, !50, !51}
