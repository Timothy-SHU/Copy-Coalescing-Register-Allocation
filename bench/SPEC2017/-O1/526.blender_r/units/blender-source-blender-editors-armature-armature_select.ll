; ModuleID = 'blender/source/blender/editors/armature/armature_select.c'
source_filename = "blender/source/blender/editors/armature/armature_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.bPoseChannel = type { ptr, ptr, ptr, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i8, i8, [6 x i8], ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], float, i16, i16, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, float, ptr }
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
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.Bone = type { ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], float, [3 x float], [3 x float], [3 x [3 x float]], i32, [3 x float], [3 x float], [4 x [4 x float]], float, float, float, float, float, float, float, float, float, float, [3 x float], i32, i16, [1 x i16] }
%struct.bArmature = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.EditBone = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], float, [3 x float], [3 x float], i32, i32, float, float, float, float, float, float, float, float, float, float, i16 }
%struct.ViewContext = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x i32] }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.CollectionPointerLink = type { ptr, ptr, %struct.PointerRNA }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }

@.str = private unnamed_addr constant [17 x i8] c"Select Connected\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"ARMATURE_OT_select_linked\00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"Select bones related to selected ones by parent/child relationships\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"extend\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Extend\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"Extend selection instead of deselecting everything first\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"(De)select All\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"ARMATURE_OT_select_all\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"Toggle selection status of all bones\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"Select More\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"ARMATURE_OT_select_more\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"Select those bones connected to the initial selection\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"Select Less\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"ARMATURE_OT_select_less\00", align 1
@.str.14 = private unnamed_addr constant [62 x i8] c"Deselect those bones at the boundary of each selection region\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"Select Similar\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"ARMATURE_OT_select_similar\00", align 1
@.str.17 = private unnamed_addr constant [39 x i8] c"Select similar bones by property types\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@prop_similar_types = internal global [6 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.44, i32 0, ptr @.str.45, ptr @.str.20 }, %struct.EnumPropertyItem { i32 2, ptr @.str.46, i32 0, ptr @.str.47, ptr @.str.20 }, %struct.EnumPropertyItem { i32 3, ptr @.str.48, i32 0, ptr @.str.49, ptr @.str.20 }, %struct.EnumPropertyItem { i32 4, ptr @.str.50, i32 0, ptr @.str.51, ptr @.str.20 }, %struct.EnumPropertyItem { i32 5, ptr @.str.52, i32 0, ptr @.str.53, ptr @.str.20 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.19 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.20 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"threshold\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"Threshold\00", align 1
@ARMATURE_OT_select_hierarchy.direction_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.23, i32 0, ptr @.str.24, ptr @.str.20 }, %struct.EnumPropertyItem { i32 1, ptr @.str.25, i32 0, ptr @.str.26, ptr @.str.20 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.23 = private unnamed_addr constant [7 x i8] c"PARENT\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"Select Parent\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"CHILD\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"Select Child\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"Select Hierarchy\00", align 1
@.str.28 = private unnamed_addr constant [29 x i8] c"ARMATURE_OT_select_hierarchy\00", align 1
@.str.29 = private unnamed_addr constant [51 x i8] c"Select immediate parent/children of selected bones\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"direction\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"Direction\00", align 1
@.str.32 = private unnamed_addr constant [21 x i8] c"Extend the selection\00", align 1
@.str.33 = private unnamed_addr constant [26 x i8] c"Flip Active/Selected Bone\00", align 1
@.str.34 = private unnamed_addr constant [26 x i8] c"ARMATURE_OT_select_mirror\00", align 1
@.str.35 = private unnamed_addr constant [26 x i8] c"Mirror the bone selection\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"only_active\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"Active Only\00", align 1
@.str.38 = private unnamed_addr constant [32 x i8] c"Only operate on the active bone\00", align 1
@.str.39 = private unnamed_addr constant [19 x i8] c"Pick Shortest Path\00", align 1
@.str.40 = private unnamed_addr constant [31 x i8] c"ARMATURE_OT_shortest_path_pick\00", align 1
@.str.41 = private unnamed_addr constant [39 x i8] c"Select shortest path between two bones\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"action\00", align 1
@.str.43 = private unnamed_addr constant [34 x i8] c"Operation requires an active bone\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"LENGTH\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"Length\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"DIRECTION\00", align 1
@.str.47 = private unnamed_addr constant [19 x i8] c"Direction (Y axis)\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"PREFIX\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"Prefix\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"SUFFIX\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"Suffix\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"LAYER\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"Layer\00", align 1
@.str.54 = private unnamed_addr constant [27 x i8] c"Unselectable bone in chain\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @get_indexed_bone(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 18
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = ashr i32 %1, 16
  %8 = tail call ptr @BLI_findlink(ptr noundef nonnull %4, i32 noundef %7) #7
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.bPoseChannel, ptr %8, i64 0, i32 12
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  br label %13

13:                                               ; preds = %10, %6, %2
  %14 = phi ptr [ null, %2 ], [ %12, %10 ], [ null, %6 ]
  ret ptr %14
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @get_bone_from_selectbuffer(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i16 noundef signext %3, i16 noundef signext %4, i8 noundef zeroext %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = icmp sgt i16 %3, 0
  br i1 %9, label %10, label %116

10:                                               ; preds = %6
  %11 = icmp eq ptr %8, null
  %12 = getelementptr inbounds %struct.Base, ptr %1, i64 0, i32 7
  %13 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 19
  %14 = icmp eq i16 %4, 0
  %15 = getelementptr inbounds %struct.Base, ptr %1, i64 0, i32 3
  %16 = getelementptr inbounds %struct.Base, ptr %1, i64 0, i32 7
  %17 = icmp eq i16 %4, 0
  %18 = icmp eq i8 %5, 0
  %19 = icmp eq i8 %5, 0
  %20 = zext nneg i16 %3 to i64
  %21 = zext i1 %14 to i8
  %22 = zext i1 %17 to i8
  br label %23

23:                                               ; preds = %10, %107
  %24 = phi i64 [ 0, %10 ], [ %114, %107 ]
  %25 = phi ptr [ undef, %10 ], [ %113, %107 ]
  %26 = phi i32 [ -1, %10 ], [ %112, %107 ]
  %27 = phi i32 [ -1, %10 ], [ %111, %107 ]
  %28 = phi i8 [ 0, %10 ], [ %110, %107 ]
  %29 = phi ptr [ null, %10 ], [ %109, %107 ]
  %30 = phi ptr [ null, %10 ], [ %108, %107 ]
  %31 = shl nsw i64 %24, 2
  %32 = or disjoint i64 %31, 3
  %33 = getelementptr inbounds i32, ptr %2, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !67
  %35 = icmp slt i32 %34, 268435456
  br i1 %35, label %107, label %36

36:                                               ; preds = %23
  %37 = and i32 %34, 268435455
  br i1 %11, label %41, label %38

38:                                               ; preds = %36
  %39 = load ptr, ptr %12, align 8, !tbaa !68
  %40 = icmp eq ptr %39, %8
  br i1 %40, label %59, label %41

41:                                               ; preds = %38, %36
  %42 = load i32, ptr %15, align 4, !tbaa !70
  %43 = and i32 %34, 65535
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %69

45:                                               ; preds = %41
  %46 = load ptr, ptr %16, align 8, !tbaa !68
  %47 = getelementptr inbounds %struct.Object, ptr %46, i64 0, i32 18
  %48 = load ptr, ptr %47, align 8, !tbaa !34, !nonnull !71, !noundef !71
  %49 = lshr i32 %37, 16
  %50 = tail call ptr @BLI_findlink(ptr noundef nonnull %48, i32 noundef %49) #7
  %51 = icmp ne ptr %50, null
  tail call void @llvm.assume(i1 %51)
  %52 = getelementptr inbounds %struct.bPoseChannel, ptr %50, i64 0, i32 12
  %53 = load ptr, ptr %52, align 8, !tbaa !46
  %54 = getelementptr inbounds %struct.Bone, ptr %53, i64 0, i32 10
  %55 = load i32, ptr %54, align 8, !tbaa !72
  %56 = trunc i32 %55 to i8
  %57 = and i8 %56, 1
  %58 = xor i8 %57, %22
  br label %69

59:                                               ; preds = %38
  %60 = load ptr, ptr %13, align 8, !tbaa !74
  %61 = getelementptr inbounds %struct.bArmature, ptr %60, i64 0, i32 4
  %62 = load ptr, ptr %61, align 8, !tbaa !75
  %63 = tail call ptr @BLI_findlink(ptr noundef %62, i32 noundef %37) #7
  %64 = getelementptr inbounds %struct.EditBone, ptr %63, i64 0, i32 9
  %65 = load i32, ptr %64, align 4, !tbaa !77
  %66 = trunc i32 %65 to i8
  %67 = and i8 %66, 1
  %68 = xor i8 %67, %21
  br label %69

69:                                               ; preds = %45, %59, %41
  %70 = phi ptr [ null, %41 ], [ %63, %59 ], [ %53, %45 ]
  %71 = phi i8 [ 0, %41 ], [ %68, %59 ], [ %58, %45 ]
  %72 = icmp eq ptr %70, null
  br i1 %72, label %99, label %73

73:                                               ; preds = %69
  %74 = icmp eq i8 %71, 0
  br i1 %74, label %86, label %75

75:                                               ; preds = %73
  br i1 %18, label %83, label %76

76:                                               ; preds = %75
  %77 = or disjoint i64 %31, 1
  %78 = getelementptr inbounds i32, ptr %2, i64 %77
  %79 = load i32, ptr %78, align 4, !tbaa !67
  %80 = icmp ugt i32 %27, %79
  %81 = select i1 %80, ptr %70, ptr %29
  %82 = tail call i32 @llvm.umin.i32(i32 %27, i32 %79)
  br label %99

83:                                               ; preds = %75
  %84 = icmp eq ptr %29, null
  %85 = select i1 %84, ptr %70, ptr %29
  br label %99

86:                                               ; preds = %73
  br i1 %19, label %94, label %87

87:                                               ; preds = %86
  %88 = or disjoint i64 %31, 1
  %89 = getelementptr inbounds i32, ptr %2, i64 %88
  %90 = load i32, ptr %89, align 4, !tbaa !67
  %91 = icmp ugt i32 %26, %90
  %92 = select i1 %91, ptr %70, ptr %30
  %93 = tail call i32 @llvm.umin.i32(i32 %26, i32 %90)
  br label %99

94:                                               ; preds = %86
  %95 = icmp eq ptr %30, null
  %96 = select i1 %95, ptr %70, ptr %30
  %97 = icmp eq i8 %28, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  br label %99

99:                                               ; preds = %87, %76, %69, %83, %94, %98
  %100 = phi ptr [ %96, %94 ], [ %30, %83 ], [ %30, %69 ], [ %30, %76 ], [ %92, %87 ], [ %96, %98 ]
  %101 = phi ptr [ %29, %94 ], [ %85, %83 ], [ %29, %69 ], [ %81, %76 ], [ %29, %87 ], [ %29, %98 ]
  %102 = phi i8 [ 1, %94 ], [ 1, %83 ], [ %28, %69 ], [ %28, %76 ], [ %28, %87 ], [ 0, %98 ]
  %103 = phi i32 [ %27, %94 ], [ %27, %83 ], [ %27, %69 ], [ %82, %76 ], [ %27, %87 ], [ %27, %98 ]
  %104 = phi i32 [ %26, %94 ], [ %26, %83 ], [ %26, %69 ], [ %26, %76 ], [ %93, %87 ], [ %26, %98 ]
  %105 = phi ptr [ %70, %94 ], [ %25, %83 ], [ %25, %69 ], [ %25, %76 ], [ %25, %87 ], [ %25, %98 ]
  %106 = phi i1 [ false, %94 ], [ true, %83 ], [ true, %69 ], [ true, %76 ], [ true, %87 ], [ true, %98 ]
  br i1 %106, label %107, label %121

107:                                              ; preds = %23, %99
  %108 = phi ptr [ %30, %23 ], [ %100, %99 ]
  %109 = phi ptr [ %29, %23 ], [ %101, %99 ]
  %110 = phi i8 [ %28, %23 ], [ %102, %99 ]
  %111 = phi i32 [ %27, %23 ], [ %103, %99 ]
  %112 = phi i32 [ %26, %23 ], [ %104, %99 ]
  %113 = phi ptr [ %25, %23 ], [ %105, %99 ]
  %114 = add nuw nsw i64 %24, 1
  %115 = icmp eq i64 %114, %20
  br i1 %115, label %116, label %23, !llvm.loop !79

116:                                              ; preds = %107, %6
  %117 = phi ptr [ null, %6 ], [ %108, %107 ]
  %118 = phi ptr [ null, %6 ], [ %109, %107 ]
  %119 = icmp eq ptr %117, null
  %120 = select i1 %119, ptr %118, ptr %117
  br label %121

121:                                              ; preds = %99, %116
  %122 = phi ptr [ %120, %116 ], [ %105, %99 ]
  ret ptr %122
}

; Function Attrs: nounwind uwtable
define dso_local ptr @get_nearest_bone(ptr noundef %0, i16 noundef signext %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.ViewContext, align 8
  %6 = alloca %struct.rcti, align 4
  %7 = alloca [10000 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %7) #7
  call void @view3d_set_viewcontext(ptr noundef %0, ptr noundef nonnull %5) #7
  %8 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 1
  store i32 %2, ptr %8, align 4, !tbaa !82
  store i32 %2, ptr %6, align 4, !tbaa !83
  %9 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 3
  store i32 %3, ptr %9, align 4, !tbaa !84
  %10 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 2
  store i32 %3, ptr %10, align 4, !tbaa !85
  call void @glInitNames() #7
  %11 = call signext i16 @view3d_opengl_select(ptr noundef nonnull %5, ptr noundef nonnull %7, i32 noundef 10000, ptr noundef nonnull %6, i8 noundef zeroext 1) #7
  %12 = icmp sgt i16 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %4
  %14 = load ptr, ptr %5, align 8, !tbaa !86
  %15 = getelementptr inbounds %struct.Scene, ptr %14, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !88
  %17 = call ptr @get_bone_from_selectbuffer(ptr noundef %14, ptr noundef %16, ptr noundef nonnull %7, i16 noundef signext %11, i16 noundef signext %1, i8 noundef zeroext 1)
  br label %18

18:                                               ; preds = %4, %13
  %19 = phi ptr [ %17, %13 ], [ null, %4 ]
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #7
  ret ptr %19
}

declare void @view3d_set_viewcontext(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @glInitNames() local_unnamed_addr #2

declare signext i16 @view3d_opengl_select(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ARMATURE_OT_select_linked(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !89
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.1, ptr %2, align 8, !tbaa !92
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %3, align 8, !tbaa !93
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @armature_select_linked_invoke, ptr %4, align 8, !tbaa !94
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @armature_select_linked_poll, ptr %5, align 8, !tbaa !95
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !96
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !97
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.3, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @armature_select_linked_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.ViewContext, align 8
  %5 = alloca %struct.rcti, align 4
  %6 = alloca [10000 x i32], align 16
  %7 = alloca %struct.ViewContext, align 8
  %8 = alloca %struct.rcti, align 4
  %9 = alloca [10000 x i32], align 16
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !98
  %12 = tail call i32 @RNA_boolean_get(ptr noundef %11, ptr noundef nonnull @.str.3) #7
  %13 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #7
  %14 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 19
  %15 = load ptr, ptr %14, align 8, !tbaa !74
  tail call void @view3d_operator_needs_opengl(ptr noundef %0) #7
  %16 = and i32 %12, 255
  %17 = icmp eq i32 %16, 0
  %18 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %19 = load i32, ptr %18, align 4, !tbaa !67
  %20 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %21 = load i32, ptr %20, align 4, !tbaa !67
  br i1 %17, label %35, label %22

22:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #7
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %9) #7
  call void @view3d_set_viewcontext(ptr noundef %0, ptr noundef nonnull %7) #7
  %23 = getelementptr inbounds %struct.rcti, ptr %8, i64 0, i32 1
  store i32 %19, ptr %23, align 4, !tbaa !82
  store i32 %19, ptr %8, align 4, !tbaa !83
  %24 = getelementptr inbounds %struct.rcti, ptr %8, i64 0, i32 3
  store i32 %21, ptr %24, align 4, !tbaa !84
  %25 = getelementptr inbounds %struct.rcti, ptr %8, i64 0, i32 2
  store i32 %21, ptr %25, align 4, !tbaa !85
  call void @glInitNames() #7
  %26 = call signext i16 @view3d_opengl_select(ptr noundef nonnull %7, ptr noundef nonnull %9, i32 noundef 10000, ptr noundef nonnull %8, i8 noundef zeroext 1) #7
  %27 = icmp sgt i16 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load ptr, ptr %7, align 8, !tbaa !86
  %30 = getelementptr inbounds %struct.Scene, ptr %29, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !88
  %32 = call ptr @get_bone_from_selectbuffer(ptr noundef %29, ptr noundef %31, ptr noundef nonnull %9, i16 noundef signext %26, i16 noundef signext 0, i8 noundef zeroext 1)
  br label %33

33:                                               ; preds = %22, %28
  %34 = phi ptr [ %32, %28 ], [ null, %22 ]
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #7
  br label %48

35:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %6) #7
  call void @view3d_set_viewcontext(ptr noundef %0, ptr noundef nonnull %4) #7
  %36 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 1
  store i32 %19, ptr %36, align 4, !tbaa !82
  store i32 %19, ptr %5, align 4, !tbaa !83
  %37 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 3
  store i32 %21, ptr %37, align 4, !tbaa !84
  %38 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 2
  store i32 %21, ptr %38, align 4, !tbaa !85
  call void @glInitNames() #7
  %39 = call signext i16 @view3d_opengl_select(ptr noundef nonnull %4, ptr noundef nonnull %6, i32 noundef 10000, ptr noundef nonnull %5, i8 noundef zeroext 1) #7
  %40 = icmp sgt i16 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load ptr, ptr %4, align 8, !tbaa !86
  %43 = getelementptr inbounds %struct.Scene, ptr %42, i64 0, i32 6
  %44 = load ptr, ptr %43, align 8, !tbaa !88
  %45 = call ptr @get_bone_from_selectbuffer(ptr noundef %42, ptr noundef %44, ptr noundef nonnull %6, i16 noundef signext %39, i16 noundef signext 1, i8 noundef zeroext 1)
  br label %46

46:                                               ; preds = %35, %41
  %47 = phi ptr [ %45, %41 ], [ null, %35 ]
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #7
  br label %48

48:                                               ; preds = %46, %33
  %49 = phi ptr [ %34, %33 ], [ %47, %46 ]
  %50 = icmp eq ptr %49, null
  br i1 %50, label %105, label %56

51:                                               ; preds = %73
  %52 = getelementptr inbounds %struct.bArmature, ptr %15, i64 0, i32 4
  %53 = load ptr, ptr %52, align 8, !tbaa !75
  %54 = load ptr, ptr %53, align 8, !tbaa !100
  %55 = icmp eq ptr %54, null
  br label %76

56:                                               ; preds = %48, %73
  %57 = phi ptr [ %74, %73 ], [ %49, %48 ]
  %58 = getelementptr inbounds %struct.EditBone, ptr %57, i64 0, i32 9
  %59 = load i32, ptr %58, align 4, !tbaa !77
  %60 = and i32 %59, 2097152
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = and i32 %59, -2097160
  %64 = or i32 %59, 7
  %65 = select i1 %17, i32 %64, i32 %63
  store i32 %65, ptr %58, align 4, !tbaa !77
  br label %66

66:                                               ; preds = %62, %56
  %67 = load i32, ptr %58, align 4, !tbaa !77
  %68 = and i32 %67, 16
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.EditBone, ptr %57, i64 0, i32 3
  %72 = load ptr, ptr %71, align 8, !tbaa !101
  br label %73

73:                                               ; preds = %66, %70
  %74 = phi ptr [ %72, %70 ], [ null, %66 ]
  %75 = icmp eq ptr %74, null
  br i1 %75, label %51, label %56, !llvm.loop !102

76:                                               ; preds = %51, %99
  %77 = phi ptr [ %49, %51 ], [ %100, %99 ]
  br i1 %55, label %99, label %78

78:                                               ; preds = %76, %97
  %79 = phi ptr [ %80, %97 ], [ %54, %76 ]
  %80 = load ptr, ptr %79, align 8, !tbaa !103
  %81 = getelementptr inbounds %struct.EditBone, ptr %79, i64 0, i32 3
  %82 = load ptr, ptr %81, align 8, !tbaa !101
  %83 = icmp eq ptr %82, %77
  br i1 %83, label %84, label %97

84:                                               ; preds = %78
  %85 = getelementptr inbounds %struct.EditBone, ptr %79, i64 0, i32 9
  %86 = load i32, ptr %85, align 4, !tbaa !77
  %87 = and i32 %86, 2097152
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %84
  %90 = and i32 %86, 16
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %99, label %92

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.EditBone, ptr %79, i64 0, i32 9
  %94 = or i32 %86, 7
  %95 = and i32 %86, -2097160
  %96 = select i1 %17, i32 %94, i32 %95
  store i32 %96, ptr %93, align 4, !tbaa !77
  br label %99

97:                                               ; preds = %78, %84
  %98 = icmp eq ptr %80, null
  br i1 %98, label %99, label %78, !llvm.loop !104

99:                                               ; preds = %97, %76, %89, %92
  %100 = phi ptr [ %79, %92 ], [ null, %89 ], [ null, %76 ], [ null, %97 ]
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %76, !llvm.loop !105

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.bArmature, ptr %15, i64 0, i32 4
  %104 = load ptr, ptr %103, align 8, !tbaa !75
  call void @ED_armature_sync_selection(ptr noundef %104) #7
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85327872, ptr noundef %13) #7
  br label %105

105:                                              ; preds = %48, %102
  %106 = phi i32 [ 4, %102 ], [ 2, %48 ]
  ret i32 %106
}

