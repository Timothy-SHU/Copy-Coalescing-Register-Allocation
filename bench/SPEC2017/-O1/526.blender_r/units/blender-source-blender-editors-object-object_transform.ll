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
%struct.Curve = type { %struct.ID, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], i16, i16, i16, i16, float, float, i32, i16, i16, i32, float, float, float, i16, i16, i16, i16, i32, i32, [4 x i8], i16, i8, i8, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i32, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.CharInfo, float, float, float, i8, i8, [2 x i8] }
%struct.CharInfo = type { i16, i16, i8, i8, i16 }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.MovieClip = type { %struct.ID, ptr, [1024 x i8], i32, i32, [2 x i32], float, float, ptr, ptr, ptr, %struct.MovieTracking, ptr, %struct.MovieClipProxy, i32, i32, i32, i32, %struct.ColorManagedColorspaceSettings }
%struct.MovieTracking = type { %struct.MovieTrackingSettings, %struct.MovieTrackingCamera, %struct.ListBase, %struct.ListBase, %struct.MovieTrackingReconstruction, %struct.MovieTrackingStabilization, ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.MovieTrackingDopesheet }
%struct.MovieTrackingSettings = type { i32, i16, i16, float, i16, i16, i16, i16, i16, i16, float, i16, i16, i32, i32, i32, i16, i16, float, i32, i32, float, float, i32 }
%struct.MovieTrackingCamera = type { ptr, i16, i16, float, float, float, i16, i16, [2 x float], float, float, float, float, float }
%struct.MovieTrackingReconstruction = type { i32, float, i32, i32, ptr }
%struct.MovieTrackingStabilization = type { i32, i32, i32, float, ptr, float, float, float, i32, i32, float }
%struct.MovieTrackingDopesheet = type { i32, i16, i16, %struct.ListBase, %struct.ListBase, i32, i32 }
%struct.MovieClipProxy = type { [768 x i8], i16, i16, i16, i16 }
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.View3D = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], [4 x float], float, float, i8, [3 x i8], i32, i32, i16, i16, ptr, ptr, %struct.rctf, %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, i16, i16, float, float, float, float, [3 x float], [3 x float], i16, i16, i16, i8, i8, i8, i8, [2 x i8], %struct.ListBase, %struct.ListBase, %struct.ListBase, i8, i8, i8, [5 x i8], ptr, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.Group = type { %struct.ID, %struct.ListBase, i32, [3 x float] }

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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_location_clear(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.1, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @object_location_clear_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_scene_editable, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @object_location_clear_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = tail call fastcc i32 @object_clear_transform_generic_exec(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @object_clear_loc, ptr noundef nonnull @.str.19), !range !47
  ret i32 %3
}

declare i32 @ED_operator_scene_editable(ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_rotation_clear(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.3, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.4, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.5, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @object_rotation_clear_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_scene_editable, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @object_rotation_clear_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = tail call fastcc i32 @object_clear_transform_generic_exec(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @object_clear_rot, ptr noundef nonnull @.str.22), !range !47
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_scale_clear(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.6, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.7, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.8, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @object_scale_clear_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_scene_editable, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @object_scale_clear_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = tail call fastcc i32 @object_clear_transform_generic_exec(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @object_clear_scale, ptr noundef nonnull @.str.49), !range !47
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_origin_clear(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.9, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.10, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.11, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @object_origin_clear_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_scene_editable, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @object_origin_clear_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = alloca [3 x [3 x float]], align 16
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7
  %5 = call i32 @CTX_data_selected_editable_objects(ptr noundef %0, ptr noundef nonnull %4) #7
  %6 = load ptr, ptr %4, align 8, !tbaa !48
  %7 = icmp eq ptr %6, null
  br i1 %7, label %32, label %8

8:                                                ; preds = %2, %29
  %9 = phi ptr [ %30, %29 ], [ %6, %2 ]
  %10 = getelementptr inbounds %struct.CollectionPointerLink, ptr %9, i64 0, i32 2, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !49
  %12 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !53
  %14 = icmp eq ptr %13, null
  br i1 %14, label %29, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 33
  %17 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 48
  %18 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 48, i64 3
  call void @copy_m3_m4(ptr noundef nonnull %3, ptr noundef nonnull %17) #7
  %19 = load float, ptr %16, align 4, !tbaa !60
  %20 = fneg float %19
  store float %20, ptr %18, align 4, !tbaa !60
  %21 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 33, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !60
  %23 = fneg float %22
  %24 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 48, i64 3, i64 1
  store float %23, ptr %24, align 4, !tbaa !60
  %25 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 33, i64 2
  %26 = load float, ptr %25, align 4, !tbaa !60
  %27 = fneg float %26
  %28 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 48, i64 3, i64 2
  store float %27, ptr %28, align 4, !tbaa !60
  call void @mul_m3_v3(ptr noundef nonnull %3, ptr noundef nonnull %18) #7
  br label %29

29:                                               ; preds = %15, %8
  call void @DAG_id_tag_update(ptr noundef %11, i16 noundef signext 1) #7
  %30 = load ptr, ptr %9, align 8, !tbaa !48
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %8, !llvm.loop !61

32:                                               ; preds = %29, %2
  call void @BLI_freelistN(ptr noundef nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85065728, ptr noundef null) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #7
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_visual_transform_apply(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.12, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.13, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.14, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @visual_transform_apply_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_scene_editable, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @visual_transform_apply_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  %5 = call i32 @CTX_data_selected_editable_objects(ptr noundef %0, ptr noundef nonnull %3) #7
  %6 = load ptr, ptr %3, align 8, !tbaa !48
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %2, %8
  %9 = phi ptr [ %13, %8 ], [ %6, %2 ]
  %10 = getelementptr inbounds %struct.CollectionPointerLink, ptr %9, i64 0, i32 2, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !49
  call void @BKE_object_where_is_calc(ptr noundef %4, ptr noundef %11) #7
  %12 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 47
  call void @BKE_object_apply_mat4(ptr noundef %11, ptr noundef nonnull %12, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  call void @BKE_object_where_is_calc(ptr noundef %4, ptr noundef %11) #7
  call void @DAG_id_tag_update(ptr noundef %11, i16 noundef signext 1) #7
  %13 = load ptr, ptr %9, align 8, !tbaa !48
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %8, !llvm.loop !64

15:                                               ; preds = %8
  call void @BLI_freelistN(ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85065728, ptr noundef null) #7
  br label %17

16:                                               ; preds = %2
  call void @BLI_freelistN(ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  br label %17

17:                                               ; preds = %16, %15
  %18 = phi i32 [ 4, %15 ], [ 2, %16 ]
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_transform_apply(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.15, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.16, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.17, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @object_transform_apply_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_objectmode, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !65
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.18, i32 noundef 0, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20) #7
  %10 = load ptr, ptr %7, align 8, !tbaa !65
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.21, i32 noundef 0, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.20) #7
  %12 = load ptr, ptr %7, align 8, !tbaa !65
  %13 = tail call ptr @RNA_def_boolean(ptr noundef %12, ptr noundef nonnull @.str.23, i32 noundef 0, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.20) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @object_transform_apply_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = alloca %struct.Object, align 8
  %4 = alloca [3 x [3 x float]], align 16
  %5 = alloca [3 x [3 x float]], align 16
  %6 = alloca [3 x [3 x float]], align 16
  %7 = alloca [4 x [4 x float]], align 16
  %8 = alloca %struct.ListBase, align 8
  %9 = alloca %struct.ListBase, align 8
  %10 = alloca [3 x [3 x float]], align 16
  %11 = alloca [3 x [3 x float]], align 16
  %12 = alloca [3 x [3 x float]], align 16
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !66
  %15 = tail call i32 @RNA_boolean_get(ptr noundef %14, ptr noundef nonnull @.str.18) #7
  %16 = load ptr, ptr %13, align 8, !tbaa !66
  %17 = tail call i32 @RNA_boolean_get(ptr noundef %16, ptr noundef nonnull @.str.21) #7
  %18 = load ptr, ptr %13, align 8, !tbaa !66
  %19 = tail call i32 @RNA_boolean_get(ptr noundef %18, ptr noundef nonnull @.str.23) #7
  %20 = and i32 %15, 255
  %21 = icmp ne i32 %20, 0
  %22 = and i32 %17, 255
  %23 = icmp ne i32 %22, 0
  %24 = select i1 %21, i1 true, i1 %23
  %25 = and i32 %19, 255
  %26 = icmp ne i32 %25, 0
  %27 = select i1 %24, i1 true, i1 %26
  br i1 %27, label %28, label %260

28:                                               ; preds = %2
  %29 = trunc i32 %19 to i8
  %30 = trunc i32 %17 to i8
  %31 = trunc i32 %15 to i8
  %32 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %33 = load ptr, ptr %32, align 8, !tbaa !68
  %34 = tail call ptr @CTX_data_main(ptr noundef %0) #7
  %35 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #7
  %36 = call i32 @CTX_data_selected_editable_objects(ptr noundef %0, ptr noundef nonnull %8) #7
  %37 = load ptr, ptr %8, align 8, !tbaa !48
  %38 = icmp eq ptr %37, null
  br i1 %38, label %120, label %39

39:                                               ; preds = %28
  %40 = or i8 %30, %31
  %41 = icmp eq i8 %40, 0
  br label %42

42:                                               ; preds = %39, %114
  %43 = phi ptr [ %37, %39 ], [ %116, %114 ]
  %44 = phi i8 [ 1, %39 ], [ %115, %114 ]
  %45 = getelementptr inbounds %struct.CollectionPointerLink, ptr %43, i64 0, i32 2, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !49
  %47 = getelementptr inbounds %struct.Object, ptr %46, i64 0, i32 3
  %48 = load i16, ptr %47, align 8, !tbaa !69
  switch i16 %48, label %80 [
    i16 1, label %49
    i16 25, label %49
    i16 22, label %49
    i16 5, label %49
    i16 2, label %49
    i16 3, label %49
  ]

49:                                               ; preds = %42, %42, %42, %42, %42, %42
  %50 = getelementptr inbounds %struct.Object, ptr %46, i64 0, i32 19
  %51 = load ptr, ptr %50, align 8, !tbaa !70
  %52 = getelementptr inbounds %struct.ID, ptr %51, i64 0, i32 6
  %53 = load i32, ptr %52, align 4, !tbaa !71
  %54 = getelementptr inbounds %struct.ID, ptr %51, i64 0, i32 5
  %55 = load i16, ptr %54, align 2, !tbaa !72
  %56 = lshr i16 %55, 9
  %57 = and i16 %56, 1
  %58 = zext nneg i16 %57 to i32
  %59 = sub nsw i32 %53, %58
  %60 = icmp sgt i32 %59, 1
  br i1 %60, label %61, label %68

61:                                               ; preds = %49
  %62 = getelementptr inbounds %struct.ID, ptr %46, i64 0, i32 4, i64 2
  %63 = getelementptr inbounds %struct.ID, ptr %51, i64 0, i32 4
  %64 = load i16, ptr %63, align 8, !tbaa !73
  %65 = sext i16 %64 to i32
  %66 = call ptr @BKE_idcode_to_name(i32 noundef %65) #7
  %67 = getelementptr inbounds %struct.ID, ptr %51, i64 0, i32 4, i64 2
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %33, i32 noundef 32, ptr noundef nonnull @.str.50, ptr noundef nonnull %62, ptr noundef %66, ptr noundef nonnull %67) #7
  br label %68

68:                                               ; preds = %61, %49
  %69 = phi i8 [ 0, %61 ], [ %44, %49 ]
  %70 = getelementptr inbounds %struct.ID, ptr %51, i64 0, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !74
  %72 = icmp eq ptr %71, null
  br i1 %72, label %80, label %73

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.ID, ptr %46, i64 0, i32 4, i64 2
  %75 = getelementptr inbounds %struct.ID, ptr %51, i64 0, i32 4
  %76 = load i16, ptr %75, align 8, !tbaa !73
  %77 = sext i16 %76 to i32
  %78 = call ptr @BKE_idcode_to_name(i32 noundef %77) #7
  %79 = getelementptr inbounds %struct.ID, ptr %51, i64 0, i32 4, i64 2
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %33, i32 noundef 32, ptr noundef nonnull @.str.51, ptr noundef nonnull %74, ptr noundef %78, ptr noundef nonnull %79) #7
  br label %80

80:                                               ; preds = %73, %68, %42
  %81 = phi i8 [ %44, %42 ], [ 0, %73 ], [ %69, %68 ]
  %82 = load i16, ptr %47, align 8, !tbaa !69
  %83 = and i16 %82, -2
  %84 = icmp eq i16 %83, 2
  br i1 %84, label %85, label %114

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.Object, ptr %46, i64 0, i32 19
  %87 = load ptr, ptr %86, align 8, !tbaa !70
  %88 = icmp eq i16 %82, 2
  br i1 %88, label %89, label %102

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.Curve, ptr %87, i64 0, i32 23
  %91 = load i32, ptr %90, align 4, !tbaa !75
  %92 = and i32 %91, 1
  %93 = icmp ne i32 %92, 0
  %94 = or i1 %41, %93
  br i1 %94, label %102, label %95

95:                                               ; preds = %89
  %96 = getelementptr inbounds %struct.ID, ptr %46, i64 0, i32 4, i64 2
  %97 = getelementptr inbounds %struct.ID, ptr %87, i64 0, i32 4
  %98 = load i16, ptr %97, align 8, !tbaa !73
  %99 = sext i16 %98 to i32
  %100 = call ptr @BKE_idcode_to_name(i32 noundef %99) #7
  %101 = getelementptr inbounds %struct.ID, ptr %87, i64 0, i32 4, i64 2
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %33, i32 noundef 32, ptr noundef nonnull @.str.52, ptr noundef nonnull %96, ptr noundef %100, ptr noundef nonnull %101) #7
  br label %102

102:                                              ; preds = %95, %89, %85
  %103 = phi i8 [ %81, %89 ], [ 0, %95 ], [ %81, %85 ]
  %104 = getelementptr inbounds %struct.Curve, ptr %87, i64 0, i32 9
  %105 = load ptr, ptr %104, align 8, !tbaa !78
  %106 = icmp eq ptr %105, null
  br i1 %106, label %114, label %107

107:                                              ; preds = %102
  %108 = getelementptr inbounds %struct.ID, ptr %46, i64 0, i32 4, i64 2
  %109 = getelementptr inbounds %struct.ID, ptr %87, i64 0, i32 4
  %110 = load i16, ptr %109, align 8, !tbaa !73
  %111 = sext i16 %110 to i32
  %112 = call ptr @BKE_idcode_to_name(i32 noundef %111) #7
  %113 = getelementptr inbounds %struct.ID, ptr %87, i64 0, i32 4, i64 2
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %33, i32 noundef 32, ptr noundef nonnull @.str.53, ptr noundef nonnull %108, ptr noundef %112, ptr noundef nonnull %113) #7
  br label %114

114:                                              ; preds = %107, %102, %80
  %115 = phi i8 [ %81, %80 ], [ 0, %107 ], [ %103, %102 ]
  %116 = load ptr, ptr %43, align 8, !tbaa !48
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %42, !llvm.loop !79

118:                                              ; preds = %114
  %119 = icmp eq i8 %115, 0
  call void @BLI_freelistN(ptr noundef nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #7
  br i1 %119, label %258, label %121

120:                                              ; preds = %28
  call void @BLI_freelistN(ptr noundef nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #7
  br label %121

121:                                              ; preds = %120, %118
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #7
  %122 = call i32 @CTX_data_selected_editable_objects(ptr noundef %0, ptr noundef nonnull %9) #7
  %123 = load ptr, ptr %9, align 8, !tbaa !48
  %124 = icmp eq ptr %123, null
  br i1 %124, label %255, label %125

125:                                              ; preds = %121
  %126 = icmp ne i8 %29, 0
  %127 = icmp ne i8 %30, 0
  %128 = and i1 %127, %126
  %129 = icmp eq i8 %29, 0
  %130 = icmp eq i8 %30, 0
  %131 = icmp eq i8 %31, 0
  %132 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 3
  %133 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 3, i64 1
  %134 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 3, i64 2
  %135 = or i8 %30, %31
  %136 = icmp eq i8 %135, 0
  %137 = icmp eq i8 %29, 1
  %138 = and i1 %136, %137
  %139 = icmp eq i8 %29, 0
  %140 = icmp eq i8 %29, 0
  %141 = icmp eq i8 %29, 0
  %142 = icmp eq i8 %30, 0
  %143 = getelementptr inbounds %struct.Main, ptr %34, i64 0, i32 13
  %144 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 47
  br label %145

145:                                              ; preds = %125, %249
  %146 = phi ptr [ %123, %125 ], [ %251, %249 ]
  %147 = phi i8 [ 0, %125 ], [ %250, %249 ]
  %148 = getelementptr inbounds %struct.CollectionPointerLink, ptr %146, i64 0, i32 2, i32 2
  %149 = load ptr, ptr %148, align 8, !tbaa !49
  br i1 %128, label %150, label %151

150:                                              ; preds = %145
  call void @BKE_object_to_mat3(ptr noundef %149, ptr noundef nonnull %4) #7
  br label %157

151:                                              ; preds = %145
  br i1 %129, label %153, label %152

152:                                              ; preds = %151
  call void @BKE_object_scale_to_mat3(ptr noundef %149, ptr noundef nonnull %4) #7
  br label %157

153:                                              ; preds = %151
  br i1 %130, label %156, label %154

154:                                              ; preds = %153
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %10) #7
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %11) #7
  call void @BKE_object_rot_to_mat3(ptr noundef %149, ptr noundef nonnull %4, i8 noundef zeroext 1) #7
  call void @BKE_object_scale_to_mat3(ptr noundef %149, ptr noundef nonnull %10) #7
  %155 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %11, ptr noundef nonnull %10) #7
  call void @mul_m3_m3m3(ptr noundef nonnull %4, ptr noundef nonnull %11, ptr noundef nonnull %4) #7
  call void @mul_m3_m3m3(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef nonnull %10) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %11) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %10) #7
  br label %157

