; ModuleID = 'blender/source/blender/editors/space_logic/space_logic.c'
source_filename = "blender/source/blender/editors/space_logic/space_logic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.SpaceType = type { ptr, ptr, [64 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, i32 }
%struct.ARegionType = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i16 }
%struct.SpaceLogic = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], i16, i16, i32, ptr }
%struct.wmWindowManager = type { %struct.ID, ptr, ptr, %struct.ListBase, i32, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ReportList, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, %struct.ListBase, ptr, i8, [7 x i8] }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.ReportList = type { %struct.ListBase, i32, i32, i32, i32, ptr }
%struct.wmNotifier = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [18 x i8] c"buttons for image\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"spacetype logic\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"spacetype logic region\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"initlogic\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"header for logic\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"buttons for logic\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"main area for logic\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [13 x i8] c"Logic Editor\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"LOGIC_OT_properties\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"LOGIC_OT_links_cut\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"LOGIC_MT_logicbricks_add\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"LOGIC_OT_view_all\00", align 1
@str = private unnamed_addr constant [65 x i8] c"Logic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @logic_has_buttons_region(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BKE_area_find_region_type(ptr noundef %0, i32 noundef 4) #4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %14

4:                                                ; preds = %1
  %5 = tail call ptr @BKE_area_find_region_type(ptr noundef %0, i32 noundef 1) #4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %9 = tail call ptr %8(i64 noundef 384, ptr noundef nonnull @.str) #4
  %10 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 20
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %10, ptr noundef nonnull %5, ptr noundef %9) #4
  %11 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 8
  store i16 4, ptr %11, align 2, !tbaa !9
  %12 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 9
  store i16 4, ptr %12, align 8, !tbaa !18
  %13 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 10
  store i16 1, ptr %13, align 2, !tbaa !19
  br label %14

14:                                               ; preds = %4, %1, %7
  %15 = phi ptr [ %9, %7 ], [ %2, %1 ], [ null, %4 ]
  ret ptr %15
}

