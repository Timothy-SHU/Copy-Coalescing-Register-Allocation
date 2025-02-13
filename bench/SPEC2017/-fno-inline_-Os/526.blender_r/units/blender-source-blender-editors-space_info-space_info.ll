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
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %2 = tail call ptr %1(i64 noundef 216, ptr noundef nonnull @.str) #5
  %3 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 3
  store i32 7, ptr %3, align 8, !tbaa !38
  %4 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %4, ptr noundef nonnull align 1 dereferenceable(64) @str, i64 noundef 64, i1 false) #5
  %5 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 5
  store ptr @info_new, ptr %5, align 8, !tbaa !42
  %6 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 6
  store ptr @info_free, ptr %6, align 8, !tbaa !43
  %7 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 7
  store ptr @info_init, ptr %7, align 8, !tbaa !44
  %8 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 11
  store ptr @info_duplicate, ptr %8, align 8, !tbaa !45
  %9 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 12
  store ptr @info_operatortypes, ptr %9, align 8, !tbaa !46
  %10 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 13
  store ptr @info_keymap, ptr %10, align 8, !tbaa !47
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %12 = tail call ptr %11(i64 noundef 184, ptr noundef nonnull @.str.2) #5
  %13 = getelementptr inbounds %struct.ARegionType, ptr %12, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !48
  %14 = getelementptr inbounds %struct.ARegionType, ptr %12, i64 0, i32 20
  store i32 19, ptr %14, align 8, !tbaa !51
  %15 = getelementptr inbounds %struct.ARegionType, ptr %12, i64 0, i32 3
  store ptr @info_main_area_init, ptr %15, align 8, !tbaa !52
  %16 = getelementptr inbounds %struct.ARegionType, ptr %12, i64 0, i32 5
  store ptr @info_main_area_draw, ptr %16, align 8, !tbaa !53
  %17 = getelementptr inbounds %struct.ARegionType, ptr %12, i64 0, i32 6
  store ptr @info_main_area_listener, ptr %17, align 8, !tbaa !54
  %18 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 16
  tail call void @BLI_addhead(ptr noundef nonnull %18, ptr noundef %12) #5
  %19 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %20 = tail call ptr %19(i64 noundef 184, ptr noundef nonnull @.str.2) #5
  %21 = getelementptr inbounds %struct.ARegionType, ptr %20, i64 0, i32 2
  store i32 1, ptr %21, align 8, !tbaa !48
  %22 = getelementptr inbounds %struct.ARegionType, ptr %20, i64 0, i32 19
  store i32 26, ptr %22, align 4, !tbaa !55
  %23 = getelementptr inbounds %struct.ARegionType, ptr %20, i64 0, i32 20
  store i32 83, ptr %23, align 8, !tbaa !51
  %24 = getelementptr inbounds %struct.ARegionType, ptr %20, i64 0, i32 6
  store ptr @info_header_listener, ptr %24, align 8, !tbaa !54
  %25 = getelementptr inbounds %struct.ARegionType, ptr %20, i64 0, i32 3
  store ptr @info_header_area_init, ptr %25, align 8, !tbaa !52
  %26 = getelementptr inbounds %struct.ARegionType, ptr %20, i64 0, i32 5
  store ptr @info_header_area_draw, ptr %26, align 8, !tbaa !53
  tail call void @BLI_addhead(ptr noundef nonnull %18, ptr noundef %20) #5
  tail call fastcc void @recent_files_menu_register() #6
  tail call void @BKE_spacetype_register(ptr noundef %2) #5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @info_new(ptr nocapture readnone %0) #0 !PGOFuncName !56 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 64, ptr noundef nonnull @.str.3) #5
  %4 = getelementptr inbounds %struct.SpaceInfo, ptr %3, i64 0, i32 3
  store i32 7, ptr %4, align 8, !tbaa !57
  %5 = getelementptr inbounds %struct.SpaceInfo, ptr %3, i64 0, i32 6
  store i8 4, ptr %5, align 8, !tbaa !60
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %7 = tail call ptr %6(i64 noundef 384, ptr noundef nonnull @.str.4) #5
  %8 = getelementptr inbounds %struct.SpaceInfo, ptr %3, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %8, ptr noundef %7) #5
  %9 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 8
  store i16 1, ptr %9, align 2, !tbaa !61
  %10 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 9
  store i16 2, ptr %10, align 8, !tbaa !66
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %12 = tail call ptr %11(i64 noundef 384, ptr noundef nonnull @.str.5) #5
  tail call void @BLI_addtail(ptr noundef nonnull %8, ptr noundef %12) #5
  %13 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 8
  store i16 0, ptr %13, align 2, !tbaa !61
  %14 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 2, i32 9
  %15 = load i16, ptr %14, align 8, !tbaa !67
  %16 = or i16 %15, 2
  store i16 %16, ptr %14, align 8, !tbaa !67
  %17 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 2, i32 15
  %18 = load i16, ptr %17, align 4, !tbaa !68
  %19 = or i16 %18, 10
  store i16 %19, ptr %17, align 4, !tbaa !68
  %20 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 2, i32 13
  %21 = load i16, ptr %20, align 8, !tbaa !69
  %22 = or i16 %21, 2
  store i16 %22, ptr %20, align 8, !tbaa !69
  %23 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 2, i32 12
  store i16 771, ptr %23, align 2, !tbaa !70
  %24 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 2, i32 11
  store i16 1, ptr %24, align 4, !tbaa !71
  %25 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 2, i32 7
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %25, align 8, !tbaa !72
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @info_free(ptr nocapture readnone %0) #2 !PGOFuncName !73 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @info_init(ptr nocapture readnone %0, ptr nocapture readnone %1) #2 !PGOFuncName !74 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @info_duplicate(ptr noundef %0) #0 !PGOFuncName !75 {
  %2 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %3 = tail call ptr %2(ptr noundef %0) #5
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @info_operatortypes() #0 !PGOFuncName !76 {
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
define internal void @info_keymap(ptr noundef %0) #0 !PGOFuncName !77 {
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
define internal void @info_main_area_init(ptr nocapture noundef readonly %0, ptr noundef %1) #0 !PGOFuncName !78 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  %4 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 9
  store i16 2, ptr %4, align 8, !tbaa !67
  %5 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %6 = load i16, ptr %5, align 8, !tbaa !79
  %7 = sext i16 %6 to i32
  %8 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %9 = load i16, ptr %8, align 2, !tbaa !80
  %10 = sext i16 %9 to i32
  tail call void @UI_view2d_region_reinit(ptr noundef nonnull %3, i16 noundef signext -1, i32 noundef %7, i32 noundef %10) #5
  %11 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %12 = load ptr, ptr %11, align 8, !tbaa !81
  %13 = tail call ptr @WM_keymap_find(ptr noundef %12, ptr noundef nonnull @.str.1, i32 noundef 7, i32 noundef 0) #5
  %14 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 26
  %15 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %14, ptr noundef %13) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @info_main_area_draw(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !85 {
  %3 = tail call ptr @CTX_wm_space_info(ptr noundef %0) #5
  tail call void @UI_ThemeClearColor(i32 noundef 2) #5
  tail call void @glClear(i32 noundef 16384) #5
  %4 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %5 = load i16, ptr %4, align 2, !tbaa !80
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
define internal void @info_main_area_listener(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 !PGOFuncName !86 {
  %5 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !87
  %7 = icmp eq i32 %6, 251658240
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %10 = load i32, ptr %9, align 8, !tbaa !89
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
define internal void @info_header_listener(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 !PGOFuncName !90 {
  %5 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !87
  switch i32 %6, label %27 [
    i32 50331648, label %7
    i32 16777216, label %10
    i32 67108864, label %14
    i32 251658240, label %18
    i32 301989888, label %22
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !89
  switch i32 %9, label %27 [
    i32 196608, label %26
    i32 262144, label %26
  ]

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %12 = load i32, ptr %11, align 8, !tbaa !89
  %13 = icmp eq i32 %12, 327680
  br i1 %13, label %26, label %27

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %16 = load i32, ptr %15, align 8, !tbaa !89
  %17 = icmp eq i32 %16, 786432
  br i1 %17, label %26, label %27

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %20 = load i32, ptr %19, align 8, !tbaa !89
  %21 = icmp eq i32 %20, 196608
  br i1 %21, label %26, label %27

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %24 = load i32, ptr %23, align 8, !tbaa !91
  %25 = icmp eq i32 %24, 5
  br i1 %25, label %26, label %27

26:                                               ; preds = %22, %18, %14, %10, %7, %7
  tail call void @ED_region_tag_redraw(ptr noundef %2) #5
  br label %27

27:                                               ; preds = %26, %7, %22, %18, %14, %10, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @info_header_area_init(ptr nocapture readnone %0, ptr noundef %1) #0 !PGOFuncName !92 {
  tail call void @ED_region_header_init(ptr noundef %1) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @info_header_area_draw(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !93 {
  tail call void @ED_region_header(ptr noundef %0, ptr noundef %1) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @recent_files_menu_register() unnamed_addr #0 !PGOFuncName !94 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %2 = tail call ptr %1(i64 noundef 264, ptr noundef nonnull @.str.14) #5
  %3 = getelementptr inbounds %struct.MenuType, ptr %2, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(25) %3, ptr noundef nonnull align 1 dereferenceable(25) @.str.15, i64 25, i1 false) #5
  %4 = getelementptr inbounds %struct.MenuType, ptr %2, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %4, ptr noundef nonnull align 1 dereferenceable(15) @.str.16, i64 15, i1 false) #5
  %5 = getelementptr inbounds %struct.MenuType, ptr %2, i64 0, i32 4
  store i16 42, ptr %5, align 1
  %6 = getelementptr inbounds %struct.MenuType, ptr %2, i64 0, i32 7
  store ptr @recent_files_menu_draw, ptr %6, align 8, !tbaa !95
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
define internal fastcc void @info_textview_update_rect(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !98 {
  %3 = tail call ptr @CTX_wm_space_info(ptr noundef %0) #5
  %4 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  %5 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %6 = load i16, ptr %5, align 8, !tbaa !79
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
define internal void @recent_files_menu_draw(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !99 {
  %3 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #7
  %4 = getelementptr inbounds %struct.Menu, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !100
  tail call void @uiLayoutSetOperatorContext(ptr noundef %5, i32 noundef 7) #5
  %6 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 6), align 8, !tbaa !102
  %7 = icmp eq ptr %6, null
  br i1 %7, label %20, label %8

8:                                                ; preds = %2, %8
  %9 = phi ptr [ %18, %8 ], [ %6, %2 ]
  %10 = getelementptr inbounds %struct.RecentFile, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !104
  call void @BLI_split_file_part(ptr noundef %11, ptr noundef nonnull %3, i64 noundef 1024) #5
  %12 = call zeroext i8 @BLO_has_bfile_extension(ptr noundef nonnull %3) #5
  %13 = icmp eq i8 %12, 0
  %14 = load ptr, ptr %10, align 8, !tbaa !104
  %15 = call ptr @BLI_path_basename(ptr noundef %14) #5
  %16 = load ptr, ptr %10, align 8, !tbaa !104
  %17 = select i1 %13, i32 726, i32 695
  call void @uiItemStringO(ptr noundef %5, ptr noundef %15, i32 noundef %17, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, ptr noundef %16) #5
  %18 = load ptr, ptr %9, align 8, !tbaa !106
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %8, !llvm.loop !107

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
!38 = !{!39, !40, i64 80}
!39 = !{!"SpaceType", !35, i64 0, !35, i64 8, !36, i64 16, !40, i64 80, !40, i64 84, !35, i64 88, !35, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !35, i64 152, !35, i64 160, !35, i64 168, !41, i64 176, !41, i64 192, !40, i64 208}
!40 = !{!"int", !36, i64 0}
!41 = !{!"ListBase", !35, i64 0, !35, i64 8}
!42 = !{!39, !35, i64 88}
!43 = !{!39, !35, i64 96}
!44 = !{!39, !35, i64 104}
!45 = !{!39, !35, i64 136}
!46 = !{!39, !35, i64 144}
!47 = !{!39, !35, i64 152}
!48 = !{!49, !40, i64 16}
!49 = !{!"ARegionType", !35, i64 0, !35, i64 8, !40, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !35, i64 88, !35, i64 96, !41, i64 104, !41, i64 120, !41, i64 136, !40, i64 152, !40, i64 156, !40, i64 160, !40, i64 164, !40, i64 168, !50, i64 172, !50, i64 174, !50, i64 176}
!50 = !{!"short", !36, i64 0}
!51 = !{!49, !40, i64 168}
!52 = !{!49, !35, i64 24}
!53 = !{!49, !35, i64 40}
!54 = !{!49, !35, i64 48}
!55 = !{!49, !40, i64 164}
!56 = !{!"space_info.c:info_new"}
!57 = !{!58, !40, i64 32}
!58 = !{!"SpaceInfo", !35, i64 0, !35, i64 8, !41, i64 16, !40, i64 32, !59, i64 36, !36, i64 40, !36, i64 56, !36, i64 57}
!59 = !{!"float", !36, i64 0}
!60 = !{!58, !36, i64 56}
!61 = !{!62, !50, i64 214}
!62 = !{!"ARegion", !35, i64 0, !35, i64 8, !63, i64 16, !65, i64 176, !65, i64 192, !50, i64 208, !50, i64 210, !50, i64 212, !50, i64 214, !50, i64 216, !50, i64 218, !59, i64 220, !50, i64 224, !50, i64 226, !50, i64 228, !50, i64 230, !50, i64 232, !50, i64 234, !50, i64 236, !50, i64 238, !35, i64 240, !41, i64 248, !41, i64 264, !41, i64 280, !41, i64 296, !41, i64 312, !41, i64 328, !41, i64 344, !35, i64 360, !35, i64 368, !35, i64 376}
!63 = !{!"View2D", !64, i64 0, !64, i64 16, !65, i64 32, !65, i64 48, !65, i64 64, !36, i64 80, !36, i64 88, !59, i64 96, !59, i64 100, !50, i64 104, !50, i64 106, !50, i64 108, !50, i64 110, !50, i64 112, !50, i64 114, !50, i64 116, !50, i64 118, !50, i64 120, !50, i64 122, !50, i64 124, !50, i64 126, !35, i64 128, !40, i64 136, !40, i64 140, !35, i64 144, !35, i64 152}
!64 = !{!"rctf", !59, i64 0, !59, i64 4, !59, i64 8, !59, i64 12}
!65 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!66 = !{!62, !50, i64 216}
!67 = !{!62, !50, i64 120}
!68 = !{!62, !50, i64 132}
!69 = !{!62, !50, i64 128}
!70 = !{!62, !50, i64 126}
!71 = !{!62, !50, i64 124}
!72 = !{!59, !59, i64 0}
!73 = !{!"space_info.c:info_free"}
!74 = !{!"space_info.c:info_init"}
!75 = !{!"space_info.c:info_duplicate"}
!76 = !{!"space_info.c:info_operatortypes"}
!77 = !{!"space_info.c:info_keymap"}
!78 = !{!"space_info.c:info_main_area_init"}
!79 = !{!62, !50, i64 208}
!80 = !{!62, !50, i64 210}
!81 = !{!82, !35, i64 296}
!82 = !{!"wmWindowManager", !83, i64 0, !35, i64 120, !35, i64 128, !41, i64 136, !40, i64 152, !50, i64 156, !50, i64 158, !41, i64 160, !41, i64 176, !84, i64 192, !41, i64 232, !41, i64 248, !41, i64 264, !41, i64 280, !35, i64 296, !35, i64 304, !35, i64 312, !41, i64 320, !35, i64 336, !36, i64 344, !36, i64 345}
!83 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !50, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !35, i64 112}
!84 = !{!"ReportList", !41, i64 0, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !35, i64 32}
!85 = !{!"space_info.c:info_main_area_draw"}
!86 = !{!"space_info.c:info_main_area_listener"}
!87 = !{!88, !40, i64 36}
!88 = !{!"wmNotifier", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !35, i64 56}
!89 = !{!88, !40, i64 40}
!90 = !{!"space_info.c:info_header_listener"}
!91 = !{!88, !40, i64 48}
!92 = !{!"space_info.c:info_header_area_init"}
!93 = !{!"space_info.c:info_header_area_draw"}
!94 = !{!"space_info.c:recent_files_menu_register"}
!95 = !{!96, !35, i64 224}
!96 = !{!"MenuType", !35, i64 0, !35, i64 8, !36, i64 16, !36, i64 80, !36, i64 144, !35, i64 208, !35, i64 216, !35, i64 224, !97, i64 232}
!97 = !{!"ExtensionRNA", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24}
!98 = !{!"space_info.c:info_textview_update_rect"}
!99 = !{!"space_info.c:recent_files_menu_draw"}
!100 = !{!101, !35, i64 8}
!101 = !{!"Menu", !35, i64 0, !35, i64 8}
!102 = !{!103, !35, i64 2064}
!103 = !{!"Global", !35, i64 0, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 2057, !36, i64 2058, !41, i64 2064, !36, i64 2080, !36, i64 2081, !36, i64 2082, !50, i64 2084, !50, i64 2086, !50, i64 2088, !36, i64 2090, !50, i64 2092, !40, i64 2096, !40, i64 2100, !36, i64 2104, !40, i64 2108, !40, i64 2112, !36, i64 2116}
!104 = !{!105, !35, i64 16}
!105 = !{!"RecentFile", !35, i64 0, !35, i64 8, !35, i64 16}
!106 = !{!105, !35, i64 0}
!107 = distinct !{!107, !108}
!108 = !{!"llvm.loop.mustprogress"}
