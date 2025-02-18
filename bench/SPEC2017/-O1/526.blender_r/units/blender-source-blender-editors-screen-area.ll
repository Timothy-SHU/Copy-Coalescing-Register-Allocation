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
%struct.AZone = type { ptr, ptr, ptr, i32, i32, i16, i16, i16, i16, %struct.rcti, float }
%struct.wmWindow = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, ptr, ptr, ptr, i32, i32, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.bScreen = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
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
@switch.table.ED_region_do_draw = private unnamed_addr constant [4 x i32] [i32 6, i32 9, i32 3, i32 12], align 4
@switch.table.region_rect_recursive = private unnamed_addr constant [4 x i32] [i32 3, i32 2, i32 0, i32 1], align 4

; Function Attrs: nounwind uwtable
define dso_local void @ED_region_pixelspace(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @wmOrtho2_region_pixelspace(ptr noundef %0) #13
  tail call void @glLoadIdentity() #13
  ret void
}

declare void @wmOrtho2_region_pixelspace(ptr noundef) local_unnamed_addr #1

declare void @glLoadIdentity() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ED_region_do_listen(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !34
  switch i32 %6, label %31 [
    i32 16777216, label %7
    i32 33554432, label %18
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !40
  %10 = icmp ne i32 %9, 65536
  %11 = icmp eq ptr %2, null
  %12 = or i1 %11, %10
  br i1 %12, label %31, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 14
  %15 = load i16, ptr %14, align 4, !tbaa !41
  %16 = and i16 %15, 4
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %25, label %31

18:                                               ; preds = %4
  %19 = icmp eq ptr %2, null
  br i1 %19, label %31, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 14
  %22 = load i16, ptr %21, align 4, !tbaa !41
  %23 = and i16 %22, 4
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %20, %13
  %26 = phi i16 [ %15, %13 ], [ %22, %20 ]
  %27 = phi ptr [ %14, %13 ], [ %21, %20 ]
  %28 = and i16 %26, -8
  %29 = or disjoint i16 %28, 1
  store i16 %29, ptr %27, align 4, !tbaa !41
  %30 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %30, i8 0, i64 16, i1 false)
  br label %31

31:                                               ; preds = %25, %20, %18, %13, %7, %4
  %32 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 20
  %33 = load ptr, ptr %32, align 8, !tbaa !49
  %34 = icmp eq ptr %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.ARegionType, ptr %33, i64 0, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !50
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  tail call void %37(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  br label %40

40:                                               ; preds = %39, %35, %31
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ED_region_tag_redraw(ptr noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 14
  %5 = load i16, ptr %4, align 4, !tbaa !41
  %6 = and i16 %5, 4
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = and i16 %5, -8
  %10 = or disjoint i16 %9, 1
  store i16 %10, ptr %4, align 4, !tbaa !41
  %11 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  br label %12

12:                                               ; preds = %8, %3, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_area_do_listen(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 18
  %5 = load ptr, ptr %4, align 8, !tbaa !52
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.SpaceType, ptr %5, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !54
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void %9(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  br label %12

12:                                               ; preds = %11, %7, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_area_do_refresh(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 18
  %4 = load ptr, ptr %3, align 8, !tbaa !52
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.SpaceType, ptr %4, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !56
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void %8(ptr noundef %0, ptr noundef %1) #13
  br label %11

11:                                               ; preds = %10, %6, %2
  %12 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 13
  store i16 0, ptr %12, align 8, !tbaa !57
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_region_set(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_window(ptr noundef %0) #13
  %4 = tail call ptr @CTX_wm_area(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 4
  %6 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !58
  %7 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 7
  %8 = load i16, ptr %7, align 4, !tbaa !60
  %9 = sext i16 %8 to i32
  tail call void @wmSubWindowScissorSet(ptr noundef %3, i32 noundef %9, ptr noundef nonnull %5, i8 noundef zeroext 1) #13
  %10 = icmp eq ptr %4, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.ScrArea, ptr %4, i64 0, i32 8
  %13 = load i8, ptr %12, align 8, !tbaa !61
  %14 = zext i8 %13 to i32
  br label %15

15:                                               ; preds = %2, %11
  %16 = phi i32 [ %14, %11 ], [ 0, %2 ]
  %17 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 20
  %18 = load ptr, ptr %17, align 8, !tbaa !49
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.ARegionType, ptr %18, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !62
  br label %23

23:                                               ; preds = %15, %20
  %24 = phi i32 [ %22, %20 ], [ 0, %15 ]
  tail call void @UI_SetTheme(i32 noundef %16, i32 noundef %24) #13
  tail call void @wmOrtho2_region_pixelspace(ptr noundef %1) #13
  tail call void @glLoadIdentity() #13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #1

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare void @wmSubWindowScissorSet(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare void @UI_SetTheme(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local void @ED_region_do_draw(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.rcti, align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca %struct.rcti, align 4
  %6 = tail call ptr @CTX_wm_window(ptr noundef %0) #13
  %7 = tail call ptr @CTX_wm_area(ptr noundef %0) #13
  %8 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 20
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  %10 = getelementptr inbounds %struct.ARegionType, ptr %9, i64 0, i32 21
  %11 = load i16, ptr %10, align 4, !tbaa !63
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %468

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 4
  %15 = load i32, ptr %14, align 8, !tbaa !64
  %16 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 4, i32 1
  %17 = load i32, ptr %16, align 4, !tbaa !65
  %18 = icmp eq i32 %15, %17
  %19 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  br i1 %18, label %20, label %21

20:                                               ; preds = %13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %19, i64 16, i1 false), !tbaa.struct !58
  br label %23

21:                                               ; preds = %13
  %22 = tail call zeroext i8 @BLI_rcti_isect(ptr noundef nonnull %19, ptr noundef nonnull %14, ptr noundef nonnull %14) #13
  br label %23

23:                                               ; preds = %21, %20
  %24 = phi i8 [ 1, %20 ], [ 0, %21 ]
  %25 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 14
  %26 = load i16, ptr %25, align 4, !tbaa !41
  %27 = or i16 %26, 4
  store i16 %27, ptr %25, align 4, !tbaa !41
  %28 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 7
  %29 = load i16, ptr %28, align 4, !tbaa !60
  %30 = sext i16 %29 to i32
  tail call void @wmSubWindowScissorSet(ptr noundef %6, i32 noundef %30, ptr noundef nonnull %14, i8 noundef zeroext %24) #13
  tail call void @wmOrtho2_region_ui(ptr noundef %1) #13
  %31 = icmp eq ptr %7, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.ScrArea, ptr %7, i64 0, i32 8
  %34 = load i8, ptr %33, align 8, !tbaa !61
  %35 = zext i8 %34 to i32
  br label %36

36:                                               ; preds = %23, %32
  %37 = phi i32 [ %35, %32 ], [ 0, %23 ]
  %38 = getelementptr inbounds %struct.ARegionType, ptr %9, i64 0, i32 2
  %39 = load i32, ptr %38, align 8, !tbaa !62
  tail call void @UI_SetTheme(i32 noundef %37, i32 noundef %39) #13
  %40 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 29
  %41 = load ptr, ptr %40, align 8, !tbaa !66
  %42 = icmp eq ptr %41, null
  br i1 %42, label %48, label %43

43:                                               ; preds = %36
  tail call void @UI_ThemeClearColor(i32 noundef 10) #13
  tail call void @glClear(i32 noundef 16384) #13
  tail call void @UI_ThemeColor(i32 noundef 3) #13
  %44 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !67
  %45 = sitofp i16 %44 to float
  %46 = fmul float %45, 0x3FD99999A0000000
  %47 = load ptr, ptr %40, align 8, !tbaa !66
  tail call void @BLF_draw_default(float noundef %45, float noundef %46, float noundef 0.000000e+00, ptr noundef %47, i64 noundef 1024) #13
  br label %53

48:                                               ; preds = %36
  %49 = getelementptr inbounds %struct.ARegionType, ptr %9, i64 0, i32 5
  %50 = load ptr, ptr %49, align 8, !tbaa !71
  %51 = icmp eq ptr %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  tail call void %50(ptr noundef %0, ptr noundef %1) #13
  br label %53

53:                                               ; preds = %48, %52, %43
  tail call void @wmOrtho2_region_pixelspace(ptr noundef %1) #13
  tail call void @glLoadIdentity() #13
  tail call void @ED_region_draw_cb_draw(ptr noundef %0, ptr noundef %1, i32 noundef 1) #13
  br i1 %31, label %466, label %54

54:                                               ; preds = %53
  tail call void @glEnable(i32 noundef 3042) #13
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #13
  tail call void @glPushMatrix() #13
  %55 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %56 = load i32, ptr %55, align 8, !tbaa !72
  %57 = sub nsw i32 0, %56
  %58 = sitofp i32 %57 to float
  %59 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 2
  %60 = load i32, ptr %59, align 8, !tbaa !73
  %61 = sub nsw i32 0, %60
  %62 = sitofp i32 %61 to float
  tail call void @glTranslatef(float noundef %58, float noundef %62, float noundef 0.000000e+00) #13
  %63 = getelementptr inbounds %struct.ScrArea, ptr %7, i64 0, i32 22
  %64 = load ptr, ptr %63, align 8, !tbaa !74
  %65 = icmp eq ptr %64, null
  br i1 %65, label %450, label %66

66:                                               ; preds = %54
  %67 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 2
  %68 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 1
  %69 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 3
  %70 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %71 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  br label %72

72:                                               ; preds = %66, %447
  %73 = phi ptr [ %64, %66 ], [ %448, %447 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #13
  %74 = getelementptr inbounds %struct.AZone, ptr %73, i64 0, i32 5
  %75 = load i16, ptr %74, align 8, !tbaa !75
  %76 = sext i16 %75 to i32
  %77 = getelementptr inbounds %struct.AZone, ptr %73, i64 0, i32 7
  %78 = load i16, ptr %77, align 4, !tbaa !77
  %79 = sext i16 %78 to i32
  %80 = getelementptr inbounds %struct.AZone, ptr %73, i64 0, i32 6
  %81 = load i16, ptr %80, align 2, !tbaa !78
  %82 = sext i16 %81 to i32
  %83 = getelementptr inbounds %struct.AZone, ptr %73, i64 0, i32 8
  %84 = load i16, ptr %83, align 2, !tbaa !79
  %85 = sext i16 %84 to i32
  call void @BLI_rcti_init(ptr noundef nonnull %5, i32 noundef %76, i32 noundef %79, i32 noundef %82, i32 noundef %85) #13
  %86 = call zeroext i8 @BLI_rcti_isect(ptr noundef nonnull %14, ptr noundef nonnull %5, ptr noundef null) #13
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %447, label %88

88:                                               ; preds = %72
  %89 = getelementptr inbounds %struct.AZone, ptr %73, i64 0, i32 3
  %90 = load i32, ptr %89, align 8, !tbaa !80
  switch i32 %90, label %447 [
    i32 1, label %91
    i32 2, label %144
    i32 3, label %363
  ]

91:                                               ; preds = %88
  %92 = load i16, ptr %74, align 8, !tbaa !75
  %93 = load i16, ptr %80, align 2, !tbaa !78
  %94 = load i16, ptr %77, align 4, !tbaa !77
  %95 = load i16, ptr %83, align 2, !tbaa !79
  %96 = sext i16 %94 to i32
  %97 = sext i16 %92 to i32
  %98 = sub nsw i32 %96, %97
  %99 = sext i16 %95 to i32
  %100 = sext i16 %93 to i32
  %101 = sub nsw i32 %99, %100
  %102 = call i32 @llvm.abs.i32(i32 %98, i1 true)
  %103 = sitofp i32 %102 to float
  %104 = fmul float %103, 0x3FD3333340000000
  %105 = call float @llvm.ceil.f32(float %104)
  %106 = fpext float %105 to double
  %107 = sitofp i32 %98 to double
  %108 = call double @llvm.copysign.f64(double %106, double %107)
  %109 = fptosi double %108 to i32
  %110 = call i32 @llvm.abs.i32(i32 %101, i1 true)
  %111 = sitofp i32 %110 to float
  %112 = fmul float %111, 0x3FD3333340000000
  %113 = call float @llvm.ceil.f32(float %112)
  %114 = fpext float %113 to double
  %115 = sitofp i32 %101 to double
  %116 = call double @llvm.copysign.f64(double %114, double %115)
  %117 = fptosi double %116 to i32
  call void @glEnable(i32 noundef 3042) #13
  call void @glEnable(i32 noundef 2848) #13
  call void @glColor4ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -76) #13
  %118 = sitofp i16 %92 to float
  %119 = sitofp i16 %95 to float
  %120 = sitofp i16 %94 to float
  %121 = sitofp i16 %93 to float
  call void @fdrawline(float noundef %118, float noundef %119, float noundef %120, float noundef %121) #13
  call void @glColor4ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -126) #13
  %122 = sub nsw i32 %99, %117
  %123 = sitofp i32 %122 to float
  %124 = sub nsw i32 %96, %109
  %125 = sitofp i32 %124 to float
  call void @fdrawline(float noundef %118, float noundef %123, float noundef %125, float noundef %121) #13
  call void @glColor4ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext 80) #13
  %126 = shl nsw i32 %117, 1
  %127 = sub nsw i32 %99, %126
  %128 = sitofp i32 %127 to float
  %129 = shl nsw i32 %109, 1
  %130 = sub nsw i32 %96, %129
  %131 = sitofp i32 %130 to float
  call void @fdrawline(float noundef %118, float noundef %128, float noundef %131, float noundef %121) #13
  call void @glColor4ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -46) #13
  %132 = add nsw i32 %99, 1
  %133 = sitofp i32 %132 to float
  %134 = add nsw i32 %96, 1
  %135 = sitofp i32 %134 to float
  call void @fdrawline(float noundef %118, float noundef %133, float noundef %135, float noundef %121) #13
  call void @glColor4ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -76) #13
  %136 = add nsw i32 %122, 1
  %137 = sitofp i32 %136 to float
  %138 = add nsw i32 %124, 1
  %139 = sitofp i32 %138 to float
  call void @fdrawline(float noundef %118, float noundef %137, float noundef %139, float noundef %121) #13
  call void @glColor4ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -106) #13
  %140 = add nsw i32 %127, 1
  %141 = sitofp i32 %140 to float
  %142 = add nsw i32 %130, 1
  %143 = sitofp i32 %142 to float
  call void @fdrawline(float noundef %118, float noundef %141, float noundef %143, float noundef %121) #13
  call void @glDisable(i32 noundef 2848) #13
  call void @glDisable(i32 noundef 3042) #13
  br label %447

144:                                              ; preds = %88
  %145 = getelementptr inbounds %struct.AZone, ptr %73, i64 0, i32 2
  %146 = load ptr, ptr %145, align 8, !tbaa !81
  %147 = icmp eq ptr %146, null
  br i1 %147, label %447, label %148

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.ARegion, ptr %146, i64 0, i32 10
  %150 = load i16, ptr %149, align 2, !tbaa !82
  %151 = and i16 %150, 3
  %152 = icmp eq i16 %151, 0
  br i1 %152, label %447, label %153

153:                                              ; preds = %148
  %154 = load i16, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 14), align 4, !tbaa !83
  switch i16 %154, label %320 [
    i16 3, label %155
    i16 2, label %181
    i16 1, label %241
  ]

155:                                              ; preds = %153
  %156 = load i16, ptr %74, align 8, !tbaa !75
  %157 = sext i16 %156 to i32
  %158 = load i16, ptr %77, align 4, !tbaa !77
  %159 = sext i16 %158 to i32
  %160 = sub nsw i32 %159, %157
  %161 = sdiv i32 %160, 2
  %162 = trunc i32 %161 to i16
  %163 = add i16 %156, %162
  %164 = load i16, ptr %80, align 2, !tbaa !78
  %165 = sext i16 %164 to i32
  %166 = load i16, ptr %83, align 2, !tbaa !79
  %167 = sext i16 %166 to i32
  %168 = sub nsw i32 %167, %165
  %169 = sdiv i32 %168, 2
  %170 = trunc i32 %169 to i16
  %171 = add i16 %164, %170
  %172 = call ptr @gluNewQuadric() #13
  call void @glPushMatrix() #13
  %173 = sitofp i16 %163 to float
  %174 = sitofp i16 %171 to float
  call void @glTranslatef(float noundef %173, float noundef %174, float noundef 0.000000e+00) #13
  call void @glEnable(i32 noundef 2848) #13
  call void @glColor4f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 0x3FE99999A0000000) #13
  call void @gluQuadricDrawStyle(ptr noundef %172, i32 noundef 100012) #13
  call void @gluDisk(ptr noundef %172, double noundef 0.000000e+00, double noundef 4.250000e+00, i32 noundef 16, i32 noundef 1) #13
  call void @glColor4f(float noundef 0x3FC99999A0000000, float noundef 0x3FC99999A0000000, float noundef 0x3FC99999A0000000, float noundef 0x3FECCCCCC0000000) #13
  call void @gluQuadricDrawStyle(ptr noundef %172, i32 noundef 100013) #13
  call void @gluDisk(ptr noundef %172, double noundef 0.000000e+00, double noundef 4.250000e+00, i32 noundef 16, i32 noundef 1) #13
  call void @glDisable(i32 noundef 2848) #13
  call void @glPopMatrix() #13
  call void @gluDeleteQuadric(ptr noundef %172) #13
  %175 = sext i16 %163 to i32
  %176 = sext i16 %171 to i32
  %177 = add nsw i32 %176, -2
  %178 = add nsw i32 %176, 3
  call void @sdrawline(i32 noundef %175, i32 noundef %177, i32 noundef %175, i32 noundef %178) #13
  %179 = add nsw i32 %175, -2
  %180 = add nsw i32 %175, 3
  call void @sdrawline(i32 noundef %179, i32 noundef %176, i32 noundef %180, i32 noundef %176) #13
  br label %447

181:                                              ; preds = %153
  call void @glEnable(i32 noundef 3042) #13
  call void @glColor4f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0x3FD6666660000000) #13
  %182 = getelementptr inbounds %struct.AZone, ptr %73, i64 0, i32 4
  %183 = load i32, ptr %182, align 4, !tbaa !85
  switch i32 %183, label %240 [
    i32 2, label %184
    i32 3, label %198
    i32 1, label %212
    i32 0, label %226
  ]

184:                                              ; preds = %181
  %185 = load i16, ptr %74, align 8, !tbaa !75
  %186 = sitofp i16 %185 to float
  %187 = load i16, ptr %80, align 2, !tbaa !78
  %188 = sitofp i16 %187 to float
  %189 = load i16, ptr %77, align 4, !tbaa !77
  %190 = sitofp i16 %189 to float
  %191 = sext i16 %185 to i32
  %192 = sext i16 %189 to i32
  %193 = add nsw i32 %192, %191
  %194 = sitofp i32 %193 to float
  %195 = fmul float %194, 5.000000e-01
  %196 = load i16, ptr %83, align 2, !tbaa !79
  %197 = sitofp i16 %196 to float
  call void @ui_draw_anti_tria(float noundef %186, float noundef %188, float noundef %190, float noundef %188, float noundef %195, float noundef %197) #13
  br label %240

198:                                              ; preds = %181
  %199 = load i16, ptr %74, align 8, !tbaa !75
  %200 = sitofp i16 %199 to float
  %201 = load i16, ptr %83, align 2, !tbaa !79
  %202 = sitofp i16 %201 to float
  %203 = load i16, ptr %77, align 4, !tbaa !77
  %204 = sitofp i16 %203 to float
  %205 = sext i16 %199 to i32
  %206 = sext i16 %203 to i32
  %207 = add nsw i32 %206, %205
  %208 = sitofp i32 %207 to float
  %209 = fmul float %208, 5.000000e-01
  %210 = load i16, ptr %80, align 2, !tbaa !78
  %211 = sitofp i16 %210 to float
  call void @ui_draw_anti_tria(float noundef %200, float noundef %202, float noundef %204, float noundef %202, float noundef %209, float noundef %211) #13
  br label %240

212:                                              ; preds = %181
  %213 = load i16, ptr %77, align 4, !tbaa !77
  %214 = sitofp i16 %213 to float
  %215 = load i16, ptr %80, align 2, !tbaa !78
  %216 = sitofp i16 %215 to float
  %217 = load i16, ptr %83, align 2, !tbaa !79
  %218 = sitofp i16 %217 to float
  %219 = load i16, ptr %74, align 8, !tbaa !75
  %220 = sitofp i16 %219 to float
  %221 = sext i16 %215 to i32
  %222 = sext i16 %217 to i32
  %223 = add nsw i32 %222, %221
  %224 = sitofp i32 %223 to float
  %225 = fmul float %224, 5.000000e-01
  call void @ui_draw_anti_tria(float noundef %214, float noundef %216, float noundef %214, float noundef %218, float noundef %220, float noundef %225) #13
  br label %240

226:                                              ; preds = %181
  %227 = load i16, ptr %74, align 8, !tbaa !75
  %228 = sitofp i16 %227 to float
  %229 = load i16, ptr %80, align 2, !tbaa !78
  %230 = sitofp i16 %229 to float
  %231 = load i16, ptr %83, align 2, !tbaa !79
  %232 = sitofp i16 %231 to float
  %233 = load i16, ptr %77, align 4, !tbaa !77
  %234 = sitofp i16 %233 to float
  %235 = sext i16 %229 to i32
  %236 = sext i16 %231 to i32
  %237 = add nsw i32 %236, %235
  %238 = sitofp i32 %237 to float
  %239 = fmul float %238, 5.000000e-01
  call void @ui_draw_anti_tria(float noundef %228, float noundef %230, float noundef %228, float noundef %232, float noundef %234, float noundef %239) #13
  br label %240

240:                                              ; preds = %226, %212, %198, %184, %181
  call void @glDisable(i32 noundef 3042) #13
  br label %447

241:                                              ; preds = %153
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #13
  call void @glEnable(i32 noundef 3042) #13
  call void @UI_GetThemeColor3fv(i32 noundef 10, ptr noundef nonnull %4) #13
  %242 = load float, ptr %4, align 4, !tbaa !86
  %243 = load float, ptr %70, align 4, !tbaa !86
  %244 = load float, ptr %71, align 4, !tbaa !86
  call void @glColor4f(float noundef %242, float noundef %243, float noundef %244, float noundef 5.000000e-01) #13
  %245 = getelementptr inbounds %struct.AZone, ptr %73, i64 0, i32 4
  %246 = load i32, ptr %245, align 4, !tbaa !85
  switch i32 %246, label %319 [
    i32 2, label %247
    i32 3, label %266
    i32 1, label %285
    i32 0, label %302
  ]

247:                                              ; preds = %241
  call void @uiSetRoundBox(i32 noundef 19) #13
  %248 = load i16, ptr %74, align 8, !tbaa !75
  %249 = sitofp i16 %248 to float
  %250 = load i16, ptr %80, align 2, !tbaa !78
  %251 = sitofp i16 %250 to float
  %252 = load i16, ptr %77, align 4, !tbaa !77
  %253 = sitofp i16 %252 to float
  %254 = load i16, ptr %83, align 2, !tbaa !79
  %255 = sitofp i16 %254 to float
  call void @uiDrawBoxShade(i32 noundef 9, float noundef %249, float noundef %251, float noundef %253, float noundef %255, float noundef 4.000000e+00, float noundef 0xBFD3333340000000, float noundef 0x3FA99999A0000000) #13
  call void @glColor4ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) #13
  %256 = load i16, ptr %74, align 8, !tbaa !75
  %257 = sitofp i16 %256 to float
  %258 = load i16, ptr %80, align 2, !tbaa !78
  %259 = sitofp i16 %258 to float
  %260 = fadd float %259, 0x3FD3333340000000
  %261 = load i16, ptr %77, align 4, !tbaa !77
  %262 = sitofp i16 %261 to float
  %263 = load i16, ptr %83, align 2, !tbaa !79
  %264 = sitofp i16 %263 to float
  %265 = fadd float %264, 0x3FD3333340000000
  call void @uiRoundRect(float noundef %257, float noundef %260, float noundef %262, float noundef %265, float noundef 4.000000e+00) #13
  br label %319

266:                                              ; preds = %241
  call void @uiSetRoundBox(i32 noundef 28) #13
  %267 = load i16, ptr %74, align 8, !tbaa !75
  %268 = sitofp i16 %267 to float
  %269 = load i16, ptr %80, align 2, !tbaa !78
  %270 = sitofp i16 %269 to float
  %271 = load i16, ptr %77, align 4, !tbaa !77
  %272 = sitofp i16 %271 to float
  %273 = load i16, ptr %83, align 2, !tbaa !79
  %274 = sitofp i16 %273 to float
  call void @uiDrawBoxShade(i32 noundef 9, float noundef %268, float noundef %270, float noundef %272, float noundef %274, float noundef 4.000000e+00, float noundef 0xBFD3333340000000, float noundef 0x3FA99999A0000000) #13
  call void @glColor4ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) #13
  %275 = load i16, ptr %74, align 8, !tbaa !75
  %276 = sitofp i16 %275 to float
  %277 = load i16, ptr %80, align 2, !tbaa !78
  %278 = sitofp i16 %277 to float
  %279 = fadd float %278, 0x3FD3333340000000
  %280 = load i16, ptr %77, align 4, !tbaa !77
  %281 = sitofp i16 %280 to float
  %282 = load i16, ptr %83, align 2, !tbaa !79
  %283 = sitofp i16 %282 to float
  %284 = fadd float %283, 0x3FD3333340000000
  call void @uiRoundRect(float noundef %276, float noundef %279, float noundef %281, float noundef %284, float noundef 4.000000e+00) #13
  br label %319

285:                                              ; preds = %241
  call void @uiSetRoundBox(i32 noundef 25) #13
  %286 = load i16, ptr %74, align 8, !tbaa !75
  %287 = sitofp i16 %286 to float
  %288 = load i16, ptr %80, align 2, !tbaa !78
  %289 = sitofp i16 %288 to float
  %290 = load i16, ptr %77, align 4, !tbaa !77
  %291 = sitofp i16 %290 to float
  %292 = load i16, ptr %83, align 2, !tbaa !79
  %293 = sitofp i16 %292 to float
  call void @uiDrawBoxShade(i32 noundef 9, float noundef %287, float noundef %289, float noundef %291, float noundef %293, float noundef 4.000000e+00, float noundef 0xBFD3333340000000, float noundef 0x3FA99999A0000000) #13
  call void @glColor4ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) #13
  %294 = load i16, ptr %74, align 8, !tbaa !75
  %295 = sitofp i16 %294 to float
  %296 = load i16, ptr %80, align 2, !tbaa !78
  %297 = sitofp i16 %296 to float
  %298 = load i16, ptr %77, align 4, !tbaa !77
  %299 = sitofp i16 %298 to float
  %300 = load i16, ptr %83, align 2, !tbaa !79
  %301 = sitofp i16 %300 to float
  call void @uiRoundRect(float noundef %295, float noundef %297, float noundef %299, float noundef %301, float noundef 4.000000e+00) #13
  br label %319

302:                                              ; preds = %241
  call void @uiSetRoundBox(i32 noundef 22) #13
  %303 = load i16, ptr %74, align 8, !tbaa !75
  %304 = sitofp i16 %303 to float
  %305 = load i16, ptr %80, align 2, !tbaa !78
  %306 = sitofp i16 %305 to float
  %307 = load i16, ptr %77, align 4, !tbaa !77
  %308 = sitofp i16 %307 to float
  %309 = load i16, ptr %83, align 2, !tbaa !79
  %310 = sitofp i16 %309 to float
  call void @uiDrawBoxShade(i32 noundef 9, float noundef %304, float noundef %306, float noundef %308, float noundef %310, float noundef 4.000000e+00, float noundef 0xBFD3333340000000, float noundef 0x3FA99999A0000000) #13
  call void @glColor4ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) #13
  %311 = load i16, ptr %74, align 8, !tbaa !75
  %312 = sitofp i16 %311 to float
  %313 = load i16, ptr %80, align 2, !tbaa !78
  %314 = sitofp i16 %313 to float
  %315 = load i16, ptr %77, align 4, !tbaa !77
  %316 = sitofp i16 %315 to float
  %317 = load i16, ptr %83, align 2, !tbaa !79
  %318 = sitofp i16 %317 to float
  call void @uiRoundRect(float noundef %312, float noundef %314, float noundef %316, float noundef %318, float noundef 4.000000e+00) #13
  br label %319

319:                                              ; preds = %302, %285, %266, %247, %241
  call void @glDisable(i32 noundef 3042) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #13
  br label %447

