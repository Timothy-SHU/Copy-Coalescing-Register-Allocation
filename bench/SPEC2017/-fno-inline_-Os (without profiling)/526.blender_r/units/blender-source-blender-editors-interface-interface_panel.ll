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

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @uiPanelFindByType(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.PanelType, ptr %1, i64 0, i32 2
  %4 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 22
  br label %5

5:                                                ; preds = %9, %2
  %6 = phi ptr [ %4, %2 ], [ %7, %9 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Panel, ptr %7, i64 0, i32 4
  %11 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) %3, i64 noundef 64) #20
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %5, !llvm.loop !9

13:                                               ; preds = %5, %9
  ret ptr %7
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @uiBeginPanel(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #3 {
  %7 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 3
  %8 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 2
  %9 = icmp eq ptr %4, null
  %10 = tail call fastcc i32 @panel_aligned(ptr noundef %0, ptr noundef %1) #21, !range !11
  br i1 %9, label %13, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.Panel, ptr %4, i64 0, i32 2
  store ptr %3, ptr %12, align 8, !tbaa !12
  br label %37

13:                                               ; preds = %6
  %14 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %15 = tail call ptr %14(i64 noundef 272, ptr noundef nonnull @.str) #22
  %16 = getelementptr inbounds %struct.Panel, ptr %15, i64 0, i32 2
  store ptr %3, ptr %16, align 8, !tbaa !12
  %17 = getelementptr inbounds %struct.Panel, ptr %15, i64 0, i32 4
  %18 = tail call ptr @BLI_strncpy(ptr noundef nonnull %17, ptr noundef nonnull %8, i64 noundef 64) #22
  %19 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 9
  %20 = load i32, ptr %19, align 8, !tbaa !16
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %13
  %24 = icmp eq i32 %10, 2
  %25 = getelementptr inbounds %struct.Panel, ptr %15, i64 0, i32 13
  %26 = load i16, ptr %25, align 4, !tbaa !19
  %27 = select i1 %24, i16 4, i16 2
  %28 = or i16 %26, %27
  store i16 %28, ptr %25, align 4, !tbaa !19
  br label %29

29:                                               ; preds = %23, %13
  %30 = getelementptr inbounds %struct.Panel, ptr %15, i64 0, i32 7
  %31 = getelementptr inbounds %struct.Panel, ptr %15, i64 0, i32 14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %30, i8 0, i64 16, i1 false)
  %32 = load i16, ptr %31, align 2, !tbaa !20
  %33 = or i16 %32, 16
  store i16 %33, ptr %31, align 2, !tbaa !20
  %34 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 22
  tail call void @BLI_addtail(ptr noundef nonnull %34, ptr noundef nonnull %15) #22
  %35 = getelementptr inbounds %struct.Panel, ptr %15, i64 0, i32 5
  %36 = tail call ptr @BLI_strncpy(ptr noundef nonnull %35, ptr noundef nonnull %8, i64 noundef 64) #22
  br label %37

37:                                               ; preds = %29, %11
  %38 = phi ptr [ %15, %29 ], [ %4, %11 ]
  %39 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 9
  %40 = load i32, ptr %39, align 8, !tbaa !16
  %41 = and i32 %40, 2
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.Panel, ptr %38, i64 0, i32 13
  %45 = load i16, ptr %44, align 4, !tbaa !19
  %46 = and i16 %45, 6
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %43
  %49 = and i16 %45, -7
  store i16 %49, ptr %44, align 4, !tbaa !19
  %50 = getelementptr inbounds %struct.Panel, ptr %38, i64 0, i32 9
  store i32 0, ptr %50, align 8, !tbaa !21
  %51 = getelementptr inbounds %struct.Panel, ptr %38, i64 0, i32 10
  store i32 0, ptr %51, align 4, !tbaa !22
  br label %52

52:                                               ; preds = %48, %43, %37
  %53 = getelementptr inbounds %struct.Panel, ptr %38, i64 0, i32 6
  %54 = tail call ptr @BLI_strncpy(ptr noundef nonnull %53, ptr noundef nonnull %7, i64 noundef 64) #22
  %55 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 22
  br label %56

56:                                               ; preds = %60, %52
  %57 = phi ptr [ %55, %52 ], [ %58, %60 ]
  %58 = load ptr, ptr %57, align 8, !tbaa !5
  %59 = icmp eq ptr %58, null
  br i1 %59, label %65, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.Panel, ptr %58, i64 0, i32 14
  %62 = load i16, ptr %61, align 2, !tbaa !20
  %63 = and i16 %62, 1
  %64 = icmp eq i16 %63, 0
  br i1 %64, label %56, label %66, !llvm.loop !23

65:                                               ; preds = %56
  br i1 %9, label %71, label %97

66:                                               ; preds = %60
  br i1 %9, label %67, label %93

67:                                               ; preds = %66
  %68 = getelementptr inbounds %struct.Panel, ptr %58, i64 0, i32 17
  %69 = load i32, ptr %68, align 4, !tbaa !24
  %70 = add nsw i32 %69, 1
  br label %71

71:                                               ; preds = %65, %67
  %72 = phi i32 [ %70, %67 ], [ 0, %65 ]
  %73 = getelementptr inbounds %struct.Panel, ptr %38, i64 0, i32 17
  store i32 %72, ptr %73, align 4, !tbaa !24
  %74 = load ptr, ptr %55, align 8, !tbaa !5
  %75 = icmp eq ptr %74, null
  br i1 %75, label %89, label %76

76:                                               ; preds = %71, %86
  %77 = phi ptr [ %87, %86 ], [ %74, %71 ]
  %78 = icmp eq ptr %77, %38
  br i1 %78, label %86, label %79

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.Panel, ptr %77, i64 0, i32 17
  %81 = load i32, ptr %80, align 4, !tbaa !24
  %82 = load i32, ptr %73, align 4, !tbaa !24
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %86, label %84

84:                                               ; preds = %79
  %85 = add nsw i32 %81, 1
  store i32 %85, ptr %80, align 4, !tbaa !24
  br label %86

86:                                               ; preds = %76, %79, %84
  %87 = load ptr, ptr %77, align 8, !tbaa !5
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %76, !llvm.loop !25

89:                                               ; preds = %86, %71
  br i1 %59, label %97, label %90

90:                                               ; preds = %89
  %91 = getelementptr inbounds %struct.Panel, ptr %58, i64 0, i32 14
  %92 = load i16, ptr %91, align 2, !tbaa !20
  br label %93

93:                                               ; preds = %90, %66
  %94 = phi i16 [ %62, %66 ], [ %92, %90 ]
  %95 = getelementptr inbounds %struct.Panel, ptr %58, i64 0, i32 14
  %96 = and i16 %94, -2
  store i16 %96, ptr %95, align 2, !tbaa !20
  br label %97

97:                                               ; preds = %65, %93, %89
  %98 = getelementptr inbounds %struct.uiBlock, ptr %2, i64 0, i32 3
  store ptr %38, ptr %98, align 8, !tbaa !26
  %99 = getelementptr inbounds %struct.Panel, ptr %38, i64 0, i32 14
  %100 = load i16, ptr %99, align 2, !tbaa !20
  %101 = or i16 %100, 3
  store i16 %101, ptr %99, align 2, !tbaa !20
  store i8 0, ptr %5, align 1, !tbaa !33
  %102 = getelementptr inbounds %struct.Panel, ptr %38, i64 0, i32 18
  %103 = load ptr, ptr %102, align 8, !tbaa !34
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %111

105:                                              ; preds = %97
  %106 = getelementptr inbounds %struct.Panel, ptr %38, i64 0, i32 13
  %107 = load i16, ptr %106, align 4, !tbaa !19
  %108 = and i16 %107, 6
  %109 = icmp eq i16 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  store i8 1, ptr %5, align 1, !tbaa !33
  br label %111

111:                                              ; preds = %105, %97, %110
  ret ptr %38
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @panel_aligned(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 8
  %4 = load i8, ptr %3, align 8, !tbaa !35
  %5 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 8
  %6 = load i16, ptr %5, align 2, !tbaa !38
  switch i8 %4, label %21 [
    i8 4, label %7
    i8 19, label %15
    i8 5, label %17
    i8 6, label %19
  ]

7:                                                ; preds = %2
  %8 = icmp eq i16 %6, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = getelementptr inbounds %struct.SpaceButs, ptr %11, i64 0, i32 11
  %13 = load i16, ptr %12, align 8, !tbaa !42
  %14 = sext i16 %13 to i32
  br label %25

15:                                               ; preds = %2
  %16 = icmp eq i16 %6, 0
  br i1 %16, label %25, label %21

17:                                               ; preds = %2
  %18 = icmp eq i16 %6, 2
  br i1 %18, label %25, label %21

19:                                               ; preds = %2
  %20 = icmp eq i16 %6, 7
  br i1 %20, label %25, label %21

21:                                               ; preds = %2, %15, %7, %17, %19
  %22 = add i16 %6, -4
  %23 = icmp ult i16 %22, 3
  %24 = select i1 %23, i32 2, i32 0
  br label %25

25:                                               ; preds = %21, %19, %17, %15, %9
  %26 = phi i32 [ %14, %9 ], [ 2, %15 ], [ 2, %17 ], [ 2, %19 ], [ %24, %21 ]
  ret i32 %26
}

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @uiEndPanel(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !26
  %6 = getelementptr inbounds %struct.Panel, ptr %5, i64 0, i32 14
  %7 = load i16, ptr %6, align 2, !tbaa !20
  %8 = and i16 %7, 16
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = and i16 %7, -17
  store i16 %11, ptr %6, align 2, !tbaa !20
  %12 = getelementptr inbounds %struct.Panel, ptr %5, i64 0, i32 9
  store i32 %1, ptr %12, align 8, !tbaa !21
  br label %44

13:                                               ; preds = %3
  %14 = icmp eq i32 %1, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.Panel, ptr %5, i64 0, i32 9
  %17 = load i32, ptr %16, align 8, !tbaa !21
  %18 = icmp eq i32 %17, %1
  br i1 %18, label %19, label %27

19:                                               ; preds = %15, %13
  %20 = icmp eq i32 %2, 0
  br i1 %20, label %39, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.Panel, ptr %5, i64 0, i32 10
  %23 = load i32, ptr %22, align 4, !tbaa !22
  %24 = icmp eq i32 %23, %2
  br i1 %24, label %39, label %25

25:                                               ; preds = %21
  %26 = or i16 %7, 8
  store i16 %26, ptr %6, align 2, !tbaa !20
  br label %33

27:                                               ; preds = %15
  %28 = or i16 %7, 8
  store i16 %28, ptr %6, align 2, !tbaa !20
  %29 = icmp eq i32 %2, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.Panel, ptr %5, i64 0, i32 10
  %32 = load i32, ptr %31, align 4, !tbaa !22
  br label %33

33:                                               ; preds = %30, %25
  %34 = phi i32 [ %32, %30 ], [ %23, %25 ]
  %35 = sub i32 %34, %2
  %36 = getelementptr inbounds %struct.Panel, ptr %5, i64 0, i32 8
  %37 = load i32, ptr %36, align 4, !tbaa !44
  %38 = add nsw i32 %35, %37
  store i32 %38, ptr %36, align 4, !tbaa !44
  br label %39

39:                                               ; preds = %33, %21, %19
  br i1 %14, label %42, label %40

40:                                               ; preds = %27, %39
  %41 = getelementptr inbounds %struct.Panel, ptr %5, i64 0, i32 9
  store i32 %1, ptr %41, align 8, !tbaa !21
  br label %42

42:                                               ; preds = %40, %39
  %43 = icmp eq i32 %2, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %42, %10
  %45 = getelementptr inbounds %struct.Panel, ptr %5, i64 0, i32 10
  store i32 %2, ptr %45, align 4, !tbaa !22
  br label %46

46:                                               ; preds = %44, %42
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @UI_DrawTriIcon(float noundef %0, float noundef %1, i8 noundef zeroext %2) local_unnamed_addr #3 {
  %4 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !45
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
  tail call void @ui_draw_anti_tria(float noundef %13, float noundef %14, float noundef %13, float noundef %15, float noundef %16, float noundef %1) #22
  br label %27

17:                                               ; preds = %3
  %18 = fsub float %0, %9
  %19 = fsub float %1, %11
  %20 = fadd float %9, %0
  %21 = fadd float %7, %1
  tail call void @ui_draw_anti_tria(float noundef %18, float noundef %19, float noundef %20, float noundef %19, float noundef %0, float noundef %21) #22
  br label %27

22:                                               ; preds = %3
  %23 = fsub float %0, %9
  %24 = fadd float %7, %1
  %25 = fadd float %9, %0
  %26 = fsub float %1, %11
  tail call void @ui_draw_anti_tria(float noundef %23, float noundef %24, float noundef %25, float noundef %24, float noundef %0, float noundef %26) #22
  br label %27

27:                                               ; preds = %17, %22, %12
  ret void
}

; Function Attrs: optsize
declare void @ui_draw_anti_tria(float noundef, float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ui_draw_aligned_panel(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3) local_unnamed_addr #3 {
  %5 = alloca %struct.rcti, align 4
  %6 = alloca %struct.rctf, align 4
  %7 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #23
  %9 = getelementptr inbounds %struct.Panel, ptr %8, i64 0, i32 18
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %188

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.Panel, ptr %8, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !12
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.PanelType, ptr %14, i64 0, i32 9
  %18 = load i32, ptr %17, align 8, !tbaa !16
  %19 = and i32 %18, 2
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %188

21:                                               ; preds = %16, %12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !49
  %22 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 3
  %23 = load i32, ptr %22, align 4, !tbaa !51
  %24 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 2
  store i32 %23, ptr %24, align 4, !tbaa !52
  %25 = sitofp i32 %23 to double
  %26 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !45
  %27 = sext i16 %26 to i32
  %28 = add nsw i32 %27, 4
  %29 = sitofp i32 %28 to float
  %30 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 12
  %31 = load float, ptr %30, align 8, !tbaa !53
  %32 = fdiv float %29, %31
  %33 = fadd float %32, 0x3F50624DE0000000
  %34 = tail call float @llvm.floor.f32(float %33)
  %35 = fpext float %34 to double
  %36 = fadd double %25, %35
  %37 = fptosi double %36 to i32
  store i32 %37, ptr %22, align 4, !tbaa !51
  %38 = load i32, ptr %2, align 4, !tbaa !54
  %39 = sitofp i32 %38 to float
  %40 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 1
  %41 = load i32, ptr %40, align 4, !tbaa !55
  %42 = sitofp i32 %41 to float
  %43 = sitofp i32 %37 to float
  tail call void @glEnable(i32 noundef 3042) #22
  %44 = tail call i32 @UI_GetThemeValue(i32 noundef 16) #22
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %21
  tail call void @UI_ThemeColor4(i32 noundef 14) #22
  %47 = add nsw i32 %23, 1
  %48 = sitofp i32 %47 to float
  tail call void @glRectf(float noundef %39, float noundef %48, float noundef %42, float noundef %43) #22
  tail call void @fdrawline(float noundef %39, float noundef %43, float noundef %42, float noundef %43) #22
  tail call void @fdrawline(float noundef %39, float noundef %43, float noundef %42, float noundef %43) #22
  br label %60

49:                                               ; preds = %21
  %50 = getelementptr inbounds %struct.Panel, ptr %8, i64 0, i32 14
  %51 = load i16, ptr %50, align 2, !tbaa !20
  %52 = and i16 %51, 32
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load float, ptr %30, align 8, !tbaa !53
  %56 = fdiv float 5.000000e+00, %55
  %57 = fadd float %56, %39
  %58 = fsub float %42, %56
  tail call void @glColor4f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 5.000000e-01) #22
  tail call void @fdrawline(float noundef %57, float noundef %43, float noundef %58, float noundef %43) #22
  tail call void @glColor4f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 2.500000e-01) #22
  %59 = fadd float %43, -1.000000e+00
  tail call void @fdrawline(float noundef %57, float noundef %59, float noundef %58, float noundef %59) #22
  br label %60

60:                                               ; preds = %49, %54, %46
  tail call void @glDisable(i32 noundef 3042) #22
  %61 = icmp eq i8 %3, 0
  br i1 %61, label %92, label %62

62:                                               ; preds = %60
  %63 = load ptr, ptr %7, align 8, !tbaa !26
  %64 = getelementptr inbounds %struct.Panel, ptr %63, i64 0, i32 13
  %65 = load i16, ptr %64, align 4, !tbaa !19
  %66 = and i16 %65, 32
  %67 = icmp eq i16 %66, 0
  br i1 %67, label %92, label %68

68:                                               ; preds = %62
  tail call void @glEnable(i32 noundef 3042) #22
  %69 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 1
  %70 = load i32, ptr %69, align 4, !tbaa !55
  %71 = sitofp i32 %70 to float
  %72 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !45
  %73 = sitofp i16 %72 to float
  %74 = fmul float %73, 0x40019999A0000000
  %75 = load float, ptr %30, align 8, !tbaa !53
  %76 = fdiv float %74, %75
  %77 = fsub float %71, %76
  %78 = sitofp i32 %23 to float
  %79 = fdiv float 5.000000e+00, %75
  %80 = fadd float %79, %78
  %81 = getelementptr inbounds %struct.Panel, ptr %8, i64 0, i32 13
  %82 = load i16, ptr %81, align 4, !tbaa !19
  %83 = and i16 %82, 32
  %84 = icmp eq i16 %83, 0
  %85 = select i1 %84, i32 42, i32 43
  %86 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !56
  %87 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !57
  %88 = sitofp i32 %87 to float
  %89 = fmul float %86, %88
  %90 = fdiv float %89, 7.200000e+01
  %91 = fdiv float %75, %90
  tail call void @UI_icon_draw_aspect(float noundef %77, float noundef %80, i32 noundef %85, float noundef %91, float noundef 1.000000e+00) #22
  tail call void @glDisable(i32 noundef 3042) #22
  br label %92

92:                                               ; preds = %68, %62, %60
  %93 = getelementptr inbounds %struct.Panel, ptr %8, i64 0, i32 13
  %94 = load i16, ptr %93, align 4, !tbaa !19
  %95 = and i16 %94, 2
  %96 = icmp eq i16 %95, 0
  br i1 %96, label %97, label %112

97:                                               ; preds = %92
  call fastcc void @ui_draw_aligned_panel_header(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %5, i8 noundef zeroext 104) #21
  %98 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 1
  %99 = load i32, ptr %98, align 4, !tbaa !55
  %100 = sitofp i32 %99 to float
  %101 = load float, ptr %30, align 8, !tbaa !53
  %102 = fdiv float 5.000000e+00, %101
  %103 = fsub float %100, %102
  %104 = getelementptr inbounds %struct.rctf, ptr %6, i64 0, i32 1
  store float %103, ptr %104, align 4, !tbaa !58
  %105 = call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %5) #21
  %106 = sitofp i32 %105 to float
  %107 = fsub float %103, %106
  store float %107, ptr %6, align 4, !tbaa !59
  %108 = sitofp i32 %23 to float
  %109 = getelementptr inbounds %struct.rctf, ptr %6, i64 0, i32 2
  store float %108, ptr %109, align 4, !tbaa !60
  %110 = getelementptr inbounds %struct.rctf, ptr %6, i64 0, i32 3
  store float %43, ptr %110, align 4, !tbaa !61
  call void @BLI_rctf_scale(ptr noundef nonnull %6, float noundef 0x3FE6666660000000) #22
  call fastcc void @ui_draw_panel_dragwidget(ptr noundef nonnull %6) #21
  %111 = load i16, ptr %93, align 4, !tbaa !19
  br label %112

112:                                              ; preds = %97, %92
  %113 = phi i16 [ %111, %97 ], [ %94, %92 ]
  %114 = zext i16 %113 to i32
  %115 = and i32 %114, 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %158

117:                                              ; preds = %112
  %118 = and i32 %114, 2
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %117
  call fastcc void @ui_draw_aligned_panel_header(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %5, i8 noundef zeroext 118) #21
  br label %158

121:                                              ; preds = %117
  %122 = and i32 %114, 1
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %142, label %124

124:                                              ; preds = %121
  %125 = getelementptr inbounds %struct.Panel, ptr %8, i64 0, i32 15
  %126 = load i16, ptr %125, align 8, !tbaa !62
  %127 = and i16 %126, 2
  %128 = icmp eq i16 %127, 0
  %129 = select i1 %128, i32 0, i32 15
  call void @uiSetRoundBox(i32 noundef %129) #22
  call void @UI_ThemeColorShade(i32 noundef 2, i32 noundef -120) #22
  %130 = load i32, ptr %2, align 4, !tbaa !54
  %131 = sitofp i32 %130 to float
  %132 = fadd float %131, 5.000000e-01
  %133 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 2
  %134 = load i32, ptr %133, align 4, !tbaa !52
  %135 = sitofp i32 %134 to float
  %136 = fadd float %135, 5.000000e-01
  %137 = load i32, ptr %40, align 4, !tbaa !55
  %138 = sitofp i32 %137 to float
  %139 = fadd float %138, 5.000000e-01
  %140 = fadd float %43, 5.000000e-01
  %141 = fadd float %140, 1.000000e+00
  call void @uiRoundRect(float noundef %132, float noundef %136, float noundef %139, float noundef %141, float noundef 8.000000e+00) #22
  br label %142

142:                                              ; preds = %124, %121
  %143 = call i32 @UI_GetThemeValue(i32 noundef 17) #22
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %152, label %145

145:                                              ; preds = %142
  call void @glEnable(i32 noundef 3042) #22
  call void @UI_ThemeColor4(i32 noundef 15) #22
  %146 = load i32, ptr %2, align 4, !tbaa !54
  %147 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 2
  %148 = load i32, ptr %147, align 4, !tbaa !52
  %149 = load i32, ptr %40, align 4, !tbaa !55
  %150 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 3
  %151 = load i32, ptr %150, align 4, !tbaa !51
  call void @glRecti(i32 noundef %146, i32 noundef %148, i32 noundef %149, i32 noundef %151) #22
  br label %152

