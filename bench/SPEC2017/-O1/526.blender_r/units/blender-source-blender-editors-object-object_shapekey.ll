; ModuleID = 'blender/source/blender/editors/object/object_shapekey.c'
source_filename = "blender/source/blender/editors/object/object_shapekey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ListBase = type { ptr, ptr }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.Key = type { %struct.ID, ptr, ptr, [32 x i8], i32, i32, %struct.ListBase, ptr, ptr, i16, i16, i16, i16, float, i32 }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.Curve = type { %struct.ID, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], i16, i16, i16, i16, float, float, i32, i16, i16, i32, float, float, float, i16, i16, i16, i16, i32, i32, [4 x i8], i16, i8, i8, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i32, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.CharInfo, float, float, float, i8, i8, [2 x i8] }
%struct.CharInfo = type { i16, i16, i8, i8, i16 }
%struct.Lattice = type { %struct.ID, ptr, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i32, float, float, float, float, float, float, ptr, ptr, ptr, ptr, [64 x i8], ptr }
%struct.KeyBlock = type { ptr, ptr, float, float, i16, i16, i16, i16, i32, i32, ptr, [64 x i8], [64 x i8], float, float }

@.str = private unnamed_addr constant [14 x i8] c"Add Shape Key\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"OBJECT_OT_shape_key_add\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Add shape key to the object\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"from_mix\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"From Mix\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"Create the new shape key from the existing mix of keys\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"Remove Shape Key\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"OBJECT_OT_shape_key_remove\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Remove shape key from the object\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"All\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"Remove all shape keys\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"Clear Shape Keys\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"Clear weights for all shape keys\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"OBJECT_OT_shape_key_clear\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"Re-Time Shape Keys\00", align 1
@.str.16 = private unnamed_addr constant [42 x i8] c"Resets the timing for absolute shape keys\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"OBJECT_OT_shape_key_retime\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"Mirror Shape Key\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"OBJECT_OT_shape_key_mirror\00", align 1
@.str.20 = private unnamed_addr constant [52 x i8] c"Mirror the current shape key along the local X axis\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"use_topology\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"Topology Mirror\00", align 1
@.str.23 = private unnamed_addr constant [90 x i8] c"Use topology based mirroring (for when both sides of mesh have matching, unique topology)\00", align 1
@OBJECT_OT_shape_key_move.slot_move = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 -2, ptr @.str.24, i32 0, ptr @.str.25, ptr @.str.26 }, %struct.EnumPropertyItem { i32 -1, ptr @.str.27, i32 0, ptr @.str.28, ptr @.str.29 }, %struct.EnumPropertyItem { i32 1, ptr @.str.30, i32 0, ptr @.str.31, ptr @.str.29 }, %struct.EnumPropertyItem { i32 2, ptr @.str.32, i32 0, ptr @.str.33, ptr @.str.34 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.24 = private unnamed_addr constant [4 x i8] c"TOP\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"Top\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"Top of the list\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"UP\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"Up\00", align 1
@.str.29 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"DOWN\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"Down\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"BOTTOM\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"Bottom\00", align 1
@.str.34 = private unnamed_addr constant [19 x i8] c"Bottom of the list\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"Move Shape Key\00", align 1
@.str.36 = private unnamed_addr constant [25 x i8] c"OBJECT_OT_shape_key_move\00", align 1
@.str.37 = private unnamed_addr constant [46 x i8] c"Move the active shape key up/down in the list\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.40 = private unnamed_addr constant [17 x i8] c"shape_key_mirror\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_shape_key_add(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.1, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @shape_key_mode_poll, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @shape_key_add_exec, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.3, i32 noundef 1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #3
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @shape_key_mode_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @ED_object_context(ptr noundef %0) #3
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  br i1 %3, label %24, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !55
  %12 = icmp eq ptr %11, null
  %13 = icmp ne ptr %8, null
  %14 = select i1 %12, i1 %13, i1 false
  br i1 %14, label %15, label %24

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !56
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 27
  %21 = load i32, ptr %20, align 8, !tbaa !57
  %22 = icmp ne i32 %21, 1
  %23 = zext i1 %22 to i32
  br label %24

24:                                               ; preds = %19, %15, %9, %7
  %25 = phi i32 [ 0, %15 ], [ 0, %9 ], [ 0, %7 ], [ %23, %19 ]
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @shape_key_add_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #3
  %4 = tail call ptr @ED_object_context(ptr noundef %0) #3
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !58
  %7 = tail call i32 @RNA_boolean_get(ptr noundef %6, ptr noundef nonnull @.str.3) #3
  %8 = trunc i32 %7 to i8
  %9 = tail call ptr @BKE_object_insert_shape_key(ptr noundef %3, ptr noundef %4, ptr noundef null, i8 noundef zeroext %8) #3
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %2
  %12 = tail call ptr @BKE_key_from_object(ptr noundef %4) #3
  %13 = getelementptr inbounds %struct.Key, ptr %12, i64 0, i32 6
  %14 = tail call i32 @BLI_findindex(ptr noundef nonnull %13, ptr noundef nonnull %9) #3
  %15 = trunc i32 %14 to i16
  %16 = add i16 %15, 1
  %17 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 115
  store i16 %16, ptr %17, align 2, !tbaa !60
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %4) #3
  br label %18

18:                                               ; preds = %2, %11
  ret i32 4
}

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_shape_key_remove(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.6, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.7, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.8, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @shape_key_mode_exists_poll, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @shape_key_remove_exec, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.9, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #3
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @shape_key_mode_exists_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @ED_object_context(ptr noundef %0) #3
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  br i1 %3, label %27, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !55
  %12 = icmp eq ptr %11, null
  %13 = icmp ne ptr %8, null
  %14 = select i1 %12, i1 %13, i1 false
  br i1 %14, label %15, label %27

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !56
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 27
  %21 = load i32, ptr %20, align 8, !tbaa !57
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = tail call ptr @BKE_keyblock_from_object(ptr noundef nonnull %2) #3
  %25 = icmp ne ptr %24, null
  %26 = zext i1 %25 to i32
  br label %27

27:                                               ; preds = %23, %19, %15, %9, %7
  %28 = phi i32 [ 0, %19 ], [ 0, %15 ], [ 0, %9 ], [ 0, %7 ], [ %26, %23 ]
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @shape_key_remove_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #3
  %4 = tail call ptr @ED_object_context(ptr noundef %0) #3
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !58
  %7 = tail call i32 @RNA_boolean_get(ptr noundef %6, ptr noundef nonnull @.str.9) #3
  %8 = icmp eq i32 %7, 0
  %9 = tail call ptr @BKE_key_from_object(ptr noundef %4) #3
  %10 = icmp eq ptr %9, null
  br i1 %8, label %23, label %11

11:                                               ; preds = %2
  br i1 %10, label %103, label %12

12:                                               ; preds = %11
  %13 = getelementptr inbounds %struct.Key, ptr %9, i64 0, i32 8
  %14 = load ptr, ptr %13, align 8, !tbaa !61
  %15 = getelementptr inbounds %struct.ID, ptr %14, i64 0, i32 4
  %16 = load i16, ptr %15, align 8, !tbaa !63
  switch i16 %16, label %101 [
    i16 17741, label %17
    i16 21827, label %19
    i16 21580, label %21
  ]

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.Mesh, ptr %14, i64 0, i32 4
  br label %99

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.Curve, ptr %14, i64 0, i32 9
  br label %99

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.Lattice, ptr %14, i64 0, i32 23
  br label %99

23:                                               ; preds = %2
  br i1 %10, label %103, label %24

24:                                               ; preds = %23
  %25 = getelementptr inbounds %struct.Key, ptr %9, i64 0, i32 6
  %26 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 115
  %27 = load i16, ptr %26, align 2, !tbaa !60
  %28 = sext i16 %27 to i32
  %29 = add nsw i32 %28, -1
  %30 = tail call ptr @BLI_findlink(ptr noundef nonnull %25, i32 noundef %29) #3
  %31 = icmp eq ptr %30, null
  br i1 %31, label %84, label %32

32:                                               ; preds = %24
  %33 = load ptr, ptr %25, align 8, !tbaa !64
  %34 = icmp eq ptr %33, null
  br i1 %34, label %49, label %35

35:                                               ; preds = %32
  %36 = load i16, ptr %26, align 2, !tbaa !60
  %37 = sext i16 %36 to i32
  %38 = add nsw i32 %37, -1
  br label %39

39:                                               ; preds = %35, %46
  %40 = phi ptr [ %33, %35 ], [ %47, %46 ]
  %41 = getelementptr inbounds %struct.KeyBlock, ptr %40, i64 0, i32 6
  %42 = load i16, ptr %41, align 4, !tbaa !65
  %43 = sext i16 %42 to i32
  %44 = icmp eq i32 %38, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store i16 0, ptr %41, align 4, !tbaa !65
  br label %46

46:                                               ; preds = %45, %39
  %47 = load ptr, ptr %40, align 8, !tbaa !64
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %39, !llvm.loop !67

49:                                               ; preds = %46, %32
  tail call void @BLI_remlink(ptr noundef nonnull %25, ptr noundef nonnull %30) #3
  %50 = getelementptr inbounds %struct.Key, ptr %9, i64 0, i32 10
  %51 = load i16, ptr %50, align 2, !tbaa !70
  %52 = add i16 %51, -1
  store i16 %52, ptr %50, align 2, !tbaa !70
  %53 = getelementptr inbounds %struct.Key, ptr %9, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !71
  %55 = icmp eq ptr %54, %30
  br i1 %55, label %56, label %72

56:                                               ; preds = %49
  %57 = load ptr, ptr %25, align 8, !tbaa !72
  store ptr %57, ptr %53, align 8, !tbaa !71
  %58 = icmp eq ptr %57, null
  br i1 %58, label %72, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 3
  %61 = load i16, ptr %60, align 8, !tbaa !73
  switch i16 %61, label %72 [
    i16 1, label %62
    i16 2, label %65
    i16 3, label %65
    i16 22, label %69
  ]

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %64 = load ptr, ptr %63, align 8, !tbaa !48
  tail call void @BKE_key_convert_to_mesh(ptr noundef nonnull %57, ptr noundef %64) #3
  br label %72

65:                                               ; preds = %59, %59
  %66 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %67 = load ptr, ptr %66, align 8, !tbaa !48
  %68 = tail call ptr @BKE_curve_nurbs_get(ptr noundef %67) #3
  tail call void @BKE_key_convert_to_curve(ptr noundef nonnull %57, ptr noundef %67, ptr noundef %68) #3
  br label %72

69:                                               ; preds = %59
  %70 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %71 = load ptr, ptr %70, align 8, !tbaa !48
  tail call void @BKE_key_convert_to_lattice(ptr noundef nonnull %57, ptr noundef %71) #3
  br label %72

72:                                               ; preds = %69, %65, %62, %59, %56, %49
  %73 = getelementptr inbounds %struct.KeyBlock, ptr %30, i64 0, i32 10
  %74 = load ptr, ptr %73, align 8, !tbaa !74
  %75 = icmp eq ptr %74, null
  br i1 %75, label %78, label %76

76:                                               ; preds = %72
  %77 = load ptr, ptr @MEM_freeN, align 8, !tbaa !64
  tail call void %77(ptr noundef nonnull %74) #3
  br label %78

78:                                               ; preds = %76, %72
  %79 = load ptr, ptr @MEM_freeN, align 8, !tbaa !64
  tail call void %79(ptr noundef nonnull %30) #3
  %80 = load i16, ptr %26, align 2, !tbaa !60
  %81 = icmp sgt i16 %80, 1
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = add nsw i16 %80, -1
  store i16 %83, ptr %26, align 2, !tbaa !60
  br label %84

84:                                               ; preds = %82, %78, %24
  %85 = getelementptr inbounds %struct.Key, ptr %9, i64 0, i32 10
  %86 = load i16, ptr %85, align 2, !tbaa !70
  %87 = icmp eq i16 %86, 0
  br i1 %87, label %88, label %102

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.Key, ptr %9, i64 0, i32 8
  %90 = load ptr, ptr %89, align 8, !tbaa !61
  %91 = getelementptr inbounds %struct.ID, ptr %90, i64 0, i32 4
  %92 = load i16, ptr %91, align 8, !tbaa !63
  switch i16 %92, label %101 [
    i16 17741, label %93
    i16 21827, label %95
    i16 21580, label %97
  ]

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.Mesh, ptr %90, i64 0, i32 4
  br label %99

95:                                               ; preds = %88
  %96 = getelementptr inbounds %struct.Curve, ptr %90, i64 0, i32 9
  br label %99

97:                                               ; preds = %88
  %98 = getelementptr inbounds %struct.Lattice, ptr %90, i64 0, i32 23
  br label %99

99:                                               ; preds = %97, %95, %93, %21, %19, %17
  %100 = phi ptr [ %22, %21 ], [ %20, %19 ], [ %18, %17 ], [ %98, %97 ], [ %96, %95 ], [ %94, %93 ]
  store ptr null, ptr %100, align 8, !tbaa !64
  br label %101

101:                                              ; preds = %99, %88, %12
  tail call void @BKE_libblock_free_us(ptr noundef %3, ptr noundef nonnull %9) #3
  br label %102

102:                                              ; preds = %101, %84
  tail call void @DAG_id_tag_update(ptr noundef %4, i16 noundef signext 2) #3
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %4) #3
  br label %103