320:                                              ; preds = %153
  call void @glEnable(i32 noundef 3042) #13
  %321 = getelementptr inbounds %struct.AZone, ptr %73, i64 0, i32 4
  %322 = load i32, ptr %321, align 4, !tbaa !85
  %323 = icmp ult i32 %322, 4
  br i1 %323, label %324, label %328

324:                                              ; preds = %320
  %325 = zext nneg i32 %322 to i64
  %326 = getelementptr inbounds [4 x i32], ptr @switch.table.ED_region_do_draw, i64 0, i64 %325
  %327 = load i32, ptr %326, align 4
  call void @uiSetRoundBox(i32 noundef %327) #13
  br label %328

328:                                              ; preds = %320, %324
  call void @glColor4f(float noundef 0x3FA99999A0000000, float noundef 0x3FA99999A0000000, float noundef 0x3FA99999A0000000, float noundef 0x3FD99999A0000000) #13
  %329 = load i16, ptr %74, align 8, !tbaa !75
  %330 = sitofp i16 %329 to float
  %331 = load i16, ptr %80, align 2, !tbaa !78
  %332 = sitofp i16 %331 to float
  %333 = load i16, ptr %77, align 4, !tbaa !77
  %334 = sitofp i16 %333 to float
  %335 = load i16, ptr %83, align 2, !tbaa !79
  %336 = sitofp i16 %335 to float
  call void @uiRoundBox(float noundef %330, float noundef %332, float noundef %334, float noundef %336, float noundef 4.000000e+00) #13
  call void @glEnable(i32 noundef 3042) #13
  call void @glColor4f(float noundef 0x3FE99999A0000000, float noundef 0x3FE99999A0000000, float noundef 0x3FE99999A0000000, float noundef 0x3FD99999A0000000) #13
  %337 = load i16, ptr %74, align 8, !tbaa !75
  %338 = sitofp i16 %337 to float
  %339 = load i16, ptr %80, align 2, !tbaa !78
  %340 = sitofp i16 %339 to float
  %341 = load i16, ptr %77, align 4, !tbaa !77
  %342 = sitofp i16 %341 to float
  %343 = load i16, ptr %83, align 2, !tbaa !79
  %344 = sitofp i16 %343 to float
  %345 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !67
  %346 = sitofp i16 %345 to float
  %347 = fmul float %346, 0x3FB99999A0000000
  %348 = fmul float %346, 0x3FC99999A0000000
  %349 = fadd float %338, %342
  %350 = fsub float %349, %347
  %351 = fmul float %350, 5.000000e-01
  %352 = fadd float %348, %340
  %353 = fadd float %349, %347
  %354 = fmul float %353, 5.000000e-01
  %355 = fsub float %344, %348
  call void @glRectf(float noundef %351, float noundef %352, float noundef %354, float noundef %355) #13
  %356 = fadd float %348, %338
  %357 = fadd float %340, %344
  %358 = fsub float %357, %347
  %359 = fmul float %358, 5.000000e-01
  %360 = fadd float %357, %347
  %361 = fmul float %360, 5.000000e-01
  call void @glRectf(float noundef %356, float noundef %359, float noundef %351, float noundef %361) #13
  %362 = fsub float %342, %348
  call void @glRectf(float noundef %354, float noundef %359, float noundef %362, float noundef %361) #13
  call void @glDisable(i32 noundef 3042) #13
  br label %447

363:                                              ; preds = %88
  %364 = load i16, ptr %74, align 8, !tbaa !75
  %365 = load i16, ptr %80, align 2, !tbaa !78
  %366 = load i16, ptr %77, align 4, !tbaa !77
  %367 = load i16, ptr %83, align 2, !tbaa !79
  %368 = getelementptr inbounds %struct.AZone, ptr %73, i64 0, i32 10
  %369 = load float, ptr %368, align 8, !tbaa !87
  %370 = sitofp i16 %366 to float
  %371 = sitofp i16 %364 to float
  %372 = fsub float %370, %371
  %373 = fmul float %372, 5.000000e-01
  %374 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !88
  %375 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !89
  %376 = sitofp i32 %375 to float
  %377 = fmul float %374, %376
  %378 = fdiv float %377, 7.200000e+01
  %379 = fdiv float %373, %378
  %380 = fsub float %370, %379
  %381 = fptosi float %380 to i32
  %382 = sitofp i16 %367 to float
  %383 = sitofp i16 %365 to float
  %384 = fsub float %382, %383
  %385 = fmul float %384, 5.000000e-01
  %386 = fdiv float %385, %378
  %387 = fsub float %382, %386
  %388 = fptosi float %387 to i32
  %389 = fdiv float 3.600000e+01, %378
  %390 = sitofp i32 %381 to float
  %391 = fadd float %389, %390
  %392 = fptosi float %391 to i32
  %393 = sitofp i32 %388 to float
  %394 = fadd float %389, %393
  %395 = fptosi float %394 to i32
  %396 = sitofp i32 %392 to float
  %397 = call float @llvm.fmuladd.f32(float %378, float -1.600000e+01, float %396)
  %398 = fptosi float %397 to i32
  %399 = sitofp i32 %395 to float
  %400 = call float @llvm.fmuladd.f32(float %378, float -1.600000e+01, float %399)
  %401 = fptosi float %400 to i32
  %402 = fcmp olt float %369, 7.500000e-01
  %403 = select i1 %402, float %369, float 7.500000e-01
  %404 = sitofp i32 %398 to float
  %405 = sitofp i32 %401 to float
  %406 = fdiv float 0x3FE6666660000000, %378
  call void @UI_icon_draw_aspect(float noundef %404, float noundef %405, i32 noundef 76, float noundef %406, float noundef %403) #13
  %407 = load i16, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 14), align 4, !tbaa !83
  %408 = icmp eq i16 %407, 1
  br i1 %408, label %409, label %447

409:                                              ; preds = %363
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  %410 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !88
  %411 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !89
  %412 = sitofp i32 %411 to float
  %413 = fmul float %410, %412
  %414 = fdiv float %413, 7.200000e+01
  %415 = fmul float %414, 7.000000e+00
  %416 = call float @llvm.fmuladd.f32(float %414, float 1.600000e+01, float %415)
  %417 = fmul float %403, 2.550000e+02
  %418 = fptoui float %417 to i8
  %419 = fadd float %416, %404
  %420 = fptosi float %419 to i32
  %421 = fadd float %416, %405
  %422 = fptosi float %421 to i32
  call void @BLI_rcti_init(ptr noundef nonnull %3, i32 noundef %398, i32 noundef %420, i32 noundef %401, i32 noundef %422) #13
  call void @glColor4ub(i8 noundef zeroext -1, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext %418) #13
  %423 = load i32, ptr %3, align 4, !tbaa !90
  %424 = sitofp i32 %423 to float
  %425 = load i32, ptr %67, align 4, !tbaa !91
  %426 = sitofp i32 %425 to float
  %427 = load i32, ptr %68, align 4, !tbaa !92
  %428 = sitofp i32 %427 to float
  %429 = load i32, ptr %69, align 4, !tbaa !93
  %430 = sitofp i32 %429 to float
  call void @fdrawbox(float noundef %424, float noundef %426, float noundef %428, float noundef %430) #13
  call void @glColor4ub(i8 noundef zeroext 0, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext %418) #13
  %431 = load i32, ptr %3, align 4, !tbaa !90
  %432 = sitofp i32 %431 to float
  %433 = load i32, ptr %67, align 4, !tbaa !91
  %434 = sitofp i32 %433 to float
  %435 = load i32, ptr %68, align 4, !tbaa !92
  %436 = sitofp i32 %435 to float
  %437 = load i32, ptr %69, align 4, !tbaa !93
  %438 = sitofp i32 %437 to float
  call void @fdrawline(float noundef %432, float noundef %434, float noundef %436, float noundef %438) #13
  %439 = load i32, ptr %3, align 4, !tbaa !90
  %440 = sitofp i32 %439 to float
  %441 = load i32, ptr %69, align 4, !tbaa !93
  %442 = sitofp i32 %441 to float
  %443 = load i32, ptr %68, align 4, !tbaa !92
  %444 = sitofp i32 %443 to float
  %445 = load i32, ptr %67, align 4, !tbaa !91
  %446 = sitofp i32 %445 to float
  call void @fdrawline(float noundef %440, float noundef %442, float noundef %444, float noundef %446) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  br label %447

447:                                              ; preds = %409, %363, %328, %319, %240, %155, %148, %144, %91, %88, %72
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  %448 = load ptr, ptr %73, align 8, !tbaa !74
  %449 = icmp eq ptr %448, null
  br i1 %449, label %450, label %72, !llvm.loop !94

450:                                              ; preds = %447, %54
  call void @glPopMatrix() #13
  call void @glDisable(i32 noundef 3042) #13
  store i16 0, ptr %25, align 4, !tbaa !41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  %451 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 21
  call void @uiFreeInactiveBlocks(ptr noundef %0, ptr noundef nonnull %451) #13
  %452 = getelementptr inbounds %struct.wmWindow, ptr %6, i64 0, i32 3
  %453 = load ptr, ptr %452, align 8, !tbaa !97
  %454 = getelementptr inbounds %struct.bScreen, ptr %453, i64 0, i32 9
  %455 = load i16, ptr %454, align 8, !tbaa !99
  %456 = icmp eq i16 %455, 2
  br i1 %456, label %468, label %457

457:                                              ; preds = %450
  %458 = load i32, ptr %55, align 4, !tbaa !90
  %459 = load i32, ptr %59, align 4, !tbaa !91
  %460 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 1
  %461 = load i32, ptr %460, align 4, !tbaa !92
  %462 = sub nsw i32 %461, %458
  %463 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 3
  %464 = load i32, ptr %463, align 4, !tbaa !93
  %465 = sub nsw i32 %464, %459
  call void @glEnable(i32 noundef 3042) #13
  call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #13
  call void @glColor4ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 30) #13
  call void @sdrawline(i32 noundef %462, i32 noundef 0, i32 noundef %462, i32 noundef %465) #13
  call void @glColor4ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 30) #13
  call void @sdrawline(i32 noundef 0, i32 noundef 0, i32 noundef %462, i32 noundef 0) #13
  call void @glColor4ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext 30) #13
  call void @sdrawline(i32 noundef 0, i32 noundef %465, i32 noundef %462, i32 noundef %465) #13
  call void @glColor4ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext 30) #13
  call void @sdrawline(i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %465) #13
  call void @glDisable(i32 noundef 3042) #13
  br label %468

466:                                              ; preds = %53
  store i16 0, ptr %25, align 4, !tbaa !41
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  %467 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 21
  tail call void @uiFreeInactiveBlocks(ptr noundef %0, ptr noundef nonnull %467) #13
  br label %468

468:                                              ; preds = %466, %450, %457, %2
  ret void
}

declare zeroext i8 @BLI_rcti_isect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @wmOrtho2_region_ui(ptr noundef) local_unnamed_addr #1

declare void @UI_ThemeClearColor(i32 noundef) local_unnamed_addr #1

declare void @glClear(i32 noundef) local_unnamed_addr #1

declare void @UI_ThemeColor(i32 noundef) local_unnamed_addr #1

