; ModuleID = 'blender/source/blender/editors/space_info/space_info.c'
source_filename = "blender/source/blender/editors/space_info/space_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.SpaceType = type { ptr, ptr, [64 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, i32 }
%struct.ARegionType = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i16 }
%struct.SpaceInfo = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], i8, [7 x i8] }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.wmWindowManager = type { %struct.ID, ptr, ptr, %struct.ListBase, i32, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ReportList, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, %struct.ListBase, ptr, i8, [7 x i8] }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.ReportList = type { %struct.ListBase, i32, i32, i32, i32, ptr }
%struct.wmNotifier = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr }
%struct.MenuType = type { ptr, ptr, [64 x i8], [64 x i8], [64 x i8], ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.Menu = type { ptr, ptr }
%struct.RecentFile = type { ptr, ptr, ptr }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [15 x i8] c"spacetype info\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Info\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"spacetype info region\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"initinfo\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"header for info\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"main area for info\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [7 x i8] c"Window\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"INFO_OT_reports_display_update\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"INFO_OT_select_pick\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"INFO_OT_select_all_toggle\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"INFO_OT_select_border\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"INFO_OT_report_replay\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"INFO_OT_report_delete\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"INFO_OT_report_copy\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"spacetype info menu recent files\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"INFO_MT_file_open_recent\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"Open Recent...\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.18 = private unnamed_addr constant [20 x i8] c"WM_OT_open_mainfile\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"filepath\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"No Recent Files\00", align 1
@str = private unnamed_addr constant [65 x i8] c"Info\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_spacetype_info() local_unnamed_addr #0 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %2 = tail call ptr %1(i64 noundef 216, ptr noundef nonnull @.str) #5
  %3 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 3
  store i32 7, ptr %3, align 8, !tbaa !9
  %4 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %4, ptr noundef nonnull align 1 dereferenceable(64) @str, i64 noundef 64, i1 false) #5
  %5 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 5
  store ptr @info_new, ptr %5, align 8, !tbaa !13
  %6 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 6
  store ptr @info_free, ptr %6, align 8, !tbaa !14
  %7 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 7
  store ptr @info_init, ptr %7, align 8, !tbaa !15
  %8 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 11
  store ptr @info_duplicate, ptr %8, align 8, !tbaa !16
  %9 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 12
  store ptr @info_operatortypes, ptr %9, align 8, !tbaa !17
  %10 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 13
  store ptr @info_keymap, ptr %10, align 8, !tbaa !18
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %12 = tail call ptr %11(i64 noundef 184, ptr noundef nonnull @.str.2) #5
  %13 = getelementptr inbounds %struct.ARegionType, ptr %12, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !19
  %14 = getelementptr inbounds %struct.ARegionType, ptr %12, i64 0, i32 20
  store i32 19, ptr %14, align 8, !tbaa !22
  %15 = getelementptr inbounds %struct.ARegionType, ptr %12, i64 0, i32 3
  store ptr @info_main_area_init, ptr %15, align 8, !tbaa !23
  %16 = getelementptr inbounds %struct.ARegionType, ptr %12, i64 0, i32 5
  store ptr @info_main_area_draw, ptr %16, align 8, !tbaa !24
  %17 = getelementptr inbounds %struct.ARegionType, ptr %12, i64 0, i32 6
  store ptr @info_main_area_listener, ptr %17, align 8, !tbaa !25
  %18 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 16
  tail call void @BLI_addhead(ptr noundef nonnull %18, ptr noundef %12) #5
  %19 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %20 = tail call ptr %19(i64 noundef 184, ptr noundef nonnull @.str.2) #5
  %21 = getelementptr inbounds %struct.ARegionType, ptr %20, i64 0, i32 2
  store i32 1, ptr %21, align 8, !tbaa !19
  %22 = getelementptr inbounds %struct.ARegionType, ptr %20, i64 0, i32 19
  store i32 26, ptr %22, align 4, !tbaa !26
  %23 = getelementptr inbounds %struct.ARegionType, ptr %20, i64 0, i32 20
  store i32 83, ptr %23, align 8, !tbaa !22
  %24 = getelementptr inbounds %struct.ARegionType, ptr %20, i64 0, i32 6
  store ptr @info_header_listener, ptr %24, align 8, !tbaa !25
  %25 = getelementptr inbounds %struct.ARegionType, ptr %20, i64 0, i32 3
  store ptr @info_header_area_init, ptr %25, align 8, !tbaa !23
  %26 = getelementptr inbounds %struct.ARegionType, ptr %20, i64 0, i32 5
  store ptr @info_header_area_draw, ptr %26, align 8, !tbaa !24
  tail call void @BLI_addhead(ptr noundef nonnull %18, ptr noundef %20) #5
  tail call fastcc void @recent_files_menu_register() #6
  tail call void @BKE_spacetype_register(ptr noundef %2) #5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @info_new(ptr nocapture readnone %0) #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %3 = tail call ptr %2(i64 noundef 64, ptr noundef nonnull @.str.3) #5
  %4 = getelementptr inbounds %struct.SpaceInfo, ptr %3, i64 0, i32 3
  store i32 7, ptr %4, align 8, !tbaa !27
  %5 = getelementptr inbounds %struct.SpaceInfo, ptr %3, i64 0, i32 6
  store i8 4, ptr %5, align 8, !tbaa !30
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %7 = tail call ptr %6(i64 noundef 384, ptr noundef nonnull @.str.4) #5
  %8 = getelementptr inbounds %struct.SpaceInfo, ptr %3, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %8, ptr noundef %7) #5
  %9 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 8
  store i16 1, ptr %9, align 2, !tbaa !31
  %10 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 9
  store i16 2, ptr %10, align 8, !tbaa !36
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %12 = tail call ptr %11(i64 noundef 384, ptr noundef nonnull @.str.5) #5
  tail call void @BLI_addtail(ptr noundef nonnull %8, ptr noundef %12) #5
  %13 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 8
  store i16 0, ptr %13, align 2, !tbaa !31
  %14 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 2, i32 9
  %15 = load i16, ptr %14, align 8, !tbaa !37
  %16 = or i16 %15, 2
  store i16 %16, ptr %14, align 8, !tbaa !37
  %17 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 2, i32 15
  %18 = load i16, ptr %17, align 4, !tbaa !38
  %19 = or i16 %18, 10
  store i16 %19, ptr %17, align 4, !tbaa !38
  %20 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 2, i32 13
  %21 = load i16, ptr %20, align 8, !tbaa !39
  %22 = or i16 %21, 2
  store i16 %22, ptr %20, align 8, !tbaa !39
  %23 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 2, i32 12
  store i16 771, ptr %23, align 2, !tbaa !40
  %24 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 2, i32 11
  store i16 1, ptr %24, align 4, !tbaa !41
  %25 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 2, i32 7
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %25, align 8, !tbaa !42
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @info_free(ptr nocapture readnone %0) #2 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @info_init(ptr nocapture readnone %0, ptr nocapture readnone %1) #2 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @info_duplicate(ptr noundef %0) #0 {
  %2 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !5
  %3 = tail call ptr %2(ptr noundef %0) #5
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @info_operatortypes() #0 {
  tail call void @WM_operatortype_append(ptr noundef nonnull @FILE_OT_autopack_toggle) #5
  tail call void @WM_operatortype_append(ptr noundef nonnull @FILE_OT_pack_all) #5
  tail call void @WM_operatortype_append(ptr noundef nonnull @FILE_OT_pack_libraries) #5
  tail call void @WM_operatortype_append(ptr noundef nonnull @FILE_OT_unpack_all) #5
  tail call void @WM_operatortype_append(ptr noundef nonnull @FILE_OT_unpack_item) #5
  tail call void @WM_operatortype_append(ptr noundef nonnull @FILE_OT_unpack_libraries) #5
  tail call void @WM_operatortype_append(ptr noundef nonnull @FILE_OT_make_paths_relative) #5
  tail call void @WM_operatortype_append(ptr noundef nonnull @FILE_OT_make_paths_absolute) #5
  tail call void @WM_operatortype_append(ptr noundef nonnull @FILE_OT_report_missing_files) #5
  tail call void @WM_operatortype_append(ptr noundef nonnull @FILE_OT_find_missing_files) #5
  tail call void @WM_operatortype_append(ptr noundef nonnull @INFO_OT_reports_display_update) #5
  tail call void @WM_operatortype_append(ptr noundef nonnull @INFO_OT_select_pick) #5
  tail call void @WM_operatortype_append(ptr noundef nonnull @INFO_OT_select_all_toggle) #5
  tail call void @WM_operatortype_append(ptr noundef nonnull @INFO_OT_select_border) #5
  tail call void @WM_operatortype_append(ptr noundef nonnull @INFO_OT_report_replay) #5
  tail call void @WM_operatortype_append(ptr noundef nonnull @INFO_OT_report_delete) #5
  tail call void @WM_operatortype_append(ptr noundef nonnull @INFO_OT_report_copy) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @info_keymap(ptr noundef %0) #0 {
  %2 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef 0, i32 noundef 0) #5
  %3 = tail call ptr @WM_keymap_verify_item(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef 278, i32 noundef -1, i32 noundef -1, i32 noundef 0) #5
  %4 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef 7, i32 noundef 0) #5
  %5 = tail call ptr @WM_keymap_add_item(ptr noundef %4, ptr noundef nonnull @.str.8, i32 noundef 6, i32 noundef 1, i32 noundef 0, i32 noundef 0) #5
  %6 = tail call ptr @WM_keymap_add_item(ptr noundef %4, ptr noundef nonnull @.str.9, i32 noundef 97, i32 noundef 1, i32 noundef 0, i32 noundef 0) #5
  %7 = tail call ptr @WM_keymap_add_item(ptr noundef %4, ptr noundef nonnull @.str.10, i32 noundef 98, i32 noundef 1, i32 noundef 0, i32 noundef 0) #5
  %8 = tail call ptr @WM_keymap_add_item(ptr noundef %4, ptr noundef nonnull @.str.11, i32 noundef 114, i32 noundef 1, i32 noundef 0, i32 noundef 0) #5
  %9 = tail call ptr @WM_keymap_add_item(ptr noundef %4, ptr noundef nonnull @.str.12, i32 noundef 120, i32 noundef 1, i32 noundef 0, i32 noundef 0) #5
  %10 = tail call ptr @WM_keymap_add_item(ptr noundef %4, ptr noundef nonnull @.str.12, i32 noundef 224, i32 noundef 1, i32 noundef 0, i32 noundef 0) #5
  %11 = tail call ptr @WM_keymap_add_item(ptr noundef %4, ptr noundef nonnull @.str.13, i32 noundef 99, i32 noundef 1, i32 noundef 2, i32 noundef 0) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @info_main_area_init(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  %4 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 9
  store i16 2, ptr %4, align 8, !tbaa !37
  %5 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %6 = load i16, ptr %5, align 8, !tbaa !43
  %7 = sext i16 %6 to i32
  %8 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %9 = load i16, ptr %8, align 2, !tbaa !44
  %10 = sext i16 %9 to i32
  tail call void @UI_view2d_region_reinit(ptr noundef nonnull %3, i16 noundef signext -1, i32 noundef %7, i32 noundef %10) #5
  %11 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %12 = load ptr, ptr %11, align 8, !tbaa !45
  %13 = tail call ptr @WM_keymap_find(ptr noundef %12, ptr noundef nonnull @.str.1, i32 noundef 7, i32 noundef 0) #5
  %14 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 26
  %15 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %14, ptr noundef %13) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @info_main_area_draw(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @CTX_wm_space_info(ptr noundef %0) #5
  tail call void @UI_ThemeClearColor(i32 noundef 2) #5
  tail call void @glClear(i32 noundef 16384) #5
  %4 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %5 = load i16, ptr %4, align 2, !tbaa !44
  %6 = icmp slt i16 %5, 16
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  tail call fastcc void @info_textview_update_rect(ptr noundef %0, ptr noundef nonnull %1) #6
  tail call void @UI_view2d_view_ortho(ptr noundef nonnull %8) #5
  %9 = tail call ptr @CTX_wm_reports(ptr noundef %0) #5
  tail call void @info_textview_main(ptr noundef %3, ptr noundef nonnull %1, ptr noundef %9) #5
  tail call void @UI_view2d_view_restore(ptr noundef %0) #5
  %10 = tail call ptr @UI_view2d_scrollers_calc(ptr noundef %0, ptr noundef nonnull %8, i16 noundef signext -1, i16 noundef signext -1, i16 noundef signext -1, i16 noundef signext 1) #5
  tail call void @UI_view2d_scrollers_draw(ptr noundef %0, ptr noundef nonnull %8, ptr noundef %10) #5
  tail call void @UI_view2d_scrollers_free(ptr noundef %10) #5
  br label %11

11:                                               ; preds = %2, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @info_main_area_listener(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !49
  %7 = icmp eq i32 %6, 251658240
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %10 = load i32, ptr %9, align 8, !tbaa !51
  %11 = icmp eq i32 %10, 131072
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  tail call void @ED_region_tag_redraw(ptr noundef %2) #5
  br label %13

13:                                               ; preds = %8, %12, %4
  ret void
}

; Function Attrs: optsize
declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @info_header_listener(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !49
  switch i32 %6, label %27 [
    i32 50331648, label %7
    i32 16777216, label %10
    i32 67108864, label %14
    i32 251658240, label %18
    i32 301989888, label %22
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !51
  switch i32 %9, label %27 [
    i32 196608, label %26
    i32 262144, label %26
  ]

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %12 = load i32, ptr %11, align 8, !tbaa !51
  %13 = icmp eq i32 %12, 327680
  br i1 %13, label %26, label %27

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %16 = load i32, ptr %15, align 8, !tbaa !51
  %17 = icmp eq i32 %16, 786432
  br i1 %17, label %26, label %27

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %20 = load i32, ptr %19, align 8, !tbaa !51
  %21 = icmp eq i32 %20, 196608
  br i1 %21, label %26, label %27

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %24 = load i32, ptr %23, align 8, !tbaa !52
  %25 = icmp eq i32 %24, 5
  br i1 %25, label %26, label %27

26:                                               ; preds = %22, %18, %14, %10, %7, %7
  tail call void @ED_region_tag_redraw(ptr noundef %2) #5
  br label %27

27:                                               ; preds = %26, %7, %22, %18, %14, %10, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @info_header_area_init(ptr nocapture readnone %0, ptr noundef %1) #0 {
  tail call void @ED_region_header_init(ptr noundef %1) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @info_header_area_draw(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @ED_region_header(ptr noundef %0, ptr noundef %1) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @recent_files_menu_register() unnamed_addr #0 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %2 = tail call ptr %1(i64 noundef 264, ptr noundef nonnull @.str.14) #5
  %3 = getelementptr inbounds %struct.MenuType, ptr %2, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(25) %3, ptr noundef nonnull align 1 dereferenceable(25) @.str.15, i64 25, i1 false) #5
  %4 = getelementptr inbounds %struct.MenuType, ptr %2, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %4, ptr noundef nonnull align 1 dereferenceable(15) @.str.16, i64 15, i1 false) #5
  %5 = getelementptr inbounds %struct.MenuType, ptr %2, i64 0, i32 4
  store i16 42, ptr %5, align 1
  %6 = getelementptr inbounds %struct.MenuType, ptr %2, i64 0, i32 7
  store ptr @recent_files_menu_draw, ptr %6, align 8, !tbaa !53
  %7 = tail call zeroext i8 @WM_menutype_add(ptr noundef %2) #5
  ret void
}

; Function Attrs: optsize
declare void @BKE_spacetype_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @WM_operatortype_append(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @FILE_OT_autopack_toggle(ptr noundef) #3

; Function Attrs: optsize
declare void @FILE_OT_pack_all(ptr noundef) #3

; Function Attrs: optsize
declare void @FILE_OT_pack_libraries(ptr noundef) #3

; Function Attrs: optsize
declare void @FILE_OT_unpack_all(ptr noundef) #3

; Function Attrs: optsize
declare void @FILE_OT_unpack_item(ptr noundef) #3

; Function Attrs: optsize
declare void @FILE_OT_unpack_libraries(ptr noundef) #3

; Function Attrs: optsize
declare void @FILE_OT_make_paths_relative(ptr noundef) #3

; Function Attrs: optsize
declare void @FILE_OT_make_paths_absolute(ptr noundef) #3

; Function Attrs: optsize
declare void @FILE_OT_report_missing_files(ptr noundef) #3

; Function Attrs: optsize
declare void @FILE_OT_find_missing_files(ptr noundef) #3

; Function Attrs: optsize
declare void @INFO_OT_reports_display_update(ptr noundef) #3

; Function Attrs: optsize
declare void @INFO_OT_select_pick(ptr noundef) #3

; Function Attrs: optsize
declare void @INFO_OT_select_all_toggle(ptr noundef) #3

; Function Attrs: optsize
declare void @INFO_OT_select_border(ptr noundef) #3

; Function Attrs: optsize
declare void @INFO_OT_report_replay(ptr noundef) #3

; Function Attrs: optsize
declare void @INFO_OT_report_delete(ptr noundef) #3

; Function Attrs: optsize
declare void @INFO_OT_report_copy(ptr noundef) #3

; Function Attrs: optsize
declare ptr @WM_keymap_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @WM_keymap_verify_item(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @WM_keymap_add_item(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @UI_view2d_region_reinit(ptr noundef, i16 noundef signext, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @WM_event_add_keymap_handler(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CTX_wm_space_info(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @UI_ThemeClearColor(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glClear(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @info_textview_update_rect(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_space_info(ptr noundef %0) #5
  %4 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  %5 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %6 = load i16, ptr %5, align 8, !tbaa !43
  %7 = sext i16 %6 to i32
  %8 = add nsw i32 %7, -1
  %9 = tail call ptr @CTX_wm_reports(ptr noundef %0) #5
  %10 = tail call i32 @info_textview_height(ptr noundef %3, ptr noundef %1, ptr noundef %9) #5
  tail call void @UI_view2d_totRect_set(ptr noundef nonnull %4, i32 noundef %8, i32 noundef %10) #5
  ret void
}

; Function Attrs: optsize
declare void @UI_view2d_view_ortho(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @info_textview_main(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CTX_wm_reports(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @UI_view2d_view_restore(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @UI_view2d_scrollers_calc(ptr noundef, ptr noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @UI_view2d_scrollers_draw(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @UI_view2d_scrollers_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @UI_view2d_totRect_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @info_textview_height(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_region_header_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_region_header(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @recent_files_menu_draw(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #7
  %4 = getelementptr inbounds %struct.Menu, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !56
  tail call void @uiLayoutSetOperatorContext(ptr noundef %5, i32 noundef 7) #5
  %6 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 6), align 8, !tbaa !58
  %7 = icmp eq ptr %6, null
  br i1 %7, label %20, label %8

8:                                                ; preds = %2, %8
  %9 = phi ptr [ %18, %8 ], [ %6, %2 ]
  %10 = getelementptr inbounds %struct.RecentFile, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !60
  call void @BLI_split_file_part(ptr noundef %11, ptr noundef nonnull %3, i64 noundef 1024) #5
  %12 = call zeroext i8 @BLO_has_bfile_extension(ptr noundef nonnull %3) #5
  %13 = icmp eq i8 %12, 0
  %14 = load ptr, ptr %10, align 8, !tbaa !60
  %15 = call ptr @BLI_path_basename(ptr noundef %14) #5
  %16 = load ptr, ptr %10, align 8, !tbaa !60
  %17 = select i1 %13, i32 726, i32 695
  call void @uiItemStringO(ptr noundef %5, ptr noundef %15, i32 noundef %17, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, ptr noundef %16) #5
  %18 = load ptr, ptr %9, align 8, !tbaa !62
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %8, !llvm.loop !63

20:                                               ; preds = %2
  tail call void @uiItemL(ptr noundef %5, ptr noundef nonnull @.str.20, i32 noundef 0) #5
  br label %21

21:                                               ; preds = %8, %20
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #7
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @WM_menutype_add(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @uiLayoutSetOperatorContext(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_split_file_part(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @BLO_has_bfile_extension(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @uiItemStringO(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_path_basename(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @uiItemL(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 80}
!10 = !{!"SpaceType", !6, i64 0, !6, i64 8, !7, i64 16, !11, i64 80, !11, i64 84, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !12, i64 176, !12, i64 192, !11, i64 208}
!11 = !{!"int", !7, i64 0}
!12 = !{!"ListBase", !6, i64 0, !6, i64 8}
!13 = !{!10, !6, i64 88}
!14 = !{!10, !6, i64 96}
!15 = !{!10, !6, i64 104}
!16 = !{!10, !6, i64 136}
!17 = !{!10, !6, i64 144}
!18 = !{!10, !6, i64 152}
!19 = !{!20, !11, i64 16}
!20 = !{!"ARegionType", !6, i64 0, !6, i64 8, !11, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !12, i64 104, !12, i64 120, !12, i64 136, !11, i64 152, !11, i64 156, !11, i64 160, !11, i64 164, !11, i64 168, !21, i64 172, !21, i64 174, !21, i64 176}
!21 = !{!"short", !7, i64 0}
!22 = !{!20, !11, i64 168}
!23 = !{!20, !6, i64 24}
!24 = !{!20, !6, i64 40}
!25 = !{!20, !6, i64 48}
!26 = !{!20, !11, i64 164}
!27 = !{!28, !11, i64 32}
!28 = !{!"SpaceInfo", !6, i64 0, !6, i64 8, !12, i64 16, !11, i64 32, !29, i64 36, !7, i64 40, !7, i64 56, !7, i64 57}
!29 = !{!"float", !7, i64 0}
!30 = !{!28, !7, i64 56}
!31 = !{!32, !21, i64 214}
!32 = !{!"ARegion", !6, i64 0, !6, i64 8, !33, i64 16, !35, i64 176, !35, i64 192, !21, i64 208, !21, i64 210, !21, i64 212, !21, i64 214, !21, i64 216, !21, i64 218, !29, i64 220, !21, i64 224, !21, i64 226, !21, i64 228, !21, i64 230, !21, i64 232, !21, i64 234, !21, i64 236, !21, i64 238, !6, i64 240, !12, i64 248, !12, i64 264, !12, i64 280, !12, i64 296, !12, i64 312, !12, i64 328, !12, i64 344, !6, i64 360, !6, i64 368, !6, i64 376}
!33 = !{!"View2D", !34, i64 0, !34, i64 16, !35, i64 32, !35, i64 48, !35, i64 64, !7, i64 80, !7, i64 88, !29, i64 96, !29, i64 100, !21, i64 104, !21, i64 106, !21, i64 108, !21, i64 110, !21, i64 112, !21, i64 114, !21, i64 116, !21, i64 118, !21, i64 120, !21, i64 122, !21, i64 124, !21, i64 126, !6, i64 128, !11, i64 136, !11, i64 140, !6, i64 144, !6, i64 152}
!34 = !{!"rctf", !29, i64 0, !29, i64 4, !29, i64 8, !29, i64 12}
!35 = !{!"rcti", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12}
!36 = !{!32, !21, i64 216}
!37 = !{!32, !21, i64 120}
!38 = !{!32, !21, i64 132}
!39 = !{!32, !21, i64 128}
!40 = !{!32, !21, i64 126}
!41 = !{!32, !21, i64 124}
!42 = !{!29, !29, i64 0}
!43 = !{!32, !21, i64 208}
!44 = !{!32, !21, i64 210}
!45 = !{!46, !6, i64 296}
!46 = !{!"wmWindowManager", !47, i64 0, !6, i64 120, !6, i64 128, !12, i64 136, !11, i64 152, !21, i64 156, !21, i64 158, !12, i64 160, !12, i64 176, !48, i64 192, !12, i64 232, !12, i64 248, !12, i64 264, !12, i64 280, !6, i64 296, !6, i64 304, !6, i64 312, !12, i64 320, !6, i64 336, !7, i64 344, !7, i64 345}
!47 = !{!"ID", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !7, i64 32, !21, i64 98, !11, i64 100, !11, i64 104, !11, i64 108, !6, i64 112}
!48 = !{!"ReportList", !12, i64 0, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !6, i64 32}
!49 = !{!50, !11, i64 36}
!50 = !{!"wmNotifier", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !6, i64 56}
!51 = !{!50, !11, i64 40}
!52 = !{!50, !11, i64 48}
!53 = !{!54, !6, i64 224}
!54 = !{!"MenuType", !6, i64 0, !6, i64 8, !7, i64 16, !7, i64 80, !7, i64 144, !6, i64 208, !6, i64 216, !6, i64 224, !55, i64 232}
!55 = !{!"ExtensionRNA", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24}
!56 = !{!57, !6, i64 8}
!57 = !{!"Menu", !6, i64 0, !6, i64 8}
!58 = !{!59, !6, i64 2064}
!59 = !{!"Global", !6, i64 0, !7, i64 8, !7, i64 1032, !7, i64 2056, !7, i64 2057, !7, i64 2058, !12, i64 2064, !7, i64 2080, !7, i64 2081, !7, i64 2082, !21, i64 2084, !21, i64 2086, !21, i64 2088, !7, i64 2090, !21, i64 2092, !11, i64 2096, !11, i64 2100, !7, i64 2104, !11, i64 2108, !11, i64 2112, !7, i64 2116}
!60 = !{!61, !6, i64 16}
!61 = !{!"RecentFile", !6, i64 0, !6, i64 8, !6, i64 16}
!62 = !{!61, !6, i64 0}
!63 = distinct !{!63, !64}
!64 = !{!"llvm.loop.mustprogress"}