103:                                              ; preds = %11, %23, %102
  %104 = phi i32 [ 4, %102 ], [ 2, %23 ], [ 2, %11 ]
  ret i32 %104
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_shape_key_clear(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  store ptr @.str.12, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.13, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.14, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @shape_key_poll, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @shape_key_clear_exec, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @shape_key_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @ED_object_context(ptr noundef %0) #3
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  br i1 %3, label %20, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !55
  %12 = icmp eq ptr %11, null
  %13 = icmp ne ptr %8, null
  %14 = select i1 %12, i1 %13, i1 false
  br i1 %14, label %15, label %20

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !56
  %18 = icmp eq ptr %17, null
  %19 = zext i1 %18 to i32
  br label %20

20:                                               ; preds = %15, %9, %7
  %21 = phi i32 [ 0, %9 ], [ 0, %7 ], [ %19, %15 ]
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @shape_key_clear_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @ED_object_context(ptr noundef %0) #3
  %4 = tail call ptr @BKE_key_from_object(ptr noundef %3) #3
  %5 = tail call ptr @BKE_keyblock_from_object(ptr noundef %3) #3
  %6 = icmp ne ptr %4, null
  %7 = icmp ne ptr %5, null
  %8 = select i1 %6, i1 %7, i1 false
  br i1 %8, label %9, label %19

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Key, ptr %4, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !64
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %9, %13
  %14 = phi ptr [ %16, %13 ], [ %11, %9 ]
  %15 = getelementptr inbounds %struct.KeyBlock, ptr %14, i64 0, i32 3
  store float 0.000000e+00, ptr %15, align 4, !tbaa !75
  %16 = load ptr, ptr %14, align 8, !tbaa !64
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %13, !llvm.loop !76

18:                                               ; preds = %13, %9
  tail call void @DAG_id_tag_update(ptr noundef %3, i16 noundef signext 2) #3
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %3) #3
  br label %19