declare void @BLF_draw_default(float noundef, float noundef, float noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @ED_region_draw_cb_draw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare void @uiFreeInactiveBlocks(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ED_region_tag_redraw_overlay(ptr noundef writeonly %0) local_unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 15
  store i16 1, ptr %4, align 2, !tbaa !102
  br label %5

5:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ED_region_tag_refresh_ui(ptr noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 14
  %5 = load i16, ptr %4, align 4, !tbaa !41
  %6 = or i16 %5, 8
  store i16 %6, ptr %4, align 4, !tbaa !41
  br label %7

7:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_region_tag_redraw_partial(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %23, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 14
  %6 = load i16, ptr %5, align 4, !tbaa !41
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
  store i16 %14, ptr %5, align 4, !tbaa !41
  %15 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !58
  br label %23

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 4
  %18 = load i32, ptr %17, align 8, !tbaa !64
  %19 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 4, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !65
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  tail call void @BLI_rcti_union(ptr noundef nonnull %17, ptr noundef %1) #13
  br label %23

23:                                               ; preds = %13, %22, %16, %4, %2
  ret void
}

declare void @BLI_rcti_union(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ED_area_tag_redraw(ptr noundef readonly %0) local_unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %20, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !74
  %6 = icmp eq ptr %5, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %3, %17
  %8 = phi ptr [ %18, %17 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 14
  %10 = load i16, ptr %9, align 4, !tbaa !41
  %11 = and i16 %10, 4
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %7
  %14 = and i16 %10, -8
  %15 = or disjoint i16 %14, 1
  store i16 %15, ptr %9, align 4, !tbaa !41
  %16 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, i8 0, i64 16, i1 false)
  br label %17

17:                                               ; preds = %7, %13
  %18 = load ptr, ptr %8, align 8, !tbaa !74
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %7, !llvm.loop !103

20:                                               ; preds = %17, %3, %1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ED_area_tag_redraw_regiontype(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #7 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %26, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 20
  %6 = load ptr, ptr %5, align 8, !tbaa !74
  %7 = icmp eq ptr %6, null
  br i1 %7, label %26, label %8

8:                                                ; preds = %4, %23
  %9 = phi ptr [ %24, %23 ], [ %6, %4 ]
  %10 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 8
  %11 = load i16, ptr %10, align 2, !tbaa !104
  %12 = sext i16 %11 to i32
  %13 = icmp eq i32 %12, %1
  br i1 %13, label %14, label %23

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 14
  %16 = load i16, ptr %15, align 4, !tbaa !41
  %17 = and i16 %16, 4
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = and i16 %16, -8
  %21 = or disjoint i16 %20, 1
  store i16 %21, ptr %15, align 4, !tbaa !41
  %22 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %22, i8 0, i64 16, i1 false)
  br label %23

23:                                               ; preds = %19, %14, %8
  %24 = load ptr, ptr %9, align 8, !tbaa !74
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %8, !llvm.loop !105

26:                                               ; preds = %23, %4, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ED_area_tag_refresh(ptr noundef writeonly %0) local_unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 13
  store i16 1, ptr %4, align 8, !tbaa !57
  br label %5

5:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_area_headerprint(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %41, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 20
  %6 = load ptr, ptr %5, align 8, !tbaa !74
  %7 = icmp eq ptr %6, null
  br i1 %7, label %41, label %8

8:                                                ; preds = %4
  %9 = icmp eq ptr %1, null
  br label %10

10:                                               ; preds = %8, %38
  %11 = phi ptr [ %6, %8 ], [ %39, %38 ]
  %12 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 8
  %13 = load i16, ptr %12, align 2, !tbaa !104
  %14 = icmp eq i16 %13, 1
  br i1 %14, label %15, label %38

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 29
  %17 = load ptr, ptr %16, align 8, !tbaa !66
  %18 = icmp eq ptr %17, null
  br i1 %9, label %26, label %19

19:                                               ; preds = %15
  br i1 %18, label %20, label %23

20:                                               ; preds = %19
  %21 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !74
  %22 = tail call ptr %21(i64 noundef 256, ptr noundef nonnull @.str) #13
  store ptr %22, ptr %16, align 8, !tbaa !66
  br label %23

23:                                               ; preds = %20, %19
  %24 = load ptr, ptr %16, align 8, !tbaa !66
  %25 = tail call ptr @BLI_strncpy(ptr noundef %24, ptr noundef nonnull %1, i64 noundef 256) #13
  br label %29

26:                                               ; preds = %15
  br i1 %18, label %29, label %27

27:                                               ; preds = %26
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !74
  tail call void %28(ptr noundef nonnull %17) #13
  store ptr null, ptr %16, align 8, !tbaa !66
  br label %29

29:                                               ; preds = %23, %27, %26
  %30 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 14
  %31 = load i16, ptr %30, align 4, !tbaa !41
  %32 = and i16 %31, 4
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = and i16 %31, -8
  %36 = or disjoint i16 %35, 1
  store i16 %36, ptr %30, align 4, !tbaa !41
  %37 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %37, i8 0, i64 16, i1 false)
  br label %38

38:                                               ; preds = %34, %29, %10
  %39 = load ptr, ptr %11, align 8, !tbaa !74
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %10, !llvm.loop !106

41:                                               ; preds = %38, %4, %2
  ret void
}

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ED_area_initialize(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.rcti, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #13
  %5 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 8
  %6 = load i8, ptr %5, align 8, !tbaa !61
  %7 = zext i8 %6 to i32
  %8 = tail call ptr @BKE_spacetype_from_id(i32 noundef %7) #13
  %9 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 18
  store ptr %8, ptr %9, align 8, !tbaa !52
  %10 = icmp eq ptr %8, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  store i8 1, ptr %5, align 8, !tbaa !61
  %12 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 9
  store i8 1, ptr %12, align 1, !tbaa !107
  %13 = tail call ptr @BKE_spacetype_from_id(i32 noundef 1) #13
  store ptr %13, ptr %9, align 8, !tbaa !52
  br label %14

14:                                               ; preds = %11, %3
  %15 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 20
  %16 = load ptr, ptr %15, align 8, !tbaa !74
  %17 = icmp eq ptr %16, null
  br i1 %17, label %28, label %18

18:                                               ; preds = %14, %18
  %19 = phi ptr [ %26, %18 ], [ %16, %14 ]
  %20 = load ptr, ptr %9, align 8, !tbaa !52
  %21 = getelementptr inbounds %struct.ARegion, ptr %19, i64 0, i32 8
  %22 = load i16, ptr %21, align 2, !tbaa !104
  %23 = sext i16 %22 to i32
  %24 = tail call ptr @BKE_regiontype_from_id(ptr noundef %20, i32 noundef %23) #13
  %25 = getelementptr inbounds %struct.ARegion, ptr %19, i64 0, i32 20
  store ptr %24, ptr %25, align 8, !tbaa !49
  %26 = load ptr, ptr %19, align 8, !tbaa !74
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %18, !llvm.loop !108

28:                                               ; preds = %18, %14
  %29 = tail call i32 @WM_window_pixels_x(ptr noundef %1) #13
  %30 = tail call i32 @WM_window_pixels_y(ptr noundef %1) #13
  %31 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !88
  %32 = fptosi float %31 to i16
  %33 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !109
  %35 = getelementptr inbounds %struct.ScrVert, ptr %34, i64 0, i32 3
  %36 = load i16, ptr %35, align 8, !tbaa !110
  %37 = sext i16 %36 to i32
  %38 = icmp sgt i16 %36, 0
  %39 = select i1 %38, i16 %32, i16 0
  %40 = sext i16 %39 to i32
  %41 = add nsw i32 %37, %40
  %42 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 7
  store i32 %41, ptr %42, align 8, !tbaa !113
  %43 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 5
  %44 = load ptr, ptr %43, align 8, !tbaa !114
  %45 = getelementptr inbounds %struct.ScrVert, ptr %44, i64 0, i32 3
  %46 = load i16, ptr %45, align 8, !tbaa !110
  %47 = sext i16 %46 to i32
  %48 = add nsw i32 %29, -1
  %49 = icmp sgt i32 %48, %47
  %50 = sext i16 %32 to i32
  %51 = select i1 %49, i32 %50, i32 0
  %52 = sub nsw i32 %47, %51
  %53 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 7, i32 1
  store i32 %52, ptr %53, align 4, !tbaa !115
  %54 = getelementptr inbounds %struct.ScrVert, ptr %34, i64 0, i32 3, i32 1
  %55 = load i16, ptr %54, align 2, !tbaa !116
  %56 = sext i16 %55 to i32
  %57 = icmp sgt i16 %55, 0
  %58 = select i1 %57, i16 %32, i16 0
  %59 = sext i16 %58 to i32
  %60 = add nsw i32 %56, %59
  %61 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 7, i32 2
  store i32 %60, ptr %61, align 8, !tbaa !117
  %62 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !118
  %64 = getelementptr inbounds %struct.ScrVert, ptr %63, i64 0, i32 3, i32 1
  %65 = load i16, ptr %64, align 2, !tbaa !116
  %66 = sext i16 %65 to i32
  %67 = add nsw i32 %30, -1
  %68 = icmp sgt i32 %67, %66
  %69 = sext i16 %32 to i32
  %70 = select i1 %68, i32 %69, i32 0
  %71 = sub nsw i32 %66, %70
  %72 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 7, i32 3
  store i32 %71, ptr %72, align 4, !tbaa !119
  %73 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 7
  %74 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 7, i32 1
  %75 = load i32, ptr %74, align 4, !tbaa !92
  %76 = load i32, ptr %73, align 4, !tbaa !90
  %77 = sub nsw i32 %75, %76
  %78 = trunc i32 %77 to i16
  %79 = add i16 %78, 1
  %80 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 10
  store i16 %79, ptr %80, align 2, !tbaa !120
  %81 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 7, i32 3
  %82 = load i32, ptr %81, align 4, !tbaa !93
  %83 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 7, i32 2
  %84 = load i32, ptr %83, align 4, !tbaa !91
  %85 = sub nsw i32 %82, %84
  %86 = trunc i32 %85 to i16
  %87 = add i16 %86, 1
  %88 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 11
  store i16 %87, ptr %88, align 4, !tbaa !121
  %89 = getelementptr inbounds %struct.wmWindow, ptr %1, i64 0, i32 3
  %90 = load ptr, ptr %89, align 8, !tbaa !97
  %91 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 22
  tail call void @BLI_freelistN(ptr noundef nonnull %91) #13
  %92 = getelementptr inbounds %struct.bScreen, ptr %90, i64 0, i32 9
  %93 = load i16, ptr %92, align 8, !tbaa !99
  %94 = icmp eq i16 %93, 0
  br i1 %94, label %95, label %150

95:                                               ; preds = %28
  %96 = load ptr, ptr @MEM_callocN, align 8, !tbaa !74
  %97 = tail call ptr %96(i64 noundef 64, ptr noundef nonnull @.str.6) #13
  tail call void @BLI_addtail(ptr noundef nonnull %91, ptr noundef %97) #13
  %98 = getelementptr inbounds %struct.AZone, ptr %97, i64 0, i32 3
  store i32 1, ptr %98, align 8, !tbaa !80
  %99 = load i32, ptr %73, align 8, !tbaa !113
  %100 = trunc i32 %99 to i16
  %101 = getelementptr inbounds %struct.AZone, ptr %97, i64 0, i32 5
  store i16 %100, ptr %101, align 8, !tbaa !75
  %102 = load i32, ptr %83, align 8, !tbaa !117
  %103 = trunc i32 %102 to i16
  %104 = getelementptr inbounds %struct.AZone, ptr %97, i64 0, i32 6
  store i16 %103, ptr %104, align 2, !tbaa !78
  %105 = sitofp i32 %99 to float
  %106 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !67
  %107 = sitofp i16 %106 to float
  %108 = tail call float @llvm.fmuladd.f32(float %107, float 0x3FE3333340000000, float -1.000000e+00)
  %109 = fadd float %108, %105
  %110 = fptosi float %109 to i16
  %111 = getelementptr inbounds %struct.AZone, ptr %97, i64 0, i32 7
  store i16 %110, ptr %111, align 4, !tbaa !77
  %112 = sitofp i32 %102 to float
  %113 = fadd float %108, %112
  %114 = fptosi float %113 to i16
  %115 = getelementptr inbounds %struct.AZone, ptr %97, i64 0, i32 8
  store i16 %114, ptr %115, align 2, !tbaa !79
  %116 = getelementptr inbounds %struct.AZone, ptr %97, i64 0, i32 9
  %117 = shl i32 %99, 16
  %118 = ashr exact i32 %117, 16
  %119 = sext i16 %110 to i32
  %120 = shl i32 %102, 16
  %121 = ashr exact i32 %120, 16
  %122 = sext i16 %114 to i32
  tail call void @BLI_rcti_init(ptr noundef nonnull %116, i32 noundef %118, i32 noundef %119, i32 noundef %121, i32 noundef %122) #13
  %123 = load ptr, ptr @MEM_callocN, align 8, !tbaa !74
  %124 = tail call ptr %123(i64 noundef 64, ptr noundef nonnull @.str.6) #13
  tail call void @BLI_addtail(ptr noundef nonnull %91, ptr noundef %124) #13
  %125 = getelementptr inbounds %struct.AZone, ptr %124, i64 0, i32 3
  store i32 1, ptr %125, align 8, !tbaa !80
  %126 = load i32, ptr %74, align 4, !tbaa !115
  %127 = trunc i32 %126 to i16
  %128 = getelementptr inbounds %struct.AZone, ptr %124, i64 0, i32 5
  store i16 %127, ptr %128, align 8, !tbaa !75
  %129 = load i32, ptr %81, align 4, !tbaa !119
  %130 = trunc i32 %129 to i16
  %131 = getelementptr inbounds %struct.AZone, ptr %124, i64 0, i32 6
  store i16 %130, ptr %131, align 2, !tbaa !78
  %132 = sitofp i32 %126 to float
  %133 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !67
  %134 = sitofp i16 %133 to float
  %135 = tail call float @llvm.fmuladd.f32(float %134, float 0x3FE3333340000000, float -1.000000e+00)
  %136 = fsub float %132, %135
  %137 = fptosi float %136 to i16
  %138 = getelementptr inbounds %struct.AZone, ptr %124, i64 0, i32 7
  store i16 %137, ptr %138, align 4, !tbaa !77
  %139 = sitofp i32 %129 to float
  %140 = fsub float %139, %135
  %141 = fptosi float %140 to i16
  %142 = getelementptr inbounds %struct.AZone, ptr %124, i64 0, i32 8
  store i16 %141, ptr %142, align 2, !tbaa !79
  %143 = getelementptr inbounds %struct.AZone, ptr %124, i64 0, i32 9
  %144 = shl i32 %126, 16
  %145 = ashr exact i32 %144, 16
  %146 = sext i16 %137 to i32
  %147 = shl i32 %129, 16
  %148 = ashr exact i32 %147, 16
  %149 = sext i16 %141 to i32
  tail call void @BLI_rcti_init(ptr noundef nonnull %143, i32 noundef %145, i32 noundef %146, i32 noundef %148, i32 noundef %149) #13
  br label %150

150:                                              ; preds = %28, %95
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %73, i64 16, i1 false), !tbaa.struct !58
  %151 = load ptr, ptr %15, align 8, !tbaa !122
  call fastcc void @region_rect_recursive(ptr noundef %1, ptr noundef %2, ptr noundef %151, ptr noundef nonnull %4, i32 noundef 0)
  %152 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 21
  %153 = load ptr, ptr %9, align 8, !tbaa !52
  %154 = getelementptr inbounds %struct.SpaceType, ptr %153, i64 0, i32 18
  %155 = load i32, ptr %154, align 8, !tbaa !123
  call fastcc void @ed_default_handlers(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %152, i32 noundef %155)
  %156 = load ptr, ptr %9, align 8, !tbaa !52
  %157 = getelementptr inbounds %struct.SpaceType, ptr %156, i64 0, i32 7
  %158 = load ptr, ptr %157, align 8, !tbaa !124
  %159 = icmp eq ptr %158, null
  br i1 %159, label %161, label %160

160:                                              ; preds = %150
  call void %158(ptr noundef %0, ptr noundef %2) #13
  br label %161

161:                                              ; preds = %160, %150
  %162 = load ptr, ptr %15, align 8, !tbaa !74
  %163 = icmp eq ptr %162, null
  br i1 %163, label %225, label %164

164:                                              ; preds = %161, %222
  %165 = phi ptr [ %223, %222 ], [ %162, %161 ]
  %166 = getelementptr inbounds %struct.ARegion, ptr %165, i64 0, i32 10
  %167 = load i16, ptr %166, align 2, !tbaa !82
  %168 = and i16 %167, 3
  %169 = icmp ne i16 %168, 0
  %170 = zext i1 %169 to i8
  %171 = getelementptr inbounds %struct.ARegion, ptr %165, i64 0, i32 9
  %172 = load i16, ptr %171, align 8, !tbaa !125
  %173 = and i16 %172, 32
  %174 = icmp eq i16 %173, 0
  br i1 %174, label %187, label %175

175:                                              ; preds = %164
  %176 = getelementptr inbounds %struct.ARegion, ptr %165, i64 0, i32 1
  %177 = load ptr, ptr %176, align 8, !tbaa !126
  %178 = icmp eq ptr %177, null
  %179 = select i1 %178, i1 true, i1 %169
  %180 = select i1 %178, i8 %170, i8 1
  br i1 %179, label %187, label %181

181:                                              ; preds = %175
  %182 = getelementptr inbounds %struct.ARegion, ptr %177, i64 0, i32 10
  %183 = load i16, ptr %182, align 2, !tbaa !82
  %184 = and i16 %183, 3
  %185 = icmp ne i16 %184, 0
  %186 = zext i1 %185 to i8
  br label %187

187:                                              ; preds = %181, %175, %164
  %188 = phi i8 [ %180, %175 ], [ %170, %164 ], [ %186, %181 ]
  %189 = icmp eq i8 %188, 0
  %190 = getelementptr inbounds %struct.ARegion, ptr %165, i64 0, i32 7
  %191 = load i16, ptr %190, align 4, !tbaa !60
  %192 = icmp eq i16 %191, 0
  br i1 %189, label %197, label %193

193:                                              ; preds = %187
  br i1 %192, label %196, label %194

194:                                              ; preds = %193
  %195 = sext i16 %191 to i32
  call void @wm_subwindow_close(ptr noundef %1, i32 noundef %195) #13
  br label %196

196:                                              ; preds = %194, %193
  store i16 0, ptr %190, align 4, !tbaa !60
  br label %205

197:                                              ; preds = %187
  br i1 %192, label %198, label %202

198:                                              ; preds = %197
  %199 = getelementptr inbounds %struct.ARegion, ptr %165, i64 0, i32 3
  %200 = call i32 @wm_subwindow_open(ptr noundef %1, ptr noundef nonnull %199) #13
  %201 = trunc i32 %200 to i16
  store i16 %201, ptr %190, align 4, !tbaa !60
  br label %205

202:                                              ; preds = %197
  %203 = sext i16 %191 to i32
  %204 = getelementptr inbounds %struct.ARegion, ptr %165, i64 0, i32 3
  call void @wm_subwindow_position(ptr noundef %1, i32 noundef %203, ptr noundef nonnull %204) #13
  br label %205

205:                                              ; preds = %196, %198, %202
  %206 = getelementptr inbounds %struct.ARegion, ptr %165, i64 0, i32 7
  %207 = load i16, ptr %206, align 4, !tbaa !60
  %208 = icmp eq i16 %207, 0
  br i1 %208, label %220, label %209

209:                                              ; preds = %205
  %210 = getelementptr inbounds %struct.ARegion, ptr %165, i64 0, i32 26
  %211 = getelementptr inbounds %struct.ARegion, ptr %165, i64 0, i32 20
  %212 = load ptr, ptr %211, align 8, !tbaa !49
  %213 = getelementptr inbounds %struct.ARegionType, ptr %212, i64 0, i32 20
  %214 = load i32, ptr %213, align 8, !tbaa !127
  call fastcc void @ed_default_handlers(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %210, i32 noundef %214)
  %215 = load ptr, ptr %211, align 8, !tbaa !49
  %216 = getelementptr inbounds %struct.ARegionType, ptr %215, i64 0, i32 3
  %217 = load ptr, ptr %216, align 8, !tbaa !128
  %218 = icmp eq ptr %217, null
  br i1 %218, label %222, label %219

219:                                              ; preds = %209
  call void %217(ptr noundef %0, ptr noundef nonnull %165) #13
  br label %222

220:                                              ; preds = %205
  %221 = getelementptr inbounds %struct.ARegion, ptr %165, i64 0, i32 21
  call void @uiFreeBlocks(ptr noundef null, ptr noundef nonnull %221) #13
  br label %222

222:                                              ; preds = %220, %219, %209
  %223 = load ptr, ptr %165, align 8, !tbaa !74
  %224 = icmp eq ptr %223, null
  br i1 %224, label %225, label %164, !llvm.loop !129

225:                                              ; preds = %222, %161
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #13
  ret void
}

declare ptr @BKE_spacetype_from_id(i32 noundef) local_unnamed_addr #1

declare ptr @BKE_regiontype_from_id(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @WM_window_pixels_x(ptr noundef) local_unnamed_addr #1

declare i32 @WM_window_pixels_y(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @region_rect_recursive(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  br label %6

6:                                                ; preds = %518, %5
  %7 = phi ptr [ %2, %5 ], [ %519, %518 ]
  %8 = phi ptr [ %3, %5 ], [ %455, %518 ]
  %9 = phi i32 [ %4, %5 ], [ %284, %518 ]
  %10 = icmp eq ptr %7, null
  br i1 %10, label %520, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 3
  tail call void @BLI_rcti_init(ptr noundef nonnull %12, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #13
  %13 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 9
  %14 = load i16, ptr %13, align 8, !tbaa !125
  %15 = and i16 %14, 32
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !126
  %20 = icmp eq ptr %19, null
  %21 = getelementptr inbounds %struct.ARegion, ptr %19, i64 0, i32 3
  %22 = select i1 %20, ptr %8, ptr %21
  br label %23

23:                                               ; preds = %17, %11
  %24 = phi ptr [ %8, %11 ], [ %22, %17 ]
  %25 = and i16 %14, -33
  %26 = sext i16 %25 to i32
  %27 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 23), align 8, !tbaa !130
  %28 = and i32 %27, 2
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %46, label %30

30:                                               ; preds = %23
  %31 = tail call zeroext i8 @WM_is_draw_triple(ptr noundef %0) #13
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %46, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 8
  %35 = load i8, ptr %34, align 8, !tbaa !61
  switch i8 %35, label %46 [
    i8 1, label %36
    i8 8, label %36
    i8 6, label %41
  ]

36:                                               ; preds = %33, %33
  %37 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 8
  %38 = load i16, ptr %37, align 2, !tbaa !104
  %39 = add i16 %38, -4
  %40 = icmp ult i16 %39, 3
  br i1 %40, label %47, label %46

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 8
  %43 = load i16, ptr %42, align 2, !tbaa !104
  %44 = and i16 %43, -4
  %45 = icmp eq i16 %44, 4
  br i1 %45, label %47, label %46

46:                                               ; preds = %41, %36, %33, %30, %23
  br label %47

47:                                               ; preds = %36, %41, %46
  %48 = phi i1 [ true, %46 ], [ false, %36 ], [ false, %41 ]
  %49 = phi i16 [ 0, %46 ], [ 1, %36 ], [ 1, %41 ]
  %50 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 17
  store i16 %49, ptr %50, align 2, !tbaa !131
  %51 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 10
  %52 = load i16, ptr %51, align 2, !tbaa !82
  %53 = and i16 %52, -3
  store i16 %53, ptr %51, align 2, !tbaa !82
  %54 = load ptr, ptr %7, align 8, !tbaa !132
  %55 = icmp eq ptr %54, null
  %56 = icmp ne i16 %25, 8
  %57 = and i1 %56, %55
  %58 = select i1 %57, i32 0, i32 %26
  %59 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !88
  %60 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !89
  %61 = sitofp i32 %60 to float
  %62 = fmul float %59, %61
  %63 = fdiv float %62, 7.200000e+01
  %64 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 12
  %65 = load i16, ptr %64, align 8, !tbaa !133
  %66 = icmp sgt i16 %65, 1
  br i1 %66, label %67, label %70

67:                                               ; preds = %47
  %68 = sitofp i16 %65 to float
  %69 = fadd float %68, 5.000000e-01
  br label %76

70:                                               ; preds = %47
  %71 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 20
  %72 = load ptr, ptr %71, align 8, !tbaa !49
  %73 = getelementptr inbounds %struct.ARegionType, ptr %72, i64 0, i32 18
  %74 = load i32, ptr %73, align 8, !tbaa !134
  %75 = sitofp i32 %74 to float
  br label %76

76:                                               ; preds = %70, %67
  %77 = phi float [ %69, %67 ], [ %75, %70 ]
  %78 = fmul float %63, %77
  %79 = fptosi float %78 to i32
  %80 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 8
  %81 = load i16, ptr %80, align 2, !tbaa !104
  switch i16 %81, label %95 [
    i16 1, label %82
    i16 4, label %85
  ]

82:                                               ; preds = %76
  %83 = fmul float %63, 2.600000e+01
  %84 = fptosi float %83 to i32
  br label %112

85:                                               ; preds = %76
  %86 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 8
  %87 = load i8, ptr %86, align 8, !tbaa !61
  %88 = icmp eq i8 %87, 5
  br i1 %88, label %89, label %95

89:                                               ; preds = %85
  %90 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !67
  %91 = sext i16 %90 to i32
  %92 = shl nsw i32 %91, 1
  %93 = sdiv i32 %91, 2
  %94 = add nsw i32 %92, %93
  br label %112

95:                                               ; preds = %76, %85
  %96 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 13
  %97 = load i16, ptr %96, align 2, !tbaa !135
  %98 = icmp sgt i16 %97, 1
  br i1 %98, label %99, label %102

99:                                               ; preds = %95
  %100 = sitofp i16 %97 to float
  %101 = fadd float %100, 5.000000e-01
  br label %108

102:                                              ; preds = %95
  %103 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 20
  %104 = load ptr, ptr %103, align 8, !tbaa !49
  %105 = getelementptr inbounds %struct.ARegionType, ptr %104, i64 0, i32 19
  %106 = load i32, ptr %105, align 4, !tbaa !136
  %107 = sitofp i32 %106 to float
  br label %108

108:                                              ; preds = %102, %99
  %109 = phi float [ %101, %99 ], [ %107, %102 ]
  %110 = fmul float %63, %109
  %111 = fptosi float %110 to i32
  br label %112

112:                                              ; preds = %89, %108, %82
  %113 = phi i32 [ %84, %82 ], [ %94, %89 ], [ %111, %108 ]
  %114 = and i16 %52, 1
  %115 = icmp ne i16 %114, 0
  %116 = icmp eq i32 %58, 7
  %117 = select i1 %115, i1 true, i1 %116
  br i1 %117, label %283, label %118

118:                                              ; preds = %112
  %119 = getelementptr inbounds %struct.rcti, ptr %24, i64 0, i32 3
  %120 = load i32, ptr %119, align 4, !tbaa !93
  %121 = getelementptr inbounds %struct.rcti, ptr %24, i64 0, i32 2
  %122 = load i32, ptr %121, align 4, !tbaa !91
  %123 = sub nsw i32 %120, %122
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %131, label %125

125:                                              ; preds = %118
  %126 = getelementptr inbounds %struct.rcti, ptr %24, i64 0, i32 1
  %127 = load i32, ptr %126, align 4, !tbaa !92
  %128 = load i32, ptr %24, align 4, !tbaa !90
  %129 = sub nsw i32 %127, %128
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %125, %118
  %132 = or i16 %52, 2
  store i16 %132, ptr %51, align 2, !tbaa !82
  br label %283

133:                                              ; preds = %125
  %134 = icmp eq i32 %58, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %133
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 4 dereferenceable(16) %24, i64 16, i1 false), !tbaa.struct !58
  tail call void @BLI_rcti_init(ptr noundef nonnull %24, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #13
  br label %283

136:                                              ; preds = %133
  %137 = icmp eq i32 %58, 1
  %138 = icmp ult i32 %58, 3
  br i1 %138, label %139, label %157

139:                                              ; preds = %136
  %140 = add nuw nsw i32 %123, 1
  %141 = icmp slt i32 %140, %113
  br i1 %141, label %142, label %144

142:                                              ; preds = %139
  %143 = or i16 %52, 2
  store i16 %143, ptr %51, align 2, !tbaa !82
  br label %283

144:                                              ; preds = %139
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 4 dereferenceable(16) %24, i64 16, i1 false), !tbaa.struct !58
  br i1 %137, label %145, label %151

145:                                              ; preds = %144
  %146 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 3, i32 3
  %147 = load i32, ptr %146, align 4, !tbaa !137
  %148 = sub nsw i32 %147, %113
  %149 = add nsw i32 %148, 1
  %150 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 3, i32 2
  store i32 %149, ptr %150, align 8, !tbaa !73
  store i32 %148, ptr %119, align 4, !tbaa !93
  br label %283

151:                                              ; preds = %144
  %152 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 3, i32 2
  %153 = load i32, ptr %152, align 8, !tbaa !73
  %154 = add nsw i32 %153, %113
  %155 = add nsw i32 %154, -1
  %156 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 3, i32 3
  store i32 %155, ptr %156, align 4, !tbaa !137
  store i32 %154, ptr %121, align 4, !tbaa !91
  br label %283

157:                                              ; preds = %136
  %158 = icmp eq i32 %58, 4
  %159 = add nsw i32 %58, -3
  %160 = icmp ult i32 %159, 2
  br i1 %160, label %161, label %179

161:                                              ; preds = %157
  %162 = add nuw nsw i32 %129, 1
  %163 = icmp slt i32 %162, %79
  br i1 %163, label %164, label %166

164:                                              ; preds = %161
  %165 = or i16 %52, 2
  store i16 %165, ptr %51, align 2, !tbaa !82
  br label %283

166:                                              ; preds = %161
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 4 dereferenceable(16) %24, i64 16, i1 false), !tbaa.struct !58
  br i1 %158, label %167, label %173

167:                                              ; preds = %166
  %168 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 3, i32 1
  %169 = load i32, ptr %168, align 4, !tbaa !138
  %170 = sub nsw i32 %169, %79
  %171 = add nsw i32 %170, 1
  store i32 %171, ptr %12, align 8, !tbaa !72
  br i1 %48, label %172, label %283

172:                                              ; preds = %167
  store i32 %170, ptr %126, align 4, !tbaa !92
  br label %283

173:                                              ; preds = %166
  %174 = load i32, ptr %12, align 8, !tbaa !72
  %175 = add nsw i32 %174, %79
  %176 = add nsw i32 %175, -1
  %177 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 3, i32 1
  store i32 %176, ptr %177, align 4, !tbaa !138
  br i1 %48, label %178, label %283

178:                                              ; preds = %173
  store i32 %175, ptr %24, align 4, !tbaa !90
  br label %283

179:                                              ; preds = %157
  %180 = add nsw i32 %58, -5
  %181 = icmp ult i32 %180, 2
  br i1 %181, label %182, label %210

182:                                              ; preds = %179
  %183 = icmp eq i32 %58, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 4 dereferenceable(16) %24, i64 16, i1 false), !tbaa.struct !58
  br i1 %183, label %184, label %197

184:                                              ; preds = %182
  %185 = load i32, ptr %126, align 4, !tbaa !92
  %186 = load i32, ptr %24, align 4, !tbaa !90
  %187 = add i32 %185, 1
  %188 = add i32 %186, %79
  %189 = sub i32 %187, %188
  %190 = icmp sgt i32 %189, 4
  br i1 %190, label %191, label %196

191:                                              ; preds = %184
  %192 = add nsw i32 %186, %185
  %193 = sdiv i32 %192, 2
  %194 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 3, i32 1
  store i32 %193, ptr %194, align 4, !tbaa !138
  %195 = add nsw i32 %193, 1
  store i32 %195, ptr %24, align 4, !tbaa !90
  br label %283

196:                                              ; preds = %184
  tail call void @BLI_rcti_init(ptr noundef nonnull %24, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #13
  br label %283

197:                                              ; preds = %182
  %198 = load i32, ptr %119, align 4, !tbaa !93
  %199 = load i32, ptr %121, align 4, !tbaa !91
  %200 = add i32 %198, 1
  %201 = add i32 %113, %199
  %202 = sub i32 %200, %201
  %203 = icmp sgt i32 %202, 4
  br i1 %203, label %204, label %209

204:                                              ; preds = %197
  %205 = add nsw i32 %199, %198
  %206 = sdiv i32 %205, 2
  %207 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 3, i32 3
  store i32 %206, ptr %207, align 4, !tbaa !137
  %208 = add nsw i32 %206, 1
  store i32 %208, ptr %121, align 4, !tbaa !91
  br label %283

209:                                              ; preds = %197
  tail call void @BLI_rcti_init(ptr noundef nonnull %24, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #13
  br label %283

210:                                              ; preds = %179
  %211 = icmp eq i32 %58, 8
  br i1 %211, label %212, label %283

212:                                              ; preds = %210
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 4 dereferenceable(16) %24, i64 16, i1 false), !tbaa.struct !58
  %213 = icmp eq i32 %9, 0
  br i1 %213, label %214, label %233

214:                                              ; preds = %212
  %215 = load ptr, ptr %7, align 8, !tbaa !132
  %216 = icmp eq ptr %215, null
  br i1 %216, label %224, label %217

217:                                              ; preds = %214, %217
  %218 = phi ptr [ %222, %217 ], [ %215, %214 ]
  %219 = phi i32 [ %221, %217 ], [ 1, %214 ]
  %220 = getelementptr inbounds %struct.ARegion, ptr %218, i64 0, i32 9
  store i16 8, ptr %220, align 8, !tbaa !125
  %221 = add nuw nsw i32 %219, 1
  %222 = load ptr, ptr %218, align 8, !tbaa !132
  %223 = icmp eq ptr %222, null
  br i1 %223, label %224, label %217, !llvm.loop !139

224:                                              ; preds = %217, %214
  %225 = phi i32 [ 1, %214 ], [ %221, %217 ]
  %226 = icmp eq i32 %225, 4
  br i1 %226, label %233, label %227

227:                                              ; preds = %224
  tail call void @BLI_rcti_init(ptr noundef nonnull %24, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #13
  %228 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !140
  %229 = and i32 %228, 1
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %233, label %231

231:                                              ; preds = %227
  %232 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %233

233:                                              ; preds = %231, %227, %224, %212
  %234 = phi i32 [ %9, %212 ], [ 0, %231 ], [ 0, %227 ], [ 1, %224 ]
  switch i32 %234, label %269 [
    i32 0, label %283
    i32 1, label %235
    i32 2, label %246
    i32 3, label %258
  ]

235:                                              ; preds = %233
  %236 = load i32, ptr %24, align 4, !tbaa !90
  %237 = load i32, ptr %126, align 4, !tbaa !92
  %238 = add nsw i32 %237, %236
  %239 = sdiv i32 %238, 2
  %240 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 3, i32 1
  store i32 %239, ptr %240, align 4, !tbaa !138
  %241 = load i32, ptr %121, align 4, !tbaa !91
  %242 = load i32, ptr %119, align 4, !tbaa !93
  %243 = add nsw i32 %242, %241
  %244 = sdiv i32 %243, 2
  %245 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 3, i32 3
  store i32 %244, ptr %245, align 4, !tbaa !137
  br label %281

246:                                              ; preds = %233
  %247 = load i32, ptr %24, align 4, !tbaa !90
  %248 = load i32, ptr %126, align 4, !tbaa !92
  %249 = add nsw i32 %248, %247
  %250 = sdiv i32 %249, 2
  %251 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 3, i32 1
  store i32 %250, ptr %251, align 4, !tbaa !138
  %252 = load i32, ptr %121, align 4, !tbaa !91
  %253 = load i32, ptr %119, align 4, !tbaa !93
  %254 = add nsw i32 %253, %252
  %255 = sdiv i32 %254, 2
  %256 = add nsw i32 %255, 1
  %257 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 3, i32 2
  store i32 %256, ptr %257, align 8, !tbaa !73
  br label %281

258:                                              ; preds = %233
  %259 = load i32, ptr %24, align 4, !tbaa !90
  %260 = load i32, ptr %126, align 4, !tbaa !92
  %261 = add nsw i32 %260, %259
  %262 = sdiv i32 %261, 2
  %263 = add nsw i32 %262, 1
  store i32 %263, ptr %12, align 8, !tbaa !72
  %264 = load i32, ptr %121, align 4, !tbaa !91
  %265 = load i32, ptr %119, align 4, !tbaa !93
  %266 = add nsw i32 %265, %264
  %267 = sdiv i32 %266, 2
  %268 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 3, i32 3
  store i32 %267, ptr %268, align 4, !tbaa !137
  br label %281

269:                                              ; preds = %233
  %270 = load i32, ptr %24, align 4, !tbaa !90
  %271 = load i32, ptr %126, align 4, !tbaa !92
  %272 = add nsw i32 %271, %270
  %273 = sdiv i32 %272, 2
  %274 = add nsw i32 %273, 1
  store i32 %274, ptr %12, align 8, !tbaa !72
  %275 = load i32, ptr %121, align 4, !tbaa !91
  %276 = load i32, ptr %119, align 4, !tbaa !93
  %277 = add nsw i32 %276, %275
  %278 = sdiv i32 %277, 2
  %279 = add nsw i32 %278, 1
  %280 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 3, i32 2
  store i32 %279, ptr %280, align 8, !tbaa !73
  tail call void @BLI_rcti_init(ptr noundef nonnull %24, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #13
  br label %281

281:                                              ; preds = %246, %269, %258, %235
  %282 = add nsw i32 %234, 1
  br label %283

283:                                              ; preds = %233, %172, %167, %178, %173, %145, %151, %135, %164, %210, %281, %196, %191, %209, %204, %142, %131, %112
  %284 = phi i32 [ %9, %112 ], [ %9, %131 ], [ %9, %135 ], [ %9, %142 ], [ %9, %164 ], [ %9, %191 ], [ %9, %196 ], [ %9, %204 ], [ %9, %209 ], [ %282, %281 ], [ %234, %233 ], [ %9, %210 ], [ %9, %151 ], [ %9, %145 ], [ %9, %173 ], [ %9, %178 ], [ %9, %167 ], [ %9, %172 ]
  %285 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 3, i32 1
  %286 = load i32, ptr %285, align 4, !tbaa !92
  %287 = load i32, ptr %12, align 4, !tbaa !90
  %288 = sub nsw i32 %286, %287
  %289 = trunc i32 %288 to i16
  %290 = add i16 %289, 1
  %291 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 5
  store i16 %290, ptr %291, align 8, !tbaa !141
  %292 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 3, i32 3
  %293 = load i32, ptr %292, align 4, !tbaa !93
  %294 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 3, i32 2
  %295 = load i32, ptr %294, align 4, !tbaa !91
  %296 = sub nsw i32 %293, %295
  %297 = trunc i32 %296 to i16
  %298 = add i16 %297, 1
  %299 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 6
  store i16 %298, ptr %299, align 2, !tbaa !142
  %300 = icmp sgt i16 %290, 1
  br i1 %300, label %301, label %311

301:                                              ; preds = %283
  %302 = sitofp i16 %290 to float
  %303 = fadd float %302, 5.000000e-01
  %304 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !88
  %305 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !89
  %306 = sitofp i32 %305 to float
  %307 = fmul float %304, %306
  %308 = fdiv float %307, 7.200000e+01
  %309 = fdiv float %303, %308
  %310 = fptosi float %309 to i16
  store i16 %310, ptr %64, align 8, !tbaa !133
  br label %311

311:                                              ; preds = %301, %283
  %312 = icmp sgt i16 %298, 1
  br i1 %312, label %313, label %324

313:                                              ; preds = %311
  %314 = sitofp i16 %298 to float
  %315 = fadd float %314, 5.000000e-01
  %316 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !88
  %317 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !89
  %318 = sitofp i32 %317 to float
  %319 = fmul float %316, %318
  %320 = fdiv float %319, 7.200000e+01
  %321 = fdiv float %315, %320
  %322 = fptosi float %321 to i16
  %323 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 13
  store i16 %322, ptr %323, align 2, !tbaa !135
  br label %324

324:                                              ; preds = %313, %311
  %325 = load i16, ptr %50, align 2, !tbaa !131
  %326 = icmp eq i16 %325, 0
  br i1 %326, label %414, label %327

327:                                              ; preds = %324
  %328 = load i16, ptr %13, align 8, !tbaa !125
  %329 = and i16 %328, -33
  %330 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 1
  %331 = load ptr, ptr %330, align 8, !tbaa !126
  %332 = icmp eq ptr %331, null
  br i1 %332, label %357, label %333

333:                                              ; preds = %327, %352
  %334 = phi i1 [ %356, %352 ], [ %332, %327 ]
  %335 = phi ptr [ %355, %352 ], [ %331, %327 ]
  %336 = phi i32 [ %353, %352 ], [ 0, %327 ]
  %337 = getelementptr inbounds %struct.ARegion, ptr %335, i64 0, i32 17
  %338 = load i16, ptr %337, align 2, !tbaa !131
  %339 = icmp eq i16 %338, 0
  br i1 %339, label %352, label %340

340:                                              ; preds = %333
  %341 = getelementptr inbounds %struct.ARegion, ptr %335, i64 0, i32 9
  %342 = load i16, ptr %341, align 8, !tbaa !125
  %343 = sext i16 %342 to i32
  %344 = and i32 %343, 32
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %346, label %352

346:                                              ; preds = %340
  %347 = getelementptr inbounds %struct.ARegion, ptr %335, i64 0, i32 3
  %348 = tail call zeroext i8 @BLI_rcti_isect(ptr noundef nonnull %347, ptr noundef nonnull %12, ptr noundef null) #13
  %349 = icmp eq i8 %348, 0
  br i1 %349, label %352, label %350

350:                                              ; preds = %346
  %351 = icmp eq i16 %342, %329
  br i1 %351, label %357, label %411

352:                                              ; preds = %346, %340, %333
  %353 = phi i32 [ %343, %346 ], [ %336, %340 ], [ %336, %333 ]
  %354 = getelementptr inbounds %struct.ARegion, ptr %335, i64 0, i32 1
  %355 = load ptr, ptr %354, align 8, !tbaa !126
  %356 = icmp eq ptr %355, null
  br i1 %356, label %357, label %333, !llvm.loop !143

357:                                              ; preds = %352, %327, %350
  %358 = phi ptr [ %335, %350 ], [ %331, %327 ], [ %355, %352 ]
  %359 = phi i1 [ %334, %350 ], [ %332, %327 ], [ %356, %352 ]
  %360 = phi i32 [ %343, %350 ], [ 0, %327 ], [ %353, %352 ]
  br i1 %359, label %388, label %361

361:                                              ; preds = %357
  switch i32 %360, label %388 [
    i32 3, label %362
    i32 4, label %375
  ]

362:                                              ; preds = %361
  %363 = load i32, ptr %285, align 4, !tbaa !138
  %364 = getelementptr inbounds %struct.ARegion, ptr %358, i64 0, i32 5
  %365 = load i16, ptr %364, align 8, !tbaa !141
  %366 = sext i16 %365 to i32
  %367 = add nsw i32 %363, %366
  %368 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 10
  %369 = load i16, ptr %368, align 2, !tbaa !120
  %370 = sext i16 %369 to i32
  %371 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !67
  %372 = sext i16 %371 to i32
  %373 = sub nsw i32 %370, %372
  %374 = icmp sgt i32 %367, %373
  br i1 %374, label %411, label %386

375:                                              ; preds = %361
  %376 = load i32, ptr %12, align 8, !tbaa !72
  %377 = getelementptr inbounds %struct.ARegion, ptr %358, i64 0, i32 5
  %378 = load i16, ptr %377, align 8, !tbaa !141
  %379 = sext i16 %378 to i32
  %380 = sub nsw i32 %376, %379
  %381 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !67
  %382 = sext i16 %381 to i32
  %383 = icmp slt i32 %380, %382
  br i1 %383, label %411, label %384

384:                                              ; preds = %375
  %385 = sub nsw i32 0, %379
  br label %386

386:                                              ; preds = %362, %384
  %387 = phi i32 [ %385, %384 ], [ %366, %362 ]
  tail call void @BLI_rcti_translate(ptr noundef nonnull %12, i32 noundef %387, i32 noundef 0) #13
  br label %388

388:                                              ; preds = %386, %361, %357
  %389 = load ptr, ptr %330, align 8, !tbaa !126
  %390 = icmp eq ptr %389, null
  br i1 %390, label %414, label %391

391:                                              ; preds = %388, %407
  %392 = phi ptr [ %409, %407 ], [ %389, %388 ]
  %393 = getelementptr inbounds %struct.ARegion, ptr %392, i64 0, i32 17
  %394 = load i16, ptr %393, align 2, !tbaa !131
  %395 = icmp eq i16 %394, 0
  br i1 %395, label %407, label %396

396:                                              ; preds = %391
  %397 = getelementptr inbounds %struct.ARegion, ptr %392, i64 0, i32 9
  %398 = load i16, ptr %397, align 8, !tbaa !125
  %399 = and i16 %398, 32
  %400 = icmp ne i16 %399, 0
  %401 = icmp eq i16 %398, %329
  %402 = select i1 %400, i1 true, i1 %401
  br i1 %402, label %407, label %403

403:                                              ; preds = %396
  %404 = getelementptr inbounds %struct.ARegion, ptr %392, i64 0, i32 3
  %405 = tail call zeroext i8 @BLI_rcti_isect(ptr noundef nonnull %404, ptr noundef nonnull %12, ptr noundef null) #13
  %406 = icmp eq i8 %405, 0
  br i1 %406, label %407, label %411

407:                                              ; preds = %403, %396, %391
  %408 = getelementptr inbounds %struct.ARegion, ptr %392, i64 0, i32 1
  %409 = load ptr, ptr %408, align 8, !tbaa !126
  %410 = icmp eq ptr %409, null
  br i1 %410, label %414, label %391, !llvm.loop !144

411:                                              ; preds = %403, %375, %362, %350
  %412 = load i16, ptr %51, align 2, !tbaa !82
  %413 = or i16 %412, 2
  store i16 %413, ptr %51, align 2, !tbaa !82
  br label %414

414:                                              ; preds = %407, %411, %388, %324
  %415 = load i16, ptr %51, align 2, !tbaa !82
  %416 = and i16 %415, 3
  %417 = icmp eq i16 %416, 0
  br i1 %417, label %429, label %418

418:                                              ; preds = %414
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 4 dereferenceable(16) %24, i64 16, i1 false), !tbaa.struct !58
  switch i32 %58, label %427 [
    i32 1, label %419
    i32 2, label %421
    i32 4, label %423
    i32 3, label %425
  ]

419:                                              ; preds = %418
  %420 = load i32, ptr %292, align 4, !tbaa !137
  store i32 %420, ptr %294, align 8, !tbaa !73
  br label %429

421:                                              ; preds = %418
  %422 = load i32, ptr %294, align 8, !tbaa !73
  store i32 %422, ptr %292, align 4, !tbaa !137
  br label %429

423:                                              ; preds = %418
  %424 = load i32, ptr %285, align 4, !tbaa !138
  store i32 %424, ptr %12, align 8, !tbaa !72
  br label %429

425:                                              ; preds = %418
  %426 = load i32, ptr %12, align 8, !tbaa !72
  store i32 %426, ptr %285, align 4, !tbaa !138
  br label %429

427:                                              ; preds = %418
  %428 = load i32, ptr %12, align 8, !tbaa !72
  store i32 %428, ptr %285, align 4, !tbaa !138
  br label %429

429:                                              ; preds = %419, %423, %427, %425, %421, %414
  %430 = load i16, ptr %13, align 8, !tbaa !125
  %431 = and i16 %430, 32
  %432 = icmp eq i16 %431, 0
  br i1 %432, label %454, label %433

433:                                              ; preds = %429
  %434 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 1
  %435 = load ptr, ptr %434, align 8, !tbaa !126
  %436 = icmp eq ptr %435, null
  br i1 %436, label %454, label %437

437:                                              ; preds = %433
  %438 = getelementptr inbounds %struct.ARegion, ptr %435, i64 0, i32 3
  %439 = getelementptr inbounds %struct.ARegion, ptr %435, i64 0, i32 3, i32 1
  %440 = load i32, ptr %439, align 4, !tbaa !92
  %441 = load i32, ptr %438, align 4, !tbaa !90
  %442 = sub nsw i32 %440, %441
  %443 = trunc i32 %442 to i16
  %444 = add i16 %443, 1
  %445 = getelementptr inbounds %struct.ARegion, ptr %435, i64 0, i32 5
  store i16 %444, ptr %445, align 8, !tbaa !141
  %446 = getelementptr inbounds %struct.ARegion, ptr %435, i64 0, i32 3, i32 3
  %447 = load i32, ptr %446, align 4, !tbaa !93
  %448 = getelementptr inbounds %struct.ARegion, ptr %435, i64 0, i32 3, i32 2
  %449 = load i32, ptr %448, align 4, !tbaa !91
  %450 = sub nsw i32 %447, %449
  %451 = trunc i32 %450 to i16
  %452 = add i16 %451, 1
  %453 = getelementptr inbounds %struct.ARegion, ptr %435, i64 0, i32 6
  store i16 %452, ptr %453, align 2, !tbaa !142
  br label %454

454:                                              ; preds = %433, %437, %429
  %455 = phi ptr [ %8, %437 ], [ %24, %433 ], [ %24, %429 ]
  %456 = load i16, ptr %80, align 2, !tbaa !104
  %457 = icmp eq i16 %456, 1
  br i1 %457, label %458, label %466

458:                                              ; preds = %454
  %459 = load i16, ptr %299, align 2, !tbaa !142
  %460 = sext i16 %459 to i32
  %461 = add nsw i32 %460, 6
  %462 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 11
  %463 = load i16, ptr %462, align 4, !tbaa !121
  %464 = sext i16 %463 to i32
  %465 = icmp sgt i32 %461, %464
  br i1 %465, label %518, label %466

466:                                              ; preds = %458, %454
  %467 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 3
  %468 = load ptr, ptr %467, align 8, !tbaa !97
  %469 = getelementptr inbounds %struct.bScreen, ptr %468, i64 0, i32 9
  %470 = load i16, ptr %469, align 8, !tbaa !99
  %471 = icmp ult i16 %470, 2
  br i1 %471, label %472, label %477

472:                                              ; preds = %466
  switch i32 %58, label %518 [
    i32 1, label %473
    i32 2, label %474
    i32 4, label %475
    i32 3, label %476
  ]

473:                                              ; preds = %472
  tail call fastcc void @region_azone_initialize(ptr noundef %1, ptr noundef %7, i32 noundef 3, i8 noundef zeroext 0)
  br label %518

474:                                              ; preds = %472
  tail call fastcc void @region_azone_initialize(ptr noundef %1, ptr noundef %7, i32 noundef 2, i8 noundef zeroext 0)
  br label %518

475:                                              ; preds = %472
  tail call fastcc void @region_azone_initialize(ptr noundef %1, ptr noundef %7, i32 noundef 1, i8 noundef zeroext 0)
  br label %518

476:                                              ; preds = %472
  tail call fastcc void @region_azone_initialize(ptr noundef %1, ptr noundef %7, i32 noundef 0, i8 noundef zeroext 0)
  br label %518

477:                                              ; preds = %466
  %478 = add nsw i32 %58, -1
  %479 = icmp ult i32 %478, 4
  br i1 %479, label %480, label %484

480:                                              ; preds = %477
  %481 = zext nneg i32 %478 to i64
  %482 = getelementptr inbounds [4 x i32], ptr @switch.table.region_rect_recursive, i64 0, i64 %481
  %483 = load i32, ptr %482, align 4
  tail call fastcc void @region_azone_initialize(ptr noundef %1, ptr noundef %7, i32 noundef %483, i8 noundef zeroext 1)
  br label %484

484:                                              ; preds = %477, %480
  %485 = load i16, ptr %80, align 2, !tbaa !104
  %486 = icmp eq i16 %485, 0
  br i1 %486, label %487, label %518

487:                                              ; preds = %484
  %488 = load ptr, ptr @MEM_callocN, align 8, !tbaa !74
  %489 = tail call ptr %488(i64 noundef 64, ptr noundef nonnull @.str.8) #13
  %490 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 22
  tail call void @BLI_addtail(ptr noundef nonnull %490, ptr noundef %489) #13
  %491 = getelementptr inbounds %struct.AZone, ptr %489, i64 0, i32 3
  store i32 3, ptr %491, align 8, !tbaa !80
  %492 = getelementptr inbounds %struct.AZone, ptr %489, i64 0, i32 2
  store ptr %7, ptr %492, align 8, !tbaa !81
  %493 = getelementptr inbounds %struct.AZone, ptr %489, i64 0, i32 10
  store float 0.000000e+00, ptr %493, align 8, !tbaa !87
  %494 = load i32, ptr %285, align 4, !tbaa !138
  %495 = sitofp i32 %494 to float
  %496 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !67
  %497 = sitofp i16 %496 to float
  %498 = tail call float @llvm.fmuladd.f32(float %497, float 6.500000e+00, float -1.000000e+00)
  %499 = fsub float %495, %498
  %500 = fptosi float %499 to i16
  %501 = getelementptr inbounds %struct.AZone, ptr %489, i64 0, i32 5
  store i16 %500, ptr %501, align 8, !tbaa !75
  %502 = load i32, ptr %292, align 4, !tbaa !137
  %503 = sitofp i32 %502 to float
  %504 = fsub float %503, %498
  %505 = fptosi float %504 to i16
  %506 = getelementptr inbounds %struct.AZone, ptr %489, i64 0, i32 6
  store i16 %505, ptr %506, align 2, !tbaa !78
  %507 = trunc i32 %494 to i16
  %508 = getelementptr inbounds %struct.AZone, ptr %489, i64 0, i32 7
  store i16 %507, ptr %508, align 4, !tbaa !77
  %509 = trunc i32 %502 to i16
  %510 = getelementptr inbounds %struct.AZone, ptr %489, i64 0, i32 8
  store i16 %509, ptr %510, align 2, !tbaa !79
  %511 = getelementptr inbounds %struct.AZone, ptr %489, i64 0, i32 9
  %512 = sext i16 %500 to i32
  %513 = shl i32 %494, 16
  %514 = ashr exact i32 %513, 16
  %515 = sext i16 %505 to i32
  %516 = shl i32 %502, 16
  %517 = ashr exact i32 %516, 16
  tail call void @BLI_rcti_init(ptr noundef nonnull %511, i32 noundef %512, i32 noundef %514, i32 noundef %515, i32 noundef %517) #13
  br label %518

518:                                              ; preds = %476, %475, %474, %473, %472, %487, %484, %458
  %519 = load ptr, ptr %7, align 8, !tbaa !132
  br label %6

520:                                              ; preds = %6
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ed_default_handlers(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = and i32 %3, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @UI_add_region_handlers(ptr noundef %2) #13
  br label %8

8:                                                ; preds = %7, %4
  %9 = and i32 %3, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %13 = load ptr, ptr %12, align 8, !tbaa !145
  %14 = tail call ptr @WM_keymap_find(ptr noundef %13, ptr noundef nonnull @.str.9, i32 noundef 0, i32 noundef 0) #13
  %15 = tail call ptr @WM_event_add_keymap_handler(ptr noundef %2, ptr noundef %14) #13
  br label %16

16:                                               ; preds = %11, %8
  %17 = and i32 %3, 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %41, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %21 = load ptr, ptr %20, align 8, !tbaa !145
  %22 = tail call ptr @WM_keymap_find(ptr noundef %21, ptr noundef nonnull @.str.10, i32 noundef 0, i32 noundef 0) #13
  %23 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 8
  %24 = load i8, ptr %23, align 8, !tbaa !61
  %25 = icmp eq i8 %24, 15
  br i1 %25, label %39, label %26

26:                                               ; preds = %19
  %27 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !88
  %28 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !89
  %29 = sitofp i32 %28 to float
  %30 = fmul float %27, %29
  %31 = fdiv float %30, 7.200000e+01
  %32 = fmul float %31, 4.200000e+01
  %33 = fptosi float %32 to i32
  store i32 %33, ptr getelementptr inbounds (%struct.rcti, ptr @ed_default_handlers.rect, i64 0, i32 3), align 4, !tbaa !93
  %34 = tail call ptr @BKE_area_find_region_type(ptr noundef %1, i32 noundef 0) #13
  %35 = icmp eq ptr %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %26
  %37 = getelementptr inbounds %struct.ARegion, ptr %34, i64 0, i32 3
  %38 = tail call ptr @WM_event_add_keymap_handler_bb(ptr noundef %2, ptr noundef %22, ptr noundef nonnull @ed_default_handlers.rect, ptr noundef nonnull %37) #13
  br label %41

39:                                               ; preds = %19
  %40 = tail call ptr @WM_event_add_keymap_handler(ptr noundef %2, ptr noundef %22) #13
  br label %41

41:                                               ; preds = %39, %36, %26, %16
  %42 = and i32 %3, 8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %46 = load ptr, ptr %45, align 8, !tbaa !145
  %47 = tail call ptr @WM_keymap_find(ptr noundef %46, ptr noundef nonnull @.str.11, i32 noundef 0, i32 noundef 0) #13
  %48 = tail call ptr @WM_event_add_keymap_handler(ptr noundef %2, ptr noundef %47) #13
  br label %49

49:                                               ; preds = %44, %41
  %50 = and i32 %3, 16
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %54 = load ptr, ptr %53, align 8, !tbaa !145
  %55 = tail call ptr @WM_keymap_find(ptr noundef %54, ptr noundef nonnull @.str.12, i32 noundef 0, i32 noundef 0) #13
  %56 = tail call ptr @WM_event_add_keymap_handler(ptr noundef %2, ptr noundef %55) #13
  br label %57

57:                                               ; preds = %52, %49
  %58 = and i32 %3, 32
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %62 = load ptr, ptr %61, align 8, !tbaa !145
  %63 = tail call ptr @WM_keymap_find(ptr noundef %62, ptr noundef nonnull @.str.13, i32 noundef 0, i32 noundef 0) #13
  %64 = tail call ptr @WM_event_add_keymap_handler(ptr noundef %2, ptr noundef %63) #13
  br label %65

65:                                               ; preds = %60, %57
  %66 = and i32 %3, 64
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %70 = load ptr, ptr %69, align 8, !tbaa !145
  %71 = tail call ptr @WM_keymap_find(ptr noundef %70, ptr noundef nonnull @.str.14, i32 noundef 0, i32 noundef 0) #13
  %72 = tail call ptr @WM_event_add_keymap_handler(ptr noundef %2, ptr noundef %71) #13
  br label %73

73:                                               ; preds = %68, %65
  ret void
}

declare void @uiFreeBlocks(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ED_region_update_rect(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_window(ptr noundef %0) #13
  %4 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 7
  %5 = load i16, ptr %4, align 4, !tbaa !60
  %6 = sext i16 %5 to i32
  %7 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  tail call void @wm_subwindow_rect_set(ptr noundef %3, i32 noundef %6, ptr noundef nonnull %7) #13
  %8 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !92
  %10 = load i32, ptr %7, align 4, !tbaa !90
  %11 = sub nsw i32 %9, %10
  %12 = trunc i32 %11 to i16
  %13 = add i16 %12, 1
  %14 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  store i16 %13, ptr %14, align 8, !tbaa !141
  %15 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !93
  %17 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !91
  %19 = sub nsw i32 %16, %18
  %20 = trunc i32 %19 to i16
  %21 = add i16 %20, 1
  %22 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  store i16 %21, ptr %22, align 2, !tbaa !142
  %23 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 4
  %24 = sext i16 %13 to i32
  %25 = add nsw i32 %24, -1
  %26 = sext i16 %21 to i32
  %27 = add nsw i32 %26, -1
  tail call void @BLI_rcti_init(ptr noundef nonnull %23, i32 noundef 0, i32 noundef %25, i32 noundef 0, i32 noundef %27) #13
  ret void
}

declare void @wm_subwindow_rect_set(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ED_region_init(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_window(ptr noundef %0) #13
  %4 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 10
  %5 = load i16, ptr %4, align 2, !tbaa !82
  %6 = and i16 %5, 3
  %7 = icmp ne i16 %6, 0
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 9
  %10 = load i16, ptr %9, align 8, !tbaa !125
  %11 = and i16 %10, 32
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !126
  %16 = icmp eq ptr %15, null
  %17 = select i1 %16, i1 true, i1 %7
  %18 = select i1 %16, i8 %8, i8 1
  br i1 %17, label %25, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.ARegion, ptr %15, i64 0, i32 10
  %21 = load i16, ptr %20, align 2, !tbaa !82
  %22 = and i16 %21, 3
  %23 = icmp ne i16 %22, 0
  %24 = zext i1 %23 to i8
  br label %25

25:                                               ; preds = %19, %13, %2
  %26 = phi i8 [ %18, %13 ], [ %8, %2 ], [ %24, %19 ]
  %27 = icmp eq i8 %26, 0
  %28 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 7
  %29 = load i16, ptr %28, align 4, !tbaa !60
  %30 = icmp eq i16 %29, 0
  br i1 %27, label %35, label %31

31:                                               ; preds = %25
  br i1 %30, label %34, label %32

32:                                               ; preds = %31
  %33 = sext i16 %29 to i32
  tail call void @wm_subwindow_close(ptr noundef %3, i32 noundef %33) #13
  br label %34

34:                                               ; preds = %32, %31
  store i16 0, ptr %28, align 4, !tbaa !60
  br label %43

35:                                               ; preds = %25
  br i1 %30, label %36, label %40

36:                                               ; preds = %35
  %37 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %38 = tail call i32 @wm_subwindow_open(ptr noundef %3, ptr noundef nonnull %37) #13
  %39 = trunc i32 %38 to i16
  store i16 %39, ptr %28, align 4, !tbaa !60
  br label %43

40:                                               ; preds = %35
  %41 = sext i16 %29 to i32
  %42 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  tail call void @wm_subwindow_position(ptr noundef %3, i32 noundef %41, ptr noundef nonnull %42) #13
  br label %43

43:                                               ; preds = %34, %36, %40
  %44 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %45 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 1
  %46 = load i32, ptr %45, align 4, !tbaa !92
  %47 = load i32, ptr %44, align 4, !tbaa !90
  %48 = sub nsw i32 %46, %47
  %49 = trunc i32 %48 to i16
  %50 = add i16 %49, 1
  %51 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  store i16 %50, ptr %51, align 8, !tbaa !141
  %52 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 3
  %53 = load i32, ptr %52, align 4, !tbaa !93
  %54 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 2
  %55 = load i32, ptr %54, align 4, !tbaa !91
  %56 = sub nsw i32 %53, %55
  %57 = trunc i32 %56 to i16
  %58 = add i16 %57, 1
  %59 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  store i16 %58, ptr %59, align 2, !tbaa !142
  %60 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 4
  %61 = sext i16 %50 to i32
  %62 = add nsw i32 %61, -1
  %63 = sext i16 %58 to i32
  %64 = add nsw i32 %63, -1
  tail call void @BLI_rcti_init(ptr noundef nonnull %60, i32 noundef 0, i32 noundef %62, i32 noundef 0, i32 noundef %64) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @region_toggle_hidden(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = tail call ptr @CTX_wm_area(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 10
  %6 = load i16, ptr %5, align 2, !tbaa !82
  %7 = xor i16 %6, 1
  store i16 %7, ptr %5, align 2, !tbaa !82
  %8 = icmp eq i8 %2, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 17
  %11 = load i16, ptr %10, align 2, !tbaa !131
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @region_blend_start(ptr noundef %0, ptr noundef %4, ptr noundef %1) #13
  br label %40

14:                                               ; preds = %9, %3
  %15 = and i16 %6, 1
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 26
  tail call void @WM_event_remove_handlers(ptr noundef %0, ptr noundef nonnull %18) #13
  br label %19

19:                                               ; preds = %17, %14
  %20 = tail call ptr @CTX_wm_manager(ptr noundef %0) #13
  %21 = tail call ptr @CTX_wm_window(ptr noundef %0) #13
  tail call void @ED_area_initialize(ptr noundef %20, ptr noundef %21, ptr noundef %4)
  %22 = icmp eq ptr %4, null
  br i1 %22, label %40, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.ScrArea, ptr %4, i64 0, i32 20
  %25 = load ptr, ptr %24, align 8, !tbaa !74
  %26 = icmp eq ptr %25, null
  br i1 %26, label %40, label %27

27:                                               ; preds = %23, %37
  %28 = phi ptr [ %38, %37 ], [ %25, %23 ]
  %29 = getelementptr inbounds %struct.ARegion, ptr %28, i64 0, i32 14
  %30 = load i16, ptr %29, align 4, !tbaa !41
  %31 = and i16 %30, 4
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = and i16 %30, -8
  %35 = or disjoint i16 %34, 1
  store i16 %35, ptr %29, align 4, !tbaa !41
  %36 = getelementptr inbounds %struct.ARegion, ptr %28, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %36, i8 0, i64 16, i1 false)
  br label %37

37:                                               ; preds = %33, %27
  %38 = load ptr, ptr %28, align 8, !tbaa !74
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %27, !llvm.loop !103

40:                                               ; preds = %37, %23, %19, %13
  ret void
}

declare void @region_blend_start(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @WM_event_remove_handlers(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ED_region_toggle_hidden(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @region_toggle_hidden(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 1)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_area_data_copy(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 8
  %5 = load i8, ptr %4, align 8, !tbaa !61
  %6 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 12
  %7 = load i16, ptr %6, align 2, !tbaa !148
  %8 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 12
  store i16 %7, ptr %8, align 2, !tbaa !148
  %9 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 8
  %10 = load i8, ptr %9, align 8, !tbaa !61
  store i8 %10, ptr %4, align 8, !tbaa !61
  %11 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 18
  %12 = load ptr, ptr %11, align 8, !tbaa !52
  %13 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 18
  store ptr %12, ptr %13, align 8, !tbaa !52
  %14 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 9
  %15 = load i8, ptr %14, align 1, !tbaa !107
  %16 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 9
  store i8 %15, ptr %16, align 1, !tbaa !107
  %17 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 14
  %18 = load i16, ptr %17, align 2, !tbaa !149
  %19 = and i16 %18, -2
  %20 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 14
  %21 = load i16, ptr %20, align 2, !tbaa !149
  %22 = and i16 %21, 1
  %23 = or disjoint i16 %22, %19
  store i16 %23, ptr %17, align 2, !tbaa !149
  %24 = icmp eq i8 %2, 0
  %25 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 19
  br i1 %24, label %38, label %26

26:                                               ; preds = %3
  tail call void @BKE_spacedata_freelist(ptr noundef nonnull %25) #13
  %27 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 19
  tail call void @BKE_spacedata_copylist(ptr noundef nonnull %25, ptr noundef nonnull %27) #13
  %28 = zext i8 %5 to i32
  %29 = tail call ptr @BKE_spacetype_from_id(i32 noundef %28) #13
  %30 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 20
  %31 = load ptr, ptr %30, align 8, !tbaa !74
  %32 = icmp eq ptr %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %26, %33
  %34 = phi ptr [ %35, %33 ], [ %31, %26 ]
  tail call void @BKE_area_region_free(ptr noundef %29, ptr noundef nonnull %34) #13
  %35 = load ptr, ptr %34, align 8, !tbaa !74
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %33, !llvm.loop !150

37:                                               ; preds = %33, %26
  tail call void @BLI_freelistN(ptr noundef nonnull %30) #13
  br label %40

38:                                               ; preds = %3
  %39 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 19
  tail call void @BKE_spacedata_copylist(ptr noundef nonnull %25, ptr noundef nonnull %39) #13
  br label %40

40:                                               ; preds = %38, %37
  %41 = load i8, ptr %9, align 8, !tbaa !61
  %42 = zext i8 %41 to i32
  %43 = tail call ptr @BKE_spacetype_from_id(i32 noundef %42) #13
  %44 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 20
  %45 = load ptr, ptr %44, align 8, !tbaa !74
  %46 = icmp eq ptr %45, null
  br i1 %46, label %54, label %47

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 20
  br label %49

49:                                               ; preds = %47, %49
  %50 = phi ptr [ %45, %47 ], [ %52, %49 ]
  %51 = tail call ptr @BKE_area_region_copy(ptr noundef %43, ptr noundef nonnull %50) #13
  tail call void @BLI_addtail(ptr noundef nonnull %48, ptr noundef %51) #13
  %52 = load ptr, ptr %50, align 8, !tbaa !74
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %49, !llvm.loop !151

54:                                               ; preds = %49, %40
  ret void
}

declare void @BKE_spacedata_freelist(ptr noundef) local_unnamed_addr #1

declare void @BKE_spacedata_copylist(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BKE_area_region_free(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #1

declare ptr @BKE_area_region_copy(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ED_area_data_swap(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #2 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.ListBase, align 8
  %5 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 12
  %6 = load i16, ptr %5, align 2, !tbaa !148
  %7 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 12
  store i16 %6, ptr %7, align 2, !tbaa !148
  %8 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 8
  %9 = load i8, ptr %8, align 8, !tbaa !61
  %10 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 8
  store i8 %9, ptr %10, align 8, !tbaa !61
  %11 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 18
  %12 = load ptr, ptr %11, align 8, !tbaa !52
  %13 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 18
  store ptr %12, ptr %13, align 8, !tbaa !52
  %14 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 9
  %15 = load i8, ptr %14, align 1, !tbaa !107
  %16 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 9
  store i8 %15, ptr %16, align 1, !tbaa !107
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3)
  %17 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %17, i64 16, i1 false), !tbaa.struct !152
  %18 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull align 8 dereferenceable(16) %18, i64 16, i1 false), !tbaa.struct !152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !152
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4)
  %19 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %19, i64 16, i1 false), !tbaa.struct !152
  %20 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(16) %20, i64 16, i1 false), !tbaa.struct !152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !152
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_area_swapspace(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !74
  %5 = tail call ptr %4(i64 noundef 160, ptr noundef nonnull @.str.1) #13
  tail call void @ED_area_exit(ptr noundef %0, ptr noundef %1) #13
  tail call void @ED_area_exit(ptr noundef %0, ptr noundef %2) #13
  %6 = getelementptr inbounds %struct.ScrArea, ptr %5, i64 0, i32 8
  %7 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 12
  %8 = load i16, ptr %7, align 2, !tbaa !148
  %9 = getelementptr inbounds %struct.ScrArea, ptr %5, i64 0, i32 12
  store i16 %8, ptr %9, align 2, !tbaa !148
  %10 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 8
  %11 = load i8, ptr %10, align 8, !tbaa !61
  store i8 %11, ptr %6, align 8, !tbaa !61
  %12 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 18
  %13 = load ptr, ptr %12, align 8, !tbaa !52
  %14 = getelementptr inbounds %struct.ScrArea, ptr %5, i64 0, i32 18
  store ptr %13, ptr %14, align 8, !tbaa !52
  %15 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 9
  %16 = load i8, ptr %15, align 1, !tbaa !107
  %17 = getelementptr inbounds %struct.ScrArea, ptr %5, i64 0, i32 9
  store i8 %16, ptr %17, align 1, !tbaa !107
  %18 = getelementptr inbounds %struct.ScrArea, ptr %5, i64 0, i32 14
  %19 = load i16, ptr %18, align 2, !tbaa !149
  %20 = and i16 %19, -2
  %21 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 14
  %22 = load i16, ptr %21, align 2, !tbaa !149
  %23 = and i16 %22, 1
  %24 = or disjoint i16 %23, %20
  store i16 %24, ptr %18, align 2, !tbaa !149
  %25 = getelementptr inbounds %struct.ScrArea, ptr %5, i64 0, i32 19
  %26 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 19
  tail call void @BKE_spacedata_copylist(ptr noundef nonnull %25, ptr noundef nonnull %26) #13
  %27 = load i8, ptr %10, align 8, !tbaa !61
  %28 = zext i8 %27 to i32
  %29 = tail call ptr @BKE_spacetype_from_id(i32 noundef %28) #13
  %30 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 20
  %31 = load ptr, ptr %30, align 8, !tbaa !74
  %32 = icmp eq ptr %31, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %3
  %34 = getelementptr inbounds %struct.ScrArea, ptr %5, i64 0, i32 20
  br label %35

35:                                               ; preds = %35, %33
  %36 = phi ptr [ %31, %33 ], [ %38, %35 ]
  %37 = tail call ptr @BKE_area_region_copy(ptr noundef %29, ptr noundef nonnull %36) #13
  tail call void @BLI_addtail(ptr noundef nonnull %34, ptr noundef %37) #13
  %38 = load ptr, ptr %36, align 8, !tbaa !74
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %35, !llvm.loop !151

40:                                               ; preds = %35, %3
  tail call void @ED_area_data_copy(ptr noundef %1, ptr noundef %2, i8 noundef zeroext 1)
  tail call void @ED_area_data_copy(ptr noundef %2, ptr noundef %5, i8 noundef zeroext 1)
  %41 = tail call ptr @CTX_wm_manager(ptr noundef %0) #13
  %42 = tail call ptr @CTX_wm_window(ptr noundef %0) #13
  tail call void @ED_area_initialize(ptr noundef %41, ptr noundef %42, ptr noundef %1)
  %43 = tail call ptr @CTX_wm_manager(ptr noundef %0) #13
  %44 = tail call ptr @CTX_wm_window(ptr noundef %0) #13
  tail call void @ED_area_initialize(ptr noundef %43, ptr noundef %44, ptr noundef %2)
  tail call void @BKE_screen_area_free(ptr noundef %5) #13
  %45 = load ptr, ptr @MEM_freeN, align 8, !tbaa !74
  tail call void %45(ptr noundef %5) #13
  tail call void @WM_event_add_mousemove(ptr noundef %0) #13
  %46 = icmp eq ptr %1, null
  br i1 %46, label %65, label %47

47:                                               ; preds = %40
  %48 = load ptr, ptr %30, align 8, !tbaa !74
  %49 = icmp eq ptr %48, null
  br i1 %49, label %63, label %50

50:                                               ; preds = %47, %60
  %51 = phi ptr [ %61, %60 ], [ %48, %47 ]
  %52 = getelementptr inbounds %struct.ARegion, ptr %51, i64 0, i32 14
  %53 = load i16, ptr %52, align 4, !tbaa !41
  %54 = and i16 %53, 4
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = and i16 %53, -8
  %58 = or disjoint i16 %57, 1
  store i16 %58, ptr %52, align 4, !tbaa !41
  %59 = getelementptr inbounds %struct.ARegion, ptr %51, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %59, i8 0, i64 16, i1 false)
  br label %60

60:                                               ; preds = %56, %50
  %61 = load ptr, ptr %51, align 8, !tbaa !74
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %50, !llvm.loop !103

63:                                               ; preds = %60, %47
  %64 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 13
  store i16 1, ptr %64, align 8, !tbaa !57
  br label %65

65:                                               ; preds = %40, %63
  %66 = icmp eq ptr %2, null
  br i1 %66, label %86, label %67

67:                                               ; preds = %65
  %68 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 20
  %69 = load ptr, ptr %68, align 8, !tbaa !74
  %70 = icmp eq ptr %69, null
  br i1 %70, label %84, label %71

71:                                               ; preds = %67, %81
  %72 = phi ptr [ %82, %81 ], [ %69, %67 ]
  %73 = getelementptr inbounds %struct.ARegion, ptr %72, i64 0, i32 14
  %74 = load i16, ptr %73, align 4, !tbaa !41
  %75 = and i16 %74, 4
  %76 = icmp eq i16 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %71
  %78 = and i16 %74, -8
  %79 = or disjoint i16 %78, 1
  store i16 %79, ptr %73, align 4, !tbaa !41
  %80 = getelementptr inbounds %struct.ARegion, ptr %72, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %80, i8 0, i64 16, i1 false)
  br label %81

81:                                               ; preds = %77, %71
  %82 = load ptr, ptr %72, align 8, !tbaa !74
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %71, !llvm.loop !103

84:                                               ; preds = %81, %67
  %85 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 13
  store i16 1, ptr %85, align 8, !tbaa !57
  br label %86

86:                                               ; preds = %65, %84
  ret void
}

declare void @ED_area_exit(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BKE_screen_area_free(ptr noundef) local_unnamed_addr #1

declare void @WM_event_add_mousemove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ED_area_newspace(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 8
  %5 = load i8, ptr %4, align 8, !tbaa !61
  %6 = zext i8 %5 to i32
  %7 = icmp eq i32 %6, %2
  br i1 %7, label %59, label %8

8:                                                ; preds = %3
  tail call void @ED_area_exit(ptr noundef %0, ptr noundef %1) #13
  %9 = tail call ptr @BKE_spacetype_from_id(i32 noundef %2) #13
  %10 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !153
  %12 = trunc i32 %2 to i8
  store i8 %12, ptr %4, align 8, !tbaa !61
  %13 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 9
  store i8 %12, ptr %13, align 1, !tbaa !107
  %14 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 18
  store ptr %9, ptr %14, align 8, !tbaa !52
  br label %15

15:                                               ; preds = %19, %8
  %16 = phi ptr [ %10, %8 ], [ %17, %19 ]
  %17 = load ptr, ptr %16, align 8, !tbaa !74
  %18 = icmp eq ptr %17, null
  br i1 %18, label %32, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.SpaceLink, ptr %17, i64 0, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !154
  %22 = icmp eq i32 %21, %2
  br i1 %22, label %23, label %15, !llvm.loop !156

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.SpaceLink, ptr %17, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !157
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.SpaceType, ptr %9, i64 0, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !158
  tail call void %29(ptr noundef nonnull %17) #13
  tail call void @BLI_freelinkN(ptr noundef nonnull %10, ptr noundef nonnull %17) #13
  %30 = icmp eq ptr %11, %17
  %31 = select i1 %30, ptr null, ptr %11
  br label %32

32:                                               ; preds = %15, %27, %23
  %33 = phi ptr [ %31, %27 ], [ %11, %23 ], [ %11, %15 ]
  %34 = phi ptr [ null, %27 ], [ %17, %23 ], [ null, %15 ]
  %35 = icmp eq ptr %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.SpaceLink, ptr %33, i64 0, i32 2
  %38 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %37, ptr noundef nonnull align 8 dereferenceable(16) %38, i64 16, i1 false), !tbaa.struct !152
  %39 = getelementptr inbounds %struct.SpaceLink, ptr %34, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %38, ptr noundef nonnull align 8 dereferenceable(16) %39, i64 16, i1 false), !tbaa.struct !152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %39, i8 0, i64 16, i1 false)
  tail call void @BLI_remlink(ptr noundef nonnull %10, ptr noundef nonnull %34) #13
  tail call void @BLI_addhead(ptr noundef nonnull %10, ptr noundef nonnull %34) #13
  br label %53

40:                                               ; preds = %32
  %41 = icmp eq ptr %9, null
  br i1 %41, label %53, label %42

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.SpaceType, ptr %9, i64 0, i32 5
  %44 = load ptr, ptr %43, align 8, !tbaa !159
  %45 = tail call ptr %44(ptr noundef %0) #13
  tail call void @BLI_addhead(ptr noundef nonnull %10, ptr noundef %45) #13
  %46 = icmp eq ptr %33, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.SpaceLink, ptr %33, i64 0, i32 2
  %49 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %48, ptr noundef nonnull align 8 dereferenceable(16) %49, i64 16, i1 false), !tbaa.struct !152
  br label %50

50:                                               ; preds = %47, %42
  %51 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 20
  %52 = getelementptr inbounds %struct.SpaceLink, ptr %45, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %51, ptr noundef nonnull align 8 dereferenceable(16) %52, i64 16, i1 false), !tbaa.struct !152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %52, i8 0, i64 16, i1 false)
  br label %53

53:                                               ; preds = %40, %50, %36
  %54 = tail call ptr @CTX_wm_manager(ptr noundef %0) #13
  %55 = tail call ptr @CTX_wm_window(ptr noundef %0) #13
  tail call void @ED_area_initialize(ptr noundef %54, ptr noundef %55, ptr noundef %1)
  tail call void @WM_event_add_mousemove(ptr noundef %0) #13
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 252837888, ptr noundef %1) #13
  %56 = icmp eq ptr %1, null
  br i1 %56, label %78, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 13
  store i16 1, ptr %58, align 8, !tbaa !57
  br label %59

59:                                               ; preds = %57, %3
  %60 = icmp eq ptr %1, null
  br i1 %60, label %78, label %61

61:                                               ; preds = %59
  %62 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 20
  %63 = load ptr, ptr %62, align 8, !tbaa !74
  %64 = icmp eq ptr %63, null
  br i1 %64, label %78, label %65

65:                                               ; preds = %61, %75
  %66 = phi ptr [ %76, %75 ], [ %63, %61 ]
  %67 = getelementptr inbounds %struct.ARegion, ptr %66, i64 0, i32 14
  %68 = load i16, ptr %67, align 4, !tbaa !41
  %69 = and i16 %68, 4
  %70 = icmp eq i16 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = and i16 %68, -8
  %73 = or disjoint i16 %72, 1
  store i16 %73, ptr %67, align 4, !tbaa !41
  %74 = getelementptr inbounds %struct.ARegion, ptr %66, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %74, i8 0, i64 16, i1 false)
  br label %75

