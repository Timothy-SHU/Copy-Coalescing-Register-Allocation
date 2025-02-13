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
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %2 = tail call ptr %1(i64 noundef 216, ptr noundef nonnull @.str) #8
  %3 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 3
  store i32 3, ptr %3, align 8, !tbaa !38
  %4 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %4, ptr noundef nonnull align 1 dereferenceable(64) @str, i64 noundef 64, i1 false) #8
  %5 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 5
  store ptr @outliner_new, ptr %5, align 8, !tbaa !42
  %6 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 6
  store ptr @outliner_free, ptr %6, align 8, !tbaa !43
  %7 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 7
  store ptr @outliner_init, ptr %7, align 8, !tbaa !44
  %8 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 11
  store ptr @outliner_duplicate, ptr %8, align 8, !tbaa !45
  %9 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 12
  store ptr @outliner_operatortypes, ptr %9, align 8, !tbaa !46
  %10 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 13
  store ptr @outliner_keymap, ptr %10, align 8, !tbaa !47
  %11 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 14
  store ptr @outliner_dropboxes, ptr %11, align 8, !tbaa !48
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %13 = tail call ptr %12(i64 noundef 184, ptr noundef nonnull @.str.2) #8
  %14 = getelementptr inbounds %struct.ARegionType, ptr %13, i64 0, i32 2
  store i32 0, ptr %14, align 8, !tbaa !49
  %15 = getelementptr inbounds %struct.ARegionType, ptr %13, i64 0, i32 20
  store i32 19, ptr %15, align 8, !tbaa !52
  %16 = getelementptr inbounds %struct.ARegionType, ptr %13, i64 0, i32 3
  store ptr @outliner_main_area_init, ptr %16, align 8, !tbaa !53
  %17 = getelementptr inbounds %struct.ARegionType, ptr %13, i64 0, i32 5
  store ptr @outliner_main_area_draw, ptr %17, align 8, !tbaa !54
  %18 = getelementptr inbounds %struct.ARegionType, ptr %13, i64 0, i32 7
  store ptr @outliner_main_area_free, ptr %18, align 8, !tbaa !55
  %19 = getelementptr inbounds %struct.ARegionType, ptr %13, i64 0, i32 6
  store ptr @outliner_main_area_listener, ptr %19, align 8, !tbaa !56
  %20 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 16
  tail call void @BLI_addhead(ptr noundef nonnull %20, ptr noundef %13) #8
  %21 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %22 = tail call ptr %21(i64 noundef 184, ptr noundef nonnull @.str.3) #8
  %23 = getelementptr inbounds %struct.ARegionType, ptr %22, i64 0, i32 2
  store i32 1, ptr %23, align 8, !tbaa !49
  %24 = getelementptr inbounds %struct.ARegionType, ptr %22, i64 0, i32 19
  store i32 26, ptr %24, align 4, !tbaa !57
  %25 = getelementptr inbounds %struct.ARegionType, ptr %22, i64 0, i32 20
  store i32 83, ptr %25, align 8, !tbaa !52
  %26 = getelementptr inbounds %struct.ARegionType, ptr %22, i64 0, i32 3
  store ptr @outliner_header_area_init, ptr %26, align 8, !tbaa !53
  %27 = getelementptr inbounds %struct.ARegionType, ptr %22, i64 0, i32 5
  store ptr @outliner_header_area_draw, ptr %27, align 8, !tbaa !54
  %28 = getelementptr inbounds %struct.ARegionType, ptr %22, i64 0, i32 7
  store ptr @outliner_header_area_free, ptr %28, align 8, !tbaa !55
  %29 = getelementptr inbounds %struct.ARegionType, ptr %22, i64 0, i32 6
  store ptr @outliner_header_area_listener, ptr %29, align 8, !tbaa !56
  tail call void @BLI_addhead(ptr noundef nonnull %20, ptr noundef %22) #8
  tail call void @BKE_spacetype_register(ptr noundef %2) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @outliner_new(ptr nocapture readnone %0) #0 !PGOFuncName !58 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 304, ptr noundef nonnull @.str.4) #8
  %4 = getelementptr inbounds %struct.SpaceOops, ptr %3, i64 0, i32 3
  store i32 3, ptr %4, align 8, !tbaa !59
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %6 = tail call ptr %5(i64 noundef 384, ptr noundef nonnull @.str.5) #8
  %7 = getelementptr inbounds %struct.SpaceOops, ptr %3, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %7, ptr noundef %6) #8
  %8 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 8
  store i16 1, ptr %8, align 2, !tbaa !66
  %9 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 9
  store i16 2, ptr %9, align 8, !tbaa !68
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %11 = tail call ptr %10(i64 noundef 384, ptr noundef nonnull @.str.6) #8
  tail call void @BLI_addtail(ptr noundef nonnull %7, ptr noundef %11) #8
  %12 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 8
  store i16 0, ptr %12, align 2, !tbaa !66
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @outliner_free(ptr noundef %0) #0 !PGOFuncName !69 {
  %2 = getelementptr inbounds %struct.SpaceOops, ptr %0, i64 0, i32 7
  tail call void @outliner_free_tree(ptr noundef nonnull %2) #8
  %3 = getelementptr inbounds %struct.SpaceOops, ptr %0, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !70
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @BLI_mempool_destroy(ptr noundef nonnull %4) #8
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds %struct.SpaceOops, ptr %0, i64 0, i32 15
  %9 = load ptr, ptr %8, align 8, !tbaa !71
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @BKE_treehash_free(ptr noundef nonnull %9) #8
  br label %12