; Function Attrs: nounwind uwtable
define internal i32 @armature_select_linked_poll(ptr noundef %0) #0 {
  %2 = tail call i32 @ED_operator_view3d_active(ptr noundef %0) #7
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @ED_operator_editarmature(ptr noundef %0) #7
  %6 = icmp ne i32 %5, 0
  %7 = zext i1 %6 to i32
  br label %8

8:                                                ; preds = %4, %1
  %9 = phi i32 [ 0, %1 ], [ %7, %4 ]
  ret i32 %9
}

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ED_armature_deselect_all(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !74
  %5 = icmp eq i32 %1, 1
  br i1 %5, label %6, label %18

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bArmature, ptr %4, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !75
  br label %9

9:                                                ; preds = %13, %6
  %10 = phi ptr [ %8, %6 ], [ %11, %13 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !106
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.EditBone, ptr %11, i64 0, i32 9
  %15 = load i32, ptr %14, align 4, !tbaa !77
  %16 = and i32 %15, 7
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %9, label %18, !llvm.loop !107

18:                                               ; preds = %13, %9, %2
  %19 = phi i32 [ %1, %2 ], [ 1, %9 ], [ 0, %13 ]
  %20 = getelementptr inbounds %struct.bArmature, ptr %4, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !75
  %22 = load ptr, ptr %21, align 8, !tbaa !106
  %23 = icmp eq ptr %22, null
  br i1 %23, label %77, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.bArmature, ptr %4, i64 0, i32 15
  %26 = getelementptr inbounds %struct.bArmature, ptr %4, i64 0, i32 15
  %27 = getelementptr inbounds %struct.bArmature, ptr %4, i64 0, i32 6
  %28 = getelementptr inbounds %struct.bArmature, ptr %4, i64 0, i32 6
  br label %29

29:                                               ; preds = %24, %74
  %30 = phi ptr [ %22, %24 ], [ %75, %74 ]
  switch i32 %19, label %67 [
    i32 2, label %31
    i32 1, label %47
  ]

31:                                               ; preds = %29
  %32 = load i32, ptr %26, align 8, !tbaa !108
  %33 = getelementptr inbounds %struct.EditBone, ptr %30, i64 0, i32 10
  %34 = load i32, ptr %33, align 8, !tbaa !109
  %35 = and i32 %34, %32
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %74, label %37

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.EditBone, ptr %30, i64 0, i32 9
  %39 = load i32, ptr %38, align 4, !tbaa !77
  %40 = and i32 %39, 1024
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %74

42:                                               ; preds = %37
  %43 = xor i32 %39, 7
  store i32 %43, ptr %38, align 4, !tbaa !77
  %44 = load ptr, ptr %27, align 8, !tbaa !110
  %45 = icmp eq ptr %44, %30
  br i1 %45, label %46, label %74

46:                                               ; preds = %42
  store ptr null, ptr %27, align 8, !tbaa !110
  br label %74

47:                                               ; preds = %29
  %48 = load i32, ptr %25, align 8, !tbaa !108
  %49 = getelementptr inbounds %struct.EditBone, ptr %30, i64 0, i32 10
  %50 = load i32, ptr %49, align 8, !tbaa !109
  %51 = and i32 %50, %48
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %74, label %53

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.EditBone, ptr %30, i64 0, i32 9
  %55 = load i32, ptr %54, align 4, !tbaa !77
  %56 = and i32 %55, 1024
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %74

58:                                               ; preds = %53
  %59 = or i32 %55, 7
  store i32 %59, ptr %54, align 4, !tbaa !77
  %60 = getelementptr inbounds %struct.EditBone, ptr %30, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !101
  %62 = icmp eq ptr %61, null
  br i1 %62, label %74, label %63

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.EditBone, ptr %61, i64 0, i32 9
  %65 = load i32, ptr %64, align 4, !tbaa !77
  %66 = or i32 %65, 4
  store i32 %66, ptr %64, align 4, !tbaa !77
  br label %74

67:                                               ; preds = %29
  %68 = getelementptr inbounds %struct.EditBone, ptr %30, i64 0, i32 9
  %69 = load i32, ptr %68, align 4, !tbaa !77
  %70 = and i32 %69, -8
  store i32 %70, ptr %68, align 4, !tbaa !77
  %71 = load ptr, ptr %28, align 8, !tbaa !110
  %72 = icmp eq ptr %71, %30
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  store ptr null, ptr %28, align 8, !tbaa !110
  br label %74

74:                                               ; preds = %31, %42, %46, %37, %67, %73, %53, %63, %58, %47
  %75 = load ptr, ptr %30, align 8, !tbaa !106
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %29, !llvm.loop !111

77:                                               ; preds = %74, %18
  tail call void @ED_armature_sync_selection(ptr noundef nonnull %21) #7
  ret void
}

declare void @ED_armature_sync_selection(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ED_armature_deselect_all_visible(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !74
  %4 = getelementptr inbounds %struct.bArmature, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !75
  %6 = load ptr, ptr %5, align 8, !tbaa !106
  %7 = icmp eq ptr %6, null
  br i1 %7, label %27, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.bArmature, ptr %3, i64 0, i32 15
  %10 = load i32, ptr %9, align 8, !tbaa !108
  br label %11

11:                                               ; preds = %8, %24
  %12 = phi ptr [ %6, %8 ], [ %25, %24 ]
  %13 = getelementptr inbounds %struct.EditBone, ptr %12, i64 0, i32 10
  %14 = load i32, ptr %13, align 8, !tbaa !109
  %15 = and i32 %14, %10
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.EditBone, ptr %12, i64 0, i32 9
  %19 = load i32, ptr %18, align 4, !tbaa !77
  %20 = and i32 %19, 1024
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = and i32 %19, -1032
  store i32 %23, ptr %18, align 4, !tbaa !77
  br label %24

24:                                               ; preds = %17, %22, %11
  %25 = load ptr, ptr %12, align 8, !tbaa !106
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %11, !llvm.loop !112

27:                                               ; preds = %24, %1
  tail call void @ED_armature_sync_selection(ptr noundef nonnull %5) #7
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @mouse_armature(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = alloca %struct.rcti, align 4
  %7 = alloca [10000 x i32], align 16
  %8 = alloca %struct.ViewContext, align 8
  %9 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #7
  %10 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #7
  call void @view3d_set_viewcontext(ptr noundef %0, ptr noundef nonnull %8) #7
  %12 = zext i8 %2 to i16
  call void @BIF_sk_selectStroke(ptr noundef %0, ptr noundef %1, i16 noundef signext %12) #7
  %13 = getelementptr inbounds %struct.bArmature, ptr %11, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !75
  %15 = getelementptr inbounds %struct.ViewContext, ptr %8, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !113
  %17 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 19
  %18 = load ptr, ptr %17, align 8, !tbaa !74
  %19 = getelementptr inbounds %struct.bArmature, ptr %18, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !110
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %7) #7
  call void @glInitNames() #7
  %21 = icmp eq ptr %20, null
  br i1 %21, label %44, label %22

22:                                               ; preds = %5
  %23 = getelementptr inbounds %struct.bArmature, ptr %18, i64 0, i32 15
  %24 = load i32, ptr %23, align 8, !tbaa !108
  %25 = getelementptr inbounds %struct.EditBone, ptr %20, i64 0, i32 10
  %26 = load i32, ptr %25, align 8, !tbaa !109
  %27 = and i32 %26, %24
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %44, label %29

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.EditBone, ptr %20, i64 0, i32 9
  %31 = load i32, ptr %30, align 4, !tbaa !77
  %32 = and i32 %31, 1024
  %33 = icmp ne i32 %32, 0
  %34 = and i32 %31, 7
  %35 = icmp eq i32 %34, 0
  %36 = or i1 %33, %35
  br i1 %36, label %44, label %37

37:                                               ; preds = %29
  %38 = load ptr, ptr %20, align 8, !tbaa !103
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.bArmature, ptr %18, i64 0, i32 4
  %42 = load ptr, ptr %41, align 8, !tbaa !75
  %43 = load ptr, ptr %42, align 8, !tbaa !100
  br label %44

44:                                               ; preds = %40, %37, %29, %22, %5
  %45 = phi ptr [ %43, %40 ], [ %38, %37 ], [ null, %22 ], [ null, %29 ], [ null, %5 ]
  %46 = load i32, ptr %1, align 4, !tbaa !67
  %47 = add nsw i32 %46, -5
  store i32 %47, ptr %6, align 4, !tbaa !83
  %48 = add nsw i32 %46, 5
  %49 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 1
  store i32 %48, ptr %49, align 4, !tbaa !82
  %50 = getelementptr inbounds i32, ptr %1, i64 1
  %51 = load i32, ptr %50, align 4, !tbaa !67
  %52 = add nsw i32 %51, -5
  %53 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 2
  store i32 %52, ptr %53, align 4, !tbaa !85
  %54 = add nsw i32 %51, 5
  %55 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 3
  store i32 %54, ptr %55, align 4, !tbaa !84
  %56 = call signext i16 @view3d_opengl_select(ptr noundef nonnull %8, ptr noundef nonnull %7, i32 noundef 10000, ptr noundef nonnull %6, i8 noundef zeroext 1) #7
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %44
  %59 = load i32, ptr %1, align 4, !tbaa !67
  %60 = add nsw i32 %59, -12
  store i32 %60, ptr %6, align 4, !tbaa !83
  %61 = add nsw i32 %59, 12
  store i32 %61, ptr %49, align 4, !tbaa !82
  %62 = load i32, ptr %50, align 4, !tbaa !67
  %63 = add nsw i32 %62, -12
  store i32 %63, ptr %53, align 4, !tbaa !85
  %64 = add nsw i32 %62, 12
  store i32 %64, ptr %55, align 4, !tbaa !84
  %65 = call signext i16 @view3d_opengl_select(ptr noundef nonnull %8, ptr noundef nonnull %7, i32 noundef 10000, ptr noundef nonnull %6, i8 noundef zeroext 1) #7
  br label %66

66:                                               ; preds = %58, %44
  %67 = phi i16 [ %65, %58 ], [ %56, %44 ]
  %68 = sext i16 %67 to i64
  %69 = icmp sgt i16 %67, 0
  br i1 %69, label %70, label %136

70:                                               ; preds = %66
  %71 = icmp eq i16 %67, 1
  br i1 %71, label %72, label %76

72:                                               ; preds = %70
  %73 = getelementptr inbounds [10000 x i32], ptr %7, i64 0, i64 3
  %74 = load i32, ptr %73, align 4, !tbaa !67
  %75 = call i32 @llvm.umin.i32(i32 %74, i32 -2147483648)
  br label %125

76:                                               ; preds = %70, %120
  %77 = phi i64 [ %123, %120 ], [ 0, %70 ]
  %78 = phi i32 [ %122, %120 ], [ 4, %70 ]
  %79 = phi i32 [ %121, %120 ], [ -2147483648, %70 ]
  %80 = shl nsw i64 %77, 2
  %81 = or disjoint i64 %80, 3
  %82 = getelementptr inbounds [10000 x i32], ptr %7, i64 0, i64 %81
  %83 = load i32, ptr %82, align 4, !tbaa !67
  %84 = icmp sgt i32 %83, -1
  br i1 %84, label %85, label %120

85:                                               ; preds = %76
  %86 = and i32 %83, 268435455
  %87 = call ptr @BLI_findlink(ptr noundef %14, i32 noundef %86) #7
  %88 = and i32 %83, 805306368
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %107, label %90

90:                                               ; preds = %85
  %91 = and i32 %83, 268435456
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %98, label %93

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.EditBone, ptr %87, i64 0, i32 9
  %95 = load i32, ptr %94, align 4, !tbaa !77
  %96 = and i32 %95, 2
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %112, label %98

98:                                               ; preds = %93, %90
  %99 = and i32 %83, 536870912
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.EditBone, ptr %87, i64 0, i32 9
  %103 = load i32, ptr %102, align 4, !tbaa !77
  %104 = and i32 %103, 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %112, label %106

106:                                              ; preds = %101, %98
  br label %112

107:                                              ; preds = %85
  %108 = getelementptr inbounds %struct.EditBone, ptr %87, i64 0, i32 9
  %109 = load i32, ptr %108, align 4, !tbaa !77
  %110 = and i32 %109, 1
  %111 = or disjoint i32 %110, 2
  br label %112

112:                                              ; preds = %107, %106, %101, %93
  %113 = phi i32 [ 2, %106 ], [ 1, %93 ], [ 1, %101 ], [ %111, %107 ]
  %114 = icmp eq ptr %87, %45
  %115 = sext i1 %114 to i32
  %116 = add nsw i32 %113, %115
  %117 = icmp slt i32 %116, %78
  %118 = select i1 %117, i32 %83, i32 %79
  %119 = call i32 @llvm.smin.i32(i32 %116, i32 %78)
  br label %120

120:                                              ; preds = %112, %76
  %121 = phi i32 [ %79, %76 ], [ %118, %112 ]
  %122 = phi i32 [ %78, %76 ], [ %119, %112 ]
  %123 = add nuw nsw i64 %77, 1
  %124 = icmp eq i64 %123, %68
  br i1 %124, label %125, label %76, !llvm.loop !114

125:                                              ; preds = %120, %72
  %126 = phi i32 [ %75, %72 ], [ %121, %120 ]
  %127 = icmp sgt i32 %126, -1
  br i1 %127, label %128, label %136

128:                                              ; preds = %125
  %129 = and i32 %126, 268435455
  %130 = call ptr @BLI_findlink(ptr noundef %14, i32 noundef %129) #7
  %131 = lshr i32 %126, 27
  %132 = and i32 %131, 6
  %133 = icmp ugt i32 %126, 1073741823
  %134 = zext i1 %133 to i32
  %135 = or disjoint i32 %132, %134
  br label %136

136:                                              ; preds = %128, %66, %125
  %137 = phi i32 [ 0, %125 ], [ 0, %66 ], [ %135, %128 ]
  %138 = phi ptr [ null, %125 ], [ null, %66 ], [ %130, %128 ]
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7
  %139 = icmp eq ptr %138, null
  br i1 %139, label %265, label %140

140:                                              ; preds = %136
  %141 = icmp eq i8 %2, 0
  %142 = icmp eq i8 %3, 0
  %143 = or i8 %3, %2
  %144 = icmp eq i8 %4, 0
  %145 = or i8 %143, %4
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %140
  call void @ED_armature_deselect_all(ptr noundef %9, i32 noundef 0)
  br label %148

148:                                              ; preds = %147, %140
  %149 = and i32 %137, 1
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %213, label %151

151:                                              ; preds = %148
  %152 = getelementptr inbounds %struct.EditBone, ptr %138, i64 0, i32 3
  %153 = load ptr, ptr %152, align 8, !tbaa !101
  %154 = icmp eq ptr %153, null
  br i1 %154, label %195, label %155

155:                                              ; preds = %151
  %156 = getelementptr inbounds %struct.EditBone, ptr %138, i64 0, i32 9
  %157 = load i32, ptr %156, align 4, !tbaa !77
  %158 = and i32 %157, 16
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %195, label %160

160:                                              ; preds = %155
  br i1 %141, label %166, label %161

161:                                              ; preds = %160
  %162 = or i32 %157, 4
  store i32 %162, ptr %156, align 4, !tbaa !77
  %163 = getelementptr inbounds %struct.EditBone, ptr %153, i64 0, i32 9
  %164 = load i32, ptr %163, align 4, !tbaa !77
  %165 = or i32 %164, 4
  store i32 %165, ptr %163, align 4, !tbaa !77
  br label %237

166:                                              ; preds = %160
  br i1 %142, label %175, label %167

167:                                              ; preds = %166
  %168 = and i32 %157, -6
  store i32 %168, ptr %156, align 4, !tbaa !77
  %169 = getelementptr inbounds %struct.EditBone, ptr %153, i64 0, i32 9
  %170 = load i32, ptr %169, align 4, !tbaa !77
  %171 = and i32 %170, 1
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %237

173:                                              ; preds = %167
  %174 = and i32 %170, -6
  store i32 %174, ptr %169, align 4, !tbaa !77
  br label %237

175:                                              ; preds = %166
  %176 = getelementptr inbounds %struct.EditBone, ptr %153, i64 0, i32 9
  br i1 %144, label %191, label %177

177:                                              ; preds = %175
  %178 = and i32 %157, 1
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %187, label %180

180:                                              ; preds = %177
  %181 = and i32 %157, -6
  store i32 %181, ptr %156, align 4, !tbaa !77
  %182 = load i32, ptr %176, align 4, !tbaa !77
  %183 = and i32 %182, 1
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %237

185:                                              ; preds = %180
  %186 = and i32 %182, -6
  store i32 %186, ptr %176, align 4, !tbaa !77
  br label %237

187:                                              ; preds = %177
  %188 = or i32 %157, 4
  store i32 %188, ptr %156, align 4, !tbaa !77
  %189 = load i32, ptr %176, align 4, !tbaa !77
  %190 = or i32 %189, 4
  store i32 %190, ptr %176, align 4, !tbaa !77
  br label %237

191:                                              ; preds = %175
  %192 = or i32 %157, 4
  store i32 %192, ptr %156, align 4, !tbaa !77
  %193 = load i32, ptr %176, align 4, !tbaa !77
  %194 = or i32 %193, 4
  store i32 %194, ptr %176, align 4, !tbaa !77
  br label %237

195:                                              ; preds = %155, %151
  %196 = getelementptr inbounds %struct.EditBone, ptr %138, i64 0, i32 9
  %197 = load i32, ptr %196, align 4, !tbaa !77
  br i1 %141, label %200, label %198

198:                                              ; preds = %195
  %199 = or i32 %197, 6
  store i32 %199, ptr %196, align 4, !tbaa !77
  br label %237

200:                                              ; preds = %195
  br i1 %142, label %203, label %201

201:                                              ; preds = %200
  %202 = and i32 %197, -7
  store i32 %202, ptr %196, align 4, !tbaa !77
  br label %237

203:                                              ; preds = %200
  br i1 %144, label %211, label %204

204:                                              ; preds = %203
  %205 = and i32 %197, 1
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %209, label %207

207:                                              ; preds = %204
  %208 = and i32 %197, -7
  store i32 %208, ptr %196, align 4, !tbaa !77
  br label %237

209:                                              ; preds = %204
  %210 = or i32 %197, 6
  store i32 %210, ptr %196, align 4, !tbaa !77
  br label %237

211:                                              ; preds = %203
  %212 = or i32 %197, 6
  store i32 %212, ptr %196, align 4, !tbaa !77
  br label %237

213:                                              ; preds = %148
  br i1 %141, label %218, label %214

214:                                              ; preds = %213
  %215 = getelementptr inbounds %struct.EditBone, ptr %138, i64 0, i32 9
  %216 = load i32, ptr %215, align 4, !tbaa !77
  %217 = or i32 %216, %137
  store i32 %217, ptr %215, align 4, !tbaa !77
  br label %237

218:                                              ; preds = %213
  br i1 %142, label %224, label %219

219:                                              ; preds = %218
  %220 = xor i32 %137, -1
  %221 = getelementptr inbounds %struct.EditBone, ptr %138, i64 0, i32 9
  %222 = load i32, ptr %221, align 4, !tbaa !77
  %223 = and i32 %222, %220
  store i32 %223, ptr %221, align 4, !tbaa !77
  br label %237

224:                                              ; preds = %218
  br i1 %144, label %233, label %225

225:                                              ; preds = %224
  %226 = getelementptr inbounds %struct.EditBone, ptr %138, i64 0, i32 9
  %227 = load i32, ptr %226, align 4, !tbaa !77
  %228 = and i32 %227, %137
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %233, label %230

230:                                              ; preds = %225
  %231 = xor i32 %137, -1
  %232 = and i32 %227, %231
  store i32 %232, ptr %226, align 4, !tbaa !77
  br label %237

233:                                              ; preds = %225, %224
  %234 = getelementptr inbounds %struct.EditBone, ptr %138, i64 0, i32 9
  %235 = load i32, ptr %234, align 4, !tbaa !77
  %236 = or i32 %235, %137
  store i32 %236, ptr %234, align 4, !tbaa !77
  br label %237

237:                                              ; preds = %214, %230, %233, %219, %173, %167, %187, %185, %180, %191, %161, %201, %207, %209, %211, %198
  %238 = load ptr, ptr %13, align 8, !tbaa !75
  call void @ED_armature_sync_selection(ptr noundef %238) #7
  %239 = getelementptr inbounds %struct.EditBone, ptr %138, i64 0, i32 3
  %240 = load ptr, ptr %239, align 8, !tbaa !101
  %241 = icmp eq ptr %240, null
  br i1 %241, label %254, label %242

242:                                              ; preds = %237
  %243 = getelementptr inbounds %struct.EditBone, ptr %138, i64 0, i32 9
  %244 = load i32, ptr %243, align 4, !tbaa !77
  %245 = and i32 %244, 16
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %254, label %247

247:                                              ; preds = %242
  %248 = getelementptr inbounds %struct.EditBone, ptr %240, i64 0, i32 9
  %249 = load i32, ptr %248, align 4, !tbaa !77
  %250 = lshr i32 %249, 1
  %251 = and i32 %250, 2
  %252 = and i32 %244, 5
  %253 = or disjoint i32 %251, %252
  br label %258

254:                                              ; preds = %242, %237
  %255 = getelementptr inbounds %struct.EditBone, ptr %138, i64 0, i32 9
  %256 = load i32, ptr %255, align 4, !tbaa !77
  %257 = and i32 %256, 7
  br label %258

258:                                              ; preds = %247, %254
  %259 = phi i32 [ %253, %247 ], [ %257, %254 ]
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %263, label %261

261:                                              ; preds = %258
  %262 = getelementptr inbounds %struct.bArmature, ptr %11, i64 0, i32 6
  store ptr %138, ptr %262, align 8, !tbaa !110
  br label %263

263:                                              ; preds = %258, %261
  %264 = load ptr, ptr %15, align 8, !tbaa !113
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85327872, ptr noundef %264) #7
  br label %265

265:                                              ; preds = %136, %263
  %266 = phi i8 [ 1, %263 ], [ 0, %136 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #7
  ret i8 %266
}

declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #2

declare void @BIF_sk_selectStroke(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ARMATURE_OT_select_all(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.6, ptr %0, align 8, !tbaa !89
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.7, ptr %2, align 8, !tbaa !92
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.8, ptr %3, align 8, !tbaa !93
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @armature_de_select_all_exec, ptr %4, align 8, !tbaa !115
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editarmature, ptr %5, align 8, !tbaa !95
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !96
  tail call void @WM_operator_properties_select_all(ptr noundef nonnull %0) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @armature_de_select_all_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.ListBase, align 8
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !98
  %7 = tail call i32 @RNA_enum_get(ptr noundef %6, ptr noundef nonnull @.str.42) #7
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %26

9:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  %10 = call i32 @CTX_data_visible_bones(ptr noundef %0, ptr noundef nonnull %3) #7
  br label %11

11:                                               ; preds = %16, %9
  %12 = phi ptr [ %3, %9 ], [ %14, %16 ]
  %13 = phi i32 [ 1, %9 ], [ %23, %16 ]
  %14 = load ptr, ptr %12, align 8, !tbaa !106
  %15 = icmp eq ptr %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.CollectionPointerLink, ptr %14, i64 0, i32 2, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !116
  %19 = getelementptr inbounds %struct.EditBone, ptr %18, i64 0, i32 9
  %20 = load i32, ptr %19, align 4, !tbaa !77
  %21 = and i32 %20, 7
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %22, i32 %13, i32 2
  br i1 %22, label %11, label %24

24:                                               ; preds = %16, %11
  %25 = phi i32 [ %23, %16 ], [ %13, %11 ]
  call void @BLI_freelistN(ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  br label %26

26:                                               ; preds = %24, %2
  %27 = phi i32 [ %25, %24 ], [ %7, %2 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7
  %28 = call i32 @CTX_data_visible_bones(ptr noundef %0, ptr noundef nonnull %4) #7
  %29 = load ptr, ptr %4, align 8, !tbaa !106
  %30 = icmp eq ptr %29, null
  br i1 %30, label %75, label %31

31:                                               ; preds = %26, %72
  %32 = phi ptr [ %73, %72 ], [ %29, %26 ]
  %33 = getelementptr inbounds %struct.CollectionPointerLink, ptr %32, i64 0, i32 2, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !116
  switch i32 %27, label %72 [
    i32 1, label %35
    i32 2, label %49
    i32 3, label %53
  ]

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.EditBone, ptr %34, i64 0, i32 9
  %37 = load i32, ptr %36, align 4, !tbaa !77
  %38 = and i32 %37, 2097152
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %72

40:                                               ; preds = %35
  %41 = or i32 %37, 7
  store i32 %41, ptr %36, align 4, !tbaa !77
  %42 = getelementptr inbounds %struct.EditBone, ptr %34, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !101
  %44 = icmp eq ptr %43, null
  br i1 %44, label %72, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.EditBone, ptr %43, i64 0, i32 9
  %47 = load i32, ptr %46, align 4, !tbaa !77
  %48 = or i32 %47, 4
  store i32 %48, ptr %46, align 4, !tbaa !77
  br label %72

49:                                               ; preds = %31
  %50 = getelementptr inbounds %struct.EditBone, ptr %34, i64 0, i32 9
  %51 = load i32, ptr %50, align 4, !tbaa !77
  %52 = and i32 %51, -8
  store i32 %52, ptr %50, align 4, !tbaa !77
  br label %72

53:                                               ; preds = %31
  %54 = getelementptr inbounds %struct.EditBone, ptr %34, i64 0, i32 9
  %55 = load i32, ptr %54, align 4, !tbaa !77
  %56 = and i32 %55, 1
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %53
  %59 = and i32 %55, -8
  store i32 %59, ptr %54, align 4, !tbaa !77
  br label %72

60:                                               ; preds = %53
  %61 = and i32 %55, 2097152
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %60
  %64 = or i32 %55, 7
  store i32 %64, ptr %54, align 4, !tbaa !77
  %65 = getelementptr inbounds %struct.EditBone, ptr %34, i64 0, i32 3
  %66 = load ptr, ptr %65, align 8, !tbaa !101
  %67 = icmp eq ptr %66, null
  br i1 %67, label %72, label %68

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.EditBone, ptr %66, i64 0, i32 9
  %70 = load i32, ptr %69, align 4, !tbaa !77
  %71 = or i32 %70, 4
  store i32 %71, ptr %69, align 4, !tbaa !77
  br label %72

72:                                               ; preds = %58, %63, %68, %60, %35, %45, %40, %31, %49
  %73 = load ptr, ptr %32, align 8, !tbaa !106
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %31, !llvm.loop !120

75:                                               ; preds = %72, %26
  call void @BLI_freelistN(ptr noundef nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85327872, ptr noundef null) #7
  ret i32 4
}

declare i32 @ED_operator_editarmature(ptr noundef) #2

declare void @WM_operator_properties_select_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ARMATURE_OT_select_more(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.9, ptr %0, align 8, !tbaa !89
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.10, ptr %2, align 8, !tbaa !92
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.11, ptr %3, align 8, !tbaa !93
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @armature_de_select_more_exec, ptr %4, align 8, !tbaa !115
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editarmature, ptr %5, align 8, !tbaa !95
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !96
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @armature_de_select_more_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #7
  tail call fastcc void @armature_select_more_less(ptr noundef %3, i8 noundef zeroext 1)
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85327872, ptr noundef %3) #7
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ARMATURE_OT_select_less(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.12, ptr %0, align 8, !tbaa !89
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.13, ptr %2, align 8, !tbaa !92
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.14, ptr %3, align 8, !tbaa !93
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @armature_de_select_less_exec, ptr %4, align 8, !tbaa !115
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editarmature, ptr %5, align 8, !tbaa !95
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !96
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @armature_de_select_less_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #7
  tail call fastcc void @armature_select_more_less(ptr noundef %3, i8 noundef zeroext 0)
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85327872, ptr noundef %3) #7
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @ARMATURE_OT_select_similar(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.15, ptr %0, align 8, !tbaa !89
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.16, ptr %2, align 8, !tbaa !92
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %3, align 8, !tbaa !94
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @armature_select_similar_exec, ptr %4, align 8, !tbaa !115
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editarmature, ptr %5, align 8, !tbaa !95
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.17, ptr %6, align 8, !tbaa !93
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !96
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !97
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.18, ptr noundef nonnull @prop_similar_types, i32 noundef 0, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20) #7
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !121
  %12 = load ptr, ptr %8, align 8, !tbaa !97
  %13 = tail call ptr @RNA_def_float(ptr noundef %12, ptr noundef nonnull @.str.21, float noundef 0x3FB99999A0000000, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.20, float noundef 0.000000e+00, float noundef 1.000000e+00) #7
  ret void
}

declare i32 @WM_menu_invoke(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @armature_select_similar_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [64 x i8], align 16
  %4 = alloca [64 x i8], align 16
  %5 = alloca [64 x i8], align 16
  %6 = alloca [64 x i8], align 16
  %7 = alloca [64 x i8], align 16
  %8 = alloca [64 x i8], align 16
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #7
  %12 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !74
  %14 = tail call ptr @CTX_data_active_bone(ptr noundef %0) #7
  %15 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !98
  %17 = tail call i32 @RNA_enum_get(ptr noundef %16, ptr noundef nonnull @.str.18) #7
  %18 = load ptr, ptr %15, align 8, !tbaa !98
  %19 = tail call float @RNA_float_get(ptr noundef %18, ptr noundef nonnull @.str.21) #7
  %20 = icmp eq ptr %14, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !122
  tail call void @BKE_report(ptr noundef %23, i32 noundef 32, ptr noundef nonnull @.str.43) #7
  br label %217

24:                                               ; preds = %2
  switch i32 %17, label %216 [
    i32 1, label %25
    i32 2, label %59
    i32 3, label %122
    i32 4, label %155
    i32 5, label %188
  ]

25:                                               ; preds = %24
  %26 = getelementptr inbounds %struct.EditBone, ptr %14, i64 0, i32 14
  %27 = load float, ptr %26, align 8, !tbaa !123
  %28 = fadd float %19, 1.000000e+00
  %29 = fdiv float %27, %28
  %30 = fmul float %28, %27
  %31 = getelementptr inbounds %struct.bArmature, ptr %13, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !75
  %33 = load ptr, ptr %32, align 8, !tbaa !106
  %34 = icmp eq ptr %33, null
  br i1 %34, label %216, label %35

35:                                               ; preds = %25
  %36 = getelementptr inbounds %struct.bArmature, ptr %13, i64 0, i32 15
  br label %37

37:                                               ; preds = %35, %56
  %38 = phi ptr [ %33, %35 ], [ %57, %56 ]
  %39 = load i32, ptr %36, align 8, !tbaa !108
  %40 = getelementptr inbounds %struct.EditBone, ptr %38, i64 0, i32 10
  %41 = load i32, ptr %40, align 8, !tbaa !109
  %42 = and i32 %41, %39
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %56, label %44

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.EditBone, ptr %38, i64 0, i32 9
  %46 = load i32, ptr %45, align 4, !tbaa !77
  %47 = and i32 %46, 2098176
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.EditBone, ptr %38, i64 0, i32 14
  %51 = load float, ptr %50, align 8, !tbaa !123
  %52 = fcmp ult float %51, %29
  %53 = fcmp ugt float %51, %30
  %54 = or i1 %52, %53
  br i1 %54, label %56, label %55

55:                                               ; preds = %49
  tail call void @ED_armature_ebone_select_set(ptr noundef nonnull %38, i8 noundef zeroext 1) #7
  br label %56

56:                                               ; preds = %55, %49, %44, %37
  %57 = load ptr, ptr %38, align 8, !tbaa !106
  %58 = icmp eq ptr %57, null
  br i1 %58, label %216, label %37, !llvm.loop !124

59:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #7
  %60 = getelementptr inbounds %struct.EditBone, ptr %14, i64 0, i32 7
  %61 = getelementptr inbounds %struct.EditBone, ptr %14, i64 0, i32 8
  %62 = load float, ptr %60, align 4, !tbaa !125
  %63 = load float, ptr %61, align 4, !tbaa !125
  %64 = fsub float %62, %63
  store float %64, ptr %9, align 4, !tbaa !125
  %65 = getelementptr inbounds %struct.EditBone, ptr %14, i64 0, i32 7, i64 1
  %66 = load float, ptr %65, align 4, !tbaa !125
  %67 = getelementptr inbounds %struct.EditBone, ptr %14, i64 0, i32 8, i64 1
  %68 = load float, ptr %67, align 4, !tbaa !125
  %69 = fsub float %66, %68
  %70 = getelementptr inbounds float, ptr %9, i64 1
  store float %69, ptr %70, align 4, !tbaa !125
  %71 = getelementptr inbounds %struct.EditBone, ptr %14, i64 0, i32 7, i64 2
  %72 = load float, ptr %71, align 4, !tbaa !125
  %73 = getelementptr inbounds %struct.EditBone, ptr %14, i64 0, i32 8, i64 2
  %74 = load float, ptr %73, align 4, !tbaa !125
  %75 = fsub float %72, %74
  %76 = getelementptr inbounds float, ptr %9, i64 2
  store float %75, ptr %76, align 4, !tbaa !125
  %77 = getelementptr inbounds %struct.bArmature, ptr %13, i64 0, i32 4
  %78 = load ptr, ptr %77, align 8, !tbaa !75
  %79 = load ptr, ptr %78, align 8, !tbaa !106
  %80 = icmp eq ptr %79, null
  br i1 %80, label %121, label %81

81:                                               ; preds = %59
  %82 = getelementptr inbounds %struct.bArmature, ptr %13, i64 0, i32 15
  %83 = getelementptr inbounds float, ptr %10, i64 1
  %84 = getelementptr inbounds float, ptr %10, i64 2
  br label %85

85:                                               ; preds = %81, %118
  %86 = phi ptr [ %79, %81 ], [ %119, %118 ]
  %87 = load i32, ptr %82, align 8, !tbaa !108
  %88 = getelementptr inbounds %struct.EditBone, ptr %86, i64 0, i32 10
  %89 = load i32, ptr %88, align 8, !tbaa !109
  %90 = and i32 %89, %87
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %118, label %92

92:                                               ; preds = %85
  %93 = getelementptr inbounds %struct.EditBone, ptr %86, i64 0, i32 9
  %94 = load i32, ptr %93, align 4, !tbaa !77
  %95 = and i32 %94, 2098176
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %118

97:                                               ; preds = %92
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #7
  %98 = getelementptr inbounds %struct.EditBone, ptr %86, i64 0, i32 7
  %99 = getelementptr inbounds %struct.EditBone, ptr %86, i64 0, i32 8
  %100 = load float, ptr %98, align 4, !tbaa !125
  %101 = load float, ptr %99, align 4, !tbaa !125
  %102 = fsub float %100, %101
  store float %102, ptr %10, align 4, !tbaa !125
  %103 = getelementptr inbounds %struct.EditBone, ptr %86, i64 0, i32 7, i64 1
  %104 = load float, ptr %103, align 4, !tbaa !125
  %105 = getelementptr inbounds %struct.EditBone, ptr %86, i64 0, i32 8, i64 1
  %106 = load float, ptr %105, align 4, !tbaa !125
  %107 = fsub float %104, %106
  store float %107, ptr %83, align 4, !tbaa !125
  %108 = getelementptr inbounds %struct.EditBone, ptr %86, i64 0, i32 7, i64 2
  %109 = load float, ptr %108, align 4, !tbaa !125
  %110 = getelementptr inbounds %struct.EditBone, ptr %86, i64 0, i32 8, i64 2
  %111 = load float, ptr %110, align 4, !tbaa !125
  %112 = fsub float %109, %111
  store float %112, ptr %84, align 4, !tbaa !125
  %113 = call float @angle_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %10) #7
  %114 = fdiv float %113, 0x400921FB60000000
  %115 = fcmp olt float %114, %19
  br i1 %115, label %116, label %117

116:                                              ; preds = %97
  call void @ED_armature_ebone_select_set(ptr noundef nonnull %86, i8 noundef zeroext 1) #7
  br label %117

117:                                              ; preds = %116, %97
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #7
  br label %118

118:                                              ; preds = %117, %92, %85
  %119 = load ptr, ptr %86, align 8, !tbaa !106
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %85, !llvm.loop !126

121:                                              ; preds = %118, %59
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #7
  br label %216

122:                                              ; preds = %24
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #7
  %123 = getelementptr inbounds %struct.EditBone, ptr %14, i64 0, i32 5
  call void @BKE_deform_split_prefix(ptr noundef nonnull %123, ptr noundef nonnull %7, ptr noundef nonnull %6) #7
  %124 = load i8, ptr %7, align 16, !tbaa !127
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %154, label %126

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.bArmature, ptr %13, i64 0, i32 4
  %128 = load ptr, ptr %127, align 8, !tbaa !75
  %129 = load ptr, ptr %128, align 8, !tbaa !106
  %130 = icmp eq ptr %129, null
  br i1 %130, label %154, label %131

131:                                              ; preds = %126
  %132 = getelementptr inbounds %struct.bArmature, ptr %13, i64 0, i32 15
  br label %133

133:                                              ; preds = %131, %151
  %134 = phi ptr [ %129, %131 ], [ %152, %151 ]
  %135 = load i32, ptr %132, align 8, !tbaa !108
  %136 = getelementptr inbounds %struct.EditBone, ptr %134, i64 0, i32 10
  %137 = load i32, ptr %136, align 8, !tbaa !109
  %138 = and i32 %137, %135
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %151, label %140

140:                                              ; preds = %133
  %141 = getelementptr inbounds %struct.EditBone, ptr %134, i64 0, i32 9
  %142 = load i32, ptr %141, align 4, !tbaa !77
  %143 = and i32 %142, 2098176
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %140
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #7
  %146 = getelementptr inbounds %struct.EditBone, ptr %134, i64 0, i32 5
  call void @BKE_deform_split_prefix(ptr noundef nonnull %146, ptr noundef nonnull %8, ptr noundef nonnull %6) #7
  %147 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %8) #8
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %145
  call void @ED_armature_ebone_select_set(ptr noundef nonnull %134, i8 noundef zeroext 1) #7
  br label %150

150:                                              ; preds = %149, %145
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #7
  br label %151

151:                                              ; preds = %150, %140, %133
  %152 = load ptr, ptr %134, align 8, !tbaa !106
  %153 = icmp eq ptr %152, null
  br i1 %153, label %154, label %133, !llvm.loop !128

154:                                              ; preds = %151, %126, %122
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #7
  br label %216

155:                                              ; preds = %24
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #7
  %156 = getelementptr inbounds %struct.EditBone, ptr %14, i64 0, i32 5
  call void @BKE_deform_split_suffix(ptr noundef nonnull %156, ptr noundef nonnull %3, ptr noundef nonnull %4) #7
  %157 = load i8, ptr %4, align 16, !tbaa !127
  %158 = icmp eq i8 %157, 0
  br i1 %158, label %187, label %159

159:                                              ; preds = %155
  %160 = getelementptr inbounds %struct.bArmature, ptr %13, i64 0, i32 4
  %161 = load ptr, ptr %160, align 8, !tbaa !75
  %162 = load ptr, ptr %161, align 8, !tbaa !106
  %163 = icmp eq ptr %162, null
  br i1 %163, label %187, label %164

164:                                              ; preds = %159
  %165 = getelementptr inbounds %struct.bArmature, ptr %13, i64 0, i32 15
  br label %166

166:                                              ; preds = %164, %184
  %167 = phi ptr [ %162, %164 ], [ %185, %184 ]
  %168 = load i32, ptr %165, align 8, !tbaa !108
  %169 = getelementptr inbounds %struct.EditBone, ptr %167, i64 0, i32 10
  %170 = load i32, ptr %169, align 8, !tbaa !109
  %171 = and i32 %170, %168
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %184, label %173

173:                                              ; preds = %166
  %174 = getelementptr inbounds %struct.EditBone, ptr %167, i64 0, i32 9
  %175 = load i32, ptr %174, align 4, !tbaa !77
  %176 = and i32 %175, 2098176
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %184

178:                                              ; preds = %173
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #7
  %179 = getelementptr inbounds %struct.EditBone, ptr %167, i64 0, i32 5
  call void @BKE_deform_split_suffix(ptr noundef nonnull %179, ptr noundef nonnull %3, ptr noundef nonnull %5) #7
  %180 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %5) #8
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %178
  call void @ED_armature_ebone_select_set(ptr noundef nonnull %167, i8 noundef zeroext 1) #7
  br label %183

183:                                              ; preds = %182, %178
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #7
  br label %184

184:                                              ; preds = %183, %173, %166
  %185 = load ptr, ptr %167, align 8, !tbaa !106
  %186 = icmp eq ptr %185, null
  br i1 %186, label %187, label %166, !llvm.loop !129

187:                                              ; preds = %184, %159, %155
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #7
  br label %216

188:                                              ; preds = %24
  %189 = getelementptr inbounds %struct.bArmature, ptr %13, i64 0, i32 4
  %190 = load ptr, ptr %189, align 8, !tbaa !75
  %191 = load ptr, ptr %190, align 8, !tbaa !106
  %192 = icmp eq ptr %191, null
  br i1 %192, label %216, label %193

193:                                              ; preds = %188
  %194 = getelementptr inbounds %struct.bArmature, ptr %13, i64 0, i32 15
  %195 = getelementptr inbounds %struct.EditBone, ptr %14, i64 0, i32 10
  br label %196

196:                                              ; preds = %193, %213
  %197 = phi ptr [ %191, %193 ], [ %214, %213 ]
  %198 = load i32, ptr %194, align 8, !tbaa !108
  %199 = getelementptr inbounds %struct.EditBone, ptr %197, i64 0, i32 10
  %200 = load i32, ptr %199, align 8, !tbaa !109
  %201 = and i32 %200, %198
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %213, label %203

203:                                              ; preds = %196
  %204 = getelementptr inbounds %struct.EditBone, ptr %197, i64 0, i32 9
  %205 = load i32, ptr %204, align 4, !tbaa !77
  %206 = and i32 %205, 2098176
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %213

208:                                              ; preds = %203
  %209 = load i32, ptr %195, align 8, !tbaa !109
  %210 = and i32 %209, %200
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %213, label %212

212:                                              ; preds = %208
  tail call void @ED_armature_ebone_select_set(ptr noundef nonnull %197, i8 noundef zeroext 1) #7
  br label %213

213:                                              ; preds = %212, %208, %203, %196
  %214 = load ptr, ptr %197, align 8, !tbaa !106
  %215 = icmp eq ptr %214, null
  br i1 %215, label %216, label %196, !llvm.loop !130

216:                                              ; preds = %213, %56, %188, %25, %24, %187, %154, %121
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85327872, ptr noundef %11) #7
  br label %217

217:                                              ; preds = %216, %21
  %218 = phi i32 [ 2, %21 ], [ 4, %216 ]
  ret i32 %218
}

declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RNA_def_float(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ARMATURE_OT_select_hierarchy(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.27, ptr %0, align 8, !tbaa !89
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.28, ptr %2, align 8, !tbaa !92
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.29, ptr %3, align 8, !tbaa !93
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @armature_select_hierarchy_exec, ptr %4, align 8, !tbaa !115
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editarmature, ptr %5, align 8, !tbaa !95
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !96
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !97
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.30, ptr noundef nonnull @ARMATURE_OT_select_hierarchy.direction_items, i32 noundef 0, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.20) #7
  %10 = load ptr, ptr %7, align 8, !tbaa !97
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.3, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.32) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @armature_select_hierarchy_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #7
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !98
  %6 = tail call i32 @RNA_enum_get(ptr noundef %5, ptr noundef nonnull @.str.30) #7
  %7 = load ptr, ptr %4, align 8, !tbaa !98
  %8 = tail call i32 @RNA_boolean_get(ptr noundef %7, ptr noundef nonnull @.str.3) #7
  %9 = trunc i32 %8 to i8
  %10 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !74
  %12 = getelementptr inbounds %struct.bArmature, ptr %11, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !75
  %14 = load ptr, ptr %13, align 8, !tbaa !106
  %15 = icmp eq ptr %14, null
  br i1 %15, label %116, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.bArmature, ptr %11, i64 0, i32 15
  %18 = load i32, ptr %17, align 8, !tbaa !108
  %19 = getelementptr inbounds %struct.bArmature, ptr %11, i64 0, i32 6
  %20 = icmp eq i32 %6, 0
  br label %21

