; ModuleID = 'blender/source/blender/editors/object/object_transform.c'
source_filename = "blender/source/blender/editors/object/object_transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ListBase = type { ptr, ptr }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.CollectionPointerLink = type { ptr, ptr, %struct.PointerRNA }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.View3D = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], [4 x float], float, float, i8, [3 x i8], i32, i32, i16, i16, ptr, ptr, %struct.rctf, %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, i16, i16, float, float, float, float, [3 x float], [3 x float], i16, i16, i16, i8, i8, i8, i8, [2 x i8], %struct.ListBase, %struct.ListBase, %struct.ListBase, i8, i8, i8, [5 x i8], ptr, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.Group = type { %struct.ID, %struct.ListBase, i32, [3 x float] }
%struct.Curve = type { %struct.ID, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], i16, i16, i16, i16, float, float, i32, i16, i16, i32, float, float, float, i16, i16, i16, i16, i32, i32, [4 x i8], i16, i8, i8, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i32, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.CharInfo, float, float, float, i8, i8, [2 x i8] }
%struct.CharInfo = type { i16, i16, i8, i8, i16 }
%struct.MovieClip = type { %struct.ID, ptr, [1024 x i8], i32, i32, [2 x i32], float, float, ptr, ptr, ptr, %struct.MovieTracking, ptr, %struct.MovieClipProxy, i32, i32, i32, i32, %struct.ColorManagedColorspaceSettings }
%struct.MovieTracking = type { %struct.MovieTrackingSettings, %struct.MovieTrackingCamera, %struct.ListBase, %struct.ListBase, %struct.MovieTrackingReconstruction, %struct.MovieTrackingStabilization, ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.MovieTrackingDopesheet }
%struct.MovieTrackingSettings = type { i32, i16, i16, float, i16, i16, i16, i16, i16, i16, float, i16, i16, i32, i32, i32, i16, i16, float, i32, i32, float, float, i32 }
%struct.MovieTrackingCamera = type { ptr, i16, i16, float, float, float, i16, i16, [2 x float], float, float, float, float, float }
%struct.MovieTrackingReconstruction = type { i32, float, i32, i32, ptr }
%struct.MovieTrackingStabilization = type { i32, i32, i32, float, ptr, float, float, float, i32, i32, float }
%struct.MovieTrackingDopesheet = type { i32, i16, i16, %struct.ListBase, %struct.ListBase, i32, i32 }
%struct.MovieClipProxy = type { [768 x i8], i16, i16, i16, i16 }
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }

@.str = private unnamed_addr constant [15 x i8] c"Clear Location\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Clear the object's location\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"OBJECT_OT_location_clear\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Clear Rotation\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Clear the object's rotation\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"OBJECT_OT_rotation_clear\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"Clear Scale\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"Clear the object's scale\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"OBJECT_OT_scale_clear\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"Clear Origin\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"Clear the object's origin\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"OBJECT_OT_origin_clear\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"Apply Visual Transform\00", align 1
@.str.13 = private unnamed_addr constant [53 x i8] c"Apply the object's visual transformation to its data\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"OBJECT_OT_visual_transform_apply\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"Apply Object Transform\00", align 1
@.str.16 = private unnamed_addr constant [46 x i8] c"Apply the object's transformation to its data\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"OBJECT_OT_transform_apply\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"location\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"Location\00", align 1
@.str.20 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"rotation\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"Rotation\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"scale\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"Scale\00", align 1
@OBJECT_OT_origin_set.prop_set_center_types = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.25, i32 0, ptr @.str.26, ptr @.str.27 }, %struct.EnumPropertyItem { i32 1, ptr @.str.28, i32 0, ptr @.str.29, ptr @.str.30 }, %struct.EnumPropertyItem { i32 2, ptr @.str.31, i32 0, ptr @.str.32, ptr @.str.33 }, %struct.EnumPropertyItem { i32 3, ptr @.str.34, i32 0, ptr @.str.35, ptr @.str.36 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.25 = private unnamed_addr constant [16 x i8] c"GEOMETRY_ORIGIN\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"Geometry to Origin\00", align 1
@.str.27 = private unnamed_addr constant [38 x i8] c"Move object geometry to object origin\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"ORIGIN_GEOMETRY\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"Origin to Geometry\00", align 1
@.str.30 = private unnamed_addr constant [48 x i8] c"Move object origin to center of object geometry\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"ORIGIN_CURSOR\00", align 1
@.str.32 = private unnamed_addr constant [20 x i8] c"Origin to 3D Cursor\00", align 1
@.str.33 = private unnamed_addr constant [48 x i8] c"Move object origin to position of the 3D cursor\00", align 1
@.str.34 = private unnamed_addr constant [22 x i8] c"ORIGIN_CENTER_OF_MASS\00", align 1
@.str.35 = private unnamed_addr constant [25 x i8] c"Origin to Center of Mass\00", align 1
@.str.36 = private unnamed_addr constant [75 x i8] c"Move object origin to the object center of mass (assuming uniform density)\00", align 1
@OBJECT_OT_origin_set.prop_set_bounds_types = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 3, ptr @.str.37, i32 0, ptr @.str.38, ptr @.str.20 }, %struct.EnumPropertyItem { i32 0, ptr @.str.39, i32 0, ptr @.str.40, ptr @.str.20 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.37 = private unnamed_addr constant [7 x i8] c"MEDIAN\00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c"Median Center\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"BOUNDS\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"Bounds Center\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"Set Origin\00", align 1
@.str.42 = private unnamed_addr constant [95 x i8] c"Set the object's origin, by either moving the data, or set to center of data, or use 3D cursor\00", align 1
@.str.43 = private unnamed_addr constant [21 x i8] c"OBJECT_OT_origin_set\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"center\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"Center\00", align 1
@.str.48 = private unnamed_addr constant [71 x i8] c"Programming error: missing clear transform function or keying set name\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"Scaling\00", align 1
@.str.50 = private unnamed_addr constant [61 x i8] c"Cannot apply to a multi user: Object \22%s\22, %s \22%s\22, aborting\00", align 1
@.str.51 = private unnamed_addr constant [61 x i8] c"Cannot apply to library data: Object \22%s\22, %s \22%s\22, aborting\00", align 1
@.str.52 = private unnamed_addr constant [76 x i8] c"Rotation/Location can't apply to a 2D curve: Object \22%s\22, %s \22%s\22, aborting\00", align 1
@.str.53 = private unnamed_addr constant [71 x i8] c"Can't apply to a curve with shape-keys: Object \22%s\22, %s \22%s\22, aborting\00", align 1
@.str.54 = private unnamed_addr constant [34 x i8] c"Objects have no data to transform\00", align 1
@.str.55 = private unnamed_addr constant [43 x i8] c"Operation cannot be performed in edit mode\00", align 1
@.str.56 = private unnamed_addr constant [39 x i8] c"%i object(s) not centered, %i changed:\00", align 1
@.str.57 = private unnamed_addr constant [29 x i8] c"|%i linked library object(s)\00", align 1
@.str.58 = private unnamed_addr constant [33 x i8] c"|%i multiuser armature object(s)\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_location_clear(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.1, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @object_location_clear_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_scene_editable, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @object_location_clear_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = tail call fastcc i32 @object_clear_transform_generic_exec(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @object_clear_loc, ptr noundef nonnull @.str.19) #8, !range !18
  ret i32 %3
}

; Function Attrs: optsize
declare i32 @ED_operator_scene_editable(ptr noundef) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_rotation_clear(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.3, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.4, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.5, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @object_rotation_clear_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_scene_editable, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @object_rotation_clear_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = tail call fastcc i32 @object_clear_transform_generic_exec(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @object_clear_rot, ptr noundef nonnull @.str.22) #8, !range !18
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_scale_clear(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.6, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.7, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.8, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @object_scale_clear_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_scene_editable, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @object_scale_clear_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = tail call fastcc i32 @object_clear_transform_generic_exec(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @object_clear_scale, ptr noundef nonnull @.str.49) #8, !range !18
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_origin_clear(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.9, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.10, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.11, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @object_origin_clear_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_scene_editable, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @object_origin_clear_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = alloca [3 x [3 x float]], align 16
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  %5 = call i32 @CTX_data_selected_editable_objects(ptr noundef %0, ptr noundef nonnull %4) #10
  %6 = load ptr, ptr %4, align 8, !tbaa !19
  %7 = icmp eq ptr %6, null
  br i1 %7, label %22, label %8

8:                                                ; preds = %2, %19
  %9 = phi ptr [ %20, %19 ], [ %6, %2 ]
  %10 = getelementptr inbounds %struct.CollectionPointerLink, ptr %9, i64 0, i32 2, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !20
  %12 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !24
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 33
  %17 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 48
  %18 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 48, i64 3
  call void @copy_m3_m4(ptr noundef nonnull %3, ptr noundef nonnull %17) #10
  call fastcc void @negate_v3_v3(ptr noundef nonnull %18, ptr noundef nonnull %16) #8
  call void @mul_m3_v3(ptr noundef nonnull %3, ptr noundef nonnull %18) #10
  br label %19

19:                                               ; preds = %15, %8
  call void @DAG_id_tag_update(ptr noundef nonnull %11, i16 noundef signext 1) #10
  %20 = load ptr, ptr %9, align 8, !tbaa !19
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %8, !llvm.loop !31

22:                                               ; preds = %19, %2
  call void @BLI_freelistN(ptr noundef nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85065728, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #9
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_visual_transform_apply(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.12, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.13, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.14, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @visual_transform_apply_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_scene_editable, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @visual_transform_apply_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  %5 = call i32 @CTX_data_selected_editable_objects(ptr noundef %0, ptr noundef nonnull %3) #10
  %6 = load ptr, ptr %3, align 8, !tbaa !19
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %2, %8
  %9 = phi ptr [ %13, %8 ], [ %6, %2 ]
  %10 = getelementptr inbounds %struct.CollectionPointerLink, ptr %9, i64 0, i32 2, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !20
  call void @BKE_object_where_is_calc(ptr noundef %4, ptr noundef %11) #10
  %12 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 47
  call void @BKE_object_apply_mat4(ptr noundef %11, ptr noundef nonnull %12, i8 noundef zeroext 1, i8 noundef zeroext 1) #10
  call void @BKE_object_where_is_calc(ptr noundef %4, ptr noundef %11) #10
  call void @DAG_id_tag_update(ptr noundef %11, i16 noundef signext 1) #10
  %13 = load ptr, ptr %9, align 8, !tbaa !19
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %8, !llvm.loop !33

15:                                               ; preds = %8
  call void @BLI_freelistN(ptr noundef nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85065728, ptr noundef null) #10
  br label %17

16:                                               ; preds = %2
  call void @BLI_freelistN(ptr noundef nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  br label %17

17:                                               ; preds = %16, %15
  %18 = phi i32 [ 4, %15 ], [ 2, %16 ]
  ret i32 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_transform_apply(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.15, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.16, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.17, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @object_transform_apply_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_objectmode, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.18, i32 noundef 0, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20) #10
  %10 = load ptr, ptr %7, align 8, !tbaa !34
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.21, i32 noundef 0, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.20) #10
  %12 = load ptr, ptr %7, align 8, !tbaa !34
  %13 = tail call ptr @RNA_def_boolean(ptr noundef %12, ptr noundef nonnull @.str.23, i32 noundef 0, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.20) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @object_transform_apply_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !35
  %5 = tail call i32 @RNA_boolean_get(ptr noundef %4, ptr noundef nonnull @.str.18) #10
  %6 = load ptr, ptr %3, align 8, !tbaa !35
  %7 = tail call i32 @RNA_boolean_get(ptr noundef %6, ptr noundef nonnull @.str.21) #10
  %8 = load ptr, ptr %3, align 8, !tbaa !35
  %9 = tail call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.23) #10
  %10 = and i32 %5, 255
  %11 = icmp ne i32 %10, 0
  %12 = and i32 %7, 255
  %13 = icmp ne i32 %12, 0
  %14 = select i1 %11, i1 true, i1 %13
  %15 = and i32 %9, 255
  %16 = icmp ne i32 %15, 0
  %17 = select i1 %14, i1 true, i1 %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = trunc i32 %9 to i8
  %20 = trunc i32 %7 to i8
  %21 = trunc i32 %5 to i8
  %22 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !37
  %24 = tail call fastcc i32 @apply_objects_internal(ptr noundef %0, ptr noundef %23, i8 noundef zeroext %21, i8 noundef zeroext %20, i8 noundef zeroext %19) #8, !range !18
  br label %25

25:                                               ; preds = %2, %18
  %26 = phi i32 [ %24, %18 ], [ 4, %2 ]
  ret i32 %26
}

; Function Attrs: optsize
declare i32 @ED_operator_objectmode(ptr noundef) #2

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_origin_set(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.41, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.42, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.43, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !38
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @object_origin_set_exec, ptr %5, align 8, !tbaa !15
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_scene_editable, ptr %6, align 8, !tbaa !16
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !17
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.44, ptr noundef nonnull @OBJECT_OT_origin_set.prop_set_center_types, i32 noundef 0, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.20) #10
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !39
  %12 = load ptr, ptr %8, align 8, !tbaa !34
  %13 = tail call ptr @RNA_def_enum(ptr noundef %12, ptr noundef nonnull @.str.46, ptr noundef nonnull @OBJECT_OT_origin_set.prop_set_bounds_types, i32 noundef 3, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.20) #10
  ret void
}

; Function Attrs: optsize
declare i32 @WM_menu_invoke(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @object_origin_set_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 8
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca %struct.ListBase, align 8
  %8 = alloca %struct.BMIter, align 8
  %9 = alloca [3 x float], align 8
  %10 = alloca [3 x float], align 8
  %11 = alloca [3 x float], align 8
  %12 = alloca [3 x float], align 8
  %13 = alloca [4 x [4 x float]], align 16
  %14 = tail call ptr @CTX_data_main(ptr noundef %0) #10
  %15 = tail call ptr @CTX_data_scene(ptr noundef %0) #10
  %16 = tail call ptr @CTX_data_active_object(ptr noundef %0) #10
  %17 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #9
  %18 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !35
  %20 = tail call i32 @RNA_enum_get(ptr noundef %19, ptr noundef nonnull @.str.44) #10
  %21 = load ptr, ptr %18, align 8, !tbaa !35
  %22 = tail call i32 @RNA_enum_get(ptr noundef %21, ptr noundef nonnull @.str.46) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #9
  %23 = icmp ne ptr %17, null
  %24 = icmp ne i32 %20, 0
  %25 = select i1 %23, i1 %24, i1 false
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %28 = load ptr, ptr %27, align 8, !tbaa !37
  tail call void @BKE_report(ptr noundef %28, i32 noundef 32, ptr noundef nonnull @.str.55) #10
  br label %435

29:                                               ; preds = %2
  %30 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #10
  %31 = tail call ptr @ED_view3d_cursor3d_get(ptr noundef %15, ptr noundef %30) #10
  call fastcc void @copy_v3_v3(ptr noundef nonnull %3, ptr noundef %31) #8
  %32 = icmp eq ptr %30, null
  br i1 %32, label %41, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr %18, align 8, !tbaa !35
  %35 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %34, ptr noundef nonnull @.str.46) #10
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.View3D, ptr %30, i64 0, i32 27
  %39 = load i16, ptr %38, align 2, !tbaa !40
  %40 = sext i16 %39 to i32
  br label %41

41:                                               ; preds = %37, %33, %29
  %42 = phi i32 [ %22, %33 ], [ %40, %37 ], [ %22, %29 ]
  call fastcc void @zero_v3(ptr noundef nonnull %4) #8
  br i1 %23, label %43, label %95

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 3
  %45 = load i16, ptr %44, align 8, !tbaa !43
  %46 = icmp eq i16 %45, 1
  br i1 %46, label %47, label %95

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 19
  %49 = load ptr, ptr %48, align 8, !tbaa !44
  %50 = getelementptr inbounds %struct.Mesh, ptr %49, i64 0, i32 20
  %51 = load ptr, ptr %50, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #9
  %52 = icmp eq i32 %20, 2
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %3) #8
  %54 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 50
  %55 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 47
  %56 = tail call zeroext i8 @invert_m4_m4(ptr noundef nonnull %54, ptr noundef nonnull %55) #10
  call void @mul_m4_v3(ptr noundef nonnull %54, ptr noundef nonnull %4) #10
  br label %85

57:                                               ; preds = %47
  %58 = icmp eq i32 %42, 3
  br i1 %58, label %59, label %73

59:                                               ; preds = %57
  %60 = load ptr, ptr %51, align 8, !tbaa !48
  %61 = load i32, ptr %60, align 8, !tbaa !50
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %85, label %63

63:                                               ; preds = %59
  %64 = sitofp i32 %61 to float
  %65 = fdiv float 1.000000e+00, %64
  %66 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %8, ptr noundef nonnull %60) #8
  %67 = icmp eq ptr %66, null
  br i1 %67, label %85, label %68

