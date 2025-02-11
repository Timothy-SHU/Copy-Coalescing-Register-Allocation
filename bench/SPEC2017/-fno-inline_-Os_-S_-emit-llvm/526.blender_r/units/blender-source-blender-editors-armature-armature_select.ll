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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_indexed_bone(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 18
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = ashr i32 %1, 16
  %8 = tail call ptr @BLI_findlink(ptr noundef nonnull %4, i32 noundef %7) #9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.bPoseChannel, ptr %8, i64 0, i32 12
  %12 = load ptr, ptr %11, align 8, !tbaa !17
  br label %13

13:                                               ; preds = %10, %6, %2
  %14 = phi ptr [ null, %2 ], [ %12, %10 ], [ null, %6 ]
  ret ptr %14
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_bone_from_selectbuffer(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i16 noundef signext %3, i16 noundef signext %4, i8 noundef zeroext %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !19
  %9 = icmp sgt i16 %3, 0
  br i1 %9, label %10, label %87

10:                                               ; preds = %6
  %11 = icmp eq ptr %8, null
  %12 = getelementptr inbounds %struct.Base, ptr %1, i64 0, i32 7
  %13 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 19
  %14 = icmp eq i16 %4, 0
  %15 = getelementptr inbounds %struct.Base, ptr %1, i64 0, i32 3
  %16 = icmp eq i8 %5, 0
  %17 = zext nneg i16 %3 to i64
  br label %18

18:                                               ; preds = %10, %79
  %19 = phi i64 [ 0, %10 ], [ %85, %79 ]
  %20 = phi i32 [ -1, %10 ], [ %84, %79 ]
  %21 = phi i32 [ -1, %10 ], [ %83, %79 ]
  %22 = phi i8 [ 0, %10 ], [ %82, %79 ]
  %23 = phi ptr [ null, %10 ], [ %81, %79 ]
  %24 = phi ptr [ null, %10 ], [ %80, %79 ]
  %25 = shl nuw nsw i64 %19, 2
  %26 = or disjoint i64 %25, 3
  %27 = getelementptr inbounds i32, ptr %2, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !38
  %29 = icmp slt i32 %28, 268435456
  br i1 %29, label %79, label %30

30:                                               ; preds = %18
  %31 = and i32 %28, 268435455
  br i1 %11, label %35, label %32

32:                                               ; preds = %30
  %33 = load ptr, ptr %12, align 8, !tbaa !39
  %34 = icmp eq ptr %33, %8
  br i1 %34, label %43, label %35

35:                                               ; preds = %32, %30
  %36 = load i32, ptr %15, align 4, !tbaa !41
  %37 = and i32 %28, 65535
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %79

39:                                               ; preds = %35
  %40 = load ptr, ptr %12, align 8, !tbaa !39
  %41 = tail call ptr @get_indexed_bone(ptr noundef %40, i32 noundef %31) #10
  %42 = getelementptr inbounds %struct.Bone, ptr %41, i64 0, i32 10
  br label %49

43:                                               ; preds = %32
  %44 = load ptr, ptr %13, align 8, !tbaa !42
  %45 = getelementptr inbounds %struct.bArmature, ptr %44, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !43
  %47 = tail call ptr @BLI_findlink(ptr noundef %46, i32 noundef %31) #9
  %48 = getelementptr inbounds %struct.EditBone, ptr %47, i64 0, i32 9
  br label %49

49:                                               ; preds = %43, %39
  %50 = phi ptr [ %48, %43 ], [ %42, %39 ]
  %51 = phi ptr [ %47, %43 ], [ %41, %39 ]
  %52 = load i32, ptr %50, align 4, !tbaa !38
  %53 = and i32 %52, 1
  %54 = icmp eq i32 %53, 0
  %55 = xor i1 %14, %54
  br i1 %55, label %67, label %56

56:                                               ; preds = %49
  br i1 %16, label %64, label %57

57:                                               ; preds = %56
  %58 = or disjoint i64 %25, 1
  %59 = getelementptr inbounds i32, ptr %2, i64 %58
  %60 = load i32, ptr %59, align 4, !tbaa !38
  %61 = icmp ugt i32 %21, %60
  %62 = select i1 %61, ptr %51, ptr %23
  %63 = tail call i32 @llvm.umin.i32(i32 %21, i32 %60)
  br label %79

64:                                               ; preds = %56
  %65 = icmp eq ptr %23, null
  %66 = select i1 %65, ptr %51, ptr %23
  br label %79

67:                                               ; preds = %49
  br i1 %16, label %75, label %68

68:                                               ; preds = %67
  %69 = or disjoint i64 %25, 1
  %70 = getelementptr inbounds i32, ptr %2, i64 %69
  %71 = load i32, ptr %70, align 4, !tbaa !38
  %72 = icmp ugt i32 %20, %71
  %73 = select i1 %72, ptr %51, ptr %24
  %74 = tail call i32 @llvm.umin.i32(i32 %20, i32 %71)
  br label %79

75:                                               ; preds = %67
  %76 = icmp eq ptr %24, null
  %77 = select i1 %76, ptr %51, ptr %24
  %78 = icmp eq i8 %22, 0
  br i1 %78, label %79, label %92

79:                                               ; preds = %75, %35, %68, %64, %57, %18
  %80 = phi ptr [ %24, %18 ], [ %24, %35 ], [ %73, %68 ], [ %24, %57 ], [ %24, %64 ], [ %77, %75 ]
  %81 = phi ptr [ %23, %18 ], [ %23, %35 ], [ %23, %68 ], [ %62, %57 ], [ %66, %64 ], [ %23, %75 ]
  %82 = phi i8 [ %22, %18 ], [ %22, %35 ], [ %22, %68 ], [ %22, %57 ], [ 1, %64 ], [ 0, %75 ]
  %83 = phi i32 [ %21, %18 ], [ %21, %35 ], [ %21, %68 ], [ %63, %57 ], [ %21, %64 ], [ %21, %75 ]
  %84 = phi i32 [ %20, %18 ], [ %20, %35 ], [ %74, %68 ], [ %20, %57 ], [ %20, %64 ], [ %20, %75 ]
  %85 = add nuw nsw i64 %19, 1
  %86 = icmp eq i64 %85, %17
  br i1 %86, label %87, label %18, !llvm.loop !45

87:                                               ; preds = %79, %6
  %88 = phi ptr [ null, %6 ], [ %80, %79 ]
  %89 = phi ptr [ null, %6 ], [ %81, %79 ]
  %90 = icmp eq ptr %88, null
  %91 = select i1 %90, ptr %89, ptr %88
  br label %92

92:                                               ; preds = %75, %87
  %93 = phi ptr [ %91, %87 ], [ %51, %75 ]
  ret ptr %93
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_nearest_bone(ptr noundef %0, i16 noundef signext %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.ViewContext, align 8
  %6 = alloca %struct.rcti, align 4
  %7 = alloca [10000 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %7) #11
  call void @view3d_set_viewcontext(ptr noundef %0, ptr noundef nonnull %5) #9
  %8 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 1
  store i32 %2, ptr %8, align 4, !tbaa !47
  store i32 %2, ptr %6, align 4, !tbaa !48
  %9 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 3
  store i32 %3, ptr %9, align 4, !tbaa !49
  %10 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 2
  store i32 %3, ptr %10, align 4, !tbaa !50
  call void @glInitNames() #9
  %11 = call signext i16 @view3d_opengl_select(ptr noundef nonnull %5, ptr noundef nonnull %7, i32 noundef 10000, ptr noundef nonnull %6, i8 noundef zeroext 1) #9
  %12 = icmp sgt i16 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %4
  %14 = load ptr, ptr %5, align 8, !tbaa !51
  %15 = getelementptr inbounds %struct.Scene, ptr %14, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !53
  %17 = call ptr @get_bone_from_selectbuffer(ptr noundef %14, ptr noundef %16, ptr noundef nonnull %7, i16 noundef signext %11, i16 noundef signext %1, i8 noundef zeroext 1) #10
  br label %18

18:                                               ; preds = %4, %13
  %19 = phi ptr [ %17, %13 ], [ null, %4 ]
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #11
  ret ptr %19
}

; Function Attrs: optsize
declare void @view3d_set_viewcontext(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glInitNames() local_unnamed_addr #2

; Function Attrs: optsize
declare signext i16 @view3d_opengl_select(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ARMATURE_OT_select_linked(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !54
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.1, ptr %2, align 8, !tbaa !57
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %3, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @armature_select_linked_invoke, ptr %4, align 8, !tbaa !59
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @armature_select_linked_poll, ptr %5, align 8, !tbaa !60
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !61
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !62
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.3, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @armature_select_linked_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !63
  %6 = tail call i32 @RNA_boolean_get(ptr noundef %5, ptr noundef nonnull @.str.3) #9
  %7 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #9
  %8 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !42
  tail call void @view3d_operator_needs_opengl(ptr noundef %0) #9
  %10 = and i32 %6, 255
  %11 = icmp eq i32 %10, 0
  %12 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %13 = load i32, ptr %12, align 4, !tbaa !38
  %14 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %15 = load i32, ptr %14, align 4, !tbaa !38
  %16 = zext i1 %11 to i16
  %17 = tail call ptr @get_nearest_bone(ptr noundef %0, i16 noundef signext %16, i32 noundef %13, i32 noundef %15) #10
  %18 = icmp eq ptr %17, null
  br i1 %18, label %67, label %24

19:                                               ; preds = %35, %39
  %20 = getelementptr inbounds %struct.bArmature, ptr %9, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !43
  %22 = load ptr, ptr %21, align 8, !tbaa !65
  %23 = icmp eq ptr %22, null
  br i1 %23, label %66, label %43, !llvm.loop !66

24:                                               ; preds = %3, %39
  %25 = phi ptr [ %41, %39 ], [ %17, %3 ]
  %26 = getelementptr inbounds %struct.EditBone, ptr %25, i64 0, i32 9
  %27 = load i32, ptr %26, align 4, !tbaa !67
  %28 = and i32 %27, 2097152
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = and i32 %27, -2097160
  %32 = or i32 %27, 7
  %33 = select i1 %11, i32 %32, i32 %31
  %34 = select i1 %11, i32 %32, i32 %31
  store i32 %33, ptr %26, align 4, !tbaa !67
  br label %35

35:                                               ; preds = %30, %24
  %36 = phi i32 [ %27, %24 ], [ %34, %30 ]
  %37 = and i32 %36, 16
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %19, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.EditBone, ptr %25, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !69
  %42 = icmp eq ptr %41, null
  br i1 %42, label %19, label %24, !llvm.loop !70

43:                                               ; preds = %19, %61
  %44 = phi ptr [ %46, %61 ], [ %17, %19 ]
  br label %45

45:                                               ; preds = %43, %59
  %46 = phi ptr [ %47, %59 ], [ %22, %43 ]
  %47 = load ptr, ptr %46, align 8, !tbaa !71
  %48 = getelementptr inbounds %struct.EditBone, ptr %46, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !69
  %50 = icmp eq ptr %49, %44
  br i1 %50, label %51, label %59

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.EditBone, ptr %46, i64 0, i32 9
  %53 = load i32, ptr %52, align 4, !tbaa !67
  %54 = and i32 %53, 2097152
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = and i32 %53, 16
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %66, label %61

59:                                               ; preds = %45, %51
  %60 = icmp eq ptr %47, null
  br i1 %60, label %66, label %45, !llvm.loop !72

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.EditBone, ptr %46, i64 0, i32 9
  %63 = or i32 %53, 7
  %64 = and i32 %53, -2097160
  %65 = select i1 %11, i32 %63, i32 %64
  store i32 %65, ptr %62, align 4, !tbaa !67
  br i1 %23, label %66, label %43, !llvm.loop !66

66:                                               ; preds = %56, %61, %59, %19
  tail call void @ED_armature_sync_selection(ptr noundef nonnull %21) #9
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85327872, ptr noundef %7) #9
  br label %67

67:                                               ; preds = %3, %66
  %68 = phi i32 [ 4, %66 ], [ 2, %3 ]
  ret i32 %68
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @armature_select_linked_poll(ptr noundef %0) #0 {
  %2 = tail call i32 @ED_operator_view3d_active(ptr noundef %0) #9
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @ED_operator_editarmature(ptr noundef %0) #9
  %6 = icmp ne i32 %5, 0
  %7 = zext i1 %6 to i32
  br label %8

8:                                                ; preds = %4, %1
  %9 = phi i32 [ 0, %1 ], [ %7, %4 ]
  ret i32 %9
}

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_armature_deselect_all(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp eq i32 %1, 1
  %6 = getelementptr inbounds %struct.bArmature, ptr %4, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !43
  br i1 %5, label %8, label %17

8:                                                ; preds = %2, %12
  %9 = phi ptr [ %10, %12 ], [ %7, %2 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !73
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.EditBone, ptr %10, i64 0, i32 9
  %14 = load i32, ptr %13, align 4, !tbaa !67
  %15 = and i32 %14, 7
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %8, label %17, !llvm.loop !74

17:                                               ; preds = %12, %8, %2
  %18 = phi i32 [ %1, %2 ], [ 0, %12 ], [ 1, %8 ]
  %19 = load ptr, ptr %7, align 8, !tbaa !73
  %20 = icmp eq ptr %19, null
  br i1 %20, label %72, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.bArmature, ptr %4, i64 0, i32 15
  %23 = getelementptr inbounds %struct.bArmature, ptr %4, i64 0, i32 6
  br label %24

24:                                               ; preds = %21, %69
  %25 = phi ptr [ %19, %21 ], [ %70, %69 ]
  switch i32 %18, label %62 [
    i32 2, label %26
    i32 1, label %42
  ]

26:                                               ; preds = %24
  %27 = load i32, ptr %22, align 8, !tbaa !75
  %28 = getelementptr inbounds %struct.EditBone, ptr %25, i64 0, i32 10
  %29 = load i32, ptr %28, align 8, !tbaa !76
  %30 = and i32 %29, %27
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %69, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.EditBone, ptr %25, i64 0, i32 9
  %34 = load i32, ptr %33, align 4, !tbaa !67
  %35 = and i32 %34, 1024
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %69

37:                                               ; preds = %32
  %38 = xor i32 %34, 7
  store i32 %38, ptr %33, align 4, !tbaa !67
  %39 = load ptr, ptr %23, align 8, !tbaa !77
  %40 = icmp eq ptr %39, %25
  br i1 %40, label %41, label %69

41:                                               ; preds = %37
  store ptr null, ptr %23, align 8, !tbaa !77
  br label %69

42:                                               ; preds = %24
  %43 = load i32, ptr %22, align 8, !tbaa !75
  %44 = getelementptr inbounds %struct.EditBone, ptr %25, i64 0, i32 10
  %45 = load i32, ptr %44, align 8, !tbaa !76
  %46 = and i32 %45, %43
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %69, label %48

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.EditBone, ptr %25, i64 0, i32 9
  %50 = load i32, ptr %49, align 4, !tbaa !67
  %51 = and i32 %50, 1024
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %69

53:                                               ; preds = %48
  %54 = or i32 %50, 7
  store i32 %54, ptr %49, align 4, !tbaa !67
  %55 = getelementptr inbounds %struct.EditBone, ptr %25, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !69
  %57 = icmp eq ptr %56, null
  br i1 %57, label %69, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.EditBone, ptr %56, i64 0, i32 9
  %60 = load i32, ptr %59, align 4, !tbaa !67
  %61 = or i32 %60, 4
  store i32 %61, ptr %59, align 4, !tbaa !67
  br label %69

62:                                               ; preds = %24
  %63 = getelementptr inbounds %struct.EditBone, ptr %25, i64 0, i32 9
  %64 = load i32, ptr %63, align 4, !tbaa !67
  %65 = and i32 %64, -8
  store i32 %65, ptr %63, align 4, !tbaa !67
  %66 = load ptr, ptr %23, align 8, !tbaa !77
  %67 = icmp eq ptr %66, %25
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  store ptr null, ptr %23, align 8, !tbaa !77
  br label %69

69:                                               ; preds = %26, %37, %41, %32, %62, %68, %48, %58, %53, %42
  %70 = load ptr, ptr %25, align 8, !tbaa !73
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %24, !llvm.loop !78

72:                                               ; preds = %69, %17
  tail call void @ED_armature_sync_selection(ptr noundef nonnull %7) #9
  ret void
}

; Function Attrs: optsize
declare void @ED_armature_sync_selection(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_armature_deselect_all_visible(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.bArmature, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  %6 = load ptr, ptr %5, align 8, !tbaa !73
  %7 = icmp eq ptr %6, null
  br i1 %7, label %27, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.bArmature, ptr %3, i64 0, i32 15
  %10 = load i32, ptr %9, align 8, !tbaa !75
  br label %11

11:                                               ; preds = %8, %24
  %12 = phi ptr [ %6, %8 ], [ %25, %24 ]
  %13 = getelementptr inbounds %struct.EditBone, ptr %12, i64 0, i32 10
  %14 = load i32, ptr %13, align 8, !tbaa !76
  %15 = and i32 %14, %10
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.EditBone, ptr %12, i64 0, i32 9
  %19 = load i32, ptr %18, align 4, !tbaa !67
  %20 = and i32 %19, 1024
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = and i32 %19, -1032
  store i32 %23, ptr %18, align 4, !tbaa !67
  br label %24

24:                                               ; preds = %17, %22, %11
  %25 = load ptr, ptr %12, align 8, !tbaa !73
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %11, !llvm.loop !79

27:                                               ; preds = %24, %1
  tail call void @ED_armature_sync_selection(ptr noundef nonnull %5) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @mouse_armature(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = alloca %struct.ViewContext, align 8
  %7 = alloca i32, align 4
  %8 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #9
  %9 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  call void @view3d_set_viewcontext(ptr noundef %0, ptr noundef nonnull %6) #9
  %11 = zext i8 %2 to i16
  call void @BIF_sk_selectStroke(ptr noundef %0, ptr noundef %1, i16 noundef signext %11) #9
  %12 = getelementptr inbounds %struct.bArmature, ptr %10, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !43
  %14 = call fastcc ptr @get_nearest_editbonepoint(ptr noundef nonnull %6, ptr noundef %1, ptr noundef %13, ptr noundef nonnull %7) #10
  %15 = icmp eq ptr %14, null
  br i1 %15, label %122, label %16

16:                                               ; preds = %5
  %17 = icmp eq i8 %2, 0
  %18 = icmp eq i8 %3, 0
  %19 = or i8 %3, %2
  %20 = icmp eq i8 %4, 0
  %21 = or i8 %19, %4
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  call void @ED_armature_deselect_all(ptr noundef nonnull %8, i32 noundef 0) #10
  br label %24

24:                                               ; preds = %23, %16
  %25 = load i32, ptr %7, align 4, !tbaa !38
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %90, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.EditBone, ptr %14, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !69
  %31 = icmp eq ptr %30, null
  br i1 %31, label %72, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.EditBone, ptr %14, i64 0, i32 9
  %34 = load i32, ptr %33, align 4, !tbaa !67
  %35 = and i32 %34, 16
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %72, label %37

37:                                               ; preds = %32
  br i1 %17, label %43, label %38

38:                                               ; preds = %37
  %39 = or i32 %34, 4
  store i32 %39, ptr %33, align 4, !tbaa !67
  %40 = getelementptr inbounds %struct.EditBone, ptr %30, i64 0, i32 9
  %41 = load i32, ptr %40, align 4, !tbaa !67
  %42 = or i32 %41, 4
  store i32 %42, ptr %40, align 4, !tbaa !67
  br label %113

43:                                               ; preds = %37
  br i1 %18, label %52, label %44

44:                                               ; preds = %43
  %45 = and i32 %34, -6
  store i32 %45, ptr %33, align 4, !tbaa !67
  %46 = getelementptr inbounds %struct.EditBone, ptr %30, i64 0, i32 9
  %47 = load i32, ptr %46, align 4, !tbaa !67
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %113

50:                                               ; preds = %44
  %51 = and i32 %47, -6
  store i32 %51, ptr %46, align 4, !tbaa !67
  br label %113

52:                                               ; preds = %43
  %53 = getelementptr inbounds %struct.EditBone, ptr %30, i64 0, i32 9
  br i1 %20, label %68, label %54

54:                                               ; preds = %52
  %55 = and i32 %34, 1
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %54
  %58 = and i32 %34, -6
  store i32 %58, ptr %33, align 4, !tbaa !67
  %59 = load i32, ptr %53, align 4, !tbaa !67
  %60 = and i32 %59, 1
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %113

62:                                               ; preds = %57
  %63 = and i32 %59, -6
  store i32 %63, ptr %53, align 4, !tbaa !67
  br label %113

64:                                               ; preds = %54
  %65 = or i32 %34, 4
  store i32 %65, ptr %33, align 4, !tbaa !67
  %66 = load i32, ptr %53, align 4, !tbaa !67
  %67 = or i32 %66, 4
  store i32 %67, ptr %53, align 4, !tbaa !67
  br label %113

68:                                               ; preds = %52
  %69 = or i32 %34, 4
  store i32 %69, ptr %33, align 4, !tbaa !67
  %70 = load i32, ptr %53, align 4, !tbaa !67
  %71 = or i32 %70, 4
  store i32 %71, ptr %53, align 4, !tbaa !67
  br label %113

72:                                               ; preds = %32, %28
  %73 = getelementptr inbounds %struct.EditBone, ptr %14, i64 0, i32 9
  %74 = load i32, ptr %73, align 4, !tbaa !67
  br i1 %17, label %77, label %75

75:                                               ; preds = %72
  %76 = or i32 %74, 6
  store i32 %76, ptr %73, align 4, !tbaa !67
  br label %113

77:                                               ; preds = %72
  br i1 %18, label %80, label %78

78:                                               ; preds = %77
  %79 = and i32 %74, -7
  store i32 %79, ptr %73, align 4, !tbaa !67
  br label %113

80:                                               ; preds = %77
  br i1 %20, label %88, label %81

81:                                               ; preds = %80
  %82 = and i32 %74, 1
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %81
  %85 = and i32 %74, -7
  store i32 %85, ptr %73, align 4, !tbaa !67
  br label %113

86:                                               ; preds = %81
  %87 = or i32 %74, 6
  store i32 %87, ptr %73, align 4, !tbaa !67
  br label %113

88:                                               ; preds = %80
  %89 = or i32 %74, 6
  store i32 %89, ptr %73, align 4, !tbaa !67
  br label %113

90:                                               ; preds = %24
  br i1 %17, label %95, label %91

91:                                               ; preds = %90
  %92 = getelementptr inbounds %struct.EditBone, ptr %14, i64 0, i32 9
  %93 = load i32, ptr %92, align 4, !tbaa !67
  %94 = or i32 %93, %25
  store i32 %94, ptr %92, align 4, !tbaa !67
  br label %113

95:                                               ; preds = %90
  br i1 %18, label %101, label %96

96:                                               ; preds = %95
  %97 = xor i32 %25, -1
  %98 = getelementptr inbounds %struct.EditBone, ptr %14, i64 0, i32 9
  %99 = load i32, ptr %98, align 4, !tbaa !67
  %100 = and i32 %99, %97
  store i32 %100, ptr %98, align 4, !tbaa !67
  br label %113

101:                                              ; preds = %95
  %102 = getelementptr inbounds %struct.EditBone, ptr %14, i64 0, i32 9
  %103 = load i32, ptr %102, align 4, !tbaa !67
  %104 = and i32 %103, %25
  %105 = icmp eq i32 %104, 0
  %106 = select i1 %20, i1 true, i1 %105
  br i1 %106, label %110, label %107

107:                                              ; preds = %101
  %108 = xor i32 %25, -1
  %109 = and i32 %103, %108
  store i32 %109, ptr %102, align 4, !tbaa !67
  br label %113

110:                                              ; preds = %101
  %111 = getelementptr inbounds %struct.EditBone, ptr %14, i64 0, i32 9
  %112 = or i32 %103, %25
  store i32 %112, ptr %111, align 4, !tbaa !67
  br label %113

113:                                              ; preds = %91, %107, %110, %96, %50, %44, %64, %62, %57, %68, %38, %78, %84, %86, %88, %75
  %114 = load ptr, ptr %12, align 8, !tbaa !43
  call void @ED_armature_sync_selection(ptr noundef %114) #9
  %115 = call fastcc i32 @ebone_select_flag(ptr noundef nonnull %14) #10, !range !80
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.bArmature, ptr %10, i64 0, i32 6
  store ptr %14, ptr %118, align 8, !tbaa !77
  br label %119

119:                                              ; preds = %113, %117
  %120 = getelementptr inbounds %struct.ViewContext, ptr %6, i64 0, i32 2
  %121 = load ptr, ptr %120, align 8, !tbaa !81
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85327872, ptr noundef %121) #9
  br label %122

122:                                              ; preds = %5, %119
  %123 = phi i8 [ 1, %119 ], [ 0, %5 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #11
  ret i8 %123
}

; Function Attrs: optsize
declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BIF_sk_selectStroke(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_nearest_editbonepoint(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
  %5 = alloca %struct.rcti, align 16
  %6 = alloca [10000 x i32], align 16
  %7 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !81
  %9 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !42
  %11 = getelementptr inbounds %struct.bArmature, ptr %10, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %6) #11
  tail call void @glInitNames() #9
  %13 = icmp eq ptr %12, null
  br i1 %13, label %36, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.bArmature, ptr %10, i64 0, i32 15
  %16 = load i32, ptr %15, align 8, !tbaa !75
  %17 = getelementptr inbounds %struct.EditBone, ptr %12, i64 0, i32 10
  %18 = load i32, ptr %17, align 8, !tbaa !76
  %19 = and i32 %18, %16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %36, label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.EditBone, ptr %12, i64 0, i32 9
  %23 = load i32, ptr %22, align 4, !tbaa !67
  %24 = and i32 %23, 1024
  %25 = icmp ne i32 %24, 0
  %26 = and i32 %23, 7
  %27 = icmp eq i32 %26, 0
  %28 = or i1 %25, %27
  br i1 %28, label %36, label %29

29:                                               ; preds = %21
  %30 = load ptr, ptr %12, align 8, !tbaa !71
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.bArmature, ptr %10, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !43
  %35 = load ptr, ptr %34, align 8, !tbaa !65
  br label %36

36:                                               ; preds = %4, %21, %14, %32, %29
  %37 = phi ptr [ %35, %32 ], [ %30, %29 ], [ null, %14 ], [ null, %21 ], [ null, %4 ]
  %38 = load <2 x i32>, ptr %1, align 4, !tbaa !38
  %39 = shufflevector <2 x i32> %38, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %40 = add nsw <4 x i32> %39, <i32 -5, i32 5, i32 -5, i32 5>
  store <4 x i32> %40, ptr %5, align 16, !tbaa !38
  %41 = call signext i16 @view3d_opengl_select(ptr noundef nonnull %0, ptr noundef nonnull %6, i32 noundef 10000, ptr noundef nonnull %5, i8 noundef zeroext 1) #9
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %36
  %44 = load <2 x i32>, ptr %1, align 4, !tbaa !38
  %45 = shufflevector <2 x i32> %44, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %46 = add nsw <4 x i32> %45, <i32 -12, i32 12, i32 -12, i32 12>
  store <4 x i32> %46, ptr %5, align 16, !tbaa !38
  %47 = call signext i16 @view3d_opengl_select(ptr noundef nonnull %0, ptr noundef nonnull %6, i32 noundef 10000, ptr noundef nonnull %5, i8 noundef zeroext 1) #9
  br label %48

48:                                               ; preds = %43, %36
  %49 = phi i16 [ %47, %43 ], [ %41, %36 ]
  %50 = sext i16 %49 to i64
  %51 = icmp sgt i16 %49, 0
  br i1 %51, label %52, label %118

52:                                               ; preds = %48
  %53 = icmp eq i16 %49, 1
  br i1 %53, label %54, label %58

54:                                               ; preds = %52
  %55 = getelementptr inbounds [10000 x i32], ptr %6, i64 0, i64 3
  %56 = load i32, ptr %55, align 4, !tbaa !38
  %57 = icmp sgt i32 %56, -1
  br i1 %57, label %109, label %118

58:                                               ; preds = %52, %102
  %59 = phi i64 [ %105, %102 ], [ 0, %52 ]
  %60 = phi i32 [ %104, %102 ], [ 4, %52 ]
  %61 = phi i32 [ %103, %102 ], [ -2147483648, %52 ]
  %62 = shl nsw i64 %59, 2
  %63 = or disjoint i64 %62, 3
  %64 = getelementptr inbounds [10000 x i32], ptr %6, i64 0, i64 %63
  %65 = load i32, ptr %64, align 4, !tbaa !38
  %66 = icmp sgt i32 %65, -1
  br i1 %66, label %67, label %102

67:                                               ; preds = %58
  %68 = and i32 %65, 268435455
  %69 = call ptr @BLI_findlink(ptr noundef %2, i32 noundef %68) #9
  %70 = and i32 %65, 805306368
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %89, label %72

72:                                               ; preds = %67
  %73 = and i32 %65, 268435456
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.EditBone, ptr %69, i64 0, i32 9
  %77 = load i32, ptr %76, align 4, !tbaa !67
  %78 = and i32 %77, 2
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %94, label %80

80:                                               ; preds = %75, %72
  %81 = and i32 %65, 536870912
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.EditBone, ptr %69, i64 0, i32 9
  %85 = load i32, ptr %84, align 4, !tbaa !67
  %86 = and i32 %85, 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %94, label %88

88:                                               ; preds = %83, %80
  br label %94

89:                                               ; preds = %67
  %90 = getelementptr inbounds %struct.EditBone, ptr %69, i64 0, i32 9
  %91 = load i32, ptr %90, align 4, !tbaa !67
  %92 = and i32 %91, 1
  %93 = or disjoint i32 %92, 2
  br label %94

94:                                               ; preds = %89, %83, %75, %88
  %95 = phi i32 [ 2, %88 ], [ 1, %75 ], [ 1, %83 ], [ %93, %89 ]
  %96 = icmp eq ptr %69, %37
  %97 = sext i1 %96 to i32
  %98 = add nsw i32 %95, %97
  %99 = icmp slt i32 %98, %60
  %100 = select i1 %99, i32 %65, i32 %61
  %101 = call i32 @llvm.smin.i32(i32 %98, i32 %60)
  br label %102

102:                                              ; preds = %58, %94
  %103 = phi i32 [ %61, %58 ], [ %100, %94 ]
  %104 = phi i32 [ %60, %58 ], [ %101, %94 ]
  %105 = add nuw nsw i64 %59, 1
  %106 = icmp eq i64 %105, %50
  br i1 %106, label %107, label %58, !llvm.loop !82

107:                                              ; preds = %102
  %108 = icmp sgt i32 %103, -1
  br i1 %108, label %109, label %118

109:                                              ; preds = %54, %107
  %110 = phi i32 [ %103, %107 ], [ %56, %54 ]
  %111 = and i32 %110, 268435455
  %112 = call ptr @BLI_findlink(ptr noundef %2, i32 noundef %111) #9
  %113 = lshr i32 %110, 27
  %114 = and i32 %113, 6
  store i32 %114, ptr %3, align 4, !tbaa !38
  %115 = icmp ult i32 %110, 1073741824
  br i1 %115, label %121, label %116

116:                                              ; preds = %109
  %117 = or disjoint i32 %114, 1
  br label %118

118:                                              ; preds = %48, %107, %54, %116
  %119 = phi i32 [ %117, %116 ], [ 0, %54 ], [ 0, %107 ], [ 0, %48 ]
  %120 = phi ptr [ %112, %116 ], [ null, %54 ], [ null, %107 ], [ null, %48 ]
  store i32 %119, ptr %3, align 4, !tbaa !38
  br label %121

121:                                              ; preds = %118, %109
  %122 = phi ptr [ %112, %109 ], [ %120, %118 ]
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  ret ptr %122
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @ebone_select_flag(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !69
  %4 = icmp eq ptr %3, null
  %5 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 9
  %6 = load i32, ptr %5, align 4, !tbaa !67
  %7 = and i32 %6, 16
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %4, i1 true, i1 %8
  br i1 %9, label %17, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.EditBone, ptr %3, i64 0, i32 9
  %12 = load i32, ptr %11, align 4, !tbaa !67
  %13 = lshr i32 %12, 1
  %14 = and i32 %13, 2
  %15 = and i32 %6, 5
  %16 = or disjoint i32 %14, %15
  br label %19

17:                                               ; preds = %1
  %18 = and i32 %6, 7
  br label %19

19:                                               ; preds = %17, %10
  %20 = phi i32 [ %16, %10 ], [ %18, %17 ]
  ret i32 %20
}

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ARMATURE_OT_select_all(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.6, ptr %0, align 8, !tbaa !54
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.7, ptr %2, align 8, !tbaa !57
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.8, ptr %3, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @armature_de_select_all_exec, ptr %4, align 8, !tbaa !83
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editarmature, ptr %5, align 8, !tbaa !60
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !61
  tail call void @WM_operator_properties_select_all(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @armature_de_select_all_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.ListBase, align 8
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !63
  %7 = tail call i32 @RNA_enum_get(ptr noundef %6, ptr noundef nonnull @.str.42) #9
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  %10 = call i32 @CTX_data_visible_bones(ptr noundef %0, ptr noundef nonnull %3) #9
  br label %11

11:                                               ; preds = %15, %9
  %12 = phi ptr [ %3, %9 ], [ %13, %15 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !73
  %14 = icmp eq ptr %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.CollectionPointerLink, ptr %13, i64 0, i32 2, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !84
  %18 = getelementptr inbounds %struct.EditBone, ptr %17, i64 0, i32 9
  %19 = load i32, ptr %18, align 4, !tbaa !67
  %20 = and i32 %19, 7
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %11, label %22

22:                                               ; preds = %15, %11
  %23 = phi i32 [ 2, %15 ], [ 1, %11 ]
  call void @BLI_freelistN(ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  br label %24

24:                                               ; preds = %22, %2
  %25 = phi i32 [ %23, %22 ], [ %7, %2 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  %26 = call i32 @CTX_data_visible_bones(ptr noundef %0, ptr noundef nonnull %4) #9
  %27 = load ptr, ptr %4, align 8, !tbaa !73
  %28 = icmp eq ptr %27, null
  br i1 %28, label %73, label %29

29:                                               ; preds = %24, %70
  %30 = phi ptr [ %71, %70 ], [ %27, %24 ]
  %31 = getelementptr inbounds %struct.CollectionPointerLink, ptr %30, i64 0, i32 2, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !84
  switch i32 %25, label %70 [
    i32 1, label %33
    i32 2, label %47
    i32 3, label %51
  ]

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.EditBone, ptr %32, i64 0, i32 9
  %35 = load i32, ptr %34, align 4, !tbaa !67
  %36 = and i32 %35, 2097152
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %70

38:                                               ; preds = %33
  %39 = or i32 %35, 7
  store i32 %39, ptr %34, align 4, !tbaa !67
  %40 = getelementptr inbounds %struct.EditBone, ptr %32, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !69
  %42 = icmp eq ptr %41, null
  br i1 %42, label %70, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.EditBone, ptr %41, i64 0, i32 9
  %45 = load i32, ptr %44, align 4, !tbaa !67
  %46 = or i32 %45, 4
  store i32 %46, ptr %44, align 4, !tbaa !67
  br label %70

47:                                               ; preds = %29
  %48 = getelementptr inbounds %struct.EditBone, ptr %32, i64 0, i32 9
  %49 = load i32, ptr %48, align 4, !tbaa !67
  %50 = and i32 %49, -8
  store i32 %50, ptr %48, align 4, !tbaa !67
  br label %70

51:                                               ; preds = %29
  %52 = getelementptr inbounds %struct.EditBone, ptr %32, i64 0, i32 9
  %53 = load i32, ptr %52, align 4, !tbaa !67
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %51
  %57 = and i32 %53, -8
  store i32 %57, ptr %52, align 4, !tbaa !67
  br label %70

58:                                               ; preds = %51
  %59 = and i32 %53, 2097152
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %58
  %62 = or i32 %53, 7
  store i32 %62, ptr %52, align 4, !tbaa !67
  %63 = getelementptr inbounds %struct.EditBone, ptr %32, i64 0, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !69
  %65 = icmp eq ptr %64, null
  br i1 %65, label %70, label %66

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.EditBone, ptr %64, i64 0, i32 9
  %68 = load i32, ptr %67, align 4, !tbaa !67
  %69 = or i32 %68, 4
  store i32 %69, ptr %67, align 4, !tbaa !67
  br label %70

70:                                               ; preds = %56, %61, %66, %58, %33, %43, %38, %29, %47
  %71 = load ptr, ptr %30, align 8, !tbaa !73
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %29, !llvm.loop !88

73:                                               ; preds = %70, %24
  call void @BLI_freelistN(ptr noundef nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85327872, ptr noundef null) #9
  ret i32 4
}

; Function Attrs: optsize
declare i32 @ED_operator_editarmature(ptr noundef) #2

; Function Attrs: optsize
declare void @WM_operator_properties_select_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @ARMATURE_OT_select_more(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.9, ptr %0, align 8, !tbaa !54
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.10, ptr %2, align 8, !tbaa !57
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.11, ptr %3, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @armature_de_select_more_exec, ptr %4, align 8, !tbaa !83
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editarmature, ptr %5, align 8, !tbaa !60
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !61
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @armature_de_select_more_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #9
  tail call fastcc void @armature_select_more_less(ptr noundef %3, i8 noundef zeroext 1) #10
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85327872, ptr noundef %3) #9
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @ARMATURE_OT_select_less(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.12, ptr %0, align 8, !tbaa !54
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.13, ptr %2, align 8, !tbaa !57
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.14, ptr %3, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @armature_de_select_less_exec, ptr %4, align 8, !tbaa !83
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editarmature, ptr %5, align 8, !tbaa !60
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !61
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @armature_de_select_less_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #9
  tail call fastcc void @armature_select_more_less(ptr noundef %3, i8 noundef zeroext 0) #10
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85327872, ptr noundef %3) #9
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ARMATURE_OT_select_similar(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.15, ptr %0, align 8, !tbaa !54
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.16, ptr %2, align 8, !tbaa !57
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %3, align 8, !tbaa !59
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @armature_select_similar_exec, ptr %4, align 8, !tbaa !83
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editarmature, ptr %5, align 8, !tbaa !60
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.17, ptr %6, align 8, !tbaa !58
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !61
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !62
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.18, ptr noundef nonnull @prop_similar_types, i32 noundef 0, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20) #9
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !89
  %12 = load ptr, ptr %8, align 8, !tbaa !62
  %13 = tail call ptr @RNA_def_float(ptr noundef %12, ptr noundef nonnull @.str.21, float noundef 0x3FB99999A0000000, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.20, float noundef 0.000000e+00, float noundef 1.000000e+00) #9
  ret void
}

; Function Attrs: optsize
declare i32 @WM_menu_invoke(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @armature_select_similar_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #9
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !42
  %6 = tail call ptr @CTX_data_active_bone(ptr noundef %0) #9
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !63
  %9 = tail call i32 @RNA_enum_get(ptr noundef %8, ptr noundef nonnull @.str.18) #9
  %10 = load ptr, ptr %7, align 8, !tbaa !63
  %11 = tail call float @RNA_float_get(ptr noundef %10, ptr noundef nonnull @.str.21) #9
  %12 = icmp eq ptr %6, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !90
  tail call void @BKE_report(ptr noundef %15, i32 noundef 32, ptr noundef nonnull @.str.43) #9
  br label %23

16:                                               ; preds = %2
  switch i32 %9, label %22 [
    i32 1, label %17
    i32 2, label %18
    i32 3, label %19
    i32 4, label %20
    i32 5, label %21
  ]

17:                                               ; preds = %16
  tail call fastcc void @select_similar_length(ptr noundef %5, ptr noundef nonnull %6, float noundef %11) #10
  br label %22

18:                                               ; preds = %16
  tail call fastcc void @select_similar_direction(ptr noundef %5, ptr noundef nonnull %6, float noundef %11) #10
  br label %22

19:                                               ; preds = %16
  tail call fastcc void @select_similar_prefix(ptr noundef %5, ptr noundef nonnull %6) #10
  br label %22

20:                                               ; preds = %16
  tail call fastcc void @select_similar_suffix(ptr noundef %5, ptr noundef nonnull %6) #10
  br label %22

21:                                               ; preds = %16
  tail call fastcc void @select_similar_layer(ptr noundef %5, ptr noundef nonnull %6) #10
  br label %22

22:                                               ; preds = %16, %21, %20, %19, %18, %17
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85327872, ptr noundef nonnull %3) #9
  br label %23

23:                                               ; preds = %22, %13
  %24 = phi i32 [ 2, %13 ], [ 4, %22 ]
  ret i32 %24
}

; Function Attrs: optsize
declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_def_float(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ARMATURE_OT_select_hierarchy(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.27, ptr %0, align 8, !tbaa !54
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.28, ptr %2, align 8, !tbaa !57
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.29, ptr %3, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @armature_select_hierarchy_exec, ptr %4, align 8, !tbaa !83
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editarmature, ptr %5, align 8, !tbaa !60
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !61
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !62
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.30, ptr noundef nonnull @ARMATURE_OT_select_hierarchy.direction_items, i32 noundef 0, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.20) #9
  %10 = load ptr, ptr %7, align 8, !tbaa !62
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.3, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.32) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @armature_select_hierarchy_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #9
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !63
  %6 = tail call i32 @RNA_enum_get(ptr noundef %5, ptr noundef nonnull @.str.30) #9
  %7 = load ptr, ptr %4, align 8, !tbaa !63
  %8 = tail call i32 @RNA_boolean_get(ptr noundef %7, ptr noundef nonnull @.str.3) #9
  %9 = trunc i32 %8 to i8
  %10 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !42
  %12 = getelementptr inbounds %struct.bArmature, ptr %11, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !43
  %14 = load ptr, ptr %13, align 8, !tbaa !73
  %15 = icmp eq ptr %14, null
  br i1 %15, label %95, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.bArmature, ptr %11, i64 0, i32 15
  %18 = load i32, ptr %17, align 8, !tbaa !75
  %19 = getelementptr inbounds %struct.bArmature, ptr %11, i64 0, i32 6
  %20 = icmp eq i32 %6, 0
  br label %21

21:                                               ; preds = %16, %86
  %22 = phi ptr [ %14, %16 ], [ %87, %86 ]
  %23 = getelementptr inbounds %struct.EditBone, ptr %22, i64 0, i32 10
  %24 = load i32, ptr %23, align 8, !tbaa !76
  %25 = and i32 %24, %18
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %86, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.EditBone, ptr %22, i64 0, i32 9
  %29 = load i32, ptr %28, align 4, !tbaa !67
  %30 = and i32 %29, 2098176
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %86

32:                                               ; preds = %27
  %33 = load ptr, ptr %19, align 8, !tbaa !77
  %34 = icmp eq ptr %22, %33
  br i1 %34, label %35, label %86

35:                                               ; preds = %32
  br i1 %20, label %36, label %62

36:                                               ; preds = %35
  %37 = getelementptr inbounds %struct.EditBone, ptr %22, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !69
  %39 = icmp eq ptr %38, null
  br i1 %39, label %86, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.EditBone, ptr %38, i64 0, i32 10
  %42 = load i32, ptr %41, align 8, !tbaa !76
  %43 = and i32 %42, %18
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %86, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.EditBone, ptr %38, i64 0, i32 9
  %47 = load i32, ptr %46, align 4, !tbaa !67
  %48 = and i32 %47, 1024
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %86

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.EditBone, ptr %38, i64 0, i32 9
  %52 = or i32 %47, 7
  store i32 %52, ptr %51, align 4, !tbaa !67
  store ptr %38, ptr %19, align 8, !tbaa !77
  %53 = getelementptr inbounds %struct.EditBone, ptr %38, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !69
  %55 = icmp eq ptr %54, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.EditBone, ptr %54, i64 0, i32 9
  %58 = load i32, ptr %57, align 4, !tbaa !67
  %59 = or i32 %58, 4
  store i32 %59, ptr %57, align 4, !tbaa !67
  br label %60

60:                                               ; preds = %56, %50
  %61 = icmp eq i8 %9, 0
  br i1 %61, label %89, label %95

62:                                               ; preds = %35
  %63 = tail call fastcc ptr @editbone_get_child(ptr noundef nonnull %11, ptr noundef nonnull %22) #10
  %64 = icmp eq ptr %63, null
  br i1 %64, label %86, label %65

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.EditBone, ptr %63, i64 0, i32 10
  %67 = load i32, ptr %66, align 8, !tbaa !76
  %68 = and i32 %67, %18
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %86, label %70

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.EditBone, ptr %63, i64 0, i32 9
  %72 = load i32, ptr %71, align 4, !tbaa !67
  %73 = and i32 %72, 2098176
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.EditBone, ptr %63, i64 0, i32 9
  %77 = or i32 %72, 7
  store i32 %77, ptr %76, align 4, !tbaa !67
  store ptr %63, ptr %19, align 8, !tbaa !77
  %78 = icmp eq i8 %9, 0
  br i1 %78, label %79, label %95

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.EditBone, ptr %22, i64 0, i32 9
  %81 = load i32, ptr %80, align 4, !tbaa !67
  %82 = and i32 %81, -4
  store i32 %82, ptr %80, align 4, !tbaa !67
  %83 = getelementptr inbounds %struct.EditBone, ptr %22, i64 0, i32 3
  %84 = load ptr, ptr %83, align 8, !tbaa !69
  %85 = icmp eq ptr %84, null
  br i1 %85, label %95, label %89

86:                                               ; preds = %27, %40, %45, %65, %70, %32, %21, %62, %36
  %87 = load ptr, ptr %22, align 8, !tbaa !73
  %88 = icmp eq ptr %87, null
  br i1 %88, label %95, label %21, !llvm.loop !91

89:                                               ; preds = %79, %60
  %90 = phi ptr [ %22, %60 ], [ %84, %79 ]
  %91 = phi i32 [ -8, %60 ], [ -5, %79 ]
  %92 = getelementptr inbounds %struct.EditBone, ptr %90, i64 0, i32 9
  %93 = load i32, ptr %92, align 4, !tbaa !67
  %94 = and i32 %93, %91
  store i32 %94, ptr %92, align 4, !tbaa !67
  br label %95

95:                                               ; preds = %86, %89, %2, %75, %79, %60
  tail call void @ED_armature_sync_selection(ptr noundef nonnull %13) #9
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85327872, ptr noundef %3) #9
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ARMATURE_OT_select_mirror(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.33, ptr %0, align 8, !tbaa !54
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.34, ptr %2, align 8, !tbaa !57
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.35, ptr %3, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @armature_select_mirror_exec, ptr %4, align 8, !tbaa !83
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editarmature, ptr %5, align 8, !tbaa !60
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !61
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !62
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.36, i32 noundef 0, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38) #9
  %10 = load ptr, ptr %7, align 8, !tbaa !62
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.3, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.32) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @armature_select_mirror_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #9
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !42
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !63
  %8 = tail call i32 @RNA_boolean_get(ptr noundef %7, ptr noundef nonnull @.str.36) #9
  %9 = load ptr, ptr %6, align 8, !tbaa !63
  %10 = tail call i32 @RNA_boolean_get(ptr noundef %9, ptr noundef nonnull @.str.3) #9
  %11 = getelementptr inbounds %struct.bArmature, ptr %5, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !43
  %13 = load ptr, ptr %12, align 8, !tbaa !73
  %14 = icmp eq ptr %13, null
  br i1 %14, label %92, label %15

15:                                               ; preds = %2, %15
  %16 = phi ptr [ %21, %15 ], [ %13, %2 ]
  %17 = tail call i32 @ED_armature_ebone_selectflag_get(ptr noundef nonnull %16) #9
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to ptr
  %20 = getelementptr inbounds %struct.EditBone, ptr %16, i64 0, i32 4
  store ptr %19, ptr %20, align 8, !tbaa !92
  %21 = load ptr, ptr %16, align 8, !tbaa !73
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %15, !llvm.loop !93

23:                                               ; preds = %15
  %24 = load ptr, ptr %11, align 8, !tbaa !43
  %25 = load ptr, ptr %24, align 8, !tbaa !73
  %26 = icmp eq ptr %25, null
  br i1 %26, label %92, label %27

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
  %37 = load i32, ptr %28, align 8, !tbaa !75
  %38 = getelementptr inbounds %struct.EditBone, ptr %35, i64 0, i32 10
  %39 = load i32, ptr %38, align 8, !tbaa !76
  %40 = and i32 %39, %37
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %84, label %42

42:                                               ; preds = %34
  %43 = getelementptr inbounds %struct.EditBone, ptr %35, i64 0, i32 9
  %44 = load i32, ptr %43, align 4, !tbaa !67
  %45 = and i32 %44, 2098176
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %84

47:                                               ; preds = %42
  br i1 %30, label %53, label %48

48:                                               ; preds = %47
  %49 = getelementptr inbounds %struct.EditBone, ptr %35, i64 0, i32 4
  %50 = load ptr, ptr %49, align 8, !tbaa !92
  %51 = ptrtoint ptr %50 to i64
  %52 = trunc i64 %51 to i32
  br label %53

53:                                               ; preds = %47, %48
  %54 = phi i32 [ %52, %48 ], [ 0, %47 ]
  %55 = load ptr, ptr %11, align 8, !tbaa !43
  %56 = tail call ptr @ED_armature_bone_get_mirrored(ptr noundef %55, ptr noundef nonnull %35) #9
  %57 = icmp eq ptr %56, null
  br i1 %57, label %81, label %58

58:                                               ; preds = %53
  %59 = load i32, ptr %28, align 8, !tbaa !75
  %60 = getelementptr inbounds %struct.EditBone, ptr %56, i64 0, i32 10
  %61 = load i32, ptr %60, align 8, !tbaa !76
  %62 = and i32 %61, %59
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %81, label %64

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.EditBone, ptr %56, i64 0, i32 9
  %66 = load i32, ptr %65, align 4, !tbaa !67
  %67 = and i32 %66, 1024
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.EditBone, ptr %56, i64 0, i32 4
  %71 = load ptr, ptr %70, align 8, !tbaa !92
  %72 = ptrtoint ptr %71 to i64
  %73 = trunc i64 %72 to i32
  %74 = or i32 %54, %73
  %75 = load ptr, ptr %31, align 8, !tbaa !77
  %76 = icmp eq ptr %35, %75
  %77 = select i1 %76, ptr %56, ptr %36
  %78 = icmp eq ptr %75, %56
  %79 = or i1 %76, %78
  %80 = select i1 %33, i1 true, i1 %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %69, %58, %64, %53
  %82 = phi ptr [ %36, %64 ], [ %36, %58 ], [ %36, %53 ], [ %77, %69 ]
  %83 = phi i32 [ %54, %64 ], [ %54, %58 ], [ %54, %53 ], [ %74, %69 ]
  tail call void @ED_armature_ebone_selectflag_set(ptr noundef nonnull %35, i32 noundef %83) #9
  br label %84

84:                                               ; preds = %69, %81, %42, %34
  %85 = phi ptr [ %36, %42 ], [ %36, %34 ], [ %82, %81 ], [ %77, %69 ]
  %86 = load ptr, ptr %35, align 8, !tbaa !73
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %34, !llvm.loop !94

88:                                               ; preds = %84
  %89 = icmp eq ptr %85, null
  br i1 %89, label %92, label %90

90:                                               ; preds = %88
  %91 = getelementptr inbounds %struct.bArmature, ptr %5, i64 0, i32 6
  store ptr %85, ptr %91, align 8, !tbaa !77
  br label %92

92:                                               ; preds = %2, %23, %90, %88
  %93 = load ptr, ptr %11, align 8, !tbaa !43
  tail call void @ED_armature_sync_selection(ptr noundef %93) #9
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85327872, ptr noundef %3) #9
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @ARMATURE_OT_shortest_path_pick(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.39, ptr %0, align 8, !tbaa !54
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.40, ptr %2, align 8, !tbaa !57
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.41, ptr %3, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @armature_shortest_path_pick_invoke, ptr %4, align 8, !tbaa !59
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editarmature, ptr %5, align 8, !tbaa !60
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !61
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @armature_shortest_path_pick_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca [2 x ptr], align 16
  %5 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #9
  %6 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  tail call void @view3d_operator_needs_opengl(ptr noundef %0) #9
  %8 = getelementptr inbounds %struct.bArmature, ptr %7, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !77
  %10 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %11 = load i32, ptr %10, align 4, !tbaa !38
  %12 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %13 = load i32, ptr %12, align 4, !tbaa !38
  %14 = tail call ptr @get_nearest_bone(ptr noundef %0, i16 noundef signext 0, i32 noundef %11, i32 noundef %13) #10
  %15 = icmp eq ptr %9, null
  %16 = icmp eq ptr %14, null
  %17 = select i1 %15, i1 true, i1 %16
  %18 = icmp eq ptr %9, %14
  %19 = select i1 %17, i1 true, i1 %18
  br i1 %19, label %53, label %20

20:                                               ; preds = %3
  store ptr %9, ptr %4, align 16, !tbaa !73
  %21 = getelementptr inbounds [2 x ptr], ptr %4, i64 0, i64 1
  store ptr %14, ptr %21, align 8, !tbaa !73
  %22 = tail call zeroext i8 @ED_armature_ebone_is_child_recursive(ptr noundef nonnull %9, ptr noundef nonnull %14) #9
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %20
  %25 = tail call zeroext i8 @ED_armature_ebone_is_child_recursive(ptr noundef nonnull %14, ptr noundef nonnull %9) #9
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %24
  %28 = call ptr @ED_armature_bone_find_shared_parent(ptr noundef nonnull %4, i32 noundef 2) #9
  %29 = icmp eq ptr %28, null
  br i1 %29, label %53, label %30

30:                                               ; preds = %27
  %31 = call fastcc zeroext i8 @armature_shortest_path_select(ptr noundef nonnull %7, ptr noundef nonnull %28, ptr noundef nonnull %9, i8 noundef zeroext 0, i8 noundef zeroext 1) #10, !range !95
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %50, label %33

33:                                               ; preds = %30
  %34 = call fastcc zeroext i8 @armature_shortest_path_select(ptr noundef nonnull %7, ptr noundef nonnull %28, ptr noundef nonnull %14, i8 noundef zeroext 0, i8 noundef zeroext 1) #10, !range !95
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %50, label %36

36:                                               ; preds = %33
  %37 = call fastcc zeroext i8 @armature_shortest_path_select(ptr noundef nonnull %7, ptr noundef nonnull %28, ptr noundef nonnull %9, i8 noundef zeroext 0, i8 noundef zeroext 0) #10, !range !95
  %38 = call fastcc zeroext i8 @armature_shortest_path_select(ptr noundef nonnull %7, ptr noundef nonnull %28, ptr noundef nonnull %14, i8 noundef zeroext 0, i8 noundef zeroext 0) #10, !range !95
  br label %46

39:                                               ; preds = %20, %24
  %40 = phi ptr [ %14, %24 ], [ %9, %20 ]
  %41 = phi ptr [ %9, %24 ], [ %14, %20 ]
  %42 = tail call fastcc zeroext i8 @armature_shortest_path_select(ptr noundef nonnull %7, ptr noundef nonnull %40, ptr noundef nonnull %41, i8 noundef zeroext 1, i8 noundef zeroext 1) #10, !range !95
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %39
  %45 = tail call fastcc zeroext i8 @armature_shortest_path_select(ptr noundef nonnull %7, ptr noundef nonnull %40, ptr noundef nonnull %41, i8 noundef zeroext 1, i8 noundef zeroext 0) #10, !range !95
  br label %46

46:                                               ; preds = %44, %36
  %47 = phi ptr [ %41, %44 ], [ %14, %36 ]
  store ptr %47, ptr %8, align 8, !tbaa !77
  %48 = getelementptr inbounds %struct.bArmature, ptr %7, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !43
  call void @ED_armature_sync_selection(ptr noundef %49) #9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85327872, ptr noundef nonnull %5) #9
  br label %53

50:                                               ; preds = %33, %30, %39
  %51 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %52 = load ptr, ptr %51, align 8, !tbaa !90
  call void @BKE_report(ptr noundef %52, i32 noundef 16, ptr noundef nonnull @.str.54) #9
  br label %53

53:                                               ; preds = %27, %3, %50, %46
  %54 = phi i32 [ 4, %46 ], [ 2, %50 ], [ 8, %3 ], [ 2, %27 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  ret i32 %54
}

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @view3d_operator_needs_opengl(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ED_operator_view3d_active(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CTX_data_visible_bones(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @armature_select_more_less(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.bArmature, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !43
  tail call void @ED_armature_sync_selection(ptr noundef %6) #9
  %7 = load ptr, ptr %5, align 8, !tbaa !43
  %8 = load ptr, ptr %7, align 8, !tbaa !73
  %9 = icmp eq ptr %8, null
  br i1 %9, label %70, label %10

10:                                               ; preds = %2, %10
  %11 = phi ptr [ %16, %10 ], [ %8, %2 ]
  %12 = tail call i32 @ED_armature_ebone_selectflag_get(ptr noundef nonnull %11) #9
  %13 = sext i32 %12 to i64
  %14 = inttoptr i64 %13 to ptr
  %15 = getelementptr inbounds %struct.EditBone, ptr %11, i64 0, i32 4
  store ptr %14, ptr %15, align 8, !tbaa !92
  %16 = load ptr, ptr %11, align 8, !tbaa !73
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %10, !llvm.loop !96

18:                                               ; preds = %10
  %19 = load ptr, ptr %5, align 8, !tbaa !43
  %20 = load ptr, ptr %19, align 8, !tbaa !73
  %21 = icmp eq ptr %20, null
  br i1 %21, label %70, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.bArmature, ptr %4, i64 0, i32 15
  %24 = icmp eq i8 %1, 0
  br label %25

25:                                               ; preds = %22, %40
  %26 = phi ptr [ %20, %22 ], [ %41, %40 ]
  %27 = load i32, ptr %23, align 8, !tbaa !75
  %28 = getelementptr inbounds %struct.EditBone, ptr %26, i64 0, i32 10
  %29 = load i32, ptr %28, align 8, !tbaa !76
  %30 = and i32 %29, %27
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.EditBone, ptr %26, i64 0, i32 9
  %34 = load i32, ptr %33, align 4, !tbaa !67
  %35 = and i32 %34, 1024
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  br i1 %24, label %39, label %38

38:                                               ; preds = %37
  tail call fastcc void @armature_select_more(ptr noundef nonnull %4, ptr noundef nonnull %26) #10
  br label %40

39:                                               ; preds = %37
  tail call fastcc void @armature_select_less(ptr noundef nonnull %26) #10
  br label %40

40:                                               ; preds = %32, %39, %38, %25
  %41 = load ptr, ptr %26, align 8, !tbaa !73
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %25, !llvm.loop !97

43:                                               ; preds = %40
  %44 = load ptr, ptr %5, align 8, !tbaa !43
  %45 = load ptr, ptr %44, align 8, !tbaa !73
  %46 = icmp eq ptr %45, null
  br i1 %46, label %70, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.bArmature, ptr %4, i64 0, i32 15
  %49 = icmp ne i8 %1, 0
  br label %50

50:                                               ; preds = %47, %64
  %51 = phi ptr [ %45, %47 ], [ %66, %64 ]
  %52 = load i32, ptr %48, align 8, !tbaa !75
  %53 = getelementptr inbounds %struct.EditBone, ptr %51, i64 0, i32 10
  %54 = load i32, ptr %53, align 8, !tbaa !76
  %55 = and i32 %54, %52
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.EditBone, ptr %51, i64 0, i32 9
  %59 = load i32, ptr %58, align 4, !tbaa !67
  %60 = and i32 %59, 1025
  %61 = icmp ne i32 %60, 1
  %62 = or i1 %49, %61
  br i1 %62, label %64, label %63

63:                                               ; preds = %57
  tail call void @ED_armature_ebone_select_set(ptr noundef nonnull %51, i8 noundef zeroext 1) #9
  br label %64

64:                                               ; preds = %50, %63, %57
  %65 = getelementptr inbounds %struct.EditBone, ptr %51, i64 0, i32 4
  store ptr null, ptr %65, align 8, !tbaa !92
  %66 = load ptr, ptr %51, align 8, !tbaa !73
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %50, !llvm.loop !98

68:                                               ; preds = %64
  %69 = load ptr, ptr %5, align 8, !tbaa !43
  br label %70

70:                                               ; preds = %2, %18, %68, %43
  %71 = phi ptr [ %69, %68 ], [ %44, %43 ], [ %19, %18 ], [ %7, %2 ]
  tail call void @ED_armature_sync_selection(ptr noundef %71) #9
  ret void
}

; Function Attrs: optsize
declare i32 @ED_armature_ebone_selectflag_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @armature_select_more(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !92
  %5 = ptrtoint ptr %4 to i64
  %6 = and i64 %5, 6
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %21, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 15
  %10 = load i32, ptr %9, align 8, !tbaa !75
  %11 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 10
  %12 = load i32, ptr %11, align 8, !tbaa !76
  %13 = and i32 %12, %10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 9
  %17 = load i32, ptr %16, align 4, !tbaa !67
  %18 = and i32 %17, 2098176
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  tail call void @ED_armature_ebone_select_set(ptr noundef nonnull %1, i8 noundef zeroext 1) #9
  br label %21

21:                                               ; preds = %15, %20, %8, %2
  %22 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !69
  %24 = icmp eq ptr %23, null
  br i1 %24, label %68, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 9
  %27 = load i32, ptr %26, align 4, !tbaa !67
  %28 = and i32 %27, 16
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %68, label %30

30:                                               ; preds = %25
  %31 = load ptr, ptr %3, align 8, !tbaa !92
  %32 = ptrtoint ptr %31 to i64
  %33 = and i64 %32, 2
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %49, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 15
  %37 = load i32, ptr %36, align 8, !tbaa !75
  %38 = getelementptr inbounds %struct.EditBone, ptr %23, i64 0, i32 10
  %39 = load i32, ptr %38, align 8, !tbaa !76
  %40 = and i32 %39, %37
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.EditBone, ptr %23, i64 0, i32 9
  %44 = load i32, ptr %43, align 4, !tbaa !67
  %45 = and i32 %44, 2098176
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  tail call void @ED_armature_ebone_selectflag_enable(ptr noundef nonnull %23, i32 noundef 7) #9
  %48 = load ptr, ptr %22, align 8, !tbaa !69
  br label %49

49:                                               ; preds = %42, %47, %35, %30
  %50 = phi ptr [ %23, %42 ], [ %48, %47 ], [ %23, %35 ], [ %23, %30 ]
  %51 = getelementptr inbounds %struct.EditBone, ptr %50, i64 0, i32 4
  %52 = load ptr, ptr %51, align 8, !tbaa !92
  %53 = ptrtoint ptr %52 to i64
  %54 = and i64 %53, 4
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %68, label %56

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 15
  %58 = load i32, ptr %57, align 8, !tbaa !75
  %59 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 10
  %60 = load i32, ptr %59, align 8, !tbaa !76
  %61 = and i32 %60, %58
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %56
  %64 = load i32, ptr %26, align 4, !tbaa !67
  %65 = and i32 %64, 2098176
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  tail call void @ED_armature_ebone_selectflag_enable(ptr noundef nonnull %1, i32 noundef 3) #9
  br label %68

68:                                               ; preds = %49, %56, %67, %63, %25, %21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @armature_select_less(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !92
  %4 = ptrtoint ptr %3 to i64
  %5 = and i64 %4, 6
  %6 = icmp eq i64 %5, 6
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void @ED_armature_ebone_select_set(ptr noundef nonnull %0, i8 noundef zeroext 0) #9
  br label %8

8:                                                ; preds = %7, %1
  %9 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !69
  %11 = icmp eq ptr %10, null
  br i1 %11, label %32, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 9
  %14 = load i32, ptr %13, align 4, !tbaa !67
  %15 = and i32 %14, 16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %32, label %17

17:                                               ; preds = %12
  %18 = load ptr, ptr %2, align 8, !tbaa !92
  %19 = ptrtoint ptr %18 to i64
  %20 = and i64 %19, 1
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  tail call void @ED_armature_ebone_selectflag_disable(ptr noundef nonnull %10, i32 noundef 5) #9
  %23 = load ptr, ptr %9, align 8, !tbaa !69
  br label %24

24:                                               ; preds = %22, %17
  %25 = phi ptr [ %23, %22 ], [ %10, %17 ]
  %26 = getelementptr inbounds %struct.EditBone, ptr %25, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !92
  %28 = ptrtoint ptr %27 to i64
  %29 = and i64 %28, 1
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  tail call void @ED_armature_ebone_selectflag_disable(ptr noundef nonnull %0, i32 noundef 3) #9
  br label %32

32:                                               ; preds = %24, %31, %12, %8
  ret void
}

; Function Attrs: optsize
declare void @ED_armature_ebone_select_set(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_armature_ebone_selectflag_enable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_armature_ebone_selectflag_disable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_active_bone(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @select_similar_length(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 14
  %5 = load float, ptr %4, align 8, !tbaa !99
  %6 = fadd float %2, 1.000000e+00
  %7 = fdiv float %5, %6
  %8 = fmul float %6, %5
  %9 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = load ptr, ptr %10, align 8, !tbaa !73
  %12 = icmp eq ptr %11, null
  br i1 %12, label %37, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 15
  br label %15

15:                                               ; preds = %13, %34
  %16 = phi ptr [ %11, %13 ], [ %35, %34 ]
  %17 = load i32, ptr %14, align 8, !tbaa !75
  %18 = getelementptr inbounds %struct.EditBone, ptr %16, i64 0, i32 10
  %19 = load i32, ptr %18, align 8, !tbaa !76
  %20 = and i32 %19, %17
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %34, label %22

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.EditBone, ptr %16, i64 0, i32 9
  %24 = load i32, ptr %23, align 4, !tbaa !67
  %25 = and i32 %24, 2098176
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.EditBone, ptr %16, i64 0, i32 14
  %29 = load float, ptr %28, align 8, !tbaa !99
  %30 = fcmp ult float %29, %7
  %31 = fcmp ugt float %29, %8
  %32 = or i1 %30, %31
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  tail call void @ED_armature_ebone_select_set(ptr noundef nonnull %16, i8 noundef zeroext 1) #9
  br label %34

34:                                               ; preds = %22, %33, %27, %15
  %35 = load ptr, ptr %16, align 8, !tbaa !73
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %15, !llvm.loop !100

37:                                               ; preds = %34, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @select_similar_direction(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #0 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #11
  %6 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 7
  %7 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 8
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %6, ptr noundef nonnull %7) #10
  %8 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !43
  %10 = load ptr, ptr %9, align 8, !tbaa !73
  %11 = icmp eq ptr %10, null
  br i1 %11, label %37, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 15
  br label %14

14:                                               ; preds = %12, %34
  %15 = phi ptr [ %10, %12 ], [ %35, %34 ]
  %16 = load i32, ptr %13, align 8, !tbaa !75
  %17 = getelementptr inbounds %struct.EditBone, ptr %15, i64 0, i32 10
  %18 = load i32, ptr %17, align 8, !tbaa !76
  %19 = and i32 %18, %16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %34, label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.EditBone, ptr %15, i64 0, i32 9
  %23 = load i32, ptr %22, align 4, !tbaa !67
  %24 = and i32 %23, 2098176
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #11
  %27 = getelementptr inbounds %struct.EditBone, ptr %15, i64 0, i32 7
  %28 = getelementptr inbounds %struct.EditBone, ptr %15, i64 0, i32 8
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %27, ptr noundef nonnull %28) #10
  %29 = call float @angle_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %5) #9
  %30 = fdiv float %29, 0x400921FB60000000
  %31 = fcmp olt float %30, %2
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  call void @ED_armature_ebone_select_set(ptr noundef nonnull %15, i8 noundef zeroext 1) #9
  br label %33

33:                                               ; preds = %32, %26
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #11
  br label %34

34:                                               ; preds = %21, %33, %14
  %35 = load ptr, ptr %15, align 8, !tbaa !73
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %14, !llvm.loop !101

37:                                               ; preds = %34, %3
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @select_similar_prefix(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [64 x i8], align 16
  %4 = alloca [64 x i8], align 16
  %5 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #11
  %6 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 5
  call void @BKE_deform_split_prefix(ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %3) #9
  %7 = load i8, ptr %4, align 16, !tbaa !102
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %37, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !43
  %12 = load ptr, ptr %11, align 8, !tbaa !73
  %13 = icmp eq ptr %12, null
  br i1 %13, label %37, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 15
  br label %16

16:                                               ; preds = %14, %34
  %17 = phi ptr [ %12, %14 ], [ %35, %34 ]
  %18 = load i32, ptr %15, align 8, !tbaa !75
  %19 = getelementptr inbounds %struct.EditBone, ptr %17, i64 0, i32 10
  %20 = load i32, ptr %19, align 8, !tbaa !76
  %21 = and i32 %20, %18
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.EditBone, ptr %17, i64 0, i32 9
  %25 = load i32, ptr %24, align 4, !tbaa !67
  %26 = and i32 %25, 2098176
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #11
  %29 = getelementptr inbounds %struct.EditBone, ptr %17, i64 0, i32 5
  call void @BKE_deform_split_prefix(ptr noundef nonnull %29, ptr noundef nonnull %5, ptr noundef nonnull %3) #9
  %30 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %5) #12
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  call void @ED_armature_ebone_select_set(ptr noundef nonnull %17, i8 noundef zeroext 1) #9
  br label %33

33:                                               ; preds = %32, %28
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #11
  br label %34

34:                                               ; preds = %23, %33, %16
  %35 = load ptr, ptr %17, align 8, !tbaa !73
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %16, !llvm.loop !103

37:                                               ; preds = %34, %9, %2
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @select_similar_suffix(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [64 x i8], align 16
  %4 = alloca [64 x i8], align 16
  %5 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #11
  %6 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 5
  call void @BKE_deform_split_suffix(ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef nonnull %4) #9
  %7 = load i8, ptr %4, align 16, !tbaa !102
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %37, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !43
  %12 = load ptr, ptr %11, align 8, !tbaa !73
  %13 = icmp eq ptr %12, null
  br i1 %13, label %37, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 15
  br label %16

16:                                               ; preds = %14, %34
  %17 = phi ptr [ %12, %14 ], [ %35, %34 ]
  %18 = load i32, ptr %15, align 8, !tbaa !75
  %19 = getelementptr inbounds %struct.EditBone, ptr %17, i64 0, i32 10
  %20 = load i32, ptr %19, align 8, !tbaa !76
  %21 = and i32 %20, %18
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.EditBone, ptr %17, i64 0, i32 9
  %25 = load i32, ptr %24, align 4, !tbaa !67
  %26 = and i32 %25, 2098176
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #11
  %29 = getelementptr inbounds %struct.EditBone, ptr %17, i64 0, i32 5
  call void @BKE_deform_split_suffix(ptr noundef nonnull %29, ptr noundef nonnull %3, ptr noundef nonnull %5) #9
  %30 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %5) #12
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  call void @ED_armature_ebone_select_set(ptr noundef nonnull %17, i8 noundef zeroext 1) #9
  br label %33

33:                                               ; preds = %32, %28
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #11
  br label %34

34:                                               ; preds = %23, %33, %16
  %35 = load ptr, ptr %17, align 8, !tbaa !73
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %16, !llvm.loop !104

37:                                               ; preds = %34, %9, %2
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @select_similar_layer(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !43
  %5 = load ptr, ptr %4, align 8, !tbaa !73
  %6 = icmp eq ptr %5, null
  br i1 %6, label %30, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 15
  %9 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 10
  br label %10

10:                                               ; preds = %7, %27
  %11 = phi ptr [ %5, %7 ], [ %28, %27 ]
  %12 = load i32, ptr %8, align 8, !tbaa !75
  %13 = getelementptr inbounds %struct.EditBone, ptr %11, i64 0, i32 10
  %14 = load i32, ptr %13, align 8, !tbaa !76
  %15 = and i32 %14, %12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.EditBone, ptr %11, i64 0, i32 9
  %19 = load i32, ptr %18, align 4, !tbaa !67
  %20 = and i32 %19, 2098176
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load i32, ptr %9, align 8, !tbaa !76
  %24 = and i32 %23, %14
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  tail call void @ED_armature_ebone_select_set(ptr noundef nonnull %11, i8 noundef zeroext 1) #9
  br label %27

27:                                               ; preds = %17, %26, %22, %10
  %28 = load ptr, ptr %11, align 8, !tbaa !73
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %10, !llvm.loop !105

30:                                               ; preds = %27, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #5 {
  %4 = load float, ptr %1, align 4, !tbaa !106
  %5 = load float, ptr %2, align 4, !tbaa !106
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !106
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !106
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !106
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !106
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !106
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !106
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !106
  ret void
}

; Function Attrs: optsize
declare float @angle_v3v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_deform_split_prefix(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @BKE_deform_split_suffix(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @editbone_get_child(ptr nocapture noundef readonly %0, ptr noundef readonly %1) unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !43
  %5 = load ptr, ptr %4, align 8, !tbaa !73
  %6 = icmp eq ptr %5, null
  br i1 %6, label %31, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 15
  %9 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 9
  br label %10

10:                                               ; preds = %7, %27
  %11 = phi ptr [ %5, %7 ], [ %29, %27 ]
  %12 = phi ptr [ null, %7 ], [ %28, %27 ]
  %13 = getelementptr inbounds %struct.EditBone, ptr %11, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !69
  %15 = icmp eq ptr %14, %1
  br i1 %15, label %16, label %27

16:                                               ; preds = %10
  %17 = load i32, ptr %8, align 8, !tbaa !75
  %18 = getelementptr inbounds %struct.EditBone, ptr %11, i64 0, i32 10
  %19 = load i32, ptr %18, align 8, !tbaa !76
  %20 = and i32 %19, %17
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %16
  %23 = load i32, ptr %9, align 4, !tbaa !67
  %24 = and i32 %23, 1024
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, ptr %11, ptr %12
  br label %27

27:                                               ; preds = %22, %10, %16
  %28 = phi ptr [ %12, %16 ], [ %12, %10 ], [ %26, %22 ]
  %29 = load ptr, ptr %11, align 8, !tbaa !73
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %10, !llvm.loop !107

31:                                               ; preds = %27, %2
  %32 = phi ptr [ null, %2 ], [ %28, %27 ]
  ret ptr %32
}

; Function Attrs: optsize
declare ptr @ED_armature_bone_get_mirrored(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_armature_ebone_selectflag_set(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ED_armature_ebone_is_child_recursive(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_armature_bone_find_shared_parent(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @armature_shortest_path_select(ptr nocapture noundef readonly %0, ptr noundef readnone %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 15
  %7 = icmp eq i8 %3, 0
  %8 = icmp eq ptr %2, %1
  %9 = and i1 %7, %8
  br i1 %9, label %36, label %10

10:                                               ; preds = %5
  %11 = icmp eq i8 %4, 0
  br label %12

12:                                               ; preds = %10, %28
  %13 = phi i1 [ %8, %10 ], [ %31, %28 ]
  %14 = phi ptr [ %2, %10 ], [ %30, %28 ]
  br i1 %11, label %27, label %15

15:                                               ; preds = %12
  %16 = load i32, ptr %6, align 8, !tbaa !75
  %17 = getelementptr inbounds %struct.EditBone, ptr %14, i64 0, i32 10
  %18 = load i32, ptr %17, align 8, !tbaa !76
  %19 = and i32 %18, %16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %36, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.EditBone, ptr %14, i64 0, i32 9
  %23 = load i32, ptr %22, align 4, !tbaa !67
  %24 = and i32 %23, 2098176
  %25 = icmp ne i32 %24, 0
  %26 = select i1 %25, i1 true, i1 %13
  br i1 %26, label %33, label %28

27:                                               ; preds = %12
  tail call void @ED_armature_ebone_selectflag_set(ptr noundef %14, i32 noundef 7) #9
  br i1 %13, label %36, label %28

28:                                               ; preds = %21, %27
  %29 = getelementptr inbounds %struct.EditBone, ptr %14, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !69
  %31 = icmp eq ptr %30, %1
  %32 = select i1 %7, i1 %31, i1 false
  br i1 %32, label %36, label %12

33:                                               ; preds = %21
  %34 = xor i1 %25, true
  %35 = zext i1 %34 to i8
  br label %36

36:                                               ; preds = %15, %28, %27, %5, %33
  %37 = phi i8 [ %35, %33 ], [ 1, %5 ], [ 1, %27 ], [ 1, %28 ], [ 0, %15 ]
  ret i8 %37
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind optsize }
attributes #10 = { optsize }
attributes #11 = { nounwind }
attributes #12 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !8, i64 288}
!6 = !{!"Object", !7, i64 0, !8, i64 120, !8, i64 128, !11, i64 136, !11, i64 138, !12, i64 140, !12, i64 144, !12, i64 148, !9, i64 152, !8, i64 216, !8, i64 224, !8, i64 232, !8, i64 240, !8, i64 248, !8, i64 256, !8, i64 264, !8, i64 272, !8, i64 280, !8, i64 288, !8, i64 296, !8, i64 304, !13, i64 312, !8, i64 360, !14, i64 368, !14, i64 384, !14, i64 400, !14, i64 416, !12, i64 432, !12, i64 436, !8, i64 440, !8, i64 448, !12, i64 456, !12, i64 460, !9, i64 464, !9, i64 476, !9, i64 488, !9, i64 500, !9, i64 512, !9, i64 524, !9, i64 536, !9, i64 548, !9, i64 560, !9, i64 576, !9, i64 592, !9, i64 604, !15, i64 616, !15, i64 620, !9, i64 624, !9, i64 688, !9, i64 752, !9, i64 816, !9, i64 880, !12, i64 944, !11, i64 948, !11, i64 950, !11, i64 952, !11, i64 954, !11, i64 956, !11, i64 958, !11, i64 960, !11, i64 962, !11, i64 964, !9, i64 966, !9, i64 967, !12, i64 968, !12, i64 972, !12, i64 976, !12, i64 980, !12, i64 984, !15, i64 988, !15, i64 992, !15, i64 996, !15, i64 1000, !15, i64 1004, !15, i64 1008, !15, i64 1012, !15, i64 1016, !15, i64 1020, !15, i64 1024, !15, i64 1028, !15, i64 1032, !11, i64 1036, !11, i64 1038, !11, i64 1040, !9, i64 1042, !9, i64 1043, !11, i64 1044, !9, i64 1046, !9, i64 1047, !15, i64 1048, !15, i64 1052, !14, i64 1056, !14, i64 1072, !14, i64 1088, !14, i64 1104, !15, i64 1120, !11, i64 1124, !11, i64 1126, !9, i64 1128, !12, i64 1144, !12, i64 1148, !8, i64 1152, !9, i64 1160, !9, i64 1161, !11, i64 1162, !9, i64 1164, !14, i64 1176, !14, i64 1192, !14, i64 1208, !14, i64 1224, !8, i64 1240, !8, i64 1248, !8, i64 1256, !9, i64 1264, !9, i64 1265, !11, i64 1266, !15, i64 1268, !8, i64 1272, !8, i64 1280, !8, i64 1288, !8, i64 1296, !16, i64 1304, !16, i64 1312, !12, i64 1320, !12, i64 1324, !14, i64 1328, !14, i64 1344, !8, i64 1360, !8, i64 1368, !8, i64 1376, !9, i64 1384, !8, i64 1392, !14, i64 1400, !8, i64 1416}
!7 = !{!"ID", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !9, i64 32, !11, i64 98, !12, i64 100, !12, i64 104, !12, i64 108, !8, i64 112}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"short", !9, i64 0}
!12 = !{!"int", !9, i64 0}
!13 = !{!"bAnimVizSettings", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !11, i64 16, !11, i64 18, !11, i64 20, !11, i64 22, !11, i64 24, !11, i64 26, !11, i64 28, !11, i64 30, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44}
!14 = !{!"ListBase", !8, i64 0, !8, i64 8}
!15 = !{!"float", !9, i64 0}
!16 = !{!"long", !9, i64 0}
!17 = !{!18, !8, i64 120}
!18 = !{!"bPoseChannel", !8, i64 0, !8, i64 8, !8, i64 16, !14, i64 24, !9, i64 40, !11, i64 104, !11, i64 106, !11, i64 108, !11, i64 110, !9, i64 112, !9, i64 113, !9, i64 114, !8, i64 120, !8, i64 128, !8, i64 136, !14, i64 144, !14, i64 160, !8, i64 176, !8, i64 184, !8, i64 192, !9, i64 200, !9, i64 212, !9, i64 224, !9, i64 236, !9, i64 252, !15, i64 264, !11, i64 268, !11, i64 270, !9, i64 272, !9, i64 336, !9, i64 400, !9, i64 464, !9, i64 476, !9, i64 488, !9, i64 500, !9, i64 512, !15, i64 524, !15, i64 528, !15, i64 532, !8, i64 536}
!19 = !{!20, !8, i64 176}
!20 = !{!"Scene", !7, i64 0, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !14, i64 152, !8, i64 168, !8, i64 176, !9, i64 184, !9, i64 196, !9, i64 208, !9, i64 220, !12, i64 232, !12, i64 236, !12, i64 240, !11, i64 244, !9, i64 246, !9, i64 247, !8, i64 248, !8, i64 256, !8, i64 264, !8, i64 272, !21, i64 280, !30, i64 4264, !14, i64 4296, !14, i64 4312, !8, i64 4328, !8, i64 4336, !8, i64 4344, !8, i64 4352, !8, i64 4360, !8, i64 4368, !11, i64 4376, !11, i64 4378, !12, i64 4380, !14, i64 4384, !31, i64 4400, !32, i64 4416, !35, i64 4600, !8, i64 4608, !36, i64 4616, !8, i64 4640, !16, i64 4648, !16, i64 4656, !23, i64 4664, !24, i64 4824, !37, i64 4888, !8, i64 4952}
!21 = !{!"RenderData", !22, i64 0, !8, i64 248, !8, i64 256, !25, i64 264, !26, i64 328, !12, i64 400, !12, i64 404, !12, i64 408, !15, i64 412, !12, i64 416, !12, i64 420, !12, i64 424, !12, i64 428, !11, i64 432, !11, i64 434, !15, i64 436, !15, i64 440, !15, i64 444, !15, i64 448, !15, i64 452, !11, i64 456, !11, i64 458, !11, i64 460, !11, i64 462, !11, i64 464, !11, i64 466, !12, i64 468, !11, i64 472, !11, i64 474, !11, i64 476, !11, i64 478, !11, i64 480, !11, i64 482, !12, i64 484, !12, i64 488, !11, i64 492, !11, i64 494, !12, i64 496, !12, i64 500, !11, i64 504, !11, i64 506, !11, i64 508, !11, i64 510, !11, i64 512, !9, i64 514, !9, i64 515, !12, i64 516, !12, i64 520, !12, i64 524, !11, i64 528, !11, i64 530, !11, i64 532, !11, i64 534, !11, i64 536, !11, i64 538, !11, i64 540, !11, i64 542, !27, i64 544, !27, i64 560, !28, i64 576, !14, i64 592, !11, i64 608, !11, i64 610, !15, i64 612, !15, i64 616, !15, i64 620, !15, i64 624, !12, i64 628, !15, i64 632, !15, i64 636, !15, i64 640, !15, i64 644, !11, i64 648, !11, i64 650, !11, i64 652, !11, i64 654, !11, i64 656, !11, i64 658, !15, i64 660, !15, i64 664, !11, i64 668, !11, i64 670, !15, i64 672, !15, i64 676, !9, i64 680, !12, i64 1704, !11, i64 1708, !11, i64 1710, !9, i64 1712, !9, i64 2480, !9, i64 2496, !9, i64 2512, !9, i64 2513, !9, i64 2514, !9, i64 2515, !12, i64 2520, !11, i64 2524, !11, i64 2526, !15, i64 2528, !15, i64 2532, !11, i64 2536, !11, i64 2538, !15, i64 2540, !11, i64 2544, !11, i64 2546, !12, i64 2548, !11, i64 2552, !11, i64 2554, !11, i64 2556, !11, i64 2558, !15, i64 2560, !15, i64 2564, !8, i64 2568, !12, i64 2576, !15, i64 2580, !9, i64 2584, !29, i64 2616, !12, i64 3976, !12, i64 3980}
!22 = !{!"ImageFormatData", !9, i64 0, !9, i64 1, !9, i64 2, !9, i64 3, !9, i64 4, !9, i64 5, !9, i64 6, !9, i64 7, !11, i64 8, !11, i64 10, !15, i64 12, !9, i64 16, !9, i64 17, !9, i64 18, !23, i64 24, !24, i64 184}
!23 = !{!"ColorManagedViewSettings", !12, i64 0, !12, i64 4, !9, i64 8, !9, i64 72, !15, i64 136, !15, i64 140, !8, i64 144, !8, i64 152}
!24 = !{!"ColorManagedDisplaySettings", !9, i64 0}
!25 = !{!"QuicktimeCodecSettings", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !11, i64 48, !11, i64 50, !12, i64 52, !12, i64 56, !12, i64 60}
!26 = !{!"FFMpegCodecData", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !15, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !8, i64 64}
!27 = !{!"rctf", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12}
!28 = !{!"rcti", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12}
!29 = !{!"BakeData", !22, i64 0, !9, i64 248, !11, i64 1272, !11, i64 1274, !11, i64 1276, !11, i64 1278, !15, i64 1280, !15, i64 1284, !9, i64 1288, !9, i64 1291, !9, i64 1292, !9, i64 1293, !9, i64 1296}
!30 = !{!"AudioData", !12, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !12, i64 16, !11, i64 20, !11, i64 22, !15, i64 24, !15, i64 28}
!31 = !{!"GameFraming", !9, i64 0, !9, i64 12, !9, i64 13, !9, i64 14, !9, i64 15}
!32 = !{!"GameData", !31, i64 0, !11, i64 16, !11, i64 18, !11, i64 20, !11, i64 22, !11, i64 24, !11, i64 26, !11, i64 28, !11, i64 30, !11, i64 32, !9, i64 34, !33, i64 40, !11, i64 64, !11, i64 66, !15, i64 68, !34, i64 72, !15, i64 128, !15, i64 132, !12, i64 136, !11, i64 140, !11, i64 142, !11, i64 144, !11, i64 146, !11, i64 148, !11, i64 150, !11, i64 152, !11, i64 154, !11, i64 156, !11, i64 158, !11, i64 160, !11, i64 162, !15, i64 164, !15, i64 168, !15, i64 172, !15, i64 176, !15, i64 180}
!33 = !{!"GameDome", !11, i64 0, !11, i64 2, !11, i64 4, !11, i64 6, !15, i64 8, !15, i64 12, !8, i64 16}
!34 = !{!"RecastData", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !15, i64 24, !15, i64 28, !15, i64 32, !15, i64 36, !12, i64 40, !15, i64 44, !15, i64 48, !11, i64 52, !11, i64 54}
!35 = !{!"UnitSettings", !15, i64 0, !9, i64 4, !9, i64 5, !11, i64 6}
!36 = !{!"PhysicsSettings", !9, i64 0, !12, i64 12, !12, i64 16, !12, i64 20}
!37 = !{!"ColorManagedColorspaceSettings", !9, i64 0}
!38 = !{!12, !12, i64 0}
!39 = !{!40, !8, i64 32}
!40 = !{!"Base", !8, i64 0, !8, i64 8, !12, i64 16, !12, i64 20, !12, i64 24, !11, i64 28, !11, i64 30, !8, i64 32}
!41 = !{!40, !12, i64 20}
!42 = !{!6, !8, i64 296}
!43 = !{!44, !8, i64 160}
!44 = !{!"bArmature", !7, i64 0, !8, i64 120, !14, i64 128, !14, i64 144, !8, i64 160, !8, i64 168, !8, i64 176, !8, i64 184, !12, i64 192, !12, i64 196, !12, i64 200, !12, i64 204, !11, i64 208, !11, i64 210, !12, i64 212, !12, i64 216, !12, i64 220, !11, i64 224, !11, i64 226, !11, i64 228, !11, i64 230, !12, i64 232, !12, i64 236, !12, i64 240, !12, i64 244, !12, i64 248, !12, i64 252}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!28, !12, i64 4}
!48 = !{!28, !12, i64 0}
!49 = !{!28, !12, i64 12}
!50 = !{!28, !12, i64 8}
!51 = !{!52, !8, i64 0}
!52 = !{!"ViewContext", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !9, i64 56}
!53 = !{!20, !8, i64 168}
!54 = !{!55, !8, i64 0}
!55 = !{!"wmOperatorType", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !14, i64 112, !8, i64 128, !8, i64 136, !8, i64 144, !56, i64 152, !11, i64 184}
!56 = !{!"ExtensionRNA", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24}
!57 = !{!55, !8, i64 8}
!58 = !{!55, !8, i64 24}
!59 = !{!55, !8, i64 48}
!60 = !{!55, !8, i64 72}
!61 = !{!55, !11, i64 184}
!62 = !{!55, !8, i64 88}
!63 = !{!64, !8, i64 112}
!64 = !{!"wmOperator", !8, i64 0, !8, i64 8, !9, i64 16, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !14, i64 128, !8, i64 144, !8, i64 152, !11, i64 160, !9, i64 162}
!65 = !{!14, !8, i64 0}
!66 = distinct !{!66, !46}
!67 = !{!68, !12, i64 132}
!68 = !{!"EditBone", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !9, i64 40, !15, i64 104, !9, i64 108, !9, i64 120, !12, i64 132, !12, i64 136, !15, i64 140, !15, i64 144, !15, i64 148, !15, i64 152, !15, i64 156, !15, i64 160, !15, i64 164, !15, i64 168, !15, i64 172, !15, i64 176, !11, i64 180}
!69 = !{!68, !8, i64 24}
!70 = distinct !{!70, !46}
!71 = !{!68, !8, i64 0}
!72 = distinct !{!72, !46}
!73 = !{!8, !8, i64 0}
!74 = distinct !{!74, !46}
!75 = !{!44, !12, i64 216}
!76 = !{!68, !12, i64 136}
!77 = !{!44, !8, i64 176}
!78 = distinct !{!78, !46}
!79 = distinct !{!79, !46}
!80 = !{i32 0, i32 8}
!81 = !{!52, !8, i64 16}
!82 = distinct !{!82, !46}
!83 = !{!55, !8, i64 32}
!84 = !{!85, !8, i64 32}
!85 = !{!"CollectionPointerLink", !8, i64 0, !8, i64 8, !86, i64 16}
!86 = !{!"PointerRNA", !87, i64 0, !8, i64 8, !8, i64 16}
!87 = !{!"", !8, i64 0}
!88 = distinct !{!88, !46}
!89 = !{!55, !8, i64 104}
!90 = !{!64, !8, i64 120}
!91 = distinct !{!91, !46}
!92 = !{!68, !8, i64 32}
!93 = distinct !{!93, !46}
!94 = distinct !{!94, !46}
!95 = !{i8 0, i8 2}
!96 = distinct !{!96, !46}
!97 = distinct !{!97, !46}
!98 = distinct !{!98, !46}
!99 = !{!68, !15, i64 152}
!100 = distinct !{!100, !46}
!101 = distinct !{!101, !46}
!102 = !{!9, !9, i64 0}
!103 = distinct !{!103, !46}
!104 = distinct !{!104, !46}
!105 = distinct !{!105, !46}
!106 = !{!15, !15, i64 0}
!107 = distinct !{!107, !46}