21:                                               ; preds = %16, %107
  %22 = phi ptr [ %14, %16 ], [ %108, %107 ]
  %23 = getelementptr inbounds %struct.EditBone, ptr %22, i64 0, i32 10
  %24 = load i32, ptr %23, align 8, !tbaa !109
  %25 = and i32 %24, %18
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %107, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.EditBone, ptr %22, i64 0, i32 9
  %29 = load i32, ptr %28, align 4, !tbaa !77
  %30 = and i32 %29, 2098176
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %107

32:                                               ; preds = %27
  %33 = load ptr, ptr %19, align 8, !tbaa !110
  %34 = icmp eq ptr %22, %33
  br i1 %34, label %35, label %107

35:                                               ; preds = %32
  br i1 %20, label %39, label %36

36:                                               ; preds = %35
  %37 = load ptr, ptr %13, align 8, !tbaa !106
  %38 = icmp eq ptr %37, null
  br i1 %38, label %82, label %66

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.EditBone, ptr %22, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !101
  %42 = icmp eq ptr %41, null
  br i1 %42, label %107, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.EditBone, ptr %41, i64 0, i32 10
  %45 = load i32, ptr %44, align 8, !tbaa !109
  %46 = and i32 %45, %18
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %107, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.EditBone, ptr %41, i64 0, i32 9
  %50 = load i32, ptr %49, align 4, !tbaa !77
  %51 = and i32 %50, 1024
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %107

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.bArmature, ptr %11, i64 0, i32 6
  %55 = getelementptr inbounds %struct.EditBone, ptr %41, i64 0, i32 9
  %56 = or i32 %50, 7
  store i32 %56, ptr %55, align 4, !tbaa !77
  store ptr %41, ptr %54, align 8, !tbaa !110
  %57 = getelementptr inbounds %struct.EditBone, ptr %41, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !101
  %59 = icmp eq ptr %58, null
  br i1 %59, label %64, label %60

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.EditBone, ptr %58, i64 0, i32 9
  %62 = load i32, ptr %61, align 4, !tbaa !77
  %63 = or i32 %62, 4
  store i32 %63, ptr %61, align 4, !tbaa !77
  br label %64

