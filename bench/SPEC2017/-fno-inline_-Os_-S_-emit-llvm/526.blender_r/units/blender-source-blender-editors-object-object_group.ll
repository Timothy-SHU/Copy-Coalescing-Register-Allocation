; ModuleID = 'blender/source/blender/editors/object/object_group.c'
source_filename = "blender/source/blender/editors/object/object_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.StructRNA = type opaque
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ListBase = type { ptr, ptr }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.CollectionPointerLink = type { ptr, ptr, %struct.PointerRNA }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
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
%struct.Group = type { %struct.ID, %struct.ListBase, i32, [3 x float] }
%struct.GroupObject = type { ptr, ptr, ptr, ptr, i16, [6 x i8] }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"Add Selected To Active Group\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"Add the object to an object group that contains the active object\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"GROUP_OT_objects_add_active\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@DummyRNA_NULL_items = external global [0 x %struct.EnumPropertyItem], align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"Group\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"The group to add other selected objects to\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Remove Selected From Active Group\00", align 1
@.str.7 = private unnamed_addr constant [71 x i8] c"Remove the object from an object group that contains the active object\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"GROUP_OT_objects_remove_active\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"The group to remove other selected objects from\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"Remove From All Groups\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"Remove selected objects from all groups\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"GROUP_OT_objects_remove_all\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"Remove From Group\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"Remove selected objects from a group\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"GROUP_OT_objects_remove\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"The group to remove this object from\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"Create New Group\00", align 1
@.str.18 = private unnamed_addr constant [45 x i8] c"Create an object group from selected objects\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"GROUP_OT_create\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"Name of the new group\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"Add to Group\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"OBJECT_OT_group_add\00", align 1
@.str.25 = private unnamed_addr constant [29 x i8] c"Add an object to a new group\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"Link to Group\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"OBJECT_OT_group_link\00", align 1
@.str.28 = private unnamed_addr constant [35 x i8] c"Add an object to an existing group\00", align 1
@.str.29 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"Remove Group\00", align 1
@.str.31 = private unnamed_addr constant [23 x i8] c"OBJECT_OT_group_remove\00", align 1
@.str.32 = private unnamed_addr constant [41 x i8] c"Remove the active object from this group\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"Unlink Group\00", align 1
@.str.34 = private unnamed_addr constant [23 x i8] c"OBJECT_OT_group_unlink\00", align 1
@.str.35 = private unnamed_addr constant [34 x i8] c"Unlink the group from all objects\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"Select Grouped\00", align 1
@.str.37 = private unnamed_addr constant [25 x i8] c"OBJECT_OT_grouped_select\00", align 1
@.str.38 = private unnamed_addr constant [28 x i8] c"Select all objects in group\00", align 1
@.str.39 = private unnamed_addr constant [46 x i8] c"Skipped some groups because of cycle detected\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"All Groups\00", align 1
@.str.41 = private unnamed_addr constant [33 x i8] c"Active object contains no groups\00", align 1
@.str.42 = private unnamed_addr constant [61 x i8] c"Could not add the group because of dependency cycle detected\00", align 1
@RNA_Group = external global %struct.StructRNA, align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GROUP_OT_objects_add_active(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.1, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @objects_add_active_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_objectmode, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !18
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !19
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.3, ptr noundef nonnull @DummyRNA_NULL_items, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #7
  tail call void @RNA_def_enum_funcs(ptr noundef %10, ptr noundef nonnull @group_object_active_itemf) #7
  tail call void @RNA_def_property_flag(ptr noundef %10, i32 noundef 536870912) #7
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !20
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @objects_add_active_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @ED_object_context(ptr noundef %0) #7
  %5 = tail call ptr @CTX_data_main(ptr noundef %0) #7
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !21
  %9 = tail call i32 @RNA_enum_get(ptr noundef %8, ptr noundef nonnull @.str.3) #7
  %10 = tail call fastcc ptr @group_object_active_find_index(ptr noundef %4, i32 noundef %9) #8
  %11 = icmp eq ptr %4, null
  br i1 %11, label %68, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.Main, ptr %5, i64 0, i32 32
  %14 = load ptr, ptr %13, align 8, !tbaa !23
  %15 = icmp eq ptr %14, null
  br i1 %15, label %68, label %16

16:                                               ; preds = %12
  %17 = icmp eq ptr %10, null
  br label %18

18:                                               ; preds = %16, %55
  %19 = phi ptr [ %14, %16 ], [ %58, %55 ]
  %20 = phi i8 [ 0, %16 ], [ %57, %55 ]
  %21 = phi i8 [ 0, %16 ], [ %56, %55 ]
  %22 = icmp eq ptr %19, %10
  %23 = or i1 %17, %22
  br i1 %23, label %24, label %55

24:                                               ; preds = %18
  %25 = call zeroext i8 @BKE_group_object_exists(ptr noundef nonnull %19, ptr noundef nonnull %4) #7
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %55, label %27

27:                                               ; preds = %24
  call void @BKE_main_id_tag_listbase(ptr noundef nonnull %13, i8 noundef zeroext 1) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  %28 = call i32 @CTX_data_selected_editable_bases(ptr noundef %0, ptr noundef nonnull %3) #7
  %29 = load ptr, ptr %3, align 8, !tbaa !23
  %30 = icmp eq ptr %29, null
  br i1 %30, label %52, label %31

31:                                               ; preds = %27, %47
  %32 = phi ptr [ %50, %47 ], [ %29, %27 ]
  %33 = phi i8 [ %49, %47 ], [ %20, %27 ]
  %34 = phi i8 [ %48, %47 ], [ %21, %27 ]
  %35 = getelementptr inbounds %struct.CollectionPointerLink, ptr %32, i64 0, i32 2, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !24
  %37 = getelementptr inbounds %struct.Base, ptr %36, i64 0, i32 7
  %38 = load ptr, ptr %37, align 8, !tbaa !28
  %39 = call fastcc zeroext i8 @group_link_early_exit_check(ptr noundef nonnull %19, ptr noundef %38) #8, !range !31
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %31
  %42 = call fastcc zeroext i8 @check_object_instances_group_recursive(ptr noundef %38, ptr noundef nonnull %19) #8, !range !31
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load ptr, ptr %37, align 8, !tbaa !28
  %46 = call zeroext i8 @BKE_group_object_add(ptr noundef nonnull %19, ptr noundef %45, ptr noundef %6, ptr noundef nonnull %36) #7
  br label %47

47:                                               ; preds = %44, %41, %31
  %48 = phi i8 [ %34, %31 ], [ %34, %44 ], [ 1, %41 ]
  %49 = phi i8 [ %33, %31 ], [ 1, %44 ], [ %33, %41 ]
  %50 = load ptr, ptr %32, align 8, !tbaa !23
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %31, !llvm.loop !32

52:                                               ; preds = %47, %27
  %53 = phi i8 [ %21, %27 ], [ %48, %47 ]
  %54 = phi i8 [ %20, %27 ], [ %49, %47 ]
  call void @BLI_freelistN(ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  br label %55

55:                                               ; preds = %18, %24, %52
  %56 = phi i8 [ %53, %52 ], [ %21, %24 ], [ %21, %18 ]
  %57 = phi i8 [ %54, %52 ], [ %20, %24 ], [ %20, %18 ]
  %58 = load ptr, ptr %19, align 8, !tbaa !23
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %18, !llvm.loop !34

60:                                               ; preds = %55
  %61 = icmp eq i8 %56, 0
  %62 = icmp eq i8 %57, 0
  br i1 %61, label %66, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %65 = load ptr, ptr %64, align 8, !tbaa !35
  call void @BKE_report(ptr noundef %65, i32 noundef 16, ptr noundef nonnull @.str.39) #7
  br i1 %62, label %68, label %67

66:                                               ; preds = %60
  br i1 %62, label %68, label %67

67:                                               ; preds = %63, %66
  call void @DAG_relations_tag_update(ptr noundef %5) #7
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 150994945, ptr noundef null) #7
  br label %68

68:                                               ; preds = %12, %63, %66, %2, %67
  %69 = phi i32 [ 4, %67 ], [ 2, %2 ], [ 2, %66 ], [ 2, %63 ], [ 2, %12 ]
  ret i32 %69
}

