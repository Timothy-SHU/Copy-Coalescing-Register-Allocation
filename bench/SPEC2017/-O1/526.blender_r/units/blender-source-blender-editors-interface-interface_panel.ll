; ModuleID = 'blender/source/blender/editors/interface/interface_panel.c'
source_filename = "blender/source/blender/editors/interface/interface_panel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.PanelType = type { ptr, ptr, [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], i32, i32, i32, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.Panel = type { ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], [64 x i8], i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, ptr, ptr }
%struct.uiBlock = type { ptr, ptr, %struct.ListBase, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, %struct.ListBase, [128 x i8], [4 x [4 x float]], %struct.rctf, float, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i8, i8, i8, [7 x i8], double, ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, %struct.rctf, %struct.ListBase, ptr, ptr, ptr, ptr, [3 x float], i8, [64 x i8], %struct.PieMenuData }
%struct.PieMenuData = type { [2 x float], [2 x float], [2 x float], [2 x float], double, i32, i32, float }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.SpaceButs = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, i16, i16, i16, i16, i16, i16, i16, i16, i8, [7 x i8], ptr, i32, i32, ptr, ptr }
%struct.uiStyle = type { ptr, ptr, [64 x i8], %struct.uiFontStyle, %struct.uiFontStyle, %struct.uiFontStyle, %struct.uiFontStyle, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.uiFontStyle = type { i16, i16, i16, [6 x i8], i16, i16, i16, i16, i16, i16, float, float }
%struct.uiBut = type { ptr, ptr, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, [128 x i8], [400 x i8], %struct.rctf, ptr, float, float, float, float, float, float, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x i16], ptr, ptr, i32, i8, i8, i8, i8, i8, i16, i16, ptr, ptr, %struct.PointerRNA, ptr, i32, %struct.PointerRNA, ptr, ptr, ptr, i16, i8, i8, ptr, ptr, float, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.uiHandlePanelData = type { i32, ptr, double, i32, i32, i32, i32, i32, i32 }
%struct.wmWindow = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, ptr, ptr, ptr, i32, i32, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.PanelSort = type { ptr, ptr }
%struct.PanelCategoryStack = type { ptr, ptr, [64 x i8] }
%struct.PanelCategoryDyn = type { ptr, ptr, [64 x i8], %struct.rcti }
%struct.ARegionType = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i16 }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [10 x i8] c"new panel\00", align 1
@U = external local_unnamed_addr global %struct.UserDef, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"scaled %f\0A\00", align 1
@__func__.UI_panel_category_active_set = private unnamed_addr constant [29 x i8] c"UI_panel_category_active_set\00", align 1
@__func__.UI_panel_category_add = private unnamed_addr constant [22 x i8] c"UI_panel_category_add\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"panelsort\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@__const.ui_panel_category_draw_tab.vec = private unnamed_addr constant [4 x [2 x float]] [[2 x float] [float 0x3FC8F5C280000000, float 0x3F947AE140000000], [2 x float] [float 0x3FE19999A0000000, float 0x3FC5A1CAC0000000], [2 x float] [float 0x3FEA978D40000000, float 0x3FDCCCCCC0000000], [2 x float] [float 0x3FEF5C2900000000, float 0x3FE9C28F60000000]], align 16
@.str.3 = private unnamed_addr constant [18 x i8] c"uiHandlePanelData\00", align 1

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @uiPanelFindByType(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.PanelType, ptr %1, i64 0, i32 2
  %4 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 22
  br label %5

5:                                                ; preds = %9, %2
  %6 = phi ptr [ %4, %2 ], [ %7, %9 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Panel, ptr %7, i64 0, i32 4
  %11 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) %3, i64 noundef 64) #17
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %5, !llvm.loop !38

13:                                               ; preds = %5, %9
  %14 = phi ptr [ %7, %9 ], [ null, %5 ]
  ret ptr %14
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @uiBeginPanel(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #3 {
  %7 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 3
  %8 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 2
  %9 = icmp eq ptr %4, null
  %10 = tail call fastcc i32 @panel_aligned(ptr noundef %0, ptr noundef %1), !range !41
  br i1 %9, label %13, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.Panel, ptr %4, i64 0, i32 2
  store ptr %3, ptr %12, align 8, !tbaa !42
  br label %37

13:                                               ; preds = %6
  %14 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %15 = tail call ptr %14(i64 noundef 272, ptr noundef nonnull @.str) #18
  %16 = getelementptr inbounds %struct.Panel, ptr %15, i64 0, i32 2
  store ptr %3, ptr %16, align 8, !tbaa !42
  %17 = getelementptr inbounds %struct.Panel, ptr %15, i64 0, i32 4
  %18 = tail call ptr @BLI_strncpy(ptr noundef nonnull %17, ptr noundef nonnull %8, i64 noundef 64) #18
  %19 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 9
  %20 = load i32, ptr %19, align 8, !tbaa !46
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %13
  %24 = icmp eq i32 %10, 2
  %25 = getelementptr inbounds %struct.Panel, ptr %15, i64 0, i32 13
  %26 = load i16, ptr %25, align 4, !tbaa !49
  %27 = select i1 %24, i16 4, i16 2
  %28 = or i16 %26, %27
  store i16 %28, ptr %25, align 4, !tbaa !49
  br label %29

29:                                               ; preds = %23, %13
  %30 = getelementptr inbounds %struct.Panel, ptr %15, i64 0, i32 7
  %31 = getelementptr inbounds %struct.Panel, ptr %15, i64 0, i32 14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %30, i8 0, i64 16, i1 false)
  %32 = load i16, ptr %31, align 2, !tbaa !50
  %33 = or i16 %32, 16
  store i16 %33, ptr %31, align 2, !tbaa !50
  %34 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 22
  tail call void @BLI_addtail(ptr noundef nonnull %34, ptr noundef %15) #18
  %35 = getelementptr inbounds %struct.Panel, ptr %15, i64 0, i32 5
  %36 = tail call ptr @BLI_strncpy(ptr noundef nonnull %35, ptr noundef nonnull %8, i64 noundef 64) #18
  br label %37

37:                                               ; preds = %29, %11
  %38 = phi ptr [ %15, %29 ], [ %4, %11 ]
  %39 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 9
  %40 = load i32, ptr %39, align 8, !tbaa !46
  %41 = and i32 %40, 2
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.Panel, ptr %38, i64 0, i32 13
  %45 = load i16, ptr %44, align 4, !tbaa !49
  %46 = and i16 %45, 6
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %43
  %49 = and i16 %45, -7
  store i16 %49, ptr %44, align 4, !tbaa !49
  %50 = getelementptr inbounds %struct.Panel, ptr %38, i64 0, i32 9
  store i32 0, ptr %50, align 8, !tbaa !51
  %51 = getelementptr inbounds %struct.Panel, ptr %38, i64 0, i32 10
  store i32 0, ptr %51, align 4, !tbaa !52
  br label %52

52:                                               ; preds = %48, %43, %37
  %53 = getelementptr inbounds %struct.Panel, ptr %38, i64 0, i32 6
  %54 = tail call ptr @BLI_strncpy(ptr noundef nonnull %53, ptr noundef nonnull %7, i64 noundef 64) #18
  %55 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 22
  br label %56

56:                                               ; preds = %60, %52
  %57 = phi ptr [ %55, %52 ], [ %58, %60 ]
  %58 = load ptr, ptr %57, align 8, !tbaa !34
  %59 = icmp eq ptr %58, null
  br i1 %59, label %65, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.Panel, ptr %58, i64 0, i32 14
  %62 = load i16, ptr %61, align 2, !tbaa !50
  %63 = and i16 %62, 1
  %64 = icmp eq i16 %63, 0
  br i1 %64, label %56, label %65, !llvm.loop !53

65:                                               ; preds = %60, %56
  br i1 %9, label %66, label %89

66:                                               ; preds = %65
  br i1 %59, label %71, label %67

67:                                               ; preds = %66
  %68 = getelementptr inbounds %struct.Panel, ptr %58, i64 0, i32 17
  %69 = load i32, ptr %68, align 4, !tbaa !54
  %70 = add nsw i32 %69, 1
  br label %71

71:                                               ; preds = %66, %67
  %72 = phi i32 [ %70, %67 ], [ 0, %66 ]
  %73 = getelementptr inbounds %struct.Panel, ptr %38, i64 0, i32 17
  store i32 %72, ptr %73, align 4, !tbaa !54
  %74 = load ptr, ptr %55, align 8, !tbaa !34
  %75 = icmp eq ptr %74, null
  br i1 %75, label %89, label %76

76:                                               ; preds = %71, %86
  %77 = phi ptr [ %87, %86 ], [ %74, %71 ]
  %78 = icmp eq ptr %77, %38
  br i1 %78, label %86, label %79

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.Panel, ptr %77, i64 0, i32 17
  %81 = load i32, ptr %80, align 4, !tbaa !54
  %82 = load i32, ptr %73, align 4, !tbaa !54
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %86, label %84

84:                                               ; preds = %79
  %85 = add nsw i32 %81, 1
  store i32 %85, ptr %80, align 4, !tbaa !54
  br label %86

86:                                               ; preds = %76, %79, %84
  %87 = load ptr, ptr %77, align 8, !tbaa !34
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %76, !llvm.loop !55

89:                                               ; preds = %86, %71, %65
  br i1 %59, label %94, label %90

90:                                               ; preds = %89
  %91 = getelementptr inbounds %struct.Panel, ptr %58, i64 0, i32 14
  %92 = load i16, ptr %91, align 2, !tbaa !50
  %93 = and i16 %92, -2
  store i16 %93, ptr %91, align 2, !tbaa !50
  br label %94

94:                                               ; preds = %90, %89
  %95 = getelementptr inbounds %struct.uiBlock, ptr %2, i64 0, i32 3
  store ptr %38, ptr %95, align 8, !tbaa !56
  %96 = getelementptr inbounds %struct.Panel, ptr %38, i64 0, i32 14
  %97 = load i16, ptr %96, align 2, !tbaa !50
  %98 = or i16 %97, 3
  store i16 %98, ptr %96, align 2, !tbaa !50
  store i8 0, ptr %5, align 1, !tbaa !63
  %99 = getelementptr inbounds %struct.Panel, ptr %38, i64 0, i32 18
  %100 = load ptr, ptr %99, align 8, !tbaa !64
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %108

102:                                              ; preds = %94
  %103 = getelementptr inbounds %struct.Panel, ptr %38, i64 0, i32 13
  %104 = load i16, ptr %103, align 4, !tbaa !49
  %105 = and i16 %104, 6
  %106 = icmp eq i16 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  store i8 1, ptr %5, align 1, !tbaa !63
  br label %108

108:                                              ; preds = %102, %94, %107
  ret ptr %38
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @panel_aligned(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 8
  %4 = load i8, ptr %3, align 8, !tbaa !65
  switch i8 %4, label %31 [
    i8 4, label %5
    i8 19, label %16
    i8 5, label %21
    i8 6, label %27
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 8
  %7 = load i16, ptr %6, align 2, !tbaa !68
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !71
  %12 = getelementptr inbounds %struct.SpaceButs, ptr %11, i64 0, i32 11
  %13 = load i16, ptr %12, align 8, !tbaa !72
  %14 = sext i16 %13 to i32
  br label %37

15:                                               ; preds = %5
  switch i8 %4, label %31 [
    i8 19, label %16
    i8 5, label %21
    i8 6, label %27
  ]

16:                                               ; preds = %2, %15
  %17 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 8
  %18 = load i16, ptr %17, align 2, !tbaa !68
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %37, label %20

20:                                               ; preds = %16
  switch i8 %4, label %31 [
    i8 5, label %21
    i8 6, label %27
  ]

21:                                               ; preds = %2, %15, %20
  %22 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 8
  %23 = load i16, ptr %22, align 2, !tbaa !68
  %24 = icmp eq i16 %23, 2
  br i1 %24, label %37, label %25

25:                                               ; preds = %21
  %26 = icmp eq i8 %4, 6
  br i1 %26, label %27, label %31

27:                                               ; preds = %2, %15, %20, %25
  %28 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 8
  %29 = load i16, ptr %28, align 2, !tbaa !68
  %30 = icmp eq i16 %29, 7
  br i1 %30, label %37, label %31

31:                                               ; preds = %2, %15, %20, %27, %25
  %32 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 8
  %33 = load i16, ptr %32, align 2, !tbaa !68
  %34 = add i16 %33, -4
  %35 = icmp ult i16 %34, 3
  %36 = select i1 %35, i32 2, i32 0
  br label %37

37:                                               ; preds = %31, %27, %21, %16, %9
  %38 = phi i32 [ %14, %9 ], [ 2, %16 ], [ 2, %21 ], [ 2, %27 ], [ %36, %31 ]
  ret i32 %38
}

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @uiEndPanel(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !56
  %6 = getelementptr inbounds %struct.Panel, ptr %5, i64 0, i32 14
  %7 = load i16, ptr %6, align 2, !tbaa !50
  %8 = and i16 %7, 16
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = and i16 %7, -17
  store i16 %11, ptr %6, align 2, !tbaa !50
  %12 = getelementptr inbounds %struct.Panel, ptr %5, i64 0, i32 9
  store i32 %1, ptr %12, align 8, !tbaa !51
  br label %40

13:                                               ; preds = %3
  %14 = icmp eq i32 %1, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.Panel, ptr %5, i64 0, i32 9
  %17 = load i32, ptr %16, align 8, !tbaa !51
  %18 = icmp eq i32 %17, %1
  br i1 %18, label %19, label %25

19:                                               ; preds = %15, %13
  %20 = icmp eq i32 %2, 0
  br i1 %20, label %35, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.Panel, ptr %5, i64 0, i32 10
  %23 = load i32, ptr %22, align 4, !tbaa !52
  %24 = icmp eq i32 %23, %2
  br i1 %24, label %35, label %25

25:                                               ; preds = %21, %15
  %26 = or i16 %7, 8
  store i16 %26, ptr %6, align 2, !tbaa !50
  %27 = icmp eq i32 %2, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.Panel, ptr %5, i64 0, i32 10
  %30 = load i32, ptr %29, align 4, !tbaa !52
  %31 = sub i32 %30, %2
  %32 = getelementptr inbounds %struct.Panel, ptr %5, i64 0, i32 8
  %33 = load i32, ptr %32, align 4, !tbaa !74
  %34 = add nsw i32 %31, %33
  store i32 %34, ptr %32, align 4, !tbaa !74
  br label %35

35:                                               ; preds = %25, %28, %21, %19
  br i1 %14, label %38, label %36

36:                                               ; preds = %35
  %37 = getelementptr inbounds %struct.Panel, ptr %5, i64 0, i32 9
  store i32 %1, ptr %37, align 8, !tbaa !51
  br label %38

38:                                               ; preds = %36, %35
  %39 = icmp eq i32 %2, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %38, %10
  %41 = getelementptr inbounds %struct.Panel, ptr %5, i64 0, i32 10
  store i32 %2, ptr %41, align 4, !tbaa !52
  br label %42

42:                                               ; preds = %40, %38
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @UI_DrawTriIcon(float noundef %0, float noundef %1, i8 noundef zeroext %2) local_unnamed_addr #3 {
  %4 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !75
  %5 = sitofp i16 %4 to double
  %6 = fmul double %5, 1.500000e-01
  %7 = fptrunc double %6 to float
  %8 = fmul double %5, 2.500000e-01
  %9 = fptrunc double %8 to float
  %10 = fmul double %5, 3.500000e-01
  %11 = fptrunc double %10 to float
  switch i8 %2, label %22 [
    i8 104, label %12
    i8 116, label %17
  ]

12:                                               ; preds = %3
  %13 = fsub float %0, %7
  %14 = fsub float %1, %9
  %15 = fadd float %9, %1
  %16 = fadd float %11, %0
  tail call void @ui_draw_anti_tria(float noundef %13, float noundef %14, float noundef %13, float noundef %15, float noundef %16, float noundef %1) #18
  br label %27

17:                                               ; preds = %3
  %18 = fsub float %0, %9
  %19 = fsub float %1, %11
  %20 = fadd float %9, %0
  %21 = fadd float %7, %1
  tail call void @ui_draw_anti_tria(float noundef %18, float noundef %19, float noundef %20, float noundef %19, float noundef %0, float noundef %21) #18
  br label %27

22:                                               ; preds = %3
  %23 = fsub float %0, %9
  %24 = fadd float %7, %1
  %25 = fadd float %9, %0
  %26 = fsub float %1, %11
  tail call void @ui_draw_anti_tria(float noundef %23, float noundef %24, float noundef %25, float noundef %24, float noundef %0, float noundef %26) #18
  br label %27

27:                                               ; preds = %17, %22, %12
  ret void
}

declare void @ui_draw_anti_tria(float noundef, float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @ui_draw_aligned_panel(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3) local_unnamed_addr #3 {
  %5 = alloca %struct.rcti, align 4
  %6 = alloca %struct.rcti, align 4
  %7 = alloca [3 x i8], align 1
  %8 = alloca [3 x i8], align 1
  %9 = alloca [3 x i8], align 1
  %10 = alloca %struct.rctf, align 4
  %11 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #18
  %13 = getelementptr inbounds %struct.Panel, ptr %12, i64 0, i32 18
  %14 = load ptr, ptr %13, align 8, !tbaa !64
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %344

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.Panel, ptr %12, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !42
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.PanelType, ptr %18, i64 0, i32 9
  %22 = load i32, ptr %21, align 8, !tbaa !46
  %23 = and i32 %22, 2
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %344

25:                                               ; preds = %20, %16
  %26 = load i32, ptr %2, align 4
  %27 = getelementptr inbounds i8, ptr %2, i64 4
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds i8, ptr %2, i64 8
  %30 = getelementptr inbounds i8, ptr %2, i64 12
  %31 = load i32, ptr %30, align 4, !tbaa.struct !79
  %32 = sitofp i32 %31 to double
  %33 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !75
  %34 = sext i16 %33 to i32
  %35 = add nsw i32 %34, 4
  %36 = sitofp i32 %35 to float
  %37 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 12
  %38 = load float, ptr %37, align 8, !tbaa !81
  %39 = fdiv float %36, %38
  %40 = fadd float %39, 0x3F50624DE0000000
  %41 = tail call float @llvm.floor.f32(float %40)
  %42 = fpext float %41 to double
  %43 = fadd double %32, %42
  %44 = fptosi double %43 to i32
  %45 = sitofp i32 %26 to float
  %46 = sitofp i32 %28 to float
  %47 = sitofp i32 %44 to float
  tail call void @glEnable(i32 noundef 3042) #18
  %48 = tail call i32 @UI_GetThemeValue(i32 noundef 16) #18
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %25
  tail call void @UI_ThemeColor4(i32 noundef 14) #18
  %51 = add nsw i32 %31, 1
  %52 = sitofp i32 %51 to float
  tail call void @glRectf(float noundef %45, float noundef %52, float noundef %46, float noundef %47) #18
  tail call void @fdrawline(float noundef %45, float noundef %47, float noundef %46, float noundef %47) #18
  tail call void @fdrawline(float noundef %45, float noundef %47, float noundef %46, float noundef %47) #18
  br label %64

53:                                               ; preds = %25
  %54 = getelementptr inbounds %struct.Panel, ptr %12, i64 0, i32 14
  %55 = load i16, ptr %54, align 2, !tbaa !50
  %56 = and i16 %55, 32
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load float, ptr %37, align 8, !tbaa !81
  %60 = fdiv float 5.000000e+00, %59
  %61 = fadd float %60, %45
  %62 = fsub float %46, %60
  tail call void @glColor4f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 5.000000e-01) #18
  tail call void @fdrawline(float noundef %61, float noundef %47, float noundef %62, float noundef %47) #18
  tail call void @glColor4f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 2.500000e-01) #18
  %63 = fadd float %47, -1.000000e+00
  tail call void @fdrawline(float noundef %61, float noundef %63, float noundef %62, float noundef %63) #18
  br label %64

64:                                               ; preds = %53, %58, %50
  tail call void @glDisable(i32 noundef 3042) #18
  %65 = icmp eq i8 %3, 0
  br i1 %65, label %93, label %66

66:                                               ; preds = %64
  %67 = load ptr, ptr %11, align 8, !tbaa !56
  %68 = getelementptr inbounds %struct.Panel, ptr %67, i64 0, i32 13
  %69 = load i16, ptr %68, align 4, !tbaa !49
  %70 = and i16 %69, 32
  %71 = icmp eq i16 %70, 0
  br i1 %71, label %93, label %72

72:                                               ; preds = %66
  tail call void @glEnable(i32 noundef 3042) #18
  %73 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !75
  %74 = sitofp i16 %73 to float
  %75 = fmul float %74, 0x40019999A0000000
  %76 = load float, ptr %37, align 8, !tbaa !81
  %77 = fdiv float %75, %76
  %78 = fsub float %46, %77
  %79 = sitofp i32 %31 to float
  %80 = fdiv float 5.000000e+00, %76
  %81 = fadd float %80, %79
  %82 = getelementptr inbounds %struct.Panel, ptr %12, i64 0, i32 13
  %83 = load i16, ptr %82, align 4, !tbaa !49
  %84 = and i16 %83, 32
  %85 = icmp eq i16 %84, 0
  %86 = select i1 %85, i32 42, i32 43
  %87 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !82
  %88 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !83
  %89 = sitofp i32 %88 to float
  %90 = fmul float %87, %89
  %91 = fdiv float %90, 7.200000e+01
  %92 = fdiv float %76, %91
  tail call void @UI_icon_draw_aspect(float noundef %78, float noundef %81, i32 noundef %86, float noundef %92, float noundef 1.000000e+00) #18
  tail call void @glDisable(i32 noundef 3042) #18
  br label %93

93:                                               ; preds = %72, %66, %64
  %94 = getelementptr inbounds %struct.Panel, ptr %12, i64 0, i32 13
  %95 = load i16, ptr %94, align 4, !tbaa !49
  %96 = and i16 %95, 2
  %97 = icmp eq i16 %96, 0
  br i1 %97, label %98, label %203

98:                                               ; preds = %93
  %99 = load ptr, ptr %11, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #18
  %100 = getelementptr inbounds %struct.Panel, ptr %99, i64 0, i32 6
  %101 = load i8, ptr %100, align 8, !tbaa !63
  %102 = icmp eq i8 %101, 0
  %103 = getelementptr inbounds %struct.Panel, ptr %99, i64 0, i32 4
  %104 = select i1 %102, ptr %103, ptr %100
  %105 = getelementptr inbounds %struct.Panel, ptr %99, i64 0, i32 15
  %106 = load i16, ptr %105, align 8, !tbaa !84
  %107 = getelementptr inbounds %struct.Panel, ptr %99, i64 0, i32 11
  %108 = load i16, ptr %107, align 8, !tbaa !85
  %109 = sext i16 %108 to i32
  %110 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !75
  %111 = sext i16 %110 to i32
  %112 = lshr i16 %106, 5
  %113 = and i16 %112, 1
  %114 = zext nneg i16 %113 to i32
  %115 = shl nsw i32 %111, %114
  %116 = add nsw i32 %109, 5
  %117 = add nsw i32 %116, %115
  %118 = sitofp i32 %117 to float
  %119 = load float, ptr %37, align 8, !tbaa !81
  %120 = fdiv float %118, %119
  tail call void @UI_ThemeColor(i32 noundef 5) #18
  store i32 %26, ptr %6, align 4, !tbaa.struct !86
  %121 = getelementptr inbounds i8, ptr %6, i64 4
  store i32 %28, ptr %121, align 4, !tbaa.struct !87
  %122 = getelementptr inbounds i8, ptr %6, i64 8
  store i32 %31, ptr %122, align 4, !tbaa.struct !88
  %123 = getelementptr inbounds i8, ptr %6, i64 12
  store i32 %44, ptr %123, align 4, !tbaa.struct !79
  %124 = fadd float %120, 0x3F50624DE0000000
  %125 = fptosi float %124 to i32
  %126 = add nsw i32 %26, %125
  store i32 %126, ptr %6, align 4, !tbaa !89
  %127 = load float, ptr %37, align 8, !tbaa !81
  %128 = fdiv float 2.000000e+00, %127
  %129 = sitofp i32 %31 to float
  %130 = fadd float %128, %129
  %131 = fptosi float %130 to i32
  store i32 %131, ptr %122, align 4, !tbaa !90
  %132 = getelementptr inbounds %struct.uiStyle, ptr %0, i64 0, i32 3
  call void @uiStyleFontDraw(ptr noundef nonnull %132, ptr noundef nonnull %6, ptr noundef nonnull %104) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #18
  %133 = load float, ptr %37, align 8, !tbaa !81
  %134 = fdiv float 5.000000e+00, %133
  %135 = fsub float %46, %134
  %136 = getelementptr inbounds %struct.rctf, ptr %10, i64 0, i32 1
  store float %135, ptr %136, align 4, !tbaa !91
  %137 = sub nsw i32 %44, %31
  %138 = sitofp i32 %137 to float
  %139 = fsub float %135, %138
  store float %139, ptr %10, align 4, !tbaa !92
  %140 = getelementptr inbounds %struct.rctf, ptr %10, i64 0, i32 2
  store float %129, ptr %140, align 4, !tbaa !93
  %141 = getelementptr inbounds %struct.rctf, ptr %10, i64 0, i32 3
  store float %47, ptr %141, align 4, !tbaa !94
  call void @BLI_rctf_scale(ptr noundef nonnull %10, float noundef 0x3FE6666660000000) #18
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %9) #18
  %142 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !82
  %143 = fptosi float %142 to i32
  %144 = load float, ptr %141, align 4, !tbaa !94
  %145 = load float, ptr %140, align 4, !tbaa !93
  %146 = fsub float %144, %145
  %147 = fdiv float %146, 2.200000e+01
  %148 = fadd float %147, 5.000000e-01
  %149 = call float @llvm.floor.f32(float %148)
  %150 = fptosi float %149 to i32
  %151 = call i32 @llvm.smax.i32(i32 %150, i32 1)
  %152 = sitofp i32 %151 to float
  %153 = fmul float %152, 2.000000e+00
  %154 = fadd float %153, 5.000000e-01
  %155 = call float @llvm.floor.f32(float %154)
  %156 = fptosi float %155 to i32
  %157 = call i32 @llvm.smax.i32(i32 %143, i32 %156)
  %158 = fmul float %146, 1.250000e-01
  %159 = sitofp i32 %143 to float
  %160 = fsub float %158, %159
  %161 = fadd float %160, 5.000000e-01
  %162 = call float @llvm.floor.f32(float %161)
  %163 = fptosi float %162 to i32
  %164 = call i32 @llvm.smax.i32(i32 %143, i32 %163)
  %165 = load float, ptr %10, align 4, !tbaa !92
  %166 = fptosi float %165 to i32
  %167 = fptosi float %145 to i32
  %168 = fdiv float %146, 3.000000e+00
  %169 = fadd float %168, 5.000000e-01
  %170 = call float @llvm.floor.f32(float %169)
  %171 = fptosi float %170 to i32
  %172 = call i32 @llvm.smax.i32(i32 %143, i32 %171)
  %173 = call i32 @UI_GetThemeValue(i32 noundef 16) #18
  %174 = icmp eq i32 %173, 0
  %175 = select i1 %174, i32 15, i32 14
  call void @UI_GetThemeColor3ubv(i32 noundef %175, ptr noundef nonnull %7) #18
  call void @UI_GetColorPtrShade3ubv(ptr noundef nonnull %7, ptr noundef nonnull %8, i32 noundef 84) #18
  call void @UI_GetColorPtrShade3ubv(ptr noundef nonnull %7, ptr noundef nonnull %9, i32 noundef -84) #18
  %176 = add nsw i32 %172, %166
  %177 = add nsw i32 %157, %164
  %178 = add nsw i32 %172, %167
  br label %179