64:                                               ; preds = %60, %53
  %65 = icmp eq i8 %9, 0
  br i1 %65, label %110, label %116

66:                                               ; preds = %36, %78
  %67 = phi ptr [ %80, %78 ], [ %37, %36 ]
  %68 = phi ptr [ %79, %78 ], [ null, %36 ]
  %69 = getelementptr inbounds %struct.EditBone, ptr %67, i64 0, i32 3
  %70 = load ptr, ptr %69, align 8, !tbaa !101
  %71 = icmp eq ptr %70, %22
  br i1 %71, label %72, label %78

72:                                               ; preds = %66
  %73 = getelementptr inbounds %struct.EditBone, ptr %67, i64 0, i32 10
  %74 = load i32, ptr %73, align 8, !tbaa !109
  %75 = and i32 %74, %18
  %76 = icmp eq i32 %75, 0
  %77 = select i1 %76, ptr %68, ptr %67
  br label %78

78:                                               ; preds = %72, %66
  %79 = phi ptr [ %68, %66 ], [ %77, %72 ]
  %80 = load ptr, ptr %67, align 8, !tbaa !106
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %66, !llvm.loop !131

82:                                               ; preds = %78, %36
  %83 = phi ptr [ null, %36 ], [ %79, %78 ]
  %84 = icmp eq ptr %83, null
  br i1 %84, label %107, label %85

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.EditBone, ptr %83, i64 0, i32 10
  %87 = load i32, ptr %86, align 8, !tbaa !109
  %88 = and i32 %87, %18
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %107, label %90

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.EditBone, ptr %83, i64 0, i32 9
  %92 = load i32, ptr %91, align 4, !tbaa !77
  %93 = and i32 %92, 2098176
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %107

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.bArmature, ptr %11, i64 0, i32 6
  %97 = getelementptr inbounds %struct.EditBone, ptr %83, i64 0, i32 9
  %98 = or i32 %92, 7
  store i32 %98, ptr %97, align 4, !tbaa !77
  store ptr %83, ptr %96, align 8, !tbaa !110
  %99 = icmp eq i8 %9, 0
  br i1 %99, label %100, label %116

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.EditBone, ptr %22, i64 0, i32 9
  %102 = load i32, ptr %101, align 4, !tbaa !77
  %103 = and i32 %102, -4
  store i32 %103, ptr %101, align 4, !tbaa !77
  %104 = getelementptr inbounds %struct.EditBone, ptr %22, i64 0, i32 3
  %105 = load ptr, ptr %104, align 8, !tbaa !101
  %106 = icmp eq ptr %105, null
  br i1 %106, label %116, label %110