; Function Attrs: optsize
declare i32 @WM_menu_invoke(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare i32 @ED_operator_objectmode(ptr noundef) #2

; Function Attrs: optsize
declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_def_enum_funcs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @group_object_active_itemf(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct.EnumPropertyItem, align 8
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  store ptr null, ptr %5, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %6, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  store i32 0, ptr %7, align 4, !tbaa !36
  %8 = icmp eq ptr %0, null
  br i1 %8, label %38, label %9

9:                                                ; preds = %4
  %10 = tail call ptr @ED_object_context(ptr noundef nonnull %0) #7
  %11 = icmp eq ptr %10, null
  br i1 %11, label %36, label %12

12:                                               ; preds = %9, %12
  %13 = phi ptr [ %15, %12 ], [ null, %9 ]
  %14 = phi i32 [ %17, %12 ], [ 0, %9 ]
  %15 = tail call ptr @BKE_group_object_find(ptr noundef %13, ptr noundef nonnull %10) #7
  %16 = icmp eq ptr %15, null
  %17 = add nuw nsw i32 %14, 1
  br i1 %16, label %18, label %12, !llvm.loop !37

18:                                               ; preds = %12
  %19 = icmp ugt i32 %14, 1
  br i1 %19, label %20, label %23

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.EnumPropertyItem, ptr %6, i64 0, i32 3
  store ptr @.str.40, ptr %21, align 8, !tbaa !38
  %22 = getelementptr inbounds %struct.EnumPropertyItem, ptr %6, i64 0, i32 1
  store ptr @.str.40, ptr %22, align 8, !tbaa !40
  store i32 2147483647, ptr %6, align 8, !tbaa !41
  call void @RNA_enum_item_add(ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull %6) #7
  call void @RNA_enum_item_add_separator(ptr noundef nonnull %5, ptr noundef nonnull %7) #7
  br label %23

23:                                               ; preds = %20, %18
  %24 = call ptr @BKE_group_object_find(ptr noundef null, ptr noundef nonnull %10) #7
  %25 = icmp eq ptr %24, null
  br i1 %25, label %36, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.EnumPropertyItem, ptr %6, i64 0, i32 3
  %28 = getelementptr inbounds %struct.EnumPropertyItem, ptr %6, i64 0, i32 1
  br label %29

29:                                               ; preds = %26, %29
  %30 = phi ptr [ %24, %26 ], [ %34, %29 ]
  %31 = phi i32 [ 0, %26 ], [ %33, %29 ]
  %32 = getelementptr inbounds %struct.ID, ptr %30, i64 0, i32 4, i64 2
  store ptr %32, ptr %27, align 8, !tbaa !38
  store ptr %32, ptr %28, align 8, !tbaa !40
  store i32 %31, ptr %6, align 8, !tbaa !41
  call void @RNA_enum_item_add(ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull %6) #7
  %33 = add nuw nsw i32 %31, 1
  %34 = call ptr @BKE_group_object_find(ptr noundef nonnull %30, ptr noundef nonnull %10) #7
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %29, !llvm.loop !42

36:                                               ; preds = %29, %23, %9
  call void @RNA_enum_item_end(ptr noundef nonnull %5, ptr noundef nonnull %7) #7
  store i8 1, ptr %3, align 1, !tbaa !43
  %37 = load ptr, ptr %5, align 8, !tbaa !23
  br label %38

38:                                               ; preds = %4, %36
  %39 = phi ptr [ %37, %36 ], [ @DummyRNA_NULL_items, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  ret ptr %39
}

; Function Attrs: optsize
declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GROUP_OT_objects_remove_active(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.6, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.7, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.8, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @objects_remove_active_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_objectmode, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !18
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !19
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.3, ptr noundef nonnull @DummyRNA_NULL_items, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.9) #7
  tail call void @RNA_def_enum_funcs(ptr noundef %10, ptr noundef nonnull @group_object_active_itemf) #7
  tail call void @RNA_def_property_flag(ptr noundef %10, i32 noundef 536870912) #7
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @objects_remove_active_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #7
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %6 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !44
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Base, ptr %7, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !28
  br label %12

12:                                               ; preds = %2, %9
  %13 = phi ptr [ %11, %9 ], [ null, %2 ]
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !21
  %16 = tail call i32 @RNA_enum_get(ptr noundef %15, ptr noundef nonnull @.str.3) #7
  %17 = tail call fastcc ptr @group_object_active_find_index(ptr noundef %13, i32 noundef %16) #8
  %18 = icmp eq ptr %13, null
  br i1 %18, label %58, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 32
  %21 = load ptr, ptr %20, align 8, !tbaa !23
  %22 = icmp eq ptr %21, null
  br i1 %22, label %54, label %23

23:                                               ; preds = %19
  %24 = icmp eq ptr %17, null
  br label %25

25:                                               ; preds = %23, %48
  %26 = phi ptr [ %21, %23 ], [ %50, %48 ]
  %27 = phi i8 [ 0, %23 ], [ %49, %48 ]
  %28 = icmp eq ptr %26, %17
  %29 = or i1 %24, %28
  br i1 %29, label %30, label %48

30:                                               ; preds = %25
  %31 = call zeroext i8 @BKE_group_object_exists(ptr noundef nonnull %26, ptr noundef nonnull %13) #7
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %48, label %33

33:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  %34 = call i32 @CTX_data_selected_editable_bases(ptr noundef %0, ptr noundef nonnull %3) #7
  %35 = load ptr, ptr %3, align 8, !tbaa !23
  %36 = icmp eq ptr %35, null
  br i1 %36, label %46, label %37

37:                                               ; preds = %33, %37
  %38 = phi ptr [ %44, %37 ], [ %35, %33 ]
  %39 = getelementptr inbounds %struct.CollectionPointerLink, ptr %38, i64 0, i32 2, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !24
  %41 = getelementptr inbounds %struct.Base, ptr %40, i64 0, i32 7
  %42 = load ptr, ptr %41, align 8, !tbaa !28
  %43 = call zeroext i8 @BKE_group_object_unlink(ptr noundef nonnull %26, ptr noundef %42, ptr noundef %5, ptr noundef %40) #7
  %44 = load ptr, ptr %38, align 8, !tbaa !23
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %37, !llvm.loop !66

46:                                               ; preds = %37, %33
  %47 = phi i8 [ %27, %33 ], [ 1, %37 ]
  call void @BLI_freelistN(ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  br label %48

48:                                               ; preds = %25, %30, %46
  %49 = phi i8 [ %47, %46 ], [ %27, %30 ], [ %27, %25 ]
  %50 = load ptr, ptr %26, align 8, !tbaa !23
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %25, !llvm.loop !67

52:                                               ; preds = %48
  %53 = icmp eq i8 %49, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %19, %52
  %55 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %56 = load ptr, ptr %55, align 8, !tbaa !35
  call void @BKE_report(ptr noundef %56, i32 noundef 32, ptr noundef nonnull @.str.41) #7
  br label %57

57:                                               ; preds = %54, %52
  call void @DAG_relations_tag_update(ptr noundef %4) #7
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 150994945, ptr noundef null) #7
  br label %58

58:                                               ; preds = %12, %57
  %59 = phi i32 [ 4, %57 ], [ 2, %12 ]
  ret i32 %59
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @GROUP_OT_objects_remove_all(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.10, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.11, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.12, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @group_objects_remove_all_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_objectmode, ptr %5, align 8, !tbaa !17
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @group_objects_remove_all_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #7
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  %6 = call i32 @CTX_data_selected_editable_bases(ptr noundef %0, ptr noundef nonnull %3) #7
  %7 = load ptr, ptr %3, align 8, !tbaa !23
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %2, %9
  %10 = phi ptr [ %15, %9 ], [ %7, %2 ]
  %11 = getelementptr inbounds %struct.CollectionPointerLink, ptr %10, i64 0, i32 2, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !24
  %13 = getelementptr inbounds %struct.Base, ptr %12, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !28
  call void @BKE_object_groups_clear(ptr noundef %5, ptr noundef %12, ptr noundef %14) #7
  %15 = load ptr, ptr %10, align 8, !tbaa !23
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %9, !llvm.loop !68

17:                                               ; preds = %9, %2
  call void @BLI_freelistN(ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  call void @DAG_relations_tag_update(ptr noundef %4) #7
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 150994945, ptr noundef null) #7
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GROUP_OT_objects_remove(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.13, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.14, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.15, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @group_objects_remove_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_objectmode, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !18
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !19
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.3, ptr noundef nonnull @DummyRNA_NULL_items, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.16) #7
  tail call void @RNA_def_enum_funcs(ptr noundef %10, ptr noundef nonnull @group_object_active_itemf) #7
  tail call void @RNA_def_property_flag(ptr noundef %10, i32 noundef 536870912) #7
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @group_objects_remove_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @ED_object_context(ptr noundef %0) #7
  %5 = tail call ptr @CTX_data_main(ptr noundef %0) #7
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !21
  %9 = tail call i32 @RNA_enum_get(ptr noundef %8, ptr noundef nonnull @.str.3) #7
  %10 = tail call fastcc ptr @group_object_active_find_index(ptr noundef %4, i32 noundef %9) #8
  %11 = icmp eq ptr %4, null
  br i1 %11, label %48, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.Main, ptr %5, i64 0, i32 32
  %14 = load ptr, ptr %13, align 8, !tbaa !23
  %15 = icmp eq ptr %14, null
  br i1 %15, label %48, label %16

16:                                               ; preds = %12
  %17 = icmp eq ptr %10, null
  br label %18

18:                                               ; preds = %16, %41
  %19 = phi ptr [ %14, %16 ], [ %43, %41 ]
  %20 = phi i8 [ 0, %16 ], [ %42, %41 ]
  %21 = icmp eq ptr %19, %10
  %22 = or i1 %17, %21
  br i1 %22, label %23, label %41

23:                                               ; preds = %18
  %24 = call zeroext i8 @BKE_group_object_exists(ptr noundef nonnull %19, ptr noundef nonnull %4) #7
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %41, label %26

26:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  %27 = call i32 @CTX_data_selected_editable_bases(ptr noundef %0, ptr noundef nonnull %3) #7
  %28 = load ptr, ptr %3, align 8, !tbaa !23
  %29 = icmp eq ptr %28, null
  br i1 %29, label %39, label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %28, %26 ]
  %32 = getelementptr inbounds %struct.CollectionPointerLink, ptr %31, i64 0, i32 2, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !24
  %34 = getelementptr inbounds %struct.Base, ptr %33, i64 0, i32 7
  %35 = load ptr, ptr %34, align 8, !tbaa !28
  %36 = call zeroext i8 @BKE_group_object_unlink(ptr noundef nonnull %19, ptr noundef %35, ptr noundef %6, ptr noundef %33) #7
  %37 = load ptr, ptr %31, align 8, !tbaa !23
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %30, !llvm.loop !69

39:                                               ; preds = %30, %26
  %40 = phi i8 [ %20, %26 ], [ 1, %30 ]
  call void @BLI_freelistN(ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  br label %41

41:                                               ; preds = %18, %23, %39
  %42 = phi i8 [ %40, %39 ], [ %20, %23 ], [ %20, %18 ]
  %43 = load ptr, ptr %19, align 8, !tbaa !23
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %18, !llvm.loop !70

45:                                               ; preds = %41
  %46 = icmp eq i8 %42, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %45
  call void @DAG_relations_tag_update(ptr noundef %5) #7
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 150994945, ptr noundef null) #7
  br label %48

48:                                               ; preds = %12, %45, %2, %47
  %49 = phi i32 [ 4, %47 ], [ 2, %2 ], [ 2, %45 ], [ 2, %12 ]
  ret i32 %49
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GROUP_OT_create(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.17, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.18, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.19, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @group_create_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_objectmode, ptr %5, align 8, !tbaa !17
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !18
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !19
  %9 = tail call ptr @RNA_def_string(ptr noundef %8, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.4, i32 noundef 64, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @group_create_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [64 x i8], align 16
  %4 = alloca %struct.ListBase, align 8
  %5 = tail call ptr @CTX_data_main(ptr noundef %0) #7
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #9
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !21
  call void @RNA_string_get(ptr noundef %8, ptr noundef nonnull @.str.20, ptr noundef nonnull %3) #7
  %9 = call ptr @BKE_group_add(ptr noundef %5, ptr noundef nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  %10 = call i32 @CTX_data_selected_bases(ptr noundef %0, ptr noundef nonnull %4) #7
  %11 = load ptr, ptr %4, align 8, !tbaa !23
  %12 = icmp eq ptr %11, null
  br i1 %12, label %22, label %13

13:                                               ; preds = %2, %13
  %14 = phi ptr [ %20, %13 ], [ %11, %2 ]
  %15 = getelementptr inbounds %struct.CollectionPointerLink, ptr %14, i64 0, i32 2, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !24
  %17 = getelementptr inbounds %struct.Base, ptr %16, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !28
  %19 = call zeroext i8 @BKE_group_object_add(ptr noundef %9, ptr noundef %18, ptr noundef %6, ptr noundef %16) #7
  %20 = load ptr, ptr %14, align 8, !tbaa !23
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %13, !llvm.loop !71

22:                                               ; preds = %13, %2
  call void @BLI_freelistN(ptr noundef nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  call void @DAG_relations_tag_update(ptr noundef %5) #7
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 150994945, ptr noundef null) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #9
  ret i32 4
}

; Function Attrs: optsize
declare ptr @RNA_def_string(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_group_add(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.23, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.24, ptr %2, align 8, !tbaa !14
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.25, ptr %3, align 8, !tbaa !13
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @group_add_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_objectmode, ptr %5, align 8, !tbaa !17
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @group_add_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %4 = tail call ptr @ED_object_context(ptr noundef %0) #7
  %5 = tail call ptr @CTX_data_main(ptr noundef %0) #7
  %6 = icmp eq ptr %4, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @BKE_group_add(ptr noundef %5, ptr noundef nonnull @.str.4) #7
  %9 = tail call zeroext i8 @BKE_group_object_add(ptr noundef %8, ptr noundef nonnull %4, ptr noundef %3, ptr noundef null) #7
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef nonnull %4) #7
  br label %10

10:                                               ; preds = %2, %7
  %11 = phi i32 [ 4, %7 ], [ 2, %2 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_group_link(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.26, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.27, ptr %2, align 8, !tbaa !14
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.28, ptr %3, align 8, !tbaa !13
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @group_link_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_enum_search_invoke, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_objectmode, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !18
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !19
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.3, ptr noundef nonnull @DummyRNA_NULL_items, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.29) #7
  tail call void @RNA_def_enum_funcs(ptr noundef %10, ptr noundef nonnull @RNA_group_local_itemf) #7
  tail call void @RNA_def_property_flag(ptr noundef %10, i32 noundef 536870912) #7
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @group_link_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #7
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %5 = tail call ptr @ED_object_context(ptr noundef %0) #7
  %6 = getelementptr inbounds %struct.Main, ptr %3, i64 0, i32 32
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !21
  %9 = tail call i32 @RNA_enum_get(ptr noundef %8, ptr noundef nonnull @.str.3) #7
  %10 = tail call ptr @BLI_findlink(ptr noundef nonnull %6, i32 noundef %9) #7
  %11 = icmp eq ptr %5, null
  %12 = icmp eq ptr %10, null
  %13 = select i1 %11, i1 true, i1 %12
  br i1 %13, label %25, label %14

14:                                               ; preds = %2
  %15 = tail call fastcc zeroext i8 @group_link_early_exit_check(ptr noundef nonnull %10, ptr noundef nonnull %5) #8, !range !31
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %14
  tail call void @BKE_main_id_tag_listbase(ptr noundef nonnull %6, i8 noundef zeroext 1) #7
  %18 = tail call fastcc zeroext i8 @check_object_instances_group_recursive(ptr noundef nonnull %5, ptr noundef nonnull %10) #8, !range !31
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %22 = load ptr, ptr %21, align 8, !tbaa !35
  tail call void @BKE_report(ptr noundef %22, i32 noundef 32, ptr noundef nonnull @.str.42) #7
  br label %25

23:                                               ; preds = %17
  %24 = tail call zeroext i8 @BKE_group_object_add(ptr noundef nonnull %10, ptr noundef nonnull %5, ptr noundef %4, ptr noundef null) #7
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef nonnull %5) #7
  br label %25

25:                                               ; preds = %14, %2, %23, %20
  %26 = phi i32 [ 2, %20 ], [ 4, %23 ], [ 2, %2 ], [ 4, %14 ]
  ret i32 %26
}

; Function Attrs: optsize
declare i32 @WM_enum_search_invoke(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare ptr @RNA_group_local_itemf(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_group_remove(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.30, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.31, ptr %2, align 8, !tbaa !14
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.32, ptr %3, align 8, !tbaa !13
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @group_remove_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_objectmode, ptr %5, align 8, !tbaa !17
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @group_remove_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %5 = tail call ptr @ED_object_context(ptr noundef %0) #7
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @RNA_Group) #7
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !72
  %8 = icmp ne ptr %5, null
  %9 = icmp ne ptr %7, null
  %10 = select i1 %8, i1 %9, i1 false
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call zeroext i8 @BKE_group_object_unlink(ptr noundef nonnull %7, ptr noundef nonnull %5, ptr noundef %4, ptr noundef null) #7
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef nonnull %5) #7
  br label %13

13:                                               ; preds = %2, %11
  %14 = phi i32 [ 4, %11 ], [ 2, %2 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_group_unlink(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.33, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.34, ptr %2, align 8, !tbaa !14
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.35, ptr %3, align 8, !tbaa !13
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @group_unlink_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_objectmode, ptr %5, align 8, !tbaa !17
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @group_unlink_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @RNA_Group) #7
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !72
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  call void @BKE_group_unlink(ptr noundef nonnull %5) #7
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef null) #7
  br label %8

8:                                                ; preds = %2, %7
  %9 = phi i32 [ 4, %7 ], [ 2, %2 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_grouped_select(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.36, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.37, ptr %2, align 8, !tbaa !14
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.38, ptr %3, align 8, !tbaa !13
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @select_grouped_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_objectmode, ptr %5, align 8, !tbaa !17
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @select_grouped_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca %struct.ListBase, align 8
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @RNA_Group) #7
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !72
  %7 = icmp eq ptr %6, null
  br i1 %7, label %30, label %8

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  %9 = call i32 @CTX_data_visible_bases(ptr noundef %0, ptr noundef nonnull %4) #7
  %10 = load ptr, ptr %4, align 8, !tbaa !23
  %11 = icmp eq ptr %10, null
  br i1 %11, label %29, label %12

12:                                               ; preds = %8, %26
  %13 = phi ptr [ %27, %26 ], [ %10, %8 ]
  %14 = getelementptr inbounds %struct.CollectionPointerLink, ptr %13, i64 0, i32 2, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !24
  %16 = getelementptr inbounds %struct.Base, ptr %15, i64 0, i32 4
  %17 = load i32, ptr %16, align 8, !tbaa !73
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.Base, ptr %15, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !28
  %23 = call zeroext i8 @BKE_group_object_exists(ptr noundef nonnull %6, ptr noundef %22) #7
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  call void @ED_base_object_select(ptr noundef nonnull %15, i16 noundef signext 1) #7
  br label %26

26:                                               ; preds = %25, %20, %12
  %27 = load ptr, ptr %13, align 8, !tbaa !23
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %12, !llvm.loop !74

29:                                               ; preds = %26, %8
  call void @BLI_freelistN(ptr noundef nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef null) #7
  br label %30

30:                                               ; preds = %2, %29
  %31 = phi i32 [ 4, %29 ], [ 2, %2 ]
  ret i32 %31
}

; Function Attrs: optsize
declare ptr @ED_object_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @group_object_active_find_index(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi ptr [ null, %2 ], [ %6, %3 ]
  %5 = phi i32 [ 0, %2 ], [ %10, %3 ]
  %6 = tail call ptr @BKE_group_object_find(ptr noundef %4, ptr noundef %0) #7
  %7 = icmp eq ptr %6, null
  %8 = icmp eq i32 %5, %1
  %9 = select i1 %7, i1 true, i1 %8
  %10 = add nuw nsw i32 %5, 1
  br i1 %9, label %11, label %3, !llvm.loop !75

11:                                               ; preds = %3
  ret ptr %6
}

; Function Attrs: optsize
declare zeroext i8 @BKE_group_object_exists(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_main_id_tag_listbase(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CTX_data_selected_editable_bases(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @group_link_early_exit_check(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.Group, ptr %0, i64 0, i32 1
  br label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ %3, %2 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !23
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.GroupObject, ptr %6, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !76
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %12, label %4, !llvm.loop !78

12:                                               ; preds = %4, %8
  %13 = phi i8 [ 1, %8 ], [ 0, %4 ]
  ret i8 %13
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @check_object_instances_group_recursive(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 112
  %4 = load ptr, ptr %3, align 8, !tbaa !79
  %5 = icmp eq ptr %4, null
  br i1 %5, label %28, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 5
  %8 = load i16, ptr %7, align 2, !tbaa !82
  %9 = and i16 %8, 1024
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %28, label %11

11:                                               ; preds = %6
  %12 = and i16 %8, -1025
  store i16 %12, ptr %7, align 2, !tbaa !82
  %13 = icmp eq ptr %4, %1
  br i1 %13, label %28, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.Group, ptr %4, i64 0, i32 1
  br label %16

16:                                               ; preds = %20, %14
  %17 = phi ptr [ %15, %14 ], [ %18, %20 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !23
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.GroupObject, ptr %18, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !76
  %23 = tail call fastcc zeroext i8 @check_object_instances_group_recursive(ptr noundef %22, ptr noundef %1) #8, !range !31
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %16, label %28, !llvm.loop !84

25:                                               ; preds = %16
  %26 = load i16, ptr %7, align 2, !tbaa !82
  %27 = or i16 %26, 1024
  store i16 %27, ptr %7, align 2, !tbaa !82
  br label %28

28:                                               ; preds = %20, %11, %6, %2, %25
  %29 = phi i8 [ 0, %25 ], [ 0, %2 ], [ 1, %6 ], [ 1, %11 ], [ 1, %20 ]
  ret i8 %29
}

; Function Attrs: optsize
declare zeroext i8 @BKE_group_object_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DAG_relations_tag_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_group_object_find(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: optsize
declare void @RNA_enum_item_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_enum_item_add_separator(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_enum_item_end(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BKE_group_object_unlink(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_object_groups_clear(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_string_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_group_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CTX_data_selected_bases(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CTX_data_pointer_get_type(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_group_unlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CTX_data_visible_bases(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_base_object_select(ptr noundef, i16 noundef signext) local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }
attributes #9 = { nounwind }

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
!13 = !{!6, !7, i64 24}
!14 = !{!6, !7, i64 8}
!15 = !{!6, !7, i64 32}
!16 = !{!6, !7, i64 48}
!17 = !{!6, !7, i64 72}
!18 = !{!6, !12, i64 184}
!19 = !{!6, !7, i64 88}
!20 = !{!6, !7, i64 104}
!21 = !{!22, !7, i64 112}
!22 = !{!"wmOperator", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !10, i64 128, !7, i64 144, !7, i64 152, !12, i64 160, !8, i64 162}
!23 = !{!7, !7, i64 0}
!24 = !{!25, !7, i64 32}
!25 = !{!"CollectionPointerLink", !7, i64 0, !7, i64 8, !26, i64 16}
!26 = !{!"PointerRNA", !27, i64 0, !7, i64 8, !7, i64 16}
!27 = !{!"", !7, i64 0}
!28 = !{!29, !7, i64 32}
!29 = !{!"Base", !7, i64 0, !7, i64 8, !30, i64 16, !30, i64 20, !30, i64 24, !12, i64 28, !12, i64 30, !7, i64 32}
!30 = !{!"int", !8, i64 0}
!31 = !{i8 0, i8 2}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.mustprogress"}
!34 = distinct !{!34, !33}
!35 = !{!22, !7, i64 120}
!36 = !{!30, !30, i64 0}
!37 = distinct !{!37, !33}
!38 = !{!39, !7, i64 24}
!39 = !{!"EnumPropertyItem", !30, i64 0, !7, i64 8, !30, i64 16, !7, i64 24, !7, i64 32}
!40 = !{!39, !7, i64 8}
!41 = !{!39, !30, i64 0}
!42 = distinct !{!42, !33}
!43 = !{!8, !8, i64 0}
!44 = !{!45, !7, i64 168}
!45 = !{!"Scene", !46, i64 0, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !10, i64 152, !7, i64 168, !7, i64 176, !8, i64 184, !8, i64 196, !8, i64 208, !8, i64 220, !30, i64 232, !30, i64 236, !30, i64 240, !12, i64 244, !8, i64 246, !8, i64 247, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !47, i64 280, !57, i64 4264, !10, i64 4296, !10, i64 4312, !7, i64 4328, !7, i64 4336, !7, i64 4344, !7, i64 4352, !7, i64 4360, !7, i64 4368, !12, i64 4376, !12, i64 4378, !30, i64 4380, !10, i64 4384, !58, i64 4400, !59, i64 4416, !62, i64 4600, !7, i64 4608, !63, i64 4616, !7, i64 4640, !64, i64 4648, !64, i64 4656, !50, i64 4664, !51, i64 4824, !65, i64 4888, !7, i64 4952}
!46 = !{!"ID", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !12, i64 98, !30, i64 100, !30, i64 104, !30, i64 108, !7, i64 112}
!47 = !{!"RenderData", !48, i64 0, !7, i64 248, !7, i64 256, !52, i64 264, !53, i64 328, !30, i64 400, !30, i64 404, !30, i64 408, !49, i64 412, !30, i64 416, !30, i64 420, !30, i64 424, !30, i64 428, !12, i64 432, !12, i64 434, !49, i64 436, !49, i64 440, !49, i64 444, !49, i64 448, !49, i64 452, !12, i64 456, !12, i64 458, !12, i64 460, !12, i64 462, !12, i64 464, !12, i64 466, !30, i64 468, !12, i64 472, !12, i64 474, !12, i64 476, !12, i64 478, !12, i64 480, !12, i64 482, !30, i64 484, !30, i64 488, !12, i64 492, !12, i64 494, !30, i64 496, !30, i64 500, !12, i64 504, !12, i64 506, !12, i64 508, !12, i64 510, !12, i64 512, !8, i64 514, !8, i64 515, !30, i64 516, !30, i64 520, !30, i64 524, !12, i64 528, !12, i64 530, !12, i64 532, !12, i64 534, !12, i64 536, !12, i64 538, !12, i64 540, !12, i64 542, !54, i64 544, !54, i64 560, !55, i64 576, !10, i64 592, !12, i64 608, !12, i64 610, !49, i64 612, !49, i64 616, !49, i64 620, !49, i64 624, !30, i64 628, !49, i64 632, !49, i64 636, !49, i64 640, !49, i64 644, !12, i64 648, !12, i64 650, !12, i64 652, !12, i64 654, !12, i64 656, !12, i64 658, !49, i64 660, !49, i64 664, !12, i64 668, !12, i64 670, !49, i64 672, !49, i64 676, !8, i64 680, !30, i64 1704, !12, i64 1708, !12, i64 1710, !8, i64 1712, !8, i64 2480, !8, i64 2496, !8, i64 2512, !8, i64 2513, !8, i64 2514, !8, i64 2515, !30, i64 2520, !12, i64 2524, !12, i64 2526, !49, i64 2528, !49, i64 2532, !12, i64 2536, !12, i64 2538, !49, i64 2540, !12, i64 2544, !12, i64 2546, !30, i64 2548, !12, i64 2552, !12, i64 2554, !12, i64 2556, !12, i64 2558, !49, i64 2560, !49, i64 2564, !7, i64 2568, !30, i64 2576, !49, i64 2580, !8, i64 2584, !56, i64 2616, !30, i64 3976, !30, i64 3980}
!48 = !{!"ImageFormatData", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !12, i64 8, !12, i64 10, !49, i64 12, !8, i64 16, !8, i64 17, !8, i64 18, !50, i64 24, !51, i64 184}
!49 = !{!"float", !8, i64 0}
!50 = !{!"ColorManagedViewSettings", !30, i64 0, !30, i64 4, !8, i64 8, !8, i64 72, !49, i64 136, !49, i64 140, !7, i64 144, !7, i64 152}
!51 = !{!"ColorManagedDisplaySettings", !8, i64 0}
!52 = !{!"QuicktimeCodecSettings", !30, i64 0, !30, i64 4, !30, i64 8, !30, i64 12, !30, i64 16, !30, i64 20, !30, i64 24, !30, i64 28, !30, i64 32, !30, i64 36, !30, i64 40, !30, i64 44, !12, i64 48, !12, i64 50, !30, i64 52, !30, i64 56, !30, i64 60}
!53 = !{!"FFMpegCodecData", !30, i64 0, !30, i64 4, !30, i64 8, !30, i64 12, !30, i64 16, !30, i64 20, !30, i64 24, !30, i64 28, !49, i64 32, !30, i64 36, !30, i64 40, !30, i64 44, !30, i64 48, !30, i64 52, !30, i64 56, !30, i64 60, !7, i64 64}
!54 = !{!"rctf", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12}
!55 = !{!"rcti", !30, i64 0, !30, i64 4, !30, i64 8, !30, i64 12}
!56 = !{!"BakeData", !48, i64 0, !8, i64 248, !12, i64 1272, !12, i64 1274, !12, i64 1276, !12, i64 1278, !49, i64 1280, !49, i64 1284, !8, i64 1288, !8, i64 1291, !8, i64 1292, !8, i64 1293, !8, i64 1296}
!57 = !{!"AudioData", !30, i64 0, !49, i64 4, !49, i64 8, !49, i64 12, !30, i64 16, !12, i64 20, !12, i64 22, !49, i64 24, !49, i64 28}
!58 = !{!"GameFraming", !8, i64 0, !8, i64 12, !8, i64 13, !8, i64 14, !8, i64 15}
!59 = !{!"GameData", !58, i64 0, !12, i64 16, !12, i64 18, !12, i64 20, !12, i64 22, !12, i64 24, !12, i64 26, !12, i64 28, !12, i64 30, !12, i64 32, !8, i64 34, !60, i64 40, !12, i64 64, !12, i64 66, !49, i64 68, !61, i64 72, !49, i64 128, !49, i64 132, !30, i64 136, !12, i64 140, !12, i64 142, !12, i64 144, !12, i64 146, !12, i64 148, !12, i64 150, !12, i64 152, !12, i64 154, !12, i64 156, !12, i64 158, !12, i64 160, !12, i64 162, !49, i64 164, !49, i64 168, !49, i64 172, !49, i64 176, !49, i64 180}
!60 = !{!"GameDome", !12, i64 0, !12, i64 2, !12, i64 4, !12, i64 6, !49, i64 8, !49, i64 12, !7, i64 16}
!61 = !{!"RecastData", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12, !49, i64 16, !49, i64 20, !49, i64 24, !49, i64 28, !49, i64 32, !49, i64 36, !30, i64 40, !49, i64 44, !49, i64 48, !12, i64 52, !12, i64 54}
!62 = !{!"UnitSettings", !49, i64 0, !8, i64 4, !8, i64 5, !12, i64 6}
!63 = !{!"PhysicsSettings", !8, i64 0, !30, i64 12, !30, i64 16, !30, i64 20}
!64 = !{!"long", !8, i64 0}
!65 = !{!"ColorManagedColorspaceSettings", !8, i64 0}
!66 = distinct !{!66, !33}
!67 = distinct !{!67, !33}
!68 = distinct !{!68, !33}
!69 = distinct !{!69, !33}
!70 = distinct !{!70, !33}
!71 = distinct !{!71, !33}
!72 = !{!26, !7, i64 16}
!73 = !{!29, !30, i64 24}
!74 = distinct !{!74, !33}
!75 = distinct !{!75, !33}
!76 = !{!77, !7, i64 16}
!77 = !{!"GroupObject", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !12, i64 32, !8, i64 34}
!78 = distinct !{!78, !33}
!79 = !{!80, !7, i64 1256}
!80 = !{!"Object", !46, i64 0, !7, i64 120, !7, i64 128, !12, i64 136, !12, i64 138, !30, i64 140, !30, i64 144, !30, i64 148, !8, i64 152, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288, !7, i64 296, !7, i64 304, !81, i64 312, !7, i64 360, !10, i64 368, !10, i64 384, !10, i64 400, !10, i64 416, !30, i64 432, !30, i64 436, !7, i64 440, !7, i64 448, !30, i64 456, !30, i64 460, !8, i64 464, !8, i64 476, !8, i64 488, !8, i64 500, !8, i64 512, !8, i64 524, !8, i64 536, !8, i64 548, !8, i64 560, !8, i64 576, !8, i64 592, !8, i64 604, !49, i64 616, !49, i64 620, !8, i64 624, !8, i64 688, !8, i64 752, !8, i64 816, !8, i64 880, !30, i64 944, !12, i64 948, !12, i64 950, !12, i64 952, !12, i64 954, !12, i64 956, !12, i64 958, !12, i64 960, !12, i64 962, !12, i64 964, !8, i64 966, !8, i64 967, !30, i64 968, !30, i64 972, !30, i64 976, !30, i64 980, !30, i64 984, !49, i64 988, !49, i64 992, !49, i64 996, !49, i64 1000, !49, i64 1004, !49, i64 1008, !49, i64 1012, !49, i64 1016, !49, i64 1020, !49, i64 1024, !49, i64 1028, !49, i64 1032, !12, i64 1036, !12, i64 1038, !12, i64 1040, !8, i64 1042, !8, i64 1043, !12, i64 1044, !8, i64 1046, !8, i64 1047, !49, i64 1048, !49, i64 1052, !10, i64 1056, !10, i64 1072, !10, i64 1088, !10, i64 1104, !49, i64 1120, !12, i64 1124, !12, i64 1126, !8, i64 1128, !30, i64 1144, !30, i64 1148, !7, i64 1152, !8, i64 1160, !8, i64 1161, !12, i64 1162, !8, i64 1164, !10, i64 1176, !10, i64 1192, !10, i64 1208, !10, i64 1224, !7, i64 1240, !7, i64 1248, !7, i64 1256, !8, i64 1264, !8, i64 1265, !12, i64 1266, !49, i64 1268, !7, i64 1272, !7, i64 1280, !7, i64 1288, !7, i64 1296, !64, i64 1304, !64, i64 1312, !30, i64 1320, !30, i64 1324, !10, i64 1328, !10, i64 1344, !7, i64 1360, !7, i64 1368, !7, i64 1376, !8, i64 1384, !7, i64 1392, !10, i64 1400, !7, i64 1416}
!81 = !{!"bAnimVizSettings", !30, i64 0, !30, i64 4, !30, i64 8, !30, i64 12, !12, i64 16, !12, i64 18, !12, i64 20, !12, i64 22, !12, i64 24, !12, i64 26, !12, i64 28, !12, i64 30, !30, i64 32, !30, i64 36, !30, i64 40, !30, i64 44}
!82 = !{!83, !12, i64 98}
!83 = !{!"Group", !46, i64 0, !10, i64 120, !30, i64 136, !8, i64 140}
!84 = distinct !{!84, !33}