68:                                               ; preds = %63, %68
  %69 = phi ptr [ %71, %68 ], [ %66, %63 ]
  %70 = getelementptr inbounds %struct.BMVert, ptr %69, i64 0, i32 2
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %4, ptr noundef nonnull %70, float noundef %65) #8
  %71 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %8) #8
  %72 = icmp eq ptr %71, null
  br i1 %72, label %85, label %68, !llvm.loop !52

73:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #9
  %74 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  store float 0x46293E5940000000, ptr %74, align 8, !tbaa !53
  store <2 x float> <float 0x46293E5940000000, float 0x46293E5940000000>, ptr %9, align 8, !tbaa !53
  %75 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  store float 0xC6293E5940000000, ptr %75, align 8, !tbaa !53
  store <2 x float> <float 0xC6293E5940000000, float 0xC6293E5940000000>, ptr %10, align 8, !tbaa !53
  %76 = load ptr, ptr %51, align 8, !tbaa !48
  %77 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %8, ptr noundef %76) #8
  %78 = icmp eq ptr %77, null
  br i1 %78, label %84, label %79

79:                                               ; preds = %73, %79
  %80 = phi ptr [ %82, %79 ], [ %77, %73 ]
  %81 = getelementptr inbounds %struct.BMVert, ptr %80, i64 0, i32 2
  call void @minmax_v3v3_v3(ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %81) #10
  %82 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %8) #8
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %79, !llvm.loop !54

84:                                               ; preds = %79, %73
  call void @mid_v3_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %9, ptr noundef nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #9
  br label %85

85:                                               ; preds = %68, %63, %84, %59, %53
  %86 = load ptr, ptr %51, align 8, !tbaa !48
  %87 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %8, ptr noundef %86) #8
  %88 = icmp eq ptr %87, null
  br i1 %88, label %94, label %89

89:                                               ; preds = %85, %89
  %90 = phi ptr [ %92, %89 ], [ %87, %85 ]
  %91 = getelementptr inbounds %struct.BMVert, ptr %90, i64 0, i32 2
  call fastcc void @sub_v3_v3(ptr noundef nonnull %91, ptr noundef nonnull %4) #8
  %92 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %8) #8
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %89, !llvm.loop !55

94:                                               ; preds = %89, %85
  call void @EDBM_mesh_normals_update(ptr noundef nonnull %51) #10
  call void @DAG_id_tag_update(ptr noundef nonnull %17, i16 noundef signext 2) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #9
  br label %95

95:                                               ; preds = %43, %94, %41
  %96 = phi i32 [ 1, %94 ], [ 0, %43 ], [ 0, %41 ]
  %97 = call i32 @CTX_data_selected_editable_objects(ptr noundef %0, ptr noundef nonnull %7) #10
  %98 = load ptr, ptr %7, align 8, !tbaa !19
  %99 = icmp eq ptr %98, null
  br i1 %99, label %115, label %100

100:                                              ; preds = %95, %100
  %101 = phi ptr [ %110, %100 ], [ %98, %95 ]
  %102 = phi ptr [ %109, %100 ], [ null, %95 ]
  %103 = getelementptr inbounds %struct.CollectionPointerLink, ptr %101, i64 0, i32 2, i32 2
  %104 = load ptr, ptr %103, align 8, !tbaa !20
  %105 = getelementptr inbounds %struct.Object, ptr %104, i64 0, i32 53
  %106 = load i16, ptr %105, align 4, !tbaa !56
  %107 = and i16 %106, -1025
  store i16 %107, ptr %105, align 4, !tbaa !56
  %108 = icmp eq ptr %104, %16
  %109 = select i1 %108, ptr %101, ptr %102
  %110 = load ptr, ptr %101, align 8, !tbaa !19
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %100, !llvm.loop !57

112:                                              ; preds = %100
  %113 = icmp eq ptr %109, null
  br i1 %113, label %115, label %114

114:                                              ; preds = %112
  call void @BLI_listbase_rotate_first(ptr noundef nonnull %7, ptr noundef nonnull %109) #10
  br label %115

115:                                              ; preds = %95, %114, %112
  %116 = getelementptr inbounds %struct.Main, ptr %14, i64 0, i32 13
  %117 = load ptr, ptr %116, align 8, !tbaa !19
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %129

119:                                              ; preds = %146, %115
  %120 = icmp eq i32 %20, 2
  %121 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 2
  %122 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 2
  %123 = icmp eq ptr %17, null
  %124 = icmp eq i32 %42, 3
  %125 = icmp eq i32 %20, 0
  %126 = icmp ne i32 %20, 2
  %127 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %128 = icmp eq i32 %20, 3
  br label %149

129:                                              ; preds = %115, %146
  %130 = phi ptr [ %147, %146 ], [ %117, %115 ]
  %131 = getelementptr inbounds %struct.Object, ptr %130, i64 0, i32 19
  %132 = load ptr, ptr %131, align 8, !tbaa !44
  %133 = icmp eq ptr %132, null
  br i1 %133, label %138, label %134

134:                                              ; preds = %129
  %135 = getelementptr inbounds %struct.ID, ptr %132, i64 0, i32 5
  %136 = load i16, ptr %135, align 2, !tbaa !58
  %137 = and i16 %136, -1025
  store i16 %137, ptr %135, align 2, !tbaa !58
  br label %138

138:                                              ; preds = %134, %129
  %139 = getelementptr inbounds %struct.Object, ptr %130, i64 0, i32 112
  %140 = load ptr, ptr %139, align 8, !tbaa !59
  %141 = icmp eq ptr %140, null
  br i1 %141, label %146, label %142

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.ID, ptr %140, i64 0, i32 5
  %144 = load i16, ptr %143, align 2, !tbaa !58
  %145 = and i16 %144, -1025
  store i16 %145, ptr %143, align 2, !tbaa !58
  br label %146

146:                                              ; preds = %138, %142
  %147 = load ptr, ptr %130, align 8, !tbaa !19
  %148 = icmp eq ptr %147, null
  br i1 %148, label %119, label %129, !llvm.loop !60

149:                                              ; preds = %119, %392
  %150 = phi i32 [ %394, %392 ], [ 0, %119 ]
  %151 = phi i32 [ %395, %392 ], [ 0, %119 ]
  %152 = phi i32 [ %396, %392 ], [ %96, %119 ]
  %153 = phi ptr [ %154, %392 ], [ %7, %119 ]
  %154 = load ptr, ptr %153, align 8, !tbaa !19
  %155 = icmp eq ptr %154, null
  br i1 %155, label %399, label %156

156:                                              ; preds = %149
  %157 = getelementptr inbounds %struct.CollectionPointerLink, ptr %154, i64 0, i32 2, i32 2
  %158 = load ptr, ptr %157, align 8, !tbaa !20
  %159 = getelementptr inbounds %struct.Object, ptr %158, i64 0, i32 53
  %160 = load i16, ptr %159, align 4, !tbaa !56
  %161 = and i16 %160, 1024
  %162 = icmp eq i16 %161, 0
  br i1 %162, label %163, label %392

163:                                              ; preds = %156
  %164 = or disjoint i16 %160, 1024
  store i16 %164, ptr %159, align 4, !tbaa !56
  br i1 %120, label %165, label %169

165:                                              ; preds = %163
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %3) #8
  %166 = getelementptr inbounds %struct.Object, ptr %158, i64 0, i32 50
  %167 = getelementptr inbounds %struct.Object, ptr %158, i64 0, i32 47
  %168 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %166, ptr noundef nonnull %167) #10
  call void @mul_m4_v3(ptr noundef nonnull %166, ptr noundef nonnull %4) #10
  br label %169

169:                                              ; preds = %165, %163
  %170 = getelementptr inbounds %struct.Object, ptr %158, i64 0, i32 19
  %171 = load ptr, ptr %170, align 8, !tbaa !44
  %172 = icmp eq ptr %171, null
  br i1 %172, label %173, label %208

173:                                              ; preds = %169
  %174 = getelementptr inbounds %struct.Object, ptr %158, i64 0, i32 55
  %175 = load i16, ptr %174, align 8, !tbaa !61
  %176 = and i16 %175, 256
  %177 = icmp eq i16 %176, 0
  br i1 %177, label %214, label %178