107:                                              ; preds = %27, %43, %48, %85, %90, %32, %21, %82, %39
  %108 = load ptr, ptr %22, align 8, !tbaa !106
  %109 = icmp eq ptr %108, null
  br i1 %109, label %116, label %21, !llvm.loop !132

110:                                              ; preds = %100, %64
  %111 = phi ptr [ %22, %64 ], [ %105, %100 ]
  %112 = phi i32 [ -8, %64 ], [ -5, %100 ]
  %113 = getelementptr inbounds %struct.EditBone, ptr %111, i64 0, i32 9
  %114 = load i32, ptr %113, align 4, !tbaa !77
  %115 = and i32 %114, %112
  store i32 %115, ptr %113, align 4, !tbaa !77
  br label %116

116:                                              ; preds = %107, %110, %2, %95, %100, %64
  tail call void @ED_armature_sync_selection(ptr noundef nonnull %13) #7
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85327872, ptr noundef %3) #7
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @ARMATURE_OT_select_mirror(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.33, ptr %0, align 8, !tbaa !89
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.34, ptr %2, align 8, !tbaa !92
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.35, ptr %3, align 8, !tbaa !93
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @armature_select_mirror_exec, ptr %4, align 8, !tbaa !115
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editarmature, ptr %5, align 8, !tbaa !95
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !96
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !97
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.36, i32 noundef 0, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38) #7
  %10 = load ptr, ptr %7, align 8, !tbaa !97
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.3, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.32) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @armature_select_mirror_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #7
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !74
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !98
  %8 = tail call i32 @RNA_boolean_get(ptr noundef %7, ptr noundef nonnull @.str.36) #7
  %9 = load ptr, ptr %6, align 8, !tbaa !98
  %10 = tail call i32 @RNA_boolean_get(ptr noundef %9, ptr noundef nonnull @.str.3) #7
  %11 = getelementptr inbounds %struct.bArmature, ptr %5, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !75
  %13 = load ptr, ptr %12, align 8, !tbaa !106
  %14 = icmp eq ptr %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %2, %15
  %16 = phi ptr [ %21, %15 ], [ %13, %2 ]
  %17 = tail call i32 @ED_armature_ebone_selectflag_get(ptr noundef nonnull %16) #7
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to ptr
  %20 = getelementptr inbounds %struct.EditBone, ptr %16, i64 0, i32 4
  store ptr %19, ptr %20, align 8, !tbaa !133
  %21 = load ptr, ptr %16, align 8, !tbaa !106
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %15, !llvm.loop !134

23:                                               ; preds = %15, %2
  %24 = load ptr, ptr %11, align 8, !tbaa !75
  %25 = load ptr, ptr %24, align 8, !tbaa !106
  %26 = icmp eq ptr %25, null
  br i1 %26, label %88, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.bArmature, ptr %5, i64 0, i32 15
  %29 = and i32 %10, 255
  %30 = icmp eq i32 %29, 0
  %31 = getelementptr inbounds %struct.bArmature, ptr %5, i64 0, i32 6
  %32 = and i32 %8, 255
  %33 = icmp eq i32 %32, 0
  br label %34

34:                                               ; preds = %27, %84
  %35 = phi ptr [ %25, %27 ], [ %86, %84 ]
  %36 = phi ptr [ null, %27 ], [ %85, %84 ]
  %37 = load i32, ptr %28, align 8, !tbaa !108
  %38 = getelementptr inbounds %struct.EditBone, ptr %35, i64 0, i32 10
  %39 = load i32, ptr %38, align 8, !tbaa !109
  %40 = and i32 %39, %37
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %84, label %42

42:                                               ; preds = %34
  %43 = getelementptr inbounds %struct.EditBone, ptr %35, i64 0, i32 9
  %44 = load i32, ptr %43, align 4, !tbaa !77
  %45 = and i32 %44, 2098176
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %84

47:                                               ; preds = %42
  br i1 %30, label %53, label %48

48:                                               ; preds = %47
  %49 = getelementptr inbounds %struct.EditBone, ptr %35, i64 0, i32 4
  %50 = load ptr, ptr %49, align 8, !tbaa !133
  %51 = ptrtoint ptr %50 to i64
  %52 = trunc i64 %51 to i32
  br label %53

53:                                               ; preds = %47, %48
  %54 = phi i32 [ %52, %48 ], [ 0, %47 ]
  %55 = load ptr, ptr %11, align 8, !tbaa !75
  %56 = tail call ptr @ED_armature_bone_get_mirrored(ptr noundef %55, ptr noundef nonnull %35) #7
  %57 = icmp eq ptr %56, null
  br i1 %57, label %81, label %58

58:                                               ; preds = %53
  %59 = load i32, ptr %28, align 8, !tbaa !108
  %60 = getelementptr inbounds %struct.EditBone, ptr %56, i64 0, i32 10
  %61 = load i32, ptr %60, align 8, !tbaa !109
  %62 = and i32 %61, %59
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %81, label %64

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.EditBone, ptr %56, i64 0, i32 9
  %66 = load i32, ptr %65, align 4, !tbaa !77
  %67 = and i32 %66, 1024
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.EditBone, ptr %56, i64 0, i32 4
  %71 = load ptr, ptr %70, align 8, !tbaa !133
  %72 = ptrtoint ptr %71 to i64
  %73 = trunc i64 %72 to i32
  %74 = or i32 %54, %73
  %75 = load ptr, ptr %31, align 8, !tbaa !110
  %76 = icmp eq ptr %35, %75
  %77 = select i1 %76, ptr %56, ptr %36
  %78 = icmp eq ptr %75, %56
  %79 = or i1 %76, %78
  %80 = select i1 %33, i1 true, i1 %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %69, %58, %64, %53
  %82 = phi ptr [ %36, %64 ], [ %36, %58 ], [ %36, %53 ], [ %77, %69 ]
  %83 = phi i32 [ %54, %64 ], [ %54, %58 ], [ %54, %53 ], [ %74, %69 ]
  tail call void @ED_armature_ebone_selectflag_set(ptr noundef nonnull %35, i32 noundef %83) #7
  br label %84

84:                                               ; preds = %69, %81, %42, %34
  %85 = phi ptr [ %36, %42 ], [ %36, %34 ], [ %82, %81 ], [ %77, %69 ]
  %86 = load ptr, ptr %35, align 8, !tbaa !106
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %34, !llvm.loop !135

88:                                               ; preds = %84, %23
  %89 = phi ptr [ null, %23 ], [ %85, %84 ]
  %90 = icmp eq ptr %89, null
  br i1 %90, label %93, label %91

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.bArmature, ptr %5, i64 0, i32 6
  store ptr %89, ptr %92, align 8, !tbaa !110
  br label %93

93:                                               ; preds = %91, %88
  %94 = load ptr, ptr %11, align 8, !tbaa !75
  tail call void @ED_armature_sync_selection(ptr noundef %94) #7
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85327872, ptr noundef %3) #7
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ARMATURE_OT_shortest_path_pick(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.39, ptr %0, align 8, !tbaa !89
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.40, ptr %2, align 8, !tbaa !92
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.41, ptr %3, align 8, !tbaa !93
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @armature_shortest_path_pick_invoke, ptr %4, align 8, !tbaa !94
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editarmature, ptr %5, align 8, !tbaa !95
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !96
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @armature_shortest_path_pick_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.ViewContext, align 8
  %5 = alloca %struct.rcti, align 4
  %6 = alloca [10000 x i32], align 16
  %7 = alloca [2 x ptr], align 16
  %8 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #7
  %9 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7
  tail call void @view3d_operator_needs_opengl(ptr noundef %0) #7
  %11 = getelementptr inbounds %struct.bArmature, ptr %10, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !110
  %13 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %14 = load i32, ptr %13, align 4, !tbaa !67
  %15 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %16 = load i32, ptr %15, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %6) #7
  call void @view3d_set_viewcontext(ptr noundef %0, ptr noundef nonnull %4) #7
  %17 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 1
  store i32 %14, ptr %17, align 4, !tbaa !82
  store i32 %14, ptr %5, align 4, !tbaa !83
  %18 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 3
  store i32 %16, ptr %18, align 4, !tbaa !84
  %19 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 2
  store i32 %16, ptr %19, align 4, !tbaa !85
  call void @glInitNames() #7
  %20 = call signext i16 @view3d_opengl_select(ptr noundef nonnull %4, ptr noundef nonnull %6, i32 noundef 10000, ptr noundef nonnull %5, i8 noundef zeroext 1) #7
  %21 = icmp sgt i16 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %3
  %23 = load ptr, ptr %4, align 8, !tbaa !86
  %24 = getelementptr inbounds %struct.Scene, ptr %23, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !88
  %26 = call ptr @get_bone_from_selectbuffer(ptr noundef %23, ptr noundef %25, ptr noundef nonnull %6, i16 noundef signext %20, i16 noundef signext 0, i8 noundef zeroext 1)
  br label %27

27:                                               ; preds = %3, %22
  %28 = phi ptr [ %26, %22 ], [ null, %3 ]
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #7
  %29 = icmp eq ptr %12, null
  %30 = icmp eq ptr %28, null
  %31 = select i1 %29, i1 true, i1 %30
  %32 = icmp eq ptr %12, %28
  %33 = select i1 %31, i1 true, i1 %32
  br i1 %33, label %143, label %34

