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
%struct.KeyBlock = type { ptr, ptr, float, float, i16, i16, i16, i16, i32, i32, ptr, [64 x i8], [64 x i8], float, float }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.Curve = type { %struct.ID, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], i16, i16, i16, i16, float, float, i32, i16, i16, i32, float, float, float, i16, i16, i16, i16, i32, i32, [4 x i8], i16, i8, i8, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i32, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.CharInfo, float, float, float, i8, i8, [2 x i8] }
%struct.CharInfo = type { i16, i16, i8, i8, i16 }
%struct.Lattice = type { %struct.ID, ptr, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i32, float, float, float, float, float, float, ptr, ptr, ptr, ptr, [64 x i8], ptr }

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

; Function Attrs: noinline nounwind optsize uwtable
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
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.3, i32 noundef 1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @shape_key_mode_poll(ptr noundef %0) #0 !PGOFuncName !48 {
  %2 = tail call ptr @ED_object_context(ptr noundef %0) #5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %21, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  %7 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !56
  %9 = icmp eq ptr %8, null
  %10 = icmp ne ptr %6, null
  %11 = select i1 %9, i1 %10, i1 false
  br i1 %11, label %12, label %21

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.ID, ptr %6, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !57
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 27
  %18 = load i32, ptr %17, align 8, !tbaa !58
  %19 = icmp ne i32 %18, 1
  %20 = zext i1 %19 to i32
  br label %21

21:                                               ; preds = %1, %16, %12, %4
  %22 = phi i32 [ 0, %12 ], [ 0, %4 ], [ %20, %16 ], [ 0, %1 ]
  ret i32 %22
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @shape_key_add_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !59 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #5
  %4 = tail call ptr @ED_object_context(ptr noundef %0) #5
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !60
  %7 = tail call i32 @RNA_boolean_get(ptr noundef %6, ptr noundef nonnull @.str.3) #5
  %8 = trunc i32 %7 to i8
  tail call fastcc void @ED_object_shape_key_add(ptr noundef %0, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %8) #6
  ret i32 4
}

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
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
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.9, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @shape_key_mode_exists_poll(ptr noundef %0) #0 !PGOFuncName !62 {
  %2 = tail call ptr @ED_object_context(ptr noundef %0) #5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %24, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  %7 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !56
  %9 = icmp eq ptr %8, null
  %10 = icmp ne ptr %6, null
  %11 = select i1 %9, i1 %10, i1 false
  br i1 %11, label %12, label %24

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.ID, ptr %6, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !57
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 27
  %18 = load i32, ptr %17, align 8, !tbaa !58
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = tail call ptr @BKE_keyblock_from_object(ptr noundef nonnull %2) #5
  %22 = icmp ne ptr %21, null
  %23 = zext i1 %22 to i32
  br label %24

24:                                               ; preds = %1, %20, %16, %12, %4
  %25 = phi i32 [ 0, %16 ], [ 0, %12 ], [ 0, %4 ], [ %23, %20 ], [ 0, %1 ]
  ret i32 %25
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @shape_key_remove_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !63 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #5
  %4 = tail call ptr @ED_object_context(ptr noundef %0) #5
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !60
  %7 = tail call i32 @RNA_boolean_get(ptr noundef %6, ptr noundef nonnull @.str.9) #5
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = tail call fastcc zeroext i8 @ED_object_shape_key_remove_all(ptr noundef %3, ptr noundef %4) #6, !range !64
  br label %13

11:                                               ; preds = %2
  %12 = tail call fastcc zeroext i8 @ED_object_shape_key_remove(ptr noundef %3, ptr noundef %4) #6, !range !64
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i8 [ %10, %9 ], [ %12, %11 ]
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  tail call void @DAG_id_tag_update(ptr noundef %4, i16 noundef signext 2) #5
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %4) #5
  br label %17

17:                                               ; preds = %13, %16
  %18 = phi i32 [ 4, %16 ], [ 2, %13 ]
  ret i32 %18
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @shape_key_poll(ptr noundef %0) #0 !PGOFuncName !65 {
  %2 = tail call ptr @ED_object_context(ptr noundef %0) #5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %17, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  %7 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !56
  %9 = icmp eq ptr %8, null
  %10 = icmp ne ptr %6, null
  %11 = select i1 %9, i1 %10, i1 false
  br i1 %11, label %12, label %17

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.ID, ptr %6, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !57
  %15 = icmp eq ptr %14, null
  %16 = zext i1 %15 to i32
  br label %17

