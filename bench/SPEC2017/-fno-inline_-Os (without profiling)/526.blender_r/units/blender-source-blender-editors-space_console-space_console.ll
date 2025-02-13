; ModuleID = 'blender/source/blender/editors/space_console/space_console.c'
source_filename = "blender/source/blender/editors/space_console/space_console.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.SpaceType = type { ptr, ptr, [64 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.ARegionType = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i16 }
%struct.SpaceConsole = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], i32, i32, %struct.ListBase, %struct.ListBase, [256 x i8], [32 x i8], i32, i32 }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.wmKeyMapItem = type { ptr, ptr, [64 x i8], ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr }
%struct.wmWindowManager = type { %struct.ID, ptr, ptr, %struct.ListBase, i32, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ReportList, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, %struct.ListBase, ptr, i8, [7 x i8] }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.ReportList = type { %struct.ListBase, i32, i32, i32, i32, ptr }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.SpaceText = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], ptr, i32, i32, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, float, %struct.rcti, %struct.rcti, i32, i32, [256 x i8], [256 x i8], i16, i16, [4 x i8], ptr, [2 x float] }
%struct.wmWindow = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, ptr, ptr, ptr, i32, i32, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.wmNotifier = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr }
%struct.wmDrag = type { ptr, ptr, i32, i32, ptr, [1024 x i8], double, ptr, float, i32, i32, [200 x i8], i32 }
%struct.wmDropBox = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16 }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [18 x i8] c"spacetype console\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Console\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"spacetype console region\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"initconsole\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"header for console\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"main area for text\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [16 x i8] c"CONSOLE_OT_move\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"WM_OT_context_cycle_int\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"data_path\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"space_data.font_size\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"reverse\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"CONSOLE_OT_history_cycle\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"CONSOLE_OT_delete\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"CONSOLE_OT_clear_line\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"CONSOLE_OT_copy_as_script\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"CONSOLE_OT_copy\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"CONSOLE_OT_paste\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"CONSOLE_OT_select_set\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"CONSOLE_OT_insert\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"CONSOLE_OT_indent\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"CONSOLE_OT_unindent\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.24 = private unnamed_addr constant [5 x i8] c"\22%s\22\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"CONSOLE_OT_banner\00", align 1
@str = private unnamed_addr constant [65 x i8] c"Console\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_spacetype_console() local_unnamed_addr #0 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %2 = tail call ptr %1(i64 noundef 216, ptr noundef nonnull @.str) #8
  %3 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 3
  store i32 18, ptr %3, align 8, !tbaa !9
  %4 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %4, ptr noundef nonnull align 1 dereferenceable(64) @str, i64 noundef 64, i1 false) #8
  %5 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 5
  store ptr @console_new, ptr %5, align 8, !tbaa !13
  %6 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 6
  store ptr @console_free, ptr %6, align 8, !tbaa !14
  %7 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 7
  store ptr @console_init, ptr %7, align 8, !tbaa !15
  %8 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 11
  store ptr @console_duplicate, ptr %8, align 8, !tbaa !16
  %9 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 12
  store ptr @console_operatortypes, ptr %9, align 8, !tbaa !17
  %10 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 13
  store ptr @console_keymap, ptr %10, align 8, !tbaa !18
  %11 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 14
  store ptr @console_dropboxes, ptr %11, align 8, !tbaa !19
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %13 = tail call ptr %12(i64 noundef 184, ptr noundef nonnull @.str.2) #8
  %14 = getelementptr inbounds %struct.ARegionType, ptr %13, i64 0, i32 2
  store i32 0, ptr %14, align 8, !tbaa !20
  %15 = getelementptr inbounds %struct.ARegionType, ptr %13, i64 0, i32 20
  store i32 3, ptr %15, align 8, !tbaa !23
  %16 = getelementptr inbounds %struct.ARegionType, ptr %13, i64 0, i32 3
  store ptr @console_main_area_init, ptr %16, align 8, !tbaa !24
  %17 = getelementptr inbounds %struct.ARegionType, ptr %13, i64 0, i32 5
  store ptr @console_main_area_draw, ptr %17, align 8, !tbaa !25
  %18 = getelementptr inbounds %struct.ARegionType, ptr %13, i64 0, i32 11
  store ptr @console_cursor, ptr %18, align 8, !tbaa !26
  %19 = getelementptr inbounds %struct.ARegionType, ptr %13, i64 0, i32 6
  store ptr @console_main_area_listener, ptr %19, align 8, !tbaa !27
  %20 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 16
  tail call void @BLI_addhead(ptr noundef nonnull %20, ptr noundef %13) #8
  %21 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %22 = tail call ptr %21(i64 noundef 184, ptr noundef nonnull @.str.2) #8
  %23 = getelementptr inbounds %struct.ARegionType, ptr %22, i64 0, i32 2
  store i32 1, ptr %23, align 8, !tbaa !20
  %24 = getelementptr inbounds %struct.ARegionType, ptr %22, i64 0, i32 19
  store i32 26, ptr %24, align 4, !tbaa !28
  %25 = getelementptr inbounds %struct.ARegionType, ptr %22, i64 0, i32 20
  store i32 67, ptr %25, align 8, !tbaa !23
  %26 = getelementptr inbounds %struct.ARegionType, ptr %22, i64 0, i32 3
  store ptr @console_header_area_init, ptr %26, align 8, !tbaa !24
  %27 = getelementptr inbounds %struct.ARegionType, ptr %22, i64 0, i32 5
  store ptr @console_header_area_draw, ptr %27, align 8, !tbaa !25
  tail call void @BLI_addhead(ptr noundef nonnull %20, ptr noundef %22) #8
  tail call void @BKE_spacetype_register(ptr noundef %2) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @console_new(ptr nocapture readnone %0) #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %3 = tail call ptr %2(i64 noundef 392, ptr noundef nonnull @.str.3) #8
  %4 = getelementptr inbounds %struct.SpaceConsole, ptr %3, i64 0, i32 3
  store i32 18, ptr %4, align 8, !tbaa !29
  %5 = getelementptr inbounds %struct.SpaceConsole, ptr %3, i64 0, i32 6
  store i32 14, ptr %5, align 8, !tbaa !32
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %7 = tail call ptr %6(i64 noundef 384, ptr noundef nonnull @.str.4) #8
  %8 = getelementptr inbounds %struct.SpaceConsole, ptr %3, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %8, ptr noundef %7) #8
  %9 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 8
  store i16 1, ptr %9, align 2, !tbaa !33
  %10 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 9
  store i16 2, ptr %10, align 8, !tbaa !38
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %12 = tail call ptr %11(i64 noundef 384, ptr noundef nonnull @.str.5) #8
  tail call void @BLI_addtail(ptr noundef nonnull %8, ptr noundef %12) #8
  %13 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 8
  store i16 0, ptr %13, align 2, !tbaa !33
  %14 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 2, i32 9
  %15 = load i16, ptr %14, align 8, !tbaa !39
  %16 = or i16 %15, 2
  store i16 %16, ptr %14, align 8, !tbaa !39
  %17 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 2, i32 15
  %18 = load i16, ptr %17, align 4, !tbaa !40
  %19 = or i16 %18, 10
  store i16 %19, ptr %17, align 4, !tbaa !40
  %20 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 2, i32 13
  %21 = load i16, ptr %20, align 8, !tbaa !41
  %22 = or i16 %21, 2
  store i16 %22, ptr %20, align 8, !tbaa !41
  %23 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 2, i32 12
  store i16 771, ptr %23, align 2, !tbaa !42
  %24 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 2, i32 11
  store i16 1, ptr %24, align 4, !tbaa !43
  %25 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 2, i32 7
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %25, align 8, !tbaa !44
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @console_free(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.SpaceConsole, ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %9, %1
  %6 = getelementptr inbounds %struct.SpaceConsole, ptr %0, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %13

9:                                                ; preds = %1, %9
  %10 = phi ptr [ %11, %9 ], [ %3, %1 ]
  tail call void @console_scrollback_free(ptr noundef nonnull %0, ptr noundef nonnull %10) #8
  %11 = load ptr, ptr %2, align 8, !tbaa !45
  %12 = icmp eq ptr %11, null
  br i1 %12, label %5, label %9, !llvm.loop !47

13:                                               ; preds = %5, %13
  %14 = phi ptr [ %15, %13 ], [ %7, %5 ]
  tail call void @console_history_free(ptr noundef nonnull %0, ptr noundef nonnull %14) #8
  %15 = load ptr, ptr %6, align 8, !tbaa !46
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %13, !llvm.loop !49

17:                                               ; preds = %13, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @console_init(ptr nocapture readnone %0, ptr nocapture readnone %1) #2 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @console_duplicate(ptr noundef %0) #0 {
  %2 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !5
  %3 = tail call ptr %2(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.SpaceConsole, ptr %3, i64 0, i32 8
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %4) #9
  %5 = getelementptr inbounds %struct.SpaceConsole, ptr %3, i64 0, i32 9
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %5) #9
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @console_operatortypes() #0 {
  tail call void @WM_operatortype_append(ptr noundef nonnull @CONSOLE_OT_move) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CONSOLE_OT_delete) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CONSOLE_OT_insert) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CONSOLE_OT_indent) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CONSOLE_OT_unindent) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CONSOLE_OT_history_append) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CONSOLE_OT_scrollback_append) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CONSOLE_OT_clear) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CONSOLE_OT_clear_line) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CONSOLE_OT_history_cycle) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CONSOLE_OT_copy) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CONSOLE_OT_paste) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CONSOLE_OT_select_set) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @console_keymap(ptr noundef %0) #0 {
  %2 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef 18, i32 noundef 0) #8
  %3 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef 137, i32 noundef 1, i32 noundef 2, i32 noundef 0) #8
  %4 = getelementptr inbounds %struct.wmKeyMapItem, ptr %3, i64 0, i32 17
  %5 = load ptr, ptr %4, align 8, !tbaa !50
  tail call void @RNA_enum_set(ptr noundef %5, ptr noundef nonnull @.str.7, i32 noundef 4) #8
  %6 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef 139, i32 noundef 1, i32 noundef 2, i32 noundef 0) #8
  %7 = getelementptr inbounds %struct.wmKeyMapItem, ptr %6, i64 0, i32 17
  %8 = load ptr, ptr %7, align 8, !tbaa !50
  tail call void @RNA_enum_set(ptr noundef %8, ptr noundef nonnull @.str.7, i32 noundef 5) #8
  %9 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef 167, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %10 = getelementptr inbounds %struct.wmKeyMapItem, ptr %9, i64 0, i32 17
  %11 = load ptr, ptr %10, align 8, !tbaa !50
  tail call void @RNA_enum_set(ptr noundef %11, ptr noundef nonnull @.str.7, i32 noundef 0) #8
  %12 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef 170, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %13 = getelementptr inbounds %struct.wmKeyMapItem, ptr %12, i64 0, i32 17
  %14 = load ptr, ptr %13, align 8, !tbaa !50
  tail call void @RNA_enum_set(ptr noundef %14, ptr noundef nonnull @.str.7, i32 noundef 1) #8
  %15 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef 10, i32 noundef 1, i32 noundef 2, i32 noundef 0) #8
  %16 = getelementptr inbounds %struct.wmKeyMapItem, ptr %15, i64 0, i32 17
  %17 = load ptr, ptr %16, align 8, !tbaa !50
  tail call void @RNA_string_set(ptr noundef %17, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #8
  %18 = load ptr, ptr %16, align 8, !tbaa !50
  tail call void @RNA_boolean_set(ptr noundef %18, ptr noundef nonnull @.str.11, i32 noundef 0) #8
  %19 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef 11, i32 noundef 1, i32 noundef 2, i32 noundef 0) #8
  %20 = getelementptr inbounds %struct.wmKeyMapItem, ptr %19, i64 0, i32 17
  %21 = load ptr, ptr %20, align 8, !tbaa !50
  tail call void @RNA_string_set(ptr noundef %21, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #8
  %22 = load ptr, ptr %20, align 8, !tbaa !50
  tail call void @RNA_boolean_set(ptr noundef %22, ptr noundef nonnull @.str.11, i32 noundef 1) #8
  %23 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef 164, i32 noundef 1, i32 noundef 2, i32 noundef 0) #8
  %24 = getelementptr inbounds %struct.wmKeyMapItem, ptr %23, i64 0, i32 17
  %25 = load ptr, ptr %24, align 8, !tbaa !50
  tail call void @RNA_string_set(ptr noundef %25, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #8
  %26 = load ptr, ptr %24, align 8, !tbaa !50
  tail call void @RNA_boolean_set(ptr noundef %26, ptr noundef nonnull @.str.11, i32 noundef 0) #8
  %27 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef 162, i32 noundef 1, i32 noundef 2, i32 noundef 0) #8
  %28 = getelementptr inbounds %struct.wmKeyMapItem, ptr %27, i64 0, i32 17
  %29 = load ptr, ptr %28, align 8, !tbaa !50
  tail call void @RNA_string_set(ptr noundef %29, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #8
  %30 = load ptr, ptr %28, align 8, !tbaa !50
  tail call void @RNA_boolean_set(ptr noundef %30, ptr noundef nonnull @.str.11, i32 noundef 1) #8
  %31 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef 137, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %32 = getelementptr inbounds %struct.wmKeyMapItem, ptr %31, i64 0, i32 17
  %33 = load ptr, ptr %32, align 8, !tbaa !50
  tail call void @RNA_enum_set(ptr noundef %33, ptr noundef nonnull @.str.7, i32 noundef 2) #8
  %34 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef 139, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %35 = getelementptr inbounds %struct.wmKeyMapItem, ptr %34, i64 0, i32 17
  %36 = load ptr, ptr %35, align 8, !tbaa !50
  tail call void @RNA_enum_set(ptr noundef %36, ptr noundef nonnull @.str.7, i32 noundef 3) #8
  %37 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.12, i32 noundef 140, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %38 = getelementptr inbounds %struct.wmKeyMapItem, ptr %37, i64 0, i32 17
  %39 = load ptr, ptr %38, align 8, !tbaa !50
  tail call void @RNA_boolean_set(ptr noundef %39, ptr noundef nonnull @.str.11, i32 noundef 1) #8
  %40 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.12, i32 noundef 138, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %41 = getelementptr inbounds %struct.wmKeyMapItem, ptr %40, i64 0, i32 17
  %42 = load ptr, ptr %41, align 8, !tbaa !50
  tail call void @RNA_boolean_set(ptr noundef %42, ptr noundef nonnull @.str.11, i32 noundef 0) #8
  %43 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.13, i32 noundef 224, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %44 = getelementptr inbounds %struct.wmKeyMapItem, ptr %43, i64 0, i32 17
  %45 = load ptr, ptr %44, align 8, !tbaa !50
  tail call void @RNA_enum_set(ptr noundef %45, ptr noundef nonnull @.str.7, i32 noundef 1) #8
  %46 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.13, i32 noundef 223, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %47 = getelementptr inbounds %struct.wmKeyMapItem, ptr %46, i64 0, i32 17
  %48 = load ptr, ptr %47, align 8, !tbaa !50
  tail call void @RNA_enum_set(ptr noundef %48, ptr noundef nonnull @.str.7, i32 noundef 2) #8
  %49 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.13, i32 noundef 223, i32 noundef 1, i32 noundef 1, i32 noundef 0) #8
  %50 = getelementptr inbounds %struct.wmKeyMapItem, ptr %49, i64 0, i32 17
  %51 = load ptr, ptr %50, align 8, !tbaa !50
  tail call void @RNA_enum_set(ptr noundef %51, ptr noundef nonnull @.str.7, i32 noundef 2) #8
  %52 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.13, i32 noundef 224, i32 noundef 1, i32 noundef 2, i32 noundef 0) #8
  %53 = getelementptr inbounds %struct.wmKeyMapItem, ptr %52, i64 0, i32 17
  %54 = load ptr, ptr %53, align 8, !tbaa !50
  tail call void @RNA_enum_set(ptr noundef %54, ptr noundef nonnull @.str.7, i32 noundef 3) #8
  %55 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.13, i32 noundef 223, i32 noundef 1, i32 noundef 2, i32 noundef 0) #8
  %56 = getelementptr inbounds %struct.wmKeyMapItem, ptr %55, i64 0, i32 17
  %57 = load ptr, ptr %56, align 8, !tbaa !50
  tail call void @RNA_enum_set(ptr noundef %57, ptr noundef nonnull @.str.7, i32 noundef 4) #8
  %58 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef 220, i32 noundef 1, i32 noundef 1, i32 noundef 0) #8
  %59 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef 163, i32 noundef 1, i32 noundef 1, i32 noundef 0) #8
  %60 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.15, i32 noundef 99, i32 noundef 1, i32 noundef 3, i32 noundef 0) #8
  %61 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.16, i32 noundef 99, i32 noundef 1, i32 noundef 2, i32 noundef 0) #8
  %62 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.17, i32 noundef 118, i32 noundef 1, i32 noundef 2, i32 noundef 0) #8
  %63 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.18, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %64 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.19, i32 noundef 219, i32 noundef 1, i32 noundef 2, i32 noundef 0) #8
  %65 = getelementptr inbounds %struct.wmKeyMapItem, ptr %64, i64 0, i32 17
  %66 = load ptr, ptr %65, align 8, !tbaa !50
  tail call void @RNA_string_set(ptr noundef %66, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21) #8
  %67 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.22, i32 noundef 219, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %68 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.23, i32 noundef 219, i32 noundef 1, i32 noundef 1, i32 noundef 0) #8
  %69 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.19, i32 noundef -2, i32 noundef -1, i32 noundef -1, i32 noundef 0) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @console_dropboxes() #0 {
  %1 = tail call ptr @WM_dropboxmap_find(ptr noundef nonnull @.str.1, i32 noundef 18, i32 noundef 0) #8
  %2 = tail call ptr @WM_dropbox_add(ptr noundef %1, ptr noundef nonnull @.str.19, ptr noundef nonnull @id_drop_poll, ptr noundef nonnull @id_drop_copy) #8
  %3 = tail call ptr @WM_dropbox_add(ptr noundef %1, ptr noundef nonnull @.str.19, ptr noundef nonnull @path_drop_poll, ptr noundef nonnull @path_drop_copy) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @console_main_area_init(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  %4 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 2
  %5 = load float, ptr %4, align 8, !tbaa !52
  %6 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 9
  store i16 2, ptr %6, align 8, !tbaa !39
  %7 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %8 = load i16, ptr %7, align 8, !tbaa !53
  %9 = sext i16 %8 to i32
  %10 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %11 = load i16, ptr %10, align 2, !tbaa !54
  %12 = sext i16 %11 to i32
  tail call void @UI_view2d_region_reinit(ptr noundef nonnull %3, i16 noundef signext -1, i32 noundef %9, i32 noundef %12) #8
  %13 = load float, ptr %4, align 8, !tbaa !52
  %14 = fcmp une float %5, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1
  %17 = tail call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %16) #9
  store float %5, ptr %4, align 8, !tbaa !52
  %18 = fadd float %5, %17
  %19 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 3
  store float %18, ptr %19, align 4, !tbaa !55
  br label %20