152:                                              ; preds = %145, %142
  %153 = getelementptr inbounds %struct.Panel, ptr %8, i64 0, i32 15
  %154 = load i16, ptr %153, align 8, !tbaa !62
  %155 = and i16 %154, 512
  %156 = icmp eq i16 %155, 0
  br i1 %156, label %158, label %157

157:                                              ; preds = %152
  call fastcc void @ui_draw_panel_scalewidget(ptr noundef nonnull %2) #21
  br label %158

158:                                              ; preds = %120, %157, %152, %112
  %159 = getelementptr inbounds %struct.Panel, ptr %8, i64 0, i32 15
  %160 = load i16, ptr %159, align 8, !tbaa !62
  %161 = and i16 %160, 32
  %162 = icmp eq i16 %161, 0
  br i1 %162, label %171, label %163

163:                                              ; preds = %158
  call void @UI_ThemeColor(i32 noundef 5) #22
  %164 = load i32, ptr %2, align 4, !tbaa !54
  %165 = add nsw i32 %164, 8
  %166 = sitofp i32 %165 to float
  %167 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 3
  %168 = load i32, ptr %167, align 4, !tbaa !51
  %169 = add nsw i32 %168, 2
  %170 = sitofp i32 %169 to float
  call fastcc void @ui_draw_x_icon(float noundef %166, float noundef %170) #21
  br label %171

171:                                              ; preds = %163, %158
  call void @UI_ThemeColor(i32 noundef 5) #22
  %172 = load i32, ptr %5, align 4, !tbaa !54
  %173 = sitofp i32 %172 to float
  %174 = load float, ptr %30, align 8, !tbaa !53
  %175 = fdiv float 5.000000e+00, %174
  %176 = fadd float %175, %173
  store float %176, ptr %6, align 4, !tbaa !59
  %177 = call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %5) #21
  %178 = sitofp i32 %177 to float
  %179 = fadd float %176, %178
  %180 = getelementptr inbounds %struct.rctf, ptr %6, i64 0, i32 1
  store float %179, ptr %180, align 4, !tbaa !58
  %181 = sitofp i32 %23 to float
  %182 = getelementptr inbounds %struct.rctf, ptr %6, i64 0, i32 2
  store float %181, ptr %182, align 4, !tbaa !60
  %183 = getelementptr inbounds %struct.rctf, ptr %6, i64 0, i32 3
  store float %43, ptr %183, align 4, !tbaa !61
  call void @BLI_rctf_scale(ptr noundef nonnull %6, float noundef 0x3FD6666660000000) #22
  %184 = load i16, ptr %93, align 4, !tbaa !19
  %185 = and i16 %184, 6
  %186 = icmp eq i16 %185, 0
  %187 = select i1 %186, i8 118, i8 104
  call fastcc void @ui_draw_tria_rect(ptr noundef nonnull %6, i8 noundef zeroext %187) #21
  br label %188