19:                                               ; preds = %2, %18
  %20 = phi i32 [ 4, %18 ], [ 2, %2 ]
  ret i32 %20
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_shape_key_retime(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  store ptr @.str.15, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.16, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.17, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @shape_key_poll, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @shape_key_retime_exec, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @shape_key_retime_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @ED_object_context(ptr noundef %0) #3
  %4 = tail call ptr @BKE_key_from_object(ptr noundef %3) #3
  %5 = tail call ptr @BKE_keyblock_from_object(ptr noundef %3) #3
  %6 = icmp ne ptr %4, null
  %7 = icmp ne ptr %5, null
  %8 = select i1 %6, i1 %7, i1 false
  br i1 %8, label %9, label %21

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Key, ptr %4, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !64
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %9, %13
  %14 = phi ptr [ %18, %13 ], [ %11, %9 ]
  %15 = phi float [ %16, %13 ], [ 0.000000e+00, %9 ]
  %16 = fadd float %15, 0x3FB99999A0000000
  %17 = getelementptr inbounds %struct.KeyBlock, ptr %14, i64 0, i32 2
  store float %16, ptr %17, align 8, !tbaa !77
  %18 = load ptr, ptr %14, align 8, !tbaa !64
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %13, !llvm.loop !78

20:                                               ; preds = %13, %9
  tail call void @DAG_id_tag_update(ptr noundef %3, i16 noundef signext 2) #3
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %3) #3
  br label %21