178:                                              ; preds = %173
  %179 = getelementptr inbounds %struct.Object, ptr %158, i64 0, i32 112
  %180 = load ptr, ptr %179, align 8, !tbaa !59
  %181 = icmp eq ptr %180, null
  br i1 %181, label %214, label %182

182:                                              ; preds = %178
  %183 = getelementptr inbounds %struct.ID, ptr %180, i64 0, i32 5
  %184 = load i16, ptr %183, align 2, !tbaa !62
  %185 = and i16 %184, 1024
  %186 = icmp eq i16 %185, 0
  br i1 %186, label %187, label %214

187:                                              ; preds = %182
  %188 = getelementptr inbounds %struct.ID, ptr %180, i64 0, i32 3
  %189 = load ptr, ptr %188, align 8, !tbaa !64
  %190 = icmp eq ptr %189, null
  br i1 %190, label %193, label %191

191:                                              ; preds = %187
  %192 = add nsw i32 %151, 1
  br label %214

193:                                              ; preds = %187
  br i1 %120, label %200, label %194

194:                                              ; preds = %193
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #9
  store float 0x46293E5940000000, ptr %121, align 8, !tbaa !53
  store <2 x float> <float 0x46293E5940000000, float 0x46293E5940000000>, ptr %11, align 8, !tbaa !53
  store float 0xC6293E5940000000, ptr %122, align 8, !tbaa !53
  store <2 x float> <float 0xC6293E5940000000, float 0xC6293E5940000000>, ptr %12, align 8, !tbaa !53
  %195 = call zeroext i8 @BKE_object_minmax_dupli(ptr noundef %15, ptr noundef nonnull %158, ptr noundef nonnull %11, ptr noundef nonnull %12, i8 noundef zeroext 1) #10
  call void @mid_v3_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %11, ptr noundef nonnull %12) #10
  %196 = getelementptr inbounds %struct.Object, ptr %158, i64 0, i32 50
  %197 = getelementptr inbounds %struct.Object, ptr %158, i64 0, i32 47
  %198 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %196, ptr noundef nonnull %197) #10
  call void @mul_m4_v3(ptr noundef nonnull %196, ptr noundef nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #9
  %199 = load ptr, ptr %179, align 8, !tbaa !59
  br label %200

200:                                              ; preds = %193, %194
  %201 = phi ptr [ %180, %193 ], [ %199, %194 ]
  %202 = getelementptr inbounds %struct.Group, ptr %201, i64 0, i32 3
  call fastcc void @add_v3_v3(ptr noundef nonnull %202, ptr noundef nonnull %4) #8
  %203 = add nsw i32 %152, 1
  %204 = load ptr, ptr %179, align 8, !tbaa !59
  %205 = getelementptr inbounds %struct.ID, ptr %204, i64 0, i32 5
  %206 = load i16, ptr %205, align 2, !tbaa !62
  %207 = or i16 %206, 1024
  store i16 %207, ptr %205, align 2, !tbaa !62
  br label %214

208:                                              ; preds = %169
  %209 = getelementptr inbounds %struct.ID, ptr %171, i64 0, i32 3
  %210 = load ptr, ptr %209, align 8, !tbaa !65
  %211 = icmp ne ptr %210, null
  %212 = zext i1 %211 to i32
  %213 = add nsw i32 %151, %212
  br label %214

214:                                              ; preds = %208, %173, %178, %182, %200, %191
  %215 = phi i8 [ 0, %191 ], [ 1, %200 ], [ 0, %182 ], [ 0, %178 ], [ 0, %173 ], [ 0, %208 ]
  %216 = phi i32 [ %192, %191 ], [ %151, %200 ], [ %151, %182 ], [ %151, %178 ], [ %151, %173 ], [ %213, %208 ]
  %217 = phi i32 [ %152, %191 ], [ %203, %200 ], [ %152, %182 ], [ %152, %178 ], [ %152, %173 ], [ %152, %208 ]
  %218 = getelementptr inbounds %struct.Object, ptr %158, i64 0, i32 3
  %219 = load i16, ptr %218, align 8, !tbaa !43
  %220 = icmp eq i16 %219, 1
  %221 = select i1 %123, i1 %220, i1 false
  br i1 %221, label %222, label %237

222:                                              ; preds = %214
  %223 = load ptr, ptr %170, align 8, !tbaa !44
  br i1 %120, label %232, label %224

224:                                              ; preds = %222
  br i1 %128, label %225, label %227

225:                                              ; preds = %224
  %226 = call zeroext i8 @BKE_mesh_center_centroid(ptr noundef %223, ptr noundef nonnull %4) #10
  br label %232

227:                                              ; preds = %224
  br i1 %124, label %228, label %230

228:                                              ; preds = %227
  %229 = call zeroext i8 @BKE_mesh_center_median(ptr noundef %223, ptr noundef nonnull %4) #10
  br label %232

230:                                              ; preds = %227
  %231 = call zeroext i8 @BKE_mesh_center_bounds(ptr noundef %223, ptr noundef nonnull %4) #10
  br label %232

232:                                              ; preds = %225, %230, %228, %222
  call fastcc void @negate_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %4) #8
  call void @BKE_mesh_translate(ptr noundef %223, ptr noundef nonnull %5, i8 noundef zeroext 1) #10
  %233 = add nsw i32 %217, 1
  %234 = getelementptr inbounds %struct.ID, ptr %223, i64 0, i32 5
  %235 = load i16, ptr %234, align 2, !tbaa !66
  %236 = or i16 %235, 1024
  store i16 %236, ptr %234, align 2, !tbaa !66
  br label %334

237:                                              ; preds = %214
  %238 = getelementptr inbounds %struct.Object, ptr %158, i64 0, i32 3
  switch i16 %219, label %334 [
    i16 2, label %239
    i16 3, label %239
    i16 4, label %261
    i16 25, label %294
    i16 5, label %311
    i16 22, label %324
  ]

239:                                              ; preds = %237, %237
  %240 = load ptr, ptr %170, align 8, !tbaa !44
  br i1 %120, label %246, label %241

241:                                              ; preds = %239
  br i1 %124, label %242, label %244

242:                                              ; preds = %241
  %243 = call zeroext i8 @BKE_curve_center_median(ptr noundef %240, ptr noundef nonnull %4) #10
  br label %246

244:                                              ; preds = %241
  %245 = call zeroext i8 @BKE_curve_center_bounds(ptr noundef %240, ptr noundef nonnull %4) #10
  br label %246

246:                                              ; preds = %242, %244, %239
  %247 = load i16, ptr %238, align 8, !tbaa !43
  %248 = icmp eq i16 %247, 2
  br i1 %248, label %249, label %255

249:                                              ; preds = %246
  %250 = getelementptr inbounds %struct.Curve, ptr %240, i64 0, i32 23
  %251 = load i32, ptr %250, align 4, !tbaa !67
  %252 = and i32 %251, 1
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %255

254:                                              ; preds = %249
  store float 0.000000e+00, ptr %127, align 8, !tbaa !53
  br label %255

255:                                              ; preds = %254, %249, %246
  call fastcc void @negate_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %4) #8
  call void @BKE_curve_translate(ptr noundef %240, ptr noundef nonnull %5, i8 noundef zeroext 1) #10
  %256 = add nsw i32 %217, 1
  %257 = getelementptr inbounds %struct.ID, ptr %240, i64 0, i32 5
  %258 = load i16, ptr %257, align 2, !tbaa !70
  %259 = or i16 %258, 1024
  store i16 %259, ptr %257, align 2, !tbaa !70
  br i1 %23, label %260, label %334

260:                                              ; preds = %255
  br i1 %125, label %397, label %399

261:                                              ; preds = %237
  %262 = load ptr, ptr %170, align 8, !tbaa !44
  %263 = getelementptr inbounds %struct.Object, ptr %158, i64 0, i32 15
  %264 = load ptr, ptr %263, align 8, !tbaa !71
  %265 = icmp eq ptr %264, null
  %266 = select i1 %265, i1 %126, i1 false
  br i1 %266, label %334, label %267

267:                                              ; preds = %261
  br i1 %120, label %268, label %270

268:                                              ; preds = %267
  %269 = load <2 x float>, ptr %4, align 8, !tbaa !53
  br label %280

270:                                              ; preds = %267
  %271 = getelementptr inbounds [8 x [3 x float]], ptr %264, i64 0, i64 4
  %272 = load float, ptr %271, align 4, !tbaa !53
  %273 = getelementptr inbounds [8 x [3 x float]], ptr %264, i64 0, i64 2, i64 1
  %274 = load float, ptr %273, align 4, !tbaa !53
  %275 = load <2 x float>, ptr %264, align 4, !tbaa !53
  %276 = insertelement <2 x float> poison, float %272, i64 0
  %277 = insertelement <2 x float> %276, float %274, i64 1
  %278 = fadd <2 x float> %275, %277
  %279 = fmul <2 x float> %278, <float 5.000000e-01, float 5.000000e-01>
  store <2 x float> %279, ptr %4, align 8, !tbaa !53
  br label %280

280:                                              ; preds = %268, %270
  %281 = phi <2 x float> [ %269, %268 ], [ %279, %270 ]
  store float 0.000000e+00, ptr %127, align 8, !tbaa !53
  %282 = getelementptr inbounds %struct.Curve, ptr %262, i64 0, i32 44
  %283 = getelementptr inbounds %struct.Curve, ptr %262, i64 0, i32 40
  %284 = load float, ptr %283, align 8, !tbaa !72
  %285 = load <2 x float>, ptr %282, align 8, !tbaa !53
  %286 = insertelement <2 x float> poison, float %284, i64 0
  %287 = shufflevector <2 x float> %286, <2 x float> poison, <2 x i32> zeroinitializer
  %288 = fdiv <2 x float> %281, %287
  %289 = fsub <2 x float> %285, %288
  store <2 x float> %289, ptr %282, align 8, !tbaa !53
  %290 = add nsw i32 %217, 1
  %291 = getelementptr inbounds %struct.ID, ptr %262, i64 0, i32 5
  %292 = load i16, ptr %291, align 2, !tbaa !70
  %293 = or i16 %292, 1024
  store i16 %293, ptr %291, align 2, !tbaa !70
  br label %334

294:                                              ; preds = %237
  %295 = load ptr, ptr %170, align 8, !tbaa !44
  %296 = getelementptr inbounds %struct.ID, ptr %295, i64 0, i32 6
  %297 = load i32, ptr %296, align 4, !tbaa !73
  %298 = getelementptr inbounds %struct.ID, ptr %295, i64 0, i32 5
  %299 = load i16, ptr %298, align 2, !tbaa !58
  %300 = lshr i16 %299, 9
  %301 = and i16 %300, 1
  %302 = zext nneg i16 %301 to i32
  %303 = sub nsw i32 %297, %302
  %304 = icmp sgt i32 %303, 1
  br i1 %304, label %305, label %307

305:                                              ; preds = %294
  %306 = add nsw i32 %150, 1
  br label %334

307:                                              ; preds = %294
  call void @ED_armature_origin_set(ptr noundef %15, ptr noundef nonnull %158, ptr noundef nonnull %3, i32 noundef %20, i32 noundef %42) #10
  %308 = add nsw i32 %217, 1
  %309 = load i16, ptr %298, align 2, !tbaa !74
  %310 = or i16 %309, 1024
  store i16 %310, ptr %298, align 2, !tbaa !74
  call void @BKE_object_where_is_calc(ptr noundef %15, ptr noundef nonnull %158) #10
  call void @BKE_pose_where_is(ptr noundef %15, ptr noundef nonnull %158) #10
  call fastcc void @ignore_parent_tx(ptr noundef %14, ptr noundef %15, ptr noundef nonnull %158) #8
  br i1 %23, label %392, label %334

311:                                              ; preds = %237
  %312 = load ptr, ptr %170, align 8, !tbaa !44
  br i1 %120, label %318, label %313

313:                                              ; preds = %311
  br i1 %124, label %314, label %316

314:                                              ; preds = %313
  %315 = call zeroext i8 @BKE_mball_center_median(ptr noundef %312, ptr noundef nonnull %4) #10
  br label %318

316:                                              ; preds = %313
  %317 = call zeroext i8 @BKE_mball_center_bounds(ptr noundef %312, ptr noundef nonnull %4) #10
  br label %318

