; ModuleID = 'blender/source/blender/nodes/intern/node_common.c'
source_filename = "blender/source/blender/nodes/intern/node_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.bNodeSocket = type { ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], ptr, i16, i16, i16, i16, ptr, [64 x i8], float, float, ptr, i16, i16, i32, ptr, i32, i32, ptr, ptr, %struct.bNodeStack }
%struct.bNodeStack = type { [4 x float], float, float, ptr, i16, i16, i16, i16, i16, i16, [2 x i16] }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bNodeType = type { ptr, ptr, i16, [64 x i8], i32, [64 x i8], [256 x i8], i32, float, float, float, float, float, float, i16, i16, i16, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.bNodeTree = type { %struct.ID, ptr, ptr, [64 x i8], ptr, ptr, [2 x float], %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i32, i32, i16, i16, i32, %struct.rctf, %struct.ListBase, %struct.ListBase, ptr, %struct.bNodeInstanceKey, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bNodeInstanceKey = type { i32 }
%struct.NodeFrame = type { i16, i16 }
%struct.bNodeLink = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.bNodeSocketType = type { [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ExtensionRNA, %struct.ExtensionRNA, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"Missing Datablock\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"frame node type\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Frame\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"NodeFrame\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Reroute\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"NodeSocketVirtual\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"__extend__\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"node type\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"Group Input\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"Group Output\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"interface\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"frame node storage\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"Input\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"Output\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"internal node link\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"temporary link\00", align 1

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @node_group_find_input_socket(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 17
  br label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ %3, %2 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.bNodeSocket, ptr %6, i64 0, i32 4
  %10 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %1) #11
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %4, !llvm.loop !38

12:                                               ; preds = %4, %8
  ret ptr %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @node_group_find_output_socket(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 18
  br label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ %3, %2 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.bNodeSocket, ptr %6, i64 0, i32 4
  %10 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %1) #11
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %4, !llvm.loop !40

12:                                               ; preds = %4, %8
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @node_group_label(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #3 {
  %5 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 20
  %6 = load ptr, ptr %5, align 8, !tbaa !41
  %7 = icmp eq ptr %6, null
  %8 = getelementptr inbounds %struct.ID, ptr %6, i64 0, i32 4, i64 2
  %9 = select i1 %7, ptr @.str, ptr %8
  %10 = sext i32 %3 to i64
  %11 = tail call ptr @BLI_strncpy(ptr noundef %2, ptr noundef nonnull %9, i64 noundef %10) #12
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @node_group_poll_instance(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !48
  %5 = getelementptr inbounds %struct.bNodeType, ptr %4, i64 0, i32 37
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  %7 = tail call i32 %6(ptr noundef %4, ptr noundef %1) #12
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 20
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = tail call i32 @nodeGroupPoll(ptr noundef %1, ptr noundef nonnull %11) #13, !range !52
  br label %15

15:                                               ; preds = %2, %13, %9
  %16 = phi i32 [ %14, %13 ], [ 1, %9 ], [ 0, %2 ]
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @nodeGroupPoll(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #3 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %23, label %4

4:                                                ; preds = %2
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %23, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %23, label %10

10:                                               ; preds = %6, %20
  %11 = phi ptr [ %21, %20 ], [ %8, %6 ]
  %12 = getelementptr inbounds %struct.bNode, ptr %11, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !48
  %14 = getelementptr inbounds %struct.bNodeType, ptr %13, i64 0, i32 38
  %15 = load ptr, ptr %14, align 8, !tbaa !53
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %10
  %18 = tail call i32 %15(ptr noundef nonnull %11, ptr noundef %0) #12
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %10, %17
  %21 = load ptr, ptr %11, align 8, !tbaa !34
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %10, !llvm.loop !54

23:                                               ; preds = %17, %20, %6, %4, %2
  %24 = phi i32 [ 1, %2 ], [ 0, %4 ], [ 1, %6 ], [ 0, %17 ], [ 1, %20 ]
  ret i32 %24
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @node_group_verify(ptr noundef %0, ptr noundef %1, ptr noundef readnone %2) local_unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !41
  %6 = icmp eq ptr %5, %2
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.bNodeTree, ptr %2, i64 0, i32 22
  %9 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 17
  tail call fastcc void @group_verify_socket_list(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %8, ptr noundef nonnull %9, i32 noundef 1) #13
  %10 = getelementptr inbounds %struct.bNodeTree, ptr %2, i64 0, i32 23
  %11 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 18
  tail call fastcc void @group_verify_socket_list(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %10, ptr noundef nonnull %11, i32 noundef 2) #13
  br label %12

12:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @group_verify_socket_list(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i32 noundef %4) unnamed_addr #3 !PGOFuncName !55 {
  %6 = load ptr, ptr %2, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %5, %8
  %9 = phi ptr [ %12, %8 ], [ %6, %5 ]
  %10 = tail call fastcc ptr @group_verify_socket(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %9, ptr noundef %3, i32 noundef %4) #13
  %11 = getelementptr inbounds %struct.bNodeSocket, ptr %9, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !56
  %12 = load ptr, ptr %9, align 8, !tbaa !34
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %8, !llvm.loop !59

14:                                               ; preds = %8, %5
  %15 = load ptr, ptr %3, align 8, !tbaa !60
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %20, %14
  %18 = load ptr, ptr %2, align 8, !tbaa !34
  %19 = icmp eq ptr %18, null
  br i1 %19, label %33, label %24

20:                                               ; preds = %14, %20
  %21 = phi ptr [ %22, %20 ], [ %15, %14 ]
  %22 = load ptr, ptr %21, align 8, !tbaa !61
  tail call void @nodeRemoveSocket(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %21) #12
  %23 = icmp eq ptr %22, null
  br i1 %23, label %17, label %20, !llvm.loop !62

24:                                               ; preds = %17, %30
  %25 = phi ptr [ %31, %30 ], [ %18, %17 ]
  %26 = getelementptr inbounds %struct.bNodeSocket, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !56
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  tail call void @BLI_addtail(ptr noundef nonnull %3, ptr noundef nonnull %27) #12
  store ptr null, ptr %26, align 8, !tbaa !56
  br label %30

30:                                               ; preds = %24, %29
  %31 = load ptr, ptr %25, align 8, !tbaa !34
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %24, !llvm.loop !63

33:                                               ; preds = %30, %17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @register_node_type_frame() local_unnamed_addr #3 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %2 = tail call ptr %1(i64 noundef 752, ptr noundef nonnull @.str.1) #12
  tail call void @node_type_base(ptr noundef %2, i32 noundef 5, ptr noundef nonnull @.str.2, i16 noundef signext 100, i16 noundef signext 4096) #12
  tail call void @node_type_init(ptr noundef %2, ptr noundef nonnull @node_frame_init) #12
  tail call void @node_type_storage(ptr noundef %2, ptr noundef nonnull @.str.3, ptr noundef nonnull @node_free_standard_storage, ptr noundef nonnull @node_copy_standard_storage) #12
  tail call void @node_type_size(ptr noundef %2, i32 noundef 150, i32 noundef 100, i32 noundef 0) #12
  tail call void @node_type_compatibility(ptr noundef %2, i16 noundef signext 3) #12
  %3 = getelementptr inbounds %struct.bNodeType, ptr %2, i64 0, i32 2
  store i16 1, ptr %3, align 8, !tbaa !64
  tail call void @nodeRegisterType(ptr noundef %2) #12
  ret void
}

; Function Attrs: optsize
declare void @node_type_base(ptr noundef, i32 noundef, ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: optsize
declare void @node_type_init(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_frame_init(ptr nocapture readnone %0, ptr nocapture noundef writeonly %1) #3 !PGOFuncName !65 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %4 = tail call ptr %3(i64 noundef 4, ptr noundef nonnull @.str.12) #12
  %5 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 21
  store ptr %4, ptr %5, align 8, !tbaa !66
  %6 = load i16, ptr %4, align 2, !tbaa !67
  %7 = or i16 %6, 1
  store i16 %7, ptr %4, align 2, !tbaa !67
  %8 = getelementptr inbounds %struct.NodeFrame, ptr %4, i64 0, i32 1
  store i16 20, ptr %8, align 2, !tbaa !69
  ret void
}

; Function Attrs: optsize
declare void @node_type_storage(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @node_free_standard_storage(ptr noundef) #4

; Function Attrs: optsize
declare void @node_copy_standard_storage(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: optsize
declare void @node_type_size(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @node_type_compatibility(ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: optsize
declare void @nodeRegisterType(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @register_node_type_reroute() local_unnamed_addr #3 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %2 = tail call ptr %1(i64 noundef 752, ptr noundef nonnull @.str.1) #12
  tail call void @node_type_base(ptr noundef %2, i32 noundef 6, ptr noundef nonnull @.str.4, i16 noundef signext 100, i16 noundef signext 0) #12
  tail call void @node_type_init(ptr noundef %2, ptr noundef nonnull @node_reroute_init) #12
  tail call void @node_type_internal_links(ptr noundef %2, ptr noundef nonnull @node_reroute_update_internal_links) #12
  %3 = getelementptr inbounds %struct.bNodeType, ptr %2, i64 0, i32 2
  store i16 1, ptr %3, align 8, !tbaa !64
  tail call void @nodeRegisterType(ptr noundef %2) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_reroute_init(ptr noundef %0, ptr noundef %1) #3 !PGOFuncName !70 {
  %3 = tail call ptr @nodeAddStaticSocket(ptr noundef %0, ptr noundef %1, i32 noundef 1, i32 noundef 2, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.13) #12
  %4 = tail call ptr @nodeAddStaticSocket(ptr noundef %0, ptr noundef %1, i32 noundef 2, i32 noundef 2, i32 noundef 0, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.14) #12
  ret void
}

; Function Attrs: optsize
declare void @node_type_internal_links(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_reroute_update_internal_links(ptr noundef readnone %0, ptr noundef %1) #3 !PGOFuncName !71 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %6 = tail call ptr %5(i64 noundef 56, ptr noundef nonnull @.str.15) #12
  %7 = getelementptr inbounds %struct.bNodeLink, ptr %6, i64 0, i32 2
  store ptr %1, ptr %7, align 8, !tbaa !72
  %8 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 17
  %9 = load ptr, ptr %8, align 8, !tbaa !74
  %10 = getelementptr inbounds %struct.bNodeLink, ptr %6, i64 0, i32 4
  store ptr %9, ptr %10, align 8, !tbaa !75
  %11 = getelementptr inbounds %struct.bNodeLink, ptr %6, i64 0, i32 3
  store ptr %1, ptr %11, align 8, !tbaa !76
  %12 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 18
  %13 = load ptr, ptr %12, align 8, !tbaa !77
  %14 = getelementptr inbounds %struct.bNodeLink, ptr %6, i64 0, i32 5
  store ptr %13, ptr %14, align 8, !tbaa !78
  %15 = getelementptr inbounds %struct.bNodeLink, ptr %6, i64 0, i32 6
  %16 = load i32, ptr %15, align 8, !tbaa !79
  %17 = or i32 %16, 2
  store i32 %17, ptr %15, align 8, !tbaa !79
  %18 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 23
  tail call void @BLI_addtail(ptr noundef nonnull %18, ptr noundef %6) #12
  br label %19

19:                                               ; preds = %2, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ntree_update_reroute_nodes(ptr noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %24, label %6

5:                                                ; preds = %6
  br i1 %4, label %24, label %11

6:                                                ; preds = %1, %6
  %7 = phi ptr [ %9, %6 ], [ %3, %1 ]
  %8 = getelementptr inbounds %struct.bNode, ptr %7, i64 0, i32 10
  store i16 0, ptr %8, align 8, !tbaa !80
  %9 = load ptr, ptr %7, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %5, label %6, !llvm.loop !81

11:                                               ; preds = %5, %21
  %12 = phi ptr [ %22, %21 ], [ %3, %5 ]
  %13 = getelementptr inbounds %struct.bNode, ptr %12, i64 0, i32 8
  %14 = load i16, ptr %13, align 4, !tbaa !82
  %15 = icmp eq i16 %14, 6
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.bNode, ptr %12, i64 0, i32 10
  %18 = load i16, ptr %17, align 8, !tbaa !80
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  tail call fastcc void @node_reroute_inherit_type_recursive(ptr noundef %0, ptr noundef nonnull %12) #13
  br label %21

21:                                               ; preds = %11, %16, %20
  %22 = load ptr, ptr %12, align 8, !tbaa !34
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %11, !llvm.loop !83

24:                                               ; preds = %21, %1, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @node_reroute_inherit_type_recursive(ptr noundef %0, ptr noundef %1) unnamed_addr #3 !PGOFuncName !84 {
  %3 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !74
  %5 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 18
  %6 = load ptr, ptr %5, align 8, !tbaa !77
  %7 = tail call ptr @nodeStaticSocketType(i32 noundef 0, i32 noundef 0) #12
  %8 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 10
  store i16 1, ptr %8, align 8, !tbaa !80
  %9 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = icmp eq ptr %10, null
  br i1 %11, label %49, label %12

12:                                               ; preds = %2, %46
  %13 = phi ptr [ %47, %46 ], [ %10, %2 ]
  %14 = getelementptr inbounds %struct.bNodeLink, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !72
  %16 = getelementptr inbounds %struct.bNodeLink, ptr %13, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !76
  %18 = icmp ne ptr %17, null
  %19 = icmp ne ptr %15, null
  %20 = select i1 %18, i1 %19, i1 false
  br i1 %20, label %21, label %46

21:                                               ; preds = %12
  %22 = tail call i32 @nodeLinkIsHidden(ptr noundef nonnull %13) #12
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %46

24:                                               ; preds = %21
  %25 = icmp eq ptr %17, %1
  br i1 %25, label %26, label %35

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.bNode, ptr %15, i64 0, i32 8
  %28 = load i16, ptr %27, align 4, !tbaa !82
  %29 = icmp eq i16 %28, 6
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.bNode, ptr %15, i64 0, i32 10
  %32 = load i16, ptr %31, align 8, !tbaa !80
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  tail call fastcc void @node_reroute_inherit_type_recursive(ptr noundef %0, ptr noundef nonnull %15) #13
  br label %35

35:                                               ; preds = %34, %30, %26, %24
  %36 = icmp eq ptr %15, %1
  br i1 %36, label %37, label %46

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.bNode, ptr %17, i64 0, i32 8
  %39 = load i16, ptr %38, align 4, !tbaa !82
  %40 = icmp eq i16 %39, 6
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.bNode, ptr %17, i64 0, i32 10
  %43 = load i16, ptr %42, align 8, !tbaa !80
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  tail call fastcc void @node_reroute_inherit_type_recursive(ptr noundef %0, ptr noundef nonnull %17) #13
  br label %46

46:                                               ; preds = %35, %37, %41, %45, %21, %12
  %47 = load ptr, ptr %13, align 8, !tbaa !34
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %12, !llvm.loop !85

49:                                               ; preds = %46, %2
  %50 = getelementptr inbounds %struct.bNodeSocket, ptr %4, i64 0, i32 9
  %51 = load i16, ptr %50, align 4, !tbaa !86
  %52 = icmp eq i16 %51, 1
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.bNodeSocket, ptr %4, i64 0, i32 23
  %55 = load ptr, ptr %54, align 8, !tbaa !87
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.bNodeLink, ptr %55, i64 0, i32 4
  br label %69

59:                                               ; preds = %53, %49
  %60 = getelementptr inbounds %struct.bNodeSocket, ptr %6, i64 0, i32 9
  %61 = load i16, ptr %60, align 4, !tbaa !86
  %62 = icmp eq i16 %61, 1
  br i1 %62, label %63, label %76

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.bNodeSocket, ptr %6, i64 0, i32 23
  %65 = load ptr, ptr %64, align 8, !tbaa !87
  %66 = icmp eq ptr %65, null
  br i1 %66, label %76, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.bNodeLink, ptr %65, i64 0, i32 5
  br label %69

69:                                               ; preds = %57, %67
  %70 = phi ptr [ %58, %57 ], [ %68, %67 ]
  %71 = load ptr, ptr %70, align 8, !tbaa !34
  %72 = getelementptr inbounds %struct.bNodeSocket, ptr %71, i64 0, i32 7
  %73 = load i16, ptr %72, align 8, !tbaa !88
  %74 = sext i16 %73 to i32
  %75 = tail call ptr @nodeStaticSocketType(i32 noundef %74, i32 noundef 0) #12
  br label %76

76:                                               ; preds = %69, %59, %63
  %77 = phi ptr [ %7, %63 ], [ %7, %59 ], [ %75, %69 ]
  %78 = phi i32 [ 0, %63 ], [ 0, %59 ], [ %74, %69 ]
  %79 = getelementptr inbounds %struct.bNodeSocket, ptr %4, i64 0, i32 7
  %80 = load i16, ptr %79, align 8, !tbaa !88
  %81 = sext i16 %80 to i32
  %82 = icmp eq i32 %78, %81
  br i1 %82, label %99, label %83

83:                                               ; preds = %76
  %84 = tail call ptr @nodeAddSocket(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef %77, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.13) #12
  %85 = load ptr, ptr %9, align 8, !tbaa !34
  %86 = icmp eq ptr %85, null
  br i1 %86, label %98, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.bNodeSocket, ptr %84, i64 0, i32 23
  br label %89

89:                                               ; preds = %87, %95
  %90 = phi ptr [ %85, %87 ], [ %96, %95 ]
  %91 = getelementptr inbounds %struct.bNodeLink, ptr %90, i64 0, i32 5
  %92 = load ptr, ptr %91, align 8, !tbaa !78
  %93 = icmp eq ptr %92, %4
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  store ptr %84, ptr %91, align 8, !tbaa !78
  store ptr %90, ptr %88, align 8, !tbaa !87
  br label %95

95:                                               ; preds = %89, %94
  %96 = load ptr, ptr %90, align 8, !tbaa !34
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %89, !llvm.loop !89

98:                                               ; preds = %95, %83
  tail call void @nodeRemoveSocket(ptr noundef %0, ptr noundef %1, ptr noundef %4) #12
  br label %99

99:                                               ; preds = %98, %76
  %100 = getelementptr inbounds %struct.bNodeSocket, ptr %6, i64 0, i32 7
  %101 = load i16, ptr %100, align 8, !tbaa !88
  %102 = sext i16 %101 to i32
  %103 = icmp eq i32 %78, %102
  br i1 %103, label %118, label %104

104:                                              ; preds = %99
  %105 = tail call ptr @nodeAddSocket(ptr noundef %0, ptr noundef %1, i32 noundef 2, ptr noundef %77, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.14) #12
  %106 = load ptr, ptr %9, align 8, !tbaa !34
  %107 = icmp eq ptr %106, null
  br i1 %107, label %117, label %108

108:                                              ; preds = %104, %114
  %109 = phi ptr [ %115, %114 ], [ %106, %104 ]
  %110 = getelementptr inbounds %struct.bNodeLink, ptr %109, i64 0, i32 4
  %111 = load ptr, ptr %110, align 8, !tbaa !75
  %112 = icmp eq ptr %111, %6
  br i1 %112, label %113, label %114

113:                                              ; preds = %108
  store ptr %105, ptr %110, align 8, !tbaa !75
  br label %114

114:                                              ; preds = %108, %113
  %115 = load ptr, ptr %109, align 8, !tbaa !34
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %108, !llvm.loop !90

117:                                              ; preds = %114, %104
  tail call void @nodeRemoveSocket(ptr noundef %0, ptr noundef %1, ptr noundef %6) #12
  br label %118

118:                                              ; preds = %117, %99
  tail call void @nodeUpdateInternalLinks(ptr noundef %0, ptr noundef %1) #12
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @BKE_node_is_connected_to_output(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %9, %6 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.bNode, ptr %7, i64 0, i32 10
  store i16 0, ptr %8, align 8, !tbaa !80
  %9 = load ptr, ptr %7, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %6, !llvm.loop !91

11:                                               ; preds = %6, %2
  %12 = tail call fastcc zeroext i8 @node_is_connected_to_output_recursive(ptr noundef %0, ptr noundef %1) #13, !range !92
  ret i8 %12
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @node_is_connected_to_output_recursive(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #5 !PGOFuncName !93 {
  %3 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 10
  %4 = load i16, ptr %3, align 8, !tbaa !80
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %34

6:                                                ; preds = %2
  store i16 1, ptr %3, align 8, !tbaa !80
  %7 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = getelementptr inbounds %struct.bNodeType, ptr %8, i64 0, i32 14
  %10 = load i16, ptr %9, align 4, !tbaa !94
  %11 = icmp eq i16 %10, 1
  br i1 %11, label %12, label %17

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 7
  %14 = load i32, ptr %13, align 8, !tbaa !95
  %15 = and i32 %14, 64
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %12, %6
  %18 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 8
  %19 = load ptr, ptr %18, align 8, !tbaa !34
  %20 = icmp eq ptr %19, null
  br i1 %20, label %34, label %21

21:                                               ; preds = %17, %31
  %22 = phi ptr [ %32, %31 ], [ %19, %17 ]
  %23 = getelementptr inbounds %struct.bNodeLink, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !72
  %25 = icmp eq ptr %24, %1
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.bNodeLink, ptr %22, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !76
  %29 = tail call fastcc zeroext i8 @node_is_connected_to_output_recursive(ptr noundef %0, ptr noundef %28) #13, !range !92
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %21, %26
  %32 = load ptr, ptr %22, align 8, !tbaa !34
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %21, !llvm.loop !96

34:                                               ; preds = %26, %31, %17, %12, %2
  %35 = phi i8 [ 0, %2 ], [ 1, %12 ], [ 0, %17 ], [ 1, %26 ], [ 0, %31 ]
  ret i8 %35
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_node_tree_unlink_id(ptr noundef readnone %0, ptr nocapture noundef readonly %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %2, %12
  %7 = phi ptr [ %13, %12 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.bNode, ptr %7, i64 0, i32 20
  %9 = load ptr, ptr %8, align 8, !tbaa !41
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  store ptr null, ptr %8, align 8, !tbaa !41
  br label %12

12:                                               ; preds = %6, %11
  %13 = load ptr, ptr %7, align 8, !tbaa !34
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %6, !llvm.loop !97

15:                                               ; preds = %12, %2
  ret void
}

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @node_group_input_find_socket(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 18
  br label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ %3, %2 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.bNodeSocket, ptr %6, i64 0, i32 4
  %10 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %1) #11
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %4, !llvm.loop !98

12:                                               ; preds = %4, %8
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @node_group_input_verify(ptr noundef readnone %0, ptr noundef %1, ptr noundef readnone %2) #3 {
  %4 = icmp eq ptr %2, %0
  br i1 %4, label %5, label %9

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.bNodeTree, ptr %2, i64 0, i32 22
  %7 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 18
  tail call fastcc void @group_verify_socket_list(ptr noundef %2, ptr noundef %1, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef 2) #13
  %8 = tail call ptr @nodeAddSocket(ptr noundef %2, ptr noundef %1, i32 noundef 2, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #12
  br label %9

9:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: optsize
declare ptr @nodeAddSocket(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @register_node_type_group_input() local_unnamed_addr #3 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %2 = tail call ptr %1(i64 noundef 752, ptr noundef nonnull @.str.8) #12
  tail call void @node_type_base(ptr noundef %2, i32 noundef 7, ptr noundef nonnull @.str.9, i16 noundef signext 33, i16 noundef signext 0) #12
  tail call void @node_type_size(ptr noundef %2, i32 noundef 140, i32 noundef 80, i32 noundef 400) #12
  tail call void @node_type_init(ptr noundef %2, ptr noundef nonnull @node_group_input_init) #12
  tail call void @node_type_update(ptr noundef %2, ptr noundef nonnull @node_group_input_update, ptr noundef nonnull @node_group_input_verify) #12
  tail call void @node_type_compatibility(ptr noundef %2, i16 noundef signext 3) #12
  %3 = getelementptr inbounds %struct.bNodeType, ptr %2, i64 0, i32 2
  store i16 1, ptr %3, align 8, !tbaa !64
  tail call void @nodeRegisterType(ptr noundef %2) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_group_input_init(ptr noundef %0, ptr noundef %1) #3 !PGOFuncName !99 {
  tail call void @node_group_input_verify(ptr noundef %0, ptr noundef %1, ptr noundef %0) #13
  ret void
}

; Function Attrs: optsize
declare void @node_type_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_group_input_update(ptr noundef %0, ptr noundef %1) #3 !PGOFuncName !100 {
  %3 = alloca %struct.ListBase, align 8
  %4 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 18, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #14
  call fastcc void @BLI_listbase_clear(ptr noundef nonnull %3) #13
  %6 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !102
  %8 = icmp eq ptr %7, null
  br i1 %8, label %23, label %9

9:                                                ; preds = %2, %21
  %10 = phi ptr [ %11, %21 ], [ %7, %2 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !106
  %12 = call i32 @nodeLinkIsHidden(ptr noundef nonnull %10) #12
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.bNodeLink, ptr %10, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !75
  %17 = icmp eq ptr %16, %5
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %20 = call ptr %19(i64 noundef 56, ptr noundef nonnull @.str.18) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %20, ptr noundef nonnull align 8 dereferenceable(56) %10, i64 56, i1 false), !tbaa.struct !107
  call void @BLI_addtail(ptr noundef nonnull %3, ptr noundef %20) #12
  call void @nodeRemLink(ptr noundef %0, ptr noundef nonnull %10) #12
  br label %21

21:                                               ; preds = %14, %18, %9
  %22 = icmp eq ptr %11, null
  br i1 %22, label %23, label %9, !llvm.loop !109

23:                                               ; preds = %21, %2
  br label %24

24:                                               ; preds = %23, %28
  %25 = phi ptr [ %26, %28 ], [ %3, %23 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !34
  %27 = icmp eq ptr %26, null
  br i1 %27, label %51, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.bNodeLink, ptr %26, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !78
  %31 = getelementptr inbounds %struct.bNodeSocket, ptr %30, i64 0, i32 7
  %32 = load i16, ptr %31, align 8, !tbaa !88
  %33 = icmp eq i16 %32, -1
  br i1 %33, label %24, label %34, !llvm.loop !110

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.bNodeLink, ptr %26, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !76
  %37 = call ptr @ntreeAddSocketInterfaceFromSocket(ptr noundef %0, ptr noundef %36, ptr noundef nonnull %30) #12
  call void @node_group_input_verify(ptr noundef %0, ptr noundef %1, ptr noundef %0) #13
  %38 = getelementptr inbounds %struct.bNodeSocket, ptr %37, i64 0, i32 4
  %39 = call ptr @node_group_input_find_socket(ptr noundef %1, ptr noundef nonnull %38) #13
  %40 = load ptr, ptr %3, align 8, !tbaa !34
  %41 = icmp eq ptr %40, null
  br i1 %41, label %51, label %42

42:                                               ; preds = %34, %42
  %43 = phi ptr [ %49, %42 ], [ %40, %34 ]
  %44 = getelementptr inbounds %struct.bNodeLink, ptr %43, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !76
  %46 = getelementptr inbounds %struct.bNodeLink, ptr %43, i64 0, i32 5
  %47 = load ptr, ptr %46, align 8, !tbaa !78
  %48 = call ptr @nodeAddLink(ptr noundef %0, ptr noundef %1, ptr noundef %39, ptr noundef %45, ptr noundef %47) #12
  %49 = load ptr, ptr %43, align 8, !tbaa !34
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %42, !llvm.loop !111

51:                                               ; preds = %24, %42, %34
  call void @BLI_freelistN(ptr noundef nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #14
  ret void
}

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @node_group_output_find_socket(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 17
  br label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ %3, %2 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.bNodeSocket, ptr %6, i64 0, i32 4
  %10 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %1) #11
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %4, !llvm.loop !112

12:                                               ; preds = %4, %8
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @node_group_output_verify(ptr noundef readnone %0, ptr noundef %1, ptr noundef readnone %2) #3 {
  %4 = icmp eq ptr %2, %0
  br i1 %4, label %5, label %9

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.bNodeTree, ptr %2, i64 0, i32 23
  %7 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 17
  tail call fastcc void @group_verify_socket_list(ptr noundef %2, ptr noundef %1, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef 1) #13
  %8 = tail call ptr @nodeAddSocket(ptr noundef %2, ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #12
  br label %9

9:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @register_node_type_group_output() local_unnamed_addr #3 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %2 = tail call ptr %1(i64 noundef 752, ptr noundef nonnull @.str.8) #12
  tail call void @node_type_base(ptr noundef %2, i32 noundef 8, ptr noundef nonnull @.str.10, i16 noundef signext 33, i16 noundef signext 0) #12
  tail call void @node_type_size(ptr noundef %2, i32 noundef 140, i32 noundef 80, i32 noundef 400) #12
  tail call void @node_type_init(ptr noundef %2, ptr noundef nonnull @node_group_output_init) #12
  tail call void @node_type_update(ptr noundef %2, ptr noundef nonnull @node_group_output_update, ptr noundef nonnull @node_group_output_verify) #12
  tail call void @node_type_compatibility(ptr noundef %2, i16 noundef signext 3) #12
  %3 = getelementptr inbounds %struct.bNodeType, ptr %2, i64 0, i32 2
  store i16 1, ptr %3, align 8, !tbaa !64
  tail call void @nodeRegisterType(ptr noundef %2) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_group_output_init(ptr noundef %0, ptr noundef %1) #3 !PGOFuncName !113 {
  tail call void @node_group_output_verify(ptr noundef %0, ptr noundef %1, ptr noundef %0) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_group_output_update(ptr noundef %0, ptr noundef %1) #3 !PGOFuncName !114 {
  %3 = alloca %struct.ListBase, align 8
  %4 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 17, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #14
  call fastcc void @BLI_listbase_clear(ptr noundef nonnull %3) #13
  %6 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !102
  %8 = icmp eq ptr %7, null
  br i1 %8, label %23, label %9

9:                                                ; preds = %2, %21
  %10 = phi ptr [ %11, %21 ], [ %7, %2 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !106
  %12 = call i32 @nodeLinkIsHidden(ptr noundef nonnull %10) #12
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.bNodeLink, ptr %10, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !78
  %17 = icmp eq ptr %16, %5
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %20 = call ptr %19(i64 noundef 56, ptr noundef nonnull @.str.18) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %20, ptr noundef nonnull align 8 dereferenceable(56) %10, i64 56, i1 false), !tbaa.struct !107
  call void @BLI_addtail(ptr noundef nonnull %3, ptr noundef %20) #12
  call void @nodeRemLink(ptr noundef %0, ptr noundef nonnull %10) #12
  br label %21

21:                                               ; preds = %14, %18, %9
  %22 = icmp eq ptr %11, null
  br i1 %22, label %23, label %9, !llvm.loop !116

23:                                               ; preds = %21, %2
  br label %24

24:                                               ; preds = %23, %28
  %25 = phi ptr [ %26, %28 ], [ %3, %23 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !34
  %27 = icmp eq ptr %26, null
  br i1 %27, label %51, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.bNodeLink, ptr %26, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !75
  %31 = getelementptr inbounds %struct.bNodeSocket, ptr %30, i64 0, i32 7
  %32 = load i16, ptr %31, align 8, !tbaa !88
  %33 = icmp eq i16 %32, -1
  br i1 %33, label %24, label %34, !llvm.loop !117

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.bNodeLink, ptr %26, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !72
  %37 = call ptr @ntreeAddSocketInterfaceFromSocket(ptr noundef %0, ptr noundef %36, ptr noundef nonnull %30) #12
  call void @node_group_output_verify(ptr noundef %0, ptr noundef %1, ptr noundef %0) #13
  %38 = getelementptr inbounds %struct.bNodeSocket, ptr %37, i64 0, i32 4
  %39 = call ptr @node_group_output_find_socket(ptr noundef %1, ptr noundef nonnull %38) #13
  %40 = load ptr, ptr %3, align 8, !tbaa !34
  %41 = icmp eq ptr %40, null
  br i1 %41, label %51, label %42

42:                                               ; preds = %34, %42
  %43 = phi ptr [ %49, %42 ], [ %40, %34 ]
  %44 = getelementptr inbounds %struct.bNodeLink, ptr %43, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !72
  %46 = getelementptr inbounds %struct.bNodeLink, ptr %43, i64 0, i32 4
  %47 = load ptr, ptr %46, align 8, !tbaa !75
  %48 = call ptr @nodeAddLink(ptr noundef %0, ptr noundef %45, ptr noundef %47, ptr noundef %1, ptr noundef %39) #12
  %49 = load ptr, ptr %43, align 8, !tbaa !34
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %42, !llvm.loop !118

51:                                               ; preds = %24, %42, %34
  call void @BLI_freelistN(ptr noundef nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @group_verify_socket(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #3 !PGOFuncName !119 {
  %6 = getelementptr inbounds %struct.bNodeSocket, ptr %2, i64 0, i32 4
  br label %7

7:                                                ; preds = %11, %5
  %8 = phi ptr [ %3, %5 ], [ %9, %11 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %25, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.bNodeSocket, ptr %9, i64 0, i32 4
  %13 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(1) %6) #11
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %7, !llvm.loop !120

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.bNodeSocket, ptr %9, i64 0, i32 5
  %17 = getelementptr inbounds %struct.bNodeSocket, ptr %2, i64 0, i32 5
  %18 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(1) %17) #12
  %19 = getelementptr inbounds %struct.bNodeSocket, ptr %2, i64 0, i32 11
  %20 = load ptr, ptr %19, align 8, !tbaa !121
  %21 = getelementptr inbounds %struct.bNodeSocketType, ptr %20, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !122
  %23 = icmp eq ptr %22, null
  br i1 %23, label %35, label %24

24:                                               ; preds = %15
  tail call void %22(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %1, ptr noundef nonnull %9, ptr noundef nonnull @.str.11) #12
  br label %35

25:                                               ; preds = %7
  %26 = getelementptr inbounds %struct.bNodeSocket, ptr %2, i64 0, i32 12
  %27 = getelementptr inbounds %struct.bNodeSocket, ptr %2, i64 0, i32 5
  %28 = tail call ptr @nodeAddSocket(ptr noundef %0, ptr noundef %1, i32 noundef %4, ptr noundef nonnull %26, ptr noundef nonnull %6, ptr noundef nonnull %27) #12
  %29 = getelementptr inbounds %struct.bNodeSocket, ptr %2, i64 0, i32 11
  %30 = load ptr, ptr %29, align 8, !tbaa !121
  %31 = getelementptr inbounds %struct.bNodeSocketType, ptr %30, i64 0, i32 6
  %32 = load ptr, ptr %31, align 8, !tbaa !124
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %25
  tail call void %32(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %1, ptr noundef %28, ptr noundef nonnull @.str.11) #12
  br label %35

35:                                               ; preds = %25, %34, %15, %24
  %36 = phi ptr [ %9, %24 ], [ %9, %15 ], [ %28, %34 ], [ %28, %25 ]
  tail call void @BLI_remlink(ptr noundef %3, ptr noundef %36) #12
  ret ptr %36
}

; Function Attrs: optsize
declare void @nodeRemoveSocket(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @nodeAddStaticSocket(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @nodeStaticSocketType(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @nodeLinkIsHidden(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @nodeUpdateInternalLinks(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @BLI_listbase_clear(ptr nocapture noundef writeonly %0) unnamed_addr #8 !PGOFuncName !125 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: optsize
declare void @nodeRemLink(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @ntreeAddSocketInterfaceFromSocket(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @nodeAddLink(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

attributes #0 = { nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind optsize willreturn memory(read) }
attributes #12 = { nounwind optsize }
attributes #13 = { optsize }
attributes #14 = { nounwind }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.mustprogress"}
!40 = distinct !{!40, !39}
!41 = !{!42, !35, i64 240}
!42 = !{!"bNode", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !36, i64 40, !36, i64 104, !43, i64 168, !44, i64 172, !44, i64 174, !44, i64 176, !44, i64 178, !44, i64 180, !44, i64 182, !44, i64 184, !44, i64 186, !36, i64 188, !45, i64 200, !45, i64 216, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !45, i64 264, !46, i64 280, !46, i64 284, !46, i64 288, !46, i64 292, !46, i64 296, !46, i64 300, !46, i64 304, !43, i64 308, !36, i64 312, !44, i64 376, !44, i64 378, !46, i64 380, !46, i64 384, !44, i64 388, !44, i64 390, !35, i64 392, !47, i64 400, !47, i64 416, !47, i64 432, !44, i64 448, !44, i64 450, !43, i64 452, !35, i64 456}
!43 = !{!"int", !36, i64 0}
!44 = !{!"short", !36, i64 0}
!45 = !{!"ListBase", !35, i64 0, !35, i64 8}
!46 = !{!"float", !36, i64 0}
!47 = !{!"rctf", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12}
!48 = !{!42, !35, i64 32}
!49 = !{!50, !35, i64 664}
!50 = !{!"bNodeType", !35, i64 0, !35, i64 8, !44, i64 16, !36, i64 18, !43, i64 84, !36, i64 88, !36, i64 152, !43, i64 408, !46, i64 412, !46, i64 416, !46, i64 420, !46, i64 424, !46, i64 428, !46, i64 432, !44, i64 436, !44, i64 438, !44, i64 440, !35, i64 448, !35, i64 456, !36, i64 464, !35, i64 528, !35, i64 536, !35, i64 544, !35, i64 552, !35, i64 560, !35, i64 568, !35, i64 576, !35, i64 584, !35, i64 592, !35, i64 600, !35, i64 608, !35, i64 616, !35, i64 624, !35, i64 632, !35, i64 640, !35, i64 648, !35, i64 656, !35, i64 664, !35, i64 672, !35, i64 680, !35, i64 688, !35, i64 696, !35, i64 704, !35, i64 712, !51, i64 720}
!51 = !{!"ExtensionRNA", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24}
!52 = !{i32 0, i32 2}
!53 = !{!50, !35, i64 672}
!54 = distinct !{!54, !39}
!55 = !{!"node_common.c:group_verify_socket_list"}
!56 = !{!57, !35, i64 16}
!57 = !{!"bNodeSocket", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !36, i64 96, !35, i64 160, !44, i64 168, !44, i64 170, !44, i64 172, !44, i64 174, !35, i64 176, !36, i64 184, !46, i64 248, !46, i64 252, !35, i64 256, !44, i64 264, !44, i64 266, !43, i64 268, !35, i64 272, !43, i64 280, !43, i64 284, !35, i64 288, !35, i64 296, !58, i64 304}
!58 = !{!"bNodeStack", !36, i64 0, !46, i64 16, !46, i64 20, !35, i64 24, !44, i64 32, !44, i64 34, !44, i64 36, !44, i64 38, !44, i64 40, !44, i64 42, !36, i64 44}
!59 = distinct !{!59, !39}
!60 = !{!45, !35, i64 0}
!61 = !{!57, !35, i64 0}
!62 = distinct !{!62, !39}
!63 = distinct !{!63, !39}
!64 = !{!50, !44, i64 16}
!65 = !{!"node_common.c:node_frame_init"}
!66 = !{!42, !35, i64 248}
!67 = !{!68, !44, i64 0}
!68 = !{!"NodeFrame", !44, i64 0, !44, i64 2}
!69 = !{!68, !44, i64 2}
!70 = !{!"node_common.c:node_reroute_init"}
!71 = !{!"node_common.c:node_reroute_update_internal_links"}
!72 = !{!73, !35, i64 16}
!73 = !{!"bNodeLink", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !43, i64 48, !43, i64 52}
!74 = !{!42, !35, i64 200}
!75 = !{!73, !35, i64 32}
!76 = !{!73, !35, i64 24}
!77 = !{!42, !35, i64 216}
!78 = !{!73, !35, i64 40}
!79 = !{!73, !43, i64 48}
!80 = !{!42, !44, i64 176}
!81 = distinct !{!81, !39}
!82 = !{!42, !44, i64 172}
!83 = distinct !{!83, !39}
!84 = !{!"node_common.c:node_reroute_inherit_type_recursive"}
!85 = distinct !{!85, !39}
!86 = !{!57, !44, i64 172}
!87 = !{!57, !35, i64 296}
!88 = !{!57, !44, i64 168}
!89 = distinct !{!89, !39}
!90 = distinct !{!90, !39}
!91 = distinct !{!91, !39}
!92 = !{i8 0, i8 2}
!93 = !{!"node_common.c:node_is_connected_to_output_recursive"}
!94 = !{!50, !44, i64 436}
!95 = !{!42, !43, i64 168}
!96 = distinct !{!96, !39}
!97 = distinct !{!97, !39}
!98 = distinct !{!98, !39}
!99 = !{!"node_common.c:node_group_input_init"}
!100 = !{!"node_common.c:node_group_input_update"}
!101 = !{!42, !35, i64 224}
!102 = !{!103, !35, i64 240}
!103 = !{!"bNodeTree", !104, i64 0, !35, i64 120, !35, i64 128, !36, i64 136, !35, i64 200, !35, i64 208, !36, i64 216, !45, i64 224, !45, i64 240, !43, i64 256, !43, i64 260, !43, i64 264, !43, i64 268, !43, i64 272, !44, i64 276, !44, i64 278, !43, i64 280, !43, i64 284, !44, i64 288, !44, i64 290, !43, i64 292, !47, i64 296, !45, i64 312, !45, i64 328, !35, i64 344, !105, i64 352, !43, i64 356, !35, i64 360, !35, i64 368, !35, i64 376, !35, i64 384, !35, i64 392, !35, i64 400, !35, i64 408, !35, i64 416, !35, i64 424}
!104 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !44, i64 98, !43, i64 100, !43, i64 104, !43, i64 108, !35, i64 112}
!105 = !{!"bNodeInstanceKey", !43, i64 0}
!106 = !{!73, !35, i64 0}
!107 = !{i64 0, i64 8, !34, i64 8, i64 8, !34, i64 16, i64 8, !34, i64 24, i64 8, !34, i64 32, i64 8, !34, i64 40, i64 8, !34, i64 48, i64 4, !108, i64 52, i64 4, !108}
!108 = !{!43, !43, i64 0}
!109 = distinct !{!109, !39}
!110 = distinct !{!110, !39}
!111 = distinct !{!111, !39}
!112 = distinct !{!112, !39}
!113 = !{!"node_common.c:node_group_output_init"}
!114 = !{!"node_common.c:node_group_output_update"}
!115 = !{!42, !35, i64 208}
!116 = distinct !{!116, !39}
!117 = distinct !{!117, !39}
!118 = distinct !{!118, !39}
!119 = !{!"node_common.c:group_verify_socket"}
!120 = distinct !{!120, !39}
!121 = !{!57, !35, i64 176}
!122 = !{!123, !35, i64 112}
!123 = !{!"bNodeSocketType", !36, i64 0, !35, i64 64, !35, i64 72, !35, i64 80, !35, i64 88, !35, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !51, i64 128, !51, i64 160, !43, i64 192, !43, i64 196}
!124 = !{!123, !35, i64 104}
!125 = !{!"node_common.c:BLI_listbase_clear"}