21:                                               ; preds = %2, %20
  %22 = phi i32 [ 4, %20 ], [ 2, %2 ]
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_shape_key_mirror(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.18, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.19, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.20, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @shape_key_mode_poll, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @shape_key_mirror_exec, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.21, i32 noundef 0, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #3
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @shape_key_mirror_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @ED_object_context(ptr noundef %0) #3
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !58
  %6 = tail call i32 @RNA_boolean_get(ptr noundef %5, ptr noundef nonnull @.str.21) #3
  %7 = trunc i32 %6 to i8
  %8 = tail call ptr @BKE_key_from_object(ptr noundef %3) #3
  %9 = icmp eq ptr %8, null
  br i1 %9, label %189, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.Key, ptr %8, i64 0, i32 6
  %12 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 115
  %13 = load i16, ptr %12, align 2, !tbaa !60
  %14 = sext i16 %13 to i32
  %15 = add nsw i32 %14, -1
  %16 = tail call ptr @BLI_findlink(ptr noundef nonnull %11, i32 noundef %15) #3
  %17 = icmp eq ptr %16, null
  br i1 %17, label %186, label %18

18:                                               ; preds = %10
  %19 = load ptr, ptr @MEM_callocN, align 8, !tbaa !64
  %20 = getelementptr inbounds %struct.KeyBlock, ptr %16, i64 0, i32 8
  %21 = load i32, ptr %20, align 8, !tbaa !79
  %22 = sext i32 %21 to i64
  %23 = tail call ptr %19(i64 noundef %22, ptr noundef nonnull @.str.40) #3
  %24 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %25 = load i16, ptr %24, align 8, !tbaa !73
  switch i16 %25, label %182 [
    i16 1, label %26
    i16 22, label %102
  ]

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %28 = load ptr, ptr %27, align 8, !tbaa !48
  %29 = tail call i32 @ED_mesh_mirror_spatial_table(ptr noundef %3, ptr noundef null, ptr noundef null, i8 noundef zeroext 115) #3
  %30 = getelementptr inbounds %struct.Mesh, ptr %28, i64 0, i32 26
  %31 = load i32, ptr %30, align 8, !tbaa !80
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %98

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.KeyBlock, ptr %16, i64 0, i32 10
  %35 = getelementptr inbounds %struct.KeyBlock, ptr %16, i64 0, i32 10
  br label %36

36:                                               ; preds = %33, %91
  %37 = phi i64 [ 0, %33 ], [ %94, %91 ]
  %38 = phi i32 [ 0, %33 ], [ %93, %91 ]
  %39 = phi i32 [ 0, %33 ], [ %92, %91 ]
  %40 = trunc i64 %37 to i32
  %41 = tail call i32 @mesh_get_x_mirror_vert(ptr noundef %3, i32 noundef %40, i8 noundef zeroext %7) #3
  %42 = zext i32 %41 to i64
  %43 = icmp eq i64 %37, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %36
  %45 = load ptr, ptr %35, align 8, !tbaa !74
  %46 = mul nuw nsw i64 %37, 3
  %47 = getelementptr inbounds float, ptr %45, i64 %46
  %48 = load float, ptr %47, align 4, !tbaa !83
  %49 = fneg float %48
  store float %49, ptr %47, align 4, !tbaa !83
  %50 = getelementptr inbounds i8, ptr %23, i64 %37
  store i8 1, ptr %50, align 1, !tbaa !84
  %51 = add nsw i32 %38, 1
  br label %91

52:                                               ; preds = %36
  %53 = icmp eq i32 %41, -1
  br i1 %53, label %89, label %54

54:                                               ; preds = %52
  %55 = getelementptr inbounds i8, ptr %23, i64 %37
  %56 = load i8, ptr %55, align 1, !tbaa !84
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %85

58:                                               ; preds = %54
  %59 = sext i32 %41 to i64
  %60 = getelementptr inbounds i8, ptr %23, i64 %59
  %61 = load i8, ptr %60, align 1, !tbaa !84
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %85

63:                                               ; preds = %58
  %64 = load ptr, ptr %34, align 8, !tbaa !74
  %65 = mul nuw nsw i64 %37, 3
  %66 = getelementptr inbounds float, ptr %64, i64 %65
  %67 = mul nsw i32 %41, 3
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds float, ptr %64, i64 %68
  %70 = load float, ptr %66, align 4, !tbaa !83
  %71 = getelementptr inbounds float, ptr %66, i64 1
  %72 = load float, ptr %71, align 4, !tbaa !83
  %73 = getelementptr inbounds float, ptr %66, i64 2
  %74 = load float, ptr %73, align 4, !tbaa !83
  %75 = load float, ptr %69, align 4, !tbaa !83
  store float %75, ptr %66, align 4, !tbaa !83
  %76 = getelementptr inbounds float, ptr %69, i64 1
  %77 = load float, ptr %76, align 4, !tbaa !83
  store float %77, ptr %71, align 4, !tbaa !83
  %78 = getelementptr inbounds float, ptr %69, i64 2
  %79 = load float, ptr %78, align 4, !tbaa !83
  store float %79, ptr %73, align 4, !tbaa !83
  store float %70, ptr %69, align 4, !tbaa !83
  store float %72, ptr %76, align 4, !tbaa !83
  store float %74, ptr %78, align 4, !tbaa !83
  %80 = load float, ptr %66, align 4, !tbaa !83
  %81 = fneg float %80
  store float %81, ptr %66, align 4, !tbaa !83
  %82 = load float, ptr %69, align 4, !tbaa !83
  %83 = fneg float %82
  store float %83, ptr %69, align 4, !tbaa !83
  %84 = add nsw i32 %38, 1
  br label %85

85:                                               ; preds = %63, %58, %54
  %86 = phi i32 [ %84, %63 ], [ %38, %58 ], [ %38, %54 ]
  %87 = sext i32 %41 to i64
  %88 = getelementptr inbounds i8, ptr %23, i64 %87
  store i8 1, ptr %88, align 1, !tbaa !84
  store i8 1, ptr %55, align 1, !tbaa !84
  br label %91

89:                                               ; preds = %52
  %90 = add nsw i32 %39, 1
  br label %91

91:                                               ; preds = %89, %85, %44
  %92 = phi i32 [ %39, %44 ], [ %39, %85 ], [ %90, %89 ]
  %93 = phi i32 [ %51, %44 ], [ %86, %85 ], [ %38, %89 ]
  %94 = add nuw nsw i64 %37, 1
  %95 = load i32, ptr %30, align 8, !tbaa !80
  %96 = sext i32 %95 to i64
  %97 = icmp slt i64 %94, %96
  br i1 %97, label %36, label %98, !llvm.loop !85

98:                                               ; preds = %91, %26
  %99 = phi i32 [ 0, %26 ], [ %92, %91 ]
  %100 = phi i32 [ 0, %26 ], [ %93, %91 ]
  %101 = tail call i32 @ED_mesh_mirror_spatial_table(ptr noundef %3, ptr noundef null, ptr noundef null, i8 noundef zeroext 101) #3
  br label %182

102:                                              ; preds = %18
  %103 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %104 = load ptr, ptr %103, align 8, !tbaa !48
  %105 = getelementptr inbounds %struct.Lattice, ptr %104, i64 0, i32 2
  %106 = load i16, ptr %105, align 8, !tbaa !86
  %107 = sext i16 %106 to i32
  %108 = sdiv i32 %107, 2
  %109 = srem i32 %107, 2
  %110 = add nsw i32 %108, %109
  %111 = getelementptr inbounds %struct.Lattice, ptr %104, i64 0, i32 4
  %112 = load i16, ptr %111, align 4, !tbaa !88
  %113 = icmp sgt i16 %112, 0
  br i1 %113, label %114, label %182

114:                                              ; preds = %102
  %115 = getelementptr inbounds %struct.Lattice, ptr %104, i64 0, i32 3
  %116 = icmp sgt i32 %110, 0
  %117 = getelementptr inbounds %struct.KeyBlock, ptr %16, i64 0, i32 10
  %118 = getelementptr inbounds %struct.KeyBlock, ptr %16, i64 0, i32 10
  %119 = add nsw i32 %109, %108
  br label %120

120:                                              ; preds = %114, %176
  %121 = phi i32 [ 0, %114 ], [ %177, %176 ]
  %122 = phi i32 [ 0, %114 ], [ %178, %176 ]
  %123 = load i16, ptr %115, align 2, !tbaa !89
  %124 = icmp sgt i16 %123, 0
  br i1 %124, label %125, label %176

125:                                              ; preds = %120, %170
  %126 = phi i32 [ %171, %170 ], [ %121, %120 ]
  %127 = phi i32 [ %172, %170 ], [ 0, %120 ]
  br i1 %116, label %128, label %170

128:                                              ; preds = %125, %162
  %129 = phi i32 [ %166, %162 ], [ 0, %125 ]
  %130 = load i16, ptr %105, align 8, !tbaa !86
  %131 = sext i16 %130 to i32
  %132 = xor i32 %129, -1
  %133 = add i32 %131, %132
  %134 = icmp eq i32 %129, %133
  %135 = tail call i32 @BKE_lattice_index_from_uvw(ptr noundef %104, i32 noundef %129, i32 noundef %127, i32 noundef %122) #3
  br i1 %134, label %136, label %141

136:                                              ; preds = %128
  %137 = load ptr, ptr %118, align 8, !tbaa !74
  %138 = mul nsw i32 %135, 3
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds float, ptr %137, i64 %139
  br label %162

141:                                              ; preds = %128
  %142 = tail call i32 @BKE_lattice_index_from_uvw(ptr noundef %104, i32 noundef %133, i32 noundef %127, i32 noundef %122) #3
  %143 = load ptr, ptr %117, align 8, !tbaa !74
  %144 = mul nsw i32 %135, 3
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds float, ptr %143, i64 %145
  %147 = mul nsw i32 %142, 3
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds float, ptr %143, i64 %148
  %150 = load float, ptr %146, align 4, !tbaa !83
  %151 = getelementptr inbounds float, ptr %146, i64 1
  %152 = load float, ptr %151, align 4, !tbaa !83
  %153 = getelementptr inbounds float, ptr %146, i64 2
  %154 = load float, ptr %153, align 4, !tbaa !83
  %155 = load float, ptr %149, align 4, !tbaa !83
  store float %155, ptr %146, align 4, !tbaa !83
  %156 = getelementptr inbounds float, ptr %149, i64 1
  %157 = load float, ptr %156, align 4, !tbaa !83
  store float %157, ptr %151, align 4, !tbaa !83
  %158 = getelementptr inbounds float, ptr %149, i64 2
  %159 = load float, ptr %158, align 4, !tbaa !83
  store float %159, ptr %153, align 4, !tbaa !83
  store float %150, ptr %149, align 4, !tbaa !83
  store float %152, ptr %156, align 4, !tbaa !83
  store float %154, ptr %158, align 4, !tbaa !83
  %160 = load float, ptr %146, align 4, !tbaa !83
  %161 = fneg float %160
  store float %161, ptr %146, align 4, !tbaa !83
  br label %162

162:                                              ; preds = %141, %136
  %163 = phi ptr [ %149, %141 ], [ %140, %136 ]
  %164 = load float, ptr %163, align 4, !tbaa !83
  %165 = fneg float %164
  store float %165, ptr %163, align 4, !tbaa !83
  %166 = add nuw nsw i32 %129, 1
  %167 = icmp eq i32 %166, %110
  br i1 %167, label %168, label %128, !llvm.loop !90

168:                                              ; preds = %162
  %169 = add i32 %119, %126
  br label %170

170:                                              ; preds = %168, %125
  %171 = phi i32 [ %126, %125 ], [ %169, %168 ]
  %172 = add nuw nsw i32 %127, 1
  %173 = load i16, ptr %115, align 2, !tbaa !89
  %174 = sext i16 %173 to i32
  %175 = icmp slt i32 %172, %174
  br i1 %175, label %125, label %176, !llvm.loop !91

176:                                              ; preds = %170, %120
  %177 = phi i32 [ %121, %120 ], [ %171, %170 ]
  %178 = add nuw nsw i32 %122, 1
  %179 = load i16, ptr %111, align 4, !tbaa !88
  %180 = sext i16 %179 to i32
  %181 = icmp slt i32 %178, %180
  br i1 %181, label %120, label %182, !llvm.loop !92

182:                                              ; preds = %176, %102, %98, %18
  %183 = phi i32 [ %99, %98 ], [ 0, %18 ], [ 0, %102 ], [ 0, %176 ]
  %184 = phi i32 [ %100, %98 ], [ 0, %18 ], [ 0, %102 ], [ %177, %176 ]
  %185 = load ptr, ptr @MEM_freeN, align 8, !tbaa !64
  tail call void %185(ptr noundef %23) #3
  br label %186

186:                                              ; preds = %182, %10
  %187 = phi i32 [ %183, %182 ], [ 0, %10 ]
  %188 = phi i32 [ %184, %182 ], [ 0, %10 ]
  tail call void @DAG_id_tag_update(ptr noundef %3, i16 noundef signext 2) #3
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %3) #3
  br label %189