75:                                               ; preds = %71, %65
  %76 = load ptr, ptr %66, align 8, !tbaa !74
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %65, !llvm.loop !103

78:                                               ; preds = %75, %61, %53, %59
  ret void
}

declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ED_area_prevspace(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !153
  br label %9

7:                                                ; preds = %2
  %8 = tail call ptr @CTX_wm_space_data(ptr noundef %0) #13
  br label %9

9:                                                ; preds = %7, %4
  %10 = phi ptr [ %6, %4 ], [ %8, %7 ]
  %11 = icmp eq ptr %10, null
  br i1 %11, label %45, label %12

12:                                               ; preds = %9
  %13 = load ptr, ptr %10, align 8, !tbaa !160
  %14 = icmp eq ptr %13, null
  br i1 %14, label %45, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.SpaceLink, ptr %13, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !154
  %18 = icmp eq i32 %17, 5
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = load ptr, ptr %13, align 8, !tbaa !160
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.SpaceLink, ptr %20, i64 0, i32 3
  %24 = load i32, ptr %23, align 8, !tbaa !154
  br label %25

25:                                               ; preds = %15, %19, %22
  %26 = phi i32 [ %24, %22 ], [ %17, %19 ], [ %17, %15 ]
  tail call void @ED_area_newspace(ptr noundef %0, ptr noundef %1, i32 noundef %26)
  br i1 %3, label %44, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 20
  %29 = load ptr, ptr %28, align 8, !tbaa !74
  %30 = icmp eq ptr %29, null
  br i1 %30, label %44, label %31

31:                                               ; preds = %27, %41
  %32 = phi ptr [ %42, %41 ], [ %29, %27 ]
  %33 = getelementptr inbounds %struct.ARegion, ptr %32, i64 0, i32 14
  %34 = load i16, ptr %33, align 4, !tbaa !41
  %35 = and i16 %34, 4
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = and i16 %34, -8
  %39 = or disjoint i16 %38, 1
  store i16 %39, ptr %33, align 4, !tbaa !41
  %40 = getelementptr inbounds %struct.ARegion, ptr %32, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %40, i8 0, i64 16, i1 false)
  br label %41

