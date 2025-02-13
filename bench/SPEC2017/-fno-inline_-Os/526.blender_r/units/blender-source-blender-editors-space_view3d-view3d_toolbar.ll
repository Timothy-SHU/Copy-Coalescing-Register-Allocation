; ModuleID = 'blender/source/blender/editors/space_view3d/view3d_toolbar.c'
source_filename = "blender/source/blender/editors/space_view3d/view3d_toolbar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.PanelType = type { ptr, ptr, [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], i32, i32, i32, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.ARegionType = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i16 }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.SpaceLink = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16] }
%struct.SpaceType = type { ptr, ptr, [64 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, i32 }
%struct.Panel = type { ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], [64 x i8], i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, ptr, ptr }
%struct.CustomTool = type { ptr, ptr, [64 x i8], [64 x i8] }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct._gh_Entry = type { ptr, ptr, ptr }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [29 x i8] c"spacetype view3d panel tools\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"VIEW3D_PT_tool_shelf\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Tool Shelf\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"spacetype view3d panel last operator\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"VIEW3D_PT_last_operator\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"Operator\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"Toggles tool shelf display\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"VIEW3D_OT_toolshelf\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"Add Tool\00", align 1
@U = external local_unnamed_addr global %struct.UserDef, align 8
@.str.10 = private unnamed_addr constant [39 x i8] c"Add Tool in shelf, gets saved in files\00", align 1
@tool_search_menu.search = internal global [64 x i8] zeroinitializer, align 16
@.str.11 = private unnamed_addr constant [7 x i8] c"_popup\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"CustomTool\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @view3d_toolshelf_register(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 408, ptr noundef nonnull @.str) #8
  %4 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %4, ptr noundef nonnull align 1 dereferenceable(21) @.str.1, i64 21, i1 false) #8
  %5 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %5, ptr noundef nonnull align 1 dereferenceable(11) @.str.2, i64 11, i1 false) #8
  %6 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 4
  store i16 42, ptr %6, align 1
  %7 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 12
  store ptr @view3d_panel_tool_shelf, ptr %7, align 8, !tbaa !38
  %8 = getelementptr inbounds %struct.ARegionType, ptr %0, i64 0, i32 14
  tail call void @BLI_addtail(ptr noundef nonnull %8, ptr noundef %3) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @view3d_panel_tool_shelf(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !42 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = tail call ptr @CTX_wm_space_data(ptr noundef %0) #8
  %5 = tail call ptr @CTX_data_mode_string(ptr noundef %0) #8
  %6 = icmp eq ptr %4, null
  br i1 %6, label %30, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.SpaceLink, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !43
  %10 = tail call ptr @BKE_spacetype_from_id(i32 noundef %9) #8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %30, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.SpaceType, ptr %10, i64 0, i32 17
  %14 = load ptr, ptr %13, align 8, !tbaa !47
  %15 = icmp eq ptr %14, null
  br i1 %15, label %30, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.Panel, ptr %1, i64 0, i32 3
  br label %18

18:                                               ; preds = %16, %27
  %19 = phi ptr [ %14, %16 ], [ %28, %27 ]
  %20 = getelementptr inbounds %struct.CustomTool, ptr %19, i64 0, i32 3
  %21 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %20, i64 noundef 64) #9
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load ptr, ptr %17, align 8, !tbaa !49
  %25 = call ptr @uiLayoutColumn(ptr noundef %24, i32 noundef 1) #8
  %26 = getelementptr inbounds %struct.CustomTool, ptr %19, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #10
  call void @uiItemFullO(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %25, ptr noundef nonnull %26, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 1, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #10
  br label %27

27:                                               ; preds = %18, %23
  %28 = load ptr, ptr %19, align 8, !tbaa !52
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %18, !llvm.loop !54

30:                                               ; preds = %27, %2, %12, %7
  %31 = phi ptr [ %10, %12 ], [ null, %7 ], [ null, %2 ], [ %10, %27 ]
  %32 = getelementptr inbounds %struct.Panel, ptr %1, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !49
  %34 = call ptr @uiLayoutColumn(ptr noundef %33, i32 noundef 1) #8
  %35 = load ptr, ptr %32, align 8, !tbaa !49
  %36 = call ptr @uiLayoutGetBlock(ptr noundef %35) #8
  %37 = getelementptr inbounds %struct.SpaceType, ptr %31, i64 0, i32 17
  %38 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !56
  %39 = call ptr @uiDefBlockBut(ptr noundef %36, ptr noundef nonnull @tool_search_menu, ptr noundef nonnull %37, ptr noundef nonnull @.str.9, i32 noundef 0, i32 noundef 0, i16 noundef signext %38, i16 noundef signext %38, ptr noundef nonnull @.str.10) #8
  ret void
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @view3d_tool_props_register(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 408, ptr noundef nonnull @.str.4) #8
  %4 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %4, ptr noundef nonnull align 1 dereferenceable(24) @.str.5, i64 24, i1 false) #8
  %5 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %5, ptr noundef nonnull align 1 dereferenceable(9) @.str.6, i64 9, i1 false) #8
  %6 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 4
  store i16 42, ptr %6, align 1
  %7 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 11
  store ptr @view3d_panel_operator_redo_header, ptr %7, align 8, !tbaa !60
  %8 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 12
  store ptr @view3d_panel_operator_redo, ptr %8, align 8, !tbaa !38
  %9 = getelementptr inbounds %struct.ARegionType, ptr %0, i64 0, i32 14
  tail call void @BLI_addtail(ptr noundef nonnull %9, ptr noundef %3) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @view3d_panel_operator_redo_header(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !61 {
  %3 = tail call ptr @WM_operator_last_redo(ptr noundef %0) #8
  %4 = icmp eq ptr %3, null
  %5 = getelementptr inbounds %struct.Panel, ptr %1, i64 0, i32 6
  br i1 %4, label %13, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmOperator, ptr %3, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !62
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %8, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !64
  %11 = tail call ptr @RNA_struct_ui_name(ptr noundef %10) #8
  %12 = tail call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef %11, i64 noundef 64) #8
  br label %15

13:                                               ; preds = %2
  %14 = tail call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef nonnull @.str.6, i64 noundef 64) #8
  br label %15