156:                                              ; preds = %153
  call void @unit_m3(ptr noundef nonnull %4) #7
  br label %157

157:                                              ; preds = %156, %154, %152, %150
  call void @copy_m4_m3(ptr noundef nonnull %7, ptr noundef nonnull %4) #7
  br i1 %131, label %167, label %158

158:                                              ; preds = %157
  %159 = getelementptr inbounds %struct.Object, ptr %149, i64 0, i32 33
  %160 = load float, ptr %159, align 4, !tbaa !60
  store float %160, ptr %132, align 16, !tbaa !60
  %161 = getelementptr inbounds %struct.Object, ptr %149, i64 0, i32 33, i64 1
  %162 = load float, ptr %161, align 4, !tbaa !60
  store float %162, ptr %133, align 4, !tbaa !60
  %163 = getelementptr inbounds %struct.Object, ptr %149, i64 0, i32 33, i64 2
  %164 = load float, ptr %163, align 4, !tbaa !60
  store float %164, ptr %134, align 8, !tbaa !60
  br i1 %128, label %167, label %165

165:                                              ; preds = %158
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %12) #7
  call void @BKE_object_to_mat3(ptr noundef %149, ptr noundef nonnull %5) #7
  %166 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %6, ptr noundef nonnull %5) #7
  call void @mul_m3_m3m3(ptr noundef nonnull %12, ptr noundef nonnull %4, ptr noundef nonnull %6) #7
  call void @mul_m3_v3(ptr noundef nonnull %12, ptr noundef nonnull %132) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %12) #7
  br label %167

167:                                              ; preds = %165, %158, %157
  %168 = getelementptr inbounds %struct.Object, ptr %149, i64 0, i32 3
  %169 = load i16, ptr %168, align 8, !tbaa !69
  switch i16 %169, label %249 [
    i16 1, label %170
    i16 25, label %175
    i16 22, label %176
    i16 5, label %179
    i16 2, label %182
    i16 3, label %182
    i16 11, label %186
    i16 0, label %193
  ]

170:                                              ; preds = %167
  %171 = getelementptr inbounds %struct.Object, ptr %149, i64 0, i32 19
  %172 = load ptr, ptr %171, align 8, !tbaa !70
  br i1 %140, label %174, label %173

173:                                              ; preds = %170
  call void @multiresModifier_scale_disp(ptr noundef %35, ptr noundef %149) #7
  br label %174

174:                                              ; preds = %173, %170
  call void @BKE_mesh_transform(ptr noundef %172, ptr noundef nonnull %7, i8 noundef zeroext 1) #7
  call void @BKE_mesh_calc_normals(ptr noundef %172) #7
  br label %211

175:                                              ; preds = %167
  call void @ED_armature_apply_transform(ptr noundef %149, ptr noundef nonnull %7) #7
  br label %211

176:                                              ; preds = %167
  %177 = getelementptr inbounds %struct.Object, ptr %149, i64 0, i32 19
  %178 = load ptr, ptr %177, align 8, !tbaa !70
  call void @BKE_lattice_transform(ptr noundef %178, ptr noundef nonnull %7, i8 noundef zeroext 1) #7
  br label %211

179:                                              ; preds = %167
  %180 = getelementptr inbounds %struct.Object, ptr %149, i64 0, i32 19
  %181 = load ptr, ptr %180, align 8, !tbaa !70
  call void @BKE_mball_transform(ptr noundef %181, ptr noundef nonnull %7) #7
  br label %211

182:                                              ; preds = %167, %167
  %183 = getelementptr inbounds %struct.Object, ptr %149, i64 0, i32 19
  %184 = load ptr, ptr %183, align 8, !tbaa !70
  %185 = call float @mat3_to_scale(ptr noundef nonnull %4) #7
  call void @BKE_curve_transform_ex(ptr noundef %184, ptr noundef nonnull %7, i8 noundef zeroext 1, float noundef %185) #7
  br label %211

186:                                              ; preds = %167
  %187 = call ptr @BKE_object_movieclip_get(ptr noundef %35, ptr noundef %149, i8 noundef zeroext 0) #7
  %188 = icmp eq ptr %187, null
  br i1 %188, label %249, label %189

189:                                              ; preds = %186
  br i1 %139, label %211, label %190

190:                                              ; preds = %189
  %191 = getelementptr inbounds %struct.MovieClip, ptr %187, i64 0, i32 11
  %192 = getelementptr inbounds %struct.Object, ptr %149, i64 0, i32 36
  call void @BKE_tracking_reconstruction_scale(ptr noundef nonnull %191, ptr noundef nonnull %192) #7
  br label %211

193:                                              ; preds = %167
  br i1 %138, label %194, label %211

194:                                              ; preds = %193
  %195 = getelementptr inbounds %struct.Object, ptr %149, i64 0, i32 36
  %196 = load float, ptr %195, align 4, !tbaa !60
  %197 = call float @llvm.fabs.f32(float %196)
  %198 = getelementptr inbounds %struct.Object, ptr %149, i64 0, i32 36, i64 1
  %199 = load float, ptr %198, align 4, !tbaa !60
  %200 = call float @llvm.fabs.f32(float %199)
  %201 = getelementptr inbounds %struct.Object, ptr %149, i64 0, i32 36, i64 2
  %202 = load float, ptr %201, align 4, !tbaa !60
  %203 = call float @llvm.fabs.f32(float %202)
  %204 = fcmp ogt float %197, %200
  %205 = select i1 %204, float %197, float %200
  %206 = fcmp ogt float %205, %203
  %207 = select i1 %206, float %205, float %203
  %208 = getelementptr inbounds %struct.Object, ptr %149, i64 0, i32 89
  %209 = load float, ptr %208, align 8, !tbaa !80
  %210 = fmul float %209, %207
  store float %210, ptr %208, align 8, !tbaa !80
  br label %211

211:                                              ; preds = %194, %193, %190, %189, %182, %179, %176, %175, %174
  br i1 %131, label %216, label %212

212:                                              ; preds = %211
  %213 = getelementptr inbounds %struct.Object, ptr %149, i64 0, i32 33
  store float 0.000000e+00, ptr %213, align 4, !tbaa !60
  %214 = getelementptr inbounds %struct.Object, ptr %149, i64 0, i32 33, i64 1
  store float 0.000000e+00, ptr %214, align 4, !tbaa !60
  %215 = getelementptr inbounds %struct.Object, ptr %149, i64 0, i32 33, i64 2
  store float 0.000000e+00, ptr %215, align 4, !tbaa !60
  br label %216

216:                                              ; preds = %212, %211
  br i1 %141, label %221, label %217

217:                                              ; preds = %216
  %218 = getelementptr inbounds %struct.Object, ptr %149, i64 0, i32 36
  %219 = getelementptr inbounds %struct.Object, ptr %149, i64 0, i32 36, i64 2
  store float 1.000000e+00, ptr %219, align 4, !tbaa !60
  %220 = getelementptr inbounds %struct.Object, ptr %149, i64 0, i32 36, i64 1
  store float 1.000000e+00, ptr %220, align 4, !tbaa !60
  store float 1.000000e+00, ptr %218, align 4, !tbaa !60
  br label %221

221:                                              ; preds = %217, %216
  br i1 %142, label %229, label %222

222:                                              ; preds = %221
  %223 = getelementptr inbounds %struct.Object, ptr %149, i64 0, i32 39
  store float 0.000000e+00, ptr %223, align 4, !tbaa !60
  %224 = getelementptr inbounds %struct.Object, ptr %149, i64 0, i32 39, i64 1
  store float 0.000000e+00, ptr %224, align 4, !tbaa !60
  %225 = getelementptr inbounds %struct.Object, ptr %149, i64 0, i32 39, i64 2
  store float 0.000000e+00, ptr %225, align 4, !tbaa !60
  %226 = getelementptr inbounds %struct.Object, ptr %149, i64 0, i32 41
  call void @unit_qt(ptr noundef nonnull %226) #7
  %227 = getelementptr inbounds %struct.Object, ptr %149, i64 0, i32 43
  %228 = getelementptr inbounds %struct.Object, ptr %149, i64 0, i32 45
  call void @unit_axis_angle(ptr noundef nonnull %227, ptr noundef nonnull %228) #7
  br label %229

229:                                              ; preds = %222, %221
  call void @BKE_object_where_is_calc(ptr noundef %35, ptr noundef %149) #7
  %230 = load i16, ptr %168, align 8, !tbaa !69
  %231 = icmp eq i16 %230, 25
  br i1 %231, label %232, label %233

232:                                              ; preds = %229
  call void @BKE_pose_where_is(ptr noundef %35, ptr noundef %149) #7
  br label %233

233:                                              ; preds = %232, %229
  call void @llvm.lifetime.start.p0(i64 1424, ptr nonnull %3) #7
  %234 = load ptr, ptr %143, align 8, !tbaa !48
  %235 = icmp eq ptr %234, null
  br i1 %235, label %248, label %236

236:                                              ; preds = %233, %245
  %237 = phi ptr [ %246, %245 ], [ %234, %233 ]
  %238 = getelementptr inbounds %struct.Object, ptr %237, i64 0, i32 9
  %239 = load ptr, ptr %238, align 8, !tbaa !53
  %240 = icmp eq ptr %239, %149
  br i1 %240, label %241, label %245

241:                                              ; preds = %236
  %242 = getelementptr inbounds %struct.Object, ptr %237, i64 0, i32 47
  call void @BKE_object_apply_mat4(ptr noundef nonnull %237, ptr noundef nonnull %242, i8 noundef zeroext 1, i8 noundef zeroext 0) #7
  call void @BKE_object_workob_calc_parent(ptr noundef %35, ptr noundef nonnull %237, ptr noundef nonnull %3) #7
  %243 = getelementptr inbounds %struct.Object, ptr %237, i64 0, i32 48
  %244 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %243, ptr noundef nonnull %144) #7
  br label %245