41:                                               ; preds = %37, %31
  %42 = load ptr, ptr %32, align 8, !tbaa !74
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %31, !llvm.loop !103

44:                                               ; preds = %41, %27, %25
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 252837888, ptr noundef %1) #13
  br label %45

45:                                               ; preds = %9, %12, %44
  ret void
}

declare ptr @CTX_wm_space_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @ED_area_header_switchbutton(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = tail call ptr @CTX_wm_area(ptr noundef %0) #13
  %6 = tail call ptr @CTX_wm_screen(ptr noundef %0) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  %7 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !67
  %8 = sitofp i16 %7 to double
  %9 = fmul double %8, 4.000000e-01
  %10 = fptosi double %9 to i32
  call void @RNA_pointer_create(ptr noundef %6, ptr noundef nonnull @RNA_Area, ptr noundef %5, ptr noundef nonnull %4) #13
  %11 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !67
  %12 = sitofp i16 %11 to double
  %13 = fmul double %12, 1.500000e+00
  %14 = fptosi double %13 to i16
  %15 = call ptr @uiDefButR(ptr noundef %1, i32 noundef 5632, i32 noundef 0, ptr noundef nonnull @.str.2, i32 noundef %10, i32 noundef %2, i16 noundef signext %14, i16 noundef signext %11, ptr noundef nonnull %4, ptr noundef nonnull @.str.3, i32 noundef 0, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.2) #13
  %16 = sitofp i32 %10 to double
  %17 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !67
  %18 = sitofp i16 %17 to double
  %19 = call double @llvm.fmuladd.f64(double %18, double 1.700000e+00, double %16)
  %20 = fptosi double %19 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  ret i32 %20
}

declare ptr @CTX_wm_screen(ptr noundef) local_unnamed_addr #1

declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @uiDefButR(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, ptr noundef, i32 noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: nounwind uwtable
define dso_local void @ED_region_panels(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef readonly %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = tail call ptr @CTX_wm_area(ptr noundef %0) #13
  %12 = tail call ptr @UI_GetStyleDraw() #13
  %13 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #13
  %14 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 8
  %15 = load i16, ptr %14, align 2, !tbaa !104
  %16 = icmp ne i16 %15, 5
  %17 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !67
  %18 = sext i16 %17 to i32
  %19 = icmp eq i32 %4, -1
  br i1 %19, label %23, label %20

20:                                               ; preds = %5
  %21 = tail call zeroext i8 @UI_view2d_tab_set(ptr noundef nonnull %13, i32 noundef %4) #13
  %22 = icmp eq i8 %21, 0
  br label %23

23:                                               ; preds = %20, %5
  %24 = phi i1 [ %22, %20 ], [ true, %5 ]
  %25 = icmp ne i32 %2, 0
  %26 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 13
  %27 = load i16, ptr %26, align 8, !tbaa !161
  %28 = and i16 %27, -31
  %29 = or disjoint i16 %28, 18
  %30 = select i1 %25, i16 %29, i16 %28
  %31 = select i1 %25, i16 2, i16 8
  store i16 %30, ptr %26, align 8, !tbaa !161
  %32 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 9
  %33 = load i16, ptr %32, align 8, !tbaa !162
  %34 = and i16 %33, -11
  %35 = or disjoint i16 %34, %31
  store i16 %35, ptr %32, align 8, !tbaa !162
  %36 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 9
  %37 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 20
  %38 = load ptr, ptr %37, align 8, !tbaa !49
  %39 = getelementptr inbounds %struct.ARegionType, ptr %38, i64 0, i32 14, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !74
  %41 = icmp eq ptr %40, null
  br i1 %41, label %73, label %42

42:                                               ; preds = %23
  %43 = icmp eq ptr %3, null
  br label %44

44:                                               ; preds = %42, %68
  %45 = phi ptr [ %40, %42 ], [ %71, %68 ]
  %46 = phi ptr [ null, %42 ], [ %69, %68 ]
  br i1 %43, label %54, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.PanelType, ptr %45, i64 0, i32 5
  %49 = load i8, ptr %48, align 8, !tbaa !163
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %47
  %52 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %48) #14
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %51, %47, %44
  %55 = getelementptr inbounds %struct.PanelType, ptr %45, i64 0, i32 12
  %56 = load ptr, ptr %55, align 8, !tbaa !164
  %57 = icmp eq ptr %56, null
  br i1 %57, label %68, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.PanelType, ptr %45, i64 0, i32 10
  %60 = load ptr, ptr %59, align 8, !tbaa !167
  %61 = icmp eq ptr %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %58
  %63 = call i32 %60(ptr noundef %0, ptr noundef nonnull %45) #13
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %58, %62
  %66 = alloca [16 x i8], align 16
  store ptr %46, ptr %66, align 16, !tbaa !168
  %67 = getelementptr inbounds %struct.LinkNode, ptr %66, i64 0, i32 1
  store ptr %45, ptr %67, align 8, !tbaa !170
  br label %68

68:                                               ; preds = %54, %62, %65, %51
  %69 = phi ptr [ %66, %65 ], [ %46, %62 ], [ %46, %54 ], [ %46, %51 ]
  %70 = getelementptr inbounds %struct.PanelType, ptr %45, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !74
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %44, !llvm.loop !171

73:                                               ; preds = %68, %23
  %74 = phi ptr [ null, %23 ], [ %69, %68 ]
  br i1 %16, label %96, label %75

75:                                               ; preds = %73
  call void @UI_panel_category_clear_all(ptr noundef %1) #13
  %76 = icmp eq ptr %74, null
  br i1 %76, label %91, label %77

77:                                               ; preds = %75, %88
  %78 = phi ptr [ %89, %88 ], [ %74, %75 ]
  %79 = getelementptr inbounds %struct.LinkNode, ptr %78, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !170
  %81 = getelementptr inbounds %struct.PanelType, ptr %80, i64 0, i32 6
  %82 = load i8, ptr %81, align 8, !tbaa !163
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %77
  %85 = call ptr @UI_panel_category_find(ptr noundef %1, ptr noundef nonnull %81) #13
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  call void @UI_panel_category_add(ptr noundef %1, ptr noundef nonnull %81) #13
  br label %88

88:                                               ; preds = %77, %87, %84
  %89 = load ptr, ptr %78, align 8, !tbaa !168
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %77, !llvm.loop !172

91:                                               ; preds = %88, %75
  %92 = call zeroext i8 @UI_panel_category_is_visible(ptr noundef %1) #13
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %91
  %95 = call ptr @UI_panel_category_active_get(ptr noundef %1, i8 noundef zeroext 1) #13
  br label %96

96:                                               ; preds = %91, %94, %73
  %97 = phi i1 [ %16, %94 ], [ true, %73 ], [ true, %91 ]
  %98 = phi ptr [ %95, %94 ], [ null, %73 ], [ null, %91 ]
  %99 = phi i32 [ %18, %94 ], [ 0, %73 ], [ 0, %91 ]
  %100 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1
  %101 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 1
  %102 = icmp eq ptr %74, null
  %103 = getelementptr inbounds %struct.uiStyle, ptr %12, i64 0, i32 15
  %104 = getelementptr inbounds %struct.uiStyle, ptr %12, i64 0, i32 15
  %105 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 1
  %106 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 3
  %107 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 2
  br label %108

108:                                              ; preds = %219, %96
  %109 = phi i32 [ 2, %96 ], [ %225, %219 ]
  br i1 %25, label %110, label %115

110:                                              ; preds = %108
  %111 = load float, ptr %101, align 4, !tbaa !173
  %112 = load float, ptr %100, align 4, !tbaa !174
  %113 = fsub float %111, %112
  %114 = fptosi float %113 to i32
  br label %115

115:                                              ; preds = %108, %110
  %116 = phi i32 [ %114, %110 ], [ 340, %108 ]
  %117 = load ptr, ptr %37, align 8, !tbaa !49
  %118 = getelementptr inbounds %struct.ARegionType, ptr %117, i64 0, i32 18
  %119 = load i32, ptr %118, align 8, !tbaa !134
  %120 = icmp eq i32 %119, 0
  %121 = select i1 %120, i32 20, i32 10
  %122 = sub nsw i32 %116, %99
  call void @uiBeginPanels(ptr noundef %0, ptr noundef %1) #13
  call void @UI_view2d_view_ortho(ptr noundef nonnull %13) #13
  br i1 %102, label %204, label %123

123:                                              ; preds = %115, %201
  %124 = phi ptr [ %202, %201 ], [ %74, %115 ]
  %125 = getelementptr inbounds %struct.LinkNode, ptr %124, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !170
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #13
  %127 = call ptr @uiPanelFindByType(ptr noundef %1, ptr noundef %126) #13
  br i1 %97, label %142, label %128

128:                                              ; preds = %123
  %129 = getelementptr inbounds %struct.PanelType, ptr %126, i64 0, i32 6
  %130 = load i8, ptr %129, align 8, !tbaa !163
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %142, label %132

132:                                              ; preds = %128
  %133 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %98, ptr noundef nonnull dereferenceable(1) %129) #14
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %142, label %135

135:                                              ; preds = %132
  %136 = icmp eq ptr %127, null
  br i1 %136, label %201, label %137

137:                                              ; preds = %135
  %138 = getelementptr inbounds %struct.Panel, ptr %127, i64 0, i32 13
  %139 = load i16, ptr %138, align 4, !tbaa !175
  %140 = and i16 %139, 32
  %141 = icmp eq i16 %140, 0
  br i1 %141, label %201, label %142

142:                                              ; preds = %137, %132, %128, %123
  %143 = getelementptr inbounds %struct.PanelType, ptr %126, i64 0, i32 2
  %144 = call ptr @uiBeginBlock(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %143, i16 noundef signext 0) #13
  %145 = call ptr @uiBeginPanel(ptr noundef %11, ptr noundef %1, ptr noundef %144, ptr noundef %126, ptr noundef %127, ptr noundef nonnull %10) #13
  %146 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !67
  %147 = sext i16 %146 to i32
  %148 = sitofp i16 %146 to float
  %149 = fmul float %148, 0x3FF19999A0000000
  %150 = fptosi float %149 to i32
  %151 = getelementptr inbounds %struct.PanelType, ptr %126, i64 0, i32 11
  %152 = load ptr, ptr %151, align 8, !tbaa !177
  %153 = icmp eq ptr %152, null
  br i1 %153, label %175, label %154

154:                                              ; preds = %142
  %155 = getelementptr inbounds %struct.PanelType, ptr %126, i64 0, i32 9
  %156 = load i32, ptr %155, align 8, !tbaa !178
  %157 = and i32 %156, 2
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %175

159:                                              ; preds = %154
  %160 = load i8, ptr %10, align 1, !tbaa !163
  %161 = icmp ne i8 %160, 0
  %162 = or i1 %25, %161
  br i1 %162, label %163, label %175

163:                                              ; preds = %159
  %164 = load i16, ptr %103, align 2, !tbaa !179
  %165 = sitofp i16 %164 to float
  %166 = call float @llvm.fmuladd.f32(float %148, float 0x3FF19999A0000000, float %165)
  %167 = fptosi float %166 to i32
  %168 = call ptr @uiBlockLayout(ptr noundef %144, i32 noundef 0, i32 noundef 1, i32 noundef %150, i32 noundef %167, i32 noundef %147, i32 noundef 1, i32 noundef 0, ptr noundef %12) #13
  %169 = getelementptr inbounds %struct.Panel, ptr %145, i64 0, i32 3
  store ptr %168, ptr %169, align 8, !tbaa !182
  %170 = load ptr, ptr %151, align 8, !tbaa !177
  call void %170(ptr noundef %0, ptr noundef %145) #13
  call void @uiBlockLayoutResolve(ptr noundef %144, ptr noundef nonnull %8, ptr noundef nonnull %9) #13
  %171 = load i32, ptr %8, align 4, !tbaa !59
  %172 = sub nsw i32 %171, %150
  %173 = trunc i32 %172 to i16
  %174 = getelementptr inbounds %struct.Panel, ptr %145, i64 0, i32 11
  store i16 %173, ptr %174, align 8, !tbaa !183
  store ptr null, ptr %169, align 8, !tbaa !182
  br label %177

175:                                              ; preds = %159, %154, %142
  %176 = getelementptr inbounds %struct.Panel, ptr %145, i64 0, i32 11
  store i16 0, ptr %176, align 8, !tbaa !183
  br label %177

177:                                              ; preds = %175, %163
  %178 = load i8, ptr %10, align 1, !tbaa !163
  %179 = icmp eq i8 %178, 0
  br i1 %179, label %198, label %180

180:                                              ; preds = %177
  %181 = load i16, ptr %14, align 2, !tbaa !104
  %182 = icmp eq i16 %181, 5
  %183 = select i1 %182, i32 3, i32 0
  %184 = load i16, ptr %104, align 2, !tbaa !179
  %185 = sext i16 %184 to i32
  %186 = shl nsw i32 %185, 1
  %187 = sub nsw i32 %122, %186
  %188 = call ptr @uiBlockLayout(ptr noundef %144, i32 noundef 1, i32 noundef %183, i32 noundef %185, i32 noundef 0, i32 noundef %187, i32 noundef %121, i32 noundef 0, ptr noundef %12) #13
  %189 = getelementptr inbounds %struct.Panel, ptr %145, i64 0, i32 3
  store ptr %188, ptr %189, align 8, !tbaa !182
  %190 = getelementptr inbounds %struct.PanelType, ptr %126, i64 0, i32 12
  %191 = load ptr, ptr %190, align 8, !tbaa !164
  call void %191(ptr noundef %0, ptr noundef %145) #13
  call void @uiBlockLayoutResolve(ptr noundef %144, ptr noundef nonnull %8, ptr noundef nonnull %9) #13
  store ptr null, ptr %189, align 8, !tbaa !182
  %192 = load i16, ptr %104, align 2, !tbaa !179
  %193 = sext i16 %192 to i32
  %194 = shl nsw i32 %193, 1
  %195 = load i32, ptr %9, align 4, !tbaa !59
  %196 = sub nsw i32 %195, %194
  store i32 %196, ptr %9, align 4, !tbaa !59
  %197 = sub nsw i32 0, %196
  br label %199

198:                                              ; preds = %177
  store i32 0, ptr %9, align 4, !tbaa !59
  br label %199

199:                                              ; preds = %198, %180
  %200 = phi i32 [ 0, %198 ], [ %197, %180 ]
  call void @uiEndPanel(ptr noundef %144, i32 noundef %122, i32 noundef %200) #13
  call void @uiEndBlock(ptr noundef %0, ptr noundef %144) #13
  br label %201

201:                                              ; preds = %135, %137, %199
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #13
  %202 = load ptr, ptr %124, align 8, !tbaa !168
  %203 = icmp eq ptr %202, null
  br i1 %203, label %204, label %123, !llvm.loop !184

204:                                              ; preds = %201, %115
  call void @uiEndPanels(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6, ptr noundef nonnull %7) #13
  br i1 %25, label %205, label %213

205:                                              ; preds = %204
  %206 = load float, ptr %106, align 4, !tbaa !185
  %207 = fcmp olt float %206, 0xBF50624DE0000000
  br i1 %207, label %208, label %219

208:                                              ; preds = %205
  %209 = load i32, ptr %7, align 4, !tbaa !59
  %210 = load float, ptr %107, align 8, !tbaa !186
  %211 = fptosi float %210 to i32
  %212 = call i32 @llvm.smin.i32(i32 %209, i32 %211)
  store i32 %212, ptr %7, align 4, !tbaa !59
  br label %219

213:                                              ; preds = %204
  br i1 %24, label %214, label %219

214:                                              ; preds = %213
  %215 = load i32, ptr %6, align 4, !tbaa !59
  %216 = load float, ptr %105, align 4, !tbaa !187
  %217 = fptosi float %216 to i32
  %218 = call i32 @llvm.smax.i32(i32 %217, i32 %215)
  store i32 %218, ptr %6, align 4, !tbaa !59
  br label %219

219:                                              ; preds = %213, %214, %205, %208
  %220 = load i32, ptr %7, align 4, !tbaa !59
  %221 = sub nsw i32 0, %220
  store i32 %221, ptr %7, align 4, !tbaa !59
  %222 = load i32, ptr %6, align 4, !tbaa !59
  call void @UI_view2d_totRect_set(ptr noundef nonnull %13, i32 noundef %222, i32 noundef %221) #13
  %223 = load i16, ptr %36, align 8, !tbaa !162
  %224 = icmp ne i16 %35, %223
  %225 = add nsw i32 %109, -1
  %226 = icmp ugt i32 %109, 1
  %227 = select i1 %224, i1 %226, i1 false
  br i1 %227, label %108, label %228, !llvm.loop !188

228:                                              ; preds = %219
  %229 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 17
  %230 = load i16, ptr %229, align 2, !tbaa !131
  %231 = icmp eq i16 %230, 0
  br i1 %231, label %248, label %232

232:                                              ; preds = %228
  call void @UI_view2d_view_restore(ptr noundef %0) #13
  call void @glEnable(i32 noundef 3042) #13
  %233 = load ptr, ptr %37, align 8, !tbaa !49
  %234 = getelementptr inbounds %struct.ARegionType, ptr %233, i64 0, i32 2
  %235 = load i32, ptr %234, align 8, !tbaa !62
  %236 = icmp eq i32 %235, 7
  %237 = select i1 %236, i32 133, i32 2
  call void @UI_ThemeColor4(i32 noundef %237) #13
  %238 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %239 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 1
  %240 = load i32, ptr %239, align 4, !tbaa !92
  %241 = load i32, ptr %238, align 4, !tbaa !90
  %242 = sub nsw i32 %240, %241
  %243 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 3
  %244 = load i32, ptr %243, align 4, !tbaa !93
  %245 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 2
  %246 = load i32, ptr %245, align 4, !tbaa !91
  %247 = sub nsw i32 %244, %246
  call void @glRecti(i32 noundef 0, i32 noundef 0, i32 noundef %242, i32 noundef %247) #13
  call void @glDisable(i32 noundef 3042) #13
  br label %254

248:                                              ; preds = %228
  %249 = load ptr, ptr %37, align 8, !tbaa !49
  %250 = getelementptr inbounds %struct.ARegionType, ptr %249, i64 0, i32 2
  %251 = load i32, ptr %250, align 8, !tbaa !62
  %252 = icmp eq i32 %251, 7
  %253 = select i1 %252, i32 133, i32 2
  call void @UI_ThemeClearColor(i32 noundef %253) #13
  call void @glClear(i32 noundef 16384) #13
  br label %254

254:                                              ; preds = %248, %232
  call void @UI_view2d_view_ortho(ptr noundef nonnull %13) #13
  call void @uiDrawPanels(ptr noundef %0, ptr noundef %1) #13
  call void @UI_view2d_view_restore(ptr noundef %0) #13
  br i1 %97, label %256, label %255

255:                                              ; preds = %254
  call void @UI_panel_category_draw_all(ptr noundef %1, ptr noundef %98) #13
  br label %256

256:                                              ; preds = %255, %254
  %257 = call ptr @UI_view2d_scrollers_calc(ptr noundef %0, ptr noundef nonnull %13, i16 noundef signext -1, i16 noundef signext -1, i16 noundef signext -1, i16 noundef signext -1) #13
  call void @UI_view2d_scrollers_draw(ptr noundef %0, ptr noundef nonnull %13, ptr noundef %257) #13
  call void @UI_view2d_scrollers_free(ptr noundef %257) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  ret void
}

declare ptr @UI_GetStyleDraw() local_unnamed_addr #1

declare zeroext i8 @UI_view2d_tab_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

declare void @UI_panel_category_clear_all(ptr noundef) local_unnamed_addr #1