20:                                               ; preds = %15, %2
  %21 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %22 = load ptr, ptr %21, align 8, !tbaa !56
  %23 = tail call ptr @WM_keymap_find(ptr noundef %22, ptr noundef nonnull @.str.1, i32 noundef 18, i32 noundef 0) #8
  %24 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 26
  %25 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 4
  %26 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %27 = tail call ptr @WM_event_add_keymap_handler_bb(ptr noundef nonnull %24, ptr noundef %23, ptr noundef nonnull %25, ptr noundef nonnull %26) #8
  %28 = tail call ptr @WM_dropboxmap_find(ptr noundef nonnull @.str.1, i32 noundef 18, i32 noundef 0) #8
  %29 = tail call ptr @WM_event_add_dropbox_handler(ptr noundef nonnull %24, ptr noundef %28) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @console_main_area_draw(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @CTX_wm_space_console(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.SpaceConsole, ptr %3, i64 0, i32 8
  %5 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %4) #9, !range !60
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef nonnull @.str.25, i16 noundef signext 6, ptr noundef null) #8
  br label %9

9:                                                ; preds = %7, %2
  %10 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  tail call void @UI_ThemeClearColor(i32 noundef 2) #8
  tail call void @glClear(i32 noundef 16384) #8
  tail call void @UI_view2d_view_ortho(ptr noundef nonnull %10) #8
  %11 = tail call ptr @console_history_verify(ptr noundef %0) #8
  tail call void @console_textview_main(ptr noundef %3, ptr noundef %1) #8
  tail call void @UI_view2d_view_restore(ptr noundef %0) #8
  %12 = tail call ptr @UI_view2d_scrollers_calc(ptr noundef %0, ptr noundef nonnull %10, i16 noundef signext -1, i16 noundef signext -1, i16 noundef signext -1, i16 noundef signext 1) #8
  tail call void @UI_view2d_scrollers_draw(ptr noundef %0, ptr noundef nonnull %10, ptr noundef %12) #8
  tail call void @UI_view2d_scrollers_free(ptr noundef %12) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @console_cursor(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !61
  %6 = getelementptr inbounds %struct.SpaceText, ptr %5, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !63
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
  %20 = tail call zeroext i8 @BLI_rcti_isect_pt(ptr noundef nonnull %10, i32 noundef %17, i32 noundef %19) #8
  %21 = icmp eq i8 %20, 0
  %22 = select i1 %21, i32 11, i32 1006
  br label %23

23:                                               ; preds = %9, %3
  %24 = phi i32 [ 11, %3 ], [ %22, %9 ]
  tail call void @WM_cursor_set(ptr noundef %0, i32 noundef %24) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @console_main_area_listener(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !72
  %7 = icmp eq i32 %6, 251658240
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %10 = load i32, ptr %9, align 8, !tbaa !74
  %11 = icmp eq i32 %10, 65536
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  tail call void @ED_region_tag_redraw(ptr noundef %2) #8
  br label %13

13:                                               ; preds = %8, %12, %4
  ret void
}

; Function Attrs: optsize
declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @console_header_area_init(ptr nocapture readnone %0, ptr noundef %1) #0 {
  tail call void @ED_region_header_init(ptr noundef %1) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @console_header_area_draw(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @ED_region_header(ptr noundef %0, ptr noundef %1) #8
  ret void
}

; Function Attrs: optsize
declare void @BKE_spacetype_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @console_scrollback_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @console_history_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @BLI_listbase_clear(ptr nocapture noundef writeonly %0) unnamed_addr #4 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: optsize
declare void @WM_operatortype_append(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @CONSOLE_OT_move(ptr noundef) #3

; Function Attrs: optsize
declare void @CONSOLE_OT_delete(ptr noundef) #3

; Function Attrs: optsize
declare void @CONSOLE_OT_insert(ptr noundef) #3

; Function Attrs: optsize
declare void @CONSOLE_OT_indent(ptr noundef) #3

; Function Attrs: optsize
declare void @CONSOLE_OT_unindent(ptr noundef) #3

; Function Attrs: optsize
declare void @CONSOLE_OT_history_append(ptr noundef) #3

; Function Attrs: optsize
declare void @CONSOLE_OT_scrollback_append(ptr noundef) #3

; Function Attrs: optsize
declare void @CONSOLE_OT_clear(ptr noundef) #3

; Function Attrs: optsize
declare void @CONSOLE_OT_clear_line(ptr noundef) #3

; Function Attrs: optsize
declare void @CONSOLE_OT_history_cycle(ptr noundef) #3

; Function Attrs: optsize
declare void @CONSOLE_OT_copy(ptr noundef) #3

; Function Attrs: optsize
declare void @CONSOLE_OT_paste(ptr noundef) #3

; Function Attrs: optsize
declare void @CONSOLE_OT_select_set(ptr noundef) #3

; Function Attrs: optsize
declare ptr @WM_keymap_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RNA_enum_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @WM_keymap_add_item(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RNA_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RNA_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @WM_dropboxmap_find(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @WM_dropbox_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @id_drop_poll(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #5 {
  %4 = getelementptr inbounds %struct.wmDrag, ptr %1, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !75
  %6 = icmp eq i32 %5, 0
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @id_drop_copy(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.wmDrag, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !77
  %5 = tail call ptr @RNA_path_full_ID_py(ptr noundef %4) #8
  %6 = getelementptr inbounds %struct.wmDropBox, ptr %1, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !78
  tail call void @RNA_string_set(ptr noundef %7, ptr noundef nonnull @.str.20, ptr noundef %5) #8
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !5
  tail call void %8(ptr noundef %5) #8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @path_drop_poll(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #5 {
  %4 = getelementptr inbounds %struct.wmDrag, ptr %1, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !75
  %6 = icmp eq i32 %5, 2
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @path_drop_copy(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [1026 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1026, ptr nonnull %3) #10
  %4 = getelementptr inbounds %struct.wmDrag, ptr %0, i64 0, i32 5
  %5 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 1026, ptr noundef nonnull @.str.24, ptr noundef nonnull %4) #8
  %6 = getelementptr inbounds %struct.wmDropBox, ptr %1, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !78
  call void @RNA_string_set(ptr noundef %7, ptr noundef nonnull @.str.20, ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 1026, ptr nonnull %3) #10
  ret void
}

; Function Attrs: optsize
declare ptr @RNA_path_full_ID_py(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare void @UI_view2d_region_reinit(ptr noundef, i16 noundef signext, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_y(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %3 = load float, ptr %2, align 4, !tbaa !80
  %4 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %5 = load float, ptr %4, align 4, !tbaa !81
  %6 = fsub float %3, %5
  ret float %6
}

; Function Attrs: optsize
declare ptr @WM_event_add_keymap_handler_bb(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @WM_event_add_dropbox_handler(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CTX_wm_space_console(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = load ptr, ptr %0, align 8, !tbaa !82
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare i32 @WM_operator_name_call(ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @UI_ThemeClearColor(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glClear(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @UI_view2d_view_ortho(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @console_history_verify(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @console_textview_main(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @UI_view2d_view_restore(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @UI_view2d_scrollers_calc(ptr noundef, ptr noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @UI_view2d_scrollers_draw(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @UI_view2d_scrollers_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @BLI_rcti_isect_pt(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @WM_cursor_set(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_region_header_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_region_header(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }
attributes #10 = { nounwind }

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
!19 = !{!10, !6, i64 160}
!20 = !{!21, !11, i64 16}
!21 = !{!"ARegionType", !6, i64 0, !6, i64 8, !11, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !12, i64 104, !12, i64 120, !12, i64 136, !11, i64 152, !11, i64 156, !11, i64 160, !11, i64 164, !11, i64 168, !22, i64 172, !22, i64 174, !22, i64 176}
!22 = !{!"short", !7, i64 0}
!23 = !{!21, !11, i64 168}
!24 = !{!21, !6, i64 24}
!25 = !{!21, !6, i64 40}
!26 = !{!21, !6, i64 88}
!27 = !{!21, !6, i64 48}
!28 = !{!21, !11, i64 164}
!29 = !{!30, !11, i64 32}
!30 = !{!"SpaceConsole", !6, i64 0, !6, i64 8, !12, i64 16, !11, i64 32, !31, i64 36, !7, i64 40, !11, i64 56, !11, i64 60, !12, i64 64, !12, i64 80, !7, i64 96, !7, i64 352, !11, i64 384, !11, i64 388}
!31 = !{!"float", !7, i64 0}
!32 = !{!30, !11, i64 56}
!33 = !{!34, !22, i64 214}
!34 = !{!"ARegion", !6, i64 0, !6, i64 8, !35, i64 16, !37, i64 176, !37, i64 192, !22, i64 208, !22, i64 210, !22, i64 212, !22, i64 214, !22, i64 216, !22, i64 218, !31, i64 220, !22, i64 224, !22, i64 226, !22, i64 228, !22, i64 230, !22, i64 232, !22, i64 234, !22, i64 236, !22, i64 238, !6, i64 240, !12, i64 248, !12, i64 264, !12, i64 280, !12, i64 296, !12, i64 312, !12, i64 328, !12, i64 344, !6, i64 360, !6, i64 368, !6, i64 376}
!35 = !{!"View2D", !36, i64 0, !36, i64 16, !37, i64 32, !37, i64 48, !37, i64 64, !7, i64 80, !7, i64 88, !31, i64 96, !31, i64 100, !22, i64 104, !22, i64 106, !22, i64 108, !22, i64 110, !22, i64 112, !22, i64 114, !22, i64 116, !22, i64 118, !22, i64 120, !22, i64 122, !22, i64 124, !22, i64 126, !6, i64 128, !11, i64 136, !11, i64 140, !6, i64 144, !6, i64 152}
!36 = !{!"rctf", !31, i64 0, !31, i64 4, !31, i64 8, !31, i64 12}
!37 = !{!"rcti", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12}
!38 = !{!34, !22, i64 216}
!39 = !{!34, !22, i64 120}
!40 = !{!34, !22, i64 132}
!41 = !{!34, !22, i64 128}
!42 = !{!34, !22, i64 126}
!43 = !{!34, !22, i64 124}
!44 = !{!31, !31, i64 0}
!45 = !{!30, !6, i64 64}
!46 = !{!30, !6, i64 80}
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.mustprogress"}
!49 = distinct !{!49, !48}
!50 = !{!51, !6, i64 176}
!51 = !{!"wmKeyMapItem", !6, i64 0, !6, i64 8, !7, i64 16, !6, i64 80, !7, i64 88, !22, i64 152, !22, i64 154, !22, i64 156, !22, i64 158, !22, i64 160, !22, i64 162, !22, i64 164, !22, i64 166, !22, i64 168, !22, i64 170, !22, i64 172, !22, i64 174, !6, i64 176}
!52 = !{!34, !31, i64 40}
!53 = !{!34, !22, i64 208}
!54 = !{!34, !22, i64 210}
!55 = !{!34, !31, i64 44}
!56 = !{!57, !6, i64 296}
!57 = !{!"wmWindowManager", !58, i64 0, !6, i64 120, !6, i64 128, !12, i64 136, !11, i64 152, !22, i64 156, !22, i64 158, !12, i64 160, !12, i64 176, !59, i64 192, !12, i64 232, !12, i64 248, !12, i64 264, !12, i64 280, !6, i64 296, !6, i64 304, !6, i64 312, !12, i64 320, !6, i64 336, !7, i64 344, !7, i64 345}
!58 = !{!"ID", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !7, i64 32, !22, i64 98, !11, i64 100, !11, i64 104, !11, i64 108, !6, i64 112}
!59 = !{!"ReportList", !12, i64 0, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !6, i64 32}
!60 = !{i8 0, i8 2}
!61 = !{!62, !6, i64 96}
!62 = !{!"ScrArea", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !37, i64 56, !7, i64 72, !7, i64 73, !22, i64 74, !22, i64 76, !22, i64 78, !22, i64 80, !22, i64 82, !22, i64 84, !7, i64 86, !7, i64 87, !6, i64 88, !12, i64 96, !12, i64 112, !12, i64 128, !12, i64 144}
!63 = !{!64, !6, i64 56}
!64 = !{!"SpaceText", !6, i64 0, !6, i64 8, !12, i64 16, !11, i64 32, !31, i64 36, !7, i64 40, !6, i64 56, !11, i64 64, !11, i64 68, !22, i64 72, !22, i64 74, !22, i64 76, !7, i64 78, !7, i64 79, !11, i64 80, !11, i64 84, !11, i64 88, !22, i64 92, !22, i64 94, !22, i64 96, !22, i64 98, !31, i64 100, !37, i64 104, !37, i64 120, !11, i64 136, !11, i64 140, !7, i64 144, !7, i64 400, !22, i64 656, !22, i64 658, !7, i64 660, !6, i64 664, !7, i64 672}
!65 = !{!66, !6, i64 136}
!66 = !{!"wmWindow", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !7, i64 40, !22, i64 104, !22, i64 106, !22, i64 108, !22, i64 110, !22, i64 112, !22, i64 114, !22, i64 116, !22, i64 118, !22, i64 120, !22, i64 122, !22, i64 124, !22, i64 126, !11, i64 128, !22, i64 132, !22, i64 134, !6, i64 136, !6, i64 144, !6, i64 152, !11, i64 160, !11, i64 164, !6, i64 168, !12, i64 176, !12, i64 192, !12, i64 208, !12, i64 224, !12, i64 240}
!67 = !{!68, !11, i64 20}
!68 = !{!"wmEvent", !6, i64 0, !6, i64 8, !22, i64 16, !22, i64 18, !11, i64 20, !11, i64 24, !7, i64 28, !7, i64 36, !7, i64 42, !7, i64 43, !22, i64 44, !22, i64 46, !11, i64 48, !11, i64 52, !69, i64 56, !11, i64 64, !11, i64 68, !22, i64 72, !22, i64 74, !22, i64 76, !22, i64 78, !22, i64 80, !22, i64 82, !6, i64 88, !6, i64 96, !22, i64 104, !22, i64 106, !11, i64 108, !6, i64 112}
!69 = !{!"double", !7, i64 0}
!70 = !{!34, !11, i64 176}
!71 = !{!64, !11, i64 128}
!72 = !{!73, !11, i64 36}
!73 = !{!"wmNotifier", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !6, i64 56}
!74 = !{!73, !11, i64 40}
!75 = !{!76, !11, i64 20}
!76 = !{!"wmDrag", !6, i64 0, !6, i64 8, !11, i64 16, !11, i64 20, !6, i64 24, !7, i64 32, !69, i64 1056, !6, i64 1064, !31, i64 1072, !11, i64 1076, !11, i64 1080, !7, i64 1084, !11, i64 1284}
!77 = !{!76, !6, i64 24}
!78 = !{!79, !6, i64 48}
!79 = !{!"wmDropBox", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !22, i64 56}
!80 = !{!36, !31, i64 12}
!81 = !{!36, !31, i64 8}
!82 = !{!12, !6, i64 0}