189:                                              ; preds = %2, %186
  %190 = phi i32 [ 0, %2 ], [ %188, %186 ]
  %191 = phi i32 [ 0, %2 ], [ %187, %186 ]
  br i1 %9, label %193, label %192

192:                                              ; preds = %189
  tail call void @ED_mesh_report_mirror(ptr noundef %1, i32 noundef %190, i32 noundef %191) #3
  br label %193

193:                                              ; preds = %189, %192
  %194 = phi i32 [ 4, %192 ], [ 2, %189 ]
  ret i32 %194
}

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_shape_key_move(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.35, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.36, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.37, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @shape_key_move_poll, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @shape_key_move_exec, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.38, ptr noundef nonnull @OBJECT_OT_shape_key_move.slot_move, i32 noundef 0, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.29) #3
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @shape_key_move_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @ED_object_context(ptr noundef %0) #3
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  %9 = tail call ptr @BKE_key_from_object(ptr noundef %2) #3
  br i1 %3, label %31, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !55
  %13 = icmp eq ptr %12, null
  %14 = icmp ne ptr %8, null
  %15 = select i1 %13, i1 %14, i1 false
  br i1 %15, label %16, label %31

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !56
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %31

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 27
  %22 = load i32, ptr %21, align 8, !tbaa !57
  %23 = icmp ne i32 %22, 1
  %24 = icmp ne ptr %9, null
  %25 = select i1 %23, i1 %24, i1 false
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.Key, ptr %9, i64 0, i32 10
  %28 = load i16, ptr %27, align 2, !tbaa !70
  %29 = icmp sgt i16 %28, 1
  %30 = zext i1 %29 to i32
  br label %31

