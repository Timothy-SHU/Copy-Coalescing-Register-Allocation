; ModuleID = 'blender/source/blender/editors/space_text/space_text.c'
source_filename = "blender/source/blender/editors/space_text/space_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.SpaceType = type { ptr, ptr, [64 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, i32 }
%struct.ARegionType = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i16 }
%struct.SpaceText = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], ptr, i32, i32, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, float, %struct.rcti, %struct.rcti, i32, i32, [256 x i8], [256 x i8], i16, i16, [4 x i8], ptr, [2 x float] }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.wmKeyMapItem = type { ptr, ptr, [64 x i8], ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.wmNotifier = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr }
%struct.wmWindowManager = type { %struct.ID, ptr, ptr, %struct.ListBase, i32, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ReportList, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, %struct.ListBase, ptr, i8, [7 x i8] }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.ReportList = type { %struct.ListBase, i32, i32, i32, i32, ptr }
%struct.wmWindow = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, ptr, ptr, ptr, i32, i32, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.wmDrag = type { ptr, ptr, i32, i32, ptr, [1024 x i8], double, ptr, float, i32, i32, [200 x i8], i32 }
%struct.wmDropBox = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16 }

@.str = private unnamed_addr constant [10 x i8] c"edit_text\00", align 1
@text_context_dir = dso_local global [2 x ptr] [ptr @.str, ptr null], align 16
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"spacetype text\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Text\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"spacetype text region\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"inittext\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"header for text\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"main area for text\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [13 x i8] c"Text Generic\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"TEXT_OT_start_find\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"TEXT_OT_jump\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"TEXT_OT_find\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"TEXT_OT_replace\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"TEXT_OT_properties\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"WM_OT_context_cycle_int\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"data_path\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"space_data.font_size\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"reverse\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"TEXT_OT_new\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"TEXT_OT_open\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"TEXT_OT_reload\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"TEXT_OT_save\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"TEXT_OT_save_as\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"TEXT_OT_run_script\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"TEXT_OT_cut\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"TEXT_OT_copy\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"TEXT_OT_paste\00", align 1
@.str.26 = private unnamed_addr constant [23 x i8] c"TEXT_OT_duplicate_line\00", align 1
@U = external local_unnamed_addr global %struct.UserDef, align 8
@.str.27 = private unnamed_addr constant [10 x i8] c"selection\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"TEXT_OT_select_all\00", align 1
@.str.29 = private unnamed_addr constant [20 x i8] c"TEXT_OT_select_line\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"TEXT_OT_select_word\00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"TEXT_OT_move_lines\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"direction\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"TEXT_OT_indent\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"TEXT_OT_unindent\00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c"TEXT_OT_uncomment\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"TEXT_OT_move\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.38 = private unnamed_addr constant [20 x i8] c"TEXT_OT_move_select\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"TEXT_OT_delete\00", align 1
@.str.40 = private unnamed_addr constant [25 x i8] c"TEXT_OT_overwrite_toggle\00", align 1
@.str.41 = private unnamed_addr constant [19 x i8] c"TEXT_OT_scroll_bar\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"TEXT_OT_scroll\00", align 1
@.str.43 = private unnamed_addr constant [22 x i8] c"TEXT_OT_selection_set\00", align 1
@.str.44 = private unnamed_addr constant [19 x i8] c"TEXT_OT_cursor_set\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"lines\00", align 1
@.str.47 = private unnamed_addr constant [19 x i8] c"TEXT_OT_line_break\00", align 1
@.str.48 = private unnamed_addr constant [16 x i8] c"TEXT_MT_toolbox\00", align 1
@.str.49 = private unnamed_addr constant [21 x i8] c"TEXT_OT_autocomplete\00", align 1
@.str.50 = private unnamed_addr constant [20 x i8] c"TEXT_OT_line_number\00", align 1
@.str.51 = private unnamed_addr constant [15 x i8] c"TEXT_OT_insert\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"filepath\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.54 = private unnamed_addr constant [10 x i8] c"find_text\00", align 1
@str = private unnamed_addr constant [65 x i8] c"Text\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_spacetype_text() local_unnamed_addr #0 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %2 = tail call ptr %1(i64 noundef 216, ptr noundef nonnull @.str.1) #5
  %3 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 3
  store i32 9, ptr %3, align 8, !tbaa !9
  %4 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %4, ptr noundef nonnull align 1 dereferenceable(64) @str, i64 noundef 64, i1 false) #5
  %5 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 5
  store ptr @text_new, ptr %5, align 8, !tbaa !13
  %6 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 6
  store ptr @text_free, ptr %6, align 8, !tbaa !14
  %7 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 7
  store ptr @text_init, ptr %7, align 8, !tbaa !15
  %8 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 11
  store ptr @text_duplicate, ptr %8, align 8, !tbaa !16
  %9 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 12
  store ptr @text_operatortypes, ptr %9, align 8, !tbaa !17
  %10 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 13
  store ptr @text_keymap, ptr %10, align 8, !tbaa !18
  %11 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 9
  store ptr @text_listener, ptr %11, align 8, !tbaa !19
  %12 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 15
  store ptr @text_context, ptr %12, align 8, !tbaa !20
  %13 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 14
  store ptr @text_dropboxes, ptr %13, align 8, !tbaa !21
  %14 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %15 = tail call ptr %14(i64 noundef 184, ptr noundef nonnull @.str.3) #5
  %16 = getelementptr inbounds %struct.ARegionType, ptr %15, i64 0, i32 2
  store i32 0, ptr %16, align 8, !tbaa !22
  %17 = getelementptr inbounds %struct.ARegionType, ptr %15, i64 0, i32 3
  store ptr @text_main_area_init, ptr %17, align 8, !tbaa !25
  %18 = getelementptr inbounds %struct.ARegionType, ptr %15, i64 0, i32 5
  store ptr @text_main_area_draw, ptr %18, align 8, !tbaa !26
  %19 = getelementptr inbounds %struct.ARegionType, ptr %15, i64 0, i32 11
  store ptr @text_cursor, ptr %19, align 8, !tbaa !27
  %20 = getelementptr inbounds %struct.ARegionType, ptr %15, i64 0, i32 23
  store i16 1, ptr %20, align 8, !tbaa !28
  %21 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 16
  tail call void @BLI_addhead(ptr noundef nonnull %21, ptr noundef %15) #5
  %22 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %23 = tail call ptr %22(i64 noundef 184, ptr noundef nonnull @.str.3) #5
  %24 = getelementptr inbounds %struct.ARegionType, ptr %23, i64 0, i32 2
  store i32 4, ptr %24, align 8, !tbaa !22
  %25 = getelementptr inbounds %struct.ARegionType, ptr %23, i64 0, i32 18
  store i32 160, ptr %25, align 8, !tbaa !29
  %26 = getelementptr inbounds %struct.ARegionType, ptr %23, i64 0, i32 20
  store i32 1, ptr %26, align 8, !tbaa !30
  %27 = getelementptr inbounds %struct.ARegionType, ptr %23, i64 0, i32 3
  store ptr @text_properties_area_init, ptr %27, align 8, !tbaa !25
  %28 = getelementptr inbounds %struct.ARegionType, ptr %23, i64 0, i32 5
  store ptr @text_properties_area_draw, ptr %28, align 8, !tbaa !26
  tail call void @BLI_addhead(ptr noundef nonnull %21, ptr noundef %23) #5
  %29 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %30 = tail call ptr %29(i64 noundef 184, ptr noundef nonnull @.str.3) #5
  %31 = getelementptr inbounds %struct.ARegionType, ptr %30, i64 0, i32 2
  store i32 1, ptr %31, align 8, !tbaa !22
  %32 = getelementptr inbounds %struct.ARegionType, ptr %30, i64 0, i32 19
  store i32 26, ptr %32, align 4, !tbaa !31
  %33 = getelementptr inbounds %struct.ARegionType, ptr %30, i64 0, i32 20
  store i32 67, ptr %33, align 8, !tbaa !30
  %34 = getelementptr inbounds %struct.ARegionType, ptr %30, i64 0, i32 3
  store ptr @text_header_area_init, ptr %34, align 8, !tbaa !25
  %35 = getelementptr inbounds %struct.ARegionType, ptr %30, i64 0, i32 5
  store ptr @text_header_area_draw, ptr %35, align 8, !tbaa !26
  tail call void @BLI_addhead(ptr noundef nonnull %21, ptr noundef %30) #5
  tail call void @BKE_spacetype_register(ptr noundef %2) #5
  tail call void @ED_text_format_register_py() #5
  tail call void @ED_text_format_register_osl() #5
  tail call void @ED_text_format_register_lua() #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @text_new(ptr nocapture readnone %0) #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %3 = tail call ptr %2(i64 noundef 680, ptr noundef nonnull @.str.4) #5
  %4 = getelementptr inbounds %struct.SpaceText, ptr %3, i64 0, i32 3
  store i32 9, ptr %4, align 8, !tbaa !32
  %5 = getelementptr inbounds %struct.SpaceText, ptr %3, i64 0, i32 11
  store i16 12, ptr %5, align 4, !tbaa !36
  %6 = getelementptr inbounds %struct.SpaceText, ptr %3, i64 0, i32 16
  store i32 4, ptr %6, align 8, !tbaa !37
  %7 = getelementptr inbounds %struct.SpaceText, ptr %3, i64 0, i32 28
  store i16 80, ptr %7, align 8, !tbaa !38
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %9 = tail call ptr %8(i64 noundef 384, ptr noundef nonnull @.str.5) #5
  %10 = getelementptr inbounds %struct.SpaceText, ptr %3, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %10, ptr noundef %9) #5
  %11 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 8
  store i16 1, ptr %11, align 2, !tbaa !39
  %12 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 9
  store i16 2, ptr %12, align 8, !tbaa !43
  %13 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %14 = tail call ptr %13(i64 noundef 384, ptr noundef nonnull @.str.6) #5
  tail call void @BLI_addtail(ptr noundef nonnull %10, ptr noundef %14) #5
  %15 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 8
  store i16 0, ptr %15, align 2, !tbaa !39
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @text_free(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 6
  store ptr null, ptr %2, align 8, !tbaa !44
  tail call void @text_free_caches(ptr noundef %0) #5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @text_init(ptr nocapture readnone %0, ptr nocapture readnone %1) #1 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @text_duplicate(ptr noundef %0) #0 {
  %2 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !5
  %3 = tail call ptr %2(ptr noundef %0) #5
  %4 = getelementptr inbounds %struct.SpaceText, ptr %3, i64 0, i32 31
  store ptr null, ptr %4, align 8, !tbaa !45
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @text_operatortypes() #0 {
  tail call void @WM_operatortype_append(ptr noundef nonnull @TEXT_OT_new) #5
  tail call void @WM_operatortype_append(ptr noundef nonnull @TEXT_OT_open) #5
  tail call void @WM_operatortype_append(ptr noundef nonnull @TEXT_OT_reload) #5
  tail call void @WM_operatortype_append(ptr noundef nonnull @TEXT_OT_unlink) #5
  tail call void @WM_operatortype_append(ptr noundef nonnull @TEXT_OT_save) #5
  tail call void @WM_operatortype_append(ptr noundef nonnull @TEXT_OT_save_as) #5
  tail call void @WM_operatortype_append(ptr noundef nonnull @TEXT_OT_make_internal) #5
  tail call void @WM_operatortype_append(ptr noundef nonnull @TEXT_OT_run_script) #5
  tail call void @WM_operatortype_append(ptr noundef nonnull @TEXT_OT_refresh_pyconstraints) #5
  tail call void @WM_operatortype_append(ptr noundef nonnull @TEXT_OT_paste) #5
  tail call void @WM_operatortype_append(ptr noundef nonnull @TEXT_OT_copy) #5
  tail call void @WM_operatortype_append(ptr noundef nonnull @TEXT_OT_cut) #5
  tail call void @WM_operatortype_append(ptr noundef nonnull @TEXT_OT_duplicate_line) #5
  tail call void @WM_operatortype_append(ptr noundef nonnull @TEXT_OT_convert_whitespace) #5
  tail call void @WM_operatortype_append(ptr noundef nonnull @TEXT_OT_uncomment) #5
  tail call void @WM_operatortype_append(ptr noundef nonnull @TEXT_OT_comment) #5
  tail call void @WM_operatortype_append(ptr noundef nonnull @TEXT_OT_unindent) #5
  tail call void @WM_operatortype_append(ptr noundef nonnull @TEXT_OT_indent) #5
  tail call void @WM_operatortype_append(ptr noundef nonnull @TEXT_OT_select_line) #5
  tail call void @WM_operatortype_append(ptr noundef nonnull @TEXT_OT_select_all) #5
  tail call void @WM_operatortype_append(ptr noundef nonnull @TEXT_OT_select_word) #5
  tail call void @WM_operatortype_append(ptr noundef nonnull @TEXT_OT_move_lines) #5
  tail call void @WM_operatortype_append(ptr noundef nonnull @TEXT_OT_jump) #5
  tail call void @WM_operatortype_append(ptr noundef nonnull @TEXT_OT_move) #5
  tail call void @WM_operatortype_append(ptr noundef nonnull @TEXT_OT_move_select) #5
  tail call void @WM_operatortype_append(ptr noundef nonnull @TEXT_OT_delete) #5
  tail call void @WM_operatortype_append(ptr noundef nonnull @TEXT_OT_overwrite_toggle) #5
  tail call void @WM_operatortype_append(ptr noundef nonnull @TEXT_OT_selection_set) #5
  tail call void @WM_operatortype_append(ptr noundef nonnull @TEXT_OT_cursor_set) #5
  tail call void @WM_operatortype_append(ptr noundef nonnull @TEXT_OT_scroll) #5
  tail call void @WM_operatortype_append(ptr noundef nonnull @TEXT_OT_scroll_bar) #5
  tail call void @WM_operatortype_append(ptr noundef nonnull @TEXT_OT_line_number) #5
  tail call void @WM_operatortype_append(ptr noundef nonnull @TEXT_OT_line_break) #5
  tail call void @WM_operatortype_append(ptr noundef nonnull @TEXT_OT_insert) #5
  tail call void @WM_operatortype_append(ptr noundef nonnull @TEXT_OT_properties) #5
  tail call void @WM_operatortype_append(ptr noundef nonnull @TEXT_OT_find) #5
  tail call void @WM_operatortype_append(ptr noundef nonnull @TEXT_OT_find_set_selected) #5
  tail call void @WM_operatortype_append(ptr noundef nonnull @TEXT_OT_replace) #5
  tail call void @WM_operatortype_append(ptr noundef nonnull @TEXT_OT_replace_set_selected) #5
  tail call void @WM_operatortype_append(ptr noundef nonnull @TEXT_OT_start_find) #5
  tail call void @WM_operatortype_append(ptr noundef nonnull @TEXT_OT_to_3d_object) #5
  tail call void @WM_operatortype_append(ptr noundef nonnull @TEXT_OT_resolve_conflict) #5
  tail call void @WM_operatortype_append(ptr noundef nonnull @TEXT_OT_autocomplete) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @text_keymap(ptr noundef %0) #0 {
  %2 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef 9, i32 noundef 0) #5
  %3 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef 102, i32 noundef 1, i32 noundef 2, i32 noundef 0) #5
  %4 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.9, i32 noundef 106, i32 noundef 1, i32 noundef 2, i32 noundef 0) #5
  %5 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.10, i32 noundef 103, i32 noundef 1, i32 noundef 2, i32 noundef 0) #5
  %6 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.11, i32 noundef 104, i32 noundef 1, i32 noundef 2, i32 noundef 0) #5
  %7 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.12, i32 noundef 116, i32 noundef 1, i32 noundef 2, i32 noundef 0) #5
  %8 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef 9, i32 noundef 0) #5
  %9 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.13, i32 noundef 10, i32 noundef 1, i32 noundef 2, i32 noundef 0) #5
  %10 = getelementptr inbounds %struct.wmKeyMapItem, ptr %9, i64 0, i32 17
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  tail call void @RNA_string_set(ptr noundef %11, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #5
  %12 = load ptr, ptr %10, align 8, !tbaa !46
  tail call void @RNA_boolean_set(ptr noundef %12, ptr noundef nonnull @.str.16, i32 noundef 0) #5
  %13 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.13, i32 noundef 11, i32 noundef 1, i32 noundef 2, i32 noundef 0) #5
  %14 = getelementptr inbounds %struct.wmKeyMapItem, ptr %13, i64 0, i32 17
  %15 = load ptr, ptr %14, align 8, !tbaa !46
  tail call void @RNA_string_set(ptr noundef %15, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #5
  %16 = load ptr, ptr %14, align 8, !tbaa !46
  tail call void @RNA_boolean_set(ptr noundef %16, ptr noundef nonnull @.str.16, i32 noundef 1) #5
  %17 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.13, i32 noundef 164, i32 noundef 1, i32 noundef 2, i32 noundef 0) #5
  %18 = getelementptr inbounds %struct.wmKeyMapItem, ptr %17, i64 0, i32 17
  %19 = load ptr, ptr %18, align 8, !tbaa !46
  tail call void @RNA_string_set(ptr noundef %19, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #5
  %20 = load ptr, ptr %18, align 8, !tbaa !46
  tail call void @RNA_boolean_set(ptr noundef %20, ptr noundef nonnull @.str.16, i32 noundef 0) #5
  %21 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.13, i32 noundef 162, i32 noundef 1, i32 noundef 2, i32 noundef 0) #5
  %22 = getelementptr inbounds %struct.wmKeyMapItem, ptr %21, i64 0, i32 17
  %23 = load ptr, ptr %22, align 8, !tbaa !46
  tail call void @RNA_string_set(ptr noundef %23, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #5
  %24 = load ptr, ptr %22, align 8, !tbaa !46
  tail call void @RNA_boolean_set(ptr noundef %24, ptr noundef nonnull @.str.16, i32 noundef 1) #5
  %25 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.17, i32 noundef 110, i32 noundef 1, i32 noundef 2, i32 noundef 0) #5
  %26 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.18, i32 noundef 111, i32 noundef 1, i32 noundef 4, i32 noundef 0) #5
  %27 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.19, i32 noundef 114, i32 noundef 1, i32 noundef 4, i32 noundef 0) #5
  %28 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.20, i32 noundef 115, i32 noundef 1, i32 noundef 4, i32 noundef 0) #5
  %29 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.21, i32 noundef 115, i32 noundef 1, i32 noundef 7, i32 noundef 0) #5
  %30 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.22, i32 noundef 112, i32 noundef 1, i32 noundef 4, i32 noundef 0) #5
  %31 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.23, i32 noundef 120, i32 noundef 1, i32 noundef 2, i32 noundef 0) #5
  %32 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.24, i32 noundef 99, i32 noundef 1, i32 noundef 2, i32 noundef 0) #5
  %33 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.25, i32 noundef 118, i32 noundef 1, i32 noundef 2, i32 noundef 0) #5
  %34 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.23, i32 noundef 224, i32 noundef 1, i32 noundef 1, i32 noundef 0) #5
  %35 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.24, i32 noundef 166, i32 noundef 1, i32 noundef 2, i32 noundef 0) #5
  %36 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.25, i32 noundef 166, i32 noundef 1, i32 noundef 1, i32 noundef 0) #5
  %37 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.26, i32 noundef 100, i32 noundef 1, i32 noundef 2, i32 noundef 0) #5
  %38 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !48
  %39 = and i32 %38, 4194304
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %1
  %42 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.25, i32 noundef 2, i32 noundef 1, i32 noundef 0, i32 noundef 0) #5
  %43 = getelementptr inbounds %struct.wmKeyMapItem, ptr %42, i64 0, i32 17
  %44 = load ptr, ptr %43, align 8, !tbaa !46
  tail call void @RNA_boolean_set(ptr noundef %44, ptr noundef nonnull @.str.27, i32 noundef 1) #5
  br label %45