245:                                              ; preds = %241, %236
  %246 = load ptr, ptr %237, align 8, !tbaa !48
  %247 = icmp eq ptr %246, null
  br i1 %247, label %248, label %236, !llvm.loop !81

248:                                              ; preds = %245, %233
  call void @llvm.lifetime.end.p0(i64 1424, ptr nonnull %3) #7
  call void @DAG_id_tag_update(ptr noundef %149, i16 noundef signext 3) #7
  br label %249

249:                                              ; preds = %248, %186, %167
  %250 = phi i8 [ 1, %248 ], [ %147, %167 ], [ %147, %186 ]
  %251 = load ptr, ptr %146, align 8, !tbaa !48
  %252 = icmp eq ptr %251, null
  br i1 %252, label %253, label %145, !llvm.loop !82

253:                                              ; preds = %249
  %254 = icmp eq i8 %250, 0
  call void @BLI_freelistN(ptr noundef nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #7
  br i1 %254, label %256, label %257

255:                                              ; preds = %121
  call void @BLI_freelistN(ptr noundef nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #7
  br label %256

256:                                              ; preds = %255, %253
  call void @BKE_report(ptr noundef %33, i32 noundef 16, ptr noundef nonnull @.str.54) #7
  br label %258

257:                                              ; preds = %253
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85065728, ptr noundef null) #7
  br label %258

258:                                              ; preds = %118, %256, %257
  %259 = phi i32 [ 4, %257 ], [ 2, %256 ], [ 2, %118 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #7
  br label %260

260:                                              ; preds = %2, %258
  %261 = phi i32 [ %259, %258 ], [ 4, %2 ]
  ret i32 %261
}

declare i32 @ED_operator_objectmode(ptr noundef) #2

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_origin_set(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.41, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.42, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.43, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !83
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @object_origin_set_exec, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_scene_editable, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !65
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.44, ptr noundef nonnull @OBJECT_OT_origin_set.prop_set_center_types, i32 noundef 0, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.20) #7
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !84
  %12 = load ptr, ptr %8, align 8, !tbaa !65
  %13 = tail call ptr @RNA_def_enum(ptr noundef %12, ptr noundef nonnull @.str.46, ptr noundef nonnull @OBJECT_OT_origin_set.prop_set_bounds_types, i32 noundef 3, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.20) #7
  ret void
}

declare i32 @WM_menu_invoke(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @object_origin_set_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = alloca %struct.Object, align 8
  %4 = alloca %struct.Object, align 8
  %5 = alloca %struct.Object, align 8
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca %struct.ListBase, align 8
  %11 = alloca %struct.BMIter, align 8
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 4
  %16 = alloca [4 x [4 x float]], align 16
  %17 = tail call ptr @CTX_data_main(ptr noundef %0) #7
  %18 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %19 = tail call ptr @CTX_data_active_object(ptr noundef %0) #7
  %20 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #7
  %21 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !66
  %23 = tail call i32 @RNA_enum_get(ptr noundef %22, ptr noundef nonnull @.str.44) #7
  %24 = load ptr, ptr %21, align 8, !tbaa !66
  %25 = tail call i32 @RNA_enum_get(ptr noundef %24, ptr noundef nonnull @.str.46) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #7
  %26 = icmp ne ptr %20, null
  %27 = icmp ne i32 %23, 0
  %28 = select i1 %26, i1 %27, i1 false
  br i1 %28, label %29, label %32

29:                                               ; preds = %2
  %30 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %31 = load ptr, ptr %30, align 8, !tbaa !68
  tail call void @BKE_report(ptr noundef %31, i32 noundef 32, ptr noundef nonnull @.str.55) #7
  br label %635

32:                                               ; preds = %2
  %33 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #7
  %34 = tail call ptr @ED_view3d_cursor3d_get(ptr noundef %18, ptr noundef %33) #7
  %35 = load float, ptr %34, align 4, !tbaa !60
  store float %35, ptr %6, align 4, !tbaa !60
  %36 = getelementptr inbounds float, ptr %34, i64 1
  %37 = load float, ptr %36, align 4, !tbaa !60
  %38 = getelementptr inbounds float, ptr %6, i64 1
  store float %37, ptr %38, align 4, !tbaa !60
  %39 = getelementptr inbounds float, ptr %34, i64 2
  %40 = load float, ptr %39, align 4, !tbaa !60
  %41 = getelementptr inbounds float, ptr %6, i64 2
  store float %40, ptr %41, align 4, !tbaa !60
  %42 = icmp eq ptr %33, null
  br i1 %42, label %51, label %43

43:                                               ; preds = %32
  %44 = load ptr, ptr %21, align 8, !tbaa !66
  %45 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %44, ptr noundef nonnull @.str.46) #7
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.View3D, ptr %33, i64 0, i32 27
  %49 = load i16, ptr %48, align 2, !tbaa !85
  %50 = sext i16 %49 to i32
  br label %51

51:                                               ; preds = %47, %43, %32
  %52 = phi i32 [ %25, %43 ], [ %50, %47 ], [ %25, %32 ]
  store float 0.000000e+00, ptr %7, align 4, !tbaa !60
  %53 = getelementptr inbounds float, ptr %7, i64 1
  store float 0.000000e+00, ptr %53, align 4, !tbaa !60
  %54 = getelementptr inbounds float, ptr %7, i64 2
  store float 0.000000e+00, ptr %54, align 4, !tbaa !60
  br i1 %26, label %55, label %155

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.Object, ptr %20, i64 0, i32 3
  %57 = load i16, ptr %56, align 8, !tbaa !69
  %58 = icmp eq i16 %57, 1
  br i1 %58, label %59, label %155

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.Object, ptr %20, i64 0, i32 19
  %61 = load ptr, ptr %60, align 8, !tbaa !70
  %62 = getelementptr inbounds %struct.Mesh, ptr %61, i64 0, i32 20
  %63 = load ptr, ptr %62, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #7
  %64 = icmp eq i32 %23, 2
  br i1 %64, label %65, label %72

65:                                               ; preds = %59
  %66 = load float, ptr %6, align 4, !tbaa !60
  store float %66, ptr %7, align 4, !tbaa !60
  %67 = load float, ptr %38, align 4, !tbaa !60
  store float %67, ptr %53, align 4, !tbaa !60
  %68 = load float, ptr %41, align 4, !tbaa !60
  store float %68, ptr %54, align 4, !tbaa !60
  %69 = getelementptr inbounds %struct.Object, ptr %20, i64 0, i32 50
  %70 = getelementptr inbounds %struct.Object, ptr %20, i64 0, i32 47
  %71 = tail call zeroext i8 @invert_m4_m4(ptr noundef nonnull %69, ptr noundef nonnull %70) #7
  call void @mul_m4_v3(ptr noundef nonnull %69, ptr noundef nonnull %7) #7
  br label %127

72:                                               ; preds = %59
  %73 = icmp eq i32 %52, 3
  br i1 %73, label %74, label %106

74:                                               ; preds = %72
  %75 = load ptr, ptr %63, align 8, !tbaa !91
  %76 = load i32, ptr %75, align 8, !tbaa !93
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %127, label %78

78:                                               ; preds = %74
  %79 = sitofp i32 %76 to float
  %80 = fdiv float 1.000000e+00, %79
  %81 = getelementptr inbounds %struct.BMIter, ptr %11, i64 0, i32 4
  store i8 1, ptr %81, align 4, !tbaa !95
  %82 = getelementptr inbounds %struct.BMIter, ptr %11, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %82, align 8, !tbaa !97
  %83 = getelementptr inbounds %struct.BMIter, ptr %11, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %83, align 8, !tbaa !98
  %84 = getelementptr inbounds %struct.BMesh, ptr %75, i64 0, i32 9
  %85 = load ptr, ptr %84, align 8, !tbaa !99
  store ptr %85, ptr %11, align 8, !tbaa !100
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %11) #7
  %86 = load ptr, ptr %83, align 8, !tbaa !98
  %87 = call ptr %86(ptr noundef nonnull %11) #7
  %88 = icmp eq ptr %87, null
  br i1 %88, label %127, label %89

89:                                               ; preds = %78, %89
  %90 = phi ptr [ %104, %89 ], [ %87, %78 ]
  %91 = getelementptr inbounds %struct.BMVert, ptr %90, i64 0, i32 2
  %92 = load float, ptr %91, align 4, !tbaa !60
  %93 = load float, ptr %7, align 4, !tbaa !60
  %94 = call float @llvm.fmuladd.f32(float %92, float %80, float %93)
  store float %94, ptr %7, align 4, !tbaa !60
  %95 = getelementptr inbounds %struct.BMVert, ptr %90, i64 0, i32 2, i64 1
  %96 = load float, ptr %95, align 4, !tbaa !60
  %97 = load float, ptr %53, align 4, !tbaa !60
  %98 = call float @llvm.fmuladd.f32(float %96, float %80, float %97)
  store float %98, ptr %53, align 4, !tbaa !60
  %99 = getelementptr inbounds %struct.BMVert, ptr %90, i64 0, i32 2, i64 2
  %100 = load float, ptr %99, align 4, !tbaa !60
  %101 = load float, ptr %54, align 4, !tbaa !60
  %102 = call float @llvm.fmuladd.f32(float %100, float %80, float %101)
  store float %102, ptr %54, align 4, !tbaa !60
  %103 = load ptr, ptr %83, align 8, !tbaa !98
  %104 = call ptr %103(ptr noundef nonnull %11) #7
  %105 = icmp eq ptr %104, null
  br i1 %105, label %127, label %89, !llvm.loop !101

106:                                              ; preds = %72
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #7
  %107 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 2
  store float 0x46293E5940000000, ptr %107, align 4, !tbaa !60
  %108 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 1
  store float 0x46293E5940000000, ptr %108, align 4, !tbaa !60
  store float 0x46293E5940000000, ptr %12, align 4, !tbaa !60
  %109 = getelementptr inbounds [3 x float], ptr %13, i64 0, i64 2
  store float 0xC6293E5940000000, ptr %109, align 4, !tbaa !60
  %110 = getelementptr inbounds [3 x float], ptr %13, i64 0, i64 1
  store float 0xC6293E5940000000, ptr %110, align 4, !tbaa !60
  store float 0xC6293E5940000000, ptr %13, align 4, !tbaa !60
  %111 = load ptr, ptr %63, align 8, !tbaa !91
  %112 = getelementptr inbounds %struct.BMIter, ptr %11, i64 0, i32 4
  store i8 1, ptr %112, align 4, !tbaa !95
  %113 = getelementptr inbounds %struct.BMIter, ptr %11, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %113, align 8, !tbaa !97
  %114 = getelementptr inbounds %struct.BMIter, ptr %11, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %114, align 8, !tbaa !98
  %115 = getelementptr inbounds %struct.BMesh, ptr %111, i64 0, i32 9
  %116 = load ptr, ptr %115, align 8, !tbaa !99
  store ptr %116, ptr %11, align 8, !tbaa !100
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %11) #7
  %117 = load ptr, ptr %114, align 8, !tbaa !98
  %118 = call ptr %117(ptr noundef nonnull %11) #7
  %119 = icmp eq ptr %118, null
  br i1 %119, label %126, label %120

120:                                              ; preds = %106, %120
  %121 = phi ptr [ %124, %120 ], [ %118, %106 ]
  %122 = getelementptr inbounds %struct.BMVert, ptr %121, i64 0, i32 2
  call void @minmax_v3v3_v3(ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %122) #7
  %123 = load ptr, ptr %114, align 8, !tbaa !98
  %124 = call ptr %123(ptr noundef nonnull %11) #7
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %120, !llvm.loop !102

126:                                              ; preds = %120, %106
  call void @mid_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %12, ptr noundef nonnull %13) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #7
  br label %127

127:                                              ; preds = %89, %78, %126, %74, %65
  %128 = load ptr, ptr %63, align 8, !tbaa !91
  %129 = getelementptr inbounds %struct.BMIter, ptr %11, i64 0, i32 4
  store i8 1, ptr %129, align 4, !tbaa !95
  %130 = getelementptr inbounds %struct.BMIter, ptr %11, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %130, align 8, !tbaa !97
  %131 = getelementptr inbounds %struct.BMIter, ptr %11, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %131, align 8, !tbaa !98
  %132 = getelementptr inbounds %struct.BMesh, ptr %128, i64 0, i32 9
  %133 = load ptr, ptr %132, align 8, !tbaa !99
  store ptr %133, ptr %11, align 8, !tbaa !100
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %11) #7
  %134 = load ptr, ptr %131, align 8, !tbaa !98
  %135 = call ptr %134(ptr noundef nonnull %11) #7
  %136 = icmp eq ptr %135, null
  br i1 %136, label %154, label %137

137:                                              ; preds = %127, %137
  %138 = phi ptr [ %152, %137 ], [ %135, %127 ]
  %139 = getelementptr inbounds %struct.BMVert, ptr %138, i64 0, i32 2
  %140 = load float, ptr %7, align 4, !tbaa !60
  %141 = load float, ptr %139, align 4, !tbaa !60
  %142 = fsub float %141, %140
  store float %142, ptr %139, align 4, !tbaa !60
  %143 = load float, ptr %53, align 4, !tbaa !60
  %144 = getelementptr inbounds %struct.BMVert, ptr %138, i64 0, i32 2, i64 1
  %145 = load float, ptr %144, align 4, !tbaa !60
  %146 = fsub float %145, %143
  store float %146, ptr %144, align 4, !tbaa !60
  %147 = load float, ptr %54, align 4, !tbaa !60
  %148 = getelementptr inbounds %struct.BMVert, ptr %138, i64 0, i32 2, i64 2
  %149 = load float, ptr %148, align 4, !tbaa !60
  %150 = fsub float %149, %147
  store float %150, ptr %148, align 4, !tbaa !60
  %151 = load ptr, ptr %131, align 8, !tbaa !98
  %152 = call ptr %151(ptr noundef nonnull %11) #7
  %153 = icmp eq ptr %152, null
  br i1 %153, label %154, label %137, !llvm.loop !103

