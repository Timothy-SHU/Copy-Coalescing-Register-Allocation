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
%struct.bNodeSocketType = type { [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ExtensionRNA, %struct.ExtensionRNA, i32, i32 }
%struct.bNodeTree = type { %struct.ID, ptr, ptr, [64 x i8], ptr, ptr, [2 x float], %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i32, i32, i16, i16, i32, %struct.rctf, %struct.ListBase, %struct.ListBase, ptr, %struct.bNodeInstanceKey, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bNodeInstanceKey = type { i32 }
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @node_buttons_register(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 408, ptr noundef nonnull @.str) #6
  %4 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(16) @.str.1, i64 16, i1 false) #6
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
  tail call void @BLI_addtail(ptr noundef nonnull %12, ptr noundef %3) #6
  %13 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %14 = tail call ptr %13(i64 noundef 408, ptr noundef nonnull @.str.4) #6
  %15 = getelementptr inbounds %struct.PanelType, ptr %14, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %15, ptr noundef nonnull align 1 dereferenceable(28) @.str.5, i64 28, i1 false) #6
  %16 = getelementptr inbounds %struct.PanelType, ptr %14, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %16, ptr noundef nonnull align 1 dereferenceable(10) @.str.6, i64 10, i1 false) #6
  %17 = getelementptr inbounds %struct.PanelType, ptr %14, i64 0, i32 4
  store i16 42, ptr %17, align 1
  %18 = getelementptr inbounds %struct.PanelType, ptr %14, i64 0, i32 12
  store ptr @node_tree_interface_panel, ptr %18, align 8, !tbaa !38
  %19 = getelementptr inbounds %struct.PanelType, ptr %14, i64 0, i32 10
  store ptr @node_tree_interface_poll, ptr %19, align 8, !tbaa !42
  tail call void @BLI_addtail(ptr noundef nonnull %12, ptr noundef %14) #6
  %20 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %21 = tail call ptr %20(i64 noundef 408, ptr noundef nonnull @.str.7) #6
  %22 = getelementptr inbounds %struct.PanelType, ptr %21, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %22, ptr noundef nonnull align 1 dereferenceable(16) @.str.8, i64 16, i1 false) #6
  %23 = getelementptr inbounds %struct.PanelType, ptr %21, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %23, ptr noundef nonnull align 1 dereferenceable(14) @.str.9, i64 14, i1 false) #6
  %24 = getelementptr inbounds %struct.PanelType, ptr %21, i64 0, i32 4
  store i16 42, ptr %24, align 1
  %25 = getelementptr inbounds %struct.PanelType, ptr %21, i64 0, i32 11
  store ptr @ED_gpencil_panel_standard_header, ptr %25, align 8, !tbaa !44
  %26 = getelementptr inbounds %struct.PanelType, ptr %21, i64 0, i32 12
  store ptr @ED_gpencil_panel_standard, ptr %26, align 8, !tbaa !38
  %27 = getelementptr inbounds %struct.PanelType, ptr %21, i64 0, i32 10
  store ptr @active_nodetree_poll, ptr %27, align 8, !tbaa !42
  tail call void @BLI_addtail(ptr noundef nonnull %12, ptr noundef %21) #6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_sockets_panel(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !45 {
  %3 = alloca [128 x i8], align 16
  %4 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.SpaceNode, ptr %4, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %6, %2
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #7
  br label %27

11:                                               ; preds = %6
  %12 = tail call ptr @nodeGetActive(ptr noundef nonnull %8) #6
  %13 = getelementptr inbounds %struct.Panel, ptr %1, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #7
  %15 = icmp eq ptr %12, null
  br i1 %15, label %27, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.bNode, ptr %12, i64 0, i32 17
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  %19 = icmp eq ptr %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %16, %20
  %21 = phi ptr [ %25, %20 ], [ %18, %16 ]
  %22 = getelementptr inbounds %struct.bNodeSocket, ptr %21, i64 0, i32 5
  %23 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 128, ptr noundef nonnull @.str.13, ptr noundef nonnull %22) #6
  %24 = call ptr @uiLayoutSplit(ptr noundef %14, float noundef 0x3FD6666660000000, i32 noundef 0) #6
  call void @uiItemL(ptr noundef %24, ptr noundef nonnull %3, i32 noundef 0) #6
  call void @uiTemplateNodeLink(ptr noundef %24, ptr noundef nonnull %8, ptr noundef nonnull %12, ptr noundef nonnull %21) #6
  %25 = load ptr, ptr %21, align 8, !tbaa !34
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %20, !llvm.loop !56