17:                                               ; preds = %1, %12, %4
  %18 = phi i32 [ 0, %4 ], [ %16, %12 ], [ 0, %1 ]
  ret i32 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @shape_key_clear_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !66 {
  %3 = tail call ptr @ED_object_context(ptr noundef %0) #5
  %4 = tail call ptr @BKE_key_from_object(ptr noundef %3) #5
  %5 = tail call ptr @BKE_keyblock_from_object(ptr noundef %3) #5
  %6 = icmp ne ptr %4, null
  %7 = icmp ne ptr %5, null
  %8 = select i1 %6, i1 %7, i1 false
  br i1 %8, label %9, label %19

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Key, ptr %4, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !67
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %9, %13
  %14 = phi ptr [ %16, %13 ], [ %11, %9 ]
  %15 = getelementptr inbounds %struct.KeyBlock, ptr %14, i64 0, i32 3
  store float 0.000000e+00, ptr %15, align 4, !tbaa !68
  %16 = load ptr, ptr %14, align 8, !tbaa !67
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %13, !llvm.loop !70

18:                                               ; preds = %13, %9
  tail call void @DAG_id_tag_update(ptr noundef %3, i16 noundef signext 2) #5
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %3) #5
  br label %19

19:                                               ; preds = %2, %18
  %20 = phi i32 [ 4, %18 ], [ 2, %2 ]
  ret i32 %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @shape_key_retime_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !72 {
  %3 = tail call ptr @ED_object_context(ptr noundef %0) #5
  %4 = tail call ptr @BKE_key_from_object(ptr noundef %3) #5
  %5 = tail call ptr @BKE_keyblock_from_object(ptr noundef %3) #5
  %6 = icmp ne ptr %4, null
  %7 = icmp ne ptr %5, null
  %8 = select i1 %6, i1 %7, i1 false
  br i1 %8, label %9, label %21

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Key, ptr %4, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !67
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %9, %13
  %14 = phi ptr [ %18, %13 ], [ %11, %9 ]
  %15 = phi float [ %16, %13 ], [ 0.000000e+00, %9 ]
  %16 = fadd float %15, 0x3FB99999A0000000
  %17 = getelementptr inbounds %struct.KeyBlock, ptr %14, i64 0, i32 2
  store float %16, ptr %17, align 8, !tbaa !73
  %18 = load ptr, ptr %14, align 8, !tbaa !67
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %13, !llvm.loop !74

20:                                               ; preds = %13, %9
  tail call void @DAG_id_tag_update(ptr noundef %3, i16 noundef signext 2) #5
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %3) #5
  br label %21

21:                                               ; preds = %2, %20
  %22 = phi i32 [ 4, %20 ], [ 2, %2 ]
  ret i32 %22
}

; Function Attrs: noinline nounwind optsize uwtable
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
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.21, i32 noundef 0, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @shape_key_mirror_exec(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !75 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = tail call ptr @ED_object_context(ptr noundef %0) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !tbaa !76
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !tbaa !76
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !60
  %8 = tail call i32 @RNA_boolean_get(ptr noundef %7, ptr noundef nonnull @.str.21) #5
  %9 = trunc i32 %8 to i8
  %10 = call fastcc zeroext i8 @object_shape_key_mirror(ptr noundef %0, ptr noundef %5, ptr noundef nonnull %3, ptr noundef nonnull %4, i8 noundef zeroext %9) #6, !range !64
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, ptr %3, align 4, !tbaa !76
  %14 = load i32, ptr %4, align 4, !tbaa !76
  tail call void @ED_mesh_report_mirror(ptr noundef nonnull %1, i32 noundef %13, i32 noundef %14) #5
  br label %15

15:                                               ; preds = %2, %12
  %16 = phi i32 [ 4, %12 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
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
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.38, ptr noundef nonnull @OBJECT_OT_shape_key_move.slot_move, i32 noundef 0, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.29) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @shape_key_move_poll(ptr noundef %0) #0 !PGOFuncName !77 {
  %2 = tail call ptr @ED_object_context(ptr noundef %0) #5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call ptr @BKE_key_from_object(ptr noundef null) #5
  br label %30

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !49
  %9 = tail call ptr @BKE_key_from_object(ptr noundef nonnull %2) #5
  %10 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !56
  %12 = icmp eq ptr %11, null
  %13 = icmp ne ptr %8, null
  %14 = select i1 %12, i1 %13, i1 false
  br i1 %14, label %15, label %30

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !57
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 27
  %21 = load i32, ptr %20, align 8, !tbaa !58
  %22 = icmp ne i32 %21, 1
  %23 = icmp ne ptr %9, null
  %24 = select i1 %22, i1 %23, i1 false
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.Key, ptr %9, i64 0, i32 10
  %27 = load i16, ptr %26, align 2, !tbaa !78
  %28 = icmp sgt i16 %27, 1
  %29 = zext i1 %28 to i32
  br label %30

30:                                               ; preds = %4, %25, %19, %15, %6
  %31 = phi i32 [ 0, %19 ], [ 0, %15 ], [ 0, %6 ], [ %29, %25 ], [ 0, %4 ]
  ret i32 %31
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @shape_key_move_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !80 {
  %3 = tail call ptr @ED_object_context(ptr noundef %0) #5
  %4 = tail call ptr @BKE_key_from_object(ptr noundef %3) #5
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !60
  %7 = tail call i32 @RNA_enum_get(ptr noundef %6, ptr noundef nonnull @.str.38) #5
  %8 = getelementptr inbounds %struct.Key, ptr %4, i64 0, i32 10
  %9 = load i16, ptr %8, align 2, !tbaa !78
  %10 = sext i16 %9 to i32
  %11 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 115
  %12 = load i16, ptr %11, align 2, !tbaa !81
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
  %19 = load i16, ptr %18, align 8, !tbaa !82
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
  %30 = tail call zeroext i8 @BKE_keyblock_move(ptr noundef nonnull %3, i32 noundef %14, i32 noundef %29) #5
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  tail call void @DAG_id_tag_update(ptr noundef nonnull %3, i16 noundef signext 2) #5
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef nonnull %3) #5
  br label %33

33:                                               ; preds = %28, %32
  %34 = phi i32 [ 4, %32 ], [ 2, %28 ]
  ret i32 %34
}