154:                                              ; preds = %137, %127
  call void @EDBM_mesh_normals_update(ptr noundef nonnull %63) #7
  call void @DAG_id_tag_update(ptr noundef nonnull %20, i16 noundef signext 2) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #7
  br label %155

155:                                              ; preds = %55, %154, %51
  %156 = phi i32 [ 1, %154 ], [ 0, %55 ], [ 0, %51 ]
  %157 = call i32 @CTX_data_selected_editable_objects(ptr noundef %0, ptr noundef nonnull %10) #7
  %158 = load ptr, ptr %10, align 8, !tbaa !48
  %159 = icmp eq ptr %158, null
  br i1 %159, label %172, label %160

160:                                              ; preds = %155, %160
  %161 = phi ptr [ %170, %160 ], [ %158, %155 ]
  %162 = phi ptr [ %169, %160 ], [ null, %155 ]
  %163 = getelementptr inbounds %struct.CollectionPointerLink, ptr %161, i64 0, i32 2, i32 2
  %164 = load ptr, ptr %163, align 8, !tbaa !49
  %165 = getelementptr inbounds %struct.Object, ptr %164, i64 0, i32 53
  %166 = load i16, ptr %165, align 4, !tbaa !104
  %167 = and i16 %166, -1025
  store i16 %167, ptr %165, align 4, !tbaa !104
  %168 = icmp eq ptr %164, %19
  %169 = select i1 %168, ptr %161, ptr %162
  %170 = load ptr, ptr %161, align 8, !tbaa !48
  %171 = icmp eq ptr %170, null
  br i1 %171, label %172, label %160, !llvm.loop !105

172:                                              ; preds = %160, %155
  %173 = phi ptr [ null, %155 ], [ %169, %160 ]
  %174 = icmp eq ptr %173, null
  br i1 %174, label %176, label %175

175:                                              ; preds = %172
  call void @BLI_listbase_rotate_first(ptr noundef nonnull %10, ptr noundef nonnull %173) #7
  br label %176

176:                                              ; preds = %175, %172
  %177 = getelementptr inbounds %struct.Main, ptr %17, i64 0, i32 13
  %178 = load ptr, ptr %177, align 8, !tbaa !48
  %179 = icmp eq ptr %178, null
  br i1 %179, label %180, label %214

180:                                              ; preds = %231, %176
  %181 = icmp eq i32 %23, 2
  %182 = getelementptr inbounds [3 x float], ptr %14, i64 0, i64 2
  %183 = getelementptr inbounds [3 x float], ptr %14, i64 0, i64 1
  %184 = getelementptr inbounds [3 x float], ptr %15, i64 0, i64 2
  %185 = getelementptr inbounds [3 x float], ptr %15, i64 0, i64 1
  %186 = icmp eq ptr %20, null
  %187 = icmp eq i32 %52, 3
  %188 = getelementptr inbounds float, ptr %8, i64 1
  %189 = getelementptr inbounds float, ptr %8, i64 2
  %190 = icmp eq i32 %52, 3
  %191 = getelementptr inbounds float, ptr %8, i64 1
  %192 = getelementptr inbounds float, ptr %8, i64 2
  %193 = icmp eq i32 %23, 0
  %194 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 47
  %195 = xor i1 %26, true
  %196 = select i1 %26, i32 17, i32 0
  %197 = icmp ne i32 %23, 2
  %198 = icmp eq i32 %52, 3
  %199 = getelementptr inbounds float, ptr %8, i64 1
  %200 = getelementptr inbounds float, ptr %8, i64 2
  %201 = icmp eq i32 %23, 0
  %202 = icmp eq i32 %23, 3
  %203 = icmp eq i32 %52, 3
  %204 = getelementptr inbounds float, ptr %8, i64 1
  %205 = getelementptr inbounds float, ptr %8, i64 2
  %206 = getelementptr inbounds float, ptr %9, i64 1
  %207 = getelementptr inbounds float, ptr %9, i64 2
  %208 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 47
  %209 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 47
  %210 = select i1 %26, i1 %193, i1 false
  %211 = select i1 %26, i32 17, i32 0
  %212 = select i1 %26, i1 %201, i1 false
  %213 = select i1 %26, i32 17, i32 0
  br label %234

214:                                              ; preds = %176, %231
  %215 = phi ptr [ %232, %231 ], [ %178, %176 ]
  %216 = getelementptr inbounds %struct.Object, ptr %215, i64 0, i32 19
  %217 = load ptr, ptr %216, align 8, !tbaa !70
  %218 = icmp eq ptr %217, null
  br i1 %218, label %223, label %219

219:                                              ; preds = %214
  %220 = getelementptr inbounds %struct.ID, ptr %217, i64 0, i32 5
  %221 = load i16, ptr %220, align 2, !tbaa !72
  %222 = and i16 %221, -1025
  store i16 %222, ptr %220, align 2, !tbaa !72
  br label %223

223:                                              ; preds = %219, %214
  %224 = getelementptr inbounds %struct.Object, ptr %215, i64 0, i32 112
  %225 = load ptr, ptr %224, align 8, !tbaa !106
  %226 = icmp eq ptr %225, null
  br i1 %226, label %231, label %227

227:                                              ; preds = %223
  %228 = getelementptr inbounds %struct.ID, ptr %225, i64 0, i32 5
  %229 = load i16, ptr %228, align 2, !tbaa !72
  %230 = and i16 %229, -1025
  store i16 %230, ptr %228, align 2, !tbaa !72
  br label %231

231:                                              ; preds = %223, %227
  %232 = load ptr, ptr %215, align 8, !tbaa !48
  %233 = icmp eq ptr %232, null
  br i1 %233, label %180, label %214, !llvm.loop !107

234:                                              ; preds = %180, %593
  %235 = phi i32 [ %595, %593 ], [ 0, %180 ]
  %236 = phi i32 [ %596, %593 ], [ 0, %180 ]
  %237 = phi i32 [ %597, %593 ], [ %156, %180 ]
  %238 = phi ptr [ %239, %593 ], [ %10, %180 ]
  %239 = load ptr, ptr %238, align 8, !tbaa !48
  %240 = icmp eq ptr %239, null
  br i1 %240, label %599, label %241

241:                                              ; preds = %234
  %242 = getelementptr inbounds %struct.CollectionPointerLink, ptr %239, i64 0, i32 2, i32 2
  %243 = load ptr, ptr %242, align 8, !tbaa !49
  %244 = getelementptr inbounds %struct.Object, ptr %243, i64 0, i32 53
  %245 = load i16, ptr %244, align 4, !tbaa !104
  %246 = and i16 %245, 1024
  %247 = icmp eq i16 %246, 0
  br i1 %247, label %248, label %593

248:                                              ; preds = %241
  %249 = or disjoint i16 %245, 1024
  store i16 %249, ptr %244, align 4, !tbaa !104
  br i1 %181, label %250, label %257

250:                                              ; preds = %248
  %251 = load float, ptr %6, align 4, !tbaa !60
  store float %251, ptr %7, align 4, !tbaa !60
  %252 = load float, ptr %38, align 4, !tbaa !60
  store float %252, ptr %53, align 4, !tbaa !60
  %253 = load float, ptr %41, align 4, !tbaa !60
  store float %253, ptr %54, align 4, !tbaa !60
  %254 = getelementptr inbounds %struct.Object, ptr %243, i64 0, i32 50
  %255 = getelementptr inbounds %struct.Object, ptr %243, i64 0, i32 47
  %256 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %254, ptr noundef nonnull %255) #7
  call void @mul_m4_v3(ptr noundef nonnull %254, ptr noundef nonnull %7) #7
  br label %257

257:                                              ; preds = %250, %248
  %258 = getelementptr inbounds %struct.Object, ptr %243, i64 0, i32 19
  %259 = load ptr, ptr %258, align 8, !tbaa !70
  %260 = icmp eq ptr %259, null
  br i1 %260, label %261, label %305

261:                                              ; preds = %257
  %262 = getelementptr inbounds %struct.Object, ptr %243, i64 0, i32 55
  %263 = load i16, ptr %262, align 8, !tbaa !108
  %264 = and i16 %263, 256
  %265 = icmp eq i16 %264, 0
  br i1 %265, label %311, label %266

266:                                              ; preds = %261
  %267 = getelementptr inbounds %struct.Object, ptr %243, i64 0, i32 112
  %268 = load ptr, ptr %267, align 8, !tbaa !106
  %269 = icmp eq ptr %268, null
  br i1 %269, label %311, label %270

270:                                              ; preds = %266
  %271 = getelementptr inbounds %struct.ID, ptr %268, i64 0, i32 5
  %272 = load i16, ptr %271, align 2, !tbaa !109
  %273 = and i16 %272, 1024
  %274 = icmp eq i16 %273, 0
  br i1 %274, label %275, label %311

275:                                              ; preds = %270
  %276 = getelementptr inbounds %struct.ID, ptr %268, i64 0, i32 3
  %277 = load ptr, ptr %276, align 8, !tbaa !111
  %278 = icmp eq ptr %277, null
  br i1 %278, label %281, label %279

279:                                              ; preds = %275
  %280 = add nsw i32 %236, 1
  br label %311

281:                                              ; preds = %275
  br i1 %181, label %287, label %282

