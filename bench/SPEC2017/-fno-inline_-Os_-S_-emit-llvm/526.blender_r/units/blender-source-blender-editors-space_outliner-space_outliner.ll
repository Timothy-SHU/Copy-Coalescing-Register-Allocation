; ModuleID = 'blender/source/blender/editors/space_outliner/space_outliner.c'
source_filename = "blender/source/blender/editors/space_outliner/space_outliner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.SpaceType = type { ptr, ptr, [64 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.ARegionType = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i16 }
%struct.SpaceOops = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, %struct.ListBase, ptr, [32 x i8], %struct.TreeStoreElem, i16, i16, i16, i16, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.TreeStoreElem = type { i16, i16, i16, i16, ptr }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.wmWindowManager = type { %struct.ID, ptr, ptr, %struct.ListBase, i32, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ReportList, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, %struct.ListBase, ptr, i8, [7 x i8] }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.ReportList = type { %struct.ListBase, i32, i32, i32, i32, ptr }
%struct.wmNotifier = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.wmDrag = type { ptr, ptr, i32, i32, ptr, [1024 x i8], double, ptr, float, i32, i32, [200 x i8], i32 }
%struct.TreeElement = type { ptr, ptr, ptr, %struct.ListBase, i32, i32, ptr, i16, i16, i16, i16, ptr, ptr, %struct.PointerRNA }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.wmDropBox = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16 }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [15 x i8] c"spacetype time\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Outliner\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"spacetype outliner region\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"spacetype outliner header region\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"initoutliner\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"header for outliner\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"main area for outliner\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [24 x i8] c"OUTLINER_OT_parent_drop\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"OUTLINER_OT_parent_clear\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"OUTLINER_OT_scene_drop\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"OUTLINER_OT_material_drop\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"child\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"dragged_obj\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"object\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"material\00", align 1
@str = private unnamed_addr constant [65 x i8] c"Outliner\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_spacetype_outliner() local_unnamed_addr #0 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %2 = tail call ptr %1(i64 noundef 216, ptr noundef nonnull @.str) #8
  %3 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 3
  store i32 3, ptr %3, align 8, !tbaa !9
  %4 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %4, ptr noundef nonnull align 1 dereferenceable(64) @str, i64 noundef 64, i1 false) #8
  %5 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 5
  store ptr @outliner_new, ptr %5, align 8, !tbaa !13
  %6 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 6
  store ptr @outliner_free, ptr %6, align 8, !tbaa !14
  %7 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 7
  store ptr @outliner_init, ptr %7, align 8, !tbaa !15
  %8 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 11
  store ptr @outliner_duplicate, ptr %8, align 8, !tbaa !16
  %9 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 12
  store ptr @outliner_operatortypes, ptr %9, align 8, !tbaa !17
  %10 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 13
  store ptr @outliner_keymap, ptr %10, align 8, !tbaa !18
  %11 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 14
  store ptr @outliner_dropboxes, ptr %11, align 8, !tbaa !19
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %13 = tail call ptr %12(i64 noundef 184, ptr noundef nonnull @.str.2) #8
  %14 = getelementptr inbounds %struct.ARegionType, ptr %13, i64 0, i32 2
  store i32 0, ptr %14, align 8, !tbaa !20
  %15 = getelementptr inbounds %struct.ARegionType, ptr %13, i64 0, i32 20
  store i32 19, ptr %15, align 8, !tbaa !23
  %16 = getelementptr inbounds %struct.ARegionType, ptr %13, i64 0, i32 3
  store ptr @outliner_main_area_init, ptr %16, align 8, !tbaa !24
  %17 = getelementptr inbounds %struct.ARegionType, ptr %13, i64 0, i32 5
  store ptr @outliner_main_area_draw, ptr %17, align 8, !tbaa !25
  %18 = getelementptr inbounds %struct.ARegionType, ptr %13, i64 0, i32 7
  store ptr @outliner_main_area_free, ptr %18, align 8, !tbaa !26
  %19 = getelementptr inbounds %struct.ARegionType, ptr %13, i64 0, i32 6
  store ptr @outliner_main_area_listener, ptr %19, align 8, !tbaa !27
  %20 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 16
  tail call void @BLI_addhead(ptr noundef nonnull %20, ptr noundef %13) #8
  %21 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %22 = tail call ptr %21(i64 noundef 184, ptr noundef nonnull @.str.3) #8
  %23 = getelementptr inbounds %struct.ARegionType, ptr %22, i64 0, i32 2
  store i32 1, ptr %23, align 8, !tbaa !20
  %24 = getelementptr inbounds %struct.ARegionType, ptr %22, i64 0, i32 19
  store i32 26, ptr %24, align 4, !tbaa !28
  %25 = getelementptr inbounds %struct.ARegionType, ptr %22, i64 0, i32 20
  store i32 83, ptr %25, align 8, !tbaa !23
  %26 = getelementptr inbounds %struct.ARegionType, ptr %22, i64 0, i32 3
  store ptr @outliner_header_area_init, ptr %26, align 8, !tbaa !24
  %27 = getelementptr inbounds %struct.ARegionType, ptr %22, i64 0, i32 5
  store ptr @outliner_header_area_draw, ptr %27, align 8, !tbaa !25
  %28 = getelementptr inbounds %struct.ARegionType, ptr %22, i64 0, i32 7
  store ptr @outliner_header_area_free, ptr %28, align 8, !tbaa !26
  %29 = getelementptr inbounds %struct.ARegionType, ptr %22, i64 0, i32 6
  store ptr @outliner_header_area_listener, ptr %29, align 8, !tbaa !27
  tail call void @BLI_addhead(ptr noundef nonnull %20, ptr noundef %22) #8
  tail call void @BKE_spacetype_register(ptr noundef %2) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @outliner_new(ptr nocapture readnone %0) #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %3 = tail call ptr %2(i64 noundef 304, ptr noundef nonnull @.str.4) #8
  %4 = getelementptr inbounds %struct.SpaceOops, ptr %3, i64 0, i32 3
  store i32 3, ptr %4, align 8, !tbaa !29
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %6 = tail call ptr %5(i64 noundef 384, ptr noundef nonnull @.str.5) #8
  %7 = getelementptr inbounds %struct.SpaceOops, ptr %3, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %7, ptr noundef %6) #8
  %8 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 8
  store i16 1, ptr %8, align 2, !tbaa !36
  %9 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 9
  store i16 2, ptr %9, align 8, !tbaa !38
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %11 = tail call ptr %10(i64 noundef 384, ptr noundef nonnull @.str.6) #8
  tail call void @BLI_addtail(ptr noundef nonnull %7, ptr noundef %11) #8
  %12 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 8
  store i16 0, ptr %12, align 2, !tbaa !36
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @outliner_free(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.SpaceOops, ptr %0, i64 0, i32 7
  tail call void @outliner_free_tree(ptr noundef nonnull %2) #8
  %3 = getelementptr inbounds %struct.SpaceOops, ptr %0, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !39
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @BLI_mempool_destroy(ptr noundef nonnull %4) #8
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds %struct.SpaceOops, ptr %0, i64 0, i32 15
  %9 = load ptr, ptr %8, align 8, !tbaa !40
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @BKE_treehash_free(ptr noundef nonnull %9) #8
  br label %12

12:                                               ; preds = %11, %7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @outliner_init(ptr nocapture readnone %0, ptr nocapture readnone %1) #2 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @outliner_duplicate(ptr noundef %0) #0 {
  %2 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !5
  %3 = tail call ptr %2(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.SpaceOops, ptr %3, i64 0, i32 7
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %4) #9
  %5 = getelementptr inbounds %struct.SpaceOops, ptr %3, i64 0, i32 8
  store ptr null, ptr %5, align 8, !tbaa !39
  %6 = getelementptr inbounds %struct.SpaceOops, ptr %3, i64 0, i32 15
  store ptr null, ptr %6, align 8, !tbaa !40
  ret ptr %3
}