34:                                               ; preds = %27
  store ptr %12, ptr %7, align 16, !tbaa !106
  %35 = getelementptr inbounds [2 x ptr], ptr %7, i64 0, i64 1
  store ptr %28, ptr %35, align 8, !tbaa !106
  %36 = call zeroext i8 @ED_armature_ebone_is_child_recursive(ptr noundef %12, ptr noundef %28) #7
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = call zeroext i8 @ED_armature_ebone_is_child_recursive(ptr noundef %28, ptr noundef %12) #7
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = call ptr @ED_armature_bone_find_shared_parent(ptr noundef nonnull %7, i32 noundef 2) #7
  %43 = icmp eq ptr %42, null
  br i1 %43, label %143, label %44

44:                                               ; preds = %38, %41, %34
  %45 = phi ptr [ %12, %34 ], [ %12, %41 ], [ %28, %38 ]
  %46 = phi ptr [ %28, %34 ], [ %28, %41 ], [ %12, %38 ]
  %47 = phi ptr [ null, %34 ], [ %42, %41 ], [ null, %38 ]
  %48 = icmp eq ptr %47, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %44
  %50 = icmp eq ptr %45, %47
  br i1 %50, label %78, label %51

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.bArmature, ptr %10, i64 0, i32 15
  %53 = load i32, ptr %52, align 8, !tbaa !108
  br label %61

54:                                               ; preds = %44
  %55 = getelementptr inbounds %struct.bArmature, ptr %10, i64 0, i32 15
  %56 = load i32, ptr %55, align 8, !tbaa !108
  %57 = getelementptr inbounds %struct.EditBone, ptr %46, i64 0, i32 10
  %58 = load i32, ptr %57, align 8, !tbaa !109
  %59 = and i32 %58, %56
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %140, label %114

61:                                               ; preds = %51, %72
  %62 = phi ptr [ %45, %51 ], [ %74, %72 ]
  %63 = getelementptr inbounds %struct.EditBone, ptr %62, i64 0, i32 10
  %64 = load i32, ptr %63, align 8, !tbaa !109
  %65 = and i32 %64, %53
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %76, label %67

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.EditBone, ptr %62, i64 0, i32 9
  %69 = load i32, ptr %68, align 4, !tbaa !77
  %70 = and i32 %69, 2098176
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.EditBone, ptr %62, i64 0, i32 3
  %74 = load ptr, ptr %73, align 8, !tbaa !101
  %75 = icmp eq ptr %74, %47
  br i1 %75, label %76, label %61, !llvm.loop !136

76:                                               ; preds = %61, %72, %67
  %77 = phi i1 [ %71, %67 ], [ %66, %72 ], [ %66, %61 ]
  br i1 %77, label %140, label %78

78:                                               ; preds = %49, %76
  %79 = icmp eq ptr %46, %47
  br i1 %79, label %100, label %80

80:                                               ; preds = %78
  %81 = getelementptr inbounds %struct.bArmature, ptr %10, i64 0, i32 15
  %82 = load i32, ptr %81, align 8, !tbaa !108
  br label %83

83:                                               ; preds = %80, %94
  %84 = phi ptr [ %46, %80 ], [ %96, %94 ]
  %85 = getelementptr inbounds %struct.EditBone, ptr %84, i64 0, i32 10
  %86 = load i32, ptr %85, align 8, !tbaa !109
  %87 = and i32 %86, %82
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %98, label %89

89:                                               ; preds = %83
  %90 = getelementptr inbounds %struct.EditBone, ptr %84, i64 0, i32 9
  %91 = load i32, ptr %90, align 4, !tbaa !77
  %92 = and i32 %91, 2098176
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %89
  %95 = getelementptr inbounds %struct.EditBone, ptr %84, i64 0, i32 3
  %96 = load ptr, ptr %95, align 8, !tbaa !101
  %97 = icmp eq ptr %96, %47
  br i1 %97, label %98, label %83, !llvm.loop !136

98:                                               ; preds = %83, %94, %89
  %99 = phi i1 [ %93, %89 ], [ %88, %94 ], [ %88, %83 ]
  br i1 %99, label %140, label %100

100:                                              ; preds = %78, %98
  %101 = icmp eq ptr %45, %47
  br i1 %101, label %102, label %104

102:                                              ; preds = %104, %100
  %103 = icmp eq ptr %46, %47
  br i1 %103, label %137, label %109

104:                                              ; preds = %100, %104
  %105 = phi ptr [ %107, %104 ], [ %45, %100 ]
  call void @ED_armature_ebone_selectflag_set(ptr noundef %105, i32 noundef 7) #7
  %106 = getelementptr inbounds %struct.EditBone, ptr %105, i64 0, i32 3
  %107 = load ptr, ptr %106, align 8, !tbaa !101
  %108 = icmp eq ptr %107, %47
  br i1 %108, label %102, label %104, !llvm.loop !136

109:                                              ; preds = %102, %109
  %110 = phi ptr [ %112, %109 ], [ %46, %102 ]
  call void @ED_armature_ebone_selectflag_set(ptr noundef %110, i32 noundef 7) #7
  %111 = getelementptr inbounds %struct.EditBone, ptr %110, i64 0, i32 3
  %112 = load ptr, ptr %111, align 8, !tbaa !101
  %113 = icmp eq ptr %112, %47
  br i1 %113, label %137, label %109, !llvm.loop !136

114:                                              ; preds = %54, %122
  %115 = phi ptr [ %124, %122 ], [ %46, %54 ]
  %116 = icmp eq ptr %115, %45
  %117 = getelementptr inbounds %struct.EditBone, ptr %115, i64 0, i32 9
  %118 = load i32, ptr %117, align 4, !tbaa !77
  %119 = and i32 %118, 2098176
  %120 = icmp ne i32 %119, 0
  %121 = select i1 %120, i1 true, i1 %116
  br i1 %121, label %129, label %122

122:                                              ; preds = %114
  %123 = getelementptr inbounds %struct.EditBone, ptr %115, i64 0, i32 3
  %124 = load ptr, ptr %123, align 8, !tbaa !101
  %125 = getelementptr inbounds %struct.EditBone, ptr %124, i64 0, i32 10
  %126 = load i32, ptr %125, align 8, !tbaa !109
  %127 = and i32 %126, %56
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %140, label %114, !llvm.loop !136

129:                                              ; preds = %114
  br i1 %120, label %140, label %130

130:                                              ; preds = %129
  %131 = icmp eq ptr %46, %45
  call void @ED_armature_ebone_selectflag_set(ptr noundef %46, i32 noundef 7) #7
  br i1 %131, label %137, label %132

132:                                              ; preds = %130, %132
  %133 = phi ptr [ %135, %132 ], [ %46, %130 ]
  %134 = getelementptr inbounds %struct.EditBone, ptr %133, i64 0, i32 3
  %135 = load ptr, ptr %134, align 8, !tbaa !101
  %136 = icmp eq ptr %135, %45
  call void @ED_armature_ebone_selectflag_set(ptr noundef %135, i32 noundef 7) #7
  br i1 %136, label %137, label %132, !llvm.loop !136

137:                                              ; preds = %109, %132, %102, %130
  store ptr %46, ptr %11, align 8, !tbaa !110
  %138 = getelementptr inbounds %struct.bArmature, ptr %10, i64 0, i32 4
  %139 = load ptr, ptr %138, align 8, !tbaa !75
  call void @ED_armature_sync_selection(ptr noundef %139) #7
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85327872, ptr noundef %8) #7
  br label %143

140:                                              ; preds = %122, %54, %98, %76, %129
  %141 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %142 = load ptr, ptr %141, align 8, !tbaa !122
  call void @BKE_report(ptr noundef %142, i32 noundef 16, ptr noundef nonnull @.str.54) #7
  br label %143

143:                                              ; preds = %41, %27, %140, %137
  %144 = phi i32 [ 4, %137 ], [ 2, %140 ], [ 8, %27 ], [ 2, %41 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7
  ret i32 %144
}

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @view3d_operator_needs_opengl(ptr noundef) local_unnamed_addr #2