282:                                              ; preds = %281
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #7
  store float 0x46293E5940000000, ptr %182, align 4, !tbaa !60
  store float 0x46293E5940000000, ptr %183, align 4, !tbaa !60
  store float 0x46293E5940000000, ptr %14, align 4, !tbaa !60
  store float 0xC6293E5940000000, ptr %184, align 4, !tbaa !60
  store float 0xC6293E5940000000, ptr %185, align 4, !tbaa !60
  store float 0xC6293E5940000000, ptr %15, align 4, !tbaa !60
  %283 = call zeroext i8 @BKE_object_minmax_dupli(ptr noundef %18, ptr noundef %243, ptr noundef nonnull %14, ptr noundef nonnull %15, i8 noundef zeroext 1) #7
  call void @mid_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %14, ptr noundef nonnull %15) #7
  %284 = getelementptr inbounds %struct.Object, ptr %243, i64 0, i32 50
  %285 = getelementptr inbounds %struct.Object, ptr %243, i64 0, i32 47
  %286 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %284, ptr noundef nonnull %285) #7
  call void @mul_m4_v3(ptr noundef nonnull %284, ptr noundef nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #7
  br label %287

287:                                              ; preds = %281, %282
  %288 = load ptr, ptr %267, align 8, !tbaa !106
  %289 = getelementptr inbounds %struct.Group, ptr %288, i64 0, i32 3
  %290 = load float, ptr %7, align 4, !tbaa !60
  %291 = load float, ptr %289, align 4, !tbaa !60
  %292 = fadd float %290, %291
  store float %292, ptr %289, align 4, !tbaa !60
  %293 = load float, ptr %53, align 4, !tbaa !60
  %294 = getelementptr inbounds %struct.Group, ptr %288, i64 0, i32 3, i64 1
  %295 = load float, ptr %294, align 4, !tbaa !60
  %296 = fadd float %293, %295
  store float %296, ptr %294, align 4, !tbaa !60
  %297 = load float, ptr %54, align 4, !tbaa !60
  %298 = getelementptr inbounds %struct.Group, ptr %288, i64 0, i32 3, i64 2
  %299 = load float, ptr %298, align 4, !tbaa !60
  %300 = fadd float %297, %299
  store float %300, ptr %298, align 4, !tbaa !60
  %301 = add nsw i32 %237, 1
  %302 = getelementptr inbounds %struct.ID, ptr %288, i64 0, i32 5
  %303 = load i16, ptr %302, align 2, !tbaa !109
  %304 = or i16 %303, 1024
  store i16 %304, ptr %302, align 2, !tbaa !109
  br label %311

305:                                              ; preds = %257
  %306 = getelementptr inbounds %struct.ID, ptr %259, i64 0, i32 3
  %307 = load ptr, ptr %306, align 8, !tbaa !74
  %308 = icmp ne ptr %307, null
  %309 = zext i1 %308 to i32
  %310 = add nsw i32 %236, %309
  br label %311

311:                                              ; preds = %305, %261, %266, %270, %287, %279
  %312 = phi i8 [ 0, %279 ], [ 1, %287 ], [ 0, %270 ], [ 0, %266 ], [ 0, %261 ], [ 0, %305 ]
  %313 = phi i32 [ %280, %279 ], [ %236, %287 ], [ %236, %270 ], [ %236, %266 ], [ %236, %261 ], [ %310, %305 ]
  %314 = phi i32 [ %237, %279 ], [ %301, %287 ], [ %237, %270 ], [ %237, %266 ], [ %237, %261 ], [ %237, %305 ]
  br i1 %186, label %315, label %336

315:                                              ; preds = %311
  %316 = getelementptr inbounds %struct.Object, ptr %243, i64 0, i32 3
  %317 = load i16, ptr %316, align 8, !tbaa !69
  %318 = icmp eq i16 %317, 1
  br i1 %318, label %319, label %336

319:                                              ; preds = %315
  %320 = load ptr, ptr %258, align 8, !tbaa !70
  br i1 %181, label %329, label %321

321:                                              ; preds = %319
  br i1 %202, label %322, label %324

322:                                              ; preds = %321
  %323 = call zeroext i8 @BKE_mesh_center_centroid(ptr noundef %320, ptr noundef nonnull %7) #7
  br label %329

324:                                              ; preds = %321
  br i1 %203, label %325, label %327

325:                                              ; preds = %324
  %326 = call zeroext i8 @BKE_mesh_center_median(ptr noundef %320, ptr noundef nonnull %7) #7
  br label %329

327:                                              ; preds = %324
  %328 = call zeroext i8 @BKE_mesh_center_bounds(ptr noundef %320, ptr noundef nonnull %7) #7
  br label %329

329:                                              ; preds = %322, %327, %325, %319
  %330 = load float, ptr %7, align 4, !tbaa !60
  %331 = fneg float %330
  store float %331, ptr %8, align 4, !tbaa !60
  %332 = load float, ptr %53, align 4, !tbaa !60
  %333 = fneg float %332
  store float %333, ptr %204, align 4, !tbaa !60
  %334 = load float, ptr %54, align 4, !tbaa !60
  %335 = fneg float %334
  store float %335, ptr %205, align 4, !tbaa !60
  call void @BKE_mesh_translate(ptr noundef %320, ptr noundef nonnull %8, i8 noundef zeroext 1) #7
  br label %471

336:                                              ; preds = %315, %311
  %337 = getelementptr inbounds %struct.Object, ptr %243, i64 0, i32 3
  %338 = load i16, ptr %337, align 8, !tbaa !69
  switch i16 %338, label %477 [
    i16 2, label %339
    i16 3, label %339
    i16 4, label %369
    i16 25, label %401
    i16 5, label %438
    i16 22, label %459
  ]

339:                                              ; preds = %336, %336
  %340 = load ptr, ptr %258, align 8, !tbaa !70
  br i1 %181, label %346, label %341

341:                                              ; preds = %339
  br i1 %198, label %342, label %344

342:                                              ; preds = %341
  %343 = call zeroext i8 @BKE_curve_center_median(ptr noundef %340, ptr noundef nonnull %7) #7
  br label %346

344:                                              ; preds = %341
  %345 = call zeroext i8 @BKE_curve_center_bounds(ptr noundef %340, ptr noundef nonnull %7) #7
  br label %346

346:                                              ; preds = %342, %344, %339
  %347 = load i16, ptr %337, align 8, !tbaa !69
  %348 = icmp eq i16 %347, 2
  br i1 %348, label %349, label %355

349:                                              ; preds = %346
  %350 = getelementptr inbounds %struct.Curve, ptr %340, i64 0, i32 23
  %351 = load i32, ptr %350, align 4, !tbaa !75
  %352 = and i32 %351, 1
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %354, label %355

354:                                              ; preds = %349
  store float 0.000000e+00, ptr %54, align 4, !tbaa !60
  br label %355

355:                                              ; preds = %354, %349, %346
  %356 = load float, ptr %7, align 4, !tbaa !60
  %357 = fneg float %356
  store float %357, ptr %8, align 4, !tbaa !60
  %358 = load float, ptr %53, align 4, !tbaa !60
  %359 = fneg float %358
  store float %359, ptr %199, align 4, !tbaa !60
  %360 = load float, ptr %54, align 4, !tbaa !60
  %361 = fneg float %360
  store float %361, ptr %200, align 4, !tbaa !60
  call void @BKE_curve_translate(ptr noundef %340, ptr noundef nonnull %8, i8 noundef zeroext 1) #7
  %362 = add nsw i32 %314, 1
  %363 = getelementptr inbounds %struct.ID, ptr %340, i64 0, i32 5
  %364 = load i16, ptr %363, align 2, !tbaa !112
  %365 = or i16 %364, 1024
  store i16 %365, ptr %363, align 2, !tbaa !112
  br i1 %212, label %366, label %367

366:                                              ; preds = %355
  call void @DAG_id_tag_update(ptr noundef nonnull %20, i16 noundef signext 2) #7
  br label %367

367:                                              ; preds = %355, %366
  %368 = phi i32 [ 17, %366 ], [ %213, %355 ]
  br i1 %26, label %593, label %477

369:                                              ; preds = %336
  %370 = load ptr, ptr %258, align 8, !tbaa !70
  %371 = getelementptr inbounds %struct.Object, ptr %243, i64 0, i32 15
  %372 = load ptr, ptr %371, align 8, !tbaa !113
  %373 = icmp eq ptr %372, null
  %374 = select i1 %373, i1 %197, i1 false
  br i1 %374, label %477, label %375

375:                                              ; preds = %369
  br i1 %181, label %388, label %376

376:                                              ; preds = %375
  %377 = getelementptr inbounds [8 x [3 x float]], ptr %372, i64 0, i64 4
  %378 = load float, ptr %377, align 4, !tbaa !60
  %379 = load float, ptr %372, align 4, !tbaa !60
  %380 = fadd float %378, %379
  %381 = fmul float %380, 5.000000e-01
  store float %381, ptr %7, align 4, !tbaa !60
  %382 = getelementptr inbounds [3 x float], ptr %372, i64 0, i64 1
  %383 = load float, ptr %382, align 4, !tbaa !60
  %384 = getelementptr inbounds [8 x [3 x float]], ptr %372, i64 0, i64 2, i64 1
  %385 = load float, ptr %384, align 4, !tbaa !60
  %386 = fadd float %383, %385
  %387 = fmul float %386, 5.000000e-01
  store float %387, ptr %53, align 4, !tbaa !60
  br label %388

388:                                              ; preds = %375, %376
  store float 0.000000e+00, ptr %54, align 4, !tbaa !60
  %389 = getelementptr inbounds %struct.Curve, ptr %370, i64 0, i32 44
  %390 = load float, ptr %389, align 8, !tbaa !114
  %391 = load float, ptr %7, align 4, !tbaa !60
  %392 = getelementptr inbounds %struct.Curve, ptr %370, i64 0, i32 40
  %393 = load float, ptr %392, align 8, !tbaa !115
  %394 = fdiv float %391, %393
  %395 = fsub float %390, %394
  store float %395, ptr %389, align 8, !tbaa !114
  %396 = getelementptr inbounds %struct.Curve, ptr %370, i64 0, i32 45
  %397 = load float, ptr %396, align 4, !tbaa !116
  %398 = load float, ptr %53, align 4, !tbaa !60
  %399 = fdiv float %398, %393
  %400 = fsub float %397, %399
  store float %400, ptr %396, align 4, !tbaa !116
  br label %471

401:                                              ; preds = %336
  %402 = load ptr, ptr %258, align 8, !tbaa !70
  %403 = getelementptr inbounds %struct.ID, ptr %402, i64 0, i32 6
  %404 = load i32, ptr %403, align 4, !tbaa !71
  %405 = getelementptr inbounds %struct.ID, ptr %402, i64 0, i32 5
  %406 = load i16, ptr %405, align 2, !tbaa !72
  %407 = lshr i16 %406, 9
  %408 = and i16 %407, 1
  %409 = zext nneg i16 %408 to i32
  %410 = sub nsw i32 %404, %409
  %411 = icmp sgt i32 %410, 1
  br i1 %411, label %412, label %414

412:                                              ; preds = %401
  %413 = add nsw i32 %235, 1
  br label %433

414:                                              ; preds = %401
  call void @ED_armature_origin_set(ptr noundef %18, ptr noundef %243, ptr noundef nonnull %6, i32 noundef %23, i32 noundef %52) #7
  %415 = add nsw i32 %314, 1
  %416 = load i16, ptr %405, align 2, !tbaa !117
  %417 = or i16 %416, 1024
  store i16 %417, ptr %405, align 2, !tbaa !117
  call void @BKE_object_where_is_calc(ptr noundef %18, ptr noundef %243) #7
  call void @BKE_pose_where_is(ptr noundef %18, ptr noundef %243) #7
  call void @llvm.lifetime.start.p0(i64 1424, ptr nonnull %5) #7
  %418 = load ptr, ptr %177, align 8, !tbaa !48
  %419 = icmp eq ptr %418, null
  br i1 %419, label %432, label %420

420:                                              ; preds = %414, %429
  %421 = phi ptr [ %430, %429 ], [ %418, %414 ]
  %422 = getelementptr inbounds %struct.Object, ptr %421, i64 0, i32 9
  %423 = load ptr, ptr %422, align 8, !tbaa !53
  %424 = icmp eq ptr %423, %243
  br i1 %424, label %425, label %429

425:                                              ; preds = %420
  %426 = getelementptr inbounds %struct.Object, ptr %421, i64 0, i32 47
  call void @BKE_object_apply_mat4(ptr noundef nonnull %421, ptr noundef nonnull %426, i8 noundef zeroext 1, i8 noundef zeroext 0) #7
  call void @BKE_object_workob_calc_parent(ptr noundef %18, ptr noundef nonnull %421, ptr noundef nonnull %5) #7
  %427 = getelementptr inbounds %struct.Object, ptr %421, i64 0, i32 48
  %428 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %427, ptr noundef nonnull %194) #7
  br label %429

429:                                              ; preds = %425, %420
  %430 = load ptr, ptr %421, align 8, !tbaa !48
  %431 = icmp eq ptr %430, null
  br i1 %431, label %432, label %420, !llvm.loop !81

432:                                              ; preds = %429, %414
  call void @llvm.lifetime.end.p0(i64 1424, ptr nonnull %5) #7
  br label %433

433:                                              ; preds = %432, %412
  %434 = phi i1 [ true, %412 ], [ %195, %432 ]
  %435 = phi i32 [ 0, %412 ], [ %196, %432 ]
  %436 = phi i32 [ %413, %412 ], [ %235, %432 ]
  %437 = phi i32 [ %314, %412 ], [ %415, %432 ]
  br i1 %434, label %477, label %593

438:                                              ; preds = %336
  %439 = load ptr, ptr %258, align 8, !tbaa !70
  br i1 %181, label %445, label %440

440:                                              ; preds = %438
  br i1 %190, label %441, label %443

441:                                              ; preds = %440
  %442 = call zeroext i8 @BKE_mball_center_median(ptr noundef %439, ptr noundef nonnull %7) #7
  br label %445

443:                                              ; preds = %440
  %444 = call zeroext i8 @BKE_mball_center_bounds(ptr noundef %439, ptr noundef nonnull %7) #7
  br label %445

445:                                              ; preds = %441, %443, %438
  %446 = load float, ptr %7, align 4, !tbaa !60
  %447 = fneg float %446
  store float %447, ptr %8, align 4, !tbaa !60
  %448 = load float, ptr %53, align 4, !tbaa !60
  %449 = fneg float %448
  store float %449, ptr %191, align 4, !tbaa !60
  %450 = load float, ptr %54, align 4, !tbaa !60
  %451 = fneg float %450
  store float %451, ptr %192, align 4, !tbaa !60
  call void @BKE_mball_translate(ptr noundef %439, ptr noundef nonnull %8) #7
  %452 = add nsw i32 %314, 1
  %453 = getelementptr inbounds %struct.ID, ptr %439, i64 0, i32 5
  %454 = load i16, ptr %453, align 2, !tbaa !119
  %455 = or i16 %454, 1024
  store i16 %455, ptr %453, align 2, !tbaa !119
  br i1 %210, label %456, label %457

456:                                              ; preds = %445
  call void @DAG_id_tag_update(ptr noundef nonnull %20, i16 noundef signext 2) #7
  br label %457

457:                                              ; preds = %445, %456
  %458 = phi i32 [ 17, %456 ], [ %211, %445 ]
  br i1 %26, label %593, label %477

459:                                              ; preds = %336
  %460 = load ptr, ptr %258, align 8, !tbaa !70
  br i1 %181, label %464, label %461

461:                                              ; preds = %459
  br i1 %187, label %462, label %463

462:                                              ; preds = %461
  call void @BKE_lattice_center_median(ptr noundef %460, ptr noundef nonnull %7) #7
  br label %464

463:                                              ; preds = %461
  call void @BKE_lattice_center_bounds(ptr noundef %460, ptr noundef nonnull %7) #7
  br label %464

464:                                              ; preds = %462, %463, %459
  %465 = load float, ptr %7, align 4, !tbaa !60
  %466 = fneg float %465
  store float %466, ptr %8, align 4, !tbaa !60
  %467 = load float, ptr %53, align 4, !tbaa !60
  %468 = fneg float %467
  store float %468, ptr %188, align 4, !tbaa !60
  %469 = load float, ptr %54, align 4, !tbaa !60
  %470 = fneg float %469
  store float %470, ptr %189, align 4, !tbaa !60
  call void @BKE_lattice_translate(ptr noundef %460, ptr noundef nonnull %8, i8 noundef zeroext 1) #7
  br label %471

471:                                              ; preds = %329, %464, %388
  %472 = phi ptr [ %320, %329 ], [ %460, %464 ], [ %370, %388 ]
  %473 = add nsw i32 %314, 1
  %474 = getelementptr inbounds %struct.ID, ptr %472, i64 0, i32 5
  %475 = load i16, ptr %474, align 2, !tbaa !73
  %476 = or i16 %475, 1024
  store i16 %476, ptr %474, align 2, !tbaa !73
  br label %477

477:                                              ; preds = %471, %336, %369, %367, %433, %457
  %478 = phi i32 [ %235, %367 ], [ %436, %433 ], [ %235, %457 ], [ %235, %369 ], [ %235, %336 ], [ %235, %471 ]
  %479 = phi i8 [ 1, %367 ], [ %312, %433 ], [ 1, %457 ], [ %312, %369 ], [ %312, %336 ], [ 1, %471 ]
  %480 = phi i32 [ %362, %367 ], [ %437, %433 ], [ %452, %457 ], [ %314, %369 ], [ %314, %336 ], [ %473, %471 ]
  %481 = icmp ne i8 %479, 0
  %482 = select i1 %481, i1 %27, i1 false
  br i1 %482, label %483, label %593