; Function Attrs: optsize
declare ptr @BKE_area_find_region_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_insertlinkafter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_spacetype_logic() local_unnamed_addr #0 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %2 = tail call ptr %1(i64 noundef 216, ptr noundef nonnull @.str.1) #4
  %3 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 3
  store i32 17, ptr %3, align 8, !tbaa !20
  %4 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %4, ptr noundef nonnull align 1 dereferenceable(64) @str, i64 noundef 64, i1 false) #4
  %5 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 5
  store ptr @logic_new, ptr %5, align 8, !tbaa !22
  %6 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 6
  store ptr @logic_free, ptr %6, align 8, !tbaa !23
  %7 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 7
  store ptr @logic_init, ptr %7, align 8, !tbaa !24
  %8 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 11
  store ptr @logic_duplicate, ptr %8, align 8, !tbaa !25
  %9 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 12
  store ptr @logic_operatortypes, ptr %9, align 8, !tbaa !26
  %10 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 13
  store ptr @logic_keymap, ptr %10, align 8, !tbaa !27
  %11 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 10
  store ptr @logic_refresh, ptr %11, align 8, !tbaa !28
  %12 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 15
  store ptr @logic_context, ptr %12, align 8, !tbaa !29
  %13 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %14 = tail call ptr %13(i64 noundef 184, ptr noundef nonnull @.str.3) #4
  %15 = getelementptr inbounds %struct.ARegionType, ptr %14, i64 0, i32 2
  store i32 0, ptr %15, align 8, !tbaa !30
  %16 = getelementptr inbounds %struct.ARegionType, ptr %14, i64 0, i32 20
  store i32 19, ptr %16, align 8, !tbaa !32
  %17 = getelementptr inbounds %struct.ARegionType, ptr %14, i64 0, i32 3
  store ptr @logic_main_area_init, ptr %17, align 8, !tbaa !33
  %18 = getelementptr inbounds %struct.ARegionType, ptr %14, i64 0, i32 5
  store ptr @logic_main_area_draw, ptr %18, align 8, !tbaa !34
  %19 = getelementptr inbounds %struct.ARegionType, ptr %14, i64 0, i32 6
  store ptr @logic_listener, ptr %19, align 8, !tbaa !35
  %20 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 16
  tail call void @BLI_addhead(ptr noundef nonnull %20, ptr noundef %14) #4
  %21 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %22 = tail call ptr %21(i64 noundef 184, ptr noundef nonnull @.str.3) #4
  %23 = getelementptr inbounds %struct.ARegionType, ptr %22, i64 0, i32 2
  store i32 4, ptr %23, align 8, !tbaa !30
  %24 = getelementptr inbounds %struct.ARegionType, ptr %22, i64 0, i32 18
  store i32 220, ptr %24, align 8, !tbaa !36
  %25 = getelementptr inbounds %struct.ARegionType, ptr %22, i64 0, i32 20
  store i32 17, ptr %25, align 8, !tbaa !32
  %26 = getelementptr inbounds %struct.ARegionType, ptr %22, i64 0, i32 6
  store ptr @logic_listener, ptr %26, align 8, !tbaa !35
  %27 = getelementptr inbounds %struct.ARegionType, ptr %22, i64 0, i32 3
  store ptr @logic_buttons_area_init, ptr %27, align 8, !tbaa !33
  %28 = getelementptr inbounds %struct.ARegionType, ptr %22, i64 0, i32 5
  store ptr @logic_buttons_area_draw, ptr %28, align 8, !tbaa !34
  tail call void @BLI_addhead(ptr noundef nonnull %20, ptr noundef %22) #4
  %29 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %30 = tail call ptr %29(i64 noundef 184, ptr noundef nonnull @.str.3) #4
  %31 = getelementptr inbounds %struct.ARegionType, ptr %30, i64 0, i32 2
  store i32 1, ptr %31, align 8, !tbaa !30
  %32 = getelementptr inbounds %struct.ARegionType, ptr %30, i64 0, i32 19
  store i32 26, ptr %32, align 4, !tbaa !37
  %33 = getelementptr inbounds %struct.ARegionType, ptr %30, i64 0, i32 20
  store i32 83, ptr %33, align 8, !tbaa !32
  %34 = getelementptr inbounds %struct.ARegionType, ptr %30, i64 0, i32 3
  store ptr @logic_header_area_init, ptr %34, align 8, !tbaa !33
  %35 = getelementptr inbounds %struct.ARegionType, ptr %30, i64 0, i32 5
  store ptr @logic_header_area_draw, ptr %35, align 8, !tbaa !34
  tail call void @BLI_addhead(ptr noundef nonnull %20, ptr noundef %30) #4
  tail call void @BKE_spacetype_register(ptr noundef %2) #4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @logic_new(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_wm_area(ptr noundef %0) #4
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %4 = tail call ptr %3(i64 noundef 72, ptr noundef nonnull @.str.4) #4
  %5 = getelementptr inbounds %struct.SpaceLogic, ptr %4, i64 0, i32 3
  store i32 17, ptr %5, align 8, !tbaa !38
  %6 = getelementptr inbounds %struct.SpaceLogic, ptr %4, i64 0, i32 7
  store i16 2047, ptr %6, align 2, !tbaa !40
  %7 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %8 = tail call ptr %7(i64 noundef 384, ptr noundef nonnull @.str.5) #4
  %9 = getelementptr inbounds %struct.SpaceLogic, ptr %4, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %9, ptr noundef %8) #4
  %10 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 8
  store i16 1, ptr %10, align 2, !tbaa !9
  %11 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 9
  store i16 2, ptr %11, align 8, !tbaa !18
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %13 = tail call ptr %12(i64 noundef 384, ptr noundef nonnull @.str.6) #4
  tail call void @BLI_addtail(ptr noundef nonnull %9, ptr noundef %13) #4
  %14 = getelementptr inbounds %struct.ARegion, ptr %13, i64 0, i32 8
  store i16 4, ptr %14, align 2, !tbaa !9
  %15 = getelementptr inbounds %struct.ARegion, ptr %13, i64 0, i32 9
  store i16 4, ptr %15, align 8, !tbaa !18
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %17 = tail call ptr %16(i64 noundef 384, ptr noundef nonnull @.str.7) #4
  tail call void @BLI_addtail(ptr noundef nonnull %9, ptr noundef %17) #4
  %18 = getelementptr inbounds %struct.ARegion, ptr %17, i64 0, i32 8
  store i16 0, ptr %18, align 2, !tbaa !9
  %19 = getelementptr inbounds %struct.ARegion, ptr %17, i64 0, i32 2
  %20 = getelementptr inbounds %struct.ARegion, ptr %17, i64 0, i32 2, i32 0, i32 3
  store float 0.000000e+00, ptr %20, align 4, !tbaa !41
  store <2 x float> <float 0.000000e+00, float 1.150000e+03>, ptr %19, align 8, !tbaa !42
  %21 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 10
  %22 = load i16, ptr %21, align 2, !tbaa !43
  %23 = sitofp i16 %22 to float
  %24 = fdiv float 1.150000e+03, %23
  %25 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 11
  %26 = load i16, ptr %25, align 4, !tbaa !45
  %27 = sext i16 %26 to i32
  %28 = sub nsw i32 0, %27
  %29 = sitofp i32 %28 to float
  %30 = fmul float %24, %29
  %31 = getelementptr inbounds %struct.ARegion, ptr %17, i64 0, i32 2, i32 0, i32 2
  store float %30, ptr %31, align 8, !tbaa !46
  %32 = getelementptr inbounds %struct.ARegion, ptr %17, i64 0, i32 2, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %32, ptr noundef nonnull align 8 dereferenceable(16) %19, i64 16, i1 false), !tbaa.struct !47
  %33 = getelementptr inbounds %struct.ARegion, ptr %17, i64 0, i32 2, i32 5
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 3.200000e+04, float 3.200000e+04>, ptr %33, align 8, !tbaa !42
  %34 = getelementptr inbounds %struct.ARegion, ptr %17, i64 0, i32 2, i32 7
  store <2 x float> <float 5.000000e-01, float 1.500000e+00>, ptr %34, align 8, !tbaa !42
  %35 = getelementptr inbounds %struct.ARegion, ptr %17, i64 0, i32 2, i32 9
  store i16 10, ptr %35, align 8, !tbaa !48
  %36 = getelementptr inbounds %struct.ARegion, ptr %17, i64 0, i32 2, i32 12
  store i16 7, ptr %36, align 2, !tbaa !49
  %37 = getelementptr inbounds %struct.ARegion, ptr %17, i64 0, i32 2, i32 11
  store i16 1, ptr %37, align 4, !tbaa !50
  %38 = getelementptr inbounds %struct.ARegion, ptr %17, i64 0, i32 2, i32 15
  store i16 6, ptr %38, align 4, !tbaa !51
  %39 = getelementptr inbounds %struct.ARegion, ptr %17, i64 0, i32 2, i32 13
  store i16 16, ptr %39, align 8, !tbaa !52
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @logic_free(ptr nocapture readnone %0) #2 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @logic_init(ptr nocapture readnone %0, ptr nocapture readnone %1) #2 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @logic_duplicate(ptr noundef %0) #0 {
  %2 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !5
  %3 = tail call ptr %2(ptr noundef %0) #4
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @logic_operatortypes() #0 {
  tail call void @WM_operatortype_append(ptr noundef nonnull @LOGIC_OT_properties) #4
  tail call void @WM_operatortype_append(ptr noundef nonnull @LOGIC_OT_links_cut) #4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @logic_keymap(ptr noundef %0) #0 {
  %2 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef 17, i32 noundef 0) #4
  %3 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.9, i32 noundef 110, i32 noundef 1, i32 noundef 0, i32 noundef 0) #4
  %4 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.10, i32 noundef 1, i32 noundef 1, i32 noundef 2, i32 noundef 0) #4
  %5 = tail call ptr @WM_keymap_add_menu(ptr noundef %2, ptr noundef nonnull @.str.11, i32 noundef 97, i32 noundef 1, i32 noundef 1, i32 noundef 0) #4
  %6 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.12, i32 noundef 167, i32 noundef 1, i32 noundef 0, i32 noundef 0) #4
  %7 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.12, i32 noundef 402, i32 noundef 1, i32 noundef 0, i32 noundef 0) #4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @logic_refresh(ptr nocapture readnone %0, ptr nocapture readnone %1) #2 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i32 @logic_context(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #2 {
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @logic_main_area_init(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  %4 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %5 = load i16, ptr %4, align 8, !tbaa !53
  %6 = sext i16 %5 to i32
  %7 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %8 = load i16, ptr %7, align 2, !tbaa !54
  %9 = sext i16 %8 to i32
  tail call void @UI_view2d_region_reinit(ptr noundef nonnull %3, i16 noundef signext -1, i32 noundef %6, i32 noundef %9) #4
  %10 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %11 = load ptr, ptr %10, align 8, !tbaa !55
  %12 = tail call ptr @WM_keymap_find(ptr noundef %11, ptr noundef nonnull @.str.8, i32 noundef 17, i32 noundef 0) #4
  %13 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 26
  %14 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %13, ptr noundef %12) #4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @logic_main_area_draw(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  tail call void @UI_ThemeClearColor(i32 noundef 2) #4
  tail call void @glClear(i32 noundef 16384) #4
  tail call void @UI_view2d_view_ortho(ptr noundef nonnull %3) #4
  tail call void @logic_buttons(ptr noundef %0, ptr noundef %1) #4
  tail call void @UI_view2d_view_restore(ptr noundef %0) #4
  %4 = tail call ptr @UI_view2d_scrollers_calc(ptr noundef %0, ptr noundef nonnull %3, i16 noundef signext -1, i16 noundef signext -1, i16 noundef signext -1, i16 noundef signext -1) #4
  tail call void @UI_view2d_scrollers_draw(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %4) #4
  tail call void @UI_view2d_scrollers_free(ptr noundef %4) #4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @logic_listener(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !59
  switch i32 %6, label %15 [
    i32 318767104, label %14
    i32 67108864, label %7
    i32 301989888, label %10
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !61
  switch i32 %9, label %15 [
    i32 196608, label %14
    i32 458752, label %14
  ]

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %12 = load i32, ptr %11, align 8, !tbaa !62
  %13 = icmp eq i32 %12, 5
  br i1 %13, label %14, label %15

14:                                               ; preds = %10, %7, %7, %4
  tail call void @ED_region_tag_redraw(ptr noundef %2) #4
  br label %15

15:                                               ; preds = %14, %10, %7, %4
  ret void
}

