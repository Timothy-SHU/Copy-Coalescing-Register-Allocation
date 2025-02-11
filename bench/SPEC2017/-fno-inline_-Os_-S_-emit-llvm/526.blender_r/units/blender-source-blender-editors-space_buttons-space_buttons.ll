; ModuleID = 'blender/source/blender/editors/space_buttons/space_buttons.c'
source_filename = "blender/source/blender/editors/space_buttons/space_buttons.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.SpaceType = type { ptr, ptr, [64 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.ARegionType = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i16 }
%struct.SpaceButs = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, i16, i16, i16, i16, i16, i16, i16, i16, i8, [7 x i8], ptr, i32, i32, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.wmNotifier = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr }
%struct.wmWindowManager = type { %struct.ID, ptr, ptr, %struct.ListBase, i32, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ReportList, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, %struct.ListBase, ptr, i8, [7 x i8] }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.ReportList = type { %struct.ListBase, i32, i32, i32, i32, ptr }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [18 x i8] c"spacetype buttons\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"spacetype buttons region\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"initbuts\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"header for buts\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"main area for buts\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [16 x i8] c"Property Editor\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"BUTTONS_OT_toolbox\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"scene\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"render\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"render_layer\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"world\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"object\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"material\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"texture\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"particle\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"physics\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"bone\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"modifier\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"constraint\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"bone_constraint\00", align 1
@str = private unnamed_addr constant [65 x i8] c"Buttons\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_spacetype_buttons() local_unnamed_addr #0 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %2 = tail call ptr %1(i64 noundef 216, ptr noundef nonnull @.str) #5
  %3 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 3
  store i32 4, ptr %3, align 8, !tbaa !9
  %4 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %4, ptr noundef nonnull align 1 dereferenceable(64) @str, i64 noundef 64, i1 false) #5
  %5 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 5
  store ptr @buttons_new, ptr %5, align 8, !tbaa !13
  %6 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 6
  store ptr @buttons_free, ptr %6, align 8, !tbaa !14
  %7 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 7
  store ptr @buttons_init, ptr %7, align 8, !tbaa !15
  %8 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 11
  store ptr @buttons_duplicate, ptr %8, align 8, !tbaa !16
  %9 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 12
  store ptr @buttons_operatortypes, ptr %9, align 8, !tbaa !17
  %10 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 13
  store ptr @buttons_keymap, ptr %10, align 8, !tbaa !18
  %11 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 9
  store ptr @buttons_area_listener, ptr %11, align 8, !tbaa !19
  %12 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 15
  store ptr @buttons_context, ptr %12, align 8, !tbaa !20
  %13 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %14 = tail call ptr %13(i64 noundef 184, ptr noundef nonnull @.str.2) #5
  %15 = getelementptr inbounds %struct.ARegionType, ptr %14, i64 0, i32 2
  store i32 0, ptr %15, align 8, !tbaa !21
  %16 = getelementptr inbounds %struct.ARegionType, ptr %14, i64 0, i32 3
  store ptr @buttons_main_area_init, ptr %16, align 8, !tbaa !24
  %17 = getelementptr inbounds %struct.ARegionType, ptr %14, i64 0, i32 5
  store ptr @buttons_main_area_draw, ptr %17, align 8, !tbaa !25
  %18 = getelementptr inbounds %struct.ARegionType, ptr %14, i64 0, i32 20
  store i32 17, ptr %18, align 8, !tbaa !26
  %19 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 16
  tail call void @BLI_addhead(ptr noundef nonnull %19, ptr noundef %14) #5
  tail call void @buttons_context_register(ptr noundef %14) #5
  %20 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %21 = tail call ptr %20(i64 noundef 184, ptr noundef nonnull @.str.2) #5
  %22 = getelementptr inbounds %struct.ARegionType, ptr %21, i64 0, i32 2
  store i32 1, ptr %22, align 8, !tbaa !21
  %23 = getelementptr inbounds %struct.ARegionType, ptr %21, i64 0, i32 19
  store i32 26, ptr %23, align 4, !tbaa !27
  %24 = getelementptr inbounds %struct.ARegionType, ptr %21, i64 0, i32 20
  store i32 83, ptr %24, align 8, !tbaa !26
  %25 = getelementptr inbounds %struct.ARegionType, ptr %21, i64 0, i32 3
  store ptr @buttons_header_area_init, ptr %25, align 8, !tbaa !24
  %26 = getelementptr inbounds %struct.ARegionType, ptr %21, i64 0, i32 5
  store ptr @buttons_header_area_draw, ptr %26, align 8, !tbaa !25
  tail call void @BLI_addhead(ptr noundef nonnull %19, ptr noundef %21) #5
  tail call void @BKE_spacetype_register(ptr noundef %2) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @buttons_new(ptr nocapture readnone %0) #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %3 = tail call ptr %2(i64 noundef 272, ptr noundef nonnull @.str.3) #5
  %4 = getelementptr inbounds %struct.SpaceButs, ptr %3, i64 0, i32 3
  store i32 4, ptr %4, align 8, !tbaa !28
  %5 = getelementptr inbounds %struct.SpaceButs, ptr %3, i64 0, i32 11
  store i16 2, ptr %5, align 8, !tbaa !34
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %7 = tail call ptr %6(i64 noundef 384, ptr noundef nonnull @.str.4) #5
  %8 = getelementptr inbounds %struct.SpaceButs, ptr %3, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %8, ptr noundef %7) #5
  %9 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 8
  store i16 1, ptr %9, align 2, !tbaa !35
  %10 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 9
  store i16 1, ptr %10, align 8, !tbaa !37
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %12 = tail call ptr %11(i64 noundef 384, ptr noundef nonnull @.str.5) #5
  tail call void @BLI_addtail(ptr noundef nonnull %8, ptr noundef %12) #5
  %13 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 8
  store i16 0, ptr %13, align 2, !tbaa !35
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @buttons_free(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.SpaceButs, ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !38
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !5
  tail call void %6(ptr noundef nonnull %3) #5
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct.SpaceButs, ptr %0, i64 0, i32 21
  %9 = load ptr, ptr %8, align 8, !tbaa !39
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  tail call void @BLI_freelistN(ptr noundef nonnull %9) #5
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !5
  tail call void %12(ptr noundef nonnull %9) #5
  br label %13

13:                                               ; preds = %11, %7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @buttons_init(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !40
  %5 = getelementptr inbounds %struct.SpaceButs, ptr %4, i64 0, i32 11
  %6 = load i16, ptr %5, align 8, !tbaa !34
  switch i16 %6, label %14 [
    i16 3, label %7
    i16 0, label %7
  ]

7:                                                ; preds = %2, %2
  %8 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 10
  %9 = load i16, ptr %8, align 2, !tbaa !42
  %10 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 11
  %11 = load i16, ptr %10, align 4, !tbaa !43
  %12 = icmp sgt i16 %9, %11
  %13 = select i1 %12, i16 1, i16 2
  store i16 %13, ptr %5, align 8, !tbaa !34
  br label %14

14:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @buttons_duplicate(ptr noundef %0) #0 {
  %2 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !5
  %3 = tail call ptr %2(ptr noundef %0) #5
  %4 = getelementptr inbounds %struct.SpaceButs, ptr %3, i64 0, i32 17
  store ptr null, ptr %4, align 8, !tbaa !38
  %5 = getelementptr inbounds %struct.SpaceButs, ptr %3, i64 0, i32 21
  store ptr null, ptr %5, align 8, !tbaa !39
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @buttons_operatortypes() #0 {
  tail call void @WM_operatortype_append(ptr noundef nonnull @BUTTONS_OT_toolbox) #5
  tail call void @WM_operatortype_append(ptr noundef nonnull @BUTTONS_OT_file_browse) #5
  tail call void @WM_operatortype_append(ptr noundef nonnull @BUTTONS_OT_directory_browse) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @buttons_keymap(ptr noundef %0) #0 {
  %2 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef 4, i32 noundef 0) #5
  %3 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef 3, i32 noundef 1, i32 noundef 0, i32 noundef 0) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @buttons_area_listener(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !40
  %6 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 5
  %7 = load i32, ptr %6, align 4, !tbaa !44
  %8 = add i32 %7, -33554432
  %9 = tail call i32 @llvm.fshl.i32(i32 %8, i32 %8, i32 8)
  switch i32 %9, label %101 [
    i32 2, label %10
    i32 3, label %22
    i32 14, label %49
    i32 4, label %53
    i32 11, label %58
    i32 6, label %60
    i32 7, label %62
    i32 9, label %63
    i32 5, label %65
    i32 8, label %65
    i32 13, label %71
    i32 16, label %76
    i32 12, label %81
    i32 15, label %89
    i32 0, label %99
  ]

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %12 = load i32, ptr %11, align 8, !tbaa !46
  switch i32 %12, label %21 [
    i32 262144, label %13
    i32 6029312, label %14
    i32 196608, label %16
    i32 458752, label %18
    i32 917504, label %20
    i32 786432, label %101
  ]

13:                                               ; preds = %10
  tail call fastcc void @buttons_area_redraw(ptr noundef nonnull %1, i16 noundef signext 0) #6
  tail call fastcc void @buttons_area_redraw(ptr noundef nonnull %1, i16 noundef signext 13) #6
  br label %101

14:                                               ; preds = %10
  tail call fastcc void @buttons_area_redraw(ptr noundef nonnull %1, i16 noundef signext 2) #6
  %15 = getelementptr inbounds %struct.SpaceButs, ptr %5, i64 0, i32 12
  store i16 1, ptr %15, align 2, !tbaa !47
  br label %101

16:                                               ; preds = %10
  tail call void @ED_area_tag_redraw(ptr noundef nonnull %1) #5
  %17 = getelementptr inbounds %struct.SpaceButs, ptr %5, i64 0, i32 12
  store i16 1, ptr %17, align 2, !tbaa !47
  br label %101

18:                                               ; preds = %10
  tail call void @ED_area_tag_redraw(ptr noundef nonnull %1) #5
  %19 = getelementptr inbounds %struct.SpaceButs, ptr %5, i64 0, i32 12
  store i16 1, ptr %19, align 2, !tbaa !47
  br label %101

20:                                               ; preds = %10
  tail call fastcc void @buttons_area_redraw(ptr noundef nonnull %1, i16 noundef signext 1) #6
  br label %101

21:                                               ; preds = %10
  tail call void @ED_area_tag_redraw(ptr noundef nonnull %1) #5
  br label %101

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %24 = load i32, ptr %23, align 8, !tbaa !46
  %25 = add i32 %24, -1179648
  %26 = tail call i32 @llvm.fshl.i32(i32 %25, i32 %25, i32 16)
  switch i32 %26, label %48 [
    i32 0, label %27
    i32 2, label %28
    i32 3, label %29
    i32 4, label %29
    i32 6, label %30
    i32 8, label %37
    i32 9, label %38
    i32 5, label %45
    i32 12, label %46
    i32 13, label %46
    i32 14, label %46
    i32 15, label %46
  ]

27:                                               ; preds = %22
  tail call fastcc void @buttons_area_redraw(ptr noundef nonnull %1, i16 noundef signext 3) #6
  tail call fastcc void @buttons_area_redraw(ptr noundef nonnull %1, i16 noundef signext 4) #6
  br label %101

28:                                               ; preds = %22
  tail call fastcc void @buttons_area_redraw(ptr noundef nonnull %1, i16 noundef signext 4) #6
  br label %101

29:                                               ; preds = %22, %22
  tail call fastcc void @buttons_area_redraw(ptr noundef nonnull %1, i16 noundef signext 9) #6
  tail call fastcc void @buttons_area_redraw(ptr noundef nonnull %1, i16 noundef signext 12) #6
  tail call fastcc void @buttons_area_redraw(ptr noundef nonnull %1, i16 noundef signext 4) #6
  br label %101

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 8
  %32 = load i32, ptr %31, align 8, !tbaa !48
  %33 = icmp eq i32 %32, 5
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  tail call void @ED_area_tag_redraw(ptr noundef nonnull %1) #5
  br label %36

35:                                               ; preds = %30
  tail call fastcc void @buttons_area_redraw(ptr noundef nonnull %1, i16 noundef signext 10) #6
  br label %36

36:                                               ; preds = %35, %34
  tail call fastcc void @buttons_area_redraw(ptr noundef nonnull %1, i16 noundef signext 8) #6
  br label %101

37:                                               ; preds = %22
  tail call fastcc void @buttons_area_redraw(ptr noundef nonnull %1, i16 noundef signext 11) #6
  tail call fastcc void @buttons_area_redraw(ptr noundef nonnull %1, i16 noundef signext 12) #6
  br label %101

38:                                               ; preds = %22
  %39 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 8
  %40 = load i32, ptr %39, align 8, !tbaa !48
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  tail call fastcc void @buttons_area_redraw(ptr noundef nonnull %1, i16 noundef signext 7) #6
  br label %43

43:                                               ; preds = %42, %38
  %44 = getelementptr inbounds %struct.SpaceButs, ptr %5, i64 0, i32 12
  store i16 1, ptr %44, align 2, !tbaa !47
  br label %101

45:                                               ; preds = %22
  tail call fastcc void @buttons_area_redraw(ptr noundef nonnull %1, i16 noundef signext 3) #6
  tail call fastcc void @buttons_area_redraw(ptr noundef nonnull %1, i16 noundef signext 4) #6
  tail call fastcc void @buttons_area_redraw(ptr noundef nonnull %1, i16 noundef signext 8) #6
  br label %101

46:                                               ; preds = %22, %22, %22, %22
  %47 = getelementptr inbounds %struct.SpaceButs, ptr %5, i64 0, i32 12
  store i16 1, ptr %47, align 2, !tbaa !47
  br label %101

48:                                               ; preds = %22
  tail call void @ED_area_tag_redraw(ptr noundef nonnull %1) #5
  br label %101

49:                                               ; preds = %3
  %50 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %51 = load i32, ptr %50, align 8, !tbaa !46
  switch i32 %51, label %101 [
    i32 5898240, label %52
    i32 5963776, label %52
    i32 6029312, label %52
  ]

52:                                               ; preds = %49, %49, %49
  tail call void @ED_area_tag_redraw(ptr noundef nonnull %1) #5
  br label %101

53:                                               ; preds = %3
  tail call void @ED_area_tag_redraw(ptr noundef nonnull %1) #5
  %54 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %55 = load i32, ptr %54, align 8, !tbaa !46
  switch i32 %55, label %101 [
    i32 1966080, label %56
    i32 2031616, label %56
    i32 2097152, label %56
    i32 2162688, label %56
    i32 327680, label %56
  ]

56:                                               ; preds = %53, %53, %53, %53, %53
  %57 = getelementptr inbounds %struct.SpaceButs, ptr %5, i64 0, i32 12
  store i16 1, ptr %57, align 2, !tbaa !47
  br label %101

58:                                               ; preds = %3
  tail call fastcc void @buttons_area_redraw(ptr noundef nonnull %1, i16 noundef signext 2) #6
  %59 = getelementptr inbounds %struct.SpaceButs, ptr %5, i64 0, i32 12
  store i16 1, ptr %59, align 2, !tbaa !47
  br label %101

60:                                               ; preds = %3
  tail call fastcc void @buttons_area_redraw(ptr noundef nonnull %1, i16 noundef signext 4) #6
  %61 = getelementptr inbounds %struct.SpaceButs, ptr %5, i64 0, i32 12
  store i16 1, ptr %61, align 2, !tbaa !47
  br label %101

62:                                               ; preds = %3
  tail call fastcc void @buttons_area_redraw(ptr noundef nonnull %1, i16 noundef signext 3) #6
  br label %101

63:                                               ; preds = %3
  tail call fastcc void @buttons_area_redraw(ptr noundef nonnull %1, i16 noundef signext 6) #6
  %64 = getelementptr inbounds %struct.SpaceButs, ptr %5, i64 0, i32 12
  store i16 1, ptr %64, align 2, !tbaa !47
  br label %101

65:                                               ; preds = %3, %3
  %66 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 8
  %67 = load i32, ptr %66, align 8, !tbaa !48
  %68 = icmp eq i32 %67, 7
  br i1 %68, label %101, label %69

69:                                               ; preds = %65
  tail call void @ED_area_tag_redraw(ptr noundef nonnull %1) #5
  %70 = getelementptr inbounds %struct.SpaceButs, ptr %5, i64 0, i32 12
  store i16 1, ptr %70, align 2, !tbaa !47
  br label %101

71:                                               ; preds = %3
  %72 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %73 = load i32, ptr %72, align 8, !tbaa !46
  %74 = icmp eq i32 %73, 655360
  br i1 %74, label %75, label %101

75:                                               ; preds = %71
  tail call void @ED_area_tag_redraw(ptr noundef nonnull %1) #5
  br label %101

76:                                               ; preds = %3
  %77 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 8
  %78 = load i32, ptr %77, align 8, !tbaa !48
  %79 = icmp eq i32 %78, 5
  br i1 %79, label %80, label %101

80:                                               ; preds = %76
  tail call void @ED_area_tag_redraw(ptr noundef nonnull %1) #5
  br label %101

81:                                               ; preds = %3
  %82 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %83 = load i32, ptr %82, align 8, !tbaa !46
  %84 = icmp eq i32 %83, 4587520
  br i1 %84, label %85, label %101

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 8
  %87 = load i32, ptr %86, align 8, !tbaa !48
  switch i32 %87, label %101 [
    i32 1, label %88
    i32 3, label %88
    i32 4, label %88
  ]

88:                                               ; preds = %85, %85, %85
  tail call void @ED_area_tag_redraw(ptr noundef nonnull %1) #5
  br label %101

89:                                               ; preds = %3
  %90 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 8
  %91 = load i32, ptr %90, align 8, !tbaa !48
  %92 = icmp eq i32 %91, 6
  br i1 %92, label %93, label %101

93:                                               ; preds = %89
  tail call void @ED_area_tag_redraw(ptr noundef nonnull %1) #5
  %94 = getelementptr inbounds %struct.SpaceButs, ptr %5, i64 0, i32 7
  %95 = load i16, ptr %94, align 8, !tbaa !49
  %96 = icmp eq i16 %95, 6
  br i1 %96, label %97, label %101

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.SpaceButs, ptr %5, i64 0, i32 12
  store i16 1, ptr %98, align 2, !tbaa !47
  br label %101

99:                                               ; preds = %3
  tail call void @ED_area_tag_redraw(ptr noundef nonnull %1) #5
  %100 = getelementptr inbounds %struct.SpaceButs, ptr %5, i64 0, i32 12
  store i16 1, ptr %100, align 2, !tbaa !47
  br label %101

101:                                              ; preds = %85, %89, %97, %93, %81, %88, %76, %80, %71, %75, %65, %69, %56, %53, %52, %49, %27, %28, %29, %36, %37, %43, %45, %46, %48, %13, %14, %16, %18, %20, %10, %21, %3, %99, %63, %62, %60, %58
  %102 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %103 = load i32, ptr %102, align 8, !tbaa !46
  %104 = icmp eq i32 %103, 1638400
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  tail call void @ED_area_tag_redraw(ptr noundef nonnull %1) #5
  br label %106

106:                                              ; preds = %105, %101
  ret void
}