45:                                               ; preds = %41, %1
  %46 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.28, i32 noundef 97, i32 noundef 1, i32 noundef 2, i32 noundef 0) #5
  %47 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.29, i32 noundef 97, i32 noundef 1, i32 noundef 3, i32 noundef 0) #5
  %48 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.30, i32 noundef 1, i32 noundef 4, i32 noundef 0, i32 noundef 0) #5
  %49 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.31, i32 noundef 140, i32 noundef 1, i32 noundef 3, i32 noundef 0) #5
  %50 = getelementptr inbounds %struct.wmKeyMapItem, ptr %49, i64 0, i32 17
  %51 = load ptr, ptr %50, align 8, !tbaa !46
  tail call void @RNA_enum_set(ptr noundef %51, ptr noundef nonnull @.str.32, i32 noundef -1) #5
  %52 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.31, i32 noundef 138, i32 noundef 1, i32 noundef 3, i32 noundef 0) #5
  %53 = getelementptr inbounds %struct.wmKeyMapItem, ptr %52, i64 0, i32 17
  %54 = load ptr, ptr %53, align 8, !tbaa !46
  tail call void @RNA_enum_set(ptr noundef %54, ptr noundef nonnull @.str.32, i32 noundef 1) #5
  %55 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.33, i32 noundef 219, i32 noundef 1, i32 noundef 0, i32 noundef 0) #5
  %56 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.34, i32 noundef 219, i32 noundef 1, i32 noundef 1, i32 noundef 0) #5
  %57 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.35, i32 noundef 100, i32 noundef 1, i32 noundef 3, i32 noundef 0) #5
  %58 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.36, i32 noundef 167, i32 noundef 1, i32 noundef 0, i32 noundef 0) #5
  %59 = getelementptr inbounds %struct.wmKeyMapItem, ptr %58, i64 0, i32 17
  %60 = load ptr, ptr %59, align 8, !tbaa !46
  tail call void @RNA_enum_set(ptr noundef %60, ptr noundef nonnull @.str.37, i32 noundef 0) #5
  %61 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.36, i32 noundef 170, i32 noundef 1, i32 noundef 0, i32 noundef 0) #5
  %62 = getelementptr inbounds %struct.wmKeyMapItem, ptr %61, i64 0, i32 17
  %63 = load ptr, ptr %62, align 8, !tbaa !46
  tail call void @RNA_enum_set(ptr noundef %63, ptr noundef nonnull @.str.37, i32 noundef 1) #5
  %64 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.36, i32 noundef 101, i32 noundef 1, i32 noundef 2, i32 noundef 0) #5
  %65 = getelementptr inbounds %struct.wmKeyMapItem, ptr %64, i64 0, i32 17
  %66 = load ptr, ptr %65, align 8, !tbaa !46
  tail call void @RNA_enum_set(ptr noundef %66, ptr noundef nonnull @.str.37, i32 noundef 1) #5
  %67 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.36, i32 noundef 101, i32 noundef 1, i32 noundef 3, i32 noundef 0) #5
  %68 = getelementptr inbounds %struct.wmKeyMapItem, ptr %67, i64 0, i32 17
  %69 = load ptr, ptr %68, align 8, !tbaa !46
  tail call void @RNA_enum_set(ptr noundef %69, ptr noundef nonnull @.str.37, i32 noundef 1) #5
  %70 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.36, i32 noundef 137, i32 noundef 1, i32 noundef 0, i32 noundef 0) #5
  %71 = getelementptr inbounds %struct.wmKeyMapItem, ptr %70, i64 0, i32 17
  %72 = load ptr, ptr %71, align 8, !tbaa !46
  tail call void @RNA_enum_set(ptr noundef %72, ptr noundef nonnull @.str.37, i32 noundef 4) #5
  %73 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.36, i32 noundef 139, i32 noundef 1, i32 noundef 0, i32 noundef 0) #5
  %74 = getelementptr inbounds %struct.wmKeyMapItem, ptr %73, i64 0, i32 17
  %75 = load ptr, ptr %74, align 8, !tbaa !46
  tail call void @RNA_enum_set(ptr noundef %75, ptr noundef nonnull @.str.37, i32 noundef 5) #5
  %76 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.36, i32 noundef 137, i32 noundef 1, i32 noundef 2, i32 noundef 0) #5
  %77 = getelementptr inbounds %struct.wmKeyMapItem, ptr %76, i64 0, i32 17
  %78 = load ptr, ptr %77, align 8, !tbaa !46
  tail call void @RNA_enum_set(ptr noundef %78, ptr noundef nonnull @.str.37, i32 noundef 6) #5
  %79 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.36, i32 noundef 139, i32 noundef 1, i32 noundef 2, i32 noundef 0) #5
  %80 = getelementptr inbounds %struct.wmKeyMapItem, ptr %79, i64 0, i32 17
  %81 = load ptr, ptr %80, align 8, !tbaa !46
  tail call void @RNA_enum_set(ptr noundef %81, ptr noundef nonnull @.str.37, i32 noundef 7) #5
  %82 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.36, i32 noundef 140, i32 noundef 1, i32 noundef 0, i32 noundef 0) #5
  %83 = getelementptr inbounds %struct.wmKeyMapItem, ptr %82, i64 0, i32 17
  %84 = load ptr, ptr %83, align 8, !tbaa !46
  tail call void @RNA_enum_set(ptr noundef %84, ptr noundef nonnull @.str.37, i32 noundef 8) #5
  %85 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.36, i32 noundef 138, i32 noundef 1, i32 noundef 0, i32 noundef 0) #5
  %86 = getelementptr inbounds %struct.wmKeyMapItem, ptr %85, i64 0, i32 17
  %87 = load ptr, ptr %86, align 8, !tbaa !46
  tail call void @RNA_enum_set(ptr noundef %87, ptr noundef nonnull @.str.37, i32 noundef 9) #5
  %88 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.36, i32 noundef 168, i32 noundef 1, i32 noundef 0, i32 noundef 0) #5
  %89 = getelementptr inbounds %struct.wmKeyMapItem, ptr %88, i64 0, i32 17
  %90 = load ptr, ptr %89, align 8, !tbaa !46
  tail call void @RNA_enum_set(ptr noundef %90, ptr noundef nonnull @.str.37, i32 noundef 10) #5
  %91 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.36, i32 noundef 169, i32 noundef 1, i32 noundef 0, i32 noundef 0) #5
  %92 = getelementptr inbounds %struct.wmKeyMapItem, ptr %91, i64 0, i32 17
  %93 = load ptr, ptr %92, align 8, !tbaa !46
  tail call void @RNA_enum_set(ptr noundef %93, ptr noundef nonnull @.str.37, i32 noundef 11) #5
  %94 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.36, i32 noundef 167, i32 noundef 1, i32 noundef 2, i32 noundef 0) #5
  %95 = getelementptr inbounds %struct.wmKeyMapItem, ptr %94, i64 0, i32 17
  %96 = load ptr, ptr %95, align 8, !tbaa !46
  tail call void @RNA_enum_set(ptr noundef %96, ptr noundef nonnull @.str.37, i32 noundef 2) #5
  %97 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.36, i32 noundef 170, i32 noundef 1, i32 noundef 2, i32 noundef 0) #5
  %98 = getelementptr inbounds %struct.wmKeyMapItem, ptr %97, i64 0, i32 17
  %99 = load ptr, ptr %98, align 8, !tbaa !46
  tail call void @RNA_enum_set(ptr noundef %99, ptr noundef nonnull @.str.37, i32 noundef 3) #5
  %100 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.38, i32 noundef 167, i32 noundef 1, i32 noundef 1, i32 noundef 0) #5
  %101 = getelementptr inbounds %struct.wmKeyMapItem, ptr %100, i64 0, i32 17
  %102 = load ptr, ptr %101, align 8, !tbaa !46
  tail call void @RNA_enum_set(ptr noundef %102, ptr noundef nonnull @.str.37, i32 noundef 0) #5
  %103 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.38, i32 noundef 170, i32 noundef 1, i32 noundef 1, i32 noundef 0) #5
  %104 = getelementptr inbounds %struct.wmKeyMapItem, ptr %103, i64 0, i32 17
  %105 = load ptr, ptr %104, align 8, !tbaa !46
  tail call void @RNA_enum_set(ptr noundef %105, ptr noundef nonnull @.str.37, i32 noundef 1) #5
  %106 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.38, i32 noundef 137, i32 noundef 1, i32 noundef 1, i32 noundef 0) #5
  %107 = getelementptr inbounds %struct.wmKeyMapItem, ptr %106, i64 0, i32 17
  %108 = load ptr, ptr %107, align 8, !tbaa !46
  tail call void @RNA_enum_set(ptr noundef %108, ptr noundef nonnull @.str.37, i32 noundef 4) #5
  %109 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.38, i32 noundef 139, i32 noundef 1, i32 noundef 1, i32 noundef 0) #5
  %110 = getelementptr inbounds %struct.wmKeyMapItem, ptr %109, i64 0, i32 17
  %111 = load ptr, ptr %110, align 8, !tbaa !46
  tail call void @RNA_enum_set(ptr noundef %111, ptr noundef nonnull @.str.37, i32 noundef 5) #5
  %112 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.38, i32 noundef 137, i32 noundef 1, i32 noundef 3, i32 noundef 0) #5
  %113 = getelementptr inbounds %struct.wmKeyMapItem, ptr %112, i64 0, i32 17
  %114 = load ptr, ptr %113, align 8, !tbaa !46
  tail call void @RNA_enum_set(ptr noundef %114, ptr noundef nonnull @.str.37, i32 noundef 6) #5
  %115 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.38, i32 noundef 139, i32 noundef 1, i32 noundef 3, i32 noundef 0) #5
  %116 = getelementptr inbounds %struct.wmKeyMapItem, ptr %115, i64 0, i32 17
  %117 = load ptr, ptr %116, align 8, !tbaa !46
  tail call void @RNA_enum_set(ptr noundef %117, ptr noundef nonnull @.str.37, i32 noundef 7) #5
  %118 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.38, i32 noundef 140, i32 noundef 1, i32 noundef 1, i32 noundef 0) #5
  %119 = getelementptr inbounds %struct.wmKeyMapItem, ptr %118, i64 0, i32 17
  %120 = load ptr, ptr %119, align 8, !tbaa !46
  tail call void @RNA_enum_set(ptr noundef %120, ptr noundef nonnull @.str.37, i32 noundef 8) #5
  %121 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.38, i32 noundef 138, i32 noundef 1, i32 noundef 1, i32 noundef 0) #5
  %122 = getelementptr inbounds %struct.wmKeyMapItem, ptr %121, i64 0, i32 17
  %123 = load ptr, ptr %122, align 8, !tbaa !46
  tail call void @RNA_enum_set(ptr noundef %123, ptr noundef nonnull @.str.37, i32 noundef 9) #5
  %124 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.38, i32 noundef 168, i32 noundef 1, i32 noundef 1, i32 noundef 0) #5
  %125 = getelementptr inbounds %struct.wmKeyMapItem, ptr %124, i64 0, i32 17
  %126 = load ptr, ptr %125, align 8, !tbaa !46
  tail call void @RNA_enum_set(ptr noundef %126, ptr noundef nonnull @.str.37, i32 noundef 10) #5
  %127 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.38, i32 noundef 169, i32 noundef 1, i32 noundef 1, i32 noundef 0) #5
  %128 = getelementptr inbounds %struct.wmKeyMapItem, ptr %127, i64 0, i32 17
  %129 = load ptr, ptr %128, align 8, !tbaa !46
  tail call void @RNA_enum_set(ptr noundef %129, ptr noundef nonnull @.str.37, i32 noundef 11) #5
  %130 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.38, i32 noundef 167, i32 noundef 1, i32 noundef 3, i32 noundef 0) #5
  %131 = getelementptr inbounds %struct.wmKeyMapItem, ptr %130, i64 0, i32 17
  %132 = load ptr, ptr %131, align 8, !tbaa !46
  tail call void @RNA_enum_set(ptr noundef %132, ptr noundef nonnull @.str.37, i32 noundef 2) #5
  %133 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.38, i32 noundef 170, i32 noundef 1, i32 noundef 3, i32 noundef 0) #5
  %134 = getelementptr inbounds %struct.wmKeyMapItem, ptr %133, i64 0, i32 17
  %135 = load ptr, ptr %134, align 8, !tbaa !46
  tail call void @RNA_enum_set(ptr noundef %135, ptr noundef nonnull @.str.37, i32 noundef 3) #5
  %136 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.39, i32 noundef 224, i32 noundef 1, i32 noundef 0, i32 noundef 0) #5
  %137 = getelementptr inbounds %struct.wmKeyMapItem, ptr %136, i64 0, i32 17
  %138 = load ptr, ptr %137, align 8, !tbaa !46
  tail call void @RNA_enum_set(ptr noundef %138, ptr noundef nonnull @.str.37, i32 noundef 0) #5
  %139 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.39, i32 noundef 223, i32 noundef 1, i32 noundef 0, i32 noundef 0) #5
  %140 = getelementptr inbounds %struct.wmKeyMapItem, ptr %139, i64 0, i32 17
  %141 = load ptr, ptr %140, align 8, !tbaa !46
  tail call void @RNA_enum_set(ptr noundef %141, ptr noundef nonnull @.str.37, i32 noundef 1) #5
  %142 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.39, i32 noundef 223, i32 noundef 1, i32 noundef 1, i32 noundef 0) #5
  %143 = getelementptr inbounds %struct.wmKeyMapItem, ptr %142, i64 0, i32 17
  %144 = load ptr, ptr %143, align 8, !tbaa !46
  tail call void @RNA_enum_set(ptr noundef %144, ptr noundef nonnull @.str.37, i32 noundef 1) #5
  %145 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.39, i32 noundef 224, i32 noundef 1, i32 noundef 2, i32 noundef 0) #5
  %146 = getelementptr inbounds %struct.wmKeyMapItem, ptr %145, i64 0, i32 17
  %147 = load ptr, ptr %146, align 8, !tbaa !46
  tail call void @RNA_enum_set(ptr noundef %147, ptr noundef nonnull @.str.37, i32 noundef 2) #5
  %148 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.39, i32 noundef 223, i32 noundef 1, i32 noundef 2, i32 noundef 0) #5
  %149 = getelementptr inbounds %struct.wmKeyMapItem, ptr %148, i64 0, i32 17
  %150 = load ptr, ptr %149, align 8, !tbaa !46
  tail call void @RNA_enum_set(ptr noundef %150, ptr noundef nonnull @.str.37, i32 noundef 3) #5
  %151 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.40, i32 noundef 166, i32 noundef 1, i32 noundef 0, i32 noundef 0) #5
  %152 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.41, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #5
  %153 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.41, i32 noundef 2, i32 noundef 1, i32 noundef 0, i32 noundef 0) #5
  %154 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.42, i32 noundef 2, i32 noundef 1, i32 noundef 0, i32 noundef 0) #5
  %155 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.42, i32 noundef 14, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  %156 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.43, i32 noundef 20483, i32 noundef -1, i32 noundef 0, i32 noundef 0) #5
  %157 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.44, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #5
  %158 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.43, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 0) #5
  %159 = getelementptr inbounds %struct.wmKeyMapItem, ptr %158, i64 0, i32 17
  %160 = load ptr, ptr %159, align 8, !tbaa !46
  tail call void @RNA_boolean_set(ptr noundef %160, ptr noundef nonnull @.str.45, i32 noundef 1) #5
  %161 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.42, i32 noundef 10, i32 noundef 1, i32 noundef 0, i32 noundef 0) #5
  %162 = getelementptr inbounds %struct.wmKeyMapItem, ptr %161, i64 0, i32 17
  %163 = load ptr, ptr %162, align 8, !tbaa !46
  tail call void @RNA_int_set(ptr noundef %163, ptr noundef nonnull @.str.46, i32 noundef -1) #5
  %164 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.42, i32 noundef 11, i32 noundef 1, i32 noundef 0, i32 noundef 0) #5
  %165 = getelementptr inbounds %struct.wmKeyMapItem, ptr %164, i64 0, i32 17
  %166 = load ptr, ptr %165, align 8, !tbaa !46
  tail call void @RNA_int_set(ptr noundef %166, ptr noundef nonnull @.str.46, i32 noundef 1) #5
  %167 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.47, i32 noundef 220, i32 noundef 1, i32 noundef 0, i32 noundef 0) #5
  %168 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.47, i32 noundef 163, i32 noundef 1, i32 noundef 0, i32 noundef 0) #5
  %169 = tail call ptr @WM_keymap_add_menu(ptr noundef %8, ptr noundef nonnull @.str.48, i32 noundef 3, i32 noundef 1, i32 noundef -1, i32 noundef 0) #5
  %170 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.49, i32 noundef 221, i32 noundef 1, i32 noundef 2, i32 noundef 0) #5
  %171 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.50, i32 noundef -2, i32 noundef -1, i32 noundef -1, i32 noundef 0) #5
  %172 = tail call ptr @WM_keymap_add_item(ptr noundef %8, ptr noundef nonnull @.str.51, i32 noundef -2, i32 noundef -1, i32 noundef -1, i32 noundef 0) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @text_listener(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !52
  %6 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 5
  %7 = load i32, ptr %6, align 4, !tbaa !54
  switch i32 %7, label %51 [
    i32 201326592, label %8
    i32 251658240, label %46
  ]

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !56
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.SpaceText, ptr %5, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !44
  %15 = icmp eq ptr %10, %14
  br i1 %15, label %16, label %51

16:                                               ; preds = %12, %8
  %17 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %18 = load i32, ptr %17, align 8, !tbaa !57
  switch i32 %18, label %27 [
    i32 3342336, label %26
    i32 3276800, label %19
  ]

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.SpaceText, ptr %5, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !44
  %22 = icmp ne ptr %21, null
  %23 = icmp eq ptr %21, %10
  %24 = and i1 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  tail call void @text_scroll_to_cursor(ptr noundef nonnull %5, ptr noundef nonnull %1) #5
  br label %26

26:                                               ; preds = %19, %25, %16
  tail call void @ED_area_tag_redraw(ptr noundef nonnull %1) #5
  br label %27

27:                                               ; preds = %26, %16
  %28 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 8
  %29 = load i32, ptr %28, align 8, !tbaa !58
  switch i32 %29, label %51 [
    i32 1, label %30
    i32 3, label %37
    i32 4, label %37
    i32 6, label %38
  ]

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.SpaceText, ptr %5, i64 0, i32 6
  %32 = load ptr, ptr %31, align 8, !tbaa !44
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  tail call void @text_drawcache_tag_update(ptr noundef nonnull %5, i32 noundef 1) #5
  %35 = load ptr, ptr %31, align 8, !tbaa !44
  tail call void @text_update_edited(ptr noundef %35) #5
  br label %36

36:                                               ; preds = %34, %30
  tail call void @ED_area_tag_redraw(ptr noundef nonnull %1) #5
  br label %37

37:                                               ; preds = %27, %27, %36
  tail call void @ED_area_tag_redraw(ptr noundef nonnull %1) #5
  br label %51

38:                                               ; preds = %27
  %39 = getelementptr inbounds %struct.SpaceText, ptr %5, i64 0, i32 6
  %40 = load ptr, ptr %39, align 8, !tbaa !44
  %41 = icmp eq ptr %40, null
  br i1 %41, label %51, label %42

42:                                               ; preds = %38
  %43 = load ptr, ptr %9, align 8, !tbaa !56
  %44 = icmp eq ptr %40, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  tail call void @text_scroll_to_cursor(ptr noundef nonnull %5, ptr noundef nonnull %1) #5
  br label %51

46:                                               ; preds = %3
  %47 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %48 = load i32, ptr %47, align 8, !tbaa !57
  %49 = icmp eq i32 %48, 720896
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  tail call void @ED_area_tag_redraw(ptr noundef nonnull %1) #5
  br label %51

51:                                               ; preds = %46, %50, %37, %27, %45, %42, %38, %12, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @text_context(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #5
  %5 = tail call zeroext i8 @CTX_data_dir(ptr noundef %1) #5
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @CTX_data_dir_set(ptr noundef %2, ptr noundef nonnull @text_context_dir) #5
  br label %14

8:                                                ; preds = %3
  %9 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str) #5
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !44
  tail call void @CTX_data_id_pointer_set(ptr noundef %2, ptr noundef %13) #5
  br label %14

14:                                               ; preds = %8, %11, %7
  %15 = phi i32 [ 1, %7 ], [ 1, %11 ], [ 0, %8 ]
  ret i32 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @text_dropboxes() #0 {
  %1 = tail call ptr @WM_dropboxmap_find(ptr noundef nonnull @.str.2, i32 noundef 9, i32 noundef 0) #5
  %2 = tail call ptr @WM_dropbox_add(ptr noundef %1, ptr noundef nonnull @.str.18, ptr noundef nonnull @text_drop_poll, ptr noundef nonnull @text_drop_copy) #5
  %3 = tail call ptr @WM_dropbox_add(ptr noundef %1, ptr noundef nonnull @.str.51, ptr noundef nonnull @text_drop_paste_poll, ptr noundef nonnull @text_drop_paste) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @text_main_area_init(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  %4 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %5 = load i16, ptr %4, align 8, !tbaa !59
  %6 = sext i16 %5 to i32
  %7 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %8 = load i16, ptr %7, align 2, !tbaa !60
  %9 = sext i16 %8 to i32
  tail call void @UI_view2d_region_reinit(ptr noundef nonnull %3, i16 noundef signext 0, i32 noundef %6, i32 noundef %9) #5
  %10 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %11 = load ptr, ptr %10, align 8, !tbaa !61
  %12 = tail call ptr @WM_keymap_find(ptr noundef %11, ptr noundef nonnull @.str.7, i32 noundef 9, i32 noundef 0) #5
  %13 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 26
  %14 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 4
  %15 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %16 = tail call ptr @WM_event_add_keymap_handler_bb(ptr noundef nonnull %13, ptr noundef %12, ptr noundef nonnull %14, ptr noundef nonnull %15) #5
  %17 = load ptr, ptr %10, align 8, !tbaa !61
  %18 = tail call ptr @WM_keymap_find(ptr noundef %17, ptr noundef nonnull @.str.2, i32 noundef 9, i32 noundef 0) #5
  %19 = tail call ptr @WM_event_add_keymap_handler_bb(ptr noundef nonnull %13, ptr noundef %18, ptr noundef nonnull %14, ptr noundef nonnull %15) #5
  %20 = tail call ptr @WM_dropboxmap_find(ptr noundef nonnull @.str.2, i32 noundef 9, i32 noundef 0) #5
  %21 = tail call ptr @WM_event_add_dropbox_handler(ptr noundef nonnull %13, ptr noundef %20) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @text_main_area_draw(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #5
  tail call void @UI_ThemeClearColor(i32 noundef 2) #5
  tail call void @glClear(i32 noundef 16384) #5
  tail call void @draw_text_main(ptr noundef %3, ptr noundef %1) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @text_cursor(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !52
  %6 = getelementptr inbounds %struct.SpaceText, ptr %5, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !44
  %8 = icmp eq ptr %7, null
  br i1 %8, label %23, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.SpaceText, ptr %5, i64 0, i32 23
  %11 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 21
  %12 = load ptr, ptr %11, align 8, !tbaa !65
  %13 = getelementptr inbounds %struct.wmEvent, ptr %12, i64 0, i32 4
  %14 = load i32, ptr %13, align 4, !tbaa !67
  %15 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !70
  %17 = sub nsw i32 %14, %16
  %18 = getelementptr inbounds %struct.SpaceText, ptr %5, i64 0, i32 23, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !71
  %20 = tail call zeroext i8 @BLI_rcti_isect_pt(ptr noundef nonnull %10, i32 noundef %17, i32 noundef %19) #5
  %21 = icmp eq i8 %20, 0
  %22 = select i1 %21, i32 11, i32 1006
  br label %23

23:                                               ; preds = %9, %3
  %24 = phi i32 [ 11, %3 ], [ %22, %9 ]
  tail call void @WM_cursor_set(ptr noundef %0, i32 noundef %24) #5
  ret void
}

; Function Attrs: optsize
declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @text_properties_area_init(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 9
  store i16 130, ptr %3, align 8, !tbaa !72
  tail call void @ED_region_panels_init(ptr noundef %0, ptr noundef %1) #5
  %4 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %5 = load ptr, ptr %4, align 8, !tbaa !61
  %6 = tail call ptr @WM_keymap_find(ptr noundef %5, ptr noundef nonnull @.str.7, i32 noundef 9, i32 noundef 0) #5
  %7 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 26
  %8 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 4
  %9 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %10 = tail call ptr @WM_event_add_keymap_handler_bb(ptr noundef nonnull %7, ptr noundef %6, ptr noundef nonnull %8, ptr noundef nonnull %9) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @text_properties_area_draw(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #5
  tail call void @ED_region_panels(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef null, i32 noundef -1) #5
  %4 = getelementptr inbounds %struct.SpaceText, ptr %3, i64 0, i32 9
  %5 = load i16, ptr %4, align 8, !tbaa !73
  %6 = and i16 %5, 512
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %2
  %9 = tail call zeroext i8 @UI_textbutton_activate_rna(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull @.str.54) #5
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = tail call ptr @CTX_wm_area(ptr noundef %0) #5
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 252379136, ptr noundef %12) #5
  br label %13

13:                                               ; preds = %11, %8
  %14 = load i16, ptr %4, align 8, !tbaa !73
  %15 = and i16 %14, -513
  store i16 %15, ptr %4, align 8, !tbaa !73
  br label %16

16:                                               ; preds = %13, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @text_header_area_init(ptr nocapture readnone %0, ptr noundef %1) #0 {
  tail call void @ED_region_header_init(ptr noundef %1) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @text_header_area_draw(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @ED_region_header(ptr noundef %0, ptr noundef %1) #5
  ret void
}

; Function Attrs: optsize
declare void @BKE_spacetype_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_text_format_register_py() local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_text_format_register_osl() local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_text_format_register_lua() local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @text_free_caches(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_operatortype_append(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @TEXT_OT_new(ptr noundef) #2

; Function Attrs: optsize
declare void @TEXT_OT_open(ptr noundef) #2

; Function Attrs: optsize
declare void @TEXT_OT_reload(ptr noundef) #2

; Function Attrs: optsize
declare void @TEXT_OT_unlink(ptr noundef) #2

; Function Attrs: optsize
declare void @TEXT_OT_save(ptr noundef) #2

; Function Attrs: optsize
declare void @TEXT_OT_save_as(ptr noundef) #2

; Function Attrs: optsize
declare void @TEXT_OT_make_internal(ptr noundef) #2

; Function Attrs: optsize
declare void @TEXT_OT_run_script(ptr noundef) #2

; Function Attrs: optsize
declare void @TEXT_OT_refresh_pyconstraints(ptr noundef) #2

; Function Attrs: optsize
declare void @TEXT_OT_paste(ptr noundef) #2

; Function Attrs: optsize
declare void @TEXT_OT_copy(ptr noundef) #2

; Function Attrs: optsize
declare void @TEXT_OT_cut(ptr noundef) #2

; Function Attrs: optsize
declare void @TEXT_OT_duplicate_line(ptr noundef) #2

; Function Attrs: optsize
declare void @TEXT_OT_convert_whitespace(ptr noundef) #2

; Function Attrs: optsize
declare void @TEXT_OT_uncomment(ptr noundef) #2

; Function Attrs: optsize
declare void @TEXT_OT_comment(ptr noundef) #2

; Function Attrs: optsize
declare void @TEXT_OT_unindent(ptr noundef) #2

; Function Attrs: optsize
declare void @TEXT_OT_indent(ptr noundef) #2

; Function Attrs: optsize
declare void @TEXT_OT_select_line(ptr noundef) #2

; Function Attrs: optsize
declare void @TEXT_OT_select_all(ptr noundef) #2

; Function Attrs: optsize
declare void @TEXT_OT_select_word(ptr noundef) #2

; Function Attrs: optsize
declare void @TEXT_OT_move_lines(ptr noundef) #2

; Function Attrs: optsize
declare void @TEXT_OT_jump(ptr noundef) #2

; Function Attrs: optsize
declare void @TEXT_OT_move(ptr noundef) #2

; Function Attrs: optsize
declare void @TEXT_OT_move_select(ptr noundef) #2

; Function Attrs: optsize
declare void @TEXT_OT_delete(ptr noundef) #2

; Function Attrs: optsize
declare void @TEXT_OT_overwrite_toggle(ptr noundef) #2

; Function Attrs: optsize
declare void @TEXT_OT_selection_set(ptr noundef) #2

; Function Attrs: optsize
declare void @TEXT_OT_cursor_set(ptr noundef) #2

; Function Attrs: optsize
declare void @TEXT_OT_scroll(ptr noundef) #2

; Function Attrs: optsize
declare void @TEXT_OT_scroll_bar(ptr noundef) #2

; Function Attrs: optsize
declare void @TEXT_OT_line_number(ptr noundef) #2

; Function Attrs: optsize
declare void @TEXT_OT_line_break(ptr noundef) #2

; Function Attrs: optsize
declare void @TEXT_OT_insert(ptr noundef) #2

; Function Attrs: optsize
declare void @TEXT_OT_properties(ptr noundef) #2

; Function Attrs: optsize
declare void @TEXT_OT_find(ptr noundef) #2

; Function Attrs: optsize
declare void @TEXT_OT_find_set_selected(ptr noundef) #2

; Function Attrs: optsize
declare void @TEXT_OT_replace(ptr noundef) #2

; Function Attrs: optsize
declare void @TEXT_OT_replace_set_selected(ptr noundef) #2

; Function Attrs: optsize
declare void @TEXT_OT_start_find(ptr noundef) #2

; Function Attrs: optsize
declare void @TEXT_OT_to_3d_object(ptr noundef) #2

; Function Attrs: optsize
declare void @TEXT_OT_resolve_conflict(ptr noundef) #2

; Function Attrs: optsize
declare void @TEXT_OT_autocomplete(ptr noundef) #2

; Function Attrs: optsize
declare ptr @WM_keymap_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_keymap_add_item(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_enum_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_keymap_add_menu(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_area_tag_redraw(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @text_scroll_to_cursor(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @text_drawcache_tag_update(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @text_update_edited(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_space_text(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @CTX_data_dir(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CTX_data_dir_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @CTX_data_equals(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CTX_data_id_pointer_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_dropboxmap_find(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_dropbox_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal noundef i32 @text_drop_poll(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #3 {
  %4 = getelementptr inbounds %struct.wmDrag, ptr %1, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !74
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.wmDrag, ptr %1, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !76
  switch i32 %9, label %10 [
    i32 698, label %11
    i32 701, label %11
    i32 694, label %11
  ]

10:                                               ; preds = %7, %3
  br label %11

11:                                               ; preds = %7, %7, %7, %10
  %12 = phi i32 [ 0, %10 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ]
  ret i32 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @text_drop_copy(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.wmDropBox, ptr %1, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !77
  %5 = getelementptr inbounds %struct.wmDrag, ptr %0, i64 0, i32 5
  tail call void @RNA_string_set(ptr noundef %4, ptr noundef nonnull @.str.52, ptr noundef nonnull %5) #5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @text_drop_paste_poll(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #3 {
  %4 = getelementptr inbounds %struct.wmDrag, ptr %1, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !74
  %6 = icmp eq i32 %5, 0
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @text_drop_paste(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.wmDrag, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !79
  %5 = tail call ptr @RNA_path_full_ID_py(ptr noundef %4) #5
  %6 = getelementptr inbounds %struct.wmDropBox, ptr %1, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !77
  tail call void @RNA_string_set(ptr noundef %7, ptr noundef nonnull @.str.53, ptr noundef %5) #5
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !5
  tail call void %8(ptr noundef %5) #5
  ret void
}

; Function Attrs: optsize
declare ptr @RNA_path_full_ID_py(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_view2d_region_reinit(ptr noundef, i16 noundef signext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_event_add_keymap_handler_bb(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_event_add_dropbox_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_ThemeClearColor(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glClear(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @draw_text_main(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BLI_rcti_isect_pt(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_cursor_set(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_panels_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_panels(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @UI_textbutton_activate_rna(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_header_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_header(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind optsize }

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
!19 = !{!10, !6, i64 120}
!20 = !{!10, !6, i64 168}
!21 = !{!10, !6, i64 160}
!22 = !{!23, !11, i64 16}
!23 = !{!"ARegionType", !6, i64 0, !6, i64 8, !11, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !12, i64 104, !12, i64 120, !12, i64 136, !11, i64 152, !11, i64 156, !11, i64 160, !11, i64 164, !11, i64 168, !24, i64 172, !24, i64 174, !24, i64 176}
!24 = !{!"short", !7, i64 0}
!25 = !{!23, !6, i64 24}
!26 = !{!23, !6, i64 40}
!27 = !{!23, !6, i64 88}
!28 = !{!23, !24, i64 176}
!29 = !{!23, !11, i64 160}
!30 = !{!23, !11, i64 168}
!31 = !{!23, !11, i64 164}
!32 = !{!33, !11, i64 32}
!33 = !{!"SpaceText", !6, i64 0, !6, i64 8, !12, i64 16, !11, i64 32, !34, i64 36, !7, i64 40, !6, i64 56, !11, i64 64, !11, i64 68, !24, i64 72, !24, i64 74, !24, i64 76, !7, i64 78, !7, i64 79, !11, i64 80, !11, i64 84, !11, i64 88, !24, i64 92, !24, i64 94, !24, i64 96, !24, i64 98, !34, i64 100, !35, i64 104, !35, i64 120, !11, i64 136, !11, i64 140, !7, i64 144, !7, i64 400, !24, i64 656, !24, i64 658, !7, i64 660, !6, i64 664, !7, i64 672}
!34 = !{!"float", !7, i64 0}
!35 = !{!"rcti", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12}
!36 = !{!33, !24, i64 76}
!37 = !{!33, !11, i64 88}
!38 = !{!33, !24, i64 656}
!39 = !{!40, !24, i64 214}
!40 = !{!"ARegion", !6, i64 0, !6, i64 8, !41, i64 16, !35, i64 176, !35, i64 192, !24, i64 208, !24, i64 210, !24, i64 212, !24, i64 214, !24, i64 216, !24, i64 218, !34, i64 220, !24, i64 224, !24, i64 226, !24, i64 228, !24, i64 230, !24, i64 232, !24, i64 234, !24, i64 236, !24, i64 238, !6, i64 240, !12, i64 248, !12, i64 264, !12, i64 280, !12, i64 296, !12, i64 312, !12, i64 328, !12, i64 344, !6, i64 360, !6, i64 368, !6, i64 376}
!41 = !{!"View2D", !42, i64 0, !42, i64 16, !35, i64 32, !35, i64 48, !35, i64 64, !7, i64 80, !7, i64 88, !34, i64 96, !34, i64 100, !24, i64 104, !24, i64 106, !24, i64 108, !24, i64 110, !24, i64 112, !24, i64 114, !24, i64 116, !24, i64 118, !24, i64 120, !24, i64 122, !24, i64 124, !24, i64 126, !6, i64 128, !11, i64 136, !11, i64 140, !6, i64 144, !6, i64 152}
!42 = !{!"rctf", !34, i64 0, !34, i64 4, !34, i64 8, !34, i64 12}
!43 = !{!40, !24, i64 216}
!44 = !{!33, !6, i64 56}
!45 = !{!33, !6, i64 664}
!46 = !{!47, !6, i64 176}
!47 = !{!"wmKeyMapItem", !6, i64 0, !6, i64 8, !7, i64 16, !6, i64 80, !7, i64 88, !24, i64 152, !24, i64 154, !24, i64 156, !24, i64 158, !24, i64 160, !24, i64 162, !24, i64 164, !24, i64 166, !24, i64 168, !24, i64 170, !24, i64 172, !24, i64 174, !6, i64 176}
!48 = !{!49, !11, i64 8484}
!49 = !{!"UserDef", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !7, i64 20, !7, i64 788, !7, i64 1556, !7, i64 2580, !7, i64 3348, !7, i64 4116, !7, i64 4884, !7, i64 5652, !7, i64 6420, !7, i64 7444, !11, i64 8468, !24, i64 8472, !24, i64 8474, !24, i64 8476, !24, i64 8478, !24, i64 8480, !24, i64 8482, !11, i64 8484, !11, i64 8488, !11, i64 8492, !24, i64 8496, !24, i64 8498, !11, i64 8500, !11, i64 8504, !11, i64 8508, !11, i64 8512, !11, i64 8516, !11, i64 8520, !11, i64 8524, !24, i64 8528, !24, i64 8530, !24, i64 8532, !24, i64 8534, !12, i64 8536, !12, i64 8552, !12, i64 8568, !12, i64 8584, !12, i64 8600, !12, i64 8616, !12, i64 8632, !7, i64 8648, !24, i64 8712, !24, i64 8714, !24, i64 8716, !24, i64 8718, !24, i64 8720, !24, i64 8722, !24, i64 8724, !24, i64 8726, !7, i64 8728, !24, i64 8896, !24, i64 8898, !24, i64 8900, !24, i64 8902, !24, i64 8904, !24, i64 8906, !24, i64 8908, !24, i64 8910, !11, i64 8912, !11, i64 8916, !24, i64 8920, !24, i64 8922, !24, i64 8924, !24, i64 8926, !24, i64 8928, !24, i64 8930, !24, i64 8932, !24, i64 8934, !24, i64 8936, !24, i64 8938, !7, i64 8940, !7, i64 8941, !7, i64 8942, !7, i64 8943, !24, i64 8944, !24, i64 8946, !24, i64 8948, !24, i64 8950, !24, i64 8952, !24, i64 8954, !34, i64 8956, !34, i64 8960, !11, i64 8964, !24, i64 8968, !24, i64 8970, !34, i64 8972, !24, i64 8976, !24, i64 8978, !24, i64 8980, !24, i64 8982, !50, i64 8984, !7, i64 9760, !7, i64 9772, !24, i64 9788, !7, i64 9790, !7, i64 9791, !7, i64 9792, !7, i64 9872, !11, i64 10896, !11, i64 10900, !34, i64 10904, !34, i64 10908, !11, i64 10912, !24, i64 10916, !24, i64 10918, !24, i64 10920, !24, i64 10922, !24, i64 10924, !24, i64 10926, !51, i64 10928}
!50 = !{!"ColorBand", !24, i64 0, !24, i64 2, !7, i64 4, !7, i64 5, !7, i64 6, !7, i64 7, !7, i64 8}
!51 = !{!"WalkNavigation", !34, i64 0, !34, i64 4, !34, i64 8, !34, i64 12, !34, i64 16, !34, i64 20, !24, i64 24, !7, i64 26}
!52 = !{!53, !6, i64 96}
!53 = !{!"ScrArea", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !35, i64 56, !7, i64 72, !7, i64 73, !24, i64 74, !24, i64 76, !24, i64 78, !24, i64 80, !24, i64 82, !24, i64 84, !7, i64 86, !7, i64 87, !6, i64 88, !12, i64 96, !12, i64 112, !12, i64 128, !12, i64 144}
!54 = !{!55, !11, i64 36}
!55 = !{!"wmNotifier", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !6, i64 56}
!56 = !{!55, !6, i64 56}
!57 = !{!55, !11, i64 40}
!58 = !{!55, !11, i64 48}
!59 = !{!40, !24, i64 208}
!60 = !{!40, !24, i64 210}
!61 = !{!62, !6, i64 296}
!62 = !{!"wmWindowManager", !63, i64 0, !6, i64 120, !6, i64 128, !12, i64 136, !11, i64 152, !24, i64 156, !24, i64 158, !12, i64 160, !12, i64 176, !64, i64 192, !12, i64 232, !12, i64 248, !12, i64 264, !12, i64 280, !6, i64 296, !6, i64 304, !6, i64 312, !12, i64 320, !6, i64 336, !7, i64 344, !7, i64 345}
!63 = !{!"ID", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !7, i64 32, !24, i64 98, !11, i64 100, !11, i64 104, !11, i64 108, !6, i64 112}
!64 = !{!"ReportList", !12, i64 0, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !6, i64 32}
!65 = !{!66, !6, i64 136}
!66 = !{!"wmWindow", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !7, i64 40, !24, i64 104, !24, i64 106, !24, i64 108, !24, i64 110, !24, i64 112, !24, i64 114, !24, i64 116, !24, i64 118, !24, i64 120, !24, i64 122, !24, i64 124, !24, i64 126, !11, i64 128, !24, i64 132, !24, i64 134, !6, i64 136, !6, i64 144, !6, i64 152, !11, i64 160, !11, i64 164, !6, i64 168, !12, i64 176, !12, i64 192, !12, i64 208, !12, i64 224, !12, i64 240}
!67 = !{!68, !11, i64 20}
!68 = !{!"wmEvent", !6, i64 0, !6, i64 8, !24, i64 16, !24, i64 18, !11, i64 20, !11, i64 24, !7, i64 28, !7, i64 36, !7, i64 42, !7, i64 43, !24, i64 44, !24, i64 46, !11, i64 48, !11, i64 52, !69, i64 56, !11, i64 64, !11, i64 68, !24, i64 72, !24, i64 74, !24, i64 76, !24, i64 78, !24, i64 80, !24, i64 82, !6, i64 88, !6, i64 96, !24, i64 104, !24, i64 106, !11, i64 108, !6, i64 112}
!69 = !{!"double", !7, i64 0}
!70 = !{!40, !11, i64 176}
!71 = !{!33, !11, i64 128}
!72 = !{!40, !24, i64 120}
!73 = !{!33, !24, i64 72}
!74 = !{!75, !11, i64 20}
!75 = !{!"wmDrag", !6, i64 0, !6, i64 8, !11, i64 16, !11, i64 20, !6, i64 24, !7, i64 32, !69, i64 1056, !6, i64 1064, !34, i64 1072, !11, i64 1076, !11, i64 1080, !7, i64 1084, !11, i64 1284}
!76 = !{!75, !11, i64 16}
!77 = !{!78, !6, i64 48}
!78 = !{!"wmDropBox", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !24, i64 56}
!79 = !{!75, !6, i64 24}
