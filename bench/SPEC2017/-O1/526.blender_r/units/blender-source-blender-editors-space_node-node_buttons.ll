; ModuleID = 'blender/source/blender/editors/space_node/node_buttons.c'
source_filename = "blender/source/blender/editors/space_node/node_buttons.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.StructRNA = type opaque
%struct.PanelType = type { ptr, ptr, [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], i32, i32, i32, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.ARegionType = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i16 }
%struct.SpaceNode = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, ptr, ptr, i16, i16, float, float, float, float, float, [2 x float], %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, %struct.ListBase, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.Panel = type { ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], [64 x i8], i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, ptr, ptr }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.bNodeSocket = type { ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], ptr, i16, i16, i16, i16, ptr, [64 x i8], float, float, ptr, i16, i16, i32, ptr, i32, i32, ptr, ptr, %struct.bNodeStack }
%struct.bNodeStack = type { [4 x float], float, float, ptr, i16, i16, i16, i16, i16, i16, [2 x i16] }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.bNodeTree = type { %struct.ID, ptr, ptr, [64 x i8], ptr, ptr, [2 x float], %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i32, i32, i16, i16, i32, %struct.rctf, %struct.ListBase, %struct.ListBase, ptr, %struct.bNodeInstanceKey, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bNodeInstanceKey = type { i32 }
%struct.bNodeSocketType = type { [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ExtensionRNA, %struct.ExtensionRNA, i32, i32 }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [34 x i8] c"spacetype node panel node sockets\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"NODE_PT_sockets\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"spacetype node panel tree interface\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"NODE_PT_node_tree_interface\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"Interface\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"spacetype node panel gpencil\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"NODE_PT_gpencil\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"Grease Pencil\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"Properties\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"Toggles the properties panel display\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"NODE_OT_properties\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@RNA_NodeSocketInterface = external global %struct.StructRNA, align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"Inputs:\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"NODE_UL_interface_sockets\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"inputs\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"active_input\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"NODE_OT_tree_socket_add\00", align 1
@.str.19 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"in_out\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"Outputs:\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"outputs\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"active_output\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"NODE_OT_tree_socket_move\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"direction\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"NODE_OT_tree_socket_remove\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @node_buttons_register(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 408, ptr noundef nonnull @.str) #5
  %4 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(16) @.str.1, i64 16, i1 false) #5
  %5 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 3
  store i64 32497601263923027, ptr %5, align 1
  %6 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 4
  store i16 42, ptr %6, align 1
  %7 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 12
  store ptr @node_sockets_panel, ptr %7, align 8, !tbaa !38
  %8 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 10
  store ptr @node_sockets_poll, ptr %8, align 8, !tbaa !42
  %9 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 9
  %10 = load i32, ptr %9, align 8, !tbaa !43
  %11 = or i32 %10, 1
  store i32 %11, ptr %9, align 8, !tbaa !43
  %12 = getelementptr inbounds %struct.ARegionType, ptr %0, i64 0, i32 14
  tail call void @BLI_addtail(ptr noundef nonnull %12, ptr noundef %3) #5
  %13 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %14 = tail call ptr %13(i64 noundef 408, ptr noundef nonnull @.str.4) #5
  %15 = getelementptr inbounds %struct.PanelType, ptr %14, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %15, ptr noundef nonnull align 1 dereferenceable(28) @.str.5, i64 28, i1 false) #5
  %16 = getelementptr inbounds %struct.PanelType, ptr %14, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %16, ptr noundef nonnull align 1 dereferenceable(10) @.str.6, i64 10, i1 false) #5
  %17 = getelementptr inbounds %struct.PanelType, ptr %14, i64 0, i32 4
  store i16 42, ptr %17, align 1
  %18 = getelementptr inbounds %struct.PanelType, ptr %14, i64 0, i32 12
  store ptr @node_tree_interface_panel, ptr %18, align 8, !tbaa !38
  %19 = getelementptr inbounds %struct.PanelType, ptr %14, i64 0, i32 10
  store ptr @node_tree_interface_poll, ptr %19, align 8, !tbaa !42
  tail call void @BLI_addtail(ptr noundef nonnull %12, ptr noundef %14) #5
  %20 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %21 = tail call ptr %20(i64 noundef 408, ptr noundef nonnull @.str.7) #5
  %22 = getelementptr inbounds %struct.PanelType, ptr %21, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %22, ptr noundef nonnull align 1 dereferenceable(16) @.str.8, i64 16, i1 false) #5
  %23 = getelementptr inbounds %struct.PanelType, ptr %21, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %23, ptr noundef nonnull align 1 dereferenceable(14) @.str.9, i64 14, i1 false) #5
  %24 = getelementptr inbounds %struct.PanelType, ptr %21, i64 0, i32 4
  store i16 42, ptr %24, align 1
  %25 = getelementptr inbounds %struct.PanelType, ptr %21, i64 0, i32 11
  store ptr @ED_gpencil_panel_standard_header, ptr %25, align 8, !tbaa !44
  %26 = getelementptr inbounds %struct.PanelType, ptr %21, i64 0, i32 12
  store ptr @ED_gpencil_panel_standard, ptr %26, align 8, !tbaa !38
  %27 = getelementptr inbounds %struct.PanelType, ptr %21, i64 0, i32 10
  store ptr @active_nodetree_poll, ptr %27, align 8, !tbaa !42
  tail call void @BLI_addtail(ptr noundef nonnull %12, ptr noundef %21) #5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @node_sockets_panel(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [128 x i8], align 16
  %4 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.SpaceNode, ptr %4, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi ptr [ %8, %6 ], [ null, %2 ]
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = tail call ptr @nodeGetActive(ptr noundef nonnull %10) #5
  br label %14

