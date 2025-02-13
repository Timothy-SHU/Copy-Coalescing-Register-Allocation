; ModuleID = 'blender/source/blender/nodes/intern/node_util.c'
source_filename = "blender/source/blender/nodes/intern/node_util.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.StructRNA = type opaque
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.bNodeSocket = type { ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], ptr, i16, i16, i16, i16, ptr, [64 x i8], float, float, ptr, i16, i16, i32, ptr, i32, i32, ptr, ptr, %struct.bNodeStack }
%struct.bNodeStack = type { [4 x float], float, float, ptr, i16, i16, i16, i16, i16, i16, [2 x i16] }
%struct.bNodeTree = type { %struct.ID, ptr, ptr, [64 x i8], ptr, ptr, [2 x float], %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i32, i32, i16, i16, i32, %struct.rctf, %struct.ListBase, %struct.ListBase, ptr, %struct.bNodeInstanceKey, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bNodeInstanceKey = type { i32 }
%struct.bNodeLink = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }

@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@ramp_blend_items = external global [0 x %struct.EnumPropertyItem], align 8
@node_math_items = external global [0 x %struct.EnumPropertyItem], align 8
@node_vec_math_items = external global [0 x %struct.EnumPropertyItem], align 8
@node_filter_items = external global [0 x %struct.EnumPropertyItem], align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [19 x i8] c"internal node link\00", align 1
@RNA_NodeSocket = external global %struct.StructRNA, align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"default_value\00", align 1
@switch.table.node_datatype_priority = private unnamed_addr constant [7 x i32] [i32 3, i32 -1, i32 4, i32 -1, i32 1, i32 -1, i32 2], align 4
@switch.table.node_datatype_priority.2 = private unnamed_addr constant [7 x i32] [i32 3, i32 4, i32 -1, i32 -1, i32 1, i32 -1, i32 2], align 4
@switch.table.node_datatype_priority.3 = private unnamed_addr constant [7 x i32] [i32 5, i32 1, i32 2, i32 -1, i32 3, i32 -1, i32 4], align 4
@switch.table.node_datatype_priority.4 = private unnamed_addr constant [7 x i32] [i32 4, i32 1, i32 2, i32 -1, i32 3, i32 -1, i32 5], align 4
@switch.table.node_datatype_priority.5 = private unnamed_addr constant [7 x i32] [i32 3, i32 1, i32 2, i32 -1, i32 5, i32 -1, i32 4], align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @node_free_curves(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 21
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  tail call void @curvemapping_free(ptr noundef %3) #4
  ret void
}

