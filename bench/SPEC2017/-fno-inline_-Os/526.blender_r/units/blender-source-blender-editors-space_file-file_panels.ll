; ModuleID = 'blender/source/blender/editors/space_file/file_panels.c'
source_filename = "blender/source/blender/editors/space_file/file_panels.c"
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
%struct.SpaceFile = type { ptr, ptr, %struct.ListBase, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, i16 }
%struct.Panel = type { ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], [64 x i8], i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.FileSelectParams = type { [96 x i8], [1056 x i8], [256 x i8], [256 x i8], [256 x i8], [64 x i8], i32, i32, i32, i16, i16, i16, i16, i16, i16, [8 x i8] }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [34 x i8] c"spacetype file system directories\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"FILE_PT_system\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"System\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"spacetype file system bookmarks\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"FILE_PT_system_bookmarks\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"System Bookmarks\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"spacetype file bookmarks\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"FILE_PT_bookmarks\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"Bookmarks\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"spacetype file recent directories\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"FILE_PT_recent\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"Recent\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"spacetype file operator properties\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"FILE_PT_operator\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"Operator\00", align 1
@U = external local_unnamed_addr global %struct.UserDef, align 8
@.str.16 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"FILE_OT_bookmark_delete\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"FILE_OT_select_bookmark\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"Add\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"file.bookmark_add\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"Reset\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"file.reset_recent\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"filepath\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"directory\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"filename\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @file_panels_register(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 408, ptr noundef nonnull @.str) #5
  %4 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %4, ptr noundef nonnull align 1 dereferenceable(15) @.str.1, i64 15, i1 false) #5
  %5 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %5, ptr noundef nonnull align 1 dereferenceable(7) @.str.2, i64 7, i1 false) #5
  %6 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 4
  store i16 42, ptr %6, align 1
  %7 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 12
  store ptr @file_panel_system, ptr %7, align 8, !tbaa !38
  %8 = getelementptr inbounds %struct.ARegionType, ptr %0, i64 0, i32 14
  tail call void @BLI_addtail(ptr noundef nonnull %8, ptr noundef %3) #5
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %10 = tail call ptr %9(i64 noundef 408, ptr noundef nonnull @.str.4) #5
  %11 = getelementptr inbounds %struct.PanelType, ptr %10, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(25) %11, ptr noundef nonnull align 1 dereferenceable(25) @.str.5, i64 25, i1 false) #5
  %12 = getelementptr inbounds %struct.PanelType, ptr %10, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %12, ptr noundef nonnull align 1 dereferenceable(17) @.str.6, i64 17, i1 false) #5
  %13 = getelementptr inbounds %struct.PanelType, ptr %10, i64 0, i32 4
  store i16 42, ptr %13, align 1
  %14 = getelementptr inbounds %struct.PanelType, ptr %10, i64 0, i32 12
  store ptr @file_panel_system_bookmarks, ptr %14, align 8, !tbaa !38
  %15 = getelementptr inbounds %struct.PanelType, ptr %10, i64 0, i32 10
  store ptr @file_panel_system_bookmarks_poll, ptr %15, align 8, !tbaa !42
  tail call void @BLI_addtail(ptr noundef nonnull %8, ptr noundef %10) #5
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %17 = tail call ptr %16(i64 noundef 408, ptr noundef nonnull @.str.7) #5
  %18 = getelementptr inbounds %struct.PanelType, ptr %17, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %18, ptr noundef nonnull align 1 dereferenceable(18) @.str.8, i64 18, i1 false) #5
  %19 = getelementptr inbounds %struct.PanelType, ptr %17, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %19, ptr noundef nonnull align 1 dereferenceable(10) @.str.9, i64 10, i1 false) #5
  %20 = getelementptr inbounds %struct.PanelType, ptr %17, i64 0, i32 4
  store i16 42, ptr %20, align 1
  %21 = getelementptr inbounds %struct.PanelType, ptr %17, i64 0, i32 12
  store ptr @file_panel_bookmarks, ptr %21, align 8, !tbaa !38
  tail call void @BLI_addtail(ptr noundef nonnull %8, ptr noundef %17) #5
  %22 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %23 = tail call ptr %22(i64 noundef 408, ptr noundef nonnull @.str.10) #5
  %24 = getelementptr inbounds %struct.PanelType, ptr %23, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %24, ptr noundef nonnull align 1 dereferenceable(15) @.str.11, i64 15, i1 false) #5
  %25 = getelementptr inbounds %struct.PanelType, ptr %23, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %25, ptr noundef nonnull align 1 dereferenceable(7) @.str.12, i64 7, i1 false) #5
  %26 = getelementptr inbounds %struct.PanelType, ptr %23, i64 0, i32 4
  store i16 42, ptr %26, align 1
  %27 = getelementptr inbounds %struct.PanelType, ptr %23, i64 0, i32 12
  store ptr @file_panel_recent, ptr %27, align 8, !tbaa !38
  %28 = getelementptr inbounds %struct.PanelType, ptr %23, i64 0, i32 10
  store ptr @file_panel_recent_poll, ptr %28, align 8, !tbaa !42
  tail call void @BLI_addtail(ptr noundef nonnull %8, ptr noundef %23) #5
  %29 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %30 = tail call ptr %29(i64 noundef 408, ptr noundef nonnull @.str.13) #5
  %31 = getelementptr inbounds %struct.PanelType, ptr %30, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %31, ptr noundef nonnull align 1 dereferenceable(17) @.str.14, i64 17, i1 false) #5
  %32 = getelementptr inbounds %struct.PanelType, ptr %30, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %32, ptr noundef nonnull align 1 dereferenceable(9) @.str.15, i64 9, i1 false) #5
  %33 = getelementptr inbounds %struct.PanelType, ptr %30, i64 0, i32 4
  store i16 42, ptr %33, align 1
  %34 = getelementptr inbounds %struct.PanelType, ptr %30, i64 0, i32 10
  store ptr @file_panel_operator_poll, ptr %34, align 8, !tbaa !42
  %35 = getelementptr inbounds %struct.PanelType, ptr %30, i64 0, i32 11
  store ptr @file_panel_operator_header, ptr %35, align 8, !tbaa !43
  %36 = getelementptr inbounds %struct.PanelType, ptr %30, i64 0, i32 12
  store ptr @file_panel_operator, ptr %36, align 8, !tbaa !38
  tail call void @BLI_addtail(ptr noundef nonnull %8, ptr noundef %30) #5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @file_panel_system(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !44 {
  %3 = tail call ptr @CTX_wm_space_file(ptr noundef %0) #5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.SpaceFile, ptr %3, i64 0, i32 14
  tail call fastcc void @file_panel_category(ptr noundef %0, ptr noundef %1, i32 noundef 0, ptr noundef nonnull %6, i32 noundef 727, i32 noundef 0) #6
  br label %7

7:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @file_panel_system_bookmarks(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !45 {
  %3 = tail call ptr @CTX_wm_space_file(ptr noundef %0) #5
  %4 = icmp ne ptr %3, null
  %5 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4
  %6 = icmp sgt i32 %5, -1
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.SpaceFile, ptr %3, i64 0, i32 14
  tail call fastcc void @file_panel_category(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull %9, i32 noundef 686, i32 noundef 0) #6
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @file_panel_system_bookmarks_poll(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !46 {
  %3 = tail call ptr @CTX_wm_space_file(ptr noundef %0) #5
  %4 = icmp ne ptr %3, null
  %5 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4
  %6 = icmp sgt i32 %5, -1
  %7 = select i1 %4, i1 %6, i1 false
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @file_panel_bookmarks(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !47 {
  %3 = tail call ptr @CTX_wm_space_file(ptr noundef %0) #5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Panel, ptr %1, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  %8 = tail call ptr @uiLayoutRow(ptr noundef %7, i32 noundef 0) #5
  tail call void @uiItemO(ptr noundef %8, ptr noundef nonnull @.str.21, i32 noundef 31, ptr noundef nonnull @.str.22) #5
  tail call void @uiItemL(ptr noundef %8, ptr noundef null, i32 noundef 0) #5
  %9 = getelementptr inbounds %struct.SpaceFile, ptr %3, i64 0, i32 13
  tail call fastcc void @file_panel_category(ptr noundef %0, ptr noundef %1, i32 noundef 2, ptr noundef nonnull %9, i32 noundef 686, i32 noundef 1) #6
  br label %10

10:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @file_panel_recent(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !51 {
  %3 = tail call ptr @CTX_wm_space_file(ptr noundef %0) #5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !52
  %7 = and i32 %6, 268435456
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Panel, ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !48
  %12 = tail call ptr @uiLayoutRow(ptr noundef %11, i32 noundef 0) #5
  tail call void @uiItemO(ptr noundef %12, ptr noundef nonnull @.str.23, i32 noundef 19, ptr noundef nonnull @.str.24) #5
  tail call void @uiItemL(ptr noundef %12, ptr noundef null, i32 noundef 0) #5
  %13 = getelementptr inbounds %struct.SpaceFile, ptr %3, i64 0, i32 12
  tail call fastcc void @file_panel_category(ptr noundef %0, ptr noundef %1, i32 noundef 3, ptr noundef nonnull %13, i32 noundef 693, i32 noundef 0) #6
  br label %14

14:                                               ; preds = %5, %9, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @file_panel_recent_poll(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !58 {
  %3 = tail call ptr @CTX_wm_space_file(ptr noundef %0) #5
  %4 = icmp ne ptr %3, null
  %5 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4
  %6 = and i32 %5, 268435456
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %4, i1 %7, i1 false
  %9 = zext i1 %8 to i32
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @file_panel_operator_poll(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !59 {
  %3 = tail call ptr @CTX_wm_space_file(ptr noundef %0) #5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.SpaceFile, ptr %3, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !60
  %8 = icmp ne ptr %7, null
  %9 = zext i1 %8 to i32
  br label %10

10:                                               ; preds = %5, %2
  %11 = phi i32 [ 0, %2 ], [ %9, %5 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @file_panel_operator_header(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !62 {
  %3 = tail call ptr @CTX_wm_space_file(ptr noundef %0) #5
  %4 = getelementptr inbounds %struct.SpaceFile, ptr %3, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !60
  %6 = getelementptr inbounds %struct.Panel, ptr %1, i64 0, i32 6
  %7 = getelementptr inbounds %struct.wmOperator, ptr %5, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !63
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %8, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !65
  %11 = tail call ptr @RNA_struct_ui_name(ptr noundef %10) #5
  %12 = tail call ptr @BLI_strncpy(ptr noundef nonnull %6, ptr noundef %11, i64 noundef 64) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @file_panel_operator(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !67 {
  %3 = tail call ptr @CTX_wm_space_file(ptr noundef %0) #5
  %4 = getelementptr inbounds %struct.SpaceFile, ptr %3, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !60
  %6 = getelementptr inbounds %struct.Panel, ptr %1, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  %8 = tail call ptr @uiLayoutGetBlock(ptr noundef %7) #5
  tail call void @uiBlockSetFunc(ptr noundef %8, ptr noundef nonnull @file_draw_check_cb, ptr noundef null, ptr noundef null) #5
  %9 = load ptr, ptr %6, align 8, !tbaa !48
  tail call void @uiLayoutOperatorButs(ptr noundef %0, ptr noundef %9, ptr noundef %5, ptr noundef nonnull @file_panel_check_prop, i8 noundef zeroext 0, i16 noundef signext 2) #5
  %10 = load ptr, ptr %6, align 8, !tbaa !48
  %11 = tail call ptr @uiLayoutGetBlock(ptr noundef %10) #5
  tail call void @uiBlockSetFunc(ptr noundef %11, ptr noundef null, ptr noundef null, ptr noundef null) #5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @CTX_wm_space_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @file_panel_category(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 !PGOFuncName !68 {
  %7 = alloca [1024 x i8], align 16
  %8 = alloca [1024 x i8], align 16
  %9 = tail call ptr @CTX_wm_space_file(ptr noundef %0) #5
  %10 = tail call ptr @fsmenu_get() #5
  %11 = tail call i32 @fsmenu_get_nentries(ptr noundef %10, i32 noundef %2) #5
  store i16 -1, ptr %3, align 2, !tbaa !69
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %56, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.Panel, ptr %1, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !48
  tail call void @uiLayoutSetAlignment(ptr noundef %15, i8 noundef zeroext 1) #5
  %16 = load ptr, ptr %14, align 8, !tbaa !48
  %17 = tail call ptr @uiLayoutGetBlock(ptr noundef %16) #5
  %18 = load ptr, ptr %14, align 8, !tbaa !48
  %19 = tail call ptr @uiLayoutBox(ptr noundef %18) #5
  %20 = tail call ptr @uiLayoutColumn(ptr noundef %19, i32 noundef 1) #5
  %21 = icmp sgt i32 %11, 0
  br i1 %21, label %22, label %56

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.SpaceFile, ptr %9, i64 0, i32 5
  %24 = icmp eq i32 %5, 0
  br label %25

25:                                               ; preds = %22, %53
  %26 = phi i32 [ 0, %22 ], [ %54, %53 ]
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %8) #7
  %27 = call ptr @uiLayoutRow(ptr noundef %20, i32 noundef 0) #5
  %28 = call ptr @fsmenu_get_entry(ptr noundef %10, i32 noundef %2, i32 noundef %26) #5
  %29 = load ptr, ptr %23, align 8, !tbaa !70
  %30 = icmp eq ptr %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.FileSelectParams, ptr %29, i64 0, i32 1
  %33 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %32, ptr noundef nonnull dereferenceable(1) %28) #8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = trunc i32 %26 to i16
  store i16 %36, ptr %3, align 2, !tbaa !69
  br label %37

37:                                               ; preds = %31, %35, %25
  %38 = call ptr @BLI_strncpy(ptr noundef nonnull %8, ptr noundef %28, i64 noundef 1024) #5
  %39 = call i32 @BLI_add_slash(ptr noundef nonnull %8) #5
  call void @BLI_getlastdir(ptr noundef nonnull %8, ptr noundef nonnull %7, i64 noundef 1024) #5
  call void @BLI_del_slash(ptr noundef nonnull %7) #5
  %40 = load i8, ptr %7, align 16, !tbaa !71
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = call ptr @BLI_strncpy(ptr noundef nonnull %7, ptr noundef %28, i64 noundef 1024) #5
  br label %44

44:                                               ; preds = %42, %37
  %45 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !72
  %46 = mul i16 %45, 10
  %47 = sitofp i32 %26 to float
  %48 = call ptr @uiDefIconTextButS(ptr noundef %17, i32 noundef 18432, i32 noundef 0, i32 noundef %4, ptr noundef nonnull %7, i32 noundef 0, i32 noundef 0, i16 noundef signext %46, i16 noundef signext %45, ptr noundef nonnull %3, float noundef 0.000000e+00, float noundef %47, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef %28) #5
  call void @uiButSetFunc(ptr noundef %48, ptr noundef nonnull @file_panel_cb, ptr noundef %28, ptr noundef null) #5
  call void @uiButClearFlag(ptr noundef %48, i32 noundef 524288) #5
  call void @uiButSetDrawFlag(ptr noundef %48, i32 noundef 6) #5
  br i1 %24, label %53, label %49

49:                                               ; preds = %44
  %50 = call signext i16 @fsmenu_can_save(ptr noundef %10, i32 noundef %2, i32 noundef %26) #5
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  call void @uiBlockSetEmboss(ptr noundef %17, i8 noundef zeroext 1) #5
  call void @uiItemIntO(ptr noundef %27, ptr noundef nonnull @.str.16, i32 noundef 19, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %26) #5
  call void @uiBlockSetEmboss(ptr noundef %17, i8 noundef zeroext 0) #5
  br label %53

53:                                               ; preds = %52, %49, %44
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %7) #7
  %54 = add nuw nsw i32 %26, 1
  %55 = icmp eq i32 %54, %11
  br i1 %55, label %56, label %25, !llvm.loop !73

56:                                               ; preds = %53, %13, %6
  ret void
}

; Function Attrs: optsize
declare ptr @fsmenu_get() local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @fsmenu_get_nentries(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiLayoutSetAlignment(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiLayoutGetBlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiLayoutBox(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiLayoutColumn(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiLayoutRow(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fsmenu_get_entry(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_add_slash(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_getlastdir(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_del_slash(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiDefIconTextButS(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiButSetFunc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @file_panel_cb(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 !PGOFuncName !75 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = tail call ptr @WM_operatortype_find(ptr noundef nonnull @.str.19, i8 noundef zeroext 0) #5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #7
  call void @WM_operator_properties_create_ptr(ptr noundef nonnull %4, ptr noundef %5) #5
  call void @RNA_string_set(ptr noundef nonnull %4, ptr noundef nonnull @.str.20, ptr noundef %1) #5
  %6 = call i32 @WM_operator_name_call_ptr(ptr noundef %0, ptr noundef %5, i16 noundef signext 1, ptr noundef nonnull %4) #5
  call void @WM_operator_properties_free(ptr noundef nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #7
  ret void
}

; Function Attrs: optsize
declare void @uiButClearFlag(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiButSetDrawFlag(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare signext i16 @fsmenu_can_save(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiBlockSetEmboss(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiItemIntO(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_operatortype_find(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_operator_properties_create_ptr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @WM_operator_name_call_ptr(ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_operator_properties_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiItemO(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiItemL(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_struct_ui_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiBlockSetFunc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @file_draw_check_cb(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare void @uiLayoutOperatorButs(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @file_panel_check_prop(ptr nocapture readnone %0, ptr noundef %1) #0 !PGOFuncName !76 {
  %3 = tail call ptr @RNA_property_identifier(ptr noundef %1) #5
  %4 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(9) @.str.25) #8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(10) @.str.26) #8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %6
  %10 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(9) @.str.27) #8
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %9, %6, %2
  %14 = phi i8 [ 0, %6 ], [ 0, %2 ], [ %12, %9 ]
  ret i8 %14
}

; Function Attrs: optsize
declare ptr @RNA_property_identifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }
attributes #7 = { nounwind }
attributes #8 = { nounwind optsize willreturn memory(read) }

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
!43 = !{!39, !35, i64 360}
!44 = !{!"file_panels.c:file_panel_system"}
!45 = !{!"file_panels.c:file_panel_system_bookmarks"}
!46 = !{!"file_panels.c:file_panel_system_bookmarks_poll"}
!47 = !{!"file_panels.c:file_panel_bookmarks"}
!48 = !{!49, !35, i64 24}
!49 = !{!"Panel", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !36, i64 96, !36, i64 160, !40, i64 224, !40, i64 228, !40, i64 232, !40, i64 236, !50, i64 240, !50, i64 242, !50, i64 244, !50, i64 246, !50, i64 248, !50, i64 250, !40, i64 252, !35, i64 256, !35, i64 264}
!50 = !{!"short", !36, i64 0}
!51 = !{!"file_panels.c:file_panel_recent"}
!52 = !{!53, !40, i64 8484}
!53 = !{!"UserDef", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !36, i64 20, !36, i64 788, !36, i64 1556, !36, i64 2580, !36, i64 3348, !36, i64 4116, !36, i64 4884, !36, i64 5652, !36, i64 6420, !36, i64 7444, !40, i64 8468, !50, i64 8472, !50, i64 8474, !50, i64 8476, !50, i64 8478, !50, i64 8480, !50, i64 8482, !40, i64 8484, !40, i64 8488, !40, i64 8492, !50, i64 8496, !50, i64 8498, !40, i64 8500, !40, i64 8504, !40, i64 8508, !40, i64 8512, !40, i64 8516, !40, i64 8520, !40, i64 8524, !50, i64 8528, !50, i64 8530, !50, i64 8532, !50, i64 8534, !54, i64 8536, !54, i64 8552, !54, i64 8568, !54, i64 8584, !54, i64 8600, !54, i64 8616, !54, i64 8632, !36, i64 8648, !50, i64 8712, !50, i64 8714, !50, i64 8716, !50, i64 8718, !50, i64 8720, !50, i64 8722, !50, i64 8724, !50, i64 8726, !36, i64 8728, !50, i64 8896, !50, i64 8898, !50, i64 8900, !50, i64 8902, !50, i64 8904, !50, i64 8906, !50, i64 8908, !50, i64 8910, !40, i64 8912, !40, i64 8916, !50, i64 8920, !50, i64 8922, !50, i64 8924, !50, i64 8926, !50, i64 8928, !50, i64 8930, !50, i64 8932, !50, i64 8934, !50, i64 8936, !50, i64 8938, !36, i64 8940, !36, i64 8941, !36, i64 8942, !36, i64 8943, !50, i64 8944, !50, i64 8946, !50, i64 8948, !50, i64 8950, !50, i64 8952, !50, i64 8954, !55, i64 8956, !55, i64 8960, !40, i64 8964, !50, i64 8968, !50, i64 8970, !55, i64 8972, !50, i64 8976, !50, i64 8978, !50, i64 8980, !50, i64 8982, !56, i64 8984, !36, i64 9760, !36, i64 9772, !50, i64 9788, !36, i64 9790, !36, i64 9791, !36, i64 9792, !36, i64 9872, !40, i64 10896, !40, i64 10900, !55, i64 10904, !55, i64 10908, !40, i64 10912, !50, i64 10916, !50, i64 10918, !50, i64 10920, !50, i64 10922, !50, i64 10924, !50, i64 10926, !57, i64 10928}
!54 = !{!"ListBase", !35, i64 0, !35, i64 8}
!55 = !{!"float", !36, i64 0}
!56 = !{!"ColorBand", !50, i64 0, !50, i64 2, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !36, i64 8}
!57 = !{!"WalkNavigation", !55, i64 0, !55, i64 4, !55, i64 8, !55, i64 12, !55, i64 16, !55, i64 20, !50, i64 24, !36, i64 26}
!58 = !{!"file_panels.c:file_panel_recent_poll"}
!59 = !{!"file_panels.c:file_panel_operator_poll"}
!60 = !{!61, !35, i64 72}
!61 = !{!"SpaceFile", !35, i64 0, !35, i64 8, !54, i64 16, !40, i64 32, !40, i64 36, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !35, i64 88, !50, i64 96, !50, i64 98, !50, i64 100, !50, i64 102}
!62 = !{!"file_panels.c:file_panel_operator_header"}
!63 = !{!64, !35, i64 88}
!64 = !{!"wmOperator", !35, i64 0, !35, i64 8, !36, i64 16, !35, i64 80, !35, i64 88, !35, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !54, i64 128, !35, i64 144, !35, i64 152, !50, i64 160, !36, i64 162}
!65 = !{!66, !35, i64 88}
!66 = !{!"wmOperatorType", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !35, i64 88, !35, i64 96, !35, i64 104, !54, i64 112, !35, i64 128, !35, i64 136, !35, i64 144, !41, i64 152, !50, i64 184}
!67 = !{!"file_panels.c:file_panel_operator"}
!68 = !{!"file_panels.c:file_panel_category"}
!69 = !{!50, !50, i64 0}
!70 = !{!61, !35, i64 40}
!71 = !{!36, !36, i64 0}
!72 = !{!53, !50, i64 8948}
!73 = distinct !{!73, !74}
!74 = !{!"llvm.loop.mustprogress"}
!75 = !{!"file_panels.c:file_panel_cb"}
!76 = !{!"file_panels.c:file_panel_check_prop"}
