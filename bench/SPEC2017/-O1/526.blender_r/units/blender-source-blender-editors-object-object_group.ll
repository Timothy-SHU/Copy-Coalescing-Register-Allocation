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
%struct.Group = type { %struct.ID, %struct.ListBase, i32, [3 x float] }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.CollectionPointerLink = type { ptr, ptr, %struct.PointerRNA }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.GroupObject = type { ptr, ptr, ptr, ptr, i16, [6 x i8] }
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

; Function Attrs: nounwind uwtable
define dso_local void @GROUP_OT_objects_add_active(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.1, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @objects_add_active_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_objectmode, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.3, ptr noundef nonnull @DummyRNA_NULL_items, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #6
  tail call void @RNA_def_enum_funcs(ptr noundef %10, ptr noundef nonnull @group_object_active_itemf) #6
  tail call void @RNA_def_property_flag(ptr noundef %10, i32 noundef 536870912) #6
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @objects_add_active_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @ED_object_context(ptr noundef %0) #6
  %5 = tail call ptr @CTX_data_main(ptr noundef %0) #6
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !50
  %9 = tail call i32 @RNA_enum_get(ptr noundef %8, ptr noundef nonnull @.str.3) #6
  br label %10

10:                                               ; preds = %10, %2
  %11 = phi ptr [ null, %2 ], [ %13, %10 ]
  %12 = phi i32 [ 0, %2 ], [ %17, %10 ]
  %13 = tail call ptr @BKE_group_object_find(ptr noundef %11, ptr noundef %4) #6
  %14 = icmp eq ptr %13, null
  %15 = icmp eq i32 %12, %9
  %16 = select i1 %14, i1 true, i1 %15
  %17 = add nuw nsw i32 %12, 1
  br i1 %16, label %18, label %10, !llvm.loop !52

18:                                               ; preds = %10
  %19 = icmp eq ptr %4, null
  br i1 %19, label %86, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.Main, ptr %5, i64 0, i32 32
  %22 = load ptr, ptr %21, align 8, !tbaa !55
  %23 = icmp eq ptr %22, null
  br i1 %23, label %78, label %24

24:                                               ; preds = %20, %70
  %25 = phi ptr [ %73, %70 ], [ %22, %20 ]
  %26 = phi i8 [ %72, %70 ], [ 0, %20 ]
  %27 = phi i8 [ %71, %70 ], [ 0, %20 ]
  %28 = icmp eq ptr %25, %13
  %29 = or i1 %14, %28
  br i1 %29, label %30, label %70

30:                                               ; preds = %24
  %31 = call zeroext i8 @BKE_group_object_exists(ptr noundef nonnull %25, ptr noundef nonnull %4) #6
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %70, label %33

33:                                               ; preds = %30
  call void @BKE_main_id_tag_listbase(ptr noundef nonnull %21, i8 noundef zeroext 1) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  %34 = call i32 @CTX_data_selected_editable_bases(ptr noundef %0, ptr noundef nonnull %3) #6
  %35 = load ptr, ptr %3, align 8, !tbaa !55
  %36 = icmp eq ptr %35, null
  br i1 %36, label %67, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.Group, ptr %25, i64 0, i32 1
  br label %39

39:                                               ; preds = %37, %62
  %40 = phi ptr [ %35, %37 ], [ %65, %62 ]
  %41 = phi i8 [ %26, %37 ], [ %64, %62 ]
  %42 = phi i8 [ %27, %37 ], [ %63, %62 ]
  %43 = getelementptr inbounds %struct.CollectionPointerLink, ptr %40, i64 0, i32 2, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !56
  %45 = getelementptr inbounds %struct.Base, ptr %44, i64 0, i32 7
  %46 = load ptr, ptr %45, align 8, !tbaa !60
  br label %47

47:                                               ; preds = %51, %39
  %48 = phi ptr [ %38, %39 ], [ %49, %51 ]
  %49 = load ptr, ptr %48, align 8, !tbaa !55
  %50 = icmp eq ptr %49, null
  br i1 %50, label %56, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.GroupObject, ptr %49, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !63
  %54 = icmp eq ptr %53, %46
  br i1 %54, label %55, label %47, !llvm.loop !65

55:                                               ; preds = %51
  br i1 %50, label %56, label %62

56:                                               ; preds = %47, %55
  %57 = call fastcc zeroext i8 @check_object_instances_group_recursive(ptr noundef %46, ptr noundef nonnull %25), !range !66
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load ptr, ptr %45, align 8, !tbaa !60
  %61 = call zeroext i8 @BKE_group_object_add(ptr noundef nonnull %25, ptr noundef %60, ptr noundef %6, ptr noundef %44) #6
  br label %62

62:                                               ; preds = %59, %56, %55
  %63 = phi i8 [ %42, %55 ], [ %42, %59 ], [ 1, %56 ]
  %64 = phi i8 [ %41, %55 ], [ 1, %59 ], [ %41, %56 ]
  %65 = load ptr, ptr %40, align 8, !tbaa !55
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %39, !llvm.loop !67

67:                                               ; preds = %62, %33
  %68 = phi i8 [ %27, %33 ], [ %63, %62 ]
  %69 = phi i8 [ %26, %33 ], [ %64, %62 ]
  call void @BLI_freelistN(ptr noundef nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  br label %70

70:                                               ; preds = %24, %30, %67
  %71 = phi i8 [ %68, %67 ], [ %27, %30 ], [ %27, %24 ]
  %72 = phi i8 [ %69, %67 ], [ %26, %30 ], [ %26, %24 ]
  %73 = load ptr, ptr %25, align 8, !tbaa !55
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %24, !llvm.loop !68

75:                                               ; preds = %70
  %76 = icmp eq i8 %71, 0
  %77 = icmp eq i8 %72, 0
  br label %78

78:                                               ; preds = %75, %20
  %79 = phi i1 [ true, %20 ], [ %76, %75 ]
  %80 = phi i1 [ true, %20 ], [ %77, %75 ]
  br i1 %79, label %84, label %81

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %83 = load ptr, ptr %82, align 8, !tbaa !69
  call void @BKE_report(ptr noundef %83, i32 noundef 16, ptr noundef nonnull @.str.39) #6
  br label %84

84:                                               ; preds = %81, %78
  br i1 %80, label %86, label %85

85:                                               ; preds = %84
  call void @DAG_relations_tag_update(ptr noundef %5) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 150994945, ptr noundef null) #6
  br label %86

86:                                               ; preds = %84, %18, %85
  %87 = phi i32 [ 4, %85 ], [ 2, %18 ], [ 2, %84 ]
  ret i32 %87
}