; Function Attrs: optsize
declare void @curvemapping_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @node_free_standard_storage(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 21
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %6(ptr noundef nonnull %3) #4
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @node_copy_curves(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 21
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = tail call ptr @curvemapping_copy(ptr noundef %5) #4
  %7 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 21
  store ptr %6, ptr %7, align 8, !tbaa !34
  ret void
}

; Function Attrs: optsize
declare ptr @curvemapping_copy(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @node_copy_standard_storage(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 21
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = tail call ptr %4(ptr noundef %6) #4
  %8 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 21
  store ptr %7, ptr %8, align 8, !tbaa !34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noalias noundef ptr @node_initexec_curves(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i32 %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 21
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  tail call void @curvemapping_initialize(ptr noundef %5) #4
  ret ptr null
}

; Function Attrs: optsize
declare void @curvemapping_initialize(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @node_blend_label(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5
  %6 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 33
  %7 = load i16, ptr %6, align 8, !tbaa !45
  %8 = sext i16 %7 to i32
  %9 = call zeroext i8 @RNA_enum_name(ptr noundef nonnull @ramp_blend_items, i32 noundef %8, ptr noundef nonnull %5) #4
  %10 = load ptr, ptr %5, align 8, !tbaa !44
  %11 = sext i32 %3 to i64
  %12 = call ptr @BLI_strncpy(ptr noundef %2, ptr noundef %10, i64 noundef %11) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare zeroext i8 @RNA_enum_name(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @node_math_label(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5
  %6 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 33
  %7 = load i16, ptr %6, align 8, !tbaa !45
  %8 = sext i16 %7 to i32
  %9 = call zeroext i8 @RNA_enum_name(ptr noundef nonnull @node_math_items, i32 noundef %8, ptr noundef nonnull %5) #4
  %10 = load ptr, ptr %5, align 8, !tbaa !44
  %11 = sext i32 %3 to i64
  %12 = call ptr @BLI_strncpy(ptr noundef %2, ptr noundef %10, i64 noundef %11) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @node_vect_math_label(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5
  %6 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 33
  %7 = load i16, ptr %6, align 8, !tbaa !45
  %8 = sext i16 %7 to i32
  %9 = call zeroext i8 @RNA_enum_name(ptr noundef nonnull @node_vec_math_items, i32 noundef %8, ptr noundef nonnull %5) #4
  %10 = load ptr, ptr %5, align 8, !tbaa !44
  %11 = sext i32 %3 to i64
  %12 = call ptr @BLI_strncpy(ptr noundef %2, ptr noundef %10, i64 noundef %11) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @node_filter_label(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5
  %6 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 33
  %7 = load i16, ptr %6, align 8, !tbaa !45
  %8 = sext i16 %7 to i32
  %9 = call zeroext i8 @RNA_enum_name(ptr noundef nonnull @node_filter_items, i32 noundef %8, ptr noundef nonnull %5) #4
  %10 = load ptr, ptr %5, align 8, !tbaa !44
  %11 = sext i32 %3 to i64
  %12 = call ptr @BLI_strncpy(ptr noundef %2, ptr noundef %10, i64 noundef %11) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @node_update_internal_links_default(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %65, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 18
  %6 = load ptr, ptr %5, align 8, !tbaa !44
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %4, %8
  %9 = phi ptr [ %11, %8 ], [ %6, %4 ]
  %10 = getelementptr inbounds %struct.bNodeSocket, ptr %9, i64 0, i32 23
  store ptr null, ptr %10, align 8, !tbaa !46
  %11 = load ptr, ptr %9, align 8, !tbaa !44
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %8, !llvm.loop !49

13:                                               ; preds = %8, %4
  %14 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !44
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 23
  br label %22

19:                                               ; preds = %57, %13
  %20 = load ptr, ptr %5, align 8, !tbaa !44
  %21 = icmp eq ptr %20, null
  br i1 %21, label %65, label %60

22:                                               ; preds = %17, %57
  %23 = phi ptr [ %15, %17 ], [ %58, %57 ]
  %24 = tail call i32 @nodeLinkIsHidden(ptr noundef nonnull %23) #4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %57

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.bNodeLink, ptr %23, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !51
  %29 = getelementptr inbounds %struct.bNodeLink, ptr %23, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !53
  %31 = icmp eq ptr %30, %1
  br i1 %31, label %32, label %57

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.bNodeSocket, ptr %28, i64 0, i32 23
  %34 = load ptr, ptr %33, align 8, !tbaa !46
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %57

36:                                               ; preds = %32
  %37 = tail call i32 @nodeSocketIsHidden(ptr noundef nonnull %28) #4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %57

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.bNodeSocket, ptr %28, i64 0, i32 8
  %41 = load i16, ptr %40, align 2, !tbaa !54
  %42 = and i16 %41, 512
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %39
  store ptr %23, ptr %33, align 8, !tbaa !46
  %45 = tail call fastcc ptr @select_internal_link_input(ptr noundef %1, ptr noundef nonnull %28) #6
  %46 = icmp eq ptr %45, null
  br i1 %46, label %57, label %47

47:                                               ; preds = %44
  %48 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %49 = tail call ptr %48(i64 noundef 56, ptr noundef nonnull @.str) #4
  %50 = getelementptr inbounds %struct.bNodeLink, ptr %49, i64 0, i32 2
  store ptr %1, ptr %50, align 8, !tbaa !53
  %51 = getelementptr inbounds %struct.bNodeLink, ptr %49, i64 0, i32 4
  store ptr %45, ptr %51, align 8, !tbaa !51
  %52 = getelementptr inbounds %struct.bNodeLink, ptr %49, i64 0, i32 3
  store ptr %1, ptr %52, align 8, !tbaa !55
  %53 = getelementptr inbounds %struct.bNodeLink, ptr %49, i64 0, i32 5
  store ptr %28, ptr %53, align 8, !tbaa !56
  %54 = getelementptr inbounds %struct.bNodeLink, ptr %49, i64 0, i32 6
  %55 = load i32, ptr %54, align 8, !tbaa !57
  %56 = or i32 %55, 2
  store i32 %56, ptr %54, align 8, !tbaa !57
  tail call void @BLI_addtail(ptr noundef nonnull %18, ptr noundef %49) #4
  br label %57

57:                                               ; preds = %44, %47, %36, %39, %26, %32, %22
  %58 = load ptr, ptr %23, align 8, !tbaa !44
  %59 = icmp eq ptr %58, null
  br i1 %59, label %19, label %22, !llvm.loop !58

60:                                               ; preds = %19, %60
  %61 = phi ptr [ %63, %60 ], [ %20, %19 ]
  %62 = getelementptr inbounds %struct.bNodeSocket, ptr %61, i64 0, i32 23
  store ptr null, ptr %62, align 8, !tbaa !46
  %63 = load ptr, ptr %61, align 8, !tbaa !44
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %60, !llvm.loop !59

65:                                               ; preds = %60, %19, %2
  ret void
}

; Function Attrs: optsize
declare i32 @nodeLinkIsHidden(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @nodeSocketIsHidden(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @select_internal_link_input(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !60 {
  %3 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !44
  %5 = icmp eq ptr %4, null
  br i1 %5, label %46, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bNodeSocket, ptr %1, i64 0, i32 7
  br label %8

8:                                                ; preds = %6, %40
  %9 = phi ptr [ %4, %6 ], [ %44, %40 ]
  %10 = phi ptr [ null, %6 ], [ %43, %40 ]
  %11 = phi i8 [ 0, %6 ], [ %42, %40 ]
  %12 = phi i32 [ -1, %6 ], [ %41, %40 ]
  %13 = getelementptr inbounds %struct.bNodeSocket, ptr %9, i64 0, i32 7
  %14 = load i16, ptr %13, align 8, !tbaa !61
  %15 = sext i16 %14 to i32
  %16 = load i16, ptr %7, align 8, !tbaa !61
  %17 = sext i16 %16 to i32
  %18 = tail call fastcc i32 @node_datatype_priority(i32 noundef %15, i32 noundef %17) #6, !range !62
  %19 = getelementptr inbounds %struct.bNodeSocket, ptr %9, i64 0, i32 23
  %20 = load ptr, ptr %19, align 8, !tbaa !46
  %21 = icmp ne ptr %20, null
  %22 = zext i1 %21 to i8
  %23 = tail call i32 @nodeSocketIsHidden(ptr noundef nonnull %9) #4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %8
  %26 = getelementptr inbounds %struct.bNodeSocket, ptr %9, i64 0, i32 8
  %27 = load i16, ptr %26, align 2, !tbaa !54
  %28 = and i16 %27, 512
  %29 = icmp ne i16 %28, 0
  %30 = icmp slt i32 %18, 0
  %31 = or i1 %30, %29
  %32 = icmp slt i32 %18, %12
  %33 = select i1 %31, i1 true, i1 %32
  br i1 %33, label %40, label %34

34:                                               ; preds = %25
  %35 = icmp sgt i32 %18, %12
  %36 = icmp eq i8 %11, 0
  %37 = select i1 %21, i1 %36, i1 false
  %38 = select i1 %35, i1 true, i1 %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %40

40:                                               ; preds = %34, %39, %8, %25
  %41 = phi i32 [ %12, %25 ], [ %12, %8 ], [ %18, %39 ], [ %12, %34 ]
  %42 = phi i8 [ %11, %25 ], [ %11, %8 ], [ %22, %39 ], [ %11, %34 ]
  %43 = phi ptr [ %10, %25 ], [ %10, %8 ], [ %9, %39 ], [ %10, %34 ]
  %44 = load ptr, ptr %9, align 8, !tbaa !44
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %8, !llvm.loop !63

46:                                               ; preds = %40, %2
  %47 = phi ptr [ null, %2 ], [ %43, %40 ]
  ret ptr %47
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @node_socket_get_float(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #5
  call void @RNA_pointer_create(ptr noundef %0, ptr noundef nonnull @RNA_NodeSocket, ptr noundef %2, ptr noundef nonnull %4) #4
  %5 = call float @RNA_float_get(ptr noundef nonnull %4, ptr noundef nonnull @.str.1) #4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #5
  ret float %5
}

; Function Attrs: optsize
declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @node_socket_set_float(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, float noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #5
  call void @RNA_pointer_create(ptr noundef %0, ptr noundef nonnull @RNA_NodeSocket, ptr noundef %2, ptr noundef nonnull %5) #4
  call void @RNA_float_set(ptr noundef nonnull %5, ptr noundef nonnull @.str.1, float noundef %3) #4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #5
  ret void
}

; Function Attrs: optsize
declare void @RNA_float_set(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @node_socket_get_color(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #5
  call void @RNA_pointer_create(ptr noundef %0, ptr noundef nonnull @RNA_NodeSocket, ptr noundef %2, ptr noundef nonnull %5) #4
  call void @RNA_float_get_array(ptr noundef nonnull %5, ptr noundef nonnull @.str.1, ptr noundef %3) #4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #5
  ret void
}

; Function Attrs: optsize
declare void @RNA_float_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @node_socket_set_color(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #5
  call void @RNA_pointer_create(ptr noundef %0, ptr noundef nonnull @RNA_NodeSocket, ptr noundef %2, ptr noundef nonnull %5) #4
  call void @RNA_float_set_array(ptr noundef nonnull %5, ptr noundef nonnull @.str.1, ptr noundef %3) #4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #5
  ret void
}

; Function Attrs: optsize
declare void @RNA_float_set_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @node_socket_get_vector(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #5
  call void @RNA_pointer_create(ptr noundef %0, ptr noundef nonnull @RNA_NodeSocket, ptr noundef %2, ptr noundef nonnull %5) #4
  call void @RNA_float_get_array(ptr noundef nonnull %5, ptr noundef nonnull @.str.1, ptr noundef %3) #4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @node_socket_set_vector(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #5
  call void @RNA_pointer_create(ptr noundef %0, ptr noundef nonnull @RNA_NodeSocket, ptr noundef %2, ptr noundef nonnull %5) #4
  call void @RNA_float_set_array(ptr noundef nonnull %5, ptr noundef nonnull @.str.1, ptr noundef %3) #4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @node_datatype_priority(i32 noundef %0, i32 noundef %1) unnamed_addr #3 !PGOFuncName !64 {
  switch i32 %1, label %39 [
    i32 2, label %3
    i32 1, label %5
    i32 0, label %7
    i32 6, label %9
    i32 4, label %11
    i32 3, label %13
    i32 7, label %16
  ]

3:                                                ; preds = %2
  %4 = icmp ult i32 %0, 7
  br i1 %4, label %19, label %39

5:                                                ; preds = %2
  %6 = icmp ult i32 %0, 7
  br i1 %6, label %23, label %39

7:                                                ; preds = %2
  %8 = icmp ult i32 %0, 7
  br i1 %8, label %27, label %39

9:                                                ; preds = %2
  %10 = icmp ult i32 %0, 7
  br i1 %10, label %31, label %39

11:                                               ; preds = %2
  %12 = icmp ult i32 %0, 7
  br i1 %12, label %35, label %39

13:                                               ; preds = %2
  %14 = icmp eq i32 %0, 3
  %15 = select i1 %14, i32 1, i32 -1
  br label %39

16:                                               ; preds = %2
  %17 = icmp eq i32 %0, 7
  %18 = select i1 %17, i32 1, i32 -1
  br label %39

19:                                               ; preds = %3
  %20 = zext nneg i32 %0 to i64
  %21 = getelementptr inbounds [7 x i32], ptr @switch.table.node_datatype_priority, i64 0, i64 %20
  %22 = load i32, ptr %21, align 4
  br label %39

23:                                               ; preds = %5
  %24 = zext nneg i32 %0 to i64
  %25 = getelementptr inbounds [7 x i32], ptr @switch.table.node_datatype_priority.2, i64 0, i64 %24
  %26 = load i32, ptr %25, align 4
  br label %39

27:                                               ; preds = %7
  %28 = zext nneg i32 %0 to i64
  %29 = getelementptr inbounds [7 x i32], ptr @switch.table.node_datatype_priority.3, i64 0, i64 %28
  %30 = load i32, ptr %29, align 4
  br label %39

31:                                               ; preds = %9
  %32 = zext nneg i32 %0 to i64
  %33 = getelementptr inbounds [7 x i32], ptr @switch.table.node_datatype_priority.4, i64 0, i64 %32
  %34 = load i32, ptr %33, align 4
  br label %39

35:                                               ; preds = %11
  %36 = zext nneg i32 %0 to i64
  %37 = getelementptr inbounds [7 x i32], ptr @switch.table.node_datatype_priority.5, i64 0, i64 %36
  %38 = load i32, ptr %37, align 4
  br label %39

39:                                               ; preds = %11, %35, %9, %31, %7, %27, %5, %23, %3, %19, %2, %16, %13
  %40 = phi i32 [ %15, %13 ], [ %18, %16 ], [ -1, %2 ], [ %22, %19 ], [ -1, %3 ], [ %26, %23 ], [ -1, %5 ], [ %30, %27 ], [ -1, %7 ], [ %34, %31 ], [ -1, %9 ], [ %38, %35 ], [ -1, %11 ]
  ret i32 %40
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind optsize }
attributes #5 = { nounwind }
attributes #6 = { optsize }

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
!34 = !{!35, !36, i64 248}
!35 = !{!"bNode", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !37, i64 104, !39, i64 168, !40, i64 172, !40, i64 174, !40, i64 176, !40, i64 178, !40, i64 180, !40, i64 182, !40, i64 184, !40, i64 186, !37, i64 188, !41, i64 200, !41, i64 216, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !41, i64 264, !42, i64 280, !42, i64 284, !42, i64 288, !42, i64 292, !42, i64 296, !42, i64 300, !42, i64 304, !39, i64 308, !37, i64 312, !40, i64 376, !40, i64 378, !42, i64 380, !42, i64 384, !40, i64 388, !40, i64 390, !36, i64 392, !43, i64 400, !43, i64 416, !43, i64 432, !40, i64 448, !40, i64 450, !39, i64 452, !36, i64 456}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"short", !37, i64 0}
!41 = !{!"ListBase", !36, i64 0, !36, i64 8}
!42 = !{!"float", !37, i64 0}
!43 = !{!"rctf", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12}
!44 = !{!36, !36, i64 0}
!45 = !{!35, !40, i64 376}
!46 = !{!47, !36, i64 296}
!47 = !{!"bNodeSocket", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !37, i64 96, !36, i64 160, !40, i64 168, !40, i64 170, !40, i64 172, !40, i64 174, !36, i64 176, !37, i64 184, !42, i64 248, !42, i64 252, !36, i64 256, !40, i64 264, !40, i64 266, !39, i64 268, !36, i64 272, !39, i64 280, !39, i64 284, !36, i64 288, !36, i64 296, !48, i64 304}
!48 = !{!"bNodeStack", !37, i64 0, !42, i64 16, !42, i64 20, !36, i64 24, !40, i64 32, !40, i64 34, !40, i64 36, !40, i64 38, !40, i64 40, !40, i64 42, !37, i64 44}
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!52, !36, i64 32}
!52 = !{!"bNodeLink", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !39, i64 48, !39, i64 52}
!53 = !{!52, !36, i64 16}
!54 = !{!47, !40, i64 170}
!55 = !{!52, !36, i64 24}
!56 = !{!52, !36, i64 40}
!57 = !{!52, !39, i64 48}
!58 = distinct !{!58, !50}
!59 = distinct !{!59, !50}
!60 = !{!"node_util.c:select_internal_link_input"}
!61 = !{!47, !40, i64 168}
!62 = !{i32 -1, i32 6}
!63 = distinct !{!63, !50}
!64 = !{!"node_util.c:node_datatype_priority"}