483:                                              ; preds = %477
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %16) #7
  call void @BKE_object_to_mat4(ptr noundef %243, ptr noundef nonnull %16) #7
  %484 = load float, ptr %7, align 4, !tbaa !60
  store float %484, ptr %9, align 4, !tbaa !60
  %485 = load float, ptr %53, align 4, !tbaa !60
  store float %485, ptr %206, align 4, !tbaa !60
  %486 = load float, ptr %54, align 4, !tbaa !60
  store float %486, ptr %207, align 4, !tbaa !60
  call void @mul_mat3_m4_v3(ptr noundef nonnull %16, ptr noundef nonnull %9) #7
  %487 = getelementptr inbounds %struct.Object, ptr %243, i64 0, i32 33
  %488 = load float, ptr %9, align 4, !tbaa !60
  %489 = load float, ptr %487, align 4, !tbaa !60
  %490 = fadd float %488, %489
  store float %490, ptr %487, align 4, !tbaa !60
  %491 = load float, ptr %206, align 4, !tbaa !60
  %492 = getelementptr inbounds %struct.Object, ptr %243, i64 0, i32 33, i64 1
  %493 = load float, ptr %492, align 4, !tbaa !60
  %494 = fadd float %491, %493
  store float %494, ptr %492, align 4, !tbaa !60
  %495 = load float, ptr %207, align 4, !tbaa !60
  %496 = getelementptr inbounds %struct.Object, ptr %243, i64 0, i32 33, i64 2
  %497 = load float, ptr %496, align 4, !tbaa !60
  %498 = fadd float %495, %497
  store float %498, ptr %496, align 4, !tbaa !60
  call void @BKE_object_where_is_calc(ptr noundef %18, ptr noundef %243) #7
  %499 = getelementptr inbounds %struct.Object, ptr %243, i64 0, i32 3
  %500 = load i16, ptr %499, align 8, !tbaa !69
  %501 = icmp eq i16 %500, 25
  br i1 %501, label %502, label %503

502:                                              ; preds = %483
  call void @BKE_pose_where_is(ptr noundef %18, ptr noundef %243) #7
  br label %503

503:                                              ; preds = %502, %483
  call void @llvm.lifetime.start.p0(i64 1424, ptr nonnull %4) #7
  %504 = load ptr, ptr %177, align 8, !tbaa !48
  %505 = icmp eq ptr %504, null
  br i1 %505, label %518, label %506

506:                                              ; preds = %503, %515
  %507 = phi ptr [ %516, %515 ], [ %504, %503 ]
  %508 = getelementptr inbounds %struct.Object, ptr %507, i64 0, i32 9
  %509 = load ptr, ptr %508, align 8, !tbaa !53
  %510 = icmp eq ptr %509, %243
  br i1 %510, label %511, label %515

511:                                              ; preds = %506
  %512 = getelementptr inbounds %struct.Object, ptr %507, i64 0, i32 47
  call void @BKE_object_apply_mat4(ptr noundef nonnull %507, ptr noundef nonnull %512, i8 noundef zeroext 1, i8 noundef zeroext 0) #7
  call void @BKE_object_workob_calc_parent(ptr noundef %18, ptr noundef nonnull %507, ptr noundef nonnull %4) #7
  %513 = getelementptr inbounds %struct.Object, ptr %507, i64 0, i32 48
  %514 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %513, ptr noundef nonnull %208) #7
  br label %515

515:                                              ; preds = %511, %506
  %516 = load ptr, ptr %507, align 8, !tbaa !48
  %517 = icmp eq ptr %516, null
  br i1 %517, label %518, label %506, !llvm.loop !81

518:                                              ; preds = %515, %503
  call void @llvm.lifetime.end.p0(i64 1424, ptr nonnull %4) #7
  %519 = load ptr, ptr %10, align 8, !tbaa !48
  %520 = icmp eq ptr %519, null
  br i1 %520, label %592, label %521

521:                                              ; preds = %518
  %522 = getelementptr inbounds %struct.Object, ptr %243, i64 0, i32 112
  %523 = getelementptr inbounds %struct.Object, ptr %243, i64 0, i32 55
  br label %524

524:                                              ; preds = %521, %589
  %525 = phi ptr [ %519, %521 ], [ %590, %589 ]
  %526 = getelementptr inbounds %struct.CollectionPointerLink, ptr %525, i64 0, i32 2, i32 2
  %527 = load ptr, ptr %526, align 8, !tbaa !49
  %528 = getelementptr inbounds %struct.Object, ptr %527, i64 0, i32 53
  %529 = load i16, ptr %528, align 4, !tbaa !104
  %530 = and i16 %529, 1024
  %531 = icmp eq i16 %530, 0
  br i1 %531, label %532, label %589

532:                                              ; preds = %524
  %533 = load ptr, ptr %258, align 8, !tbaa !70
  %534 = icmp eq ptr %533, null
  br i1 %534, label %539, label %535

535:                                              ; preds = %532
  %536 = getelementptr inbounds %struct.Object, ptr %527, i64 0, i32 19
  %537 = load ptr, ptr %536, align 8, !tbaa !70
  %538 = icmp eq ptr %533, %537
  br i1 %538, label %551, label %539

539:                                              ; preds = %535, %532
  %540 = load ptr, ptr %522, align 8, !tbaa !106
  %541 = getelementptr inbounds %struct.Object, ptr %527, i64 0, i32 112
  %542 = load ptr, ptr %541, align 8, !tbaa !106
  %543 = icmp eq ptr %540, %542
  br i1 %543, label %544, label %589

544:                                              ; preds = %539
  %545 = load i16, ptr %523, align 8, !tbaa !108
  %546 = getelementptr inbounds %struct.Object, ptr %527, i64 0, i32 55
  %547 = load i16, ptr %546, align 8, !tbaa !108
  %548 = or i16 %547, %545
  %549 = and i16 %548, 256
  %550 = icmp eq i16 %549, 0
  br i1 %550, label %589, label %551

551:                                              ; preds = %544, %535
  %552 = or disjoint i16 %529, 1024
  store i16 %552, ptr %528, align 4, !tbaa !104
  call void @DAG_id_tag_update(ptr noundef %527, i16 noundef signext 3) #7
  %553 = load float, ptr %7, align 4, !tbaa !60
  store float %553, ptr %9, align 4, !tbaa !60
  %554 = load float, ptr %53, align 4, !tbaa !60
  store float %554, ptr %206, align 4, !tbaa !60
  %555 = load float, ptr %54, align 4, !tbaa !60
  store float %555, ptr %207, align 4, !tbaa !60
  %556 = getelementptr inbounds %struct.Object, ptr %527, i64 0, i32 47
  call void @mul_mat3_m4_v3(ptr noundef nonnull %556, ptr noundef nonnull %9) #7
  %557 = getelementptr inbounds %struct.Object, ptr %527, i64 0, i32 33
  %558 = load float, ptr %9, align 4, !tbaa !60
  %559 = load float, ptr %557, align 4, !tbaa !60
  %560 = fadd float %558, %559
  store float %560, ptr %557, align 4, !tbaa !60
  %561 = load float, ptr %206, align 4, !tbaa !60
  %562 = getelementptr inbounds %struct.Object, ptr %527, i64 0, i32 33, i64 1
  %563 = load float, ptr %562, align 4, !tbaa !60
  %564 = fadd float %561, %563
  store float %564, ptr %562, align 4, !tbaa !60
  %565 = load float, ptr %207, align 4, !tbaa !60
  %566 = getelementptr inbounds %struct.Object, ptr %527, i64 0, i32 33, i64 2
  %567 = load float, ptr %566, align 4, !tbaa !60
  %568 = fadd float %565, %567
  store float %568, ptr %566, align 4, !tbaa !60
  call void @BKE_object_where_is_calc(ptr noundef %18, ptr noundef %527) #7
  %569 = getelementptr inbounds %struct.Object, ptr %527, i64 0, i32 3
  %570 = load i16, ptr %569, align 8, !tbaa !69
  %571 = icmp eq i16 %570, 25
  br i1 %571, label %572, label %573

572:                                              ; preds = %551
  call void @BKE_pose_where_is(ptr noundef %18, ptr noundef %527) #7
  br label %573

573:                                              ; preds = %572, %551
  call void @llvm.lifetime.start.p0(i64 1424, ptr nonnull %3) #7
  %574 = load ptr, ptr %177, align 8, !tbaa !48
  %575 = icmp eq ptr %574, null
  br i1 %575, label %588, label %576

576:                                              ; preds = %573, %585
  %577 = phi ptr [ %586, %585 ], [ %574, %573 ]
  %578 = getelementptr inbounds %struct.Object, ptr %577, i64 0, i32 9
  %579 = load ptr, ptr %578, align 8, !tbaa !53
  %580 = icmp eq ptr %579, %527
  br i1 %580, label %581, label %585

581:                                              ; preds = %576
  %582 = getelementptr inbounds %struct.Object, ptr %577, i64 0, i32 47
  call void @BKE_object_apply_mat4(ptr noundef nonnull %577, ptr noundef nonnull %582, i8 noundef zeroext 1, i8 noundef zeroext 0) #7
  call void @BKE_object_workob_calc_parent(ptr noundef %18, ptr noundef nonnull %577, ptr noundef nonnull %3) #7
  %583 = getelementptr inbounds %struct.Object, ptr %577, i64 0, i32 48
  %584 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %583, ptr noundef nonnull %209) #7
  br label %585

585:                                              ; preds = %581, %576
  %586 = load ptr, ptr %577, align 8, !tbaa !48
  %587 = icmp eq ptr %586, null
  br i1 %587, label %588, label %576, !llvm.loop !81

588:                                              ; preds = %585, %573
  call void @llvm.lifetime.end.p0(i64 1424, ptr nonnull %3) #7
  br label %589

589:                                              ; preds = %588, %544, %539, %524
  %590 = load ptr, ptr %525, align 8, !tbaa !48
  %591 = icmp eq ptr %590, null
  br i1 %591, label %592, label %524, !llvm.loop !121

592:                                              ; preds = %589, %518
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %16) #7
  br label %593

593:                                              ; preds = %457, %433, %367, %592, %477, %241
  %594 = phi i32 [ 0, %241 ], [ %368, %367 ], [ %435, %433 ], [ %458, %457 ], [ 0, %592 ], [ 0, %477 ]
  %595 = phi i32 [ %235, %241 ], [ %235, %367 ], [ %436, %433 ], [ %235, %457 ], [ %478, %592 ], [ %478, %477 ]
  %596 = phi i32 [ %236, %241 ], [ %313, %367 ], [ %313, %433 ], [ %313, %457 ], [ %313, %592 ], [ %313, %477 ]
  %597 = phi i32 [ %237, %241 ], [ %362, %367 ], [ %437, %433 ], [ %452, %457 ], [ %480, %592 ], [ %480, %477 ]
  %598 = icmp eq i32 %594, 0
  br i1 %598, label %234, label %599, !llvm.loop !122

599:                                              ; preds = %593, %234
  %600 = phi i32 [ %595, %593 ], [ %235, %234 ]
  %601 = phi i32 [ %596, %593 ], [ %236, %234 ]
  %602 = phi i32 [ %597, %593 ], [ %237, %234 ]
  call void @BLI_freelistN(ptr noundef nonnull %10) #7
  %603 = load ptr, ptr %177, align 8, !tbaa !48
  %604 = icmp eq ptr %603, null
  br i1 %604, label %619, label %605

605:                                              ; preds = %599, %616
  %606 = phi ptr [ %617, %616 ], [ %603, %599 ]
  %607 = getelementptr inbounds %struct.Object, ptr %606, i64 0, i32 19
  %608 = load ptr, ptr %607, align 8, !tbaa !70
  %609 = icmp eq ptr %608, null
  br i1 %609, label %616, label %610

610:                                              ; preds = %605
  %611 = getelementptr inbounds %struct.ID, ptr %608, i64 0, i32 5
  %612 = load i16, ptr %611, align 2, !tbaa !72
  %613 = and i16 %612, 1024
  %614 = icmp eq i16 %613, 0
  br i1 %614, label %616, label %615

615:                                              ; preds = %610
  call void @DAG_id_tag_update(ptr noundef nonnull %606, i16 noundef signext 3) #7
  br label %616

616:                                              ; preds = %605, %610, %615
  %617 = load ptr, ptr %606, align 8, !tbaa !48
  %618 = icmp eq ptr %617, null
  br i1 %618, label %619, label %605, !llvm.loop !123

619:                                              ; preds = %616, %599
  %620 = icmp eq i32 %602, 0
  br i1 %620, label %622, label %621

621:                                              ; preds = %619
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85065728, ptr noundef null) #7
  br label %622

622:                                              ; preds = %621, %619
  %623 = add nsw i32 %601, %600
  %624 = icmp eq i32 %623, 0
  br i1 %624, label %635, label %625

625:                                              ; preds = %622
  %626 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %627 = load ptr, ptr %626, align 8, !tbaa !68
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %627, i32 noundef 16, ptr noundef nonnull @.str.56, i32 noundef %623, i32 noundef %602) #7
  %628 = icmp eq i32 %601, 0
  br i1 %628, label %631, label %629

629:                                              ; preds = %625
  %630 = load ptr, ptr %626, align 8, !tbaa !68
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %630, i32 noundef 16, ptr noundef nonnull @.str.57, i32 noundef %601) #7
  br label %631

631:                                              ; preds = %629, %625
  %632 = icmp eq i32 %600, 0
  br i1 %632, label %635, label %633

633:                                              ; preds = %631
  %634 = load ptr, ptr %626, align 8, !tbaa !68
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %634, i32 noundef 16, ptr noundef nonnull @.str.58, i32 noundef %600) #7
  br label %635

635:                                              ; preds = %622, %633, %631, %29
  %636 = phi i32 [ 2, %29 ], [ 4, %631 ], [ 4, %633 ], [ 4, %622 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #7
  ret i32 %636
}

declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @object_clear_transform_generic_exec(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr noundef %3) unnamed_addr #1 {
  %5 = alloca %struct.ListBase, align 8
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %7 = icmp eq ptr %2, null
  %8 = icmp eq ptr %3, null
  %9 = or i1 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !68
  tail call void @BKE_report(ptr noundef %12, i32 noundef 32, ptr noundef nonnull @.str.48) #7
  br label %32