15:                                               ; preds = %13, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @view3d_panel_operator_redo(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !66 {
  %3 = tail call ptr @WM_operator_last_redo(ptr noundef %0) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %28, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @CTX_wm_region(ptr noundef %0) #8
  %7 = tail call ptr @CTX_wm_area(ptr noundef %0) #8
  %8 = tail call ptr @BKE_area_find_region_active_win(ptr noundef %7) #8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %5
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef nonnull %8) #8
  br label %11

11:                                               ; preds = %10, %5
  %12 = getelementptr inbounds %struct.wmOperator, ptr %3, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !62
  %14 = tail call i32 @WM_operator_poll(ptr noundef %0, ptr noundef %13) #8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.Panel, ptr %1, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !49
  %19 = tail call ptr @uiLayoutGetBlock(ptr noundef %18) #8
  %20 = load ptr, ptr %12, align 8, !tbaa !62
  %21 = load ptr, ptr %20, align 8, !tbaa !67
  %22 = tail call zeroext i8 @WM_operator_check_ui_enabled(ptr noundef %0, ptr noundef %21) #8
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = load ptr, ptr %17, align 8, !tbaa !49
  tail call void @uiLayoutSetEnabled(ptr noundef %25, i8 noundef zeroext 0) #8
  br label %26

26:                                               ; preds = %24, %16
  tail call void @uiBlockSetHandleFunc(ptr noundef %19, ptr noundef nonnull @ED_undo_operator_repeat_cb_evt, ptr noundef nonnull %3) #8
  tail call fastcc void @view3d_panel_operator_redo_operator(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %3) #11
  br label %27

27:                                               ; preds = %26, %11
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef %6) #8
  br label %28