declare i32 @ED_operator_view3d_active(ptr noundef) local_unnamed_addr #2

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CTX_data_visible_bones(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @armature_select_more_less(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !74
  %5 = getelementptr inbounds %struct.bArmature, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  tail call void @ED_armature_sync_selection(ptr noundef %6) #7
  %7 = load ptr, ptr %5, align 8, !tbaa !75
  %8 = load ptr, ptr %7, align 8, !tbaa !106
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %2, %10
  %11 = phi ptr [ %16, %10 ], [ %8, %2 ]
  %12 = tail call i32 @ED_armature_ebone_selectflag_get(ptr noundef nonnull %11) #7
  %13 = sext i32 %12 to i64
  %14 = inttoptr i64 %13 to ptr
  %15 = getelementptr inbounds %struct.EditBone, ptr %11, i64 0, i32 4
  store ptr %14, ptr %15, align 8, !tbaa !133
  %16 = load ptr, ptr %11, align 8, !tbaa !106
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %10, !llvm.loop !137

18:                                               ; preds = %10, %2
  %19 = load ptr, ptr %5, align 8, !tbaa !75
  %20 = load ptr, ptr %19, align 8, !tbaa !106
  %21 = icmp eq ptr %20, null
  br i1 %21, label %118, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.bArmature, ptr %4, i64 0, i32 15
  %24 = icmp eq i8 %1, 0
  br label %25

25:                                               ; preds = %22, %115
  %26 = phi ptr [ %20, %22 ], [ %116, %115 ]
  %27 = load i32, ptr %23, align 8, !tbaa !108
  %28 = getelementptr inbounds %struct.EditBone, ptr %26, i64 0, i32 10
  %29 = load i32, ptr %28, align 8, !tbaa !109
  %30 = and i32 %29, %27
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %115, label %32

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.EditBone, ptr %26, i64 0, i32 9
  %34 = load i32, ptr %33, align 4, !tbaa !77
  %35 = and i32 %34, 1024
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %115

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.EditBone, ptr %26, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !133
  %40 = ptrtoint ptr %39 to i64
  %41 = and i64 %40, 6
  br i1 %24, label %90, label %42

42:                                               ; preds = %37
  %43 = icmp ne i64 %41, 0
  %44 = and i32 %34, 2097152
  %45 = icmp eq i32 %44, 0
  %46 = and i1 %45, %43
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  tail call void @ED_armature_ebone_select_set(ptr noundef nonnull %26, i8 noundef zeroext 1) #7
  br label %48

48:                                               ; preds = %47, %42
  %49 = getelementptr inbounds %struct.EditBone, ptr %26, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !101
  %51 = icmp eq ptr %50, null
  br i1 %51, label %115, label %52

52:                                               ; preds = %48
  %53 = load i32, ptr %33, align 4, !tbaa !77
  %54 = and i32 %53, 16
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %115, label %56

56:                                               ; preds = %52
  %57 = load ptr, ptr %38, align 8, !tbaa !133
  %58 = ptrtoint ptr %57 to i64
  %59 = and i64 %58, 2
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %73, label %61

61:                                               ; preds = %56
  %62 = load i32, ptr %23, align 8, !tbaa !108
  %63 = getelementptr inbounds %struct.EditBone, ptr %50, i64 0, i32 10
  %64 = load i32, ptr %63, align 8, !tbaa !109
  %65 = and i32 %64, %62
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.EditBone, ptr %50, i64 0, i32 9
  %69 = load i32, ptr %68, align 4, !tbaa !77
  %70 = and i32 %69, 2098176
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  tail call void @ED_armature_ebone_selectflag_enable(ptr noundef nonnull %50, i32 noundef 7) #7
  br label %73

73:                                               ; preds = %72, %67, %61, %56
  %74 = load ptr, ptr %49, align 8, !tbaa !101
  %75 = getelementptr inbounds %struct.EditBone, ptr %74, i64 0, i32 4
  %76 = load ptr, ptr %75, align 8, !tbaa !133
  %77 = ptrtoint ptr %76 to i64
  %78 = and i64 %77, 4
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %115, label %80

80:                                               ; preds = %73
  %81 = load i32, ptr %23, align 8, !tbaa !108
  %82 = load i32, ptr %28, align 8, !tbaa !109
  %83 = and i32 %82, %81
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %115, label %85

85:                                               ; preds = %80
  %86 = load i32, ptr %33, align 4, !tbaa !77
  %87 = and i32 %86, 2098176
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %115

89:                                               ; preds = %85
  tail call void @ED_armature_ebone_selectflag_enable(ptr noundef nonnull %26, i32 noundef 3) #7
  br label %115

90:                                               ; preds = %37
  %91 = icmp eq i64 %41, 6
  br i1 %91, label %93, label %92

92:                                               ; preds = %90
  tail call void @ED_armature_ebone_select_set(ptr noundef nonnull %26, i8 noundef zeroext 0) #7
  br label %93

93:                                               ; preds = %92, %90
  %94 = getelementptr inbounds %struct.EditBone, ptr %26, i64 0, i32 3
  %95 = load ptr, ptr %94, align 8, !tbaa !101
  %96 = icmp eq ptr %95, null
  br i1 %96, label %115, label %97

97:                                               ; preds = %93
  %98 = load i32, ptr %33, align 4, !tbaa !77
  %99 = and i32 %98, 16
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %115, label %101

101:                                              ; preds = %97
  %102 = load ptr, ptr %38, align 8, !tbaa !133
  %103 = ptrtoint ptr %102 to i64
  %104 = and i64 %103, 1
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  tail call void @ED_armature_ebone_selectflag_disable(ptr noundef nonnull %95, i32 noundef 5) #7
  br label %107

107:                                              ; preds = %106, %101
  %108 = load ptr, ptr %94, align 8, !tbaa !101
  %109 = getelementptr inbounds %struct.EditBone, ptr %108, i64 0, i32 4
  %110 = load ptr, ptr %109, align 8, !tbaa !133
  %111 = ptrtoint ptr %110 to i64
  %112 = and i64 %111, 1
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %107
  tail call void @ED_armature_ebone_selectflag_disable(ptr noundef nonnull %26, i32 noundef 3) #7
  br label %115

115:                                              ; preds = %114, %107, %97, %93, %89, %85, %80, %73, %52, %48, %32, %25
  %116 = load ptr, ptr %26, align 8, !tbaa !106
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %25, !llvm.loop !138

118:                                              ; preds = %115, %18
  %119 = load ptr, ptr %5, align 8, !tbaa !75
  %120 = load ptr, ptr %119, align 8, !tbaa !106
  %121 = icmp eq ptr %120, null
  br i1 %121, label %143, label %122

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.bArmature, ptr %4, i64 0, i32 15
  %124 = icmp ne i8 %1, 0
  br label %125

125:                                              ; preds = %122, %139
  %126 = phi ptr [ %120, %122 ], [ %141, %139 ]
  %127 = load i32, ptr %123, align 8, !tbaa !108
  %128 = getelementptr inbounds %struct.EditBone, ptr %126, i64 0, i32 10
  %129 = load i32, ptr %128, align 8, !tbaa !109
  %130 = and i32 %129, %127
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %139, label %132

132:                                              ; preds = %125
  %133 = getelementptr inbounds %struct.EditBone, ptr %126, i64 0, i32 9
  %134 = load i32, ptr %133, align 4, !tbaa !77
  %135 = and i32 %134, 1025
  %136 = icmp ne i32 %135, 1
  %137 = or i1 %124, %136
  br i1 %137, label %139, label %138

138:                                              ; preds = %132
  tail call void @ED_armature_ebone_select_set(ptr noundef nonnull %126, i8 noundef zeroext 1) #7
  br label %139

139:                                              ; preds = %125, %138, %132
  %140 = getelementptr inbounds %struct.EditBone, ptr %126, i64 0, i32 4
  store ptr null, ptr %140, align 8, !tbaa !133
  %141 = load ptr, ptr %126, align 8, !tbaa !106
  %142 = icmp eq ptr %141, null
  br i1 %142, label %143, label %125, !llvm.loop !139

143:                                              ; preds = %139, %118
  %144 = load ptr, ptr %5, align 8, !tbaa !75
  tail call void @ED_armature_sync_selection(ptr noundef %144) #7
  ret void
}

declare i32 @ED_armature_ebone_selectflag_get(ptr noundef) local_unnamed_addr #2

declare void @ED_armature_ebone_select_set(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @ED_armature_ebone_selectflag_enable(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @ED_armature_ebone_selectflag_disable(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @CTX_data_active_bone(ptr noundef) local_unnamed_addr #2

declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare float @angle_v3v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_deform_split_prefix(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

declare void @BKE_deform_split_suffix(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ED_armature_bone_get_mirrored(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_armature_ebone_selectflag_set(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @ED_armature_ebone_is_child_recursive(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ED_armature_bone_find_shared_parent(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }

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
!34 = !{!35, !37, i64 288}
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
!46 = !{!47, !37, i64 120}
!47 = !{!"bPoseChannel", !37, i64 0, !37, i64 8, !37, i64 16, !43, i64 24, !38, i64 40, !40, i64 104, !40, i64 106, !40, i64 108, !40, i64 110, !38, i64 112, !38, i64 113, !38, i64 114, !37, i64 120, !37, i64 128, !37, i64 136, !43, i64 144, !43, i64 160, !37, i64 176, !37, i64 184, !37, i64 192, !38, i64 200, !38, i64 212, !38, i64 224, !38, i64 236, !38, i64 252, !44, i64 264, !40, i64 268, !40, i64 270, !38, i64 272, !38, i64 336, !38, i64 400, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !44, i64 524, !44, i64 528, !44, i64 532, !37, i64 536}
!48 = !{!49, !37, i64 176}
!49 = !{!"Scene", !36, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !43, i64 152, !37, i64 168, !37, i64 176, !38, i64 184, !38, i64 196, !38, i64 208, !38, i64 220, !41, i64 232, !41, i64 236, !41, i64 240, !40, i64 244, !38, i64 246, !38, i64 247, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !50, i64 280, !59, i64 4264, !43, i64 4296, !43, i64 4312, !37, i64 4328, !37, i64 4336, !37, i64 4344, !37, i64 4352, !37, i64 4360, !37, i64 4368, !40, i64 4376, !40, i64 4378, !41, i64 4380, !43, i64 4384, !60, i64 4400, !61, i64 4416, !64, i64 4600, !37, i64 4608, !65, i64 4616, !37, i64 4640, !45, i64 4648, !45, i64 4656, !52, i64 4664, !53, i64 4824, !66, i64 4888, !37, i64 4952}
!50 = !{!"RenderData", !51, i64 0, !37, i64 248, !37, i64 256, !54, i64 264, !55, i64 328, !41, i64 400, !41, i64 404, !41, i64 408, !44, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !41, i64 428, !40, i64 432, !40, i64 434, !44, i64 436, !44, i64 440, !44, i64 444, !44, i64 448, !44, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !41, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !41, i64 484, !41, i64 488, !40, i64 492, !40, i64 494, !41, i64 496, !41, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !38, i64 514, !38, i64 515, !41, i64 516, !41, i64 520, !41, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !56, i64 544, !56, i64 560, !57, i64 576, !43, i64 592, !40, i64 608, !40, i64 610, !44, i64 612, !44, i64 616, !44, i64 620, !44, i64 624, !41, i64 628, !44, i64 632, !44, i64 636, !44, i64 640, !44, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !44, i64 660, !44, i64 664, !40, i64 668, !40, i64 670, !44, i64 672, !44, i64 676, !38, i64 680, !41, i64 1704, !40, i64 1708, !40, i64 1710, !38, i64 1712, !38, i64 2480, !38, i64 2496, !38, i64 2512, !38, i64 2513, !38, i64 2514, !38, i64 2515, !41, i64 2520, !40, i64 2524, !40, i64 2526, !44, i64 2528, !44, i64 2532, !40, i64 2536, !40, i64 2538, !44, i64 2540, !40, i64 2544, !40, i64 2546, !41, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !44, i64 2560, !44, i64 2564, !37, i64 2568, !41, i64 2576, !44, i64 2580, !38, i64 2584, !58, i64 2616, !41, i64 3976, !41, i64 3980}
!51 = !{!"ImageFormatData", !38, i64 0, !38, i64 1, !38, i64 2, !38, i64 3, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !40, i64 8, !40, i64 10, !44, i64 12, !38, i64 16, !38, i64 17, !38, i64 18, !52, i64 24, !53, i64 184}
!52 = !{!"ColorManagedViewSettings", !41, i64 0, !41, i64 4, !38, i64 8, !38, i64 72, !44, i64 136, !44, i64 140, !37, i64 144, !37, i64 152}
!53 = !{!"ColorManagedDisplaySettings", !38, i64 0}
!54 = !{!"QuicktimeCodecSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !40, i64 48, !40, i64 50, !41, i64 52, !41, i64 56, !41, i64 60}
!55 = !{!"FFMpegCodecData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !44, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !37, i64 64}
!56 = !{!"rctf", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12}
!57 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!58 = !{!"BakeData", !51, i64 0, !38, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !44, i64 1280, !44, i64 1284, !38, i64 1288, !38, i64 1291, !38, i64 1292, !38, i64 1293, !38, i64 1296}
!59 = !{!"AudioData", !41, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !41, i64 16, !40, i64 20, !40, i64 22, !44, i64 24, !44, i64 28}
!60 = !{!"GameFraming", !38, i64 0, !38, i64 12, !38, i64 13, !38, i64 14, !38, i64 15}
!61 = !{!"GameData", !60, i64 0, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !40, i64 32, !38, i64 34, !62, i64 40, !40, i64 64, !40, i64 66, !44, i64 68, !63, i64 72, !44, i64 128, !44, i64 132, !41, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !40, i64 148, !40, i64 150, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !40, i64 160, !40, i64 162, !44, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !44, i64 180}
!62 = !{!"GameDome", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !44, i64 8, !44, i64 12, !37, i64 16}
!63 = !{!"RecastData", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !44, i64 32, !44, i64 36, !41, i64 40, !44, i64 44, !44, i64 48, !40, i64 52, !40, i64 54}
!64 = !{!"UnitSettings", !44, i64 0, !38, i64 4, !38, i64 5, !40, i64 6}
!65 = !{!"PhysicsSettings", !38, i64 0, !41, i64 12, !41, i64 16, !41, i64 20}
!66 = !{!"ColorManagedColorspaceSettings", !38, i64 0}
!67 = !{!41, !41, i64 0}
!68 = !{!69, !37, i64 32}
!69 = !{!"Base", !37, i64 0, !37, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !40, i64 28, !40, i64 30, !37, i64 32}
!70 = !{!69, !41, i64 20}
!71 = !{}
!72 = !{!73, !41, i64 176}
!73 = !{!"Bone", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !43, i64 32, !38, i64 48, !44, i64 112, !38, i64 116, !38, i64 128, !38, i64 140, !41, i64 176, !38, i64 180, !38, i64 192, !38, i64 204, !44, i64 268, !44, i64 272, !44, i64 276, !44, i64 280, !44, i64 284, !44, i64 288, !44, i64 292, !44, i64 296, !44, i64 300, !44, i64 304, !38, i64 308, !41, i64 320, !40, i64 324, !38, i64 326}
!74 = !{!35, !37, i64 296}
!75 = !{!76, !37, i64 160}
!76 = !{!"bArmature", !36, i64 0, !37, i64 120, !43, i64 128, !43, i64 144, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !41, i64 192, !41, i64 196, !41, i64 200, !41, i64 204, !40, i64 208, !40, i64 210, !41, i64 212, !41, i64 216, !41, i64 220, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !41, i64 232, !41, i64 236, !41, i64 240, !41, i64 244, !41, i64 248, !41, i64 252}
!77 = !{!78, !41, i64 132}
!78 = !{!"EditBone", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !38, i64 40, !44, i64 104, !38, i64 108, !38, i64 120, !41, i64 132, !41, i64 136, !44, i64 140, !44, i64 144, !44, i64 148, !44, i64 152, !44, i64 156, !44, i64 160, !44, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !40, i64 180}
!79 = distinct !{!79, !80, !81}
!80 = !{!"llvm.loop.mustprogress"}
!81 = !{!"llvm.loop.unroll.disable"}
!82 = !{!57, !41, i64 4}
!83 = !{!57, !41, i64 0}
!84 = !{!57, !41, i64 12}
!85 = !{!57, !41, i64 8}
!86 = !{!87, !37, i64 0}
!87 = !{!"ViewContext", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !38, i64 56}
!88 = !{!49, !37, i64 168}
!89 = !{!90, !37, i64 0}
!90 = !{!"wmOperatorType", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !43, i64 112, !37, i64 128, !37, i64 136, !37, i64 144, !91, i64 152, !40, i64 184}
!91 = !{!"ExtensionRNA", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24}
!92 = !{!90, !37, i64 8}
!93 = !{!90, !37, i64 24}
!94 = !{!90, !37, i64 48}
!95 = !{!90, !37, i64 72}
!96 = !{!90, !40, i64 184}
!97 = !{!90, !37, i64 88}
!98 = !{!99, !37, i64 112}
!99 = !{!"wmOperator", !37, i64 0, !37, i64 8, !38, i64 16, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !43, i64 128, !37, i64 144, !37, i64 152, !40, i64 160, !38, i64 162}
!100 = !{!43, !37, i64 0}
!101 = !{!78, !37, i64 24}
!102 = distinct !{!102, !80, !81}
!103 = !{!78, !37, i64 0}
!104 = distinct !{!104, !80, !81}
!105 = distinct !{!105, !80, !81}
!106 = !{!37, !37, i64 0}
!107 = distinct !{!107, !80, !81}
!108 = !{!76, !41, i64 216}
!109 = !{!78, !41, i64 136}
!110 = !{!76, !37, i64 176}
!111 = distinct !{!111, !80, !81}
!112 = distinct !{!112, !80, !81}
!113 = !{!87, !37, i64 16}
!114 = distinct !{!114, !80, !81}
!115 = !{!90, !37, i64 32}
!116 = !{!117, !37, i64 32}
!117 = !{!"CollectionPointerLink", !37, i64 0, !37, i64 8, !118, i64 16}
!118 = !{!"PointerRNA", !119, i64 0, !37, i64 8, !37, i64 16}
!119 = !{!"", !37, i64 0}
!120 = distinct !{!120, !80, !81}
!121 = !{!90, !37, i64 104}
!122 = !{!99, !37, i64 120}
!123 = !{!78, !44, i64 152}
!124 = distinct !{!124, !80, !81}
!125 = !{!44, !44, i64 0}
!126 = distinct !{!126, !80, !81}
!127 = !{!38, !38, i64 0}
!128 = distinct !{!128, !80, !81}
!129 = distinct !{!129, !80, !81}
!130 = distinct !{!130, !80, !81}
!131 = distinct !{!131, !80, !81}
!132 = distinct !{!132, !80, !81}
!133 = !{!78, !37, i64 32}
!134 = distinct !{!134, !80, !81}
!135 = distinct !{!135, !80, !81}
!136 = distinct !{!136, !81}
!137 = distinct !{!137, !80, !81}
!138 = distinct !{!138, !80, !81}
!139 = distinct !{!139, !80, !81}
