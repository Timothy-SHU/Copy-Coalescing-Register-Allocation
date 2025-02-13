; ModuleID = 'blender/source/blender/editors/space_clip/clip_toolbar.c'
source_filename = "blender/source/blender/editors/space_clip/clip_toolbar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.PanelType = type { ptr, ptr, [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], i32, i32, i32, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.ARegionType = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i16 }
%struct.Panel = type { ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], [64 x i8], i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"clip properties region\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Properties\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Toggle clip properties panel\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"CLIP_OT_properties\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Tools\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Toggle clip tools panel\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"CLIP_OT_tools\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"spacetype clip panel last operator\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"CLIP_PT_last_operator\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"Operator\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"clip tools region\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"tool props for clip\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ED_clip_has_properties_region(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BKE_area_find_region_type(ptr noundef %0, i32 noundef 4) #4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %14

4:                                                ; preds = %1
  %5 = tail call ptr @BKE_area_find_region_type(ptr noundef %0, i32 noundef 1) #4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %9 = tail call ptr %8(i64 noundef 384, ptr noundef nonnull @.str) #4
  %10 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 20
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %10, ptr noundef nonnull %5, ptr noundef %9) #4
  %11 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 8
  store i16 4, ptr %11, align 2, !tbaa !38
  %12 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 9
  store i16 4, ptr %12, align 8, !tbaa !47
  %13 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 10
  store i16 1, ptr %13, align 2, !tbaa !48
  br label %14

14:                                               ; preds = %4, %1, %7
  %15 = phi ptr [ %9, %7 ], [ %2, %1 ], [ null, %4 ]
  ret ptr %15
}

; Function Attrs: optsize
declare ptr @BKE_area_find_region_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_insertlinkafter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @CLIP_OT_properties(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  store ptr @.str.1, ptr %0, align 8, !tbaa !49
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %2, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.3, ptr %3, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @properties_exec, ptr %4, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @properties_poll, ptr %5, align 8, !tbaa !55
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @properties_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !56 {
  %3 = tail call ptr @CTX_wm_area(ptr noundef %0) #4
  %4 = tail call ptr @ED_clip_has_properties_region(ptr noundef %3) #5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 9
  %8 = load i16, ptr %7, align 8, !tbaa !47
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @ED_region_toggle_hidden(ptr noundef %0, ptr noundef nonnull %4) #4
  br label %11

11:                                               ; preds = %10, %6, %2
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @properties_poll(ptr noundef %0) #0 !PGOFuncName !57 {
  %2 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #4
  %3 = icmp ne ptr %2, null
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @CLIP_OT_tools(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  store ptr @.str.4, ptr %0, align 8, !tbaa !49
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.5, ptr %2, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.6, ptr %3, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @tools_exec, ptr %4, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @tools_poll, ptr %5, align 8, !tbaa !55
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @tools_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !58 {
  %3 = tail call ptr @CTX_wm_area(ptr noundef %0) #4
  %4 = tail call fastcc ptr @clip_has_tools_region(ptr noundef %3) #5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 9
  %8 = load i16, ptr %7, align 8, !tbaa !47
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @ED_region_toggle_hidden(ptr noundef %0, ptr noundef nonnull %4) #4
  br label %11

11:                                               ; preds = %10, %6, %2
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @tools_poll(ptr noundef %0) #0 !PGOFuncName !59 {
  %2 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #4
  %3 = icmp ne ptr %2, null
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_clip_tool_props_register(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 408, ptr noundef nonnull @.str.7) #4
  %4 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %4, ptr noundef nonnull align 1 dereferenceable(22) @.str.8, i64 22, i1 false) #4
  %5 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %5, ptr noundef nonnull align 1 dereferenceable(9) @.str.9, i64 9, i1 false) #4
  %6 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 4
  store i16 42, ptr %6, align 1
  %7 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 11
  store ptr @clip_panel_operator_redo_header, ptr %7, align 8, !tbaa !60
  %8 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 12
  store ptr @clip_panel_operator_redo, ptr %8, align 8, !tbaa !62
  %9 = getelementptr inbounds %struct.ARegionType, ptr %0, i64 0, i32 14
  tail call void @BLI_addtail(ptr noundef nonnull %9, ptr noundef %3) #4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @clip_panel_operator_redo_header(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !63 {
  %3 = tail call ptr @WM_operator_last_redo(ptr noundef %0) #4
  %4 = icmp eq ptr %3, null
  %5 = getelementptr inbounds %struct.Panel, ptr %1, i64 0, i32 6
  br i1 %4, label %13, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmOperator, ptr %3, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !64
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %8, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !66
  %11 = tail call ptr @RNA_struct_ui_name(ptr noundef %10) #4
  %12 = tail call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef %11, i64 noundef 64) #4
  br label %15

13:                                               ; preds = %2
  %14 = tail call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef nonnull @.str.9, i64 noundef 64) #4
  br label %15