28:                                               ; preds = %2, %27
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @VIEW3D_OT_toolshelf(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.2, ptr %0, align 8, !tbaa !67
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.7, ptr %2, align 8, !tbaa !68
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.8, ptr %3, align 8, !tbaa !69
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @view3d_toolshelf_toggle_exec, ptr %4, align 8, !tbaa !70
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_view3d_active, ptr %5, align 8, !tbaa !71
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %6, align 8, !tbaa !72
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @view3d_toolshelf_toggle_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !73 {
  %3 = tail call ptr @CTX_wm_area(ptr noundef %0) #8
  %4 = tail call ptr @view3d_has_tools_region(ptr noundef %3) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @ED_region_toggle_hidden(ptr noundef %0, ptr noundef nonnull %4) #8
  br label %7

7:                                                ; preds = %6, %2
  ret i32 4
}

; Function Attrs: optsize
declare i32 @ED_operator_view3d_active(ptr noundef) #2

; Function Attrs: optsize
declare ptr @CTX_wm_space_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_mode_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_spacetype_from_id(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @uiLayoutColumn(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiItemFullO(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiDefBlockBut(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiLayoutGetBlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef ptr @tool_search_menu(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !PGOFuncName !74 {
  %4 = alloca %struct.wmEvent, align 8
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %4) #10
  %5 = tail call ptr @CTX_wm_window(ptr noundef %0) #8
  store i8 0, ptr @tool_search_menu.search, align 16, !tbaa !75
  %6 = tail call ptr @uiBeginBlock(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.11, i16 noundef signext 0) #8
  tail call void @uiBlockSetFlag(ptr noundef %6, i32 noundef 7) #8
  %7 = tail call i32 @uiSearchBoxWidth() #8
  %8 = trunc i32 %7 to i16
  %9 = tail call i32 @uiSearchBoxHeight() #8
  %10 = trunc i32 %9 to i16
  %11 = tail call ptr @uiDefBut(ptr noundef %6, i32 noundef 5120, i32 noundef 0, ptr noundef nonnull @.str.12, i32 noundef 10, i32 noundef 15, i16 noundef signext %8, i16 noundef signext %10, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef null) #8
  %12 = tail call ptr @uiDefSearchBut(ptr noundef %6, ptr noundef nonnull @tool_search_menu.search, i32 noundef 0, i32 noundef 30, i32 noundef 64, i32 noundef 10, i32 noundef 0, i16 noundef signext 150, i16 noundef signext 19, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.12) #8
  tail call void @uiButSetSearchFunc(ptr noundef %12, ptr noundef nonnull @operator_search_cb, ptr noundef %2, ptr noundef nonnull @operator_call_cb, ptr noundef null) #8
  tail call void @uiBoundsBlock(ptr noundef %6, i32 noundef 6) #8
  tail call void @uiBlockSetDirection(ptr noundef %6, i8 noundef zeroext 2) #8
  tail call void @uiEndBlock(ptr noundef %0, ptr noundef %6) #8
  call void @wm_event_init_from_window(ptr noundef %5, ptr noundef nonnull %4) #8
  %13 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 2
  store i16 20513, ptr %13, align 8, !tbaa !76
  %14 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 3
  store i16 1, ptr %14, align 2, !tbaa !79
  %15 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 28
  store ptr %12, ptr %15, align 8, !tbaa !80
  %16 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 26
  store i16 0, ptr %16, align 2, !tbaa !81
  call void @wm_event_add(ptr noundef %5, ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %4) #10
  ret ptr %6
}

; Function Attrs: optsize
declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiBeginBlock(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiBlockSetFlag(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiDefBut(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @uiSearchBoxWidth() local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @uiSearchBoxHeight() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiDefSearchBut(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiButSetSearchFunc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @operator_search_cb(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2, ptr noundef %3) #0 !PGOFuncName !82 {
  %5 = alloca %struct.GHashIterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  call void @WM_operatortype_iter(ptr noundef nonnull %5) #8
  %6 = call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef nonnull %5) #11, !range !83
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %23

8:                                                ; preds = %4, %20
  %9 = call fastcc ptr @BLI_ghashIterator_getValue(ptr noundef nonnull %5) #11
  %10 = load ptr, ptr %9, align 8, !tbaa !67
  %11 = call ptr @BLI_strcasestr(ptr noundef %10, ptr noundef %2) #8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %8
  %14 = call i32 @WM_operator_poll(ptr noundef %0, ptr noundef nonnull %9) #8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr %9, align 8, !tbaa !67
  %18 = call zeroext i8 @uiSearchItemAdd(ptr noundef %3, ptr noundef %17, ptr noundef nonnull %9, i32 noundef 0) #8
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %8, %16, %13
  call void @BLI_ghashIterator_step(ptr noundef nonnull %5) #8
  %21 = call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef nonnull %5) #11, !range !83
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %8, label %23, !llvm.loop !84

23:                                               ; preds = %20, %16, %4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @operator_call_cb(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2) #0 !PGOFuncName !85 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %7 = tail call ptr %6(i64 noundef 144, ptr noundef nonnull @.str.13) #8
  tail call void @BLI_addtail(ptr noundef %1, ptr noundef %7) #8
  %8 = getelementptr inbounds %struct.CustomTool, ptr %7, i64 0, i32 2
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %2, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !69
  %11 = tail call ptr @BLI_strncpy(ptr noundef nonnull %8, ptr noundef %10, i64 noundef 64) #8
  %12 = getelementptr inbounds %struct.CustomTool, ptr %7, i64 0, i32 3
  %13 = tail call ptr @CTX_data_mode_string(ptr noundef %0) #8
  %14 = tail call ptr @BLI_strncpy(ptr noundef nonnull %12, ptr noundef %13, i64 noundef 64) #8
  br label %15

15:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: optsize
declare void @uiBoundsBlock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiBlockSetDirection(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiEndBlock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @wm_event_init_from_window(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @wm_event_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_operatortype_iter(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_ghashIterator_done(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !86 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !87
  %4 = icmp eq ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @BLI_ghashIterator_getValue(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !89 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !87
  %4 = getelementptr inbounds %struct._gh_Entry, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !90
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @BLI_strcasestr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @WM_operator_poll(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @uiSearchItemAdd(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_ghashIterator_step(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_operator_last_redo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_struct_ui_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_area_find_region_active_win(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CTX_wm_region_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @WM_operator_check_ui_enabled(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiLayoutSetEnabled(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiBlockSetHandleFunc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_undo_operator_repeat_cb_evt(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @view3d_panel_operator_redo_operator(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !92 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %2, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %5, i64 0, i32 19
  %7 = load i16, ptr %6, align 8, !tbaa !72
  %8 = and i16 %7, 8
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %26, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.wmOperator, ptr %2, i64 0, i32 9
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = icmp eq ptr %12, null
  br i1 %13, label %27, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.Panel, ptr %1, i64 0, i32 3
  br label %16

16:                                               ; preds = %14, %16
  %17 = phi ptr [ %12, %14 ], [ %24, %16 ]
  %18 = load ptr, ptr %15, align 8, !tbaa !49
  %19 = getelementptr inbounds %struct.wmOperator, ptr %17, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !62
  %21 = getelementptr inbounds %struct.wmOperatorType, ptr %20, i64 0, i32 11
  %22 = load ptr, ptr %21, align 8, !tbaa !64
  %23 = tail call ptr @RNA_struct_ui_name(ptr noundef %22) #8
  tail call void @uiItemL(ptr noundef %18, ptr noundef %23, i32 noundef 0) #8
  tail call fastcc void @view3d_panel_operator_redo_operator(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %17) #11
  %24 = load ptr, ptr %17, align 8, !tbaa !34
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %16, !llvm.loop !93

26:                                               ; preds = %3
  tail call fastcc void @view3d_panel_operator_redo_buts(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #11
  br label %27

27:                                               ; preds = %16, %10, %26
  ret void
}

; Function Attrs: optsize
declare void @uiItemL(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @view3d_panel_operator_redo_buts(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !94 {
  %4 = getelementptr inbounds %struct.Panel, ptr %1, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !49
  tail call void @uiLayoutOperatorButs(ptr noundef %0, ptr noundef %5, ptr noundef %2, ptr noundef null, i8 noundef zeroext 86, i16 noundef signext 0) #8
  ret void
}

; Function Attrs: optsize
declare void @uiLayoutOperatorButs(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @view3d_has_tools_region(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_toggle_hidden(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nounwind optsize }
attributes #9 = { nounwind optsize willreturn memory(read) }
attributes #10 = { nounwind }
attributes #11 = { optsize }

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
!42 = !{!"view3d_toolbar.c:view3d_panel_tool_shelf"}
!43 = !{!44, !40, i64 32}
!44 = !{!"SpaceLink", !35, i64 0, !35, i64 8, !45, i64 16, !40, i64 32, !46, i64 36, !36, i64 40}
!45 = !{!"ListBase", !35, i64 0, !35, i64 8}
!46 = !{!"float", !36, i64 0}
!47 = !{!48, !35, i64 192}
!48 = !{!"SpaceType", !35, i64 0, !35, i64 8, !36, i64 16, !40, i64 80, !40, i64 84, !35, i64 88, !35, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !35, i64 152, !35, i64 160, !35, i64 168, !45, i64 176, !45, i64 192, !40, i64 208}
!49 = !{!50, !35, i64 24}
!50 = !{!"Panel", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !36, i64 96, !36, i64 160, !40, i64 224, !40, i64 228, !40, i64 232, !40, i64 236, !51, i64 240, !51, i64 242, !51, i64 244, !51, i64 246, !51, i64 248, !51, i64 250, !40, i64 252, !35, i64 256, !35, i64 264}
!51 = !{!"short", !36, i64 0}
!52 = !{!53, !35, i64 0}
!53 = !{!"CustomTool", !35, i64 0, !35, i64 8, !36, i64 16, !36, i64 80}
!54 = distinct !{!54, !55}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!57, !51, i64 8948}
!57 = !{!"UserDef", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !36, i64 20, !36, i64 788, !36, i64 1556, !36, i64 2580, !36, i64 3348, !36, i64 4116, !36, i64 4884, !36, i64 5652, !36, i64 6420, !36, i64 7444, !40, i64 8468, !51, i64 8472, !51, i64 8474, !51, i64 8476, !51, i64 8478, !51, i64 8480, !51, i64 8482, !40, i64 8484, !40, i64 8488, !40, i64 8492, !51, i64 8496, !51, i64 8498, !40, i64 8500, !40, i64 8504, !40, i64 8508, !40, i64 8512, !40, i64 8516, !40, i64 8520, !40, i64 8524, !51, i64 8528, !51, i64 8530, !51, i64 8532, !51, i64 8534, !45, i64 8536, !45, i64 8552, !45, i64 8568, !45, i64 8584, !45, i64 8600, !45, i64 8616, !45, i64 8632, !36, i64 8648, !51, i64 8712, !51, i64 8714, !51, i64 8716, !51, i64 8718, !51, i64 8720, !51, i64 8722, !51, i64 8724, !51, i64 8726, !36, i64 8728, !51, i64 8896, !51, i64 8898, !51, i64 8900, !51, i64 8902, !51, i64 8904, !51, i64 8906, !51, i64 8908, !51, i64 8910, !40, i64 8912, !40, i64 8916, !51, i64 8920, !51, i64 8922, !51, i64 8924, !51, i64 8926, !51, i64 8928, !51, i64 8930, !51, i64 8932, !51, i64 8934, !51, i64 8936, !51, i64 8938, !36, i64 8940, !36, i64 8941, !36, i64 8942, !36, i64 8943, !51, i64 8944, !51, i64 8946, !51, i64 8948, !51, i64 8950, !51, i64 8952, !51, i64 8954, !46, i64 8956, !46, i64 8960, !40, i64 8964, !51, i64 8968, !51, i64 8970, !46, i64 8972, !51, i64 8976, !51, i64 8978, !51, i64 8980, !51, i64 8982, !58, i64 8984, !36, i64 9760, !36, i64 9772, !51, i64 9788, !36, i64 9790, !36, i64 9791, !36, i64 9792, !36, i64 9872, !40, i64 10896, !40, i64 10900, !46, i64 10904, !46, i64 10908, !40, i64 10912, !51, i64 10916, !51, i64 10918, !51, i64 10920, !51, i64 10922, !51, i64 10924, !51, i64 10926, !59, i64 10928}
!58 = !{!"ColorBand", !51, i64 0, !51, i64 2, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !36, i64 8}
!59 = !{!"WalkNavigation", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12, !46, i64 16, !46, i64 20, !51, i64 24, !36, i64 26}
!60 = !{!39, !35, i64 360}
!61 = !{!"view3d_toolbar.c:view3d_panel_operator_redo_header"}
!62 = !{!63, !35, i64 88}
!63 = !{!"wmOperator", !35, i64 0, !35, i64 8, !36, i64 16, !35, i64 80, !35, i64 88, !35, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !45, i64 128, !35, i64 144, !35, i64 152, !51, i64 160, !36, i64 162}
!64 = !{!65, !35, i64 88}
!65 = !{!"wmOperatorType", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !35, i64 88, !35, i64 96, !35, i64 104, !45, i64 112, !35, i64 128, !35, i64 136, !35, i64 144, !41, i64 152, !51, i64 184}
!66 = !{!"view3d_toolbar.c:view3d_panel_operator_redo"}
!67 = !{!65, !35, i64 0}
!68 = !{!65, !35, i64 24}
!69 = !{!65, !35, i64 8}
!70 = !{!65, !35, i64 32}
!71 = !{!65, !35, i64 72}
!72 = !{!65, !51, i64 184}
!73 = !{!"view3d_toolbar.c:view3d_toolshelf_toggle_exec"}
!74 = !{!"view3d_toolbar.c:tool_search_menu"}
!75 = !{!36, !36, i64 0}
!76 = !{!77, !51, i64 16}
!77 = !{!"wmEvent", !35, i64 0, !35, i64 8, !51, i64 16, !51, i64 18, !40, i64 20, !40, i64 24, !36, i64 28, !36, i64 36, !36, i64 42, !36, i64 43, !51, i64 44, !51, i64 46, !40, i64 48, !40, i64 52, !78, i64 56, !40, i64 64, !40, i64 68, !51, i64 72, !51, i64 74, !51, i64 76, !51, i64 78, !51, i64 80, !51, i64 82, !35, i64 88, !35, i64 96, !51, i64 104, !51, i64 106, !40, i64 108, !35, i64 112}
!78 = !{!"double", !36, i64 0}
!79 = !{!77, !51, i64 18}
!80 = !{!77, !35, i64 112}
!81 = !{!77, !51, i64 106}
!82 = !{!"view3d_toolbar.c:operator_search_cb"}
!83 = !{i8 0, i8 2}
!84 = distinct !{!84, !55}
!85 = !{!"view3d_toolbar.c:operator_call_cb"}
!86 = !{!"view3d_toolbar.c:BLI_ghashIterator_done"}
!87 = !{!88, !35, i64 8}
!88 = !{!"GHashIterator", !35, i64 0, !35, i64 8, !40, i64 16}
!89 = !{!"view3d_toolbar.c:BLI_ghashIterator_getValue"}
!90 = !{!91, !35, i64 16}
!91 = !{!"_gh_Entry", !35, i64 0, !35, i64 8, !35, i64 16}
!92 = !{!"view3d_toolbar.c:view3d_panel_operator_redo_operator"}
!93 = distinct !{!93, !55}
!94 = !{!"view3d_toolbar.c:view3d_panel_operator_redo_buts"}