14:                                               ; preds = %9, %12
  %15 = phi ptr [ %13, %12 ], [ null, %9 ]
  %16 = getelementptr inbounds %struct.Panel, ptr %1, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #5
  %18 = icmp eq ptr %15, null
  %19 = select i1 %11, i1 true, i1 %18
  br i1 %19, label %31, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.bNode, ptr %15, i64 0, i32 17
  %22 = load ptr, ptr %21, align 8, !tbaa !34
  %23 = icmp eq ptr %22, null
  br i1 %23, label %31, label %24

24:                                               ; preds = %20, %24
  %25 = phi ptr [ %29, %24 ], [ %22, %20 ]
  %26 = getelementptr inbounds %struct.bNodeSocket, ptr %25, i64 0, i32 5
  %27 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 128, ptr noundef nonnull @.str.13, ptr noundef nonnull %26) #5
  %28 = call ptr @uiLayoutSplit(ptr noundef %17, float noundef 0x3FD6666660000000, i32 noundef 0) #5
  call void @uiItemL(ptr noundef %28, ptr noundef nonnull %3, i32 noundef 0) #5
  call void @uiTemplateNodeLink(ptr noundef %28, ptr noundef %10, ptr noundef %15, ptr noundef nonnull %25) #5
  %29 = load ptr, ptr %25, align 8, !tbaa !34
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %24, !llvm.loop !55