179:                                              ; preds = %98, %199
  %180 = phi i32 [ 0, %98 ], [ %200, %199 ]
  %181 = mul nsw i32 %180, %177
  %182 = add nsw i32 %176, %181
  %183 = sub nsw i32 %182, %164
  %184 = sitofp i32 %183 to float
  %185 = sitofp i32 %182 to float
  br label %186

186:                                              ; preds = %179, %186
  %187 = phi i32 [ 0, %179 ], [ %197, %186 ]
  %188 = mul nuw nsw i32 %187, %177
  %189 = add nsw i32 %178, %188
  call void @glColor3ubv(ptr noundef nonnull %9) #18
  %190 = sub nsw i32 %189, %151
  %191 = sitofp i32 %190 to float
  %192 = add nsw i32 %189, %164
  %193 = sub nsw i32 %192, %151
  %194 = sitofp i32 %193 to float
  call void @glRectf(float noundef %184, float noundef %191, float noundef %185, float noundef %194) #18
  call void @glColor3ubv(ptr noundef nonnull %8) #18
  %195 = sitofp i32 %189 to float
  %196 = sitofp i32 %192 to float
  call void @glRectf(float noundef %184, float noundef %195, float noundef %185, float noundef %196) #18
  %197 = add nuw nsw i32 %187, 1
  %198 = icmp eq i32 %187, 0
  br i1 %198, label %186, label %199, !llvm.loop !95

199:                                              ; preds = %186
  %200 = add nuw nsw i32 %180, 1
  %201 = icmp eq i32 %200, 4
  br i1 %201, label %202, label %179, !llvm.loop !96

202:                                              ; preds = %199
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %7) #18
  br label %203

203:                                              ; preds = %202, %93
  %204 = load i16, ptr %94, align 4, !tbaa !49
  %205 = zext i16 %204 to i32
  %206 = and i32 %205, 4
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %288

208:                                              ; preds = %203
  %209 = and i32 %205, 2
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %231, label %211

211:                                              ; preds = %208
  %212 = load ptr, ptr %11, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #18
  %213 = getelementptr inbounds %struct.Panel, ptr %212, i64 0, i32 6
  %214 = load i8, ptr %213, align 8, !tbaa !63
  %215 = icmp eq i8 %214, 0
  %216 = getelementptr inbounds %struct.Panel, ptr %212, i64 0, i32 4
  %217 = select i1 %215, ptr %216, ptr %213
  call void @UI_ThemeColor(i32 noundef 5) #18
  store i32 %26, ptr %5, align 4, !tbaa.struct !86
  %218 = getelementptr inbounds i8, ptr %5, i64 4
  store i32 %28, ptr %218, align 4, !tbaa.struct !87
  %219 = getelementptr inbounds i8, ptr %5, i64 8
  store i32 %31, ptr %219, align 4, !tbaa.struct !88
  %220 = getelementptr inbounds i8, ptr %5, i64 12
  store i32 %44, ptr %220, align 4, !tbaa.struct !79
  %221 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !75
  %222 = sext i16 %221 to i32
  %223 = add nsw i32 %222, 5
  %224 = sitofp i32 %223 to float
  %225 = load float, ptr %37, align 8, !tbaa !81
  %226 = fdiv float %224, %225
  %227 = fadd float %226, %45
  %228 = fadd float %227, 0x3F50624DE0000000
  %229 = fptosi float %228 to i32
  store i32 %229, ptr %5, align 4, !tbaa !89
  %230 = getelementptr inbounds %struct.uiStyle, ptr %0, i64 0, i32 3
  call void @uiStyleFontDrawRotated(ptr noundef nonnull %230, ptr noundef nonnull %5, ptr noundef nonnull %217) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #18
  br label %288

231:                                              ; preds = %208
  %232 = and i32 %205, 1
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %251, label %234

234:                                              ; preds = %231
  %235 = getelementptr inbounds %struct.Panel, ptr %12, i64 0, i32 15
  %236 = load i16, ptr %235, align 8, !tbaa !84
  %237 = and i16 %236, 2
  %238 = icmp eq i16 %237, 0
  %239 = select i1 %238, i32 0, i32 15
  call void @uiSetRoundBox(i32 noundef %239) #18
  call void @UI_ThemeColorShade(i32 noundef 2, i32 noundef -120) #18
  %240 = load i32, ptr %2, align 4, !tbaa !89
  %241 = sitofp i32 %240 to float
  %242 = fadd float %241, 5.000000e-01
  %243 = load i32, ptr %29, align 4, !tbaa !90
  %244 = sitofp i32 %243 to float
  %245 = fadd float %244, 5.000000e-01
  %246 = load i32, ptr %27, align 4, !tbaa !97
  %247 = sitofp i32 %246 to float
  %248 = fadd float %247, 5.000000e-01
  %249 = fadd float %47, 5.000000e-01
  %250 = fadd float %249, 1.000000e+00
  call void @uiRoundRect(float noundef %242, float noundef %245, float noundef %248, float noundef %250, float noundef 8.000000e+00) #18
  br label %251

251:                                              ; preds = %234, %231
  %252 = call i32 @UI_GetThemeValue(i32 noundef 17) #18
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %259, label %254

254:                                              ; preds = %251
  call void @glEnable(i32 noundef 3042) #18
  call void @UI_ThemeColor4(i32 noundef 15) #18
  %255 = load i32, ptr %2, align 4, !tbaa !89
  %256 = load i32, ptr %29, align 4, !tbaa !90
  %257 = load i32, ptr %27, align 4, !tbaa !97
  %258 = load i32, ptr %30, align 4, !tbaa !98
  call void @glRecti(i32 noundef %255, i32 noundef %256, i32 noundef %257, i32 noundef %258) #18
  br label %259

259:                                              ; preds = %254, %251
  %260 = getelementptr inbounds %struct.Panel, ptr %12, i64 0, i32 15
  %261 = load i16, ptr %260, align 8, !tbaa !84
  %262 = and i16 %261, 512
  %263 = icmp eq i16 %262, 0
  br i1 %263, label %288, label %264

264:                                              ; preds = %259
  %265 = load i32, ptr %27, align 4, !tbaa !97
  %266 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !75
  %267 = sext i16 %266 to i32
  %268 = sub i32 %265, %267
  %269 = add i32 %268, -2
  %270 = sitofp i32 %269 to float
  %271 = add nsw i32 %265, -3
  %272 = sitofp i32 %271 to float
  %273 = load i32, ptr %29, align 4, !tbaa !90
  %274 = add nsw i32 %273, 3
  %275 = sitofp i32 %274 to float
  %276 = add i32 %273, %267
  %277 = add i32 %276, 2
  %278 = sitofp i32 %277 to float
  %279 = fsub float %272, %270
  %280 = fmul float %279, 5.000000e-01
  %281 = fsub float %278, %275
  %282 = fmul float %281, 5.000000e-01
  call void @glEnable(i32 noundef 3042) #18
  call void @glColor4ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext 50) #18
  call void @fdrawline(float noundef %270, float noundef %275, float noundef %272, float noundef %278) #18
  %283 = fadd float %280, %270
  %284 = fsub float %278, %282
  call void @fdrawline(float noundef %283, float noundef %275, float noundef %272, float noundef %284) #18
  call void @glColor4ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 50) #18
  %285 = fadd float %275, 1.000000e+00
  %286 = fadd float %278, 1.000000e+00
  call void @fdrawline(float noundef %270, float noundef %285, float noundef %272, float noundef %286) #18
  %287 = fadd float %284, 1.000000e+00
  call void @fdrawline(float noundef %283, float noundef %285, float noundef %272, float noundef %287) #18
  call void @glDisable(i32 noundef 3042) #18
  br label %288

288:                                              ; preds = %211, %264, %259, %203
  %289 = getelementptr inbounds %struct.Panel, ptr %12, i64 0, i32 15
  %290 = load i16, ptr %289, align 8, !tbaa !84
  %291 = and i16 %290, 32
  %292 = icmp eq i16 %291, 0
  br i1 %292, label %302, label %293

293:                                              ; preds = %288
  call void @UI_ThemeColor(i32 noundef 5) #18
  %294 = load i32, ptr %2, align 4, !tbaa !89
  %295 = add nsw i32 %294, 8
  %296 = sitofp i32 %295 to float
  %297 = load i32, ptr %30, align 4, !tbaa !98
  %298 = add nsw i32 %297, 2
  %299 = sitofp i32 %298 to float
  %300 = fadd float %296, 9.375000e+00
  %301 = fadd float %299, 9.375000e+00
  call void @glEnable(i32 noundef 2848) #18
  call void @glEnable(i32 noundef 3042) #18
  call void @glLineWidth(float noundef 2.000000e+00) #18
  call void @fdrawline(float noundef %296, float noundef %299, float noundef %300, float noundef %301) #18
  call void @fdrawline(float noundef %296, float noundef %301, float noundef %300, float noundef %299) #18
  call void @glLineWidth(float noundef 1.000000e+00) #18
  call void @glDisable(i32 noundef 2848) #18
  call void @glDisable(i32 noundef 3042) #18
  br label %302

302:                                              ; preds = %293, %288
  call void @UI_ThemeColor(i32 noundef 5) #18
  %303 = load float, ptr %37, align 8, !tbaa !81
  %304 = fdiv float 5.000000e+00, %303
  %305 = fadd float %304, %45
  store float %305, ptr %10, align 4, !tbaa !92
  %306 = sub nsw i32 %44, %31
  %307 = sitofp i32 %306 to float
  %308 = fadd float %305, %307
  %309 = getelementptr inbounds %struct.rctf, ptr %10, i64 0, i32 1
  store float %308, ptr %309, align 4, !tbaa !91
  %310 = sitofp i32 %31 to float
  %311 = getelementptr inbounds %struct.rctf, ptr %10, i64 0, i32 2
  store float %310, ptr %311, align 4, !tbaa !93
  %312 = getelementptr inbounds %struct.rctf, ptr %10, i64 0, i32 3
  store float %47, ptr %312, align 4, !tbaa !94
  call void @BLI_rctf_scale(ptr noundef nonnull %10, float noundef 0x3FD6666660000000) #18
  %313 = load i16, ptr %94, align 4, !tbaa !49
  %314 = zext i16 %313 to i32
  %315 = and i32 %314, 4
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %325, label %317

317:                                              ; preds = %302
  %318 = load float, ptr %312, align 4, !tbaa !94
  %319 = load float, ptr %311, align 4, !tbaa !93
  %320 = fsub float %318, %319
  %321 = fmul float %320, 5.000000e-01
  %322 = load float, ptr %10, align 4, !tbaa !92
  %323 = load float, ptr %309, align 4, !tbaa !91
  %324 = fadd float %319, %321
  call void @ui_draw_anti_tria(float noundef %322, float noundef %319, float noundef %322, float noundef %318, float noundef %323, float noundef %324) #18
  br label %344

325:                                              ; preds = %302
  %326 = and i32 %314, 2
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %336, label %328

328:                                              ; preds = %325
  %329 = load float, ptr %312, align 4, !tbaa !94
  %330 = load float, ptr %311, align 4, !tbaa !93
  %331 = fsub float %329, %330
  %332 = fmul float %331, 5.000000e-01
  %333 = load float, ptr %10, align 4, !tbaa !92
  %334 = load float, ptr %309, align 4, !tbaa !91
  %335 = fadd float %330, %332
  call void @ui_draw_anti_tria(float noundef %333, float noundef %330, float noundef %333, float noundef %329, float noundef %334, float noundef %335) #18
  br label %344

336:                                              ; preds = %325
  %337 = load float, ptr %309, align 4, !tbaa !91
  %338 = load float, ptr %10, align 4, !tbaa !92
  %339 = fsub float %337, %338
  %340 = fmul float %339, 5.000000e-01
  %341 = load float, ptr %312, align 4, !tbaa !94
  %342 = fadd float %338, %340
  %343 = load float, ptr %311, align 4, !tbaa !93
  call void @ui_draw_anti_tria(float noundef %338, float noundef %341, float noundef %337, float noundef %341, float noundef %342, float noundef %343) #18
  br label %344

344:                                              ; preds = %317, %336, %328, %20, %4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #18
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

declare void @glEnable(i32 noundef) local_unnamed_addr #5

declare i32 @UI_GetThemeValue(i32 noundef) local_unnamed_addr #5

declare void @UI_ThemeColor4(i32 noundef) local_unnamed_addr #5