; Function Attrs: optsize
declare void @outliner_operatortypes() #3

; Function Attrs: optsize
declare void @outliner_keymap(ptr noundef) #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @outliner_dropboxes() #0 {
  %1 = tail call ptr @WM_dropboxmap_find(ptr noundef nonnull @.str.1, i32 noundef 3, i32 noundef 0) #8
  %2 = tail call ptr @WM_dropbox_add(ptr noundef %1, ptr noundef nonnull @.str.7, ptr noundef nonnull @outliner_parent_drop_poll, ptr noundef nonnull @outliner_parent_drop_copy) #8
  %3 = tail call ptr @WM_dropbox_add(ptr noundef %1, ptr noundef nonnull @.str.8, ptr noundef nonnull @outliner_parent_clear_poll, ptr noundef nonnull @outliner_parent_clear_copy) #8
  %4 = tail call ptr @WM_dropbox_add(ptr noundef %1, ptr noundef nonnull @.str.9, ptr noundef nonnull @outliner_scene_drop_poll, ptr noundef nonnull @outliner_scene_drop_copy) #8
  %5 = tail call ptr @WM_dropbox_add(ptr noundef %1, ptr noundef nonnull @.str.10, ptr noundef nonnull @outliner_material_drop_poll, ptr noundef nonnull @outliner_material_drop_copy) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @outliner_main_area_init(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  %4 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 9
  %5 = load i16, ptr %4, align 8, !tbaa !41
  %6 = and i16 %5, -400
  %7 = or disjoint i16 %6, 394
  store i16 %7, ptr %4, align 8, !tbaa !41
  %8 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 15
  store i16 6, ptr %8, align 4, !tbaa !42
  %9 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 12
  store i16 771, ptr %9, align 2, !tbaa !43
  %10 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 11
  store i16 2, ptr %10, align 4, !tbaa !44
  %11 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 7
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %11, align 8, !tbaa !45
  %12 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %13 = load i16, ptr %12, align 8, !tbaa !46
  %14 = sext i16 %13 to i32
  %15 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %16 = load i16, ptr %15, align 2, !tbaa !47
  %17 = sext i16 %16 to i32
  tail call void @UI_view2d_region_reinit(ptr noundef nonnull %3, i16 noundef signext 1, i32 noundef %14, i32 noundef %17) #8
  %18 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %19 = load ptr, ptr %18, align 8, !tbaa !48
  %20 = tail call ptr @WM_keymap_find(ptr noundef %19, ptr noundef nonnull @.str.1, i32 noundef 3, i32 noundef 0) #8
  %21 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 26
  %22 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %23 = tail call ptr @WM_event_add_keymap_handler_bb(ptr noundef nonnull %21, ptr noundef %20, ptr noundef null, ptr noundef nonnull %22) #8
  %24 = tail call ptr @WM_dropboxmap_find(ptr noundef nonnull @.str.1, i32 noundef 3, i32 noundef 0) #8
  %25 = tail call ptr @WM_event_add_dropbox_handler(ptr noundef nonnull %21, ptr noundef %24) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @outliner_main_area_draw(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  tail call void @UI_ThemeClearColor(i32 noundef 2) #8
  tail call void @glClear(i32 noundef 16384) #8
  tail call void @draw_outliner(ptr noundef %0) #8
  tail call void @UI_view2d_view_restore(ptr noundef %0) #8
  %4 = tail call ptr @UI_view2d_scrollers_calc(ptr noundef %0, ptr noundef nonnull %3, i16 noundef signext -1, i16 noundef signext -1, i16 noundef signext -1, i16 noundef signext -1) #8
  tail call void @UI_view2d_scrollers_draw(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %4) #8
  tail call void @UI_view2d_scrollers_free(ptr noundef %4) #8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @outliner_main_area_free(ptr nocapture readnone %0) #2 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @outliner_main_area_listener(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !52
  %7 = add i32 %6, -67108864
  %8 = tail call i32 @llvm.fshl.i32(i32 %7, i32 %7, i32 8)
  switch i32 %8, label %49 [
    i32 0, label %9
    i32 1, label %12
    i32 5, label %48
    i32 4, label %22
    i32 11, label %26
    i32 14, label %30
    i32 2, label %34
    i32 12, label %38
    i32 10, label %41
  ]

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %11 = load i32, ptr %10, align 8, !tbaa !54
  switch i32 %11, label %49 [
    i32 458752, label %48
    i32 524288, label %48
    i32 589824, label %48
    i32 655360, label %48
    i32 720896, label %48
    i32 917504, label %48
    i32 196608, label %48
    i32 262144, label %48
    i32 1048576, label %48
    i32 6029312, label %48
  ]

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %14 = load i32, ptr %13, align 8, !tbaa !54
  %15 = add i32 %14, -1179648
  %16 = tail call i32 @llvm.fshl.i32(i32 %15, i32 %15, i32 16)
  switch i32 %16, label %48 [
    i32 0, label %49
    i32 8, label %17
  ]

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %19 = load i32, ptr %18, align 8, !tbaa !55
  %20 = add i32 %19, -3
  %21 = icmp ult i32 %20, 3
  br i1 %21, label %48, label %49

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %24 = load i32, ptr %23, align 8, !tbaa !54
  %25 = icmp eq i32 %24, 2686976
  br i1 %25, label %48, label %49

26:                                               ; preds = %4
  %27 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %28 = load i32, ptr %27, align 8, !tbaa !54
  %29 = icmp eq i32 %28, 524288
  br i1 %29, label %48, label %49

30:                                               ; preds = %4
  %31 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %32 = load i32, ptr %31, align 8, !tbaa !55
  %33 = icmp eq i32 %32, 5
  br i1 %33, label %48, label %49

34:                                               ; preds = %4
  %35 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %36 = load i32, ptr %35, align 8, !tbaa !54
  %37 = icmp eq i32 %36, 2097152
  br i1 %37, label %48, label %49

38:                                               ; preds = %4
  %39 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %40 = load i32, ptr %39, align 8, !tbaa !54
  switch i32 %40, label %49 [
    i32 6029312, label %48
    i32 5963776, label %48
  ]

41:                                               ; preds = %4
  %42 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %43 = load i32, ptr %42, align 8, !tbaa !54
  switch i32 %43, label %49 [
    i32 4849664, label %48
    i32 4587520, label %48
    i32 4718592, label %44
  ]

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %46 = load i32, ptr %45, align 8, !tbaa !55
  %47 = icmp eq i32 %46, 6
  br i1 %47, label %48, label %49

48:                                               ; preds = %44, %41, %41, %38, %38, %34, %30, %26, %22, %4, %12, %17, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9
  tail call void @ED_region_tag_redraw(ptr noundef %2) #8
  br label %49

49:                                               ; preds = %48, %17, %41, %44, %38, %34, %30, %26, %22, %12, %9, %4
  ret void
}

; Function Attrs: optsize
declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @outliner_header_area_init(ptr nocapture readnone %0, ptr noundef %1) #0 {
  tail call void @ED_region_header_init(ptr noundef %1) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @outliner_header_area_draw(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @ED_region_header(ptr noundef %0, ptr noundef %1) #8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @outliner_header_area_free(ptr nocapture readnone %0) #2 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @outliner_header_area_listener(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !52
  switch i32 %6, label %16 [
    i32 67108864, label %7
    i32 251658240, label %11
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !54
  %10 = icmp eq i32 %9, 917504
  br i1 %10, label %15, label %16

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %13 = load i32, ptr %12, align 8, !tbaa !54
  %14 = icmp eq i32 %13, 524288
  br i1 %14, label %15, label %16

15:                                               ; preds = %11, %7
  tail call void @ED_region_tag_redraw(ptr noundef %2) #8
  br label %16

16:                                               ; preds = %15, %11, %7, %4
  ret void
}

; Function Attrs: optsize
declare void @BKE_spacetype_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @outliner_free_tree(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_mempool_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_treehash_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @BLI_listbase_clear(ptr nocapture noundef writeonly %0) unnamed_addr #4 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: optsize
declare ptr @WM_dropboxmap_find(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @WM_dropbox_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @outliner_parent_drop_poll(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca [2 x float], align 4
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #8
  %6 = tail call ptr @CTX_wm_space_outliner(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  %7 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2
  %8 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %9 = load i32, ptr %8, align 4, !tbaa !56
  %10 = sitofp i32 %9 to float
  %11 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %12 = load i32, ptr %11, align 4, !tbaa !56
  %13 = sitofp i32 %12 to float
  %14 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  call void @UI_view2d_region_to_view(ptr noundef nonnull %7, float noundef %10, float noundef %13, ptr noundef nonnull %4, ptr noundef nonnull %14) #8
  %15 = getelementptr inbounds %struct.wmDrag, ptr %1, i64 0, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !57
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %50

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.wmDrag, ptr %1, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !60
  %21 = getelementptr inbounds %struct.ID, ptr %20, i64 0, i32 4
  %22 = load i16, ptr %21, align 8, !tbaa !61
  %23 = icmp eq i16 %22, 16975
  br i1 %23, label %24, label %50

24:                                               ; preds = %18
  %25 = call ptr @outliner_dropzone_find(ptr noundef %6, ptr noundef nonnull %4, i32 noundef 1) #8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %50, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.TreeElement, ptr %25, i64 0, i32 9
  %29 = load i16, ptr %28, align 4, !tbaa !62
  %30 = icmp eq i16 %29, 16975
  br i1 %30, label %31, label %50

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.TreeElement, ptr %25, i64 0, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !66
  %34 = load i16, ptr %33, align 8, !tbaa !67
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.TreeStoreElem, ptr %33, i64 0, i32 4
  %38 = load ptr, ptr %37, align 8, !tbaa !68
  %39 = icmp eq ptr %38, %20
  br i1 %39, label %51, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.Object, ptr %20, i64 0, i32 9
  %42 = load ptr, ptr %41, align 8, !tbaa !69
  %43 = icmp eq ptr %38, %42
  br i1 %43, label %51, label %44

44:                                               ; preds = %40
  %45 = call ptr @outliner_search_back(ptr noundef %6, ptr noundef nonnull %25, i16 noundef signext 17235) #8
  %46 = icmp eq ptr %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = call ptr @BKE_scene_base_find(ptr noundef nonnull %45, ptr noundef nonnull %20) #8
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %24, %27, %31, %18, %47, %3
  br label %51

51:                                               ; preds = %44, %36, %40, %47, %50
  %52 = phi i32 [ 0, %50 ], [ 1, %47 ], [ 1, %44 ], [ 0, %36 ], [ 0, %40 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  ret i32 %52
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @outliner_parent_drop_copy(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.wmDrag, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !60
  %5 = getelementptr inbounds %struct.wmDropBox, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !73
  %7 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 4, i64 2
  tail call void @RNA_string_set(ptr noundef %6, ptr noundef nonnull @.str.11, ptr noundef nonnull %7) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @outliner_parent_clear_poll(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca [2 x float], align 4
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #8
  %6 = tail call ptr @CTX_wm_space_outliner(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  %7 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2
  %8 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %9 = load i32, ptr %8, align 4, !tbaa !56
  %10 = sitofp i32 %9 to float
  %11 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %12 = load i32, ptr %11, align 4, !tbaa !56
  %13 = sitofp i32 %12 to float
  %14 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  call void @UI_view2d_region_to_view(ptr noundef nonnull %7, float noundef %10, float noundef %13, ptr noundef nonnull %4, ptr noundef nonnull %14) #8
  %15 = getelementptr inbounds %struct.SpaceOops, ptr %6, i64 0, i32 12
  %16 = load i16, ptr %15, align 2, !tbaa !75
  switch i16 %16, label %48 [
    i16 0, label %17
    i16 1, label %17
    i16 2, label %17
    i16 6, label %17
  ]

17:                                               ; preds = %3, %3, %3, %3
  %18 = getelementptr inbounds %struct.wmDrag, ptr %1, i64 0, i32 3
  %19 = load i32, ptr %18, align 4, !tbaa !57
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %48

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.wmDrag, ptr %1, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !60
  %24 = getelementptr inbounds %struct.ID, ptr %23, i64 0, i32 4
  %25 = load i16, ptr %24, align 8, !tbaa !61
  %26 = icmp eq i16 %25, 16975
  br i1 %26, label %27, label %48

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 9
  %29 = load ptr, ptr %28, align 8, !tbaa !69
  %30 = icmp eq ptr %29, null
  br i1 %30, label %48, label %31

31:                                               ; preds = %27
  %32 = call ptr @outliner_dropzone_find(ptr noundef nonnull %6, ptr noundef nonnull %4, i32 noundef 1) #8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %48, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.TreeElement, ptr %32, i64 0, i32 6
  %36 = load ptr, ptr %35, align 8, !tbaa !66
  %37 = getelementptr inbounds %struct.TreeElement, ptr %32, i64 0, i32 9
  %38 = load i16, ptr %37, align 4, !tbaa !62
  switch i16 %38, label %48 [
    i16 17235, label %39
    i16 16975, label %43
  ]

39:                                               ; preds = %34
  %40 = load i16, ptr %36, align 8, !tbaa !67
  %41 = add i16 %40, -19
  %42 = icmp ult i16 %41, 3
  br label %48

43:                                               ; preds = %34
  %44 = load i16, ptr %36, align 8, !tbaa !67
  %45 = icmp eq i16 %44, 9
  %46 = icmp eq i16 %44, 7
  %47 = or i1 %45, %46
  br label %48

48:                                               ; preds = %39, %31, %34, %21, %27, %43, %17, %3
  %49 = phi i1 [ false, %3 ], [ false, %17 ], [ %47, %43 ], [ false, %27 ], [ false, %21 ], [ %42, %39 ], [ false, %34 ], [ true, %31 ]
  %50 = zext i1 %49 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  ret i32 %50
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @outliner_parent_clear_copy(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.wmDrag, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !60
  %5 = getelementptr inbounds %struct.wmDropBox, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !73
  %7 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 4, i64 2
  tail call void @RNA_string_set(ptr noundef %6, ptr noundef nonnull @.str.12, ptr noundef nonnull %7) #8
  %8 = load ptr, ptr %5, align 8, !tbaa !73
  tail call void @RNA_enum_set(ptr noundef %8, ptr noundef nonnull @.str.13, i32 noundef 0) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @outliner_scene_drop_poll(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca [2 x float], align 4
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #8
  %6 = tail call ptr @CTX_wm_space_outliner(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  %7 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2
  %8 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %9 = load i32, ptr %8, align 4, !tbaa !56
  %10 = sitofp i32 %9 to float
  %11 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %12 = load i32, ptr %11, align 4, !tbaa !56
  %13 = sitofp i32 %12 to float
  %14 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  call void @UI_view2d_region_to_view(ptr noundef nonnull %7, float noundef %10, float noundef %13, ptr noundef nonnull %4, ptr noundef nonnull %14) #8
  %15 = getelementptr inbounds %struct.wmDrag, ptr %1, i64 0, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !57
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %37

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.wmDrag, ptr %1, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !60
  %21 = getelementptr inbounds %struct.ID, ptr %20, i64 0, i32 4
  %22 = load i16, ptr %21, align 8, !tbaa !61
  %23 = icmp eq i16 %22, 16975
  br i1 %23, label %24, label %37

24:                                               ; preds = %18
  %25 = call ptr @outliner_dropzone_find(ptr noundef %6, ptr noundef nonnull %4, i32 noundef 0) #8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %37, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.TreeElement, ptr %25, i64 0, i32 9
  %29 = load i16, ptr %28, align 4, !tbaa !62
  %30 = icmp eq i16 %29, 17235
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.TreeElement, ptr %25, i64 0, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !66
  %34 = load i16, ptr %33, align 8, !tbaa !67
  %35 = icmp eq i16 %34, 0
  %36 = zext i1 %35 to i32
  br label %37

37:                                               ; preds = %31, %27, %24, %3, %18
  %38 = phi i32 [ 0, %18 ], [ 0, %3 ], [ %36, %31 ], [ 0, %24 ], [ 0, %27 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  ret i32 %38
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @outliner_scene_drop_copy(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.wmDrag, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !60
  %5 = getelementptr inbounds %struct.wmDropBox, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !73
  %7 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 4, i64 2
  tail call void @RNA_string_set(ptr noundef %6, ptr noundef nonnull @.str.14, ptr noundef nonnull %7) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @outliner_material_drop_poll(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca [2 x float], align 4
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #8
  %6 = tail call ptr @CTX_wm_space_outliner(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  %7 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2
  %8 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %9 = load i32, ptr %8, align 4, !tbaa !56
  %10 = sitofp i32 %9 to float
  %11 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %12 = load i32, ptr %11, align 4, !tbaa !56
  %13 = sitofp i32 %12 to float
  %14 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  call void @UI_view2d_region_to_view(ptr noundef nonnull %7, float noundef %10, float noundef %13, ptr noundef nonnull %4, ptr noundef nonnull %14) #8
  %15 = getelementptr inbounds %struct.wmDrag, ptr %1, i64 0, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !57
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %37

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.wmDrag, ptr %1, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !60
  %21 = getelementptr inbounds %struct.ID, ptr %20, i64 0, i32 4
  %22 = load i16, ptr %21, align 8, !tbaa !61
  %23 = icmp eq i16 %22, 16717
  br i1 %23, label %24, label %37

24:                                               ; preds = %18
  %25 = call ptr @outliner_dropzone_find(ptr noundef %6, ptr noundef nonnull %4, i32 noundef 1) #8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %37, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.TreeElement, ptr %25, i64 0, i32 9
  %29 = load i16, ptr %28, align 4, !tbaa !62
  %30 = icmp eq i16 %29, 16975
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.TreeElement, ptr %25, i64 0, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !66
  %34 = load i16, ptr %33, align 8, !tbaa !67
  %35 = icmp eq i16 %34, 0
  %36 = zext i1 %35 to i32
  br label %37

37:                                               ; preds = %31, %27, %24, %3, %18
  %38 = phi i32 [ 0, %18 ], [ 0, %3 ], [ %36, %31 ], [ 0, %24 ], [ 0, %27 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  ret i32 %38
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @outliner_material_drop_copy(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.wmDrag, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !60
  %5 = getelementptr inbounds %struct.wmDropBox, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !73
  %7 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 4, i64 2
  tail call void @RNA_string_set(ptr noundef %6, ptr noundef nonnull @.str.15, ptr noundef nonnull %7) #8
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CTX_wm_space_outliner(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @UI_view2d_region_to_view(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @outliner_dropzone_find(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @outliner_search_back(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_scene_base_find(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RNA_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RNA_enum_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @UI_view2d_region_reinit(ptr noundef, i16 noundef signext, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @WM_keymap_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @WM_event_add_keymap_handler_bb(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @WM_event_add_dropbox_handler(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @UI_ThemeClearColor(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glClear(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @draw_outliner(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @UI_view2d_view_restore(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @UI_view2d_scrollers_calc(ptr noundef, ptr noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @UI_view2d_scrollers_draw(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @UI_view2d_scrollers_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_region_header_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_region_header(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!26 = !{!21, !6, i64 56}
!27 = !{!21, !6, i64 48}
!28 = !{!21, !11, i64 164}
!29 = !{!30, !11, i64 32}
!30 = !{!"SpaceOops", !6, i64 0, !6, i64 8, !12, i64 16, !11, i64 32, !31, i64 36, !7, i64 40, !32, i64 56, !12, i64 216, !6, i64 232, !7, i64 240, !35, i64 272, !22, i64 288, !22, i64 290, !22, i64 292, !22, i64 294, !6, i64 296}
!31 = !{!"float", !7, i64 0}
!32 = !{!"View2D", !33, i64 0, !33, i64 16, !34, i64 32, !34, i64 48, !34, i64 64, !7, i64 80, !7, i64 88, !31, i64 96, !31, i64 100, !22, i64 104, !22, i64 106, !22, i64 108, !22, i64 110, !22, i64 112, !22, i64 114, !22, i64 116, !22, i64 118, !22, i64 120, !22, i64 122, !22, i64 124, !22, i64 126, !6, i64 128, !11, i64 136, !11, i64 140, !6, i64 144, !6, i64 152}
!33 = !{!"rctf", !31, i64 0, !31, i64 4, !31, i64 8, !31, i64 12}
!34 = !{!"rcti", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12}
!35 = !{!"TreeStoreElem", !22, i64 0, !22, i64 2, !22, i64 4, !22, i64 6, !6, i64 8}
!36 = !{!37, !22, i64 214}
!37 = !{!"ARegion", !6, i64 0, !6, i64 8, !32, i64 16, !34, i64 176, !34, i64 192, !22, i64 208, !22, i64 210, !22, i64 212, !22, i64 214, !22, i64 216, !22, i64 218, !31, i64 220, !22, i64 224, !22, i64 226, !22, i64 228, !22, i64 230, !22, i64 232, !22, i64 234, !22, i64 236, !22, i64 238, !6, i64 240, !12, i64 248, !12, i64 264, !12, i64 280, !12, i64 296, !12, i64 312, !12, i64 328, !12, i64 344, !6, i64 360, !6, i64 368, !6, i64 376}
!38 = !{!37, !22, i64 216}
!39 = !{!30, !6, i64 232}
!40 = !{!30, !6, i64 296}
!41 = !{!37, !22, i64 120}
!42 = !{!37, !22, i64 132}
!43 = !{!37, !22, i64 126}
!44 = !{!37, !22, i64 124}
!45 = !{!31, !31, i64 0}
!46 = !{!37, !22, i64 208}
!47 = !{!37, !22, i64 210}
!48 = !{!49, !6, i64 296}
!49 = !{!"wmWindowManager", !50, i64 0, !6, i64 120, !6, i64 128, !12, i64 136, !11, i64 152, !22, i64 156, !22, i64 158, !12, i64 160, !12, i64 176, !51, i64 192, !12, i64 232, !12, i64 248, !12, i64 264, !12, i64 280, !6, i64 296, !6, i64 304, !6, i64 312, !12, i64 320, !6, i64 336, !7, i64 344, !7, i64 345}
!50 = !{!"ID", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !7, i64 32, !22, i64 98, !11, i64 100, !11, i64 104, !11, i64 108, !6, i64 112}
!51 = !{!"ReportList", !12, i64 0, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !6, i64 32}
!52 = !{!53, !11, i64 36}
!53 = !{!"wmNotifier", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !6, i64 56}
!54 = !{!53, !11, i64 40}
!55 = !{!53, !11, i64 48}
!56 = !{!11, !11, i64 0}
!57 = !{!58, !11, i64 20}
!58 = !{!"wmDrag", !6, i64 0, !6, i64 8, !11, i64 16, !11, i64 20, !6, i64 24, !7, i64 32, !59, i64 1056, !6, i64 1064, !31, i64 1072, !11, i64 1076, !11, i64 1080, !7, i64 1084, !11, i64 1284}
!59 = !{!"double", !7, i64 0}
!60 = !{!58, !6, i64 24}
!61 = !{!22, !22, i64 0}
!62 = !{!63, !22, i64 60}
!63 = !{!"TreeElement", !6, i64 0, !6, i64 8, !6, i64 16, !12, i64 24, !11, i64 40, !11, i64 44, !6, i64 48, !22, i64 56, !22, i64 58, !22, i64 60, !22, i64 62, !6, i64 64, !6, i64 72, !64, i64 80}
!64 = !{!"PointerRNA", !65, i64 0, !6, i64 8, !6, i64 16}
!65 = !{!"", !6, i64 0}
!66 = !{!63, !6, i64 48}
!67 = !{!35, !22, i64 0}
!68 = !{!35, !6, i64 8}
!69 = !{!70, !6, i64 216}
!70 = !{!"Object", !50, i64 0, !6, i64 120, !6, i64 128, !22, i64 136, !22, i64 138, !11, i64 140, !11, i64 144, !11, i64 148, !7, i64 152, !6, i64 216, !6, i64 224, !6, i64 232, !6, i64 240, !6, i64 248, !6, i64 256, !6, i64 264, !6, i64 272, !6, i64 280, !6, i64 288, !6, i64 296, !6, i64 304, !71, i64 312, !6, i64 360, !12, i64 368, !12, i64 384, !12, i64 400, !12, i64 416, !11, i64 432, !11, i64 436, !6, i64 440, !6, i64 448, !11, i64 456, !11, i64 460, !7, i64 464, !7, i64 476, !7, i64 488, !7, i64 500, !7, i64 512, !7, i64 524, !7, i64 536, !7, i64 548, !7, i64 560, !7, i64 576, !7, i64 592, !7, i64 604, !31, i64 616, !31, i64 620, !7, i64 624, !7, i64 688, !7, i64 752, !7, i64 816, !7, i64 880, !11, i64 944, !22, i64 948, !22, i64 950, !22, i64 952, !22, i64 954, !22, i64 956, !22, i64 958, !22, i64 960, !22, i64 962, !22, i64 964, !7, i64 966, !7, i64 967, !11, i64 968, !11, i64 972, !11, i64 976, !11, i64 980, !11, i64 984, !31, i64 988, !31, i64 992, !31, i64 996, !31, i64 1000, !31, i64 1004, !31, i64 1008, !31, i64 1012, !31, i64 1016, !31, i64 1020, !31, i64 1024, !31, i64 1028, !31, i64 1032, !22, i64 1036, !22, i64 1038, !22, i64 1040, !7, i64 1042, !7, i64 1043, !22, i64 1044, !7, i64 1046, !7, i64 1047, !31, i64 1048, !31, i64 1052, !12, i64 1056, !12, i64 1072, !12, i64 1088, !12, i64 1104, !31, i64 1120, !22, i64 1124, !22, i64 1126, !7, i64 1128, !11, i64 1144, !11, i64 1148, !6, i64 1152, !7, i64 1160, !7, i64 1161, !22, i64 1162, !7, i64 1164, !12, i64 1176, !12, i64 1192, !12, i64 1208, !12, i64 1224, !6, i64 1240, !6, i64 1248, !6, i64 1256, !7, i64 1264, !7, i64 1265, !22, i64 1266, !31, i64 1268, !6, i64 1272, !6, i64 1280, !6, i64 1288, !6, i64 1296, !72, i64 1304, !72, i64 1312, !11, i64 1320, !11, i64 1324, !12, i64 1328, !12, i64 1344, !6, i64 1360, !6, i64 1368, !6, i64 1376, !7, i64 1384, !6, i64 1392, !12, i64 1400, !6, i64 1416}
!71 = !{!"bAnimVizSettings", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !22, i64 16, !22, i64 18, !22, i64 20, !22, i64 22, !22, i64 24, !22, i64 26, !22, i64 28, !22, i64 30, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44}
!72 = !{!"long", !7, i64 0}
!73 = !{!74, !6, i64 48}
!74 = !{!"wmDropBox", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !22, i64 56}
!75 = !{!30, !22, i64 290}
