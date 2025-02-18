; ModuleID = 'blender/source/blender/editors/space_node/node_add.c'
source_filename = "blender/source/blender/editors/space_node/node_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.StructRNA = type opaque
%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.SpaceNode = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, ptr, ptr, i16, i16, float, float, float, float, float, [2 x float], %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, %struct.ListBase, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.bNodeTree = type { %struct.ID, ptr, ptr, [64 x i8], ptr, ptr, [2 x float], %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i32, i32, i16, i16, i32, %struct.rctf, %struct.ListBase, %struct.ListBase, ptr, %struct.bNodeInstanceKey, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bNodeInstanceKey = type { i32 }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.CollectionPropertyIterator = type { %struct.PointerRNA, %struct.PointerRNA, ptr, %union.anon, i32, i32, %struct.PointerRNA, i32 }
%union.anon = type { %struct.ArrayIterator }
%struct.ArrayIterator = type { ptr, ptr, ptr, i32, i32, ptr }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.bNodeLink = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.bNodeSocketLink = type { ptr, ptr, ptr, ptr, [2 x float] }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }

@.str = private unnamed_addr constant [12 x i8] c"Add Reroute\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"NODE_OT_add_reroute\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Add a reroute node\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@RNA_OperatorMousePath = external global %struct.StructRNA, align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"cursor\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"Cursor\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"Add File Node\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"Add a file node to the current node editor\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"NODE_OT_add_file\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"Image\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"Datablock name to assign\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"Add Mask Node\00", align 1
@.str.15 = private unnamed_addr constant [43 x i8] c"Add a mask node to the current node editor\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"NODE_OT_add_mask\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"Mask\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"New Node Tree\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"NODE_OT_new_node_tree\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"Create a new node tree\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@DummyRNA_NULL_items = external global [0 x %struct.EnumPropertyItem], align 8
@.str.22 = private unnamed_addr constant [10 x i8] c"Tree Type\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"NodeTree\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"loc\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.25 = private unnamed_addr constant [12 x i8] c"socket link\00", align 1
@U = external local_unnamed_addr global %struct.UserDef, align 8
@.str.26 = private unnamed_addr constant [9 x i8] c"filepath\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"Cannot read image '%s': %s\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"unsupported format\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"Image '%s' not found\00", align 1
@.str.30 = private unnamed_addr constant [28 x i8] c"Could not add an image node\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"Mask '%s' not found\00", align 1
@.str.32 = private unnamed_addr constant [26 x i8] c"Could not add a mask node\00", align 1
@.str.33 = private unnamed_addr constant [28 x i8] c"Node tree type %s undefined\00", align 1
@switch.table.node_add_file_exec = private unnamed_addr constant [3 x i32] [i32 143, i32 220, i32 409], align 4

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @node_add_node(ptr noundef %0, ptr noundef %1, i32 noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #0 {
  %6 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #7
  %7 = tail call ptr @CTX_data_main(ptr noundef %0) #7
  tail call void @node_deselect_all(ptr noundef %6) #7
  %8 = icmp eq ptr %1, null
  %9 = getelementptr inbounds %struct.SpaceNode, ptr %6, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  br i1 %8, label %13, label %11

11:                                               ; preds = %5
  %12 = tail call ptr @nodeAddNode(ptr noundef %0, ptr noundef %10, ptr noundef nonnull %1) #7
  br label %15

13:                                               ; preds = %5
  %14 = tail call ptr @nodeAddStaticNode(ptr noundef %0, ptr noundef %10, i32 noundef %2) #7
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi ptr [ %12, %11 ], [ %14, %13 ]
  %17 = getelementptr inbounds %struct.bNode, ptr %16, i64 0, i32 24
  store float %3, ptr %17, align 8, !tbaa !46
  %18 = fadd float %4, 6.000000e+01
  %19 = getelementptr inbounds %struct.bNode, ptr %16, i64 0, i32 25
  store float %18, ptr %19, align 4, !tbaa !48
  tail call void @nodeSetSelected(ptr noundef %16, i8 noundef zeroext 1) #7
  store float %3, ptr %17, align 8, !tbaa !46
  store float %18, ptr %19, align 4, !tbaa !48
  %20 = getelementptr inbounds %struct.SpaceNode, ptr %6, i64 0, i32 19
  %21 = load ptr, ptr %20, align 8, !tbaa !34
  tail call void @ntreeUpdateTree(ptr noundef %7, ptr noundef %21) #7
  %22 = load ptr, ptr %20, align 8, !tbaa !34
  tail call void @ED_node_set_active(ptr noundef %7, ptr noundef %22, ptr noundef %16) #7
  tail call void @snode_update(ptr noundef %6, ptr noundef %16) #7
  %23 = getelementptr inbounds %struct.SpaceNode, ptr %6, i64 0, i32 18
  %24 = load ptr, ptr %23, align 8, !tbaa !49
  %25 = getelementptr inbounds %struct.bNodeTree, ptr %24, i64 0, i32 9
  %26 = load i32, ptr %25, align 8, !tbaa !50
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %28, label %30

28:                                               ; preds = %15
  %29 = load ptr, ptr %20, align 8, !tbaa !34
  tail call void @ntreeTexCheckCyclics(ptr noundef %29) #7
  br label %30

30:                                               ; preds = %28, %15
  ret ptr %16
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @CTX_wm_space_node(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

declare void @node_deselect_all(ptr noundef) local_unnamed_addr #2

declare ptr @nodeAddNode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @nodeAddStaticNode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @nodeSetSelected(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @ntreeUpdateTree(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_node_set_active(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @snode_update(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ntreeTexCheckCyclics(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @NODE_OT_add_reroute(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !54
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.1, ptr %2, align 8, !tbaa !57
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %3, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_gesture_lines_invoke, ptr %4, align 8, !tbaa !59
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @WM_gesture_lines_modal, ptr %5, align 8, !tbaa !60
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @add_reroute_exec, ptr %6, align 8, !tbaa !61
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @WM_gesture_lines_cancel, ptr %7, align 8, !tbaa !62
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_node_editable, ptr %8, align 8, !tbaa !63
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %9, align 8, !tbaa !64
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !65
  %12 = tail call ptr @RNA_def_property(ptr noundef %11, ptr noundef nonnull @.str.3, i32 noundef 6, i32 noundef 0) #7
  tail call void @RNA_def_property_struct_runtime(ptr noundef %12, ptr noundef nonnull @RNA_OperatorMousePath) #7
  %13 = load ptr, ptr %10, align 8, !tbaa !65
  %14 = tail call ptr @RNA_def_int(ptr noundef %13, ptr noundef nonnull @.str.4, i32 noundef 6, i32 noundef 0, i32 noundef 2147483647, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 0, i32 noundef 2147483647) #7
  ret void
}

declare i32 @WM_gesture_lines_invoke(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @WM_gesture_lines_modal(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @add_reroute_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [13 x [2 x float]], align 16
  %4 = alloca [256 x [2 x float]], align 16
  %5 = alloca %struct.CollectionPropertyIterator, align 8
  %6 = alloca %struct.PointerRNA, align 8
  %7 = alloca [2 x float], align 4
  %8 = alloca %struct.ListBase, align 8
  %9 = alloca %struct.ListBase, align 8
  %10 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #7
  %11 = tail call ptr @CTX_wm_region(ptr noundef %0) #7
  %12 = getelementptr inbounds %struct.SpaceNode, ptr %10, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %5) #7
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !66
  call void @RNA_collection_begin(ptr noundef %15, ptr noundef nonnull @.str.3, ptr noundef nonnull %5) #7
  %16 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 7
  %17 = load i32, ptr %16, align 8, !tbaa !68
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %40, label %19

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 6
  %21 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 2
  %22 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  br label %23

23:                                               ; preds = %19, %34
  %24 = phi i64 [ 0, %19 ], [ %35, %34 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %20, i64 24, i1 false), !tbaa.struct !72
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #7
  call void @RNA_float_get_array(ptr noundef nonnull %6, ptr noundef nonnull @.str.24, ptr noundef nonnull %7) #7
  %25 = load float, ptr %7, align 4, !tbaa !74
  %26 = fptosi float %25 to i16
  %27 = sitofp i16 %26 to float
  %28 = load float, ptr %22, align 4, !tbaa !74
  %29 = fptosi float %28 to i16
  %30 = sitofp i16 %29 to float
  %31 = getelementptr inbounds [256 x [2 x float]], ptr %4, i64 0, i64 %24
  %32 = getelementptr inbounds [256 x [2 x float]], ptr %4, i64 0, i64 %24, i64 1
  call void @UI_view2d_region_to_view(ptr noundef nonnull %21, float noundef %27, float noundef %30, ptr noundef nonnull %31, ptr noundef nonnull %32) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #7
  %33 = icmp eq i64 %24, 255
  br i1 %33, label %40, label %34

34:                                               ; preds = %23
  %35 = add nuw nsw i64 %24, 1
  call void @RNA_property_collection_next(ptr noundef nonnull %5) #7
  %36 = load i32, ptr %16, align 8, !tbaa !68
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %23, !llvm.loop !75

38:                                               ; preds = %34
  %39 = trunc i64 %35 to i32
  br label %40

40:                                               ; preds = %38, %23, %2
  %41 = phi i32 [ 0, %2 ], [ %39, %38 ], [ 256, %23 ]
  call void @RNA_property_collection_end(ptr noundef nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %5) #7
  %42 = icmp sgt i32 %41, 1
  br i1 %42, label %43, label %159

43:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #7
  call void @ED_preview_kill_jobs(ptr noundef %0) #7
  call void @node_deselect_all(ptr noundef %10) #7
  %44 = getelementptr inbounds %struct.ListBase, ptr %8, i64 0, i32 1
  %45 = getelementptr inbounds %struct.ListBase, ptr %9, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %46 = getelementptr inbounds %struct.bNodeTree, ptr %13, i64 0, i32 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  %47 = load ptr, ptr %46, align 8, !tbaa !73
  %48 = icmp eq ptr %47, null
  br i1 %48, label %143, label %49

49:                                               ; preds = %43
  %50 = add nsw i32 %41, -1
  %51 = zext i32 %50 to i64
  br label %52

52:                                               ; preds = %49, %138
  %53 = phi ptr [ %47, %49 ], [ %141, %138 ]
  %54 = phi float [ undef, %49 ], [ %140, %138 ]
  %55 = phi float [ undef, %49 ], [ %139, %138 ]
  %56 = call i32 @nodeLinkIsHidden(ptr noundef nonnull %53) #7
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %138

58:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %3) #7
  %59 = call i32 @node_link_bezier_points(ptr noundef null, ptr noundef null, ptr noundef nonnull %53, ptr noundef nonnull %3, i32 noundef 12) #7
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %88, label %61

61:                                               ; preds = %58, %85
  %62 = phi i64 [ %86, %85 ], [ 0, %58 ]
  %63 = getelementptr inbounds [2 x float], ptr %4, i64 %62
  %64 = getelementptr [2 x float], ptr %63, i64 1
  br label %65

65:                                               ; preds = %61, %68
  %66 = phi i64 [ 0, %61 ], [ %70, %68 ]
  %67 = icmp eq i64 %66, 12
  br i1 %67, label %85, label %68

68:                                               ; preds = %65
  %69 = getelementptr inbounds [13 x [2 x float]], ptr %3, i64 0, i64 %66
  %70 = add nuw nsw i64 %66, 1
  %71 = getelementptr inbounds [13 x [2 x float]], ptr %3, i64 0, i64 %70
  %72 = call i32 @isect_line_line_v2(ptr noundef nonnull %63, ptr noundef %64, ptr noundef nonnull %69, ptr noundef nonnull %71) #7
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %65, !llvm.loop !78

74:                                               ; preds = %68
  %75 = load float, ptr %63, align 4, !tbaa !74
  %76 = load float, ptr %64, align 4, !tbaa !74
  %77 = fadd float %75, %76
  %78 = fmul float %77, 5.000000e-01
  %79 = getelementptr inbounds [2 x float], ptr %4, i64 %62, i64 1
  %80 = load float, ptr %79, align 4, !tbaa !74
  %81 = getelementptr [2 x float], ptr %63, i64 1, i64 1
  %82 = load float, ptr %81, align 4, !tbaa !74
  %83 = fadd float %80, %82
  %84 = fmul float %83, 5.000000e-01
  br label %88

85:                                               ; preds = %65
  %86 = add nuw nsw i64 %62, 1
  %87 = icmp eq i64 %86, %51
  br i1 %87, label %88, label %61, !llvm.loop !79

88:                                               ; preds = %85, %58, %74
  %89 = phi float [ %55, %58 ], [ %84, %74 ], [ %55, %85 ]
  %90 = phi float [ %54, %58 ], [ %78, %74 ], [ %54, %85 ]
  %91 = phi i1 [ true, %58 ], [ false, %74 ], [ true, %85 ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %3) #7
  br i1 %91, label %138, label %92

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.bNodeLink, ptr %53, i64 0, i32 4
  %94 = load ptr, ptr %93, align 8, !tbaa !80
  %95 = load ptr, ptr @MEM_callocN, align 8, !tbaa !73
  %96 = call ptr %95(i64 noundef 40, ptr noundef nonnull @.str.25) #7
  %97 = getelementptr inbounds %struct.bNodeSocketLink, ptr %96, i64 0, i32 2
  store ptr %94, ptr %97, align 8, !tbaa !82
  %98 = getelementptr inbounds %struct.bNodeSocketLink, ptr %96, i64 0, i32 3
  store ptr %53, ptr %98, align 8, !tbaa !84
  %99 = getelementptr inbounds %struct.bNodeSocketLink, ptr %96, i64 0, i32 4
  store float %90, ptr %99, align 4, !tbaa !74
  %100 = getelementptr inbounds %struct.bNodeSocketLink, ptr %96, i64 0, i32 4, i64 1
  store float %89, ptr %100, align 4, !tbaa !74
  %101 = load ptr, ptr %44, align 8, !tbaa !73
  %102 = icmp eq ptr %101, null
  br i1 %102, label %112, label %103

103:                                              ; preds = %92, %108
  %104 = phi ptr [ %110, %108 ], [ %101, %92 ]
  %105 = getelementptr inbounds %struct.bNodeSocketLink, ptr %104, i64 0, i32 2
  %106 = load ptr, ptr %105, align 8, !tbaa !82
  %107 = icmp eq ptr %106, %94
  br i1 %107, label %112, label %108

108:                                              ; preds = %103
  %109 = getelementptr inbounds %struct.bNodeSocketLink, ptr %104, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !73
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %103, !llvm.loop !85

112:                                              ; preds = %103, %108, %92
  %113 = phi ptr [ %101, %92 ], [ %104, %103 ], [ %110, %108 ]
  call void @BLI_insertlinkafter(ptr noundef nonnull %8, ptr noundef %113, ptr noundef %96) #7
  %114 = getelementptr inbounds %struct.bNodeLink, ptr %53, i64 0, i32 5
  %115 = load ptr, ptr %114, align 8, !tbaa !86
  %116 = load ptr, ptr @MEM_callocN, align 8, !tbaa !73
  %117 = call ptr %116(i64 noundef 40, ptr noundef nonnull @.str.25) #7
  %118 = getelementptr inbounds %struct.bNodeSocketLink, ptr %117, i64 0, i32 2
  store ptr %115, ptr %118, align 8, !tbaa !82
  %119 = getelementptr inbounds %struct.bNodeSocketLink, ptr %117, i64 0, i32 3
  store ptr %53, ptr %119, align 8, !tbaa !84
  %120 = getelementptr inbounds %struct.bNodeSocketLink, ptr %117, i64 0, i32 4
  store float %90, ptr %120, align 4, !tbaa !74
  %121 = getelementptr inbounds %struct.bNodeSocketLink, ptr %117, i64 0, i32 4, i64 1
  store float %89, ptr %121, align 4, !tbaa !74
  %122 = load ptr, ptr %45, align 8, !tbaa !73
  %123 = icmp eq ptr %122, null
  br i1 %123, label %133, label %124

124:                                              ; preds = %112, %129
  %125 = phi ptr [ %131, %129 ], [ %122, %112 ]
  %126 = getelementptr inbounds %struct.bNodeSocketLink, ptr %125, i64 0, i32 2
  %127 = load ptr, ptr %126, align 8, !tbaa !82
  %128 = icmp eq ptr %127, %115
  br i1 %128, label %133, label %129

129:                                              ; preds = %124
  %130 = getelementptr inbounds %struct.bNodeSocketLink, ptr %125, i64 0, i32 1
  %131 = load ptr, ptr %130, align 8, !tbaa !73
  %132 = icmp eq ptr %131, null
  br i1 %132, label %133, label %124, !llvm.loop !85

133:                                              ; preds = %124, %129, %112
  %134 = phi ptr [ %122, %112 ], [ %125, %124 ], [ %131, %129 ]
  call void @BLI_insertlinkafter(ptr noundef nonnull %9, ptr noundef %134, ptr noundef %117) #7
  %135 = getelementptr inbounds %struct.bNodeLink, ptr %53, i64 0, i32 6
  %136 = load i32, ptr %135, align 8, !tbaa !87
  %137 = and i32 %136, -5
  store i32 %137, ptr %135, align 8, !tbaa !87
  br label %138

138:                                              ; preds = %88, %133, %52
  %139 = phi float [ %89, %88 ], [ %89, %133 ], [ %55, %52 ]
  %140 = phi float [ %90, %88 ], [ %90, %133 ], [ %54, %52 ]
  %141 = load ptr, ptr %53, align 8, !tbaa !73
  %142 = icmp eq ptr %141, null
  br i1 %142, label %143, label %52, !llvm.loop !88

143:                                              ; preds = %138, %43
  %144 = load ptr, ptr %8, align 8, !tbaa !89
  %145 = icmp eq ptr %144, null
  br i1 %145, label %150, label %146

146:                                              ; preds = %143, %146
  %147 = phi ptr [ %148, %146 ], [ %144, %143 ]
  %148 = call fastcc ptr @add_reroute_do_socket_section(ptr noundef %0, ptr noundef nonnull %147, i32 noundef 2)
  %149 = icmp eq ptr %148, null
  br i1 %149, label %150, label %146, !llvm.loop !90

150:                                              ; preds = %146, %143
  %151 = load ptr, ptr %9, align 8, !tbaa !89
  %152 = icmp eq ptr %151, null
  br i1 %152, label %157, label %153

153:                                              ; preds = %150, %153
  %154 = phi ptr [ %155, %153 ], [ %151, %150 ]
  %155 = call fastcc ptr @add_reroute_do_socket_section(ptr noundef %0, ptr noundef nonnull %154, i32 noundef 1)
  %156 = icmp eq ptr %155, null
  br i1 %156, label %157, label %153, !llvm.loop !91

157:                                              ; preds = %153, %150
  call void @BLI_freelistN(ptr noundef nonnull %8) #7
  call void @BLI_freelistN(ptr noundef nonnull %9) #7
  %158 = call ptr @CTX_data_main(ptr noundef %0) #7
  call void @ntreeUpdateTree(ptr noundef %158, ptr noundef %13) #7
  call void @snode_notify(ptr noundef %0, ptr noundef %10) #7
  call void @snode_dag_update(ptr noundef %0, ptr noundef %10) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #7
  br label %159

159:                                              ; preds = %40, %157
  %160 = phi i32 [ 4, %157 ], [ 10, %40 ]
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %4) #7
  ret i32 %160
}

declare void @WM_gesture_lines_cancel(ptr noundef, ptr noundef) #2

declare i32 @ED_operator_node_editable(ptr noundef) #2

declare ptr @RNA_def_property(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @RNA_def_property_struct_runtime(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @NODE_OT_add_file(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.7, ptr %0, align 8, !tbaa !54
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.8, ptr %2, align 8, !tbaa !58
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.9, ptr %3, align 8, !tbaa !57
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @node_add_file_exec, ptr %4, align 8, !tbaa !61
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @node_add_file_invoke, ptr %5, align 8, !tbaa !59
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_node_editable, ptr %6, align 8, !tbaa !63
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !64
  tail call void @WM_operator_properties_filesel(ptr noundef nonnull %0, i32 noundef 2064, i16 noundef signext 9, i16 noundef signext 0, i16 noundef signext 8, i16 noundef signext 0) #7
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !65
  %10 = tail call ptr @RNA_def_string(ptr noundef %9, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 64, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @node_add_file_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [1024 x i8], align 16
  %4 = alloca [64 x i8], align 16
  %5 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #7
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !66
  %8 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %7, ptr noundef nonnull @.str.26) #7
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %24, label %10

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #7
  %11 = load ptr, ptr %6, align 8, !tbaa !66
  call void @RNA_string_get(ptr noundef %11, ptr noundef nonnull @.str.26, ptr noundef nonnull %3) #7
  %12 = tail call ptr @__errno_location() #8
  store i32 0, ptr %12, align 4, !tbaa !92
  %13 = call ptr @BKE_image_load_exists(ptr noundef nonnull %3) #7
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %35

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %17 = load ptr, ptr %16, align 8, !tbaa !93
  %18 = load i32, ptr %12, align 4, !tbaa !92
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  %21 = call ptr @strerror(i32 noundef %18) #7
  br label %22

22:                                               ; preds = %15, %20
  %23 = phi ptr [ %21, %20 ], [ @.str.28, %15 ]
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %17, i32 noundef 32, ptr noundef nonnull @.str.27, ptr noundef nonnull %3, ptr noundef %23) #7
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #7
  br label %59

24:                                               ; preds = %2
  %25 = load ptr, ptr %6, align 8, !tbaa !66
  %26 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %25, ptr noundef nonnull @.str.10) #7
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #7
  %29 = load ptr, ptr %6, align 8, !tbaa !66
  call void @RNA_string_get(ptr noundef %29, ptr noundef nonnull @.str.10, ptr noundef nonnull %4) #7
  %30 = call ptr @BKE_libblock_find_name(i16 noundef signext 19785, ptr noundef nonnull %4) #7
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %34 = load ptr, ptr %33, align 8, !tbaa !93
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %34, i32 noundef 32, ptr noundef nonnull @.str.29, ptr noundef nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #7
  br label %59

35:                                               ; preds = %10
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #7
  br label %37

36:                                               ; preds = %28
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #7
  br label %37

37:                                               ; preds = %36, %35, %24
  %38 = phi ptr [ null, %24 ], [ %13, %35 ], [ %30, %36 ]
  %39 = getelementptr inbounds %struct.SpaceNode, ptr %5, i64 0, i32 18
  %40 = load ptr, ptr %39, align 8, !tbaa !49
  %41 = getelementptr inbounds %struct.bNodeTree, ptr %40, i64 0, i32 9
  %42 = load i32, ptr %41, align 8, !tbaa !50
  %43 = icmp ult i32 %42, 3
  br i1 %43, label %44, label %59

44:                                               ; preds = %37
  %45 = zext nneg i32 %42 to i64
  %46 = getelementptr inbounds [3 x i32], ptr @switch.table.node_add_file_exec, i64 0, i64 %45
  %47 = load i32, ptr %46, align 4
  call void @ED_preview_kill_jobs(ptr noundef %0) #7
  %48 = getelementptr inbounds %struct.SpaceNode, ptr %5, i64 0, i32 16
  %49 = load float, ptr %48, align 8, !tbaa !74
  %50 = getelementptr inbounds %struct.SpaceNode, ptr %5, i64 0, i32 16, i64 1
  %51 = load float, ptr %50, align 4, !tbaa !74
  %52 = call ptr @node_add_node(ptr noundef %0, ptr noundef null, i32 noundef %47, float noundef %49, float noundef %51)
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %44
  %55 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %56 = load ptr, ptr %55, align 8, !tbaa !93
  call void @BKE_report(ptr noundef %56, i32 noundef 16, ptr noundef nonnull @.str.30) #7
  br label %59

57:                                               ; preds = %44
  %58 = getelementptr inbounds %struct.bNode, ptr %52, i64 0, i32 20
  store ptr %38, ptr %58, align 8, !tbaa !94
  call void @BKE_image_signal(ptr noundef %38, ptr noundef null, i32 noundef 0) #7
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 167772161, ptr noundef %38) #7
  call void @snode_notify(ptr noundef %0, ptr noundef %5) #7
  call void @snode_dag_update(ptr noundef %0, ptr noundef %5) #7
  br label %59

59:                                               ; preds = %37, %22, %32, %57, %54
  %60 = phi i32 [ 4, %57 ], [ 2, %54 ], [ 2, %22 ], [ 2, %32 ], [ 2, %37 ]
  ret i32 %60
}

; Function Attrs: nounwind uwtable
define internal i32 @node_add_file_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #7
  %5 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #7
  %6 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2
  %7 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !92
  %9 = sitofp i32 %8 to float
  %10 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %11 = load i32, ptr %10, align 4, !tbaa !92
  %12 = sitofp i32 %11 to float
  %13 = getelementptr inbounds %struct.SpaceNode, ptr %5, i64 0, i32 16
  %14 = getelementptr inbounds %struct.SpaceNode, ptr %5, i64 0, i32 16, i64 1
  tail call void @UI_view2d_region_to_view(ptr noundef nonnull %6, float noundef %9, float noundef %12, ptr noundef nonnull %13, ptr noundef nonnull %14) #7
  %15 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !66
  %17 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %16, ptr noundef nonnull @.str.26) #7
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load ptr, ptr %15, align 8, !tbaa !66
  %21 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %20, ptr noundef nonnull @.str.10) #7
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %19, %3
  %24 = tail call i32 @node_add_file_exec(ptr noundef %0, ptr noundef %1), !range !95
  br label %27

25:                                               ; preds = %19
  %26 = tail call i32 @WM_operator_filesel(ptr noundef %0, ptr noundef %1, ptr noundef %2) #7
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  ret i32 %28
}

declare void @WM_operator_properties_filesel(ptr noundef, i32 noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext) local_unnamed_addr #2

declare ptr @RNA_def_string(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @NODE_OT_add_mask(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.14, ptr %0, align 8, !tbaa !54
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.15, ptr %2, align 8, !tbaa !58
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.16, ptr %3, align 8, !tbaa !57
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @node_add_mask_exec, ptr %4, align 8, !tbaa !61
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @node_add_mask_poll, ptr %5, align 8, !tbaa !63
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !65
  %9 = tail call ptr @RNA_def_string(ptr noundef %8, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.17, i32 noundef 64, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @node_add_mask_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [64 x i8], align 16
  %4 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #7
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !66
  call void @RNA_string_get(ptr noundef %6, ptr noundef nonnull @.str.10, ptr noundef nonnull %3) #7
  %7 = call ptr @BKE_libblock_find_name(i16 noundef signext 21325, ptr noundef nonnull %3) #7
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !93
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %11, i32 noundef 32, ptr noundef nonnull @.str.31, ptr noundef nonnull %3) #7
  br label %24

12:                                               ; preds = %2
  call void @ED_preview_kill_jobs(ptr noundef %0) #7
  %13 = getelementptr inbounds %struct.SpaceNode, ptr %4, i64 0, i32 16
  %14 = load float, ptr %13, align 8, !tbaa !74
  %15 = getelementptr inbounds %struct.SpaceNode, ptr %4, i64 0, i32 16, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !74
  %17 = call ptr @node_add_node(ptr noundef %0, ptr noundef null, i32 noundef 268, float noundef %14, float noundef %16)
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %21 = load ptr, ptr %20, align 8, !tbaa !93
  call void @BKE_report(ptr noundef %21, i32 noundef 16, ptr noundef nonnull @.str.32) #7
  br label %24

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.bNode, ptr %17, i64 0, i32 20
  store ptr %7, ptr %23, align 8, !tbaa !94
  call void @id_us_plus(ptr noundef nonnull %7) #7
  call void @snode_notify(ptr noundef %0, ptr noundef %4) #7
  call void @snode_dag_update(ptr noundef %0, ptr noundef %4) #7
  br label %24

24:                                               ; preds = %22, %19, %9
  %25 = phi i32 [ 4, %22 ], [ 2, %19 ], [ 2, %9 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #7
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define internal i32 @node_add_mask_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #7
  %3 = tail call i32 @ED_operator_node_editable(ptr noundef %0) #7
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.SpaceNode, ptr %2, i64 0, i32 18
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = getelementptr inbounds %struct.bNodeTree, ptr %7, i64 0, i32 9
  %9 = load i32, ptr %8, align 8, !tbaa !50
  %10 = icmp eq i32 %9, 1
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %5, %1
  %13 = phi i32 [ 0, %1 ], [ %11, %5 ]
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define dso_local void @NODE_OT_new_node_tree(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.18, ptr %0, align 8, !tbaa !54
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.19, ptr %2, align 8, !tbaa !57
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.20, ptr %3, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @new_node_tree_exec, ptr %4, align 8, !tbaa !61
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %5, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !65
  %8 = tail call ptr @RNA_def_enum(ptr noundef %7, ptr noundef nonnull @.str.21, ptr noundef nonnull @DummyRNA_NULL_items, i32 noundef 0, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.6) #7
  tail call void @RNA_def_enum_funcs(ptr noundef %8, ptr noundef nonnull @new_node_tree_type_itemf) #7
  %9 = load ptr, ptr %6, align 8, !tbaa !65
  %10 = tail call ptr @RNA_def_string(ptr noundef %9, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.23, i32 noundef 64, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.6) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @new_node_tree_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca [64 x i8], align 16
  %8 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #7
  %9 = tail call ptr @CTX_data_main(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #7
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !66
  %12 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %11, ptr noundef nonnull @.str.21) #7
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = load ptr, ptr %10, align 8, !tbaa !66
  %16 = tail call ptr @RNA_struct_find_property(ptr noundef %15, ptr noundef nonnull @.str.21) #7
  store ptr %16, ptr %5, align 8, !tbaa !73
  %17 = load ptr, ptr %10, align 8, !tbaa !66
  %18 = tail call i32 @RNA_property_enum_get(ptr noundef %17, ptr noundef %16) #7
  %19 = call zeroext i8 @RNA_property_enum_identifier(ptr noundef %0, ptr noundef %17, ptr noundef %16, i32 noundef %18, ptr noundef nonnull %6) #7
  br label %24

20:                                               ; preds = %2
  %21 = icmp eq ptr %8, null
  br i1 %21, label %54, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.SpaceNode, ptr %8, i64 0, i32 20
  store ptr %23, ptr %6, align 8, !tbaa !73
  br label %24

24:                                               ; preds = %22, %14
  %25 = load ptr, ptr %10, align 8, !tbaa !66
  %26 = call zeroext i8 @RNA_struct_property_is_set(ptr noundef %25, ptr noundef nonnull @.str.10) #7
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr %10, align 8, !tbaa !66
  call void @RNA_string_get(ptr noundef %29, ptr noundef nonnull @.str.10, ptr noundef nonnull %7) #7
  br label %30

30:                                               ; preds = %24, %28
  %31 = phi ptr [ %7, %28 ], [ @.str.23, %24 ]
  %32 = load ptr, ptr %6, align 8, !tbaa !73
  %33 = call ptr @ntreeTypeFind(ptr noundef %32) #7
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %37 = load ptr, ptr %36, align 8, !tbaa !93
  %38 = load ptr, ptr %6, align 8, !tbaa !73
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %37, i32 noundef 32, ptr noundef nonnull @.str.33, ptr noundef %38) #7
  br label %54

39:                                               ; preds = %30
  %40 = load ptr, ptr %6, align 8, !tbaa !73
  %41 = call ptr @ntreeAddTree(ptr noundef %9, ptr noundef nonnull %31, ptr noundef %40) #7
  call void @uiIDContextProperty(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %5) #7
  %42 = load ptr, ptr %5, align 8, !tbaa !73
  %43 = icmp eq ptr %42, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.ID, ptr %41, i64 0, i32 6
  %46 = load i32, ptr %45, align 4, !tbaa !96
  %47 = add nsw i32 %46, -1
  store i32 %47, ptr %45, align 4, !tbaa !96
  call void @RNA_id_pointer_create(ptr noundef %41, ptr noundef nonnull %4) #7
  %48 = load ptr, ptr %5, align 8, !tbaa !73
  call void @RNA_property_pointer_set(ptr noundef nonnull %3, ptr noundef %48, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %4) #7
  %49 = load ptr, ptr %5, align 8, !tbaa !73
  call void @RNA_property_update(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %49) #7
  br label %54

50:                                               ; preds = %39
  %51 = icmp eq ptr %8, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %50
  %53 = getelementptr inbounds %struct.SpaceNode, ptr %8, i64 0, i32 18
  store ptr %41, ptr %53, align 8, !tbaa !49
  call void @ED_node_tree_update(ptr noundef %0) #7
  br label %54

54:                                               ; preds = %44, %52, %50, %20, %35
  %55 = phi i32 [ 2, %35 ], [ 2, %20 ], [ 4, %50 ], [ 4, %52 ], [ 4, %44 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #7
  ret i32 %55
}

declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_def_enum_funcs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @new_node_tree_type_itemf(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr noundef %3) #0 {
  %5 = tail call ptr @rna_node_tree_type_itemf(ptr noundef null, ptr noundef null, ptr noundef %3) #7
  ret ptr %5
}

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

declare void @RNA_collection_begin(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare void @RNA_float_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @UI_view2d_region_to_view(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_property_collection_next(ptr noundef) local_unnamed_addr #2

declare void @RNA_property_collection_end(ptr noundef) local_unnamed_addr #2

declare void @ED_preview_kill_jobs(ptr noundef) local_unnamed_addr #2

declare i32 @nodeLinkIsHidden(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @add_reroute_do_socket_section(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #7
  %5 = getelementptr inbounds %struct.SpaceNode, ptr %4, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.bNodeSocketLink, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !82
  %9 = icmp eq ptr %1, null
  br i1 %9, label %80, label %10

10:                                               ; preds = %3
  %11 = icmp eq i32 %2, 2
  %12 = icmp eq i32 %2, 2
  br label %13

13:                                               ; preds = %10, %73
  %14 = phi i32 [ 0, %10 ], [ %77, %73 ]
  %15 = phi ptr [ %1, %10 ], [ %78, %73 ]
  %16 = phi ptr [ null, %10 ], [ %76, %73 ]
  %17 = phi float [ 0.000000e+00, %10 ], [ %75, %73 ]
  %18 = phi float [ 0.000000e+00, %10 ], [ %74, %73 ]
  %19 = getelementptr inbounds %struct.bNodeSocketLink, ptr %15, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !82
  %21 = icmp eq ptr %20, %8
  br i1 %21, label %22, label %80

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.bNodeSocketLink, ptr %15, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !84
  %25 = getelementptr inbounds %struct.bNodeLink, ptr %24, i64 0, i32 6
  %26 = load i32, ptr %25, align 8, !tbaa !87
  %27 = and i32 %26, 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %73

29:                                               ; preds = %22
  %30 = or disjoint i32 %26, 4
  store i32 %30, ptr %25, align 8, !tbaa !87
  %31 = icmp eq ptr %16, null
  br i1 %31, label %32, label %52

32:                                               ; preds = %29
  %33 = tail call ptr @nodeAddStaticNode(ptr noundef %0, ptr noundef %6, i32 noundef 6) #7
  br i1 %11, label %34, label %43

34:                                               ; preds = %32
  %35 = load ptr, ptr %23, align 8, !tbaa !84
  %36 = getelementptr inbounds %struct.bNodeLink, ptr %35, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !97
  %38 = getelementptr inbounds %struct.bNodeLink, ptr %35, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !80
  %40 = getelementptr inbounds %struct.bNode, ptr %33, i64 0, i32 17
  %41 = load ptr, ptr %40, align 8, !tbaa !98
  %42 = tail call ptr @nodeAddLink(ptr noundef %6, ptr noundef %37, ptr noundef %39, ptr noundef %33, ptr noundef %41) #7
  br label %52

43:                                               ; preds = %32
  %44 = getelementptr inbounds %struct.bNode, ptr %33, i64 0, i32 18
  %45 = load ptr, ptr %44, align 8, !tbaa !99
  %46 = load ptr, ptr %23, align 8, !tbaa !84
  %47 = getelementptr inbounds %struct.bNodeLink, ptr %46, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !100
  %49 = getelementptr inbounds %struct.bNodeLink, ptr %46, i64 0, i32 5
  %50 = load ptr, ptr %49, align 8, !tbaa !86
  %51 = tail call ptr @nodeAddLink(ptr noundef %6, ptr noundef %33, ptr noundef %45, ptr noundef %48, ptr noundef %50) #7
  br label %52

52:                                               ; preds = %34, %43, %29
  %53 = phi ptr [ %16, %29 ], [ %33, %34 ], [ %33, %43 ]
  %54 = load ptr, ptr %23, align 8, !tbaa !84
  br i1 %12, label %55, label %60

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.bNodeLink, ptr %54, i64 0, i32 2
  store ptr %53, ptr %56, align 8, !tbaa !97
  %57 = getelementptr inbounds %struct.bNode, ptr %53, i64 0, i32 18
  %58 = load ptr, ptr %57, align 8, !tbaa !99
  %59 = getelementptr inbounds %struct.bNodeLink, ptr %54, i64 0, i32 4
  store ptr %58, ptr %59, align 8, !tbaa !80
  br label %65

60:                                               ; preds = %52
  %61 = getelementptr inbounds %struct.bNodeLink, ptr %54, i64 0, i32 3
  store ptr %53, ptr %61, align 8, !tbaa !100
  %62 = getelementptr inbounds %struct.bNode, ptr %53, i64 0, i32 17
  %63 = load ptr, ptr %62, align 8, !tbaa !98
  %64 = getelementptr inbounds %struct.bNodeLink, ptr %54, i64 0, i32 5
  store ptr %63, ptr %64, align 8, !tbaa !86
  br label %65

65:                                               ; preds = %60, %55
  %66 = getelementptr inbounds %struct.bNodeSocketLink, ptr %15, i64 0, i32 4
  %67 = load float, ptr %66, align 4, !tbaa !74
  %68 = fadd float %17, %67
  %69 = getelementptr inbounds %struct.bNodeSocketLink, ptr %15, i64 0, i32 4, i64 1
  %70 = load float, ptr %69, align 4, !tbaa !74
  %71 = fadd float %18, %70
  %72 = add nsw i32 %14, 1
  br label %73

73:                                               ; preds = %65, %22
  %74 = phi float [ %71, %65 ], [ %18, %22 ]
  %75 = phi float [ %68, %65 ], [ %17, %22 ]
  %76 = phi ptr [ %53, %65 ], [ %16, %22 ]
  %77 = phi i32 [ %72, %65 ], [ %14, %22 ]
  %78 = load ptr, ptr %15, align 8, !tbaa !101
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %13, !llvm.loop !102

80:                                               ; preds = %13, %73, %3
  %81 = phi float [ 0.000000e+00, %3 ], [ %18, %13 ], [ %74, %73 ]
  %82 = phi float [ 0.000000e+00, %3 ], [ %17, %13 ], [ %75, %73 ]
  %83 = phi ptr [ null, %3 ], [ %16, %13 ], [ %76, %73 ]
  %84 = phi ptr [ %1, %3 ], [ %15, %13 ], [ %78, %73 ]
  %85 = phi i32 [ 0, %3 ], [ %14, %13 ], [ %77, %73 ]
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %101

87:                                               ; preds = %80
  %88 = sitofp i32 %85 to float
  %89 = fdiv float 1.000000e+00, %88
  %90 = fmul float %82, %89
  %91 = fmul float %81, %89
  %92 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !103
  %93 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !107
  %94 = sitofp i32 %93 to float
  %95 = fmul float %92, %94
  %96 = fdiv float %95, 7.200000e+01
  %97 = fdiv float %90, %96
  %98 = getelementptr inbounds %struct.bNode, ptr %83, i64 0, i32 24
  store float %97, ptr %98, align 8, !tbaa !46
  %99 = fdiv float %91, %96
  %100 = getelementptr inbounds %struct.bNode, ptr %83, i64 0, i32 25
  store float %99, ptr %100, align 4, !tbaa !48
  br label %101

101:                                              ; preds = %87, %80
  ret ptr %84
}

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

declare void @snode_notify(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @snode_dag_update(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @node_link_bezier_points(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @isect_line_line_v2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_insertlinkafter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @nodeAddLink(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @RNA_struct_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_string_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

declare ptr @BKE_image_load_exists(ptr noundef) local_unnamed_addr #2

declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #5

declare ptr @BKE_libblock_find_name(i16 noundef signext, ptr noundef) local_unnamed_addr #2

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_image_signal(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @WM_operator_filesel(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @id_us_plus(ptr noundef) local_unnamed_addr #2

declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @RNA_property_enum_identifier(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_property_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ntreeTypeFind(ptr noundef) local_unnamed_addr #2

declare ptr @ntreeAddTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @uiIDContextProperty(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_id_pointer_create(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_property_pointer_set(ptr noundef, ptr noundef, ptr noundef byval(%struct.PointerRNA) align 8) local_unnamed_addr #2

declare void @RNA_property_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_node_tree_update(ptr noundef) local_unnamed_addr #2

declare ptr @rna_node_tree_type_itemf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(none) }

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
!34 = !{!35, !36, i64 288}
!35 = !{!"SpaceNode", !36, i64 0, !36, i64 8, !39, i64 16, !40, i64 32, !41, i64 36, !37, i64 40, !42, i64 56, !36, i64 216, !36, i64 224, !45, i64 232, !45, i64 234, !41, i64 236, !41, i64 240, !41, i64 244, !41, i64 248, !41, i64 252, !37, i64 256, !39, i64 264, !36, i64 280, !36, i64 288, !37, i64 296, !40, i64 360, !40, i64 364, !45, i64 368, !45, i64 370, !45, i64 372, !45, i64 374, !39, i64 376, !36, i64 392}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"ListBase", !36, i64 0, !36, i64 8}
!40 = !{!"int", !37, i64 0}
!41 = !{!"float", !37, i64 0}
!42 = !{!"View2D", !43, i64 0, !43, i64 16, !44, i64 32, !44, i64 48, !44, i64 64, !37, i64 80, !37, i64 88, !41, i64 96, !41, i64 100, !45, i64 104, !45, i64 106, !45, i64 108, !45, i64 110, !45, i64 112, !45, i64 114, !45, i64 116, !45, i64 118, !45, i64 120, !45, i64 122, !45, i64 124, !45, i64 126, !36, i64 128, !40, i64 136, !40, i64 140, !36, i64 144, !36, i64 152}
!43 = !{!"rctf", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!44 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!45 = !{!"short", !37, i64 0}
!46 = !{!47, !41, i64 280}
!47 = !{!"bNode", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !37, i64 104, !40, i64 168, !45, i64 172, !45, i64 174, !45, i64 176, !45, i64 178, !45, i64 180, !45, i64 182, !45, i64 184, !45, i64 186, !37, i64 188, !39, i64 200, !39, i64 216, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !39, i64 264, !41, i64 280, !41, i64 284, !41, i64 288, !41, i64 292, !41, i64 296, !41, i64 300, !41, i64 304, !40, i64 308, !37, i64 312, !45, i64 376, !45, i64 378, !41, i64 380, !41, i64 384, !45, i64 388, !45, i64 390, !36, i64 392, !43, i64 400, !43, i64 416, !43, i64 432, !45, i64 448, !45, i64 450, !40, i64 452, !36, i64 456}
!48 = !{!47, !41, i64 284}
!49 = !{!35, !36, i64 280}
!50 = !{!51, !40, i64 256}
!51 = !{!"bNodeTree", !52, i64 0, !36, i64 120, !36, i64 128, !37, i64 136, !36, i64 200, !36, i64 208, !37, i64 216, !39, i64 224, !39, i64 240, !40, i64 256, !40, i64 260, !40, i64 264, !40, i64 268, !40, i64 272, !45, i64 276, !45, i64 278, !40, i64 280, !40, i64 284, !45, i64 288, !45, i64 290, !40, i64 292, !43, i64 296, !39, i64 312, !39, i64 328, !36, i64 344, !53, i64 352, !40, i64 356, !36, i64 360, !36, i64 368, !36, i64 376, !36, i64 384, !36, i64 392, !36, i64 400, !36, i64 408, !36, i64 416, !36, i64 424}
!52 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !45, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !36, i64 112}
!53 = !{!"bNodeInstanceKey", !40, i64 0}
!54 = !{!55, !36, i64 0}
!55 = !{!"wmOperatorType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !39, i64 112, !36, i64 128, !36, i64 136, !36, i64 144, !56, i64 152, !45, i64 184}
!56 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!57 = !{!55, !36, i64 8}
!58 = !{!55, !36, i64 24}
!59 = !{!55, !36, i64 48}
!60 = !{!55, !36, i64 64}
!61 = !{!55, !36, i64 32}
!62 = !{!55, !36, i64 56}
!63 = !{!55, !36, i64 72}
!64 = !{!55, !45, i64 184}
!65 = !{!55, !36, i64 88}
!66 = !{!67, !36, i64 112}
!67 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !45, i64 160, !37, i64 162}
!68 = !{!69, !40, i64 128}
!69 = !{!"CollectionPropertyIterator", !70, i64 0, !70, i64 24, !36, i64 48, !37, i64 56, !40, i64 96, !40, i64 100, !70, i64 104, !40, i64 128}
!70 = !{!"PointerRNA", !71, i64 0, !36, i64 8, !36, i64 16}
!71 = !{!"", !36, i64 0}
!72 = !{i64 0, i64 8, !73, i64 8, i64 8, !73, i64 16, i64 8, !73}
!73 = !{!36, !36, i64 0}
!74 = !{!41, !41, i64 0}
!75 = distinct !{!75, !76, !77}
!76 = !{!"llvm.loop.mustprogress"}
!77 = !{!"llvm.loop.unroll.disable"}
!78 = distinct !{!78, !76, !77}
!79 = distinct !{!79, !76, !77}
!80 = !{!81, !36, i64 32}
!81 = !{!"bNodeLink", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !40, i64 48, !40, i64 52}
!82 = !{!83, !36, i64 16}
!83 = !{!"bNodeSocketLink", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32}
!84 = !{!83, !36, i64 24}
!85 = distinct !{!85, !76, !77}
!86 = !{!81, !36, i64 40}
!87 = !{!81, !40, i64 48}
!88 = distinct !{!88, !76, !77}
!89 = !{!39, !36, i64 0}
!90 = distinct !{!90, !76, !77}
!91 = distinct !{!91, !76, !77}
!92 = !{!40, !40, i64 0}
!93 = !{!67, !36, i64 120}
!94 = !{!47, !36, i64 240}
!95 = !{i32 2, i32 5}
!96 = !{!51, !40, i64 100}
!97 = !{!81, !36, i64 16}
!98 = !{!47, !36, i64 200}
!99 = !{!47, !36, i64 216}
!100 = !{!81, !36, i64 24}
!101 = !{!83, !36, i64 0}
!102 = distinct !{!102, !76, !77}
!103 = !{!104, !41, i64 10908}
!104 = !{!"UserDef", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !40, i64 8468, !45, i64 8472, !45, i64 8474, !45, i64 8476, !45, i64 8478, !45, i64 8480, !45, i64 8482, !40, i64 8484, !40, i64 8488, !40, i64 8492, !45, i64 8496, !45, i64 8498, !40, i64 8500, !40, i64 8504, !40, i64 8508, !40, i64 8512, !40, i64 8516, !40, i64 8520, !40, i64 8524, !45, i64 8528, !45, i64 8530, !45, i64 8532, !45, i64 8534, !39, i64 8536, !39, i64 8552, !39, i64 8568, !39, i64 8584, !39, i64 8600, !39, i64 8616, !39, i64 8632, !37, i64 8648, !45, i64 8712, !45, i64 8714, !45, i64 8716, !45, i64 8718, !45, i64 8720, !45, i64 8722, !45, i64 8724, !45, i64 8726, !37, i64 8728, !45, i64 8896, !45, i64 8898, !45, i64 8900, !45, i64 8902, !45, i64 8904, !45, i64 8906, !45, i64 8908, !45, i64 8910, !40, i64 8912, !40, i64 8916, !45, i64 8920, !45, i64 8922, !45, i64 8924, !45, i64 8926, !45, i64 8928, !45, i64 8930, !45, i64 8932, !45, i64 8934, !45, i64 8936, !45, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !45, i64 8944, !45, i64 8946, !45, i64 8948, !45, i64 8950, !45, i64 8952, !45, i64 8954, !41, i64 8956, !41, i64 8960, !40, i64 8964, !45, i64 8968, !45, i64 8970, !41, i64 8972, !45, i64 8976, !45, i64 8978, !45, i64 8980, !45, i64 8982, !105, i64 8984, !37, i64 9760, !37, i64 9772, !45, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !40, i64 10896, !40, i64 10900, !41, i64 10904, !41, i64 10908, !40, i64 10912, !45, i64 10916, !45, i64 10918, !45, i64 10920, !45, i64 10922, !45, i64 10924, !45, i64 10926, !106, i64 10928}
!105 = !{!"ColorBand", !45, i64 0, !45, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!106 = !{!"WalkNavigation", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !45, i64 24, !37, i64 26}
!107 = !{!104, !40, i64 8524}