318:                                              ; preds = %314, %316, %311
  call fastcc void @negate_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %4) #8
  call void @BKE_mball_translate(ptr noundef %312, ptr noundef nonnull %5) #10
  %319 = add nsw i32 %217, 1
  %320 = getelementptr inbounds %struct.ID, ptr %312, i64 0, i32 5
  %321 = load i16, ptr %320, align 2, !tbaa !76
  %322 = or i16 %321, 1024
  store i16 %322, ptr %320, align 2, !tbaa !76
  br i1 %23, label %323, label %334

323:                                              ; preds = %318
  br i1 %125, label %397, label %399

324:                                              ; preds = %237
  %325 = load ptr, ptr %170, align 8, !tbaa !44
  br i1 %120, label %329, label %326

326:                                              ; preds = %324
  br i1 %124, label %327, label %328

327:                                              ; preds = %326
  call void @BKE_lattice_center_median(ptr noundef %325, ptr noundef nonnull %4) #10
  br label %329

328:                                              ; preds = %326
  call void @BKE_lattice_center_bounds(ptr noundef %325, ptr noundef nonnull %4) #10
  br label %329

329:                                              ; preds = %327, %328, %324
  call fastcc void @negate_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %4) #8
  call void @BKE_lattice_translate(ptr noundef %325, ptr noundef nonnull %5, i8 noundef zeroext 1) #10
  %330 = add nsw i32 %217, 1
  %331 = getelementptr inbounds %struct.ID, ptr %325, i64 0, i32 5
  %332 = load i16, ptr %331, align 2, !tbaa !78
  %333 = or i16 %332, 1024
  store i16 %333, ptr %331, align 2, !tbaa !78
  br label %334

334:                                              ; preds = %318, %305, %255, %237, %280, %261, %307, %329, %232
  %335 = phi i32 [ %150, %232 ], [ %150, %307 ], [ %150, %329 ], [ %150, %261 ], [ %150, %280 ], [ %150, %237 ], [ %150, %255 ], [ %306, %305 ], [ %150, %318 ]
  %336 = phi i8 [ 1, %232 ], [ %215, %307 ], [ 1, %329 ], [ %215, %261 ], [ 1, %280 ], [ %215, %237 ], [ 1, %255 ], [ %215, %305 ], [ 1, %318 ]
  %337 = phi i32 [ %233, %232 ], [ %308, %307 ], [ %330, %329 ], [ %217, %261 ], [ %290, %280 ], [ %217, %237 ], [ %256, %255 ], [ %217, %305 ], [ %319, %318 ]
  %338 = icmp ne i8 %336, 0
  %339 = select i1 %338, i1 %24, i1 false
  br i1 %339, label %340, label %392

340:                                              ; preds = %334
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %13) #9
  call void @BKE_object_to_mat4(ptr noundef nonnull %158, ptr noundef nonnull %13) #10
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %4) #8
  call void @mul_mat3_m4_v3(ptr noundef nonnull %13, ptr noundef nonnull %6) #10
  %341 = getelementptr inbounds %struct.Object, ptr %158, i64 0, i32 33
  call fastcc void @add_v3_v3(ptr noundef nonnull %341, ptr noundef nonnull %6) #8
  call void @BKE_object_where_is_calc(ptr noundef %15, ptr noundef nonnull %158) #10
  %342 = getelementptr inbounds %struct.Object, ptr %158, i64 0, i32 3
  %343 = load i16, ptr %342, align 8, !tbaa !43
  %344 = icmp eq i16 %343, 25
  br i1 %344, label %345, label %346

345:                                              ; preds = %340
  call void @BKE_pose_where_is(ptr noundef %15, ptr noundef nonnull %158) #10
  br label %346

346:                                              ; preds = %345, %340
  call fastcc void @ignore_parent_tx(ptr noundef %14, ptr noundef %15, ptr noundef nonnull %158) #8
  %347 = load ptr, ptr %7, align 8, !tbaa !19
  %348 = icmp eq ptr %347, null
  br i1 %348, label %391, label %349

349:                                              ; preds = %346
  %350 = getelementptr inbounds %struct.Object, ptr %158, i64 0, i32 112
  %351 = getelementptr inbounds %struct.Object, ptr %158, i64 0, i32 55
  br label %352

352:                                              ; preds = %349, %388
  %353 = phi ptr [ %347, %349 ], [ %389, %388 ]
  %354 = getelementptr inbounds %struct.CollectionPointerLink, ptr %353, i64 0, i32 2, i32 2
  %355 = load ptr, ptr %354, align 8, !tbaa !20
  %356 = getelementptr inbounds %struct.Object, ptr %355, i64 0, i32 53
  %357 = load i16, ptr %356, align 4, !tbaa !56
  %358 = and i16 %357, 1024
  %359 = icmp eq i16 %358, 0
  br i1 %359, label %360, label %388

360:                                              ; preds = %352
  %361 = load ptr, ptr %170, align 8, !tbaa !44
  %362 = icmp eq ptr %361, null
  br i1 %362, label %367, label %363

363:                                              ; preds = %360
  %364 = getelementptr inbounds %struct.Object, ptr %355, i64 0, i32 19
  %365 = load ptr, ptr %364, align 8, !tbaa !44
  %366 = icmp eq ptr %361, %365
  br i1 %366, label %379, label %367

367:                                              ; preds = %363, %360
  %368 = load ptr, ptr %350, align 8, !tbaa !59
  %369 = getelementptr inbounds %struct.Object, ptr %355, i64 0, i32 112
  %370 = load ptr, ptr %369, align 8, !tbaa !59
  %371 = icmp eq ptr %368, %370
  br i1 %371, label %372, label %388

372:                                              ; preds = %367
  %373 = load i16, ptr %351, align 8, !tbaa !61
  %374 = getelementptr inbounds %struct.Object, ptr %355, i64 0, i32 55
  %375 = load i16, ptr %374, align 8, !tbaa !61
  %376 = or i16 %375, %373
  %377 = and i16 %376, 256
  %378 = icmp eq i16 %377, 0
  br i1 %378, label %388, label %379

379:                                              ; preds = %372, %363
  %380 = or disjoint i16 %357, 1024
  store i16 %380, ptr %356, align 4, !tbaa !56
  call void @DAG_id_tag_update(ptr noundef nonnull %355, i16 noundef signext 3) #10
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %4) #8
  %381 = getelementptr inbounds %struct.Object, ptr %355, i64 0, i32 47
  call void @mul_mat3_m4_v3(ptr noundef nonnull %381, ptr noundef nonnull %6) #10
  %382 = getelementptr inbounds %struct.Object, ptr %355, i64 0, i32 33
  call fastcc void @add_v3_v3(ptr noundef nonnull %382, ptr noundef nonnull %6) #8
  call void @BKE_object_where_is_calc(ptr noundef %15, ptr noundef nonnull %355) #10
  %383 = getelementptr inbounds %struct.Object, ptr %355, i64 0, i32 3
  %384 = load i16, ptr %383, align 8, !tbaa !43
  %385 = icmp eq i16 %384, 25
  br i1 %385, label %386, label %387

386:                                              ; preds = %379
  call void @BKE_pose_where_is(ptr noundef %15, ptr noundef nonnull %355) #10
  br label %387

387:                                              ; preds = %386, %379
  call fastcc void @ignore_parent_tx(ptr noundef %14, ptr noundef %15, ptr noundef nonnull %355) #8
  br label %388

388:                                              ; preds = %387, %372, %367, %352
  %389 = load ptr, ptr %353, align 8, !tbaa !19
  %390 = icmp eq ptr %389, null
  br i1 %390, label %391, label %352, !llvm.loop !80

391:                                              ; preds = %388, %346
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %13) #9
  br label %392

392:                                              ; preds = %307, %391, %334, %156
  %393 = phi i1 [ true, %156 ], [ false, %307 ], [ true, %391 ], [ true, %334 ]
  %394 = phi i32 [ %150, %156 ], [ %150, %307 ], [ %335, %391 ], [ %335, %334 ]
  %395 = phi i32 [ %151, %156 ], [ %216, %307 ], [ %216, %391 ], [ %216, %334 ]
  %396 = phi i32 [ %152, %156 ], [ %308, %307 ], [ %337, %391 ], [ %337, %334 ]
  br i1 %393, label %149, label %399, !llvm.loop !81

397:                                              ; preds = %323, %260
  %398 = phi i32 [ %256, %260 ], [ %319, %323 ]
  call void @DAG_id_tag_update(ptr noundef nonnull %17, i16 noundef signext 2) #10
  br label %399

399:                                              ; preds = %392, %149, %397, %323, %260
  %400 = phi i32 [ %150, %260 ], [ %150, %323 ], [ %150, %397 ], [ %150, %149 ], [ %394, %392 ]
  %401 = phi i32 [ %216, %260 ], [ %216, %323 ], [ %216, %397 ], [ %151, %149 ], [ %395, %392 ]
  %402 = phi i32 [ %256, %260 ], [ %319, %323 ], [ %398, %397 ], [ %152, %149 ], [ %396, %392 ]
  call void @BLI_freelistN(ptr noundef nonnull %7) #10
  %403 = load ptr, ptr %116, align 8, !tbaa !19
  %404 = icmp eq ptr %403, null
  br i1 %404, label %419, label %405

405:                                              ; preds = %399, %416
  %406 = phi ptr [ %417, %416 ], [ %403, %399 ]
  %407 = getelementptr inbounds %struct.Object, ptr %406, i64 0, i32 19
  %408 = load ptr, ptr %407, align 8, !tbaa !44
  %409 = icmp eq ptr %408, null
  br i1 %409, label %416, label %410

410:                                              ; preds = %405
  %411 = getelementptr inbounds %struct.ID, ptr %408, i64 0, i32 5
  %412 = load i16, ptr %411, align 2, !tbaa !58
  %413 = and i16 %412, 1024
  %414 = icmp eq i16 %413, 0
  br i1 %414, label %416, label %415

415:                                              ; preds = %410
  call void @DAG_id_tag_update(ptr noundef nonnull %406, i16 noundef signext 3) #10
  br label %416

416:                                              ; preds = %405, %410, %415
  %417 = load ptr, ptr %406, align 8, !tbaa !19
  %418 = icmp eq ptr %417, null
  br i1 %418, label %419, label %405, !llvm.loop !82

419:                                              ; preds = %416, %399
  %420 = icmp eq i32 %402, 0
  br i1 %420, label %422, label %421

421:                                              ; preds = %419
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85065728, ptr noundef null) #10
  br label %422

422:                                              ; preds = %421, %419
  %423 = add nsw i32 %401, %400
  %424 = icmp eq i32 %423, 0
  br i1 %424, label %435, label %425

425:                                              ; preds = %422
  %426 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %427 = load ptr, ptr %426, align 8, !tbaa !37
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %427, i32 noundef 16, ptr noundef nonnull @.str.56, i32 noundef %423, i32 noundef %402) #10
  %428 = icmp eq i32 %401, 0
  br i1 %428, label %431, label %429

429:                                              ; preds = %425
  %430 = load ptr, ptr %426, align 8, !tbaa !37
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %430, i32 noundef 16, ptr noundef nonnull @.str.57, i32 noundef %401) #10
  br label %431

431:                                              ; preds = %429, %425
  %432 = icmp eq i32 %400, 0
  br i1 %432, label %435, label %433

433:                                              ; preds = %431
  %434 = load ptr, ptr %426, align 8, !tbaa !37
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %434, i32 noundef 16, ptr noundef nonnull @.str.58, i32 noundef %400) #10
  br label %435

435:                                              ; preds = %422, %433, %431, %26
  %436 = phi i32 [ 2, %26 ], [ 4, %431 ], [ 4, %433 ], [ 4, %422 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  ret i32 %436
}

; Function Attrs: optsize
declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @object_clear_transform_generic_exec(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr noundef %3) unnamed_addr #1 {
  %5 = alloca %struct.ListBase, align 8
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #10
  %7 = icmp eq ptr %2, null
  %8 = icmp eq ptr %3, null
  %9 = or i1 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !37
  tail call void @BKE_report(ptr noundef %12, i32 noundef 32, ptr noundef nonnull @.str.48) #10
  br label %32