13:                                               ; preds = %4
  %14 = tail call ptr @ANIM_get_keyingset_for_autokeying(ptr noundef %6, ptr noundef %3) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7
  %15 = call i32 @CTX_data_selected_editable_objects(ptr noundef %0, ptr noundef nonnull %5) #7
  %16 = load ptr, ptr %5, align 8, !tbaa !48
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18

18:                                               ; preds = %13, %28
  %19 = phi ptr [ %29, %28 ], [ %16, %13 ]
  %20 = getelementptr inbounds %struct.CollectionPointerLink, ptr %19, i64 0, i32 2, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !49
  %22 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 27
  %23 = load i32, ptr %22, align 8, !tbaa !124
  %24 = and i32 %23, 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  call void %2(ptr noundef %21) #7, !callees !125
  %27 = call zeroext i8 @ED_autokeyframe_object(ptr noundef %0, ptr noundef %6, ptr noundef %21, ptr noundef %14) #7
  call void @DAG_id_tag_update(ptr noundef %21, i16 noundef signext 1) #7
  br label %28

28:                                               ; preds = %26, %18
  %29 = load ptr, ptr %19, align 8, !tbaa !48
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %18, !llvm.loop !126

31:                                               ; preds = %28, %13
  call void @BLI_freelistN(ptr noundef nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85065728, ptr noundef null) #7
  br label %32