31:                                               ; preds = %24, %20, %14
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @node_sockets_poll(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 18
  %7 = load ptr, ptr %6, align 8, !tbaa !58
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load i16, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 14), align 4, !tbaa !59
  %11 = icmp eq i16 %10, 777
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %9, %5, %2
  %14 = phi i32 [ 0, %5 ], [ 0, %2 ], [ %12, %9 ]
  ret i32 %14
}

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @node_tree_interface_panel(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca %struct.PointerRNA, align 8
  %7 = alloca %struct.PointerRNA, align 8
  %8 = alloca %struct.PointerRNA, align 8
  %9 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #5
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.SpaceNode, ptr %9, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !45
  br label %14

14:                                               ; preds = %2, %11
  %15 = phi ptr [ %13, %11 ], [ null, %2 ]
  %16 = getelementptr inbounds %struct.Panel, ptr %1, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #5
  %18 = icmp eq ptr %15, null
  br i1 %18, label %60, label %19

19:                                               ; preds = %14
  call void @RNA_id_pointer_create(ptr noundef nonnull %15, ptr noundef nonnull %3) #5
  %20 = getelementptr inbounds %struct.bNodeTree, ptr %15, i64 0, i32 22
  br label %21

21:                                               ; preds = %25, %19
  %22 = phi ptr [ %20, %19 ], [ %23, %25 ]
  %23 = load ptr, ptr %22, align 8, !tbaa !34
  %24 = icmp eq ptr %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.bNodeSocket, ptr %23, i64 0, i32 8
  %27 = load i16, ptr %26, align 2, !tbaa !61
  %28 = and i16 %27, 1
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %21, label %41, !llvm.loop !64

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.bNodeTree, ptr %15, i64 0, i32 23
  br label %32

32:                                               ; preds = %36, %30
  %33 = phi ptr [ %31, %30 ], [ %34, %36 ]
  %34 = load ptr, ptr %33, align 8, !tbaa !34
  %35 = icmp eq ptr %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.bNodeSocket, ptr %34, i64 0, i32 8
  %38 = load i16, ptr %37, align 2, !tbaa !61
  %39 = and i16 %38, 1
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %32, label %41, !llvm.loop !65

41:                                               ; preds = %25, %32, %36
  %42 = phi ptr [ %34, %36 ], [ null, %32 ], [ %23, %25 ]
  call void @RNA_pointer_create(ptr noundef nonnull %15, ptr noundef nonnull @RNA_NodeSocketInterface, ptr noundef %42, ptr noundef nonnull %4) #5
  %43 = call ptr @uiLayoutRow(ptr noundef %17, i32 noundef 0) #5
  %44 = call ptr @uiLayoutRow(ptr noundef %43, i32 noundef 1) #5
  %45 = call ptr @uiLayoutColumn(ptr noundef %44, i32 noundef 1) #5
  call void @uiItemL(ptr noundef %45, ptr noundef nonnull @.str.14, i32 noundef 0) #5
  call void @uiTemplateList(ptr noundef %45, ptr noundef %0, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, ptr noundef nonnull %3, ptr noundef nonnull @.str.16, ptr noundef nonnull %3, ptr noundef nonnull @.str.17, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  call void @uiItemFullO(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef %45, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, i32 noundef 9, ptr noundef null, i32 noundef 6, i32 noundef 1) #5
  call void @RNA_enum_set(ptr noundef nonnull %5, ptr noundef nonnull @.str.20, i32 noundef 1) #5
  %46 = call ptr @uiLayoutColumn(ptr noundef %44, i32 noundef 1) #5
  call void @uiItemL(ptr noundef %46, ptr noundef nonnull @.str.21, i32 noundef 0) #5
  call void @uiTemplateList(ptr noundef %46, ptr noundef %0, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.22, ptr noundef nonnull %3, ptr noundef nonnull @.str.22, ptr noundef nonnull %3, ptr noundef nonnull @.str.23, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #5
  call void @uiItemFullO(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %6, ptr noundef %46, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, i32 noundef 9, ptr noundef null, i32 noundef 6, i32 noundef 1) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !66
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #5
  call void @RNA_enum_set(ptr noundef nonnull %5, ptr noundef nonnull @.str.20, i32 noundef 2) #5
  %47 = call ptr @uiLayoutColumn(ptr noundef %43, i32 noundef 1) #5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #5
  call void @uiItemFullO(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %7, ptr noundef %47, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.19, i32 noundef 7, ptr noundef null, i32 noundef 6, i32 noundef 1) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !66
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #5
  call void @RNA_enum_set(ptr noundef nonnull %5, ptr noundef nonnull @.str.25, i32 noundef 1) #5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #5
  call void @uiItemFullO(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %8, ptr noundef %47, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.19, i32 noundef 5, ptr noundef null, i32 noundef 6, i32 noundef 1) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !66
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #5
  call void @RNA_enum_set(ptr noundef nonnull %5, ptr noundef nonnull @.str.25, i32 noundef 2) #5
  %48 = icmp eq ptr %42, null
  br i1 %48, label %60, label %49

49:                                               ; preds = %41
  %50 = call ptr @uiLayoutRow(ptr noundef %17, i32 noundef 1) #5
  call void @uiItemR(ptr noundef %50, ptr noundef nonnull %4, ptr noundef nonnull @.str.26, i32 noundef 0, ptr noundef null, i32 noundef 0) #5
  call void @uiItemO(ptr noundef %50, ptr noundef nonnull @.str.19, i32 noundef 19, ptr noundef nonnull @.str.27) #5
  %51 = getelementptr inbounds %struct.bNodeSocket, ptr %42, i64 0, i32 11
  %52 = load ptr, ptr %51, align 8, !tbaa !67
  %53 = getelementptr inbounds %struct.bNodeSocketType, ptr %52, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !68
  %55 = icmp eq ptr %54, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %49
  call void @uiItemS(ptr noundef %17) #5
  %57 = load ptr, ptr %51, align 8, !tbaa !67
  %58 = getelementptr inbounds %struct.bNodeSocketType, ptr %57, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !68
  call void %59(ptr noundef %0, ptr noundef %17, ptr noundef nonnull %4) #5
  br label %60

60:                                               ; preds = %41, %56, %49, %14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @node_tree_interface_poll(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.bNodeTree, ptr %7, i64 0, i32 22
  %11 = load ptr, ptr %10, align 8, !tbaa !70
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.bNodeTree, ptr %7, i64 0, i32 23
  %15 = load ptr, ptr %14, align 8, !tbaa !74
  %16 = icmp ne ptr %15, null
  %17 = zext i1 %16 to i32
  br label %18

18:                                               ; preds = %9, %13, %5, %2
  %19 = phi i32 [ 0, %5 ], [ 0, %2 ], [ 1, %9 ], [ %17, %13 ]
  ret i32 %19
}

declare void @ED_gpencil_panel_standard_header(ptr noundef, ptr noundef) #2

declare void @ED_gpencil_panel_standard(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @active_nodetree_poll(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 18
  %7 = load ptr, ptr %6, align 8, !tbaa !58
  %8 = icmp ne ptr %7, null
  %9 = zext i1 %8 to i32
  br label %10

10:                                               ; preds = %5, %2
  %11 = phi i32 [ 0, %2 ], [ %9, %5 ]
  ret i32 %11
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @NODE_OT_properties(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.10, ptr %0, align 8, !tbaa !75
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.11, ptr %2, align 8, !tbaa !77
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.12, ptr %3, align 8, !tbaa !78
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @node_properties_toggle_exec, ptr %4, align 8, !tbaa !79
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @node_properties_poll, ptr %5, align 8, !tbaa !80
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %6, align 8, !tbaa !81
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @node_properties_toggle_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_wm_area(ptr noundef %0) #5
  %4 = tail call ptr @node_has_buttons_region(ptr noundef %3) #5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @ED_region_toggle_hidden(ptr noundef %0, ptr noundef nonnull %4) #5
  br label %7

7:                                                ; preds = %6, %2
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal i32 @node_properties_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_wm_area(ptr noundef %0) #5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 8
  %6 = load i8, ptr %5, align 8, !tbaa !82
  %7 = icmp eq i8 %6, 16
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %4, %1
  %10 = phi i32 [ 0, %1 ], [ %8, %4 ]
  ret i32 %10
}

declare ptr @CTX_wm_space_node(ptr noundef) local_unnamed_addr #2

declare ptr @nodeGetActive(ptr noundef) local_unnamed_addr #2

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @uiLayoutSplit(ptr noundef, float noundef, i32 noundef) local_unnamed_addr #2

declare void @uiItemL(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @uiTemplateNodeLink(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_id_pointer_create(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @uiLayoutRow(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @uiLayoutColumn(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @uiTemplateList(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @uiItemFullO(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare void @RNA_enum_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @uiItemR(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @uiItemO(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @uiItemS(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

declare ptr @node_has_buttons_region(ptr noundef) local_unnamed_addr #2

declare void @ED_region_toggle_hidden(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !35, i64 368}
!39 = !{!"PanelType", !35, i64 0, !35, i64 8, !36, i64 16, !36, i64 80, !36, i64 144, !36, i64 208, !36, i64 272, !40, i64 336, !40, i64 340, !40, i64 344, !35, i64 352, !35, i64 360, !35, i64 368, !41, i64 376}
!40 = !{!"int", !36, i64 0}
!41 = !{!"ExtensionRNA", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24}
!42 = !{!39, !35, i64 352}
!43 = !{!39, !40, i64 344}
!44 = !{!39, !35, i64 360}
!45 = !{!46, !35, i64 288}
!46 = !{!"SpaceNode", !35, i64 0, !35, i64 8, !47, i64 16, !40, i64 32, !48, i64 36, !36, i64 40, !49, i64 56, !35, i64 216, !35, i64 224, !52, i64 232, !52, i64 234, !48, i64 236, !48, i64 240, !48, i64 244, !48, i64 248, !48, i64 252, !36, i64 256, !47, i64 264, !35, i64 280, !35, i64 288, !36, i64 296, !40, i64 360, !40, i64 364, !52, i64 368, !52, i64 370, !52, i64 372, !52, i64 374, !47, i64 376, !35, i64 392}
!47 = !{!"ListBase", !35, i64 0, !35, i64 8}
!48 = !{!"float", !36, i64 0}
!49 = !{!"View2D", !50, i64 0, !50, i64 16, !51, i64 32, !51, i64 48, !51, i64 64, !36, i64 80, !36, i64 88, !48, i64 96, !48, i64 100, !52, i64 104, !52, i64 106, !52, i64 108, !52, i64 110, !52, i64 112, !52, i64 114, !52, i64 116, !52, i64 118, !52, i64 120, !52, i64 122, !52, i64 124, !52, i64 126, !35, i64 128, !40, i64 136, !40, i64 140, !35, i64 144, !35, i64 152}
!50 = !{!"rctf", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12}
!51 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!52 = !{!"short", !36, i64 0}
!53 = !{!54, !35, i64 24}
!54 = !{!"Panel", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !36, i64 96, !36, i64 160, !40, i64 224, !40, i64 228, !40, i64 232, !40, i64 236, !52, i64 240, !52, i64 242, !52, i64 244, !52, i64 246, !52, i64 248, !52, i64 250, !40, i64 252, !35, i64 256, !35, i64 264}
!55 = distinct !{!55, !56, !57}
!56 = !{!"llvm.loop.mustprogress"}
!57 = !{!"llvm.loop.unroll.disable"}
!58 = !{!46, !35, i64 280}
!59 = !{!60, !52, i64 2092}
!60 = !{!"Global", !35, i64 0, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 2057, !36, i64 2058, !47, i64 2064, !36, i64 2080, !36, i64 2081, !36, i64 2082, !52, i64 2084, !52, i64 2086, !52, i64 2088, !36, i64 2090, !52, i64 2092, !40, i64 2096, !40, i64 2100, !36, i64 2104, !40, i64 2108, !40, i64 2112, !36, i64 2116}
!61 = !{!62, !52, i64 170}
!62 = !{!"bNodeSocket", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !36, i64 96, !35, i64 160, !52, i64 168, !52, i64 170, !52, i64 172, !52, i64 174, !35, i64 176, !36, i64 184, !48, i64 248, !48, i64 252, !35, i64 256, !52, i64 264, !52, i64 266, !40, i64 268, !35, i64 272, !40, i64 280, !40, i64 284, !35, i64 288, !35, i64 296, !63, i64 304}
!63 = !{!"bNodeStack", !36, i64 0, !48, i64 16, !48, i64 20, !35, i64 24, !52, i64 32, !52, i64 34, !52, i64 36, !52, i64 38, !52, i64 40, !52, i64 42, !36, i64 44}
!64 = distinct !{!64, !56, !57}
!65 = distinct !{!65, !56, !57}
!66 = !{i64 0, i64 8, !34, i64 8, i64 8, !34, i64 16, i64 8, !34}
!67 = !{!62, !35, i64 176}
!68 = !{!69, !35, i64 80}
!69 = !{!"bNodeSocketType", !36, i64 0, !35, i64 64, !35, i64 72, !35, i64 80, !35, i64 88, !35, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !41, i64 128, !41, i64 160, !40, i64 192, !40, i64 196}
!70 = !{!71, !35, i64 312}
!71 = !{!"bNodeTree", !72, i64 0, !35, i64 120, !35, i64 128, !36, i64 136, !35, i64 200, !35, i64 208, !36, i64 216, !47, i64 224, !47, i64 240, !40, i64 256, !40, i64 260, !40, i64 264, !40, i64 268, !40, i64 272, !52, i64 276, !52, i64 278, !40, i64 280, !40, i64 284, !52, i64 288, !52, i64 290, !40, i64 292, !50, i64 296, !47, i64 312, !47, i64 328, !35, i64 344, !73, i64 352, !40, i64 356, !35, i64 360, !35, i64 368, !35, i64 376, !35, i64 384, !35, i64 392, !35, i64 400, !35, i64 408, !35, i64 416, !35, i64 424}
!72 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !52, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !35, i64 112}
!73 = !{!"bNodeInstanceKey", !40, i64 0}
!74 = !{!71, !35, i64 328}
!75 = !{!76, !35, i64 0}
!76 = !{!"wmOperatorType", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !35, i64 88, !35, i64 96, !35, i64 104, !47, i64 112, !35, i64 128, !35, i64 136, !35, i64 144, !41, i64 152, !52, i64 184}
!77 = !{!76, !35, i64 24}
!78 = !{!76, !35, i64 8}
!79 = !{!76, !35, i64 32}
!80 = !{!76, !35, i64 72}
!81 = !{!76, !52, i64 184}
!82 = !{!83, !36, i64 72}
!83 = !{!"ScrArea", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !51, i64 56, !36, i64 72, !36, i64 73, !52, i64 74, !52, i64 76, !52, i64 78, !52, i64 80, !52, i64 82, !52, i64 84, !36, i64 86, !36, i64 87, !35, i64 88, !47, i64 96, !47, i64 112, !47, i64 128, !47, i64 144}