13:                                               ; preds = %4
  %14 = tail call ptr @ANIM_get_keyingset_for_autokeying(ptr noundef %6, ptr noundef nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9
  %15 = call i32 @CTX_data_selected_editable_objects(ptr noundef %0, ptr noundef nonnull %5) #10
  %16 = load ptr, ptr %5, align 8, !tbaa !19
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18

18:                                               ; preds = %13, %28
  %19 = phi ptr [ %29, %28 ], [ %16, %13 ]
  %20 = getelementptr inbounds %struct.CollectionPointerLink, ptr %19, i64 0, i32 2, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !20
  %22 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 27
  %23 = load i32, ptr %22, align 8, !tbaa !83
  %24 = and i32 %23, 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  call void %2(ptr noundef nonnull %21) #10, !callees !84
  %27 = call zeroext i8 @ED_autokeyframe_object(ptr noundef %0, ptr noundef %6, ptr noundef nonnull %21, ptr noundef %14) #10
  call void @DAG_id_tag_update(ptr noundef nonnull %21, i16 noundef signext 1) #10
  br label %28

28:                                               ; preds = %26, %18
  %29 = load ptr, ptr %19, align 8, !tbaa !19
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %18, !llvm.loop !85

31:                                               ; preds = %28, %13
  call void @BLI_freelistN(ptr noundef nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85065728, ptr noundef null) #10
  br label %32

32:                                               ; preds = %31, %10
  %33 = phi i32 [ 2, %10 ], [ 4, %31 ]
  ret i32 %33
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @object_clear_loc(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 56
  %3 = load i16, ptr %2, align 2, !tbaa !86
  %4 = and i16 %3, 1
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 34
  store float 0.000000e+00, ptr %7, align 4, !tbaa !53
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 33
  store float 0.000000e+00, ptr %8, align 8, !tbaa !53
  br label %9

9:                                                ; preds = %6, %1
  %10 = and i16 %3, 2
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 34, i64 1
  store float 0.000000e+00, ptr %13, align 4, !tbaa !53
  %14 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 33, i64 1
  store float 0.000000e+00, ptr %14, align 4, !tbaa !53
  br label %15

15:                                               ; preds = %12, %9
  %16 = and i16 %3, 4
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 34, i64 2
  store float 0.000000e+00, ptr %19, align 4, !tbaa !53
  %20 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 33, i64 2
  store float 0.000000e+00, ptr %20, align 8, !tbaa !53
  br label %21

21:                                               ; preds = %18, %15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ANIM_get_keyingset_for_autokeying(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CTX_data_selected_editable_objects(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ED_autokeyframe_object(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @object_clear_rot(ptr noundef %0) #1 {
  %2 = alloca [3 x float], align 8
  %3 = alloca [3 x float], align 4
  %4 = alloca [4 x float], align 16
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 56
  %6 = load i16, ptr %5, align 2, !tbaa !86
  %7 = zext i16 %6 to i32
  %8 = and i32 %7, 568
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %163, label %10

10:                                               ; preds = %1
  %11 = and i32 %7, 1024
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %111, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 83
  %15 = load i16, ptr %14, align 8, !tbaa !87
  switch i16 %15, label %93 [
    i16 -1, label %16
    i16 0, label %69
  ]

16:                                               ; preds = %13
  %17 = and i32 %7, 512
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 45
  store <2 x float> zeroinitializer, ptr %20, align 8, !tbaa !53
  br label %21

21:                                               ; preds = %19, %16
  %22 = and i16 %6, 8
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 44
  store float 0.000000e+00, ptr %25, align 4, !tbaa !53
  %26 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 43
  store float 0.000000e+00, ptr %26, align 8, !tbaa !53
  br label %27

27:                                               ; preds = %24, %21
  %28 = and i16 %6, 16
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 44, i64 1
  store float 0.000000e+00, ptr %31, align 4, !tbaa !53
  %32 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 43, i64 1
  store float 0.000000e+00, ptr %32, align 4, !tbaa !53
  br label %33

33:                                               ; preds = %30, %27
  %34 = and i16 %6, 32
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 44, i64 2
  store float 0.000000e+00, ptr %37, align 4, !tbaa !53
  %38 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 43, i64 2
  store float 0.000000e+00, ptr %38, align 8, !tbaa !53
  br label %39

39:                                               ; preds = %36, %33
  %40 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 43
  %41 = load float, ptr %40, align 8, !tbaa !53
  %42 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 43, i64 1
  %43 = load float, ptr %42, align 4, !tbaa !53
  %44 = fsub float %41, %43
  %45 = tail call float @llvm.fabs.f32(float %44)
  %46 = fcmp ult float %45, 0x3E80000000000000
  br i1 %46, label %47, label %54

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 43, i64 2
  %49 = load float, ptr %48, align 8, !tbaa !53
  %50 = fsub float %43, %49
  %51 = tail call float @llvm.fabs.f32(float %50)
  %52 = fcmp ult float %51, 0x3E80000000000000
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  store float 1.000000e+00, ptr %42, align 4, !tbaa !53
  br label %54

54:                                               ; preds = %53, %47, %39
  %55 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 44
  %56 = load float, ptr %55, align 4, !tbaa !53
  %57 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 44, i64 1
  %58 = load float, ptr %57, align 4, !tbaa !53
  %59 = fsub float %56, %58
  %60 = tail call float @llvm.fabs.f32(float %59)
  %61 = fcmp ult float %60, 0x3E80000000000000
  br i1 %61, label %62, label %177

62:                                               ; preds = %54
  %63 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 44, i64 2
  %64 = load float, ptr %63, align 4, !tbaa !53
  %65 = fsub float %58, %64
  %66 = tail call float @llvm.fabs.f32(float %65)
  %67 = fcmp ult float %66, 0x3E80000000000000
  br i1 %67, label %68, label %177

68:                                               ; preds = %62
  store float 1.000000e+00, ptr %57, align 4, !tbaa !53
  br label %177

69:                                               ; preds = %13
  %70 = and i32 %7, 512
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 42
  store float 1.000000e+00, ptr %73, align 8, !tbaa !53
  %74 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 41
  store float 1.000000e+00, ptr %74, align 8, !tbaa !53
  br label %75

75:                                               ; preds = %72, %69
  %76 = and i16 %6, 8
  %77 = icmp eq i16 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 42, i64 1
  store float 0.000000e+00, ptr %79, align 4, !tbaa !53
  %80 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 41, i64 1
  store float 0.000000e+00, ptr %80, align 4, !tbaa !53
  br label %81

81:                                               ; preds = %78, %75
  %82 = and i16 %6, 16
  %83 = icmp eq i16 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 42, i64 2
  store float 0.000000e+00, ptr %85, align 8, !tbaa !53
  %86 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 41, i64 2
  store float 0.000000e+00, ptr %86, align 8, !tbaa !53
  br label %87

87:                                               ; preds = %84, %81
  %88 = and i16 %6, 32
  %89 = icmp eq i16 %88, 0
  br i1 %89, label %90, label %177

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 42, i64 3
  store float 0.000000e+00, ptr %91, align 4, !tbaa !53
  %92 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 41, i64 3
  store float 0.000000e+00, ptr %92, align 4, !tbaa !53
  br label %177

93:                                               ; preds = %13
  %94 = and i32 %7, 8
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 40
  store float 0.000000e+00, ptr %97, align 4, !tbaa !53
  %98 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 39
  store float 0.000000e+00, ptr %98, align 8, !tbaa !53
  br label %99

99:                                               ; preds = %96, %93
  %100 = and i16 %6, 16
  %101 = icmp eq i16 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 40, i64 1
  store float 0.000000e+00, ptr %103, align 4, !tbaa !53
  %104 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 39, i64 1
  store float 0.000000e+00, ptr %104, align 4, !tbaa !53
  br label %105

105:                                              ; preds = %102, %99
  %106 = and i16 %6, 32
  %107 = icmp eq i16 %106, 0
  br i1 %107, label %108, label %177

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 40, i64 2
  store float 0.000000e+00, ptr %109, align 4, !tbaa !53
  %110 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 39, i64 2
  store float 0.000000e+00, ptr %110, align 8, !tbaa !53
  br label %177

111:                                              ; preds = %10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %112 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 83
  %113 = load i16, ptr %112, align 8, !tbaa !87
  switch i16 %113, label %120 [
    i16 0, label %114
    i16 -1, label %116
  ]

114:                                              ; preds = %111
  %115 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 41
  call void @copy_qt_qt(ptr noundef nonnull %4, ptr noundef nonnull %115) #10
  call void @quat_to_eul(ptr noundef nonnull %3, ptr noundef nonnull %115) #10
  br label %122

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 43
  %118 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 45
  %119 = load float, ptr %118, align 8, !tbaa !88
  call void @axis_angle_to_eulO(ptr noundef nonnull %3, i16 noundef signext 1, ptr noundef nonnull %117, float noundef %119) #10
  br label %122

120:                                              ; preds = %111
  %121 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 39
  call fastcc void @copy_v3_v3(ptr noundef nonnull %3, ptr noundef nonnull %121) #8
  br label %122

122:                                              ; preds = %116, %120, %114
  %123 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 2
  store float 0.000000e+00, ptr %123, align 8, !tbaa !53
  %124 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 1
  store <2 x float> zeroinitializer, ptr %2, align 8, !tbaa !53
  %125 = load i16, ptr %5, align 2, !tbaa !86
  %126 = and i16 %125, 8
  %127 = icmp eq i16 %126, 0
  br i1 %127, label %130, label %128

128:                                              ; preds = %122
  %129 = load float, ptr %3, align 4, !tbaa !53
  store float %129, ptr %2, align 8, !tbaa !53
  br label %130

130:                                              ; preds = %128, %122
  %131 = and i16 %125, 16
  %132 = icmp eq i16 %131, 0
  br i1 %132, label %136, label %133

133:                                              ; preds = %130
  %134 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  %135 = load float, ptr %134, align 4, !tbaa !53
  store float %135, ptr %124, align 4, !tbaa !53
  br label %136

136:                                              ; preds = %133, %130
  %137 = and i16 %125, 32
  %138 = icmp eq i16 %137, 0
  br i1 %138, label %142, label %139

139:                                              ; preds = %136
  %140 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  %141 = load float, ptr %140, align 4, !tbaa !53
  store float %141, ptr %123, align 8, !tbaa !53
  br label %142

142:                                              ; preds = %139, %136
  %143 = load i16, ptr %112, align 8, !tbaa !87
  switch i16 %143, label %160 [
    i16 0, label %144
    i16 -1, label %157
  ]

144:                                              ; preds = %142
  %145 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 41
  call void @eul_to_quat(ptr noundef nonnull %145, ptr noundef nonnull %2) #10
  %146 = load float, ptr %4, align 16, !tbaa !53
  %147 = fcmp olt float %146, 0.000000e+00
  br i1 %147, label %148, label %151

148:                                              ; preds = %144
  %149 = load float, ptr %145, align 8, !tbaa !53
  %150 = fcmp ogt float %149, 0.000000e+00
  br i1 %150, label %156, label %151

151:                                              ; preds = %148, %144
  %152 = fcmp ogt float %146, 0.000000e+00
  br i1 %152, label %153, label %162

153:                                              ; preds = %151
  %154 = load float, ptr %145, align 8, !tbaa !53
  %155 = fcmp olt float %154, 0.000000e+00
  br i1 %155, label %156, label %162

156:                                              ; preds = %153, %148
  call void @mul_qt_fl(ptr noundef nonnull %145, float noundef -1.000000e+00) #10
  br label %162

157:                                              ; preds = %142
  %158 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 43
  %159 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 45
  call void @eulO_to_axis_angle(ptr noundef nonnull %158, ptr noundef nonnull %159, ptr noundef nonnull %2, i16 noundef signext 1) #10
  br label %162

160:                                              ; preds = %142
  %161 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 39
  call fastcc void @copy_v3_v3(ptr noundef nonnull %161, ptr noundef nonnull %2) #8
  br label %162

162:                                              ; preds = %157, %160, %151, %153, %156
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #9
  br label %177

163:                                              ; preds = %1
  %164 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 83
  %165 = load i16, ptr %164, align 8, !tbaa !87
  switch i16 %165, label %174 [
    i16 0, label %166
    i16 -1, label %169
  ]

166:                                              ; preds = %163
  %167 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 41
  tail call void @unit_qt(ptr noundef nonnull %167) #10
  %168 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 42
  tail call void @unit_qt(ptr noundef nonnull %168) #10
  br label %177

169:                                              ; preds = %163
  %170 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 43
  %171 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 45
  tail call void @unit_axis_angle(ptr noundef nonnull %170, ptr noundef nonnull %171) #10
  %172 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 44
  %173 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 46
  tail call void @unit_axis_angle(ptr noundef nonnull %172, ptr noundef nonnull %173) #10
  br label %177

174:                                              ; preds = %163
  %175 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 39
  tail call fastcc void @zero_v3(ptr noundef nonnull %175) #8
  %176 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 40
  tail call fastcc void @zero_v3(ptr noundef nonnull %176) #8
  br label %177

177:                                              ; preds = %166, %174, %169, %162, %90, %87, %108, %105, %54, %62, %68
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: optsize
declare void @copy_qt_qt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @quat_to_eul(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @axis_angle_to_eulO(ptr noundef, i16 noundef signext, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = load float, ptr %1, align 4, !tbaa !53
  store float %3, ptr %0, align 4, !tbaa !53
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !53
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !53
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !53
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !53
  ret void
}

; Function Attrs: optsize
declare void @eul_to_quat(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_qt_fl(ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @eulO_to_axis_angle(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @unit_qt(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @unit_axis_angle(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #0 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !53
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @object_clear_scale(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 56
  %3 = load i16, ptr %2, align 2, !tbaa !86
  %4 = and i16 %3, 64
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 38
  store float 1.000000e+00, ptr %7, align 4, !tbaa !53
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 36
  store float 1.000000e+00, ptr %8, align 4, !tbaa !53
  br label %9

9:                                                ; preds = %6, %1
  %10 = and i16 %3, 128
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 38, i64 1
  store float 1.000000e+00, ptr %13, align 4, !tbaa !53
  %14 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 36, i64 1
  store float 1.000000e+00, ptr %14, align 4, !tbaa !53
  br label %15

15:                                               ; preds = %12, %9
  %16 = and i16 %3, 256
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 38, i64 2
  store float 1.000000e+00, ptr %19, align 4, !tbaa !53
  %20 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 36, i64 2
  store float 1.000000e+00, ptr %20, align 4, !tbaa !53
  br label %21

21:                                               ; preds = %18, %15
  ret void
}

; Function Attrs: optsize
declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = load float, ptr %1, align 4, !tbaa !53
  %4 = fneg float %3
  store float %4, ptr %0, align 4, !tbaa !53
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !53
  %7 = fneg float %6
  %8 = getelementptr inbounds float, ptr %0, i64 1
  store float %7, ptr %8, align 4, !tbaa !53
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !53
  %11 = fneg float %10
  %12 = getelementptr inbounds float, ptr %0, i64 2
  store float %11, ptr %12, align 4, !tbaa !53
  ret void
}

; Function Attrs: optsize
declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_object_where_is_calc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_object_apply_mat4(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @apply_objects_internal(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #1 {
  %6 = alloca [3 x [3 x float]], align 16
  %7 = alloca [3 x [3 x float]], align 16
  %8 = alloca [3 x [3 x float]], align 16
  %9 = alloca [4 x [4 x float]], align 16
  %10 = alloca %struct.ListBase, align 8
  %11 = alloca %struct.ListBase, align 8
  %12 = alloca [3 x [3 x float]], align 16
  %13 = alloca [3 x [3 x float]], align 16
  %14 = alloca [3 x [3 x float]], align 16
  %15 = tail call ptr @CTX_data_main(ptr noundef %0) #10
  %16 = tail call ptr @CTX_data_scene(ptr noundef %0) #10
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #9
  %17 = call i32 @CTX_data_selected_editable_objects(ptr noundef %0, ptr noundef nonnull %10) #10
  %18 = load ptr, ptr %10, align 8, !tbaa !19
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  call void @BLI_freelistN(ptr noundef nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #9
  br label %105

21:                                               ; preds = %5
  %22 = or i8 %3, %2
  %23 = icmp eq i8 %22, 0
  br label %24

24:                                               ; preds = %21, %99
  %25 = phi ptr [ %18, %21 ], [ %101, %99 ]
  %26 = phi i8 [ 1, %21 ], [ %100, %99 ]
  %27 = getelementptr inbounds %struct.CollectionPointerLink, ptr %25, i64 0, i32 2, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !20
  %29 = getelementptr inbounds %struct.Object, ptr %28, i64 0, i32 3
  %30 = load i16, ptr %29, align 8, !tbaa !43
  switch i16 %30, label %65 [
    i16 1, label %31
    i16 25, label %31
    i16 22, label %31
    i16 5, label %31
    i16 2, label %31
    i16 3, label %31
  ]

31:                                               ; preds = %24, %24, %24, %24, %24, %24
  %32 = getelementptr inbounds %struct.Object, ptr %28, i64 0, i32 19
  %33 = load ptr, ptr %32, align 8, !tbaa !44
  %34 = getelementptr inbounds %struct.ID, ptr %33, i64 0, i32 6
  %35 = load i32, ptr %34, align 4, !tbaa !73
  %36 = getelementptr inbounds %struct.ID, ptr %33, i64 0, i32 5
  %37 = load i16, ptr %36, align 2, !tbaa !58
  %38 = lshr i16 %37, 9
  %39 = and i16 %38, 1
  %40 = zext nneg i16 %39 to i32
  %41 = sub nsw i32 %35, %40
  %42 = icmp sgt i32 %41, 1
  br i1 %42, label %43, label %50

43:                                               ; preds = %31
  %44 = getelementptr inbounds %struct.ID, ptr %28, i64 0, i32 4, i64 2
  %45 = getelementptr inbounds %struct.ID, ptr %33, i64 0, i32 4
  %46 = load i16, ptr %45, align 8, !tbaa !89
  %47 = sext i16 %46 to i32
  %48 = call ptr @BKE_idcode_to_name(i32 noundef %47) #10
  %49 = getelementptr inbounds %struct.ID, ptr %33, i64 0, i32 4, i64 2
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.50, ptr noundef nonnull %44, ptr noundef %48, ptr noundef nonnull %49) #10
  br label %50

50:                                               ; preds = %43, %31
  %51 = phi i8 [ 0, %43 ], [ %26, %31 ]
  %52 = getelementptr inbounds %struct.ID, ptr %33, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !65
  %54 = icmp eq ptr %53, null
  br i1 %54, label %62, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.ID, ptr %28, i64 0, i32 4, i64 2
  %57 = getelementptr inbounds %struct.ID, ptr %33, i64 0, i32 4
  %58 = load i16, ptr %57, align 8, !tbaa !89
  %59 = sext i16 %58 to i32
  %60 = call ptr @BKE_idcode_to_name(i32 noundef %59) #10
  %61 = getelementptr inbounds %struct.ID, ptr %33, i64 0, i32 4, i64 2
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.51, ptr noundef nonnull %56, ptr noundef %60, ptr noundef nonnull %61) #10
  br label %62

62:                                               ; preds = %55, %50
  %63 = phi i8 [ %51, %50 ], [ 0, %55 ]
  %64 = load i16, ptr %29, align 8, !tbaa !43
  br label %65

65:                                               ; preds = %62, %24
  %66 = phi i16 [ %64, %62 ], [ %30, %24 ]
  %67 = phi i8 [ %63, %62 ], [ %26, %24 ]
  %68 = and i16 %66, -2
  %69 = icmp eq i16 %68, 2
  br i1 %69, label %70, label %99

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.Object, ptr %28, i64 0, i32 19
  %72 = load ptr, ptr %71, align 8, !tbaa !44
  %73 = icmp eq i16 %66, 2
  br i1 %73, label %74, label %87

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.Curve, ptr %72, i64 0, i32 23
  %76 = load i32, ptr %75, align 4, !tbaa !67
  %77 = and i32 %76, 1
  %78 = icmp ne i32 %77, 0
  %79 = or i1 %23, %78
  br i1 %79, label %87, label %80

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.ID, ptr %28, i64 0, i32 4, i64 2
  %82 = getelementptr inbounds %struct.ID, ptr %72, i64 0, i32 4
  %83 = load i16, ptr %82, align 8, !tbaa !89
  %84 = sext i16 %83 to i32
  %85 = call ptr @BKE_idcode_to_name(i32 noundef %84) #10
  %86 = getelementptr inbounds %struct.ID, ptr %72, i64 0, i32 4, i64 2
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.52, ptr noundef nonnull %81, ptr noundef %85, ptr noundef nonnull %86) #10
  br label %87

87:                                               ; preds = %80, %74, %70
  %88 = phi i8 [ %67, %74 ], [ 0, %80 ], [ %67, %70 ]
  %89 = getelementptr inbounds %struct.Curve, ptr %72, i64 0, i32 9
  %90 = load ptr, ptr %89, align 8, !tbaa !90
  %91 = icmp eq ptr %90, null
  br i1 %91, label %99, label %92

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.ID, ptr %28, i64 0, i32 4, i64 2
  %94 = getelementptr inbounds %struct.ID, ptr %72, i64 0, i32 4
  %95 = load i16, ptr %94, align 8, !tbaa !89
  %96 = sext i16 %95 to i32
  %97 = call ptr @BKE_idcode_to_name(i32 noundef %96) #10
  %98 = getelementptr inbounds %struct.ID, ptr %72, i64 0, i32 4, i64 2
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.53, ptr noundef nonnull %93, ptr noundef %97, ptr noundef nonnull %98) #10
  br label %99

99:                                               ; preds = %65, %87, %92
  %100 = phi i8 [ %67, %65 ], [ 0, %92 ], [ %88, %87 ]
  %101 = load ptr, ptr %25, align 8, !tbaa !19
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %24, !llvm.loop !91

103:                                              ; preds = %99
  %104 = icmp eq i8 %100, 0
  call void @BLI_freelistN(ptr noundef nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #9
  br i1 %104, label %206, label %105

105:                                              ; preds = %20, %103
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #9
  %106 = call i32 @CTX_data_selected_editable_objects(ptr noundef %0, ptr noundef nonnull %11) #10
  %107 = load ptr, ptr %11, align 8, !tbaa !19
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %110

109:                                              ; preds = %105
  call void @BLI_freelistN(ptr noundef nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #9
  br label %204

110:                                              ; preds = %105
  %111 = icmp ne i8 %4, 0
  %112 = icmp ne i8 %3, 0
  %113 = and i1 %112, %111
  %114 = icmp eq i8 %4, 0
  %115 = icmp eq i8 %3, 0
  %116 = icmp eq i8 %2, 0
  %117 = getelementptr inbounds [4 x [4 x float]], ptr %9, i64 0, i64 3
  %118 = or i8 %3, %2
  %119 = icmp eq i8 %118, 0
  %120 = icmp eq i8 %4, 1
  %121 = and i1 %119, %120
  br label %122

122:                                              ; preds = %110, %198
  %123 = phi ptr [ %107, %110 ], [ %200, %198 ]
  %124 = phi i8 [ 0, %110 ], [ %199, %198 ]
  %125 = getelementptr inbounds %struct.CollectionPointerLink, ptr %123, i64 0, i32 2, i32 2
  %126 = load ptr, ptr %125, align 8, !tbaa !20
  br i1 %113, label %127, label %128

127:                                              ; preds = %122
  call void @BKE_object_to_mat3(ptr noundef %126, ptr noundef nonnull %6) #10
  br label %134

128:                                              ; preds = %122
  br i1 %114, label %130, label %129

129:                                              ; preds = %128
  call void @BKE_object_scale_to_mat3(ptr noundef %126, ptr noundef nonnull %6) #10
  br label %134

130:                                              ; preds = %128
  br i1 %115, label %133, label %131

131:                                              ; preds = %130
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %12) #9
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %13) #9
  call void @BKE_object_rot_to_mat3(ptr noundef %126, ptr noundef nonnull %6, i8 noundef zeroext 1) #10
  call void @BKE_object_scale_to_mat3(ptr noundef %126, ptr noundef nonnull %12) #10
  %132 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %13, ptr noundef nonnull %12) #10
  call void @mul_m3_m3m3(ptr noundef nonnull %6, ptr noundef nonnull %13, ptr noundef nonnull %6) #10
  call void @mul_m3_m3m3(ptr noundef nonnull %6, ptr noundef nonnull %6, ptr noundef nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %12) #9
  br label %134

133:                                              ; preds = %130
  call void @unit_m3(ptr noundef nonnull %6) #10
  br label %134

134:                                              ; preds = %129, %133, %131, %127
  call void @copy_m4_m3(ptr noundef nonnull %9, ptr noundef nonnull %6) #10
  br i1 %116, label %139, label %135

135:                                              ; preds = %134
  %136 = getelementptr inbounds %struct.Object, ptr %126, i64 0, i32 33
  call fastcc void @copy_v3_v3(ptr noundef nonnull %117, ptr noundef nonnull %136) #8
  br i1 %113, label %139, label %137

137:                                              ; preds = %135
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %14) #9
  call void @BKE_object_to_mat3(ptr noundef %126, ptr noundef nonnull %7) #10
  %138 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %8, ptr noundef nonnull %7) #10
  call void @mul_m3_m3m3(ptr noundef nonnull %14, ptr noundef nonnull %6, ptr noundef nonnull %8) #10
  call void @mul_m3_v3(ptr noundef nonnull %14, ptr noundef nonnull %117) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %14) #9
  br label %139

139:                                              ; preds = %137, %135, %134
  %140 = getelementptr inbounds %struct.Object, ptr %126, i64 0, i32 3
  %141 = load i16, ptr %140, align 8, !tbaa !43
  switch i16 %141, label %198 [
    i16 1, label %142
    i16 25, label %147
    i16 22, label %148
    i16 5, label %151
    i16 2, label %154
    i16 3, label %154
    i16 11, label %158
    i16 0, label %165
  ]

142:                                              ; preds = %139
  %143 = getelementptr inbounds %struct.Object, ptr %126, i64 0, i32 19
  %144 = load ptr, ptr %143, align 8, !tbaa !44
  br i1 %114, label %146, label %145

145:                                              ; preds = %142
  call void @multiresModifier_scale_disp(ptr noundef %16, ptr noundef nonnull %126) #10
  br label %146

146:                                              ; preds = %145, %142
  call void @BKE_mesh_transform(ptr noundef %144, ptr noundef nonnull %9, i8 noundef zeroext 1) #10
  call void @BKE_mesh_calc_normals(ptr noundef %144) #10
  br label %180

147:                                              ; preds = %139
  call void @ED_armature_apply_transform(ptr noundef nonnull %126, ptr noundef nonnull %9) #10
  br label %180

148:                                              ; preds = %139
  %149 = getelementptr inbounds %struct.Object, ptr %126, i64 0, i32 19
  %150 = load ptr, ptr %149, align 8, !tbaa !44
  call void @BKE_lattice_transform(ptr noundef %150, ptr noundef nonnull %9, i8 noundef zeroext 1) #10
  br label %180

151:                                              ; preds = %139
  %152 = getelementptr inbounds %struct.Object, ptr %126, i64 0, i32 19
  %153 = load ptr, ptr %152, align 8, !tbaa !44
  call void @BKE_mball_transform(ptr noundef %153, ptr noundef nonnull %9) #10
  br label %180

154:                                              ; preds = %139, %139
  %155 = getelementptr inbounds %struct.Object, ptr %126, i64 0, i32 19
  %156 = load ptr, ptr %155, align 8, !tbaa !44
  %157 = call float @mat3_to_scale(ptr noundef nonnull %6) #10
  call void @BKE_curve_transform_ex(ptr noundef %156, ptr noundef nonnull %9, i8 noundef zeroext 1, float noundef %157) #10
  br label %180

158:                                              ; preds = %139
  %159 = call ptr @BKE_object_movieclip_get(ptr noundef %16, ptr noundef nonnull %126, i8 noundef zeroext 0) #10
  %160 = icmp eq ptr %159, null
  br i1 %160, label %198, label %161

161:                                              ; preds = %158
  br i1 %114, label %180, label %162

162:                                              ; preds = %161
  %163 = getelementptr inbounds %struct.MovieClip, ptr %159, i64 0, i32 11
  %164 = getelementptr inbounds %struct.Object, ptr %126, i64 0, i32 36
  call void @BKE_tracking_reconstruction_scale(ptr noundef nonnull %163, ptr noundef nonnull %164) #10
  br label %180

165:                                              ; preds = %139
  br i1 %121, label %166, label %180

166:                                              ; preds = %165
  %167 = getelementptr inbounds %struct.Object, ptr %126, i64 0, i32 36
  %168 = load float, ptr %167, align 4, !tbaa !53
  %169 = call float @llvm.fabs.f32(float %168)
  %170 = getelementptr inbounds %struct.Object, ptr %126, i64 0, i32 36, i64 1
  %171 = load float, ptr %170, align 4, !tbaa !53
  %172 = call float @llvm.fabs.f32(float %171)
  %173 = getelementptr inbounds %struct.Object, ptr %126, i64 0, i32 36, i64 2
  %174 = load float, ptr %173, align 4, !tbaa !53
  %175 = call float @llvm.fabs.f32(float %174)
  %176 = call fastcc float @max_fff(float noundef %169, float noundef %172, float noundef %175) #8
  %177 = getelementptr inbounds %struct.Object, ptr %126, i64 0, i32 89
  %178 = load float, ptr %177, align 8, !tbaa !92
  %179 = fmul float %176, %178
  store float %179, ptr %177, align 8, !tbaa !92
  br label %180

180:                                              ; preds = %162, %161, %147, %151, %165, %166, %154, %148, %146
  br i1 %116, label %183, label %181

181:                                              ; preds = %180
  %182 = getelementptr inbounds %struct.Object, ptr %126, i64 0, i32 33
  call fastcc void @zero_v3(ptr noundef nonnull %182) #8
  br label %183

183:                                              ; preds = %181, %180
  br i1 %114, label %187, label %184

184:                                              ; preds = %183
  %185 = getelementptr inbounds %struct.Object, ptr %126, i64 0, i32 36
  %186 = getelementptr inbounds %struct.Object, ptr %126, i64 0, i32 36, i64 2
  store float 1.000000e+00, ptr %186, align 4, !tbaa !53
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %185, align 4, !tbaa !53
  br label %187

187:                                              ; preds = %184, %183
  br i1 %115, label %193, label %188

188:                                              ; preds = %187
  %189 = getelementptr inbounds %struct.Object, ptr %126, i64 0, i32 39
  call fastcc void @zero_v3(ptr noundef nonnull %189) #8
  %190 = getelementptr inbounds %struct.Object, ptr %126, i64 0, i32 41
  call void @unit_qt(ptr noundef nonnull %190) #10
  %191 = getelementptr inbounds %struct.Object, ptr %126, i64 0, i32 43
  %192 = getelementptr inbounds %struct.Object, ptr %126, i64 0, i32 45
  call void @unit_axis_angle(ptr noundef nonnull %191, ptr noundef nonnull %192) #10
  br label %193

193:                                              ; preds = %188, %187
  call void @BKE_object_where_is_calc(ptr noundef %16, ptr noundef nonnull %126) #10
  %194 = load i16, ptr %140, align 8, !tbaa !43
  %195 = icmp eq i16 %194, 25
  br i1 %195, label %196, label %197

196:                                              ; preds = %193
  call void @BKE_pose_where_is(ptr noundef %16, ptr noundef nonnull %126) #10
  br label %197

197:                                              ; preds = %196, %193
  call fastcc void @ignore_parent_tx(ptr noundef %15, ptr noundef %16, ptr noundef nonnull %126) #8
  call void @DAG_id_tag_update(ptr noundef nonnull %126, i16 noundef signext 3) #10
  br label %198

198:                                              ; preds = %158, %139, %197
  %199 = phi i8 [ 1, %197 ], [ %124, %139 ], [ %124, %158 ]
  %200 = load ptr, ptr %123, align 8, !tbaa !19
  %201 = icmp eq ptr %200, null
  br i1 %201, label %202, label %122, !llvm.loop !93

202:                                              ; preds = %198
  %203 = icmp eq i8 %199, 0
  call void @BLI_freelistN(ptr noundef nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #9
  br i1 %203, label %204, label %205

204:                                              ; preds = %109, %202
  call void @BKE_report(ptr noundef %1, i32 noundef 16, ptr noundef nonnull @.str.54) #10
  br label %206

205:                                              ; preds = %202
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85065728, ptr noundef null) #10
  br label %206

206:                                              ; preds = %103, %205, %204
  %207 = phi i32 [ 4, %205 ], [ 2, %204 ], [ 2, %103 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #9
  ret i32 %207
}

; Function Attrs: optsize
declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_idcode_to_name(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_object_to_mat3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_object_scale_to_mat3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_object_rot_to_mat3(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @invert_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_m3_m3m3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @unit_m3(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @copy_m4_m3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @multiresModifier_scale_disp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_mesh_transform(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_mesh_calc_normals(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_armature_apply_transform(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_lattice_transform(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_mball_transform(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @mat3_to_scale(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_curve_transform_ex(ptr noundef, ptr noundef, i8 noundef zeroext, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_object_movieclip_get(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_tracking_reconstruction_scale(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_fff(float noundef %0, float noundef %1, float noundef %2) unnamed_addr #7 {
  %4 = tail call fastcc float @max_ff(float noundef %0, float noundef %1) #8
  %5 = tail call fastcc float @max_ff(float noundef %4, float noundef %2) #8
  ret float %5
}

; Function Attrs: optsize
declare void @BKE_pose_where_is(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ignore_parent_tx(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef readnone %2) unnamed_addr #1 {
  %4 = alloca %struct.Object, align 8
  call void @llvm.lifetime.start.p0(i64 1424, ptr nonnull %4) #9
  %5 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 13
  %6 = load ptr, ptr %5, align 8, !tbaa !19
  %7 = icmp eq ptr %6, null
  br i1 %7, label %22, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 47
  br label %10

10:                                               ; preds = %8, %19
  %11 = phi ptr [ %6, %8 ], [ %20, %19 ]
  %12 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !24
  %14 = icmp eq ptr %13, %2
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 47
  call void @BKE_object_apply_mat4(ptr noundef nonnull %11, ptr noundef nonnull %16, i8 noundef zeroext 1, i8 noundef zeroext 0) #10
  call void @BKE_object_workob_calc_parent(ptr noundef %1, ptr noundef nonnull %11, ptr noundef nonnull %4) #10
  %17 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 48
  %18 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %17, ptr noundef nonnull %9) #10
  br label %19

19:                                               ; preds = %10, %15
  %20 = load ptr, ptr %11, align 8, !tbaa !19
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %10, !llvm.loop !94

22:                                               ; preds = %19, %3
  call void @llvm.lifetime.end.p0(i64 1424, ptr nonnull %4) #9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ff(float noundef %0, float noundef %1) unnamed_addr #7 {
  %3 = fcmp ogt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: optsize
declare void @BKE_object_workob_calc_parent(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_view3d(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_view3d_cursor3d_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @RNA_struct_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1) #8
  %3 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #8
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v3_v3fl(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #3 {
  %4 = load float, ptr %1, align 4, !tbaa !53
  %5 = load float, ptr %0, align 4, !tbaa !53
  %6 = tail call float @llvm.fmuladd.f32(float %4, float %2, float %5)
  store float %6, ptr %0, align 4, !tbaa !53
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !53
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !53
  %11 = tail call float @llvm.fmuladd.f32(float %8, float %2, float %10)
  store float %11, ptr %9, align 4, !tbaa !53
  %12 = getelementptr inbounds float, ptr %1, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !53
  %14 = getelementptr inbounds float, ptr %0, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !53
  %16 = tail call float @llvm.fmuladd.f32(float %13, float %2, float %15)
  store float %16, ptr %14, align 4, !tbaa !53
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !95
  %4 = tail call ptr %3(ptr noundef %0) #10
  ret ptr %4
}

; Function Attrs: optsize
declare void @minmax_v3v3_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = load float, ptr %1, align 4, !tbaa !53
  %4 = load float, ptr %0, align 4, !tbaa !53
  %5 = fsub float %4, %3
  store float %5, ptr %0, align 4, !tbaa !53
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !53
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !53
  %10 = fsub float %9, %7
  store float %10, ptr %8, align 4, !tbaa !53
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !53
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !53
  %15 = fsub float %14, %12
  store float %15, ptr %13, align 4, !tbaa !53
  ret void
}

; Function Attrs: optsize
declare void @EDBM_mesh_normals_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_listbase_rotate_first(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BKE_object_minmax_dupli(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = load float, ptr %1, align 4, !tbaa !53
  %4 = load float, ptr %0, align 4, !tbaa !53
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !53
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !53
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !53
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !53
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !53
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !53
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !53
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BKE_mesh_center_centroid(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BKE_mesh_center_median(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BKE_mesh_center_bounds(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_mesh_translate(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BKE_curve_center_median(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BKE_curve_center_bounds(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_curve_translate(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_armature_origin_set(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BKE_mball_center_median(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BKE_mball_center_bounds(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_mball_translate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_lattice_center_median(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_lattice_center_bounds(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_lattice_translate(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_object_to_mat4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_mat3_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 1, ptr %3, align 4, !tbaa !97
  %4 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %4, align 8, !tbaa !98
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %5, align 8, !tbaa !95
  %6 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !99
  store ptr %7, ptr %0, align 8, !tbaa !100
  tail call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: optsize
declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { optsize }
attributes #9 = { nounwind }
attributes #10 = { nounwind optsize }

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
!16 = !{!6, !7, i64 72}
!17 = !{!6, !12, i64 184}
!18 = !{i32 2, i32 5}
!19 = !{!7, !7, i64 0}
!20 = !{!21, !7, i64 32}
!21 = !{!"CollectionPointerLink", !7, i64 0, !7, i64 8, !22, i64 16}
!22 = !{!"PointerRNA", !23, i64 0, !7, i64 8, !7, i64 16}
!23 = !{!"", !7, i64 0}
!24 = !{!25, !7, i64 216}
!25 = !{!"Object", !26, i64 0, !7, i64 120, !7, i64 128, !12, i64 136, !12, i64 138, !27, i64 140, !27, i64 144, !27, i64 148, !8, i64 152, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288, !7, i64 296, !7, i64 304, !28, i64 312, !7, i64 360, !10, i64 368, !10, i64 384, !10, i64 400, !10, i64 416, !27, i64 432, !27, i64 436, !7, i64 440, !7, i64 448, !27, i64 456, !27, i64 460, !8, i64 464, !8, i64 476, !8, i64 488, !8, i64 500, !8, i64 512, !8, i64 524, !8, i64 536, !8, i64 548, !8, i64 560, !8, i64 576, !8, i64 592, !8, i64 604, !29, i64 616, !29, i64 620, !8, i64 624, !8, i64 688, !8, i64 752, !8, i64 816, !8, i64 880, !27, i64 944, !12, i64 948, !12, i64 950, !12, i64 952, !12, i64 954, !12, i64 956, !12, i64 958, !12, i64 960, !12, i64 962, !12, i64 964, !8, i64 966, !8, i64 967, !27, i64 968, !27, i64 972, !27, i64 976, !27, i64 980, !27, i64 984, !29, i64 988, !29, i64 992, !29, i64 996, !29, i64 1000, !29, i64 1004, !29, i64 1008, !29, i64 1012, !29, i64 1016, !29, i64 1020, !29, i64 1024, !29, i64 1028, !29, i64 1032, !12, i64 1036, !12, i64 1038, !12, i64 1040, !8, i64 1042, !8, i64 1043, !12, i64 1044, !8, i64 1046, !8, i64 1047, !29, i64 1048, !29, i64 1052, !10, i64 1056, !10, i64 1072, !10, i64 1088, !10, i64 1104, !29, i64 1120, !12, i64 1124, !12, i64 1126, !8, i64 1128, !27, i64 1144, !27, i64 1148, !7, i64 1152, !8, i64 1160, !8, i64 1161, !12, i64 1162, !8, i64 1164, !10, i64 1176, !10, i64 1192, !10, i64 1208, !10, i64 1224, !7, i64 1240, !7, i64 1248, !7, i64 1256, !8, i64 1264, !8, i64 1265, !12, i64 1266, !29, i64 1268, !7, i64 1272, !7, i64 1280, !7, i64 1288, !7, i64 1296, !30, i64 1304, !30, i64 1312, !27, i64 1320, !27, i64 1324, !10, i64 1328, !10, i64 1344, !7, i64 1360, !7, i64 1368, !7, i64 1376, !8, i64 1384, !7, i64 1392, !10, i64 1400, !7, i64 1416}
!26 = !{!"ID", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !12, i64 98, !27, i64 100, !27, i64 104, !27, i64 108, !7, i64 112}
!27 = !{!"int", !8, i64 0}
!28 = !{!"bAnimVizSettings", !27, i64 0, !27, i64 4, !27, i64 8, !27, i64 12, !12, i64 16, !12, i64 18, !12, i64 20, !12, i64 22, !12, i64 24, !12, i64 26, !12, i64 28, !12, i64 30, !27, i64 32, !27, i64 36, !27, i64 40, !27, i64 44}
!29 = !{!"float", !8, i64 0}
!30 = !{!"long", !8, i64 0}
!31 = distinct !{!31, !32}
!32 = !{!"llvm.loop.mustprogress"}
!33 = distinct !{!33, !32}
!34 = !{!6, !7, i64 88}
!35 = !{!36, !7, i64 112}
!36 = !{!"wmOperator", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !10, i64 128, !7, i64 144, !7, i64 152, !12, i64 160, !8, i64 162}
!37 = !{!36, !7, i64 120}
!38 = !{!6, !7, i64 48}
!39 = !{!6, !7, i64 104}
!40 = !{!41, !12, i64 238}
!41 = !{!"View3D", !7, i64 0, !7, i64 8, !10, i64 16, !27, i64 32, !29, i64 36, !8, i64 40, !8, i64 56, !29, i64 72, !29, i64 76, !8, i64 80, !8, i64 81, !27, i64 84, !27, i64 88, !12, i64 92, !12, i64 94, !7, i64 96, !7, i64 104, !42, i64 112, !10, i64 128, !7, i64 144, !7, i64 152, !8, i64 160, !27, i64 224, !27, i64 228, !12, i64 232, !12, i64 234, !12, i64 236, !12, i64 238, !12, i64 240, !12, i64 242, !29, i64 244, !29, i64 248, !29, i64 252, !29, i64 256, !8, i64 260, !8, i64 272, !12, i64 284, !12, i64 286, !12, i64 288, !8, i64 290, !8, i64 291, !8, i64 292, !8, i64 293, !8, i64 294, !10, i64 296, !10, i64 312, !10, i64 328, !8, i64 344, !8, i64 345, !8, i64 346, !8, i64 347, !7, i64 352, !7, i64 360, !7, i64 368}
!42 = !{!"rctf", !29, i64 0, !29, i64 4, !29, i64 8, !29, i64 12}
!43 = !{!25, !12, i64 136}
!44 = !{!25, !7, i64 296}
!45 = !{!46, !7, i64 272}
!46 = !{!"Mesh", !26, i64 0, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !47, i64 280, !47, i64 480, !47, i64 680, !47, i64 880, !47, i64 1080, !27, i64 1280, !27, i64 1284, !27, i64 1288, !27, i64 1292, !27, i64 1296, !27, i64 1300, !27, i64 1304, !8, i64 1308, !8, i64 1320, !8, i64 1332, !27, i64 1344, !12, i64 1348, !12, i64 1350, !29, i64 1352, !27, i64 1356, !8, i64 1360, !8, i64 1361, !8, i64 1362, !8, i64 1363, !8, i64 1364, !8, i64 1365, !12, i64 1366, !7, i64 1368}
!47 = !{!"CustomData", !7, i64 0, !8, i64 8, !27, i64 172, !27, i64 176, !27, i64 180, !7, i64 184, !7, i64 192}
!48 = !{!49, !7, i64 0}
!49 = !{!"BMEditMesh", !7, i64 0, !7, i64 8, !27, i64 16, !7, i64 24, !27, i64 32, !7, i64 40, !7, i64 48, !30, i64 56, !7, i64 64, !27, i64 72, !7, i64 80, !27, i64 88, !12, i64 92, !12, i64 94, !7, i64 96, !27, i64 104}
!50 = !{!51, !27, i64 0}
!51 = !{!"BMesh", !27, i64 0, !27, i64 4, !27, i64 8, !27, i64 12, !27, i64 16, !27, i64 20, !27, i64 24, !8, i64 28, !8, i64 29, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !27, i64 88, !27, i64 92, !27, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !27, i64 128, !7, i64 136, !47, i64 144, !47, i64 344, !47, i64 544, !47, i64 744, !12, i64 944, !27, i64 948, !27, i64 952, !27, i64 956, !10, i64 960, !7, i64 976, !10, i64 984, !7, i64 1000}
!52 = distinct !{!52, !32}
!53 = !{!29, !29, i64 0}
!54 = distinct !{!54, !32}
!55 = distinct !{!55, !32}
!56 = !{!25, !12, i64 948}
!57 = distinct !{!57, !32}
!58 = !{!26, !12, i64 98}
!59 = !{!25, !7, i64 1256}
!60 = distinct !{!60, !32}
!61 = !{!25, !12, i64 952}
!62 = !{!63, !12, i64 98}
!63 = !{!"Group", !26, i64 0, !10, i64 120, !27, i64 136, !8, i64 140}
!64 = !{!63, !7, i64 24}
!65 = !{!26, !7, i64 24}
!66 = !{!46, !12, i64 98}
!67 = !{!68, !27, i64 268}
!68 = !{!"Curve", !26, i64 0, !7, i64 120, !7, i64 128, !10, i64 136, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !8, i64 208, !8, i64 220, !8, i64 232, !12, i64 244, !12, i64 246, !12, i64 248, !12, i64 250, !29, i64 252, !29, i64 256, !27, i64 260, !12, i64 264, !12, i64 266, !27, i64 268, !29, i64 272, !29, i64 276, !29, i64 280, !12, i64 284, !12, i64 286, !12, i64 288, !12, i64 290, !27, i64 292, !27, i64 296, !8, i64 300, !12, i64 304, !8, i64 306, !8, i64 307, !29, i64 308, !29, i64 312, !29, i64 316, !29, i64 320, !29, i64 324, !29, i64 328, !29, i64 332, !29, i64 336, !29, i64 340, !29, i64 344, !27, i64 348, !27, i64 352, !27, i64 356, !27, i64 360, !27, i64 364, !7, i64 368, !7, i64 376, !8, i64 384, !7, i64 448, !7, i64 456, !7, i64 464, !7, i64 472, !7, i64 480, !27, i64 488, !27, i64 492, !7, i64 496, !69, i64 504, !29, i64 512, !29, i64 516, !29, i64 520, !8, i64 524, !8, i64 525, !8, i64 526}
!69 = !{!"CharInfo", !12, i64 0, !12, i64 2, !8, i64 4, !8, i64 5, !12, i64 6}
!70 = !{!68, !12, i64 98}
!71 = !{!25, !7, i64 264}
!72 = !{!68, !29, i64 320}
!73 = !{!26, !27, i64 100}
!74 = !{!75, !12, i64 98}
!75 = !{!"bArmature", !26, i64 0, !7, i64 120, !10, i64 128, !10, i64 144, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !27, i64 192, !27, i64 196, !27, i64 200, !27, i64 204, !12, i64 208, !12, i64 210, !27, i64 212, !27, i64 216, !27, i64 220, !12, i64 224, !12, i64 226, !12, i64 228, !12, i64 230, !27, i64 232, !27, i64 236, !27, i64 240, !27, i64 244, !27, i64 248, !27, i64 252}
!76 = !{!77, !12, i64 98}
!77 = !{!"MetaBall", !26, i64 0, !7, i64 120, !10, i64 128, !10, i64 144, !7, i64 160, !7, i64 168, !7, i64 176, !8, i64 184, !8, i64 185, !12, i64 186, !12, i64 188, !12, i64 190, !8, i64 192, !8, i64 204, !8, i64 216, !29, i64 228, !29, i64 232, !29, i64 236, !7, i64 240}
!78 = !{!79, !12, i64 98}
!79 = !{!"Lattice", !26, i64 0, !7, i64 120, !12, i64 128, !12, i64 130, !12, i64 132, !12, i64 134, !12, i64 136, !12, i64 138, !12, i64 140, !12, i64 142, !8, i64 144, !8, i64 145, !8, i64 146, !8, i64 147, !27, i64 148, !29, i64 152, !29, i64 156, !29, i64 160, !29, i64 164, !29, i64 168, !29, i64 172, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !8, i64 208, !7, i64 272}
!80 = distinct !{!80, !32}
!81 = distinct !{!81, !32}
!82 = distinct !{!82, !32}
!83 = !{!25, !27, i64 432}
!84 = !{ptr @object_clear_loc, ptr @object_clear_rot, ptr @object_clear_scale}
!85 = distinct !{!85, !32}
!86 = !{!25, !12, i64 954}
!87 = !{!25, !12, i64 1040}
!88 = !{!25, !29, i64 616}
!89 = !{!12, !12, i64 0}
!90 = !{!68, !7, i64 192}
!91 = distinct !{!91, !32}
!92 = !{!25, !29, i64 1048}
!93 = distinct !{!93, !32}
!94 = distinct !{!94, !32}
!95 = !{!96, !7, i64 48}
!96 = !{!"BMIter", !8, i64 0, !7, i64 40, !7, i64 48, !27, i64 56, !8, i64 60}
!97 = !{!96, !8, i64 60}
!98 = !{!96, !7, i64 40}
!99 = !{!51, !7, i64 32}
!100 = !{!8, !8, i64 0}