188:                                              ; preds = %171, %16, %4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #23
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: optsize
declare void @glEnable(i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @UI_GetThemeValue(i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @UI_ThemeColor4(i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @glRectf(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @fdrawline(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @glColor4f(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @glDisable(i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @UI_icon_draw_aspect(float noundef, float noundef, i32 noundef, float noundef, float noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_draw_aligned_panel_header(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3) unnamed_addr #3 {
  %5 = alloca %struct.rcti, align 4
  %6 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #23
  %8 = getelementptr inbounds %struct.Panel, ptr %7, i64 0, i32 6
  %9 = load i8, ptr %8, align 8, !tbaa !33
  %10 = icmp eq i8 %9, 0
  %11 = getelementptr inbounds %struct.Panel, ptr %7, i64 0, i32 4
  %12 = select i1 %10, ptr %11, ptr %8
  %13 = getelementptr inbounds %struct.Panel, ptr %7, i64 0, i32 15
  %14 = load i16, ptr %13, align 8, !tbaa !62
  %15 = getelementptr inbounds %struct.Panel, ptr %7, i64 0, i32 11
  %16 = load i16, ptr %15, align 8, !tbaa !63
  %17 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !45
  %18 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 12
  %19 = load float, ptr %18, align 8, !tbaa !53
  tail call void @UI_ThemeColor(i32 noundef 5) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !49
  %20 = icmp eq i8 %3, 104
  br i1 %20, label %21, label %45

21:                                               ; preds = %4
  %22 = sext i16 %16 to i32
  %23 = add nsw i32 %22, 5
  %24 = sext i16 %17 to i32
  %25 = lshr i16 %14, 5
  %26 = and i16 %25, 1
  %27 = zext nneg i16 %26 to i32
  %28 = shl nsw i32 %24, %27
  %29 = add nsw i32 %23, %28
  %30 = sitofp i32 %29 to float
  %31 = fdiv float %30, %19
  %32 = fadd float %31, 0x3F50624DE0000000
  %33 = fptosi float %32 to i32
  %34 = load i32, ptr %2, align 4, !tbaa !54
  %35 = add nsw i32 %34, %33
  store i32 %35, ptr %5, align 4, !tbaa !54
  %36 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 12
  %37 = load float, ptr %36, align 8, !tbaa !53
  %38 = fdiv float 2.000000e+00, %37
  %39 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 2
  %40 = load i32, ptr %39, align 4, !tbaa !52
  %41 = sitofp i32 %40 to float
  %42 = fadd float %38, %41
  %43 = fptosi float %42 to i32
  store i32 %43, ptr %39, align 4, !tbaa !52
  %44 = getelementptr inbounds %struct.uiStyle, ptr %0, i64 0, i32 3
  call void @uiStyleFontDraw(ptr noundef nonnull %44, ptr noundef nonnull %5, ptr noundef nonnull %12) #22
  br label %59

45:                                               ; preds = %4
  %46 = load i32, ptr %2, align 4, !tbaa !54
  %47 = sitofp i32 %46 to float
  %48 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !45
  %49 = sext i16 %48 to i32
  %50 = add nsw i32 %49, 5
  %51 = sitofp i32 %50 to float
  %52 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 12
  %53 = load float, ptr %52, align 8, !tbaa !53
  %54 = fdiv float %51, %53
  %55 = fadd float %54, %47
  %56 = fadd float %55, 0x3F50624DE0000000
  %57 = fptosi float %56 to i32
  store i32 %57, ptr %5, align 4, !tbaa !54
  %58 = getelementptr inbounds %struct.uiStyle, ptr %0, i64 0, i32 3
  call void @uiStyleFontDrawRotated(ptr noundef nonnull %58, ptr noundef nonnull %5, ptr noundef nonnull %12) #22
  br label %59

59:                                               ; preds = %45, %21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_y(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !51
  %4 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !52
  %6 = sub nsw i32 %3, %5
  ret i32 %6
}

; Function Attrs: optsize
declare void @BLI_rctf_scale(ptr noundef, float noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_draw_panel_dragwidget(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = alloca [3 x i8], align 1
  %3 = alloca [3 x i8], align 1
  %4 = alloca [3 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #23
  %5 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !56
  %6 = fptosi float %5 to i32
  %7 = tail call fastcc float @BLI_rctf_size_y(ptr noundef %0) #21
  %8 = fdiv float %7, 2.200000e+01
  %9 = tail call fastcc i32 @iroundf(float noundef %8) #21
  %10 = tail call fastcc i32 @max_ii(i32 noundef %9, i32 noundef 1) #21
  %11 = sitofp i32 %10 to float
  %12 = fmul float %11, 2.000000e+00
  %13 = tail call fastcc i32 @iroundf(float noundef %12) #21
  %14 = tail call fastcc i32 @max_ii(i32 noundef %13, i32 noundef %6) #21
  %15 = fmul float %7, 1.250000e-01
  %16 = sitofp i32 %6 to float
  %17 = fsub float %15, %16
  %18 = tail call fastcc i32 @iroundf(float noundef %17) #21
  %19 = tail call fastcc i32 @max_ii(i32 noundef %18, i32 noundef %6) #21
  %20 = load float, ptr %0, align 4, !tbaa !59
  %21 = fptosi float %20 to i32
  %22 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %23 = load float, ptr %22, align 4, !tbaa !60
  %24 = fptosi float %23 to i32
  %25 = tail call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %0) #21
  %26 = fdiv float %25, 3.000000e+00
  %27 = tail call fastcc i32 @iroundf(float noundef %26) #21
  %28 = tail call fastcc i32 @max_ii(i32 noundef %27, i32 noundef %6) #21
  %29 = tail call i32 @UI_GetThemeValue(i32 noundef 16) #22
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %30, i32 15, i32 14
  call void @UI_GetThemeColor3ubv(i32 noundef %31, ptr noundef nonnull %2) #22
  call void @UI_GetColorPtrShade3ubv(ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 84) #22
  call void @UI_GetColorPtrShade3ubv(ptr noundef nonnull %2, ptr noundef nonnull %4, i32 noundef -84) #22
  %32 = add nsw i32 %28, %21
  %33 = add nsw i32 %19, %14
  %34 = add nsw i32 %28, %24
  br label %35

35:                                               ; preds = %1, %54
  %36 = phi i32 [ 0, %1 ], [ %55, %54 ]
  %37 = mul nsw i32 %36, %33
  %38 = add nsw i32 %32, %37
  %39 = sub nsw i32 %38, %19
  %40 = sitofp i32 %39 to float
  %41 = sitofp i32 %38 to float
  br label %42

42:                                               ; preds = %35, %42
  %43 = phi i1 [ true, %35 ], [ false, %42 ]
  %44 = phi i32 [ 0, %35 ], [ 1, %42 ]
  %45 = mul nuw nsw i32 %44, %33
  %46 = add nsw i32 %34, %45
  call void @glColor3ubv(ptr noundef nonnull %4) #22
  %47 = sub nsw i32 %46, %10
  %48 = sitofp i32 %47 to float
  %49 = add nsw i32 %46, %19
  %50 = sub nsw i32 %49, %10
  %51 = sitofp i32 %50 to float
  call void @glRectf(float noundef %40, float noundef %48, float noundef %41, float noundef %51) #22
  call void @glColor3ubv(ptr noundef nonnull %3) #22
  %52 = sitofp i32 %46 to float
  %53 = sitofp i32 %49 to float
  call void @glRectf(float noundef %40, float noundef %52, float noundef %41, float noundef %53) #22
  br i1 %43, label %42, label %54, !llvm.loop !64

54:                                               ; preds = %42
  %55 = add nuw nsw i32 %36, 1
  %56 = icmp eq i32 %55, 4
  br i1 %56, label %57, label %35, !llvm.loop !65

57:                                               ; preds = %54
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %2) #23
  ret void
}

; Function Attrs: optsize
declare void @uiSetRoundBox(i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @UI_ThemeColorShade(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @uiRoundRect(float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @glRecti(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_draw_panel_scalewidget(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !55
  %4 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !45
  %5 = sext i16 %4 to i32
  %6 = sub i32 %3, %5
  %7 = add i32 %6, -2
  %8 = sitofp i32 %7 to float
  %9 = add nsw i32 %3, -3
  %10 = sitofp i32 %9 to float
  %11 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !52
  %13 = add nsw i32 %12, 3
  %14 = sitofp i32 %13 to float
  %15 = add i32 %12, %5
  %16 = add i32 %15, 2
  %17 = sitofp i32 %16 to float
  %18 = fsub float %10, %8
  %19 = fmul float %18, 5.000000e-01
  %20 = fsub float %17, %14
  %21 = fmul float %20, 5.000000e-01
  tail call void @glEnable(i32 noundef 3042) #22
  tail call void @glColor4ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext 50) #22
  tail call void @fdrawline(float noundef %8, float noundef %14, float noundef %10, float noundef %17) #22
  %22 = fadd float %19, %8
  %23 = fsub float %17, %21
  tail call void @fdrawline(float noundef %22, float noundef %14, float noundef %10, float noundef %23) #22
  tail call void @glColor4ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 50) #22
  %24 = fadd float %14, 1.000000e+00
  %25 = fadd float %17, 1.000000e+00
  tail call void @fdrawline(float noundef %8, float noundef %24, float noundef %10, float noundef %25) #22
  %26 = fadd float %23, 1.000000e+00
  tail call void @fdrawline(float noundef %22, float noundef %24, float noundef %10, float noundef %26) #22
  tail call void @glDisable(i32 noundef 3042) #22
  ret void
}

; Function Attrs: optsize
declare void @UI_ThemeColor(i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_draw_x_icon(float noundef %0, float noundef %1) unnamed_addr #3 {
  %3 = fadd float %0, 9.375000e+00
  %4 = fadd float %1, 9.375000e+00
  tail call fastcc void @ui_draw_anti_x(float noundef %0, float noundef %1, float noundef %3, float noundef %4) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_draw_tria_rect(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #3 {
  %3 = icmp eq i8 %1, 104
  %4 = load float, ptr %0, align 4, !tbaa !59
  br i1 %3, label %5, label %15

5:                                                ; preds = %2
  %6 = tail call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %0) #21
  %7 = fmul float %6, 5.000000e-01
  %8 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %9 = load float, ptr %8, align 4, !tbaa !60
  %10 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %11 = load float, ptr %10, align 4, !tbaa !61
  %12 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %13 = load float, ptr %12, align 4, !tbaa !58
  %14 = fadd float %7, %9
  tail call void @ui_draw_anti_tria(float noundef %4, float noundef %9, float noundef %4, float noundef %11, float noundef %13, float noundef %14) #22
  br label %25

15:                                               ; preds = %2
  %16 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %0) #21
  %17 = fmul float %16, 5.000000e-01
  %18 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %19 = load float, ptr %18, align 4, !tbaa !61
  %20 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %21 = load float, ptr %20, align 4, !tbaa !58
  %22 = fadd float %4, %17
  %23 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %24 = load float, ptr %23, align 4, !tbaa !60
  tail call void @ui_draw_anti_tria(float noundef %4, float noundef %19, float noundef %21, float noundef %19, float noundef %22, float noundef %24) #22
  br label %25

25:                                               ; preds = %15, %5
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @uiBeginPanels(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 22
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %12, %6 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.Panel, ptr %7, i64 0, i32 14
  %9 = load i16, ptr %8, align 2, !tbaa !20
  %10 = shl i16 %9, 1
  %11 = and i16 %10, 4
  store i16 %11, ptr %8, align 2, !tbaa !20
  %12 = load ptr, ptr %7, align 8, !tbaa !5
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6, !llvm.loop !66

14:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiEndPanels(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #3 {
  %5 = alloca ptr, align 8
  %6 = tail call ptr @CTX_wm_area(ptr noundef %0) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #23
  %7 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 21
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  %9 = icmp eq ptr %8, null
  br i1 %9, label %23, label %10

10:                                               ; preds = %4, %20
  %11 = phi ptr [ %21, %20 ], [ %8, %4 ]
  %12 = getelementptr inbounds %struct.uiBlock, ptr %11, i64 0, i32 36
  %13 = load i8, ptr %12, align 1, !tbaa !67
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.uiBlock, ptr %11, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !26
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call fastcc void @ui_offset_panel_block(ptr noundef nonnull %11) #21
  br label %20

20:                                               ; preds = %10, %15, %19
  %21 = load ptr, ptr %11, align 8, !tbaa !5
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %10, !llvm.loop !68

23:                                               ; preds = %20, %4
  %24 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 22
  %25 = load ptr, ptr %24, align 8, !tbaa !5
  %26 = icmp eq ptr %25, null
  br i1 %26, label %65, label %27

27:                                               ; preds = %23, %62
  %28 = phi ptr [ %63, %62 ], [ %25, %23 ]
  %29 = getelementptr inbounds %struct.Panel, ptr %28, i64 0, i32 14
  %30 = load i16, ptr %29, align 2, !tbaa !20
  %31 = and i16 %30, 2
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %33, label %62

33:                                               ; preds = %27
  %34 = load ptr, ptr %24, align 8, !tbaa !5
  %35 = icmp eq ptr %34, null
  br i1 %35, label %62, label %36

36:                                               ; preds = %33, %48
  %37 = phi ptr [ %49, %48 ], [ %34, %33 ]
  %38 = getelementptr inbounds %struct.Panel, ptr %37, i64 0, i32 14
  %39 = load i16, ptr %38, align 2, !tbaa !20
  %40 = and i16 %39, 2
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.Panel, ptr %37, i64 0, i32 18
  %44 = load ptr, ptr %43, align 8, !tbaa !34
  %45 = icmp eq ptr %44, %28
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.Panel, ptr %37, i64 0, i32 18
  br label %51

48:                                               ; preds = %36, %42
  %49 = load ptr, ptr %37, align 8, !tbaa !5
  %50 = icmp eq ptr %49, null
  br i1 %50, label %62, label %36, !llvm.loop !69

51:                                               ; preds = %46, %57
  %52 = phi ptr [ %58, %57 ], [ %34, %46 ]
  %53 = getelementptr inbounds %struct.Panel, ptr %52, i64 0, i32 18
  %54 = load ptr, ptr %53, align 8, !tbaa !34
  %55 = icmp eq ptr %54, %28
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  store ptr %37, ptr %53, align 8, !tbaa !34
  br label %57

57:                                               ; preds = %51, %56
  %58 = load ptr, ptr %52, align 8, !tbaa !5
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %51, !llvm.loop !70

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.Panel, ptr %28, i64 0, i32 18
  store ptr %37, ptr %61, align 8, !tbaa !34
  store ptr null, ptr %47, align 8, !tbaa !34
  tail call void @ED_region_tag_redraw(ptr noundef %1) #22
  br label %62

62:                                               ; preds = %48, %33, %27, %60
  %63 = load ptr, ptr %28, align 8, !tbaa !5
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %27, !llvm.loop !71

65:                                               ; preds = %62, %23
  %66 = call fastcc i32 @panels_re_align(ptr noundef %6, ptr noundef %1, ptr noundef nonnull %5) #21, !range !72
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %65
  %69 = load ptr, ptr %5, align 8, !tbaa !5
  %70 = icmp eq ptr %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %68
  tail call fastcc void @panel_activate_state(ptr noundef %0, ptr noundef nonnull %69, i32 noundef 3) #21
  br label %74

72:                                               ; preds = %68
  %73 = tail call fastcc zeroext i8 @uiAlignPanelStep(ptr noundef %6, ptr noundef %1, float noundef 1.000000e+00, i8 noundef zeroext 0) #21, !range !73
  br label %74

74:                                               ; preds = %71, %72, %65
  %75 = load ptr, ptr %7, align 8, !tbaa !5
  %76 = icmp eq ptr %75, null
  br i1 %76, label %106, label %77

77:                                               ; preds = %74, %96
  %78 = phi ptr [ %98, %96 ], [ %75, %74 ]
  %79 = phi ptr [ %97, %96 ], [ null, %74 ]
  %80 = getelementptr inbounds %struct.uiBlock, ptr %78, i64 0, i32 36
  %81 = load i8, ptr %80, align 1, !tbaa !67
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %96, label %83

83:                                               ; preds = %77
  %84 = getelementptr inbounds %struct.uiBlock, ptr %78, i64 0, i32 3
  %85 = load ptr, ptr %84, align 8, !tbaa !26
  %86 = icmp eq ptr %85, null
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = icmp eq ptr %79, null
  br i1 %88, label %95, label %89

89:                                               ; preds = %87
  %90 = getelementptr inbounds %struct.Panel, ptr %85, i64 0, i32 17
  %91 = load i32, ptr %90, align 4, !tbaa !24
  %92 = getelementptr inbounds %struct.Panel, ptr %79, i64 0, i32 17
  %93 = load i32, ptr %92, align 4, !tbaa !24
  %94 = icmp slt i32 %91, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %89, %87
  br label %96

96:                                               ; preds = %77, %83, %95, %89
  %97 = phi ptr [ %85, %95 ], [ %79, %89 ], [ %79, %83 ], [ %79, %77 ]
  %98 = load ptr, ptr %78, align 8, !tbaa !5
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %77, !llvm.loop !74

100:                                              ; preds = %96
  %101 = icmp eq ptr %97, null
  br i1 %101, label %106, label %102

102:                                              ; preds = %100
  %103 = getelementptr inbounds %struct.Panel, ptr %97, i64 0, i32 14
  %104 = load i16, ptr %103, align 2, !tbaa !20
  %105 = or i16 %104, 32
  store i16 %105, ptr %103, align 2, !tbaa !20
  br label %106

106:                                              ; preds = %74, %102, %100
  tail call fastcc void @ui_panels_size(ptr noundef %6, ptr noundef %1, ptr noundef %2, ptr noundef %3) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #23
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_offset_panel_block(ptr noundef %0) unnamed_addr #3 {
  %2 = tail call ptr @UI_GetStyleDraw() #22
  tail call void @ui_bounds_block(ptr noundef %0) #22
  %3 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !26
  %5 = getelementptr inbounds %struct.Panel, ptr %4, i64 0, i32 10
  %6 = load i32, ptr %5, align 4, !tbaa !22
  %7 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  %9 = icmp eq ptr %8, null
  br i1 %9, label %25, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.uiStyle, ptr %2, i64 0, i32 15
  %12 = load i16, ptr %11, align 2, !tbaa !75
  %13 = sext i16 %12 to i32
  %14 = sub nsw i32 %6, %13
  %15 = sitofp i32 %14 to float
  %16 = insertelement <2 x float> poison, float %15, i64 0
  %17 = shufflevector <2 x float> %16, <2 x float> poison, <2 x i32> zeroinitializer
  br label %18

18:                                               ; preds = %10, %18
  %19 = phi ptr [ %8, %10 ], [ %23, %18 ]
  %20 = getelementptr inbounds %struct.uiBut, ptr %19, i64 0, i32 18, i32 2
  %21 = load <2 x float>, ptr %20, align 8, !tbaa !78
  %22 = fadd <2 x float> %21, %17
  store <2 x float> %22, ptr %20, align 8, !tbaa !78
  %23 = load ptr, ptr %19, align 8, !tbaa !5
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %18, !llvm.loop !79

25:                                               ; preds = %18, %1
  %26 = getelementptr inbounds %struct.Panel, ptr %4, i64 0, i32 9
  %27 = load i32, ptr %26, align 8, !tbaa !21
  %28 = sitofp i32 %27 to float
  %29 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 11
  %30 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 11, i32 1
  store float %28, ptr %30, align 4, !tbaa !80
  %31 = sitofp i32 %6 to float
  %32 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 11, i32 3
  store float %31, ptr %32, align 4, !tbaa !81
  %33 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 11, i32 2
  store float 0.000000e+00, ptr %33, align 8, !tbaa !82
  store float 0.000000e+00, ptr %29, align 8, !tbaa !83
  ret void
}

; Function Attrs: optsize
declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @panels_re_align(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #10 {
  store ptr null, ptr %2, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 8
  %5 = load i8, ptr %4, align 8, !tbaa !35
  switch i8 %5, label %34 [
    i8 4, label %6
    i8 6, label %26
    i8 5, label %30
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 8
  %8 = load i16, ptr %7, align 2, !tbaa !38
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %10, label %34

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !41
  %13 = getelementptr inbounds %struct.SpaceButs, ptr %12, i64 0, i32 11
  %14 = load i16, ptr %13, align 8, !tbaa !42
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %34, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.SpaceButs, ptr %12, i64 0, i32 10
  %18 = load i16, ptr %17, align 2, !tbaa !84
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %20, label %66

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.SpaceButs, ptr %12, i64 0, i32 8
  %22 = load i16, ptr %21, align 2, !tbaa !85
  %23 = getelementptr inbounds %struct.SpaceButs, ptr %12, i64 0, i32 7
  %24 = load i16, ptr %23, align 8, !tbaa !86
  %25 = icmp eq i16 %22, %24
  br i1 %25, label %34, label %66

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 8
  %28 = load i16, ptr %27, align 2, !tbaa !38
  %29 = icmp eq i16 %28, 7
  br i1 %29, label %66, label %34

30:                                               ; preds = %3
  %31 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 8
  %32 = load i16, ptr %31, align 2, !tbaa !38
  %33 = icmp eq i16 %32, 2
  br i1 %33, label %66, label %34

34:                                               ; preds = %3, %6, %26, %10, %20, %30
  %35 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 22
  %36 = load ptr, ptr %35, align 8, !tbaa !5
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %42

38:                                               ; preds = %48
  %39 = icmp eq i32 %52, 0
  br label %40

40:                                               ; preds = %38, %34
  %41 = phi i1 [ true, %34 ], [ %39, %38 ]
  br label %55

42:                                               ; preds = %34, %48
  %43 = phi ptr [ %53, %48 ], [ %36, %34 ]
  %44 = phi i32 [ %52, %48 ], [ 0, %34 ]
  %45 = getelementptr inbounds %struct.Panel, ptr %43, i64 0, i32 14
  %46 = load i16, ptr %45, align 2, !tbaa !20
  %47 = and i16 %46, 6
  switch i16 %47, label %48 [
    i16 4, label %66
    i16 2, label %66
  ]

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.Panel, ptr %43, i64 0, i32 19
  %50 = load ptr, ptr %49, align 8, !tbaa !87
  %51 = icmp eq ptr %50, null
  %52 = select i1 %51, i32 %44, i32 1
  %53 = load ptr, ptr %43, align 8, !tbaa !5
  %54 = icmp eq ptr %53, null
  br i1 %54, label %38, label %42, !llvm.loop !88

55:                                               ; preds = %40, %59
  %56 = phi ptr [ %57, %59 ], [ %35, %40 ]
  %57 = load ptr, ptr %56, align 8, !tbaa !5
  %58 = icmp eq ptr %57, null
  br i1 %58, label %66, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.Panel, ptr %57, i64 0, i32 14
  %61 = load i16, ptr %60, align 2, !tbaa !20
  %62 = and i16 %61, 8
  %63 = icmp eq i16 %62, 0
  br i1 %63, label %55, label %64, !llvm.loop !89

64:                                               ; preds = %59
  br i1 %41, label %65, label %66

65:                                               ; preds = %64
  store ptr %57, ptr %2, align 8, !tbaa !5
  br label %66

66:                                               ; preds = %42, %42, %55, %64, %65, %30, %26, %20, %16
  %67 = phi i32 [ 1, %16 ], [ 1, %20 ], [ 1, %26 ], [ 1, %30 ], [ 1, %65 ], [ 1, %64 ], [ 0, %55 ], [ 1, %42 ], [ 1, %42 ]
  ret i32 %67
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @panel_activate_state(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.Panel, ptr %1, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !87
  %6 = tail call ptr @CTX_wm_window(ptr noundef %0) #22
  %7 = tail call ptr @CTX_wm_region(ptr noundef %0) #22
  %8 = icmp eq ptr %5, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = load i32, ptr %5, align 8, !tbaa !90
  %11 = icmp eq i32 %10, %2
  br i1 %11, label %73, label %16

12:                                               ; preds = %3
  %13 = icmp eq i32 %2, 4
  %14 = add i32 %2, -3
  %15 = icmp ult i32 %14, 2
  br i1 %15, label %23, label %28

16:                                               ; preds = %9
  %17 = icmp eq i32 %2, 4
  %18 = add i32 %2, -3
  %19 = icmp ult i32 %18, 2
  br i1 %19, label %20, label %28

20:                                               ; preds = %16
  %21 = icmp eq i32 %10, 3
  br i1 %21, label %23, label %22

22:                                               ; preds = %20
  tail call fastcc void @check_panel_overlap(ptr noundef %7, ptr noundef null) #21
  br label %23

23:                                               ; preds = %12, %22, %20
  %24 = phi i1 [ %17, %22 ], [ %17, %20 ], [ %13, %12 ]
  %25 = getelementptr inbounds %struct.Panel, ptr %1, i64 0, i32 13
  %26 = load i16, ptr %25, align 4, !tbaa !19
  %27 = and i16 %26, -2
  store i16 %27, ptr %25, align 4, !tbaa !19
  br label %33

28:                                               ; preds = %16, %12
  %29 = phi i1 [ %17, %16 ], [ %13, %12 ]
  %30 = getelementptr inbounds %struct.Panel, ptr %1, i64 0, i32 13
  %31 = load i16, ptr %30, align 4, !tbaa !19
  %32 = or i16 %31, 1
  store i16 %32, ptr %30, align 4, !tbaa !19
  br label %33

33:                                               ; preds = %28, %23
  %34 = phi i1 [ %29, %28 ], [ %24, %23 ]
  br i1 %8, label %43, label %35

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.uiHandlePanelData, ptr %5, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !92
  %38 = icmp eq ptr %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = tail call ptr @CTX_wm_manager(ptr noundef %0) #22
  %41 = load ptr, ptr %36, align 8, !tbaa !92
  tail call void @WM_event_remove_timer(ptr noundef %40, ptr noundef %6, ptr noundef %41) #22
  store ptr null, ptr %36, align 8, !tbaa !92
  br label %42

42:                                               ; preds = %39, %35
  br i1 %34, label %44, label %52

43:                                               ; preds = %33
  br i1 %34, label %44, label %47

44:                                               ; preds = %43, %42
  %45 = load ptr, ptr @MEM_freeN, align 8, !tbaa !5
  tail call void %45(ptr noundef %5) #22
  store ptr null, ptr %4, align 8, !tbaa !87
  %46 = getelementptr inbounds %struct.wmWindow, ptr %6, i64 0, i32 29
  tail call void @WM_event_remove_ui_handler(ptr noundef nonnull %46, ptr noundef nonnull @ui_handler_panel, ptr noundef nonnull @ui_handler_remove_panel, ptr noundef nonnull %1, i8 noundef zeroext 0) #22
  br label %72

47:                                               ; preds = %43
  %48 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %49 = tail call ptr %48(i64 noundef 48, ptr noundef nonnull @.str.3) #22
  store ptr %49, ptr %4, align 8, !tbaa !87
  %50 = getelementptr inbounds %struct.wmWindow, ptr %6, i64 0, i32 29
  %51 = tail call ptr @WM_event_add_ui_handler(ptr noundef %0, ptr noundef nonnull %50, ptr noundef nonnull @ui_handler_panel, ptr noundef nonnull @ui_handler_remove_panel, ptr noundef nonnull %1, i8 noundef zeroext 0) #22
  br label %52

52:                                               ; preds = %42, %47
  %53 = phi ptr [ %49, %47 ], [ %5, %42 ]
  switch i32 %2, label %58 [
    i32 3, label %54
    i32 0, label %54
  ]

54:                                               ; preds = %52, %52
  %55 = tail call ptr @CTX_wm_manager(ptr noundef %0) #22
  %56 = tail call ptr @WM_event_add_timer(ptr noundef %55, ptr noundef %6, i32 noundef 272, double noundef 2.000000e-02) #22
  %57 = getelementptr inbounds %struct.uiHandlePanelData, ptr %53, i64 0, i32 1
  store ptr %56, ptr %57, align 8, !tbaa !92
  br label %58

58:                                               ; preds = %52, %54
  store i32 %2, ptr %53, align 8, !tbaa !90
  %59 = getelementptr inbounds %struct.wmWindow, ptr %6, i64 0, i32 21
  %60 = load ptr, ptr %59, align 8, !tbaa !93
  %61 = getelementptr inbounds %struct.wmEvent, ptr %60, i64 0, i32 4
  %62 = getelementptr inbounds %struct.uiHandlePanelData, ptr %53, i64 0, i32 3
  %63 = load <2 x i32>, ptr %61, align 4, !tbaa !50
  %64 = getelementptr inbounds %struct.Panel, ptr %1, i64 0, i32 7
  %65 = load <2 x i32>, ptr %64, align 8, !tbaa !50
  %66 = shufflevector <2 x i32> %63, <2 x i32> %65, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %66, ptr %62, align 8, !tbaa !50
  %67 = getelementptr inbounds %struct.Panel, ptr %1, i64 0, i32 9
  %68 = getelementptr inbounds %struct.uiHandlePanelData, ptr %53, i64 0, i32 7
  %69 = load <2 x i32>, ptr %67, align 8, !tbaa !50
  store <2 x i32> %69, ptr %68, align 8, !tbaa !50
  %70 = tail call double @PIL_check_seconds_timer() #22
  %71 = getelementptr inbounds %struct.uiHandlePanelData, ptr %53, i64 0, i32 2
  store double %70, ptr %71, align 8, !tbaa !95
  br label %72

72:                                               ; preds = %58, %44
  tail call void @ED_region_tag_redraw(ptr noundef %7) #22
  br label %73

73:                                               ; preds = %9, %72
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @uiAlignPanelStep(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2, i8 noundef zeroext %3) unnamed_addr #3 {
  %5 = tail call fastcc i32 @panel_aligned(ptr noundef %0, ptr noundef %1) #21, !range !11
  %6 = tail call zeroext i8 @UI_panel_category_is_visible(ptr noundef %1) #21, !range !73
  %7 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 22
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  %9 = icmp eq ptr %8, null
  br i1 %9, label %225, label %10

10:                                               ; preds = %4, %23
  %11 = phi ptr [ %25, %23 ], [ %8, %4 ]
  %12 = phi i32 [ %24, %23 ], [ 0, %4 ]
  %13 = getelementptr inbounds %struct.Panel, ptr %11, i64 0, i32 14
  %14 = load i16, ptr %13, align 2, !tbaa !20
  %15 = and i16 %14, 2
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.Panel, ptr %11, i64 0, i32 18
  %19 = load ptr, ptr %18, align 8, !tbaa !34
  %20 = icmp eq ptr %19, null
  %21 = zext i1 %20 to i32
  %22 = add nsw i32 %12, %21
  br label %23

23:                                               ; preds = %17, %10
  %24 = phi i32 [ %12, %10 ], [ %22, %17 ]
  %25 = load ptr, ptr %11, align 8, !tbaa !5
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %10, !llvm.loop !96

27:                                               ; preds = %23
  %28 = icmp eq i32 %24, 0
  br i1 %28, label %225, label %29

29:                                               ; preds = %27
  br i1 %9, label %59, label %30

30:                                               ; preds = %29
  %31 = icmp eq i32 %5, 2
  %32 = icmp eq i32 %5, 1
  br label %33

33:                                               ; preds = %30, %56
  %34 = phi ptr [ %8, %30 ], [ %57, %56 ]
  %35 = getelementptr inbounds %struct.Panel, ptr %34, i64 0, i32 14
  %36 = load i16, ptr %35, align 2, !tbaa !20
  %37 = and i16 %36, 2
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %56, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.Panel, ptr %34, i64 0, i32 18
  %41 = load ptr, ptr %40, align 8, !tbaa !34
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %56

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.Panel, ptr %34, i64 0, i32 13
  %45 = load i16, ptr %44, align 4, !tbaa !19
  %46 = zext i16 %45 to i32
  %47 = and i32 %46, 2
  %48 = icmp ne i32 %47, 0
  %49 = select i1 %48, i1 %31, i1 false
  br i1 %49, label %54, label %50

50:                                               ; preds = %43
  %51 = and i32 %46, 4
  %52 = icmp ne i32 %51, 0
  %53 = select i1 %52, i1 %32, i1 false
  br i1 %53, label %54, label %56

54:                                               ; preds = %50, %43
  %55 = xor i16 %45, 6
  store i16 %55, ptr %44, align 4, !tbaa !19
  br label %56

56:                                               ; preds = %54, %33, %39, %50
  %57 = load ptr, ptr %34, align 8, !tbaa !5
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %33, !llvm.loop !97

59:                                               ; preds = %56, %29
  %60 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %61 = sext i32 %24 to i64
  %62 = shl nsw i64 %61, 4
  %63 = tail call ptr %60(i64 noundef %62, ptr noundef nonnull @.str.2) #22
  %64 = load ptr, ptr %7, align 8, !tbaa !5
  %65 = icmp eq ptr %64, null
  br i1 %65, label %86, label %66

66:                                               ; preds = %59, %82
  %67 = phi ptr [ %84, %82 ], [ %64, %59 ]
  %68 = phi ptr [ %83, %82 ], [ %63, %59 ]
  %69 = getelementptr inbounds %struct.Panel, ptr %67, i64 0, i32 14
  %70 = load i16, ptr %69, align 2, !tbaa !20
  %71 = and i16 %70, 2
  %72 = icmp eq i16 %71, 0
  br i1 %72, label %82, label %73

73:                                               ; preds = %66
  %74 = getelementptr inbounds %struct.Panel, ptr %67, i64 0, i32 18
  %75 = load ptr, ptr %74, align 8, !tbaa !34
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %82

77:                                               ; preds = %73
  %78 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !5
  %79 = tail call ptr %78(ptr noundef nonnull %67) #22
  store ptr %79, ptr %68, align 8, !tbaa !98
  %80 = getelementptr inbounds %struct.PanelSort, ptr %68, i64 0, i32 1
  store ptr %67, ptr %80, align 8, !tbaa !100
  %81 = getelementptr inbounds %struct.PanelSort, ptr %68, i64 1
  br label %82

82:                                               ; preds = %66, %73, %77
  %83 = phi ptr [ %81, %77 ], [ %68, %73 ], [ %68, %66 ]
  %84 = load ptr, ptr %67, align 8, !tbaa !5
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %66, !llvm.loop !101

86:                                               ; preds = %82, %59
  %87 = icmp eq i8 %3, 0
  br i1 %87, label %101, label %88

88:                                               ; preds = %86
  %89 = icmp eq i32 %5, 2
  %90 = select i1 %89, ptr @find_highest_panel, ptr @find_leftmost_panel
  tail call void @qsort(ptr noundef %63, i64 noundef %61, i64 noundef 16, ptr noundef nonnull %90) #22
  %91 = icmp sgt i32 %24, 0
  br i1 %91, label %92, label %102

92:                                               ; preds = %88, %92
  %93 = phi i32 [ %98, %92 ], [ 0, %88 ]
  %94 = phi ptr [ %99, %92 ], [ %63, %88 ]
  %95 = getelementptr inbounds %struct.PanelSort, ptr %94, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !100
  %97 = getelementptr inbounds %struct.Panel, ptr %96, i64 0, i32 17
  store i32 %93, ptr %97, align 4, !tbaa !24
  %98 = add nuw nsw i32 %93, 1
  %99 = getelementptr inbounds %struct.PanelSort, ptr %94, i64 1
  %100 = icmp eq i32 %98, %24
  br i1 %100, label %102, label %92, !llvm.loop !102

101:                                              ; preds = %86
  tail call void @qsort(ptr noundef %63, i64 noundef %61, i64 noundef 16, ptr noundef nonnull @compare_panel) #22
  br label %102

102:                                              ; preds = %92, %88, %101
  %103 = load ptr, ptr %63, align 8, !tbaa !98
  %104 = getelementptr inbounds %struct.Panel, ptr %103, i64 0, i32 7
  store i32 0, ptr %104, align 8, !tbaa !103
  %105 = tail call fastcc i32 @get_panel_size_y(ptr noundef %103) #21
  %106 = sub nsw i32 0, %105
  %107 = getelementptr inbounds %struct.Panel, ptr %103, i64 0, i32 8
  store i32 %106, ptr %107, align 4, !tbaa !44
  %108 = icmp ne i8 %6, 0
  %109 = icmp eq i32 %5, 2
  %110 = select i1 %108, i1 %109, i1 false
  br i1 %110, label %111, label %114

111:                                              ; preds = %102
  %112 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !45
  %113 = sext i16 %112 to i32
  store i32 %113, ptr %104, align 8, !tbaa !103
  br label %114

114:                                              ; preds = %111, %102
  %115 = icmp sgt i32 %24, 1
  br i1 %115, label %116, label %118

116:                                              ; preds = %114
  %117 = add nsw i32 %24, -2
  br label %122

118:                                              ; preds = %141, %114
  %119 = icmp sgt i32 %24, 0
  br i1 %119, label %120, label %149

120:                                              ; preds = %118
  %121 = fsub float 1.000000e+00, %2
  br label %153

122:                                              ; preds = %116, %141
  %123 = phi ptr [ %142, %141 ], [ %103, %116 ]
  %124 = phi i32 [ %147, %141 ], [ 0, %116 ]
  %125 = phi ptr [ %126, %141 ], [ %63, %116 ]
  %126 = getelementptr inbounds %struct.PanelSort, ptr %125, i64 1
  br i1 %109, label %127, label %133

127:                                              ; preds = %122
  %128 = getelementptr inbounds %struct.Panel, ptr %123, i64 0, i32 7
  %129 = load i32, ptr %128, align 8, !tbaa !103
  %130 = load ptr, ptr %126, align 8, !tbaa !98
  %131 = getelementptr inbounds %struct.Panel, ptr %130, i64 0, i32 7
  store i32 %129, ptr %131, align 8, !tbaa !103
  %132 = tail call fastcc i32 @get_panel_real_ofsy(ptr noundef nonnull %123) #21
  br label %141

133:                                              ; preds = %122
  %134 = tail call fastcc i32 @get_panel_real_ofsx(ptr noundef nonnull %123) #21
  %135 = load ptr, ptr %126, align 8, !tbaa !98
  %136 = getelementptr inbounds %struct.Panel, ptr %135, i64 0, i32 7
  store i32 %134, ptr %136, align 8, !tbaa !103
  %137 = getelementptr inbounds %struct.Panel, ptr %123, i64 0, i32 8
  %138 = load i32, ptr %137, align 4, !tbaa !44
  %139 = tail call fastcc i32 @get_panel_size_y(ptr noundef nonnull %123) #21
  %140 = add nsw i32 %139, %138
  br label %141

141:                                              ; preds = %127, %133
  %142 = phi ptr [ %130, %127 ], [ %135, %133 ]
  %143 = phi i32 [ %132, %127 ], [ %140, %133 ]
  %144 = tail call fastcc i32 @get_panel_size_y(ptr noundef %142) #21
  %145 = sub i32 %143, %144
  %146 = getelementptr inbounds %struct.Panel, ptr %142, i64 0, i32 8
  store i32 %145, ptr %146, align 4, !tbaa !44
  %147 = add nuw nsw i32 %124, 1
  %148 = icmp eq i32 %124, %117
  br i1 %148, label %118, label %122, !llvm.loop !104

149:                                              ; preds = %195, %118
  %150 = phi i8 [ 0, %118 ], [ %196, %195 ]
  %151 = load ptr, ptr %7, align 8, !tbaa !5
  %152 = icmp eq ptr %151, null
  br i1 %152, label %200, label %201

153:                                              ; preds = %120, %195
  %154 = phi i8 [ 0, %120 ], [ %196, %195 ]
  %155 = phi i32 [ 0, %120 ], [ %197, %195 ]
  %156 = phi ptr [ %63, %120 ], [ %198, %195 ]
  %157 = load ptr, ptr %156, align 8, !tbaa !98
  %158 = getelementptr inbounds %struct.Panel, ptr %157, i64 0, i32 13
  %159 = load i16, ptr %158, align 4, !tbaa !19
  %160 = and i16 %159, 1
  %161 = icmp eq i16 %160, 0
  br i1 %161, label %162, label %195

162:                                              ; preds = %153
  %163 = getelementptr inbounds %struct.PanelSort, ptr %156, i64 0, i32 1
  %164 = load ptr, ptr %163, align 8, !tbaa !100
  %165 = getelementptr inbounds %struct.Panel, ptr %164, i64 0, i32 7
  %166 = load i32, ptr %165, align 8, !tbaa !103
  %167 = getelementptr inbounds %struct.Panel, ptr %157, i64 0, i32 7
  %168 = load i32, ptr %167, align 8, !tbaa !103
  %169 = icmp eq i32 %166, %168
  br i1 %169, label %175, label %170

170:                                              ; preds = %162
  %171 = getelementptr inbounds %struct.Panel, ptr %157, i64 0, i32 8
  %172 = load i32, ptr %171, align 4, !tbaa !44
  %173 = getelementptr inbounds %struct.Panel, ptr %164, i64 0, i32 8
  %174 = load i32, ptr %173, align 4, !tbaa !44
  br label %181

175:                                              ; preds = %162
  %176 = getelementptr inbounds %struct.Panel, ptr %164, i64 0, i32 8
  %177 = load i32, ptr %176, align 4, !tbaa !44
  %178 = getelementptr inbounds %struct.Panel, ptr %157, i64 0, i32 8
  %179 = load i32, ptr %178, align 4, !tbaa !44
  %180 = icmp eq i32 %177, %179
  br i1 %180, label %195, label %181

181:                                              ; preds = %170, %175
  %182 = phi i32 [ %174, %170 ], [ %177, %175 ]
  %183 = phi i32 [ %172, %170 ], [ %179, %175 ]
  %184 = sitofp i32 %168 to float
  %185 = sitofp i32 %166 to float
  %186 = fmul float %121, %185
  %187 = tail call float @llvm.fmuladd.f32(float %2, float %184, float %186)
  %188 = tail call fastcc i32 @iroundf(float noundef %187) #21
  store i32 %188, ptr %165, align 8, !tbaa !103
  %189 = sitofp i32 %183 to float
  %190 = getelementptr inbounds %struct.Panel, ptr %164, i64 0, i32 8
  %191 = sitofp i32 %182 to float
  %192 = fmul float %121, %191
  %193 = tail call float @llvm.fmuladd.f32(float %2, float %189, float %192)
  %194 = tail call fastcc i32 @iroundf(float noundef %193) #21
  store i32 %194, ptr %190, align 4, !tbaa !44
  br label %195

195:                                              ; preds = %153, %181, %175
  %196 = phi i8 [ 1, %181 ], [ %154, %175 ], [ %154, %153 ]
  %197 = add nuw nsw i32 %155, 1
  %198 = getelementptr inbounds %struct.PanelSort, ptr %156, i64 1
  %199 = icmp eq i32 %197, %24
  br i1 %199, label %149, label %153, !llvm.loop !105

200:                                              ; preds = %212, %149
  br i1 %119, label %215, label %223

201:                                              ; preds = %149, %212
  %202 = phi ptr [ %213, %212 ], [ %151, %149 ]
  %203 = getelementptr inbounds %struct.Panel, ptr %202, i64 0, i32 18
  %204 = load ptr, ptr %203, align 8, !tbaa !34
  %205 = icmp eq ptr %204, null
  br i1 %205, label %212, label %206

206:                                              ; preds = %201
  %207 = getelementptr inbounds %struct.Panel, ptr %202, i64 0, i32 14
  %208 = load i16, ptr %207, align 2, !tbaa !20
  %209 = and i16 %208, 2
  %210 = icmp eq i16 %209, 0
  br i1 %210, label %212, label %211

211:                                              ; preds = %206
  tail call fastcc void @ui_panel_copy_offset(ptr noundef nonnull %202, ptr noundef nonnull %204) #21
  br label %212

212:                                              ; preds = %201, %206, %211
  %213 = load ptr, ptr %202, align 8, !tbaa !5
  %214 = icmp eq ptr %213, null
  br i1 %214, label %200, label %201, !llvm.loop !106

215:                                              ; preds = %200, %215
  %216 = phi i32 [ %220, %215 ], [ 0, %200 ]
  %217 = phi ptr [ %221, %215 ], [ %63, %200 ]
  %218 = load ptr, ptr @MEM_freeN, align 8, !tbaa !5
  %219 = load ptr, ptr %217, align 8, !tbaa !98
  tail call void %218(ptr noundef %219) #22
  %220 = add nuw nsw i32 %216, 1
  %221 = getelementptr inbounds %struct.PanelSort, ptr %217, i64 1
  %222 = icmp eq i32 %220, %24
  br i1 %222, label %223, label %215, !llvm.loop !107

223:                                              ; preds = %215, %200
  %224 = load ptr, ptr @MEM_freeN, align 8, !tbaa !5
  tail call void %224(ptr noundef nonnull %63) #22
  br label %225

225:                                              ; preds = %4, %27, %223
  %226 = phi i8 [ %150, %223 ], [ 0, %27 ], [ 0, %4 ]
  ret i8 %226
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ui_panels_size(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #10 {
  %5 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 22
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %51, label %8

8:                                                ; preds = %4
  %9 = tail call fastcc i32 @panel_aligned(ptr noundef %0, ptr noundef nonnull %1) #21, !range !11
  %10 = icmp eq i32 %9, 2
  br label %11

11:                                               ; preds = %8, %41
  %12 = phi ptr [ %6, %8 ], [ %44, %41 ]
  %13 = phi i32 [ 0, %8 ], [ %43, %41 ]
  %14 = phi i32 [ 0, %8 ], [ %42, %41 ]
  %15 = getelementptr inbounds %struct.Panel, ptr %12, i64 0, i32 14
  %16 = load i16, ptr %15, align 2, !tbaa !20
  %17 = and i16 %16, 2
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %41, label %19

19:                                               ; preds = %11
  br i1 %10, label %20, label %27

20:                                               ; preds = %19
  %21 = getelementptr inbounds %struct.Panel, ptr %12, i64 0, i32 7
  %22 = load i32, ptr %21, align 8, !tbaa !103
  %23 = getelementptr inbounds %struct.Panel, ptr %12, i64 0, i32 9
  %24 = load i32, ptr %23, align 8, !tbaa !21
  %25 = add nsw i32 %24, %22
  %26 = tail call fastcc i32 @get_panel_real_ofsy(ptr noundef nonnull %12) #21
  br label %36

27:                                               ; preds = %19
  %28 = tail call fastcc i32 @get_panel_real_ofsx(ptr noundef nonnull %12) #21
  %29 = getelementptr inbounds %struct.Panel, ptr %12, i64 0, i32 9
  %30 = load i32, ptr %29, align 8, !tbaa !21
  %31 = add nsw i32 %30, %28
  %32 = getelementptr inbounds %struct.Panel, ptr %12, i64 0, i32 8
  %33 = load i32, ptr %32, align 4, !tbaa !44
  %34 = tail call fastcc i32 @get_panel_size_y(ptr noundef nonnull %12) #21
  %35 = add nsw i32 %34, %33
  br label %36

36:                                               ; preds = %27, %20
  %37 = phi i32 [ %25, %20 ], [ %31, %27 ]
  %38 = phi i32 [ %26, %20 ], [ %35, %27 ]
  %39 = tail call fastcc i32 @max_ii(i32 noundef %14, i32 noundef %37) #21
  %40 = tail call fastcc i32 @min_ii(i32 noundef %13, i32 noundef %38) #21
  br label %41

41:                                               ; preds = %11, %36
  %42 = phi i32 [ %39, %36 ], [ %14, %11 ]
  %43 = phi i32 [ %40, %36 ], [ %13, %11 ]
  %44 = load ptr, ptr %12, align 8, !tbaa !5
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %11, !llvm.loop !108

46:                                               ; preds = %41
  %47 = icmp eq i32 %42, 0
  %48 = select i1 %47, i32 340, i32 %42
  %49 = icmp eq i32 %43, 0
  %50 = select i1 %49, i32 -340, i32 %43
  br label %51

51:                                               ; preds = %46, %4
  %52 = phi i32 [ 340, %4 ], [ %48, %46 ]
  %53 = phi i32 [ -340, %4 ], [ %50, %46 ]
  store i32 %52, ptr %2, align 4, !tbaa !50
  store i32 %53, ptr %3, align 4, !tbaa !50
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiDrawPanels(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 {
  tail call void @UI_ThemeClearColor(i32 noundef 2) #22
  %3 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 21
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %45, label %9

6:                                                ; preds = %24
  %7 = load ptr, ptr %3, align 8, !tbaa !5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %45, label %27

9:                                                ; preds = %2, %24
  %10 = phi ptr [ %25, %24 ], [ %4, %2 ]
  %11 = getelementptr inbounds %struct.uiBlock, ptr %10, i64 0, i32 36
  %12 = load i8, ptr %11, align 1, !tbaa !67
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.uiBlock, ptr %10, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !26
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.Panel, ptr %16, i64 0, i32 13
  %20 = load i16, ptr %19, align 4, !tbaa !19
  %21 = and i16 %20, 1
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  tail call void @uiDrawBlock(ptr noundef %0, ptr noundef nonnull %10) #22
  br label %24

24:                                               ; preds = %9, %14, %18, %23
  %25 = load ptr, ptr %10, align 8, !tbaa !5
  %26 = icmp eq ptr %25, null
  br i1 %26, label %6, label %9, !llvm.loop !109

27:                                               ; preds = %6, %42
  %28 = phi ptr [ %43, %42 ], [ %7, %6 ]
  %29 = getelementptr inbounds %struct.uiBlock, ptr %28, i64 0, i32 36
  %30 = load i8, ptr %29, align 1, !tbaa !67
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.uiBlock, ptr %28, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !26
  %35 = icmp eq ptr %34, null
  br i1 %35, label %42, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.Panel, ptr %34, i64 0, i32 13
  %38 = load i16, ptr %37, align 4, !tbaa !19
  %39 = and i16 %38, 1
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  tail call void @uiDrawBlock(ptr noundef %0, ptr noundef nonnull %28) #22
  br label %42

42:                                               ; preds = %27, %32, %36, %41
  %43 = load ptr, ptr %28, align 8, !tbaa !5
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %27, !llvm.loop !110

45:                                               ; preds = %42, %2, %6
  ret void
}

; Function Attrs: optsize
declare void @UI_ThemeClearColor(i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @uiDrawBlock(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @uiScalePanels(ptr nocapture noundef readonly %0, float noundef %1) local_unnamed_addr #11 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 21
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %38, label %6

6:                                                ; preds = %2
  %7 = fptosi float %1 to i32
  br label %8

8:                                                ; preds = %6, %35
  %9 = phi ptr [ %4, %6 ], [ %36, %35 ]
  %10 = getelementptr inbounds %struct.uiBlock, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !26
  %12 = icmp eq ptr %11, null
  br i1 %12, label %35, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.Panel, ptr %11, i64 0, i32 9
  %15 = load i32, ptr %14, align 8, !tbaa !21
  %16 = sitofp i32 %15 to float
  %17 = fdiv float %1, %16
  %18 = fpext float %17 to double
  %19 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %18) #21
  %20 = load ptr, ptr %10, align 8, !tbaa !26
  %21 = getelementptr inbounds %struct.Panel, ptr %20, i64 0, i32 9
  store i32 %7, ptr %21, align 8, !tbaa !21
  %22 = getelementptr inbounds %struct.uiBlock, ptr %9, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !5
  %24 = icmp eq ptr %23, null
  br i1 %24, label %35, label %25

25:                                               ; preds = %13
  %26 = insertelement <2 x float> poison, float %17, i64 0
  %27 = shufflevector <2 x float> %26, <2 x float> poison, <2 x i32> zeroinitializer
  br label %28

28:                                               ; preds = %25, %28
  %29 = phi ptr [ %33, %28 ], [ %23, %25 ]
  %30 = getelementptr inbounds %struct.uiBut, ptr %29, i64 0, i32 18
  %31 = load <2 x float>, ptr %30, align 8, !tbaa !78
  %32 = fmul <2 x float> %27, %31
  store <2 x float> %32, ptr %30, align 8, !tbaa !78
  %33 = load ptr, ptr %29, align 8, !tbaa !5
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %28, !llvm.loop !111

35:                                               ; preds = %28, %13, %8
  %36 = load ptr, ptr %9, align 8, !tbaa !5
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %8, !llvm.loop !112

38:                                               ; preds = %35, %2
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @UI_panel_category_is_visible(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 27
  %3 = load ptr, ptr %2, align 8, !tbaa !113
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 27, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !114
  %8 = icmp ne ptr %3, %7
  %9 = zext i1 %8 to i8
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i8 [ 0, %1 ], [ %9, %5 ]
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @UI_panel_category_find(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 27
  %4 = tail call ptr @BLI_findstring(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 16) #22
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @BLI_findstring(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @UI_panel_category_active_find(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 23
  %4 = tail call ptr @BLI_findstring(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 16) #22
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @UI_panel_category_active_get(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 23
  br label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ %3, %2 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.PanelCategoryStack, ptr %6, i64 0, i32 2
  %10 = tail call ptr @UI_panel_category_find(ptr noundef %0, ptr noundef nonnull %9) #21
  %11 = icmp eq ptr %10, null
  br i1 %11, label %4, label %20, !llvm.loop !115

12:                                               ; preds = %4
  %13 = icmp eq i8 %1, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 27
  %16 = load ptr, ptr %15, align 8, !tbaa !113
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.PanelCategoryDyn, ptr %16, i64 0, i32 2
  tail call void @UI_panel_category_active_set(ptr noundef nonnull %0, ptr noundef nonnull %19) #21
  br label %20

20:                                               ; preds = %8, %14, %12, %18
  %21 = phi ptr [ %19, %18 ], [ null, %12 ], [ null, %14 ], [ %9, %8 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @UI_panel_category_active_set(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 23
  %4 = tail call ptr @UI_panel_category_active_find(ptr noundef %0, ptr noundef %1) #21
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @BLI_remlink(ptr noundef nonnull %3, ptr noundef nonnull %4) #22
  br label %12

7:                                                ; preds = %2
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %9 = tail call ptr %8(i64 noundef 80, ptr noundef nonnull @__func__.UI_panel_category_active_set) #22
  %10 = getelementptr inbounds %struct.PanelCategoryStack, ptr %9, i64 0, i32 2
  %11 = tail call ptr @BLI_strncpy(ptr noundef nonnull %10, ptr noundef %1, i64 noundef 64) #22
  br label %12

12:                                               ; preds = %7, %6
  %13 = phi ptr [ %4, %6 ], [ %9, %7 ]
  tail call void @BLI_addhead(ptr noundef nonnull %3, ptr noundef %13) #22
  %14 = load ptr, ptr %13, align 8, !tbaa !116
  %15 = icmp eq ptr %14, null
  br i1 %15, label %29, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 20
  br label %18

18:                                               ; preds = %16, %27
  %19 = phi ptr [ %14, %16 ], [ %20, %27 ]
  %20 = load ptr, ptr %19, align 8, !tbaa !116
  %21 = load ptr, ptr %17, align 8, !tbaa !118
  %22 = getelementptr inbounds %struct.ARegionType, ptr %21, i64 0, i32 14
  %23 = getelementptr inbounds %struct.PanelCategoryStack, ptr %19, i64 0, i32 2
  %24 = tail call ptr @BLI_findstring(ptr noundef nonnull %22, ptr noundef nonnull %23, i32 noundef 272) #22
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  tail call void @BLI_remlink(ptr noundef nonnull %3, ptr noundef nonnull %19) #22
  br label %27

27:                                               ; preds = %26, %18
  %28 = icmp eq ptr %20, null
  br i1 %28, label %29, label %18, !llvm.loop !119

29:                                               ; preds = %27, %12
  ret void
}

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @UI_panel_category_find_mouse_over_ex(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 27
  br label %5

5:                                                ; preds = %9, %3
  %6 = phi ptr [ %4, %3 ], [ %7, %9 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.PanelCategoryDyn, ptr %7, i64 0, i32 3
  %11 = tail call zeroext i8 @BLI_rcti_isect_pt(ptr noundef nonnull %10, i32 noundef %1, i32 noundef %2) #22
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %5, label %13, !llvm.loop !120

13:                                               ; preds = %5, %9
  ret ptr %7
}

; Function Attrs: optsize
declare zeroext i8 @BLI_rcti_isect_pt(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @UI_panel_category_find_mouse_over(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 6
  %4 = load i32, ptr %3, align 4, !tbaa !50
  %5 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 6, i64 1
  %6 = load i32, ptr %5, align 4, !tbaa !50
  %7 = tail call ptr @UI_panel_category_find_mouse_over_ex(ptr noundef %0, i32 noundef %4, i32 noundef %6) #21
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @UI_panel_category_add(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %4 = tail call ptr %3(i64 noundef 96, ptr noundef nonnull @__func__.UI_panel_category_add) #22
  %5 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 27
  tail call void @BLI_addtail(ptr noundef nonnull %5, ptr noundef %4) #22
  %6 = getelementptr inbounds %struct.PanelCategoryDyn, ptr %4, i64 0, i32 2
  %7 = tail call ptr @BLI_strncpy(ptr noundef nonnull %6, ptr noundef %1, i64 noundef 64) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @UI_panel_category_clear_all(ptr noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 27
  tail call void @BLI_freelistN(ptr noundef nonnull %2) #22
  ret void
}

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
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
  %14 = tail call ptr @UI_GetStyle() #22
  %15 = getelementptr inbounds %struct.uiStyle, ptr %14, i64 0, i32 6
  %16 = load i16, ptr %15, align 4, !tbaa !121
  %17 = sext i16 %16 to i32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #23
  %18 = getelementptr inbounds %struct.uiStyle, ptr %14, i64 0, i32 6, i32 1
  %19 = load i16, ptr %18, align 2, !tbaa !122
  store i16 %19, ptr %3, align 2, !tbaa !123
  %20 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 21
  %21 = load ptr, ptr %20, align 8, !tbaa !124
  %22 = getelementptr inbounds %struct.uiBlock, ptr %21, i64 0, i32 12
  %23 = load float, ptr %22, align 8, !tbaa !53
  %24 = fdiv float 1.000000e+00, %23
  %25 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !56
  %26 = tail call fastcc i32 @iroundf(float noundef %25) #21
  %27 = tail call fastcc i32 @max_ii(i32 noundef 1, i32 noundef %26) #21
  %28 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !45
  %29 = sitofp i16 %28 to float
  %30 = fmul float %24, %29
  %31 = tail call fastcc i32 @iroundf(float noundef %30) #21
  %32 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !57
  %33 = sitofp i32 %32 to float
  %34 = fmul float %25, %33
  %35 = fdiv float %34, 7.200000e+01
  %36 = mul nsw i32 %27, 3
  %37 = sitofp i32 %36 to float
  %38 = tail call float @llvm.fmuladd.f32(float %37, float %35, float 2.000000e+00)
  %39 = fmul float %24, %38
  %40 = tail call fastcc i32 @iroundf(float noundef %39) #21
  %41 = shl nsw i32 %27, 1
  %42 = sitofp i32 %41 to float
  %43 = tail call float @llvm.fmuladd.f32(float %42, float %35, float 4.000000e+00)
  %44 = fmul float %24, %43
  %45 = tail call fastcc i32 @iroundf(float noundef %44) #21
  %46 = fmul float %35, %37
  %47 = fmul float %24, %46
  %48 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 2, i32 4
  %49 = load i32, ptr %48, align 8, !tbaa !125
  %50 = add nsw i32 %49, 3
  %51 = add nsw i32 %49, %31
  %52 = sub nsw i32 %51, %50
  %53 = sitofp i32 %52 to float
  %54 = fmul float %53, 0x3FD3333340000000
  %55 = fptosi float %54 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %9) #23
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %10) #23
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %11) #23
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %12) #23
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %13) #23
  call void @UI_GetThemeColor4ubv(i32 noundef 2, ptr noundef nonnull %4) #22
  call void @UI_GetThemeColor3ubv(i32 noundef 3, ptr noundef nonnull %5) #22
  call void @UI_GetThemeColor3ubv(i32 noundef 4, ptr noundef nonnull %6) #22
  call void @UI_GetThemeColor4ubv(i32 noundef 8, ptr noundef nonnull %7) #22
  call void @UI_GetThemeColor3ubv(i32 noundef 6, ptr noundef nonnull %8) #22
  call void @UI_GetThemeColor3ubv(i32 noundef 7, ptr noundef nonnull %9) #22
  call void @UI_GetThemeColor3ubv(i32 noundef 9, ptr noundef nonnull %10) #22
  call void @interp_v3_v3v3_uchar(ptr noundef nonnull %11, ptr noundef nonnull %4, ptr noundef nonnull %10, float noundef 0x3FD3333340000000) #22
  call void @interp_v3_v3v3_uchar(ptr noundef nonnull %12, ptr noundef nonnull %4, ptr noundef nonnull %6, float noundef 0x3FC99999A0000000) #22
  call void @interp_v3_v3v3_uchar(ptr noundef nonnull %13, ptr noundef nonnull %9, ptr noundef nonnull %6, float noundef 0x3FBEB851E0000000) #22
  %56 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 17
  %57 = load i16, ptr %56, align 2, !tbaa !126
  %58 = icmp ne i16 %57, 0
  %59 = getelementptr inbounds [4 x i8], ptr %4, i64 0, i64 3
  %60 = load i8, ptr %59, align 1
  %61 = icmp ne i8 %60, -1
  %62 = select i1 %58, i1 %61, i1 false
  %63 = getelementptr inbounds %struct.uiStyle, ptr %14, i64 0, i32 6, i32 2
  %64 = load i16, ptr %63, align 4, !tbaa !127
  %65 = icmp eq i16 %64, 1
  br i1 %65, label %66, label %69

66:                                               ; preds = %2
  %67 = load i16, ptr %15, align 4, !tbaa !121
  %68 = sext i16 %67 to i32
  call void @BLF_enable(i32 noundef %68, i32 noundef 8) #22
  br label %69

69:                                               ; preds = %66, %2
  call void @BLF_enable(i32 noundef %17, i32 noundef 1) #22
  call void @BLF_rotation(i32 noundef %17, float noundef 0x3FF921FB60000000) #22
  %70 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !56
  %71 = fmul float %70, 0x3FF19999A0000000
  %72 = fdiv float %23, %71
  call void @ui_fontscale(ptr noundef nonnull %3, float noundef %72) #22
  %73 = load i16, ptr %3, align 2, !tbaa !123
  %74 = sext i16 %73 to i32
  %75 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !57
  call void @BLF_size(i32 noundef %17, i32 noundef %74, i32 noundef %75) #22
  call void @BLF_enable(i32 noundef %17, i32 noundef 4) #22
  call void @BLF_shadow(i32 noundef %17, i32 noundef 3, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 2.500000e-01) #22
  call void @BLF_shadow_offset(i32 noundef %17, i32 noundef -1, i32 noundef -1) #22
  %76 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 27
  %77 = load ptr, ptr %76, align 8, !tbaa !5
  %78 = icmp eq ptr %77, null
  br i1 %78, label %102, label %79

79:                                               ; preds = %69
  %80 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 2, i32 4, i32 3
  %81 = shl nsw i32 %40, 1
  %82 = add i32 %81, %45
  br label %83

83:                                               ; preds = %79, %83
  %84 = phi ptr [ %77, %79 ], [ %100, %83 ]
  %85 = phi i32 [ %45, %79 ], [ %99, %83 ]
  %86 = getelementptr inbounds %struct.PanelCategoryDyn, ptr %84, i64 0, i32 3
  %87 = getelementptr inbounds %struct.PanelCategoryDyn, ptr %84, i64 0, i32 2
  %88 = call float @BLF_width(i32 noundef %17, ptr noundef nonnull %87, i64 noundef 1024) #22
  %89 = fptosi float %88 to i32
  store i32 %50, ptr %86, align 4, !tbaa !54
  %90 = getelementptr inbounds %struct.PanelCategoryDyn, ptr %84, i64 0, i32 3, i32 1
  store i32 %51, ptr %90, align 4, !tbaa !55
  %91 = load i32, ptr %80, align 4, !tbaa !128
  %92 = add i32 %85, %81
  %93 = add i32 %92, %89
  %94 = sub i32 %91, %93
  %95 = getelementptr inbounds %struct.PanelCategoryDyn, ptr %84, i64 0, i32 3, i32 2
  store i32 %94, ptr %95, align 4, !tbaa !52
  %96 = sub nsw i32 %91, %85
  %97 = getelementptr inbounds %struct.PanelCategoryDyn, ptr %84, i64 0, i32 3, i32 3
  store i32 %96, ptr %97, align 4, !tbaa !51
  %98 = add i32 %82, %85
  %99 = add i32 %98, %89
  %100 = load ptr, ptr %84, align 8, !tbaa !5
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %83, !llvm.loop !129

102:                                              ; preds = %83, %69
  %103 = phi i32 [ %45, %69 ], [ %99, %83 ]
  %104 = call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %48) #21
  %105 = icmp sgt i32 %103, %104
  br i1 %105, label %106, label %132

106:                                              ; preds = %102
  %107 = load ptr, ptr %76, align 8, !tbaa !5
  %108 = icmp eq ptr %107, null
  br i1 %108, label %132, label %109

109:                                              ; preds = %106
  %110 = sitofp i32 %104 to float
  %111 = sitofp i32 %103 to float
  %112 = fdiv float %110, %111
  %113 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 2, i32 4, i32 3
  %114 = insertelement <2 x float> poison, float %112, i64 0
  %115 = shufflevector <2 x float> %114, <2 x float> poison, <2 x i32> zeroinitializer
  br label %116

116:                                              ; preds = %109, %116
  %117 = phi ptr [ %107, %109 ], [ %130, %116 ]
  %118 = getelementptr inbounds %struct.PanelCategoryDyn, ptr %117, i64 0, i32 3, i32 2
  %119 = load i32, ptr %113, align 4, !tbaa !128
  %120 = sitofp i32 %119 to float
  %121 = load <2 x i32>, ptr %118, align 4, !tbaa !50
  %122 = insertelement <2 x i32> poison, i32 %119, i64 0
  %123 = shufflevector <2 x i32> %122, <2 x i32> poison, <2 x i32> zeroinitializer
  %124 = sub nsw <2 x i32> %121, %123
  %125 = sitofp <2 x i32> %124 to <2 x float>
  %126 = insertelement <2 x float> poison, float %120, i64 0
  %127 = shufflevector <2 x float> %126, <2 x float> poison, <2 x i32> zeroinitializer
  %128 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %125, <2 x float> %115, <2 x float> %127)
  %129 = fptosi <2 x float> %128 to <2 x i32>
  store <2 x i32> %129, ptr %118, align 4, !tbaa !50
  %130 = load ptr, ptr %117, align 8, !tbaa !5
  %131 = icmp eq ptr %130, null
  br i1 %131, label %132, label %116, !llvm.loop !130

132:                                              ; preds = %116, %106, %102
  call void @glEnable(i32 noundef 2848) #22
  br i1 %62, label %133, label %134

133:                                              ; preds = %132
  call void @glEnable(i32 noundef 3042) #22
  call void @glColor4ubv(ptr noundef nonnull %7) #22
  br label %135

134:                                              ; preds = %132
  call void @glColor3ubv(ptr noundef nonnull %7) #22
  br label %135

135:                                              ; preds = %134, %133
  %136 = load i32, ptr %48, align 8, !tbaa !125
  %137 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 2, i32 4, i32 2
  %138 = load i32, ptr %137, align 8, !tbaa !131
  %139 = add nsw i32 %136, %31
  %140 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 2, i32 4, i32 3
  %141 = load i32, ptr %140, align 4, !tbaa !128
  call void @glRecti(i32 noundef %136, i32 noundef %138, i32 noundef %139, i32 noundef %141) #22
  br i1 %62, label %142, label %143

142:                                              ; preds = %135
  call void @glDisable(i32 noundef 3042) #22
  br label %143

143:                                              ; preds = %142, %135
  %144 = load ptr, ptr %76, align 8, !tbaa !5
  %145 = icmp eq ptr %144, null
  br i1 %145, label %235, label %146

146:                                              ; preds = %143
  %147 = shl nsw i32 %40, 1
  %148 = sitofp i32 %27 to float
  %149 = fsub float %47, %148
  br label %150

150:                                              ; preds = %146, %231
  %151 = phi ptr [ %144, %146 ], [ %232, %231 ]
  %152 = getelementptr inbounds %struct.PanelCategoryDyn, ptr %151, i64 0, i32 3
  %153 = getelementptr inbounds %struct.PanelCategoryDyn, ptr %151, i64 0, i32 2
  %154 = call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %152) #21
  %155 = sub nsw i32 %154, %147
  %156 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %153, ptr noundef nonnull dereferenceable(1) %1) #20
  %157 = icmp eq i32 %156, 0
  call void @glEnable(i32 noundef 3042) #22
  %158 = select i1 %157, ptr %8, ptr %9
  call void @glColor3ubv(ptr noundef nonnull %158) #22
  %159 = load i32, ptr %152, align 4, !tbaa !54
  %160 = sitofp i32 %159 to float
  %161 = getelementptr inbounds %struct.PanelCategoryDyn, ptr %151, i64 0, i32 3, i32 2
  %162 = load i32, ptr %161, align 4, !tbaa !52
  %163 = sitofp i32 %162 to float
  %164 = getelementptr inbounds %struct.PanelCategoryDyn, ptr %151, i64 0, i32 3, i32 1
  %165 = load i32, ptr %164, align 4, !tbaa !55
  %166 = sitofp i32 %165 to float
  %167 = getelementptr inbounds %struct.PanelCategoryDyn, ptr %151, i64 0, i32 3, i32 3
  %168 = load i32, ptr %167, align 4, !tbaa !51
  %169 = sitofp i32 %168 to float
  call fastcc void @ui_panel_category_draw_tab(i32 noundef 9, float noundef %160, float noundef %163, float noundef %166, float noundef %169, float noundef %149, i8 noundef zeroext 1, ptr noundef null) #21
  call void @glColor3ubv(ptr noundef nonnull %10) #22
  call void @glPolygonMode(i32 noundef 1032, i32 noundef 6913) #22
  %170 = load i32, ptr %152, align 4, !tbaa !54
  %171 = sub nsw i32 %170, %27
  %172 = sitofp i32 %171 to float
  %173 = load i32, ptr %161, align 4, !tbaa !52
  %174 = sub nsw i32 %173, %27
  %175 = sitofp i32 %174 to float
  %176 = load i32, ptr %164, align 4, !tbaa !55
  %177 = sub nsw i32 %176, %27
  %178 = sitofp i32 %177 to float
  %179 = load i32, ptr %167, align 4, !tbaa !51
  %180 = add nsw i32 %179, %27
  %181 = sitofp i32 %180 to float
  call fastcc void @ui_panel_category_draw_tab(i32 noundef 3, float noundef %172, float noundef %175, float noundef %178, float noundef %181, float noundef %47, i8 noundef zeroext 1, ptr noundef null) #21
  call void @glShadeModel(i32 noundef 7425) #22
  %182 = select i1 %157, ptr %12, ptr %13
  call void @glColor3ubv(ptr noundef nonnull %182) #22
  %183 = load i32, ptr %152, align 4, !tbaa !54
  %184 = sitofp i32 %183 to float
  %185 = load i32, ptr %161, align 4, !tbaa !52
  %186 = sitofp i32 %185 to float
  %187 = load i32, ptr %164, align 4, !tbaa !55
  %188 = sitofp i32 %187 to float
  %189 = load i32, ptr %167, align 4, !tbaa !51
  %190 = sitofp i32 %189 to float
  %191 = select i1 %157, ptr %4, ptr %9
  call fastcc void @ui_panel_category_draw_tab(i32 noundef 3, float noundef %184, float noundef %186, float noundef %188, float noundef %190, float noundef %47, i8 noundef zeroext 0, ptr noundef nonnull %191) #21
  call void @glShadeModel(i32 noundef 7424) #22
  call void @glPolygonMode(i32 noundef 1032, i32 noundef 6914) #22
  br i1 %157, label %200, label %192

192:                                              ; preds = %150
  call void @glColor3ubv(ptr noundef nonnull %11) #22
  %193 = load i32, ptr %48, align 8, !tbaa !125
  %194 = add nsw i32 %193, %31
  %195 = sub nsw i32 %194, %27
  %196 = load i32, ptr %161, align 4, !tbaa !52
  %197 = sub nsw i32 %196, %45
  %198 = load i32, ptr %167, align 4, !tbaa !51
  %199 = add nsw i32 %198, %45
  call void @glRecti(i32 noundef %195, i32 noundef %197, i32 noundef %194, i32 noundef %199) #22
  br label %200

200:                                              ; preds = %192, %150
  br i1 %105, label %201, label %204

201:                                              ; preds = %200
  %202 = sitofp i32 %155 to float
  %203 = call i64 @BLF_width_to_strlen(i32 noundef %17, ptr noundef nonnull %153, i64 noundef 1024, float noundef %202, ptr noundef null) #22
  br label %204

204:                                              ; preds = %201, %200
  %205 = phi i64 [ %203, %201 ], [ 1024, %200 ]
  %206 = load i32, ptr %164, align 4, !tbaa !55
  %207 = sub nsw i32 %206, %55
  %208 = sitofp i32 %207 to float
  %209 = load i32, ptr %161, align 4, !tbaa !52
  %210 = add nsw i32 %209, %40
  %211 = sitofp i32 %210 to float
  call void @BLF_position(i32 noundef %17, float noundef %208, float noundef %211, float noundef 0.000000e+00) #22
  call void @glColor3ubv(ptr noundef nonnull %5) #22
  call void @BLF_draw(i32 noundef %17, ptr noundef nonnull %153, i64 noundef %205) #22
  call void @glDisable(i32 noundef 3042) #22
  %212 = getelementptr inbounds %struct.PanelCategoryDyn, ptr %151, i64 0, i32 1
  %213 = load ptr, ptr %212, align 8, !tbaa !132
  %214 = icmp eq ptr %213, null
  br i1 %214, label %215, label %222

215:                                              ; preds = %204
  call void @glColor3ubv(ptr noundef nonnull %11) #22
  %216 = load i32, ptr %48, align 8, !tbaa !125
  %217 = add nsw i32 %216, %31
  %218 = sub nsw i32 %217, %27
  %219 = load i32, ptr %167, align 4, !tbaa !51
  %220 = add nsw i32 %219, %27
  %221 = load i32, ptr %140, align 4, !tbaa !128
  call void @glRecti(i32 noundef %218, i32 noundef %220, i32 noundef %217, i32 noundef %221) #22
  br label %222

222:                                              ; preds = %215, %204
  %223 = load ptr, ptr %151, align 8, !tbaa !5
  %224 = icmp eq ptr %223, null
  br i1 %224, label %225, label %231

225:                                              ; preds = %222
  call void @glColor3ubv(ptr noundef nonnull %11) #22
  %226 = load i32, ptr %48, align 8, !tbaa !125
  %227 = add nsw i32 %226, %31
  %228 = sub nsw i32 %227, %27
  %229 = load i32, ptr %161, align 4, !tbaa !52
  call void @glRecti(i32 noundef %228, i32 noundef 0, i32 noundef %227, i32 noundef %229) #22
  %230 = load ptr, ptr %151, align 8, !tbaa !5
  br label %231

231:                                              ; preds = %225, %222
  %232 = phi ptr [ %230, %225 ], [ %223, %222 ]
  %233 = load i32, ptr %48, align 8, !tbaa !125
  store i32 %233, ptr %152, align 8, !tbaa !134
  %234 = icmp eq ptr %232, null
  br i1 %234, label %235, label %150, !llvm.loop !135

235:                                              ; preds = %231, %143
  call void @glDisable(i32 noundef 2848) #22
  call void @BLF_disable(i32 noundef %17, i32 noundef 1) #22
  call void @BLF_disable(i32 noundef %17, i32 noundef 4) #22
  %236 = load i16, ptr %63, align 4, !tbaa !127
  %237 = icmp eq i16 %236, 1
  br i1 %237, label %238, label %241

238:                                              ; preds = %235
  %239 = load i16, ptr %15, align 4, !tbaa !121
  %240 = sext i16 %239 to i32
  call void @BLF_disable(i32 noundef %240, i32 noundef 8) #22
  br label %241

241:                                              ; preds = %238, %235
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %12) #23
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #23
  ret void
}

; Function Attrs: optsize
declare ptr @UI_GetStyle() local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @max_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #13 {
  %3 = tail call i32 @llvm.smax.i32(i32 %1, i32 %0)
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @iroundf(float noundef %0) unnamed_addr #13 {
  %2 = fadd float %0, 5.000000e-01
  %3 = tail call float @llvm.floor.f32(float %2)
  %4 = fptosi float %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #14

; Function Attrs: optsize
declare void @UI_GetThemeColor4ubv(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @UI_GetThemeColor3ubv(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @interp_v3_v3v3_uchar(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BLF_enable(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BLF_rotation(i32 noundef, float noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @ui_fontscale(ptr noundef, float noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BLF_size(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BLF_shadow(i32 noundef, i32 noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BLF_shadow_offset(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare float @BLF_width(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @glColor4ubv(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @glColor3ubv(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_panel_category_draw_tab(i32 noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, i8 noundef zeroext %6, ptr noundef %7) unnamed_addr #3 {
  %9 = alloca [4 x [2 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %9, ptr noundef nonnull align 16 dereferenceable(32) @__const.ui_panel_category_draw_tab.vec, i64 32, i1 false)
  br label %10

10:                                               ; preds = %8, %10
  %11 = phi i64 [ 0, %8 ], [ %13, %10 ]
  %12 = getelementptr inbounds [4 x [2 x float]], ptr %9, i64 0, i64 %11
  call fastcc void @mul_v2_fl(ptr noundef nonnull %12, float noundef %5) #21
  %13 = add nuw nsw i64 %11, 1
  %14 = icmp eq i64 %13, 4
  br i1 %14, label %15, label %10, !llvm.loop !136

15:                                               ; preds = %10
  tail call void @glBegin(i32 noundef %0) #22
  tail call void @glVertex2f(float noundef %3, float noundef %4) #22
  %16 = fadd float %1, %5
  tail call void @glVertex2f(float noundef %16, float noundef %4) #22
  br label %17

17:                                               ; preds = %15, %17
  %18 = phi i64 [ 0, %15 ], [ %25, %17 ]
  %19 = getelementptr inbounds [4 x [2 x float]], ptr %9, i64 0, i64 %18
  %20 = load float, ptr %19, align 8, !tbaa !78
  %21 = fsub float %16, %20
  %22 = getelementptr inbounds [4 x [2 x float]], ptr %9, i64 0, i64 %18, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !78
  %24 = fsub float %4, %23
  tail call void @glVertex2f(float noundef %21, float noundef %24) #22
  %25 = add nuw nsw i64 %18, 1
  %26 = icmp eq i64 %25, 4
  br i1 %26, label %27, label %17, !llvm.loop !137

27:                                               ; preds = %17
  %28 = fsub float %4, %5
  tail call void @glVertex2f(float noundef %1, float noundef %28) #22
  %29 = icmp eq i8 %6, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = icmp eq ptr %7, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %30
  tail call void @glColor3ubv(ptr noundef nonnull %7) #22
  br label %33

33:                                               ; preds = %32, %30
  %34 = fadd float %2, %5
  tail call void @glVertex2f(float noundef %1, float noundef %34) #22
  br label %48

35:                                               ; preds = %27
  %36 = fadd float %2, %5
  tail call void @glVertex2f(float noundef %1, float noundef %36) #22
  br label %37

37:                                               ; preds = %35, %37
  %38 = phi i64 [ 0, %35 ], [ %45, %37 ]
  %39 = getelementptr inbounds [4 x [2 x float]], ptr %9, i64 0, i64 %38
  %40 = getelementptr inbounds [4 x [2 x float]], ptr %9, i64 0, i64 %38, i64 1
  %41 = load float, ptr %40, align 4, !tbaa !78
  %42 = fadd float %41, %1
  %43 = load float, ptr %39, align 8, !tbaa !78
  %44 = fsub float %36, %43
  tail call void @glVertex2f(float noundef %42, float noundef %44) #22
  %45 = add nuw nsw i64 %38, 1
  %46 = icmp eq i64 %45, 4
  br i1 %46, label %47, label %37, !llvm.loop !138

47:                                               ; preds = %37
  tail call void @glVertex2f(float noundef %16, float noundef %2) #22
  tail call void @glVertex2f(float noundef %3, float noundef %2) #22
  br label %48

48:                                               ; preds = %47, %33
  tail call void @glEnd() #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #23
  ret void
}

; Function Attrs: optsize
declare void @glPolygonMode(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @glShadeModel(i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare i64 @BLF_width_to_strlen(i32 noundef, ptr noundef, i64 noundef, float noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BLF_position(i32 noundef, float noundef, float noundef, float noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BLF_draw(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BLF_disable(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ui_handler_panel_region(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #3 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #23
  %6 = tail call zeroext i8 @UI_panel_category_is_visible(ptr noundef %2) #21, !range !73
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %48, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 3
  %10 = load i16, ptr %9, align 2, !tbaa !139
  %11 = icmp eq i16 %10, 1
  br i1 %11, label %12, label %48

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 2
  %14 = load i16, ptr %13, align 8, !tbaa !141
  switch i16 %14, label %48 [
    i16 1, label %15
    i16 10, label %21
    i16 11, label %21
  ]

15:                                               ; preds = %12
  %16 = tail call ptr @UI_panel_category_find_mouse_over(ptr noundef %2, ptr noundef nonnull %1) #21
  %17 = icmp eq ptr %16, null
  br i1 %17, label %48, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.PanelCategoryDyn, ptr %16, i64 0, i32 2
  tail call void @UI_panel_category_active_set(ptr noundef %2, ptr noundef nonnull %19) #21
  tail call void @ED_region_tag_redraw(ptr noundef %2) #22
  %20 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2
  tail call void @UI_view2d_offset(ptr noundef nonnull %20, float noundef -1.000000e+00, float noundef 1.000000e+00) #22
  br label %236

21:                                               ; preds = %12, %12
  %22 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 18
  %23 = load i16, ptr %22, align 2, !tbaa !142
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 6
  %27 = load i32, ptr %26, align 4, !tbaa !50
  %28 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 27
  %29 = load ptr, ptr %28, align 8, !tbaa !113
  %30 = getelementptr inbounds %struct.PanelCategoryDyn, ptr %29, i64 0, i32 3, i32 1
  %31 = load i32, ptr %30, align 4, !tbaa !143
  %32 = icmp slt i32 %27, %31
  br i1 %32, label %33, label %48

33:                                               ; preds = %25, %21
  %34 = tail call ptr @UI_panel_category_active_get(ptr noundef %2, i8 noundef zeroext 0) #21
  %35 = icmp eq ptr %34, null
  br i1 %35, label %236, label %36

36:                                               ; preds = %33
  %37 = tail call ptr @UI_panel_category_find(ptr noundef %2, ptr noundef nonnull %34) #21
  %38 = icmp eq ptr %37, null
  br i1 %38, label %236, label %39

39:                                               ; preds = %36
  %40 = load i16, ptr %13, align 8, !tbaa !141
  %41 = icmp eq i16 %40, 11
  %42 = getelementptr inbounds %struct.PanelCategoryDyn, ptr %37, i64 0, i32 1
  %43 = select i1 %41, ptr %37, ptr %42
  %44 = load ptr, ptr %43, align 8, !tbaa !5
  %45 = icmp eq ptr %44, null
  br i1 %45, label %236, label %46

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.PanelCategoryDyn, ptr %44, i64 0, i32 2
  tail call void @UI_panel_category_active_set(ptr noundef %2, ptr noundef nonnull %47) #21
  tail call void @ED_region_tag_redraw(ptr noundef %2) #22
  br label %236

48:                                               ; preds = %3, %25, %8, %15, %12
  %49 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 21, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !5
  %51 = icmp eq ptr %50, null
  br i1 %51, label %236, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 4
  %54 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 5
  %55 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 3
  %56 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 2
  %57 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 18
  %58 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 20
  %59 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 17
  %60 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 19
  br label %61

61:                                               ; preds = %52, %231
  %62 = phi ptr [ %50, %52 ], [ %234, %231 ]
  %63 = phi i32 [ 0, %52 ], [ %232, %231 ]
  %64 = load i32, ptr %53, align 4, !tbaa !144
  store i32 %64, ptr %4, align 4, !tbaa !50
  %65 = load i32, ptr %54, align 8, !tbaa !145
  store i32 %65, ptr %5, align 4, !tbaa !50
  call void @ui_window_to_block(ptr noundef %2, ptr noundef nonnull %62, ptr noundef nonnull %4, ptr noundef nonnull %5) #22
  %66 = getelementptr inbounds %struct.uiBlock, ptr %62, i64 0, i32 3
  %67 = load ptr, ptr %66, align 8, !tbaa !26
  %68 = icmp eq ptr %67, null
  br i1 %68, label %231, label %69

69:                                               ; preds = %61
  %70 = getelementptr inbounds %struct.Panel, ptr %67, i64 0, i32 18
  %71 = load ptr, ptr %70, align 8, !tbaa !34
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %231

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.Panel, ptr %67, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !12
  %76 = icmp eq ptr %75, null
  br i1 %76, label %82, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.PanelType, ptr %75, i64 0, i32 9
  %79 = load i32, ptr %78, align 8, !tbaa !16
  %80 = and i32 %79, 2
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %231

82:                                               ; preds = %77, %73
  %83 = getelementptr inbounds %struct.Panel, ptr %67, i64 0, i32 13
  %84 = load i16, ptr %83, align 4, !tbaa !19
  %85 = and i16 %84, 2
  %86 = icmp eq i16 %85, 0
  %87 = getelementptr inbounds %struct.uiBlock, ptr %62, i64 0, i32 11
  %88 = load float, ptr %87, align 8, !tbaa !83
  %89 = load i32, ptr %4, align 4, !tbaa !50
  %90 = sitofp i32 %89 to float
  br i1 %86, label %100, label %91

91:                                               ; preds = %82
  %92 = fcmp ugt float %88, %90
  br i1 %92, label %196, label %93

93:                                               ; preds = %91
  %94 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !45
  %95 = sext i16 %94 to i32
  %96 = add nsw i32 %95, 4
  %97 = sitofp i32 %96 to float
  %98 = fadd float %88, %97
  %99 = fcmp ult float %98, %90
  br i1 %99, label %196, label %156

100:                                              ; preds = %82
  %101 = fcmp ogt float %88, %90
  br i1 %101, label %196, label %102

102:                                              ; preds = %100
  %103 = getelementptr inbounds %struct.uiBlock, ptr %62, i64 0, i32 11, i32 1
  %104 = load float, ptr %103, align 4, !tbaa !80
  %105 = fcmp olt float %104, %90
  br i1 %105, label %196, label %106

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.uiBlock, ptr %62, i64 0, i32 11, i32 3
  %108 = load float, ptr %107, align 4, !tbaa !81
  %109 = load i32, ptr %5, align 4, !tbaa !50
  %110 = sitofp i32 %109 to float
  %111 = fcmp ugt float %108, %110
  br i1 %111, label %119, label %112

112:                                              ; preds = %106
  %113 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !45
  %114 = sext i16 %113 to i32
  %115 = add nsw i32 %114, 4
  %116 = sitofp i32 %115 to float
  %117 = fadd float %108, %116
  %118 = fcmp ult float %117, %110
  br i1 %118, label %119, label %156

119:                                              ; preds = %112, %106
  %120 = and i16 %84, 4
  %121 = icmp eq i16 %120, 0
  br i1 %121, label %122, label %196

122:                                              ; preds = %119
  %123 = getelementptr inbounds %struct.Panel, ptr %67, i64 0, i32 15
  %124 = load i16, ptr %123, align 8, !tbaa !62
  %125 = and i16 %124, 512
  %126 = icmp eq i16 %125, 0
  br i1 %126, label %140, label %127

127:                                              ; preds = %122
  %128 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !45
  %129 = sext i16 %128 to i32
  %130 = add nsw i32 %129, 4
  %131 = sitofp i32 %130 to float
  %132 = fsub float %104, %131
  %133 = fcmp ugt float %132, %90
  br i1 %133, label %140, label %134

134:                                              ; preds = %127
  %135 = getelementptr inbounds %struct.uiBlock, ptr %62, i64 0, i32 11, i32 2
  %136 = load float, ptr %135, align 8, !tbaa !82
  %137 = fadd float %136, %131
  %138 = fcmp ult float %137, %110
  br i1 %138, label %140, label %139

139:                                              ; preds = %134
  br label %140

140:                                              ; preds = %127, %139, %134, %122
  %141 = phi i8 [ 1, %139 ], [ 0, %134 ], [ 0, %127 ], [ 0, %122 ]
  %142 = fcmp ugt float %88, %90
  %143 = fcmp ult float %104, %90
  %144 = or i1 %142, %143
  br i1 %144, label %196, label %145

145:                                              ; preds = %140
  %146 = getelementptr inbounds %struct.uiBlock, ptr %62, i64 0, i32 11, i32 2
  %147 = load float, ptr %146, align 8, !tbaa !82
  %148 = fcmp ugt float %147, %110
  br i1 %148, label %196, label %149

149:                                              ; preds = %145
  %150 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !45
  %151 = sext i16 %150 to i32
  %152 = add nsw i32 %151, 4
  %153 = sitofp i32 %152 to float
  %154 = fadd float %108, %153
  %155 = fcmp ult float %154, %110
  br i1 %155, label %196, label %156

156:                                              ; preds = %149, %93, %112
  %157 = phi i16 [ %113, %112 ], [ %94, %93 ], [ %150, %149 ]
  %158 = phi i1 [ true, %112 ], [ true, %93 ], [ false, %149 ]
  %159 = phi i1 [ false, %112 ], [ false, %93 ], [ true, %149 ]
  %160 = phi i8 [ 0, %112 ], [ 0, %93 ], [ %141, %149 ]
  %161 = load i16, ptr %55, align 2, !tbaa !139
  %162 = icmp eq i16 %161, 1
  br i1 %162, label %163, label %198

163:                                              ; preds = %156
  %164 = load i16, ptr %56, align 8, !tbaa !141
  %165 = icmp eq i16 %164, 97
  br i1 %165, label %166, label %198

166:                                              ; preds = %163
  %167 = load i16, ptr %57, align 2, !tbaa !142
  %168 = icmp eq i16 %167, 1
  br i1 %168, label %198, label %169

169:                                              ; preds = %166
  %170 = load i16, ptr %58, align 2, !tbaa !146
  %171 = icmp eq i16 %170, 1
  br i1 %171, label %198, label %172

172:                                              ; preds = %169
  %173 = load i16, ptr %59, align 8, !tbaa !147
  %174 = icmp eq i16 %173, 1
  br i1 %174, label %198, label %175

175:                                              ; preds = %172
  %176 = load i16, ptr %60, align 4, !tbaa !148
  %177 = icmp eq i16 %176, 1
  br i1 %177, label %198, label %178

178:                                              ; preds = %175
  %179 = and i16 %84, 4
  %180 = icmp eq i16 %179, 0
  br i1 %180, label %194, label %181

181:                                              ; preds = %178
  %182 = getelementptr inbounds %struct.uiBlock, ptr %62, i64 0, i32 11, i32 3
  %183 = load float, ptr %182, align 4, !tbaa !81
  %184 = load i32, ptr %5, align 4, !tbaa !50
  %185 = sitofp i32 %184 to float
  %186 = fcmp ugt float %183, %185
  br i1 %186, label %231, label %187

187:                                              ; preds = %181
  %188 = sext i16 %157 to i32
  %189 = add nsw i32 %188, 4
  %190 = sitofp i32 %189 to float
  %191 = fadd float %183, %190
  %192 = fcmp ult float %191, %185
  br i1 %192, label %231, label %193

193:                                              ; preds = %187
  call fastcc void @ui_handle_panel_header(ptr noundef %0, ptr noundef nonnull %62, i32 noundef %89, i32 noundef %184, i32 noundef 97, i16 noundef signext %167, i16 noundef signext %173) #21
  br label %231

194:                                              ; preds = %178
  %195 = load i32, ptr %5, align 4, !tbaa !50
  call fastcc void @ui_handle_panel_header(ptr noundef %0, ptr noundef nonnull %62, i32 noundef %89, i32 noundef %195, i32 noundef 97, i16 noundef signext %167, i16 noundef signext %173) #21
  br label %231

196:                                              ; preds = %93, %91, %100, %102, %119, %149, %145, %140
  %197 = call zeroext i8 @ui_button_is_active(ptr noundef %2) #22
  br label %231

198:                                              ; preds = %163, %166, %169, %172, %175, %156
  %199 = call zeroext i8 @ui_button_is_active(ptr noundef %2) #22
  %200 = icmp eq i8 %199, 0
  br i1 %200, label %201, label %231

201:                                              ; preds = %198
  %202 = load i16, ptr %55, align 2, !tbaa !139
  %203 = icmp eq i16 %202, 1
  br i1 %203, label %204, label %231

204:                                              ; preds = %201
  %205 = load i16, ptr %56, align 8, !tbaa !141
  switch i16 %205, label %225 [
    i16 220, label %206
    i16 163, label %206
    i16 1, label %212
  ]

206:                                              ; preds = %204, %204
  br i1 %159, label %231, label %207

207:                                              ; preds = %206
  %208 = load i32, ptr %4, align 4, !tbaa !50
  %209 = load i32, ptr %5, align 4, !tbaa !50
  %210 = load i16, ptr %57, align 2, !tbaa !142
  %211 = load i16, ptr %59, align 8, !tbaa !147
  call fastcc void @ui_handle_panel_header(ptr noundef %0, ptr noundef nonnull %62, i32 noundef %208, i32 noundef %209, i32 noundef 220, i16 noundef signext %210, i16 noundef signext %211) #21
  br label %236

212:                                              ; preds = %204
  br i1 %159, label %218, label %213

213:                                              ; preds = %212
  %214 = load i32, ptr %4, align 4, !tbaa !50
  %215 = load i32, ptr %5, align 4, !tbaa !50
  %216 = load i16, ptr %57, align 2, !tbaa !142
  %217 = load i16, ptr %59, align 8, !tbaa !147
  call fastcc void @ui_handle_panel_header(ptr noundef %0, ptr noundef nonnull %62, i32 noundef %214, i32 noundef %215, i32 noundef 0, i16 noundef signext %216, i16 noundef signext %217) #21
  br label %236

218:                                              ; preds = %212
  %219 = icmp eq i8 %160, 0
  br i1 %219, label %231, label %220

220:                                              ; preds = %218
  %221 = load i16, ptr %83, align 4, !tbaa !19
  %222 = and i16 %221, 6
  %223 = icmp eq i16 %222, 0
  br i1 %223, label %224, label %231

224:                                              ; preds = %220
  call fastcc void @panel_activate_state(ptr noundef %0, ptr noundef nonnull %67, i32 noundef 1) #21
  br label %236

225:                                              ; preds = %204
  %226 = icmp eq i16 %205, 3
  %227 = and i1 %158, %226
  br i1 %227, label %228, label %231

228:                                              ; preds = %225
  %229 = getelementptr inbounds %struct.uiBlock, ptr %62, i64 0, i32 3
  %230 = load ptr, ptr %229, align 8, !tbaa !26
  call void @ui_panel_menu(ptr noundef %0, ptr noundef %2, ptr noundef %230) #22
  br label %236

231:                                              ; preds = %196, %198, %206, %220, %218, %201, %225, %194, %193, %187, %181, %77, %61, %69
  %232 = phi i32 [ %63, %201 ], [ %63, %225 ], [ 1, %218 ], [ 1, %220 ], [ %63, %206 ], [ 1, %194 ], [ 1, %193 ], [ 1, %187 ], [ 1, %181 ], [ %63, %77 ], [ %63, %61 ], [ %63, %69 ], [ %63, %198 ], [ %63, %196 ]
  %233 = getelementptr inbounds %struct.uiBlock, ptr %62, i64 0, i32 1
  %234 = load ptr, ptr %233, align 8, !tbaa !5
  %235 = icmp eq ptr %234, null
  br i1 %235, label %236, label %61, !llvm.loop !149

236:                                              ; preds = %231, %48, %228, %224, %213, %207, %33, %39, %46, %36, %18
  %237 = phi i32 [ 1, %18 ], [ 1, %36 ], [ 1, %46 ], [ 1, %39 ], [ 1, %33 ], [ 1, %207 ], [ 1, %213 ], [ 1, %224 ], [ 1, %228 ], [ 0, %48 ], [ %232, %231 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #23
  ret i32 %237
}

; Function Attrs: optsize
declare void @UI_view2d_offset(ptr noundef, float noundef, float noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @ui_window_to_block(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_handle_panel_header(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i16 noundef signext %5, i16 noundef signext %6) unnamed_addr #3 {
  %8 = alloca %struct.rctf, align 4
  %9 = alloca %struct.rctf, align 4
  %10 = tail call ptr @CTX_wm_area(ptr noundef %0) #22
  %11 = tail call ptr @CTX_wm_region(ptr noundef %0) #22
  %12 = tail call zeroext i8 @UI_panel_category_is_visible(ptr noundef %11) #21, !range !73
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !26
  %17 = getelementptr inbounds %struct.Panel, ptr %16, i64 0, i32 13
  %18 = load i16, ptr %17, align 4, !tbaa !19
  %19 = and i16 %18, 32
  %20 = icmp ne i16 %19, 0
  br label %21

21:                                               ; preds = %14, %7
  %22 = phi i1 [ false, %7 ], [ %20, %14 ]
  %23 = tail call fastcc i32 @panel_aligned(ptr noundef %10, ptr noundef %11) #21, !range !11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #23
  %24 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %24, i64 16, i1 false), !tbaa.struct !150
  %25 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 11, i32 1
  %26 = load float, ptr %25, align 4, !tbaa !80
  %27 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !45
  %28 = sitofp i16 %27 to float
  %29 = fneg float %28
  %30 = tail call float @llvm.fmuladd.f32(float %29, float 1.500000e+00, float %26)
  store float %30, ptr %8, align 4, !tbaa !59
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %9, ptr noundef nonnull align 4 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !150
  br i1 %22, label %31, label %35

31:                                               ; preds = %21
  %32 = sext i16 %27 to i32
  %33 = sub nsw i32 0, %32
  %34 = sitofp i32 %33 to float
  call void @BLI_rctf_translate(ptr noundef nonnull %9, float noundef %34, float noundef 0.000000e+00) #22
  br label %35

35:                                               ; preds = %31, %21
  %36 = load float, ptr %9, align 4, !tbaa !59
  switch i32 %4, label %37 [
    i32 220, label %73
    i32 97, label %73
  ]

37:                                               ; preds = %35
  %38 = icmp ult i32 %4, 2
  %39 = icmp ne i16 %6, 0
  %40 = and i1 %38, %39
  %41 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !26
  %43 = getelementptr inbounds %struct.Panel, ptr %42, i64 0, i32 13
  %44 = load i16, ptr %43, align 4, !tbaa !19
  br i1 %40, label %45, label %47

45:                                               ; preds = %37
  %46 = xor i16 %44, 32
  store i16 %46, ptr %43, align 4, !tbaa !19
  br label %72

47:                                               ; preds = %37
  %48 = and i16 %44, 2
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %47
  %51 = sitofp i32 %3 to float
  %52 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 11, i32 3
  %53 = load float, ptr %52, align 4, !tbaa !81
  %54 = fcmp ugt float %53, %51
  br i1 %54, label %55, label %73

55:                                               ; preds = %50
  %56 = sitofp i32 %2 to float
  br label %135

57:                                               ; preds = %47
  %58 = getelementptr inbounds %struct.Panel, ptr %42, i64 0, i32 15
  %59 = load i16, ptr %58, align 8, !tbaa !62
  %60 = and i16 %59, 32
  %61 = icmp eq i16 %60, 0
  %62 = sitofp i32 %2 to float
  br i1 %61, label %70, label %63

63:                                               ; preds = %57
  %64 = load float, ptr %25, align 4, !tbaa !80
  %65 = fadd float %64, -8.000000e+00
  %66 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !45
  %67 = sitofp i16 %66 to float
  %68 = fsub float %65, %67
  %69 = fcmp ult float %68, %62
  br i1 %69, label %135, label %72

70:                                               ; preds = %57
  %71 = fcmp ogt float %36, %62
  br i1 %71, label %73, label %135

72:                                               ; preds = %63, %45
  call void @ED_region_tag_redraw(ptr noundef %11) #22
  br label %129

73:                                               ; preds = %70, %50, %35, %35
  %74 = icmp eq i16 %5, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %73
  %76 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 3
  %77 = load ptr, ptr %76, align 8, !tbaa !26
  call fastcc void @panels_collapse_all(ptr noundef %10, ptr noundef %11, ptr noundef %77) #21
  br label %78

78:                                               ; preds = %75, %73
  %79 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 3
  %80 = load ptr, ptr %79, align 8, !tbaa !26
  %81 = getelementptr inbounds %struct.Panel, ptr %80, i64 0, i32 13
  %82 = load i16, ptr %81, align 4, !tbaa !19
  %83 = and i16 %82, 6
  %84 = icmp eq i16 %83, 0
  br i1 %84, label %93, label %85

85:                                               ; preds = %78
  %86 = and i16 %82, -7
  store i16 %86, ptr %81, align 4, !tbaa !19
  %87 = getelementptr inbounds %struct.Panel, ptr %80, i64 0, i32 16
  %88 = load i16, ptr %87, align 2, !tbaa !151
  %89 = and i16 %88, 4
  %90 = icmp eq i16 %89, 0
  br i1 %90, label %108, label %91

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.Panel, ptr %80, i64 0, i32 8
  store i32 0, ptr %92, align 4, !tbaa !44
  br label %108

93:                                               ; preds = %78
  %94 = icmp eq i32 %23, 1
  br i1 %94, label %95, label %97

95:                                               ; preds = %93
  %96 = or disjoint i16 %82, 2
  store i16 %96, ptr %81, align 4, !tbaa !19
  br label %108

97:                                               ; preds = %93
  %98 = or disjoint i16 %82, 4
  store i16 %98, ptr %81, align 4, !tbaa !19
  %99 = getelementptr inbounds %struct.Panel, ptr %80, i64 0, i32 16
  %100 = load i16, ptr %99, align 2, !tbaa !151
  %101 = and i16 %100, 4
  %102 = icmp eq i16 %101, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %97
  %104 = getelementptr inbounds %struct.Panel, ptr %80, i64 0, i32 10
  %105 = load i32, ptr %104, align 4, !tbaa !22
  %106 = sub nsw i32 0, %105
  %107 = getelementptr inbounds %struct.Panel, ptr %80, i64 0, i32 8
  store i32 %106, ptr %107, align 4, !tbaa !44
  br label %108

108:                                              ; preds = %95, %103, %97, %85, %91
  %109 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 22
  %110 = load ptr, ptr %109, align 8, !tbaa !5
  %111 = icmp eq ptr %110, null
  br i1 %111, label %129, label %112

112:                                              ; preds = %108, %126
  %113 = phi ptr [ %127, %126 ], [ %110, %108 ]
  %114 = getelementptr inbounds %struct.Panel, ptr %113, i64 0, i32 18
  %115 = load ptr, ptr %114, align 8, !tbaa !34
  %116 = icmp eq ptr %115, %80
  br i1 %116, label %117, label %126

117:                                              ; preds = %112
  %118 = load i16, ptr %81, align 4, !tbaa !19
  %119 = and i16 %118, 6
  %120 = icmp eq i16 %119, 0
  %121 = getelementptr inbounds %struct.Panel, ptr %113, i64 0, i32 13
  %122 = load i16, ptr %121, align 4, !tbaa !19
  %123 = and i16 %122, -7
  %124 = select i1 %120, i16 0, i16 6
  %125 = or disjoint i16 %123, %124
  store i16 %125, ptr %121, align 4, !tbaa !19
  br label %126

126:                                              ; preds = %117, %112
  %127 = load ptr, ptr %113, align 8, !tbaa !5
  %128 = icmp eq ptr %127, null
  br i1 %128, label %129, label %112, !llvm.loop !152

129:                                              ; preds = %126, %108, %72
  %130 = icmp eq i32 %23, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %129
  %132 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 3
  %133 = load ptr, ptr %132, align 8, !tbaa !26
  call fastcc void @panel_activate_state(ptr noundef %0, ptr noundef %133, i32 noundef 3) #21
  br label %150

134:                                              ; preds = %129
  call void @ED_region_tag_redraw(ptr noundef %11) #22
  br label %150

135:                                              ; preds = %55, %63, %70
  %136 = phi float [ %56, %55 ], [ %62, %63 ], [ %62, %70 ]
  %137 = call zeroext i8 @BLI_rctf_isect_x(ptr noundef nonnull %8, float noundef %136) #22
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %141, label %139

139:                                              ; preds = %135
  %140 = load ptr, ptr %41, align 8, !tbaa !26
  call fastcc void @panel_activate_state(ptr noundef %0, ptr noundef %140, i32 noundef 0) #21
  br label %150

141:                                              ; preds = %135
  br i1 %22, label %142, label %150

142:                                              ; preds = %141
  %143 = call zeroext i8 @BLI_rctf_isect_x(ptr noundef nonnull %9, float noundef %136) #22
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %150, label %145

145:                                              ; preds = %142
  %146 = load ptr, ptr %41, align 8, !tbaa !26
  %147 = getelementptr inbounds %struct.Panel, ptr %146, i64 0, i32 13
  %148 = load i16, ptr %147, align 4, !tbaa !19
  %149 = xor i16 %148, 32
  store i16 %149, ptr %147, align 4, !tbaa !19
  call void @ED_region_tag_redraw(ptr noundef %11) #22
  br label %150

150:                                              ; preds = %139, %145, %142, %141, %131, %134
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #23
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @ui_button_is_active(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @ui_panel_menu(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @uiStyleFontDraw(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @uiStyleFontDrawRotated(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_y(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %3 = load float, ptr %2, align 4, !tbaa !61
  %4 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %5 = load float, ptr %4, align 4, !tbaa !60
  %6 = fsub float %3, %5
  ret float %6
}

; Function Attrs: optsize
declare void @UI_GetColorPtrShade3ubv(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @glColor4ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_draw_anti_x(float noundef %0, float noundef %1, float noundef %2, float noundef %3) unnamed_addr #3 {
  tail call void @glEnable(i32 noundef 2848) #22
  tail call void @glEnable(i32 noundef 3042) #22
  tail call void @glLineWidth(float noundef 2.000000e+00) #22
  tail call void @fdrawline(float noundef %0, float noundef %1, float noundef %2, float noundef %3) #22
  tail call void @fdrawline(float noundef %0, float noundef %3, float noundef %2, float noundef %1) #22
  tail call void @glLineWidth(float noundef 1.000000e+00) #22
  tail call void @glDisable(i32 noundef 2848) #22
  tail call void @glDisable(i32 noundef 3042) #22
  ret void
}

; Function Attrs: optsize
declare void @glLineWidth(float noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_x(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %3 = load float, ptr %2, align 4, !tbaa !58
  %4 = load float, ptr %0, align 4, !tbaa !59
  %5 = fsub float %3, %4
  ret float %5
}

; Function Attrs: optsize
declare ptr @UI_GetStyleDraw() local_unnamed_addr #5

; Function Attrs: optsize
declare void @ui_bounds_block(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree optsize
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @find_highest_panel(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 {
  %3 = load ptr, ptr %0, align 8, !tbaa !98
  %4 = getelementptr inbounds %struct.Panel, ptr %3, i64 0, i32 17
  %5 = load i32, ptr %4, align 4, !tbaa !24
  %6 = load ptr, ptr %1, align 8, !tbaa !98
  %7 = getelementptr inbounds %struct.Panel, ptr %6, i64 0, i32 17
  %8 = load i32, ptr %7, align 4, !tbaa !24
  %9 = icmp slt i32 %5, %8
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.Panel, ptr %3, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !12
  %13 = getelementptr inbounds %struct.PanelType, ptr %12, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !16
  %15 = and i32 %14, 2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %10, %2
  %18 = getelementptr inbounds %struct.Panel, ptr %3, i64 0, i32 8
  %19 = load i32, ptr %18, align 4, !tbaa !44
  %20 = getelementptr inbounds %struct.Panel, ptr %3, i64 0, i32 10
  %21 = load i32, ptr %20, align 4, !tbaa !22
  %22 = add nsw i32 %21, %19
  %23 = getelementptr inbounds %struct.Panel, ptr %6, i64 0, i32 8
  %24 = load i32, ptr %23, align 4, !tbaa !44
  %25 = getelementptr inbounds %struct.Panel, ptr %6, i64 0, i32 10
  %26 = load i32, ptr %25, align 4, !tbaa !22
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @find_leftmost_panel(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 {
  %3 = load ptr, ptr %0, align 8, !tbaa !98
  %4 = getelementptr inbounds %struct.Panel, ptr %3, i64 0, i32 7
  %5 = load i32, ptr %4, align 8, !tbaa !103
  %6 = load ptr, ptr %1, align 8, !tbaa !98
  %7 = getelementptr inbounds %struct.Panel, ptr %6, i64 0, i32 7
  %8 = load i32, ptr %7, align 8, !tbaa !103
  %9 = icmp sgt i32 %5, %8
  br i1 %9, label %21, label %10

10:                                               ; preds = %2
  %11 = icmp slt i32 %5, %8
  br i1 %11, label %21, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.Panel, ptr %3, i64 0, i32 17
  %14 = load i32, ptr %13, align 4, !tbaa !24
  %15 = getelementptr inbounds %struct.Panel, ptr %6, i64 0, i32 17
  %16 = load i32, ptr %15, align 4, !tbaa !24
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @compare_panel(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 {
  %3 = load ptr, ptr %0, align 8, !tbaa !98
  %4 = getelementptr inbounds %struct.Panel, ptr %3, i64 0, i32 17
  %5 = load i32, ptr %4, align 4, !tbaa !24
  %6 = load ptr, ptr %1, align 8, !tbaa !98
  %7 = getelementptr inbounds %struct.Panel, ptr %6, i64 0, i32 17
  %8 = load i32, ptr %7, align 4, !tbaa !24
  %9 = icmp sgt i32 %5, %8
  %10 = icmp slt i32 %5, %8
  %11 = sext i1 %10 to i32
  %12 = select i1 %9, i32 1, i32 %11
  ret i32 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @get_panel_size_y(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.Panel, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 9
  %7 = load i32, ptr %6, align 8, !tbaa !16
  %8 = and i32 %7, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.Panel, ptr %0, i64 0, i32 10
  %12 = load i32, ptr %11, align 4, !tbaa !22
  br label %20

13:                                               ; preds = %5, %1
  %14 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !45
  %15 = sext i16 %14 to i32
  %16 = add nsw i32 %15, 4
  %17 = getelementptr inbounds %struct.Panel, ptr %0, i64 0, i32 10
  %18 = load i32, ptr %17, align 4, !tbaa !22
  %19 = add nsw i32 %16, %18
  br label %20

20:                                               ; preds = %13, %10
  %21 = phi i32 [ %12, %10 ], [ %19, %13 ]
  ret i32 %21
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @get_panel_real_ofsy(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.Panel, ptr %0, i64 0, i32 13
  %3 = load i16, ptr %2, align 4, !tbaa !19
  %4 = and i16 %3, 4
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.Panel, ptr %0, i64 0, i32 8
  %8 = load i32, ptr %7, align 4, !tbaa !44
  %9 = getelementptr inbounds %struct.Panel, ptr %0, i64 0, i32 10
  %10 = load i32, ptr %9, align 4, !tbaa !22
  %11 = add nsw i32 %10, %8
  br label %33

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.Panel, ptr %0, i64 0, i32 18
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  %15 = icmp eq ptr %14, null
  br i1 %15, label %30, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.Panel, ptr %14, i64 0, i32 13
  %18 = load i16, ptr %17, align 4, !tbaa !19
  %19 = and i16 %18, 4
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.Panel, ptr %0, i64 0, i32 8
  %23 = load i32, ptr %22, align 4, !tbaa !44
  %24 = getelementptr inbounds %struct.Panel, ptr %0, i64 0, i32 10
  %25 = load i32, ptr %24, align 4, !tbaa !22
  %26 = add nsw i32 %25, %23
  br label %33

27:                                               ; preds = %16
  %28 = getelementptr inbounds %struct.Panel, ptr %14, i64 0, i32 8
  %29 = load i32, ptr %28, align 4, !tbaa !44
  br label %33

30:                                               ; preds = %12
  %31 = getelementptr inbounds %struct.Panel, ptr %0, i64 0, i32 8
  %32 = load i32, ptr %31, align 4, !tbaa !44
  br label %33

33:                                               ; preds = %30, %27, %21, %6
  %34 = phi i32 [ %11, %6 ], [ %26, %21 ], [ %29, %27 ], [ %32, %30 ]
  ret i32 %34
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @get_panel_real_ofsx(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.Panel, ptr %0, i64 0, i32 13
  %3 = load i16, ptr %2, align 4, !tbaa !19
  %4 = and i16 %3, 2
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.Panel, ptr %0, i64 0, i32 7
  %8 = load i32, ptr %7, align 8, !tbaa !103
  %9 = tail call fastcc i32 @get_panel_header(ptr noundef nonnull %0) #21, !range !153
  %10 = add nsw i32 %9, %8
  br label %31

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.Panel, ptr %0, i64 0, i32 18
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = icmp eq ptr %13, null
  br i1 %14, label %25, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.Panel, ptr %13, i64 0, i32 13
  %17 = load i16, ptr %16, align 4, !tbaa !19
  %18 = and i16 %17, 2
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.Panel, ptr %0, i64 0, i32 7
  %22 = load i32, ptr %21, align 8, !tbaa !103
  %23 = tail call fastcc i32 @get_panel_header(ptr noundef nonnull %0) #21, !range !153
  %24 = add nsw i32 %23, %22
  br label %31

25:                                               ; preds = %15, %11
  %26 = getelementptr inbounds %struct.Panel, ptr %0, i64 0, i32 7
  %27 = load i32, ptr %26, align 8, !tbaa !103
  %28 = getelementptr inbounds %struct.Panel, ptr %0, i64 0, i32 9
  %29 = load i32, ptr %28, align 8, !tbaa !21
  %30 = add nsw i32 %29, %27
  br label %31

31:                                               ; preds = %25, %20, %6
  %32 = phi i32 [ %10, %6 ], [ %24, %20 ], [ %30, %25 ]
  ret i32 %32
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @ui_panel_copy_offset(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #16 {
  %3 = getelementptr inbounds %struct.Panel, ptr %1, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !103
  %5 = getelementptr inbounds %struct.Panel, ptr %0, i64 0, i32 7
  store i32 %4, ptr %5, align 8, !tbaa !103
  %6 = getelementptr inbounds %struct.Panel, ptr %1, i64 0, i32 8
  %7 = load i32, ptr %6, align 4, !tbaa !44
  %8 = getelementptr inbounds %struct.Panel, ptr %1, i64 0, i32 10
  %9 = load i32, ptr %8, align 4, !tbaa !22
  %10 = add nsw i32 %9, %7
  %11 = getelementptr inbounds %struct.Panel, ptr %0, i64 0, i32 10
  %12 = load i32, ptr %11, align 4, !tbaa !22
  %13 = sub i32 %10, %12
  %14 = getelementptr inbounds %struct.Panel, ptr %0, i64 0, i32 8
  store i32 %13, ptr %14, align 4, !tbaa !44
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @get_panel_header(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.Panel, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 9
  %7 = load i32, ptr %6, align 8, !tbaa !16
  %8 = and i32 %7, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %5, %1
  %11 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !45
  %12 = sext i16 %11 to i32
  %13 = add nsw i32 %12, 4
  br label %14

14:                                               ; preds = %5, %10
  %15 = phi i32 [ %13, %10 ], [ 0, %5 ]
  ret i32 %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @min_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #13 {
  %3 = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #14

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v2_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #16 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !78
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !78
  ret void
}

; Function Attrs: optsize
declare void @glBegin(i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @glVertex2f(float noundef, float noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @glEnd() local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BLI_rctf_translate(ptr noundef, float noundef, float noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @panels_collapse_all(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #3 {
  %4 = tail call zeroext i8 @UI_panel_category_is_visible(ptr noundef %1) #21, !range !73
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @UI_panel_category_active_get(ptr noundef %1, i8 noundef zeroext 0) #21
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = tail call fastcc i32 @panel_aligned(ptr noundef %0, ptr noundef %1) #21, !range !11
  %11 = icmp eq i32 %10, 1
  %12 = select i1 %11, i16 2, i16 4
  %13 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 22
  %14 = load ptr, ptr %13, align 8, !tbaa !5
  %15 = icmp eq ptr %14, null
  br i1 %15, label %62, label %16

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.Panel, ptr %2, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !12
  %19 = icmp ne ptr %18, null
  %20 = getelementptr inbounds %struct.PanelType, ptr %18, i64 0, i32 5
  %21 = icmp ne ptr %9, null
  br label %22

22:                                               ; preds = %16, %59
  %23 = phi ptr [ %14, %16 ], [ %60, %59 ]
  %24 = getelementptr inbounds %struct.Panel, ptr %23, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !12
  %26 = icmp ne ptr %25, null
  %27 = select i1 %26, i1 %19, i1 false
  br i1 %27, label %28, label %59

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.PanelType, ptr %25, i64 0, i32 9
  %30 = load i32, ptr %29, align 8, !tbaa !16
  %31 = and i32 %30, 2
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %59

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.PanelType, ptr %25, i64 0, i32 5
  %35 = load i8, ptr %34, align 8, !tbaa !33
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %33
  %38 = load i8, ptr %20, align 8, !tbaa !33
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %34, ptr noundef nonnull dereferenceable(1) %20) #20
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %40, %37, %33
  %44 = getelementptr inbounds %struct.Panel, ptr %23, i64 0, i32 13
  %45 = load i16, ptr %44, align 4, !tbaa !19
  %46 = and i16 %45, 32
  %47 = icmp eq i16 %46, 0
  %48 = and i1 %21, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.PanelType, ptr %25, i64 0, i32 6
  %51 = load i8, ptr %50, align 8, !tbaa !33
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %49
  %54 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %50, ptr noundef nonnull dereferenceable(1) %9) #20
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53, %49, %43
  %57 = and i16 %45, -7
  %58 = or disjoint i16 %57, %12
  store i16 %58, ptr %44, align 4, !tbaa !19
  br label %59

59:                                               ; preds = %40, %56, %53, %28, %22
  %60 = load ptr, ptr %23, align 8, !tbaa !5
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %22, !llvm.loop !154

62:                                               ; preds = %59, %8
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BLI_rctf_isect_x(ptr noundef, float noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @check_panel_overlap(ptr nocapture noundef readonly %0, ptr noundef readonly %1) unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 22
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %90, label %6

6:                                                ; preds = %2
  %7 = icmp eq ptr %1, null
  %8 = getelementptr inbounds %struct.Panel, ptr %1, i64 0, i32 13
  %9 = getelementptr inbounds %struct.Panel, ptr %1, i64 0, i32 7
  %10 = getelementptr inbounds %struct.Panel, ptr %1, i64 0, i32 9
  %11 = getelementptr inbounds %struct.Panel, ptr %1, i64 0, i32 8
  %12 = getelementptr inbounds %struct.Panel, ptr %1, i64 0, i32 10
  br label %13

13:                                               ; preds = %6, %87
  %14 = phi ptr [ %4, %6 ], [ %88, %87 ]
  %15 = getelementptr inbounds %struct.Panel, ptr %14, i64 0, i32 13
  %16 = load i16, ptr %15, align 4, !tbaa !19
  %17 = and i16 %16, -17
  store i16 %17, ptr %15, align 4, !tbaa !19
  %18 = icmp eq ptr %14, %1
  %19 = or i1 %7, %18
  br i1 %19, label %87, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.Panel, ptr %14, i64 0, i32 18
  %22 = load ptr, ptr %21, align 8, !tbaa !34
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %87

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.Panel, ptr %14, i64 0, i32 14
  %26 = load i16, ptr %25, align 2, !tbaa !20
  %27 = and i16 %26, 2
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %87, label %29

29:                                               ; preds = %24
  %30 = zext i16 %17 to i32
  %31 = and i32 %30, 2
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %29
  %34 = and i32 %30, 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %33
  %37 = load i16, ptr %8, align 4, !tbaa !19
  %38 = zext i16 %37 to i32
  %39 = and i32 %38, 2
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = and i32 %38, 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  br label %45

45:                                               ; preds = %36, %33, %29, %41, %44
  %46 = phi float [ 0x3FC99999A0000000, %44 ], [ 0x3FC99999A0000000, %41 ], [ 0x3FA99999A0000000, %29 ], [ 0x3FC99999A0000000, %33 ], [ 0x3FA99999A0000000, %36 ]
  %47 = phi float [ 0x3FA99999A0000000, %44 ], [ 0x3FC99999A0000000, %41 ], [ 0x3FC99999A0000000, %29 ], [ 0x3FA99999A0000000, %33 ], [ 0x3FC99999A0000000, %36 ]
  %48 = getelementptr inbounds %struct.Panel, ptr %14, i64 0, i32 7
  %49 = load i32, ptr %48, align 8, !tbaa !103
  %50 = sitofp i32 %49 to float
  %51 = load i32, ptr %9, align 8, !tbaa !103
  %52 = sitofp i32 %51 to float
  %53 = load i32, ptr %10, align 8, !tbaa !21
  %54 = sitofp i32 %53 to float
  %55 = fneg float %46
  %56 = tail call float @llvm.fmuladd.f32(float %55, float %54, float %52)
  %57 = fcmp olt float %56, %50
  br i1 %57, label %58, label %87

58:                                               ; preds = %45
  %59 = getelementptr inbounds %struct.Panel, ptr %14, i64 0, i32 9
  %60 = load i32, ptr %59, align 8, !tbaa !21
  %61 = add nsw i32 %60, %49
  %62 = sitofp i32 %61 to float
  %63 = fadd float %46, 1.000000e+00
  %64 = tail call float @llvm.fmuladd.f32(float %63, float %54, float %52)
  %65 = fcmp ogt float %64, %62
  br i1 %65, label %66, label %87

66:                                               ; preds = %58
  %67 = getelementptr inbounds %struct.Panel, ptr %14, i64 0, i32 8
  %68 = load i32, ptr %67, align 4, !tbaa !44
  %69 = sitofp i32 %68 to float
  %70 = load i32, ptr %11, align 4, !tbaa !44
  %71 = sitofp i32 %70 to float
  %72 = load i32, ptr %12, align 4, !tbaa !22
  %73 = sitofp i32 %72 to float
  %74 = fneg float %47
  %75 = tail call float @llvm.fmuladd.f32(float %74, float %73, float %71)
  %76 = fcmp olt float %75, %69
  br i1 %76, label %77, label %87

77:                                               ; preds = %66
  %78 = getelementptr inbounds %struct.Panel, ptr %14, i64 0, i32 10
  %79 = load i32, ptr %78, align 4, !tbaa !22
  %80 = add nsw i32 %79, %68
  %81 = sitofp i32 %80 to float
  %82 = fadd float %47, 1.000000e+00
  %83 = tail call float @llvm.fmuladd.f32(float %82, float %73, float %71)
  %84 = fcmp ogt float %83, %81
  br i1 %84, label %85, label %87

85:                                               ; preds = %77
  %86 = or i16 %16, 16
  store i16 %86, ptr %15, align 4, !tbaa !19
  br label %87

87:                                               ; preds = %45, %66, %85, %77, %58, %13, %24, %20
  %88 = load ptr, ptr %14, align 8, !tbaa !5
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %13, !llvm.loop !155

90:                                               ; preds = %87, %2
  ret void
}

; Function Attrs: optsize
declare void @WM_event_remove_timer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @WM_event_remove_ui_handler(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @ui_handler_panel(ptr noundef %0, ptr noundef %1, ptr noundef %2) #3 {
  %4 = getelementptr inbounds %struct.Panel, ptr %2, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !87
  %6 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 2
  %7 = load i16, ptr %6, align 8, !tbaa !141
  switch i16 %7, label %35 [
    i16 1, label %8
    i16 4, label %19
    i16 272, label %23
  ]

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 3
  %10 = load i16, ptr %9, align 2, !tbaa !139
  %11 = icmp eq i16 %10, 1
  br i1 %11, label %33, label %12

12:                                               ; preds = %8
  %13 = tail call ptr @CTX_wm_area(ptr noundef %0) #22
  %14 = tail call ptr @CTX_wm_region(ptr noundef %0) #22
  %15 = tail call fastcc i32 @panel_aligned(ptr noundef %13, ptr noundef %14) #21, !range !11
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  tail call fastcc void @panel_activate_state(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 3) #21
  br label %33

18:                                               ; preds = %12
  tail call fastcc void @panel_activate_state(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 4) #21
  br label %33

19:                                               ; preds = %3
  %20 = load i32, ptr %5, align 8, !tbaa !90
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %19
  tail call fastcc void @ui_do_drag(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2) #21
  br label %33

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 28
  %25 = load ptr, ptr %24, align 8, !tbaa !156
  %26 = getelementptr inbounds %struct.uiHandlePanelData, ptr %5, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !92
  %28 = icmp eq ptr %25, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load i32, ptr %5, align 8, !tbaa !90
  switch i32 %30, label %33 [
    i32 3, label %31
    i32 0, label %32
  ]

31:                                               ; preds = %29
  tail call fastcc void @ui_do_animate(ptr noundef %0, ptr noundef nonnull %2) #21
  br label %33

32:                                               ; preds = %29
  tail call fastcc void @ui_do_drag(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2) #21
  br label %33

33:                                               ; preds = %8, %23, %32, %31, %19, %22, %18, %17, %29
  %34 = load ptr, ptr %4, align 8, !tbaa !87
  br label %35

35:                                               ; preds = %3, %33
  %36 = phi ptr [ %34, %33 ], [ %5, %3 ]
  %37 = icmp eq ptr %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load i32, ptr %36, align 8, !tbaa !90
  %40 = icmp eq i32 %39, 3
  br i1 %40, label %42, label %41

41:                                               ; preds = %38, %35
  br label %42

42:                                               ; preds = %38, %41
  %43 = phi i32 [ 1, %41 ], [ 0, %38 ]
  ret i32 %43
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ui_handler_remove_panel(ptr noundef %0, ptr noundef %1) #3 {
  tail call fastcc void @panel_activate_state(ptr noundef %0, ptr noundef %1, i32 noundef 4) #21
  ret void
}

; Function Attrs: optsize
declare ptr @WM_event_add_ui_handler(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @WM_event_add_timer(ptr noundef, ptr noundef, i32 noundef, double noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare double @PIL_check_seconds_timer() local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_do_drag(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.Panel, ptr %2, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !87
  %6 = tail call ptr @CTX_wm_area(ptr noundef %0) #22
  %7 = tail call ptr @CTX_wm_region(ptr noundef %0) #22
  %8 = tail call fastcc i32 @panel_aligned(ptr noundef %6, ptr noundef %7) #21, !range !11
  %9 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 3
  %10 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 4
  %11 = tail call zeroext i8 @BLI_rcti_isect_pt_v(ptr noundef nonnull %9, ptr noundef nonnull %10) #22
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %76, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.uiHandlePanelData, ptr %5, i64 0, i32 3
  %15 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !45
  %16 = sdiv i16 %15, -5
  %17 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 2, i32 1
  %18 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %17) #21
  %19 = tail call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %9) #21
  %20 = tail call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %17) #21
  %21 = tail call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %9) #21
  %22 = load <2 x i32>, ptr %10, align 4, !tbaa !50
  %23 = load <2 x i32>, ptr %14, align 8, !tbaa !50
  %24 = sub nsw <2 x i32> %22, %23
  %25 = trunc <2 x i32> %24 to <2 x i16>
  %26 = insertelement <2 x i16> poison, i16 %16, i64 0
  %27 = shufflevector <2 x i16> %26, <2 x i16> poison, <2 x i32> zeroinitializer
  %28 = and <2 x i16> %27, %25
  %29 = insertelement <2 x i32> poison, i32 %19, i64 0
  %30 = insertelement <2 x i32> %29, i32 %21, i64 1
  %31 = sitofp <2 x i32> %30 to <2 x float>
  %32 = insertelement <2 x float> poison, float %18, i64 0
  %33 = insertelement <2 x float> %32, float %20, i64 1
  %34 = fdiv <2 x float> %33, %31
  %35 = sitofp <2 x i16> %28 to <2 x float>
  %36 = fmul <2 x float> %34, %35
  %37 = fptosi <2 x float> %36 to <2 x i16>
  %38 = load i32, ptr %5, align 8, !tbaa !90
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %64

40:                                               ; preds = %13
  %41 = getelementptr inbounds %struct.uiHandlePanelData, ptr %5, i64 0, i32 7
  %42 = load i32, ptr %41, align 8, !tbaa !157
  %43 = extractelement <2 x i16> %37, i64 0
  %44 = sext i16 %43 to i32
  %45 = add nsw i32 %42, %44
  %46 = tail call i32 @llvm.smax.i32(i32 %45, i32 100)
  %47 = getelementptr inbounds %struct.Panel, ptr %2, i64 0, i32 9
  store i32 %46, ptr %47, align 8, !tbaa !21
  %48 = getelementptr inbounds %struct.uiHandlePanelData, ptr %5, i64 0, i32 8
  %49 = load i32, ptr %48, align 4, !tbaa !158
  %50 = extractelement <2 x i16> %37, i64 1
  %51 = sext i16 %50 to i32
  %52 = sub nsw i32 %49, %51
  %53 = icmp slt i32 %52, 70
  %54 = trunc i32 %49 to i16
  %55 = add i16 %54, -70
  %56 = select i1 %53, i16 %55, i16 %50
  %57 = sext i16 %56 to i32
  %58 = sub nsw i32 %49, %57
  %59 = getelementptr inbounds %struct.Panel, ptr %2, i64 0, i32 10
  store i32 %58, ptr %59, align 4, !tbaa !22
  %60 = getelementptr inbounds %struct.uiHandlePanelData, ptr %5, i64 0, i32 6
  %61 = load i32, ptr %60, align 4, !tbaa !159
  %62 = add nsw i32 %61, %57
  %63 = getelementptr inbounds %struct.Panel, ptr %2, i64 0, i32 8
  store i32 %62, ptr %63, align 4, !tbaa !44
  br label %75

64:                                               ; preds = %13
  %65 = getelementptr inbounds %struct.Panel, ptr %2, i64 0, i32 16
  store i16 0, ptr %65, align 2, !tbaa !151
  %66 = getelementptr inbounds %struct.uiHandlePanelData, ptr %5, i64 0, i32 5
  %67 = sext <2 x i16> %37 to <2 x i32>
  %68 = getelementptr inbounds %struct.Panel, ptr %2, i64 0, i32 7
  %69 = load <2 x i32>, ptr %66, align 8, !tbaa !50
  %70 = add nsw <2 x i32> %69, %67
  store <2 x i32> %70, ptr %68, align 8, !tbaa !50
  tail call fastcc void @check_panel_overlap(ptr noundef %7, ptr noundef nonnull %2) #21
  %71 = and i32 %8, 65535
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %64
  %74 = tail call fastcc zeroext i8 @uiAlignPanelStep(ptr noundef %6, ptr noundef %7, float noundef 0x3FC99999A0000000, i8 noundef zeroext 1) #21, !range !73
  br label %75

75:                                               ; preds = %64, %73, %40
  tail call void @ED_region_tag_redraw(ptr noundef %7) #22
  br label %76

76:                                               ; preds = %3, %75
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_do_animate(ptr noundef %0, ptr noundef %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.Panel, ptr %1, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !87
  %5 = tail call ptr @CTX_wm_area(ptr noundef %0) #22
  %6 = tail call ptr @CTX_wm_region(ptr noundef %0) #22
  %7 = tail call double @PIL_check_seconds_timer() #22
  %8 = getelementptr inbounds %struct.uiHandlePanelData, ptr %4, i64 0, i32 2
  %9 = load double, ptr %8, align 8, !tbaa !95
  %10 = fsub double %7, %9
  %11 = fdiv double %10, 3.000000e-01
  %12 = fptrunc double %11 to float
  %13 = tail call float @sqrtf(float noundef %12) #22
  %14 = tail call fastcc float @min_ff(float noundef %13) #21
  %15 = tail call fastcc zeroext i8 @uiAlignPanelStep(ptr noundef %5, ptr noundef %6, float noundef %14, i8 noundef zeroext 0) #21, !range !73
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  tail call void @ED_region_tag_redraw(ptr noundef %6) #22
  %18 = fcmp ult float %14, 1.000000e+00
  br i1 %18, label %20, label %19

19:                                               ; preds = %2, %17
  tail call fastcc void @panel_activate_state(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 4) #21
  br label %20

20:                                               ; preds = %17, %19
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BLI_rcti_isect_pt_v(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_x(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !55
  %4 = load i32, ptr %0, align 4, !tbaa !54
  %5 = sub nsw i32 %3, %4
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0) unnamed_addr #13 {
  %2 = fcmp olt float %0, 1.000000e+00
  %3 = select i1 %2, float %0, float 1.000000e+00
  ret float %3
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #18

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #18

attributes #0 = { nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #20 = { nounwind optsize willreturn memory(read) }
attributes #21 = { optsize }
attributes #22 = { nounwind optsize }
attributes #23 = { nounwind }

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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{i32 -32768, i32 32768}
!12 = !{!13, !6, i64 16}
!13 = !{!"Panel", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !7, i64 32, !7, i64 96, !7, i64 160, !14, i64 224, !14, i64 228, !14, i64 232, !14, i64 236, !15, i64 240, !15, i64 242, !15, i64 244, !15, i64 246, !15, i64 248, !15, i64 250, !14, i64 252, !6, i64 256, !6, i64 264}
!14 = !{!"int", !7, i64 0}
!15 = !{!"short", !7, i64 0}
!16 = !{!17, !14, i64 344}
!17 = !{!"PanelType", !6, i64 0, !6, i64 8, !7, i64 16, !7, i64 80, !7, i64 144, !7, i64 208, !7, i64 272, !14, i64 336, !14, i64 340, !14, i64 344, !6, i64 352, !6, i64 360, !6, i64 368, !18, i64 376}
!18 = !{!"ExtensionRNA", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24}
!19 = !{!13, !15, i64 244}
!20 = !{!13, !15, i64 246}
!21 = !{!13, !14, i64 232}
!22 = !{!13, !14, i64 236}
!23 = distinct !{!23, !10}
!24 = !{!13, !14, i64 252}
!25 = distinct !{!25, !10}
!26 = !{!27, !6, i64 32}
!27 = !{!"uiBlock", !6, i64 0, !6, i64 8, !28, i64 16, !6, i64 32, !6, i64 40, !28, i64 48, !28, i64 64, !6, i64 80, !28, i64 88, !7, i64 104, !7, i64 232, !29, i64 296, !30, i64 312, !14, i64 316, !6, i64 320, !6, i64 328, !6, i64 336, !6, i64 344, !6, i64 352, !6, i64 360, !6, i64 368, !6, i64 376, !6, i64 384, !6, i64 392, !6, i64 400, !6, i64 408, !6, i64 416, !14, i64 424, !15, i64 428, !7, i64 430, !7, i64 431, !7, i64 432, !7, i64 433, !31, i64 440, !6, i64 448, !7, i64 456, !7, i64 457, !7, i64 458, !7, i64 459, !14, i64 460, !14, i64 464, !14, i64 468, !14, i64 472, !14, i64 476, !29, i64 480, !28, i64 496, !6, i64 512, !6, i64 520, !6, i64 528, !6, i64 536, !7, i64 544, !7, i64 556, !7, i64 557, !32, i64 624}
!28 = !{!"ListBase", !6, i64 0, !6, i64 8}
!29 = !{!"rctf", !30, i64 0, !30, i64 4, !30, i64 8, !30, i64 12}
!30 = !{!"float", !7, i64 0}
!31 = !{!"double", !7, i64 0}
!32 = !{!"PieMenuData", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !31, i64 32, !14, i64 40, !14, i64 44, !30, i64 48}
!33 = !{!7, !7, i64 0}
!34 = !{!13, !6, i64 256}
!35 = !{!36, !7, i64 72}
!36 = !{!"ScrArea", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !37, i64 56, !7, i64 72, !7, i64 73, !15, i64 74, !15, i64 76, !15, i64 78, !15, i64 80, !15, i64 82, !15, i64 84, !7, i64 86, !7, i64 87, !6, i64 88, !28, i64 96, !28, i64 112, !28, i64 128, !28, i64 144}
!37 = !{!"rcti", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12}
!38 = !{!39, !15, i64 214}
!39 = !{!"ARegion", !6, i64 0, !6, i64 8, !40, i64 16, !37, i64 176, !37, i64 192, !15, i64 208, !15, i64 210, !15, i64 212, !15, i64 214, !15, i64 216, !15, i64 218, !30, i64 220, !15, i64 224, !15, i64 226, !15, i64 228, !15, i64 230, !15, i64 232, !15, i64 234, !15, i64 236, !15, i64 238, !6, i64 240, !28, i64 248, !28, i64 264, !28, i64 280, !28, i64 296, !28, i64 312, !28, i64 328, !28, i64 344, !6, i64 360, !6, i64 368, !6, i64 376}
!40 = !{!"View2D", !29, i64 0, !29, i64 16, !37, i64 32, !37, i64 48, !37, i64 64, !7, i64 80, !7, i64 88, !30, i64 96, !30, i64 100, !15, i64 104, !15, i64 106, !15, i64 108, !15, i64 110, !15, i64 112, !15, i64 114, !15, i64 116, !15, i64 118, !15, i64 120, !15, i64 122, !15, i64 124, !15, i64 126, !6, i64 128, !14, i64 136, !14, i64 140, !6, i64 144, !6, i64 152}
!41 = !{!36, !6, i64 96}
!42 = !{!43, !15, i64 224}
!43 = !{!"SpaceButs", !6, i64 0, !6, i64 8, !28, i64 16, !14, i64 32, !30, i64 36, !7, i64 40, !40, i64 56, !15, i64 216, !15, i64 218, !15, i64 220, !15, i64 222, !15, i64 224, !15, i64 226, !15, i64 228, !15, i64 230, !7, i64 232, !7, i64 233, !6, i64 240, !14, i64 248, !14, i64 252, !6, i64 256, !6, i64 264}
!44 = !{!13, !14, i64 228}
!45 = !{!46, !15, i64 8948}
!46 = !{!"UserDef", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !14, i64 16, !7, i64 20, !7, i64 788, !7, i64 1556, !7, i64 2580, !7, i64 3348, !7, i64 4116, !7, i64 4884, !7, i64 5652, !7, i64 6420, !7, i64 7444, !14, i64 8468, !15, i64 8472, !15, i64 8474, !15, i64 8476, !15, i64 8478, !15, i64 8480, !15, i64 8482, !14, i64 8484, !14, i64 8488, !14, i64 8492, !15, i64 8496, !15, i64 8498, !14, i64 8500, !14, i64 8504, !14, i64 8508, !14, i64 8512, !14, i64 8516, !14, i64 8520, !14, i64 8524, !15, i64 8528, !15, i64 8530, !15, i64 8532, !15, i64 8534, !28, i64 8536, !28, i64 8552, !28, i64 8568, !28, i64 8584, !28, i64 8600, !28, i64 8616, !28, i64 8632, !7, i64 8648, !15, i64 8712, !15, i64 8714, !15, i64 8716, !15, i64 8718, !15, i64 8720, !15, i64 8722, !15, i64 8724, !15, i64 8726, !7, i64 8728, !15, i64 8896, !15, i64 8898, !15, i64 8900, !15, i64 8902, !15, i64 8904, !15, i64 8906, !15, i64 8908, !15, i64 8910, !14, i64 8912, !14, i64 8916, !15, i64 8920, !15, i64 8922, !15, i64 8924, !15, i64 8926, !15, i64 8928, !15, i64 8930, !15, i64 8932, !15, i64 8934, !15, i64 8936, !15, i64 8938, !7, i64 8940, !7, i64 8941, !7, i64 8942, !7, i64 8943, !15, i64 8944, !15, i64 8946, !15, i64 8948, !15, i64 8950, !15, i64 8952, !15, i64 8954, !30, i64 8956, !30, i64 8960, !14, i64 8964, !15, i64 8968, !15, i64 8970, !30, i64 8972, !15, i64 8976, !15, i64 8978, !15, i64 8980, !15, i64 8982, !47, i64 8984, !7, i64 9760, !7, i64 9772, !15, i64 9788, !7, i64 9790, !7, i64 9791, !7, i64 9792, !7, i64 9872, !14, i64 10896, !14, i64 10900, !30, i64 10904, !30, i64 10908, !14, i64 10912, !15, i64 10916, !15, i64 10918, !15, i64 10920, !15, i64 10922, !15, i64 10924, !15, i64 10926, !48, i64 10928}
!47 = !{!"ColorBand", !15, i64 0, !15, i64 2, !7, i64 4, !7, i64 5, !7, i64 6, !7, i64 7, !7, i64 8}
!48 = !{!"WalkNavigation", !30, i64 0, !30, i64 4, !30, i64 8, !30, i64 12, !30, i64 16, !30, i64 20, !15, i64 24, !7, i64 26}
!49 = !{i64 0, i64 4, !50, i64 4, i64 4, !50, i64 8, i64 4, !50, i64 12, i64 4, !50}
!50 = !{!14, !14, i64 0}
!51 = !{!37, !14, i64 12}
!52 = !{!37, !14, i64 8}
!53 = !{!27, !30, i64 312}
!54 = !{!37, !14, i64 0}
!55 = !{!37, !14, i64 4}
!56 = !{!46, !30, i64 10908}
!57 = !{!46, !14, i64 8524}
!58 = !{!29, !30, i64 4}
!59 = !{!29, !30, i64 0}
!60 = !{!29, !30, i64 8}
!61 = !{!29, !30, i64 12}
!62 = !{!13, !15, i64 248}
!63 = !{!13, !15, i64 240}
!64 = distinct !{!64, !10}
!65 = distinct !{!65, !10}
!66 = distinct !{!66, !10}
!67 = !{!27, !7, i64 457}
!68 = distinct !{!68, !10}
!69 = distinct !{!69, !10}
!70 = distinct !{!70, !10}
!71 = distinct !{!71, !10}
!72 = !{i32 0, i32 2}
!73 = !{i8 0, i8 2}
!74 = distinct !{!74, !10}
!75 = !{!76, !15, i64 226}
!76 = !{!"uiStyle", !6, i64 0, !6, i64 8, !7, i64 16, !77, i64 80, !77, i64 112, !77, i64 144, !77, i64 176, !30, i64 208, !15, i64 212, !15, i64 214, !15, i64 216, !15, i64 218, !15, i64 220, !15, i64 222, !15, i64 224, !15, i64 226, !15, i64 228, !15, i64 230}
!77 = !{!"uiFontStyle", !15, i64 0, !15, i64 2, !15, i64 4, !7, i64 6, !15, i64 12, !15, i64 14, !15, i64 16, !15, i64 18, !15, i64 20, !15, i64 22, !30, i64 24, !30, i64 28}
!78 = !{!30, !30, i64 0}
!79 = distinct !{!79, !10}
!80 = !{!27, !30, i64 300}
!81 = !{!27, !30, i64 308}
!82 = !{!27, !30, i64 304}
!83 = !{!27, !30, i64 296}
!84 = !{!43, !15, i64 222}
!85 = !{!43, !15, i64 218}
!86 = !{!43, !15, i64 216}
!87 = !{!13, !6, i64 264}
!88 = distinct !{!88, !10}
!89 = distinct !{!89, !10}
!90 = !{!91, !14, i64 0}
!91 = !{!"uiHandlePanelData", !14, i64 0, !6, i64 8, !31, i64 16, !14, i64 24, !14, i64 28, !14, i64 32, !14, i64 36, !14, i64 40, !14, i64 44}
!92 = !{!91, !6, i64 8}
!93 = !{!94, !6, i64 136}
!94 = !{!"wmWindow", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !7, i64 40, !15, i64 104, !15, i64 106, !15, i64 108, !15, i64 110, !15, i64 112, !15, i64 114, !15, i64 116, !15, i64 118, !15, i64 120, !15, i64 122, !15, i64 124, !15, i64 126, !14, i64 128, !15, i64 132, !15, i64 134, !6, i64 136, !6, i64 144, !6, i64 152, !14, i64 160, !14, i64 164, !6, i64 168, !28, i64 176, !28, i64 192, !28, i64 208, !28, i64 224, !28, i64 240}
!95 = !{!91, !31, i64 16}
!96 = distinct !{!96, !10}
!97 = distinct !{!97, !10}
!98 = !{!99, !6, i64 0}
!99 = !{!"PanelSort", !6, i64 0, !6, i64 8}
!100 = !{!99, !6, i64 8}
!101 = distinct !{!101, !10}
!102 = distinct !{!102, !10}
!103 = !{!13, !14, i64 224}
!104 = distinct !{!104, !10}
!105 = distinct !{!105, !10}
!106 = distinct !{!106, !10}
!107 = distinct !{!107, !10}
!108 = distinct !{!108, !10}
!109 = distinct !{!109, !10}
!110 = distinct !{!110, !10}
!111 = distinct !{!111, !10}
!112 = distinct !{!112, !10}
!113 = !{!39, !6, i64 344}
!114 = !{!39, !6, i64 352}
!115 = distinct !{!115, !10}
!116 = !{!117, !6, i64 0}
!117 = !{!"PanelCategoryStack", !6, i64 0, !6, i64 8, !7, i64 16}
!118 = !{!39, !6, i64 240}
!119 = distinct !{!119, !10}
!120 = distinct !{!120, !10}
!121 = !{!77, !15, i64 0}
!122 = !{!77, !15, i64 2}
!123 = !{!15, !15, i64 0}
!124 = !{!39, !6, i64 248}
!125 = !{!40, !14, i64 64}
!126 = !{!39, !15, i64 234}
!127 = !{!77, !15, i64 4}
!128 = !{!40, !14, i64 76}
!129 = distinct !{!129, !10}
!130 = distinct !{!130, !10}
!131 = !{!40, !14, i64 72}
!132 = !{!133, !6, i64 8}
!133 = !{!"PanelCategoryDyn", !6, i64 0, !6, i64 8, !7, i64 16, !37, i64 80}
!134 = !{!133, !14, i64 80}
!135 = distinct !{!135, !10}
!136 = distinct !{!136, !10}
!137 = distinct !{!137, !10}
!138 = distinct !{!138, !10}
!139 = !{!140, !15, i64 18}
!140 = !{!"wmEvent", !6, i64 0, !6, i64 8, !15, i64 16, !15, i64 18, !14, i64 20, !14, i64 24, !7, i64 28, !7, i64 36, !7, i64 42, !7, i64 43, !15, i64 44, !15, i64 46, !14, i64 48, !14, i64 52, !31, i64 56, !14, i64 64, !14, i64 68, !15, i64 72, !15, i64 74, !15, i64 76, !15, i64 78, !15, i64 80, !15, i64 82, !6, i64 88, !6, i64 96, !15, i64 104, !15, i64 106, !14, i64 108, !6, i64 112}
!141 = !{!140, !15, i64 16}
!142 = !{!140, !15, i64 74}
!143 = !{!133, !14, i64 84}
!144 = !{!140, !14, i64 20}
!145 = !{!140, !14, i64 24}
!146 = !{!140, !15, i64 78}
!147 = !{!140, !15, i64 72}
!148 = !{!140, !15, i64 76}
!149 = distinct !{!149, !10}
!150 = !{i64 0, i64 4, !78, i64 4, i64 4, !78, i64 8, i64 4, !78, i64 12, i64 4, !78}
!151 = !{!13, !15, i64 250}
!152 = distinct !{!152, !10}
!153 = !{i32 -32764, i32 32772}
!154 = distinct !{!154, !10}
!155 = distinct !{!155, !10}
!156 = !{!140, !6, i64 112}
!157 = !{!91, !14, i64 40}
!158 = !{!91, !14, i64 44}
!159 = !{!91, !14, i64 36}