; Function Attrs: optsize
declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare ptr @ED_object_context(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ED_object_shape_key_add(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #0 !PGOFuncName !83 {
  %5 = tail call ptr @BKE_object_insert_shape_key(ptr noundef %1, ptr noundef %2, ptr noundef null, i8 noundef zeroext %3) #5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @BKE_key_from_object(ptr noundef %2) #5
  %9 = getelementptr inbounds %struct.Key, ptr %8, i64 0, i32 6
  %10 = tail call i32 @BLI_findindex(ptr noundef nonnull %9, ptr noundef nonnull %5) #5
  %11 = trunc i32 %10 to i16
  %12 = add i16 %11, 1
  %13 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 115
  store i16 %12, ptr %13, align 2, !tbaa !81
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %2) #5
  br label %14

14:                                               ; preds = %7, %4
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_object_insert_shape_key(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_key_from_object(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_keyblock_from_object(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ED_object_shape_key_remove_all(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !84 {
  %3 = tail call ptr @BKE_key_from_object(ptr noundef %1) #5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Key, ptr %3, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !85
  %8 = getelementptr inbounds %struct.ID, ptr %7, i64 0, i32 4
  %9 = load i16, ptr %8, align 8, !tbaa !86
  switch i16 %9, label %18 [
    i16 17741, label %10
    i16 21827, label %12
    i16 21580, label %14
  ]

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 4
  br label %16

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.Curve, ptr %7, i64 0, i32 9
  br label %16

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.Lattice, ptr %7, i64 0, i32 23
  br label %16

16:                                               ; preds = %10, %12, %14
  %17 = phi ptr [ %15, %14 ], [ %13, %12 ], [ %11, %10 ]
  store ptr null, ptr %17, align 8, !tbaa !67
  br label %18

18:                                               ; preds = %16, %5
  tail call void @BKE_libblock_free_us(ptr noundef %0, ptr noundef nonnull %3) #5
  br label %19

19:                                               ; preds = %2, %18
  %20 = phi i8 [ 1, %18 ], [ 0, %2 ]
  ret i8 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ED_object_shape_key_remove(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !87 {
  %3 = tail call ptr @BKE_key_from_object(ptr noundef %1) #5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %83, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Key, ptr %3, i64 0, i32 6
  %7 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 115
  %8 = load i16, ptr %7, align 2, !tbaa !81
  %9 = sext i16 %8 to i32
  %10 = add nsw i32 %9, -1
  %11 = tail call ptr @BLI_findlink(ptr noundef nonnull %6, i32 noundef %10) #5
  %12 = icmp eq ptr %11, null
  br i1 %12, label %65, label %13

13:                                               ; preds = %5
  %14 = load ptr, ptr %6, align 8, !tbaa !67
  %15 = icmp eq ptr %14, null
  br i1 %15, label %30, label %16

16:                                               ; preds = %13
  %17 = load i16, ptr %7, align 2, !tbaa !81
  %18 = sext i16 %17 to i32
  %19 = add nsw i32 %18, -1
  br label %20

20:                                               ; preds = %16, %27
  %21 = phi ptr [ %14, %16 ], [ %28, %27 ]
  %22 = getelementptr inbounds %struct.KeyBlock, ptr %21, i64 0, i32 6
  %23 = load i16, ptr %22, align 4, !tbaa !88
  %24 = sext i16 %23 to i32
  %25 = icmp eq i32 %19, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i16 0, ptr %22, align 4, !tbaa !88
  br label %27

27:                                               ; preds = %20, %26
  %28 = load ptr, ptr %21, align 8, !tbaa !67
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %20, !llvm.loop !89

30:                                               ; preds = %27, %13
  tail call void @BLI_remlink(ptr noundef nonnull %6, ptr noundef nonnull %11) #5
  %31 = getelementptr inbounds %struct.Key, ptr %3, i64 0, i32 10
  %32 = load i16, ptr %31, align 2, !tbaa !78
  %33 = add i16 %32, -1
  store i16 %33, ptr %31, align 2, !tbaa !78
  %34 = getelementptr inbounds %struct.Key, ptr %3, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !90
  %36 = icmp eq ptr %35, %11
  br i1 %36, label %37, label %53

37:                                               ; preds = %30
  %38 = load ptr, ptr %6, align 8, !tbaa !91
  store ptr %38, ptr %34, align 8, !tbaa !90
  %39 = icmp eq ptr %38, null
  br i1 %39, label %53, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %42 = load i16, ptr %41, align 8, !tbaa !92
  switch i16 %42, label %53 [
    i16 1, label %43
    i16 2, label %46
    i16 3, label %46
    i16 22, label %50
  ]

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %45 = load ptr, ptr %44, align 8, !tbaa !49
  tail call void @BKE_key_convert_to_mesh(ptr noundef nonnull %38, ptr noundef %45) #5
  br label %53

46:                                               ; preds = %40, %40
  %47 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %48 = load ptr, ptr %47, align 8, !tbaa !49
  %49 = tail call ptr @BKE_curve_nurbs_get(ptr noundef %48) #5
  tail call void @BKE_key_convert_to_curve(ptr noundef nonnull %38, ptr noundef %48, ptr noundef %49) #5
  br label %53

50:                                               ; preds = %40
  %51 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %52 = load ptr, ptr %51, align 8, !tbaa !49
  tail call void @BKE_key_convert_to_lattice(ptr noundef nonnull %38, ptr noundef %52) #5
  br label %53

53:                                               ; preds = %37, %40, %50, %46, %43, %30
  %54 = getelementptr inbounds %struct.KeyBlock, ptr %11, i64 0, i32 10
  %55 = load ptr, ptr %54, align 8, !tbaa !93
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %53
  %58 = load ptr, ptr @MEM_freeN, align 8, !tbaa !67
  tail call void %58(ptr noundef nonnull %55) #5
  br label %59

59:                                               ; preds = %57, %53
  %60 = load ptr, ptr @MEM_freeN, align 8, !tbaa !67
  tail call void %60(ptr noundef nonnull %11) #5
  %61 = load i16, ptr %7, align 2, !tbaa !81
  %62 = icmp sgt i16 %61, 1
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = add nsw i16 %61, -1
  store i16 %64, ptr %7, align 2, !tbaa !81
  br label %65

65:                                               ; preds = %59, %63, %5
  %66 = getelementptr inbounds %struct.Key, ptr %3, i64 0, i32 10
  %67 = load i16, ptr %66, align 2, !tbaa !78
  %68 = icmp eq i16 %67, 0
  br i1 %68, label %69, label %83

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.Key, ptr %3, i64 0, i32 8
  %71 = load ptr, ptr %70, align 8, !tbaa !85
  %72 = getelementptr inbounds %struct.ID, ptr %71, i64 0, i32 4
  %73 = load i16, ptr %72, align 8, !tbaa !86
  switch i16 %73, label %82 [
    i16 17741, label %74
    i16 21827, label %76
    i16 21580, label %78
  ]

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.Mesh, ptr %71, i64 0, i32 4
  br label %80

76:                                               ; preds = %69
  %77 = getelementptr inbounds %struct.Curve, ptr %71, i64 0, i32 9
  br label %80

78:                                               ; preds = %69
  %79 = getelementptr inbounds %struct.Lattice, ptr %71, i64 0, i32 23
  br label %80

80:                                               ; preds = %74, %76, %78
  %81 = phi ptr [ %79, %78 ], [ %77, %76 ], [ %75, %74 ]
  store ptr null, ptr %81, align 8, !tbaa !67
  br label %82

82:                                               ; preds = %80, %69
  tail call void @BKE_libblock_free_us(ptr noundef %0, ptr noundef nonnull %3) #5
  br label %83

83:                                               ; preds = %65, %82, %2
  %84 = phi i8 [ 0, %2 ], [ 1, %82 ], [ 1, %65 ]
  ret i8 %84
}

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_libblock_free_us(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_key_convert_to_mesh(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_key_convert_to_curve(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_curve_nurbs_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_key_convert_to_lattice(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @object_shape_key_mirror(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, i8 noundef zeroext %4) unnamed_addr #0 !PGOFuncName !94 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  store i32 0, ptr %3, align 4, !tbaa !76
  store i32 0, ptr %2, align 4, !tbaa !76
  %8 = tail call ptr @BKE_key_from_object(ptr noundef %1) #5
  %9 = icmp eq ptr %8, null
  br i1 %9, label %174, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.Key, ptr %8, i64 0, i32 6
  %12 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 115
  %13 = load i16, ptr %12, align 2, !tbaa !81
  %14 = sext i16 %13 to i32
  %15 = add nsw i32 %14, -1
  %16 = tail call ptr @BLI_findlink(ptr noundef nonnull %11, i32 noundef %15) #5
  %17 = icmp eq ptr %16, null
  br i1 %17, label %171, label %18

18:                                               ; preds = %10
  %19 = load ptr, ptr @MEM_callocN, align 8, !tbaa !67
  %20 = getelementptr inbounds %struct.KeyBlock, ptr %16, i64 0, i32 8
  %21 = load i32, ptr %20, align 8, !tbaa !95
  %22 = sext i32 %21 to i64
  %23 = tail call ptr %19(i64 noundef %22, ptr noundef nonnull @.str.40) #5
  %24 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %25 = load i16, ptr %24, align 8, !tbaa !92
  switch i16 %25, label %167 [
    i16 1, label %26
    i16 22, label %90
  ]

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %28 = load ptr, ptr %27, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #7
  %29 = tail call i32 @ED_mesh_mirror_spatial_table(ptr noundef nonnull %1, ptr noundef null, ptr noundef null, i8 noundef zeroext 115) #5
  %30 = getelementptr inbounds %struct.Mesh, ptr %28, i64 0, i32 26
  %31 = load i32, ptr %30, align 8, !tbaa !96
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %86

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.KeyBlock, ptr %16, i64 0, i32 10
  br label %35

35:                                               ; preds = %33, %79
  %36 = phi i64 [ 0, %33 ], [ %82, %79 ]
  %37 = phi i32 [ 0, %33 ], [ %81, %79 ]
  %38 = phi i32 [ 0, %33 ], [ %80, %79 ]
  %39 = trunc i64 %36 to i32
  %40 = tail call i32 @mesh_get_x_mirror_vert(ptr noundef %1, i32 noundef %39, i8 noundef zeroext %4) #5
  %41 = zext i32 %40 to i64
  %42 = icmp eq i64 %36, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %35
  %44 = load ptr, ptr %34, align 8, !tbaa !93
  %45 = mul nuw nsw i64 %36, 3
  %46 = getelementptr inbounds float, ptr %44, i64 %45
  %47 = load float, ptr %46, align 4, !tbaa !99
  %48 = fneg float %47
  store float %48, ptr %46, align 4, !tbaa !99
  %49 = getelementptr inbounds i8, ptr %23, i64 %36
  store i8 1, ptr %49, align 1, !tbaa !100
  %50 = add nsw i32 %37, 1
  br label %79

51:                                               ; preds = %35
  %52 = icmp eq i32 %40, -1
  br i1 %52, label %77, label %53

53:                                               ; preds = %51
  %54 = getelementptr inbounds i8, ptr %23, i64 %36
  %55 = load i8, ptr %54, align 1, !tbaa !100
  %56 = icmp eq i8 %55, 0
  %57 = sext i32 %40 to i64
  br i1 %56, label %58, label %74

58:                                               ; preds = %53
  %59 = getelementptr inbounds i8, ptr %23, i64 %57
  %60 = load i8, ptr %59, align 1, !tbaa !100
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %58
  %63 = load ptr, ptr %34, align 8, !tbaa !93
  %64 = mul nuw nsw i64 %36, 3
  %65 = getelementptr inbounds float, ptr %63, i64 %64
  %66 = mul nsw i32 %40, 3
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds float, ptr %63, i64 %67
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef %65) #6
  tail call fastcc void @copy_v3_v3(ptr noundef %65, ptr noundef %68) #6
  call fastcc void @copy_v3_v3(ptr noundef %68, ptr noundef nonnull %6) #6
  %69 = load float, ptr %65, align 4, !tbaa !99
  %70 = fneg float %69
  store float %70, ptr %65, align 4, !tbaa !99
  %71 = load float, ptr %68, align 4, !tbaa !99
  %72 = fneg float %71
  store float %72, ptr %68, align 4, !tbaa !99
  %73 = add nsw i32 %37, 1
  br label %74

74:                                               ; preds = %53, %62, %58
  %75 = phi i32 [ %73, %62 ], [ %37, %58 ], [ %37, %53 ]
  %76 = getelementptr inbounds i8, ptr %23, i64 %57
  store i8 1, ptr %76, align 1, !tbaa !100
  store i8 1, ptr %54, align 1, !tbaa !100
  br label %79

77:                                               ; preds = %51
  %78 = add nsw i32 %38, 1
  br label %79

79:                                               ; preds = %43, %77, %74
  %80 = phi i32 [ %38, %43 ], [ %38, %74 ], [ %78, %77 ]
  %81 = phi i32 [ %50, %43 ], [ %75, %74 ], [ %37, %77 ]
  %82 = add nuw nsw i64 %36, 1
  %83 = load i32, ptr %30, align 8, !tbaa !96
  %84 = sext i32 %83 to i64
  %85 = icmp slt i64 %82, %84
  br i1 %85, label %35, label %86, !llvm.loop !101

86:                                               ; preds = %79, %26
  %87 = phi i32 [ 0, %26 ], [ %80, %79 ]
  %88 = phi i32 [ 0, %26 ], [ %81, %79 ]
  %89 = tail call i32 @ED_mesh_mirror_spatial_table(ptr noundef %1, ptr noundef null, ptr noundef null, i8 noundef zeroext 101) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #7
  br label %167

90:                                               ; preds = %18
  %91 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %92 = load ptr, ptr %91, align 8, !tbaa !49
  %93 = getelementptr inbounds %struct.Lattice, ptr %92, i64 0, i32 2
  %94 = load i16, ptr %93, align 8, !tbaa !102
  %95 = sdiv i16 %94, 2
  %96 = srem i16 %94, 2
  %97 = add nsw i16 %95, %96
  %98 = sext i16 %97 to i32
  %99 = getelementptr inbounds %struct.Lattice, ptr %92, i64 0, i32 4
  %100 = load i16, ptr %99, align 4, !tbaa !104
  %101 = icmp sgt i16 %100, 0
  br i1 %101, label %102, label %167

102:                                              ; preds = %90
  %103 = getelementptr inbounds %struct.Lattice, ptr %92, i64 0, i32 3
  %104 = icmp sgt i16 %97, 0
  %105 = getelementptr inbounds %struct.KeyBlock, ptr %16, i64 0, i32 10
  %106 = load i16, ptr %103, align 2, !tbaa !105
  br label %107

107:                                              ; preds = %102, %159
  %108 = phi i16 [ %100, %102 ], [ %160, %159 ]
  %109 = phi i16 [ %106, %102 ], [ %161, %159 ]
  %110 = phi i16 [ %106, %102 ], [ %162, %159 ]
  %111 = phi i32 [ 0, %102 ], [ %163, %159 ]
  %112 = phi i32 [ 0, %102 ], [ %164, %159 ]
  %113 = icmp sgt i16 %110, 0
  br i1 %113, label %114, label %159

114:                                              ; preds = %107, %151
  %115 = phi i16 [ %152, %151 ], [ %109, %107 ]
  %116 = phi i32 [ %153, %151 ], [ %111, %107 ]
  %117 = phi i32 [ %154, %151 ], [ 0, %107 ]
  br i1 %104, label %118, label %151

118:                                              ; preds = %114, %142
  %119 = phi i32 [ %146, %142 ], [ 0, %114 ]
  %120 = load i16, ptr %93, align 8, !tbaa !102
  %121 = sext i16 %120 to i32
  %122 = xor i32 %119, -1
  %123 = add i32 %121, %122
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #7
  %124 = icmp eq i32 %119, %123
  %125 = tail call i32 @BKE_lattice_index_from_uvw(ptr noundef nonnull %92, i32 noundef %119, i32 noundef %117, i32 noundef %112) #5
  br i1 %124, label %126, label %131

126:                                              ; preds = %118
  %127 = load ptr, ptr %105, align 8, !tbaa !93
  %128 = mul nsw i32 %125, 3
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds float, ptr %127, i64 %129
  br label %142

131:                                              ; preds = %118
  %132 = tail call i32 @BKE_lattice_index_from_uvw(ptr noundef nonnull %92, i32 noundef %123, i32 noundef %117, i32 noundef %112) #5
  %133 = load ptr, ptr %105, align 8, !tbaa !93
  %134 = mul nsw i32 %125, 3
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds float, ptr %133, i64 %135
  %137 = mul nsw i32 %132, 3
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds float, ptr %133, i64 %138
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef %136) #6
  tail call fastcc void @copy_v3_v3(ptr noundef %136, ptr noundef %139) #6
  call fastcc void @copy_v3_v3(ptr noundef %139, ptr noundef nonnull %7) #6
  %140 = load float, ptr %136, align 4, !tbaa !99
  %141 = fneg float %140
  store float %141, ptr %136, align 4, !tbaa !99
  br label %142

142:                                              ; preds = %131, %126
  %143 = phi ptr [ %139, %131 ], [ %130, %126 ]
  %144 = load float, ptr %143, align 4, !tbaa !99
  %145 = fneg float %144
  store float %145, ptr %143, align 4, !tbaa !99
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #7
  %146 = add nuw nsw i32 %119, 1
  %147 = icmp eq i32 %146, %98
  br i1 %147, label %148, label %118, !llvm.loop !106

148:                                              ; preds = %142
  %149 = add i32 %116, %98
  %150 = load i16, ptr %103, align 2, !tbaa !105
  br label %151

151:                                              ; preds = %148, %114
  %152 = phi i16 [ %115, %114 ], [ %150, %148 ]
  %153 = phi i32 [ %116, %114 ], [ %149, %148 ]
  %154 = add nuw nsw i32 %117, 1
  %155 = sext i16 %152 to i32
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %114, label %157, !llvm.loop !107

157:                                              ; preds = %151
  %158 = load i16, ptr %99, align 4, !tbaa !104
  br label %159

159:                                              ; preds = %157, %107
  %160 = phi i16 [ %108, %107 ], [ %158, %157 ]
  %161 = phi i16 [ %109, %107 ], [ %152, %157 ]
  %162 = phi i16 [ %110, %107 ], [ %152, %157 ]
  %163 = phi i32 [ %111, %107 ], [ %153, %157 ]
  %164 = add nuw nsw i32 %112, 1
  %165 = sext i16 %160 to i32
  %166 = icmp slt i32 %164, %165
  br i1 %166, label %107, label %167, !llvm.loop !108

167:                                              ; preds = %159, %90, %18, %86
  %168 = phi i32 [ %87, %86 ], [ 0, %18 ], [ 0, %90 ], [ 0, %159 ]
  %169 = phi i32 [ %88, %86 ], [ 0, %18 ], [ 0, %90 ], [ %163, %159 ]
  %170 = load ptr, ptr @MEM_freeN, align 8, !tbaa !67
  tail call void %170(ptr noundef %23) #5
  br label %171

171:                                              ; preds = %167, %10
  %172 = phi i32 [ %168, %167 ], [ 0, %10 ]
  %173 = phi i32 [ %169, %167 ], [ 0, %10 ]
  store i32 %173, ptr %2, align 4, !tbaa !76
  store i32 %172, ptr %3, align 4, !tbaa !76
  tail call void @DAG_id_tag_update(ptr noundef %1, i16 noundef signext 2) #5
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %1) #5
  br label %174

174:                                              ; preds = %5, %171
  %175 = phi i8 [ 1, %171 ], [ 0, %5 ]
  ret i8 %175
}

; Function Attrs: optsize
declare void @ED_mesh_report_mirror(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @ED_mesh_mirror_spatial_table(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @mesh_get_x_mirror_vert(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !109 {
  %3 = load float, ptr %1, align 4, !tbaa !99
  store float %3, ptr %0, align 4, !tbaa !99
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !99
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !99
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !99
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !99
  ret void
}

; Function Attrs: optsize
declare i32 @BKE_lattice_index_from_uvw(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @BKE_keyblock_move(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }
attributes #7 = { nounwind }

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
!48 = !{!"object_shapekey.c:shape_key_mode_poll"}
!49 = !{!50, !36, i64 296}
!50 = !{!"Object", !51, i64 0, !36, i64 120, !36, i64 128, !41, i64 136, !41, i64 138, !52, i64 140, !52, i64 144, !52, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !53, i64 312, !36, i64 360, !39, i64 368, !39, i64 384, !39, i64 400, !39, i64 416, !52, i64 432, !52, i64 436, !36, i64 440, !36, i64 448, !52, i64 456, !52, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !54, i64 616, !54, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !52, i64 944, !41, i64 948, !41, i64 950, !41, i64 952, !41, i64 954, !41, i64 956, !41, i64 958, !41, i64 960, !41, i64 962, !41, i64 964, !37, i64 966, !37, i64 967, !52, i64 968, !52, i64 972, !52, i64 976, !52, i64 980, !52, i64 984, !54, i64 988, !54, i64 992, !54, i64 996, !54, i64 1000, !54, i64 1004, !54, i64 1008, !54, i64 1012, !54, i64 1016, !54, i64 1020, !54, i64 1024, !54, i64 1028, !54, i64 1032, !41, i64 1036, !41, i64 1038, !41, i64 1040, !37, i64 1042, !37, i64 1043, !41, i64 1044, !37, i64 1046, !37, i64 1047, !54, i64 1048, !54, i64 1052, !39, i64 1056, !39, i64 1072, !39, i64 1088, !39, i64 1104, !54, i64 1120, !41, i64 1124, !41, i64 1126, !37, i64 1128, !52, i64 1144, !52, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !41, i64 1162, !37, i64 1164, !39, i64 1176, !39, i64 1192, !39, i64 1208, !39, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !41, i64 1266, !54, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !55, i64 1304, !55, i64 1312, !52, i64 1320, !52, i64 1324, !39, i64 1328, !39, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !39, i64 1400, !36, i64 1416}
!51 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !52, i64 100, !52, i64 104, !52, i64 108, !36, i64 112}
!52 = !{!"int", !37, i64 0}
!53 = !{!"bAnimVizSettings", !52, i64 0, !52, i64 4, !52, i64 8, !52, i64 12, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !52, i64 32, !52, i64 36, !52, i64 40, !52, i64 44}
!54 = !{!"float", !37, i64 0}
!55 = !{!"long", !37, i64 0}
!56 = !{!50, !36, i64 24}
!57 = !{!51, !36, i64 24}
!58 = !{!50, !52, i64 432}
!59 = !{!"object_shapekey.c:shape_key_add_exec"}
!60 = !{!61, !36, i64 112}
!61 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!62 = !{!"object_shapekey.c:shape_key_mode_exists_poll"}
!63 = !{!"object_shapekey.c:shape_key_remove_exec"}
!64 = !{i8 0, i8 2}
!65 = !{!"object_shapekey.c:shape_key_poll"}
!66 = !{!"object_shapekey.c:shape_key_clear_exec"}
!67 = !{!36, !36, i64 0}
!68 = !{!69, !54, i64 20}
!69 = !{!"KeyBlock", !36, i64 0, !36, i64 8, !54, i64 16, !54, i64 20, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !52, i64 32, !52, i64 36, !36, i64 40, !37, i64 48, !37, i64 112, !54, i64 176, !54, i64 180}
!70 = distinct !{!70, !71}
!71 = !{!"llvm.loop.mustprogress"}
!72 = !{!"object_shapekey.c:shape_key_retime_exec"}
!73 = !{!69, !54, i64 16}
!74 = distinct !{!74, !71}
!75 = !{!"object_shapekey.c:shape_key_mirror_exec"}
!76 = !{!52, !52, i64 0}
!77 = !{!"object_shapekey.c:shape_key_move_poll"}
!78 = !{!79, !41, i64 210}
!79 = !{!"Key", !51, i64 0, !36, i64 120, !36, i64 128, !37, i64 136, !52, i64 168, !52, i64 172, !39, i64 176, !36, i64 192, !36, i64 200, !41, i64 208, !41, i64 210, !41, i64 212, !41, i64 214, !54, i64 216, !52, i64 220}
!80 = !{!"object_shapekey.c:shape_key_move_exec"}
!81 = !{!50, !41, i64 1266}
!82 = !{!79, !41, i64 208}
!83 = !{!"object_shapekey.c:ED_object_shape_key_add"}
!84 = !{!"object_shapekey.c:ED_object_shape_key_remove_all"}
!85 = !{!79, !36, i64 200}
!86 = !{!41, !41, i64 0}
!87 = !{!"object_shapekey.c:ED_object_shape_key_remove"}
!88 = !{!69, !41, i64 28}
!89 = distinct !{!89, !71}
!90 = !{!79, !36, i64 128}
!91 = !{!79, !36, i64 176}
!92 = !{!50, !41, i64 136}
!93 = !{!69, !36, i64 40}
!94 = !{!"object_shapekey.c:object_shape_key_mirror"}
!95 = !{!69, !52, i64 32}
!96 = !{!97, !52, i64 1280}
!97 = !{!"Mesh", !51, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !98, i64 280, !98, i64 480, !98, i64 680, !98, i64 880, !98, i64 1080, !52, i64 1280, !52, i64 1284, !52, i64 1288, !52, i64 1292, !52, i64 1296, !52, i64 1300, !52, i64 1304, !37, i64 1308, !37, i64 1320, !37, i64 1332, !52, i64 1344, !41, i64 1348, !41, i64 1350, !54, i64 1352, !52, i64 1356, !37, i64 1360, !37, i64 1361, !37, i64 1362, !37, i64 1363, !37, i64 1364, !37, i64 1365, !41, i64 1366, !36, i64 1368}
!98 = !{!"CustomData", !36, i64 0, !37, i64 8, !52, i64 172, !52, i64 176, !52, i64 180, !36, i64 184, !36, i64 192}
!99 = !{!54, !54, i64 0}
!100 = !{!37, !37, i64 0}
!101 = distinct !{!101, !71}
!102 = !{!103, !41, i64 128}
!103 = !{!"Lattice", !51, i64 0, !36, i64 120, !41, i64 128, !41, i64 130, !41, i64 132, !41, i64 134, !41, i64 136, !41, i64 138, !41, i64 140, !41, i64 142, !37, i64 144, !37, i64 145, !37, i64 146, !37, i64 147, !52, i64 148, !54, i64 152, !54, i64 156, !54, i64 160, !54, i64 164, !54, i64 168, !54, i64 172, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !37, i64 208, !36, i64 272}
!104 = !{!103, !41, i64 132}
!105 = !{!103, !41, i64 130}
!106 = distinct !{!106, !71}
!107 = distinct !{!107, !71}
!108 = distinct !{!108, !71}
!109 = !{!"object_shapekey.c:copy_v3_v3"}
