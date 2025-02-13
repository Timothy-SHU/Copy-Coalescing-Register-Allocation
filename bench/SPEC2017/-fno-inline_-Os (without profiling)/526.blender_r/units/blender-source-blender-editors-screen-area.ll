; ModuleID = 'blender/source/blender/editors/screen/area.c'
source_filename = "blender/source/blender/editors/screen/area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.StructRNA = type opaque
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.wmNotifier = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.ARegionType = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i16 }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.SpaceType = type { ptr, ptr, [64 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, i32 }
%struct.wmWindow = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, ptr, ptr, ptr, i32, i32, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.bScreen = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.AZone = type { ptr, ptr, ptr, i32, i32, i16, i16, i16, i16, %struct.rcti, float }
%struct.ScrVert = type { ptr, ptr, ptr, %struct.vec2s, i16, i16 }
%struct.vec2s = type { i16, i16 }
%struct.wmWindowManager = type { %struct.ID, ptr, ptr, %struct.ListBase, i32, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ReportList, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, %struct.ListBase, ptr, i8, [7 x i8] }
%struct.ReportList = type { %struct.ListBase, i32, i32, i32, i32, ptr }
%struct.SpaceLink = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16] }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.PanelType = type { ptr, ptr, [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], i32, i32, i32, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.LinkNode = type { ptr, ptr }
%struct.uiStyle = type { ptr, ptr, [64 x i8], %struct.uiFontStyle, %struct.uiFontStyle, %struct.uiFontStyle, %struct.uiFontStyle, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.uiFontStyle = type { i16, i16, i16, [6 x i8], i16, i16, i16, i16, i16, i16, float, float }
%struct.Panel = type { ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], [64 x i8], i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, ptr, ptr }
%struct.Header = type { ptr, ptr }
%struct.HeaderType = type { ptr, ptr, [64 x i8], i32, ptr, %struct.ExtensionRNA }

@U = external local_unnamed_addr global %struct.UserDef, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [12 x i8] c"headerprint\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"addscrarea\00", align 1
@RNA_Area = external global %struct.StructRNA, align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"View2D Buttons List\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.6 = private unnamed_addr constant [11 x i8] c"actionzone\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"fullscreen action zone\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"View2D\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"Markers\00", align 1
@ed_default_handlers.rect = internal global %struct.rcti { i32 0, i32 10000, i32 0, i32 -1 }, align 4
@.str.11 = private unnamed_addr constant [10 x i8] c"Animation\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"Frames\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"Grease Pencil\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"Header\00", align 1
@str = private unnamed_addr constant [24 x i8] c"region quadsplit failed\00", align 1
@switch.table.region_draw_azone_tab_plus = private unnamed_addr constant [4 x i32] [i32 6, i32 9, i32 3, i32 12], align 4
@switch.table.region_azone_add = private unnamed_addr constant [4 x i32] [i32 3, i32 2, i32 0, i32 1], align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_region_pixelspace(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @wmOrtho2_region_pixelspace(ptr noundef %0) #16
  tail call void @glLoadIdentity() #16
  ret void
}

; Function Attrs: optsize
declare void @wmOrtho2_region_pixelspace(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glLoadIdentity() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_region_do_listen(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !5
  switch i32 %6, label %12 [
    i32 16777216, label %7
    i32 33554432, label %11
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !11
  %10 = icmp eq i32 %9, 65536
  br i1 %10, label %11, label %12

11:                                               ; preds = %4, %7
  tail call void @ED_region_tag_redraw(ptr noundef %2) #17
  br label %12

12:                                               ; preds = %11, %7, %4
  %13 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 20
  %14 = load ptr, ptr %13, align 8, !tbaa !12
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.ARegionType, ptr %14, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !20
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void %18(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3) #16
  br label %21

21:                                               ; preds = %20, %16, %12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @ED_region_tag_redraw(ptr noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 14
  %5 = load i16, ptr %4, align 4, !tbaa !22
  %6 = and i16 %5, 4
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = and i16 %5, -8
  %10 = or disjoint i16 %9, 1
  store i16 %10, ptr %4, align 4, !tbaa !22
  %11 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  br label %12

12:                                               ; preds = %8, %3, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_area_do_listen(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 18
  %5 = load ptr, ptr %4, align 8, !tbaa !23
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.SpaceType, ptr %5, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !25
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void %9(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2) #16
  br label %12

12:                                               ; preds = %11, %7, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_area_do_refresh(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 18
  %4 = load ptr, ptr %3, align 8, !tbaa !23
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.SpaceType, ptr %4, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !27
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void %8(ptr noundef %0, ptr noundef nonnull %1) #16
  br label %11

11:                                               ; preds = %10, %6, %2
  %12 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 13
  store i16 0, ptr %12, align 8, !tbaa !28
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_region_set(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_window(ptr noundef %0) #16
  %4 = tail call ptr @CTX_wm_area(ptr noundef %0) #16
  %5 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 4
  %6 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !29
  %7 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 7
  %8 = load i16, ptr %7, align 4, !tbaa !31
  %9 = sext i16 %8 to i32
  tail call void @wmSubWindowScissorSet(ptr noundef %3, i32 noundef %9, ptr noundef nonnull %5, i8 noundef zeroext 1) #16
  %10 = icmp eq ptr %4, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.ScrArea, ptr %4, i64 0, i32 8
  %13 = load i8, ptr %12, align 8, !tbaa !32
  %14 = zext i8 %13 to i32
  br label %15

15:                                               ; preds = %2, %11
  %16 = phi i32 [ %14, %11 ], [ 0, %2 ]
  %17 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 20
  %18 = load ptr, ptr %17, align 8, !tbaa !12
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.ARegionType, ptr %18, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !33
  br label %23

23:                                               ; preds = %15, %20
  %24 = phi i32 [ %22, %20 ], [ 0, %15 ]
  tail call void @UI_SetTheme(i32 noundef %16, i32 noundef %24) #16
  tail call void @ED_region_pixelspace(ptr noundef nonnull %1) #17
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: optsize
declare void @wmSubWindowScissorSet(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @UI_SetTheme(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_region_do_draw(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_window(ptr noundef %0) #16
  %4 = tail call ptr @CTX_wm_area(ptr noundef %0) #16
  %5 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 20
  %6 = load ptr, ptr %5, align 8, !tbaa !12
  %7 = getelementptr inbounds %struct.ARegionType, ptr %6, i64 0, i32 21
  %8 = load i16, ptr %7, align 4, !tbaa !34
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %10, label %60

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 4
  %12 = load i32, ptr %11, align 8, !tbaa !35
  %13 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 4, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !36
  %15 = icmp eq i32 %12, %14
  %16 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  br i1 %15, label %17, label %18

17:                                               ; preds = %10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %16, i64 16, i1 false), !tbaa.struct !29
  br label %20

18:                                               ; preds = %10
  %19 = tail call zeroext i8 @BLI_rcti_isect(ptr noundef nonnull %16, ptr noundef nonnull %11, ptr noundef nonnull %11) #16
  br label %20

20:                                               ; preds = %18, %17
  %21 = phi i8 [ 1, %17 ], [ 0, %18 ]
  %22 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 14
  %23 = load i16, ptr %22, align 4, !tbaa !22
  %24 = or i16 %23, 4
  store i16 %24, ptr %22, align 4, !tbaa !22
  %25 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 7
  %26 = load i16, ptr %25, align 4, !tbaa !31
  %27 = sext i16 %26 to i32
  tail call void @wmSubWindowScissorSet(ptr noundef %3, i32 noundef %27, ptr noundef nonnull %11, i8 noundef zeroext %21) #16
  tail call void @wmOrtho2_region_ui(ptr noundef nonnull %1) #16
  %28 = icmp eq ptr %4, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.ScrArea, ptr %4, i64 0, i32 8
  %31 = load i8, ptr %30, align 8, !tbaa !32
  %32 = zext i8 %31 to i32
  br label %33

33:                                               ; preds = %20, %29
  %34 = phi i32 [ %32, %29 ], [ 0, %20 ]
  %35 = getelementptr inbounds %struct.ARegionType, ptr %6, i64 0, i32 2
  %36 = load i32, ptr %35, align 8, !tbaa !33
  tail call void @UI_SetTheme(i32 noundef %34, i32 noundef %36) #16
  %37 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 29
  %38 = load ptr, ptr %37, align 8, !tbaa !37
  %39 = icmp eq ptr %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %33
  tail call void @UI_ThemeClearColor(i32 noundef 10) #16
  tail call void @glClear(i32 noundef 16384) #16
  tail call void @UI_ThemeColor(i32 noundef 3) #16
  %41 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !38
  %42 = sitofp i16 %41 to float
  %43 = fmul float %42, 0x3FD99999A0000000
  %44 = load ptr, ptr %37, align 8, !tbaa !37
  tail call void @BLF_draw_default(float noundef %42, float noundef %43, float noundef 0.000000e+00, ptr noundef %44, i64 noundef 1024) #16
  br label %50

45:                                               ; preds = %33
  %46 = getelementptr inbounds %struct.ARegionType, ptr %6, i64 0, i32 5
  %47 = load ptr, ptr %46, align 8, !tbaa !42
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  tail call void %47(ptr noundef %0, ptr noundef nonnull %1) #16
  br label %50

50:                                               ; preds = %45, %49, %40
  tail call void @ED_region_pixelspace(ptr noundef nonnull %1) #17
  tail call void @ED_region_draw_cb_draw(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 1) #16
  tail call fastcc void @region_draw_azones(ptr noundef %4, ptr noundef nonnull %1) #17
  store i16 0, ptr %22, align 4, !tbaa !22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  %51 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 21
  tail call void @uiFreeInactiveBlocks(ptr noundef %0, ptr noundef nonnull %51) #16
  br i1 %28, label %60, label %52

52:                                               ; preds = %50
  %53 = getelementptr inbounds %struct.wmWindow, ptr %3, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !43
  %55 = getelementptr inbounds %struct.bScreen, ptr %54, i64 0, i32 9
  %56 = load i16, ptr %55, align 8, !tbaa !45
  %57 = icmp eq i16 %56, 2
  br i1 %57, label %60, label %58

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  tail call fastcc void @region_draw_emboss(ptr noundef nonnull %1, ptr noundef nonnull %59) #17
  br label %60

60:                                               ; preds = %50, %52, %58, %2
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BLI_rcti_isect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @wmOrtho2_region_ui(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @UI_ThemeClearColor(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glClear(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @UI_ThemeColor(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLF_draw_default(float noundef, float noundef, float noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_region_draw_cb_draw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @region_draw_azones(ptr noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.rcti, align 4
  %4 = icmp eq ptr %0, null
  br i1 %4, label %69, label %5

5:                                                ; preds = %2
  tail call void @glEnable(i32 noundef 3042) #16
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #16
  tail call void @glPushMatrix() #16
  %6 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !48
  %8 = sub nsw i32 0, %7
  %9 = sitofp i32 %8 to float
  %10 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !49
  %12 = sub nsw i32 0, %11
  %13 = sitofp i32 %12 to float
  tail call void @glTranslatef(float noundef %9, float noundef %13, float noundef 0.000000e+00) #16
  %14 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 22
  %15 = load ptr, ptr %14, align 8, !tbaa !50
  %16 = icmp eq ptr %15, null
  br i1 %16, label %68, label %17

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 4
  br label %19

19:                                               ; preds = %17, %65
  %20 = phi ptr [ %15, %17 ], [ %66, %65 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #18
  %21 = getelementptr inbounds %struct.AZone, ptr %20, i64 0, i32 5
  %22 = load i16, ptr %21, align 8, !tbaa !51
  %23 = sext i16 %22 to i32
  %24 = getelementptr inbounds %struct.AZone, ptr %20, i64 0, i32 7
  %25 = load i16, ptr %24, align 4, !tbaa !53
  %26 = sext i16 %25 to i32
  %27 = getelementptr inbounds %struct.AZone, ptr %20, i64 0, i32 6
  %28 = load i16, ptr %27, align 2, !tbaa !54
  %29 = sext i16 %28 to i32
  %30 = getelementptr inbounds %struct.AZone, ptr %20, i64 0, i32 8
  %31 = load i16, ptr %30, align 2, !tbaa !55
  %32 = sext i16 %31 to i32
  call void @BLI_rcti_init(ptr noundef nonnull %3, i32 noundef %23, i32 noundef %26, i32 noundef %29, i32 noundef %32) #16
  %33 = call zeroext i8 @BLI_rcti_isect(ptr noundef nonnull %18, ptr noundef nonnull %3, ptr noundef null) #16
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %65, label %35

35:                                               ; preds = %19
  %36 = getelementptr inbounds %struct.AZone, ptr %20, i64 0, i32 3
  %37 = load i32, ptr %36, align 8, !tbaa !56
  switch i32 %37, label %65 [
    i32 1, label %38
    i32 2, label %43
    i32 3, label %58
  ]

38:                                               ; preds = %35
  %39 = load i16, ptr %21, align 8, !tbaa !51
  %40 = load i16, ptr %27, align 2, !tbaa !54
  %41 = load i16, ptr %24, align 4, !tbaa !53
  %42 = load i16, ptr %30, align 2, !tbaa !55
  call fastcc void @area_draw_azone(i16 noundef signext %39, i16 noundef signext %40, i16 noundef signext %41, i16 noundef signext %42) #17
  br label %65

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct.AZone, ptr %20, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !57
  %46 = icmp eq ptr %45, null
  br i1 %46, label %65, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.ARegion, ptr %45, i64 0, i32 10
  %49 = load i16, ptr %48, align 2, !tbaa !58
  %50 = and i16 %49, 3
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %65, label %52

52:                                               ; preds = %47
  %53 = load i16, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 14), align 4, !tbaa !59
  switch i16 %53, label %57 [
    i16 3, label %54
    i16 2, label %55
    i16 1, label %56
  ]

54:                                               ; preds = %52
  call fastcc void @region_draw_azone_icon(ptr noundef nonnull %20) #17
  br label %65

55:                                               ; preds = %52
  call fastcc void @region_draw_azone_tria(ptr noundef nonnull %20) #17
  br label %65

56:                                               ; preds = %52
  call fastcc void @region_draw_azone_tab(ptr noundef nonnull %20) #17
  br label %65

57:                                               ; preds = %52
  call fastcc void @region_draw_azone_tab_plus(ptr noundef nonnull %20) #17
  br label %65

58:                                               ; preds = %35
  %59 = load i16, ptr %21, align 8, !tbaa !51
  %60 = load i16, ptr %27, align 2, !tbaa !54
  %61 = load i16, ptr %24, align 4, !tbaa !53
  %62 = load i16, ptr %30, align 2, !tbaa !55
  %63 = getelementptr inbounds %struct.AZone, ptr %20, i64 0, i32 10
  %64 = load float, ptr %63, align 8, !tbaa !61
  call fastcc void @area_draw_azone_fullscreen(i16 noundef signext %59, i16 noundef signext %60, i16 noundef signext %61, i16 noundef signext %62, float noundef %64) #17
  br label %65

65:                                               ; preds = %35, %38, %58, %43, %54, %56, %57, %55, %47, %19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #18
  %66 = load ptr, ptr %20, align 8, !tbaa !50
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %19, !llvm.loop !62

68:                                               ; preds = %65, %5
  call void @glPopMatrix() #16
  call void @glDisable(i32 noundef 3042) #16
  br label %69

69:                                               ; preds = %2, %68
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: optsize
declare void @uiFreeInactiveBlocks(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @region_draw_emboss(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load i32, ptr %1, align 4, !tbaa !64
  %4 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !48
  %6 = sub nsw i32 %3, %5
  %7 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !65
  %9 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !49
  %11 = sub nsw i32 %8, %10
  %12 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !66
  %14 = sub nsw i32 %13, %5
  %15 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !67
  %17 = sub nsw i32 %16, %10
  tail call void @glEnable(i32 noundef 3042) #16
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #16
  tail call void @glColor4ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 30) #16
  tail call void @sdrawline(i32 noundef %14, i32 noundef %11, i32 noundef %14, i32 noundef %17) #16
  tail call void @glColor4ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 30) #16
  tail call void @sdrawline(i32 noundef %6, i32 noundef %11, i32 noundef %14, i32 noundef %11) #16
  tail call void @glColor4ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext 30) #16
  tail call void @sdrawline(i32 noundef %6, i32 noundef %17, i32 noundef %14, i32 noundef %17) #16
  tail call void @glColor4ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext 30) #16
  tail call void @sdrawline(i32 noundef %6, i32 noundef %11, i32 noundef %6, i32 noundef %17) #16
  tail call void @glDisable(i32 noundef 3042) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @ED_region_tag_redraw_overlay(ptr noundef writeonly %0) local_unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 15
  store i16 1, ptr %4, align 2, !tbaa !68
  br label %5

5:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @ED_region_tag_refresh_ui(ptr noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 14
  %5 = load i16, ptr %4, align 4, !tbaa !22
  %6 = or i16 %5, 8
  store i16 %6, ptr %4, align 4, !tbaa !22
  br label %7

7:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_region_tag_redraw_partial(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %23, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 14
  %6 = load i16, ptr %5, align 4, !tbaa !22
  %7 = zext i16 %6 to i32
  %8 = and i32 %7, 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %4
  %11 = and i32 %7, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = or i16 %6, 2
  store i16 %14, ptr %5, align 4, !tbaa !22
  %15 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !29
  br label %23

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 4
  %18 = load i32, ptr %17, align 8, !tbaa !35
  %19 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 4, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !36
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  tail call void @BLI_rcti_union(ptr noundef nonnull %17, ptr noundef %1) #16
  br label %23

23:                                               ; preds = %13, %22, %16, %4, %2
  ret void
}

; Function Attrs: optsize
declare void @BLI_rcti_union(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ED_area_tag_redraw(ptr noundef readonly %0) local_unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !50
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3, %7
  %8 = phi ptr [ %9, %7 ], [ %5, %3 ]
  tail call void @ED_region_tag_redraw(ptr noundef nonnull %8) #17
  %9 = load ptr, ptr %8, align 8, !tbaa !50
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %7, !llvm.loop !69

11:                                               ; preds = %7, %3, %1
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ED_area_tag_redraw_regiontype(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #7 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %18, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 20
  %6 = load ptr, ptr %5, align 8, !tbaa !50
  %7 = icmp eq ptr %6, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %4, %15
  %9 = phi ptr [ %16, %15 ], [ %6, %4 ]
  %10 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 8
  %11 = load i16, ptr %10, align 2, !tbaa !70
  %12 = sext i16 %11 to i32
  %13 = icmp eq i32 %12, %1
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  tail call void @ED_region_tag_redraw(ptr noundef nonnull %9) #17
  br label %15

15:                                               ; preds = %8, %14
  %16 = load ptr, ptr %9, align 8, !tbaa !50
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %8, !llvm.loop !71

18:                                               ; preds = %15, %4, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @ED_area_tag_refresh(ptr noundef writeonly %0) local_unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 13
  store i16 1, ptr %4, align 8, !tbaa !28
  br label %5

5:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_area_headerprint(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %33, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 20
  %6 = load ptr, ptr %5, align 8, !tbaa !50
  %7 = icmp eq ptr %6, null
  br i1 %7, label %33, label %8

8:                                                ; preds = %4
  %9 = icmp eq ptr %1, null
  br label %10

10:                                               ; preds = %8, %30
  %11 = phi ptr [ %6, %8 ], [ %31, %30 ]
  %12 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 8
  %13 = load i16, ptr %12, align 2, !tbaa !70
  %14 = icmp eq i16 %13, 1
  br i1 %14, label %15, label %30

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 29
  %17 = load ptr, ptr %16, align 8, !tbaa !37
  %18 = icmp eq ptr %17, null
  br i1 %9, label %26, label %19

19:                                               ; preds = %15
  br i1 %18, label %20, label %23

20:                                               ; preds = %19
  %21 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !50
  %22 = tail call ptr %21(i64 noundef 256, ptr noundef nonnull @.str) #16
  store ptr %22, ptr %16, align 8, !tbaa !37
  br label %23

23:                                               ; preds = %20, %19
  %24 = phi ptr [ %22, %20 ], [ %17, %19 ]
  %25 = tail call ptr @BLI_strncpy(ptr noundef %24, ptr noundef nonnull %1, i64 noundef 256) #16
  br label %29

26:                                               ; preds = %15
  br i1 %18, label %29, label %27

27:                                               ; preds = %26
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  tail call void %28(ptr noundef nonnull %17) #16
  store ptr null, ptr %16, align 8, !tbaa !37
  br label %29

29:                                               ; preds = %26, %27, %23
  tail call void @ED_region_tag_redraw(ptr noundef nonnull %11) #17
  br label %30

30:                                               ; preds = %10, %29
  %31 = load ptr, ptr %11, align 8, !tbaa !50
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %10, !llvm.loop !72

33:                                               ; preds = %30, %4, %2
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_area_initialize(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.rcti, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #18
  %5 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 8
  %6 = load i8, ptr %5, align 8, !tbaa !32
  %7 = zext i8 %6 to i32
  %8 = tail call ptr @BKE_spacetype_from_id(i32 noundef %7) #16
  %9 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 18
  store ptr %8, ptr %9, align 8, !tbaa !23
  %10 = icmp eq ptr %8, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  store i8 1, ptr %5, align 8, !tbaa !32
  %12 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 9
  store i8 1, ptr %12, align 1, !tbaa !73
  %13 = tail call ptr @BKE_spacetype_from_id(i32 noundef 1) #16
  store ptr %13, ptr %9, align 8, !tbaa !23
  br label %14

14:                                               ; preds = %11, %3
  %15 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 20
  %16 = load ptr, ptr %15, align 8, !tbaa !50
  %17 = icmp eq ptr %16, null
  br i1 %17, label %28, label %18

18:                                               ; preds = %14, %18
  %19 = phi ptr [ %26, %18 ], [ %16, %14 ]
  %20 = load ptr, ptr %9, align 8, !tbaa !23
  %21 = getelementptr inbounds %struct.ARegion, ptr %19, i64 0, i32 8
  %22 = load i16, ptr %21, align 2, !tbaa !70
  %23 = sext i16 %22 to i32
  %24 = tail call ptr @BKE_regiontype_from_id(ptr noundef %20, i32 noundef %23) #16
  %25 = getelementptr inbounds %struct.ARegion, ptr %19, i64 0, i32 20
  store ptr %24, ptr %25, align 8, !tbaa !12
  %26 = load ptr, ptr %19, align 8, !tbaa !50
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %18, !llvm.loop !74

28:                                               ; preds = %18, %14
  %29 = tail call i32 @WM_window_pixels_x(ptr noundef %1) #16
  %30 = tail call i32 @WM_window_pixels_y(ptr noundef %1) #16
  tail call fastcc void @area_calc_totrct(ptr noundef nonnull %2, i32 noundef %29, i32 noundef %30) #17
  %31 = getelementptr inbounds %struct.wmWindow, ptr %1, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !43
  tail call fastcc void @area_azone_initialize(ptr noundef %32, ptr noundef nonnull %2) #17
  %33 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %33, i64 16, i1 false), !tbaa.struct !29
  %34 = load ptr, ptr %15, align 8, !tbaa !75
  call fastcc void @region_rect_recursive(ptr noundef %1, ptr noundef nonnull %2, ptr noundef %34, ptr noundef nonnull %4, i32 noundef 0) #17
  %35 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 21
  %36 = load ptr, ptr %9, align 8, !tbaa !23
  %37 = getelementptr inbounds %struct.SpaceType, ptr %36, i64 0, i32 18
  %38 = load i32, ptr %37, align 8, !tbaa !76
  call fastcc void @ed_default_handlers(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %35, i32 noundef %38) #17
  %39 = load ptr, ptr %9, align 8, !tbaa !23
  %40 = getelementptr inbounds %struct.SpaceType, ptr %39, i64 0, i32 7
  %41 = load ptr, ptr %40, align 8, !tbaa !77
  %42 = icmp eq ptr %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %28
  call void %41(ptr noundef %0, ptr noundef nonnull %2) #16
  br label %44

44:                                               ; preds = %43, %28
  %45 = load ptr, ptr %15, align 8, !tbaa !50
  %46 = icmp eq ptr %45, null
  br i1 %46, label %68, label %47

47:                                               ; preds = %44, %65
  %48 = phi ptr [ %66, %65 ], [ %45, %44 ]
  call fastcc void @region_subwindow(ptr noundef %1, ptr noundef nonnull %48) #17
  %49 = getelementptr inbounds %struct.ARegion, ptr %48, i64 0, i32 7
  %50 = load i16, ptr %49, align 4, !tbaa !31
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %63, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.ARegion, ptr %48, i64 0, i32 26
  %54 = getelementptr inbounds %struct.ARegion, ptr %48, i64 0, i32 20
  %55 = load ptr, ptr %54, align 8, !tbaa !12
  %56 = getelementptr inbounds %struct.ARegionType, ptr %55, i64 0, i32 20
  %57 = load i32, ptr %56, align 8, !tbaa !78
  call fastcc void @ed_default_handlers(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %53, i32 noundef %57) #17
  %58 = load ptr, ptr %54, align 8, !tbaa !12
  %59 = getelementptr inbounds %struct.ARegionType, ptr %58, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !79
  %61 = icmp eq ptr %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %52
  call void %60(ptr noundef %0, ptr noundef nonnull %48) #16
  br label %65

63:                                               ; preds = %47
  %64 = getelementptr inbounds %struct.ARegion, ptr %48, i64 0, i32 21
  call void @uiFreeBlocks(ptr noundef null, ptr noundef nonnull %64) #16
  br label %65

65:                                               ; preds = %63, %62, %52
  %66 = load ptr, ptr %48, align 8, !tbaa !50
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %47, !llvm.loop !80

68:                                               ; preds = %65, %44
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #18
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_spacetype_from_id(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_regiontype_from_id(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @area_calc_totrct(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #8 {
  %4 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !81
  %5 = fptosi float %4 to i16
  %6 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !82
  %8 = getelementptr inbounds %struct.ScrVert, ptr %7, i64 0, i32 3
  %9 = load i16, ptr %8, align 8, !tbaa !83
  %10 = sext i16 %9 to i32
  %11 = icmp sgt i16 %9, 0
  %12 = select i1 %11, i16 %5, i16 0
  %13 = sext i16 %12 to i32
  %14 = add nsw i32 %10, %13
  %15 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 7
  store i32 %14, ptr %15, align 8
  %16 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !86
  %18 = getelementptr inbounds %struct.ScrVert, ptr %17, i64 0, i32 3
  %19 = load i16, ptr %18, align 8, !tbaa !83
  %20 = sext i16 %19 to i32
  %21 = add nsw i32 %1, -1
  %22 = icmp sgt i32 %21, %20
  %23 = sext i16 %5 to i32
  %24 = select i1 %22, i32 %23, i32 0
  %25 = sub nsw i32 %20, %24
  %26 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 7, i32 1
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.ScrVert, ptr %7, i64 0, i32 3, i32 1
  %28 = load i16, ptr %27, align 2, !tbaa !87
  %29 = sext i16 %28 to i32
  %30 = icmp sgt i16 %28, 0
  %31 = select i1 %30, i16 %5, i16 0
  %32 = sext i16 %31 to i32
  %33 = add nsw i32 %29, %32
  %34 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 7, i32 2
  store i32 %33, ptr %34, align 8
  %35 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !88
  %37 = getelementptr inbounds %struct.ScrVert, ptr %36, i64 0, i32 3, i32 1
  %38 = load i16, ptr %37, align 2, !tbaa !87
  %39 = sext i16 %38 to i32
  %40 = add nsw i32 %2, -1
  %41 = icmp sgt i32 %40, %39
  %42 = sext i16 %5 to i32
  %43 = select i1 %41, i32 %42, i32 0
  %44 = sub nsw i32 %39, %43
  %45 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 7, i32 3
  store i32 %44, ptr %45, align 4
  %46 = tail call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %15) #17
  %47 = trunc i32 %46 to i16
  %48 = add i16 %47, 1
  %49 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 10
  store i16 %48, ptr %49, align 2, !tbaa !89
  %50 = tail call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %15) #17
  %51 = trunc i32 %50 to i16
  %52 = add i16 %51, 1
  %53 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 11
  store i16 %52, ptr %53, align 4, !tbaa !90
  ret void
}

; Function Attrs: optsize
declare i32 @WM_window_pixels_x(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @WM_window_pixels_y(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @area_azone_initialize(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 22
  tail call void @BLI_freelistN(ptr noundef nonnull %3) #16
  %4 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 9
  %5 = load i16, ptr %4, align 8, !tbaa !45
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %7, label %70

7:                                                ; preds = %2
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !50
  %9 = tail call ptr %8(i64 noundef 64, ptr noundef nonnull @.str.6) #16
  tail call void @BLI_addtail(ptr noundef nonnull %3, ptr noundef %9) #16
  %10 = getelementptr inbounds %struct.AZone, ptr %9, i64 0, i32 3
  store i32 1, ptr %10, align 8, !tbaa !56
  %11 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !91
  %13 = trunc i32 %12 to i16
  %14 = getelementptr inbounds %struct.AZone, ptr %9, i64 0, i32 5
  store i16 %13, ptr %14, align 8, !tbaa !51
  %15 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 7, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !92
  %17 = trunc i32 %16 to i16
  %18 = getelementptr inbounds %struct.AZone, ptr %9, i64 0, i32 6
  store i16 %17, ptr %18, align 2, !tbaa !54
  %19 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !38
  %20 = sitofp i16 %19 to float
  %21 = tail call float @llvm.fmuladd.f32(float %20, float 0x3FE3333340000000, float -1.000000e+00)
  %22 = getelementptr inbounds %struct.AZone, ptr %9, i64 0, i32 7
  %23 = insertelement <2 x i32> poison, i32 %12, i64 0
  %24 = insertelement <2 x i32> %23, i32 %16, i64 1
  %25 = sitofp <2 x i32> %24 to <2 x float>
  %26 = insertelement <2 x float> poison, float %21, i64 0
  %27 = shufflevector <2 x float> %26, <2 x float> poison, <2 x i32> zeroinitializer
  %28 = fadd <2 x float> %27, %25
  %29 = fptosi <2 x float> %28 to <2 x i16>
  store <2 x i16> %29, ptr %22, align 4, !tbaa !93
  %30 = getelementptr inbounds %struct.AZone, ptr %9, i64 0, i32 9
  %31 = shl i32 %12, 16
  %32 = ashr exact i32 %31, 16
  %33 = extractelement <2 x i16> %29, i64 0
  %34 = sext i16 %33 to i32
  %35 = shl i32 %16, 16
  %36 = ashr exact i32 %35, 16
  %37 = extractelement <2 x i16> %29, i64 1
  %38 = sext i16 %37 to i32
  tail call void @BLI_rcti_init(ptr noundef nonnull %30, i32 noundef %32, i32 noundef %34, i32 noundef %36, i32 noundef %38) #16
  %39 = load ptr, ptr @MEM_callocN, align 8, !tbaa !50
  %40 = tail call ptr %39(i64 noundef 64, ptr noundef nonnull @.str.6) #16
  tail call void @BLI_addtail(ptr noundef nonnull %3, ptr noundef %40) #16
  %41 = getelementptr inbounds %struct.AZone, ptr %40, i64 0, i32 3
  store i32 1, ptr %41, align 8, !tbaa !56
  %42 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 7, i32 1
  %43 = load i32, ptr %42, align 4, !tbaa !94
  %44 = trunc i32 %43 to i16
  %45 = getelementptr inbounds %struct.AZone, ptr %40, i64 0, i32 5
  store i16 %44, ptr %45, align 8, !tbaa !51
  %46 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 7, i32 3
  %47 = load i32, ptr %46, align 4, !tbaa !95
  %48 = trunc i32 %47 to i16
  %49 = getelementptr inbounds %struct.AZone, ptr %40, i64 0, i32 6
  store i16 %48, ptr %49, align 2, !tbaa !54
  %50 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !38
  %51 = sitofp i16 %50 to float
  %52 = tail call float @llvm.fmuladd.f32(float %51, float 0x3FE3333340000000, float -1.000000e+00)
  %53 = getelementptr inbounds %struct.AZone, ptr %40, i64 0, i32 7
  %54 = insertelement <2 x i32> poison, i32 %43, i64 0
  %55 = insertelement <2 x i32> %54, i32 %47, i64 1
  %56 = sitofp <2 x i32> %55 to <2 x float>
  %57 = insertelement <2 x float> poison, float %52, i64 0
  %58 = shufflevector <2 x float> %57, <2 x float> poison, <2 x i32> zeroinitializer
  %59 = fsub <2 x float> %56, %58
  %60 = fptosi <2 x float> %59 to <2 x i16>
  store <2 x i16> %60, ptr %53, align 4, !tbaa !93
  %61 = getelementptr inbounds %struct.AZone, ptr %40, i64 0, i32 9
  %62 = shl i32 %43, 16
  %63 = ashr exact i32 %62, 16
  %64 = extractelement <2 x i16> %60, i64 0
  %65 = sext i16 %64 to i32
  %66 = shl i32 %47, 16
  %67 = ashr exact i32 %66, 16
  %68 = extractelement <2 x i16> %60, i64 1
  %69 = sext i16 %68 to i32
  tail call void @BLI_rcti_init(ptr noundef nonnull %61, i32 noundef %63, i32 noundef %65, i32 noundef %67, i32 noundef %69) #16
  br label %70

70:                                               ; preds = %2, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @region_rect_recursive(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = icmp eq ptr %2, null
  br i1 %6, label %320, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 8
  %9 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 11
  %10 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 3
  br label %11

11:                                               ; preds = %7, %317
  %12 = phi i32 [ %4, %7 ], [ %222, %317 ]
  %13 = phi ptr [ %3, %7 ], [ %300, %317 ]
  %14 = phi ptr [ %2, %7 ], [ %318, %317 ]
  %15 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 3
  tail call void @BLI_rcti_init(ptr noundef nonnull %15, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #16
  %16 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 9
  %17 = load i16, ptr %16, align 8, !tbaa !96
  %18 = and i16 %17, 32
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !97
  %23 = icmp eq ptr %22, null
  %24 = getelementptr inbounds %struct.ARegion, ptr %22, i64 0, i32 3
  %25 = select i1 %23, ptr %13, ptr %24
  br label %26

26:                                               ; preds = %20, %11
  %27 = phi ptr [ %13, %11 ], [ %25, %20 ]
  %28 = and i16 %17, -33
  %29 = sext i16 %28 to i32
  %30 = tail call fastcc zeroext i8 @region_is_overlap(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %14) #17, !range !98
  %31 = zext nneg i8 %30 to i16
  %32 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 17
  store i16 %31, ptr %32, align 2, !tbaa !99
  %33 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 10
  %34 = load i16, ptr %33, align 2, !tbaa !58
  %35 = and i16 %34, -3
  store i16 %35, ptr %33, align 2, !tbaa !58
  %36 = load ptr, ptr %14, align 8, !tbaa !100
  %37 = icmp eq ptr %36, null
  %38 = icmp ne i16 %28, 8
  %39 = and i1 %38, %37
  %40 = select i1 %39, i32 0, i32 %29
  %41 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !81
  %42 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !101
  %43 = sitofp i32 %42 to float
  %44 = fmul float %41, %43
  %45 = fdiv float %44, 7.200000e+01
  %46 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 12
  %47 = load i16, ptr %46, align 8, !tbaa !102
  %48 = icmp sgt i16 %47, 1
  br i1 %48, label %49, label %52

49:                                               ; preds = %26
  %50 = sitofp i16 %47 to float
  %51 = fadd float %50, 5.000000e-01
  br label %58

52:                                               ; preds = %26
  %53 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 20
  %54 = load ptr, ptr %53, align 8, !tbaa !12
  %55 = getelementptr inbounds %struct.ARegionType, ptr %54, i64 0, i32 18
  %56 = load i32, ptr %55, align 8, !tbaa !103
  %57 = sitofp i32 %56 to float
  br label %58

58:                                               ; preds = %52, %49
  %59 = phi float [ %51, %49 ], [ %57, %52 ]
  %60 = fmul float %45, %59
  %61 = fptosi float %60 to i32
  %62 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 8
  %63 = load i16, ptr %62, align 2, !tbaa !70
  switch i16 %63, label %76 [
    i16 1, label %64
    i16 4, label %66
  ]

64:                                               ; preds = %58
  %65 = tail call i32 @ED_area_headersize() #17
  br label %93

66:                                               ; preds = %58
  %67 = load i8, ptr %8, align 8, !tbaa !32
  %68 = icmp eq i8 %67, 5
  br i1 %68, label %69, label %76

69:                                               ; preds = %66
  %70 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !38
  %71 = sext i16 %70 to i32
  %72 = shl nsw i32 %71, 1
  %73 = sdiv i16 %70, 2
  %74 = sext i16 %73 to i32
  %75 = add nsw i32 %72, %74
  br label %93

76:                                               ; preds = %58, %66
  %77 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 13
  %78 = load i16, ptr %77, align 2, !tbaa !104
  %79 = icmp sgt i16 %78, 1
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = sitofp i16 %78 to float
  %82 = fadd float %81, 5.000000e-01
  br label %89

83:                                               ; preds = %76
  %84 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 20
  %85 = load ptr, ptr %84, align 8, !tbaa !12
  %86 = getelementptr inbounds %struct.ARegionType, ptr %85, i64 0, i32 19
  %87 = load i32, ptr %86, align 4, !tbaa !105
  %88 = sitofp i32 %87 to float
  br label %89

89:                                               ; preds = %83, %80
  %90 = phi float [ %82, %80 ], [ %88, %83 ]
  %91 = fmul float %45, %90
  %92 = fptosi float %91 to i32
  br label %93

93:                                               ; preds = %69, %89, %64
  %94 = phi i32 [ %65, %64 ], [ %75, %69 ], [ %92, %89 ]
  %95 = and i16 %34, 1
  %96 = icmp ne i16 %95, 0
  %97 = icmp eq i32 %40, 7
  %98 = select i1 %96, i1 true, i1 %97
  br i1 %98, label %221, label %99

99:                                               ; preds = %93
  %100 = tail call fastcc i32 @rct_fits(ptr noundef %27, i8 noundef zeroext 118, i32 noundef 1) #17
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %99
  %103 = tail call fastcc i32 @rct_fits(ptr noundef %27, i8 noundef zeroext 104, i32 noundef 1) #17
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %102, %99
  %106 = or i16 %34, 2
  store i16 %106, ptr %33, align 2, !tbaa !58
  br label %221

107:                                              ; preds = %102
  %108 = icmp eq i32 %40, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %107
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 4 dereferenceable(16) %27, i64 16, i1 false), !tbaa.struct !29
  tail call void @BLI_rcti_init(ptr noundef %27, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #16
  br label %221

110:                                              ; preds = %107
  %111 = icmp eq i32 %40, 1
  %112 = icmp ult i32 %40, 3
  br i1 %112, label %113, label %133

113:                                              ; preds = %110
  %114 = tail call fastcc i32 @rct_fits(ptr noundef %27, i8 noundef zeroext 118, i32 noundef %94) #17
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %113
  %117 = or i16 %34, 2
  store i16 %117, ptr %33, align 2, !tbaa !58
  br label %221

118:                                              ; preds = %113
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 4 dereferenceable(16) %27, i64 16, i1 false), !tbaa.struct !29
  br i1 %111, label %119, label %126

119:                                              ; preds = %118
  %120 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 3, i32 3
  %121 = load i32, ptr %120, align 4, !tbaa !106
  %122 = sub nsw i32 %121, %94
  %123 = add nsw i32 %122, 1
  %124 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 3, i32 2
  store i32 %123, ptr %124, align 8, !tbaa !49
  %125 = getelementptr inbounds %struct.rcti, ptr %27, i64 0, i32 3
  store i32 %122, ptr %125, align 4, !tbaa !67
  br label %221

126:                                              ; preds = %118
  %127 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 3, i32 2
  %128 = load i32, ptr %127, align 8, !tbaa !49
  %129 = add nsw i32 %128, %94
  %130 = add nsw i32 %129, -1
  %131 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 3, i32 3
  store i32 %130, ptr %131, align 4, !tbaa !106
  %132 = getelementptr inbounds %struct.rcti, ptr %27, i64 0, i32 2
  store i32 %129, ptr %132, align 4, !tbaa !65
  br label %221

133:                                              ; preds = %110
  %134 = icmp eq i32 %40, 4
  %135 = add nsw i32 %40, -3
  %136 = icmp ult i32 %135, 2
  br i1 %136, label %137, label %157

137:                                              ; preds = %133
  %138 = tail call fastcc i32 @rct_fits(ptr noundef %27, i8 noundef zeroext 104, i32 noundef %61) #17
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %137
  %141 = or i16 %34, 2
  store i16 %141, ptr %33, align 2, !tbaa !58
  br label %221

142:                                              ; preds = %137
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 4 dereferenceable(16) %27, i64 16, i1 false), !tbaa.struct !29
  %143 = icmp eq i8 %30, 0
  br i1 %134, label %144, label %151

144:                                              ; preds = %142
  %145 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 3, i32 1
  %146 = load i32, ptr %145, align 4, !tbaa !107
  %147 = sub nsw i32 %146, %61
  %148 = add nsw i32 %147, 1
  store i32 %148, ptr %15, align 8, !tbaa !48
  br i1 %143, label %149, label %221

149:                                              ; preds = %144
  %150 = getelementptr inbounds %struct.rcti, ptr %27, i64 0, i32 1
  store i32 %147, ptr %150, align 4, !tbaa !66
  br label %221

151:                                              ; preds = %142
  %152 = load i32, ptr %15, align 8, !tbaa !48
  %153 = add nsw i32 %152, %61
  %154 = add nsw i32 %153, -1
  %155 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 3, i32 1
  store i32 %154, ptr %155, align 4, !tbaa !107
  br i1 %143, label %156, label %221

156:                                              ; preds = %151
  store i32 %153, ptr %27, align 4, !tbaa !64
  br label %221

157:                                              ; preds = %133
  %158 = add nsw i32 %40, -5
  %159 = icmp ult i32 %158, 2
  br i1 %159, label %160, label %179

160:                                              ; preds = %157
  %161 = icmp eq i32 %40, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 4 dereferenceable(16) %27, i64 16, i1 false), !tbaa.struct !29
  br i1 %161, label %162, label %170

162:                                              ; preds = %160
  %163 = tail call fastcc i32 @rct_fits(ptr noundef nonnull %27, i8 noundef zeroext 104, i32 noundef %61) #17
  %164 = icmp sgt i32 %163, 4
  br i1 %164, label %165, label %169

165:                                              ; preds = %162
  %166 = tail call fastcc i32 @BLI_rcti_cent_x(ptr noundef nonnull %27) #17, !range !108
  %167 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 3, i32 1
  store i32 %166, ptr %167, align 4, !tbaa !107
  %168 = add nsw i32 %166, 1
  store i32 %168, ptr %27, align 4, !tbaa !64
  br label %221

169:                                              ; preds = %162
  tail call void @BLI_rcti_init(ptr noundef nonnull %27, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #16
  br label %221

170:                                              ; preds = %160
  %171 = tail call fastcc i32 @rct_fits(ptr noundef nonnull %27, i8 noundef zeroext 118, i32 noundef %94) #17
  %172 = icmp sgt i32 %171, 4
  br i1 %172, label %173, label %178

173:                                              ; preds = %170
  %174 = tail call fastcc i32 @BLI_rcti_cent_y(ptr noundef nonnull %27) #17, !range !108
  %175 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 3, i32 3
  store i32 %174, ptr %175, align 4, !tbaa !106
  %176 = add nsw i32 %174, 1
  %177 = getelementptr inbounds %struct.rcti, ptr %27, i64 0, i32 2
  store i32 %176, ptr %177, align 4, !tbaa !65
  br label %221

178:                                              ; preds = %170
  tail call void @BLI_rcti_init(ptr noundef nonnull %27, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #16
  br label %221

179:                                              ; preds = %157
  %180 = icmp eq i32 %40, 8
  br i1 %180, label %181, label %221

181:                                              ; preds = %179
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 4 dereferenceable(16) %27, i64 16, i1 false), !tbaa.struct !29
  switch i32 %12, label %214 [
    i32 0, label %182
    i32 3, label %209
    i32 1, label %198
    i32 2, label %203
  ]

182:                                              ; preds = %181
  br i1 %37, label %192, label %183

183:                                              ; preds = %182, %183
  %184 = phi ptr [ %188, %183 ], [ %36, %182 ]
  %185 = phi i32 [ %187, %183 ], [ 1, %182 ]
  %186 = getelementptr inbounds %struct.ARegion, ptr %184, i64 0, i32 9
  store i16 8, ptr %186, align 8, !tbaa !96
  %187 = add nuw nsw i32 %185, 1
  %188 = load ptr, ptr %184, align 8, !tbaa !100
  %189 = icmp eq ptr %188, null
  br i1 %189, label %190, label %183, !llvm.loop !109

190:                                              ; preds = %183
  %191 = icmp eq i32 %187, 4
  br i1 %191, label %198, label %192

192:                                              ; preds = %182, %190
  tail call void @BLI_rcti_init(ptr noundef %27, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #16
  %193 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !110
  %194 = and i32 %193, 1
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %221, label %196

196:                                              ; preds = %192
  %197 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %221

198:                                              ; preds = %181, %190
  %199 = tail call fastcc i32 @BLI_rcti_cent_x(ptr noundef %27) #17, !range !108
  %200 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 3, i32 1
  store i32 %199, ptr %200, align 4, !tbaa !107
  %201 = tail call fastcc i32 @BLI_rcti_cent_y(ptr noundef %27) #17, !range !108
  %202 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 3, i32 3
  store i32 %201, ptr %202, align 4, !tbaa !106
  br label %221

203:                                              ; preds = %181
  %204 = tail call fastcc i32 @BLI_rcti_cent_x(ptr noundef nonnull %27) #17, !range !108
  %205 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 3, i32 1
  store i32 %204, ptr %205, align 4, !tbaa !107
  %206 = tail call fastcc i32 @BLI_rcti_cent_y(ptr noundef nonnull %27) #17, !range !108
  %207 = add nsw i32 %206, 1
  %208 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 3, i32 2
  store i32 %207, ptr %208, align 8, !tbaa !49
  br label %221

209:                                              ; preds = %181
  %210 = tail call fastcc i32 @BLI_rcti_cent_x(ptr noundef nonnull %27) #17, !range !108
  %211 = add nsw i32 %210, 1
  store i32 %211, ptr %15, align 8, !tbaa !48
  %212 = tail call fastcc i32 @BLI_rcti_cent_y(ptr noundef nonnull %27) #17, !range !108
  %213 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 3, i32 3
  store i32 %212, ptr %213, align 4, !tbaa !106
  br label %221

214:                                              ; preds = %181
  %215 = tail call fastcc i32 @BLI_rcti_cent_x(ptr noundef nonnull %27) #17, !range !108
  %216 = add nsw i32 %215, 1
  store i32 %216, ptr %15, align 8, !tbaa !48
  %217 = tail call fastcc i32 @BLI_rcti_cent_y(ptr noundef nonnull %27) #17, !range !108
  %218 = add nsw i32 %217, 1
  %219 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 3, i32 2
  store i32 %218, ptr %219, align 8, !tbaa !49
  tail call void @BLI_rcti_init(ptr noundef nonnull %27, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #16
  %220 = add nsw i32 %12, 1
  br label %221

221:                                              ; preds = %198, %209, %214, %203, %192, %196, %149, %144, %156, %151, %119, %126, %109, %140, %179, %169, %165, %178, %173, %116, %105, %93
  %222 = phi i32 [ %12, %93 ], [ %12, %105 ], [ %12, %109 ], [ %12, %116 ], [ %12, %140 ], [ %12, %165 ], [ %12, %169 ], [ %12, %173 ], [ %12, %178 ], [ %12, %179 ], [ %12, %126 ], [ %12, %119 ], [ %12, %151 ], [ %12, %156 ], [ %12, %144 ], [ %12, %149 ], [ 0, %196 ], [ 0, %192 ], [ 3, %203 ], [ %220, %214 ], [ 4, %209 ], [ 2, %198 ]
  %223 = tail call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %15) #17
  %224 = trunc i32 %223 to i16
  %225 = add i16 %224, 1
  %226 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 5
  store i16 %225, ptr %226, align 8, !tbaa !111
  %227 = tail call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %15) #17
  %228 = trunc i32 %227 to i16
  %229 = add i16 %228, 1
  %230 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 6
  store i16 %229, ptr %230, align 2, !tbaa !112
  %231 = icmp sgt i16 %225, 1
  br i1 %231, label %232, label %242

232:                                              ; preds = %221
  %233 = sitofp i16 %225 to float
  %234 = fadd float %233, 5.000000e-01
  %235 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !81
  %236 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !101
  %237 = sitofp i32 %236 to float
  %238 = fmul float %235, %237
  %239 = fdiv float %238, 7.200000e+01
  %240 = fdiv float %234, %239
  %241 = fptosi float %240 to i16
  store i16 %241, ptr %46, align 8, !tbaa !102
  br label %242

242:                                              ; preds = %232, %221
  %243 = icmp sgt i16 %229, 1
  br i1 %243, label %244, label %255

244:                                              ; preds = %242
  %245 = sitofp i16 %229 to float
  %246 = fadd float %245, 5.000000e-01
  %247 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !81
  %248 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !101
  %249 = sitofp i32 %248 to float
  %250 = fmul float %247, %249
  %251 = fdiv float %250, 7.200000e+01
  %252 = fdiv float %246, %251
  %253 = fptosi float %252 to i16
  %254 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 13
  store i16 %253, ptr %254, align 2, !tbaa !104
  br label %255

255:                                              ; preds = %244, %242
  %256 = load i16, ptr %32, align 2, !tbaa !99
  %257 = icmp eq i16 %256, 0
  br i1 %257, label %259, label %258

258:                                              ; preds = %255
  tail call fastcc void @region_overlap_fix(ptr noundef %1, ptr noundef nonnull %14) #17
  br label %259

259:                                              ; preds = %258, %255
  %260 = load i16, ptr %33, align 2, !tbaa !58
  %261 = and i16 %260, 3
  %262 = icmp eq i16 %261, 0
  br i1 %262, label %281, label %263

263:                                              ; preds = %259
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 4 dereferenceable(16) %27, i64 16, i1 false), !tbaa.struct !29
  switch i32 %40, label %278 [
    i32 1, label %264
    i32 2, label %268
    i32 4, label %272
    i32 3, label %275
  ]

264:                                              ; preds = %263
  %265 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 3, i32 3
  %266 = load i32, ptr %265, align 4, !tbaa !106
  %267 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 3, i32 2
  store i32 %266, ptr %267, align 8, !tbaa !49
  br label %281

268:                                              ; preds = %263
  %269 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 3, i32 2
  %270 = load i32, ptr %269, align 8, !tbaa !49
  %271 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 3, i32 3
  store i32 %270, ptr %271, align 4, !tbaa !106
  br label %281

272:                                              ; preds = %263
  %273 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 3, i32 1
  %274 = load i32, ptr %273, align 4, !tbaa !107
  store i32 %274, ptr %15, align 8, !tbaa !48
  br label %281

275:                                              ; preds = %263
  %276 = load i32, ptr %15, align 8, !tbaa !48
  %277 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 3, i32 1
  store i32 %276, ptr %277, align 4, !tbaa !107
  br label %281

278:                                              ; preds = %263
  %279 = load i32, ptr %15, align 8, !tbaa !48
  %280 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 3, i32 1
  store i32 %279, ptr %280, align 4, !tbaa !107
  br label %281

281:                                              ; preds = %264, %272, %278, %275, %268, %259
  %282 = load i16, ptr %16, align 8, !tbaa !96
  %283 = and i16 %282, 32
  %284 = icmp eq i16 %283, 0
  br i1 %284, label %299, label %285

285:                                              ; preds = %281
  %286 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 1
  %287 = load ptr, ptr %286, align 8, !tbaa !97
  %288 = icmp eq ptr %287, null
  br i1 %288, label %299, label %289

289:                                              ; preds = %285
  %290 = getelementptr inbounds %struct.ARegion, ptr %287, i64 0, i32 3
  %291 = tail call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %290) #17
  %292 = trunc i32 %291 to i16
  %293 = add i16 %292, 1
  %294 = getelementptr inbounds %struct.ARegion, ptr %287, i64 0, i32 5
  store i16 %293, ptr %294, align 8, !tbaa !111
  %295 = tail call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %290) #17
  %296 = trunc i32 %295 to i16
  %297 = add i16 %296, 1
  %298 = getelementptr inbounds %struct.ARegion, ptr %287, i64 0, i32 6
  store i16 %297, ptr %298, align 2, !tbaa !112
  br label %299

299:                                              ; preds = %285, %289, %281
  %300 = phi ptr [ %13, %289 ], [ %27, %285 ], [ %27, %281 ]
  %301 = load i16, ptr %62, align 2, !tbaa !70
  %302 = icmp eq i16 %301, 1
  br i1 %302, label %303, label %310

303:                                              ; preds = %299
  %304 = load i16, ptr %230, align 2, !tbaa !112
  %305 = sext i16 %304 to i32
  %306 = add nsw i32 %305, 6
  %307 = load i16, ptr %9, align 4, !tbaa !90
  %308 = sext i16 %307 to i32
  %309 = icmp sgt i32 %306, %308
  br i1 %309, label %317, label %310

310:                                              ; preds = %303, %299
  %311 = load ptr, ptr %10, align 8, !tbaa !43
  %312 = getelementptr inbounds %struct.bScreen, ptr %311, i64 0, i32 9
  %313 = load i16, ptr %312, align 8, !tbaa !45
  %314 = icmp ult i16 %313, 2
  br i1 %314, label %315, label %316

315:                                              ; preds = %310
  tail call fastcc void @region_azone_add(ptr noundef %1, ptr noundef nonnull %14, i32 noundef %40, i8 noundef zeroext 0) #17
  br label %317

316:                                              ; preds = %310
  tail call fastcc void @region_azone_add(ptr noundef %1, ptr noundef nonnull %14, i32 noundef %40, i8 noundef zeroext 1) #17
  tail call fastcc void @fullscreen_azone_initialize(ptr noundef %1, ptr noundef nonnull %14) #17
  br label %317

317:                                              ; preds = %315, %316, %303
  %318 = load ptr, ptr %14, align 8, !tbaa !100
  %319 = icmp eq ptr %318, null
  br i1 %319, label %320, label %11

320:                                              ; preds = %317, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ed_default_handlers(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = and i32 %3, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @UI_add_region_handlers(ptr noundef %2) #16
  br label %8

8:                                                ; preds = %7, %4
  %9 = and i32 %3, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %13 = load ptr, ptr %12, align 8, !tbaa !113
  %14 = tail call ptr @WM_keymap_find(ptr noundef %13, ptr noundef nonnull @.str.9, i32 noundef 0, i32 noundef 0) #16
  %15 = tail call ptr @WM_event_add_keymap_handler(ptr noundef %2, ptr noundef %14) #16
  br label %16

16:                                               ; preds = %11, %8
  %17 = and i32 %3, 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %41, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %21 = load ptr, ptr %20, align 8, !tbaa !113
  %22 = tail call ptr @WM_keymap_find(ptr noundef %21, ptr noundef nonnull @.str.10, i32 noundef 0, i32 noundef 0) #16
  %23 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 8
  %24 = load i8, ptr %23, align 8, !tbaa !32
  %25 = icmp eq i8 %24, 15
  br i1 %25, label %39, label %26

26:                                               ; preds = %19
  %27 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !81
  %28 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !101
  %29 = sitofp i32 %28 to float
  %30 = fmul float %27, %29
  %31 = fdiv float %30, 7.200000e+01
  %32 = fmul float %31, 4.200000e+01
  %33 = fptosi float %32 to i32
  store i32 %33, ptr getelementptr inbounds (%struct.rcti, ptr @ed_default_handlers.rect, i64 0, i32 3), align 4, !tbaa !67
  %34 = tail call ptr @BKE_area_find_region_type(ptr noundef nonnull %1, i32 noundef 0) #16
  %35 = icmp eq ptr %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %26
  %37 = getelementptr inbounds %struct.ARegion, ptr %34, i64 0, i32 3
  %38 = tail call ptr @WM_event_add_keymap_handler_bb(ptr noundef %2, ptr noundef %22, ptr noundef nonnull @ed_default_handlers.rect, ptr noundef nonnull %37) #16
  br label %41

39:                                               ; preds = %19
  %40 = tail call ptr @WM_event_add_keymap_handler(ptr noundef %2, ptr noundef %22) #16
  br label %41

41:                                               ; preds = %39, %36, %26, %16
  %42 = and i32 %3, 8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %46 = load ptr, ptr %45, align 8, !tbaa !113
  %47 = tail call ptr @WM_keymap_find(ptr noundef %46, ptr noundef nonnull @.str.11, i32 noundef 0, i32 noundef 0) #16
  %48 = tail call ptr @WM_event_add_keymap_handler(ptr noundef %2, ptr noundef %47) #16
  br label %49

49:                                               ; preds = %44, %41
  %50 = and i32 %3, 16
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %54 = load ptr, ptr %53, align 8, !tbaa !113
  %55 = tail call ptr @WM_keymap_find(ptr noundef %54, ptr noundef nonnull @.str.12, i32 noundef 0, i32 noundef 0) #16
  %56 = tail call ptr @WM_event_add_keymap_handler(ptr noundef %2, ptr noundef %55) #16
  br label %57

57:                                               ; preds = %52, %49
  %58 = and i32 %3, 32
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %62 = load ptr, ptr %61, align 8, !tbaa !113
  %63 = tail call ptr @WM_keymap_find(ptr noundef %62, ptr noundef nonnull @.str.13, i32 noundef 0, i32 noundef 0) #16
  %64 = tail call ptr @WM_event_add_keymap_handler(ptr noundef %2, ptr noundef %63) #16
  br label %65

65:                                               ; preds = %60, %57
  %66 = and i32 %3, 64
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %70 = load ptr, ptr %69, align 8, !tbaa !113
  %71 = tail call ptr @WM_keymap_find(ptr noundef %70, ptr noundef nonnull @.str.14, i32 noundef 0, i32 noundef 0) #16
  %72 = tail call ptr @WM_event_add_keymap_handler(ptr noundef %2, ptr noundef %71) #16
  br label %73

73:                                               ; preds = %68, %65
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @region_subwindow(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 10
  %4 = load i16, ptr %3, align 2, !tbaa !58
  %5 = and i16 %4, 3
  %6 = icmp ne i16 %5, 0
  %7 = zext i1 %6 to i8
  %8 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 9
  %9 = load i16, ptr %8, align 8, !tbaa !96
  %10 = and i16 %9, 32
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !97
  %15 = icmp eq ptr %14, null
  %16 = select i1 %15, i1 true, i1 %6
  %17 = select i1 %15, i8 %7, i8 1
  br i1 %16, label %24, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 10
  %20 = load i16, ptr %19, align 2, !tbaa !58
  %21 = and i16 %20, 3
  %22 = icmp ne i16 %21, 0
  %23 = zext i1 %22 to i8
  br label %24

24:                                               ; preds = %12, %18, %2
  %25 = phi i8 [ %17, %12 ], [ %7, %2 ], [ %23, %18 ]
  %26 = icmp eq i8 %25, 0
  %27 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 7
  %28 = load i16, ptr %27, align 4, !tbaa !31
  %29 = icmp eq i16 %28, 0
  br i1 %26, label %34, label %30

30:                                               ; preds = %24
  br i1 %29, label %33, label %31

31:                                               ; preds = %30
  %32 = sext i16 %28 to i32
  tail call void @wm_subwindow_close(ptr noundef %0, i32 noundef %32) #16
  br label %33

33:                                               ; preds = %31, %30
  store i16 0, ptr %27, align 4, !tbaa !31
  br label %42

34:                                               ; preds = %24
  br i1 %29, label %35, label %39

35:                                               ; preds = %34
  %36 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %37 = tail call i32 @wm_subwindow_open(ptr noundef %0, ptr noundef nonnull %36) #16
  %38 = trunc i32 %37 to i16
  store i16 %38, ptr %27, align 4, !tbaa !31
  br label %42

39:                                               ; preds = %34
  %40 = sext i16 %28 to i32
  %41 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  tail call void @wm_subwindow_position(ptr noundef %0, i32 noundef %40, ptr noundef nonnull %41) #16
  br label %42

42:                                               ; preds = %35, %39, %33
  ret void
}

; Function Attrs: optsize
declare void @uiFreeBlocks(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_region_update_rect(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_window(ptr noundef %0) #16
  %4 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 7
  %5 = load i16, ptr %4, align 4, !tbaa !31
  %6 = sext i16 %5 to i32
  %7 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  tail call void @wm_subwindow_rect_set(ptr noundef %3, i32 noundef %6, ptr noundef nonnull %7) #16
  tail call fastcc void @region_update_rect(ptr noundef %1) #17
  ret void
}

; Function Attrs: optsize
declare void @wm_subwindow_rect_set(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @region_update_rect(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3
  %3 = tail call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %2) #17
  %4 = trunc i32 %3 to i16
  %5 = add i16 %4, 1
  %6 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 5
  store i16 %5, ptr %6, align 8, !tbaa !111
  %7 = tail call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %2) #17
  %8 = trunc i32 %7 to i16
  %9 = add i16 %8, 1
  %10 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 6
  store i16 %9, ptr %10, align 2, !tbaa !112
  %11 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 2, i32 4
  %12 = sext i16 %5 to i32
  %13 = add nsw i32 %12, -1
  %14 = sext i16 %9 to i32
  %15 = add nsw i32 %14, -1
  tail call void @BLI_rcti_init(ptr noundef nonnull %11, i32 noundef 0, i32 noundef %13, i32 noundef 0, i32 noundef %15) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_region_init(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_window(ptr noundef %0) #16
  tail call fastcc void @region_subwindow(ptr noundef %3, ptr noundef %1) #17
  tail call fastcc void @region_update_rect(ptr noundef %1) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @region_toggle_hidden(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = tail call ptr @CTX_wm_area(ptr noundef %0) #16
  %5 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 10
  %6 = load i16, ptr %5, align 2, !tbaa !58
  %7 = xor i16 %6, 1
  store i16 %7, ptr %5, align 2, !tbaa !58
  %8 = icmp eq i8 %2, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 17
  %11 = load i16, ptr %10, align 2, !tbaa !99
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @region_blend_start(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %1) #16
  br label %22

14:                                               ; preds = %9, %3
  %15 = and i16 %6, 1
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 26
  tail call void @WM_event_remove_handlers(ptr noundef %0, ptr noundef nonnull %18) #16
  br label %19

19:                                               ; preds = %17, %14
  %20 = tail call ptr @CTX_wm_manager(ptr noundef %0) #16
  %21 = tail call ptr @CTX_wm_window(ptr noundef %0) #16
  tail call void @ED_area_initialize(ptr noundef %20, ptr noundef %21, ptr noundef %4) #17
  tail call void @ED_area_tag_redraw(ptr noundef %4) #17
  br label %22

22:                                               ; preds = %19, %13
  ret void
}

; Function Attrs: optsize
declare void @region_blend_start(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_event_remove_handlers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_region_toggle_hidden(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @region_toggle_hidden(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 1) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_area_data_copy(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 8
  %5 = load i8, ptr %4, align 8, !tbaa !32
  %6 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 12
  %7 = load i16, ptr %6, align 2, !tbaa !116
  %8 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 12
  store i16 %7, ptr %8, align 2, !tbaa !116
  %9 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 8
  %10 = load i8, ptr %9, align 8, !tbaa !32
  store i8 %10, ptr %4, align 8, !tbaa !32
  %11 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 18
  %12 = load ptr, ptr %11, align 8, !tbaa !23
  %13 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 18
  store ptr %12, ptr %13, align 8, !tbaa !23
  %14 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 9
  %15 = load i8, ptr %14, align 1, !tbaa !73
  %16 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 9
  store i8 %15, ptr %16, align 1, !tbaa !73
  %17 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 14
  %18 = load i16, ptr %17, align 2, !tbaa !117
  %19 = and i16 %18, -2
  %20 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 14
  %21 = load i16, ptr %20, align 2, !tbaa !117
  %22 = and i16 %21, 1
  %23 = or disjoint i16 %22, %19
  store i16 %23, ptr %17, align 2, !tbaa !117
  %24 = icmp eq i8 %2, 0
  %25 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 19
  br i1 %24, label %38, label %26

26:                                               ; preds = %3
  tail call void @BKE_spacedata_freelist(ptr noundef nonnull %25) #16
  %27 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 19
  tail call void @BKE_spacedata_copylist(ptr noundef nonnull %25, ptr noundef nonnull %27) #16
  %28 = zext i8 %5 to i32
  %29 = tail call ptr @BKE_spacetype_from_id(i32 noundef %28) #16
  %30 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 20
  %31 = load ptr, ptr %30, align 8, !tbaa !50
  %32 = icmp eq ptr %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %26, %33
  %34 = phi ptr [ %35, %33 ], [ %31, %26 ]
  tail call void @BKE_area_region_free(ptr noundef %29, ptr noundef nonnull %34) #16
  %35 = load ptr, ptr %34, align 8, !tbaa !50
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %33, !llvm.loop !118

37:                                               ; preds = %33, %26
  tail call void @BLI_freelistN(ptr noundef nonnull %30) #16
  br label %40

38:                                               ; preds = %3
  %39 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 19
  tail call void @BKE_spacedata_copylist(ptr noundef nonnull %25, ptr noundef nonnull %39) #16
  br label %40

40:                                               ; preds = %38, %37
  %41 = load i8, ptr %9, align 8, !tbaa !32
  %42 = zext i8 %41 to i32
  %43 = tail call ptr @BKE_spacetype_from_id(i32 noundef %42) #16
  %44 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 20
  %45 = load ptr, ptr %44, align 8, !tbaa !50
  %46 = icmp eq ptr %45, null
  br i1 %46, label %54, label %47

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 20
  br label %49

49:                                               ; preds = %47, %49
  %50 = phi ptr [ %45, %47 ], [ %52, %49 ]
  %51 = tail call ptr @BKE_area_region_copy(ptr noundef %43, ptr noundef nonnull %50) #16
  tail call void @BLI_addtail(ptr noundef nonnull %48, ptr noundef %51) #16
  %52 = load ptr, ptr %50, align 8, !tbaa !50
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %49, !llvm.loop !119

54:                                               ; preds = %49, %40
  ret void
}

; Function Attrs: optsize
declare void @BKE_spacedata_freelist(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_spacedata_copylist(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_area_region_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_area_region_copy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @ED_area_data_swap(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #2 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.ListBase, align 8
  %5 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 12
  %6 = load i16, ptr %5, align 2, !tbaa !116
  %7 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 12
  store i16 %6, ptr %7, align 2, !tbaa !116
  %8 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 8
  %9 = load i8, ptr %8, align 8, !tbaa !32
  %10 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 8
  store i8 %9, ptr %10, align 8, !tbaa !32
  %11 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 18
  %12 = load ptr, ptr %11, align 8, !tbaa !23
  %13 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 18
  store ptr %12, ptr %13, align 8, !tbaa !23
  %14 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 9
  %15 = load i8, ptr %14, align 1, !tbaa !73
  %16 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 9
  store i8 %15, ptr %16, align 1, !tbaa !73
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3)
  %17 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %17, i64 16, i1 false), !tbaa.struct !120
  %18 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull align 8 dereferenceable(16) %18, i64 16, i1 false), !tbaa.struct !120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !120
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4)
  %19 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %19, i64 16, i1 false), !tbaa.struct !120
  %20 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(16) %20, i64 16, i1 false), !tbaa.struct !120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !120
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_area_swapspace(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !50
  %5 = tail call ptr %4(i64 noundef 160, ptr noundef nonnull @.str.1) #16
  tail call void @ED_area_exit(ptr noundef %0, ptr noundef %1) #16
  tail call void @ED_area_exit(ptr noundef %0, ptr noundef %2) #16
  tail call void @ED_area_data_copy(ptr noundef %5, ptr noundef %1, i8 noundef zeroext 0) #17
  tail call void @ED_area_data_copy(ptr noundef %1, ptr noundef %2, i8 noundef zeroext 1) #17
  tail call void @ED_area_data_copy(ptr noundef %2, ptr noundef %5, i8 noundef zeroext 1) #17
  %6 = tail call ptr @CTX_wm_manager(ptr noundef %0) #16
  %7 = tail call ptr @CTX_wm_window(ptr noundef %0) #16
  tail call void @ED_area_initialize(ptr noundef %6, ptr noundef %7, ptr noundef %1) #17
  %8 = tail call ptr @CTX_wm_manager(ptr noundef %0) #16
  %9 = tail call ptr @CTX_wm_window(ptr noundef %0) #16
  tail call void @ED_area_initialize(ptr noundef %8, ptr noundef %9, ptr noundef %2) #17
  tail call void @BKE_screen_area_free(ptr noundef %5) #16
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  tail call void %10(ptr noundef %5) #16
  tail call void @WM_event_add_mousemove(ptr noundef %0) #16
  tail call void @ED_area_tag_redraw(ptr noundef %1) #17
  tail call void @ED_area_tag_refresh(ptr noundef %1) #17
  tail call void @ED_area_tag_redraw(ptr noundef %2) #17
  tail call void @ED_area_tag_refresh(ptr noundef %2) #17
  ret void
}

; Function Attrs: optsize
declare void @ED_area_exit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_screen_area_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_event_add_mousemove(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_area_newspace(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 8
  %5 = load i8, ptr %4, align 8, !tbaa !32
  %6 = zext i8 %5 to i32
  %7 = icmp eq i32 %6, %2
  br i1 %7, label %52, label %8

8:                                                ; preds = %3
  tail call void @ED_area_exit(ptr noundef %0, ptr noundef nonnull %1) #16
  %9 = tail call ptr @BKE_spacetype_from_id(i32 noundef %2) #16
  %10 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !121
  %12 = trunc i32 %2 to i8
  store i8 %12, ptr %4, align 8, !tbaa !32
  %13 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 9
  store i8 %12, ptr %13, align 1, !tbaa !73
  %14 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 18
  store ptr %9, ptr %14, align 8, !tbaa !23
  br label %15

15:                                               ; preds = %19, %8
  %16 = phi ptr [ %10, %8 ], [ %17, %19 ]
  %17 = load ptr, ptr %16, align 8, !tbaa !50
  %18 = icmp eq ptr %17, null
  br i1 %18, label %35, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.SpaceLink, ptr %17, i64 0, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !122
  %22 = icmp eq i32 %21, %2
  br i1 %22, label %23, label %15, !llvm.loop !124

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.SpaceLink, ptr %17, i64 0, i32 2
  %25 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %24) #17, !range !98
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.SpaceType, ptr %9, i64 0, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !125
  tail call void %29(ptr noundef nonnull %17) #16
  tail call void @BLI_freelinkN(ptr noundef nonnull %10, ptr noundef nonnull %17) #16
  %30 = icmp eq ptr %11, %17
  %31 = select i1 %30, ptr null, ptr %11
  br label %37

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.SpaceLink, ptr %11, i64 0, i32 2
  %34 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %33, ptr noundef nonnull align 8 dereferenceable(16) %34, i64 16, i1 false), !tbaa.struct !120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %34, ptr noundef nonnull align 8 dereferenceable(16) %24, i64 16, i1 false), !tbaa.struct !120
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %24) #17
  tail call void @BLI_remlink(ptr noundef nonnull %10, ptr noundef nonnull %17) #16
  tail call void @BLI_addhead(ptr noundef nonnull %10, ptr noundef nonnull %17) #16
  br label %49

35:                                               ; preds = %15
  %36 = icmp eq ptr %9, null
  br i1 %36, label %49, label %37

37:                                               ; preds = %27, %35
  %38 = phi ptr [ %11, %35 ], [ %31, %27 ]
  %39 = getelementptr inbounds %struct.SpaceType, ptr %9, i64 0, i32 5
  %40 = load ptr, ptr %39, align 8, !tbaa !126
  %41 = tail call ptr %40(ptr noundef %0) #16
  tail call void @BLI_addhead(ptr noundef nonnull %10, ptr noundef %41) #16
  %42 = icmp eq ptr %38, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.SpaceLink, ptr %38, i64 0, i32 2
  %45 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %44, ptr noundef nonnull align 8 dereferenceable(16) %45, i64 16, i1 false), !tbaa.struct !120
  br label %46

46:                                               ; preds = %43, %37
  %47 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 20
  %48 = getelementptr inbounds %struct.SpaceLink, ptr %41, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %47, ptr noundef nonnull align 8 dereferenceable(16) %48, i64 16, i1 false), !tbaa.struct !120
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %48) #17
  br label %49

49:                                               ; preds = %35, %46, %32
  %50 = tail call ptr @CTX_wm_manager(ptr noundef %0) #16
  %51 = tail call ptr @CTX_wm_window(ptr noundef %0) #16
  tail call void @ED_area_initialize(ptr noundef %50, ptr noundef %51, ptr noundef %1) #17
  tail call void @WM_event_add_mousemove(ptr noundef %0) #16
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 252837888, ptr noundef %1) #16
  tail call void @ED_area_tag_refresh(ptr noundef %1) #17
  br label %52

52:                                               ; preds = %49, %3
  tail call void @ED_area_tag_redraw(ptr noundef %1) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = load ptr, ptr %0, align 8, !tbaa !127
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @BLI_listbase_clear(ptr nocapture noundef writeonly %0) unnamed_addr #6 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_area_prevspace(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !121
  br label %9

7:                                                ; preds = %2
  %8 = tail call ptr @CTX_wm_space_data(ptr noundef %0) #16
  br label %9

9:                                                ; preds = %7, %4
  %10 = phi ptr [ %6, %4 ], [ %8, %7 ]
  %11 = icmp eq ptr %10, null
  br i1 %11, label %27, label %12

12:                                               ; preds = %9
  %13 = load ptr, ptr %10, align 8, !tbaa !128
  %14 = icmp eq ptr %13, null
  br i1 %14, label %27, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.SpaceLink, ptr %13, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !122
  %18 = icmp eq i32 %17, 5
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = load ptr, ptr %13, align 8, !tbaa !128
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.SpaceLink, ptr %20, i64 0, i32 3
  %24 = load i32, ptr %23, align 8, !tbaa !122
  br label %25

25:                                               ; preds = %15, %19, %22
  %26 = phi i32 [ %24, %22 ], [ %17, %19 ], [ %17, %15 ]
  tail call void @ED_area_newspace(ptr noundef %0, ptr noundef %1, i32 noundef %26) #17
  tail call void @ED_area_tag_redraw(ptr noundef %1) #17
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 252837888, ptr noundef %1) #16
  br label %27

27:                                               ; preds = %9, %12, %25
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_wm_space_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ED_area_header_switchbutton(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = tail call ptr @CTX_wm_area(ptr noundef %0) #16
  %6 = tail call ptr @CTX_wm_screen(ptr noundef %0) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #18
  %7 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !38
  %8 = sitofp i16 %7 to double
  %9 = fmul double %8, 4.000000e-01
  %10 = fptosi double %9 to i32
  call void @RNA_pointer_create(ptr noundef %6, ptr noundef nonnull @RNA_Area, ptr noundef %5, ptr noundef nonnull %4) #16
  %11 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !38
  %12 = sitofp i16 %11 to double
  %13 = fmul double %12, 1.500000e+00
  %14 = fptosi double %13 to i16
  %15 = call ptr @uiDefButR(ptr noundef %1, i32 noundef 5632, i32 noundef 0, ptr noundef nonnull @.str.2, i32 noundef %10, i32 noundef %2, i16 noundef signext %14, i16 noundef signext %11, ptr noundef nonnull %4, ptr noundef nonnull @.str.3, i32 noundef 0, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.2) #16
  %16 = sitofp i32 %10 to double
  %17 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !38
  %18 = sitofp i16 %17 to double
  %19 = call double @llvm.fmuladd.f64(double %18, double 1.700000e+00, double %16)
  %20 = fptosi double %19 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #18
  ret i32 %20
}

; Function Attrs: optsize
declare ptr @CTX_wm_screen(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @uiDefButR(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, ptr noundef, i32 noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #10

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_region_panels(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef readonly %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = tail call ptr @CTX_wm_area(ptr noundef %0) #16
  %12 = tail call ptr @UI_GetStyleDraw() #16
  %13 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #18
  %14 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 8
  %15 = load i16, ptr %14, align 2, !tbaa !70
  %16 = icmp ne i16 %15, 5
  %17 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !38
  %18 = sext i16 %17 to i32
  %19 = icmp eq i32 %4, -1
  br i1 %19, label %23, label %20

20:                                               ; preds = %5
  %21 = tail call zeroext i8 @UI_view2d_tab_set(ptr noundef nonnull %13, i32 noundef %4) #16
  %22 = icmp eq i8 %21, 0
  br label %23

23:                                               ; preds = %20, %5
  %24 = phi i1 [ %22, %20 ], [ true, %5 ]
  %25 = icmp ne i32 %2, 0
  %26 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 13
  %27 = load i16, ptr %26, align 8, !tbaa !129
  %28 = and i16 %27, -31
  br i1 %25, label %29, label %35

29:                                               ; preds = %23
  %30 = or disjoint i16 %28, 18
  store i16 %30, ptr %26, align 8, !tbaa !129
  %31 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 9
  %32 = load i16, ptr %31, align 8, !tbaa !130
  %33 = and i16 %32, -11
  %34 = or disjoint i16 %33, 2
  store i16 %34, ptr %31, align 8, !tbaa !130
  br label %40

35:                                               ; preds = %23
  store i16 %28, ptr %26, align 8, !tbaa !129
  %36 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 9
  %37 = load i16, ptr %36, align 8, !tbaa !130
  %38 = and i16 %37, -11
  %39 = or disjoint i16 %38, 8
  store i16 %39, ptr %36, align 8, !tbaa !130
  br label %40

40:                                               ; preds = %35, %29
  %41 = phi i16 [ %39, %35 ], [ %34, %29 ]
  %42 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 9
  %43 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 20
  %44 = load ptr, ptr %43, align 8, !tbaa !12
  %45 = getelementptr inbounds %struct.ARegionType, ptr %44, i64 0, i32 14, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !50
  %47 = icmp eq ptr %46, null
  br i1 %47, label %80, label %48

48:                                               ; preds = %40
  %49 = icmp eq ptr %3, null
  br label %50

50:                                               ; preds = %48, %74
  %51 = phi ptr [ %46, %48 ], [ %77, %74 ]
  %52 = phi ptr [ null, %48 ], [ %75, %74 ]
  br i1 %49, label %60, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.PanelType, ptr %51, i64 0, i32 5
  %55 = load i8, ptr %54, align 8, !tbaa !131
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %53
  %58 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %54) #19
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %57, %53, %50
  %61 = getelementptr inbounds %struct.PanelType, ptr %51, i64 0, i32 12
  %62 = load ptr, ptr %61, align 8, !tbaa !132
  %63 = icmp eq ptr %62, null
  br i1 %63, label %74, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.PanelType, ptr %51, i64 0, i32 10
  %66 = load ptr, ptr %65, align 8, !tbaa !135
  %67 = icmp eq ptr %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %64
  %69 = call i32 %66(ptr noundef %0, ptr noundef nonnull %51) #16
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %64, %68
  %72 = alloca [16 x i8], align 16
  store ptr %52, ptr %72, align 16, !tbaa !136
  %73 = getelementptr inbounds %struct.LinkNode, ptr %72, i64 0, i32 1
  store ptr %51, ptr %73, align 8, !tbaa !138
  br label %74

74:                                               ; preds = %60, %68, %71, %57
  %75 = phi ptr [ %72, %71 ], [ %52, %68 ], [ %52, %60 ], [ %52, %57 ]
  %76 = getelementptr inbounds %struct.PanelType, ptr %51, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !50
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %50, !llvm.loop !139

79:                                               ; preds = %74
  br i1 %16, label %104, label %82

80:                                               ; preds = %40
  br i1 %16, label %104, label %81

81:                                               ; preds = %80
  tail call void @UI_panel_category_clear_all(ptr noundef nonnull %1) #16
  br label %98

82:                                               ; preds = %79
  call void @UI_panel_category_clear_all(ptr noundef %1) #16
  %83 = icmp eq ptr %75, null
  br i1 %83, label %98, label %84

84:                                               ; preds = %82, %95
  %85 = phi ptr [ %96, %95 ], [ %75, %82 ]
  %86 = getelementptr inbounds %struct.LinkNode, ptr %85, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !138
  %88 = getelementptr inbounds %struct.PanelType, ptr %87, i64 0, i32 6
  %89 = load i8, ptr %88, align 8, !tbaa !131
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %84
  %92 = call ptr @UI_panel_category_find(ptr noundef %1, ptr noundef nonnull %88) #16
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  call void @UI_panel_category_add(ptr noundef %1, ptr noundef nonnull %88) #16
  br label %95

95:                                               ; preds = %84, %94, %91
  %96 = load ptr, ptr %85, align 8, !tbaa !136
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %84, !llvm.loop !140

98:                                               ; preds = %95, %81, %82
  %99 = phi ptr [ null, %81 ], [ null, %82 ], [ %75, %95 ]
  %100 = call zeroext i8 @UI_panel_category_is_visible(ptr noundef %1) #16
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %98
  %103 = call ptr @UI_panel_category_active_get(ptr noundef %1, i8 noundef zeroext 1) #16
  br label %104

104:                                              ; preds = %80, %98, %102, %79
  %105 = phi ptr [ %99, %102 ], [ %75, %79 ], [ %99, %98 ], [ null, %80 ]
  %106 = phi i1 [ %16, %102 ], [ true, %79 ], [ true, %98 ], [ true, %80 ]
  %107 = phi ptr [ %103, %102 ], [ null, %79 ], [ null, %98 ], [ null, %80 ]
  %108 = phi i32 [ %18, %102 ], [ 0, %79 ], [ 0, %98 ], [ 0, %80 ]
  %109 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1
  %110 = icmp eq ptr %105, null
  %111 = getelementptr inbounds %struct.uiStyle, ptr %12, i64 0, i32 15
  %112 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 1
  %113 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 3
  %114 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 2
  br label %115

115:                                              ; preds = %224, %104
  %116 = phi i32 [ 2, %104 ], [ %230, %224 ]
  br i1 %25, label %117, label %120

117:                                              ; preds = %115
  %118 = call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %109) #17
  %119 = fptosi float %118 to i32
  br label %120

120:                                              ; preds = %115, %117
  %121 = phi i32 [ %119, %117 ], [ 340, %115 ]
  %122 = load ptr, ptr %43, align 8, !tbaa !12
  %123 = getelementptr inbounds %struct.ARegionType, ptr %122, i64 0, i32 18
  %124 = load i32, ptr %123, align 8, !tbaa !103
  %125 = icmp eq i32 %124, 0
  %126 = select i1 %125, i32 20, i32 10
  %127 = sub nsw i32 %121, %108
  call void @uiBeginPanels(ptr noundef %0, ptr noundef nonnull %1) #16
  call void @UI_view2d_view_ortho(ptr noundef nonnull %13) #16
  br i1 %110, label %209, label %128

128:                                              ; preds = %120, %206
  %129 = phi ptr [ %207, %206 ], [ %105, %120 ]
  %130 = getelementptr inbounds %struct.LinkNode, ptr %129, i64 0, i32 1
  %131 = load ptr, ptr %130, align 8, !tbaa !138
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #18
  %132 = call ptr @uiPanelFindByType(ptr noundef %1, ptr noundef %131) #16
  br i1 %106, label %147, label %133

133:                                              ; preds = %128
  %134 = getelementptr inbounds %struct.PanelType, ptr %131, i64 0, i32 6
  %135 = load i8, ptr %134, align 8, !tbaa !131
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %147, label %137

137:                                              ; preds = %133
  %138 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %107, ptr noundef nonnull dereferenceable(1) %134) #19
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %147, label %140

140:                                              ; preds = %137
  %141 = icmp eq ptr %132, null
  br i1 %141, label %206, label %142

142:                                              ; preds = %140
  %143 = getelementptr inbounds %struct.Panel, ptr %132, i64 0, i32 13
  %144 = load i16, ptr %143, align 4, !tbaa !141
  %145 = and i16 %144, 32
  %146 = icmp eq i16 %145, 0
  br i1 %146, label %206, label %147

147:                                              ; preds = %142, %137, %133, %128
  %148 = getelementptr inbounds %struct.PanelType, ptr %131, i64 0, i32 2
  %149 = call ptr @uiBeginBlock(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %148, i16 noundef signext 0) #16
  %150 = call ptr @uiBeginPanel(ptr noundef %11, ptr noundef %1, ptr noundef %149, ptr noundef %131, ptr noundef %132, ptr noundef nonnull %10) #16
  %151 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !38
  %152 = sext i16 %151 to i32
  %153 = sitofp i16 %151 to float
  %154 = fmul float %153, 0x3FF19999A0000000
  %155 = fptosi float %154 to i32
  %156 = getelementptr inbounds %struct.PanelType, ptr %131, i64 0, i32 11
  %157 = load ptr, ptr %156, align 8, !tbaa !143
  %158 = icmp eq ptr %157, null
  br i1 %158, label %180, label %159

159:                                              ; preds = %147
  %160 = getelementptr inbounds %struct.PanelType, ptr %131, i64 0, i32 9
  %161 = load i32, ptr %160, align 8, !tbaa !144
  %162 = and i32 %161, 2
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %180

164:                                              ; preds = %159
  %165 = load i8, ptr %10, align 1, !tbaa !131
  %166 = icmp ne i8 %165, 0
  %167 = or i1 %25, %166
  br i1 %167, label %168, label %180

168:                                              ; preds = %164
  %169 = load i16, ptr %111, align 2, !tbaa !145
  %170 = sitofp i16 %169 to float
  %171 = call float @llvm.fmuladd.f32(float %153, float 0x3FF19999A0000000, float %170)
  %172 = fptosi float %171 to i32
  %173 = call ptr @uiBlockLayout(ptr noundef %149, i32 noundef 0, i32 noundef 1, i32 noundef %155, i32 noundef %172, i32 noundef %152, i32 noundef 1, i32 noundef 0, ptr noundef %12) #16
  %174 = getelementptr inbounds %struct.Panel, ptr %150, i64 0, i32 3
  store ptr %173, ptr %174, align 8, !tbaa !148
  %175 = load ptr, ptr %156, align 8, !tbaa !143
  call void %175(ptr noundef %0, ptr noundef %150) #16
  call void @uiBlockLayoutResolve(ptr noundef %149, ptr noundef nonnull %8, ptr noundef nonnull %9) #16
  %176 = load i32, ptr %8, align 4, !tbaa !30
  %177 = sub nsw i32 %176, %155
  %178 = trunc i32 %177 to i16
  %179 = getelementptr inbounds %struct.Panel, ptr %150, i64 0, i32 11
  store i16 %178, ptr %179, align 8, !tbaa !149
  store ptr null, ptr %174, align 8, !tbaa !148
  br label %182

180:                                              ; preds = %164, %159, %147
  %181 = getelementptr inbounds %struct.Panel, ptr %150, i64 0, i32 11
  store i16 0, ptr %181, align 8, !tbaa !149
  br label %182

182:                                              ; preds = %180, %168
  %183 = load i8, ptr %10, align 1, !tbaa !131
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %203, label %185

185:                                              ; preds = %182
  %186 = load i16, ptr %14, align 2, !tbaa !70
  %187 = icmp eq i16 %186, 5
  %188 = select i1 %187, i32 3, i32 0
  %189 = load i16, ptr %111, align 2, !tbaa !145
  %190 = sext i16 %189 to i32
  %191 = shl nsw i32 %190, 1
  %192 = sub nsw i32 %127, %191
  %193 = call ptr @uiBlockLayout(ptr noundef %149, i32 noundef 1, i32 noundef %188, i32 noundef %190, i32 noundef 0, i32 noundef %192, i32 noundef %126, i32 noundef 0, ptr noundef %12) #16
  %194 = getelementptr inbounds %struct.Panel, ptr %150, i64 0, i32 3
  store ptr %193, ptr %194, align 8, !tbaa !148
  %195 = getelementptr inbounds %struct.PanelType, ptr %131, i64 0, i32 12
  %196 = load ptr, ptr %195, align 8, !tbaa !132
  call void %196(ptr noundef %0, ptr noundef nonnull %150) #16
  call void @uiBlockLayoutResolve(ptr noundef %149, ptr noundef nonnull %8, ptr noundef nonnull %9) #16
  store ptr null, ptr %194, align 8, !tbaa !148
  %197 = load i16, ptr %111, align 2, !tbaa !145
  %198 = sext i16 %197 to i32
  %199 = shl nsw i32 %198, 1
  %200 = load i32, ptr %9, align 4, !tbaa !30
  %201 = sub nsw i32 %200, %199
  store i32 %201, ptr %9, align 4, !tbaa !30
  %202 = sub nsw i32 0, %201
  br label %204

203:                                              ; preds = %182
  store i32 0, ptr %9, align 4, !tbaa !30
  br label %204

204:                                              ; preds = %203, %185
  %205 = phi i32 [ 0, %203 ], [ %202, %185 ]
  call void @uiEndPanel(ptr noundef %149, i32 noundef %127, i32 noundef %205) #16
  call void @uiEndBlock(ptr noundef %0, ptr noundef %149) #16
  br label %206

206:                                              ; preds = %140, %142, %204
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #18
  %207 = load ptr, ptr %129, align 8, !tbaa !136
  %208 = icmp eq ptr %207, null
  br i1 %208, label %209, label %128, !llvm.loop !150

209:                                              ; preds = %206, %120
  call void @uiEndPanels(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6, ptr noundef nonnull %7) #16
  br i1 %25, label %210, label %218

210:                                              ; preds = %209
  %211 = load float, ptr %113, align 4, !tbaa !151
  %212 = fcmp olt float %211, 0xBF50624DE0000000
  br i1 %212, label %213, label %224

213:                                              ; preds = %210
  %214 = load i32, ptr %7, align 4, !tbaa !30
  %215 = load float, ptr %114, align 8, !tbaa !152
  %216 = fptosi float %215 to i32
  %217 = call fastcc i32 @min_ii(i32 noundef %214, i32 noundef %216) #17
  store i32 %217, ptr %7, align 4, !tbaa !30
  br label %224

218:                                              ; preds = %209
  br i1 %24, label %219, label %224

219:                                              ; preds = %218
  %220 = load i32, ptr %6, align 4, !tbaa !30
  %221 = load float, ptr %112, align 4, !tbaa !153
  %222 = fptosi float %221 to i32
  %223 = call fastcc i32 @max_ii(i32 noundef %220, i32 noundef %222) #17
  store i32 %223, ptr %6, align 4, !tbaa !30
  br label %224

224:                                              ; preds = %218, %219, %210, %213
  %225 = load i32, ptr %7, align 4, !tbaa !30
  %226 = sub nsw i32 0, %225
  store i32 %226, ptr %7, align 4, !tbaa !30
  %227 = load i32, ptr %6, align 4, !tbaa !30
  call void @UI_view2d_totRect_set(ptr noundef nonnull %13, i32 noundef %227, i32 noundef %226) #16
  %228 = load i16, ptr %42, align 8, !tbaa !130
  %229 = icmp ne i16 %41, %228
  %230 = add nsw i32 %116, -1
  %231 = icmp ugt i32 %116, 1
  %232 = select i1 %229, i1 %231, i1 false
  br i1 %232, label %115, label %233, !llvm.loop !154

233:                                              ; preds = %224
  %234 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 17
  %235 = load i16, ptr %234, align 2, !tbaa !99
  %236 = icmp eq i16 %235, 0
  br i1 %236, label %246, label %237

237:                                              ; preds = %233
  call void @UI_view2d_view_restore(ptr noundef %0) #16
  call void @glEnable(i32 noundef 3042) #16
  %238 = load ptr, ptr %43, align 8, !tbaa !12
  %239 = getelementptr inbounds %struct.ARegionType, ptr %238, i64 0, i32 2
  %240 = load i32, ptr %239, align 8, !tbaa !33
  %241 = icmp eq i32 %240, 7
  %242 = select i1 %241, i32 133, i32 2
  call void @UI_ThemeColor4(i32 noundef %242) #16
  %243 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %244 = call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %243) #17
  %245 = call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %243) #17
  call void @glRecti(i32 noundef 0, i32 noundef 0, i32 noundef %244, i32 noundef %245) #16
  call void @glDisable(i32 noundef 3042) #16
  br label %252

246:                                              ; preds = %233
  %247 = load ptr, ptr %43, align 8, !tbaa !12
  %248 = getelementptr inbounds %struct.ARegionType, ptr %247, i64 0, i32 2
  %249 = load i32, ptr %248, align 8, !tbaa !33
  %250 = icmp eq i32 %249, 7
  %251 = select i1 %250, i32 133, i32 2
  call void @UI_ThemeClearColor(i32 noundef %251) #16
  call void @glClear(i32 noundef 16384) #16
  br label %252

252:                                              ; preds = %246, %237
  call void @UI_view2d_view_ortho(ptr noundef nonnull %13) #16
  call void @uiDrawPanels(ptr noundef %0, ptr noundef nonnull %1) #16
  call void @UI_view2d_view_restore(ptr noundef %0) #16
  br i1 %106, label %254, label %253

253:                                              ; preds = %252
  call void @UI_panel_category_draw_all(ptr noundef nonnull %1, ptr noundef %107) #16
  br label %254

254:                                              ; preds = %253, %252
  %255 = call ptr @UI_view2d_scrollers_calc(ptr noundef %0, ptr noundef nonnull %13, i16 noundef signext -1, i16 noundef signext -1, i16 noundef signext -1, i16 noundef signext -1) #16
  call void @UI_view2d_scrollers_draw(ptr noundef %0, ptr noundef nonnull %13, ptr noundef %255) #16
  call void @UI_view2d_scrollers_free(ptr noundef %255) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #18
  ret void
}

; Function Attrs: optsize
declare ptr @UI_GetStyleDraw() local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @UI_view2d_tab_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: optsize
declare void @UI_panel_category_clear_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @UI_panel_category_find(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @UI_panel_category_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @UI_panel_category_is_visible(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @UI_panel_category_active_get(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_x(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %3 = load float, ptr %2, align 4, !tbaa !155
  %4 = load float, ptr %0, align 4, !tbaa !156
  %5 = fsub float %3, %4
  ret float %5
}

; Function Attrs: optsize
declare void @uiBeginPanels(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @UI_view2d_view_ortho(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @uiPanelFindByType(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @uiBeginBlock(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @uiBeginPanel(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @uiBlockLayout(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #10

; Function Attrs: optsize
declare void @uiBlockLayoutResolve(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @uiEndPanel(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @uiEndBlock(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @uiEndPanels(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @min_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #12 {
  %3 = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @max_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #12 {
  %3 = tail call i32 @llvm.smax.i32(i32 %1, i32 %0)
  ret i32 %3
}

; Function Attrs: optsize
declare void @UI_view2d_totRect_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @UI_view2d_view_restore(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glEnable(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @UI_ThemeColor4(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glRecti(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_x(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !66
  %4 = load i32, ptr %0, align 4, !tbaa !64
  %5 = sub nsw i32 %3, %4
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_y(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !67
  %4 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !65
  %6 = sub nsw i32 %3, %5
  ret i32 %6
}

; Function Attrs: optsize
declare void @glDisable(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @uiDrawPanels(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @UI_panel_category_draw_all(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @UI_view2d_scrollers_calc(ptr noundef, ptr noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @UI_view2d_scrollers_draw(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @UI_view2d_scrollers_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_region_panels_init(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  %4 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %5 = load i16, ptr %4, align 8, !tbaa !111
  %6 = sext i16 %5 to i32
  %7 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %8 = load i16, ptr %7, align 2, !tbaa !112
  %9 = sext i16 %8 to i32
  tail call void @UI_view2d_region_reinit(ptr noundef nonnull %3, i16 noundef signext 4, i32 noundef %6, i32 noundef %9) #16
  %10 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %11 = load ptr, ptr %10, align 8, !tbaa !113
  %12 = tail call ptr @WM_keymap_find(ptr noundef %11, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef 0) #16
  %13 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 26
  %14 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %13, ptr noundef %12) #16
  ret void
}

; Function Attrs: optsize
declare void @UI_view2d_region_reinit(ptr noundef, i16 noundef signext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @WM_keymap_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @WM_event_add_keymap_handler(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_region_header(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.Header, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = tail call ptr @UI_GetStyleDraw() #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  %7 = tail call i32 @ED_area_headersize() #17
  %8 = tail call i32 @ED_screen_area_active(ptr noundef %0) #16
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i32 11, i32 10
  tail call void @UI_ThemeClearColor(i32 noundef %10) #16
  tail call void @glClear(i32 noundef 16384) #16
  %11 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  tail call void @UI_view2d_view_ortho(ptr noundef nonnull %11) #16
  %12 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !38
  %13 = sitofp i16 %12 to float
  %14 = fmul float %13, 0x3FD99999A0000000
  %15 = fptosi float %14 to i32
  store i32 %15, ptr %4, align 4, !tbaa !30
  %16 = sitofp i32 %7 to double
  %17 = fmul float %13, 0x3FC99999A0000000
  %18 = tail call float @llvm.floor.f32(float %17)
  %19 = fpext float %18 to double
  %20 = fsub double %16, %19
  %21 = fptosi double %20 to i32
  store i32 %21, ptr %5, align 4, !tbaa !30
  %22 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 20
  %23 = load ptr, ptr %22, align 8, !tbaa !12
  %24 = getelementptr inbounds %struct.ARegionType, ptr %23, i64 0, i32 15
  %25 = load ptr, ptr %24, align 8, !tbaa !50
  %26 = icmp eq ptr %25, null
  br i1 %26, label %53, label %27

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.Header, ptr %3, i64 0, i32 1
  br label %29

29:                                               ; preds = %27, %45
  %30 = phi ptr [ %25, %27 ], [ %49, %45 ]
  %31 = phi i32 [ %15, %27 ], [ %48, %45 ]
  %32 = getelementptr inbounds %struct.HeaderType, ptr %30, i64 0, i32 2
  %33 = call ptr @uiBeginBlock(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %32, i16 noundef signext 0) #16
  %34 = load i32, ptr %4, align 4, !tbaa !30
  %35 = load i32, ptr %5, align 4, !tbaa !30
  %36 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !38
  %37 = sext i16 %36 to i32
  %38 = call ptr @uiBlockLayout(ptr noundef %33, i32 noundef 0, i32 noundef 1, i32 noundef %34, i32 noundef %35, i32 noundef %37, i32 noundef 1, i32 noundef 0, ptr noundef %6) #16
  %39 = getelementptr inbounds %struct.HeaderType, ptr %30, i64 0, i32 4
  %40 = load ptr, ptr %39, align 8, !tbaa !157
  %41 = icmp eq ptr %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %29
  store ptr %30, ptr %3, align 8, !tbaa !159
  store ptr %38, ptr %28, align 8, !tbaa !161
  call void %40(ptr noundef %0, ptr noundef nonnull %3) #16
  %43 = call i32 @uiLayoutGetWidth(ptr noundef %38) #16
  store i32 %43, ptr %4, align 4, !tbaa !30
  %44 = call i32 @llvm.smax.i32(i32 %43, i32 %31)
  br label %45

45:                                               ; preds = %42, %29
  %46 = phi i32 [ %31, %29 ], [ %44, %42 ]
  call void @uiBlockLayoutResolve(ptr noundef %33, ptr noundef nonnull %4, ptr noundef nonnull %5) #16
  %47 = load i32, ptr %4, align 4, !tbaa !30
  %48 = call i32 @llvm.smax.i32(i32 %47, i32 %46)
  call void @uiEndBlock(ptr noundef %0, ptr noundef %33) #16
  call void @uiDrawBlock(ptr noundef %0, ptr noundef %33) #16
  %49 = load ptr, ptr %30, align 8, !tbaa !50
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %29, !llvm.loop !162

51:                                               ; preds = %45
  %52 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !38
  br label %53

53:                                               ; preds = %51, %2
  %54 = phi i16 [ %12, %2 ], [ %52, %51 ]
  %55 = phi i32 [ %15, %2 ], [ %48, %51 ]
  %56 = sext i16 %54 to i32
  %57 = add i32 %55, 80
  %58 = add i32 %57, %56
  call void @UI_view2d_totRect_set(ptr noundef nonnull %11, i32 noundef %58, i32 noundef %7) #16
  call void @UI_view2d_view_restore(ptr noundef %0) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @ED_area_headersize() local_unnamed_addr #13 {
  %1 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !81
  %2 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !101
  %3 = sitofp i32 %2 to float
  %4 = fmul float %1, %3
  %5 = fdiv float %4, 7.200000e+01
  %6 = fmul float %5, 2.600000e+01
  %7 = fptosi float %6 to i32
  ret i32 %7
}

; Function Attrs: optsize
declare i32 @ED_screen_area_active(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @uiLayoutGetWidth(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @uiDrawBlock(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_region_header_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 5
  %4 = load i16, ptr %3, align 8, !tbaa !111
  %5 = sext i16 %4 to i32
  %6 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 6
  %7 = load i16, ptr %6, align 2, !tbaa !112
  %8 = sext i16 %7 to i32
  tail call void @UI_view2d_region_reinit(ptr noundef nonnull %2, i16 noundef signext 3, i32 noundef %5, i32 noundef %8) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_region_info_draw(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [4 x i32], align 16
  %6 = alloca %struct.rcti, align 4
  %7 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !38
  %8 = sext i16 %7 to i32
  %9 = tail call ptr @UI_GetStyleDraw() #16
  %10 = getelementptr inbounds %struct.uiStyle, ptr %9, i64 0, i32 6
  %11 = load i16, ptr %10, align 8, !tbaa !163
  %12 = sext i16 %11 to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #18
  call void @ED_region_visible_rect(ptr noundef %0, ptr noundef nonnull %6) #17
  %13 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3
  %14 = call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %13) #17
  %15 = sub nsw i32 %14, %8
  %16 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 2
  store i32 %15, ptr %16, align 4, !tbaa !65
  %17 = icmp eq i32 %2, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !66
  %21 = load i32, ptr %6, align 4, !tbaa !64
  %22 = sitofp i32 %21 to float
  %23 = call float @BLF_width(i32 noundef %12, ptr noundef %1, i64 noundef 1024) #16
  %24 = fadd float %23, %22
  %25 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !38
  %26 = sitofp i16 %25 to float
  %27 = call float @llvm.fmuladd.f32(float %26, float 0x3FF3333340000000, float %24)
  %28 = fptosi float %27 to i32
  %29 = call fastcc i32 @min_ii(i32 noundef %20, i32 noundef %28) #17
  store i32 %29, ptr %19, align 4, !tbaa !66
  br label %30

30:                                               ; preds = %18, %4
  %31 = call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %13) #17
  %32 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 3
  store i32 %31, ptr %32, align 4, !tbaa !67
  call void @glGetIntegerv(i32 noundef 3088, ptr noundef nonnull %5) #16
  %33 = load i32, ptr %13, align 8, !tbaa !48
  %34 = load i32, ptr %6, align 4, !tbaa !64
  %35 = add nsw i32 %34, %33
  %36 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3, i32 2
  %37 = load i32, ptr %36, align 8, !tbaa !49
  %38 = load i32, ptr %16, align 4, !tbaa !65
  %39 = add nsw i32 %38, %37
  %40 = call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %6) #17
  %41 = add nsw i32 %40, 1
  %42 = call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %6) #17
  %43 = add nsw i32 %42, 1
  call void @glScissor(i32 noundef %35, i32 noundef %39, i32 noundef %41, i32 noundef %43) #16
  call void @glEnable(i32 noundef 3042) #16
  call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #16
  call void @glColor4fv(ptr noundef %3) #16
  %44 = load i32, ptr %6, align 4, !tbaa !64
  %45 = load i32, ptr %16, align 4, !tbaa !65
  %46 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 1
  %47 = load i32, ptr %46, align 4, !tbaa !66
  %48 = add nsw i32 %47, 1
  %49 = load i32, ptr %32, align 4, !tbaa !67
  %50 = add nsw i32 %49, 1
  call void @glRecti(i32 noundef %44, i32 noundef %45, i32 noundef %48, i32 noundef %50) #16
  call void @glDisable(i32 noundef 3042) #16
  call void @UI_ThemeColor(i32 noundef 4) #16
  %51 = load i32, ptr %6, align 4, !tbaa !64
  %52 = sitofp i32 %51 to float
  %53 = load i32, ptr %16, align 4, !tbaa !65
  %54 = sitofp i32 %53 to float
  %55 = load i32, ptr %46, align 4, !tbaa !66
  %56 = sitofp i32 %55 to float
  %57 = load i32, ptr %32, align 4, !tbaa !67
  %58 = sitofp i32 %57 to float
  call void @BLF_clipping(i32 noundef %12, float noundef %52, float noundef %54, float noundef %56, float noundef %58) #16
  call void @BLF_enable(i32 noundef %12, i32 noundef 2) #16
  %59 = load i32, ptr %6, align 4, !tbaa !64
  %60 = sitofp i32 %59 to float
  %61 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !38
  %62 = sitofp i16 %61 to float
  %63 = call float @llvm.fmuladd.f32(float %62, float 0x3FE3333340000000, float %60)
  %64 = load i32, ptr %16, align 4, !tbaa !65
  %65 = sitofp i32 %64 to float
  %66 = call float @llvm.fmuladd.f32(float %62, float 0x3FD3333340000000, float %65)
  call void @BLF_position(i32 noundef %12, float noundef %63, float noundef %66, float noundef 0.000000e+00) #16
  call void @BLF_draw(i32 noundef %12, ptr noundef %1, i64 noundef 1024) #16
  call void @BLF_disable(i32 noundef %12, i32 noundef 2) #16
  %67 = load i32, ptr %5, align 16, !tbaa !30
  %68 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 1
  %69 = load i32, ptr %68, align 4, !tbaa !30
  %70 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 2
  %71 = load i32, ptr %70, align 8, !tbaa !30
  %72 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 3
  %73 = load i32, ptr %72, align 4, !tbaa !30
  call void @glScissor(i32 noundef %67, i32 noundef %69, i32 noundef %71, i32 noundef %73) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_region_visible_rect(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi ptr [ %0, %2 ], [ %6, %3 ]
  %5 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !97
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %3, !llvm.loop !164

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !29
  %10 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 1
  br label %11

11:                                               ; preds = %8, %38
  %12 = phi ptr [ %4, %8 ], [ %39, %38 ]
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %38, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 17
  %16 = load i16, ptr %15, align 2, !tbaa !99
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %38, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 3
  %20 = tail call zeroext i8 @BLI_rcti_isect(ptr noundef %1, ptr noundef nonnull %19, ptr noundef null) #16
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %38, label %22

22:                                               ; preds = %18
  %23 = load i32, ptr %1, align 4, !tbaa !64
  %24 = load i32, ptr %19, align 8, !tbaa !48
  %25 = sub nsw i32 %23, %24
  %26 = tail call i32 @llvm.abs.i32(i32 %25, i1 true)
  %27 = icmp ult i32 %26, 2
  %28 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 3, i32 1
  %29 = load i32, ptr %28, align 4, !tbaa !107
  br i1 %27, label %30, label %31

30:                                               ; preds = %22
  store i32 %29, ptr %1, align 4, !tbaa !64
  br label %31

31:                                               ; preds = %22, %30
  %32 = load i32, ptr %10, align 4, !tbaa !66
  %33 = sub nsw i32 %32, %29
  %34 = tail call i32 @llvm.abs.i32(i32 %33, i1 true)
  %35 = icmp ult i32 %34, 2
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, ptr %19, align 8, !tbaa !48
  store i32 %37, ptr %10, align 4, !tbaa !66
  br label %38

38:                                               ; preds = %11, %14, %31, %36, %18
  %39 = load ptr, ptr %12, align 8, !tbaa !100
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %11, !llvm.loop !165

41:                                               ; preds = %38
  %42 = load i32, ptr %9, align 8, !tbaa !48
  %43 = sub nsw i32 0, %42
  %44 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3, i32 2
  %45 = load i32, ptr %44, align 8, !tbaa !49
  %46 = sub nsw i32 0, %45
  tail call void @BLI_rcti_translate(ptr noundef %1, i32 noundef %43, i32 noundef %46) #16
  ret void
}

; Function Attrs: optsize
declare float @BLF_width(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glGetIntegerv(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glScissor(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glBlendFunc(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glColor4fv(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLF_clipping(i32 noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLF_enable(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLF_position(i32 noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLF_draw(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLF_disable(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_region_grid_draw(ptr noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #18
  tail call void @UI_ThemeColorShade(i32 noundef 2, i32 noundef 20) #16
  %8 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 2
  call void @UI_view2d_view_to_region(ptr noundef nonnull %8, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull %4, ptr noundef nonnull %5) #16
  call void @UI_view2d_view_to_region(ptr noundef nonnull %8, float noundef 1.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull %6, ptr noundef nonnull %7) #16
  %9 = load i32, ptr %4, align 4, !tbaa !30
  %10 = sitofp i32 %9 to float
  %11 = load i32, ptr %5, align 4, !tbaa !30
  %12 = sitofp i32 %11 to float
  %13 = load i32, ptr %6, align 4, !tbaa !30
  %14 = sitofp i32 %13 to float
  %15 = load i32, ptr %7, align 4, !tbaa !30
  %16 = sitofp i32 %15 to float
  call void @glRectf(float noundef %10, float noundef %12, float noundef %14, float noundef %16) #16
  %17 = fadd float %1, %2
  %18 = fmul float %17, 5.000000e-01
  %19 = fcmp ugt float %18, 0.000000e+00
  br i1 %19, label %20, label %128

20:                                               ; preds = %3
  %21 = fcmp olt float %18, 1.000000e+00
  %22 = insertelement <2 x float> <float poison, float 3.125000e-02>, float %18, i64 0
  br i1 %21, label %25, label %23

23:                                               ; preds = %20
  %24 = fcmp ult float %18, 4.000000e+00
  br i1 %24, label %35, label %30

25:                                               ; preds = %20, %25
  %26 = phi <2 x float> [ %27, %25 ], [ %22, %20 ]
  %27 = fmul <2 x float> %26, <float 4.000000e+00, float 4.000000e+00>
  %28 = extractelement <2 x float> %27, i64 0
  %29 = fcmp olt float %28, 1.000000e+00
  br i1 %29, label %25, label %35, !llvm.loop !166

30:                                               ; preds = %23, %30
  %31 = phi <2 x float> [ %32, %30 ], [ %22, %23 ]
  %32 = fmul <2 x float> %31, <float 2.500000e-01, float 2.500000e-01>
  %33 = extractelement <2 x float> %32, i64 0
  %34 = fcmp ult float %33, 4.000000e+00
  br i1 %34, label %35, label %30, !llvm.loop !167

35:                                               ; preds = %30, %25, %23
  %36 = phi <2 x float> [ %22, %23 ], [ %27, %25 ], [ %32, %30 ]
  %37 = extractelement <2 x float> %36, i64 0
  %38 = fmul float %37, 2.500000e-01
  %39 = call float @llvm.floor.f32(float %38)
  %40 = fneg float %39
  %41 = call float @llvm.fmuladd.f32(float %37, float 2.500000e-01, float %40)
  %42 = fcmp olt float %41, 0.000000e+00
  br i1 %42, label %46, label %43

43:                                               ; preds = %35
  %44 = fcmp ogt float %41, 1.000000e+00
  br i1 %44, label %45, label %46

45:                                               ; preds = %43
  br label %46

46:                                               ; preds = %35, %43, %45
  %47 = phi float [ 1.000000e+00, %45 ], [ %41, %43 ], [ 0.000000e+00, %35 ]
  %48 = fsub float 1.000000e+00, %47
  %49 = fmul float %48, 2.000000e+01
  %50 = fptosi float %49 to i32
  call void @UI_ThemeColorShade(i32 noundef 2, i32 noundef %50) #16
  call void @glBegin(i32 noundef 1) #16
  %51 = extractelement <2 x float> %36, i64 1
  br label %52

52:                                               ; preds = %46, %52
  %53 = phi float [ 0.000000e+00, %46 ], [ %87, %52 ]
  %54 = load i32, ptr %4, align 4, !tbaa !30
  %55 = sitofp i32 %54 to float
  %56 = load i32, ptr %5, align 4, !tbaa !30
  %57 = sitofp i32 %56 to float
  %58 = fsub float 1.000000e+00, %53
  %59 = load i32, ptr %7, align 4, !tbaa !30
  %60 = sitofp i32 %59 to float
  %61 = fmul float %53, %60
  %62 = call float @llvm.fmuladd.f32(float %57, float %58, float %61)
  call void @glVertex2f(float noundef %55, float noundef %62) #16
  %63 = load i32, ptr %6, align 4, !tbaa !30
  %64 = sitofp i32 %63 to float
  %65 = load i32, ptr %5, align 4, !tbaa !30
  %66 = sitofp i32 %65 to float
  %67 = load i32, ptr %7, align 4, !tbaa !30
  %68 = sitofp i32 %67 to float
  %69 = fmul float %53, %68
  %70 = call float @llvm.fmuladd.f32(float %66, float %58, float %69)
  call void @glVertex2f(float noundef %64, float noundef %70) #16
  %71 = load i32, ptr %4, align 4, !tbaa !30
  %72 = sitofp i32 %71 to float
  %73 = load i32, ptr %6, align 4, !tbaa !30
  %74 = sitofp i32 %73 to float
  %75 = fmul float %53, %74
  %76 = call float @llvm.fmuladd.f32(float %72, float %58, float %75)
  %77 = load i32, ptr %5, align 4, !tbaa !30
  %78 = sitofp i32 %77 to float
  call void @glVertex2f(float noundef %76, float noundef %78) #16
  %79 = load i32, ptr %4, align 4, !tbaa !30
  %80 = sitofp i32 %79 to float
  %81 = load i32, ptr %6, align 4, !tbaa !30
  %82 = sitofp i32 %81 to float
  %83 = fmul float %53, %82
  %84 = call float @llvm.fmuladd.f32(float %80, float %58, float %83)
  %85 = load i32, ptr %7, align 4, !tbaa !30
  %86 = sitofp i32 %85 to float
  call void @glVertex2f(float noundef %84, float noundef %86) #16
  %87 = fadd float %51, %53
  %88 = fcmp olt float %87, 1.000000e+00
  br i1 %88, label %52, label %89, !llvm.loop !168

89:                                               ; preds = %52
  call void @UI_ThemeColor(i32 noundef 2) #16
  br label %90

90:                                               ; preds = %89, %90
  %91 = phi float [ 0.000000e+00, %89 ], [ %125, %90 ]
  %92 = load i32, ptr %4, align 4, !tbaa !30
  %93 = sitofp i32 %92 to float
  %94 = load i32, ptr %5, align 4, !tbaa !30
  %95 = sitofp i32 %94 to float
  %96 = fsub float 1.000000e+00, %91
  %97 = load i32, ptr %7, align 4, !tbaa !30
  %98 = sitofp i32 %97 to float
  %99 = fmul float %91, %98
  %100 = call float @llvm.fmuladd.f32(float %95, float %96, float %99)
  call void @glVertex2f(float noundef %93, float noundef %100) #16
  %101 = load i32, ptr %6, align 4, !tbaa !30
  %102 = sitofp i32 %101 to float
  %103 = load i32, ptr %5, align 4, !tbaa !30
  %104 = sitofp i32 %103 to float
  %105 = load i32, ptr %7, align 4, !tbaa !30
  %106 = sitofp i32 %105 to float
  %107 = fmul float %91, %106
  %108 = call float @llvm.fmuladd.f32(float %104, float %96, float %107)
  call void @glVertex2f(float noundef %102, float noundef %108) #16
  %109 = load i32, ptr %4, align 4, !tbaa !30
  %110 = sitofp i32 %109 to float
  %111 = load i32, ptr %6, align 4, !tbaa !30
  %112 = sitofp i32 %111 to float
  %113 = fmul float %91, %112
  %114 = call float @llvm.fmuladd.f32(float %110, float %96, float %113)
  %115 = load i32, ptr %5, align 4, !tbaa !30
  %116 = sitofp i32 %115 to float
  call void @glVertex2f(float noundef %114, float noundef %116) #16
  %117 = load i32, ptr %4, align 4, !tbaa !30
  %118 = sitofp i32 %117 to float
  %119 = load i32, ptr %6, align 4, !tbaa !30
  %120 = sitofp i32 %119 to float
  %121 = fmul float %91, %120
  %122 = call float @llvm.fmuladd.f32(float %118, float %96, float %121)
  %123 = load i32, ptr %7, align 4, !tbaa !30
  %124 = sitofp i32 %123 to float
  call void @glVertex2f(float noundef %122, float noundef %124) #16
  %125 = call float @llvm.fmuladd.f32(float %51, float 4.000000e+00, float %91)
  %126 = fcmp olt float %125, 1.000000e+00
  br i1 %126, label %90, label %127, !llvm.loop !169

127:                                              ; preds = %90
  call void @glEnd() #16
  br label %128

128:                                              ; preds = %3, %127
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  ret void
}

; Function Attrs: optsize
declare void @UI_ThemeColorShade(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @UI_view2d_view_to_region(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glRectf(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #10

; Function Attrs: optsize
declare void @glBegin(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glVertex2f(float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glEnd() local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_rcti_translate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_region_cache_draw_background(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  tail call void @glColor4ub(i8 noundef zeroext -128, i8 noundef zeroext -128, i8 noundef zeroext -1, i8 noundef zeroext 64) #16
  %2 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 5
  %3 = load i16, ptr %2, align 8, !tbaa !111
  %4 = sext i16 %3 to i32
  %5 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !81
  %6 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !101
  %7 = sitofp i32 %6 to float
  %8 = fmul float %5, %7
  %9 = fdiv float %8, 7.200000e+01
  %10 = fmul float %9, 8.000000e+00
  %11 = fptosi float %10 to i32
  tail call void @glRecti(i32 noundef 0, i32 noundef 0, i32 noundef %4, i32 noundef %11) #16
  ret void
}

; Function Attrs: optsize
declare void @glColor4ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_region_cache_draw_curfra_label(i32 noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #0 {
  %4 = alloca [32 x i8], align 16
  %5 = alloca [2 x float], align 8
  %6 = tail call ptr @UI_GetStyle() #16
  %7 = getelementptr inbounds %struct.uiStyle, ptr %6, i64 0, i32 6
  %8 = load i16, ptr %7, align 8, !tbaa !163
  %9 = sext i16 %8 to i32
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  store i64 0, ptr %5, align 8
  %10 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !81
  %11 = fmul float %10, 1.100000e+01
  %12 = fptosi float %11 to i32
  %13 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !101
  tail call void @BLF_size(i32 noundef %9, i32 noundef %12, i32 noundef %13) #16
  %14 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 32, ptr noundef nonnull @.str.5, i32 noundef %0) #16
  %15 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  call void @BLF_width_and_height(i32 noundef %9, ptr noundef nonnull %4, i64 noundef 32, ptr noundef nonnull %5, ptr noundef nonnull %15) #16
  %16 = fptosi float %1 to i32
  %17 = fptosi float %2 to i32
  %18 = load float, ptr %5, align 8, !tbaa !170
  %19 = fadd float %18, %1
  %20 = fadd float %19, 6.000000e+00
  %21 = fptosi float %20 to i32
  %22 = load float, ptr %15, align 4, !tbaa !170
  %23 = fadd float %22, %2
  %24 = fadd float %23, 4.000000e+00
  %25 = fptosi float %24 to i32
  call void @glRecti(i32 noundef %16, i32 noundef %17, i32 noundef %21, i32 noundef %25) #16
  call void @UI_ThemeColor(i32 noundef 3) #16
  %26 = fadd float %1, 2.000000e+00
  %27 = fadd float %2, 2.000000e+00
  call void @BLF_position(i32 noundef %9, float noundef %26, float noundef %27, float noundef 0.000000e+00) #16
  call void @BLF_draw(i32 noundef %9, ptr noundef nonnull %4, i64 noundef 32) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #18
  ret void
}

; Function Attrs: optsize
declare ptr @UI_GetStyle() local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLF_size(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLF_width_and_height(i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_region_cache_draw_cached_segments(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %45, label %7

7:                                                ; preds = %5
  tail call void @glColor4ub(i8 noundef zeroext -128, i8 noundef zeroext -128, i8 noundef zeroext -1, i8 noundef zeroext -128) #16
  %8 = icmp sgt i32 %1, 0
  br i1 %8, label %9, label %45

9:                                                ; preds = %7
  %10 = sub i32 %4, %3
  %11 = add i32 %10, 1
  %12 = sitofp i32 %11 to float
  %13 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 5
  %14 = zext nneg i32 %1 to i64
  br label %15

15:                                               ; preds = %9, %15
  %16 = phi i64 [ 0, %9 ], [ %43, %15 ]
  %17 = shl nuw nsw i64 %16, 1
  %18 = getelementptr inbounds i32, ptr %2, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !30
  %20 = sub nsw i32 %19, %3
  %21 = sitofp i32 %20 to float
  %22 = fdiv float %21, %12
  %23 = load i16, ptr %13, align 8, !tbaa !111
  %24 = sitofp i16 %23 to float
  %25 = fmul float %22, %24
  %26 = or disjoint i64 %17, 1
  %27 = getelementptr inbounds i32, ptr %2, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !30
  %29 = sub i32 %28, %3
  %30 = add i32 %29, 1
  %31 = sitofp i32 %30 to float
  %32 = fdiv float %31, %12
  %33 = fmul float %32, %24
  %34 = fptosi float %25 to i32
  %35 = fptosi float %33 to i32
  %36 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !81
  %37 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !101
  %38 = sitofp i32 %37 to float
  %39 = fmul float %36, %38
  %40 = fdiv float %39, 7.200000e+01
  %41 = fmul float %40, 8.000000e+00
  %42 = fptosi float %41 to i32
  tail call void @glRecti(i32 noundef %34, i32 noundef 0, i32 noundef %35, i32 noundef %42) #16
  %43 = add nuw nsw i64 %16, 1
  %44 = icmp eq i64 %43, %14
  br i1 %44, label %45, label %15, !llvm.loop !171

45:                                               ; preds = %15, %7, %5
  ret void
}

; Function Attrs: optsize
declare void @glPushMatrix() local_unnamed_addr #1

; Function Attrs: optsize
declare void @glTranslatef(float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_rcti_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @area_draw_azone(i16 noundef signext %0, i16 noundef signext %1, i16 noundef signext %2, i16 noundef signext %3) unnamed_addr #0 {
  %5 = sext i16 %2 to i32
  %6 = sext i16 %0 to i32
  %7 = sub nsw i32 %5, %6
  %8 = sext i16 %3 to i32
  %9 = sext i16 %1 to i32
  %10 = sub nsw i32 %8, %9
  %11 = tail call i32 @llvm.abs.i32(i32 %7, i1 true)
  %12 = sitofp i32 %11 to float
  %13 = fmul float %12, 0x3FD3333340000000
  %14 = tail call float @llvm.ceil.f32(float %13)
  %15 = fpext float %14 to double
  %16 = sitofp i32 %7 to double
  %17 = tail call double @llvm.copysign.f64(double %15, double %16)
  %18 = fptosi double %17 to i32
  %19 = tail call i32 @llvm.abs.i32(i32 %10, i1 true)
  %20 = sitofp i32 %19 to float
  %21 = fmul float %20, 0x3FD3333340000000
  %22 = tail call float @llvm.ceil.f32(float %21)
  %23 = fpext float %22 to double
  %24 = sitofp i32 %10 to double
  %25 = tail call double @llvm.copysign.f64(double %23, double %24)
  %26 = fptosi double %25 to i32
  tail call void @glEnable(i32 noundef 3042) #16
  tail call void @glEnable(i32 noundef 2848) #16
  tail call void @glColor4ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -76) #16
  %27 = sitofp i16 %0 to float
  %28 = sitofp i16 %3 to float
  %29 = sitofp i16 %2 to float
  %30 = sitofp i16 %1 to float
  tail call void @fdrawline(float noundef %27, float noundef %28, float noundef %29, float noundef %30) #16
  tail call void @glColor4ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -126) #16
  %31 = sub nsw i32 %8, %26
  %32 = sitofp i32 %31 to float
  %33 = sub nsw i32 %5, %18
  %34 = sitofp i32 %33 to float
  tail call void @fdrawline(float noundef %27, float noundef %32, float noundef %34, float noundef %30) #16
  tail call void @glColor4ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext 80) #16
  %35 = shl nsw i32 %26, 1
  %36 = sub nsw i32 %8, %35
  %37 = sitofp i32 %36 to float
  %38 = shl nsw i32 %18, 1
  %39 = sub nsw i32 %5, %38
  %40 = sitofp i32 %39 to float
  tail call void @fdrawline(float noundef %27, float noundef %37, float noundef %40, float noundef %30) #16
  tail call void @glColor4ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -46) #16
  %41 = add nsw i32 %8, 1
  %42 = sitofp i32 %41 to float
  %43 = add nsw i32 %5, 1
  %44 = sitofp i32 %43 to float
  tail call void @fdrawline(float noundef %27, float noundef %42, float noundef %44, float noundef %30) #16
  tail call void @glColor4ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -76) #16
  %45 = add nsw i32 %31, 1
  %46 = sitofp i32 %45 to float
  %47 = add nsw i32 %33, 1
  %48 = sitofp i32 %47 to float
  tail call void @fdrawline(float noundef %27, float noundef %46, float noundef %48, float noundef %30) #16
  tail call void @glColor4ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -106) #16
  %49 = add nsw i32 %36, 1
  %50 = sitofp i32 %49 to float
  %51 = add nsw i32 %39, 1
  %52 = sitofp i32 %51 to float
  tail call void @fdrawline(float noundef %27, float noundef %50, float noundef %52, float noundef %30) #16
  tail call void @glDisable(i32 noundef 2848) #16
  tail call void @glDisable(i32 noundef 3042) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @region_draw_azone_icon(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.AZone, ptr %0, i64 0, i32 5
  %3 = load i16, ptr %2, align 8, !tbaa !51
  %4 = sext i16 %3 to i32
  %5 = getelementptr inbounds %struct.AZone, ptr %0, i64 0, i32 7
  %6 = load i16, ptr %5, align 4, !tbaa !53
  %7 = sext i16 %6 to i32
  %8 = sub nsw i32 %7, %4
  %9 = sdiv i32 %8, 2
  %10 = trunc i32 %9 to i16
  %11 = add i16 %3, %10
  %12 = getelementptr inbounds %struct.AZone, ptr %0, i64 0, i32 6
  %13 = load i16, ptr %12, align 2, !tbaa !54
  %14 = sext i16 %13 to i32
  %15 = getelementptr inbounds %struct.AZone, ptr %0, i64 0, i32 8
  %16 = load i16, ptr %15, align 2, !tbaa !55
  %17 = sext i16 %16 to i32
  %18 = sub nsw i32 %17, %14
  %19 = sdiv i32 %18, 2
  %20 = trunc i32 %19 to i16
  %21 = add i16 %13, %20
  %22 = tail call ptr @gluNewQuadric() #16
  tail call void @glPushMatrix() #16
  %23 = sitofp i16 %11 to float
  %24 = sitofp i16 %21 to float
  tail call void @glTranslatef(float noundef %23, float noundef %24, float noundef 0.000000e+00) #16
  tail call void @glEnable(i32 noundef 2848) #16
  tail call void @glColor4f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 0x3FE99999A0000000) #16
  tail call void @gluQuadricDrawStyle(ptr noundef %22, i32 noundef 100012) #16
  tail call void @gluDisk(ptr noundef %22, double noundef 0.000000e+00, double noundef 4.250000e+00, i32 noundef 16, i32 noundef 1) #16
  tail call void @glColor4f(float noundef 0x3FC99999A0000000, float noundef 0x3FC99999A0000000, float noundef 0x3FC99999A0000000, float noundef 0x3FECCCCCC0000000) #16
  tail call void @gluQuadricDrawStyle(ptr noundef %22, i32 noundef 100013) #16
  tail call void @gluDisk(ptr noundef %22, double noundef 0.000000e+00, double noundef 4.250000e+00, i32 noundef 16, i32 noundef 1) #16
  tail call void @glDisable(i32 noundef 2848) #16
  tail call void @glPopMatrix() #16
  tail call void @gluDeleteQuadric(ptr noundef %22) #16
  %25 = sext i16 %11 to i32
  %26 = sext i16 %21 to i32
  %27 = add nsw i32 %26, -2
  %28 = add nsw i32 %26, 3
  tail call void @sdrawline(i32 noundef %25, i32 noundef %27, i32 noundef %25, i32 noundef %28) #16
  %29 = add nsw i32 %25, -2
  %30 = add nsw i32 %25, 3
  tail call void @sdrawline(i32 noundef %29, i32 noundef %26, i32 noundef %30, i32 noundef %26) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @region_draw_azone_tria(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  tail call void @glEnable(i32 noundef 3042) #16
  tail call void @glColor4f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0x3FD6666660000000) #16
  %2 = getelementptr inbounds %struct.AZone, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !172
  switch i32 %3, label %76 [
    i32 2, label %4
    i32 3, label %22
    i32 1, label %40
    i32 0, label %58
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.AZone, ptr %0, i64 0, i32 5
  %6 = load i16, ptr %5, align 8, !tbaa !51
  %7 = sitofp i16 %6 to float
  %8 = getelementptr inbounds %struct.AZone, ptr %0, i64 0, i32 6
  %9 = load i16, ptr %8, align 2, !tbaa !54
  %10 = sitofp i16 %9 to float
  %11 = getelementptr inbounds %struct.AZone, ptr %0, i64 0, i32 7
  %12 = load i16, ptr %11, align 4, !tbaa !53
  %13 = sitofp i16 %12 to float
  %14 = sext i16 %6 to i32
  %15 = sext i16 %12 to i32
  %16 = add nsw i32 %15, %14
  %17 = sitofp i32 %16 to float
  %18 = fmul float %17, 5.000000e-01
  %19 = getelementptr inbounds %struct.AZone, ptr %0, i64 0, i32 8
  %20 = load i16, ptr %19, align 2, !tbaa !55
  %21 = sitofp i16 %20 to float
  tail call void @ui_draw_anti_tria(float noundef %7, float noundef %10, float noundef %13, float noundef %10, float noundef %18, float noundef %21) #16
  br label %76

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.AZone, ptr %0, i64 0, i32 5
  %24 = load i16, ptr %23, align 8, !tbaa !51
  %25 = sitofp i16 %24 to float
  %26 = getelementptr inbounds %struct.AZone, ptr %0, i64 0, i32 8
  %27 = load i16, ptr %26, align 2, !tbaa !55
  %28 = sitofp i16 %27 to float
  %29 = getelementptr inbounds %struct.AZone, ptr %0, i64 0, i32 7
  %30 = load i16, ptr %29, align 4, !tbaa !53
  %31 = sitofp i16 %30 to float
  %32 = sext i16 %24 to i32
  %33 = sext i16 %30 to i32
  %34 = add nsw i32 %33, %32
  %35 = sitofp i32 %34 to float
  %36 = fmul float %35, 5.000000e-01
  %37 = getelementptr inbounds %struct.AZone, ptr %0, i64 0, i32 6
  %38 = load i16, ptr %37, align 2, !tbaa !54
  %39 = sitofp i16 %38 to float
  tail call void @ui_draw_anti_tria(float noundef %25, float noundef %28, float noundef %31, float noundef %28, float noundef %36, float noundef %39) #16
  br label %76

40:                                               ; preds = %1
  %41 = getelementptr inbounds %struct.AZone, ptr %0, i64 0, i32 7
  %42 = load i16, ptr %41, align 4, !tbaa !53
  %43 = sitofp i16 %42 to float
  %44 = getelementptr inbounds %struct.AZone, ptr %0, i64 0, i32 6
  %45 = load i16, ptr %44, align 2, !tbaa !54
  %46 = sitofp i16 %45 to float
  %47 = getelementptr inbounds %struct.AZone, ptr %0, i64 0, i32 8
  %48 = load i16, ptr %47, align 2, !tbaa !55
  %49 = sitofp i16 %48 to float
  %50 = getelementptr inbounds %struct.AZone, ptr %0, i64 0, i32 5
  %51 = load i16, ptr %50, align 8, !tbaa !51
  %52 = sitofp i16 %51 to float
  %53 = sext i16 %45 to i32
  %54 = sext i16 %48 to i32
  %55 = add nsw i32 %54, %53
  %56 = sitofp i32 %55 to float
  %57 = fmul float %56, 5.000000e-01
  tail call void @ui_draw_anti_tria(float noundef %43, float noundef %46, float noundef %43, float noundef %49, float noundef %52, float noundef %57) #16
  br label %76

58:                                               ; preds = %1
  %59 = getelementptr inbounds %struct.AZone, ptr %0, i64 0, i32 5
  %60 = load i16, ptr %59, align 8, !tbaa !51
  %61 = sitofp i16 %60 to float
  %62 = getelementptr inbounds %struct.AZone, ptr %0, i64 0, i32 6
  %63 = load i16, ptr %62, align 2, !tbaa !54
  %64 = sitofp i16 %63 to float
  %65 = getelementptr inbounds %struct.AZone, ptr %0, i64 0, i32 8
  %66 = load i16, ptr %65, align 2, !tbaa !55
  %67 = sitofp i16 %66 to float
  %68 = getelementptr inbounds %struct.AZone, ptr %0, i64 0, i32 7
  %69 = load i16, ptr %68, align 4, !tbaa !53
  %70 = sitofp i16 %69 to float
  %71 = sext i16 %63 to i32
  %72 = sext i16 %66 to i32
  %73 = add nsw i32 %72, %71
  %74 = sitofp i32 %73 to float
  %75 = fmul float %74, 5.000000e-01
  tail call void @ui_draw_anti_tria(float noundef %61, float noundef %64, float noundef %61, float noundef %67, float noundef %70, float noundef %75) #16
  br label %76

76:                                               ; preds = %1, %58, %40, %22, %4
  tail call void @glDisable(i32 noundef 3042) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @region_draw_azone_tab(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #18
  tail call void @glEnable(i32 noundef 3042) #16
  call void @UI_GetThemeColor3fv(i32 noundef 10, ptr noundef nonnull %2) #16
  %3 = load float, ptr %2, align 4, !tbaa !170
  %4 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !170
  %6 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !170
  call void @glColor4f(float noundef %3, float noundef %5, float noundef %7, float noundef 5.000000e-01) #16
  %8 = getelementptr inbounds %struct.AZone, ptr %0, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !172
  switch i32 %9, label %98 [
    i32 2, label %10
    i32 3, label %33
    i32 1, label %56
    i32 0, label %77
  ]

10:                                               ; preds = %1
  call void @uiSetRoundBox(i32 noundef 19) #16
  %11 = getelementptr inbounds %struct.AZone, ptr %0, i64 0, i32 5
  %12 = load i16, ptr %11, align 8, !tbaa !51
  %13 = sitofp i16 %12 to float
  %14 = getelementptr inbounds %struct.AZone, ptr %0, i64 0, i32 6
  %15 = load i16, ptr %14, align 2, !tbaa !54
  %16 = sitofp i16 %15 to float
  %17 = getelementptr inbounds %struct.AZone, ptr %0, i64 0, i32 7
  %18 = load i16, ptr %17, align 4, !tbaa !53
  %19 = sitofp i16 %18 to float
  %20 = getelementptr inbounds %struct.AZone, ptr %0, i64 0, i32 8
  %21 = load i16, ptr %20, align 2, !tbaa !55
  %22 = sitofp i16 %21 to float
  call void @uiDrawBoxShade(i32 noundef 9, float noundef %13, float noundef %16, float noundef %19, float noundef %22, float noundef 4.000000e+00, float noundef 0xBFD3333340000000, float noundef 0x3FA99999A0000000) #16
  call void @glColor4ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %23 = load i16, ptr %11, align 8, !tbaa !51
  %24 = sitofp i16 %23 to float
  %25 = load i16, ptr %14, align 2, !tbaa !54
  %26 = sitofp i16 %25 to float
  %27 = fadd float %26, 0x3FD3333340000000
  %28 = load i16, ptr %17, align 4, !tbaa !53
  %29 = sitofp i16 %28 to float
  %30 = load i16, ptr %20, align 2, !tbaa !55
  %31 = sitofp i16 %30 to float
  %32 = fadd float %31, 0x3FD3333340000000
  call void @uiRoundRect(float noundef %24, float noundef %27, float noundef %29, float noundef %32, float noundef 4.000000e+00) #16
  br label %98

33:                                               ; preds = %1
  call void @uiSetRoundBox(i32 noundef 28) #16
  %34 = getelementptr inbounds %struct.AZone, ptr %0, i64 0, i32 5
  %35 = load i16, ptr %34, align 8, !tbaa !51
  %36 = sitofp i16 %35 to float
  %37 = getelementptr inbounds %struct.AZone, ptr %0, i64 0, i32 6
  %38 = load i16, ptr %37, align 2, !tbaa !54
  %39 = sitofp i16 %38 to float
  %40 = getelementptr inbounds %struct.AZone, ptr %0, i64 0, i32 7
  %41 = load i16, ptr %40, align 4, !tbaa !53
  %42 = sitofp i16 %41 to float
  %43 = getelementptr inbounds %struct.AZone, ptr %0, i64 0, i32 8
  %44 = load i16, ptr %43, align 2, !tbaa !55
  %45 = sitofp i16 %44 to float
  call void @uiDrawBoxShade(i32 noundef 9, float noundef %36, float noundef %39, float noundef %42, float noundef %45, float noundef 4.000000e+00, float noundef 0xBFD3333340000000, float noundef 0x3FA99999A0000000) #16
  call void @glColor4ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %46 = load i16, ptr %34, align 8, !tbaa !51
  %47 = sitofp i16 %46 to float
  %48 = load i16, ptr %37, align 2, !tbaa !54
  %49 = sitofp i16 %48 to float
  %50 = fadd float %49, 0x3FD3333340000000
  %51 = load i16, ptr %40, align 4, !tbaa !53
  %52 = sitofp i16 %51 to float
  %53 = load i16, ptr %43, align 2, !tbaa !55
  %54 = sitofp i16 %53 to float
  %55 = fadd float %54, 0x3FD3333340000000
  call void @uiRoundRect(float noundef %47, float noundef %50, float noundef %52, float noundef %55, float noundef 4.000000e+00) #16
  br label %98

56:                                               ; preds = %1
  call void @uiSetRoundBox(i32 noundef 25) #16
  %57 = getelementptr inbounds %struct.AZone, ptr %0, i64 0, i32 5
  %58 = load i16, ptr %57, align 8, !tbaa !51
  %59 = sitofp i16 %58 to float
  %60 = getelementptr inbounds %struct.AZone, ptr %0, i64 0, i32 6
  %61 = load i16, ptr %60, align 2, !tbaa !54
  %62 = sitofp i16 %61 to float
  %63 = getelementptr inbounds %struct.AZone, ptr %0, i64 0, i32 7
  %64 = load i16, ptr %63, align 4, !tbaa !53
  %65 = sitofp i16 %64 to float
  %66 = getelementptr inbounds %struct.AZone, ptr %0, i64 0, i32 8
  %67 = load i16, ptr %66, align 2, !tbaa !55
  %68 = sitofp i16 %67 to float
  call void @uiDrawBoxShade(i32 noundef 9, float noundef %59, float noundef %62, float noundef %65, float noundef %68, float noundef 4.000000e+00, float noundef 0xBFD3333340000000, float noundef 0x3FA99999A0000000) #16
  call void @glColor4ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %69 = load i16, ptr %57, align 8, !tbaa !51
  %70 = sitofp i16 %69 to float
  %71 = load i16, ptr %60, align 2, !tbaa !54
  %72 = sitofp i16 %71 to float
  %73 = load i16, ptr %63, align 4, !tbaa !53
  %74 = sitofp i16 %73 to float
  %75 = load i16, ptr %66, align 2, !tbaa !55
  %76 = sitofp i16 %75 to float
  call void @uiRoundRect(float noundef %70, float noundef %72, float noundef %74, float noundef %76, float noundef 4.000000e+00) #16
  br label %98

77:                                               ; preds = %1
  call void @uiSetRoundBox(i32 noundef 22) #16
  %78 = getelementptr inbounds %struct.AZone, ptr %0, i64 0, i32 5
  %79 = load i16, ptr %78, align 8, !tbaa !51
  %80 = sitofp i16 %79 to float
  %81 = getelementptr inbounds %struct.AZone, ptr %0, i64 0, i32 6
  %82 = load i16, ptr %81, align 2, !tbaa !54
  %83 = sitofp i16 %82 to float
  %84 = getelementptr inbounds %struct.AZone, ptr %0, i64 0, i32 7
  %85 = load i16, ptr %84, align 4, !tbaa !53
  %86 = sitofp i16 %85 to float
  %87 = getelementptr inbounds %struct.AZone, ptr %0, i64 0, i32 8
  %88 = load i16, ptr %87, align 2, !tbaa !55
  %89 = sitofp i16 %88 to float
  call void @uiDrawBoxShade(i32 noundef 9, float noundef %80, float noundef %83, float noundef %86, float noundef %89, float noundef 4.000000e+00, float noundef 0xBFD3333340000000, float noundef 0x3FA99999A0000000) #16
  call void @glColor4ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %90 = load i16, ptr %78, align 8, !tbaa !51
  %91 = sitofp i16 %90 to float
  %92 = load i16, ptr %81, align 2, !tbaa !54
  %93 = sitofp i16 %92 to float
  %94 = load i16, ptr %84, align 4, !tbaa !53
  %95 = sitofp i16 %94 to float
  %96 = load i16, ptr %87, align 2, !tbaa !55
  %97 = sitofp i16 %96 to float
  call void @uiRoundRect(float noundef %91, float noundef %93, float noundef %95, float noundef %97, float noundef 4.000000e+00) #16
  br label %98

98:                                               ; preds = %1, %77, %56, %33, %10
  call void @glDisable(i32 noundef 3042) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @region_draw_azone_tab_plus(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  tail call void @glEnable(i32 noundef 3042) #16
  %2 = getelementptr inbounds %struct.AZone, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !172
  %4 = icmp ult i32 %3, 4
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = zext nneg i32 %3 to i64
  %7 = getelementptr inbounds [4 x i32], ptr @switch.table.region_draw_azone_tab_plus, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4
  tail call void @uiSetRoundBox(i32 noundef %8) #16
  br label %9

9:                                                ; preds = %1, %5
  tail call void @glColor4f(float noundef 0x3FA99999A0000000, float noundef 0x3FA99999A0000000, float noundef 0x3FA99999A0000000, float noundef 0x3FD99999A0000000) #16
  %10 = getelementptr inbounds %struct.AZone, ptr %0, i64 0, i32 5
  %11 = load i16, ptr %10, align 8, !tbaa !51
  %12 = sitofp i16 %11 to float
  %13 = getelementptr inbounds %struct.AZone, ptr %0, i64 0, i32 6
  %14 = load i16, ptr %13, align 2, !tbaa !54
  %15 = sitofp i16 %14 to float
  %16 = getelementptr inbounds %struct.AZone, ptr %0, i64 0, i32 7
  %17 = load i16, ptr %16, align 4, !tbaa !53
  %18 = sitofp i16 %17 to float
  %19 = getelementptr inbounds %struct.AZone, ptr %0, i64 0, i32 8
  %20 = load i16, ptr %19, align 2, !tbaa !55
  %21 = sitofp i16 %20 to float
  tail call void @uiRoundBox(float noundef %12, float noundef %15, float noundef %18, float noundef %21, float noundef 4.000000e+00) #16
  tail call void @glEnable(i32 noundef 3042) #16
  tail call void @glColor4f(float noundef 0x3FE99999A0000000, float noundef 0x3FE99999A0000000, float noundef 0x3FE99999A0000000, float noundef 0x3FD99999A0000000) #16
  %22 = load i16, ptr %10, align 8, !tbaa !51
  %23 = sitofp i16 %22 to float
  %24 = load i16, ptr %13, align 2, !tbaa !54
  %25 = sitofp i16 %24 to float
  %26 = load i16, ptr %16, align 4, !tbaa !53
  %27 = sitofp i16 %26 to float
  %28 = load i16, ptr %19, align 2, !tbaa !55
  %29 = sitofp i16 %28 to float
  tail call fastcc void @draw_azone_plus(float noundef %23, float noundef %25, float noundef %27, float noundef %29) #17
  tail call void @glDisable(i32 noundef 3042) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @area_draw_azone_fullscreen(i16 noundef signext %0, i16 noundef signext %1, i16 noundef signext %2, i16 noundef signext %3, float noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.rcti, align 4
  %7 = sitofp i16 %2 to float
  %8 = sitofp i16 %0 to float
  %9 = fsub float %7, %8
  %10 = fmul float %9, 5.000000e-01
  %11 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !81
  %12 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !101
  %13 = sitofp i32 %12 to float
  %14 = fmul float %11, %13
  %15 = fdiv float %14, 7.200000e+01
  %16 = fdiv float %10, %15
  %17 = fsub float %7, %16
  %18 = fptosi float %17 to i32
  %19 = sitofp i16 %3 to float
  %20 = sitofp i16 %1 to float
  %21 = fsub float %19, %20
  %22 = fmul float %21, 5.000000e-01
  %23 = fdiv float %22, %15
  %24 = fsub float %19, %23
  %25 = fptosi float %24 to i32
  %26 = fdiv float 3.600000e+01, %15
  %27 = sitofp i32 %18 to float
  %28 = fadd float %26, %27
  %29 = fptosi float %28 to i32
  %30 = sitofp i32 %25 to float
  %31 = fadd float %26, %30
  %32 = fptosi float %31 to i32
  %33 = sitofp i32 %29 to float
  %34 = tail call float @llvm.fmuladd.f32(float %15, float -1.600000e+01, float %33)
  %35 = fptosi float %34 to i32
  %36 = sitofp i32 %32 to float
  %37 = tail call float @llvm.fmuladd.f32(float %15, float -1.600000e+01, float %36)
  %38 = fptosi float %37 to i32
  %39 = tail call fastcc float @min_ff(float noundef %4) #17
  %40 = sitofp i32 %35 to float
  %41 = sitofp i32 %38 to float
  %42 = fdiv float 0x3FE6666660000000, %15
  tail call void @UI_icon_draw_aspect(float noundef %40, float noundef %41, i32 noundef 76, float noundef %42, float noundef %39) #16
  %43 = load i16, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 14), align 4, !tbaa !59
  %44 = icmp eq i16 %43, 1
  br i1 %44, label %45, label %86

45:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #18
  %46 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !81
  %47 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !101
  %48 = sitofp i32 %47 to float
  %49 = fmul float %46, %48
  %50 = fdiv float %49, 7.200000e+01
  %51 = fmul float %50, 7.000000e+00
  %52 = tail call float @llvm.fmuladd.f32(float %50, float 1.600000e+01, float %51)
  %53 = fmul float %39, 2.550000e+02
  %54 = fptoui float %53 to i8
  %55 = fadd float %52, %40
  %56 = fptosi float %55 to i32
  %57 = fadd float %52, %41
  %58 = fptosi float %57 to i32
  call void @BLI_rcti_init(ptr noundef nonnull %6, i32 noundef %35, i32 noundef %56, i32 noundef %38, i32 noundef %58) #16
  call void @glColor4ub(i8 noundef zeroext -1, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext %54) #16
  %59 = load i32, ptr %6, align 4, !tbaa !64
  %60 = sitofp i32 %59 to float
  %61 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 2
  %62 = load i32, ptr %61, align 4, !tbaa !65
  %63 = sitofp i32 %62 to float
  %64 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 1
  %65 = load i32, ptr %64, align 4, !tbaa !66
  %66 = sitofp i32 %65 to float
  %67 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 3
  %68 = load i32, ptr %67, align 4, !tbaa !67
  %69 = sitofp i32 %68 to float
  call void @fdrawbox(float noundef %60, float noundef %63, float noundef %66, float noundef %69) #16
  call void @glColor4ub(i8 noundef zeroext 0, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext %54) #16
  %70 = load i32, ptr %6, align 4, !tbaa !64
  %71 = sitofp i32 %70 to float
  %72 = load i32, ptr %61, align 4, !tbaa !65
  %73 = sitofp i32 %72 to float
  %74 = load i32, ptr %64, align 4, !tbaa !66
  %75 = sitofp i32 %74 to float
  %76 = load i32, ptr %67, align 4, !tbaa !67
  %77 = sitofp i32 %76 to float
  call void @fdrawline(float noundef %71, float noundef %73, float noundef %75, float noundef %77) #16
  %78 = load i32, ptr %6, align 4, !tbaa !64
  %79 = sitofp i32 %78 to float
  %80 = load i32, ptr %67, align 4, !tbaa !67
  %81 = sitofp i32 %80 to float
  %82 = load i32, ptr %64, align 4, !tbaa !66
  %83 = sitofp i32 %82 to float
  %84 = load i32, ptr %61, align 4, !tbaa !65
  %85 = sitofp i32 %84 to float
  call void @fdrawline(float noundef %79, float noundef %81, float noundef %83, float noundef %85) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #18
  br label %86

86:                                               ; preds = %45, %5
  ret void
}

; Function Attrs: optsize
declare void @glPopMatrix() local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.copysign.f64(double, double) #10

; Function Attrs: optsize
declare void @fdrawline(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gluNewQuadric() local_unnamed_addr #1

; Function Attrs: optsize
declare void @glColor4f(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @gluQuadricDrawStyle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @gluDisk(ptr noundef, double noundef, double noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @gluDeleteQuadric(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @sdrawline(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ui_draw_anti_tria(float noundef, float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @UI_GetThemeColor3fv(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @uiSetRoundBox(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @uiDrawBoxShade(i32 noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @uiRoundRect(float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @uiRoundBox(float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_azone_plus(float noundef %0, float noundef %1, float noundef %2, float noundef %3) unnamed_addr #0 {
  %5 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !38
  %6 = sitofp i16 %5 to float
  %7 = fmul float %6, 0x3FB99999A0000000
  %8 = fmul float %6, 0x3FC99999A0000000
  %9 = fadd float %0, %2
  %10 = fsub float %9, %7
  %11 = fmul float %10, 5.000000e-01
  %12 = fadd float %8, %1
  %13 = fadd float %9, %7
  %14 = fmul float %13, 5.000000e-01
  %15 = fsub float %3, %8
  tail call void @glRectf(float noundef %11, float noundef %12, float noundef %14, float noundef %15) #16
  %16 = fadd float %8, %0
  %17 = fadd float %1, %3
  %18 = fsub float %17, %7
  %19 = fmul float %18, 5.000000e-01
  %20 = fadd float %17, %7
  %21 = fmul float %20, 5.000000e-01
  tail call void @glRectf(float noundef %16, float noundef %19, float noundef %11, float noundef %21) #16
  %22 = fsub float %2, %8
  tail call void @glRectf(float noundef %14, float noundef %19, float noundef %22, float noundef %21) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0) unnamed_addr #12 {
  %2 = fcmp olt float %0, 7.500000e-01
  %3 = select i1 %2, float %0, float 7.500000e-01
  ret float %3
}

; Function Attrs: optsize
declare void @UI_icon_draw_aspect(float noundef, float noundef, i32 noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @fdrawbox(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @region_is_overlap(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 23), align 8, !tbaa !173
  %5 = and i32 %4, 2
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %23, label %7

7:                                                ; preds = %3
  %8 = tail call zeroext i8 @WM_is_draw_triple(ptr noundef %0) #16
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %23, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 8
  %12 = load i8, ptr %11, align 8, !tbaa !32
  switch i8 %12, label %23 [
    i8 1, label %13
    i8 8, label %13
    i8 6, label %18
  ]

13:                                               ; preds = %10, %10
  %14 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 8
  %15 = load i16, ptr %14, align 2, !tbaa !70
  %16 = add i16 %15, -4
  %17 = icmp ult i16 %16, 3
  br i1 %17, label %24, label %23

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 8
  %20 = load i16, ptr %19, align 2, !tbaa !70
  %21 = and i16 %20, -4
  %22 = icmp eq i16 %21, 4
  br i1 %22, label %24, label %23

23:                                               ; preds = %18, %13, %10, %7, %3
  br label %24

24:                                               ; preds = %18, %13, %23
  %25 = phi i8 [ 0, %23 ], [ 1, %13 ], [ 1, %18 ]
  ret i8 %25
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rct_fits(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i32 noundef %2) unnamed_addr #9 {
  %4 = icmp eq i8 %1, 104
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call fastcc i32 @BLI_rcti_size_x(ptr noundef %0) #17
  br label %9

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @BLI_rcti_size_y(ptr noundef %0) #17
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi i32 [ %6, %5 ], [ %8, %7 ]
  %11 = sub i32 %10, %2
  %12 = add i32 %11, 1
  ret i32 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_cent_x(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = load i32, ptr %0, align 4, !tbaa !64
  %3 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !66
  %5 = add nsw i32 %4, %2
  %6 = sdiv i32 %5, 2
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_cent_y(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !65
  %4 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !67
  %6 = add nsw i32 %5, %3
  %7 = sdiv i32 %6, 2
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @region_overlap_fix(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 9
  %4 = load i16, ptr %3, align 8, !tbaa !96
  %5 = and i16 %4, -33
  %6 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !97
  %8 = icmp eq ptr %7, null
  br i1 %8, label %88, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  br label %11

11:                                               ; preds = %9, %27
  %12 = phi ptr [ %7, %9 ], [ %29, %27 ]
  %13 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 17
  %14 = load i16, ptr %13, align 2, !tbaa !99
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 9
  %18 = load i16, ptr %17, align 8, !tbaa !96
  %19 = and i16 %18, 32
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 3
  %23 = tail call zeroext i8 @BLI_rcti_isect(ptr noundef nonnull %22, ptr noundef nonnull %10, ptr noundef null) #16
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = icmp eq i16 %18, %5
  br i1 %26, label %31, label %84

27:                                               ; preds = %11, %16, %21
  %28 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !97
  %30 = icmp eq ptr %29, null
  br i1 %30, label %59, label %11, !llvm.loop !174

31:                                               ; preds = %25
  switch i16 %5, label %59 [
    i16 3, label %32
    i16 4, label %46
  ]

32:                                               ; preds = %31
  %33 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 1
  %34 = load i32, ptr %33, align 4, !tbaa !107
  %35 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 5
  %36 = load i16, ptr %35, align 8, !tbaa !111
  %37 = sext i16 %36 to i32
  %38 = add nsw i32 %34, %37
  %39 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 10
  %40 = load i16, ptr %39, align 2, !tbaa !89
  %41 = sext i16 %40 to i32
  %42 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !38
  %43 = sext i16 %42 to i32
  %44 = sub nsw i32 %41, %43
  %45 = icmp sgt i32 %38, %44
  br i1 %45, label %84, label %57

46:                                               ; preds = %31
  %47 = load i32, ptr %10, align 8, !tbaa !48
  %48 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 5
  %49 = load i16, ptr %48, align 8, !tbaa !111
  %50 = sext i16 %49 to i32
  %51 = sub nsw i32 %47, %50
  %52 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !38
  %53 = sext i16 %52 to i32
  %54 = icmp slt i32 %51, %53
  br i1 %54, label %84, label %55

55:                                               ; preds = %46
  %56 = sub nsw i32 0, %50
  br label %57

57:                                               ; preds = %32, %55
  %58 = phi i32 [ %56, %55 ], [ %37, %32 ]
  tail call void @BLI_rcti_translate(ptr noundef nonnull %10, i32 noundef %58, i32 noundef 0) #16
  br label %59

59:                                               ; preds = %27, %57, %31
  %60 = load ptr, ptr %6, align 8, !tbaa !97
  %61 = icmp eq ptr %60, null
  br i1 %61, label %88, label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  br label %64

64:                                               ; preds = %62, %80
  %65 = phi ptr [ %60, %62 ], [ %82, %80 ]
  %66 = getelementptr inbounds %struct.ARegion, ptr %65, i64 0, i32 17
  %67 = load i16, ptr %66, align 2, !tbaa !99
  %68 = icmp eq i16 %67, 0
  br i1 %68, label %80, label %69

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.ARegion, ptr %65, i64 0, i32 9
  %71 = load i16, ptr %70, align 8, !tbaa !96
  %72 = and i16 %71, 32
  %73 = icmp ne i16 %72, 0
  %74 = icmp eq i16 %71, %5
  %75 = select i1 %73, i1 true, i1 %74
  br i1 %75, label %80, label %76

76:                                               ; preds = %69
  %77 = getelementptr inbounds %struct.ARegion, ptr %65, i64 0, i32 3
  %78 = tail call zeroext i8 @BLI_rcti_isect(ptr noundef nonnull %77, ptr noundef nonnull %63, ptr noundef null) #16
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %64, %69, %76
  %81 = getelementptr inbounds %struct.ARegion, ptr %65, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !97
  %83 = icmp eq ptr %82, null
  br i1 %83, label %88, label %64, !llvm.loop !175

84:                                               ; preds = %76, %46, %32, %25
  %85 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 10
  %86 = load i16, ptr %85, align 2, !tbaa !58
  %87 = or i16 %86, 2
  store i16 %87, ptr %85, align 2, !tbaa !58
  br label %88

88:                                               ; preds = %80, %84, %2, %59
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @region_azone_add(ptr noundef %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = add i32 %2, -1
  %6 = icmp ult i32 %5, 4
  br i1 %6, label %7, label %11

7:                                                ; preds = %4
  %8 = zext nneg i32 %5 to i64
  %9 = getelementptr inbounds [4 x i32], ptr @switch.table.region_azone_add, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4
  tail call fastcc void @region_azone_initialize(ptr noundef %0, ptr noundef %1, i32 noundef %10, i8 noundef zeroext %3) #17
  br label %11

11:                                               ; preds = %4, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fullscreen_azone_initialize(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 8
  %4 = load i16, ptr %3, align 2, !tbaa !70
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %41

6:                                                ; preds = %2
  %7 = load ptr, ptr @MEM_callocN, align 8, !tbaa !50
  %8 = tail call ptr %7(i64 noundef 64, ptr noundef nonnull @.str.8) #16
  %9 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 22
  tail call void @BLI_addtail(ptr noundef nonnull %9, ptr noundef %8) #16
  %10 = getelementptr inbounds %struct.AZone, ptr %8, i64 0, i32 3
  store i32 3, ptr %10, align 8, !tbaa !56
  %11 = getelementptr inbounds %struct.AZone, ptr %8, i64 0, i32 2
  store ptr %1, ptr %11, align 8, !tbaa !57
  %12 = getelementptr inbounds %struct.AZone, ptr %8, i64 0, i32 10
  store float 0.000000e+00, ptr %12, align 8, !tbaa !61
  %13 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !107
  %15 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !38
  %16 = sitofp i16 %15 to float
  %17 = tail call float @llvm.fmuladd.f32(float %16, float 6.500000e+00, float -1.000000e+00)
  %18 = getelementptr inbounds %struct.AZone, ptr %8, i64 0, i32 5
  %19 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 3
  %20 = load i32, ptr %19, align 4, !tbaa !106
  %21 = insertelement <2 x i32> poison, i32 %14, i64 0
  %22 = insertelement <2 x i32> %21, i32 %20, i64 1
  %23 = sitofp <2 x i32> %22 to <2 x float>
  %24 = insertelement <2 x float> poison, float %17, i64 0
  %25 = shufflevector <2 x float> %24, <2 x float> poison, <2 x i32> zeroinitializer
  %26 = fsub <2 x float> %23, %25
  %27 = fptosi <2 x float> %26 to <2 x i16>
  store <2 x i16> %27, ptr %18, align 8, !tbaa !93
  %28 = trunc i32 %14 to i16
  %29 = getelementptr inbounds %struct.AZone, ptr %8, i64 0, i32 7
  store i16 %28, ptr %29, align 4, !tbaa !53
  %30 = trunc i32 %20 to i16
  %31 = getelementptr inbounds %struct.AZone, ptr %8, i64 0, i32 8
  store i16 %30, ptr %31, align 2, !tbaa !55
  %32 = getelementptr inbounds %struct.AZone, ptr %8, i64 0, i32 9
  %33 = extractelement <2 x i16> %27, i64 0
  %34 = sext i16 %33 to i32
  %35 = shl i32 %14, 16
  %36 = ashr exact i32 %35, 16
  %37 = extractelement <2 x i16> %27, i64 1
  %38 = sext i16 %37 to i32
  %39 = shl i32 %20, 16
  %40 = ashr exact i32 %39, 16
  tail call void @BLI_rcti_init(ptr noundef nonnull %32, i32 noundef %34, i32 noundef %36, i32 noundef %38, i32 noundef %40) #16
  br label %41

41:                                               ; preds = %2, %6
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @WM_is_draw_triple(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @region_azone_initialize(ptr noundef %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 10
  %6 = load i16, ptr %5, align 2, !tbaa !58
  %7 = and i16 %6, 3
  %8 = icmp ne i16 %7, 0
  %9 = icmp ne i8 %3, 0
  %10 = and i1 %9, %8
  br i1 %10, label %19, label %11

11:                                               ; preds = %4
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !50
  %13 = tail call ptr %12(i64 noundef 64, ptr noundef nonnull @.str.6) #16
  %14 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 22
  tail call void @BLI_addtail(ptr noundef nonnull %14, ptr noundef %13) #16
  %15 = getelementptr inbounds %struct.AZone, ptr %13, i64 0, i32 3
  store i32 2, ptr %15, align 8, !tbaa !56
  %16 = getelementptr inbounds %struct.AZone, ptr %13, i64 0, i32 2
  store ptr %1, ptr %16, align 8, !tbaa !57
  %17 = getelementptr inbounds %struct.AZone, ptr %13, i64 0, i32 4
  store i32 %2, ptr %17, align 4, !tbaa !172
  %18 = load i16, ptr %5, align 2, !tbaa !58
  br label %19

19:                                               ; preds = %4, %11
  %20 = phi i16 [ %6, %4 ], [ %18, %11 ]
  %21 = phi ptr [ undef, %4 ], [ %13, %11 ]
  %22 = and i16 %20, 3
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %19
  br i1 %9, label %32, label %25

25:                                               ; preds = %24
  %26 = load i16, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 14), align 4, !tbaa !59
  switch i16 %26, label %30 [
    i16 3, label %27
    i16 2, label %28
    i16 1, label %29
  ]

27:                                               ; preds = %25
  tail call fastcc void @region_azone_icon(ptr noundef %0, ptr noundef %21, ptr noundef nonnull %1) #17
  br label %32

28:                                               ; preds = %25
  tail call fastcc void @region_azone_tria(ptr noundef %0, ptr noundef %21, ptr noundef nonnull %1) #17
  br label %32

29:                                               ; preds = %25
  tail call fastcc void @region_azone_tab(ptr noundef %0, ptr noundef %21, ptr noundef nonnull %1) #17
  br label %32

30:                                               ; preds = %25
  tail call fastcc void @region_azone_tab_plus(ptr noundef %0, ptr noundef %21, ptr noundef nonnull %1) #17
  br label %32

31:                                               ; preds = %19
  tail call fastcc void @region_azone_edge(ptr noundef %21, ptr noundef nonnull %1) #17
  br label %32

32:                                               ; preds = %24, %28, %30, %29, %27, %31
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @region_azone_icon(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 22
  %5 = load ptr, ptr %4, align 8, !tbaa !50
  %6 = icmp eq ptr %5, null
  %7 = getelementptr inbounds %struct.AZone, ptr %1, i64 0, i32 4
  %8 = load i32, ptr %7, align 4, !tbaa !172
  br i1 %6, label %19, label %9

9:                                                ; preds = %3, %9
  %10 = phi ptr [ %17, %9 ], [ %5, %3 ]
  %11 = phi i32 [ %16, %9 ], [ 0, %3 ]
  %12 = getelementptr inbounds %struct.AZone, ptr %10, i64 0, i32 4
  %13 = load i32, ptr %12, align 4, !tbaa !172
  %14 = icmp eq i32 %13, %8
  %15 = zext i1 %14 to i32
  %16 = add nuw nsw i32 %11, %15
  %17 = load ptr, ptr %10, align 8, !tbaa !50
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %9, !llvm.loop !176

19:                                               ; preds = %9, %3
  %20 = phi i32 [ 0, %3 ], [ %16, %9 ]
  %21 = getelementptr inbounds %struct.AZone, ptr %1, i64 0, i32 4
  switch i32 %8, label %22 [
    i32 2, label %25
    i32 3, label %50
    i32 1, label %68
    i32 0, label %93
  ]

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.AZone, ptr %1, i64 0, i32 5
  %24 = load <4 x i16>, ptr %23, align 8, !tbaa !93
  br label %118

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 3, i32 1
  %27 = load i32, ptr %26, align 4, !tbaa !107
  %28 = shl nuw nsw i32 %20, 1
  %29 = sitofp i32 %28 to float
  %30 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !38
  %31 = sitofp i16 %30 to float
  %32 = fmul float %31, 0x3FDCCCCCC0000000
  %33 = fneg float %29
  %34 = getelementptr inbounds %struct.AZone, ptr %1, i64 0, i32 5
  %35 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 3, i32 3
  %36 = load i32, ptr %35, align 4, !tbaa !106
  %37 = sitofp i32 %20 to float
  %38 = fneg float %37
  %39 = insertelement <2 x i32> poison, i32 %36, i64 0
  %40 = insertelement <2 x i32> %39, i32 %27, i64 1
  %41 = sitofp <2 x i32> %40 to <2 x float>
  %42 = shufflevector <2 x float> %41, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %43 = insertelement <4 x float> poison, float %33, i64 0
  %44 = insertelement <4 x float> %43, float %31, i64 1
  %45 = insertelement <4 x float> %44, float %38, i64 2
  %46 = insertelement <4 x float> %45, float %32, i64 3
  %47 = shufflevector <4 x float> %46, <4 x float> <float poison, float 0x3FDCCCCCC0000000, float poison, float 2.000000e+00>, <4 x i32> <i32 3, i32 5, i32 3, i32 7>
  %48 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %46, <4 x float> %47, <4 x float> %42)
  %49 = fptosi <4 x float> %48 to <4 x i16>
  store <4 x i16> %49, ptr %34, align 8, !tbaa !93
  br label %118

50:                                               ; preds = %19
  %51 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 3
  %52 = load i32, ptr %51, align 8, !tbaa !48
  %53 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !38
  %54 = sitofp i16 %53 to float
  %55 = getelementptr inbounds %struct.AZone, ptr %1, i64 0, i32 5
  %56 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 3, i32 2
  %57 = load i32, ptr %56, align 8, !tbaa !49
  %58 = fmul float %54, 0x3FDCCCCCC0000000
  %59 = insertelement <2 x i32> poison, i32 %57, i64 0
  %60 = insertelement <2 x i32> %59, i32 %52, i64 1
  %61 = sitofp <2 x i32> %60 to <2 x float>
  %62 = shufflevector <2 x float> %61, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %63 = insertelement <4 x float> poison, float %54, i64 0
  %64 = insertelement <4 x float> %63, float %58, i64 1
  %65 = shufflevector <4 x float> %64, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0>
  %66 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %65, <4 x float> <float 0x3FDCCCCCC0000000, float -2.000000e+00, float 2.000000e+00, float 0xBFDCCCCCC0000000>, <4 x float> %62)
  %67 = fptosi <4 x float> %66 to <4 x i16>
  store <4 x i16> %67, ptr %55, align 8, !tbaa !93
  br label %118

68:                                               ; preds = %19
  %69 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 3
  %70 = load i32, ptr %69, align 8, !tbaa !48
  %71 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !38
  %72 = sitofp i16 %71 to float
  %73 = fmul float %72, 0x3FDCCCCCC0000000
  %74 = getelementptr inbounds %struct.AZone, ptr %1, i64 0, i32 5
  %75 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 3, i32 3
  %76 = load i32, ptr %75, align 4, !tbaa !106
  %77 = shl nuw nsw i32 %20, 1
  %78 = sitofp i32 %77 to float
  %79 = fneg float %78
  %80 = sitofp i32 %20 to float
  %81 = fneg float %80
  %82 = insertelement <2 x i32> poison, i32 %76, i64 0
  %83 = insertelement <2 x i32> %82, i32 %70, i64 1
  %84 = sitofp <2 x i32> %83 to <2 x float>
  %85 = shufflevector <2 x float> %84, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %86 = insertelement <4 x float> poison, float %73, i64 0
  %87 = insertelement <4 x float> %86, float %79, i64 1
  %88 = insertelement <4 x float> %87, float %72, i64 2
  %89 = insertelement <4 x float> %88, float %81, i64 3
  %90 = shufflevector <4 x float> %86, <4 x float> <float -2.000000e+00, float poison, float 0xBFDCCCCCC0000000, float poison>, <4 x i32> <i32 4, i32 0, i32 6, i32 0>
  %91 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %89, <4 x float> %90, <4 x float> %85)
  %92 = fptosi <4 x float> %91 to <4 x i16>
  store <4 x i16> %92, ptr %74, align 8, !tbaa !93
  br label %118

93:                                               ; preds = %19
  %94 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 3, i32 1
  %95 = load i32, ptr %94, align 4, !tbaa !107
  %96 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !38
  %97 = sitofp i16 %96 to float
  %98 = getelementptr inbounds %struct.AZone, ptr %1, i64 0, i32 5
  %99 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 3, i32 3
  %100 = load i32, ptr %99, align 4, !tbaa !106
  %101 = shl nuw nsw i32 %20, 1
  %102 = sitofp i32 %101 to float
  %103 = fmul float %97, 0x3FDCCCCCC0000000
  %104 = fneg float %102
  %105 = sitofp i32 %20 to float
  %106 = fneg float %105
  %107 = insertelement <2 x i32> poison, i32 %100, i64 0
  %108 = insertelement <2 x i32> %107, i32 %95, i64 1
  %109 = sitofp <2 x i32> %108 to <2 x float>
  %110 = shufflevector <2 x float> %109, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %111 = insertelement <4 x float> poison, float %97, i64 0
  %112 = insertelement <4 x float> %111, float %104, i64 1
  %113 = insertelement <4 x float> %112, float %103, i64 2
  %114 = insertelement <4 x float> %113, float %106, i64 3
  %115 = shufflevector <4 x float> %113, <4 x float> <float 0x3FDCCCCCC0000000, float poison, float 2.000000e+00, float poison>, <4 x i32> <i32 4, i32 2, i32 6, i32 2>
  %116 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %114, <4 x float> %115, <4 x float> %110)
  %117 = fptosi <4 x float> %116 to <4 x i16>
  store <4 x i16> %117, ptr %98, align 8, !tbaa !93
  br label %118

118:                                              ; preds = %22, %93, %68, %50, %25
  %119 = phi <4 x i16> [ %24, %22 ], [ %117, %93 ], [ %92, %68 ], [ %67, %50 ], [ %49, %25 ]
  %120 = getelementptr inbounds %struct.AZone, ptr %1, i64 0, i32 9
  %121 = getelementptr inbounds %struct.AZone, ptr %1, i64 0, i32 5
  %122 = extractelement <4 x i16> %119, i64 0
  %123 = sext i16 %122 to i32
  %124 = getelementptr inbounds %struct.AZone, ptr %1, i64 0, i32 7
  %125 = extractelement <4 x i16> %119, i64 2
  %126 = sext i16 %125 to i32
  %127 = getelementptr inbounds %struct.AZone, ptr %1, i64 0, i32 6
  %128 = extractelement <4 x i16> %119, i64 1
  %129 = sext i16 %128 to i32
  %130 = getelementptr inbounds %struct.AZone, ptr %1, i64 0, i32 8
  %131 = extractelement <4 x i16> %119, i64 3
  %132 = sext i16 %131 to i32
  tail call void @BLI_rcti_init(ptr noundef nonnull %120, i32 noundef %123, i32 noundef %126, i32 noundef %129, i32 noundef %132) #16
  %133 = load ptr, ptr %4, align 8, !tbaa !50
  %134 = icmp eq ptr %133, null
  br i1 %134, label %192, label %135

135:                                              ; preds = %118, %189
  %136 = phi ptr [ %190, %189 ], [ %133, %118 ]
  %137 = icmp eq ptr %136, %1
  br i1 %137, label %189, label %138

138:                                              ; preds = %135
  %139 = load i16, ptr %121, align 8, !tbaa !51
  %140 = sext i16 %139 to i32
  %141 = getelementptr inbounds %struct.AZone, ptr %136, i64 0, i32 5
  %142 = load i16, ptr %141, align 8, !tbaa !51
  %143 = sext i16 %142 to i32
  %144 = sub nsw i32 %140, %143
  %145 = tail call i32 @llvm.abs.i32(i32 %144, i1 true)
  %146 = icmp ult i32 %145, 2
  br i1 %146, label %147, label %189

147:                                              ; preds = %138
  %148 = load i16, ptr %127, align 2, !tbaa !54
  %149 = sext i16 %148 to i32
  %150 = getelementptr inbounds %struct.AZone, ptr %136, i64 0, i32 6
  %151 = load i16, ptr %150, align 2, !tbaa !54
  %152 = sext i16 %151 to i32
  %153 = sub nsw i32 %149, %152
  %154 = tail call i32 @llvm.abs.i32(i32 %153, i1 true)
  %155 = icmp ult i32 %154, 2
  br i1 %155, label %156, label %189

156:                                              ; preds = %147
  %157 = load i32, ptr %21, align 4, !tbaa !172
  %158 = and i32 %157, -2
  %159 = icmp eq i32 %158, 2
  %160 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !38
  %161 = sitofp i16 %160 to float
  br i1 %159, label %162, label %172

162:                                              ; preds = %156
  %163 = sitofp i16 %139 to float
  %164 = tail call float @llvm.fmuladd.f32(float %161, float 0x3FE3333340000000, float %163)
  %165 = fptosi float %164 to i16
  store i16 %165, ptr %121, align 8, !tbaa !51
  %166 = load i16, ptr %124, align 4, !tbaa !53
  %167 = sitofp i16 %166 to float
  %168 = tail call float @llvm.fmuladd.f32(float %161, float 0x3FE3333340000000, float %167)
  %169 = fptosi float %168 to i16
  store i16 %169, ptr %124, align 4, !tbaa !53
  %170 = load i16, ptr %130, align 2, !tbaa !55
  %171 = sext i16 %165 to i32
  br label %182

172:                                              ; preds = %156
  %173 = sitofp i16 %148 to float
  %174 = tail call float @llvm.fmuladd.f32(float %161, float 0xBFE3333340000000, float %173)
  %175 = fptosi float %174 to i16
  store i16 %175, ptr %127, align 2, !tbaa !54
  %176 = load i16, ptr %130, align 2, !tbaa !55
  %177 = sitofp i16 %176 to float
  %178 = tail call float @llvm.fmuladd.f32(float %161, float 0xBFE3333340000000, float %177)
  %179 = fptosi float %178 to i16
  store i16 %179, ptr %130, align 2, !tbaa !55
  %180 = load i16, ptr %124, align 4, !tbaa !53
  %181 = sext i16 %175 to i32
  br label %182

182:                                              ; preds = %172, %162
  %183 = phi i32 [ %181, %172 ], [ %149, %162 ]
  %184 = phi i32 [ %140, %172 ], [ %171, %162 ]
  %185 = phi i16 [ %179, %172 ], [ %170, %162 ]
  %186 = phi i16 [ %180, %172 ], [ %169, %162 ]
  %187 = sext i16 %186 to i32
  %188 = sext i16 %185 to i32
  tail call void @BLI_rcti_init(ptr noundef nonnull %120, i32 noundef %184, i32 noundef %187, i32 noundef %183, i32 noundef %188) #16
  br label %189

189:                                              ; preds = %135, %182, %147, %138
  %190 = load ptr, ptr %136, align 8, !tbaa !50
  %191 = icmp eq ptr %190, null
  br i1 %191, label %192, label %135, !llvm.loop !177

192:                                              ; preds = %189, %118
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @region_azone_tria(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.AZone, ptr %1, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !172
  switch i32 %5, label %6 [
    i32 2, label %15
    i32 3, label %44
    i32 1, label %68
    i32 0, label %94
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.AZone, ptr %1, i64 0, i32 5
  %8 = load i16, ptr %7, align 8, !tbaa !51
  %9 = getelementptr inbounds %struct.AZone, ptr %1, i64 0, i32 7
  %10 = load i16, ptr %9, align 4, !tbaa !53
  %11 = getelementptr inbounds %struct.AZone, ptr %1, i64 0, i32 6
  %12 = load i16, ptr %11, align 2, !tbaa !54
  %13 = getelementptr inbounds %struct.AZone, ptr %1, i64 0, i32 8
  %14 = load i16, ptr %13, align 2, !tbaa !55
  br label %120

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 3, i32 3
  %17 = load i32, ptr %16, align 4, !tbaa !106
  %18 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 7, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !92
  %20 = icmp eq i32 %17, %19
  %21 = sext i1 %20 to i32
  %22 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 3, i32 1
  %23 = load i32, ptr %22, align 4, !tbaa !107
  %24 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !38
  %25 = sitofp i16 %24 to float
  %26 = fmul float %25, 0x3FE99999A0000000
  %27 = getelementptr inbounds %struct.AZone, ptr %1, i64 0, i32 5
  %28 = add i32 %17, %21
  %29 = trunc i32 %28 to i16
  %30 = getelementptr inbounds %struct.AZone, ptr %1, i64 0, i32 6
  store i16 %29, ptr %30, align 2, !tbaa !54
  %31 = getelementptr inbounds %struct.AZone, ptr %1, i64 0, i32 7
  %32 = insertelement <2 x i32> poison, i32 %23, i64 0
  %33 = insertelement <2 x i32> %32, i32 %28, i64 1
  %34 = sitofp <2 x i32> %33 to <2 x float>
  %35 = extractelement <2 x float> %34, i64 0
  %36 = tail call float @llvm.fmuladd.f32(float %26, float -2.000000e+00, float %35)
  %37 = fptosi float %36 to i16
  store i16 %37, ptr %27, align 8, !tbaa !51
  %38 = insertelement <2 x float> poison, float %25, i64 0
  %39 = shufflevector <2 x float> %38, <2 x float> poison, <2 x i32> zeroinitializer
  %40 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %39, <2 x float> <float 0xBFE99999A0000000, float 0x3FDCCCCCC0000000>, <2 x float> %34)
  %41 = fptosi <2 x float> %40 to <2 x i16>
  store <2 x i16> %41, ptr %31, align 4, !tbaa !93
  %42 = extractelement <2 x i16> %41, i64 0
  %43 = extractelement <2 x i16> %41, i64 1
  br label %120

44:                                               ; preds = %3
  %45 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 3
  %46 = load i32, ptr %45, align 8, !tbaa !48
  %47 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !38
  %48 = sitofp i16 %47 to float
  %49 = getelementptr inbounds %struct.AZone, ptr %1, i64 0, i32 5
  %50 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 3, i32 2
  %51 = load i32, ptr %50, align 8, !tbaa !49
  %52 = insertelement <2 x i32> poison, i32 %46, i64 0
  %53 = insertelement <2 x i32> %52, i32 %51, i64 1
  %54 = sitofp <2 x i32> %53 to <2 x float>
  %55 = insertelement <2 x float> poison, float %48, i64 0
  %56 = shufflevector <2 x float> %55, <2 x float> poison, <2 x i32> zeroinitializer
  %57 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %56, <2 x float> <float 0x3FE99999A0000000, float 0xBFDCCCCCC0000000>, <2 x float> %54)
  %58 = fptosi <2 x float> %57 to <2 x i16>
  store <2 x i16> %58, ptr %49, align 8, !tbaa !93
  %59 = fmul float %48, 0x3FE99999A0000000
  %60 = extractelement <2 x float> %54, i64 0
  %61 = tail call float @llvm.fmuladd.f32(float %59, float 2.000000e+00, float %60)
  %62 = fptosi float %61 to i16
  %63 = getelementptr inbounds %struct.AZone, ptr %1, i64 0, i32 7
  store i16 %62, ptr %63, align 4, !tbaa !53
  %64 = trunc i32 %51 to i16
  %65 = getelementptr inbounds %struct.AZone, ptr %1, i64 0, i32 8
  store i16 %64, ptr %65, align 2, !tbaa !55
  %66 = extractelement <2 x i16> %58, i64 0
  %67 = extractelement <2 x i16> %58, i64 1
  br label %120

68:                                               ; preds = %3
  %69 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 3
  %70 = load i32, ptr %69, align 8, !tbaa !48
  %71 = add nsw i32 %70, 1
  %72 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !38
  %73 = sitofp i16 %72 to float
  %74 = getelementptr inbounds %struct.AZone, ptr %1, i64 0, i32 5
  %75 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 3, i32 3
  %76 = load i32, ptr %75, align 4, !tbaa !106
  %77 = fmul float %73, 0x3FE99999A0000000
  %78 = insertelement <2 x i32> poison, i32 %71, i64 0
  %79 = insertelement <2 x i32> %78, i32 %76, i64 1
  %80 = sitofp <2 x i32> %79 to <2 x float>
  %81 = insertelement <2 x float> poison, float %73, i64 0
  %82 = insertelement <2 x float> %81, float %77, i64 1
  %83 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %82, <2 x float> <float 0xBFDCCCCCC0000000, float -2.000000e+00>, <2 x float> %80)
  %84 = fptosi <2 x float> %83 to <2 x i16>
  store <2 x i16> %84, ptr %74, align 8, !tbaa !93
  %85 = trunc i32 %70 to i16
  %86 = add i16 %85, 1
  %87 = getelementptr inbounds %struct.AZone, ptr %1, i64 0, i32 7
  store i16 %86, ptr %87, align 4, !tbaa !53
  %88 = extractelement <2 x float> %80, i64 1
  %89 = tail call float @llvm.fmuladd.f32(float %73, float 0xBFE99999A0000000, float %88)
  %90 = fptosi float %89 to i16
  %91 = getelementptr inbounds %struct.AZone, ptr %1, i64 0, i32 8
  store i16 %90, ptr %91, align 2, !tbaa !55
  %92 = extractelement <2 x i16> %84, i64 0
  %93 = extractelement <2 x i16> %84, i64 1
  br label %120

94:                                               ; preds = %3
  %95 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 3, i32 1
  %96 = load i32, ptr %95, align 4, !tbaa !107
  %97 = trunc i32 %96 to i16
  %98 = add i16 %97, -1
  %99 = getelementptr inbounds %struct.AZone, ptr %1, i64 0, i32 5
  store i16 %98, ptr %99, align 8, !tbaa !51
  %100 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 3, i32 3
  %101 = load i32, ptr %100, align 4, !tbaa !106
  %102 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !38
  %103 = sitofp i16 %102 to float
  %104 = fmul float %103, 0x3FE99999A0000000
  %105 = getelementptr inbounds %struct.AZone, ptr %1, i64 0, i32 6
  %106 = add nsw i32 %96, -1
  %107 = insertelement <2 x i32> poison, i32 %101, i64 0
  %108 = insertelement <2 x i32> %107, i32 %106, i64 1
  %109 = sitofp <2 x i32> %108 to <2 x float>
  %110 = insertelement <2 x float> poison, float %104, i64 0
  %111 = insertelement <2 x float> %110, float %103, i64 1
  %112 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %111, <2 x float> <float -2.000000e+00, float 0x3FDCCCCCC0000000>, <2 x float> %109)
  %113 = fptosi <2 x float> %112 to <2 x i16>
  store <2 x i16> %113, ptr %105, align 2, !tbaa !93
  %114 = extractelement <2 x float> %109, i64 0
  %115 = tail call float @llvm.fmuladd.f32(float %103, float 0xBFE99999A0000000, float %114)
  %116 = fptosi float %115 to i16
  %117 = getelementptr inbounds %struct.AZone, ptr %1, i64 0, i32 8
  store i16 %116, ptr %117, align 2, !tbaa !55
  %118 = extractelement <2 x i16> %113, i64 0
  %119 = extractelement <2 x i16> %113, i64 1
  br label %120

120:                                              ; preds = %6, %94, %68, %44, %15
  %121 = phi i16 [ %14, %6 ], [ %116, %94 ], [ %90, %68 ], [ %64, %44 ], [ %43, %15 ]
  %122 = phi i16 [ %12, %6 ], [ %118, %94 ], [ %93, %68 ], [ %67, %44 ], [ %29, %15 ]
  %123 = phi i16 [ %10, %6 ], [ %119, %94 ], [ %86, %68 ], [ %62, %44 ], [ %42, %15 ]
  %124 = phi i16 [ %8, %6 ], [ %98, %94 ], [ %92, %68 ], [ %66, %44 ], [ %37, %15 ]
  %125 = getelementptr inbounds %struct.AZone, ptr %1, i64 0, i32 9
  %126 = sext i16 %124 to i32
  %127 = sext i16 %123 to i32
  %128 = sext i16 %122 to i32
  %129 = sext i16 %121 to i32
  tail call void @BLI_rcti_init(ptr noundef nonnull %125, i32 noundef %126, i32 noundef %127, i32 noundef %128, i32 noundef %129) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @region_azone_tab(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.AZone, ptr %1, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !172
  switch i32 %5, label %6 [
    i32 2, label %15
    i32 3, label %44
    i32 1, label %68
    i32 0, label %94
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.AZone, ptr %1, i64 0, i32 5
  %8 = load i16, ptr %7, align 8, !tbaa !51
  %9 = getelementptr inbounds %struct.AZone, ptr %1, i64 0, i32 7
  %10 = load i16, ptr %9, align 4, !tbaa !53
  %11 = getelementptr inbounds %struct.AZone, ptr %1, i64 0, i32 6
  %12 = load i16, ptr %11, align 2, !tbaa !54
  %13 = getelementptr inbounds %struct.AZone, ptr %1, i64 0, i32 8
  %14 = load i16, ptr %13, align 2, !tbaa !55
  br label %120

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 3, i32 3
  %17 = load i32, ptr %16, align 4, !tbaa !106
  %18 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 7, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !92
  %20 = icmp eq i32 %17, %19
  %21 = sext i1 %20 to i32
  %22 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 3, i32 1
  %23 = load i32, ptr %22, align 4, !tbaa !107
  %24 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !38
  %25 = sitofp i16 %24 to float
  %26 = fmul float %25, 0x3FECCCCCC0000000
  %27 = getelementptr inbounds %struct.AZone, ptr %1, i64 0, i32 5
  %28 = add i32 %17, %21
  %29 = trunc i32 %28 to i16
  %30 = getelementptr inbounds %struct.AZone, ptr %1, i64 0, i32 6
  store i16 %29, ptr %30, align 2, !tbaa !54
  %31 = getelementptr inbounds %struct.AZone, ptr %1, i64 0, i32 7
  %32 = insertelement <2 x i32> poison, i32 %23, i64 0
  %33 = insertelement <2 x i32> %32, i32 %28, i64 1
  %34 = sitofp <2 x i32> %33 to <2 x float>
  %35 = extractelement <2 x float> %34, i64 0
  %36 = tail call float @llvm.fmuladd.f32(float %26, float -2.000000e+00, float %35)
  %37 = fptosi float %36 to i16
  store i16 %37, ptr %27, align 8, !tbaa !51
  %38 = insertelement <2 x float> poison, float %25, i64 0
  %39 = shufflevector <2 x float> %38, <2 x float> poison, <2 x i32> zeroinitializer
  %40 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %39, <2 x float> <float 0xBFECCCCCC0000000, float 0x3FD6666660000000>, <2 x float> %34)
  %41 = fptosi <2 x float> %40 to <2 x i16>
  store <2 x i16> %41, ptr %31, align 4, !tbaa !93
  %42 = extractelement <2 x i16> %41, i64 0
  %43 = extractelement <2 x i16> %41, i64 1
  br label %120

44:                                               ; preds = %3
  %45 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 3
  %46 = load i32, ptr %45, align 8, !tbaa !48
  %47 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !38
  %48 = sitofp i16 %47 to float
  %49 = getelementptr inbounds %struct.AZone, ptr %1, i64 0, i32 5
  %50 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 3, i32 2
  %51 = load i32, ptr %50, align 8, !tbaa !49
  %52 = insertelement <2 x i32> poison, i32 %46, i64 0
  %53 = insertelement <2 x i32> %52, i32 %51, i64 1
  %54 = sitofp <2 x i32> %53 to <2 x float>
  %55 = insertelement <2 x float> poison, float %48, i64 0
  %56 = shufflevector <2 x float> %55, <2 x float> poison, <2 x i32> zeroinitializer
  %57 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %56, <2 x float> <float 0x3FECCCCCC0000000, float 0xBFD6666660000000>, <2 x float> %54)
  %58 = fptosi <2 x float> %57 to <2 x i16>
  store <2 x i16> %58, ptr %49, align 8, !tbaa !93
  %59 = fmul float %48, 0x3FECCCCCC0000000
  %60 = extractelement <2 x float> %54, i64 0
  %61 = tail call float @llvm.fmuladd.f32(float %59, float 2.000000e+00, float %60)
  %62 = fptosi float %61 to i16
  %63 = getelementptr inbounds %struct.AZone, ptr %1, i64 0, i32 7
  store i16 %62, ptr %63, align 4, !tbaa !53
  %64 = trunc i32 %51 to i16
  %65 = getelementptr inbounds %struct.AZone, ptr %1, i64 0, i32 8
  store i16 %64, ptr %65, align 2, !tbaa !55
  %66 = extractelement <2 x i16> %58, i64 0
  %67 = extractelement <2 x i16> %58, i64 1
  br label %120

68:                                               ; preds = %3
  %69 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 3
  %70 = load i32, ptr %69, align 8, !tbaa !48
  %71 = add nsw i32 %70, 1
  %72 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !38
  %73 = sitofp i16 %72 to float
  %74 = getelementptr inbounds %struct.AZone, ptr %1, i64 0, i32 5
  %75 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 3, i32 3
  %76 = load i32, ptr %75, align 4, !tbaa !106
  %77 = fmul float %73, 0x3FECCCCCC0000000
  %78 = insertelement <2 x i32> poison, i32 %71, i64 0
  %79 = insertelement <2 x i32> %78, i32 %76, i64 1
  %80 = sitofp <2 x i32> %79 to <2 x float>
  %81 = insertelement <2 x float> poison, float %73, i64 0
  %82 = insertelement <2 x float> %81, float %77, i64 1
  %83 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %82, <2 x float> <float 0xBFD6666660000000, float -2.000000e+00>, <2 x float> %80)
  %84 = fptosi <2 x float> %83 to <2 x i16>
  store <2 x i16> %84, ptr %74, align 8, !tbaa !93
  %85 = trunc i32 %70 to i16
  %86 = add i16 %85, 1
  %87 = getelementptr inbounds %struct.AZone, ptr %1, i64 0, i32 7
  store i16 %86, ptr %87, align 4, !tbaa !53
  %88 = extractelement <2 x float> %80, i64 1
  %89 = tail call float @llvm.fmuladd.f32(float %73, float 0xBFECCCCCC0000000, float %88)
  %90 = fptosi float %89 to i16
  %91 = getelementptr inbounds %struct.AZone, ptr %1, i64 0, i32 8
  store i16 %90, ptr %91, align 2, !tbaa !55
  %92 = extractelement <2 x i16> %84, i64 0
  %93 = extractelement <2 x i16> %84, i64 1
  br label %120

94:                                               ; preds = %3
  %95 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 3, i32 1
  %96 = load i32, ptr %95, align 4, !tbaa !107
  %97 = trunc i32 %96 to i16
  %98 = add i16 %97, -1
  %99 = getelementptr inbounds %struct.AZone, ptr %1, i64 0, i32 5
  store i16 %98, ptr %99, align 8, !tbaa !51
  %100 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 3, i32 3
  %101 = load i32, ptr %100, align 4, !tbaa !106
  %102 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !38
  %103 = sitofp i16 %102 to float
  %104 = fmul float %103, 0x3FECCCCCC0000000
  %105 = getelementptr inbounds %struct.AZone, ptr %1, i64 0, i32 6
  %106 = add nsw i32 %96, -1
  %107 = insertelement <2 x i32> poison, i32 %101, i64 0
  %108 = insertelement <2 x i32> %107, i32 %106, i64 1
  %109 = sitofp <2 x i32> %108 to <2 x float>
  %110 = insertelement <2 x float> poison, float %104, i64 0
  %111 = insertelement <2 x float> %110, float %103, i64 1
  %112 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %111, <2 x float> <float -2.000000e+00, float 0x3FD6666660000000>, <2 x float> %109)
  %113 = fptosi <2 x float> %112 to <2 x i16>
  store <2 x i16> %113, ptr %105, align 2, !tbaa !93
  %114 = extractelement <2 x float> %109, i64 0
  %115 = tail call float @llvm.fmuladd.f32(float %103, float 0xBFECCCCCC0000000, float %114)
  %116 = fptosi float %115 to i16
  %117 = getelementptr inbounds %struct.AZone, ptr %1, i64 0, i32 8
  store i16 %116, ptr %117, align 2, !tbaa !55
  %118 = extractelement <2 x i16> %113, i64 0
  %119 = extractelement <2 x i16> %113, i64 1
  br label %120

120:                                              ; preds = %6, %94, %68, %44, %15
  %121 = phi i16 [ %14, %6 ], [ %116, %94 ], [ %90, %68 ], [ %64, %44 ], [ %43, %15 ]
  %122 = phi i16 [ %12, %6 ], [ %118, %94 ], [ %93, %68 ], [ %67, %44 ], [ %29, %15 ]
  %123 = phi i16 [ %10, %6 ], [ %119, %94 ], [ %86, %68 ], [ %62, %44 ], [ %42, %15 ]
  %124 = phi i16 [ %8, %6 ], [ %98, %94 ], [ %92, %68 ], [ %66, %44 ], [ %37, %15 ]
  %125 = getelementptr inbounds %struct.AZone, ptr %1, i64 0, i32 9
  %126 = sext i16 %124 to i32
  %127 = sext i16 %123 to i32
  %128 = sext i16 %122 to i32
  %129 = sext i16 %121 to i32
  tail call void @BLI_rcti_init(ptr noundef nonnull %125, i32 noundef %126, i32 noundef %127, i32 noundef %128, i32 noundef %129) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @region_azone_tab_plus(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.AZone, ptr %1, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !172
  switch i32 %5, label %6 [
    i32 2, label %15
    i32 3, label %44
    i32 1, label %65
    i32 0, label %89
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.AZone, ptr %1, i64 0, i32 5
  %8 = load i16, ptr %7, align 8, !tbaa !51
  %9 = getelementptr inbounds %struct.AZone, ptr %1, i64 0, i32 7
  %10 = load i16, ptr %9, align 4, !tbaa !53
  %11 = getelementptr inbounds %struct.AZone, ptr %1, i64 0, i32 6
  %12 = load i16, ptr %11, align 2, !tbaa !54
  %13 = getelementptr inbounds %struct.AZone, ptr %1, i64 0, i32 8
  %14 = load i16, ptr %13, align 2, !tbaa !55
  br label %115

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 3, i32 3
  %17 = load i32, ptr %16, align 4, !tbaa !106
  %18 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 7, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !92
  %20 = icmp eq i32 %17, %19
  %21 = sext i1 %20 to i32
  %22 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 3, i32 1
  %23 = load i32, ptr %22, align 4, !tbaa !107
  %24 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !38
  %25 = sitofp i16 %24 to float
  %26 = fmul float %25, 0x3FE6666660000000
  %27 = getelementptr inbounds %struct.AZone, ptr %1, i64 0, i32 5
  %28 = add i32 %17, %21
  %29 = trunc i32 %28 to i16
  %30 = getelementptr inbounds %struct.AZone, ptr %1, i64 0, i32 6
  store i16 %29, ptr %30, align 2, !tbaa !54
  %31 = getelementptr inbounds %struct.AZone, ptr %1, i64 0, i32 7
  %32 = insertelement <2 x i32> poison, i32 %23, i64 0
  %33 = insertelement <2 x i32> %32, i32 %28, i64 1
  %34 = sitofp <2 x i32> %33 to <2 x float>
  %35 = extractelement <2 x float> %34, i64 0
  %36 = tail call float @llvm.fmuladd.f32(float %26, float -2.500000e+00, float %35)
  %37 = fptosi float %36 to i16
  store i16 %37, ptr %27, align 8, !tbaa !51
  %38 = insertelement <2 x float> poison, float %26, i64 0
  %39 = insertelement <2 x float> %38, float %25, i64 1
  %40 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %39, <2 x float> <float -1.500000e+00, float 0x3FE6666660000000>, <2 x float> %34)
  %41 = fptosi <2 x float> %40 to <2 x i16>
  store <2 x i16> %41, ptr %31, align 4, !tbaa !93
  %42 = extractelement <2 x i16> %41, i64 0
  %43 = extractelement <2 x i16> %41, i64 1
  br label %115

44:                                               ; preds = %3
  %45 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 3, i32 1
  %46 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !38
  %47 = sitofp i16 %46 to float
  %48 = fmul float %47, 0x3FE6666660000000
  %49 = getelementptr inbounds %struct.AZone, ptr %1, i64 0, i32 5
  %50 = load <2 x i32>, ptr %45, align 4, !tbaa !30
  %51 = sitofp <2 x i32> %50 to <2 x float>
  %52 = insertelement <2 x float> poison, float %48, i64 0
  %53 = insertelement <2 x float> %52, float %47, i64 1
  %54 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %53, <2 x float> <float -2.500000e+00, float 0xBFE6666660000000>, <2 x float> %51)
  %55 = fptosi <2 x float> %54 to <2 x i16>
  store <2 x i16> %55, ptr %49, align 8, !tbaa !93
  %56 = extractelement <2 x float> %51, i64 0
  %57 = tail call float @llvm.fmuladd.f32(float %48, float -1.500000e+00, float %56)
  %58 = fptosi float %57 to i16
  %59 = getelementptr inbounds %struct.AZone, ptr %1, i64 0, i32 7
  store i16 %58, ptr %59, align 4, !tbaa !53
  %60 = bitcast <2 x i32> %50 to <4 x i16>
  %61 = extractelement <4 x i16> %60, i64 2
  %62 = getelementptr inbounds %struct.AZone, ptr %1, i64 0, i32 8
  store i16 %61, ptr %62, align 2, !tbaa !55
  %63 = extractelement <2 x i16> %55, i64 0
  %64 = extractelement <2 x i16> %55, i64 1
  br label %115

65:                                               ; preds = %3
  %66 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 3
  %67 = load i32, ptr %66, align 8, !tbaa !48
  %68 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !38
  %69 = sitofp i16 %68 to float
  %70 = getelementptr inbounds %struct.AZone, ptr %1, i64 0, i32 5
  %71 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 3, i32 3
  %72 = load i32, ptr %71, align 4, !tbaa !106
  %73 = fmul float %69, 0x3FE6666660000000
  %74 = insertelement <2 x i32> poison, i32 %67, i64 0
  %75 = insertelement <2 x i32> %74, i32 %72, i64 1
  %76 = sitofp <2 x i32> %75 to <2 x float>
  %77 = insertelement <2 x float> poison, float %69, i64 0
  %78 = insertelement <2 x float> %77, float %73, i64 1
  %79 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %78, <2 x float> <float 0xBFE6666660000000, float -2.500000e+00>, <2 x float> %76)
  %80 = fptosi <2 x float> %79 to <2 x i16>
  store <2 x i16> %80, ptr %70, align 8, !tbaa !93
  %81 = trunc i32 %67 to i16
  %82 = getelementptr inbounds %struct.AZone, ptr %1, i64 0, i32 7
  store i16 %81, ptr %82, align 4, !tbaa !53
  %83 = extractelement <2 x float> %76, i64 1
  %84 = tail call float @llvm.fmuladd.f32(float %73, float -1.500000e+00, float %83)
  %85 = fptosi float %84 to i16
  %86 = getelementptr inbounds %struct.AZone, ptr %1, i64 0, i32 8
  store i16 %85, ptr %86, align 2, !tbaa !55
  %87 = extractelement <2 x i16> %80, i64 0
  %88 = extractelement <2 x i16> %80, i64 1
  br label %115

89:                                               ; preds = %3
  %90 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 3, i32 1
  %91 = load i32, ptr %90, align 4, !tbaa !107
  %92 = trunc i32 %91 to i16
  %93 = add i16 %92, -1
  %94 = getelementptr inbounds %struct.AZone, ptr %1, i64 0, i32 5
  store i16 %93, ptr %94, align 8, !tbaa !51
  %95 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 3, i32 3
  %96 = load i32, ptr %95, align 4, !tbaa !106
  %97 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !38
  %98 = sitofp i16 %97 to float
  %99 = fmul float %98, 0x3FE6666660000000
  %100 = getelementptr inbounds %struct.AZone, ptr %1, i64 0, i32 6
  %101 = add nsw i32 %91, -1
  %102 = insertelement <2 x i32> poison, i32 %96, i64 0
  %103 = insertelement <2 x i32> %102, i32 %101, i64 1
  %104 = sitofp <2 x i32> %103 to <2 x float>
  %105 = insertelement <2 x float> poison, float %99, i64 0
  %106 = insertelement <2 x float> %105, float %98, i64 1
  %107 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %106, <2 x float> <float -2.500000e+00, float 0x3FE6666660000000>, <2 x float> %104)
  %108 = fptosi <2 x float> %107 to <2 x i16>
  store <2 x i16> %108, ptr %100, align 2, !tbaa !93
  %109 = extractelement <2 x float> %104, i64 0
  %110 = tail call float @llvm.fmuladd.f32(float %99, float -1.500000e+00, float %109)
  %111 = fptosi float %110 to i16
  %112 = getelementptr inbounds %struct.AZone, ptr %1, i64 0, i32 8
  store i16 %111, ptr %112, align 2, !tbaa !55
  %113 = extractelement <2 x i16> %108, i64 0
  %114 = extractelement <2 x i16> %108, i64 1
  br label %115

115:                                              ; preds = %6, %89, %65, %44, %15
  %116 = phi i16 [ %14, %6 ], [ %111, %89 ], [ %85, %65 ], [ %61, %44 ], [ %43, %15 ]
  %117 = phi i16 [ %12, %6 ], [ %113, %89 ], [ %88, %65 ], [ %64, %44 ], [ %29, %15 ]
  %118 = phi i16 [ %10, %6 ], [ %114, %89 ], [ %81, %65 ], [ %58, %44 ], [ %42, %15 ]
  %119 = phi i16 [ %8, %6 ], [ %93, %89 ], [ %87, %65 ], [ %63, %44 ], [ %37, %15 ]
  %120 = getelementptr inbounds %struct.AZone, ptr %1, i64 0, i32 9
  %121 = sext i16 %119 to i32
  %122 = sext i16 %118 to i32
  %123 = sext i16 %117 to i32
  %124 = sext i16 %116 to i32
  tail call void @BLI_rcti_init(ptr noundef nonnull %120, i32 noundef %121, i32 noundef %122, i32 noundef %123, i32 noundef %124) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @region_azone_edge(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.AZone, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 4, !tbaa !172
  switch i32 %4, label %5 [
    i32 2, label %14
    i32 3, label %34
    i32 1, label %54
    i32 0, label %74
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.AZone, ptr %0, i64 0, i32 5
  %7 = load i16, ptr %6, align 8, !tbaa !51
  %8 = getelementptr inbounds %struct.AZone, ptr %0, i64 0, i32 7
  %9 = load i16, ptr %8, align 4, !tbaa !53
  %10 = getelementptr inbounds %struct.AZone, ptr %0, i64 0, i32 6
  %11 = load i16, ptr %10, align 2, !tbaa !54
  %12 = getelementptr inbounds %struct.AZone, ptr %0, i64 0, i32 8
  %13 = load i16, ptr %12, align 2, !tbaa !55
  br label %94

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !48
  %17 = trunc i32 %16 to i16
  %18 = getelementptr inbounds %struct.AZone, ptr %0, i64 0, i32 5
  store i16 %17, ptr %18, align 8, !tbaa !51
  %19 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 3
  %20 = load i32, ptr %19, align 4, !tbaa !106
  %21 = sitofp i32 %20 to float
  %22 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !38
  %23 = sitofp i16 %22 to float
  %24 = tail call float @llvm.fmuladd.f32(float %23, float 0xBFB99999A0000000, float %21)
  %25 = fptosi float %24 to i16
  %26 = getelementptr inbounds %struct.AZone, ptr %0, i64 0, i32 6
  store i16 %25, ptr %26, align 2, !tbaa !54
  %27 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa !107
  %29 = trunc i32 %28 to i16
  %30 = getelementptr inbounds %struct.AZone, ptr %0, i64 0, i32 7
  store i16 %29, ptr %30, align 4, !tbaa !53
  %31 = tail call float @llvm.fmuladd.f32(float %23, float 0x3FB99999A0000000, float %21)
  %32 = fptosi float %31 to i16
  %33 = getelementptr inbounds %struct.AZone, ptr %0, i64 0, i32 8
  store i16 %32, ptr %33, align 2, !tbaa !55
  br label %94

34:                                               ; preds = %2
  %35 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %36 = load i32, ptr %35, align 8, !tbaa !48
  %37 = trunc i32 %36 to i16
  %38 = getelementptr inbounds %struct.AZone, ptr %0, i64 0, i32 5
  store i16 %37, ptr %38, align 8, !tbaa !51
  %39 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 2
  %40 = load i32, ptr %39, align 8, !tbaa !49
  %41 = sitofp i32 %40 to float
  %42 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !38
  %43 = sitofp i16 %42 to float
  %44 = tail call float @llvm.fmuladd.f32(float %43, float 0x3FB99999A0000000, float %41)
  %45 = fptosi float %44 to i16
  %46 = getelementptr inbounds %struct.AZone, ptr %0, i64 0, i32 6
  store i16 %45, ptr %46, align 2, !tbaa !54
  %47 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 1
  %48 = load i32, ptr %47, align 4, !tbaa !107
  %49 = trunc i32 %48 to i16
  %50 = getelementptr inbounds %struct.AZone, ptr %0, i64 0, i32 7
  store i16 %49, ptr %50, align 4, !tbaa !53
  %51 = tail call float @llvm.fmuladd.f32(float %43, float 0xBFB99999A0000000, float %41)
  %52 = fptosi float %51 to i16
  %53 = getelementptr inbounds %struct.AZone, ptr %0, i64 0, i32 8
  store i16 %52, ptr %53, align 2, !tbaa !55
  br label %94

54:                                               ; preds = %2
  %55 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %56 = load i32, ptr %55, align 8, !tbaa !48
  %57 = sitofp i32 %56 to float
  %58 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !38
  %59 = sitofp i16 %58 to float
  %60 = tail call float @llvm.fmuladd.f32(float %59, float 0xBFB99999A0000000, float %57)
  %61 = fptosi float %60 to i16
  %62 = getelementptr inbounds %struct.AZone, ptr %0, i64 0, i32 5
  store i16 %61, ptr %62, align 8, !tbaa !51
  %63 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 2
  %64 = load i32, ptr %63, align 8, !tbaa !49
  %65 = trunc i32 %64 to i16
  %66 = getelementptr inbounds %struct.AZone, ptr %0, i64 0, i32 6
  store i16 %65, ptr %66, align 2, !tbaa !54
  %67 = tail call float @llvm.fmuladd.f32(float %59, float 0x3FB99999A0000000, float %57)
  %68 = fptosi float %67 to i16
  %69 = getelementptr inbounds %struct.AZone, ptr %0, i64 0, i32 7
  store i16 %68, ptr %69, align 4, !tbaa !53
  %70 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 3
  %71 = load i32, ptr %70, align 4, !tbaa !106
  %72 = trunc i32 %71 to i16
  %73 = getelementptr inbounds %struct.AZone, ptr %0, i64 0, i32 8
  store i16 %72, ptr %73, align 2, !tbaa !55
  br label %94

74:                                               ; preds = %2
  %75 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 1
  %76 = load i32, ptr %75, align 4, !tbaa !107
  %77 = sitofp i32 %76 to float
  %78 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !38
  %79 = sitofp i16 %78 to float
  %80 = tail call float @llvm.fmuladd.f32(float %79, float 0x3FB99999A0000000, float %77)
  %81 = fptosi float %80 to i16
  %82 = getelementptr inbounds %struct.AZone, ptr %0, i64 0, i32 5
  store i16 %81, ptr %82, align 8, !tbaa !51
  %83 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 2
  %84 = load i32, ptr %83, align 8, !tbaa !49
  %85 = trunc i32 %84 to i16
  %86 = getelementptr inbounds %struct.AZone, ptr %0, i64 0, i32 6
  store i16 %85, ptr %86, align 2, !tbaa !54
  %87 = tail call float @llvm.fmuladd.f32(float %79, float 0xBFB99999A0000000, float %77)
  %88 = fptosi float %87 to i16
  %89 = getelementptr inbounds %struct.AZone, ptr %0, i64 0, i32 7
  store i16 %88, ptr %89, align 4, !tbaa !53
  %90 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 3
  %91 = load i32, ptr %90, align 4, !tbaa !106
  %92 = trunc i32 %91 to i16
  %93 = getelementptr inbounds %struct.AZone, ptr %0, i64 0, i32 8
  store i16 %92, ptr %93, align 2, !tbaa !55
  br label %94

94:                                               ; preds = %5, %74, %54, %34, %14
  %95 = phi i16 [ %13, %5 ], [ %92, %74 ], [ %72, %54 ], [ %52, %34 ], [ %32, %14 ]
  %96 = phi i16 [ %11, %5 ], [ %85, %74 ], [ %65, %54 ], [ %45, %34 ], [ %25, %14 ]
  %97 = phi i16 [ %9, %5 ], [ %88, %74 ], [ %68, %54 ], [ %49, %34 ], [ %29, %14 ]
  %98 = phi i16 [ %7, %5 ], [ %81, %74 ], [ %61, %54 ], [ %37, %34 ], [ %17, %14 ]
  %99 = getelementptr inbounds %struct.AZone, ptr %0, i64 0, i32 9
  %100 = sext i16 %98 to i32
  %101 = sext i16 %97 to i32
  %102 = sext i16 %96 to i32
  %103 = sext i16 %95 to i32
  tail call void @BLI_rcti_init(ptr noundef nonnull %99, i32 noundef %100, i32 noundef %101, i32 noundef %102, i32 noundef %103) #16
  ret void
}

; Function Attrs: optsize
declare void @UI_add_region_handlers(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_area_find_region_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @WM_event_add_keymap_handler_bb(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @wm_subwindow_close(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @wm_subwindow_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @wm_subwindow_position(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #15

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind optsize }
attributes #17 = { optsize }
attributes #18 = { nounwind }
attributes #19 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !10, i64 36}
!6 = !{!"wmNotifier", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !7, i64 56}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!6, !10, i64 40}
!12 = !{!13, !7, i64 240}
!13 = !{!"ARegion", !7, i64 0, !7, i64 8, !14, i64 16, !17, i64 176, !17, i64 192, !18, i64 208, !18, i64 210, !18, i64 212, !18, i64 214, !18, i64 216, !18, i64 218, !16, i64 220, !18, i64 224, !18, i64 226, !18, i64 228, !18, i64 230, !18, i64 232, !18, i64 234, !18, i64 236, !18, i64 238, !7, i64 240, !19, i64 248, !19, i64 264, !19, i64 280, !19, i64 296, !19, i64 312, !19, i64 328, !19, i64 344, !7, i64 360, !7, i64 368, !7, i64 376}
!14 = !{!"View2D", !15, i64 0, !15, i64 16, !17, i64 32, !17, i64 48, !17, i64 64, !8, i64 80, !8, i64 88, !16, i64 96, !16, i64 100, !18, i64 104, !18, i64 106, !18, i64 108, !18, i64 110, !18, i64 112, !18, i64 114, !18, i64 116, !18, i64 118, !18, i64 120, !18, i64 122, !18, i64 124, !18, i64 126, !7, i64 128, !10, i64 136, !10, i64 140, !7, i64 144, !7, i64 152}
!15 = !{!"rctf", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12}
!16 = !{!"float", !8, i64 0}
!17 = !{!"rcti", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12}
!18 = !{!"short", !8, i64 0}
!19 = !{!"ListBase", !7, i64 0, !7, i64 8}
!20 = !{!21, !7, i64 48}
!21 = !{!"ARegionType", !7, i64 0, !7, i64 8, !10, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !19, i64 104, !19, i64 120, !19, i64 136, !10, i64 152, !10, i64 156, !10, i64 160, !10, i64 164, !10, i64 168, !18, i64 172, !18, i64 174, !18, i64 176}
!22 = !{!13, !18, i64 228}
!23 = !{!24, !7, i64 88}
!24 = !{!"ScrArea", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !17, i64 56, !8, i64 72, !8, i64 73, !18, i64 74, !18, i64 76, !18, i64 78, !18, i64 80, !18, i64 82, !18, i64 84, !8, i64 86, !8, i64 87, !7, i64 88, !19, i64 96, !19, i64 112, !19, i64 128, !19, i64 144}
!25 = !{!26, !7, i64 120}
!26 = !{!"SpaceType", !7, i64 0, !7, i64 8, !8, i64 16, !10, i64 80, !10, i64 84, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !19, i64 176, !19, i64 192, !10, i64 208}
!27 = !{!26, !7, i64 128}
!28 = !{!24, !18, i64 80}
!29 = !{i64 0, i64 4, !30, i64 4, i64 4, !30, i64 8, i64 4, !30, i64 12, i64 4, !30}
!30 = !{!10, !10, i64 0}
!31 = !{!13, !18, i64 212}
!32 = !{!24, !8, i64 72}
!33 = !{!21, !10, i64 16}
!34 = !{!21, !18, i64 172}
!35 = !{!13, !10, i64 192}
!36 = !{!13, !10, i64 196}
!37 = !{!13, !7, i64 368}
!38 = !{!39, !18, i64 8948}
!39 = !{!"UserDef", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !8, i64 20, !8, i64 788, !8, i64 1556, !8, i64 2580, !8, i64 3348, !8, i64 4116, !8, i64 4884, !8, i64 5652, !8, i64 6420, !8, i64 7444, !10, i64 8468, !18, i64 8472, !18, i64 8474, !18, i64 8476, !18, i64 8478, !18, i64 8480, !18, i64 8482, !10, i64 8484, !10, i64 8488, !10, i64 8492, !18, i64 8496, !18, i64 8498, !10, i64 8500, !10, i64 8504, !10, i64 8508, !10, i64 8512, !10, i64 8516, !10, i64 8520, !10, i64 8524, !18, i64 8528, !18, i64 8530, !18, i64 8532, !18, i64 8534, !19, i64 8536, !19, i64 8552, !19, i64 8568, !19, i64 8584, !19, i64 8600, !19, i64 8616, !19, i64 8632, !8, i64 8648, !18, i64 8712, !18, i64 8714, !18, i64 8716, !18, i64 8718, !18, i64 8720, !18, i64 8722, !18, i64 8724, !18, i64 8726, !8, i64 8728, !18, i64 8896, !18, i64 8898, !18, i64 8900, !18, i64 8902, !18, i64 8904, !18, i64 8906, !18, i64 8908, !18, i64 8910, !10, i64 8912, !10, i64 8916, !18, i64 8920, !18, i64 8922, !18, i64 8924, !18, i64 8926, !18, i64 8928, !18, i64 8930, !18, i64 8932, !18, i64 8934, !18, i64 8936, !18, i64 8938, !8, i64 8940, !8, i64 8941, !8, i64 8942, !8, i64 8943, !18, i64 8944, !18, i64 8946, !18, i64 8948, !18, i64 8950, !18, i64 8952, !18, i64 8954, !16, i64 8956, !16, i64 8960, !10, i64 8964, !18, i64 8968, !18, i64 8970, !16, i64 8972, !18, i64 8976, !18, i64 8978, !18, i64 8980, !18, i64 8982, !40, i64 8984, !8, i64 9760, !8, i64 9772, !18, i64 9788, !8, i64 9790, !8, i64 9791, !8, i64 9792, !8, i64 9872, !10, i64 10896, !10, i64 10900, !16, i64 10904, !16, i64 10908, !10, i64 10912, !18, i64 10916, !18, i64 10918, !18, i64 10920, !18, i64 10922, !18, i64 10924, !18, i64 10926, !41, i64 10928}
!40 = !{!"ColorBand", !18, i64 0, !18, i64 2, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !8, i64 8}
!41 = !{!"WalkNavigation", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !16, i64 16, !16, i64 20, !18, i64 24, !8, i64 26}
!42 = !{!21, !7, i64 40}
!43 = !{!44, !7, i64 24}
!44 = !{!"wmWindow", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !8, i64 40, !18, i64 104, !18, i64 106, !18, i64 108, !18, i64 110, !18, i64 112, !18, i64 114, !18, i64 116, !18, i64 118, !18, i64 120, !18, i64 122, !18, i64 124, !18, i64 126, !10, i64 128, !18, i64 132, !18, i64 134, !7, i64 136, !7, i64 144, !7, i64 152, !10, i64 160, !10, i64 164, !7, i64 168, !19, i64 176, !19, i64 192, !19, i64 208, !19, i64 224, !19, i64 240}
!45 = !{!46, !18, i64 208}
!46 = !{!"bScreen", !47, i64 0, !19, i64 120, !19, i64 136, !19, i64 152, !19, i64 168, !7, i64 184, !7, i64 192, !10, i64 200, !10, i64 204, !18, i64 208, !18, i64 210, !18, i64 212, !18, i64 214, !18, i64 216, !18, i64 218, !18, i64 220, !18, i64 222, !18, i64 224, !18, i64 226, !18, i64 228, !18, i64 230, !7, i64 232, !7, i64 240}
!47 = !{!"ID", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !18, i64 98, !10, i64 100, !10, i64 104, !10, i64 108, !7, i64 112}
!48 = !{!13, !10, i64 176}
!49 = !{!13, !10, i64 184}
!50 = !{!7, !7, i64 0}
!51 = !{!52, !18, i64 32}
!52 = !{!"AZone", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !18, i64 32, !18, i64 34, !18, i64 36, !18, i64 38, !17, i64 40, !16, i64 56}
!53 = !{!52, !18, i64 36}
!54 = !{!52, !18, i64 34}
!55 = !{!52, !18, i64 38}
!56 = !{!52, !10, i64 24}
!57 = !{!52, !7, i64 16}
!58 = !{!13, !18, i64 218}
!59 = !{!60, !18, i64 2092}
!60 = !{!"Global", !7, i64 0, !8, i64 8, !8, i64 1032, !8, i64 2056, !8, i64 2057, !8, i64 2058, !19, i64 2064, !8, i64 2080, !8, i64 2081, !8, i64 2082, !18, i64 2084, !18, i64 2086, !18, i64 2088, !8, i64 2090, !18, i64 2092, !10, i64 2096, !10, i64 2100, !8, i64 2104, !10, i64 2108, !10, i64 2112, !8, i64 2116}
!61 = !{!52, !16, i64 56}
!62 = distinct !{!62, !63}
!63 = !{!"llvm.loop.mustprogress"}
!64 = !{!17, !10, i64 0}
!65 = !{!17, !10, i64 8}
!66 = !{!17, !10, i64 4}
!67 = !{!17, !10, i64 12}
!68 = !{!13, !18, i64 230}
!69 = distinct !{!69, !63}
!70 = !{!13, !18, i64 214}
!71 = distinct !{!71, !63}
!72 = distinct !{!72, !63}
!73 = !{!24, !8, i64 73}
!74 = distinct !{!74, !63}
!75 = !{!24, !7, i64 112}
!76 = !{!26, !10, i64 208}
!77 = !{!26, !7, i64 104}
!78 = !{!21, !10, i64 168}
!79 = !{!21, !7, i64 24}
!80 = distinct !{!80, !63}
!81 = !{!39, !16, i64 10908}
!82 = !{!24, !7, i64 16}
!83 = !{!84, !18, i64 24}
!84 = !{!"ScrVert", !7, i64 0, !7, i64 8, !7, i64 16, !85, i64 24, !18, i64 28, !18, i64 30}
!85 = !{!"vec2s", !18, i64 0, !18, i64 2}
!86 = !{!24, !7, i64 40}
!87 = !{!84, !18, i64 26}
!88 = !{!24, !7, i64 24}
!89 = !{!24, !18, i64 74}
!90 = !{!24, !18, i64 76}
!91 = !{!24, !10, i64 56}
!92 = !{!24, !10, i64 64}
!93 = !{!18, !18, i64 0}
!94 = !{!24, !10, i64 60}
!95 = !{!24, !10, i64 68}
!96 = !{!13, !18, i64 216}
!97 = !{!13, !7, i64 8}
!98 = !{i8 0, i8 2}
!99 = !{!13, !18, i64 234}
!100 = !{!13, !7, i64 0}
!101 = !{!39, !10, i64 8524}
!102 = !{!13, !18, i64 224}
!103 = !{!21, !10, i64 160}
!104 = !{!13, !18, i64 226}
!105 = !{!21, !10, i64 164}
!106 = !{!13, !10, i64 188}
!107 = !{!13, !10, i64 180}
!108 = !{i32 -1073741824, i32 1073741824}
!109 = distinct !{!109, !63}
!110 = !{!60, !10, i64 2100}
!111 = !{!13, !18, i64 208}
!112 = !{!13, !18, i64 210}
!113 = !{!114, !7, i64 296}
!114 = !{!"wmWindowManager", !47, i64 0, !7, i64 120, !7, i64 128, !19, i64 136, !10, i64 152, !18, i64 156, !18, i64 158, !19, i64 160, !19, i64 176, !115, i64 192, !19, i64 232, !19, i64 248, !19, i64 264, !19, i64 280, !7, i64 296, !7, i64 304, !7, i64 312, !19, i64 320, !7, i64 336, !8, i64 344, !8, i64 345}
!115 = !{!"ReportList", !19, i64 0, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !7, i64 32}
!116 = !{!24, !18, i64 78}
!117 = !{!24, !18, i64 82}
!118 = distinct !{!118, !63}
!119 = distinct !{!119, !63}
!120 = !{i64 0, i64 8, !50, i64 8, i64 8, !50}
!121 = !{!24, !7, i64 96}
!122 = !{!123, !10, i64 32}
!123 = !{!"SpaceLink", !7, i64 0, !7, i64 8, !19, i64 16, !10, i64 32, !16, i64 36, !8, i64 40}
!124 = distinct !{!124, !63}
!125 = !{!26, !7, i64 96}
!126 = !{!26, !7, i64 88}
!127 = !{!19, !7, i64 0}
!128 = !{!123, !7, i64 0}
!129 = !{!14, !18, i64 112}
!130 = !{!14, !18, i64 104}
!131 = !{!8, !8, i64 0}
!132 = !{!133, !7, i64 368}
!133 = !{!"PanelType", !7, i64 0, !7, i64 8, !8, i64 16, !8, i64 80, !8, i64 144, !8, i64 208, !8, i64 272, !10, i64 336, !10, i64 340, !10, i64 344, !7, i64 352, !7, i64 360, !7, i64 368, !134, i64 376}
!134 = !{!"ExtensionRNA", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!135 = !{!133, !7, i64 352}
!136 = !{!137, !7, i64 0}
!137 = !{!"LinkNode", !7, i64 0, !7, i64 8}
!138 = !{!137, !7, i64 8}
!139 = distinct !{!139, !63}
!140 = distinct !{!140, !63}
!141 = !{!142, !18, i64 244}
!142 = !{!"Panel", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !8, i64 96, !8, i64 160, !10, i64 224, !10, i64 228, !10, i64 232, !10, i64 236, !18, i64 240, !18, i64 242, !18, i64 244, !18, i64 246, !18, i64 248, !18, i64 250, !10, i64 252, !7, i64 256, !7, i64 264}
!143 = !{!133, !7, i64 360}
!144 = !{!133, !10, i64 344}
!145 = !{!146, !18, i64 226}
!146 = !{!"uiStyle", !7, i64 0, !7, i64 8, !8, i64 16, !147, i64 80, !147, i64 112, !147, i64 144, !147, i64 176, !16, i64 208, !18, i64 212, !18, i64 214, !18, i64 216, !18, i64 218, !18, i64 220, !18, i64 222, !18, i64 224, !18, i64 226, !18, i64 228, !18, i64 230}
!147 = !{!"uiFontStyle", !18, i64 0, !18, i64 2, !18, i64 4, !8, i64 6, !18, i64 12, !18, i64 14, !18, i64 16, !18, i64 18, !18, i64 20, !18, i64 22, !16, i64 24, !16, i64 28}
!148 = !{!142, !7, i64 24}
!149 = !{!142, !18, i64 240}
!150 = distinct !{!150, !63}
!151 = !{!14, !16, i64 28}
!152 = !{!14, !16, i64 24}
!153 = !{!14, !16, i64 20}
!154 = distinct !{!154, !63}
!155 = !{!15, !16, i64 4}
!156 = !{!15, !16, i64 0}
!157 = !{!158, !7, i64 88}
!158 = !{!"HeaderType", !7, i64 0, !7, i64 8, !8, i64 16, !10, i64 80, !7, i64 88, !134, i64 96}
!159 = !{!160, !7, i64 0}
!160 = !{!"Header", !7, i64 0, !7, i64 8}
!161 = !{!160, !7, i64 8}
!162 = distinct !{!162, !63}
!163 = !{!146, !18, i64 176}
!164 = distinct !{!164, !63}
!165 = distinct !{!165, !63}
!166 = distinct !{!166, !63}
!167 = distinct !{!167, !63}
!168 = distinct !{!168, !63}
!169 = distinct !{!169, !63}
!170 = !{!16, !16, i64 0}
!171 = distinct !{!171, !63}
!172 = !{!52, !10, i64 28}
!173 = !{!39, !10, i64 8488}
!174 = distinct !{!174, !63}
!175 = distinct !{!175, !63}
!176 = distinct !{!176, !63}
!177 = distinct !{!177, !63}