12:                                               ; preds = %11, %7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @outliner_init(ptr nocapture readnone %0, ptr nocapture readnone %1) #2 !PGOFuncName !72 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @outliner_duplicate(ptr noundef %0) #0 !PGOFuncName !73 {
  %2 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %3 = tail call ptr %2(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.SpaceOops, ptr %3, i64 0, i32 7
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %4) #9
  %5 = getelementptr inbounds %struct.SpaceOops, ptr %3, i64 0, i32 8
  store ptr null, ptr %5, align 8, !tbaa !70
  %6 = getelementptr inbounds %struct.SpaceOops, ptr %3, i64 0, i32 15
  store ptr null, ptr %6, align 8, !tbaa !71
  ret ptr %3
}

; Function Attrs: optsize
declare void @outliner_operatortypes() #3

; Function Attrs: optsize
declare void @outliner_keymap(ptr noundef) #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @outliner_dropboxes() #0 !PGOFuncName !74 {
  %1 = tail call ptr @WM_dropboxmap_find(ptr noundef nonnull @.str.1, i32 noundef 3, i32 noundef 0) #8
  %2 = tail call ptr @WM_dropbox_add(ptr noundef %1, ptr noundef nonnull @.str.7, ptr noundef nonnull @outliner_parent_drop_poll, ptr noundef nonnull @outliner_parent_drop_copy) #8
  %3 = tail call ptr @WM_dropbox_add(ptr noundef %1, ptr noundef nonnull @.str.8, ptr noundef nonnull @outliner_parent_clear_poll, ptr noundef nonnull @outliner_parent_clear_copy) #8
  %4 = tail call ptr @WM_dropbox_add(ptr noundef %1, ptr noundef nonnull @.str.9, ptr noundef nonnull @outliner_scene_drop_poll, ptr noundef nonnull @outliner_scene_drop_copy) #8
  %5 = tail call ptr @WM_dropbox_add(ptr noundef %1, ptr noundef nonnull @.str.10, ptr noundef nonnull @outliner_material_drop_poll, ptr noundef nonnull @outliner_material_drop_copy) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @outliner_main_area_init(ptr nocapture noundef readonly %0, ptr noundef %1) #0 !PGOFuncName !75 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  %4 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 9
  %5 = load i16, ptr %4, align 8, !tbaa !76
  %6 = and i16 %5, -400
  %7 = or disjoint i16 %6, 394
  store i16 %7, ptr %4, align 8, !tbaa !76
  %8 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 15
  store i16 6, ptr %8, align 4, !tbaa !77
  %9 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 12
  store i16 771, ptr %9, align 2, !tbaa !78
  %10 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 11
  store i16 2, ptr %10, align 4, !tbaa !79
  %11 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 7
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %11, align 8, !tbaa !80
  %12 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %13 = load i16, ptr %12, align 8, !tbaa !81
  %14 = sext i16 %13 to i32
  %15 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %16 = load i16, ptr %15, align 2, !tbaa !82
  %17 = sext i16 %16 to i32
  tail call void @UI_view2d_region_reinit(ptr noundef nonnull %3, i16 noundef signext 1, i32 noundef %14, i32 noundef %17) #8
  %18 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %19 = load ptr, ptr %18, align 8, !tbaa !83
  %20 = tail call ptr @WM_keymap_find(ptr noundef %19, ptr noundef nonnull @.str.1, i32 noundef 3, i32 noundef 0) #8
  %21 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 26
  %22 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %23 = tail call ptr @WM_event_add_keymap_handler_bb(ptr noundef nonnull %21, ptr noundef %20, ptr noundef null, ptr noundef nonnull %22) #8
  %24 = tail call ptr @WM_dropboxmap_find(ptr noundef nonnull @.str.1, i32 noundef 3, i32 noundef 0) #8
  %25 = tail call ptr @WM_event_add_dropbox_handler(ptr noundef nonnull %21, ptr noundef %24) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @outliner_main_area_draw(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !87 {
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
define internal void @outliner_main_area_free(ptr nocapture readnone %0) #2 !PGOFuncName !88 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @outliner_main_area_listener(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 !PGOFuncName !89 {
  %5 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !90
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
  %11 = load i32, ptr %10, align 8, !tbaa !92
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
  %14 = load i32, ptr %13, align 8, !tbaa !92
  %15 = add i32 %14, -1179648
  %16 = tail call i32 @llvm.fshl.i32(i32 %15, i32 %15, i32 16)
  switch i32 %16, label %48 [
    i32 0, label %49
    i32 8, label %17
  ]

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %19 = load i32, ptr %18, align 8, !tbaa !93
  %20 = add i32 %19, -3
  %21 = icmp ult i32 %20, 3
  br i1 %21, label %48, label %49

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %24 = load i32, ptr %23, align 8, !tbaa !92
  %25 = icmp eq i32 %24, 2686976
  br i1 %25, label %48, label %49

26:                                               ; preds = %4
  %27 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %28 = load i32, ptr %27, align 8, !tbaa !92
  %29 = icmp eq i32 %28, 524288
  br i1 %29, label %48, label %49

30:                                               ; preds = %4
  %31 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %32 = load i32, ptr %31, align 8, !tbaa !93
  %33 = icmp eq i32 %32, 5
  br i1 %33, label %48, label %49

34:                                               ; preds = %4
  %35 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %36 = load i32, ptr %35, align 8, !tbaa !92
  %37 = icmp eq i32 %36, 2097152
  br i1 %37, label %48, label %49

38:                                               ; preds = %4
  %39 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %40 = load i32, ptr %39, align 8, !tbaa !92
  switch i32 %40, label %49 [
    i32 6029312, label %48
    i32 5963776, label %48
  ]

41:                                               ; preds = %4
  %42 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %43 = load i32, ptr %42, align 8, !tbaa !92
  switch i32 %43, label %49 [
    i32 4849664, label %48
    i32 4587520, label %48
    i32 4718592, label %44
  ]

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %46 = load i32, ptr %45, align 8, !tbaa !93
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
define internal void @outliner_header_area_init(ptr nocapture readnone %0, ptr noundef %1) #0 !PGOFuncName !94 {
  tail call void @ED_region_header_init(ptr noundef %1) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @outliner_header_area_draw(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !95 {
  tail call void @ED_region_header(ptr noundef %0, ptr noundef %1) #8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @outliner_header_area_free(ptr nocapture readnone %0) #2 !PGOFuncName !96 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @outliner_header_area_listener(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 !PGOFuncName !97 {
  %5 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !90
  switch i32 %6, label %16 [
    i32 67108864, label %7
    i32 251658240, label %11
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !92
  %10 = icmp eq i32 %9, 917504
  br i1 %10, label %15, label %16

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %13 = load i32, ptr %12, align 8, !tbaa !92
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
define internal fastcc void @BLI_listbase_clear(ptr nocapture noundef writeonly %0) unnamed_addr #4 !PGOFuncName !98 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: optsize
declare ptr @WM_dropboxmap_find(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @WM_dropbox_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @outliner_parent_drop_poll(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !99 {
  %4 = alloca [2 x float], align 4
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #8
  %6 = tail call ptr @CTX_wm_space_outliner(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  %7 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2
  %8 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %9 = load i32, ptr %8, align 4, !tbaa !100
  %10 = sitofp i32 %9 to float
  %11 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %12 = load i32, ptr %11, align 4, !tbaa !100
  %13 = sitofp i32 %12 to float
  %14 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  call void @UI_view2d_region_to_view(ptr noundef nonnull %7, float noundef %10, float noundef %13, ptr noundef nonnull %4, ptr noundef nonnull %14) #8
  %15 = getelementptr inbounds %struct.wmDrag, ptr %1, i64 0, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !101
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %50

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.wmDrag, ptr %1, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !104
  %21 = getelementptr inbounds %struct.ID, ptr %20, i64 0, i32 4
  %22 = load i16, ptr %21, align 8, !tbaa !105
  %23 = icmp eq i16 %22, 16975
  br i1 %23, label %24, label %50

24:                                               ; preds = %18
  %25 = call ptr @outliner_dropzone_find(ptr noundef %6, ptr noundef nonnull %4, i32 noundef 1) #8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %50, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.TreeElement, ptr %25, i64 0, i32 9
  %29 = load i16, ptr %28, align 4, !tbaa !106
  %30 = icmp eq i16 %29, 16975
  br i1 %30, label %31, label %50

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.TreeElement, ptr %25, i64 0, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !110
  %34 = load i16, ptr %33, align 8, !tbaa !111
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.TreeStoreElem, ptr %33, i64 0, i32 4
  %38 = load ptr, ptr %37, align 8, !tbaa !112
  %39 = icmp eq ptr %38, %20
  br i1 %39, label %51, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.Object, ptr %20, i64 0, i32 9
  %42 = load ptr, ptr %41, align 8, !tbaa !113
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
define internal void @outliner_parent_drop_copy(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !117 {
  %3 = getelementptr inbounds %struct.wmDrag, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !104
  %5 = getelementptr inbounds %struct.wmDropBox, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !118
  %7 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 4, i64 2
  tail call void @RNA_string_set(ptr noundef %6, ptr noundef nonnull @.str.11, ptr noundef nonnull %7) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @outliner_parent_clear_poll(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !120 {
  %4 = alloca [2 x float], align 4
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #8
  %6 = tail call ptr @CTX_wm_space_outliner(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  %7 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2
  %8 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %9 = load i32, ptr %8, align 4, !tbaa !100
  %10 = sitofp i32 %9 to float
  %11 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %12 = load i32, ptr %11, align 4, !tbaa !100
  %13 = sitofp i32 %12 to float
  %14 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  call void @UI_view2d_region_to_view(ptr noundef nonnull %7, float noundef %10, float noundef %13, ptr noundef nonnull %4, ptr noundef nonnull %14) #8
  %15 = getelementptr inbounds %struct.SpaceOops, ptr %6, i64 0, i32 12
  %16 = load i16, ptr %15, align 2, !tbaa !121
  switch i16 %16, label %48 [
    i16 0, label %17
    i16 1, label %17
    i16 2, label %17
    i16 6, label %17
  ]

17:                                               ; preds = %3, %3, %3, %3
  %18 = getelementptr inbounds %struct.wmDrag, ptr %1, i64 0, i32 3
  %19 = load i32, ptr %18, align 4, !tbaa !101
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %48

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.wmDrag, ptr %1, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !104
  %24 = getelementptr inbounds %struct.ID, ptr %23, i64 0, i32 4
  %25 = load i16, ptr %24, align 8, !tbaa !105
  %26 = icmp eq i16 %25, 16975
  br i1 %26, label %27, label %48

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 9
  %29 = load ptr, ptr %28, align 8, !tbaa !113
  %30 = icmp eq ptr %29, null
  br i1 %30, label %48, label %31

31:                                               ; preds = %27
  %32 = call ptr @outliner_dropzone_find(ptr noundef nonnull %6, ptr noundef nonnull %4, i32 noundef 1) #8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %48, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.TreeElement, ptr %32, i64 0, i32 6
  %36 = load ptr, ptr %35, align 8, !tbaa !110
  %37 = getelementptr inbounds %struct.TreeElement, ptr %32, i64 0, i32 9
  %38 = load i16, ptr %37, align 4, !tbaa !106
  switch i16 %38, label %48 [
    i16 17235, label %39
    i16 16975, label %43
  ]

39:                                               ; preds = %34
  %40 = load i16, ptr %36, align 8, !tbaa !111
  %41 = add i16 %40, -19
  %42 = icmp ult i16 %41, 3
  br label %48

43:                                               ; preds = %34
  %44 = load i16, ptr %36, align 8, !tbaa !111
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
define internal void @outliner_parent_clear_copy(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !122 {
  %3 = getelementptr inbounds %struct.wmDrag, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !104
  %5 = getelementptr inbounds %struct.wmDropBox, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !118
  %7 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 4, i64 2
  tail call void @RNA_string_set(ptr noundef %6, ptr noundef nonnull @.str.12, ptr noundef nonnull %7) #8
  %8 = load ptr, ptr %5, align 8, !tbaa !118
  tail call void @RNA_enum_set(ptr noundef %8, ptr noundef nonnull @.str.13, i32 noundef 0) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @outliner_scene_drop_poll(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !123 {
  %4 = alloca [2 x float], align 4
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #8
  %6 = tail call ptr @CTX_wm_space_outliner(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  %7 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2
  %8 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %9 = load i32, ptr %8, align 4, !tbaa !100
  %10 = sitofp i32 %9 to float
  %11 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %12 = load i32, ptr %11, align 4, !tbaa !100
  %13 = sitofp i32 %12 to float
  %14 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  call void @UI_view2d_region_to_view(ptr noundef nonnull %7, float noundef %10, float noundef %13, ptr noundef nonnull %4, ptr noundef nonnull %14) #8
  %15 = getelementptr inbounds %struct.wmDrag, ptr %1, i64 0, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !101
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %37

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.wmDrag, ptr %1, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !104
  %21 = getelementptr inbounds %struct.ID, ptr %20, i64 0, i32 4
  %22 = load i16, ptr %21, align 8, !tbaa !105
  %23 = icmp eq i16 %22, 16975
  br i1 %23, label %24, label %37

24:                                               ; preds = %18
  %25 = call ptr @outliner_dropzone_find(ptr noundef %6, ptr noundef nonnull %4, i32 noundef 0) #8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %37, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.TreeElement, ptr %25, i64 0, i32 9
  %29 = load i16, ptr %28, align 4, !tbaa !106
  %30 = icmp eq i16 %29, 17235
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.TreeElement, ptr %25, i64 0, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !110
  %34 = load i16, ptr %33, align 8, !tbaa !111
  %35 = icmp eq i16 %34, 0
  %36 = zext i1 %35 to i32
  br label %37

37:                                               ; preds = %31, %27, %24, %3, %18
  %38 = phi i32 [ 0, %18 ], [ 0, %3 ], [ %36, %31 ], [ 0, %24 ], [ 0, %27 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  ret i32 %38
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @outliner_scene_drop_copy(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !124 {
  %3 = getelementptr inbounds %struct.wmDrag, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !104
  %5 = getelementptr inbounds %struct.wmDropBox, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !118
  %7 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 4, i64 2
  tail call void @RNA_string_set(ptr noundef %6, ptr noundef nonnull @.str.14, ptr noundef nonnull %7) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @outliner_material_drop_poll(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !125 {
  %4 = alloca [2 x float], align 4
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #8
  %6 = tail call ptr @CTX_wm_space_outliner(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  %7 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2
  %8 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %9 = load i32, ptr %8, align 4, !tbaa !100
  %10 = sitofp i32 %9 to float
  %11 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %12 = load i32, ptr %11, align 4, !tbaa !100
  %13 = sitofp i32 %12 to float
  %14 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  call void @UI_view2d_region_to_view(ptr noundef nonnull %7, float noundef %10, float noundef %13, ptr noundef nonnull %4, ptr noundef nonnull %14) #8
  %15 = getelementptr inbounds %struct.wmDrag, ptr %1, i64 0, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !101
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %37

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.wmDrag, ptr %1, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !104
  %21 = getelementptr inbounds %struct.ID, ptr %20, i64 0, i32 4
  %22 = load i16, ptr %21, align 8, !tbaa !105
  %23 = icmp eq i16 %22, 16717
  br i1 %23, label %24, label %37

24:                                               ; preds = %18
  %25 = call ptr @outliner_dropzone_find(ptr noundef %6, ptr noundef nonnull %4, i32 noundef 1) #8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %37, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.TreeElement, ptr %25, i64 0, i32 9
  %29 = load i16, ptr %28, align 4, !tbaa !106
  %30 = icmp eq i16 %29, 16975
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.TreeElement, ptr %25, i64 0, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !110
  %34 = load i16, ptr %33, align 8, !tbaa !111
  %35 = icmp eq i16 %34, 0
  %36 = zext i1 %35 to i32
  br label %37

37:                                               ; preds = %31, %27, %24, %3, %18
  %38 = phi i32 [ 0, %18 ], [ 0, %3 ], [ %36, %31 ], [ 0, %24 ], [ 0, %27 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  ret i32 %38
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @outliner_material_drop_copy(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !126 {
  %3 = getelementptr inbounds %struct.wmDrag, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !104
  %5 = getelementptr inbounds %struct.wmDropBox, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !118
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
!48 = !{!39, !35, i64 160}
!49 = !{!50, !40, i64 16}
!50 = !{!"ARegionType", !35, i64 0, !35, i64 8, !40, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !35, i64 88, !35, i64 96, !41, i64 104, !41, i64 120, !41, i64 136, !40, i64 152, !40, i64 156, !40, i64 160, !40, i64 164, !40, i64 168, !51, i64 172, !51, i64 174, !51, i64 176}
!51 = !{!"short", !36, i64 0}
!52 = !{!50, !40, i64 168}
!53 = !{!50, !35, i64 24}
!54 = !{!50, !35, i64 40}
!55 = !{!50, !35, i64 56}
!56 = !{!50, !35, i64 48}
!57 = !{!50, !40, i64 164}
!58 = !{!"space_outliner.c:outliner_new"}
!59 = !{!60, !40, i64 32}
!60 = !{!"SpaceOops", !35, i64 0, !35, i64 8, !41, i64 16, !40, i64 32, !61, i64 36, !36, i64 40, !62, i64 56, !41, i64 216, !35, i64 232, !36, i64 240, !65, i64 272, !51, i64 288, !51, i64 290, !51, i64 292, !51, i64 294, !35, i64 296}
!61 = !{!"float", !36, i64 0}
!62 = !{!"View2D", !63, i64 0, !63, i64 16, !64, i64 32, !64, i64 48, !64, i64 64, !36, i64 80, !36, i64 88, !61, i64 96, !61, i64 100, !51, i64 104, !51, i64 106, !51, i64 108, !51, i64 110, !51, i64 112, !51, i64 114, !51, i64 116, !51, i64 118, !51, i64 120, !51, i64 122, !51, i64 124, !51, i64 126, !35, i64 128, !40, i64 136, !40, i64 140, !35, i64 144, !35, i64 152}
!63 = !{!"rctf", !61, i64 0, !61, i64 4, !61, i64 8, !61, i64 12}
!64 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!65 = !{!"TreeStoreElem", !51, i64 0, !51, i64 2, !51, i64 4, !51, i64 6, !35, i64 8}
!66 = !{!67, !51, i64 214}
!67 = !{!"ARegion", !35, i64 0, !35, i64 8, !62, i64 16, !64, i64 176, !64, i64 192, !51, i64 208, !51, i64 210, !51, i64 212, !51, i64 214, !51, i64 216, !51, i64 218, !61, i64 220, !51, i64 224, !51, i64 226, !51, i64 228, !51, i64 230, !51, i64 232, !51, i64 234, !51, i64 236, !51, i64 238, !35, i64 240, !41, i64 248, !41, i64 264, !41, i64 280, !41, i64 296, !41, i64 312, !41, i64 328, !41, i64 344, !35, i64 360, !35, i64 368, !35, i64 376}
!68 = !{!67, !51, i64 216}
!69 = !{!"space_outliner.c:outliner_free"}
!70 = !{!60, !35, i64 232}
!71 = !{!60, !35, i64 296}
!72 = !{!"space_outliner.c:outliner_init"}
!73 = !{!"space_outliner.c:outliner_duplicate"}
!74 = !{!"space_outliner.c:outliner_dropboxes"}
!75 = !{!"space_outliner.c:outliner_main_area_init"}
!76 = !{!67, !51, i64 120}
!77 = !{!67, !51, i64 132}
!78 = !{!67, !51, i64 126}
!79 = !{!67, !51, i64 124}
!80 = !{!61, !61, i64 0}
!81 = !{!67, !51, i64 208}
!82 = !{!67, !51, i64 210}
!83 = !{!84, !35, i64 296}
!84 = !{!"wmWindowManager", !85, i64 0, !35, i64 120, !35, i64 128, !41, i64 136, !40, i64 152, !51, i64 156, !51, i64 158, !41, i64 160, !41, i64 176, !86, i64 192, !41, i64 232, !41, i64 248, !41, i64 264, !41, i64 280, !35, i64 296, !35, i64 304, !35, i64 312, !41, i64 320, !35, i64 336, !36, i64 344, !36, i64 345}
!85 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !51, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !35, i64 112}
!86 = !{!"ReportList", !41, i64 0, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !35, i64 32}
!87 = !{!"space_outliner.c:outliner_main_area_draw"}
!88 = !{!"space_outliner.c:outliner_main_area_free"}
!89 = !{!"space_outliner.c:outliner_main_area_listener"}
!90 = !{!91, !40, i64 36}
!91 = !{!"wmNotifier", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !35, i64 56}
!92 = !{!91, !40, i64 40}
!93 = !{!91, !40, i64 48}
!94 = !{!"space_outliner.c:outliner_header_area_init"}
!95 = !{!"space_outliner.c:outliner_header_area_draw"}
!96 = !{!"space_outliner.c:outliner_header_area_free"}
!97 = !{!"space_outliner.c:outliner_header_area_listener"}
!98 = !{!"space_outliner.c:BLI_listbase_clear"}
!99 = !{!"space_outliner.c:outliner_parent_drop_poll"}
!100 = !{!40, !40, i64 0}
!101 = !{!102, !40, i64 20}
!102 = !{!"wmDrag", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 20, !35, i64 24, !36, i64 32, !103, i64 1056, !35, i64 1064, !61, i64 1072, !40, i64 1076, !40, i64 1080, !36, i64 1084, !40, i64 1284}
!103 = !{!"double", !36, i64 0}
!104 = !{!102, !35, i64 24}
!105 = !{!51, !51, i64 0}
!106 = !{!107, !51, i64 60}
!107 = !{!"TreeElement", !35, i64 0, !35, i64 8, !35, i64 16, !41, i64 24, !40, i64 40, !40, i64 44, !35, i64 48, !51, i64 56, !51, i64 58, !51, i64 60, !51, i64 62, !35, i64 64, !35, i64 72, !108, i64 80}
!108 = !{!"PointerRNA", !109, i64 0, !35, i64 8, !35, i64 16}
!109 = !{!"", !35, i64 0}
!110 = !{!107, !35, i64 48}
!111 = !{!65, !51, i64 0}
!112 = !{!65, !35, i64 8}
!113 = !{!114, !35, i64 216}
!114 = !{!"Object", !85, i64 0, !35, i64 120, !35, i64 128, !51, i64 136, !51, i64 138, !40, i64 140, !40, i64 144, !40, i64 148, !36, i64 152, !35, i64 216, !35, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !35, i64 280, !35, i64 288, !35, i64 296, !35, i64 304, !115, i64 312, !35, i64 360, !41, i64 368, !41, i64 384, !41, i64 400, !41, i64 416, !40, i64 432, !40, i64 436, !35, i64 440, !35, i64 448, !40, i64 456, !40, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !61, i64 616, !61, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !40, i64 944, !51, i64 948, !51, i64 950, !51, i64 952, !51, i64 954, !51, i64 956, !51, i64 958, !51, i64 960, !51, i64 962, !51, i64 964, !36, i64 966, !36, i64 967, !40, i64 968, !40, i64 972, !40, i64 976, !40, i64 980, !40, i64 984, !61, i64 988, !61, i64 992, !61, i64 996, !61, i64 1000, !61, i64 1004, !61, i64 1008, !61, i64 1012, !61, i64 1016, !61, i64 1020, !61, i64 1024, !61, i64 1028, !61, i64 1032, !51, i64 1036, !51, i64 1038, !51, i64 1040, !36, i64 1042, !36, i64 1043, !51, i64 1044, !36, i64 1046, !36, i64 1047, !61, i64 1048, !61, i64 1052, !41, i64 1056, !41, i64 1072, !41, i64 1088, !41, i64 1104, !61, i64 1120, !51, i64 1124, !51, i64 1126, !36, i64 1128, !40, i64 1144, !40, i64 1148, !35, i64 1152, !36, i64 1160, !36, i64 1161, !51, i64 1162, !36, i64 1164, !41, i64 1176, !41, i64 1192, !41, i64 1208, !41, i64 1224, !35, i64 1240, !35, i64 1248, !35, i64 1256, !36, i64 1264, !36, i64 1265, !51, i64 1266, !61, i64 1268, !35, i64 1272, !35, i64 1280, !35, i64 1288, !35, i64 1296, !116, i64 1304, !116, i64 1312, !40, i64 1320, !40, i64 1324, !41, i64 1328, !41, i64 1344, !35, i64 1360, !35, i64 1368, !35, i64 1376, !36, i64 1384, !35, i64 1392, !41, i64 1400, !35, i64 1416}
!115 = !{!"bAnimVizSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !51, i64 16, !51, i64 18, !51, i64 20, !51, i64 22, !51, i64 24, !51, i64 26, !51, i64 28, !51, i64 30, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44}
!116 = !{!"long", !36, i64 0}
!117 = !{!"space_outliner.c:outliner_parent_drop_copy"}
!118 = !{!119, !35, i64 48}
!119 = !{!"wmDropBox", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !51, i64 56}
!120 = !{!"space_outliner.c:outliner_parent_clear_poll"}
!121 = !{!60, !51, i64 290}
!122 = !{!"space_outliner.c:outliner_parent_clear_copy"}
!123 = !{!"space_outliner.c:outliner_scene_drop_poll"}
!124 = !{!"space_outliner.c:outliner_scene_drop_copy"}
!125 = !{!"space_outliner.c:outliner_material_drop_poll"}
!126 = !{!"space_outliner.c:outliner_material_drop_copy"}