; Function Attrs: optsize
declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @logic_buttons_area_init(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @ED_region_panels_init(ptr noundef %0, ptr noundef %1) #4
  %3 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = tail call ptr @WM_keymap_find(ptr noundef %4, ptr noundef nonnull @.str.8, i32 noundef 17, i32 noundef 0) #4
  %6 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 26
  %7 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %6, ptr noundef %5) #4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @logic_buttons_area_draw(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @ED_region_panels(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef null, i32 noundef -1) #4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @logic_header_area_init(ptr nocapture readnone %0, ptr noundef %1) #0 {
  tail call void @ED_region_header_init(ptr noundef %1) #4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @logic_header_area_draw(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @ED_region_header(ptr noundef %0, ptr noundef %1) #4
  ret void
}

; Function Attrs: optsize
declare void @BKE_spacetype_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: optsize
declare void @WM_operatortype_append(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @LOGIC_OT_properties(ptr noundef) #1

; Function Attrs: optsize
declare void @LOGIC_OT_links_cut(ptr noundef) #1

; Function Attrs: optsize
declare ptr @WM_keymap_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @WM_keymap_add_item(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @WM_keymap_add_menu(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @UI_view2d_region_reinit(ptr noundef, i16 noundef signext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @WM_event_add_keymap_handler(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @UI_ThemeClearColor(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glClear(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @UI_view2d_view_ortho(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @logic_buttons(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @UI_view2d_view_restore(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @UI_view2d_scrollers_calc(ptr noundef, ptr noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @UI_view2d_scrollers_draw(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @UI_view2d_scrollers_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_region_panels_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_region_panels(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_region_header_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_region_header(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind optsize }

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
!9 = !{!10, !16, i64 214}
!10 = !{!"ARegion", !6, i64 0, !6, i64 8, !11, i64 16, !14, i64 176, !14, i64 192, !16, i64 208, !16, i64 210, !16, i64 212, !16, i64 214, !16, i64 216, !16, i64 218, !13, i64 220, !16, i64 224, !16, i64 226, !16, i64 228, !16, i64 230, !16, i64 232, !16, i64 234, !16, i64 236, !16, i64 238, !6, i64 240, !17, i64 248, !17, i64 264, !17, i64 280, !17, i64 296, !17, i64 312, !17, i64 328, !17, i64 344, !6, i64 360, !6, i64 368, !6, i64 376}
!11 = !{!"View2D", !12, i64 0, !12, i64 16, !14, i64 32, !14, i64 48, !14, i64 64, !7, i64 80, !7, i64 88, !13, i64 96, !13, i64 100, !16, i64 104, !16, i64 106, !16, i64 108, !16, i64 110, !16, i64 112, !16, i64 114, !16, i64 116, !16, i64 118, !16, i64 120, !16, i64 122, !16, i64 124, !16, i64 126, !6, i64 128, !15, i64 136, !15, i64 140, !6, i64 144, !6, i64 152}
!12 = !{!"rctf", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12}
!13 = !{!"float", !7, i64 0}
!14 = !{!"rcti", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12}
!15 = !{!"int", !7, i64 0}
!16 = !{!"short", !7, i64 0}
!17 = !{!"ListBase", !6, i64 0, !6, i64 8}
!18 = !{!10, !16, i64 216}
!19 = !{!10, !16, i64 218}
!20 = !{!21, !15, i64 80}
!21 = !{!"SpaceType", !6, i64 0, !6, i64 8, !7, i64 16, !15, i64 80, !15, i64 84, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !17, i64 176, !17, i64 192, !15, i64 208}
!22 = !{!21, !6, i64 88}
!23 = !{!21, !6, i64 96}
!24 = !{!21, !6, i64 104}
!25 = !{!21, !6, i64 136}
!26 = !{!21, !6, i64 144}
!27 = !{!21, !6, i64 152}
!28 = !{!21, !6, i64 128}
!29 = !{!21, !6, i64 168}
!30 = !{!31, !15, i64 16}
!31 = !{!"ARegionType", !6, i64 0, !6, i64 8, !15, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !17, i64 104, !17, i64 120, !17, i64 136, !15, i64 152, !15, i64 156, !15, i64 160, !15, i64 164, !15, i64 168, !16, i64 172, !16, i64 174, !16, i64 176}
!32 = !{!31, !15, i64 168}
!33 = !{!31, !6, i64 24}
!34 = !{!31, !6, i64 40}
!35 = !{!31, !6, i64 48}
!36 = !{!31, !15, i64 160}
!37 = !{!31, !15, i64 164}
!38 = !{!39, !15, i64 32}
!39 = !{!"SpaceLogic", !6, i64 0, !6, i64 8, !17, i64 16, !15, i64 32, !13, i64 36, !7, i64 40, !16, i64 56, !16, i64 58, !15, i64 60, !6, i64 64}
!40 = !{!39, !16, i64 58}
!41 = !{!10, !13, i64 28}
!42 = !{!13, !13, i64 0}
!43 = !{!44, !16, i64 74}
!44 = !{!"ScrArea", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !14, i64 56, !7, i64 72, !7, i64 73, !16, i64 74, !16, i64 76, !16, i64 78, !16, i64 80, !16, i64 82, !16, i64 84, !7, i64 86, !7, i64 87, !6, i64 88, !17, i64 96, !17, i64 112, !17, i64 128, !17, i64 144}
!45 = !{!44, !16, i64 76}
!46 = !{!10, !13, i64 24}
!47 = !{i64 0, i64 4, !42, i64 4, i64 4, !42, i64 8, i64 4, !42, i64 12, i64 4, !42}
!48 = !{!10, !16, i64 120}
!49 = !{!10, !16, i64 126}
!50 = !{!10, !16, i64 124}
!51 = !{!10, !16, i64 132}
!52 = !{!10, !16, i64 128}
!53 = !{!10, !16, i64 208}
!54 = !{!10, !16, i64 210}
!55 = !{!56, !6, i64 296}
!56 = !{!"wmWindowManager", !57, i64 0, !6, i64 120, !6, i64 128, !17, i64 136, !15, i64 152, !16, i64 156, !16, i64 158, !17, i64 160, !17, i64 176, !58, i64 192, !17, i64 232, !17, i64 248, !17, i64 264, !17, i64 280, !6, i64 296, !6, i64 304, !6, i64 312, !17, i64 320, !6, i64 336, !7, i64 344, !7, i64 345}
!57 = !{!"ID", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !7, i64 32, !16, i64 98, !15, i64 100, !15, i64 104, !15, i64 108, !6, i64 112}
!58 = !{!"ReportList", !17, i64 0, !15, i64 16, !15, i64 20, !15, i64 24, !15, i64 28, !6, i64 32}
!59 = !{!60, !15, i64 36}
!60 = !{!"wmNotifier", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !15, i64 32, !15, i64 36, !15, i64 40, !15, i64 44, !15, i64 48, !6, i64 56}
!61 = !{!60, !15, i64 40}
!62 = !{!60, !15, i64 48}