declare ptr @UI_panel_category_find(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @UI_panel_category_add(ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @UI_panel_category_is_visible(ptr noundef) local_unnamed_addr #1

declare ptr @UI_panel_category_active_get(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare void @uiBeginPanels(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @UI_view2d_view_ortho(ptr noundef) local_unnamed_addr #1

declare ptr @uiPanelFindByType(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @uiBeginBlock(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

declare ptr @uiBeginPanel(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @uiBlockLayout(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

declare void @uiBlockLayoutResolve(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @uiEndPanel(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @uiEndBlock(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @uiEndPanels(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @UI_view2d_totRect_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @UI_view2d_view_restore(ptr noundef) local_unnamed_addr #1

declare void @glEnable(i32 noundef) local_unnamed_addr #1

declare void @UI_ThemeColor4(i32 noundef) local_unnamed_addr #1

declare void @glRecti(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @glDisable(i32 noundef) local_unnamed_addr #1

declare void @uiDrawPanels(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @UI_panel_category_draw_all(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @UI_view2d_scrollers_calc(ptr noundef, ptr noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext) local_unnamed_addr #1

declare void @UI_view2d_scrollers_draw(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @UI_view2d_scrollers_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ED_region_panels_init(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  %4 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %5 = load i16, ptr %4, align 8, !tbaa !141
  %6 = sext i16 %5 to i32
  %7 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %8 = load i16, ptr %7, align 2, !tbaa !142
  %9 = sext i16 %8 to i32
  tail call void @UI_view2d_region_reinit(ptr noundef nonnull %3, i16 noundef signext 4, i32 noundef %6, i32 noundef %9) #13
  %10 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %11 = load ptr, ptr %10, align 8, !tbaa !145
  %12 = tail call ptr @WM_keymap_find(ptr noundef %11, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef 0) #13
  %13 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 26
  %14 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %13, ptr noundef %12) #13
  ret void
}

declare void @UI_view2d_region_reinit(ptr noundef, i16 noundef signext, i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @WM_keymap_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @WM_event_add_keymap_handler(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ED_region_header(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.Header, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = tail call ptr @UI_GetStyleDraw() #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  %7 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !88
  %8 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !89
  %9 = sitofp i32 %8 to float
  %10 = fmul float %7, %9
  %11 = fdiv float %10, 7.200000e+01
  %12 = fmul float %11, 2.600000e+01
  %13 = fptosi float %12 to i32
  %14 = tail call i32 @ED_screen_area_active(ptr noundef %0) #13
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %15, i32 11, i32 10
  tail call void @UI_ThemeClearColor(i32 noundef %16) #13
  tail call void @glClear(i32 noundef 16384) #13
  %17 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  tail call void @UI_view2d_view_ortho(ptr noundef nonnull %17) #13
  %18 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !67
  %19 = sitofp i16 %18 to float
  %20 = fmul float %19, 0x3FD99999A0000000
  %21 = fptosi float %20 to i32
  store i32 %21, ptr %4, align 4, !tbaa !59
  %22 = sitofp i32 %13 to double
  %23 = fmul float %19, 0x3FC99999A0000000
  %24 = tail call float @llvm.floor.f32(float %23)
  %25 = fpext float %24 to double
  %26 = fsub double %22, %25
  %27 = fptosi double %26 to i32
  store i32 %27, ptr %5, align 4, !tbaa !59
  %28 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 20
  %29 = load ptr, ptr %28, align 8, !tbaa !49
  %30 = getelementptr inbounds %struct.ARegionType, ptr %29, i64 0, i32 15
  %31 = load ptr, ptr %30, align 8, !tbaa !74
  %32 = icmp eq ptr %31, null
  br i1 %32, label %57, label %33

33:                                               ; preds = %2
  %34 = getelementptr inbounds %struct.Header, ptr %3, i64 0, i32 1
  br label %35

35:                                               ; preds = %33, %51
  %36 = phi ptr [ %31, %33 ], [ %55, %51 ]
  %37 = phi i32 [ %21, %33 ], [ %54, %51 ]
  %38 = getelementptr inbounds %struct.HeaderType, ptr %36, i64 0, i32 2
  %39 = call ptr @uiBeginBlock(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %38, i16 noundef signext 0) #13
  %40 = load i32, ptr %4, align 4, !tbaa !59
  %41 = load i32, ptr %5, align 4, !tbaa !59
  %42 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !67
  %43 = sext i16 %42 to i32
  %44 = call ptr @uiBlockLayout(ptr noundef %39, i32 noundef 0, i32 noundef 1, i32 noundef %40, i32 noundef %41, i32 noundef %43, i32 noundef 1, i32 noundef 0, ptr noundef %6) #13
  %45 = getelementptr inbounds %struct.HeaderType, ptr %36, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !189
  %47 = icmp eq ptr %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %35
  store ptr %36, ptr %3, align 8, !tbaa !191
  store ptr %44, ptr %34, align 8, !tbaa !193
  call void %46(ptr noundef %0, ptr noundef nonnull %3) #13
  %49 = call i32 @uiLayoutGetWidth(ptr noundef %44) #13
  store i32 %49, ptr %4, align 4, !tbaa !59
  %50 = call i32 @llvm.smax.i32(i32 %49, i32 %37)
  br label %51

51:                                               ; preds = %48, %35
  %52 = phi i32 [ %37, %35 ], [ %50, %48 ]
  call void @uiBlockLayoutResolve(ptr noundef %39, ptr noundef nonnull %4, ptr noundef nonnull %5) #13
  %53 = load i32, ptr %4, align 4, !tbaa !59
  %54 = call i32 @llvm.smax.i32(i32 %53, i32 %52)
  call void @uiEndBlock(ptr noundef %0, ptr noundef %39) #13
  call void @uiDrawBlock(ptr noundef %0, ptr noundef %39) #13
  %55 = load ptr, ptr %36, align 8, !tbaa !74
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %35, !llvm.loop !194

57:                                               ; preds = %51, %2
  %58 = phi i32 [ %21, %2 ], [ %54, %51 ]
  %59 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !67
  %60 = sext i16 %59 to i32
  %61 = add i32 %58, 80
  %62 = add i32 %61, %60
  call void @UI_view2d_totRect_set(ptr noundef nonnull %17, i32 noundef %62, i32 noundef %13) #13
  call void @UI_view2d_view_restore(ptr noundef %0) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @ED_area_headersize() local_unnamed_addr #10 {
  %1 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !88
  %2 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !89
  %3 = sitofp i32 %2 to float
  %4 = fmul float %1, %3
  %5 = fdiv float %4, 7.200000e+01
  %6 = fmul float %5, 2.600000e+01
  %7 = fptosi float %6 to i32
  ret i32 %7
}

declare i32 @ED_screen_area_active(ptr noundef) local_unnamed_addr #1

declare i32 @uiLayoutGetWidth(ptr noundef) local_unnamed_addr #1

declare void @uiDrawBlock(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ED_region_header_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 5
  %4 = load i16, ptr %3, align 8, !tbaa !141
  %5 = sext i16 %4 to i32
  %6 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 6
  %7 = load i16, ptr %6, align 2, !tbaa !142
  %8 = sext i16 %7 to i32
  tail call void @UI_view2d_region_reinit(ptr noundef nonnull %2, i16 noundef signext 3, i32 noundef %5, i32 noundef %8) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_region_info_draw(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [4 x i32], align 16
  %6 = alloca %struct.rcti, align 4
  %7 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !67
  %8 = sext i16 %7 to i32
  %9 = tail call ptr @UI_GetStyleDraw() #13
  %10 = getelementptr inbounds %struct.uiStyle, ptr %9, i64 0, i32 6
  %11 = load i16, ptr %10, align 8, !tbaa !195
  %12 = sext i16 %11 to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #13
  call void @ED_region_visible_rect(ptr noundef %0, ptr noundef nonnull %6)
  %13 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3, i32 3
  %14 = load i32, ptr %13, align 4, !tbaa !93
  %15 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !91
  %17 = add i32 %16, %8
  %18 = sub i32 %14, %17
  %19 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 2
  store i32 %18, ptr %19, align 4, !tbaa !91
  %20 = icmp eq i32 %2, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %4
  %22 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 1
  %23 = load i32, ptr %22, align 4, !tbaa !92
  %24 = load i32, ptr %6, align 4, !tbaa !90
  %25 = sitofp i32 %24 to float
  %26 = call float @BLF_width(i32 noundef %12, ptr noundef %1, i64 noundef 1024) #13
  %27 = fadd float %26, %25
  %28 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !67
  %29 = sitofp i16 %28 to float
  %30 = call float @llvm.fmuladd.f32(float %29, float 0x3FF3333340000000, float %27)
  %31 = fptosi float %30 to i32
  %32 = call i32 @llvm.smin.i32(i32 %23, i32 %31)
  store i32 %32, ptr %22, align 4, !tbaa !92
  br label %33

33:                                               ; preds = %21, %4
  %34 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3
  %35 = load i32, ptr %13, align 4, !tbaa !93
  %36 = load i32, ptr %15, align 4, !tbaa !91
  %37 = sub nsw i32 %35, %36
  %38 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 3
  store i32 %37, ptr %38, align 4, !tbaa !93
  call void @glGetIntegerv(i32 noundef 3088, ptr noundef nonnull %5) #13
  %39 = load i32, ptr %34, align 8, !tbaa !72
  %40 = load i32, ptr %6, align 4, !tbaa !90
  %41 = add nsw i32 %40, %39
  %42 = load i32, ptr %15, align 8, !tbaa !73
  %43 = load i32, ptr %19, align 4, !tbaa !91
  %44 = add nsw i32 %43, %42
  %45 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 1
  %46 = load i32, ptr %45, align 4, !tbaa !92
  %47 = sub i32 %46, %40
  %48 = add i32 %47, 1
  %49 = load i32, ptr %38, align 4, !tbaa !93
  %50 = sub i32 %49, %43
  %51 = add i32 %50, 1
  call void @glScissor(i32 noundef %41, i32 noundef %44, i32 noundef %48, i32 noundef %51) #13
  call void @glEnable(i32 noundef 3042) #13
  call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #13
  call void @glColor4fv(ptr noundef %3) #13
  %52 = load i32, ptr %6, align 4, !tbaa !90
  %53 = load i32, ptr %19, align 4, !tbaa !91
  %54 = load i32, ptr %45, align 4, !tbaa !92
  %55 = add nsw i32 %54, 1
  %56 = load i32, ptr %38, align 4, !tbaa !93
  %57 = add nsw i32 %56, 1
  call void @glRecti(i32 noundef %52, i32 noundef %53, i32 noundef %55, i32 noundef %57) #13
  call void @glDisable(i32 noundef 3042) #13
  call void @UI_ThemeColor(i32 noundef 4) #13
  %58 = load i32, ptr %6, align 4, !tbaa !90
  %59 = sitofp i32 %58 to float
  %60 = load i32, ptr %19, align 4, !tbaa !91
  %61 = sitofp i32 %60 to float
  %62 = load i32, ptr %45, align 4, !tbaa !92
  %63 = sitofp i32 %62 to float
  %64 = load i32, ptr %38, align 4, !tbaa !93
  %65 = sitofp i32 %64 to float
  call void @BLF_clipping(i32 noundef %12, float noundef %59, float noundef %61, float noundef %63, float noundef %65) #13
  call void @BLF_enable(i32 noundef %12, i32 noundef 2) #13
  %66 = load i32, ptr %6, align 4, !tbaa !90
  %67 = sitofp i32 %66 to float
  %68 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !67
  %69 = sitofp i16 %68 to float
  %70 = call float @llvm.fmuladd.f32(float %69, float 0x3FE3333340000000, float %67)
  %71 = load i32, ptr %19, align 4, !tbaa !91
  %72 = sitofp i32 %71 to float
  %73 = call float @llvm.fmuladd.f32(float %69, float 0x3FD3333340000000, float %72)
  call void @BLF_position(i32 noundef %12, float noundef %70, float noundef %73, float noundef 0.000000e+00) #13
  call void @BLF_draw(i32 noundef %12, ptr noundef %1, i64 noundef 1024) #13
  call void @BLF_disable(i32 noundef %12, i32 noundef 2) #13
  %74 = load i32, ptr %5, align 16, !tbaa !59
  %75 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 1
  %76 = load i32, ptr %75, align 4, !tbaa !59
  %77 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 2
  %78 = load i32, ptr %77, align 8, !tbaa !59
  %79 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 3
  %80 = load i32, ptr %79, align 4, !tbaa !59
  call void @glScissor(i32 noundef %74, i32 noundef %76, i32 noundef %78, i32 noundef %80) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_region_visible_rect(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi ptr [ %0, %2 ], [ %6, %3 ]
  %5 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !126
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %3, !llvm.loop !196

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !58
  %10 = icmp eq ptr %4, null
  br i1 %10, label %45, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 1
  br label %13

13:                                               ; preds = %11, %42
  %14 = phi ptr [ %4, %11 ], [ %43, %42 ]
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %42, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 17
  %18 = load i16, ptr %17, align 2, !tbaa !131
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %42, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 3
  %22 = tail call zeroext i8 @BLI_rcti_isect(ptr noundef %1, ptr noundef nonnull %21, ptr noundef null) #13
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %42, label %24

24:                                               ; preds = %20
  %25 = load i32, ptr %1, align 4, !tbaa !90
  %26 = load i32, ptr %21, align 8, !tbaa !72
  %27 = sub nsw i32 %25, %26
  %28 = tail call i32 @llvm.abs.i32(i32 %27, i1 true)
  %29 = icmp ult i32 %28, 2
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 3, i32 1
  %32 = load i32, ptr %31, align 4, !tbaa !138
  store i32 %32, ptr %1, align 4, !tbaa !90
  br label %33

33:                                               ; preds = %30, %24
  %34 = load i32, ptr %12, align 4, !tbaa !92
  %35 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 3, i32 1
  %36 = load i32, ptr %35, align 4, !tbaa !138
  %37 = sub nsw i32 %34, %36
  %38 = tail call i32 @llvm.abs.i32(i32 %37, i1 true)
  %39 = icmp ult i32 %38, 2
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, ptr %21, align 8, !tbaa !72
  store i32 %41, ptr %12, align 4, !tbaa !92
  br label %42

42:                                               ; preds = %13, %16, %33, %40, %20
  %43 = load ptr, ptr %14, align 8, !tbaa !132
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %13, !llvm.loop !197

45:                                               ; preds = %42, %8
  %46 = load i32, ptr %9, align 8, !tbaa !72
  %47 = sub nsw i32 0, %46
  %48 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3, i32 2
  %49 = load i32, ptr %48, align 8, !tbaa !73
  %50 = sub nsw i32 0, %49
  tail call void @BLI_rcti_translate(ptr noundef %1, i32 noundef %47, i32 noundef %50) #13
  ret void
}

declare float @BLF_width(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @glGetIntegerv(i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @glScissor(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @glBlendFunc(i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @glColor4fv(ptr noundef) local_unnamed_addr #1

declare void @BLF_clipping(i32 noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

declare void @BLF_enable(i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @BLF_position(i32 noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

declare void @BLF_draw(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @BLF_disable(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ED_region_grid_draw(ptr noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #13
  tail call void @UI_ThemeColorShade(i32 noundef 2, i32 noundef 20) #13
  %8 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 2
  call void @UI_view2d_view_to_region(ptr noundef nonnull %8, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull %4, ptr noundef nonnull %5) #13
  call void @UI_view2d_view_to_region(ptr noundef nonnull %8, float noundef 1.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull %6, ptr noundef nonnull %7) #13
  %9 = load i32, ptr %4, align 4, !tbaa !59
  %10 = sitofp i32 %9 to float
  %11 = load i32, ptr %5, align 4, !tbaa !59
  %12 = sitofp i32 %11 to float
  %13 = load i32, ptr %6, align 4, !tbaa !59
  %14 = sitofp i32 %13 to float
  %15 = load i32, ptr %7, align 4, !tbaa !59
  %16 = sitofp i32 %15 to float
  call void @glRectf(float noundef %10, float noundef %12, float noundef %14, float noundef %16) #13
  %17 = fadd float %1, %2
  %18 = fmul float %17, 5.000000e-01
  %19 = fcmp ugt float %18, 0.000000e+00
  br i1 %19, label %20, label %130

20:                                               ; preds = %3
  %21 = fcmp olt float %18, 1.000000e+00
  br i1 %21, label %24, label %22

22:                                               ; preds = %20
  %23 = fcmp ult float %18, 4.000000e+00
  br i1 %23, label %38, label %32

24:                                               ; preds = %20
  %25 = fcmp olt float %18, 1.000000e+00
  br i1 %25, label %26, label %38

26:                                               ; preds = %24, %26
  %27 = phi float [ %30, %26 ], [ 3.125000e-02, %24 ]
  %28 = phi float [ %29, %26 ], [ %18, %24 ]
  %29 = fmul float %28, 4.000000e+00
  %30 = fmul float %27, 4.000000e+00
  %31 = fcmp olt float %29, 1.000000e+00
  br i1 %31, label %26, label %38, !llvm.loop !198

32:                                               ; preds = %22, %32
  %33 = phi float [ %36, %32 ], [ 3.125000e-02, %22 ]
  %34 = phi float [ %35, %32 ], [ %18, %22 ]
  %35 = fmul float %34, 2.500000e-01
  %36 = fmul float %33, 2.500000e-01
  %37 = fcmp ult float %35, 4.000000e+00
  br i1 %37, label %38, label %32, !llvm.loop !199

38:                                               ; preds = %32, %26, %22, %24
  %39 = phi float [ %18, %24 ], [ %18, %22 ], [ %29, %26 ], [ %35, %32 ]
  %40 = phi float [ 3.125000e-02, %24 ], [ 3.125000e-02, %22 ], [ %30, %26 ], [ %36, %32 ]
  %41 = fmul float %39, 2.500000e-01
  %42 = call float @llvm.floor.f32(float %41)
  %43 = fneg float %42
  %44 = call float @llvm.fmuladd.f32(float %39, float 2.500000e-01, float %43)
  %45 = fcmp olt float %44, 0.000000e+00
  br i1 %45, label %49, label %46

46:                                               ; preds = %38
  %47 = fcmp ogt float %44, 1.000000e+00
  br i1 %47, label %48, label %49

48:                                               ; preds = %46
  br label %49

49:                                               ; preds = %38, %46, %48
  %50 = phi float [ 1.000000e+00, %48 ], [ %44, %46 ], [ 0.000000e+00, %38 ]
  %51 = fsub float 1.000000e+00, %50
  %52 = fmul float %51, 2.000000e+01
  %53 = fptosi float %52 to i32
  call void @UI_ThemeColorShade(i32 noundef 2, i32 noundef %53) #13
  call void @glBegin(i32 noundef 1) #13
  br label %54

54:                                               ; preds = %49, %54
  %55 = phi float [ 0.000000e+00, %49 ], [ %89, %54 ]
  %56 = load i32, ptr %4, align 4, !tbaa !59
  %57 = sitofp i32 %56 to float
  %58 = load i32, ptr %5, align 4, !tbaa !59
  %59 = sitofp i32 %58 to float
  %60 = fsub float 1.000000e+00, %55
  %61 = load i32, ptr %7, align 4, !tbaa !59
  %62 = sitofp i32 %61 to float
  %63 = fmul float %55, %62
  %64 = call float @llvm.fmuladd.f32(float %59, float %60, float %63)
  call void @glVertex2f(float noundef %57, float noundef %64) #13
  %65 = load i32, ptr %6, align 4, !tbaa !59
  %66 = sitofp i32 %65 to float
  %67 = load i32, ptr %5, align 4, !tbaa !59
  %68 = sitofp i32 %67 to float
  %69 = load i32, ptr %7, align 4, !tbaa !59
  %70 = sitofp i32 %69 to float
  %71 = fmul float %55, %70
  %72 = call float @llvm.fmuladd.f32(float %68, float %60, float %71)
  call void @glVertex2f(float noundef %66, float noundef %72) #13
  %73 = load i32, ptr %4, align 4, !tbaa !59
  %74 = sitofp i32 %73 to float
  %75 = load i32, ptr %6, align 4, !tbaa !59
  %76 = sitofp i32 %75 to float
  %77 = fmul float %55, %76
  %78 = call float @llvm.fmuladd.f32(float %74, float %60, float %77)
  %79 = load i32, ptr %5, align 4, !tbaa !59
  %80 = sitofp i32 %79 to float
  call void @glVertex2f(float noundef %78, float noundef %80) #13
  %81 = load i32, ptr %4, align 4, !tbaa !59
  %82 = sitofp i32 %81 to float
  %83 = load i32, ptr %6, align 4, !tbaa !59
  %84 = sitofp i32 %83 to float
  %85 = fmul float %55, %84
  %86 = call float @llvm.fmuladd.f32(float %82, float %60, float %85)
  %87 = load i32, ptr %7, align 4, !tbaa !59
  %88 = sitofp i32 %87 to float
  call void @glVertex2f(float noundef %86, float noundef %88) #13
  %89 = fadd float %40, %55
  %90 = fcmp olt float %89, 1.000000e+00
  br i1 %90, label %54, label %91, !llvm.loop !200

91:                                               ; preds = %54
  call void @UI_ThemeColor(i32 noundef 2) #13
  br label %92

92:                                               ; preds = %91, %92
  %93 = phi float [ 0.000000e+00, %91 ], [ %127, %92 ]
  %94 = load i32, ptr %4, align 4, !tbaa !59
  %95 = sitofp i32 %94 to float
  %96 = load i32, ptr %5, align 4, !tbaa !59
  %97 = sitofp i32 %96 to float
  %98 = fsub float 1.000000e+00, %93
  %99 = load i32, ptr %7, align 4, !tbaa !59
  %100 = sitofp i32 %99 to float
  %101 = fmul float %93, %100
  %102 = call float @llvm.fmuladd.f32(float %97, float %98, float %101)
  call void @glVertex2f(float noundef %95, float noundef %102) #13
  %103 = load i32, ptr %6, align 4, !tbaa !59
  %104 = sitofp i32 %103 to float
  %105 = load i32, ptr %5, align 4, !tbaa !59
  %106 = sitofp i32 %105 to float
  %107 = load i32, ptr %7, align 4, !tbaa !59
  %108 = sitofp i32 %107 to float
  %109 = fmul float %93, %108
  %110 = call float @llvm.fmuladd.f32(float %106, float %98, float %109)
  call void @glVertex2f(float noundef %104, float noundef %110) #13
  %111 = load i32, ptr %4, align 4, !tbaa !59
  %112 = sitofp i32 %111 to float
  %113 = load i32, ptr %6, align 4, !tbaa !59
  %114 = sitofp i32 %113 to float
  %115 = fmul float %93, %114
  %116 = call float @llvm.fmuladd.f32(float %112, float %98, float %115)
  %117 = load i32, ptr %5, align 4, !tbaa !59
  %118 = sitofp i32 %117 to float
  call void @glVertex2f(float noundef %116, float noundef %118) #13
  %119 = load i32, ptr %4, align 4, !tbaa !59
  %120 = sitofp i32 %119 to float
  %121 = load i32, ptr %6, align 4, !tbaa !59
  %122 = sitofp i32 %121 to float
  %123 = fmul float %93, %122
  %124 = call float @llvm.fmuladd.f32(float %120, float %98, float %123)
  %125 = load i32, ptr %7, align 4, !tbaa !59
  %126 = sitofp i32 %125 to float
  call void @glVertex2f(float noundef %124, float noundef %126) #13
  %127 = call float @llvm.fmuladd.f32(float %40, float 4.000000e+00, float %93)
  %128 = fcmp olt float %127, 1.000000e+00
  br i1 %128, label %92, label %129, !llvm.loop !201

129:                                              ; preds = %92
  call void @glEnd() #13
  br label %130

130:                                              ; preds = %3, %129
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret void
}

declare void @UI_ThemeColorShade(i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @UI_view2d_view_to_region(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @glRectf(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #8

declare void @glBegin(i32 noundef) local_unnamed_addr #1

declare void @glVertex2f(float noundef, float noundef) local_unnamed_addr #1

declare void @glEnd() local_unnamed_addr #1

declare void @BLI_rcti_translate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ED_region_cache_draw_background(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  tail call void @glColor4ub(i8 noundef zeroext -128, i8 noundef zeroext -128, i8 noundef zeroext -1, i8 noundef zeroext 64) #13
  %2 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 5
  %3 = load i16, ptr %2, align 8, !tbaa !141
  %4 = sext i16 %3 to i32
  %5 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !88
  %6 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !89
  %7 = sitofp i32 %6 to float
  %8 = fmul float %5, %7
  %9 = fdiv float %8, 7.200000e+01
  %10 = fmul float %9, 8.000000e+00
  %11 = fptosi float %10 to i32
  tail call void @glRecti(i32 noundef 0, i32 noundef 0, i32 noundef %4, i32 noundef %11) #13
  ret void
}

declare void @glColor4ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ED_region_cache_draw_curfra_label(i32 noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #0 {
  %4 = alloca [32 x i8], align 16
  %5 = alloca [2 x float], align 8
  %6 = tail call ptr @UI_GetStyle() #13
  %7 = getelementptr inbounds %struct.uiStyle, ptr %6, i64 0, i32 6
  %8 = load i16, ptr %7, align 8, !tbaa !195
  %9 = sext i16 %8 to i32
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  store i64 0, ptr %5, align 8
  %10 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !88
  %11 = fmul float %10, 1.100000e+01
  %12 = fptosi float %11 to i32
  %13 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !89
  tail call void @BLF_size(i32 noundef %9, i32 noundef %12, i32 noundef %13) #13
  %14 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 32, ptr noundef nonnull @.str.5, i32 noundef %0) #13
  %15 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  call void @BLF_width_and_height(i32 noundef %9, ptr noundef nonnull %4, i64 noundef 32, ptr noundef nonnull %5, ptr noundef nonnull %15) #13
  %16 = fptosi float %1 to i32
  %17 = fptosi float %2 to i32
  %18 = load float, ptr %5, align 8, !tbaa !86
  %19 = fadd float %18, %1
  %20 = fadd float %19, 6.000000e+00
  %21 = fptosi float %20 to i32
  %22 = load float, ptr %15, align 4, !tbaa !86
  %23 = fadd float %22, %2
  %24 = fadd float %23, 4.000000e+00
  %25 = fptosi float %24 to i32
  call void @glRecti(i32 noundef %16, i32 noundef %17, i32 noundef %21, i32 noundef %25) #13
  call void @UI_ThemeColor(i32 noundef 3) #13
  %26 = fadd float %1, 2.000000e+00
  %27 = fadd float %2, 2.000000e+00
  call void @BLF_position(i32 noundef %9, float noundef %26, float noundef %27, float noundef 0.000000e+00) #13
  call void @BLF_draw(i32 noundef %9, ptr noundef nonnull %4, i64 noundef 32) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #13
  ret void
}

declare ptr @UI_GetStyle() local_unnamed_addr #1

declare void @BLF_size(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

declare void @BLF_width_and_height(i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ED_region_cache_draw_cached_segments(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %45, label %7

7:                                                ; preds = %5
  tail call void @glColor4ub(i8 noundef zeroext -128, i8 noundef zeroext -128, i8 noundef zeroext -1, i8 noundef zeroext -128) #13
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
  %19 = load i32, ptr %18, align 4, !tbaa !59
  %20 = sub nsw i32 %19, %3
  %21 = sitofp i32 %20 to float
  %22 = fdiv float %21, %12
  %23 = load i16, ptr %13, align 8, !tbaa !141
  %24 = sitofp i16 %23 to float
  %25 = fmul float %22, %24
  %26 = or disjoint i64 %17, 1
  %27 = getelementptr inbounds i32, ptr %2, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !59
  %29 = sub i32 %28, %3
  %30 = add i32 %29, 1
  %31 = sitofp i32 %30 to float
  %32 = fdiv float %31, %12
  %33 = fmul float %32, %24
  %34 = fptosi float %25 to i32
  %35 = fptosi float %33 to i32
  %36 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !88
  %37 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !89
  %38 = sitofp i32 %37 to float
  %39 = fmul float %36, %38
  %40 = fdiv float %39, 7.200000e+01
  %41 = fmul float %40, 8.000000e+00
  %42 = fptosi float %41 to i32
  tail call void @glRecti(i32 noundef %34, i32 noundef 0, i32 noundef %35, i32 noundef %42) #13
  %43 = add nuw nsw i64 %16, 1
  %44 = icmp eq i64 %43, %14
  br i1 %44, label %45, label %15, !llvm.loop !202

45:                                               ; preds = %15, %7, %5
  ret void
}

declare void @glPushMatrix() local_unnamed_addr #1

declare void @glTranslatef(float noundef, float noundef, float noundef) local_unnamed_addr #1

declare void @BLI_rcti_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @glPopMatrix() local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.copysign.f64(double, double) #8

declare void @fdrawline(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

declare ptr @gluNewQuadric() local_unnamed_addr #1

declare void @glColor4f(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

declare void @gluQuadricDrawStyle(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @gluDisk(ptr noundef, double noundef, double noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @gluDeleteQuadric(ptr noundef) local_unnamed_addr #1

declare void @sdrawline(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @ui_draw_anti_tria(float noundef, float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

declare void @UI_GetThemeColor3fv(i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @uiSetRoundBox(i32 noundef) local_unnamed_addr #1

declare void @uiDrawBoxShade(i32 noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

declare void @uiRoundRect(float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

declare void @uiRoundBox(float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

declare void @UI_icon_draw_aspect(float noundef, float noundef, i32 noundef, float noundef, float noundef) local_unnamed_addr #1

declare void @fdrawbox(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

declare zeroext i8 @WM_is_draw_triple(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @region_azone_initialize(ptr noundef %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 10
  %6 = load i16, ptr %5, align 2, !tbaa !82
  %7 = and i16 %6, 3
  %8 = icmp ne i16 %7, 0
  %9 = icmp ne i8 %3, 0
  %10 = and i1 %9, %8
  br i1 %10, label %18, label %11

11:                                               ; preds = %4
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !74
  %13 = tail call ptr %12(i64 noundef 64, ptr noundef nonnull @.str.6) #13
  %14 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 22
  tail call void @BLI_addtail(ptr noundef nonnull %14, ptr noundef %13) #13
  %15 = getelementptr inbounds %struct.AZone, ptr %13, i64 0, i32 3
  store i32 2, ptr %15, align 8, !tbaa !80
  %16 = getelementptr inbounds %struct.AZone, ptr %13, i64 0, i32 2
  store ptr %1, ptr %16, align 8, !tbaa !81
  %17 = getelementptr inbounds %struct.AZone, ptr %13, i64 0, i32 4
  store i32 %2, ptr %17, align 4, !tbaa !85
  br label %18

18:                                               ; preds = %4, %11
  %19 = phi ptr [ undef, %4 ], [ %13, %11 ]
  %20 = load i16, ptr %5, align 2, !tbaa !82
  %21 = and i16 %20, 3
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %491, label %23

23:                                               ; preds = %18
  br i1 %9, label %587, label %24

24:                                               ; preds = %23
  %25 = load i16, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 14), align 4, !tbaa !83
  switch i16 %25, label %401 [
    i16 3, label %26
    i16 2, label %217
    i16 1, label %309
  ]

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 22
  %28 = load ptr, ptr %27, align 8, !tbaa !74
  %29 = icmp eq ptr %28, null
  br i1 %29, label %43, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.AZone, ptr %19, i64 0, i32 4
  %32 = load i32, ptr %31, align 4, !tbaa !85
  br label %33

33:                                               ; preds = %30, %33
  %34 = phi ptr [ %28, %30 ], [ %41, %33 ]
  %35 = phi i32 [ 0, %30 ], [ %40, %33 ]
  %36 = getelementptr inbounds %struct.AZone, ptr %34, i64 0, i32 4
  %37 = load i32, ptr %36, align 4, !tbaa !85
  %38 = icmp eq i32 %37, %32
  %39 = zext i1 %38 to i32
  %40 = add nuw nsw i32 %35, %39
  %41 = load ptr, ptr %34, align 8, !tbaa !74
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %33, !llvm.loop !203

43:                                               ; preds = %33, %26
  %44 = phi i32 [ 0, %26 ], [ %40, %33 ]
  %45 = getelementptr inbounds %struct.AZone, ptr %19, i64 0, i32 4
  %46 = load i32, ptr %45, align 4, !tbaa !85
  switch i32 %46, label %146 [
    i32 2, label %47
    i32 3, label %72
    i32 1, label %92
    i32 0, label %117
  ]

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 1
  %49 = load i32, ptr %48, align 4, !tbaa !138
  %50 = sitofp i32 %49 to float
  %51 = shl nuw nsw i32 %44, 1
  %52 = sitofp i32 %51 to float
  %53 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !67
  %54 = sitofp i16 %53 to float
  %55 = fmul float %54, 0x3FDCCCCCC0000000
  %56 = fneg float %52
  %57 = tail call float @llvm.fmuladd.f32(float %56, float %55, float %50)
  %58 = fptosi float %57 to i16
  %59 = getelementptr inbounds %struct.AZone, ptr %19, i64 0, i32 5
  store i16 %58, ptr %59, align 8, !tbaa !75
  %60 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 3
  %61 = load i32, ptr %60, align 4, !tbaa !137
  %62 = sitofp i32 %61 to float
  %63 = tail call float @llvm.fmuladd.f32(float %54, float 0x3FDCCCCCC0000000, float %62)
  %64 = fptosi float %63 to i16
  %65 = getelementptr inbounds %struct.AZone, ptr %19, i64 0, i32 6
  store i16 %64, ptr %65, align 2, !tbaa !78
  %66 = sitofp i32 %44 to float
  %67 = fneg float %66
  %68 = tail call float @llvm.fmuladd.f32(float %67, float %55, float %50)
  %69 = fptosi float %68 to i16
  %70 = getelementptr inbounds %struct.AZone, ptr %19, i64 0, i32 7
  store i16 %69, ptr %70, align 4, !tbaa !77
  %71 = tail call float @llvm.fmuladd.f32(float %55, float 2.000000e+00, float %62)
  br label %142

72:                                               ; preds = %43
  %73 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %74 = load i32, ptr %73, align 8, !tbaa !72
  %75 = sitofp i32 %74 to float
  %76 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !67
  %77 = sitofp i16 %76 to float
  %78 = tail call float @llvm.fmuladd.f32(float %77, float 0x3FDCCCCCC0000000, float %75)
  %79 = fptosi float %78 to i16
  %80 = getelementptr inbounds %struct.AZone, ptr %19, i64 0, i32 5
  store i16 %79, ptr %80, align 8, !tbaa !75
  %81 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 2
  %82 = load i32, ptr %81, align 8, !tbaa !73
  %83 = sitofp i32 %82 to float
  %84 = fmul float %77, 0x3FDCCCCCC0000000
  %85 = tail call float @llvm.fmuladd.f32(float %84, float -2.000000e+00, float %83)
  %86 = fptosi float %85 to i16
  %87 = getelementptr inbounds %struct.AZone, ptr %19, i64 0, i32 6
  store i16 %86, ptr %87, align 2, !tbaa !78
  %88 = tail call float @llvm.fmuladd.f32(float %84, float 2.000000e+00, float %75)
  %89 = fptosi float %88 to i16
  %90 = getelementptr inbounds %struct.AZone, ptr %19, i64 0, i32 7
  store i16 %89, ptr %90, align 4, !tbaa !77
  %91 = tail call float @llvm.fmuladd.f32(float %77, float 0xBFDCCCCCC0000000, float %83)
  br label %142

92:                                               ; preds = %43
  %93 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %94 = load i32, ptr %93, align 8, !tbaa !72
  %95 = sitofp i32 %94 to float
  %96 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !67
  %97 = sitofp i16 %96 to float
  %98 = fmul float %97, 0x3FDCCCCCC0000000
  %99 = tail call float @llvm.fmuladd.f32(float %98, float -2.000000e+00, float %95)
  %100 = fptosi float %99 to i16
  %101 = getelementptr inbounds %struct.AZone, ptr %19, i64 0, i32 5
  store i16 %100, ptr %101, align 8, !tbaa !75
  %102 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 3
  %103 = load i32, ptr %102, align 4, !tbaa !137
  %104 = sitofp i32 %103 to float
  %105 = shl nuw nsw i32 %44, 1
  %106 = sitofp i32 %105 to float
  %107 = fneg float %106
  %108 = tail call float @llvm.fmuladd.f32(float %107, float %98, float %104)
  %109 = fptosi float %108 to i16
  %110 = getelementptr inbounds %struct.AZone, ptr %19, i64 0, i32 6
  store i16 %109, ptr %110, align 2, !tbaa !78
  %111 = tail call float @llvm.fmuladd.f32(float %97, float 0xBFDCCCCCC0000000, float %95)
  %112 = fptosi float %111 to i16
  %113 = getelementptr inbounds %struct.AZone, ptr %19, i64 0, i32 7
  store i16 %112, ptr %113, align 4, !tbaa !77
  %114 = sitofp i32 %44 to float
  %115 = fneg float %114
  %116 = tail call float @llvm.fmuladd.f32(float %115, float %98, float %104)
  br label %142

117:                                              ; preds = %43
  %118 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 1
  %119 = load i32, ptr %118, align 4, !tbaa !138
  %120 = sitofp i32 %119 to float
  %121 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !67
  %122 = sitofp i16 %121 to float
  %123 = tail call float @llvm.fmuladd.f32(float %122, float 0x3FDCCCCCC0000000, float %120)
  %124 = fptosi float %123 to i16
  %125 = getelementptr inbounds %struct.AZone, ptr %19, i64 0, i32 5
  store i16 %124, ptr %125, align 8, !tbaa !75
  %126 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 3
  %127 = load i32, ptr %126, align 4, !tbaa !137
  %128 = sitofp i32 %127 to float
  %129 = shl nuw nsw i32 %44, 1
  %130 = sitofp i32 %129 to float
  %131 = fmul float %122, 0x3FDCCCCCC0000000
  %132 = fneg float %130
  %133 = tail call float @llvm.fmuladd.f32(float %132, float %131, float %128)
  %134 = fptosi float %133 to i16
  %135 = getelementptr inbounds %struct.AZone, ptr %19, i64 0, i32 6
  store i16 %134, ptr %135, align 2, !tbaa !78
  %136 = tail call float @llvm.fmuladd.f32(float %131, float 2.000000e+00, float %120)
  %137 = fptosi float %136 to i16
  %138 = getelementptr inbounds %struct.AZone, ptr %19, i64 0, i32 7
  store i16 %137, ptr %138, align 4, !tbaa !77
  %139 = sitofp i32 %44 to float
  %140 = fneg float %139
  %141 = tail call float @llvm.fmuladd.f32(float %140, float %131, float %128)
  br label %142

142:                                              ; preds = %47, %72, %92, %117
  %143 = phi float [ %141, %117 ], [ %116, %92 ], [ %91, %72 ], [ %71, %47 ]
  %144 = fptosi float %143 to i16
  %145 = getelementptr inbounds %struct.AZone, ptr %19, i64 0, i32 8
  store i16 %144, ptr %145, align 2, !tbaa !79
  br label %146

146:                                              ; preds = %142, %43
  %147 = getelementptr inbounds %struct.AZone, ptr %19, i64 0, i32 9
  %148 = getelementptr inbounds %struct.AZone, ptr %19, i64 0, i32 5
  %149 = load i16, ptr %148, align 8, !tbaa !75
  %150 = sext i16 %149 to i32
  %151 = getelementptr inbounds %struct.AZone, ptr %19, i64 0, i32 7
  %152 = load i16, ptr %151, align 4, !tbaa !77
  %153 = sext i16 %152 to i32
  %154 = getelementptr inbounds %struct.AZone, ptr %19, i64 0, i32 6
  %155 = load i16, ptr %154, align 2, !tbaa !78
  %156 = sext i16 %155 to i32
  %157 = getelementptr inbounds %struct.AZone, ptr %19, i64 0, i32 8
  %158 = load i16, ptr %157, align 2, !tbaa !79
  %159 = sext i16 %158 to i32
  tail call void @BLI_rcti_init(ptr noundef nonnull %147, i32 noundef %150, i32 noundef %153, i32 noundef %156, i32 noundef %159) #13
  %160 = load ptr, ptr %27, align 8, !tbaa !74
  %161 = icmp eq ptr %160, null
  br i1 %161, label %587, label %162

162:                                              ; preds = %146, %214
  %163 = phi ptr [ %215, %214 ], [ %160, %146 ]
  %164 = icmp eq ptr %163, %19
  br i1 %164, label %214, label %165

165:                                              ; preds = %162
  %166 = load i16, ptr %148, align 8, !tbaa !75
  %167 = sext i16 %166 to i32
  %168 = getelementptr inbounds %struct.AZone, ptr %163, i64 0, i32 5
  %169 = load i16, ptr %168, align 8, !tbaa !75
  %170 = sext i16 %169 to i32
  %171 = sub nsw i32 %167, %170
  %172 = tail call i32 @llvm.abs.i32(i32 %171, i1 true)
  %173 = icmp ult i32 %172, 2
  br i1 %173, label %174, label %214

174:                                              ; preds = %165
  %175 = load i16, ptr %154, align 2, !tbaa !78
  %176 = sext i16 %175 to i32
  %177 = getelementptr inbounds %struct.AZone, ptr %163, i64 0, i32 6
  %178 = load i16, ptr %177, align 2, !tbaa !78
  %179 = sext i16 %178 to i32
  %180 = sub nsw i32 %176, %179
  %181 = tail call i32 @llvm.abs.i32(i32 %180, i1 true)
  %182 = icmp ult i32 %181, 2
  br i1 %182, label %183, label %214

183:                                              ; preds = %174
  %184 = load i32, ptr %45, align 4, !tbaa !85
  %185 = and i32 %184, -2
  %186 = icmp eq i32 %185, 2
  %187 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !67
  %188 = sitofp i16 %187 to float
  br i1 %186, label %189, label %197

189:                                              ; preds = %183
  %190 = sitofp i16 %166 to float
  %191 = tail call float @llvm.fmuladd.f32(float %188, float 0x3FE3333340000000, float %190)
  %192 = fptosi float %191 to i16
  store i16 %192, ptr %148, align 8, !tbaa !75
  %193 = load i16, ptr %151, align 4, !tbaa !77
  %194 = sitofp i16 %193 to float
  %195 = tail call float @llvm.fmuladd.f32(float %188, float 0x3FE3333340000000, float %194)
  %196 = fptosi float %195 to i16
  store i16 %196, ptr %151, align 4, !tbaa !77
  br label %205

197:                                              ; preds = %183
  %198 = sitofp i16 %175 to float
  %199 = tail call float @llvm.fmuladd.f32(float %188, float 0xBFE3333340000000, float %198)
  %200 = fptosi float %199 to i16
  store i16 %200, ptr %154, align 2, !tbaa !78
  %201 = load i16, ptr %157, align 2, !tbaa !79
  %202 = sitofp i16 %201 to float
  %203 = tail call float @llvm.fmuladd.f32(float %188, float 0xBFE3333340000000, float %202)
  %204 = fptosi float %203 to i16
  store i16 %204, ptr %157, align 2, !tbaa !79
  br label %205

205:                                              ; preds = %197, %189
  %206 = load i16, ptr %148, align 8, !tbaa !75
  %207 = sext i16 %206 to i32
  %208 = load i16, ptr %151, align 4, !tbaa !77
  %209 = sext i16 %208 to i32
  %210 = load i16, ptr %154, align 2, !tbaa !78
  %211 = sext i16 %210 to i32
  %212 = load i16, ptr %157, align 2, !tbaa !79
  %213 = sext i16 %212 to i32
  tail call void @BLI_rcti_init(ptr noundef nonnull %147, i32 noundef %207, i32 noundef %209, i32 noundef %211, i32 noundef %213) #13
  br label %214

214:                                              ; preds = %205, %174, %165, %162
  %215 = load ptr, ptr %163, align 8, !tbaa !74
  %216 = icmp eq ptr %215, null
  br i1 %216, label %587, label %162, !llvm.loop !204

217:                                              ; preds = %24
  %218 = getelementptr inbounds %struct.AZone, ptr %19, i64 0, i32 4
  %219 = load i32, ptr %218, align 4, !tbaa !85
  switch i32 %219, label %573 [
    i32 2, label %220
    i32 3, label %245
    i32 1, label %265
    i32 0, label %287
  ]

220:                                              ; preds = %217
  %221 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 3
  %222 = load i32, ptr %221, align 4, !tbaa !137
  %223 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 7, i32 2
  %224 = load i32, ptr %223, align 8, !tbaa !117
  %225 = icmp eq i32 %222, %224
  %226 = sext i1 %225 to i32
  %227 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 1
  %228 = load i32, ptr %227, align 4, !tbaa !138
  %229 = sitofp i32 %228 to float
  %230 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !67
  %231 = sitofp i16 %230 to float
  %232 = fmul float %231, 0x3FE99999A0000000
  %233 = tail call float @llvm.fmuladd.f32(float %232, float -2.000000e+00, float %229)
  %234 = fptosi float %233 to i16
  %235 = getelementptr inbounds %struct.AZone, ptr %19, i64 0, i32 5
  store i16 %234, ptr %235, align 8, !tbaa !75
  %236 = add i32 %222, %226
  %237 = trunc i32 %236 to i16
  %238 = getelementptr inbounds %struct.AZone, ptr %19, i64 0, i32 6
  store i16 %237, ptr %238, align 2, !tbaa !78
  %239 = tail call float @llvm.fmuladd.f32(float %231, float 0xBFE99999A0000000, float %229)
  %240 = fptosi float %239 to i16
  %241 = getelementptr inbounds %struct.AZone, ptr %19, i64 0, i32 7
  store i16 %240, ptr %241, align 4, !tbaa !77
  %242 = sitofp i32 %236 to float
  %243 = tail call float @llvm.fmuladd.f32(float %231, float 0x3FDCCCCCC0000000, float %242)
  %244 = fptosi float %243 to i16
  br label %570

245:                                              ; preds = %217
  %246 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %247 = load i32, ptr %246, align 8, !tbaa !72
  %248 = sitofp i32 %247 to float
  %249 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !67
  %250 = sitofp i16 %249 to float
  %251 = tail call float @llvm.fmuladd.f32(float %250, float 0x3FE99999A0000000, float %248)
  %252 = fptosi float %251 to i16
  %253 = getelementptr inbounds %struct.AZone, ptr %19, i64 0, i32 5
  store i16 %252, ptr %253, align 8, !tbaa !75
  %254 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 2
  %255 = load i32, ptr %254, align 8, !tbaa !73
  %256 = sitofp i32 %255 to float
  %257 = tail call float @llvm.fmuladd.f32(float %250, float 0xBFDCCCCCC0000000, float %256)
  %258 = fptosi float %257 to i16
  %259 = getelementptr inbounds %struct.AZone, ptr %19, i64 0, i32 6
  store i16 %258, ptr %259, align 2, !tbaa !78
  %260 = fmul float %250, 0x3FE99999A0000000
  %261 = tail call float @llvm.fmuladd.f32(float %260, float 2.000000e+00, float %248)
  %262 = fptosi float %261 to i16
  %263 = getelementptr inbounds %struct.AZone, ptr %19, i64 0, i32 7
  store i16 %262, ptr %263, align 4, !tbaa !77
  %264 = trunc i32 %255 to i16
  br label %570

265:                                              ; preds = %217
  %266 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %267 = load i32, ptr %266, align 8, !tbaa !72
  %268 = add nsw i32 %267, 1
  %269 = sitofp i32 %268 to float
  %270 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !67
  %271 = sitofp i16 %270 to float
  %272 = tail call float @llvm.fmuladd.f32(float %271, float 0xBFDCCCCCC0000000, float %269)
  %273 = fptosi float %272 to i16
  %274 = getelementptr inbounds %struct.AZone, ptr %19, i64 0, i32 5
  store i16 %273, ptr %274, align 8, !tbaa !75
  %275 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 3
  %276 = load i32, ptr %275, align 4, !tbaa !137
  %277 = sitofp i32 %276 to float
  %278 = fmul float %271, 0x3FE99999A0000000
  %279 = tail call float @llvm.fmuladd.f32(float %278, float -2.000000e+00, float %277)
  %280 = fptosi float %279 to i16
  %281 = getelementptr inbounds %struct.AZone, ptr %19, i64 0, i32 6
  store i16 %280, ptr %281, align 2, !tbaa !78
  %282 = trunc i32 %267 to i16
  %283 = add i16 %282, 1
  %284 = getelementptr inbounds %struct.AZone, ptr %19, i64 0, i32 7
  store i16 %283, ptr %284, align 4, !tbaa !77
  %285 = tail call float @llvm.fmuladd.f32(float %271, float 0xBFE99999A0000000, float %277)
  %286 = fptosi float %285 to i16
  br label %570

287:                                              ; preds = %217
  %288 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 1
  %289 = load i32, ptr %288, align 4, !tbaa !138
  %290 = trunc i32 %289 to i16
  %291 = add i16 %290, -1
  %292 = getelementptr inbounds %struct.AZone, ptr %19, i64 0, i32 5
  store i16 %291, ptr %292, align 8, !tbaa !75
  %293 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 3
  %294 = load i32, ptr %293, align 4, !tbaa !137
  %295 = sitofp i32 %294 to float
  %296 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !67
  %297 = sitofp i16 %296 to float
  %298 = fmul float %297, 0x3FE99999A0000000
  %299 = tail call float @llvm.fmuladd.f32(float %298, float -2.000000e+00, float %295)
  %300 = fptosi float %299 to i16
  %301 = getelementptr inbounds %struct.AZone, ptr %19, i64 0, i32 6
  store i16 %300, ptr %301, align 2, !tbaa !78
  %302 = add nsw i32 %289, -1
  %303 = sitofp i32 %302 to float
  %304 = tail call float @llvm.fmuladd.f32(float %297, float 0x3FDCCCCCC0000000, float %303)
  %305 = fptosi float %304 to i16
  %306 = getelementptr inbounds %struct.AZone, ptr %19, i64 0, i32 7
  store i16 %305, ptr %306, align 4, !tbaa !77
  %307 = tail call float @llvm.fmuladd.f32(float %297, float 0xBFE99999A0000000, float %295)
  %308 = fptosi float %307 to i16
  br label %570

309:                                              ; preds = %24
  %310 = getelementptr inbounds %struct.AZone, ptr %19, i64 0, i32 4
  %311 = load i32, ptr %310, align 4, !tbaa !85
  switch i32 %311, label %573 [
    i32 2, label %312
    i32 3, label %337
    i32 1, label %357
    i32 0, label %379
  ]

312:                                              ; preds = %309
  %313 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 3
  %314 = load i32, ptr %313, align 4, !tbaa !137
  %315 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 7, i32 2
  %316 = load i32, ptr %315, align 8, !tbaa !117
  %317 = icmp eq i32 %314, %316
  %318 = sext i1 %317 to i32
  %319 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 1
  %320 = load i32, ptr %319, align 4, !tbaa !138
  %321 = sitofp i32 %320 to float
  %322 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !67
  %323 = sitofp i16 %322 to float
  %324 = fmul float %323, 0x3FECCCCCC0000000
  %325 = tail call float @llvm.fmuladd.f32(float %324, float -2.000000e+00, float %321)
  %326 = fptosi float %325 to i16
  %327 = getelementptr inbounds %struct.AZone, ptr %19, i64 0, i32 5
  store i16 %326, ptr %327, align 8, !tbaa !75
  %328 = add i32 %314, %318
  %329 = trunc i32 %328 to i16
  %330 = getelementptr inbounds %struct.AZone, ptr %19, i64 0, i32 6
  store i16 %329, ptr %330, align 2, !tbaa !78
  %331 = tail call float @llvm.fmuladd.f32(float %323, float 0xBFECCCCCC0000000, float %321)
  %332 = fptosi float %331 to i16
  %333 = getelementptr inbounds %struct.AZone, ptr %19, i64 0, i32 7
  store i16 %332, ptr %333, align 4, !tbaa !77
  %334 = sitofp i32 %328 to float
  %335 = tail call float @llvm.fmuladd.f32(float %323, float 0x3FD6666660000000, float %334)
  %336 = fptosi float %335 to i16
  br label %570

337:                                              ; preds = %309
  %338 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %339 = load i32, ptr %338, align 8, !tbaa !72
  %340 = sitofp i32 %339 to float
  %341 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !67
  %342 = sitofp i16 %341 to float
  %343 = tail call float @llvm.fmuladd.f32(float %342, float 0x3FECCCCCC0000000, float %340)
  %344 = fptosi float %343 to i16
  %345 = getelementptr inbounds %struct.AZone, ptr %19, i64 0, i32 5
  store i16 %344, ptr %345, align 8, !tbaa !75
  %346 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 2
  %347 = load i32, ptr %346, align 8, !tbaa !73
  %348 = sitofp i32 %347 to float
  %349 = tail call float @llvm.fmuladd.f32(float %342, float 0xBFD6666660000000, float %348)
  %350 = fptosi float %349 to i16
  %351 = getelementptr inbounds %struct.AZone, ptr %19, i64 0, i32 6
  store i16 %350, ptr %351, align 2, !tbaa !78
  %352 = fmul float %342, 0x3FECCCCCC0000000
  %353 = tail call float @llvm.fmuladd.f32(float %352, float 2.000000e+00, float %340)
  %354 = fptosi float %353 to i16
  %355 = getelementptr inbounds %struct.AZone, ptr %19, i64 0, i32 7
  store i16 %354, ptr %355, align 4, !tbaa !77
  %356 = trunc i32 %347 to i16
  br label %570

357:                                              ; preds = %309
  %358 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %359 = load i32, ptr %358, align 8, !tbaa !72
  %360 = add nsw i32 %359, 1
  %361 = sitofp i32 %360 to float
  %362 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !67
  %363 = sitofp i16 %362 to float
  %364 = tail call float @llvm.fmuladd.f32(float %363, float 0xBFD6666660000000, float %361)
  %365 = fptosi float %364 to i16
  %366 = getelementptr inbounds %struct.AZone, ptr %19, i64 0, i32 5
  store i16 %365, ptr %366, align 8, !tbaa !75
  %367 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 3
  %368 = load i32, ptr %367, align 4, !tbaa !137
  %369 = sitofp i32 %368 to float
  %370 = fmul float %363, 0x3FECCCCCC0000000
  %371 = tail call float @llvm.fmuladd.f32(float %370, float -2.000000e+00, float %369)
  %372 = fptosi float %371 to i16
  %373 = getelementptr inbounds %struct.AZone, ptr %19, i64 0, i32 6
  store i16 %372, ptr %373, align 2, !tbaa !78
  %374 = trunc i32 %359 to i16
  %375 = add i16 %374, 1
  %376 = getelementptr inbounds %struct.AZone, ptr %19, i64 0, i32 7
  store i16 %375, ptr %376, align 4, !tbaa !77
  %377 = tail call float @llvm.fmuladd.f32(float %363, float 0xBFECCCCCC0000000, float %369)
  %378 = fptosi float %377 to i16
  br label %570

379:                                              ; preds = %309
  %380 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 1
  %381 = load i32, ptr %380, align 4, !tbaa !138
  %382 = trunc i32 %381 to i16
  %383 = add i16 %382, -1
  %384 = getelementptr inbounds %struct.AZone, ptr %19, i64 0, i32 5
  store i16 %383, ptr %384, align 8, !tbaa !75
  %385 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 3
  %386 = load i32, ptr %385, align 4, !tbaa !137
  %387 = sitofp i32 %386 to float
  %388 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !67
  %389 = sitofp i16 %388 to float
  %390 = fmul float %389, 0x3FECCCCCC0000000
  %391 = tail call float @llvm.fmuladd.f32(float %390, float -2.000000e+00, float %387)
  %392 = fptosi float %391 to i16
  %393 = getelementptr inbounds %struct.AZone, ptr %19, i64 0, i32 6
  store i16 %392, ptr %393, align 2, !tbaa !78
  %394 = add nsw i32 %381, -1
  %395 = sitofp i32 %394 to float
  %396 = tail call float @llvm.fmuladd.f32(float %389, float 0x3FD6666660000000, float %395)
  %397 = fptosi float %396 to i16
  %398 = getelementptr inbounds %struct.AZone, ptr %19, i64 0, i32 7
  store i16 %397, ptr %398, align 4, !tbaa !77
  %399 = tail call float @llvm.fmuladd.f32(float %389, float 0xBFECCCCCC0000000, float %387)
  %400 = fptosi float %399 to i16
  br label %570

401:                                              ; preds = %24
  %402 = getelementptr inbounds %struct.AZone, ptr %19, i64 0, i32 4
  %403 = load i32, ptr %402, align 4, !tbaa !85
  switch i32 %403, label %573 [
    i32 2, label %404
    i32 3, label %429
    i32 1, label %449
    i32 0, label %469
  ]

404:                                              ; preds = %401
  %405 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 3
  %406 = load i32, ptr %405, align 4, !tbaa !137
  %407 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 7, i32 2
  %408 = load i32, ptr %407, align 8, !tbaa !117
  %409 = icmp eq i32 %406, %408
  %410 = sext i1 %409 to i32
  %411 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 1
  %412 = load i32, ptr %411, align 4, !tbaa !138
  %413 = sitofp i32 %412 to float
  %414 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !67
  %415 = sitofp i16 %414 to float
  %416 = fmul float %415, 0x3FE6666660000000
  %417 = tail call float @llvm.fmuladd.f32(float %416, float -2.500000e+00, float %413)
  %418 = fptosi float %417 to i16
  %419 = getelementptr inbounds %struct.AZone, ptr %19, i64 0, i32 5
  store i16 %418, ptr %419, align 8, !tbaa !75
  %420 = add i32 %406, %410
  %421 = trunc i32 %420 to i16
  %422 = getelementptr inbounds %struct.AZone, ptr %19, i64 0, i32 6
  store i16 %421, ptr %422, align 2, !tbaa !78
  %423 = tail call float @llvm.fmuladd.f32(float %416, float -1.500000e+00, float %413)
  %424 = fptosi float %423 to i16
  %425 = getelementptr inbounds %struct.AZone, ptr %19, i64 0, i32 7
  store i16 %424, ptr %425, align 4, !tbaa !77
  %426 = sitofp i32 %420 to float
  %427 = tail call float @llvm.fmuladd.f32(float %415, float 0x3FE6666660000000, float %426)
  %428 = fptosi float %427 to i16
  br label %570

429:                                              ; preds = %401
  %430 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 1
  %431 = load i32, ptr %430, align 4, !tbaa !138
  %432 = sitofp i32 %431 to float
  %433 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !67
  %434 = sitofp i16 %433 to float
  %435 = fmul float %434, 0x3FE6666660000000
  %436 = tail call float @llvm.fmuladd.f32(float %435, float -2.500000e+00, float %432)
  %437 = fptosi float %436 to i16
  %438 = getelementptr inbounds %struct.AZone, ptr %19, i64 0, i32 5
  store i16 %437, ptr %438, align 8, !tbaa !75
  %439 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 2
  %440 = load i32, ptr %439, align 8, !tbaa !73
  %441 = sitofp i32 %440 to float
  %442 = tail call float @llvm.fmuladd.f32(float %434, float 0xBFE6666660000000, float %441)
  %443 = fptosi float %442 to i16
  %444 = getelementptr inbounds %struct.AZone, ptr %19, i64 0, i32 6
  store i16 %443, ptr %444, align 2, !tbaa !78
  %445 = tail call float @llvm.fmuladd.f32(float %435, float -1.500000e+00, float %432)
  %446 = fptosi float %445 to i16
  %447 = getelementptr inbounds %struct.AZone, ptr %19, i64 0, i32 7
  store i16 %446, ptr %447, align 4, !tbaa !77
  %448 = trunc i32 %440 to i16
  br label %570

449:                                              ; preds = %401
  %450 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %451 = load i32, ptr %450, align 8, !tbaa !72
  %452 = sitofp i32 %451 to float
  %453 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !67
  %454 = sitofp i16 %453 to float
  %455 = tail call float @llvm.fmuladd.f32(float %454, float 0xBFE6666660000000, float %452)
  %456 = fptosi float %455 to i16
  %457 = getelementptr inbounds %struct.AZone, ptr %19, i64 0, i32 5
  store i16 %456, ptr %457, align 8, !tbaa !75
  %458 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 3
  %459 = load i32, ptr %458, align 4, !tbaa !137
  %460 = sitofp i32 %459 to float
  %461 = fmul float %454, 0x3FE6666660000000
  %462 = tail call float @llvm.fmuladd.f32(float %461, float -2.500000e+00, float %460)
  %463 = fptosi float %462 to i16
  %464 = getelementptr inbounds %struct.AZone, ptr %19, i64 0, i32 6
  store i16 %463, ptr %464, align 2, !tbaa !78
  %465 = trunc i32 %451 to i16
  %466 = getelementptr inbounds %struct.AZone, ptr %19, i64 0, i32 7
  store i16 %465, ptr %466, align 4, !tbaa !77
  %467 = tail call float @llvm.fmuladd.f32(float %461, float -1.500000e+00, float %460)
  %468 = fptosi float %467 to i16
  br label %570

469:                                              ; preds = %401
  %470 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 1
  %471 = load i32, ptr %470, align 4, !tbaa !138
  %472 = trunc i32 %471 to i16
  %473 = add i16 %472, -1
  %474 = getelementptr inbounds %struct.AZone, ptr %19, i64 0, i32 5
  store i16 %473, ptr %474, align 8, !tbaa !75
  %475 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 3
  %476 = load i32, ptr %475, align 4, !tbaa !137
  %477 = sitofp i32 %476 to float
  %478 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !67
  %479 = sitofp i16 %478 to float
  %480 = fmul float %479, 0x3FE6666660000000
  %481 = tail call float @llvm.fmuladd.f32(float %480, float -2.500000e+00, float %477)
  %482 = fptosi float %481 to i16
  %483 = getelementptr inbounds %struct.AZone, ptr %19, i64 0, i32 6
  store i16 %482, ptr %483, align 2, !tbaa !78
  %484 = add nsw i32 %471, -1
  %485 = sitofp i32 %484 to float
  %486 = tail call float @llvm.fmuladd.f32(float %479, float 0x3FE6666660000000, float %485)
  %487 = fptosi float %486 to i16
  %488 = getelementptr inbounds %struct.AZone, ptr %19, i64 0, i32 7
  store i16 %487, ptr %488, align 4, !tbaa !77
  %489 = tail call float @llvm.fmuladd.f32(float %480, float -1.500000e+00, float %477)
  %490 = fptosi float %489 to i16
  br label %570

491:                                              ; preds = %18
  %492 = getelementptr inbounds %struct.AZone, ptr %19, i64 0, i32 4
  %493 = load i32, ptr %492, align 4, !tbaa !85
  switch i32 %493, label %573 [
    i32 2, label %494
    i32 3, label %513
    i32 1, label %532
    i32 0, label %551
  ]

494:                                              ; preds = %491
  %495 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %496 = load i32, ptr %495, align 8, !tbaa !72
  %497 = trunc i32 %496 to i16
  %498 = getelementptr inbounds %struct.AZone, ptr %19, i64 0, i32 5
  store i16 %497, ptr %498, align 8, !tbaa !75
  %499 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 3
  %500 = load i32, ptr %499, align 4, !tbaa !137
  %501 = sitofp i32 %500 to float
  %502 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !67
  %503 = sitofp i16 %502 to float
  %504 = tail call float @llvm.fmuladd.f32(float %503, float 0xBFB99999A0000000, float %501)
  %505 = fptosi float %504 to i16
  %506 = getelementptr inbounds %struct.AZone, ptr %19, i64 0, i32 6
  store i16 %505, ptr %506, align 2, !tbaa !78
  %507 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 1
  %508 = load i32, ptr %507, align 4, !tbaa !138
  %509 = trunc i32 %508 to i16
  %510 = getelementptr inbounds %struct.AZone, ptr %19, i64 0, i32 7
  store i16 %509, ptr %510, align 4, !tbaa !77
  %511 = tail call float @llvm.fmuladd.f32(float %503, float 0x3FB99999A0000000, float %501)
  %512 = fptosi float %511 to i16
  br label %570

513:                                              ; preds = %491
  %514 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %515 = load i32, ptr %514, align 8, !tbaa !72
  %516 = trunc i32 %515 to i16
  %517 = getelementptr inbounds %struct.AZone, ptr %19, i64 0, i32 5
  store i16 %516, ptr %517, align 8, !tbaa !75
  %518 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 2
  %519 = load i32, ptr %518, align 8, !tbaa !73
  %520 = sitofp i32 %519 to float
  %521 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !67
  %522 = sitofp i16 %521 to float
  %523 = tail call float @llvm.fmuladd.f32(float %522, float 0x3FB99999A0000000, float %520)
  %524 = fptosi float %523 to i16
  %525 = getelementptr inbounds %struct.AZone, ptr %19, i64 0, i32 6
  store i16 %524, ptr %525, align 2, !tbaa !78
  %526 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 1
  %527 = load i32, ptr %526, align 4, !tbaa !138
  %528 = trunc i32 %527 to i16
  %529 = getelementptr inbounds %struct.AZone, ptr %19, i64 0, i32 7
  store i16 %528, ptr %529, align 4, !tbaa !77
  %530 = tail call float @llvm.fmuladd.f32(float %522, float 0xBFB99999A0000000, float %520)
  %531 = fptosi float %530 to i16
  br label %570

532:                                              ; preds = %491
  %533 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %534 = load i32, ptr %533, align 8, !tbaa !72
  %535 = sitofp i32 %534 to float
  %536 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !67
  %537 = sitofp i16 %536 to float
  %538 = tail call float @llvm.fmuladd.f32(float %537, float 0xBFB99999A0000000, float %535)
  %539 = fptosi float %538 to i16
  %540 = getelementptr inbounds %struct.AZone, ptr %19, i64 0, i32 5
  store i16 %539, ptr %540, align 8, !tbaa !75
  %541 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 2
  %542 = load i32, ptr %541, align 8, !tbaa !73
  %543 = trunc i32 %542 to i16
  %544 = getelementptr inbounds %struct.AZone, ptr %19, i64 0, i32 6
  store i16 %543, ptr %544, align 2, !tbaa !78
  %545 = tail call float @llvm.fmuladd.f32(float %537, float 0x3FB99999A0000000, float %535)
  %546 = fptosi float %545 to i16
  %547 = getelementptr inbounds %struct.AZone, ptr %19, i64 0, i32 7
  store i16 %546, ptr %547, align 4, !tbaa !77
  %548 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 3
  %549 = load i32, ptr %548, align 4, !tbaa !137
  %550 = trunc i32 %549 to i16
  br label %570

551:                                              ; preds = %491
  %552 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 1
  %553 = load i32, ptr %552, align 4, !tbaa !138
  %554 = sitofp i32 %553 to float
  %555 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !67
  %556 = sitofp i16 %555 to float
  %557 = tail call float @llvm.fmuladd.f32(float %556, float 0x3FB99999A0000000, float %554)
  %558 = fptosi float %557 to i16
  %559 = getelementptr inbounds %struct.AZone, ptr %19, i64 0, i32 5
  store i16 %558, ptr %559, align 8, !tbaa !75
  %560 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 2
  %561 = load i32, ptr %560, align 8, !tbaa !73
  %562 = trunc i32 %561 to i16
  %563 = getelementptr inbounds %struct.AZone, ptr %19, i64 0, i32 6
  store i16 %562, ptr %563, align 2, !tbaa !78
  %564 = tail call float @llvm.fmuladd.f32(float %556, float 0xBFB99999A0000000, float %554)
  %565 = fptosi float %564 to i16
  %566 = getelementptr inbounds %struct.AZone, ptr %19, i64 0, i32 7
  store i16 %565, ptr %566, align 4, !tbaa !77
  %567 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 3
  %568 = load i32, ptr %567, align 4, !tbaa !137
  %569 = trunc i32 %568 to i16
  br label %570

570:                                              ; preds = %494, %513, %532, %551, %404, %429, %449, %469, %312, %337, %357, %379, %220, %245, %265, %287
  %571 = phi i16 [ %244, %220 ], [ %264, %245 ], [ %286, %265 ], [ %308, %287 ], [ %336, %312 ], [ %356, %337 ], [ %378, %357 ], [ %400, %379 ], [ %428, %404 ], [ %448, %429 ], [ %468, %449 ], [ %490, %469 ], [ %512, %494 ], [ %531, %513 ], [ %550, %532 ], [ %569, %551 ]
  %572 = getelementptr inbounds %struct.AZone, ptr %19, i64 0, i32 8
  store i16 %571, ptr %572, align 2, !tbaa !79
  br label %573

573:                                              ; preds = %570, %491, %401, %309, %217
  %574 = getelementptr inbounds %struct.AZone, ptr %19, i64 0, i32 9
  %575 = getelementptr inbounds %struct.AZone, ptr %19, i64 0, i32 5
  %576 = load i16, ptr %575, align 8, !tbaa !75
  %577 = sext i16 %576 to i32
  %578 = getelementptr inbounds %struct.AZone, ptr %19, i64 0, i32 7
  %579 = load i16, ptr %578, align 4, !tbaa !77
  %580 = sext i16 %579 to i32
  %581 = getelementptr inbounds %struct.AZone, ptr %19, i64 0, i32 6
  %582 = load i16, ptr %581, align 2, !tbaa !78
  %583 = sext i16 %582 to i32
  %584 = getelementptr inbounds %struct.AZone, ptr %19, i64 0, i32 8
  %585 = load i16, ptr %584, align 2, !tbaa !79
  %586 = sext i16 %585 to i32
  tail call void @BLI_rcti_init(ptr noundef nonnull %574, i32 noundef %577, i32 noundef %580, i32 noundef %583, i32 noundef %586) #13
  br label %587

587:                                              ; preds = %214, %573, %146, %23
  ret void
}

declare void @UI_add_region_handlers(ptr noundef) local_unnamed_addr #1

declare ptr @BKE_area_find_region_type(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @WM_event_add_keymap_handler_bb(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @wm_subwindow_close(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @wm_subwindow_open(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @wm_subwindow_position(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 7547212}
!8 = !{!"MaxCount", i64 1843200}
!9 = !{!"MaxInternalCount", i64 1843200}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1843200, i32 1}
!18 = !{i32 100000, i64 1843200, i32 1}
!19 = !{i32 200000, i64 1843200, i32 1}
!20 = !{i32 300000, i64 921600, i32 7}
!21 = !{i32 400000, i64 921600, i32 7}
!22 = !{i32 500000, i64 921600, i32 7}
!23 = !{i32 600000, i64 921600, i32 7}
!24 = !{i32 700000, i64 921600, i32 7}
!25 = !{i32 800000, i64 921600, i32 7}
!26 = !{i32 900000, i64 921600, i32 7}
!27 = !{i32 950000, i64 921600, i32 7}
!28 = !{i32 990000, i64 115200, i32 8}
!29 = !{i32 999000, i64 14400, i32 12}
!30 = !{i32 999900, i64 1440, i32 13}
!31 = !{i32 999990, i64 21, i32 15}
!32 = !{i32 999999, i64 1, i32 48}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !39, i64 36}
!35 = !{!"wmNotifier", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !39, i64 48, !36, i64 56}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!35, !39, i64 40}
!41 = !{!42, !47, i64 228}
!42 = !{!"ARegion", !36, i64 0, !36, i64 8, !43, i64 16, !46, i64 176, !46, i64 192, !47, i64 208, !47, i64 210, !47, i64 212, !47, i64 214, !47, i64 216, !47, i64 218, !45, i64 220, !47, i64 224, !47, i64 226, !47, i64 228, !47, i64 230, !47, i64 232, !47, i64 234, !47, i64 236, !47, i64 238, !36, i64 240, !48, i64 248, !48, i64 264, !48, i64 280, !48, i64 296, !48, i64 312, !48, i64 328, !48, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!43 = !{!"View2D", !44, i64 0, !44, i64 16, !46, i64 32, !46, i64 48, !46, i64 64, !37, i64 80, !37, i64 88, !45, i64 96, !45, i64 100, !47, i64 104, !47, i64 106, !47, i64 108, !47, i64 110, !47, i64 112, !47, i64 114, !47, i64 116, !47, i64 118, !47, i64 120, !47, i64 122, !47, i64 124, !47, i64 126, !36, i64 128, !39, i64 136, !39, i64 140, !36, i64 144, !36, i64 152}
!44 = !{!"rctf", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12}
!45 = !{!"float", !37, i64 0}
!46 = !{!"rcti", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!47 = !{!"short", !37, i64 0}
!48 = !{!"ListBase", !36, i64 0, !36, i64 8}
!49 = !{!42, !36, i64 240}
!50 = !{!51, !36, i64 48}
!51 = !{!"ARegionType", !36, i64 0, !36, i64 8, !39, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !48, i64 104, !48, i64 120, !48, i64 136, !39, i64 152, !39, i64 156, !39, i64 160, !39, i64 164, !39, i64 168, !47, i64 172, !47, i64 174, !47, i64 176}
!52 = !{!53, !36, i64 88}
!53 = !{!"ScrArea", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !46, i64 56, !37, i64 72, !37, i64 73, !47, i64 74, !47, i64 76, !47, i64 78, !47, i64 80, !47, i64 82, !47, i64 84, !37, i64 86, !37, i64 87, !36, i64 88, !48, i64 96, !48, i64 112, !48, i64 128, !48, i64 144}
!54 = !{!55, !36, i64 120}
!55 = !{!"SpaceType", !36, i64 0, !36, i64 8, !37, i64 16, !39, i64 80, !39, i64 84, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !48, i64 176, !48, i64 192, !39, i64 208}
!56 = !{!55, !36, i64 128}
!57 = !{!53, !47, i64 80}
!58 = !{i64 0, i64 4, !59, i64 4, i64 4, !59, i64 8, i64 4, !59, i64 12, i64 4, !59}
!59 = !{!39, !39, i64 0}
!60 = !{!42, !47, i64 212}
!61 = !{!53, !37, i64 72}
!62 = !{!51, !39, i64 16}
!63 = !{!51, !47, i64 172}
!64 = !{!42, !39, i64 192}
!65 = !{!42, !39, i64 196}
!66 = !{!42, !36, i64 368}
!67 = !{!68, !47, i64 8948}
!68 = !{!"UserDef", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !39, i64 8468, !47, i64 8472, !47, i64 8474, !47, i64 8476, !47, i64 8478, !47, i64 8480, !47, i64 8482, !39, i64 8484, !39, i64 8488, !39, i64 8492, !47, i64 8496, !47, i64 8498, !39, i64 8500, !39, i64 8504, !39, i64 8508, !39, i64 8512, !39, i64 8516, !39, i64 8520, !39, i64 8524, !47, i64 8528, !47, i64 8530, !47, i64 8532, !47, i64 8534, !48, i64 8536, !48, i64 8552, !48, i64 8568, !48, i64 8584, !48, i64 8600, !48, i64 8616, !48, i64 8632, !37, i64 8648, !47, i64 8712, !47, i64 8714, !47, i64 8716, !47, i64 8718, !47, i64 8720, !47, i64 8722, !47, i64 8724, !47, i64 8726, !37, i64 8728, !47, i64 8896, !47, i64 8898, !47, i64 8900, !47, i64 8902, !47, i64 8904, !47, i64 8906, !47, i64 8908, !47, i64 8910, !39, i64 8912, !39, i64 8916, !47, i64 8920, !47, i64 8922, !47, i64 8924, !47, i64 8926, !47, i64 8928, !47, i64 8930, !47, i64 8932, !47, i64 8934, !47, i64 8936, !47, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !47, i64 8944, !47, i64 8946, !47, i64 8948, !47, i64 8950, !47, i64 8952, !47, i64 8954, !45, i64 8956, !45, i64 8960, !39, i64 8964, !47, i64 8968, !47, i64 8970, !45, i64 8972, !47, i64 8976, !47, i64 8978, !47, i64 8980, !47, i64 8982, !69, i64 8984, !37, i64 9760, !37, i64 9772, !47, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !39, i64 10896, !39, i64 10900, !45, i64 10904, !45, i64 10908, !39, i64 10912, !47, i64 10916, !47, i64 10918, !47, i64 10920, !47, i64 10922, !47, i64 10924, !47, i64 10926, !70, i64 10928}
!69 = !{!"ColorBand", !47, i64 0, !47, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!70 = !{!"WalkNavigation", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !45, i64 16, !45, i64 20, !47, i64 24, !37, i64 26}
!71 = !{!51, !36, i64 40}
!72 = !{!42, !39, i64 176}
!73 = !{!42, !39, i64 184}
!74 = !{!36, !36, i64 0}
!75 = !{!76, !47, i64 32}
!76 = !{!"AZone", !36, i64 0, !36, i64 8, !36, i64 16, !39, i64 24, !39, i64 28, !47, i64 32, !47, i64 34, !47, i64 36, !47, i64 38, !46, i64 40, !45, i64 56}
!77 = !{!76, !47, i64 36}
!78 = !{!76, !47, i64 34}
!79 = !{!76, !47, i64 38}
!80 = !{!76, !39, i64 24}
!81 = !{!76, !36, i64 16}
!82 = !{!42, !47, i64 218}
!83 = !{!84, !47, i64 2092}
!84 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !48, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !47, i64 2084, !47, i64 2086, !47, i64 2088, !37, i64 2090, !47, i64 2092, !39, i64 2096, !39, i64 2100, !37, i64 2104, !39, i64 2108, !39, i64 2112, !37, i64 2116}
!85 = !{!76, !39, i64 28}
!86 = !{!45, !45, i64 0}
!87 = !{!76, !45, i64 56}
!88 = !{!68, !45, i64 10908}
!89 = !{!68, !39, i64 8524}
!90 = !{!46, !39, i64 0}
!91 = !{!46, !39, i64 8}
!92 = !{!46, !39, i64 4}
!93 = !{!46, !39, i64 12}
!94 = distinct !{!94, !95, !96}
!95 = !{!"llvm.loop.mustprogress"}
!96 = !{!"llvm.loop.unroll.disable"}
!97 = !{!98, !36, i64 24}
!98 = !{!"wmWindow", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !47, i64 104, !47, i64 106, !47, i64 108, !47, i64 110, !47, i64 112, !47, i64 114, !47, i64 116, !47, i64 118, !47, i64 120, !47, i64 122, !47, i64 124, !47, i64 126, !39, i64 128, !47, i64 132, !47, i64 134, !36, i64 136, !36, i64 144, !36, i64 152, !39, i64 160, !39, i64 164, !36, i64 168, !48, i64 176, !48, i64 192, !48, i64 208, !48, i64 224, !48, i64 240}
!99 = !{!100, !47, i64 208}
!100 = !{!"bScreen", !101, i64 0, !48, i64 120, !48, i64 136, !48, i64 152, !48, i64 168, !36, i64 184, !36, i64 192, !39, i64 200, !39, i64 204, !47, i64 208, !47, i64 210, !47, i64 212, !47, i64 214, !47, i64 216, !47, i64 218, !47, i64 220, !47, i64 222, !47, i64 224, !47, i64 226, !47, i64 228, !47, i64 230, !36, i64 232, !36, i64 240}
!101 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !47, i64 98, !39, i64 100, !39, i64 104, !39, i64 108, !36, i64 112}
!102 = !{!42, !47, i64 230}
!103 = distinct !{!103, !95, !96}
!104 = !{!42, !47, i64 214}
!105 = distinct !{!105, !95, !96}
!106 = distinct !{!106, !95, !96}
!107 = !{!53, !37, i64 73}
!108 = distinct !{!108, !95, !96}
!109 = !{!53, !36, i64 16}
!110 = !{!111, !47, i64 24}
!111 = !{!"ScrVert", !36, i64 0, !36, i64 8, !36, i64 16, !112, i64 24, !47, i64 28, !47, i64 30}
!112 = !{!"vec2s", !47, i64 0, !47, i64 2}
!113 = !{!53, !39, i64 56}
!114 = !{!53, !36, i64 40}
!115 = !{!53, !39, i64 60}
!116 = !{!111, !47, i64 26}
!117 = !{!53, !39, i64 64}
!118 = !{!53, !36, i64 24}
!119 = !{!53, !39, i64 68}
!120 = !{!53, !47, i64 74}
!121 = !{!53, !47, i64 76}
!122 = !{!53, !36, i64 112}
!123 = !{!55, !39, i64 208}
!124 = !{!55, !36, i64 104}
!125 = !{!42, !47, i64 216}
!126 = !{!42, !36, i64 8}
!127 = !{!51, !39, i64 168}
!128 = !{!51, !36, i64 24}
!129 = distinct !{!129, !95, !96}
!130 = !{!68, !39, i64 8488}
!131 = !{!42, !47, i64 234}
!132 = !{!42, !36, i64 0}
!133 = !{!42, !47, i64 224}
!134 = !{!51, !39, i64 160}
!135 = !{!42, !47, i64 226}
!136 = !{!51, !39, i64 164}
!137 = !{!42, !39, i64 188}
!138 = !{!42, !39, i64 180}
!139 = distinct !{!139, !95, !96}
!140 = !{!84, !39, i64 2100}
!141 = !{!42, !47, i64 208}
!142 = !{!42, !47, i64 210}
!143 = distinct !{!143, !95, !96}
!144 = distinct !{!144, !95, !96}
!145 = !{!146, !36, i64 296}
!146 = !{!"wmWindowManager", !101, i64 0, !36, i64 120, !36, i64 128, !48, i64 136, !39, i64 152, !47, i64 156, !47, i64 158, !48, i64 160, !48, i64 176, !147, i64 192, !48, i64 232, !48, i64 248, !48, i64 264, !48, i64 280, !36, i64 296, !36, i64 304, !36, i64 312, !48, i64 320, !36, i64 336, !37, i64 344, !37, i64 345}
!147 = !{!"ReportList", !48, i64 0, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !36, i64 32}
!148 = !{!53, !47, i64 78}
!149 = !{!53, !47, i64 82}
!150 = distinct !{!150, !95, !96}
!151 = distinct !{!151, !95, !96}
!152 = !{i64 0, i64 8, !74, i64 8, i64 8, !74}
!153 = !{!53, !36, i64 96}
!154 = !{!155, !39, i64 32}
!155 = !{!"SpaceLink", !36, i64 0, !36, i64 8, !48, i64 16, !39, i64 32, !45, i64 36, !37, i64 40}
!156 = distinct !{!156, !95, !96}
!157 = !{!48, !36, i64 0}
!158 = !{!55, !36, i64 96}
!159 = !{!55, !36, i64 88}
!160 = !{!155, !36, i64 0}
!161 = !{!43, !47, i64 112}
!162 = !{!43, !47, i64 104}
!163 = !{!37, !37, i64 0}
!164 = !{!165, !36, i64 368}
!165 = !{!"PanelType", !36, i64 0, !36, i64 8, !37, i64 16, !37, i64 80, !37, i64 144, !37, i64 208, !37, i64 272, !39, i64 336, !39, i64 340, !39, i64 344, !36, i64 352, !36, i64 360, !36, i64 368, !166, i64 376}
!166 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!167 = !{!165, !36, i64 352}
!168 = !{!169, !36, i64 0}
!169 = !{!"LinkNode", !36, i64 0, !36, i64 8}
!170 = !{!169, !36, i64 8}
!171 = distinct !{!171, !95, !96}
!172 = distinct !{!172, !95, !96}
!173 = !{!44, !45, i64 4}
!174 = !{!44, !45, i64 0}
!175 = !{!176, !47, i64 244}
!176 = !{!"Panel", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !37, i64 96, !37, i64 160, !39, i64 224, !39, i64 228, !39, i64 232, !39, i64 236, !47, i64 240, !47, i64 242, !47, i64 244, !47, i64 246, !47, i64 248, !47, i64 250, !39, i64 252, !36, i64 256, !36, i64 264}
!177 = !{!165, !36, i64 360}
!178 = !{!165, !39, i64 344}
!179 = !{!180, !47, i64 226}
!180 = !{!"uiStyle", !36, i64 0, !36, i64 8, !37, i64 16, !181, i64 80, !181, i64 112, !181, i64 144, !181, i64 176, !45, i64 208, !47, i64 212, !47, i64 214, !47, i64 216, !47, i64 218, !47, i64 220, !47, i64 222, !47, i64 224, !47, i64 226, !47, i64 228, !47, i64 230}
!181 = !{!"uiFontStyle", !47, i64 0, !47, i64 2, !47, i64 4, !37, i64 6, !47, i64 12, !47, i64 14, !47, i64 16, !47, i64 18, !47, i64 20, !47, i64 22, !45, i64 24, !45, i64 28}
!182 = !{!176, !36, i64 24}
!183 = !{!176, !47, i64 240}
!184 = distinct !{!184, !95, !96}
!185 = !{!43, !45, i64 28}
!186 = !{!43, !45, i64 24}
!187 = !{!43, !45, i64 20}
!188 = distinct !{!188, !95, !96}
!189 = !{!190, !36, i64 88}
!190 = !{!"HeaderType", !36, i64 0, !36, i64 8, !37, i64 16, !39, i64 80, !36, i64 88, !166, i64 96}
!191 = !{!192, !36, i64 0}
!192 = !{!"Header", !36, i64 0, !36, i64 8}
!193 = !{!192, !36, i64 8}
!194 = distinct !{!194, !95, !96}
!195 = !{!180, !47, i64 176}
!196 = distinct !{!196, !95, !96}
!197 = distinct !{!197, !95, !96}
!198 = distinct !{!198, !95, !96}
!199 = distinct !{!199, !95, !96}
!200 = distinct !{!200, !95, !96}
!201 = distinct !{!201, !95, !96}
!202 = distinct !{!202, !95, !96}
!203 = distinct !{!203, !95, !96}
!204 = distinct !{!204, !95, !96}