declare void @glRectf(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #5

declare void @fdrawline(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #5

declare void @glColor4f(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #5

declare void @glDisable(i32 noundef) local_unnamed_addr #5

declare void @UI_icon_draw_aspect(float noundef, float noundef, i32 noundef, float noundef, float noundef) local_unnamed_addr #5

declare void @BLI_rctf_scale(ptr noundef, float noundef) local_unnamed_addr #5

declare void @uiSetRoundBox(i32 noundef) local_unnamed_addr #5

declare void @UI_ThemeColorShade(i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @uiRoundRect(float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #5

declare void @glRecti(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @UI_ThemeColor(i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @uiBeginPanels(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 22
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %12, %6 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.Panel, ptr %7, i64 0, i32 14
  %9 = load i16, ptr %8, align 2, !tbaa !50
  %10 = shl i16 %9, 1
  %11 = and i16 %10, 4
  store i16 %11, ptr %8, align 2, !tbaa !50
  %12 = load ptr, ptr %7, align 8, !tbaa !34
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6, !llvm.loop !99

14:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @uiEndPanels(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #3 {
  %5 = tail call ptr @CTX_wm_area(ptr noundef %0) #18
  %6 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 21
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %54, label %9

9:                                                ; preds = %4, %51
  %10 = phi ptr [ %52, %51 ], [ %7, %4 ]
  %11 = getelementptr inbounds %struct.uiBlock, ptr %10, i64 0, i32 36
  %12 = load i8, ptr %11, align 1, !tbaa !100
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %51, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.uiBlock, ptr %10, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !56
  %17 = icmp eq ptr %16, null
  br i1 %17, label %51, label %18

18:                                               ; preds = %14
  %19 = tail call ptr @UI_GetStyleDraw() #18
  tail call void @ui_bounds_block(ptr noundef nonnull %10) #18
  %20 = load ptr, ptr %15, align 8, !tbaa !56
  %21 = getelementptr inbounds %struct.Panel, ptr %20, i64 0, i32 10
  %22 = load i32, ptr %21, align 4, !tbaa !52
  %23 = getelementptr inbounds %struct.uiBlock, ptr %10, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !34
  %25 = icmp eq ptr %24, null
  br i1 %25, label %42, label %26

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.uiStyle, ptr %19, i64 0, i32 15
  %28 = load i16, ptr %27, align 2, !tbaa !101
  %29 = sext i16 %28 to i32
  %30 = sub nsw i32 %22, %29
  %31 = sitofp i32 %30 to float
  br label %32

32:                                               ; preds = %26, %32
  %33 = phi ptr [ %24, %26 ], [ %40, %32 ]
  %34 = getelementptr inbounds %struct.uiBut, ptr %33, i64 0, i32 18, i32 2
  %35 = load float, ptr %34, align 8, !tbaa !104
  %36 = fadd float %35, %31
  store float %36, ptr %34, align 8, !tbaa !104
  %37 = getelementptr inbounds %struct.uiBut, ptr %33, i64 0, i32 18, i32 3
  %38 = load float, ptr %37, align 4, !tbaa !108
  %39 = fadd float %38, %31
  store float %39, ptr %37, align 4, !tbaa !108
  %40 = load ptr, ptr %33, align 8, !tbaa !34
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %32, !llvm.loop !109

42:                                               ; preds = %32, %18
  %43 = getelementptr inbounds %struct.Panel, ptr %20, i64 0, i32 9
  %44 = load i32, ptr %43, align 8, !tbaa !51
  %45 = sitofp i32 %44 to float
  %46 = getelementptr inbounds %struct.uiBlock, ptr %10, i64 0, i32 11
  %47 = getelementptr inbounds %struct.uiBlock, ptr %10, i64 0, i32 11, i32 1
  store float %45, ptr %47, align 4, !tbaa !110
  %48 = sitofp i32 %22 to float
  %49 = getelementptr inbounds %struct.uiBlock, ptr %10, i64 0, i32 11, i32 3
  store float %48, ptr %49, align 4, !tbaa !111
  %50 = getelementptr inbounds %struct.uiBlock, ptr %10, i64 0, i32 11, i32 2
  store float 0.000000e+00, ptr %50, align 8, !tbaa !112
  store float 0.000000e+00, ptr %46, align 8, !tbaa !113
  br label %51

51:                                               ; preds = %9, %14, %42
  %52 = load ptr, ptr %10, align 8, !tbaa !34
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %9, !llvm.loop !114

54:                                               ; preds = %51, %4
  %55 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 22
  %56 = load ptr, ptr %55, align 8, !tbaa !34
  %57 = icmp eq ptr %56, null
  br i1 %57, label %98, label %58

58:                                               ; preds = %54, %95
  %59 = phi ptr [ %96, %95 ], [ %56, %54 ]
  %60 = getelementptr inbounds %struct.Panel, ptr %59, i64 0, i32 14
  %61 = load i16, ptr %60, align 2, !tbaa !50
  %62 = and i16 %61, 2
  %63 = icmp eq i16 %62, 0
  br i1 %63, label %64, label %95

64:                                               ; preds = %58
  %65 = load ptr, ptr %55, align 8, !tbaa !34
  %66 = icmp eq ptr %65, null
  br i1 %66, label %95, label %67

67:                                               ; preds = %64, %81
  %68 = phi ptr [ %82, %81 ], [ %65, %64 ]
  %69 = getelementptr inbounds %struct.Panel, ptr %68, i64 0, i32 14
  %70 = load i16, ptr %69, align 2, !tbaa !50
  %71 = and i16 %70, 2
  %72 = icmp eq i16 %71, 0
  br i1 %72, label %81, label %73

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.Panel, ptr %68, i64 0, i32 18
  %75 = load ptr, ptr %74, align 8, !tbaa !64
  %76 = icmp eq ptr %75, %59
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.Panel, ptr %68, i64 0, i32 18
  %79 = load ptr, ptr %55, align 8, !tbaa !34
  %80 = icmp eq ptr %79, null
  br i1 %80, label %93, label %84

81:                                               ; preds = %67, %73
  %82 = load ptr, ptr %68, align 8, !tbaa !34
  %83 = icmp eq ptr %82, null
  br i1 %83, label %95, label %67, !llvm.loop !115

84:                                               ; preds = %77, %90
  %85 = phi ptr [ %91, %90 ], [ %79, %77 ]
  %86 = getelementptr inbounds %struct.Panel, ptr %85, i64 0, i32 18
  %87 = load ptr, ptr %86, align 8, !tbaa !64
  %88 = icmp eq ptr %87, %59
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  store ptr %68, ptr %86, align 8, !tbaa !64
  br label %90

90:                                               ; preds = %84, %89
  %91 = load ptr, ptr %85, align 8, !tbaa !34
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %84, !llvm.loop !116

93:                                               ; preds = %90, %77
  %94 = getelementptr inbounds %struct.Panel, ptr %59, i64 0, i32 18
  store ptr %68, ptr %94, align 8, !tbaa !64
  store ptr null, ptr %78, align 8, !tbaa !64
  tail call void @ED_region_tag_redraw(ptr noundef %1) #18
  br label %95

95:                                               ; preds = %81, %64, %58, %93
  %96 = load ptr, ptr %59, align 8, !tbaa !34
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %58, !llvm.loop !117

98:                                               ; preds = %95, %54
  %99 = getelementptr inbounds %struct.ScrArea, ptr %5, i64 0, i32 8
  %100 = load i8, ptr %99, align 8, !tbaa !65
  switch i8 %100, label %132 [
    i8 4, label %101
    i8 6, label %122
    i8 5, label %128
  ]

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 8
  %103 = load i16, ptr %102, align 2, !tbaa !68
  %104 = icmp eq i16 %103, 0
  br i1 %104, label %105, label %121

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.ScrArea, ptr %5, i64 0, i32 19
  %107 = load ptr, ptr %106, align 8, !tbaa !71
  %108 = getelementptr inbounds %struct.SpaceButs, ptr %107, i64 0, i32 11
  %109 = load i16, ptr %108, align 8, !tbaa !72
  %110 = icmp eq i16 %109, 0
  br i1 %110, label %132, label %111

111:                                              ; preds = %105
  %112 = getelementptr inbounds %struct.SpaceButs, ptr %107, i64 0, i32 10
  %113 = load i16, ptr %112, align 2, !tbaa !118
  %114 = icmp eq i16 %113, 0
  br i1 %114, label %115, label %163

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.SpaceButs, ptr %107, i64 0, i32 8
  %117 = load i16, ptr %116, align 2, !tbaa !119
  %118 = getelementptr inbounds %struct.SpaceButs, ptr %107, i64 0, i32 7
  %119 = load i16, ptr %118, align 8, !tbaa !120
  %120 = icmp eq i16 %117, %119
  br i1 %120, label %132, label %163

121:                                              ; preds = %101
  switch i8 %100, label %132 [
    i8 6, label %122
    i8 5, label %128
  ]

122:                                              ; preds = %98, %121
  %123 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 8
  %124 = load i16, ptr %123, align 2, !tbaa !68
  %125 = icmp eq i16 %124, 7
  br i1 %125, label %163, label %126

126:                                              ; preds = %122
  %127 = icmp eq i8 %100, 5
  br i1 %127, label %128, label %132

128:                                              ; preds = %98, %121, %126
  %129 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 8
  %130 = load i16, ptr %129, align 2, !tbaa !68
  %131 = icmp eq i16 %130, 2
  br i1 %131, label %163, label %132

132:                                              ; preds = %98, %121, %128, %126, %115, %105
  %133 = load ptr, ptr %55, align 8, !tbaa !34
  %134 = icmp eq ptr %133, null
  br i1 %134, label %137, label %139

135:                                              ; preds = %145
  %136 = icmp eq i32 %149, 0
  br label %137

137:                                              ; preds = %135, %132
  %138 = phi i1 [ true, %132 ], [ %136, %135 ]
  br label %152

139:                                              ; preds = %132, %145
  %140 = phi ptr [ %150, %145 ], [ %133, %132 ]
  %141 = phi i32 [ %149, %145 ], [ 0, %132 ]
  %142 = getelementptr inbounds %struct.Panel, ptr %140, i64 0, i32 14
  %143 = load i16, ptr %142, align 2, !tbaa !50
  %144 = and i16 %143, 6
  switch i16 %144, label %145 [
    i16 4, label %163
    i16 2, label %163
  ]

145:                                              ; preds = %139
  %146 = getelementptr inbounds %struct.Panel, ptr %140, i64 0, i32 19
  %147 = load ptr, ptr %146, align 8, !tbaa !121
  %148 = icmp eq ptr %147, null
  %149 = select i1 %148, i32 %141, i32 1
  %150 = load ptr, ptr %140, align 8, !tbaa !34
  %151 = icmp eq ptr %150, null
  br i1 %151, label %135, label %139, !llvm.loop !122

152:                                              ; preds = %137, %156
  %153 = phi ptr [ %154, %156 ], [ %55, %137 ]
  %154 = load ptr, ptr %153, align 8, !tbaa !34
  %155 = icmp eq ptr %154, null
  br i1 %155, label %163, label %156

156:                                              ; preds = %152
  %157 = getelementptr inbounds %struct.Panel, ptr %154, i64 0, i32 14
  %158 = load i16, ptr %157, align 2, !tbaa !50
  %159 = and i16 %158, 8
  %160 = icmp eq i16 %159, 0
  br i1 %160, label %152, label %161, !llvm.loop !123

161:                                              ; preds = %156
  %162 = select i1 %138, ptr %154, ptr null
  br label %163

163:                                              ; preds = %139, %139, %152, %161, %111, %115, %122, %128
  %164 = phi ptr [ null, %115 ], [ null, %111 ], [ null, %122 ], [ null, %128 ], [ %162, %161 ], [ null, %152 ], [ null, %139 ], [ null, %139 ]
  %165 = phi i1 [ false, %115 ], [ false, %111 ], [ false, %122 ], [ false, %128 ], [ false, %161 ], [ true, %152 ], [ false, %139 ], [ false, %139 ]
  br i1 %165, label %171, label %166

166:                                              ; preds = %163
  %167 = icmp eq ptr %164, null
  br i1 %167, label %169, label %168

168:                                              ; preds = %166
  tail call fastcc void @panel_activate_state(ptr noundef %0, ptr noundef nonnull %164, i32 noundef 3)
  br label %171

169:                                              ; preds = %166
  %170 = tail call fastcc zeroext i8 @uiAlignPanelStep(ptr noundef %5, ptr noundef %1, float noundef 1.000000e+00, i8 noundef zeroext 0), !range !124
  br label %171

171:                                              ; preds = %168, %169, %163
  %172 = load ptr, ptr %6, align 8, !tbaa !34
  %173 = icmp eq ptr %172, null
  br i1 %173, label %197, label %174

174:                                              ; preds = %171, %193
  %175 = phi ptr [ %195, %193 ], [ %172, %171 ]
  %176 = phi ptr [ %194, %193 ], [ null, %171 ]
  %177 = getelementptr inbounds %struct.uiBlock, ptr %175, i64 0, i32 36
  %178 = load i8, ptr %177, align 1, !tbaa !100
  %179 = icmp eq i8 %178, 0
  br i1 %179, label %193, label %180

180:                                              ; preds = %174
  %181 = getelementptr inbounds %struct.uiBlock, ptr %175, i64 0, i32 3
  %182 = load ptr, ptr %181, align 8, !tbaa !56
  %183 = icmp eq ptr %182, null
  br i1 %183, label %193, label %184

184:                                              ; preds = %180
  %185 = icmp eq ptr %176, null
  br i1 %185, label %192, label %186

186:                                              ; preds = %184
  %187 = getelementptr inbounds %struct.Panel, ptr %182, i64 0, i32 17
  %188 = load i32, ptr %187, align 4, !tbaa !54
  %189 = getelementptr inbounds %struct.Panel, ptr %176, i64 0, i32 17
  %190 = load i32, ptr %189, align 4, !tbaa !54
  %191 = icmp slt i32 %188, %190
  br i1 %191, label %192, label %193

192:                                              ; preds = %186, %184
  br label %193

193:                                              ; preds = %174, %180, %192, %186
  %194 = phi ptr [ %182, %192 ], [ %176, %186 ], [ %176, %180 ], [ %176, %174 ]
  %195 = load ptr, ptr %175, align 8, !tbaa !34
  %196 = icmp eq ptr %195, null
  br i1 %196, label %197, label %174, !llvm.loop !125

197:                                              ; preds = %193, %171
  %198 = phi ptr [ null, %171 ], [ %194, %193 ]
  %199 = icmp eq ptr %198, null
  br i1 %199, label %204, label %200

200:                                              ; preds = %197
  %201 = getelementptr inbounds %struct.Panel, ptr %198, i64 0, i32 14
  %202 = load i16, ptr %201, align 2, !tbaa !50
  %203 = or i16 %202, 32
  store i16 %203, ptr %201, align 2, !tbaa !50
  br label %204

204:                                              ; preds = %200, %197
  %205 = load ptr, ptr %55, align 8, !tbaa !34
  %206 = icmp eq ptr %205, null
  br i1 %206, label %349, label %207

207:                                              ; preds = %204
  %208 = tail call fastcc i32 @panel_aligned(ptr noundef %5, ptr noundef %1), !range !41
  %209 = icmp eq i32 %208, 2
  %210 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4
  %211 = sext i16 %210 to i32
  %212 = add nsw i32 %211, 4
  %213 = sext i16 %210 to i32
  %214 = add nsw i32 %213, 4
  %215 = sext i16 %210 to i32
  %216 = add nsw i32 %215, 4
  br label %217

217:                                              ; preds = %207, %344
  %218 = phi ptr [ %205, %207 ], [ %347, %344 ]
  %219 = phi i32 [ 0, %207 ], [ %346, %344 ]
  %220 = phi i32 [ 0, %207 ], [ %345, %344 ]
  %221 = getelementptr inbounds %struct.Panel, ptr %218, i64 0, i32 14
  %222 = load i16, ptr %221, align 2, !tbaa !50
  %223 = and i16 %222, 2
  %224 = icmp eq i16 %223, 0
  br i1 %224, label %344, label %225

225:                                              ; preds = %217
  br i1 %209, label %226, label %264

226:                                              ; preds = %225
  %227 = getelementptr inbounds %struct.Panel, ptr %218, i64 0, i32 7
  %228 = load i32, ptr %227, align 8, !tbaa !126
  %229 = getelementptr inbounds %struct.Panel, ptr %218, i64 0, i32 9
  %230 = load i32, ptr %229, align 8, !tbaa !51
  %231 = add nsw i32 %230, %228
  %232 = getelementptr inbounds %struct.Panel, ptr %218, i64 0, i32 13
  %233 = load i16, ptr %232, align 4, !tbaa !49
  %234 = and i16 %233, 4
  %235 = icmp eq i16 %234, 0
  br i1 %235, label %242, label %236

236:                                              ; preds = %226
  %237 = getelementptr inbounds %struct.Panel, ptr %218, i64 0, i32 8
  %238 = load i32, ptr %237, align 4, !tbaa !74
  %239 = getelementptr inbounds %struct.Panel, ptr %218, i64 0, i32 10
  %240 = load i32, ptr %239, align 4, !tbaa !52
  %241 = add nsw i32 %240, %238
  br label %339

242:                                              ; preds = %226
  %243 = getelementptr inbounds %struct.Panel, ptr %218, i64 0, i32 18
  %244 = load ptr, ptr %243, align 8, !tbaa !64
  %245 = icmp eq ptr %244, null
  br i1 %245, label %261, label %246

246:                                              ; preds = %242
  %247 = getelementptr inbounds %struct.Panel, ptr %244, i64 0, i32 13
  %248 = load i16, ptr %247, align 4, !tbaa !49
  %249 = and i16 %248, 4
  %250 = icmp eq i16 %249, 0
  br i1 %250, label %257, label %251

251:                                              ; preds = %246
  %252 = getelementptr inbounds %struct.Panel, ptr %218, i64 0, i32 8
  %253 = load i32, ptr %252, align 4, !tbaa !74
  %254 = getelementptr inbounds %struct.Panel, ptr %218, i64 0, i32 10
  %255 = load i32, ptr %254, align 4, !tbaa !52
  %256 = add nsw i32 %255, %253
  br label %339

257:                                              ; preds = %246
  br i1 %245, label %261, label %258

258:                                              ; preds = %257
  %259 = getelementptr inbounds %struct.Panel, ptr %244, i64 0, i32 8
  %260 = load i32, ptr %259, align 4, !tbaa !74
  br label %339

261:                                              ; preds = %242, %257
  %262 = getelementptr inbounds %struct.Panel, ptr %218, i64 0, i32 8
  %263 = load i32, ptr %262, align 4, !tbaa !74
  br label %339

264:                                              ; preds = %225
  %265 = getelementptr inbounds %struct.Panel, ptr %218, i64 0, i32 13
  %266 = load i16, ptr %265, align 4, !tbaa !49
  %267 = and i16 %266, 2
  %268 = icmp eq i16 %267, 0
  br i1 %268, label %284, label %269

269:                                              ; preds = %264
  %270 = getelementptr inbounds %struct.Panel, ptr %218, i64 0, i32 7
  %271 = load i32, ptr %270, align 8, !tbaa !126
  %272 = getelementptr inbounds %struct.Panel, ptr %218, i64 0, i32 2
  %273 = load ptr, ptr %272, align 8, !tbaa !42
  %274 = icmp eq ptr %273, null
  br i1 %274, label %280, label %275

275:                                              ; preds = %269
  %276 = getelementptr inbounds %struct.PanelType, ptr %273, i64 0, i32 9
  %277 = load i32, ptr %276, align 8, !tbaa !46
  %278 = and i32 %277, 2
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %280, label %281

280:                                              ; preds = %275, %269
  br label %281

281:                                              ; preds = %280, %275
  %282 = phi i32 [ %212, %280 ], [ 0, %275 ]
  %283 = add nsw i32 %282, %271
  br label %314

284:                                              ; preds = %264
  %285 = getelementptr inbounds %struct.Panel, ptr %218, i64 0, i32 18
  %286 = load ptr, ptr %285, align 8, !tbaa !64
  %287 = icmp eq ptr %286, null
  br i1 %287, label %308, label %288

288:                                              ; preds = %284
  %289 = getelementptr inbounds %struct.Panel, ptr %286, i64 0, i32 13
  %290 = load i16, ptr %289, align 4, !tbaa !49
  %291 = and i16 %290, 2
  %292 = icmp eq i16 %291, 0
  br i1 %292, label %308, label %293

293:                                              ; preds = %288
  %294 = getelementptr inbounds %struct.Panel, ptr %218, i64 0, i32 7
  %295 = load i32, ptr %294, align 8, !tbaa !126
  %296 = getelementptr inbounds %struct.Panel, ptr %218, i64 0, i32 2
  %297 = load ptr, ptr %296, align 8, !tbaa !42
  %298 = icmp eq ptr %297, null
  br i1 %298, label %304, label %299

299:                                              ; preds = %293
  %300 = getelementptr inbounds %struct.PanelType, ptr %297, i64 0, i32 9
  %301 = load i32, ptr %300, align 8, !tbaa !46
  %302 = and i32 %301, 2
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %304, label %305

304:                                              ; preds = %299, %293
  br label %305

305:                                              ; preds = %304, %299
  %306 = phi i32 [ %214, %304 ], [ 0, %299 ]
  %307 = add nsw i32 %306, %295
  br label %314

308:                                              ; preds = %288, %284
  %309 = getelementptr inbounds %struct.Panel, ptr %218, i64 0, i32 7
  %310 = load i32, ptr %309, align 8, !tbaa !126
  %311 = getelementptr inbounds %struct.Panel, ptr %218, i64 0, i32 9
  %312 = load i32, ptr %311, align 8, !tbaa !51
  %313 = add nsw i32 %312, %310
  br label %314

314:                                              ; preds = %281, %305, %308
  %315 = phi i32 [ %283, %281 ], [ %307, %305 ], [ %313, %308 ]
  %316 = getelementptr inbounds %struct.Panel, ptr %218, i64 0, i32 9
  %317 = load i32, ptr %316, align 8, !tbaa !51
  %318 = add nsw i32 %317, %315
  %319 = getelementptr inbounds %struct.Panel, ptr %218, i64 0, i32 8
  %320 = load i32, ptr %319, align 4, !tbaa !74
  %321 = getelementptr inbounds %struct.Panel, ptr %218, i64 0, i32 2
  %322 = load ptr, ptr %321, align 8, !tbaa !42
  %323 = icmp eq ptr %322, null
  br i1 %323, label %332, label %324

324:                                              ; preds = %314
  %325 = getelementptr inbounds %struct.PanelType, ptr %322, i64 0, i32 9
  %326 = load i32, ptr %325, align 8, !tbaa !46
  %327 = and i32 %326, 2
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %332, label %329

329:                                              ; preds = %324
  %330 = getelementptr inbounds %struct.Panel, ptr %218, i64 0, i32 10
  %331 = load i32, ptr %330, align 4, !tbaa !52
  br label %336

332:                                              ; preds = %324, %314
  %333 = getelementptr inbounds %struct.Panel, ptr %218, i64 0, i32 10
  %334 = load i32, ptr %333, align 4, !tbaa !52
  %335 = add nsw i32 %216, %334
  br label %336

336:                                              ; preds = %332, %329
  %337 = phi i32 [ %331, %329 ], [ %335, %332 ]
  %338 = add nsw i32 %337, %320
  br label %339

339:                                              ; preds = %336, %261, %258, %251, %236
  %340 = phi i32 [ %318, %336 ], [ %231, %236 ], [ %231, %251 ], [ %231, %258 ], [ %231, %261 ]
  %341 = phi i32 [ %338, %336 ], [ %241, %236 ], [ %256, %251 ], [ %260, %258 ], [ %263, %261 ]
  %342 = tail call i32 @llvm.smax.i32(i32 %340, i32 %220)
  %343 = tail call i32 @llvm.smin.i32(i32 %219, i32 %341)
  br label %344

344:                                              ; preds = %339, %217
  %345 = phi i32 [ %342, %339 ], [ %220, %217 ]
  %346 = phi i32 [ %343, %339 ], [ %219, %217 ]
  %347 = load ptr, ptr %218, align 8, !tbaa !34
  %348 = icmp eq ptr %347, null
  br i1 %348, label %349, label %217, !llvm.loop !127

349:                                              ; preds = %344, %204
  %350 = phi i32 [ 0, %204 ], [ %345, %344 ]
  %351 = phi i32 [ 0, %204 ], [ %346, %344 ]
  %352 = icmp eq i32 %350, 0
  %353 = select i1 %352, i32 340, i32 %350
  %354 = icmp eq i32 %351, 0
  %355 = select i1 %354, i32 -340, i32 %351
  store i32 %353, ptr %2, align 4, !tbaa !80
  store i32 %355, ptr %3, align 4, !tbaa !80
  ret void
}

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #5

declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @panel_activate_state(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.Panel, ptr %1, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !121
  %6 = tail call ptr @CTX_wm_window(ptr noundef %0) #18
  %7 = tail call ptr @CTX_wm_region(ptr noundef %0) #18
  %8 = icmp eq ptr %5, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = load i32, ptr %5, align 8, !tbaa !128
  %11 = icmp eq i32 %10, %2
  br i1 %11, label %87, label %12

12:                                               ; preds = %9, %3
  %13 = icmp eq i32 %2, 4
  %14 = add i32 %2, -3
  %15 = icmp ult i32 %14, 2
  br i1 %15, label %16, label %35

16:                                               ; preds = %12
  br i1 %8, label %31, label %17

17:                                               ; preds = %16
  %18 = load i32, ptr %5, align 8, !tbaa !128
  %19 = icmp eq i32 %18, 3
  br i1 %19, label %31, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 22
  %22 = load ptr, ptr %21, align 8, !tbaa !34
  %23 = icmp eq ptr %22, null
  br i1 %23, label %31, label %24

24:                                               ; preds = %20, %24
  %25 = phi ptr [ %29, %24 ], [ %22, %20 ]
  %26 = getelementptr inbounds %struct.Panel, ptr %25, i64 0, i32 13
  %27 = load i16, ptr %26, align 4, !tbaa !49
  %28 = and i16 %27, -17
  store i16 %28, ptr %26, align 4, !tbaa !49
  %29 = load ptr, ptr %25, align 8, !tbaa !34
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %24, !llvm.loop !130

31:                                               ; preds = %24, %20, %17, %16
  %32 = getelementptr inbounds %struct.Panel, ptr %1, i64 0, i32 13
  %33 = load i16, ptr %32, align 4, !tbaa !49
  %34 = and i16 %33, -2
  store i16 %34, ptr %32, align 4, !tbaa !49
  br label %39

35:                                               ; preds = %12
  %36 = getelementptr inbounds %struct.Panel, ptr %1, i64 0, i32 13
  %37 = load i16, ptr %36, align 4, !tbaa !49
  %38 = or i16 %37, 1
  store i16 %38, ptr %36, align 4, !tbaa !49
  br label %39

39:                                               ; preds = %35, %31
  br i1 %8, label %47, label %40

40:                                               ; preds = %39
  %41 = getelementptr inbounds %struct.uiHandlePanelData, ptr %5, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !131
  %43 = icmp eq ptr %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %40
  %45 = tail call ptr @CTX_wm_manager(ptr noundef %0) #18
  %46 = load ptr, ptr %41, align 8, !tbaa !131
  tail call void @WM_event_remove_timer(ptr noundef %45, ptr noundef %6, ptr noundef %46) #18
  store ptr null, ptr %41, align 8, !tbaa !131
  br label %47

47:                                               ; preds = %44, %40, %39
  br i1 %13, label %48, label %51

48:                                               ; preds = %47
  %49 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %49(ptr noundef %5) #18
  store ptr null, ptr %4, align 8, !tbaa !121
  %50 = getelementptr inbounds %struct.wmWindow, ptr %6, i64 0, i32 29
  tail call void @WM_event_remove_ui_handler(ptr noundef nonnull %50, ptr noundef nonnull @ui_handler_panel, ptr noundef nonnull @ui_handler_remove_panel, ptr noundef %1, i8 noundef zeroext 0) #18
  br label %86

51:                                               ; preds = %47
  br i1 %8, label %52, label %57

52:                                               ; preds = %51
  %53 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %54 = tail call ptr %53(i64 noundef 48, ptr noundef nonnull @.str.3) #18
  store ptr %54, ptr %4, align 8, !tbaa !121
  %55 = getelementptr inbounds %struct.wmWindow, ptr %6, i64 0, i32 29
  %56 = tail call ptr @WM_event_add_ui_handler(ptr noundef %0, ptr noundef nonnull %55, ptr noundef nonnull @ui_handler_panel, ptr noundef nonnull @ui_handler_remove_panel, ptr noundef %1, i8 noundef zeroext 0) #18
  br label %57

57:                                               ; preds = %52, %51
  %58 = phi ptr [ %5, %51 ], [ %54, %52 ]
  switch i32 %2, label %63 [
    i32 3, label %59
    i32 0, label %59
  ]

59:                                               ; preds = %57, %57
  %60 = tail call ptr @CTX_wm_manager(ptr noundef %0) #18
  %61 = tail call ptr @WM_event_add_timer(ptr noundef %60, ptr noundef %6, i32 noundef 272, double noundef 2.000000e-02) #18
  %62 = getelementptr inbounds %struct.uiHandlePanelData, ptr %58, i64 0, i32 1
  store ptr %61, ptr %62, align 8, !tbaa !131
  br label %63

63:                                               ; preds = %57, %59
  store i32 %2, ptr %58, align 8, !tbaa !128
  %64 = getelementptr inbounds %struct.wmWindow, ptr %6, i64 0, i32 21
  %65 = load ptr, ptr %64, align 8, !tbaa !132
  %66 = getelementptr inbounds %struct.wmEvent, ptr %65, i64 0, i32 4
  %67 = load i32, ptr %66, align 4, !tbaa !134
  %68 = getelementptr inbounds %struct.uiHandlePanelData, ptr %58, i64 0, i32 3
  store i32 %67, ptr %68, align 8, !tbaa !136
  %69 = getelementptr inbounds %struct.wmEvent, ptr %65, i64 0, i32 5
  %70 = load i32, ptr %69, align 8, !tbaa !137
  %71 = getelementptr inbounds %struct.uiHandlePanelData, ptr %58, i64 0, i32 4
  store i32 %70, ptr %71, align 4, !tbaa !138
  %72 = getelementptr inbounds %struct.Panel, ptr %1, i64 0, i32 7
  %73 = load i32, ptr %72, align 8, !tbaa !126
  %74 = getelementptr inbounds %struct.uiHandlePanelData, ptr %58, i64 0, i32 5
  store i32 %73, ptr %74, align 8, !tbaa !139
  %75 = getelementptr inbounds %struct.Panel, ptr %1, i64 0, i32 8
  %76 = load i32, ptr %75, align 4, !tbaa !74
  %77 = getelementptr inbounds %struct.uiHandlePanelData, ptr %58, i64 0, i32 6
  store i32 %76, ptr %77, align 4, !tbaa !140
  %78 = getelementptr inbounds %struct.Panel, ptr %1, i64 0, i32 9
  %79 = load i32, ptr %78, align 8, !tbaa !51
  %80 = getelementptr inbounds %struct.uiHandlePanelData, ptr %58, i64 0, i32 7
  store i32 %79, ptr %80, align 8, !tbaa !141
  %81 = getelementptr inbounds %struct.Panel, ptr %1, i64 0, i32 10
  %82 = load i32, ptr %81, align 4, !tbaa !52
  %83 = getelementptr inbounds %struct.uiHandlePanelData, ptr %58, i64 0, i32 8
  store i32 %82, ptr %83, align 4, !tbaa !142
  %84 = tail call double @PIL_check_seconds_timer() #18
  %85 = getelementptr inbounds %struct.uiHandlePanelData, ptr %58, i64 0, i32 2
  store double %84, ptr %85, align 8, !tbaa !143
  br label %86

86:                                               ; preds = %63, %48
  tail call void @ED_region_tag_redraw(ptr noundef %7) #18
  br label %87

87:                                               ; preds = %9, %86
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @uiAlignPanelStep(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2, i8 noundef zeroext %3) unnamed_addr #3 {
  %5 = tail call fastcc i32 @panel_aligned(ptr noundef %0, ptr noundef %1), !range !41
  %6 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 27
  %7 = load ptr, ptr %6, align 8, !tbaa !144
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 27, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !145
  %12 = icmp ne ptr %7, %11
  br label %13

13:                                               ; preds = %4, %9
  %14 = phi i1 [ false, %4 ], [ %12, %9 ]
  %15 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 22
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = icmp eq ptr %16, null
  br i1 %17, label %35, label %18

18:                                               ; preds = %13, %31
  %19 = phi ptr [ %33, %31 ], [ %16, %13 ]
  %20 = phi i32 [ %32, %31 ], [ 0, %13 ]
  %21 = getelementptr inbounds %struct.Panel, ptr %19, i64 0, i32 14
  %22 = load i16, ptr %21, align 2, !tbaa !50
  %23 = and i16 %22, 2
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.Panel, ptr %19, i64 0, i32 18
  %27 = load ptr, ptr %26, align 8, !tbaa !64
  %28 = icmp eq ptr %27, null
  %29 = zext i1 %28 to i32
  %30 = add nsw i32 %20, %29
  br label %31

31:                                               ; preds = %25, %18
  %32 = phi i32 [ %20, %18 ], [ %30, %25 ]
  %33 = load ptr, ptr %19, align 8, !tbaa !34
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %18, !llvm.loop !146

35:                                               ; preds = %31, %13
  %36 = phi i32 [ 0, %13 ], [ %32, %31 ]
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %412, label %38

38:                                               ; preds = %35
  %39 = load ptr, ptr %15, align 8, !tbaa !34
  %40 = icmp eq ptr %39, null
  br i1 %40, label %70, label %41

41:                                               ; preds = %38
  %42 = icmp eq i32 %5, 2
  %43 = icmp eq i32 %5, 1
  br label %44

44:                                               ; preds = %41, %67
  %45 = phi ptr [ %39, %41 ], [ %68, %67 ]
  %46 = getelementptr inbounds %struct.Panel, ptr %45, i64 0, i32 14
  %47 = load i16, ptr %46, align 2, !tbaa !50
  %48 = and i16 %47, 2
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %67, label %50

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.Panel, ptr %45, i64 0, i32 18
  %52 = load ptr, ptr %51, align 8, !tbaa !64
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %67

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.Panel, ptr %45, i64 0, i32 13
  %56 = load i16, ptr %55, align 4, !tbaa !49
  %57 = zext i16 %56 to i32
  %58 = and i32 %57, 2
  %59 = icmp ne i32 %58, 0
  %60 = select i1 %59, i1 %42, i1 false
  br i1 %60, label %65, label %61

61:                                               ; preds = %54
  %62 = and i32 %57, 4
  %63 = icmp ne i32 %62, 0
  %64 = select i1 %63, i1 %43, i1 false
  br i1 %64, label %65, label %67

65:                                               ; preds = %61, %54
  %66 = xor i16 %56, 6
  store i16 %66, ptr %55, align 4, !tbaa !49
  br label %67

67:                                               ; preds = %65, %44, %50, %61
  %68 = load ptr, ptr %45, align 8, !tbaa !34
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %44, !llvm.loop !147

70:                                               ; preds = %67, %38
  %71 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %72 = sext i32 %36 to i64
  %73 = shl nsw i64 %72, 4
  %74 = tail call ptr %71(i64 noundef %73, ptr noundef nonnull @.str.2) #18
  %75 = load ptr, ptr %15, align 8, !tbaa !34
  %76 = icmp eq ptr %75, null
  br i1 %76, label %97, label %77

77:                                               ; preds = %70, %93
  %78 = phi ptr [ %95, %93 ], [ %75, %70 ]
  %79 = phi ptr [ %94, %93 ], [ %74, %70 ]
  %80 = getelementptr inbounds %struct.Panel, ptr %78, i64 0, i32 14
  %81 = load i16, ptr %80, align 2, !tbaa !50
  %82 = and i16 %81, 2
  %83 = icmp eq i16 %82, 0
  br i1 %83, label %93, label %84

84:                                               ; preds = %77
  %85 = getelementptr inbounds %struct.Panel, ptr %78, i64 0, i32 18
  %86 = load ptr, ptr %85, align 8, !tbaa !64
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %93

88:                                               ; preds = %84
  %89 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %90 = tail call ptr %89(ptr noundef nonnull %78) #18
  store ptr %90, ptr %79, align 8, !tbaa !148
  %91 = getelementptr inbounds %struct.PanelSort, ptr %79, i64 0, i32 1
  store ptr %78, ptr %91, align 8, !tbaa !150
  %92 = getelementptr inbounds %struct.PanelSort, ptr %79, i64 1
  br label %93

93:                                               ; preds = %77, %84, %88
  %94 = phi ptr [ %92, %88 ], [ %79, %84 ], [ %79, %77 ]
  %95 = load ptr, ptr %78, align 8, !tbaa !34
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %77, !llvm.loop !151

97:                                               ; preds = %93, %70
  %98 = icmp eq i8 %3, 0
  br i1 %98, label %112, label %99

99:                                               ; preds = %97
  %100 = icmp eq i32 %5, 2
  %101 = select i1 %100, ptr @find_highest_panel, ptr @find_leftmost_panel
  tail call void @qsort(ptr noundef %74, i64 noundef %72, i64 noundef 16, ptr noundef nonnull %101) #18
  %102 = icmp sgt i32 %36, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %99, %103
  %104 = phi i32 [ %109, %103 ], [ 0, %99 ]
  %105 = phi ptr [ %110, %103 ], [ %74, %99 ]
  %106 = getelementptr inbounds %struct.PanelSort, ptr %105, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !150
  %108 = getelementptr inbounds %struct.Panel, ptr %107, i64 0, i32 17
  store i32 %104, ptr %108, align 4, !tbaa !54
  %109 = add nuw nsw i32 %104, 1
  %110 = getelementptr inbounds %struct.PanelSort, ptr %105, i64 1
  %111 = icmp eq i32 %109, %36
  br i1 %111, label %113, label %103, !llvm.loop !152

112:                                              ; preds = %97
  tail call void @qsort(ptr noundef %74, i64 noundef %72, i64 noundef 16, ptr noundef nonnull @compare_panel) #18
  br label %113

113:                                              ; preds = %103, %99, %112
  %114 = load ptr, ptr %74, align 8, !tbaa !148
  %115 = getelementptr inbounds %struct.Panel, ptr %114, i64 0, i32 7
  store i32 0, ptr %115, align 8, !tbaa !126
  %116 = getelementptr inbounds %struct.Panel, ptr %114, i64 0, i32 2
  %117 = load ptr, ptr %116, align 8, !tbaa !42
  %118 = icmp eq ptr %117, null
  br i1 %118, label %127, label %119

119:                                              ; preds = %113
  %120 = getelementptr inbounds %struct.PanelType, ptr %117, i64 0, i32 9
  %121 = load i32, ptr %120, align 8, !tbaa !46
  %122 = and i32 %121, 2
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %127, label %124

124:                                              ; preds = %119
  %125 = getelementptr inbounds %struct.Panel, ptr %114, i64 0, i32 10
  %126 = load i32, ptr %125, align 4, !tbaa !52
  br label %134

127:                                              ; preds = %119, %113
  %128 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !75
  %129 = sext i16 %128 to i32
  %130 = add nsw i32 %129, 4
  %131 = getelementptr inbounds %struct.Panel, ptr %114, i64 0, i32 10
  %132 = load i32, ptr %131, align 4, !tbaa !52
  %133 = add nsw i32 %130, %132
  br label %134

134:                                              ; preds = %124, %127
  %135 = phi i32 [ %126, %124 ], [ %133, %127 ]
  %136 = sub nsw i32 0, %135
  %137 = getelementptr inbounds %struct.Panel, ptr %114, i64 0, i32 8
  store i32 %136, ptr %137, align 4, !tbaa !74
  %138 = icmp eq i32 %5, 2
  %139 = select i1 %14, i1 %138, i1 false
  br i1 %139, label %140, label %143

140:                                              ; preds = %134
  %141 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !75
  %142 = sext i16 %141 to i32
  store i32 %142, ptr %115, align 8, !tbaa !126
  br label %143

143:                                              ; preds = %140, %134
  %144 = icmp sgt i32 %36, 1
  br i1 %144, label %145, label %159

145:                                              ; preds = %143
  %146 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4
  %147 = sext i16 %146 to i32
  %148 = add nsw i32 %147, 4
  %149 = sext i16 %146 to i32
  %150 = add nsw i32 %149, 4
  %151 = sext i16 %146 to i32
  %152 = add nsw i32 %151, 4
  %153 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4
  %154 = sext i16 %153 to i32
  %155 = add nsw i32 %154, 4
  %156 = sext i16 %153 to i32
  %157 = add nsw i32 %156, 4
  %158 = add nsw i32 %36, -2
  br label %163

159:                                              ; preds = %317, %143
  %160 = icmp sgt i32 %36, 0
  br i1 %160, label %161, label %323

161:                                              ; preds = %159
  %162 = fsub float 1.000000e+00, %2
  br label %327

163:                                              ; preds = %145, %317
  %164 = phi i32 [ 0, %145 ], [ %321, %317 ]
  %165 = phi ptr [ %74, %145 ], [ %166, %317 ]
  %166 = getelementptr inbounds %struct.PanelSort, ptr %165, i64 1
  %167 = load ptr, ptr %165, align 8, !tbaa !148
  br i1 %138, label %168, label %225

168:                                              ; preds = %163
  %169 = getelementptr inbounds %struct.Panel, ptr %167, i64 0, i32 7
  %170 = load i32, ptr %169, align 8, !tbaa !126
  %171 = load ptr, ptr %166, align 8, !tbaa !148
  %172 = getelementptr inbounds %struct.Panel, ptr %171, i64 0, i32 7
  store i32 %170, ptr %172, align 8, !tbaa !126
  %173 = getelementptr inbounds %struct.Panel, ptr %167, i64 0, i32 13
  %174 = load i16, ptr %173, align 4, !tbaa !49
  %175 = and i16 %174, 4
  %176 = icmp eq i16 %175, 0
  br i1 %176, label %183, label %177

177:                                              ; preds = %168
  %178 = getelementptr inbounds %struct.Panel, ptr %167, i64 0, i32 8
  %179 = load i32, ptr %178, align 4, !tbaa !74
  %180 = getelementptr inbounds %struct.Panel, ptr %167, i64 0, i32 10
  %181 = load i32, ptr %180, align 4, !tbaa !52
  %182 = add nsw i32 %181, %179
  br label %205

183:                                              ; preds = %168
  %184 = getelementptr inbounds %struct.Panel, ptr %167, i64 0, i32 18
  %185 = load ptr, ptr %184, align 8, !tbaa !64
  %186 = icmp eq ptr %185, null
  br i1 %186, label %202, label %187

187:                                              ; preds = %183
  %188 = getelementptr inbounds %struct.Panel, ptr %185, i64 0, i32 13
  %189 = load i16, ptr %188, align 4, !tbaa !49
  %190 = and i16 %189, 4
  %191 = icmp eq i16 %190, 0
  br i1 %191, label %198, label %192

192:                                              ; preds = %187
  %193 = getelementptr inbounds %struct.Panel, ptr %167, i64 0, i32 8
  %194 = load i32, ptr %193, align 4, !tbaa !74
  %195 = getelementptr inbounds %struct.Panel, ptr %167, i64 0, i32 10
  %196 = load i32, ptr %195, align 4, !tbaa !52
  %197 = add nsw i32 %196, %194
  br label %205

198:                                              ; preds = %187
  br i1 %186, label %202, label %199

199:                                              ; preds = %198
  %200 = getelementptr inbounds %struct.Panel, ptr %185, i64 0, i32 8
  %201 = load i32, ptr %200, align 4, !tbaa !74
  br label %205

202:                                              ; preds = %183, %198
  %203 = getelementptr inbounds %struct.Panel, ptr %167, i64 0, i32 8
  %204 = load i32, ptr %203, align 4, !tbaa !74
  br label %205

205:                                              ; preds = %177, %192, %199, %202
  %206 = phi i32 [ %182, %177 ], [ %197, %192 ], [ %201, %199 ], [ %204, %202 ]
  %207 = getelementptr inbounds %struct.Panel, ptr %171, i64 0, i32 2
  %208 = load ptr, ptr %207, align 8, !tbaa !42
  %209 = icmp eq ptr %208, null
  br i1 %209, label %218, label %210

210:                                              ; preds = %205
  %211 = getelementptr inbounds %struct.PanelType, ptr %208, i64 0, i32 9
  %212 = load i32, ptr %211, align 8, !tbaa !46
  %213 = and i32 %212, 2
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %218, label %215

215:                                              ; preds = %210
  %216 = getelementptr inbounds %struct.Panel, ptr %171, i64 0, i32 10
  %217 = load i32, ptr %216, align 4, !tbaa !52
  br label %222

218:                                              ; preds = %210, %205
  %219 = getelementptr inbounds %struct.Panel, ptr %171, i64 0, i32 10
  %220 = load i32, ptr %219, align 4, !tbaa !52
  %221 = add nsw i32 %157, %220
  br label %222

222:                                              ; preds = %215, %218
  %223 = phi i32 [ %217, %215 ], [ %221, %218 ]
  %224 = sub nsw i32 %206, %223
  br label %317

225:                                              ; preds = %163
  %226 = getelementptr inbounds %struct.Panel, ptr %167, i64 0, i32 13
  %227 = load i16, ptr %226, align 4, !tbaa !49
  %228 = and i16 %227, 2
  %229 = icmp eq i16 %228, 0
  br i1 %229, label %245, label %230

230:                                              ; preds = %225
  %231 = getelementptr inbounds %struct.Panel, ptr %167, i64 0, i32 7
  %232 = load i32, ptr %231, align 8, !tbaa !126
  %233 = getelementptr inbounds %struct.Panel, ptr %167, i64 0, i32 2
  %234 = load ptr, ptr %233, align 8, !tbaa !42
  %235 = icmp eq ptr %234, null
  br i1 %235, label %241, label %236

236:                                              ; preds = %230
  %237 = getelementptr inbounds %struct.PanelType, ptr %234, i64 0, i32 9
  %238 = load i32, ptr %237, align 8, !tbaa !46
  %239 = and i32 %238, 2
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %236, %230
  br label %242

242:                                              ; preds = %241, %236
  %243 = phi i32 [ %148, %241 ], [ 0, %236 ]
  %244 = add nsw i32 %243, %232
  br label %275

245:                                              ; preds = %225
  %246 = getelementptr inbounds %struct.Panel, ptr %167, i64 0, i32 18
  %247 = load ptr, ptr %246, align 8, !tbaa !64
  %248 = icmp eq ptr %247, null
  br i1 %248, label %269, label %249

249:                                              ; preds = %245
  %250 = getelementptr inbounds %struct.Panel, ptr %247, i64 0, i32 13
  %251 = load i16, ptr %250, align 4, !tbaa !49
  %252 = and i16 %251, 2
  %253 = icmp eq i16 %252, 0
  br i1 %253, label %269, label %254

254:                                              ; preds = %249
  %255 = getelementptr inbounds %struct.Panel, ptr %167, i64 0, i32 7
  %256 = load i32, ptr %255, align 8, !tbaa !126
  %257 = getelementptr inbounds %struct.Panel, ptr %167, i64 0, i32 2
  %258 = load ptr, ptr %257, align 8, !tbaa !42
  %259 = icmp eq ptr %258, null
  br i1 %259, label %265, label %260

260:                                              ; preds = %254
  %261 = getelementptr inbounds %struct.PanelType, ptr %258, i64 0, i32 9
  %262 = load i32, ptr %261, align 8, !tbaa !46
  %263 = and i32 %262, 2
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %266

265:                                              ; preds = %260, %254
  br label %266

266:                                              ; preds = %265, %260
  %267 = phi i32 [ %150, %265 ], [ 0, %260 ]
  %268 = add nsw i32 %267, %256
  br label %275

269:                                              ; preds = %249, %245
  %270 = getelementptr inbounds %struct.Panel, ptr %167, i64 0, i32 7
  %271 = load i32, ptr %270, align 8, !tbaa !126
  %272 = getelementptr inbounds %struct.Panel, ptr %167, i64 0, i32 9
  %273 = load i32, ptr %272, align 8, !tbaa !51
  %274 = add nsw i32 %273, %271
  br label %275

275:                                              ; preds = %242, %266, %269
  %276 = phi i32 [ %244, %242 ], [ %268, %266 ], [ %274, %269 ]
  %277 = load ptr, ptr %166, align 8, !tbaa !148
  %278 = getelementptr inbounds %struct.Panel, ptr %277, i64 0, i32 7
  store i32 %276, ptr %278, align 8, !tbaa !126
  %279 = getelementptr inbounds %struct.Panel, ptr %167, i64 0, i32 8
  %280 = load i32, ptr %279, align 4, !tbaa !74
  %281 = getelementptr inbounds %struct.Panel, ptr %167, i64 0, i32 2
  %282 = load ptr, ptr %281, align 8, !tbaa !42
  %283 = icmp eq ptr %282, null
  br i1 %283, label %292, label %284

284:                                              ; preds = %275
  %285 = getelementptr inbounds %struct.PanelType, ptr %282, i64 0, i32 9
  %286 = load i32, ptr %285, align 8, !tbaa !46
  %287 = and i32 %286, 2
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %292, label %289

289:                                              ; preds = %284
  %290 = getelementptr inbounds %struct.Panel, ptr %167, i64 0, i32 10
  %291 = load i32, ptr %290, align 4, !tbaa !52
  br label %296

292:                                              ; preds = %284, %275
  %293 = getelementptr inbounds %struct.Panel, ptr %167, i64 0, i32 10
  %294 = load i32, ptr %293, align 4, !tbaa !52
  %295 = add nsw i32 %152, %294
  br label %296

296:                                              ; preds = %289, %292
  %297 = phi i32 [ %291, %289 ], [ %295, %292 ]
  %298 = add nsw i32 %297, %280
  %299 = getelementptr inbounds %struct.Panel, ptr %277, i64 0, i32 2
  %300 = load ptr, ptr %299, align 8, !tbaa !42
  %301 = icmp eq ptr %300, null
  br i1 %301, label %310, label %302

302:                                              ; preds = %296
  %303 = getelementptr inbounds %struct.PanelType, ptr %300, i64 0, i32 9
  %304 = load i32, ptr %303, align 8, !tbaa !46
  %305 = and i32 %304, 2
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %310, label %307

307:                                              ; preds = %302
  %308 = getelementptr inbounds %struct.Panel, ptr %277, i64 0, i32 10
  %309 = load i32, ptr %308, align 4, !tbaa !52
  br label %314

310:                                              ; preds = %302, %296
  %311 = getelementptr inbounds %struct.Panel, ptr %277, i64 0, i32 10
  %312 = load i32, ptr %311, align 4, !tbaa !52
  %313 = add nsw i32 %155, %312
  br label %314

314:                                              ; preds = %307, %310
  %315 = phi i32 [ %309, %307 ], [ %313, %310 ]
  %316 = sub i32 %298, %315
  br label %317

317:                                              ; preds = %222, %314
  %318 = phi ptr [ %171, %222 ], [ %277, %314 ]
  %319 = phi i32 [ %224, %222 ], [ %316, %314 ]
  %320 = getelementptr inbounds %struct.Panel, ptr %318, i64 0, i32 8
  store i32 %319, ptr %320, align 4, !tbaa !74
  %321 = add nuw nsw i32 %164, 1
  %322 = icmp eq i32 %164, %158
  br i1 %322, label %159, label %163, !llvm.loop !153

323:                                              ; preds = %369, %159
  %324 = phi i8 [ 0, %159 ], [ %370, %369 ]
  %325 = load ptr, ptr %15, align 8, !tbaa !34
  %326 = icmp eq ptr %325, null
  br i1 %326, label %374, label %376

327:                                              ; preds = %161, %369
  %328 = phi i8 [ 0, %161 ], [ %370, %369 ]
  %329 = phi i32 [ 0, %161 ], [ %371, %369 ]
  %330 = phi ptr [ %74, %161 ], [ %372, %369 ]
  %331 = load ptr, ptr %330, align 8, !tbaa !148
  %332 = getelementptr inbounds %struct.Panel, ptr %331, i64 0, i32 13
  %333 = load i16, ptr %332, align 4, !tbaa !49
  %334 = and i16 %333, 1
  %335 = icmp eq i16 %334, 0
  br i1 %335, label %336, label %369

336:                                              ; preds = %327
  %337 = getelementptr inbounds %struct.PanelSort, ptr %330, i64 0, i32 1
  %338 = load ptr, ptr %337, align 8, !tbaa !150
  %339 = getelementptr inbounds %struct.Panel, ptr %338, i64 0, i32 7
  %340 = load i32, ptr %339, align 8, !tbaa !126
  %341 = getelementptr inbounds %struct.Panel, ptr %331, i64 0, i32 7
  %342 = load i32, ptr %341, align 8, !tbaa !126
  %343 = icmp eq i32 %340, %342
  br i1 %343, label %344, label %350

344:                                              ; preds = %336
  %345 = getelementptr inbounds %struct.Panel, ptr %338, i64 0, i32 8
  %346 = load i32, ptr %345, align 4, !tbaa !74
  %347 = getelementptr inbounds %struct.Panel, ptr %331, i64 0, i32 8
  %348 = load i32, ptr %347, align 4, !tbaa !74
  %349 = icmp eq i32 %346, %348
  br i1 %349, label %369, label %350

350:                                              ; preds = %344, %336
  %351 = sitofp i32 %342 to float
  %352 = sitofp i32 %340 to float
  %353 = fmul float %162, %352
  %354 = tail call float @llvm.fmuladd.f32(float %2, float %351, float %353)
  %355 = fadd float %354, 5.000000e-01
  %356 = tail call float @llvm.floor.f32(float %355)
  %357 = fptosi float %356 to i32
  store i32 %357, ptr %339, align 8, !tbaa !126
  %358 = getelementptr inbounds %struct.Panel, ptr %331, i64 0, i32 8
  %359 = load i32, ptr %358, align 4, !tbaa !74
  %360 = sitofp i32 %359 to float
  %361 = getelementptr inbounds %struct.Panel, ptr %338, i64 0, i32 8
  %362 = load i32, ptr %361, align 4, !tbaa !74
  %363 = sitofp i32 %362 to float
  %364 = fmul float %162, %363
  %365 = tail call float @llvm.fmuladd.f32(float %2, float %360, float %364)
  %366 = fadd float %365, 5.000000e-01
  %367 = tail call float @llvm.floor.f32(float %366)
  %368 = fptosi float %367 to i32
  store i32 %368, ptr %361, align 4, !tbaa !74
  br label %369

369:                                              ; preds = %327, %350, %344
  %370 = phi i8 [ 1, %350 ], [ %328, %344 ], [ %328, %327 ]
  %371 = add nuw nsw i32 %329, 1
  %372 = getelementptr inbounds %struct.PanelSort, ptr %330, i64 1
  %373 = icmp eq i32 %371, %36
  br i1 %373, label %323, label %327, !llvm.loop !154

374:                                              ; preds = %399, %323
  %375 = icmp sgt i32 %36, 0
  br i1 %375, label %402, label %410

376:                                              ; preds = %323, %399
  %377 = phi ptr [ %400, %399 ], [ %325, %323 ]
  %378 = getelementptr inbounds %struct.Panel, ptr %377, i64 0, i32 18
  %379 = load ptr, ptr %378, align 8, !tbaa !64
  %380 = icmp eq ptr %379, null
  br i1 %380, label %399, label %381

381:                                              ; preds = %376
  %382 = getelementptr inbounds %struct.Panel, ptr %377, i64 0, i32 14
  %383 = load i16, ptr %382, align 2, !tbaa !50
  %384 = and i16 %383, 2
  %385 = icmp eq i16 %384, 0
  br i1 %385, label %399, label %386

386:                                              ; preds = %381
  %387 = getelementptr inbounds %struct.Panel, ptr %379, i64 0, i32 7
  %388 = load i32, ptr %387, align 8, !tbaa !126
  %389 = getelementptr inbounds %struct.Panel, ptr %377, i64 0, i32 7
  store i32 %388, ptr %389, align 8, !tbaa !126
  %390 = getelementptr inbounds %struct.Panel, ptr %379, i64 0, i32 8
  %391 = load i32, ptr %390, align 4, !tbaa !74
  %392 = getelementptr inbounds %struct.Panel, ptr %379, i64 0, i32 10
  %393 = load i32, ptr %392, align 4, !tbaa !52
  %394 = add nsw i32 %393, %391
  %395 = getelementptr inbounds %struct.Panel, ptr %377, i64 0, i32 10
  %396 = load i32, ptr %395, align 4, !tbaa !52
  %397 = sub i32 %394, %396
  %398 = getelementptr inbounds %struct.Panel, ptr %377, i64 0, i32 8
  store i32 %397, ptr %398, align 4, !tbaa !74
  br label %399

399:                                              ; preds = %376, %381, %386
  %400 = load ptr, ptr %377, align 8, !tbaa !34
  %401 = icmp eq ptr %400, null
  br i1 %401, label %374, label %376, !llvm.loop !155

402:                                              ; preds = %374, %402
  %403 = phi i32 [ %407, %402 ], [ 0, %374 ]
  %404 = phi ptr [ %408, %402 ], [ %74, %374 ]
  %405 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %406 = load ptr, ptr %404, align 8, !tbaa !148
  tail call void %405(ptr noundef %406) #18
  %407 = add nuw nsw i32 %403, 1
  %408 = getelementptr inbounds %struct.PanelSort, ptr %404, i64 1
  %409 = icmp eq i32 %407, %36
  br i1 %409, label %410, label %402, !llvm.loop !156

410:                                              ; preds = %402, %374
  %411 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %411(ptr noundef nonnull %74) #18
  br label %412

412:                                              ; preds = %35, %410
  %413 = phi i8 [ %324, %410 ], [ 0, %35 ]
  ret i8 %413
}

; Function Attrs: nounwind uwtable
define dso_local void @uiDrawPanels(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 {
  tail call void @UI_ThemeClearColor(i32 noundef 2) #18
  %3 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 21
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %24, %2
  %7 = load ptr, ptr %3, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %45, label %27

9:                                                ; preds = %2, %24
  %10 = phi ptr [ %25, %24 ], [ %4, %2 ]
  %11 = getelementptr inbounds %struct.uiBlock, ptr %10, i64 0, i32 36
  %12 = load i8, ptr %11, align 1, !tbaa !100
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.uiBlock, ptr %10, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !56
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.Panel, ptr %16, i64 0, i32 13
  %20 = load i16, ptr %19, align 4, !tbaa !49
  %21 = and i16 %20, 1
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  tail call void @uiDrawBlock(ptr noundef %0, ptr noundef nonnull %10) #18
  br label %24

24:                                               ; preds = %9, %14, %18, %23
  %25 = load ptr, ptr %10, align 8, !tbaa !34
  %26 = icmp eq ptr %25, null
  br i1 %26, label %6, label %9, !llvm.loop !157

27:                                               ; preds = %6, %42
  %28 = phi ptr [ %43, %42 ], [ %7, %6 ]
  %29 = getelementptr inbounds %struct.uiBlock, ptr %28, i64 0, i32 36
  %30 = load i8, ptr %29, align 1, !tbaa !100
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.uiBlock, ptr %28, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !56
  %35 = icmp eq ptr %34, null
  br i1 %35, label %42, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.Panel, ptr %34, i64 0, i32 13
  %38 = load i16, ptr %37, align 4, !tbaa !49
  %39 = and i16 %38, 1
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  tail call void @uiDrawBlock(ptr noundef %0, ptr noundef nonnull %28) #18
  br label %42

42:                                               ; preds = %27, %32, %36, %41
  %43 = load ptr, ptr %28, align 8, !tbaa !34
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %27, !llvm.loop !158

45:                                               ; preds = %42, %6
  ret void
}

declare void @UI_ThemeClearColor(i32 noundef) local_unnamed_addr #5

declare void @uiDrawBlock(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind uwtable
define dso_local void @uiScalePanels(ptr nocapture noundef readonly %0, float noundef %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 21
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %38, label %6

6:                                                ; preds = %2
  %7 = fptosi float %1 to i32
  br label %8

8:                                                ; preds = %6, %35
  %9 = phi ptr [ %4, %6 ], [ %36, %35 ]
  %10 = getelementptr inbounds %struct.uiBlock, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !56
  %12 = icmp eq ptr %11, null
  br i1 %12, label %35, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.Panel, ptr %11, i64 0, i32 9
  %15 = load i32, ptr %14, align 8, !tbaa !51
  %16 = sitofp i32 %15 to float
  %17 = fdiv float %1, %16
  %18 = fpext float %17 to double
  %19 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %18)
  %20 = load ptr, ptr %10, align 8, !tbaa !56
  %21 = getelementptr inbounds %struct.Panel, ptr %20, i64 0, i32 9
  store i32 %7, ptr %21, align 8, !tbaa !51
  %22 = getelementptr inbounds %struct.uiBlock, ptr %9, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !34
  %24 = icmp eq ptr %23, null
  br i1 %24, label %35, label %25

25:                                               ; preds = %13, %25
  %26 = phi ptr [ %33, %25 ], [ %23, %13 ]
  %27 = getelementptr inbounds %struct.uiBut, ptr %26, i64 0, i32 18
  %28 = load float, ptr %27, align 8, !tbaa !159
  %29 = fmul float %17, %28
  store float %29, ptr %27, align 8, !tbaa !159
  %30 = getelementptr inbounds %struct.uiBut, ptr %26, i64 0, i32 18, i32 1
  %31 = load float, ptr %30, align 4, !tbaa !160
  %32 = fmul float %17, %31
  store float %32, ptr %30, align 4, !tbaa !160
  %33 = load ptr, ptr %26, align 8, !tbaa !34
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %25, !llvm.loop !161

35:                                               ; preds = %25, %13, %8
  %36 = load ptr, ptr %9, align 8, !tbaa !34
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %8, !llvm.loop !162

38:                                               ; preds = %35, %2
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @UI_panel_category_is_visible(ptr nocapture noundef readonly %0) local_unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 27
  %3 = load ptr, ptr %2, align 8, !tbaa !144
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 27, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !145
  %8 = icmp ne ptr %3, %7
  %9 = zext i1 %8 to i8
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i8 [ 0, %1 ], [ %9, %5 ]
  ret i8 %11
}

; Function Attrs: nounwind uwtable
define dso_local ptr @UI_panel_category_find(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 27
  %4 = tail call ptr @BLI_findstring(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 16) #18
  ret ptr %4
}

declare ptr @BLI_findstring(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local ptr @UI_panel_category_active_find(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 23
  %4 = tail call ptr @BLI_findstring(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 16) #18
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define dso_local ptr @UI_panel_category_active_get(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 23
  %4 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 27
  br label %5

5:                                                ; preds = %9, %2
  %6 = phi ptr [ %3, %2 ], [ %7, %9 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.PanelCategoryStack, ptr %7, i64 0, i32 2
  %11 = tail call ptr @BLI_findstring(ptr noundef nonnull %4, ptr noundef nonnull %10, i32 noundef 16) #18
  %12 = icmp eq ptr %11, null
  br i1 %12, label %5, label %24, !llvm.loop !163

13:                                               ; preds = %5
  %14 = icmp eq i8 %1, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 27
  %17 = load ptr, ptr %16, align 8, !tbaa !144
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.PanelCategoryDyn, ptr %17, i64 0, i32 2
  tail call void @UI_panel_category_active_set(ptr noundef %0, ptr noundef nonnull %20)
  br label %21

21:                                               ; preds = %15, %19
  %22 = phi ptr [ %20, %19 ], [ undef, %15 ]
  br i1 %18, label %23, label %24

23:                                               ; preds = %21, %13
  br label %24

24:                                               ; preds = %9, %21, %23
  %25 = phi ptr [ null, %23 ], [ %22, %21 ], [ %10, %9 ]
  ret ptr %25
}

; Function Attrs: nounwind uwtable
define dso_local void @UI_panel_category_active_set(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 23
  %4 = tail call ptr @BLI_findstring(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 16) #18
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @BLI_remlink(ptr noundef nonnull %3, ptr noundef nonnull %4) #18
  br label %12

7:                                                ; preds = %2
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %9 = tail call ptr %8(i64 noundef 80, ptr noundef nonnull @__func__.UI_panel_category_active_set) #18
  %10 = getelementptr inbounds %struct.PanelCategoryStack, ptr %9, i64 0, i32 2
  %11 = tail call ptr @BLI_strncpy(ptr noundef nonnull %10, ptr noundef %1, i64 noundef 64) #18
  br label %12

12:                                               ; preds = %7, %6
  %13 = phi ptr [ %4, %6 ], [ %9, %7 ]
  tail call void @BLI_addhead(ptr noundef nonnull %3, ptr noundef %13) #18
  %14 = load ptr, ptr %13, align 8, !tbaa !164
  %15 = icmp eq ptr %14, null
  br i1 %15, label %29, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 20
  br label %18

18:                                               ; preds = %16, %27
  %19 = phi ptr [ %14, %16 ], [ %20, %27 ]
  %20 = load ptr, ptr %19, align 8, !tbaa !164
  %21 = load ptr, ptr %17, align 8, !tbaa !166
  %22 = getelementptr inbounds %struct.ARegionType, ptr %21, i64 0, i32 14
  %23 = getelementptr inbounds %struct.PanelCategoryStack, ptr %19, i64 0, i32 2
  %24 = tail call ptr @BLI_findstring(ptr noundef nonnull %22, ptr noundef nonnull %23, i32 noundef 272) #18
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  tail call void @BLI_remlink(ptr noundef nonnull %3, ptr noundef nonnull %19) #18
  br label %27

27:                                               ; preds = %26, %18
  %28 = icmp eq ptr %20, null
  br i1 %28, label %29, label %18, !llvm.loop !167

29:                                               ; preds = %27, %12
  ret void
}

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local ptr @UI_panel_category_find_mouse_over_ex(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 27
  br label %5

5:                                                ; preds = %9, %3
  %6 = phi ptr [ %4, %3 ], [ %7, %9 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.PanelCategoryDyn, ptr %7, i64 0, i32 3
  %11 = tail call zeroext i8 @BLI_rcti_isect_pt(ptr noundef nonnull %10, i32 noundef %1, i32 noundef %2) #18
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %5, label %13, !llvm.loop !168

13:                                               ; preds = %5, %9
  %14 = phi ptr [ %7, %9 ], [ null, %5 ]
  ret ptr %14
}

declare zeroext i8 @BLI_rcti_isect_pt(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local ptr @UI_panel_category_find_mouse_over(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 6
  %4 = load i32, ptr %3, align 4, !tbaa !80
  %5 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 6, i64 1
  %6 = load i32, ptr %5, align 4, !tbaa !80
  %7 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 27
  br label %8

8:                                                ; preds = %12, %2
  %9 = phi ptr [ %7, %2 ], [ %10, %12 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.PanelCategoryDyn, ptr %10, i64 0, i32 3
  %14 = tail call zeroext i8 @BLI_rcti_isect_pt(ptr noundef nonnull %13, i32 noundef %4, i32 noundef %6) #18
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %8, label %16, !llvm.loop !168

16:                                               ; preds = %8, %12
  %17 = phi ptr [ %10, %12 ], [ null, %8 ]
  ret ptr %17
}

; Function Attrs: nounwind uwtable
define dso_local void @UI_panel_category_add(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %4 = tail call ptr %3(i64 noundef 96, ptr noundef nonnull @__func__.UI_panel_category_add) #18
  %5 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 27
  tail call void @BLI_addtail(ptr noundef nonnull %5, ptr noundef %4) #18
  %6 = getelementptr inbounds %struct.PanelCategoryDyn, ptr %4, i64 0, i32 2
  %7 = tail call ptr @BLI_strncpy(ptr noundef nonnull %6, ptr noundef %1, i64 noundef 64) #18
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @UI_panel_category_clear_all(ptr noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 27
  tail call void @BLI_freelistN(ptr noundef nonnull %2) #18
  ret void
}

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @UI_panel_category_draw_all(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = alloca i16, align 2
  %4 = alloca [4 x i8], align 1
  %5 = alloca [3 x i8], align 1
  %6 = alloca [3 x i8], align 1
  %7 = alloca [4 x i8], align 1
  %8 = alloca [3 x i8], align 1
  %9 = alloca [3 x i8], align 1
  %10 = alloca [3 x i8], align 1
  %11 = alloca [3 x i8], align 1
  %12 = alloca [3 x i8], align 1
  %13 = alloca [3 x i8], align 1
  %14 = tail call ptr @UI_GetStyle() #18
  %15 = getelementptr inbounds %struct.uiStyle, ptr %14, i64 0, i32 6
  %16 = load i16, ptr %15, align 4, !tbaa !169
  %17 = sext i16 %16 to i32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #18
  %18 = getelementptr inbounds %struct.uiStyle, ptr %14, i64 0, i32 6, i32 1
  %19 = load i16, ptr %18, align 2, !tbaa !170
  store i16 %19, ptr %3, align 2, !tbaa !171
  %20 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 21
  %21 = load ptr, ptr %20, align 8, !tbaa !172
  %22 = getelementptr inbounds %struct.uiBlock, ptr %21, i64 0, i32 12
  %23 = load float, ptr %22, align 8, !tbaa !81
  %24 = fdiv float 1.000000e+00, %23
  %25 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !82
  %26 = fadd float %25, 5.000000e-01
  %27 = tail call float @llvm.floor.f32(float %26)
  %28 = fptosi float %27 to i32
  %29 = tail call i32 @llvm.smax.i32(i32 %28, i32 1)
  %30 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !75
  %31 = sitofp i16 %30 to float
  %32 = fmul float %24, %31
  %33 = fadd float %32, 5.000000e-01
  %34 = tail call float @llvm.floor.f32(float %33)
  %35 = fptosi float %34 to i32
  %36 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !83
  %37 = sitofp i32 %36 to float
  %38 = fmul float %25, %37
  %39 = fdiv float %38, 7.200000e+01
  %40 = mul nsw i32 %29, 3
  %41 = sitofp i32 %40 to float
  %42 = tail call float @llvm.fmuladd.f32(float %41, float %39, float 2.000000e+00)
  %43 = fmul float %24, %42
  %44 = fadd float %43, 5.000000e-01
  %45 = tail call float @llvm.floor.f32(float %44)
  %46 = fptosi float %45 to i32
  %47 = shl nuw nsw i32 %29, 1
  %48 = sitofp i32 %47 to float
  %49 = tail call float @llvm.fmuladd.f32(float %48, float %39, float 4.000000e+00)
  %50 = fmul float %24, %49
  %51 = fadd float %50, 5.000000e-01
  %52 = tail call float @llvm.floor.f32(float %51)
  %53 = fptosi float %52 to i32
  %54 = fmul float %39, %41
  %55 = fmul float %24, %54
  %56 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 2, i32 4
  %57 = load i32, ptr %56, align 8, !tbaa !173
  %58 = add nsw i32 %57, 3
  %59 = add nsw i32 %57, %35
  %60 = sub nsw i32 %59, %58
  %61 = sitofp i32 %60 to float
  %62 = fmul float %61, 0x3FD3333340000000
  %63 = fptosi float %62 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %10) #18
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %13) #18
  call void @UI_GetThemeColor4ubv(i32 noundef 2, ptr noundef nonnull %4) #18
  call void @UI_GetThemeColor3ubv(i32 noundef 3, ptr noundef nonnull %5) #18
  call void @UI_GetThemeColor3ubv(i32 noundef 4, ptr noundef nonnull %6) #18
  call void @UI_GetThemeColor4ubv(i32 noundef 8, ptr noundef nonnull %7) #18
  call void @UI_GetThemeColor3ubv(i32 noundef 6, ptr noundef nonnull %8) #18
  call void @UI_GetThemeColor3ubv(i32 noundef 7, ptr noundef nonnull %9) #18
  call void @UI_GetThemeColor3ubv(i32 noundef 9, ptr noundef nonnull %10) #18
  call void @interp_v3_v3v3_uchar(ptr noundef nonnull %11, ptr noundef nonnull %4, ptr noundef nonnull %10, float noundef 0x3FD3333340000000) #18
  call void @interp_v3_v3v3_uchar(ptr noundef nonnull %12, ptr noundef nonnull %4, ptr noundef nonnull %6, float noundef 0x3FC99999A0000000) #18
  call void @interp_v3_v3v3_uchar(ptr noundef nonnull %13, ptr noundef nonnull %9, ptr noundef nonnull %6, float noundef 0x3FBEB851E0000000) #18
  %64 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 17
  %65 = load i16, ptr %64, align 2, !tbaa !174
  %66 = icmp ne i16 %65, 0
  %67 = getelementptr inbounds [4 x i8], ptr %4, i64 0, i64 3
  %68 = load i8, ptr %67, align 1
  %69 = icmp ne i8 %68, -1
  %70 = select i1 %66, i1 %69, i1 false
  %71 = getelementptr inbounds %struct.uiStyle, ptr %14, i64 0, i32 6, i32 2
  %72 = load i16, ptr %71, align 4, !tbaa !175
  %73 = icmp eq i16 %72, 1
  br i1 %73, label %74, label %77

74:                                               ; preds = %2
  %75 = load i16, ptr %15, align 4, !tbaa !169
  %76 = sext i16 %75 to i32
  call void @BLF_enable(i32 noundef %76, i32 noundef 8) #18
  br label %77

77:                                               ; preds = %74, %2
  call void @BLF_enable(i32 noundef %17, i32 noundef 1) #18
  call void @BLF_rotation(i32 noundef %17, float noundef 0x3FF921FB60000000) #18
  %78 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !82
  %79 = fmul float %78, 0x3FF19999A0000000
  %80 = fdiv float %23, %79
  call void @ui_fontscale(ptr noundef nonnull %3, float noundef %80) #18
  %81 = load i16, ptr %3, align 2, !tbaa !171
  %82 = sext i16 %81 to i32
  %83 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !83
  call void @BLF_size(i32 noundef %17, i32 noundef %82, i32 noundef %83) #18
  call void @BLF_enable(i32 noundef %17, i32 noundef 4) #18
  call void @BLF_shadow(i32 noundef %17, i32 noundef 3, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 2.500000e-01) #18
  call void @BLF_shadow_offset(i32 noundef %17, i32 noundef -1, i32 noundef -1) #18
  %84 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 27
  %85 = load ptr, ptr %84, align 8, !tbaa !34
  %86 = icmp eq ptr %85, null
  br i1 %86, label %110, label %87

87:                                               ; preds = %77
  %88 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 2, i32 4, i32 3
  %89 = shl nsw i32 %46, 1
  %90 = add i32 %89, %53
  br label %91

91:                                               ; preds = %87, %91
  %92 = phi ptr [ %85, %87 ], [ %108, %91 ]
  %93 = phi i32 [ %53, %87 ], [ %107, %91 ]
  %94 = getelementptr inbounds %struct.PanelCategoryDyn, ptr %92, i64 0, i32 3
  %95 = getelementptr inbounds %struct.PanelCategoryDyn, ptr %92, i64 0, i32 2
  %96 = call float @BLF_width(i32 noundef %17, ptr noundef nonnull %95, i64 noundef 1024) #18
  %97 = fptosi float %96 to i32
  store i32 %58, ptr %94, align 4, !tbaa !89
  %98 = getelementptr inbounds %struct.PanelCategoryDyn, ptr %92, i64 0, i32 3, i32 1
  store i32 %59, ptr %98, align 4, !tbaa !97
  %99 = load i32, ptr %88, align 4, !tbaa !176
  %100 = add i32 %93, %89
  %101 = add i32 %100, %97
  %102 = sub i32 %99, %101
  %103 = getelementptr inbounds %struct.PanelCategoryDyn, ptr %92, i64 0, i32 3, i32 2
  store i32 %102, ptr %103, align 4, !tbaa !90
  %104 = sub nsw i32 %99, %93
  %105 = getelementptr inbounds %struct.PanelCategoryDyn, ptr %92, i64 0, i32 3, i32 3
  store i32 %104, ptr %105, align 4, !tbaa !98
  %106 = add i32 %90, %93
  %107 = add i32 %106, %97
  %108 = load ptr, ptr %92, align 8, !tbaa !34
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %91, !llvm.loop !177

110:                                              ; preds = %91, %77
  %111 = phi i32 [ %53, %77 ], [ %107, %91 ]
  %112 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 2, i32 4, i32 3
  %113 = load i32, ptr %112, align 4, !tbaa !98
  %114 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 2, i32 4, i32 2
  %115 = load i32, ptr %114, align 4, !tbaa !90
  %116 = sub nsw i32 %113, %115
  %117 = icmp sgt i32 %111, %116
  br i1 %117, label %118, label %142

118:                                              ; preds = %110
  %119 = sitofp i32 %116 to float
  %120 = sitofp i32 %111 to float
  %121 = fdiv float %119, %120
  %122 = load ptr, ptr %84, align 8, !tbaa !34
  %123 = icmp eq ptr %122, null
  br i1 %123, label %142, label %124

124:                                              ; preds = %118, %124
  %125 = phi ptr [ %140, %124 ], [ %122, %118 ]
  %126 = getelementptr inbounds %struct.PanelCategoryDyn, ptr %125, i64 0, i32 3, i32 2
  %127 = load i32, ptr %126, align 4, !tbaa !90
  %128 = load i32, ptr %112, align 4, !tbaa !176
  %129 = sub nsw i32 %127, %128
  %130 = sitofp i32 %129 to float
  %131 = sitofp i32 %128 to float
  %132 = call float @llvm.fmuladd.f32(float %130, float %121, float %131)
  %133 = fptosi float %132 to i32
  store i32 %133, ptr %126, align 4, !tbaa !90
  %134 = getelementptr inbounds %struct.PanelCategoryDyn, ptr %125, i64 0, i32 3, i32 3
  %135 = load i32, ptr %134, align 4, !tbaa !98
  %136 = sub nsw i32 %135, %128
  %137 = sitofp i32 %136 to float
  %138 = call float @llvm.fmuladd.f32(float %137, float %121, float %131)
  %139 = fptosi float %138 to i32
  store i32 %139, ptr %134, align 4, !tbaa !98
  %140 = load ptr, ptr %125, align 8, !tbaa !34
  %141 = icmp eq ptr %140, null
  br i1 %141, label %142, label %124, !llvm.loop !178

142:                                              ; preds = %124, %118, %110
  call void @glEnable(i32 noundef 2848) #18
  br i1 %70, label %143, label %144

143:                                              ; preds = %142
  call void @glEnable(i32 noundef 3042) #18
  call void @glColor4ubv(ptr noundef nonnull %7) #18
  br label %145

144:                                              ; preds = %142
  call void @glColor3ubv(ptr noundef nonnull %7) #18
  br label %145

145:                                              ; preds = %144, %143
  %146 = load i32, ptr %56, align 8, !tbaa !173
  %147 = load i32, ptr %114, align 8, !tbaa !179
  %148 = add nsw i32 %146, %35
  %149 = load i32, ptr %112, align 4, !tbaa !176
  call void @glRecti(i32 noundef %146, i32 noundef %147, i32 noundef %148, i32 noundef %149) #18
  br i1 %70, label %150, label %151

150:                                              ; preds = %145
  call void @glDisable(i32 noundef 3042) #18
  br label %151

151:                                              ; preds = %150, %145
  %152 = load ptr, ptr %84, align 8, !tbaa !34
  %153 = icmp eq ptr %152, null
  br i1 %153, label %244, label %154

154:                                              ; preds = %151
  %155 = sitofp i32 %29 to float
  %156 = fsub float %55, %155
  %157 = shl i32 %46, 1
  br label %158

158:                                              ; preds = %154, %240
  %159 = phi ptr [ %152, %154 ], [ %242, %240 ]
  %160 = getelementptr inbounds %struct.PanelCategoryDyn, ptr %159, i64 0, i32 3
  %161 = getelementptr inbounds %struct.PanelCategoryDyn, ptr %159, i64 0, i32 2
  %162 = getelementptr inbounds %struct.PanelCategoryDyn, ptr %159, i64 0, i32 3, i32 3
  %163 = load i32, ptr %162, align 4, !tbaa !98
  %164 = getelementptr inbounds %struct.PanelCategoryDyn, ptr %159, i64 0, i32 3, i32 2
  %165 = load i32, ptr %164, align 4, !tbaa !90
  %166 = add i32 %157, %165
  %167 = sub i32 %163, %166
  %168 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %161, ptr noundef nonnull dereferenceable(1) %1) #17
  %169 = icmp eq i32 %168, 0
  call void @glEnable(i32 noundef 3042) #18
  %170 = select i1 %169, ptr %8, ptr %9
  call void @glColor3ubv(ptr noundef nonnull %170) #18
  %171 = load i32, ptr %160, align 4, !tbaa !89
  %172 = sitofp i32 %171 to float
  %173 = load i32, ptr %164, align 4, !tbaa !90
  %174 = sitofp i32 %173 to float
  %175 = getelementptr inbounds %struct.PanelCategoryDyn, ptr %159, i64 0, i32 3, i32 1
  %176 = load i32, ptr %175, align 4, !tbaa !97
  %177 = sitofp i32 %176 to float
  %178 = load i32, ptr %162, align 4, !tbaa !98
  %179 = sitofp i32 %178 to float
  call fastcc void @ui_panel_category_draw_tab(i32 noundef 9, float noundef %172, float noundef %174, float noundef %177, float noundef %179, float noundef %156, i8 noundef zeroext 1, ptr noundef null)
  call void @glColor3ubv(ptr noundef nonnull %10) #18
  call void @glPolygonMode(i32 noundef 1032, i32 noundef 6913) #18
  %180 = load i32, ptr %160, align 4, !tbaa !89
  %181 = sub nsw i32 %180, %29
  %182 = sitofp i32 %181 to float
  %183 = load i32, ptr %164, align 4, !tbaa !90
  %184 = sub nsw i32 %183, %29
  %185 = sitofp i32 %184 to float
  %186 = load i32, ptr %175, align 4, !tbaa !97
  %187 = sub nsw i32 %186, %29
  %188 = sitofp i32 %187 to float
  %189 = load i32, ptr %162, align 4, !tbaa !98
  %190 = add nsw i32 %189, %29
  %191 = sitofp i32 %190 to float
  call fastcc void @ui_panel_category_draw_tab(i32 noundef 3, float noundef %182, float noundef %185, float noundef %188, float noundef %191, float noundef %55, i8 noundef zeroext 1, ptr noundef null)
  call void @glShadeModel(i32 noundef 7425) #18
  %192 = select i1 %169, ptr %12, ptr %13
  call void @glColor3ubv(ptr noundef nonnull %192) #18
  %193 = load i32, ptr %160, align 4, !tbaa !89
  %194 = sitofp i32 %193 to float
  %195 = load i32, ptr %164, align 4, !tbaa !90
  %196 = sitofp i32 %195 to float
  %197 = load i32, ptr %175, align 4, !tbaa !97
  %198 = sitofp i32 %197 to float
  %199 = load i32, ptr %162, align 4, !tbaa !98
  %200 = sitofp i32 %199 to float
  %201 = select i1 %169, ptr %4, ptr %9
  call fastcc void @ui_panel_category_draw_tab(i32 noundef 3, float noundef %194, float noundef %196, float noundef %198, float noundef %200, float noundef %55, i8 noundef zeroext 0, ptr noundef nonnull %201)
  call void @glShadeModel(i32 noundef 7424) #18
  call void @glPolygonMode(i32 noundef 1032, i32 noundef 6914) #18
  br i1 %169, label %210, label %202

202:                                              ; preds = %158
  call void @glColor3ubv(ptr noundef nonnull %11) #18
  %203 = load i32, ptr %56, align 8, !tbaa !173
  %204 = add nsw i32 %203, %35
  %205 = sub nsw i32 %204, %29
  %206 = load i32, ptr %164, align 4, !tbaa !90
  %207 = sub nsw i32 %206, %53
  %208 = load i32, ptr %162, align 4, !tbaa !98
  %209 = add nsw i32 %208, %53
  call void @glRecti(i32 noundef %205, i32 noundef %207, i32 noundef %204, i32 noundef %209) #18
  br label %210

210:                                              ; preds = %202, %158
  br i1 %117, label %211, label %214

211:                                              ; preds = %210
  %212 = sitofp i32 %167 to float
  %213 = call i64 @BLF_width_to_strlen(i32 noundef %17, ptr noundef nonnull %161, i64 noundef 1024, float noundef %212, ptr noundef null) #18
  br label %214

214:                                              ; preds = %211, %210
  %215 = phi i64 [ %213, %211 ], [ 1024, %210 ]
  %216 = load i32, ptr %175, align 4, !tbaa !97
  %217 = sub nsw i32 %216, %63
  %218 = sitofp i32 %217 to float
  %219 = load i32, ptr %164, align 4, !tbaa !90
  %220 = add nsw i32 %219, %46
  %221 = sitofp i32 %220 to float
  call void @BLF_position(i32 noundef %17, float noundef %218, float noundef %221, float noundef 0.000000e+00) #18
  call void @glColor3ubv(ptr noundef nonnull %5) #18
  call void @BLF_draw(i32 noundef %17, ptr noundef nonnull %161, i64 noundef %215) #18
  call void @glDisable(i32 noundef 3042) #18
  %222 = getelementptr inbounds %struct.PanelCategoryDyn, ptr %159, i64 0, i32 1
  %223 = load ptr, ptr %222, align 8, !tbaa !180
  %224 = icmp eq ptr %223, null
  br i1 %224, label %225, label %232

225:                                              ; preds = %214
  call void @glColor3ubv(ptr noundef nonnull %11) #18
  %226 = load i32, ptr %56, align 8, !tbaa !173
  %227 = add nsw i32 %226, %35
  %228 = sub nsw i32 %227, %29
  %229 = load i32, ptr %162, align 4, !tbaa !98
  %230 = add nsw i32 %229, %29
  %231 = load i32, ptr %112, align 4, !tbaa !176
  call void @glRecti(i32 noundef %228, i32 noundef %230, i32 noundef %227, i32 noundef %231) #18
  br label %232

232:                                              ; preds = %225, %214
  %233 = load ptr, ptr %159, align 8, !tbaa !182
  %234 = icmp eq ptr %233, null
  br i1 %234, label %235, label %240

235:                                              ; preds = %232
  call void @glColor3ubv(ptr noundef nonnull %11) #18
  %236 = load i32, ptr %56, align 8, !tbaa !173
  %237 = add nsw i32 %236, %35
  %238 = sub nsw i32 %237, %29
  %239 = load i32, ptr %164, align 4, !tbaa !90
  call void @glRecti(i32 noundef %238, i32 noundef 0, i32 noundef %237, i32 noundef %239) #18
  br label %240

240:                                              ; preds = %235, %232
  %241 = load i32, ptr %56, align 8, !tbaa !173
  store i32 %241, ptr %160, align 8, !tbaa !183
  %242 = load ptr, ptr %159, align 8, !tbaa !34
  %243 = icmp eq ptr %242, null
  br i1 %243, label %244, label %158, !llvm.loop !184

244:                                              ; preds = %240, %151
  call void @glDisable(i32 noundef 2848) #18
  call void @BLF_disable(i32 noundef %17, i32 noundef 1) #18
  call void @BLF_disable(i32 noundef %17, i32 noundef 4) #18
  %245 = load i16, ptr %71, align 4, !tbaa !175
  %246 = icmp eq i16 %245, 1
  br i1 %246, label %247, label %250

247:                                              ; preds = %244
  %248 = load i16, ptr %15, align 4, !tbaa !169
  %249 = sext i16 %248 to i32
  call void @BLF_disable(i32 noundef %249, i32 noundef 8) #18
  br label %250

250:                                              ; preds = %247, %244
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #18
  ret void
}

declare ptr @UI_GetStyle() local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #12

declare void @UI_GetThemeColor4ubv(i32 noundef, ptr noundef) local_unnamed_addr #5

declare void @UI_GetThemeColor3ubv(i32 noundef, ptr noundef) local_unnamed_addr #5

declare void @interp_v3_v3v3_uchar(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #5

declare void @BLF_enable(i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @BLF_rotation(i32 noundef, float noundef) local_unnamed_addr #5

declare void @ui_fontscale(ptr noundef, float noundef) local_unnamed_addr #5

declare void @BLF_size(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @BLF_shadow(i32 noundef, i32 noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #5

declare void @BLF_shadow_offset(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare float @BLF_width(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @glColor4ubv(ptr noundef) local_unnamed_addr #5

declare void @glColor3ubv(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @ui_panel_category_draw_tab(i32 noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, i8 noundef zeroext %6, ptr noundef %7) unnamed_addr #3 {
  %9 = alloca [4 x [2 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %9, ptr noundef nonnull align 16 dereferenceable(32) @__const.ui_panel_category_draw_tab.vec, i64 32, i1 false)
  br label %10

10:                                               ; preds = %8, %10
  %11 = phi i64 [ 0, %8 ], [ %18, %10 ]
  %12 = getelementptr inbounds [4 x [2 x float]], ptr %9, i64 0, i64 %11
  %13 = load float, ptr %12, align 8, !tbaa !185
  %14 = fmul float %13, %5
  store float %14, ptr %12, align 8, !tbaa !185
  %15 = getelementptr inbounds float, ptr %12, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !185
  %17 = fmul float %16, %5
  store float %17, ptr %15, align 4, !tbaa !185
  %18 = add nuw nsw i64 %11, 1
  %19 = icmp eq i64 %18, 4
  br i1 %19, label %20, label %10, !llvm.loop !186

20:                                               ; preds = %10
  tail call void @glBegin(i32 noundef %0) #18
  tail call void @glVertex2f(float noundef %3, float noundef %4) #18
  %21 = fadd float %1, %5
  tail call void @glVertex2f(float noundef %21, float noundef %4) #18
  br label %22

22:                                               ; preds = %20, %22
  %23 = phi i64 [ 0, %20 ], [ %30, %22 ]
  %24 = getelementptr inbounds [4 x [2 x float]], ptr %9, i64 0, i64 %23
  %25 = load float, ptr %24, align 8, !tbaa !185
  %26 = fsub float %21, %25
  %27 = getelementptr inbounds [4 x [2 x float]], ptr %9, i64 0, i64 %23, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !185
  %29 = fsub float %4, %28
  tail call void @glVertex2f(float noundef %26, float noundef %29) #18
  %30 = add nuw nsw i64 %23, 1
  %31 = icmp eq i64 %30, 4
  br i1 %31, label %32, label %22, !llvm.loop !187

32:                                               ; preds = %22
  %33 = fsub float %4, %5
  tail call void @glVertex2f(float noundef %1, float noundef %33) #18
  %34 = icmp eq i8 %6, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = icmp eq ptr %7, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %35
  tail call void @glColor3ubv(ptr noundef nonnull %7) #18
  br label %38

38:                                               ; preds = %37, %35
  %39 = fadd float %2, %5
  tail call void @glVertex2f(float noundef %1, float noundef %39) #18
  br label %53

40:                                               ; preds = %32
  %41 = fadd float %2, %5
  tail call void @glVertex2f(float noundef %1, float noundef %41) #18
  br label %42

42:                                               ; preds = %40, %42
  %43 = phi i64 [ 0, %40 ], [ %50, %42 ]
  %44 = getelementptr inbounds [4 x [2 x float]], ptr %9, i64 0, i64 %43
  %45 = getelementptr inbounds [4 x [2 x float]], ptr %9, i64 0, i64 %43, i64 1
  %46 = load float, ptr %45, align 4, !tbaa !185
  %47 = fadd float %46, %1
  %48 = load float, ptr %44, align 8, !tbaa !185
  %49 = fsub float %41, %48
  tail call void @glVertex2f(float noundef %47, float noundef %49) #18
  %50 = add nuw nsw i64 %43, 1
  %51 = icmp eq i64 %50, 4
  br i1 %51, label %52, label %42, !llvm.loop !188

52:                                               ; preds = %42
  tail call void @glVertex2f(float noundef %21, float noundef %2) #18
  tail call void @glVertex2f(float noundef %3, float noundef %2) #18
  br label %53

53:                                               ; preds = %52, %38
  tail call void @glEnd() #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #18
  ret void
}

declare void @glPolygonMode(i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @glShadeModel(i32 noundef) local_unnamed_addr #5

declare i64 @BLF_width_to_strlen(i32 noundef, ptr noundef, i64 noundef, float noundef, ptr noundef) local_unnamed_addr #5

declare void @BLF_position(i32 noundef, float noundef, float noundef, float noundef) local_unnamed_addr #5

declare void @BLF_draw(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @BLF_disable(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i32 @ui_handler_panel_region(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #3 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  %6 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 27
  %7 = load ptr, ptr %6, align 8, !tbaa !144
  %8 = icmp eq ptr %7, null
  br i1 %8, label %74, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 27, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !145
  %12 = icmp eq ptr %7, %11
  br i1 %12, label %74, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 3
  %15 = load i16, ptr %14, align 2, !tbaa !189
  %16 = icmp eq i16 %15, 1
  br i1 %16, label %17, label %74

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 2
  %19 = load i16, ptr %18, align 8, !tbaa !190
  switch i16 %19, label %74 [
    i16 1, label %20
    i16 10, label %39
    i16 11, label %39
  ]

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 6
  %22 = load i32, ptr %21, align 4, !tbaa !80
  %23 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 6, i64 1
  %24 = load i32, ptr %23, align 4, !tbaa !80
  br label %25

25:                                               ; preds = %29, %20
  %26 = phi ptr [ %6, %20 ], [ %27, %29 ]
  %27 = load ptr, ptr %26, align 8, !tbaa !34
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.PanelCategoryDyn, ptr %27, i64 0, i32 3
  %31 = tail call zeroext i8 @BLI_rcti_isect_pt(ptr noundef nonnull %30, i32 noundef %22, i32 noundef %24) #18
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %25, label %33, !llvm.loop !168

33:                                               ; preds = %25, %29
  %34 = phi ptr [ %27, %29 ], [ null, %25 ]
  %35 = icmp eq ptr %34, null
  br i1 %35, label %74, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.PanelCategoryDyn, ptr %34, i64 0, i32 2
  tail call void @UI_panel_category_active_set(ptr noundef %2, ptr noundef nonnull %37)
  tail call void @ED_region_tag_redraw(ptr noundef %2) #18
  %38 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2
  tail call void @UI_view2d_offset(ptr noundef nonnull %38, float noundef -1.000000e+00, float noundef 1.000000e+00) #18
  br label %274

39:                                               ; preds = %17, %17
  %40 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 18
  %41 = load i16, ptr %40, align 2, !tbaa !191
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 6
  %45 = load i32, ptr %44, align 4, !tbaa !80
  %46 = getelementptr inbounds %struct.PanelCategoryDyn, ptr %7, i64 0, i32 3, i32 1
  %47 = load i32, ptr %46, align 4, !tbaa !192
  %48 = icmp slt i32 %45, %47
  br i1 %48, label %49, label %74

49:                                               ; preds = %43, %39
  %50 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 23
  br label %51

51:                                               ; preds = %55, %49
  %52 = phi ptr [ %50, %49 ], [ %53, %55 ]
  %53 = load ptr, ptr %52, align 8, !tbaa !34
  %54 = icmp eq ptr %53, null
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.PanelCategoryStack, ptr %53, i64 0, i32 2
  %57 = tail call ptr @BLI_findstring(ptr noundef nonnull %6, ptr noundef nonnull %56, i32 noundef 16) #18
  %58 = icmp eq ptr %57, null
  br i1 %58, label %51, label %59, !llvm.loop !163

59:                                               ; preds = %51, %55
  %60 = phi ptr [ %56, %55 ], [ null, %51 ]
  %61 = icmp eq ptr %60, null
  br i1 %61, label %274, label %62

62:                                               ; preds = %59
  %63 = tail call ptr @BLI_findstring(ptr noundef nonnull %6, ptr noundef nonnull %60, i32 noundef 16) #18
  %64 = icmp eq ptr %63, null
  br i1 %64, label %274, label %65

65:                                               ; preds = %62
  %66 = load i16, ptr %18, align 8, !tbaa !190
  %67 = icmp eq i16 %66, 11
  %68 = getelementptr inbounds %struct.PanelCategoryDyn, ptr %63, i64 0, i32 1
  %69 = select i1 %67, ptr %63, ptr %68
  %70 = load ptr, ptr %69, align 8, !tbaa !34
  %71 = icmp eq ptr %70, null
  br i1 %71, label %274, label %72

72:                                               ; preds = %65
  %73 = getelementptr inbounds %struct.PanelCategoryDyn, ptr %70, i64 0, i32 2
  tail call void @UI_panel_category_active_set(ptr noundef %2, ptr noundef nonnull %73)
  tail call void @ED_region_tag_redraw(ptr noundef %2) #18
  br label %274

74:                                               ; preds = %3, %17, %33, %9, %13, %43
  %75 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 21, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !34
  %77 = icmp eq ptr %76, null
  br i1 %77, label %274, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 4
  %80 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 5
  %81 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 3
  %82 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 2
  %83 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 18
  %84 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 20
  %85 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 17
  %86 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 19
  %87 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 3
  %88 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 2
  %89 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 18
  %90 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 17
  %91 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 18
  %92 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 17
  br label %97

93:                                               ; preds = %271
  %94 = getelementptr inbounds %struct.uiBlock, ptr %98, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !34
  %96 = icmp eq ptr %95, null
  br i1 %96, label %274, label %97, !llvm.loop !193

97:                                               ; preds = %78, %93
  %98 = phi ptr [ %76, %78 ], [ %95, %93 ]
  %99 = phi i32 [ 0, %78 ], [ %272, %93 ]
  %100 = load i32, ptr %79, align 4, !tbaa !134
  store i32 %100, ptr %4, align 4, !tbaa !80
  %101 = load i32, ptr %80, align 8, !tbaa !137
  store i32 %101, ptr %5, align 4, !tbaa !80
  call void @ui_window_to_block(ptr noundef %2, ptr noundef nonnull %98, ptr noundef nonnull %4, ptr noundef nonnull %5) #18
  %102 = getelementptr inbounds %struct.uiBlock, ptr %98, i64 0, i32 3
  %103 = load ptr, ptr %102, align 8, !tbaa !56
  %104 = icmp eq ptr %103, null
  br i1 %104, label %271, label %105

105:                                              ; preds = %97
  %106 = getelementptr inbounds %struct.Panel, ptr %103, i64 0, i32 18
  %107 = load ptr, ptr %106, align 8, !tbaa !64
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %271

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.Panel, ptr %103, i64 0, i32 2
  %111 = load ptr, ptr %110, align 8, !tbaa !42
  %112 = icmp eq ptr %111, null
  br i1 %112, label %118, label %113

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.PanelType, ptr %111, i64 0, i32 9
  %115 = load i32, ptr %114, align 8, !tbaa !46
  %116 = and i32 %115, 2
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %271

118:                                              ; preds = %113, %109
  %119 = getelementptr inbounds %struct.Panel, ptr %103, i64 0, i32 13
  %120 = load i16, ptr %119, align 4, !tbaa !49
  %121 = and i16 %120, 2
  %122 = icmp eq i16 %121, 0
  %123 = getelementptr inbounds %struct.uiBlock, ptr %98, i64 0, i32 11
  %124 = load float, ptr %123, align 8, !tbaa !113
  %125 = load i32, ptr %4, align 4, !tbaa !80
  %126 = sitofp i32 %125 to float
  br i1 %122, label %137, label %127

127:                                              ; preds = %118
  %128 = fcmp ugt float %124, %126
  br i1 %128, label %194, label %129

129:                                              ; preds = %127
  %130 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !75
  %131 = sext i16 %130 to i32
  %132 = add nsw i32 %131, 4
  %133 = sitofp i32 %132 to float
  %134 = fadd float %124, %133
  %135 = fcmp ult float %134, %126
  br i1 %135, label %194, label %136

136:                                              ; preds = %129
  br label %194

137:                                              ; preds = %118
  %138 = fcmp ogt float %124, %126
  br i1 %138, label %194, label %139

139:                                              ; preds = %137
  %140 = getelementptr inbounds %struct.uiBlock, ptr %98, i64 0, i32 11, i32 1
  %141 = load float, ptr %140, align 4, !tbaa !110
  %142 = fcmp olt float %141, %126
  br i1 %142, label %194, label %143

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.uiBlock, ptr %98, i64 0, i32 11, i32 3
  %145 = load float, ptr %144, align 4, !tbaa !111
  %146 = load i32, ptr %5, align 4, !tbaa !80
  %147 = sitofp i32 %146 to float
  %148 = fcmp ugt float %145, %147
  br i1 %148, label %156, label %149

149:                                              ; preds = %143
  %150 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !75
  %151 = sext i16 %150 to i32
  %152 = add nsw i32 %151, 4
  %153 = sitofp i32 %152 to float
  %154 = fadd float %145, %153
  %155 = fcmp ult float %154, %147
  br i1 %155, label %156, label %194

156:                                              ; preds = %149, %143
  %157 = and i16 %120, 4
  %158 = icmp eq i16 %157, 0
  br i1 %158, label %159, label %194

159:                                              ; preds = %156
  %160 = getelementptr inbounds %struct.Panel, ptr %103, i64 0, i32 15
  %161 = load i16, ptr %160, align 8, !tbaa !84
  %162 = and i16 %161, 512
  %163 = icmp eq i16 %162, 0
  br i1 %163, label %177, label %164

164:                                              ; preds = %159
  %165 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !75
  %166 = sext i16 %165 to i32
  %167 = add nsw i32 %166, 4
  %168 = sitofp i32 %167 to float
  %169 = fsub float %141, %168
  %170 = fcmp ugt float %169, %126
  br i1 %170, label %177, label %171

171:                                              ; preds = %164
  %172 = getelementptr inbounds %struct.uiBlock, ptr %98, i64 0, i32 11, i32 2
  %173 = load float, ptr %172, align 8, !tbaa !112
  %174 = fadd float %173, %168
  %175 = fcmp ult float %174, %147
  br i1 %175, label %177, label %176

176:                                              ; preds = %171
  br label %177

177:                                              ; preds = %164, %176, %171, %159
  %178 = phi i8 [ 1, %176 ], [ 0, %171 ], [ 0, %164 ], [ 0, %159 ]
  %179 = fcmp ugt float %124, %126
  %180 = fcmp ult float %141, %126
  %181 = or i1 %179, %180
  br i1 %181, label %194, label %182

182:                                              ; preds = %177
  %183 = getelementptr inbounds %struct.uiBlock, ptr %98, i64 0, i32 11, i32 2
  %184 = load float, ptr %183, align 8, !tbaa !112
  %185 = fcmp ugt float %184, %147
  br i1 %185, label %194, label %186

186:                                              ; preds = %182
  %187 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !75
  %188 = sext i16 %187 to i32
  %189 = add nsw i32 %188, 4
  %190 = sitofp i32 %189 to float
  %191 = fadd float %145, %190
  %192 = fcmp ult float %191, %147
  br i1 %192, label %194, label %193

193:                                              ; preds = %186
  br label %194

194:                                              ; preds = %149, %139, %137, %156, %182, %186, %193, %177, %127, %129, %136
  %195 = phi i1 [ true, %136 ], [ false, %129 ], [ false, %127 ], [ false, %137 ], [ false, %139 ], [ false, %156 ], [ false, %193 ], [ false, %186 ], [ false, %182 ], [ false, %177 ], [ true, %149 ]
  %196 = phi i1 [ false, %136 ], [ true, %129 ], [ true, %127 ], [ true, %137 ], [ true, %139 ], [ true, %156 ], [ true, %193 ], [ true, %186 ], [ true, %182 ], [ true, %177 ], [ false, %149 ]
  %197 = phi i8 [ 0, %136 ], [ 0, %129 ], [ 0, %127 ], [ 0, %137 ], [ 0, %139 ], [ 0, %156 ], [ %178, %193 ], [ %178, %186 ], [ %178, %182 ], [ %178, %177 ], [ 0, %149 ]
  %198 = phi i1 [ true, %136 ], [ false, %129 ], [ false, %127 ], [ false, %137 ], [ false, %139 ], [ false, %156 ], [ true, %193 ], [ false, %186 ], [ false, %182 ], [ false, %177 ], [ true, %149 ]
  br i1 %198, label %199, label %238

199:                                              ; preds = %194
  %200 = load i16, ptr %81, align 2, !tbaa !189
  %201 = icmp eq i16 %200, 1
  br i1 %201, label %202, label %238

202:                                              ; preds = %199
  %203 = load i16, ptr %82, align 8, !tbaa !190
  %204 = icmp eq i16 %203, 97
  br i1 %204, label %205, label %238

205:                                              ; preds = %202
  %206 = load i16, ptr %83, align 2, !tbaa !191
  %207 = icmp eq i16 %206, 1
  br i1 %207, label %238, label %208

208:                                              ; preds = %205
  %209 = load i16, ptr %84, align 2, !tbaa !194
  %210 = icmp eq i16 %209, 1
  br i1 %210, label %238, label %211

211:                                              ; preds = %208
  %212 = load i16, ptr %85, align 8, !tbaa !195
  %213 = icmp eq i16 %212, 1
  br i1 %213, label %238, label %214

214:                                              ; preds = %211
  %215 = load i16, ptr %86, align 4, !tbaa !196
  %216 = icmp eq i16 %215, 1
  br i1 %216, label %238, label %217

217:                                              ; preds = %214
  %218 = and i16 %120, 4
  %219 = icmp eq i16 %218, 0
  br i1 %219, label %235, label %220

220:                                              ; preds = %217
  %221 = getelementptr inbounds %struct.uiBlock, ptr %98, i64 0, i32 11, i32 3
  %222 = load float, ptr %221, align 4, !tbaa !111
  %223 = load i32, ptr %5, align 4, !tbaa !80
  %224 = sitofp i32 %223 to float
  %225 = fcmp ugt float %222, %224
  br i1 %225, label %271, label %226

226:                                              ; preds = %220
  %227 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !75
  %228 = sext i16 %227 to i32
  %229 = add nsw i32 %228, 4
  %230 = sitofp i32 %229 to float
  %231 = fadd float %222, %230
  %232 = fcmp ult float %231, %224
  br i1 %232, label %271, label %233

233:                                              ; preds = %226
  %234 = load i32, ptr %4, align 4, !tbaa !80
  call fastcc void @ui_handle_panel_header(ptr noundef %0, ptr noundef nonnull %98, i32 noundef %234, i32 noundef %223, i32 noundef 97, i16 noundef signext %206, i16 noundef signext %212)
  br label %271

235:                                              ; preds = %217
  %236 = load i32, ptr %4, align 4, !tbaa !80
  %237 = load i32, ptr %5, align 4, !tbaa !80
  call fastcc void @ui_handle_panel_header(ptr noundef %0, ptr noundef nonnull %98, i32 noundef %236, i32 noundef %237, i32 noundef 97, i16 noundef signext %206, i16 noundef signext %212)
  br label %271

238:                                              ; preds = %202, %205, %208, %211, %214, %194, %199
  %239 = call zeroext i8 @ui_button_is_active(ptr noundef %2) #18
  %240 = icmp eq i8 %239, 0
  %241 = and i1 %198, %240
  br i1 %241, label %242, label %271

242:                                              ; preds = %238
  %243 = load i16, ptr %87, align 2, !tbaa !189
  %244 = icmp eq i16 %243, 1
  br i1 %244, label %245, label %271

245:                                              ; preds = %242
  %246 = load i16, ptr %88, align 8, !tbaa !190
  switch i16 %246, label %266 [
    i16 220, label %247
    i16 163, label %247
    i16 1, label %253
  ]

247:                                              ; preds = %245, %245
  br i1 %196, label %271, label %248

248:                                              ; preds = %247
  %249 = load i32, ptr %4, align 4, !tbaa !80
  %250 = load i32, ptr %5, align 4, !tbaa !80
  %251 = load i16, ptr %91, align 2, !tbaa !191
  %252 = load i16, ptr %92, align 8, !tbaa !195
  call fastcc void @ui_handle_panel_header(ptr noundef %0, ptr noundef nonnull %98, i32 noundef %249, i32 noundef %250, i32 noundef 220, i16 noundef signext %251, i16 noundef signext %252)
  br label %271

253:                                              ; preds = %245
  br i1 %196, label %259, label %254

254:                                              ; preds = %253
  %255 = load i32, ptr %4, align 4, !tbaa !80
  %256 = load i32, ptr %5, align 4, !tbaa !80
  %257 = load i16, ptr %89, align 2, !tbaa !191
  %258 = load i16, ptr %90, align 8, !tbaa !195
  call fastcc void @ui_handle_panel_header(ptr noundef %0, ptr noundef nonnull %98, i32 noundef %255, i32 noundef %256, i32 noundef 0, i16 noundef signext %257, i16 noundef signext %258)
  br label %271

259:                                              ; preds = %253
  %260 = icmp eq i8 %197, 0
  br i1 %260, label %271, label %261

261:                                              ; preds = %259
  %262 = load i16, ptr %119, align 4, !tbaa !49
  %263 = and i16 %262, 6
  %264 = icmp eq i16 %263, 0
  br i1 %264, label %265, label %271

265:                                              ; preds = %261
  call fastcc void @panel_activate_state(ptr noundef %0, ptr noundef nonnull %103, i32 noundef 1)
  br label %271

266:                                              ; preds = %245
  %267 = icmp eq i16 %246, 3
  %268 = and i1 %195, %267
  br i1 %268, label %269, label %271

269:                                              ; preds = %266
  %270 = load ptr, ptr %102, align 8, !tbaa !56
  call void @ui_panel_menu(ptr noundef %0, ptr noundef %2, ptr noundef %270) #18
  br label %271

271:                                              ; preds = %238, %247, %261, %259, %242, %266, %235, %233, %226, %220, %113, %97, %105, %269, %265, %254, %248
  %272 = phi i32 [ 1, %248 ], [ 1, %254 ], [ 1, %265 ], [ 1, %269 ], [ %99, %105 ], [ %99, %97 ], [ %99, %113 ], [ 1, %220 ], [ 1, %226 ], [ 1, %233 ], [ 1, %235 ], [ %99, %238 ], [ %99, %247 ], [ 1, %261 ], [ 1, %259 ], [ %99, %266 ], [ %99, %242 ]
  %273 = phi i1 [ true, %248 ], [ true, %254 ], [ true, %265 ], [ true, %269 ], [ false, %105 ], [ false, %97 ], [ false, %113 ], [ false, %220 ], [ false, %226 ], [ false, %233 ], [ false, %235 ], [ false, %238 ], [ false, %247 ], [ false, %261 ], [ false, %259 ], [ false, %266 ], [ false, %242 ]
  br i1 %273, label %274, label %93

274:                                              ; preds = %271, %93, %74, %36, %62, %72, %65, %59
  %275 = phi i32 [ 1, %59 ], [ 1, %65 ], [ 1, %72 ], [ 1, %62 ], [ 1, %36 ], [ 0, %74 ], [ %272, %93 ], [ %272, %271 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  ret i32 %275
}

declare void @UI_view2d_offset(ptr noundef, float noundef, float noundef) local_unnamed_addr #5

declare void @ui_window_to_block(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @ui_handle_panel_header(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i16 noundef signext %5, i16 noundef signext %6) unnamed_addr #3 {
  %8 = alloca %struct.rctf, align 4
  %9 = alloca %struct.rctf, align 4
  %10 = tail call ptr @CTX_wm_area(ptr noundef %0) #18
  %11 = tail call ptr @CTX_wm_region(ptr noundef %0) #18
  %12 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 27
  %13 = load ptr, ptr %12, align 8, !tbaa !144
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 27, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !145
  %18 = icmp ne ptr %13, %17
  %19 = zext i1 %18 to i8
  br label %20

20:                                               ; preds = %7, %15
  %21 = phi i8 [ 0, %7 ], [ %19, %15 ]
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !56
  %26 = getelementptr inbounds %struct.Panel, ptr %25, i64 0, i32 13
  %27 = load i16, ptr %26, align 4, !tbaa !49
  %28 = and i16 %27, 32
  %29 = icmp ne i16 %28, 0
  br label %30

30:                                               ; preds = %23, %20
  %31 = phi i1 [ false, %20 ], [ %29, %23 ]
  %32 = tail call fastcc i32 @panel_aligned(ptr noundef %10, ptr noundef %11), !range !41
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #18
  %33 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %33, i64 16, i1 false), !tbaa.struct !197
  %34 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 11, i32 1
  %35 = load float, ptr %34, align 4, !tbaa !110
  %36 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !75
  %37 = sitofp i16 %36 to float
  %38 = fneg float %37
  %39 = tail call float @llvm.fmuladd.f32(float %38, float 1.500000e+00, float %35)
  store float %39, ptr %8, align 4, !tbaa !92
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %9, ptr noundef nonnull align 4 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !197
  br i1 %31, label %40, label %44

40:                                               ; preds = %30
  %41 = sext i16 %36 to i32
  %42 = sub nsw i32 0, %41
  %43 = sitofp i32 %42 to float
  call void @BLI_rctf_translate(ptr noundef nonnull %9, float noundef %43, float noundef 0.000000e+00) #18
  br label %44

44:                                               ; preds = %40, %30
  %45 = load float, ptr %9, align 4, !tbaa !92
  switch i32 %4, label %46 [
    i32 220, label %82
    i32 97, label %82
  ]

46:                                               ; preds = %44
  %47 = icmp ult i32 %4, 2
  %48 = icmp ne i16 %6, 0
  %49 = and i1 %47, %48
  %50 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !56
  %52 = getelementptr inbounds %struct.Panel, ptr %51, i64 0, i32 13
  %53 = load i16, ptr %52, align 4, !tbaa !49
  br i1 %49, label %54, label %56

54:                                               ; preds = %46
  %55 = xor i16 %53, 32
  store i16 %55, ptr %52, align 4, !tbaa !49
  br label %82

56:                                               ; preds = %46
  %57 = and i16 %53, 2
  %58 = icmp eq i16 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %56
  %60 = sitofp i32 %3 to float
  %61 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 11, i32 3
  %62 = load float, ptr %61, align 4, !tbaa !111
  %63 = fcmp ugt float %62, %60
  br i1 %63, label %82, label %64

64:                                               ; preds = %59
  br label %82

65:                                               ; preds = %56
  %66 = getelementptr inbounds %struct.Panel, ptr %51, i64 0, i32 15
  %67 = load i16, ptr %66, align 8, !tbaa !84
  %68 = and i16 %67, 32
  %69 = icmp eq i16 %68, 0
  %70 = sitofp i32 %2 to float
  br i1 %69, label %79, label %71

71:                                               ; preds = %65
  %72 = load float, ptr %34, align 4, !tbaa !110
  %73 = fadd float %72, -8.000000e+00
  %74 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !75
  %75 = sitofp i16 %74 to float
  %76 = fsub float %73, %75
  %77 = fcmp ult float %76, %70
  br i1 %77, label %82, label %78

78:                                               ; preds = %71
  br label %82

79:                                               ; preds = %65
  %80 = fcmp ogt float %45, %70
  br i1 %80, label %81, label %82

81:                                               ; preds = %79
  br label %82

82:                                               ; preds = %44, %44, %64, %59, %79, %81, %71, %78, %54
  %83 = phi i1 [ false, %54 ], [ false, %64 ], [ true, %59 ], [ false, %78 ], [ true, %71 ], [ false, %81 ], [ true, %79 ], [ false, %44 ], [ false, %44 ]
  %84 = phi i1 [ true, %54 ], [ false, %64 ], [ false, %59 ], [ true, %78 ], [ false, %71 ], [ false, %81 ], [ false, %79 ], [ false, %44 ], [ false, %44 ]
  br i1 %83, label %219, label %85

85:                                               ; preds = %82
  br i1 %84, label %86, label %87

86:                                               ; preds = %85
  call void @ED_region_tag_redraw(ptr noundef %11) #18
  br label %213

87:                                               ; preds = %85
  %88 = icmp eq i16 %5, 0
  br i1 %88, label %162, label %89

89:                                               ; preds = %87
  %90 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 3
  %91 = load ptr, ptr %90, align 8, !tbaa !56
  %92 = load ptr, ptr %12, align 8, !tbaa !144
  %93 = icmp eq ptr %92, null
  br i1 %93, label %108, label %94

94:                                               ; preds = %89
  %95 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 27, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !145
  %97 = icmp eq ptr %92, %96
  br i1 %97, label %108, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 23
  br label %100

100:                                              ; preds = %104, %98
  %101 = phi ptr [ %99, %98 ], [ %102, %104 ]
  %102 = load ptr, ptr %101, align 8, !tbaa !34
  %103 = icmp eq ptr %102, null
  br i1 %103, label %108, label %104

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.PanelCategoryStack, ptr %102, i64 0, i32 2
  %106 = call ptr @BLI_findstring(ptr noundef nonnull %12, ptr noundef nonnull %105, i32 noundef 16) #18
  %107 = icmp eq ptr %106, null
  br i1 %107, label %100, label %108, !llvm.loop !163

108:                                              ; preds = %104, %100, %89, %94
  %109 = phi ptr [ null, %94 ], [ null, %89 ], [ %105, %104 ], [ null, %100 ]
  %110 = call fastcc i32 @panel_aligned(ptr noundef %10, ptr noundef %11), !range !41
  %111 = icmp eq i32 %110, 1
  %112 = select i1 %111, i16 2, i16 4
  %113 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 22
  %114 = load ptr, ptr %113, align 8, !tbaa !34
  %115 = icmp eq ptr %114, null
  br i1 %115, label %162, label %116

116:                                              ; preds = %108
  %117 = getelementptr inbounds %struct.Panel, ptr %91, i64 0, i32 2
  %118 = load ptr, ptr %117, align 8, !tbaa !42
  %119 = icmp ne ptr %118, null
  %120 = getelementptr inbounds %struct.PanelType, ptr %118, i64 0, i32 5
  %121 = icmp ne ptr %109, null
  br label %122

122:                                              ; preds = %116, %159
  %123 = phi ptr [ %114, %116 ], [ %160, %159 ]
  %124 = getelementptr inbounds %struct.Panel, ptr %123, i64 0, i32 2
  %125 = load ptr, ptr %124, align 8, !tbaa !42
  %126 = icmp ne ptr %125, null
  %127 = select i1 %126, i1 %119, i1 false
  br i1 %127, label %128, label %159

128:                                              ; preds = %122
  %129 = getelementptr inbounds %struct.PanelType, ptr %125, i64 0, i32 9
  %130 = load i32, ptr %129, align 8, !tbaa !46
  %131 = and i32 %130, 2
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %159

133:                                              ; preds = %128
  %134 = getelementptr inbounds %struct.PanelType, ptr %125, i64 0, i32 5
  %135 = load i8, ptr %134, align 8, !tbaa !63
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %143, label %137

137:                                              ; preds = %133
  %138 = load i8, ptr %120, align 8, !tbaa !63
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %137
  %141 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %134, ptr noundef nonnull dereferenceable(1) %120) #17
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %159

143:                                              ; preds = %140, %137, %133
  %144 = getelementptr inbounds %struct.Panel, ptr %123, i64 0, i32 13
  %145 = load i16, ptr %144, align 4, !tbaa !49
  %146 = and i16 %145, 32
  %147 = icmp eq i16 %146, 0
  %148 = and i1 %121, %147
  br i1 %148, label %149, label %156

149:                                              ; preds = %143
  %150 = getelementptr inbounds %struct.PanelType, ptr %125, i64 0, i32 6
  %151 = load i8, ptr %150, align 8, !tbaa !63
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %156, label %153

153:                                              ; preds = %149
  %154 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %150, ptr noundef nonnull dereferenceable(1) %109) #17
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %153, %149, %143
  %157 = and i16 %145, -7
  %158 = or disjoint i16 %157, %112
  store i16 %158, ptr %144, align 4, !tbaa !49
  br label %159

159:                                              ; preds = %156, %153, %140, %128, %122
  %160 = load ptr, ptr %123, align 8, !tbaa !34
  %161 = icmp eq ptr %160, null
  br i1 %161, label %162, label %122, !llvm.loop !198

162:                                              ; preds = %159, %108, %87
  %163 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 3
  %164 = load ptr, ptr %163, align 8, !tbaa !56
  %165 = getelementptr inbounds %struct.Panel, ptr %164, i64 0, i32 13
  %166 = load i16, ptr %165, align 4, !tbaa !49
  %167 = and i16 %166, 6
  %168 = icmp eq i16 %167, 0
  br i1 %168, label %177, label %169

169:                                              ; preds = %162
  %170 = and i16 %166, -7
  store i16 %170, ptr %165, align 4, !tbaa !49
  %171 = getelementptr inbounds %struct.Panel, ptr %164, i64 0, i32 16
  %172 = load i16, ptr %171, align 2, !tbaa !199
  %173 = and i16 %172, 4
  %174 = icmp eq i16 %173, 0
  br i1 %174, label %192, label %175

175:                                              ; preds = %169
  %176 = getelementptr inbounds %struct.Panel, ptr %164, i64 0, i32 8
  store i32 0, ptr %176, align 4, !tbaa !74
  br label %192

177:                                              ; preds = %162
  %178 = icmp eq i32 %32, 1
  br i1 %178, label %179, label %181

179:                                              ; preds = %177
  %180 = or disjoint i16 %166, 2
  store i16 %180, ptr %165, align 4, !tbaa !49
  br label %192

181:                                              ; preds = %177
  %182 = or disjoint i16 %166, 4
  store i16 %182, ptr %165, align 4, !tbaa !49
  %183 = getelementptr inbounds %struct.Panel, ptr %164, i64 0, i32 16
  %184 = load i16, ptr %183, align 2, !tbaa !199
  %185 = and i16 %184, 4
  %186 = icmp eq i16 %185, 0
  br i1 %186, label %192, label %187

187:                                              ; preds = %181
  %188 = getelementptr inbounds %struct.Panel, ptr %164, i64 0, i32 10
  %189 = load i32, ptr %188, align 4, !tbaa !52
  %190 = sub nsw i32 0, %189
  %191 = getelementptr inbounds %struct.Panel, ptr %164, i64 0, i32 8
  store i32 %190, ptr %191, align 4, !tbaa !74
  br label %192

192:                                              ; preds = %179, %187, %181, %169, %175
  %193 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 22
  %194 = load ptr, ptr %193, align 8, !tbaa !34
  %195 = icmp eq ptr %194, null
  br i1 %195, label %213, label %196

196:                                              ; preds = %192, %210
  %197 = phi ptr [ %211, %210 ], [ %194, %192 ]
  %198 = getelementptr inbounds %struct.Panel, ptr %197, i64 0, i32 18
  %199 = load ptr, ptr %198, align 8, !tbaa !64
  %200 = icmp eq ptr %199, %164
  br i1 %200, label %201, label %210

201:                                              ; preds = %196
  %202 = load i16, ptr %165, align 4, !tbaa !49
  %203 = and i16 %202, 6
  %204 = icmp eq i16 %203, 0
  %205 = getelementptr inbounds %struct.Panel, ptr %197, i64 0, i32 13
  %206 = load i16, ptr %205, align 4, !tbaa !49
  %207 = and i16 %206, -7
  %208 = select i1 %204, i16 0, i16 6
  %209 = or disjoint i16 %207, %208
  store i16 %209, ptr %205, align 4, !tbaa !49
  br label %210

210:                                              ; preds = %201, %196
  %211 = load ptr, ptr %197, align 8, !tbaa !34
  %212 = icmp eq ptr %211, null
  br i1 %212, label %213, label %196, !llvm.loop !200

213:                                              ; preds = %210, %192, %86
  %214 = icmp eq i32 %32, 0
  br i1 %214, label %218, label %215

215:                                              ; preds = %213
  %216 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 3
  %217 = load ptr, ptr %216, align 8, !tbaa !56
  call fastcc void @panel_activate_state(ptr noundef %0, ptr noundef %217, i32 noundef 3)
  br label %236

218:                                              ; preds = %213
  call void @ED_region_tag_redraw(ptr noundef %11) #18
  br label %236

219:                                              ; preds = %82
  %220 = sitofp i32 %2 to float
  %221 = call zeroext i8 @BLI_rctf_isect_x(ptr noundef nonnull %8, float noundef %220) #18
  %222 = icmp eq i8 %221, 0
  br i1 %222, label %226, label %223

223:                                              ; preds = %219
  %224 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 3
  %225 = load ptr, ptr %224, align 8, !tbaa !56
  call fastcc void @panel_activate_state(ptr noundef %0, ptr noundef %225, i32 noundef 0)
  br label %236

226:                                              ; preds = %219
  br i1 %31, label %227, label %236

227:                                              ; preds = %226
  %228 = call zeroext i8 @BLI_rctf_isect_x(ptr noundef nonnull %9, float noundef %220) #18
  %229 = icmp eq i8 %228, 0
  br i1 %229, label %236, label %230

230:                                              ; preds = %227
  %231 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 3
  %232 = load ptr, ptr %231, align 8, !tbaa !56
  %233 = getelementptr inbounds %struct.Panel, ptr %232, i64 0, i32 13
  %234 = load i16, ptr %233, align 4, !tbaa !49
  %235 = xor i16 %234, 32
  store i16 %235, ptr %233, align 4, !tbaa !49
  call void @ED_region_tag_redraw(ptr noundef %11) #18
  br label %236

236:                                              ; preds = %223, %230, %227, %226, %215, %218
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #18
  ret void
}

declare zeroext i8 @ui_button_is_active(ptr noundef) local_unnamed_addr #5

declare void @ui_panel_menu(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @uiStyleFontDraw(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @uiStyleFontDrawRotated(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @UI_GetColorPtrShade3ubv(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @glColor4ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #5

declare void @glLineWidth(float noundef) local_unnamed_addr #5

declare ptr @UI_GetStyleDraw() local_unnamed_addr #5

declare void @ui_bounds_block(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @find_highest_panel(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 {
  %3 = load ptr, ptr %0, align 8, !tbaa !148
  %4 = getelementptr inbounds %struct.Panel, ptr %3, i64 0, i32 17
  %5 = load i32, ptr %4, align 4, !tbaa !54
  %6 = load ptr, ptr %1, align 8, !tbaa !148
  %7 = getelementptr inbounds %struct.Panel, ptr %6, i64 0, i32 17
  %8 = load i32, ptr %7, align 4, !tbaa !54
  %9 = icmp slt i32 %5, %8
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.Panel, ptr %3, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !42
  %13 = getelementptr inbounds %struct.PanelType, ptr %12, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !46
  %15 = and i32 %14, 2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %10, %2
  %18 = getelementptr inbounds %struct.Panel, ptr %3, i64 0, i32 8
  %19 = load i32, ptr %18, align 4, !tbaa !74
  %20 = getelementptr inbounds %struct.Panel, ptr %3, i64 0, i32 10
  %21 = load i32, ptr %20, align 4, !tbaa !52
  %22 = add nsw i32 %21, %19
  %23 = getelementptr inbounds %struct.Panel, ptr %6, i64 0, i32 8
  %24 = load i32, ptr %23, align 4, !tbaa !74
  %25 = getelementptr inbounds %struct.Panel, ptr %6, i64 0, i32 10
  %26 = load i32, ptr %25, align 4, !tbaa !52
  %27 = add nsw i32 %26, %24
  %28 = icmp slt i32 %22, %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %17
  %30 = icmp sgt i32 %22, %27
  br i1 %30, label %35, label %31

31:                                               ; preds = %29
  %32 = icmp sgt i32 %5, %8
  %33 = sext i1 %9 to i32
  %34 = select i1 %32, i32 1, i32 %33
  br label %35

35:                                               ; preds = %31, %29, %17, %10
  %36 = phi i32 [ -1, %10 ], [ 1, %17 ], [ -1, %29 ], [ %34, %31 ]
  ret i32 %36
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @find_leftmost_panel(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 {
  %3 = load ptr, ptr %0, align 8, !tbaa !148
  %4 = getelementptr inbounds %struct.Panel, ptr %3, i64 0, i32 7
  %5 = load i32, ptr %4, align 8, !tbaa !126
  %6 = load ptr, ptr %1, align 8, !tbaa !148
  %7 = getelementptr inbounds %struct.Panel, ptr %6, i64 0, i32 7
  %8 = load i32, ptr %7, align 8, !tbaa !126
  %9 = icmp sgt i32 %5, %8
  br i1 %9, label %21, label %10

10:                                               ; preds = %2
  %11 = icmp slt i32 %5, %8
  br i1 %11, label %21, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.Panel, ptr %3, i64 0, i32 17
  %14 = load i32, ptr %13, align 4, !tbaa !54
  %15 = getelementptr inbounds %struct.Panel, ptr %6, i64 0, i32 17
  %16 = load i32, ptr %15, align 4, !tbaa !54
  %17 = icmp sgt i32 %14, %16
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  %19 = icmp slt i32 %14, %16
  %20 = sext i1 %19 to i32
  br label %21

21:                                               ; preds = %18, %12, %10, %2
  %22 = phi i32 [ 1, %2 ], [ -1, %10 ], [ 1, %12 ], [ %20, %18 ]
  ret i32 %22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @compare_panel(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 {
  %3 = load ptr, ptr %0, align 8, !tbaa !148
  %4 = getelementptr inbounds %struct.Panel, ptr %3, i64 0, i32 17
  %5 = load i32, ptr %4, align 4, !tbaa !54
  %6 = load ptr, ptr %1, align 8, !tbaa !148
  %7 = getelementptr inbounds %struct.Panel, ptr %6, i64 0, i32 17
  %8 = load i32, ptr %7, align 4, !tbaa !54
  %9 = icmp sgt i32 %5, %8
  %10 = icmp slt i32 %5, %8
  %11 = sext i1 %10 to i32
  %12 = select i1 %9, i32 1, i32 %11
  ret i32 %12
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #12

declare void @glBegin(i32 noundef) local_unnamed_addr #5

declare void @glVertex2f(float noundef, float noundef) local_unnamed_addr #5

declare void @glEnd() local_unnamed_addr #5

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #5

declare void @BLI_rctf_translate(ptr noundef, float noundef, float noundef) local_unnamed_addr #5

declare zeroext i8 @BLI_rctf_isect_x(ptr noundef, float noundef) local_unnamed_addr #5

declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #5

declare void @WM_event_remove_timer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #5

declare void @WM_event_remove_ui_handler(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal noundef i32 @ui_handler_panel(ptr noundef %0, ptr noundef %1, ptr noundef %2) #3 {
  %4 = getelementptr inbounds %struct.Panel, ptr %2, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !121
  %6 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 2
  %7 = load i16, ptr %6, align 8, !tbaa !190
  switch i16 %7, label %50 [
    i16 1, label %8
    i16 4, label %20
    i16 272, label %24
  ]

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 3
  %10 = load i16, ptr %9, align 2, !tbaa !189
  %11 = icmp eq i16 %10, 1
  br i1 %11, label %19, label %12

12:                                               ; preds = %8
  %13 = tail call ptr @CTX_wm_area(ptr noundef %0) #18
  %14 = tail call ptr @CTX_wm_region(ptr noundef %0) #18
  %15 = tail call fastcc i32 @panel_aligned(ptr noundef %13, ptr noundef %14), !range !41
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  tail call fastcc void @panel_activate_state(ptr noundef %0, ptr noundef %2, i32 noundef 3)
  br label %50

18:                                               ; preds = %12
  tail call fastcc void @panel_activate_state(ptr noundef %0, ptr noundef %2, i32 noundef 4)
  br label %50

19:                                               ; preds = %8
  switch i16 %7, label %50 [
    i16 4, label %20
    i16 272, label %24
  ]

20:                                               ; preds = %3, %19
  %21 = load i32, ptr %5, align 8, !tbaa !128
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %50

23:                                               ; preds = %20
  tail call fastcc void @ui_do_drag(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br label %50

24:                                               ; preds = %3, %19
  %25 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 28
  %26 = load ptr, ptr %25, align 8, !tbaa !201
  %27 = getelementptr inbounds %struct.uiHandlePanelData, ptr %5, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !131
  %29 = icmp eq ptr %26, %28
  br i1 %29, label %30, label %50

30:                                               ; preds = %24
  %31 = load i32, ptr %5, align 8, !tbaa !128
  switch i32 %31, label %50 [
    i32 3, label %32
    i32 0, label %49
  ]

32:                                               ; preds = %30
  %33 = tail call ptr @CTX_wm_area(ptr noundef %0) #18
  %34 = tail call ptr @CTX_wm_region(ptr noundef %0) #18
  %35 = tail call double @PIL_check_seconds_timer() #18
  %36 = getelementptr inbounds %struct.uiHandlePanelData, ptr %5, i64 0, i32 2
  %37 = load double, ptr %36, align 8, !tbaa !143
  %38 = fsub double %35, %37
  %39 = fdiv double %38, 3.000000e-01
  %40 = fptrunc double %39 to float
  %41 = tail call float @sqrtf(float noundef %40) #18
  %42 = fcmp olt float %41, 1.000000e+00
  %43 = select i1 %42, float %41, float 1.000000e+00
  %44 = tail call fastcc zeroext i8 @uiAlignPanelStep(ptr noundef %33, ptr noundef %34, float noundef %43, i8 noundef zeroext 0), !range !124
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %32
  tail call void @ED_region_tag_redraw(ptr noundef %34) #18
  %47 = fcmp ult float %43, 1.000000e+00
  br i1 %47, label %50, label %48

48:                                               ; preds = %46, %32
  tail call fastcc void @panel_activate_state(ptr noundef %0, ptr noundef %2, i32 noundef 4)
  br label %50

49:                                               ; preds = %30
  tail call fastcc void @ui_do_drag(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br label %50

50:                                               ; preds = %3, %48, %46, %30, %19, %17, %18, %23, %20, %49, %24
  %51 = load ptr, ptr %4, align 8, !tbaa !121
  %52 = icmp eq ptr %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = load i32, ptr %51, align 8, !tbaa !128
  %55 = icmp eq i32 %54, 3
  br i1 %55, label %57, label %56

56:                                               ; preds = %53, %50
  br label %57

57:                                               ; preds = %53, %56
  %58 = phi i32 [ 1, %56 ], [ 0, %53 ]
  ret i32 %58
}

; Function Attrs: nounwind uwtable
define internal void @ui_handler_remove_panel(ptr noundef %0, ptr noundef %1) #3 {
  tail call fastcc void @panel_activate_state(ptr noundef %0, ptr noundef %1, i32 noundef 4)
  ret void
}

declare ptr @WM_event_add_ui_handler(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

declare ptr @WM_event_add_timer(ptr noundef, ptr noundef, i32 noundef, double noundef) local_unnamed_addr #5

declare double @PIL_check_seconds_timer() local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @ui_do_drag(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.Panel, ptr %2, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !121
  %6 = tail call ptr @CTX_wm_area(ptr noundef %0) #18
  %7 = tail call ptr @CTX_wm_region(ptr noundef %0) #18
  %8 = tail call fastcc i32 @panel_aligned(ptr noundef %6, ptr noundef %7), !range !41
  %9 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 3
  %10 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 4
  %11 = tail call zeroext i8 @BLI_rcti_isect_pt_v(ptr noundef nonnull %9, ptr noundef nonnull %10) #18
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %183, label %13

13:                                               ; preds = %3
  %14 = load i32, ptr %10, align 4, !tbaa !134
  %15 = getelementptr inbounds %struct.uiHandlePanelData, ptr %5, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !136
  %17 = sub nsw i32 %14, %16
  %18 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !75
  %19 = sdiv i16 %18, -5
  %20 = trunc i32 %17 to i16
  %21 = and i16 %19, %20
  %22 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 5
  %23 = load i32, ptr %22, align 8, !tbaa !137
  %24 = getelementptr inbounds %struct.uiHandlePanelData, ptr %5, i64 0, i32 4
  %25 = load i32, ptr %24, align 4, !tbaa !138
  %26 = sub nsw i32 %23, %25
  %27 = trunc i32 %26 to i16
  %28 = and i16 %19, %27
  %29 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 2, i32 1
  %30 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 2, i32 1, i32 1
  %31 = load float, ptr %30, align 4, !tbaa !91
  %32 = load float, ptr %29, align 4, !tbaa !92
  %33 = fsub float %31, %32
  %34 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 3, i32 1
  %35 = load i32, ptr %34, align 4, !tbaa !97
  %36 = load i32, ptr %9, align 4, !tbaa !89
  %37 = sub nsw i32 %35, %36
  %38 = sitofp i32 %37 to float
  %39 = fdiv float %33, %38
  %40 = sitofp i16 %21 to float
  %41 = fmul float %39, %40
  %42 = fptosi float %41 to i16
  %43 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 2, i32 1, i32 3
  %44 = load float, ptr %43, align 4, !tbaa !94
  %45 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 2, i32 1, i32 2
  %46 = load float, ptr %45, align 4, !tbaa !93
  %47 = fsub float %44, %46
  %48 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 3, i32 3
  %49 = load i32, ptr %48, align 4, !tbaa !98
  %50 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 3, i32 2
  %51 = load i32, ptr %50, align 4, !tbaa !90
  %52 = sub nsw i32 %49, %51
  %53 = sitofp i32 %52 to float
  %54 = fdiv float %47, %53
  %55 = sitofp i16 %28 to float
  %56 = fmul float %54, %55
  %57 = fptosi float %56 to i16
  %58 = load i32, ptr %5, align 8, !tbaa !128
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %82

60:                                               ; preds = %13
  %61 = getelementptr inbounds %struct.uiHandlePanelData, ptr %5, i64 0, i32 7
  %62 = load i32, ptr %61, align 8, !tbaa !141
  %63 = sext i16 %42 to i32
  %64 = add nsw i32 %62, %63
  %65 = tail call i32 @llvm.smax.i32(i32 %64, i32 100)
  %66 = getelementptr inbounds %struct.Panel, ptr %2, i64 0, i32 9
  store i32 %65, ptr %66, align 8, !tbaa !51
  %67 = getelementptr inbounds %struct.uiHandlePanelData, ptr %5, i64 0, i32 8
  %68 = load i32, ptr %67, align 4, !tbaa !142
  %69 = sext i16 %57 to i32
  %70 = sub nsw i32 %68, %69
  %71 = icmp slt i32 %70, 70
  %72 = trunc i32 %68 to i16
  %73 = add i16 %72, -70
  %74 = select i1 %71, i16 %73, i16 %57
  %75 = sext i16 %74 to i32
  %76 = sub nsw i32 %68, %75
  %77 = getelementptr inbounds %struct.Panel, ptr %2, i64 0, i32 10
  store i32 %76, ptr %77, align 4, !tbaa !52
  %78 = getelementptr inbounds %struct.uiHandlePanelData, ptr %5, i64 0, i32 6
  %79 = load i32, ptr %78, align 4, !tbaa !140
  %80 = add nsw i32 %79, %75
  %81 = getelementptr inbounds %struct.Panel, ptr %2, i64 0, i32 8
  store i32 %80, ptr %81, align 4, !tbaa !74
  br label %182

82:                                               ; preds = %13
  %83 = getelementptr inbounds %struct.Panel, ptr %2, i64 0, i32 16
  store i16 0, ptr %83, align 2, !tbaa !199
  %84 = getelementptr inbounds %struct.uiHandlePanelData, ptr %5, i64 0, i32 5
  %85 = load i32, ptr %84, align 8, !tbaa !139
  %86 = sext i16 %42 to i32
  %87 = add nsw i32 %85, %86
  %88 = getelementptr inbounds %struct.Panel, ptr %2, i64 0, i32 7
  store i32 %87, ptr %88, align 8, !tbaa !126
  %89 = getelementptr inbounds %struct.uiHandlePanelData, ptr %5, i64 0, i32 6
  %90 = load i32, ptr %89, align 4, !tbaa !140
  %91 = sext i16 %57 to i32
  %92 = add nsw i32 %90, %91
  %93 = getelementptr inbounds %struct.Panel, ptr %2, i64 0, i32 8
  store i32 %92, ptr %93, align 4, !tbaa !74
  %94 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 22
  %95 = load ptr, ptr %94, align 8, !tbaa !34
  %96 = icmp eq ptr %95, null
  br i1 %96, label %177, label %97

97:                                               ; preds = %82
  %98 = icmp eq ptr %2, null
  %99 = getelementptr inbounds %struct.Panel, ptr %2, i64 0, i32 13
  %100 = getelementptr inbounds %struct.Panel, ptr %2, i64 0, i32 9
  %101 = getelementptr inbounds %struct.Panel, ptr %2, i64 0, i32 10
  %102 = sitofp i32 %87 to float
  %103 = sitofp i32 %92 to float
  br label %104

104:                                              ; preds = %174, %97
  %105 = phi ptr [ %95, %97 ], [ %175, %174 ]
  %106 = getelementptr inbounds %struct.Panel, ptr %105, i64 0, i32 13
  %107 = load i16, ptr %106, align 4, !tbaa !49
  %108 = and i16 %107, -17
  store i16 %108, ptr %106, align 4, !tbaa !49
  %109 = icmp eq ptr %105, %2
  %110 = or i1 %98, %109
  br i1 %110, label %174, label %111

111:                                              ; preds = %104
  %112 = getelementptr inbounds %struct.Panel, ptr %105, i64 0, i32 18
  %113 = load ptr, ptr %112, align 8, !tbaa !64
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %174

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.Panel, ptr %105, i64 0, i32 14
  %117 = load i16, ptr %116, align 2, !tbaa !50
  %118 = and i16 %117, 2
  %119 = icmp eq i16 %118, 0
  br i1 %119, label %174, label %120

120:                                              ; preds = %115
  %121 = zext i16 %108 to i32
  %122 = and i32 %121, 2
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %136

124:                                              ; preds = %120
  %125 = and i32 %121, 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %136

127:                                              ; preds = %124
  %128 = load i16, ptr %99, align 4, !tbaa !49
  %129 = zext i16 %128 to i32
  %130 = and i32 %129, 2
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %127
  %133 = and i32 %129, 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %132
  br label %136

136:                                              ; preds = %135, %132, %127, %124, %120
  %137 = phi float [ 0x3FC99999A0000000, %135 ], [ 0x3FC99999A0000000, %132 ], [ 0x3FA99999A0000000, %120 ], [ 0x3FC99999A0000000, %124 ], [ 0x3FA99999A0000000, %127 ]
  %138 = phi float [ 0x3FA99999A0000000, %135 ], [ 0x3FC99999A0000000, %132 ], [ 0x3FC99999A0000000, %120 ], [ 0x3FA99999A0000000, %124 ], [ 0x3FC99999A0000000, %127 ]
  %139 = getelementptr inbounds %struct.Panel, ptr %105, i64 0, i32 7
  %140 = load i32, ptr %139, align 8, !tbaa !126
  %141 = sitofp i32 %140 to float
  %142 = load i32, ptr %100, align 8, !tbaa !51
  %143 = sitofp i32 %142 to float
  %144 = fneg float %137
  %145 = tail call float @llvm.fmuladd.f32(float %144, float %143, float %102)
  %146 = fcmp olt float %145, %141
  br i1 %146, label %147, label %174

147:                                              ; preds = %136
  %148 = getelementptr inbounds %struct.Panel, ptr %105, i64 0, i32 9
  %149 = load i32, ptr %148, align 8, !tbaa !51
  %150 = add nsw i32 %149, %140
  %151 = sitofp i32 %150 to float
  %152 = fadd float %137, 1.000000e+00
  %153 = tail call float @llvm.fmuladd.f32(float %152, float %143, float %102)
  %154 = fcmp ogt float %153, %151
  br i1 %154, label %155, label %174

155:                                              ; preds = %147
  %156 = getelementptr inbounds %struct.Panel, ptr %105, i64 0, i32 8
  %157 = load i32, ptr %156, align 4, !tbaa !74
  %158 = sitofp i32 %157 to float
  %159 = load i32, ptr %101, align 4, !tbaa !52
  %160 = sitofp i32 %159 to float
  %161 = fneg float %138
  %162 = tail call float @llvm.fmuladd.f32(float %161, float %160, float %103)
  %163 = fcmp olt float %162, %158
  br i1 %163, label %164, label %174

164:                                              ; preds = %155
  %165 = getelementptr inbounds %struct.Panel, ptr %105, i64 0, i32 10
  %166 = load i32, ptr %165, align 4, !tbaa !52
  %167 = add nsw i32 %166, %157
  %168 = sitofp i32 %167 to float
  %169 = fadd float %138, 1.000000e+00
  %170 = tail call float @llvm.fmuladd.f32(float %169, float %160, float %103)
  %171 = fcmp ogt float %170, %168
  br i1 %171, label %172, label %174

172:                                              ; preds = %164
  %173 = or i16 %107, 16
  store i16 %173, ptr %106, align 4, !tbaa !49
  br label %174

174:                                              ; preds = %172, %164, %155, %147, %136, %115, %111, %104
  %175 = load ptr, ptr %105, align 8, !tbaa !34
  %176 = icmp eq ptr %175, null
  br i1 %176, label %177, label %104, !llvm.loop !130

177:                                              ; preds = %174, %82
  %178 = and i32 %8, 65535
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %182, label %180

180:                                              ; preds = %177
  %181 = tail call fastcc zeroext i8 @uiAlignPanelStep(ptr noundef %6, ptr noundef %7, float noundef 0x3FC99999A0000000, i8 noundef zeroext 1), !range !124
  br label %182

182:                                              ; preds = %177, %180, %60
  tail call void @ED_region_tag_redraw(ptr noundef %7) #18
  br label %183

183:                                              ; preds = %3, %182
  ret void
}

declare zeroext i8 @BLI_rcti_isect_pt_v(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

attributes #0 = { nofree nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { nounwind willreturn memory(read) }
attributes #18 = { nounwind }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = distinct !{!38, !39, !40}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!"llvm.loop.unroll.disable"}
!41 = !{i32 -32768, i32 32768}
!42 = !{!43, !35, i64 16}
!43 = !{!"Panel", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !36, i64 96, !36, i64 160, !44, i64 224, !44, i64 228, !44, i64 232, !44, i64 236, !45, i64 240, !45, i64 242, !45, i64 244, !45, i64 246, !45, i64 248, !45, i64 250, !44, i64 252, !35, i64 256, !35, i64 264}
!44 = !{!"int", !36, i64 0}
!45 = !{!"short", !36, i64 0}
!46 = !{!47, !44, i64 344}
!47 = !{!"PanelType", !35, i64 0, !35, i64 8, !36, i64 16, !36, i64 80, !36, i64 144, !36, i64 208, !36, i64 272, !44, i64 336, !44, i64 340, !44, i64 344, !35, i64 352, !35, i64 360, !35, i64 368, !48, i64 376}
!48 = !{!"ExtensionRNA", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24}
!49 = !{!43, !45, i64 244}
!50 = !{!43, !45, i64 246}
!51 = !{!43, !44, i64 232}
!52 = !{!43, !44, i64 236}
!53 = distinct !{!53, !39, !40}
!54 = !{!43, !44, i64 252}
!55 = distinct !{!55, !39, !40}
!56 = !{!57, !35, i64 32}
!57 = !{!"uiBlock", !35, i64 0, !35, i64 8, !58, i64 16, !35, i64 32, !35, i64 40, !58, i64 48, !58, i64 64, !35, i64 80, !58, i64 88, !36, i64 104, !36, i64 232, !59, i64 296, !60, i64 312, !44, i64 316, !35, i64 320, !35, i64 328, !35, i64 336, !35, i64 344, !35, i64 352, !35, i64 360, !35, i64 368, !35, i64 376, !35, i64 384, !35, i64 392, !35, i64 400, !35, i64 408, !35, i64 416, !44, i64 424, !45, i64 428, !36, i64 430, !36, i64 431, !36, i64 432, !36, i64 433, !61, i64 440, !35, i64 448, !36, i64 456, !36, i64 457, !36, i64 458, !36, i64 459, !44, i64 460, !44, i64 464, !44, i64 468, !44, i64 472, !44, i64 476, !59, i64 480, !58, i64 496, !35, i64 512, !35, i64 520, !35, i64 528, !35, i64 536, !36, i64 544, !36, i64 556, !36, i64 557, !62, i64 624}
!58 = !{!"ListBase", !35, i64 0, !35, i64 8}
!59 = !{!"rctf", !60, i64 0, !60, i64 4, !60, i64 8, !60, i64 12}
!60 = !{!"float", !36, i64 0}
!61 = !{!"double", !36, i64 0}
!62 = !{!"PieMenuData", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !61, i64 32, !44, i64 40, !44, i64 44, !60, i64 48}
!63 = !{!36, !36, i64 0}
!64 = !{!43, !35, i64 256}
!65 = !{!66, !36, i64 72}
!66 = !{!"ScrArea", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !67, i64 56, !36, i64 72, !36, i64 73, !45, i64 74, !45, i64 76, !45, i64 78, !45, i64 80, !45, i64 82, !45, i64 84, !36, i64 86, !36, i64 87, !35, i64 88, !58, i64 96, !58, i64 112, !58, i64 128, !58, i64 144}
!67 = !{!"rcti", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12}
!68 = !{!69, !45, i64 214}
!69 = !{!"ARegion", !35, i64 0, !35, i64 8, !70, i64 16, !67, i64 176, !67, i64 192, !45, i64 208, !45, i64 210, !45, i64 212, !45, i64 214, !45, i64 216, !45, i64 218, !60, i64 220, !45, i64 224, !45, i64 226, !45, i64 228, !45, i64 230, !45, i64 232, !45, i64 234, !45, i64 236, !45, i64 238, !35, i64 240, !58, i64 248, !58, i64 264, !58, i64 280, !58, i64 296, !58, i64 312, !58, i64 328, !58, i64 344, !35, i64 360, !35, i64 368, !35, i64 376}
!70 = !{!"View2D", !59, i64 0, !59, i64 16, !67, i64 32, !67, i64 48, !67, i64 64, !36, i64 80, !36, i64 88, !60, i64 96, !60, i64 100, !45, i64 104, !45, i64 106, !45, i64 108, !45, i64 110, !45, i64 112, !45, i64 114, !45, i64 116, !45, i64 118, !45, i64 120, !45, i64 122, !45, i64 124, !45, i64 126, !35, i64 128, !44, i64 136, !44, i64 140, !35, i64 144, !35, i64 152}
!71 = !{!66, !35, i64 96}
!72 = !{!73, !45, i64 224}
!73 = !{!"SpaceButs", !35, i64 0, !35, i64 8, !58, i64 16, !44, i64 32, !60, i64 36, !36, i64 40, !70, i64 56, !45, i64 216, !45, i64 218, !45, i64 220, !45, i64 222, !45, i64 224, !45, i64 226, !45, i64 228, !45, i64 230, !36, i64 232, !36, i64 233, !35, i64 240, !44, i64 248, !44, i64 252, !35, i64 256, !35, i64 264}
!74 = !{!43, !44, i64 228}
!75 = !{!76, !45, i64 8948}
!76 = !{!"UserDef", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !36, i64 20, !36, i64 788, !36, i64 1556, !36, i64 2580, !36, i64 3348, !36, i64 4116, !36, i64 4884, !36, i64 5652, !36, i64 6420, !36, i64 7444, !44, i64 8468, !45, i64 8472, !45, i64 8474, !45, i64 8476, !45, i64 8478, !45, i64 8480, !45, i64 8482, !44, i64 8484, !44, i64 8488, !44, i64 8492, !45, i64 8496, !45, i64 8498, !44, i64 8500, !44, i64 8504, !44, i64 8508, !44, i64 8512, !44, i64 8516, !44, i64 8520, !44, i64 8524, !45, i64 8528, !45, i64 8530, !45, i64 8532, !45, i64 8534, !58, i64 8536, !58, i64 8552, !58, i64 8568, !58, i64 8584, !58, i64 8600, !58, i64 8616, !58, i64 8632, !36, i64 8648, !45, i64 8712, !45, i64 8714, !45, i64 8716, !45, i64 8718, !45, i64 8720, !45, i64 8722, !45, i64 8724, !45, i64 8726, !36, i64 8728, !45, i64 8896, !45, i64 8898, !45, i64 8900, !45, i64 8902, !45, i64 8904, !45, i64 8906, !45, i64 8908, !45, i64 8910, !44, i64 8912, !44, i64 8916, !45, i64 8920, !45, i64 8922, !45, i64 8924, !45, i64 8926, !45, i64 8928, !45, i64 8930, !45, i64 8932, !45, i64 8934, !45, i64 8936, !45, i64 8938, !36, i64 8940, !36, i64 8941, !36, i64 8942, !36, i64 8943, !45, i64 8944, !45, i64 8946, !45, i64 8948, !45, i64 8950, !45, i64 8952, !45, i64 8954, !60, i64 8956, !60, i64 8960, !44, i64 8964, !45, i64 8968, !45, i64 8970, !60, i64 8972, !45, i64 8976, !45, i64 8978, !45, i64 8980, !45, i64 8982, !77, i64 8984, !36, i64 9760, !36, i64 9772, !45, i64 9788, !36, i64 9790, !36, i64 9791, !36, i64 9792, !36, i64 9872, !44, i64 10896, !44, i64 10900, !60, i64 10904, !60, i64 10908, !44, i64 10912, !45, i64 10916, !45, i64 10918, !45, i64 10920, !45, i64 10922, !45, i64 10924, !45, i64 10926, !78, i64 10928}
!77 = !{!"ColorBand", !45, i64 0, !45, i64 2, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !36, i64 8}
!78 = !{!"WalkNavigation", !60, i64 0, !60, i64 4, !60, i64 8, !60, i64 12, !60, i64 16, !60, i64 20, !45, i64 24, !36, i64 26}
!79 = !{i64 0, i64 4, !80}
!80 = !{!44, !44, i64 0}
!81 = !{!57, !60, i64 312}
!82 = !{!76, !60, i64 10908}
!83 = !{!76, !44, i64 8524}
!84 = !{!43, !45, i64 248}
!85 = !{!43, !45, i64 240}
!86 = !{i64 0, i64 4, !80, i64 4, i64 4, !80, i64 8, i64 4, !80, i64 12, i64 4, !80}
!87 = !{i64 0, i64 4, !80, i64 4, i64 4, !80, i64 8, i64 4, !80}
!88 = !{i64 0, i64 4, !80, i64 4, i64 4, !80}
!89 = !{!67, !44, i64 0}
!90 = !{!67, !44, i64 8}
!91 = !{!59, !60, i64 4}
!92 = !{!59, !60, i64 0}
!93 = !{!59, !60, i64 8}
!94 = !{!59, !60, i64 12}
!95 = distinct !{!95, !39, !40}
!96 = distinct !{!96, !39, !40}
!97 = !{!67, !44, i64 4}
!98 = !{!67, !44, i64 12}
!99 = distinct !{!99, !39, !40}
!100 = !{!57, !36, i64 457}
!101 = !{!102, !45, i64 226}
!102 = !{!"uiStyle", !35, i64 0, !35, i64 8, !36, i64 16, !103, i64 80, !103, i64 112, !103, i64 144, !103, i64 176, !60, i64 208, !45, i64 212, !45, i64 214, !45, i64 216, !45, i64 218, !45, i64 220, !45, i64 222, !45, i64 224, !45, i64 226, !45, i64 228, !45, i64 230}
!103 = !{!"uiFontStyle", !45, i64 0, !45, i64 2, !45, i64 4, !36, i64 6, !45, i64 12, !45, i64 14, !45, i64 16, !45, i64 18, !45, i64 20, !45, i64 22, !60, i64 24, !60, i64 28}
!104 = !{!105, !60, i64 600}
!105 = !{!"uiBut", !35, i64 0, !35, i64 8, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !45, i64 32, !45, i64 34, !45, i64 36, !45, i64 38, !45, i64 40, !45, i64 42, !45, i64 44, !45, i64 46, !45, i64 48, !35, i64 56, !36, i64 64, !36, i64 192, !59, i64 592, !35, i64 608, !60, i64 616, !60, i64 620, !60, i64 624, !60, i64 628, !60, i64 632, !60, i64 636, !36, i64 640, !35, i64 648, !35, i64 656, !35, i64 664, !35, i64 672, !35, i64 680, !35, i64 688, !35, i64 696, !35, i64 704, !35, i64 712, !35, i64 720, !35, i64 728, !35, i64 736, !35, i64 744, !35, i64 752, !36, i64 760, !35, i64 768, !35, i64 776, !44, i64 784, !36, i64 788, !36, i64 789, !36, i64 790, !36, i64 791, !36, i64 792, !45, i64 794, !45, i64 796, !35, i64 800, !35, i64 808, !106, i64 816, !35, i64 840, !44, i64 848, !106, i64 856, !35, i64 880, !35, i64 888, !35, i64 896, !45, i64 904, !36, i64 906, !36, i64 907, !35, i64 912, !35, i64 920, !60, i64 928, !35, i64 936, !35, i64 944, !35, i64 952, !35, i64 960, !35, i64 968, !35, i64 976, !35, i64 984, !35, i64 992}
!106 = !{!"PointerRNA", !107, i64 0, !35, i64 8, !35, i64 16}
!107 = !{!"", !35, i64 0}
!108 = !{!105, !60, i64 604}
!109 = distinct !{!109, !39, !40}
!110 = !{!57, !60, i64 300}
!111 = !{!57, !60, i64 308}
!112 = !{!57, !60, i64 304}
!113 = !{!57, !60, i64 296}
!114 = distinct !{!114, !39, !40}
!115 = distinct !{!115, !39, !40}
!116 = distinct !{!116, !39, !40}
!117 = distinct !{!117, !39, !40}
!118 = !{!73, !45, i64 222}
!119 = !{!73, !45, i64 218}
!120 = !{!73, !45, i64 216}
!121 = !{!43, !35, i64 264}
!122 = distinct !{!122, !39, !40}
!123 = distinct !{!123, !39, !40}
!124 = !{i8 0, i8 2}
!125 = distinct !{!125, !39, !40}
!126 = !{!43, !44, i64 224}
!127 = distinct !{!127, !39, !40}
!128 = !{!129, !44, i64 0}
!129 = !{!"uiHandlePanelData", !44, i64 0, !35, i64 8, !61, i64 16, !44, i64 24, !44, i64 28, !44, i64 32, !44, i64 36, !44, i64 40, !44, i64 44}
!130 = distinct !{!130, !39, !40}
!131 = !{!129, !35, i64 8}
!132 = !{!133, !35, i64 136}
!133 = !{!"wmWindow", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !36, i64 40, !45, i64 104, !45, i64 106, !45, i64 108, !45, i64 110, !45, i64 112, !45, i64 114, !45, i64 116, !45, i64 118, !45, i64 120, !45, i64 122, !45, i64 124, !45, i64 126, !44, i64 128, !45, i64 132, !45, i64 134, !35, i64 136, !35, i64 144, !35, i64 152, !44, i64 160, !44, i64 164, !35, i64 168, !58, i64 176, !58, i64 192, !58, i64 208, !58, i64 224, !58, i64 240}
!134 = !{!135, !44, i64 20}
!135 = !{!"wmEvent", !35, i64 0, !35, i64 8, !45, i64 16, !45, i64 18, !44, i64 20, !44, i64 24, !36, i64 28, !36, i64 36, !36, i64 42, !36, i64 43, !45, i64 44, !45, i64 46, !44, i64 48, !44, i64 52, !61, i64 56, !44, i64 64, !44, i64 68, !45, i64 72, !45, i64 74, !45, i64 76, !45, i64 78, !45, i64 80, !45, i64 82, !35, i64 88, !35, i64 96, !45, i64 104, !45, i64 106, !44, i64 108, !35, i64 112}
!136 = !{!129, !44, i64 24}
!137 = !{!135, !44, i64 24}
!138 = !{!129, !44, i64 28}
!139 = !{!129, !44, i64 32}
!140 = !{!129, !44, i64 36}
!141 = !{!129, !44, i64 40}
!142 = !{!129, !44, i64 44}
!143 = !{!129, !61, i64 16}
!144 = !{!69, !35, i64 344}
!145 = !{!69, !35, i64 352}
!146 = distinct !{!146, !39, !40}
!147 = distinct !{!147, !39, !40}
!148 = !{!149, !35, i64 0}
!149 = !{!"PanelSort", !35, i64 0, !35, i64 8}
!150 = !{!149, !35, i64 8}
!151 = distinct !{!151, !39, !40}
!152 = distinct !{!152, !39, !40}
!153 = distinct !{!153, !39, !40}
!154 = distinct !{!154, !39, !40}
!155 = distinct !{!155, !39, !40}
!156 = distinct !{!156, !39, !40}
!157 = distinct !{!157, !39, !40}
!158 = distinct !{!158, !39, !40}
!159 = !{!105, !60, i64 592}
!160 = !{!105, !60, i64 596}
!161 = distinct !{!161, !39, !40}
!162 = distinct !{!162, !39, !40}
!163 = distinct !{!163, !39, !40}
!164 = !{!165, !35, i64 0}
!165 = !{!"PanelCategoryStack", !35, i64 0, !35, i64 8, !36, i64 16}
!166 = !{!69, !35, i64 240}
!167 = distinct !{!167, !39, !40}
!168 = distinct !{!168, !39, !40}
!169 = !{!103, !45, i64 0}
!170 = !{!103, !45, i64 2}
!171 = !{!45, !45, i64 0}
!172 = !{!69, !35, i64 248}
!173 = !{!70, !44, i64 64}
!174 = !{!69, !45, i64 234}
!175 = !{!103, !45, i64 4}
!176 = !{!70, !44, i64 76}
!177 = distinct !{!177, !39, !40}
!178 = distinct !{!178, !39, !40}
!179 = !{!70, !44, i64 72}
!180 = !{!181, !35, i64 8}
!181 = !{!"PanelCategoryDyn", !35, i64 0, !35, i64 8, !36, i64 16, !67, i64 80}
!182 = !{!181, !35, i64 0}
!183 = !{!181, !44, i64 80}
!184 = distinct !{!184, !39, !40}
!185 = !{!60, !60, i64 0}
!186 = distinct !{!186, !39, !40}
!187 = distinct !{!187, !39, !40}
!188 = distinct !{!188, !39, !40}
!189 = !{!135, !45, i64 18}
!190 = !{!135, !45, i64 16}
!191 = !{!135, !45, i64 74}
!192 = !{!181, !44, i64 84}
!193 = distinct !{!193, !39, !40}
!194 = !{!135, !45, i64 78}
!195 = !{!135, !45, i64 72}
!196 = !{!135, !45, i64 76}
!197 = !{i64 0, i64 4, !185, i64 4, i64 4, !185, i64 8, i64 4, !185, i64 12, i64 4, !185}
!198 = distinct !{!198, !39, !40}
!199 = !{!43, !45, i64 250}
!200 = distinct !{!200, !39, !40}
!201 = !{!135, !35, i64 112}