31:                                               ; preds = %26, %20, %16, %10, %7
  %32 = phi i32 [ 0, %20 ], [ 0, %16 ], [ 0, %10 ], [ 0, %7 ], [ %30, %26 ]
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @shape_key_move_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @ED_object_context(ptr noundef %0) #3
  %4 = tail call ptr @BKE_key_from_object(ptr noundef %3) #3
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !58
  %7 = tail call i32 @RNA_enum_get(ptr noundef %6, ptr noundef nonnull @.str.38) #3
  %8 = getelementptr inbounds %struct.Key, ptr %4, i64 0, i32 10
  %9 = load i16, ptr %8, align 2, !tbaa !70
  %10 = sext i16 %9 to i32
  %11 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 115
  %12 = load i16, ptr %11, align 2, !tbaa !60
  %13 = sext i16 %12 to i32
  %14 = add nsw i32 %13, -1
  switch i32 %7, label %24 [
    i32 -2, label %15
    i32 2, label %22
  ]

15:                                               ; preds = %2
  %16 = icmp ult i32 %14, 2
  br i1 %16, label %28, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.Key, ptr %4, i64 0, i32 9
  %19 = load i16, ptr %18, align 8, !tbaa !93
  %20 = icmp ne i16 %19, 0
  %21 = zext i1 %20 to i32
  br label %28