declare i32 @WM_menu_invoke(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @ED_operator_objectmode(ptr noundef) #2

declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_def_enum_funcs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @group_object_active_itemf(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct.EnumPropertyItem, align 8
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  store ptr null, ptr %5, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %6, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #6
  store i32 0, ptr %7, align 4, !tbaa !70
  %8 = icmp eq ptr %0, null
  br i1 %8, label %38, label %9

9:                                                ; preds = %4
  %10 = tail call ptr @ED_object_context(ptr noundef nonnull %0) #6
  %11 = icmp eq ptr %10, null
  br i1 %11, label %36, label %12

12:                                               ; preds = %9, %12
  %13 = phi ptr [ %15, %12 ], [ null, %9 ]
  %14 = phi i32 [ %17, %12 ], [ 0, %9 ]
  %15 = tail call ptr @BKE_group_object_find(ptr noundef %13, ptr noundef nonnull %10) #6
  %16 = icmp eq ptr %15, null
  %17 = add nuw nsw i32 %14, 1
  br i1 %16, label %18, label %12, !llvm.loop !71

18:                                               ; preds = %12
  %19 = icmp ugt i32 %14, 1
  br i1 %19, label %20, label %23

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.EnumPropertyItem, ptr %6, i64 0, i32 3
  store ptr @.str.40, ptr %21, align 8, !tbaa !72
  %22 = getelementptr inbounds %struct.EnumPropertyItem, ptr %6, i64 0, i32 1
  store ptr @.str.40, ptr %22, align 8, !tbaa !74
  store i32 2147483647, ptr %6, align 8, !tbaa !75
  call void @RNA_enum_item_add(ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull %6) #6
  call void @RNA_enum_item_add_separator(ptr noundef nonnull %5, ptr noundef nonnull %7) #6
  br label %23

23:                                               ; preds = %20, %18
  %24 = call ptr @BKE_group_object_find(ptr noundef null, ptr noundef nonnull %10) #6
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
  store ptr %32, ptr %27, align 8, !tbaa !72
  store ptr %32, ptr %28, align 8, !tbaa !74
  store i32 %31, ptr %6, align 8, !tbaa !75
  call void @RNA_enum_item_add(ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull %6) #6
  %33 = add nuw nsw i32 %31, 1
  %34 = call ptr @BKE_group_object_find(ptr noundef nonnull %30, ptr noundef nonnull %10) #6
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %29, !llvm.loop !76

36:                                               ; preds = %29, %23, %9
  call void @RNA_enum_item_end(ptr noundef nonnull %5, ptr noundef nonnull %7) #6
  store i8 1, ptr %3, align 1, !tbaa !77
  %37 = load ptr, ptr %5, align 8, !tbaa !55
  br label %38

38:                                               ; preds = %4, %36
  %39 = phi ptr [ %37, %36 ], [ @DummyRNA_NULL_items, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  ret ptr %39
}

declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @GROUP_OT_objects_remove_active(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.6, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.7, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.8, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @objects_remove_active_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_objectmode, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.3, ptr noundef nonnull @DummyRNA_NULL_items, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.9) #6
  tail call void @RNA_def_enum_funcs(ptr noundef %10, ptr noundef nonnull @group_object_active_itemf) #6
  tail call void @RNA_def_property_flag(ptr noundef %10, i32 noundef 536870912) #6
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !49
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @objects_remove_active_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #6
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %6 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !78
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Base, ptr %7, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !60
  br label %12

12:                                               ; preds = %2, %9
  %13 = phi ptr [ %11, %9 ], [ null, %2 ]
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !50
  %16 = tail call i32 @RNA_enum_get(ptr noundef %15, ptr noundef nonnull @.str.3) #6
  br label %17

17:                                               ; preds = %17, %12
  %18 = phi ptr [ null, %12 ], [ %20, %17 ]
  %19 = phi i32 [ 0, %12 ], [ %24, %17 ]
  %20 = tail call ptr @BKE_group_object_find(ptr noundef %18, ptr noundef %13) #6
  %21 = icmp eq ptr %20, null
  %22 = icmp eq i32 %19, %16
  %23 = select i1 %21, i1 true, i1 %22
  %24 = add nuw nsw i32 %19, 1
  br i1 %23, label %25, label %17, !llvm.loop !52

25:                                               ; preds = %17
  %26 = icmp eq ptr %13, null
  br i1 %26, label %64, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 32
  %29 = load ptr, ptr %28, align 8, !tbaa !55
  %30 = icmp eq ptr %29, null
  br i1 %30, label %60, label %31

31:                                               ; preds = %27, %54
  %32 = phi ptr [ %56, %54 ], [ %29, %27 ]
  %33 = phi i8 [ %55, %54 ], [ 0, %27 ]
  %34 = icmp eq ptr %32, %20
  %35 = or i1 %21, %34
  br i1 %35, label %36, label %54

36:                                               ; preds = %31
  %37 = call zeroext i8 @BKE_group_object_exists(ptr noundef nonnull %32, ptr noundef nonnull %13) #6
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %54, label %39

39:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  %40 = call i32 @CTX_data_selected_editable_bases(ptr noundef %0, ptr noundef nonnull %3) #6
  %41 = load ptr, ptr %3, align 8, !tbaa !55
  %42 = icmp eq ptr %41, null
  br i1 %42, label %52, label %43

43:                                               ; preds = %39, %43
  %44 = phi ptr [ %50, %43 ], [ %41, %39 ]
  %45 = getelementptr inbounds %struct.CollectionPointerLink, ptr %44, i64 0, i32 2, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !56
  %47 = getelementptr inbounds %struct.Base, ptr %46, i64 0, i32 7
  %48 = load ptr, ptr %47, align 8, !tbaa !60
  %49 = call zeroext i8 @BKE_group_object_unlink(ptr noundef nonnull %32, ptr noundef %48, ptr noundef %5, ptr noundef %46) #6
  %50 = load ptr, ptr %44, align 8, !tbaa !55
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %43, !llvm.loop !100

52:                                               ; preds = %43, %39
  %53 = phi i8 [ %33, %39 ], [ 1, %43 ]
  call void @BLI_freelistN(ptr noundef nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  br label %54

54:                                               ; preds = %31, %36, %52
  %55 = phi i8 [ %53, %52 ], [ %33, %36 ], [ %33, %31 ]
  %56 = load ptr, ptr %32, align 8, !tbaa !55
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %31, !llvm.loop !101

58:                                               ; preds = %54
  %59 = icmp eq i8 %55, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %27, %58
  %61 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %62 = load ptr, ptr %61, align 8, !tbaa !69
  call void @BKE_report(ptr noundef %62, i32 noundef 32, ptr noundef nonnull @.str.41) #6
  br label %63

63:                                               ; preds = %60, %58
  call void @DAG_relations_tag_update(ptr noundef %4) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 150994945, ptr noundef null) #6
  br label %64

64:                                               ; preds = %25, %63
  %65 = phi i32 [ 4, %63 ], [ 2, %25 ]
  ret i32 %65
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @GROUP_OT_objects_remove_all(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.10, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.11, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.12, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @group_objects_remove_all_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_objectmode, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !47
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @group_objects_remove_all_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #6
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  %6 = call i32 @CTX_data_selected_editable_bases(ptr noundef %0, ptr noundef nonnull %3) #6
  %7 = load ptr, ptr %3, align 8, !tbaa !55
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %2, %9
  %10 = phi ptr [ %15, %9 ], [ %7, %2 ]
  %11 = getelementptr inbounds %struct.CollectionPointerLink, ptr %10, i64 0, i32 2, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !56
  %13 = getelementptr inbounds %struct.Base, ptr %12, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !60
  call void @BKE_object_groups_clear(ptr noundef %5, ptr noundef %12, ptr noundef %14) #6
  %15 = load ptr, ptr %10, align 8, !tbaa !55
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %9, !llvm.loop !102

17:                                               ; preds = %9, %2
  call void @BLI_freelistN(ptr noundef nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  call void @DAG_relations_tag_update(ptr noundef %4) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 150994945, ptr noundef null) #6
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @GROUP_OT_objects_remove(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.13, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.14, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.15, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @group_objects_remove_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_objectmode, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.3, ptr noundef nonnull @DummyRNA_NULL_items, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.16) #6
  tail call void @RNA_def_enum_funcs(ptr noundef %10, ptr noundef nonnull @group_object_active_itemf) #6
  tail call void @RNA_def_property_flag(ptr noundef %10, i32 noundef 536870912) #6
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !49
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @group_objects_remove_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @ED_object_context(ptr noundef %0) #6
  %5 = tail call ptr @CTX_data_main(ptr noundef %0) #6
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !50
  %9 = tail call i32 @RNA_enum_get(ptr noundef %8, ptr noundef nonnull @.str.3) #6
  br label %10

10:                                               ; preds = %10, %2
  %11 = phi ptr [ null, %2 ], [ %13, %10 ]
  %12 = phi i32 [ 0, %2 ], [ %17, %10 ]
  %13 = tail call ptr @BKE_group_object_find(ptr noundef %11, ptr noundef %4) #6
  %14 = icmp eq ptr %13, null
  %15 = icmp eq i32 %12, %9
  %16 = select i1 %14, i1 true, i1 %15
  %17 = add nuw nsw i32 %12, 1
  br i1 %16, label %18, label %10, !llvm.loop !52

18:                                               ; preds = %10
  %19 = icmp eq ptr %4, null
  br i1 %19, label %54, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.Main, ptr %5, i64 0, i32 32
  %22 = load ptr, ptr %21, align 8, !tbaa !55
  %23 = icmp eq ptr %22, null
  br i1 %23, label %54, label %24

24:                                               ; preds = %20, %47
  %25 = phi ptr [ %49, %47 ], [ %22, %20 ]
  %26 = phi i8 [ %48, %47 ], [ 0, %20 ]
  %27 = icmp eq ptr %25, %13
  %28 = or i1 %14, %27
  br i1 %28, label %29, label %47

29:                                               ; preds = %24
  %30 = call zeroext i8 @BKE_group_object_exists(ptr noundef nonnull %25, ptr noundef nonnull %4) #6
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %47, label %32

32:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  %33 = call i32 @CTX_data_selected_editable_bases(ptr noundef %0, ptr noundef nonnull %3) #6
  %34 = load ptr, ptr %3, align 8, !tbaa !55
  %35 = icmp eq ptr %34, null
  br i1 %35, label %45, label %36

36:                                               ; preds = %32, %36
  %37 = phi ptr [ %43, %36 ], [ %34, %32 ]
  %38 = getelementptr inbounds %struct.CollectionPointerLink, ptr %37, i64 0, i32 2, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !56
  %40 = getelementptr inbounds %struct.Base, ptr %39, i64 0, i32 7
  %41 = load ptr, ptr %40, align 8, !tbaa !60
  %42 = call zeroext i8 @BKE_group_object_unlink(ptr noundef nonnull %25, ptr noundef %41, ptr noundef %6, ptr noundef %39) #6
  %43 = load ptr, ptr %37, align 8, !tbaa !55
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %36, !llvm.loop !103

45:                                               ; preds = %36, %32
  %46 = phi i8 [ %26, %32 ], [ 1, %36 ]
  call void @BLI_freelistN(ptr noundef nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  br label %47

47:                                               ; preds = %24, %29, %45
  %48 = phi i8 [ %46, %45 ], [ %26, %29 ], [ %26, %24 ]
  %49 = load ptr, ptr %25, align 8, !tbaa !55
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %24, !llvm.loop !104

51:                                               ; preds = %47
  %52 = icmp eq i8 %48, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %51
  call void @DAG_relations_tag_update(ptr noundef %5) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 150994945, ptr noundef null) #6
  br label %54

54:                                               ; preds = %20, %51, %18, %53
  %55 = phi i32 [ 4, %53 ], [ 2, %18 ], [ 2, %51 ], [ 2, %20 ]
  ret i32 %55
}

; Function Attrs: nounwind uwtable
define dso_local void @GROUP_OT_create(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.17, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.18, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.19, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @group_create_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_objectmode, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !47
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = tail call ptr @RNA_def_string(ptr noundef %8, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.4, i32 noundef 64, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @group_create_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [64 x i8], align 16
  %4 = alloca %struct.ListBase, align 8
  %5 = tail call ptr @CTX_data_main(ptr noundef %0) #6
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #6
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !50
  call void @RNA_string_get(ptr noundef %8, ptr noundef nonnull @.str.20, ptr noundef nonnull %3) #6
  %9 = call ptr @BKE_group_add(ptr noundef %5, ptr noundef nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6
  %10 = call i32 @CTX_data_selected_bases(ptr noundef %0, ptr noundef nonnull %4) #6
  %11 = load ptr, ptr %4, align 8, !tbaa !55
  %12 = icmp eq ptr %11, null
  br i1 %12, label %22, label %13

13:                                               ; preds = %2, %13
  %14 = phi ptr [ %20, %13 ], [ %11, %2 ]
  %15 = getelementptr inbounds %struct.CollectionPointerLink, ptr %14, i64 0, i32 2, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !56
  %17 = getelementptr inbounds %struct.Base, ptr %16, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !60
  %19 = call zeroext i8 @BKE_group_object_add(ptr noundef %9, ptr noundef %18, ptr noundef %6, ptr noundef %16) #6
  %20 = load ptr, ptr %14, align 8, !tbaa !55
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %13, !llvm.loop !105

22:                                               ; preds = %13, %2
  call void @BLI_freelistN(ptr noundef nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6
  call void @DAG_relations_tag_update(ptr noundef %5) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 150994945, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #6
  ret i32 4
}

declare ptr @RNA_def_string(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_group_add(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.23, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.24, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.25, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @group_add_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_objectmode, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !47
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @group_add_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %4 = tail call ptr @ED_object_context(ptr noundef %0) #6
  %5 = tail call ptr @CTX_data_main(ptr noundef %0) #6
  %6 = icmp eq ptr %4, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @BKE_group_add(ptr noundef %5, ptr noundef nonnull @.str.4) #6
  %9 = tail call zeroext i8 @BKE_group_object_add(ptr noundef %8, ptr noundef nonnull %4, ptr noundef %3, ptr noundef null) #6
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef nonnull %4) #6
  br label %10

10:                                               ; preds = %2, %7
  %11 = phi i32 [ 4, %7 ], [ 2, %2 ]
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_group_link(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.26, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.27, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.28, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @group_link_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_enum_search_invoke, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_objectmode, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.3, ptr noundef nonnull @DummyRNA_NULL_items, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.29) #6
  tail call void @RNA_def_enum_funcs(ptr noundef %10, ptr noundef nonnull @RNA_group_local_itemf) #6
  tail call void @RNA_def_property_flag(ptr noundef %10, i32 noundef 536870912) #6
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !49
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @group_link_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #6
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %5 = tail call ptr @ED_object_context(ptr noundef %0) #6
  %6 = getelementptr inbounds %struct.Main, ptr %3, i64 0, i32 32
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !50
  %9 = tail call i32 @RNA_enum_get(ptr noundef %8, ptr noundef nonnull @.str.3) #6
  %10 = tail call ptr @BLI_findlink(ptr noundef nonnull %6, i32 noundef %9) #6
  %11 = icmp eq ptr %5, null
  %12 = icmp eq ptr %10, null
  %13 = select i1 %11, i1 true, i1 %12
  br i1 %13, label %33, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.Group, ptr %10, i64 0, i32 1
  br label %16

16:                                               ; preds = %20, %14
  %17 = phi ptr [ %15, %14 ], [ %18, %20 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !55
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.GroupObject, ptr %18, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !63
  %23 = icmp eq ptr %22, %5
  br i1 %23, label %24, label %16, !llvm.loop !65

24:                                               ; preds = %20
  br i1 %19, label %25, label %33

25:                                               ; preds = %16, %24
  tail call void @BKE_main_id_tag_listbase(ptr noundef nonnull %6, i8 noundef zeroext 1) #6
  %26 = tail call fastcc zeroext i8 @check_object_instances_group_recursive(ptr noundef %5, ptr noundef %10), !range !66
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %30 = load ptr, ptr %29, align 8, !tbaa !69
  tail call void @BKE_report(ptr noundef %30, i32 noundef 32, ptr noundef nonnull @.str.42) #6
  br label %33

31:                                               ; preds = %25
  %32 = tail call zeroext i8 @BKE_group_object_add(ptr noundef %10, ptr noundef %5, ptr noundef %4, ptr noundef null) #6
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %5) #6
  br label %33

33:                                               ; preds = %24, %2, %31, %28
  %34 = phi i32 [ 2, %28 ], [ 4, %31 ], [ 2, %2 ], [ 4, %24 ]
  ret i32 %34
}

declare i32 @WM_enum_search_invoke(ptr noundef, ptr noundef, ptr noundef) #2

declare ptr @RNA_group_local_itemf(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_group_remove(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.30, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.31, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.32, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @group_remove_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_objectmode, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !47
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @group_remove_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %5 = tail call ptr @ED_object_context(ptr noundef %0) #6
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @RNA_Group) #6
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !106
  %8 = icmp ne ptr %5, null
  %9 = icmp ne ptr %7, null
  %10 = select i1 %8, i1 %9, i1 false
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call zeroext i8 @BKE_group_object_unlink(ptr noundef nonnull %7, ptr noundef nonnull %5, ptr noundef %4, ptr noundef null) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef nonnull %5) #6
  br label %13

13:                                               ; preds = %2, %11
  %14 = phi i32 [ 4, %11 ], [ 2, %2 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_group_unlink(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.33, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.34, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.35, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @group_unlink_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_objectmode, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !47
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @group_unlink_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @RNA_Group) #6
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !106
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  call void @BKE_group_unlink(ptr noundef nonnull %5) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef null) #6
  br label %8

8:                                                ; preds = %2, %7
  %9 = phi i32 [ 4, %7 ], [ 2, %2 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_grouped_select(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.36, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.37, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.38, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @select_grouped_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_objectmode, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !47
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @select_grouped_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca %struct.ListBase, align 8
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @RNA_Group) #6
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !106
  %7 = icmp eq ptr %6, null
  br i1 %7, label %30, label %8

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6
  %9 = call i32 @CTX_data_visible_bases(ptr noundef %0, ptr noundef nonnull %4) #6
  %10 = load ptr, ptr %4, align 8, !tbaa !55
  %11 = icmp eq ptr %10, null
  br i1 %11, label %29, label %12

12:                                               ; preds = %8, %26
  %13 = phi ptr [ %27, %26 ], [ %10, %8 ]
  %14 = getelementptr inbounds %struct.CollectionPointerLink, ptr %13, i64 0, i32 2, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !56
  %16 = getelementptr inbounds %struct.Base, ptr %15, i64 0, i32 4
  %17 = load i32, ptr %16, align 8, !tbaa !107
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.Base, ptr %15, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !60
  %23 = call zeroext i8 @BKE_group_object_exists(ptr noundef nonnull %6, ptr noundef %22) #6
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  call void @ED_base_object_select(ptr noundef %15, i16 noundef signext 1) #6
  br label %26

26:                                               ; preds = %25, %20, %12
  %27 = load ptr, ptr %13, align 8, !tbaa !55
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %12, !llvm.loop !108

29:                                               ; preds = %26, %8
  call void @BLI_freelistN(ptr noundef nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef null) #6
  br label %30

30:                                               ; preds = %2, %29
  %31 = phi i32 [ 4, %29 ], [ 2, %2 ]
  ret i32 %31
}

declare ptr @ED_object_context(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BKE_group_object_exists(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_main_id_tag_listbase(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare i32 @CTX_data_selected_editable_bases(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @check_object_instances_group_recursive(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 112
  %4 = load ptr, ptr %3, align 8, !tbaa !109
  %5 = icmp eq ptr %4, null
  br i1 %5, label %28, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 5
  %8 = load i16, ptr %7, align 2, !tbaa !112
  %9 = and i16 %8, 1024
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %28, label %11

11:                                               ; preds = %6
  %12 = and i16 %8, -1025
  store i16 %12, ptr %7, align 2, !tbaa !112
  %13 = icmp eq ptr %4, %1
  br i1 %13, label %28, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.Group, ptr %4, i64 0, i32 1
  br label %16

16:                                               ; preds = %20, %14
  %17 = phi ptr [ %15, %14 ], [ %18, %20 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !55
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.GroupObject, ptr %18, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !63
  %23 = tail call fastcc zeroext i8 @check_object_instances_group_recursive(ptr noundef %22, ptr noundef %1), !range !66
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %16, label %28, !llvm.loop !114

25:                                               ; preds = %16
  %26 = load i16, ptr %7, align 2, !tbaa !112
  %27 = or i16 %26, 1024
  store i16 %27, ptr %7, align 2, !tbaa !112
  br label %28

28:                                               ; preds = %20, %2, %25, %6, %11
  %29 = phi i8 [ 1, %11 ], [ 1, %6 ], [ 0, %25 ], [ 0, %2 ], [ 1, %20 ]
  ret i8 %29
}

declare zeroext i8 @BKE_group_object_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @DAG_relations_tag_update(ptr noundef) local_unnamed_addr #2

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_group_object_find(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare void @RNA_enum_item_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_enum_item_add_separator(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_enum_item_end(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BKE_group_object_unlink(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_object_groups_clear(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_string_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_group_add(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CTX_data_selected_bases(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @CTX_data_pointer_get_type(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_group_unlink(ptr noundef) local_unnamed_addr #2

declare i32 @CTX_data_visible_bases(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_base_object_select(ptr noundef, i16 noundef signext) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

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
!42 = !{!35, !36, i64 24}
!43 = !{!35, !36, i64 8}
!44 = !{!35, !36, i64 32}
!45 = !{!35, !36, i64 48}
!46 = !{!35, !36, i64 72}
!47 = !{!35, !41, i64 184}
!48 = !{!35, !36, i64 88}
!49 = !{!35, !36, i64 104}
!50 = !{!51, !36, i64 112}
!51 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!52 = distinct !{!52, !53, !54}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!"llvm.loop.unroll.disable"}
!55 = !{!36, !36, i64 0}
!56 = !{!57, !36, i64 32}
!57 = !{!"CollectionPointerLink", !36, i64 0, !36, i64 8, !58, i64 16}
!58 = !{!"PointerRNA", !59, i64 0, !36, i64 8, !36, i64 16}
!59 = !{!"", !36, i64 0}
!60 = !{!61, !36, i64 32}
!61 = !{!"Base", !36, i64 0, !36, i64 8, !62, i64 16, !62, i64 20, !62, i64 24, !41, i64 28, !41, i64 30, !36, i64 32}
!62 = !{!"int", !37, i64 0}
!63 = !{!64, !36, i64 16}
!64 = !{!"GroupObject", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !41, i64 32, !37, i64 34}
!65 = distinct !{!65, !53, !54}
!66 = !{i8 0, i8 2}
!67 = distinct !{!67, !53, !54}
!68 = distinct !{!68, !53, !54}
!69 = !{!51, !36, i64 120}
!70 = !{!62, !62, i64 0}
!71 = distinct !{!71, !53, !54}
!72 = !{!73, !36, i64 24}
!73 = !{!"EnumPropertyItem", !62, i64 0, !36, i64 8, !62, i64 16, !36, i64 24, !36, i64 32}
!74 = !{!73, !36, i64 8}
!75 = !{!73, !62, i64 0}
!76 = distinct !{!76, !53, !54}
!77 = !{!37, !37, i64 0}
!78 = !{!79, !36, i64 168}
!79 = !{!"Scene", !80, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !62, i64 232, !62, i64 236, !62, i64 240, !41, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !81, i64 280, !91, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !41, i64 4376, !41, i64 4378, !62, i64 4380, !39, i64 4384, !92, i64 4400, !93, i64 4416, !96, i64 4600, !36, i64 4608, !97, i64 4616, !36, i64 4640, !98, i64 4648, !98, i64 4656, !84, i64 4664, !85, i64 4824, !99, i64 4888, !36, i64 4952}
!80 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !62, i64 100, !62, i64 104, !62, i64 108, !36, i64 112}
!81 = !{!"RenderData", !82, i64 0, !36, i64 248, !36, i64 256, !86, i64 264, !87, i64 328, !62, i64 400, !62, i64 404, !62, i64 408, !83, i64 412, !62, i64 416, !62, i64 420, !62, i64 424, !62, i64 428, !41, i64 432, !41, i64 434, !83, i64 436, !83, i64 440, !83, i64 444, !83, i64 448, !83, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !62, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !62, i64 484, !62, i64 488, !41, i64 492, !41, i64 494, !62, i64 496, !62, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !37, i64 514, !37, i64 515, !62, i64 516, !62, i64 520, !62, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !88, i64 544, !88, i64 560, !89, i64 576, !39, i64 592, !41, i64 608, !41, i64 610, !83, i64 612, !83, i64 616, !83, i64 620, !83, i64 624, !62, i64 628, !83, i64 632, !83, i64 636, !83, i64 640, !83, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !83, i64 660, !83, i64 664, !41, i64 668, !41, i64 670, !83, i64 672, !83, i64 676, !37, i64 680, !62, i64 1704, !41, i64 1708, !41, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !62, i64 2520, !41, i64 2524, !41, i64 2526, !83, i64 2528, !83, i64 2532, !41, i64 2536, !41, i64 2538, !83, i64 2540, !41, i64 2544, !41, i64 2546, !62, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !83, i64 2560, !83, i64 2564, !36, i64 2568, !62, i64 2576, !83, i64 2580, !37, i64 2584, !90, i64 2616, !62, i64 3976, !62, i64 3980}
!82 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !41, i64 8, !41, i64 10, !83, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !84, i64 24, !85, i64 184}
!83 = !{!"float", !37, i64 0}
!84 = !{!"ColorManagedViewSettings", !62, i64 0, !62, i64 4, !37, i64 8, !37, i64 72, !83, i64 136, !83, i64 140, !36, i64 144, !36, i64 152}
!85 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!86 = !{!"QuicktimeCodecSettings", !62, i64 0, !62, i64 4, !62, i64 8, !62, i64 12, !62, i64 16, !62, i64 20, !62, i64 24, !62, i64 28, !62, i64 32, !62, i64 36, !62, i64 40, !62, i64 44, !41, i64 48, !41, i64 50, !62, i64 52, !62, i64 56, !62, i64 60}
!87 = !{!"FFMpegCodecData", !62, i64 0, !62, i64 4, !62, i64 8, !62, i64 12, !62, i64 16, !62, i64 20, !62, i64 24, !62, i64 28, !83, i64 32, !62, i64 36, !62, i64 40, !62, i64 44, !62, i64 48, !62, i64 52, !62, i64 56, !62, i64 60, !36, i64 64}
!88 = !{!"rctf", !83, i64 0, !83, i64 4, !83, i64 8, !83, i64 12}
!89 = !{!"rcti", !62, i64 0, !62, i64 4, !62, i64 8, !62, i64 12}
!90 = !{!"BakeData", !82, i64 0, !37, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !83, i64 1280, !83, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!91 = !{!"AudioData", !62, i64 0, !83, i64 4, !83, i64 8, !83, i64 12, !62, i64 16, !41, i64 20, !41, i64 22, !83, i64 24, !83, i64 28}
!92 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!93 = !{!"GameData", !92, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !37, i64 34, !94, i64 40, !41, i64 64, !41, i64 66, !83, i64 68, !95, i64 72, !83, i64 128, !83, i64 132, !62, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !83, i64 164, !83, i64 168, !83, i64 172, !83, i64 176, !83, i64 180}
!94 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !83, i64 8, !83, i64 12, !36, i64 16}
!95 = !{!"RecastData", !83, i64 0, !83, i64 4, !83, i64 8, !83, i64 12, !83, i64 16, !83, i64 20, !83, i64 24, !83, i64 28, !83, i64 32, !83, i64 36, !62, i64 40, !83, i64 44, !83, i64 48, !41, i64 52, !41, i64 54}
!96 = !{!"UnitSettings", !83, i64 0, !37, i64 4, !37, i64 5, !41, i64 6}
!97 = !{!"PhysicsSettings", !37, i64 0, !62, i64 12, !62, i64 16, !62, i64 20}
!98 = !{!"long", !37, i64 0}
!99 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!100 = distinct !{!100, !53, !54}
!101 = distinct !{!101, !53, !54}
!102 = distinct !{!102, !53, !54}
!103 = distinct !{!103, !53, !54}
!104 = distinct !{!104, !53, !54}
!105 = distinct !{!105, !53, !54}
!106 = !{!58, !36, i64 16}
!107 = !{!61, !62, i64 24}
!108 = distinct !{!108, !53, !54}
!109 = !{!110, !36, i64 1256}
!110 = !{!"Object", !80, i64 0, !36, i64 120, !36, i64 128, !41, i64 136, !41, i64 138, !62, i64 140, !62, i64 144, !62, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !111, i64 312, !36, i64 360, !39, i64 368, !39, i64 384, !39, i64 400, !39, i64 416, !62, i64 432, !62, i64 436, !36, i64 440, !36, i64 448, !62, i64 456, !62, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !83, i64 616, !83, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !62, i64 944, !41, i64 948, !41, i64 950, !41, i64 952, !41, i64 954, !41, i64 956, !41, i64 958, !41, i64 960, !41, i64 962, !41, i64 964, !37, i64 966, !37, i64 967, !62, i64 968, !62, i64 972, !62, i64 976, !62, i64 980, !62, i64 984, !83, i64 988, !83, i64 992, !83, i64 996, !83, i64 1000, !83, i64 1004, !83, i64 1008, !83, i64 1012, !83, i64 1016, !83, i64 1020, !83, i64 1024, !83, i64 1028, !83, i64 1032, !41, i64 1036, !41, i64 1038, !41, i64 1040, !37, i64 1042, !37, i64 1043, !41, i64 1044, !37, i64 1046, !37, i64 1047, !83, i64 1048, !83, i64 1052, !39, i64 1056, !39, i64 1072, !39, i64 1088, !39, i64 1104, !83, i64 1120, !41, i64 1124, !41, i64 1126, !37, i64 1128, !62, i64 1144, !62, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !41, i64 1162, !37, i64 1164, !39, i64 1176, !39, i64 1192, !39, i64 1208, !39, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !41, i64 1266, !83, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !98, i64 1304, !98, i64 1312, !62, i64 1320, !62, i64 1324, !39, i64 1328, !39, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !39, i64 1400, !36, i64 1416}
!111 = !{!"bAnimVizSettings", !62, i64 0, !62, i64 4, !62, i64 8, !62, i64 12, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !62, i64 32, !62, i64 36, !62, i64 40, !62, i64 44}
!112 = !{!113, !41, i64 98}
!113 = !{!"Group", !80, i64 0, !39, i64 120, !62, i64 136, !37, i64 140}
!114 = distinct !{!114, !53, !54}