32:                                               ; preds = %31, %10
  %33 = phi i32 [ 2, %10 ], [ 4, %31 ]
  ret i32 %33
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @object_clear_loc(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 56
  %3 = load i16, ptr %2, align 2, !tbaa !127
  %4 = and i16 %3, 1
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 34
  store float 0.000000e+00, ptr %7, align 4, !tbaa !60
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 33
  store float 0.000000e+00, ptr %8, align 8, !tbaa !60
  br label %9

9:                                                ; preds = %6, %1
  %10 = and i16 %3, 2
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 34, i64 1
  store float 0.000000e+00, ptr %13, align 4, !tbaa !60
  %14 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 33, i64 1
  store float 0.000000e+00, ptr %14, align 4, !tbaa !60
  br label %15

15:                                               ; preds = %12, %9
  %16 = and i16 %3, 4
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 34, i64 2
  store float 0.000000e+00, ptr %19, align 4, !tbaa !60
  %20 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 33, i64 2
  store float 0.000000e+00, ptr %20, align 8, !tbaa !60
  br label %21

21:                                               ; preds = %18, %15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ANIM_get_keyingset_for_autokeying(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CTX_data_selected_editable_objects(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @ED_autokeyframe_object(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @object_clear_rot(ptr noundef %0) #1 {
  %2 = alloca [3 x float], align 4
  %3 = alloca [3 x float], align 4
  %4 = alloca [4 x float], align 16
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 56
  %6 = load i16, ptr %5, align 2, !tbaa !127
  %7 = zext i16 %6 to i32
  %8 = and i32 %7, 568
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %176, label %10

10:                                               ; preds = %1
  %11 = and i32 %7, 1024
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %112, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 83
  %15 = load i16, ptr %14, align 8, !tbaa !128
  switch i16 %15, label %94 [
    i16 -1, label %16
    i16 0, label %70
  ]

16:                                               ; preds = %13
  %17 = and i32 %7, 512
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 46
  store float 0.000000e+00, ptr %20, align 4, !tbaa !129
  %21 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 45
  store float 0.000000e+00, ptr %21, align 8, !tbaa !130
  br label %22

22:                                               ; preds = %19, %16
  %23 = and i16 %6, 8
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 44
  store float 0.000000e+00, ptr %26, align 4, !tbaa !60
  %27 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 43
  store float 0.000000e+00, ptr %27, align 8, !tbaa !60
  br label %28

28:                                               ; preds = %25, %22
  %29 = and i16 %6, 16
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 44, i64 1
  store float 0.000000e+00, ptr %32, align 4, !tbaa !60
  %33 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 43, i64 1
  store float 0.000000e+00, ptr %33, align 4, !tbaa !60
  br label %34

34:                                               ; preds = %31, %28
  %35 = and i16 %6, 32
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 44, i64 2
  store float 0.000000e+00, ptr %38, align 4, !tbaa !60
  %39 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 43, i64 2
  store float 0.000000e+00, ptr %39, align 8, !tbaa !60
  br label %40

40:                                               ; preds = %37, %34
  %41 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 43
  %42 = load float, ptr %41, align 8, !tbaa !60
  %43 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 43, i64 1
  %44 = load float, ptr %43, align 4, !tbaa !60
  %45 = fsub float %42, %44
  %46 = tail call float @llvm.fabs.f32(float %45)
  %47 = fcmp ult float %46, 0x3E80000000000000
  br i1 %47, label %48, label %55

48:                                               ; preds = %40
  %49 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 43, i64 2
  %50 = load float, ptr %49, align 8, !tbaa !60
  %51 = fsub float %44, %50
  %52 = tail call float @llvm.fabs.f32(float %51)
  %53 = fcmp ult float %52, 0x3E80000000000000
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  store float 1.000000e+00, ptr %43, align 4, !tbaa !60
  br label %55

55:                                               ; preds = %54, %48, %40
  %56 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 44
  %57 = load float, ptr %56, align 4, !tbaa !60
  %58 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 44, i64 1
  %59 = load float, ptr %58, align 4, !tbaa !60
  %60 = fsub float %57, %59
  %61 = tail call float @llvm.fabs.f32(float %60)
  %62 = fcmp ult float %61, 0x3E80000000000000
  br i1 %62, label %63, label %189

63:                                               ; preds = %55
  %64 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 44, i64 2
  %65 = load float, ptr %64, align 4, !tbaa !60
  %66 = fsub float %59, %65
  %67 = tail call float @llvm.fabs.f32(float %66)
  %68 = fcmp ult float %67, 0x3E80000000000000
  br i1 %68, label %69, label %189

69:                                               ; preds = %63
  store float 1.000000e+00, ptr %58, align 4, !tbaa !60
  br label %189

70:                                               ; preds = %13
  %71 = and i32 %7, 512
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 42
  store float 1.000000e+00, ptr %74, align 8, !tbaa !60
  %75 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 41
  store float 1.000000e+00, ptr %75, align 8, !tbaa !60
  br label %76

76:                                               ; preds = %73, %70
  %77 = and i16 %6, 8
  %78 = icmp eq i16 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 42, i64 1
  store float 0.000000e+00, ptr %80, align 4, !tbaa !60
  %81 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 41, i64 1
  store float 0.000000e+00, ptr %81, align 4, !tbaa !60
  br label %82

82:                                               ; preds = %79, %76
  %83 = and i16 %6, 16
  %84 = icmp eq i16 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 42, i64 2
  store float 0.000000e+00, ptr %86, align 8, !tbaa !60
  %87 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 41, i64 2
  store float 0.000000e+00, ptr %87, align 8, !tbaa !60
  br label %88

88:                                               ; preds = %85, %82
  %89 = and i16 %6, 32
  %90 = icmp eq i16 %89, 0
  br i1 %90, label %91, label %189

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 42, i64 3
  store float 0.000000e+00, ptr %92, align 4, !tbaa !60
  %93 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 41, i64 3
  store float 0.000000e+00, ptr %93, align 4, !tbaa !60
  br label %189

94:                                               ; preds = %13
  %95 = and i32 %7, 8
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 40
  store float 0.000000e+00, ptr %98, align 4, !tbaa !60
  %99 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 39
  store float 0.000000e+00, ptr %99, align 8, !tbaa !60
  br label %100

100:                                              ; preds = %97, %94
  %101 = and i16 %6, 16
  %102 = icmp eq i16 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 40, i64 1
  store float 0.000000e+00, ptr %104, align 4, !tbaa !60
  %105 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 39, i64 1
  store float 0.000000e+00, ptr %105, align 4, !tbaa !60
  br label %106

106:                                              ; preds = %103, %100
  %107 = and i16 %6, 32
  %108 = icmp eq i16 %107, 0
  br i1 %108, label %109, label %189

109:                                              ; preds = %106
  %110 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 40, i64 2
  store float 0.000000e+00, ptr %110, align 4, !tbaa !60
  %111 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 39, i64 2
  store float 0.000000e+00, ptr %111, align 8, !tbaa !60
  br label %189

112:                                              ; preds = %10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %113 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 83
  %114 = load i16, ptr %113, align 8, !tbaa !128
  switch i16 %114, label %121 [
    i16 0, label %115
    i16 -1, label %117
  ]

115:                                              ; preds = %112
  %116 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 41
  call void @copy_qt_qt(ptr noundef nonnull %4, ptr noundef nonnull %116) #7
  call void @quat_to_eul(ptr noundef nonnull %3, ptr noundef nonnull %116) #7
  br label %130

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 43
  %119 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 45
  %120 = load float, ptr %119, align 8, !tbaa !130
  call void @axis_angle_to_eulO(ptr noundef nonnull %3, i16 noundef signext 1, ptr noundef nonnull %118, float noundef %120) #7
  br label %130

121:                                              ; preds = %112
  %122 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 39
  %123 = load float, ptr %122, align 4, !tbaa !60
  store float %123, ptr %3, align 4, !tbaa !60
  %124 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 39, i64 1
  %125 = load float, ptr %124, align 4, !tbaa !60
  %126 = getelementptr inbounds float, ptr %3, i64 1
  store float %125, ptr %126, align 4, !tbaa !60
  %127 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 39, i64 2
  %128 = load float, ptr %127, align 4, !tbaa !60
  %129 = getelementptr inbounds float, ptr %3, i64 2
  store float %128, ptr %129, align 4, !tbaa !60
  br label %130

130:                                              ; preds = %117, %121, %115
  %131 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 2
  store float 0.000000e+00, ptr %131, align 4, !tbaa !60
  %132 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 1
  store float 0.000000e+00, ptr %132, align 4, !tbaa !60
  store float 0.000000e+00, ptr %2, align 4, !tbaa !60
  %133 = load i16, ptr %5, align 2, !tbaa !127
  %134 = and i16 %133, 8
  %135 = icmp eq i16 %134, 0
  br i1 %135, label %138, label %136

136:                                              ; preds = %130
  %137 = load float, ptr %3, align 4, !tbaa !60
  store float %137, ptr %2, align 4, !tbaa !60
  br label %138

138:                                              ; preds = %136, %130
  %139 = and i16 %133, 16
  %140 = icmp eq i16 %139, 0
  br i1 %140, label %144, label %141

141:                                              ; preds = %138
  %142 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  %143 = load float, ptr %142, align 4, !tbaa !60
  store float %143, ptr %132, align 4, !tbaa !60
  br label %144

144:                                              ; preds = %141, %138
  %145 = and i16 %133, 32
  %146 = icmp eq i16 %145, 0
  br i1 %146, label %150, label %147

147:                                              ; preds = %144
  %148 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  %149 = load float, ptr %148, align 4, !tbaa !60
  store float %149, ptr %131, align 4, !tbaa !60
  br label %150

150:                                              ; preds = %147, %144
  %151 = load i16, ptr %113, align 8, !tbaa !128
  switch i16 %151, label %168 [
    i16 0, label %152
    i16 -1, label %165
  ]

152:                                              ; preds = %150
  %153 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 41
  call void @eul_to_quat(ptr noundef nonnull %153, ptr noundef nonnull %2) #7
  %154 = load float, ptr %4, align 16, !tbaa !60
  %155 = fcmp olt float %154, 0.000000e+00
  br i1 %155, label %156, label %159

156:                                              ; preds = %152
  %157 = load float, ptr %153, align 8, !tbaa !60
  %158 = fcmp ogt float %157, 0.000000e+00
  br i1 %158, label %164, label %159

159:                                              ; preds = %156, %152
  %160 = fcmp ogt float %154, 0.000000e+00
  br i1 %160, label %161, label %175

161:                                              ; preds = %159
  %162 = load float, ptr %153, align 8, !tbaa !60
  %163 = fcmp olt float %162, 0.000000e+00
  br i1 %163, label %164, label %175

164:                                              ; preds = %161, %156
  call void @mul_qt_fl(ptr noundef nonnull %153, float noundef -1.000000e+00) #7
  br label %175

165:                                              ; preds = %150
  %166 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 43
  %167 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 45
  call void @eulO_to_axis_angle(ptr noundef nonnull %166, ptr noundef nonnull %167, ptr noundef nonnull %2, i16 noundef signext 1) #7
  br label %175

168:                                              ; preds = %150
  %169 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 39
  %170 = load float, ptr %2, align 4, !tbaa !60
  store float %170, ptr %169, align 4, !tbaa !60
  %171 = load float, ptr %132, align 4, !tbaa !60
  %172 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 39, i64 1
  store float %171, ptr %172, align 4, !tbaa !60
  %173 = load float, ptr %131, align 4, !tbaa !60
  %174 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 39, i64 2
  store float %173, ptr %174, align 4, !tbaa !60
  br label %175

175:                                              ; preds = %165, %168, %159, %161, %164
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #7
  br label %189

176:                                              ; preds = %1
  %177 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 83
  %178 = load i16, ptr %177, align 8, !tbaa !128
  switch i16 %178, label %187 [
    i16 0, label %179
    i16 -1, label %182
  ]

179:                                              ; preds = %176
  %180 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 41
  tail call void @unit_qt(ptr noundef nonnull %180) #7
  %181 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 42
  tail call void @unit_qt(ptr noundef nonnull %181) #7
  br label %189

182:                                              ; preds = %176
  %183 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 43
  %184 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 45
  tail call void @unit_axis_angle(ptr noundef nonnull %183, ptr noundef nonnull %184) #7
  %185 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 44
  %186 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 46
  tail call void @unit_axis_angle(ptr noundef nonnull %185, ptr noundef nonnull %186) #7
  br label %189

187:                                              ; preds = %176
  %188 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 39
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %188, i8 0, i64 24, i1 false)
  br label %189

189:                                              ; preds = %179, %187, %182, %175, %91, %88, %109, %106, %55, %63, %69
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

declare void @copy_qt_qt(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @quat_to_eul(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @axis_angle_to_eulO(ptr noundef, i16 noundef signext, ptr noundef, float noundef) local_unnamed_addr #2

declare void @eul_to_quat(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_qt_fl(ptr noundef, float noundef) local_unnamed_addr #2

declare void @eulO_to_axis_angle(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare void @unit_qt(ptr noundef) local_unnamed_addr #2

declare void @unit_axis_angle(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @object_clear_scale(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 56
  %3 = load i16, ptr %2, align 2, !tbaa !127
  %4 = and i16 %3, 64
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 38
  store float 1.000000e+00, ptr %7, align 4, !tbaa !60
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 36
  store float 1.000000e+00, ptr %8, align 4, !tbaa !60
  br label %9

9:                                                ; preds = %6, %1
  %10 = and i16 %3, 128
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 38, i64 1
  store float 1.000000e+00, ptr %13, align 4, !tbaa !60
  %14 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 36, i64 1
  store float 1.000000e+00, ptr %14, align 4, !tbaa !60
  br label %15

15:                                               ; preds = %12, %9
  %16 = and i16 %3, 256
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 38, i64 2
  store float 1.000000e+00, ptr %19, align 4, !tbaa !60
  %20 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 36, i64 2
  store float 1.000000e+00, ptr %20, align 4, !tbaa !60
  br label %21

21:                                               ; preds = %18, %15
  ret void
}

declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_object_where_is_calc(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_object_apply_mat4(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @BKE_idcode_to_name(i32 noundef) local_unnamed_addr #2

declare void @BKE_object_to_mat3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_object_scale_to_mat3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_object_rot_to_mat3(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare zeroext i8 @invert_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_m3_m3m3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @unit_m3(ptr noundef) local_unnamed_addr #2

declare void @copy_m4_m3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @multiresModifier_scale_disp(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_mesh_transform(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @BKE_mesh_calc_normals(ptr noundef) local_unnamed_addr #2

declare void @ED_armature_apply_transform(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_lattice_transform(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @BKE_mball_transform(ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @mat3_to_scale(ptr noundef) local_unnamed_addr #2

declare void @BKE_curve_transform_ex(ptr noundef, ptr noundef, i8 noundef zeroext, float noundef) local_unnamed_addr #2

declare ptr @BKE_object_movieclip_get(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @BKE_tracking_reconstruction_scale(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_pose_where_is(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_object_workob_calc_parent(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #2

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_view3d(ptr noundef) local_unnamed_addr #2

declare ptr @ED_view3d_cursor3d_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @RNA_struct_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @minmax_v3v3_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @EDBM_mesh_normals_update(ptr noundef) local_unnamed_addr #2

declare void @BLI_listbase_rotate_first(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BKE_object_minmax_dupli(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare zeroext i8 @BKE_mesh_center_centroid(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BKE_mesh_center_median(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BKE_mesh_center_bounds(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_mesh_translate(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare zeroext i8 @BKE_curve_center_median(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BKE_curve_center_bounds(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_curve_translate(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @ED_armature_origin_set(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @BKE_mball_center_median(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BKE_mball_center_bounds(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_mball_translate(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_lattice_center_median(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_lattice_center_bounds(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_lattice_translate(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @BKE_object_to_mat4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_mat3_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }

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
!45 = !{!35, !36, i64 72}
!46 = !{!35, !41, i64 184}
!47 = !{i32 2, i32 5}
!48 = !{!36, !36, i64 0}
!49 = !{!50, !36, i64 32}
!50 = !{!"CollectionPointerLink", !36, i64 0, !36, i64 8, !51, i64 16}
!51 = !{!"PointerRNA", !52, i64 0, !36, i64 8, !36, i64 16}
!52 = !{!"", !36, i64 0}
!53 = !{!54, !36, i64 216}
!54 = !{!"Object", !55, i64 0, !36, i64 120, !36, i64 128, !41, i64 136, !41, i64 138, !56, i64 140, !56, i64 144, !56, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !57, i64 312, !36, i64 360, !39, i64 368, !39, i64 384, !39, i64 400, !39, i64 416, !56, i64 432, !56, i64 436, !36, i64 440, !36, i64 448, !56, i64 456, !56, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !58, i64 616, !58, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !56, i64 944, !41, i64 948, !41, i64 950, !41, i64 952, !41, i64 954, !41, i64 956, !41, i64 958, !41, i64 960, !41, i64 962, !41, i64 964, !37, i64 966, !37, i64 967, !56, i64 968, !56, i64 972, !56, i64 976, !56, i64 980, !56, i64 984, !58, i64 988, !58, i64 992, !58, i64 996, !58, i64 1000, !58, i64 1004, !58, i64 1008, !58, i64 1012, !58, i64 1016, !58, i64 1020, !58, i64 1024, !58, i64 1028, !58, i64 1032, !41, i64 1036, !41, i64 1038, !41, i64 1040, !37, i64 1042, !37, i64 1043, !41, i64 1044, !37, i64 1046, !37, i64 1047, !58, i64 1048, !58, i64 1052, !39, i64 1056, !39, i64 1072, !39, i64 1088, !39, i64 1104, !58, i64 1120, !41, i64 1124, !41, i64 1126, !37, i64 1128, !56, i64 1144, !56, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !41, i64 1162, !37, i64 1164, !39, i64 1176, !39, i64 1192, !39, i64 1208, !39, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !41, i64 1266, !58, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !59, i64 1304, !59, i64 1312, !56, i64 1320, !56, i64 1324, !39, i64 1328, !39, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !39, i64 1400, !36, i64 1416}
!55 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !56, i64 100, !56, i64 104, !56, i64 108, !36, i64 112}
!56 = !{!"int", !37, i64 0}
!57 = !{!"bAnimVizSettings", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !56, i64 32, !56, i64 36, !56, i64 40, !56, i64 44}
!58 = !{!"float", !37, i64 0}
!59 = !{!"long", !37, i64 0}
!60 = !{!58, !58, i64 0}
!61 = distinct !{!61, !62, !63}
!62 = !{!"llvm.loop.mustprogress"}
!63 = !{!"llvm.loop.unroll.disable"}
!64 = distinct !{!64, !62, !63}
!65 = !{!35, !36, i64 88}
!66 = !{!67, !36, i64 112}
!67 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!68 = !{!67, !36, i64 120}
!69 = !{!54, !41, i64 136}
!70 = !{!54, !36, i64 296}
!71 = !{!55, !56, i64 100}
!72 = !{!55, !41, i64 98}
!73 = !{!41, !41, i64 0}
!74 = !{!55, !36, i64 24}
!75 = !{!76, !56, i64 268}
!76 = !{!"Curve", !55, i64 0, !36, i64 120, !36, i64 128, !39, i64 136, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !37, i64 208, !37, i64 220, !37, i64 232, !41, i64 244, !41, i64 246, !41, i64 248, !41, i64 250, !58, i64 252, !58, i64 256, !56, i64 260, !41, i64 264, !41, i64 266, !56, i64 268, !58, i64 272, !58, i64 276, !58, i64 280, !41, i64 284, !41, i64 286, !41, i64 288, !41, i64 290, !56, i64 292, !56, i64 296, !37, i64 300, !41, i64 304, !37, i64 306, !37, i64 307, !58, i64 308, !58, i64 312, !58, i64 316, !58, i64 320, !58, i64 324, !58, i64 328, !58, i64 332, !58, i64 336, !58, i64 340, !58, i64 344, !56, i64 348, !56, i64 352, !56, i64 356, !56, i64 360, !56, i64 364, !36, i64 368, !36, i64 376, !37, i64 384, !36, i64 448, !36, i64 456, !36, i64 464, !36, i64 472, !36, i64 480, !56, i64 488, !56, i64 492, !36, i64 496, !77, i64 504, !58, i64 512, !58, i64 516, !58, i64 520, !37, i64 524, !37, i64 525, !37, i64 526}
!77 = !{!"CharInfo", !41, i64 0, !41, i64 2, !37, i64 4, !37, i64 5, !41, i64 6}
!78 = !{!76, !36, i64 192}
!79 = distinct !{!79, !62, !63}
!80 = !{!54, !58, i64 1048}
!81 = distinct !{!81, !62, !63}
!82 = distinct !{!82, !62, !63}
!83 = !{!35, !36, i64 48}
!84 = !{!35, !36, i64 104}
!85 = !{!86, !41, i64 238}
!86 = !{!"View3D", !36, i64 0, !36, i64 8, !39, i64 16, !56, i64 32, !58, i64 36, !37, i64 40, !37, i64 56, !58, i64 72, !58, i64 76, !37, i64 80, !37, i64 81, !56, i64 84, !56, i64 88, !41, i64 92, !41, i64 94, !36, i64 96, !36, i64 104, !87, i64 112, !39, i64 128, !36, i64 144, !36, i64 152, !37, i64 160, !56, i64 224, !56, i64 228, !41, i64 232, !41, i64 234, !41, i64 236, !41, i64 238, !41, i64 240, !41, i64 242, !58, i64 244, !58, i64 248, !58, i64 252, !58, i64 256, !37, i64 260, !37, i64 272, !41, i64 284, !41, i64 286, !41, i64 288, !37, i64 290, !37, i64 291, !37, i64 292, !37, i64 293, !37, i64 294, !39, i64 296, !39, i64 312, !39, i64 328, !37, i64 344, !37, i64 345, !37, i64 346, !37, i64 347, !36, i64 352, !36, i64 360, !36, i64 368}
!87 = !{!"rctf", !58, i64 0, !58, i64 4, !58, i64 8, !58, i64 12}
!88 = !{!89, !36, i64 272}
!89 = !{!"Mesh", !55, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !90, i64 280, !90, i64 480, !90, i64 680, !90, i64 880, !90, i64 1080, !56, i64 1280, !56, i64 1284, !56, i64 1288, !56, i64 1292, !56, i64 1296, !56, i64 1300, !56, i64 1304, !37, i64 1308, !37, i64 1320, !37, i64 1332, !56, i64 1344, !41, i64 1348, !41, i64 1350, !58, i64 1352, !56, i64 1356, !37, i64 1360, !37, i64 1361, !37, i64 1362, !37, i64 1363, !37, i64 1364, !37, i64 1365, !41, i64 1366, !36, i64 1368}
!90 = !{!"CustomData", !36, i64 0, !37, i64 8, !56, i64 172, !56, i64 176, !56, i64 180, !36, i64 184, !36, i64 192}
!91 = !{!92, !36, i64 0}
!92 = !{!"BMEditMesh", !36, i64 0, !36, i64 8, !56, i64 16, !36, i64 24, !56, i64 32, !36, i64 40, !36, i64 48, !59, i64 56, !36, i64 64, !56, i64 72, !36, i64 80, !56, i64 88, !41, i64 92, !41, i64 94, !36, i64 96, !56, i64 104}
!93 = !{!94, !56, i64 0}
!94 = !{!"BMesh", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12, !56, i64 16, !56, i64 20, !56, i64 24, !37, i64 28, !37, i64 29, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !56, i64 88, !56, i64 92, !56, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !56, i64 128, !36, i64 136, !90, i64 144, !90, i64 344, !90, i64 544, !90, i64 744, !41, i64 944, !56, i64 948, !56, i64 952, !56, i64 956, !39, i64 960, !36, i64 976, !39, i64 984, !36, i64 1000}
!95 = !{!96, !37, i64 60}
!96 = !{!"BMIter", !37, i64 0, !36, i64 40, !36, i64 48, !56, i64 56, !37, i64 60}
!97 = !{!96, !36, i64 40}
!98 = !{!96, !36, i64 48}
!99 = !{!94, !36, i64 32}
!100 = !{!37, !37, i64 0}
!101 = distinct !{!101, !62, !63}
!102 = distinct !{!102, !62, !63}
!103 = distinct !{!103, !62, !63}
!104 = !{!54, !41, i64 948}
!105 = distinct !{!105, !62, !63}
!106 = !{!54, !36, i64 1256}
!107 = distinct !{!107, !62, !63}
!108 = !{!54, !41, i64 952}
!109 = !{!110, !41, i64 98}
!110 = !{!"Group", !55, i64 0, !39, i64 120, !56, i64 136, !37, i64 140}
!111 = !{!110, !36, i64 24}
!112 = !{!76, !41, i64 98}
!113 = !{!54, !36, i64 264}
!114 = !{!76, !58, i64 336}
!115 = !{!76, !58, i64 320}
!116 = !{!76, !58, i64 340}
!117 = !{!118, !41, i64 98}
!118 = !{!"bArmature", !55, i64 0, !36, i64 120, !39, i64 128, !39, i64 144, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !56, i64 192, !56, i64 196, !56, i64 200, !56, i64 204, !41, i64 208, !41, i64 210, !56, i64 212, !56, i64 216, !56, i64 220, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !56, i64 232, !56, i64 236, !56, i64 240, !56, i64 244, !56, i64 248, !56, i64 252}
!119 = !{!120, !41, i64 98}
!120 = !{!"MetaBall", !55, i64 0, !36, i64 120, !39, i64 128, !39, i64 144, !36, i64 160, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 185, !41, i64 186, !41, i64 188, !41, i64 190, !37, i64 192, !37, i64 204, !37, i64 216, !58, i64 228, !58, i64 232, !58, i64 236, !36, i64 240}
!121 = distinct !{!121, !62, !63}
!122 = distinct !{!122, !62, !63}
!123 = distinct !{!123, !62, !63}
!124 = !{!54, !56, i64 432}
!125 = !{ptr @object_clear_loc, ptr @object_clear_rot, ptr @object_clear_scale}
!126 = distinct !{!126, !62, !63}
!127 = !{!54, !41, i64 954}
!128 = !{!54, !41, i64 1040}
!129 = !{!54, !58, i64 620}
!130 = !{!54, !58, i64 616}