15:                                               ; preds = %13, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @clip_panel_operator_redo(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !67 {
  %3 = tail call ptr @WM_operator_last_redo(ptr noundef %0) #4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %28, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @CTX_wm_region(ptr noundef %0) #4
  %7 = tail call ptr @CTX_wm_area(ptr noundef %0) #4
  %8 = tail call ptr @BKE_area_find_region_type(ptr noundef %7, i32 noundef 0) #4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %5
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef nonnull %8) #4
  br label %11

11:                                               ; preds = %10, %5
  %12 = getelementptr inbounds %struct.wmOperator, ptr %3, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !64
  %14 = tail call i32 @WM_operator_poll(ptr noundef %0, ptr noundef %13) #4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.Panel, ptr %1, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !68
  %19 = tail call ptr @uiLayoutGetBlock(ptr noundef %18) #4
  %20 = load ptr, ptr %12, align 8, !tbaa !64
  %21 = load ptr, ptr %20, align 8, !tbaa !49
  %22 = tail call zeroext i8 @WM_operator_check_ui_enabled(ptr noundef %0, ptr noundef %21) #4
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = load ptr, ptr %17, align 8, !tbaa !68
  tail call void @uiLayoutSetEnabled(ptr noundef %25, i8 noundef zeroext 0) #4
  br label %26

26:                                               ; preds = %24, %16
  tail call void @uiBlockSetHandleFunc(ptr noundef %19, ptr noundef nonnull @ED_undo_operator_repeat_cb_evt, ptr noundef nonnull %3) #4
  tail call fastcc void @clip_panel_operator_redo_operator(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %3) #5
  br label %27

27:                                               ; preds = %26, %11
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef %6) #4
  br label %28

28:                                               ; preds = %2, %27
  ret void
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_region_toggle_hidden(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_wm_space_clip(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @clip_has_tools_region(ptr noundef %0) unnamed_addr #0 !PGOFuncName !70 {
  %2 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 20
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %23, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %15, %5 ], [ %3, %1 ]
  %7 = phi ptr [ %14, %5 ], [ null, %1 ]
  %8 = phi ptr [ %12, %5 ], [ null, %1 ]
  %9 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 8
  %10 = load i16, ptr %9, align 2, !tbaa !38
  %11 = icmp eq i16 %10, 5
  %12 = select i1 %11, ptr %6, ptr %8
  %13 = icmp eq i16 %10, 6
  %14 = select i1 %13, ptr %6, ptr %7
  %15 = load ptr, ptr %6, align 8, !tbaa !34
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %5, !llvm.loop !71

17:                                               ; preds = %5
  %18 = icmp ne ptr %14, null
  %19 = icmp ne ptr %12, null
  %20 = select i1 %18, i1 %19, i1 false
  br i1 %20, label %42, label %21

21:                                               ; preds = %17
  %22 = icmp eq ptr %12, null
  br i1 %22, label %23, label %33

23:                                               ; preds = %1, %21
  %24 = phi ptr [ %14, %21 ], [ null, %1 ]
  %25 = tail call ptr @BKE_area_find_region_type(ptr noundef %0, i32 noundef 1) #4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %42, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %29 = tail call ptr %28(i64 noundef 384, ptr noundef nonnull @.str.11) #4
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %2, ptr noundef nonnull %25, ptr noundef %29) #4
  %30 = getelementptr inbounds %struct.ARegion, ptr %29, i64 0, i32 8
  store i16 5, ptr %30, align 2, !tbaa !38
  %31 = getelementptr inbounds %struct.ARegion, ptr %29, i64 0, i32 9
  store i16 3, ptr %31, align 8, !tbaa !47
  %32 = getelementptr inbounds %struct.ARegion, ptr %29, i64 0, i32 10
  store i16 1, ptr %32, align 2, !tbaa !48
  br label %33