27:                                               ; preds = %20, %16, %10, %11
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @node_sockets_poll(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !58 {
  %3 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 18
  %7 = load ptr, ptr %6, align 8, !tbaa !59
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load i16, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 14), align 4, !tbaa !60
  %11 = icmp eq i16 %10, 777
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %9, %5, %2
  %14 = phi i32 [ 0, %5 ], [ 0, %2 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_tree_interface_panel(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !62 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca %struct.PointerRNA, align 8
  %7 = alloca %struct.PointerRNA, align 8
  %8 = alloca %struct.PointerRNA, align 8
  %9 = alloca %struct.PointerRNA, align 8
  %10 = alloca %struct.PointerRNA, align 8
  %11 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #6
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #7
  br label %39

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.SpaceNode, ptr %11, i64 0, i32 19
  %16 = load ptr, ptr %15, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  %17 = getelementptr inbounds %struct.Panel, ptr %1, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #7
  %19 = icmp eq ptr %16, null
  br i1 %19, label %39, label %20

20:                                               ; preds = %14
  call void @RNA_id_pointer_create(ptr noundef nonnull %16, ptr noundef nonnull %5) #6
  call fastcc void @node_tree_find_active_socket(ptr noundef nonnull %16, ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  %21 = load ptr, ptr %3, align 8, !tbaa !34
  call void @RNA_pointer_create(ptr noundef nonnull %16, ptr noundef nonnull @RNA_NodeSocketInterface, ptr noundef %21, ptr noundef nonnull %6) #6
  %22 = call ptr @uiLayoutRow(ptr noundef %18, i32 noundef 0) #6
  %23 = call ptr @uiLayoutRow(ptr noundef %22, i32 noundef 1) #6
  %24 = call ptr @uiLayoutColumn(ptr noundef %23, i32 noundef 1) #6
  call void @uiItemL(ptr noundef %24, ptr noundef nonnull @.str.14, i32 noundef 0) #6
  call void @uiTemplateList(ptr noundef %24, ptr noundef %0, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, ptr noundef nonnull %5, ptr noundef nonnull @.str.16, ptr noundef nonnull %5, ptr noundef nonnull @.str.17, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  call void @uiItemFullO(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %7, ptr noundef %24, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, i32 noundef 9, ptr noundef null, i32 noundef 6, i32 noundef 1) #6
  call void @RNA_enum_set(ptr noundef nonnull %7, ptr noundef nonnull @.str.20, i32 noundef 1) #6
  %25 = call ptr @uiLayoutColumn(ptr noundef %23, i32 noundef 1) #6
  call void @uiItemL(ptr noundef %25, ptr noundef nonnull @.str.21, i32 noundef 0) #6
  call void @uiTemplateList(ptr noundef %25, ptr noundef %0, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.22, ptr noundef nonnull %5, ptr noundef nonnull @.str.22, ptr noundef nonnull %5, ptr noundef nonnull @.str.23, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #7
  call void @uiItemFullO(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %8, ptr noundef %25, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, i32 noundef 9, ptr noundef null, i32 noundef 6, i32 noundef 1) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !63
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #7
  call void @RNA_enum_set(ptr noundef nonnull %7, ptr noundef nonnull @.str.20, i32 noundef 2) #6
  %26 = call ptr @uiLayoutColumn(ptr noundef %22, i32 noundef 1) #6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #7
  call void @uiItemFullO(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %9, ptr noundef %26, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.19, i32 noundef 7, ptr noundef null, i32 noundef 6, i32 noundef 1) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false), !tbaa.struct !63
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #7
  call void @RNA_enum_set(ptr noundef nonnull %7, ptr noundef nonnull @.str.25, i32 noundef 1) #6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #7
  call void @uiItemFullO(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %10, ptr noundef %26, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.19, i32 noundef 5, ptr noundef null, i32 noundef 6, i32 noundef 1) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !63
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #7
  call void @RNA_enum_set(ptr noundef nonnull %7, ptr noundef nonnull @.str.25, i32 noundef 2) #6
  %27 = icmp eq ptr %21, null
  br i1 %27, label %39, label %28

28:                                               ; preds = %20
  %29 = call ptr @uiLayoutRow(ptr noundef %18, i32 noundef 1) #6
  call void @uiItemR(ptr noundef %29, ptr noundef nonnull %6, ptr noundef nonnull @.str.26, i32 noundef 0, ptr noundef null, i32 noundef 0) #6
  call void @uiItemO(ptr noundef %29, ptr noundef nonnull @.str.19, i32 noundef 19, ptr noundef nonnull @.str.27) #6
  %30 = getelementptr inbounds %struct.bNodeSocket, ptr %21, i64 0, i32 11
  %31 = load ptr, ptr %30, align 8, !tbaa !64
  %32 = getelementptr inbounds %struct.bNodeSocketType, ptr %31, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !67
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %28
  call void @uiItemS(ptr noundef %18) #6
  %36 = load ptr, ptr %30, align 8, !tbaa !64
  %37 = getelementptr inbounds %struct.bNodeSocketType, ptr %36, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !67
  call void %38(ptr noundef %0, ptr noundef %18, ptr noundef nonnull %6) #6
  br label %39

39:                                               ; preds = %13, %20, %35, %28, %14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @node_tree_interface_poll(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !69 {
  %3 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !46
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

; Function Attrs: optsize
declare void @ED_gpencil_panel_standard_header(ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare void @ED_gpencil_panel_standard(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @active_nodetree_poll(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !75 {
  %3 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 18
  %7 = load ptr, ptr %6, align 8, !tbaa !59
  %8 = icmp ne ptr %7, null
  %9 = zext i1 %8 to i32
  br label %10

10:                                               ; preds = %5, %2
  %11 = phi i32 [ 0, %2 ], [ %9, %5 ]
  ret i32 %11
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @NODE_OT_properties(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.10, ptr %0, align 8, !tbaa !76
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.11, ptr %2, align 8, !tbaa !78
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.12, ptr %3, align 8, !tbaa !79
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @node_properties_toggle_exec, ptr %4, align 8, !tbaa !80
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @node_properties_poll, ptr %5, align 8, !tbaa !81
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %6, align 8, !tbaa !82
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @node_properties_toggle_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !83 {
  %3 = tail call ptr @CTX_wm_area(ptr noundef %0) #6
  %4 = tail call ptr @node_has_buttons_region(ptr noundef %3) #6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @ED_region_toggle_hidden(ptr noundef %0, ptr noundef nonnull %4) #6
  br label %7

7:                                                ; preds = %6, %2
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @node_properties_poll(ptr noundef %0) #0 !PGOFuncName !84 {
  %2 = tail call ptr @CTX_wm_area(ptr noundef %0) #6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 8
  %6 = load i8, ptr %5, align 8, !tbaa !85
  %7 = icmp eq i8 %6, 16
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %4, %1
  %10 = phi i32 [ 0, %1 ], [ %8, %4 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @CTX_wm_space_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @nodeGetActive(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiLayoutSplit(ptr noundef, float noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiItemL(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiTemplateNodeLink(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_id_pointer_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @node_tree_find_active_socket(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #4 !PGOFuncName !87 {
  %4 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 22
  br label %5

5:                                                ; preds = %9, %3
  %6 = phi ptr [ %4, %3 ], [ %7, %9 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.bNodeSocket, ptr %7, i64 0, i32 8
  %11 = load i16, ptr %10, align 2, !tbaa !88
  %12 = and i16 %11, 1
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %5, label %25, !llvm.loop !89

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 23
  br label %16

16:                                               ; preds = %20, %14
  %17 = phi ptr [ %15, %14 ], [ %18, %20 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.bNodeSocket, ptr %18, i64 0, i32 8
  %22 = load i16, ptr %21, align 2, !tbaa !88
  %23 = and i16 %22, 1
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %16, label %25, !llvm.loop !90

25:                                               ; preds = %9, %16, %20
  %26 = phi ptr [ %18, %20 ], [ null, %16 ], [ %7, %9 ]
  %27 = phi i32 [ 2, %20 ], [ 0, %16 ], [ 1, %9 ]
  store ptr %26, ptr %1, align 8, !tbaa !34
  store i32 %27, ptr %2, align 4, !tbaa !91
  ret void
}

; Function Attrs: optsize
declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiLayoutRow(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiLayoutColumn(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiTemplateList(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiItemFullO(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: optsize
declare void @RNA_enum_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiItemR(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiItemO(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiItemS(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @node_has_buttons_region(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_toggle_hidden(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind }
attributes #8 = { optsize }

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
!38 = !{!39, !35, i64 368}
!39 = !{!"PanelType", !35, i64 0, !35, i64 8, !36, i64 16, !36, i64 80, !36, i64 144, !36, i64 208, !36, i64 272, !40, i64 336, !40, i64 340, !40, i64 344, !35, i64 352, !35, i64 360, !35, i64 368, !41, i64 376}
!40 = !{!"int", !36, i64 0}
!41 = !{!"ExtensionRNA", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24}
!42 = !{!39, !35, i64 352}
!43 = !{!39, !40, i64 344}
!44 = !{!39, !35, i64 360}
!45 = !{!"node_buttons.c:node_sockets_panel"}
!46 = !{!47, !35, i64 288}
!47 = !{!"SpaceNode", !35, i64 0, !35, i64 8, !48, i64 16, !40, i64 32, !49, i64 36, !36, i64 40, !50, i64 56, !35, i64 216, !35, i64 224, !53, i64 232, !53, i64 234, !49, i64 236, !49, i64 240, !49, i64 244, !49, i64 248, !49, i64 252, !36, i64 256, !48, i64 264, !35, i64 280, !35, i64 288, !36, i64 296, !40, i64 360, !40, i64 364, !53, i64 368, !53, i64 370, !53, i64 372, !53, i64 374, !48, i64 376, !35, i64 392}
!48 = !{!"ListBase", !35, i64 0, !35, i64 8}
!49 = !{!"float", !36, i64 0}
!50 = !{!"View2D", !51, i64 0, !51, i64 16, !52, i64 32, !52, i64 48, !52, i64 64, !36, i64 80, !36, i64 88, !49, i64 96, !49, i64 100, !53, i64 104, !53, i64 106, !53, i64 108, !53, i64 110, !53, i64 112, !53, i64 114, !53, i64 116, !53, i64 118, !53, i64 120, !53, i64 122, !53, i64 124, !53, i64 126, !35, i64 128, !40, i64 136, !40, i64 140, !35, i64 144, !35, i64 152}
!51 = !{!"rctf", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12}
!52 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!53 = !{!"short", !36, i64 0}
!54 = !{!55, !35, i64 24}
!55 = !{!"Panel", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !36, i64 96, !36, i64 160, !40, i64 224, !40, i64 228, !40, i64 232, !40, i64 236, !53, i64 240, !53, i64 242, !53, i64 244, !53, i64 246, !53, i64 248, !53, i64 250, !40, i64 252, !35, i64 256, !35, i64 264}
!56 = distinct !{!56, !57}
!57 = !{!"llvm.loop.mustprogress"}
!58 = !{!"node_buttons.c:node_sockets_poll"}
!59 = !{!47, !35, i64 280}
!60 = !{!61, !53, i64 2092}
!61 = !{!"Global", !35, i64 0, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 2057, !36, i64 2058, !48, i64 2064, !36, i64 2080, !36, i64 2081, !36, i64 2082, !53, i64 2084, !53, i64 2086, !53, i64 2088, !36, i64 2090, !53, i64 2092, !40, i64 2096, !40, i64 2100, !36, i64 2104, !40, i64 2108, !40, i64 2112, !36, i64 2116}
!62 = !{!"node_buttons.c:node_tree_interface_panel"}
!63 = !{i64 0, i64 8, !34, i64 8, i64 8, !34, i64 16, i64 8, !34}
!64 = !{!65, !35, i64 176}
!65 = !{!"bNodeSocket", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !36, i64 96, !35, i64 160, !53, i64 168, !53, i64 170, !53, i64 172, !53, i64 174, !35, i64 176, !36, i64 184, !49, i64 248, !49, i64 252, !35, i64 256, !53, i64 264, !53, i64 266, !40, i64 268, !35, i64 272, !40, i64 280, !40, i64 284, !35, i64 288, !35, i64 296, !66, i64 304}
!66 = !{!"bNodeStack", !36, i64 0, !49, i64 16, !49, i64 20, !35, i64 24, !53, i64 32, !53, i64 34, !53, i64 36, !53, i64 38, !53, i64 40, !53, i64 42, !36, i64 44}
!67 = !{!68, !35, i64 80}
!68 = !{!"bNodeSocketType", !36, i64 0, !35, i64 64, !35, i64 72, !35, i64 80, !35, i64 88, !35, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !41, i64 128, !41, i64 160, !40, i64 192, !40, i64 196}
!69 = !{!"node_buttons.c:node_tree_interface_poll"}
!70 = !{!71, !35, i64 312}
!71 = !{!"bNodeTree", !72, i64 0, !35, i64 120, !35, i64 128, !36, i64 136, !35, i64 200, !35, i64 208, !36, i64 216, !48, i64 224, !48, i64 240, !40, i64 256, !40, i64 260, !40, i64 264, !40, i64 268, !40, i64 272, !53, i64 276, !53, i64 278, !40, i64 280, !40, i64 284, !53, i64 288, !53, i64 290, !40, i64 292, !51, i64 296, !48, i64 312, !48, i64 328, !35, i64 344, !73, i64 352, !40, i64 356, !35, i64 360, !35, i64 368, !35, i64 376, !35, i64 384, !35, i64 392, !35, i64 400, !35, i64 408, !35, i64 416, !35, i64 424}
!72 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !53, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !35, i64 112}
!73 = !{!"bNodeInstanceKey", !40, i64 0}
!74 = !{!71, !35, i64 328}
!75 = !{!"node_buttons.c:active_nodetree_poll"}
!76 = !{!77, !35, i64 0}
!77 = !{!"wmOperatorType", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !35, i64 88, !35, i64 96, !35, i64 104, !48, i64 112, !35, i64 128, !35, i64 136, !35, i64 144, !41, i64 152, !53, i64 184}
!78 = !{!77, !35, i64 24}
!79 = !{!77, !35, i64 8}
!80 = !{!77, !35, i64 32}
!81 = !{!77, !35, i64 72}
!82 = !{!77, !53, i64 184}
!83 = !{!"node_buttons.c:node_properties_toggle_exec"}
!84 = !{!"node_buttons.c:node_properties_poll"}
!85 = !{!86, !36, i64 72}
!86 = !{!"ScrArea", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !52, i64 56, !36, i64 72, !36, i64 73, !53, i64 74, !53, i64 76, !53, i64 78, !53, i64 80, !53, i64 82, !53, i64 84, !36, i64 86, !36, i64 87, !35, i64 88, !48, i64 96, !48, i64 112, !48, i64 128, !48, i64 144}
!87 = !{!"node_buttons.c:node_tree_find_active_socket"}
!88 = !{!65, !53, i64 170}
!89 = distinct !{!89, !57}
!90 = distinct !{!90, !57}
!91 = !{!40, !40, i64 0}