22:                                               ; preds = %2
  %23 = add nsw i32 %10, -1
  br label %28

24:                                               ; preds = %2
  %25 = add i32 %7, %10
  %26 = add i32 %25, %14
  %27 = srem i32 %26, %10
  br label %28

28:                                               ; preds = %15, %17, %24, %22
  %29 = phi i32 [ %27, %24 ], [ %23, %22 ], [ 0, %15 ], [ %21, %17 ]
  %30 = tail call zeroext i8 @BKE_keyblock_move(ptr noundef %3, i32 noundef %14, i32 noundef %29) #3
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  tail call void @DAG_id_tag_update(ptr noundef %3, i16 noundef signext 2) #3
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %3) #3
  br label %33

33:                                               ; preds = %28, %32
  %34 = phi i32 [ 4, %32 ], [ 2, %28 ]
  ret i32 %34
}

declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @ED_object_context(ptr noundef) local_unnamed_addr #1

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #1

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BKE_object_insert_shape_key(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare ptr @BKE_key_from_object(ptr noundef) local_unnamed_addr #1

declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BKE_keyblock_from_object(ptr noundef) local_unnamed_addr #1

declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #1

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #1

declare void @BKE_libblock_free_us(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BKE_key_convert_to_mesh(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BKE_key_convert_to_curve(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BKE_curve_nurbs_get(ptr noundef) local_unnamed_addr #1

declare void @BKE_key_convert_to_lattice(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ED_mesh_report_mirror(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ED_mesh_mirror_spatial_table(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare i32 @mesh_get_x_mirror_vert(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

declare i32 @BKE_lattice_index_from_uvw(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @BKE_keyblock_move(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
!42 = !{!35, !36, i64 8}
!43 = !{!35, !36, i64 24}
!44 = !{!35, !36, i64 72}
!45 = !{!35, !36, i64 32}
!46 = !{!35, !41, i64 184}
!47 = !{!35, !36, i64 88}
!48 = !{!49, !36, i64 296}
!49 = !{!"Object", !50, i64 0, !36, i64 120, !36, i64 128, !41, i64 136, !41, i64 138, !51, i64 140, !51, i64 144, !51, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !52, i64 312, !36, i64 360, !39, i64 368, !39, i64 384, !39, i64 400, !39, i64 416, !51, i64 432, !51, i64 436, !36, i64 440, !36, i64 448, !51, i64 456, !51, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !53, i64 616, !53, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !51, i64 944, !41, i64 948, !41, i64 950, !41, i64 952, !41, i64 954, !41, i64 956, !41, i64 958, !41, i64 960, !41, i64 962, !41, i64 964, !37, i64 966, !37, i64 967, !51, i64 968, !51, i64 972, !51, i64 976, !51, i64 980, !51, i64 984, !53, i64 988, !53, i64 992, !53, i64 996, !53, i64 1000, !53, i64 1004, !53, i64 1008, !53, i64 1012, !53, i64 1016, !53, i64 1020, !53, i64 1024, !53, i64 1028, !53, i64 1032, !41, i64 1036, !41, i64 1038, !41, i64 1040, !37, i64 1042, !37, i64 1043, !41, i64 1044, !37, i64 1046, !37, i64 1047, !53, i64 1048, !53, i64 1052, !39, i64 1056, !39, i64 1072, !39, i64 1088, !39, i64 1104, !53, i64 1120, !41, i64 1124, !41, i64 1126, !37, i64 1128, !51, i64 1144, !51, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !41, i64 1162, !37, i64 1164, !39, i64 1176, !39, i64 1192, !39, i64 1208, !39, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !41, i64 1266, !53, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !54, i64 1304, !54, i64 1312, !51, i64 1320, !51, i64 1324, !39, i64 1328, !39, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !39, i64 1400, !36, i64 1416}
!50 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !51, i64 100, !51, i64 104, !51, i64 108, !36, i64 112}
!51 = !{!"int", !37, i64 0}
!52 = !{!"bAnimVizSettings", !51, i64 0, !51, i64 4, !51, i64 8, !51, i64 12, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !51, i64 32, !51, i64 36, !51, i64 40, !51, i64 44}
!53 = !{!"float", !37, i64 0}
!54 = !{!"long", !37, i64 0}
!55 = !{!49, !36, i64 24}
!56 = !{!50, !36, i64 24}
!57 = !{!49, !51, i64 432}
!58 = !{!59, !36, i64 112}
!59 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!60 = !{!49, !41, i64 1266}
!61 = !{!62, !36, i64 200}
!62 = !{!"Key", !50, i64 0, !36, i64 120, !36, i64 128, !37, i64 136, !51, i64 168, !51, i64 172, !39, i64 176, !36, i64 192, !36, i64 200, !41, i64 208, !41, i64 210, !41, i64 212, !41, i64 214, !53, i64 216, !51, i64 220}
!63 = !{!41, !41, i64 0}
!64 = !{!36, !36, i64 0}
!65 = !{!66, !41, i64 28}
!66 = !{!"KeyBlock", !36, i64 0, !36, i64 8, !53, i64 16, !53, i64 20, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !51, i64 32, !51, i64 36, !36, i64 40, !37, i64 48, !37, i64 112, !53, i64 176, !53, i64 180}
!67 = distinct !{!67, !68, !69}
!68 = !{!"llvm.loop.mustprogress"}
!69 = !{!"llvm.loop.unroll.disable"}
!70 = !{!62, !41, i64 210}
!71 = !{!62, !36, i64 128}
!72 = !{!62, !36, i64 176}
!73 = !{!49, !41, i64 136}
!74 = !{!66, !36, i64 40}
!75 = !{!66, !53, i64 20}
!76 = distinct !{!76, !68, !69}
!77 = !{!66, !53, i64 16}
!78 = distinct !{!78, !68, !69}
!79 = !{!66, !51, i64 32}
!80 = !{!81, !51, i64 1280}
!81 = !{!"Mesh", !50, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !82, i64 280, !82, i64 480, !82, i64 680, !82, i64 880, !82, i64 1080, !51, i64 1280, !51, i64 1284, !51, i64 1288, !51, i64 1292, !51, i64 1296, !51, i64 1300, !51, i64 1304, !37, i64 1308, !37, i64 1320, !37, i64 1332, !51, i64 1344, !41, i64 1348, !41, i64 1350, !53, i64 1352, !51, i64 1356, !37, i64 1360, !37, i64 1361, !37, i64 1362, !37, i64 1363, !37, i64 1364, !37, i64 1365, !41, i64 1366, !36, i64 1368}
!82 = !{!"CustomData", !36, i64 0, !37, i64 8, !51, i64 172, !51, i64 176, !51, i64 180, !36, i64 184, !36, i64 192}
!83 = !{!53, !53, i64 0}
!84 = !{!37, !37, i64 0}
!85 = distinct !{!85, !68, !69}
!86 = !{!87, !41, i64 128}
!87 = !{!"Lattice", !50, i64 0, !36, i64 120, !41, i64 128, !41, i64 130, !41, i64 132, !41, i64 134, !41, i64 136, !41, i64 138, !41, i64 140, !41, i64 142, !37, i64 144, !37, i64 145, !37, i64 146, !37, i64 147, !51, i64 148, !53, i64 152, !53, i64 156, !53, i64 160, !53, i64 164, !53, i64 168, !53, i64 172, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !37, i64 208, !36, i64 272}
!88 = !{!87, !41, i64 132}
!89 = !{!87, !41, i64 130}
!90 = distinct !{!90, !68, !69}
!91 = distinct !{!91, !68, !69}
!92 = distinct !{!92, !68, !69}
!93 = !{!62, !41, i64 208}