33:                                               ; preds = %27, %21
  %34 = phi ptr [ %24, %27 ], [ %14, %21 ]
  %35 = phi ptr [ %29, %27 ], [ %12, %21 ]
  %36 = icmp eq ptr %34, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %39 = tail call ptr %38(i64 noundef 384, ptr noundef nonnull @.str.12) #4
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %2, ptr noundef nonnull %35, ptr noundef %39) #4
  %40 = getelementptr inbounds %struct.ARegion, ptr %39, i64 0, i32 8
  store i16 6, ptr %40, align 2, !tbaa !38
  %41 = getelementptr inbounds %struct.ARegion, ptr %39, i64 0, i32 9
  store i16 34, ptr %41, align 8, !tbaa !47
  br label %42

42:                                               ; preds = %33, %37, %23, %17
  %43 = phi ptr [ %12, %17 ], [ null, %23 ], [ %35, %37 ], [ %35, %33 ]
  ret ptr %43
}

; Function Attrs: optsize
declare ptr @WM_operator_last_redo(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @RNA_struct_ui_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @CTX_wm_region_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @WM_operator_poll(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @uiLayoutGetBlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @WM_operator_check_ui_enabled(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @uiLayoutSetEnabled(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @uiBlockSetHandleFunc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_undo_operator_repeat_cb_evt(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @clip_panel_operator_redo_operator(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !73 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %2, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %5, i64 0, i32 19
  %7 = load i16, ptr %6, align 8, !tbaa !74
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
  %18 = load ptr, ptr %15, align 8, !tbaa !68
  %19 = getelementptr inbounds %struct.wmOperator, ptr %17, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !64
  %21 = getelementptr inbounds %struct.wmOperatorType, ptr %20, i64 0, i32 11
  %22 = load ptr, ptr %21, align 8, !tbaa !66
  %23 = tail call ptr @RNA_struct_ui_name(ptr noundef %22) #4
  tail call void @uiItemL(ptr noundef %18, ptr noundef %23, i32 noundef 0) #4
  tail call fastcc void @clip_panel_operator_redo_operator(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %17) #5
  %24 = load ptr, ptr %17, align 8, !tbaa !34
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %16, !llvm.loop !75

26:                                               ; preds = %3
  tail call fastcc void @clip_panel_operator_redo_buts(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #5
  br label %27

27:                                               ; preds = %16, %10, %26
  ret void
}

; Function Attrs: optsize
declare void @uiItemL(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @clip_panel_operator_redo_buts(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !76 {
  %4 = getelementptr inbounds %struct.Panel, ptr %1, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !68
  tail call void @uiLayoutOperatorButs(ptr noundef %0, ptr noundef %5, ptr noundef %2, ptr noundef null, i8 noundef zeroext 86, i16 noundef signext 0) #4
  ret void
}

; Function Attrs: optsize
declare void @uiLayoutOperatorButs(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }

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
!38 = !{!39, !45, i64 214}
!39 = !{!"ARegion", !35, i64 0, !35, i64 8, !40, i64 16, !43, i64 176, !43, i64 192, !45, i64 208, !45, i64 210, !45, i64 212, !45, i64 214, !45, i64 216, !45, i64 218, !42, i64 220, !45, i64 224, !45, i64 226, !45, i64 228, !45, i64 230, !45, i64 232, !45, i64 234, !45, i64 236, !45, i64 238, !35, i64 240, !46, i64 248, !46, i64 264, !46, i64 280, !46, i64 296, !46, i64 312, !46, i64 328, !46, i64 344, !35, i64 360, !35, i64 368, !35, i64 376}
!40 = !{!"View2D", !41, i64 0, !41, i64 16, !43, i64 32, !43, i64 48, !43, i64 64, !36, i64 80, !36, i64 88, !42, i64 96, !42, i64 100, !45, i64 104, !45, i64 106, !45, i64 108, !45, i64 110, !45, i64 112, !45, i64 114, !45, i64 116, !45, i64 118, !45, i64 120, !45, i64 122, !45, i64 124, !45, i64 126, !35, i64 128, !44, i64 136, !44, i64 140, !35, i64 144, !35, i64 152}
!41 = !{!"rctf", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12}
!42 = !{!"float", !36, i64 0}
!43 = !{!"rcti", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12}
!44 = !{!"int", !36, i64 0}
!45 = !{!"short", !36, i64 0}
!46 = !{!"ListBase", !35, i64 0, !35, i64 8}
!47 = !{!39, !45, i64 216}
!48 = !{!39, !45, i64 218}
!49 = !{!50, !35, i64 0}
!50 = !{!"wmOperatorType", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !35, i64 88, !35, i64 96, !35, i64 104, !46, i64 112, !35, i64 128, !35, i64 136, !35, i64 144, !51, i64 152, !45, i64 184}
!51 = !{!"ExtensionRNA", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24}
!52 = !{!50, !35, i64 24}
!53 = !{!50, !35, i64 8}
!54 = !{!50, !35, i64 32}
!55 = !{!50, !35, i64 72}
!56 = !{!"clip_toolbar.c:properties_exec"}
!57 = !{!"clip_toolbar.c:properties_poll"}
!58 = !{!"clip_toolbar.c:tools_exec"}
!59 = !{!"clip_toolbar.c:tools_poll"}
!60 = !{!61, !35, i64 360}
!61 = !{!"PanelType", !35, i64 0, !35, i64 8, !36, i64 16, !36, i64 80, !36, i64 144, !36, i64 208, !36, i64 272, !44, i64 336, !44, i64 340, !44, i64 344, !35, i64 352, !35, i64 360, !35, i64 368, !51, i64 376}
!62 = !{!61, !35, i64 368}
!63 = !{!"clip_toolbar.c:clip_panel_operator_redo_header"}
!64 = !{!65, !35, i64 88}
!65 = !{!"wmOperator", !35, i64 0, !35, i64 8, !36, i64 16, !35, i64 80, !35, i64 88, !35, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !46, i64 128, !35, i64 144, !35, i64 152, !45, i64 160, !36, i64 162}
!66 = !{!50, !35, i64 88}
!67 = !{!"clip_toolbar.c:clip_panel_operator_redo"}
!68 = !{!69, !35, i64 24}
!69 = !{!"Panel", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !36, i64 96, !36, i64 160, !44, i64 224, !44, i64 228, !44, i64 232, !44, i64 236, !45, i64 240, !45, i64 242, !45, i64 244, !45, i64 246, !45, i64 248, !45, i64 250, !44, i64 252, !35, i64 256, !35, i64 264}
!70 = !{!"clip_toolbar.c:clip_has_tools_region"}
!71 = distinct !{!71, !72}
!72 = !{!"llvm.loop.mustprogress"}
!73 = !{!"clip_toolbar.c:clip_panel_operator_redo_operator"}
!74 = !{!50, !45, i64 184}
!75 = distinct !{!75, !72}
!76 = !{!"clip_toolbar.c:clip_panel_operator_redo_buts"}