; Function Attrs: optsize
declare i32 @buttons_context(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @buttons_main_area_init(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @ED_region_panels_init(ptr noundef %0, ptr noundef %1) #5
  %3 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %4 = load ptr, ptr %3, align 8, !tbaa !50
  %5 = tail call ptr @WM_keymap_find(ptr noundef %4, ptr noundef nonnull @.str.6, i32 noundef 4, i32 noundef 0) #5
  %6 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 26
  %7 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %6, ptr noundef %5) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @buttons_main_area_draw(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @CTX_wm_space_buts(ptr noundef %0) #5
  %4 = getelementptr inbounds %struct.SpaceButs, ptr %3, i64 0, i32 11
  %5 = load i16, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i16 %5, 2
  %7 = zext i1 %6 to i32
  tail call void @buttons_context_compute(ptr noundef %0, ptr noundef %3) #5
  %8 = getelementptr inbounds %struct.SpaceButs, ptr %3, i64 0, i32 7
  %9 = load i16, ptr %8, align 8, !tbaa !49
  switch i16 %9, label %24 [
    i16 1, label %10
    i16 0, label %11
    i16 13, label %12
    i16 2, label %13
    i16 3, label %14
    i16 4, label %15
    i16 5, label %16
    i16 6, label %17
    i16 7, label %18
    i16 8, label %19
    i16 9, label %20
    i16 10, label %21
    i16 11, label %22
    i16 12, label %23
  ]

10:                                               ; preds = %2
  tail call void @ED_region_panels(ptr noundef %0, ptr noundef %1, i32 noundef %7, ptr noundef nonnull @.str.8, i32 noundef 1) #5
  br label %24

11:                                               ; preds = %2
  tail call void @ED_region_panels(ptr noundef %0, ptr noundef %1, i32 noundef %7, ptr noundef nonnull @.str.9, i32 noundef 0) #5
  br label %24

12:                                               ; preds = %2
  tail call void @ED_region_panels(ptr noundef %0, ptr noundef %1, i32 noundef %7, ptr noundef nonnull @.str.10, i32 noundef 13) #5
  br label %24

13:                                               ; preds = %2
  tail call void @ED_region_panels(ptr noundef %0, ptr noundef %1, i32 noundef %7, ptr noundef nonnull @.str.11, i32 noundef 2) #5
  br label %24

14:                                               ; preds = %2
  tail call void @ED_region_panels(ptr noundef %0, ptr noundef %1, i32 noundef %7, ptr noundef nonnull @.str.12, i32 noundef 3) #5
  br label %24

15:                                               ; preds = %2
  tail call void @ED_region_panels(ptr noundef %0, ptr noundef %1, i32 noundef %7, ptr noundef nonnull @.str.13, i32 noundef 4) #5
  br label %24

16:                                               ; preds = %2
  tail call void @ED_region_panels(ptr noundef %0, ptr noundef %1, i32 noundef %7, ptr noundef nonnull @.str.14, i32 noundef 5) #5
  br label %24

17:                                               ; preds = %2
  tail call void @ED_region_panels(ptr noundef %0, ptr noundef %1, i32 noundef %7, ptr noundef nonnull @.str.15, i32 noundef 6) #5
  br label %24

18:                                               ; preds = %2
  tail call void @ED_region_panels(ptr noundef %0, ptr noundef %1, i32 noundef %7, ptr noundef nonnull @.str.16, i32 noundef 7) #5
  br label %24

19:                                               ; preds = %2
  tail call void @ED_region_panels(ptr noundef %0, ptr noundef %1, i32 noundef %7, ptr noundef nonnull @.str.17, i32 noundef 8) #5
  br label %24

20:                                               ; preds = %2
  tail call void @ED_region_panels(ptr noundef %0, ptr noundef %1, i32 noundef %7, ptr noundef nonnull @.str.18, i32 noundef 9) #5
  br label %24

21:                                               ; preds = %2
  tail call void @ED_region_panels(ptr noundef %0, ptr noundef %1, i32 noundef %7, ptr noundef nonnull @.str.19, i32 noundef 10) #5
  br label %24

22:                                               ; preds = %2
  tail call void @ED_region_panels(ptr noundef %0, ptr noundef %1, i32 noundef %7, ptr noundef nonnull @.str.20, i32 noundef 11) #5
  br label %24

23:                                               ; preds = %2
  tail call void @ED_region_panels(ptr noundef %0, ptr noundef %1, i32 noundef %7, ptr noundef nonnull @.str.21, i32 noundef 12) #5
  br label %24

24:                                               ; preds = %2, %11, %13, %15, %17, %19, %21, %23, %22, %20, %18, %16, %14, %12, %10
  %25 = getelementptr inbounds %struct.SpaceButs, ptr %3, i64 0, i32 10
  store i16 0, ptr %25, align 2, !tbaa !54
  %26 = load i16, ptr %8, align 8, !tbaa !49
  %27 = getelementptr inbounds %struct.SpaceButs, ptr %3, i64 0, i32 8
  store i16 %26, ptr %27, align 2, !tbaa !55
  ret void
}

; Function Attrs: optsize
declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @buttons_context_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @buttons_header_area_init(ptr nocapture readnone %0, ptr noundef %1) #0 {
  tail call void @ED_region_header_init(ptr noundef %1) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @buttons_header_area_draw(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @CTX_wm_space_buts(ptr noundef %0) #5
  tail call void @buttons_context_compute(ptr noundef %0, ptr noundef %3) #5
  tail call void @ED_region_header(ptr noundef %0, ptr noundef %1) #5
  ret void
}

; Function Attrs: optsize
declare void @BKE_spacetype_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_operatortype_append(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BUTTONS_OT_toolbox(ptr noundef) #2

; Function Attrs: optsize
declare void @BUTTONS_OT_file_browse(ptr noundef) #2

; Function Attrs: optsize
declare void @BUTTONS_OT_directory_browse(ptr noundef) #2

; Function Attrs: optsize
declare ptr @WM_keymap_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_keymap_add_item(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @buttons_area_redraw(ptr noundef %0, i16 noundef signext %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !40
  %5 = getelementptr inbounds %struct.SpaceButs, ptr %4, i64 0, i32 7
  %6 = load i16, ptr %5, align 8, !tbaa !49
  %7 = icmp eq i16 %6, %1
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  tail call void @ED_area_tag_redraw(ptr noundef nonnull %0) #5
  br label %9

9:                                                ; preds = %8, %2
  ret void
}

; Function Attrs: optsize
declare void @ED_area_tag_redraw(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_panels_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_event_add_keymap_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_space_buts(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @buttons_context_compute(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_panels(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_header_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_header(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }

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
!21 = !{!22, !11, i64 16}
!22 = !{!"ARegionType", !6, i64 0, !6, i64 8, !11, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !12, i64 104, !12, i64 120, !12, i64 136, !11, i64 152, !11, i64 156, !11, i64 160, !11, i64 164, !11, i64 168, !23, i64 172, !23, i64 174, !23, i64 176}
!23 = !{!"short", !7, i64 0}
!24 = !{!22, !6, i64 24}
!25 = !{!22, !6, i64 40}
!26 = !{!22, !11, i64 168}
!27 = !{!22, !11, i64 164}
!28 = !{!29, !11, i64 32}
!29 = !{!"SpaceButs", !6, i64 0, !6, i64 8, !12, i64 16, !11, i64 32, !30, i64 36, !7, i64 40, !31, i64 56, !23, i64 216, !23, i64 218, !23, i64 220, !23, i64 222, !23, i64 224, !23, i64 226, !23, i64 228, !23, i64 230, !7, i64 232, !7, i64 233, !6, i64 240, !11, i64 248, !11, i64 252, !6, i64 256, !6, i64 264}
!30 = !{!"float", !7, i64 0}
!31 = !{!"View2D", !32, i64 0, !32, i64 16, !33, i64 32, !33, i64 48, !33, i64 64, !7, i64 80, !7, i64 88, !30, i64 96, !30, i64 100, !23, i64 104, !23, i64 106, !23, i64 108, !23, i64 110, !23, i64 112, !23, i64 114, !23, i64 116, !23, i64 118, !23, i64 120, !23, i64 122, !23, i64 124, !23, i64 126, !6, i64 128, !11, i64 136, !11, i64 140, !6, i64 144, !6, i64 152}
!32 = !{!"rctf", !30, i64 0, !30, i64 4, !30, i64 8, !30, i64 12}
!33 = !{!"rcti", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12}
!34 = !{!29, !23, i64 224}
!35 = !{!36, !23, i64 214}
!36 = !{!"ARegion", !6, i64 0, !6, i64 8, !31, i64 16, !33, i64 176, !33, i64 192, !23, i64 208, !23, i64 210, !23, i64 212, !23, i64 214, !23, i64 216, !23, i64 218, !30, i64 220, !23, i64 224, !23, i64 226, !23, i64 228, !23, i64 230, !23, i64 232, !23, i64 234, !23, i64 236, !23, i64 238, !6, i64 240, !12, i64 248, !12, i64 264, !12, i64 280, !12, i64 296, !12, i64 312, !12, i64 328, !12, i64 344, !6, i64 360, !6, i64 368, !6, i64 376}
!37 = !{!36, !23, i64 216}
!38 = !{!29, !6, i64 240}
!39 = !{!29, !6, i64 264}
!40 = !{!41, !6, i64 96}
!41 = !{!"ScrArea", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !33, i64 56, !7, i64 72, !7, i64 73, !23, i64 74, !23, i64 76, !23, i64 78, !23, i64 80, !23, i64 82, !23, i64 84, !7, i64 86, !7, i64 87, !6, i64 88, !12, i64 96, !12, i64 112, !12, i64 128, !12, i64 144}
!42 = !{!41, !23, i64 74}
!43 = !{!41, !23, i64 76}
!44 = !{!45, !11, i64 36}
!45 = !{!"wmNotifier", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !6, i64 56}
!46 = !{!45, !11, i64 40}
!47 = !{!29, !23, i64 226}
!48 = !{!45, !11, i64 48}
!49 = !{!29, !23, i64 216}
!50 = !{!51, !6, i64 296}
!51 = !{!"wmWindowManager", !52, i64 0, !6, i64 120, !6, i64 128, !12, i64 136, !11, i64 152, !23, i64 156, !23, i64 158, !12, i64 160, !12, i64 176, !53, i64 192, !12, i64 232, !12, i64 248, !12, i64 264, !12, i64 280, !6, i64 296, !6, i64 304, !6, i64 312, !12, i64 320, !6, i64 336, !7, i64 344, !7, i64 345}
!52 = !{!"ID", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !7, i64 32, !23, i64 98, !11, i64 100, !11, i64 104, !11, i64 108, !6, i64 112}
!53 = !{!"ReportList", !12, i64 0, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !6, i64 32}
!54 = !{!29, !23, i64 222}
!55 = !{!29, !23, i64 218}
