; ModuleID = 'blender/source/blender/editors/interface/view2d.c'
source_filename = "blender/source/blender/editors/interface/view2d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.uiStyle = type { ptr, ptr, [64 x i8], %struct.uiFontStyle, %struct.uiFontStyle, %struct.uiFontStyle, %struct.uiFontStyle, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.uiFontStyle = type { i16, i16, i16, [6 x i8], i16, i16, i16, i16, i16, i16, float, float }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.bScreen = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.BakeData = type { %struct.ImageFormatData, [1024 x i8], i16, i16, i16, i16, float, float, [3 x i8], i8, i8, [3 x i8], [64 x i8] }
%struct.AudioData = type { i32, float, float, float, i32, i16, i16, float, float }
%struct.GameFraming = type { [3 x float], i8, i8, i8, i8 }
%struct.GameData = type { %struct.GameFraming, i16, i16, i16, i16, i16, i16, i16, i16, i16, [3 x i16], %struct.GameDome, i16, i16, float, %struct.RecastData, float, float, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float }
%struct.GameDome = type { i16, i16, i16, i16, float, float, ptr }
%struct.RecastData = type { float, float, float, float, float, float, float, float, float, float, i32, float, float, i16, i16 }
%struct.UnitSettings = type { float, i8, i8, i16 }
%struct.PhysicsSettings = type { [3 x float], i32, i32, i32 }
%struct.ColorManagedViewSettings = type { i32, i32, [64 x i8], [64 x i8], float, float, ptr, ptr }
%struct.ColorManagedDisplaySettings = type { [64 x i8] }
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
%struct.View2DGrid = type { float, float, float, float, i32, i32 }
%struct.View2DScrollers = type { i32, i32, i32, i32, %struct.rcti, %struct.rcti, i32, i32, ptr, i16, i16, i16, i16 }
%struct.uiWidgetColors = type { [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], i16, i16, i16, i16 }
%struct.bTheme = type { ptr, ptr, [32 x i8], %struct.ThemeUI, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, [20 x %struct.ThemeWireColor], i32, i32 }
%struct.ThemeUI = type { %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetStateColors, %struct.uiPanelColors, [4 x i8], float, i16, [3 x i16], [256 x i8], float, [4 x i8], [4 x i8], [4 x i8] }
%struct.uiWidgetStateColors = type { [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], float, float }
%struct.uiPanelColors = type { [4 x i8], [4 x i8], i16, i16, i32 }
%struct.ThemeSpace = type { [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], %struct.uiPanelColors, %struct.uiGradientColors, [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [3 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8] }
%struct.uiGradientColors = type { [4 x i8], [4 x i8], i32, i32 }
%struct.ThemeWireColor = type { [4 x i8], [4 x i8], [4 x i8], i16, i16 }
%struct.View2DString = type { ptr, %union.anon, %struct.rcti, [2 x i32], [0 x i8] }
%union.anon = type { i32 }

@U = external local_unnamed_addr global %struct.UserDef, align 8
@G = external local_unnamed_addr global %struct.Global, align 8
@.str = private unnamed_addr constant [62 x i8] c"Error: View2D totRect set exiting: v2d=%p width=%d height=%d\0A\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"view2d tab offset\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"View2DGrid\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"View2DScrollers\00", align 1
@g_v2d_strings_arena = internal unnamed_addr global ptr null, align 8
@__func__.UI_view2d_text_cache_add = private unnamed_addr constant [25 x i8] c"UI_view2d_text_cache_add\00", align 1
@g_v2d_strings = internal unnamed_addr global ptr null, align 8
@__func__.UI_view2d_text_cache_add_rectf = private unnamed_addr constant [31 x i8] c"UI_view2d_text_cache_add_rectf\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"28\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @UI_view2d_region_reinit(ptr noundef %0, i16 noundef signext %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call ptr @UI_GetStyle() #16
  %6 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 14
  %7 = load i16, ptr %6, align 2, !tbaa !34
  %8 = and i16 %7, 1024
  %9 = icmp ne i16 %8, 0
  switch i16 %1, label %105 [
    i16 0, label %10
    i16 1, label %25
    i16 2, label %31
    i16 3, label %37
    i16 4, label %61
  ]

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 12
  store i16 3, ptr %11, align 2, !tbaa !44
  %12 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 7
  store float 0x3F847AE140000000, ptr %12, align 8, !tbaa !45
  %13 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 8
  store float 1.000000e+03, ptr %13, align 4, !tbaa !46
  %14 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 15
  store i16 10, ptr %14, align 4, !tbaa !47
  %15 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 11
  store i16 1, ptr %15, align 4, !tbaa !48
  br i1 %9, label %105, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  store float 0.000000e+00, ptr %17, align 8, !tbaa !49
  store float 0.000000e+00, ptr %0, align 8, !tbaa !50
  %18 = add nsw i32 %2, -1
  %19 = sitofp i32 %18 to float
  %20 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  store float %19, ptr %20, align 4, !tbaa !51
  %21 = add nsw i32 %3, -1
  %22 = sitofp i32 %21 to float
  %23 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  store float %22, ptr %23, align 4, !tbaa !52
  %24 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %24, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !53
  br label %105

25:                                               ; preds = %4
  %26 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 12
  store i16 771, ptr %26, align 2, !tbaa !44
  %27 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 8
  store float 1.000000e+00, ptr %27, align 4, !tbaa !46
  %28 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 7
  store float 1.000000e+00, ptr %28, align 8, !tbaa !45
  %29 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 15
  store i16 6, ptr %29, align 4, !tbaa !47
  %30 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 11
  store i16 2, ptr %30, align 4, !tbaa !48
  br label %97

31:                                               ; preds = %4
  %32 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 12
  store i16 771, ptr %32, align 2, !tbaa !44
  %33 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 8
  store float 1.000000e+00, ptr %33, align 4, !tbaa !46
  %34 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 7
  store float 1.000000e+00, ptr %34, align 8, !tbaa !45
  %35 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 15
  store i16 10, ptr %35, align 4, !tbaa !47
  %36 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 11
  store i16 2, ptr %36, align 4, !tbaa !48
  br label %97

37:                                               ; preds = %4
  %38 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 12
  store i16 771, ptr %38, align 2, !tbaa !44
  %39 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 8
  store float 1.000000e+00, ptr %39, align 4, !tbaa !46
  %40 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 7
  store float 1.000000e+00, ptr %40, align 8, !tbaa !45
  br i1 %9, label %56, label %41

41:                                               ; preds = %37
  store float 0.000000e+00, ptr %0, align 8, !tbaa !50
  %42 = sitofp i32 %2 to float
  %43 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  store float %42, ptr %43, align 4, !tbaa !51
  %44 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  store float 0.000000e+00, ptr %44, align 8, !tbaa !49
  %45 = sitofp i32 %3 to float
  %46 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  store float %45, ptr %46, align 4, !tbaa !52
  %47 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %47, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !53
  %48 = add nsw i32 %2, -1
  %49 = sitofp i32 %48 to float
  %50 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 6
  store float %49, ptr %50, align 8, !tbaa !54
  %51 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 5
  store float %49, ptr %51, align 8, !tbaa !54
  %52 = add nsw i32 %3, -1
  %53 = sitofp i32 %52 to float
  %54 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 6, i64 1
  store float %53, ptr %54, align 4, !tbaa !54
  %55 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 5, i64 1
  store float %53, ptr %55, align 4, !tbaa !54
  br label %56

56:                                               ; preds = %41, %37
  %57 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 15
  store i16 10, ptr %57, align 4, !tbaa !47
  %58 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 11
  store i16 2, ptr %58, align 4, !tbaa !48
  %59 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 13
  store i16 4, ptr %59, align 8, !tbaa !55
  %60 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 9
  store i16 0, ptr %60, align 8, !tbaa !56
  br label %97

61:                                               ; preds = %4
  %62 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 12
  store i16 7, ptr %62, align 2, !tbaa !44
  %63 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 7
  store float 5.000000e-01, ptr %63, align 8, !tbaa !45
  %64 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 8
  store float 2.000000e+00, ptr %64, align 4, !tbaa !46
  %65 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 15
  store i16 6, ptr %65, align 4, !tbaa !47
  %66 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 11
  store i16 1, ptr %66, align 4, !tbaa !48
  %67 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 9
  %68 = load i16, ptr %67, align 8, !tbaa !56
  %69 = or i16 %68, 384
  store i16 %69, ptr %67, align 8, !tbaa !56
  br i1 %9, label %105, label %70

70:                                               ; preds = %61
  %71 = icmp eq ptr %5, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %70
  %73 = getelementptr inbounds %struct.uiStyle, ptr %5, i64 0, i32 7
  %74 = load float, ptr %73, align 8, !tbaa !57
  br label %75

75:                                               ; preds = %70, %72
  %76 = phi float [ %74, %72 ], [ 1.000000e+00, %70 ]
  %77 = and i16 %68, 2
  %78 = icmp eq i16 %77, 0
  %79 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4
  %80 = sitofp i16 %79 to float
  %81 = fmul float %80, 0x3FEB333340000000
  %82 = select i1 %78, float 0.000000e+00, float %81
  store float 0.000000e+00, ptr %0, align 8, !tbaa !50
  %83 = sitofp i32 %2 to float
  %84 = fsub float %83, %82
  %85 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  store float %84, ptr %85, align 4, !tbaa !51
  %86 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  store float 0.000000e+00, ptr %86, align 4, !tbaa !52
  %87 = sub nsw i32 0, %3
  %88 = sitofp i32 %87 to float
  %89 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  store float %88, ptr %89, align 8, !tbaa !49
  %90 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1
  store float 0.000000e+00, ptr %90, align 8, !tbaa !60
  %91 = fneg float %82
  %92 = tail call float @llvm.fmuladd.f32(float %83, float %76, float %91)
  %93 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 1
  store float %92, ptr %93, align 4, !tbaa !61
  %94 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 3
  store float 0.000000e+00, ptr %94, align 4, !tbaa !62
  %95 = fmul float %76, %88
  %96 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 2
  store float %95, ptr %96, align 8, !tbaa !63
  br label %105

97:                                               ; preds = %56, %31, %25
  %98 = or i16 %7, 1024
  store i16 %98, ptr %6, align 2, !tbaa !34
  %99 = trunc i32 %2 to i16
  %100 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 16
  store i16 %99, ptr %100, align 2, !tbaa !64
  %101 = trunc i32 %3 to i16
  %102 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 17
  store i16 %101, ptr %102, align 8, !tbaa !65
  tail call fastcc void @view2d_masks(ptr noundef %0, i32 noundef 0)
  br i1 %9, label %111, label %103

103:                                              ; preds = %97
  %104 = zext i1 %9 to i32
  tail call void @UI_view2d_totRect_set_resize(ptr noundef %0, i32 noundef %2, i32 noundef %3, i32 noundef %104)
  br label %114

105:                                              ; preds = %10, %16, %61, %75, %4
  %106 = or i16 %7, 1024
  store i16 %106, ptr %6, align 2, !tbaa !34
  %107 = trunc i32 %2 to i16
  %108 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 16
  store i16 %107, ptr %108, align 2, !tbaa !64
  %109 = trunc i32 %3 to i16
  %110 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 17
  store i16 %109, ptr %110, align 8, !tbaa !65
  tail call fastcc void @view2d_masks(ptr noundef %0, i32 noundef 0)
  br label %111

111:                                              ; preds = %105, %97
  %112 = lshr exact i16 %8, 10
  %113 = zext nneg i16 %112 to i32
  tail call fastcc void @ui_view2d_curRect_validate_resize(ptr noundef %0, i32 noundef %113, i32 noundef 0)
  br label %114

114:                                              ; preds = %111, %103
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @UI_GetStyle() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @view2d_masks(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4
  %4 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4, i32 2
  store i32 0, ptr %4, align 8, !tbaa !66
  store i32 0, ptr %3, align 8, !tbaa !67
  %5 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 16
  %6 = load i16, ptr %5, align 2, !tbaa !64
  %7 = sext i16 %6 to i32
  %8 = add nsw i32 %7, -1
  %9 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4, i32 1
  store i32 %8, ptr %9, align 4, !tbaa !68
  %10 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 17
  %11 = load i16, ptr %10, align 8, !tbaa !65
  %12 = sext i16 %11 to i32
  %13 = add nsw i32 %12, -1
  %14 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4, i32 3
  store i32 %13, ptr %14, align 4, !tbaa !69
  %15 = icmp eq i32 %1, 0
  br i1 %15, label %55, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 9
  %18 = load i16, ptr %17, align 8, !tbaa !56
  %19 = and i16 %18, 320
  %20 = icmp eq i16 %19, 256
  br i1 %20, label %21, label %35

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %23 = load float, ptr %22, align 4, !tbaa !70
  %24 = load float, ptr %0, align 4, !tbaa !71
  %25 = fsub float %23, %24
  %26 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1
  %27 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 1
  %28 = load float, ptr %27, align 4, !tbaa !70
  %29 = load float, ptr %26, align 4, !tbaa !71
  %30 = fsub float %28, %29
  %31 = fcmp ogt float %25, %30
  %32 = or i16 %18, 1024
  %33 = and i16 %18, -1089
  %34 = select i1 %31, i16 %33, i16 %32
  store i16 %34, ptr %17, align 8, !tbaa !56
  br label %35

35:                                               ; preds = %21, %16
  %36 = load i16, ptr %17, align 8, !tbaa !56
  %37 = and i16 %36, 160
  %38 = icmp eq i16 %37, 128
  br i1 %38, label %39, label %55

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %41 = load float, ptr %40, align 4, !tbaa !72
  %42 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %43 = load float, ptr %42, align 4, !tbaa !73
  %44 = fsub float %41, %43
  %45 = fadd float %44, 0x3F847AE140000000
  %46 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 3
  %47 = load float, ptr %46, align 4, !tbaa !72
  %48 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 2
  %49 = load float, ptr %48, align 4, !tbaa !73
  %50 = fsub float %47, %49
  %51 = fcmp ogt float %45, %50
  %52 = and i16 %36, -545
  %53 = or i16 %36, 512
  %54 = select i1 %51, i16 %52, i16 %53
  store i16 %54, ptr %17, align 8, !tbaa !56
  br label %55

55:                                               ; preds = %39, %35, %2
  %56 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 9
  %57 = load i16, ptr %56, align 8, !tbaa !56
  %58 = sext i16 %57 to i32
  %59 = and i32 %58, 1024
  %60 = icmp eq i32 %59, 0
  %61 = and i32 %58, -13
  %62 = select i1 %60, i32 %58, i32 %61
  %63 = and i32 %62, 512
  %64 = icmp eq i32 %63, 0
  %65 = and i32 %62, -4
  %66 = select i1 %64, i32 %62, i32 %65
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %131, label %68

68:                                               ; preds = %55
  %69 = and i32 %66, 1
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %79, label %71

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %72, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !74
  %73 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !76
  %74 = sitofp i16 %73 to float
  %75 = fmul float %74, 0x3FEB333340000000
  %76 = fptosi float %75 to i32
  %77 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 2, i32 1
  store i32 %76, ptr %77, align 4, !tbaa !81
  %78 = add nsw i32 %76, 1
  store i32 %78, ptr %3, align 8, !tbaa !67
  br label %93

79:                                               ; preds = %68
  %80 = and i32 %66, 2
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %93, label %82

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %83, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !74
  %84 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 2, i32 1
  %85 = load i32, ptr %84, align 4, !tbaa !81
  %86 = add nsw i32 %85, 1
  store i32 %86, ptr %84, align 4, !tbaa !81
  %87 = sitofp i32 %86 to float
  %88 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !76
  %89 = sitofp i16 %88 to float
  %90 = tail call float @llvm.fmuladd.f32(float %89, float 0xBFEB333340000000, float %87)
  %91 = fptosi float %90 to i32
  store i32 %91, ptr %83, align 8, !tbaa !82
  %92 = add nsw i32 %91, -1
  store i32 %92, ptr %9, align 4, !tbaa !68
  br label %93

93:                                               ; preds = %79, %82, %71
  %94 = and i32 %66, 8
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %104, label %96

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %97, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !74
  %98 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !76
  %99 = sitofp i16 %98 to float
  %100 = fmul float %99, 0x3FEB333340000000
  %101 = fptosi float %100 to i32
  %102 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 3, i32 3
  store i32 %101, ptr %102, align 4, !tbaa !83
  %103 = add nsw i32 %101, 1
  store i32 %103, ptr %4, align 8, !tbaa !66
  br label %118

104:                                              ; preds = %93
  %105 = and i32 %66, 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %118, label %107

107:                                              ; preds = %104
  %108 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %108, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !74
  %109 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 3, i32 3
  %110 = load i32, ptr %109, align 4, !tbaa !83
  %111 = sitofp i32 %110 to float
  %112 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !76
  %113 = sitofp i16 %112 to float
  %114 = tail call float @llvm.fmuladd.f32(float %113, float 0xBFEB333340000000, float %111)
  %115 = fptosi float %114 to i32
  %116 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 3, i32 2
  store i32 %115, ptr %116, align 8, !tbaa !84
  %117 = add nsw i32 %115, -1
  store i32 %117, ptr %14, align 4, !tbaa !69
  br label %118

118:                                              ; preds = %104, %107, %96
  %119 = and i32 %66, 3
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %131, label %121

121:                                              ; preds = %118
  br i1 %95, label %125, label %122

122:                                              ; preds = %121
  %123 = load i32, ptr %4, align 8, !tbaa !66
  %124 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 2, i32 2
  store i32 %123, ptr %124, align 8, !tbaa !85
  br label %131

125:                                              ; preds = %121
  %126 = and i32 %66, 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %125
  %129 = load i32, ptr %14, align 4, !tbaa !69
  %130 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 2, i32 3
  store i32 %129, ptr %130, align 4, !tbaa !86
  br label %131

131:                                              ; preds = %118, %125, %128, %122, %55
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @UI_view2d_totRect_set_resize(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #6 {
  %5 = tail call i32 @llvm.abs.i32(i32 %1, i1 true)
  %6 = tail call i32 @llvm.abs.i32(i32 %2, i1 true)
  %7 = icmp eq i32 %1, 0
  %8 = icmp eq i32 %2, 0
  %9 = or i1 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %4
  %11 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !87
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %49, label %14

14:                                               ; preds = %10
  %15 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef %0, i32 noundef %5, i32 noundef %6)
  br label %49

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 15
  %18 = load i16, ptr %17, align 4, !tbaa !47
  %19 = zext i16 %18 to i32
  %20 = and i32 %19, 3
  switch i32 %20, label %26 [
    i32 1, label %21
    i32 2, label %24
  ]

21:                                               ; preds = %16
  %22 = sub nsw i32 0, %5
  %23 = sitofp i32 %22 to float
  store float %23, ptr %0, align 8, !tbaa !50
  br label %30

24:                                               ; preds = %16
  store float 0.000000e+00, ptr %0, align 8, !tbaa !50
  %25 = sitofp i32 %5 to float
  br label %30

26:                                               ; preds = %16
  %27 = sitofp i32 %5 to float
  %28 = fmul float %27, 5.000000e-01
  %29 = fneg float %28
  store float %29, ptr %0, align 8, !tbaa !50
  br label %30

30:                                               ; preds = %24, %26, %21
  %31 = phi float [ %25, %24 ], [ %28, %26 ], [ 0.000000e+00, %21 ]
  %32 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  store float %31, ptr %32, align 4, !tbaa !51
  %33 = and i32 %19, 12
  switch i32 %33, label %41 [
    i32 4, label %34
    i32 8, label %38
  ]

34:                                               ; preds = %30
  %35 = sub nsw i32 0, %6
  %36 = sitofp i32 %35 to float
  %37 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  store float %36, ptr %37, align 8, !tbaa !49
  br label %46

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  store float 0.000000e+00, ptr %39, align 8, !tbaa !49
  %40 = sitofp i32 %6 to float
  br label %46

41:                                               ; preds = %30
  %42 = sitofp i32 %6 to float
  %43 = fmul float %42, 5.000000e-01
  %44 = fneg float %43
  %45 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  store float %44, ptr %45, align 8, !tbaa !49
  br label %46

46:                                               ; preds = %38, %41, %34
  %47 = phi float [ %40, %38 ], [ %43, %41 ], [ 0.000000e+00, %34 ]
  %48 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  store float %47, ptr %48, align 4, !tbaa !52
  tail call fastcc void @ui_view2d_curRect_validate_resize(ptr noundef %0, i32 noundef %3, i32 noundef 1)
  br label %49

49:                                               ; preds = %10, %14, %46
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ui_view2d_curRect_validate_resize(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4
  %5 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !89
  %7 = load i32, ptr %4, align 4, !tbaa !90
  %8 = sub nsw i32 %6, %7
  %9 = add nsw i32 %8, 1
  %10 = sitofp i32 %9 to float
  %11 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !91
  %13 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !92
  %15 = sub nsw i32 %12, %14
  %16 = add nsw i32 %15, 1
  %17 = sitofp i32 %16 to float
  %18 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1
  %19 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %20 = load float, ptr %19, align 4, !tbaa !70
  %21 = load float, ptr %0, align 4, !tbaa !71
  %22 = fsub float %20, %21
  %23 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %24 = load float, ptr %23, align 4, !tbaa !72
  %25 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %26 = load float, ptr %25, align 4, !tbaa !73
  %27 = fsub float %24, %26
  %28 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 1
  %29 = load float, ptr %28, align 4, !tbaa !70
  %30 = load float, ptr %18, align 4, !tbaa !71
  %31 = fsub float %29, %30
  %32 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 3
  %33 = load float, ptr %32, align 4, !tbaa !72
  %34 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 2
  %35 = load float, ptr %34, align 4, !tbaa !73
  %36 = fsub float %33, %35
  %37 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 12
  %38 = load i16, ptr %37, align 2, !tbaa !44
  %39 = and i16 %38, 256
  %40 = icmp eq i16 %39, 0
  %41 = select i1 %40, float %31, float %10
  %42 = and i16 %38, 512
  %43 = icmp eq i16 %42, 0
  %44 = select i1 %43, float %36, float %17
  %45 = fcmp olt float %41, 0x3810000000000000
  %46 = select i1 %45, float 1.000000e+00, float %41
  %47 = fcmp olt float %44, 0x3810000000000000
  %48 = select i1 %47, float 1.000000e+00, float %44
  %49 = icmp slt i32 %8, 0
  %50 = select i1 %49, float 1.000000e+00, float %10
  %51 = icmp slt i32 %15, 0
  %52 = select i1 %51, float 1.000000e+00, float %17
  %53 = icmp eq i32 %1, 0
  br i1 %53, label %83, label %54

54:                                               ; preds = %3
  %55 = zext i16 %38 to i32
  %56 = and i32 %55, 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %83, label %58

58:                                               ; preds = %54
  %59 = and i32 %55, 256
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %58
  %62 = fdiv float %50, %46
  %63 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 18
  %64 = load i16, ptr %63, align 2, !tbaa !93
  %65 = sitofp i16 %64 to float
  %66 = fdiv float %65, %31
  %67 = fcmp une float %66, %62
  br i1 %67, label %68, label %71

68:                                               ; preds = %61
  %69 = fdiv float %62, %66
  %70 = fmul float %46, %69
  br label %71

71:                                               ; preds = %61, %68, %58
  %72 = phi float [ %70, %68 ], [ %46, %61 ], [ %46, %58 ]
  br i1 %43, label %73, label %137

73:                                               ; preds = %71
  %74 = fdiv float %52, %48
  %75 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 19
  %76 = load i16, ptr %75, align 4, !tbaa !94
  %77 = sitofp i16 %76 to float
  %78 = fdiv float %77, %36
  %79 = fcmp une float %78, %74
  br i1 %79, label %80, label %137

80:                                               ; preds = %73
  %81 = fdiv float %74, %78
  %82 = fmul float %48, %81
  br label %137

83:                                               ; preds = %54, %3
  %84 = zext i16 %38 to i32
  %85 = and i32 %84, 1
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %118, label %87

87:                                               ; preds = %83
  %88 = and i32 %84, 256
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %103

90:                                               ; preds = %87
  %91 = fdiv float %50, %46
  %92 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 7
  %93 = load float, ptr %92, align 8, !tbaa !45
  %94 = fcmp olt float %91, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %90
  %96 = fdiv float %50, %93
  br label %103

97:                                               ; preds = %90
  %98 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 8
  %99 = load float, ptr %98, align 4, !tbaa !46
  %100 = fcmp ogt float %91, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %97
  %102 = fdiv float %50, %99
  br label %103

103:                                              ; preds = %95, %101, %97, %87
  %104 = phi float [ %46, %87 ], [ %96, %95 ], [ %102, %101 ], [ %46, %97 ]
  br i1 %43, label %105, label %137

105:                                              ; preds = %103
  %106 = fdiv float %52, %48
  %107 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 7
  %108 = load float, ptr %107, align 8, !tbaa !45
  %109 = fcmp olt float %106, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %105
  %111 = fdiv float %52, %108
  br label %137

112:                                              ; preds = %105
  %113 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 8
  %114 = load float, ptr %113, align 4, !tbaa !46
  %115 = fcmp ogt float %106, %114
  br i1 %115, label %116, label %137

116:                                              ; preds = %112
  %117 = fdiv float %52, %114
  br label %137

118:                                              ; preds = %83
  %119 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 5
  %120 = load float, ptr %119, align 8, !tbaa !54
  %121 = fcmp olt float %46, %120
  br i1 %121, label %127, label %122

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 6
  %124 = load float, ptr %123, align 8, !tbaa !54
  %125 = fcmp ogt float %46, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %122
  br label %127

127:                                              ; preds = %118, %122, %126
  %128 = phi float [ %124, %126 ], [ %46, %122 ], [ %120, %118 ]
  %129 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 5, i64 1
  %130 = load float, ptr %129, align 4, !tbaa !54
  %131 = fcmp olt float %48, %130
  br i1 %131, label %137, label %132

132:                                              ; preds = %127
  %133 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 6, i64 1
  %134 = load float, ptr %133, align 4, !tbaa !54
  %135 = fcmp ogt float %48, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %132
  br label %137

137:                                              ; preds = %127, %110, %116, %112, %71, %80, %73, %103, %132, %136
  %138 = phi float [ %48, %103 ], [ %134, %136 ], [ %48, %132 ], [ %82, %80 ], [ %48, %73 ], [ %48, %71 ], [ %111, %110 ], [ %117, %116 ], [ %48, %112 ], [ %130, %127 ]
  %139 = phi float [ %104, %103 ], [ %128, %136 ], [ %128, %132 ], [ %72, %80 ], [ %72, %73 ], [ %72, %71 ], [ %104, %110 ], [ %104, %116 ], [ %104, %112 ], [ %128, %127 ]
  %140 = and i16 %38, 2
  %141 = icmp eq i16 %140, 0
  br i1 %141, label %205, label %142

142:                                              ; preds = %137
  %143 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 18
  %144 = load i16, ptr %143, align 2, !tbaa !93
  %145 = sitofp i16 %144 to float
  %146 = fcmp une float %50, %145
  %147 = zext i1 %146 to i8
  %148 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 19
  %149 = load i16, ptr %148, align 4, !tbaa !94
  %150 = sitofp i16 %149 to float
  %151 = fcmp une float %52, %150
  %152 = fdiv float %52, %50
  %153 = xor i1 %146, %151
  br i1 %153, label %166, label %154

154:                                              ; preds = %142
  %155 = and i1 %146, %151
  br i1 %155, label %156, label %163

156:                                              ; preds = %154
  %157 = fsub float %50, %145
  %158 = tail call float @llvm.fabs.f32(float %157)
  %159 = fsub float %52, %150
  %160 = tail call float @llvm.fabs.f32(float %159)
  %161 = fcmp ogt float %158, %160
  %162 = select i1 %161, i8 %147, i8 0
  br label %166

163:                                              ; preds = %154
  %164 = fcmp ule float %152, 1.000000e+00
  %165 = zext i1 %164 to i8
  br label %166

166:                                              ; preds = %163, %156, %142
  %167 = phi i8 [ %147, %142 ], [ %162, %156 ], [ %165, %163 ]
  %168 = icmp eq i8 %167, 0
  %169 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 11
  %170 = load i16, ptr %169, align 4, !tbaa !48
  %171 = icmp eq i16 %170, 2
  br i1 %168, label %182, label %172

172:                                              ; preds = %166
  %173 = and i1 %146, %171
  br i1 %173, label %174, label %180

174:                                              ; preds = %172
  %175 = fcmp olt float %50, %145
  br i1 %175, label %176, label %200

176:                                              ; preds = %174
  %177 = fsub float %145, %50
  %178 = fsub float %30, %177
  store float %178, ptr %18, align 4, !tbaa !71
  %179 = fsub float %29, %177
  store float %179, ptr %28, align 4, !tbaa !70
  br label %200

180:                                              ; preds = %172
  %181 = fdiv float %138, %152
  br label %200

182:                                              ; preds = %166
  %183 = and i1 %151, %171
  br i1 %183, label %184, label %198

184:                                              ; preds = %182
  %185 = fcmp olt float %52, %150
  br i1 %185, label %186, label %200

186:                                              ; preds = %184
  %187 = fsub float %150, %52
  %188 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 15
  %189 = load i16, ptr %188, align 4, !tbaa !47
  %190 = and i16 %189, 8
  %191 = icmp eq i16 %190, 0
  br i1 %191, label %195, label %192

192:                                              ; preds = %186
  %193 = fsub float %35, %187
  store float %193, ptr %34, align 4, !tbaa !73
  %194 = fsub float %33, %187
  store float %194, ptr %32, align 4, !tbaa !72
  br label %200

195:                                              ; preds = %186
  %196 = fadd float %35, %187
  store float %196, ptr %34, align 4, !tbaa !73
  %197 = fadd float %33, %187
  store float %197, ptr %32, align 4, !tbaa !72
  br label %200

198:                                              ; preds = %182
  %199 = fmul float %152, %139
  br label %200

200:                                              ; preds = %192, %195, %198, %184, %180, %176, %174
  %201 = phi float [ %138, %176 ], [ %138, %174 ], [ %138, %180 ], [ %138, %184 ], [ %199, %198 ], [ %138, %195 ], [ %138, %192 ]
  %202 = phi float [ %139, %176 ], [ %139, %174 ], [ %181, %180 ], [ %139, %184 ], [ %139, %198 ], [ %139, %195 ], [ %139, %192 ]
  %203 = fptosi float %50 to i16
  store i16 %203, ptr %143, align 2, !tbaa !93
  %204 = fptosi float %52 to i16
  store i16 %204, ptr %148, align 4, !tbaa !94
  br label %205

205:                                              ; preds = %200, %137
  %206 = phi float [ %201, %200 ], [ %138, %137 ]
  %207 = phi float [ %202, %200 ], [ %139, %137 ]
  %208 = fcmp une float %207, %31
  %209 = fcmp une float %206, %36
  %210 = select i1 %208, i1 true, i1 %209
  br i1 %210, label %211, label %285

211:                                              ; preds = %205
  br i1 %208, label %212, label %248

212:                                              ; preds = %211
  %213 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 13
  %214 = load i16, ptr %213, align 8, !tbaa !55
  %215 = zext i16 %214 to i32
  %216 = and i32 %215, 2
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %224, label %218

218:                                              ; preds = %212
  %219 = load float, ptr %28, align 4, !tbaa !70
  %220 = load float, ptr %18, align 4, !tbaa !71
  %221 = fsub float %219, %220
  %222 = fsub float %207, %221
  %223 = fadd float %219, %222
  store float %223, ptr %28, align 4, !tbaa !70
  br label %248

224:                                              ; preds = %212
  %225 = and i32 %215, 8
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %240, label %227

227:                                              ; preds = %224
  %228 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 15
  %229 = load i16, ptr %228, align 4, !tbaa !47
  %230 = and i16 %229, 1
  %231 = icmp eq i16 %230, 0
  %232 = load float, ptr %28, align 4, !tbaa !70
  %233 = load float, ptr %18, align 4, !tbaa !71
  %234 = fsub float %232, %233
  %235 = fsub float %207, %234
  br i1 %231, label %238, label %236

236:                                              ; preds = %227
  %237 = fsub float %233, %235
  store float %237, ptr %18, align 4, !tbaa !71
  br label %248

238:                                              ; preds = %227
  %239 = fadd float %232, %235
  store float %239, ptr %28, align 4, !tbaa !70
  br label %248

240:                                              ; preds = %224
  %241 = load float, ptr %18, align 4, !tbaa !71
  %242 = load float, ptr %28, align 4, !tbaa !70
  %243 = fadd float %241, %242
  %244 = fmul float %243, 5.000000e-01
  %245 = fmul float %207, 5.000000e-01
  %246 = fsub float %244, %245
  store float %246, ptr %18, align 4, !tbaa !71
  %247 = fadd float %245, %244
  store float %247, ptr %28, align 4, !tbaa !70
  br label %248

248:                                              ; preds = %218, %236, %238, %240, %211
  br i1 %209, label %249, label %285

249:                                              ; preds = %248
  %250 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 13
  %251 = load i16, ptr %250, align 8, !tbaa !55
  %252 = zext i16 %251 to i32
  %253 = and i32 %252, 4
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %261, label %255

255:                                              ; preds = %249
  %256 = load float, ptr %32, align 4, !tbaa !72
  %257 = load float, ptr %34, align 4, !tbaa !73
  %258 = fsub float %256, %257
  %259 = fsub float %206, %258
  %260 = fadd float %256, %259
  store float %260, ptr %32, align 4, !tbaa !72
  br label %285

261:                                              ; preds = %249
  %262 = and i32 %252, 16
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %277, label %264

264:                                              ; preds = %261
  %265 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 15
  %266 = load i16, ptr %265, align 4, !tbaa !47
  %267 = and i16 %266, 4
  %268 = icmp eq i16 %267, 0
  %269 = load float, ptr %32, align 4, !tbaa !72
  %270 = load float, ptr %34, align 4, !tbaa !73
  %271 = fsub float %269, %270
  %272 = fsub float %206, %271
  br i1 %268, label %275, label %273

273:                                              ; preds = %264
  %274 = fsub float %270, %272
  store float %274, ptr %34, align 4, !tbaa !73
  br label %285

275:                                              ; preds = %264
  %276 = fadd float %269, %272
  store float %276, ptr %32, align 4, !tbaa !72
  br label %285

277:                                              ; preds = %261
  %278 = load float, ptr %34, align 4, !tbaa !73
  %279 = load float, ptr %32, align 4, !tbaa !72
  %280 = fadd float %278, %279
  %281 = fmul float %280, 5.000000e-01
  %282 = fmul float %206, 5.000000e-01
  %283 = fsub float %281, %282
  store float %283, ptr %34, align 4, !tbaa !73
  %284 = fadd float %282, %281
  store float %284, ptr %32, align 4, !tbaa !72
  br label %285

285:                                              ; preds = %248, %277, %275, %273, %255, %205
  %286 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 11
  %287 = load i16, ptr %286, align 4, !tbaa !48
  %288 = icmp eq i16 %287, 0
  br i1 %288, label %385, label %289

289:                                              ; preds = %285
  %290 = load float, ptr %28, align 4, !tbaa !70
  %291 = load float, ptr %18, align 4, !tbaa !71
  %292 = fsub float %290, %291
  %293 = load float, ptr %32, align 4, !tbaa !72
  %294 = load float, ptr %34, align 4, !tbaa !73
  %295 = fsub float %293, %294
  %296 = fcmp ogt float %292, %22
  %297 = and i16 %38, 261
  %298 = icmp eq i16 %297, 0
  %299 = select i1 %296, i1 %298, i1 false
  br i1 %299, label %300, label %305

300:                                              ; preds = %289
  %301 = fcmp olt float %291, %21
  br i1 %301, label %302, label %303

302:                                              ; preds = %300
  store float %21, ptr %18, align 4, !tbaa !71
  br label %303

303:                                              ; preds = %302, %300
  %304 = fcmp ogt float %290, %20
  br i1 %304, label %351, label %353

305:                                              ; preds = %289
  %306 = icmp eq i16 %287, 2
  %307 = fcmp olt float %291, %21
  br i1 %306, label %308, label %325

308:                                              ; preds = %305
  br i1 %307, label %309, label %313

309:                                              ; preds = %308
  %310 = fsub float %21, %291
  %311 = fadd float %291, %310
  store float %311, ptr %18, align 4, !tbaa !71
  %312 = fadd float %290, %310
  br label %351

313:                                              ; preds = %308
  %314 = fcmp ogt float %290, %20
  br i1 %314, label %315, label %353

315:                                              ; preds = %313
  %316 = fsub float %290, %20
  %317 = fsub float %291, %316
  %318 = fcmp olt float %317, %21
  br i1 %318, label %319, label %323

319:                                              ; preds = %315
  %320 = fsub float %291, %21
  %321 = fsub float %291, %320
  store float %321, ptr %18, align 4, !tbaa !71
  %322 = fsub float %290, %320
  br label %351

323:                                              ; preds = %315
  store float %317, ptr %18, align 4, !tbaa !71
  %324 = fsub float %290, %316
  br label %351

325:                                              ; preds = %305
  %326 = fcmp ogt float %290, %20
  %327 = select i1 %307, i1 %326, i1 false
  br i1 %327, label %328, label %334

328:                                              ; preds = %325
  %329 = fadd float %20, %21
  %330 = fmul float %329, 5.000000e-01
  %331 = fmul float %292, 5.000000e-01
  %332 = fsub float %330, %331
  store float %332, ptr %18, align 4, !tbaa !71
  %333 = fadd float %330, %331
  br label %351

334:                                              ; preds = %325
  br i1 %307, label %335, label %339

335:                                              ; preds = %334
  %336 = fsub float %21, %291
  %337 = fadd float %291, %336
  store float %337, ptr %18, align 4, !tbaa !71
  %338 = fadd float %290, %336
  br label %351

339:                                              ; preds = %334
  %340 = fcmp ogt float %290, %20
  br i1 %340, label %341, label %353

341:                                              ; preds = %339
  %342 = fsub float %290, %20
  %343 = fsub float %291, %342
  %344 = fcmp olt float %343, %21
  br i1 %344, label %345, label %349

345:                                              ; preds = %341
  %346 = fsub float %291, %21
  %347 = fsub float %291, %346
  store float %347, ptr %18, align 4, !tbaa !71
  %348 = fsub float %290, %346
  br label %351

349:                                              ; preds = %341
  store float %343, ptr %18, align 4, !tbaa !71
  %350 = fsub float %290, %342
  br label %351

351:                                              ; preds = %303, %328, %349, %345, %335, %309, %319, %323
  %352 = phi float [ %324, %323 ], [ %322, %319 ], [ %312, %309 ], [ %338, %335 ], [ %348, %345 ], [ %350, %349 ], [ %333, %328 ], [ %20, %303 ]
  store float %352, ptr %28, align 4, !tbaa !70
  br label %353

353:                                              ; preds = %351, %313, %339, %303
  %354 = fcmp ogt float %295, %27
  %355 = and i16 %38, 517
  %356 = icmp eq i16 %355, 0
  %357 = select i1 %354, i1 %356, i1 false
  %358 = fcmp olt float %294, %26
  br i1 %357, label %359, label %363

359:                                              ; preds = %353
  br i1 %358, label %360, label %361

360:                                              ; preds = %359
  store float %26, ptr %34, align 4, !tbaa !73
  br label %361

361:                                              ; preds = %360, %359
  %362 = fcmp ogt float %293, %24
  br i1 %362, label %383, label %385

363:                                              ; preds = %353
  %364 = fcmp ogt float %293, %24
  %365 = select i1 %358, i1 %364, i1 false
  br i1 %365, label %366, label %372

366:                                              ; preds = %363
  %367 = fadd float %24, %26
  %368 = fmul float %367, 5.000000e-01
  %369 = fmul float %295, 5.000000e-01
  %370 = fsub float %368, %369
  store float %370, ptr %34, align 4, !tbaa !73
  %371 = fadd float %368, %369
  br label %383

372:                                              ; preds = %363
  br i1 %358, label %373, label %377

373:                                              ; preds = %372
  %374 = fsub float %26, %294
  %375 = fadd float %294, %374
  store float %375, ptr %34, align 4, !tbaa !73
  %376 = fadd float %293, %374
  br label %383

377:                                              ; preds = %372
  %378 = fcmp ogt float %293, %24
  br i1 %378, label %379, label %385

379:                                              ; preds = %377
  %380 = fsub float %293, %24
  %381 = fsub float %294, %380
  store float %381, ptr %34, align 4, !tbaa !73
  %382 = fsub float %293, %380
  br label %383

383:                                              ; preds = %361, %366, %379, %373
  %384 = phi float [ %376, %373 ], [ %382, %379 ], [ %371, %366 ], [ %24, %361 ]
  store float %384, ptr %32, align 4, !tbaa !72
  br label %385

385:                                              ; preds = %383, %361, %377, %285
  %386 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 15
  %387 = load i16, ptr %386, align 4, !tbaa !47
  %388 = icmp eq i16 %387, 0
  br i1 %388, label %418, label %389

389:                                              ; preds = %385
  %390 = zext i16 %387 to i32
  %391 = and i32 %390, 3
  switch i32 %391, label %404 [
    i32 1, label %392
    i32 2, label %398
  ]

392:                                              ; preds = %389
  %393 = load float, ptr %28, align 4, !tbaa !61
  %394 = fcmp ogt float %393, 0.000000e+00
  br i1 %394, label %395, label %404

395:                                              ; preds = %392
  %396 = load float, ptr %18, align 8, !tbaa !60
  %397 = fsub float %396, %393
  store float %397, ptr %18, align 8, !tbaa !60
  store float 0.000000e+00, ptr %28, align 4, !tbaa !61
  br label %404

398:                                              ; preds = %389
  %399 = load float, ptr %18, align 8, !tbaa !60
  %400 = fcmp olt float %399, 0.000000e+00
  br i1 %400, label %401, label %404

401:                                              ; preds = %398
  %402 = load float, ptr %28, align 4, !tbaa !61
  %403 = fsub float %402, %399
  store float %403, ptr %28, align 4, !tbaa !61
  store float 0.000000e+00, ptr %18, align 8, !tbaa !60
  br label %404

404:                                              ; preds = %389, %401, %398, %392, %395
  %405 = and i32 %390, 12
  switch i32 %405, label %418 [
    i32 4, label %406
    i32 8, label %412
  ]

406:                                              ; preds = %404
  %407 = load float, ptr %32, align 4, !tbaa !62
  %408 = fcmp ogt float %407, 0.000000e+00
  br i1 %408, label %409, label %418

409:                                              ; preds = %406
  %410 = load float, ptr %34, align 8, !tbaa !63
  %411 = fsub float %410, %407
  store float %411, ptr %34, align 8, !tbaa !63
  store float 0.000000e+00, ptr %32, align 4, !tbaa !62
  br label %418

412:                                              ; preds = %404
  %413 = load float, ptr %34, align 8, !tbaa !63
  %414 = fcmp olt float %413, 0.000000e+00
  br i1 %414, label %415, label %418

415:                                              ; preds = %412
  %416 = load float, ptr %32, align 4, !tbaa !62
  %417 = fsub float %416, %413
  store float %417, ptr %32, align 4, !tbaa !62
  store float 0.000000e+00, ptr %34, align 8, !tbaa !63
  br label %418

418:                                              ; preds = %404, %409, %406, %412, %415, %385
  tail call fastcc void @view2d_masks(ptr noundef nonnull %0, i32 noundef %2)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @UI_view2d_curRect_validate(ptr noundef %0) local_unnamed_addr #5 {
  tail call fastcc void @ui_view2d_curRect_validate_resize(ptr noundef %0, i32 noundef 0, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @UI_view2d_sync(ptr noundef readonly %0, ptr noundef readonly %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.View2D, ptr %2, i64 0, i32 14
  %6 = load i16, ptr %5, align 2, !tbaa !34
  %7 = zext i16 %6 to i32
  %8 = and i32 %7, 3
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %97, label %10

10:                                               ; preds = %4
  %11 = and i32 %7, 2
  %12 = icmp ne i32 %11, 0
  %13 = icmp ne ptr %1, null
  %14 = and i1 %13, %12
  br i1 %14, label %15, label %49

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 20
  %17 = load ptr, ptr %16, align 8, !tbaa !95
  %18 = icmp eq ptr %17, null
  br i1 %18, label %49, label %19

19:                                               ; preds = %15
  %20 = icmp eq i32 %3, 1
  %21 = getelementptr inbounds %struct.View2D, ptr %2, i64 0, i32 1, i32 2
  %22 = getelementptr inbounds %struct.View2D, ptr %2, i64 0, i32 1, i32 3
  %23 = getelementptr inbounds %struct.View2D, ptr %2, i64 0, i32 1, i32 2
  %24 = getelementptr inbounds %struct.View2D, ptr %2, i64 0, i32 1, i32 3
  br label %25

25:                                               ; preds = %19, %46
  %26 = phi ptr [ %17, %19 ], [ %47, %46 ]
  %27 = getelementptr inbounds %struct.ARegion, ptr %26, i64 0, i32 2
  %28 = icmp eq ptr %27, %2
  br i1 %28, label %46, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.ARegion, ptr %26, i64 0, i32 2, i32 14
  %31 = load i16, ptr %30, align 2, !tbaa !96
  %32 = and i16 %31, 2
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %29
  br i1 %20, label %35, label %40

35:                                               ; preds = %34
  %36 = load float, ptr %23, align 8, !tbaa !63
  %37 = getelementptr inbounds %struct.ARegion, ptr %26, i64 0, i32 2, i32 1, i32 2
  store float %36, ptr %37, align 8, !tbaa !98
  %38 = load float, ptr %24, align 4, !tbaa !62
  %39 = getelementptr inbounds %struct.ARegion, ptr %26, i64 0, i32 2, i32 1, i32 3
  store float %38, ptr %39, align 4, !tbaa !99
  br label %45

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.ARegion, ptr %26, i64 0, i32 2, i32 1, i32 2
  %42 = load float, ptr %41, align 8, !tbaa !98
  store float %42, ptr %21, align 8, !tbaa !63
  %43 = getelementptr inbounds %struct.ARegion, ptr %26, i64 0, i32 2, i32 1, i32 3
  %44 = load float, ptr %43, align 4, !tbaa !99
  store float %44, ptr %22, align 4, !tbaa !62
  br label %45

45:                                               ; preds = %40, %35
  tail call void @ED_region_tag_redraw(ptr noundef nonnull %26) #16
  br label %46

46:                                               ; preds = %25, %45, %29
  %47 = load ptr, ptr %26, align 8, !tbaa !95
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %25, !llvm.loop !100

49:                                               ; preds = %46, %15, %10
  %50 = load i16, ptr %5, align 2, !tbaa !34
  %51 = and i16 %50, 1
  %52 = icmp ne i16 %51, 0
  %53 = icmp ne ptr %0, null
  %54 = and i1 %53, %52
  br i1 %54, label %55, label %97

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !95
  %58 = icmp eq ptr %57, null
  br i1 %58, label %97, label %59

59:                                               ; preds = %55
  %60 = icmp eq i32 %3, 1
  %61 = getelementptr inbounds %struct.View2D, ptr %2, i64 0, i32 1
  %62 = getelementptr inbounds %struct.View2D, ptr %2, i64 0, i32 1, i32 1
  %63 = getelementptr inbounds %struct.View2D, ptr %2, i64 0, i32 1
  %64 = getelementptr inbounds %struct.View2D, ptr %2, i64 0, i32 1, i32 1
  br label %68

65:                                               ; preds = %94, %68
  %66 = load ptr, ptr %69, align 8, !tbaa !95
  %67 = icmp eq ptr %66, null
  br i1 %67, label %97, label %68, !llvm.loop !103

68:                                               ; preds = %59, %65
  %69 = phi ptr [ %57, %59 ], [ %66, %65 ]
  %70 = getelementptr inbounds %struct.ScrArea, ptr %69, i64 0, i32 20
  %71 = load ptr, ptr %70, align 8, !tbaa !95
  %72 = icmp eq ptr %71, null
  br i1 %72, label %65, label %73

73:                                               ; preds = %68, %94
  %74 = phi ptr [ %95, %94 ], [ %71, %68 ]
  %75 = getelementptr inbounds %struct.ARegion, ptr %74, i64 0, i32 2
  %76 = icmp eq ptr %75, %2
  br i1 %76, label %94, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.ARegion, ptr %74, i64 0, i32 2, i32 14
  %79 = load i16, ptr %78, align 2, !tbaa !96
  %80 = and i16 %79, 1
  %81 = icmp eq i16 %80, 0
  br i1 %81, label %94, label %82

82:                                               ; preds = %77
  br i1 %60, label %83, label %88

83:                                               ; preds = %82
  %84 = load float, ptr %63, align 8, !tbaa !60
  %85 = getelementptr inbounds %struct.ARegion, ptr %74, i64 0, i32 2, i32 1
  store float %84, ptr %85, align 8, !tbaa !104
  %86 = load float, ptr %64, align 4, !tbaa !61
  %87 = getelementptr inbounds %struct.ARegion, ptr %74, i64 0, i32 2, i32 1, i32 1
  store float %86, ptr %87, align 4, !tbaa !105
  br label %93

88:                                               ; preds = %82
  %89 = getelementptr inbounds %struct.ARegion, ptr %74, i64 0, i32 2, i32 1
  %90 = load float, ptr %89, align 8, !tbaa !104
  store float %90, ptr %61, align 8, !tbaa !60
  %91 = getelementptr inbounds %struct.ARegion, ptr %74, i64 0, i32 2, i32 1, i32 1
  %92 = load float, ptr %91, align 4, !tbaa !105
  store float %92, ptr %62, align 4, !tbaa !61
  br label %93

93:                                               ; preds = %88, %83
  tail call void @ED_region_tag_redraw(ptr noundef nonnull %74) #16
  br label %94

94:                                               ; preds = %73, %93, %77
  %95 = load ptr, ptr %74, align 8, !tbaa !95
  %96 = icmp eq ptr %95, null
  br i1 %96, label %65, label %73, !llvm.loop !106

97:                                               ; preds = %65, %55, %49, %4
  ret void
}

declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @UI_view2d_curRect_reset(ptr nocapture noundef %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4
  %3 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !89
  %5 = load i32, ptr %2, align 4, !tbaa !90
  %6 = add i32 %4, 1
  %7 = sub i32 %6, %5
  %8 = sitofp i32 %7 to float
  %9 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !91
  %11 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !92
  %13 = add i32 %10, 1
  %14 = sub i32 %13, %12
  %15 = sitofp i32 %14 to float
  %16 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 15
  %17 = load i16, ptr %16, align 4, !tbaa !47
  %18 = zext i16 %17 to i32
  %19 = and i32 %18, 3
  switch i32 %19, label %22 [
    i32 1, label %20
    i32 2, label %25
  ]

20:                                               ; preds = %1
  %21 = fneg float %8
  br label %25

22:                                               ; preds = %1
  %23 = fmul float %8, 5.000000e-01
  %24 = fneg float %23
  br label %25

25:                                               ; preds = %1, %22, %20
  %26 = phi float [ %24, %22 ], [ %21, %20 ], [ 0.000000e+00, %1 ]
  %27 = phi float [ %23, %22 ], [ 0.000000e+00, %20 ], [ %8, %1 ]
  %28 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1
  store float %26, ptr %28, align 8, !tbaa !60
  %29 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 1
  store float %27, ptr %29, align 4, !tbaa !61
  %30 = and i32 %18, 12
  switch i32 %30, label %33 [
    i32 4, label %31
    i32 8, label %36
  ]

31:                                               ; preds = %25
  %32 = fneg float %15
  br label %36

33:                                               ; preds = %25
  %34 = fmul float %15, 5.000000e-01
  %35 = fneg float %34
  br label %36

36:                                               ; preds = %25, %33, %31
  %37 = phi float [ %35, %33 ], [ %32, %31 ], [ 0.000000e+00, %25 ]
  %38 = phi float [ %34, %33 ], [ 0.000000e+00, %31 ], [ %15, %25 ]
  %39 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 2
  store float %37, ptr %39, align 8, !tbaa !63
  %40 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 3
  store float %38, ptr %40, align 4, !tbaa !62
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nofree nounwind uwtable
define dso_local void @UI_view2d_totRect_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 9
  %5 = load i16, ptr %4, align 8, !tbaa !56
  %6 = sext i16 %5 to i32
  %7 = and i32 %6, 1024
  %8 = icmp eq i32 %7, 0
  %9 = and i32 %6, -13
  %10 = select i1 %8, i32 %6, i32 %9
  %11 = and i32 %10, 512
  %12 = icmp eq i32 %11, 0
  %13 = and i32 %10, -4
  %14 = select i1 %12, i32 %10, i32 %13
  tail call void @UI_view2d_totRect_set_resize(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef 0)
  %15 = load i16, ptr %4, align 8, !tbaa !56
  %16 = sext i16 %15 to i32
  %17 = and i32 %16, 1024
  %18 = icmp eq i32 %17, 0
  %19 = and i32 %16, -13
  %20 = select i1 %18, i32 %16, i32 %19
  %21 = and i32 %20, 512
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %20, -4
  %24 = select i1 %22, i32 %20, i32 %23
  %25 = icmp eq i32 %14, %24
  br i1 %25, label %27, label %26

26:                                               ; preds = %3
  tail call void @UI_view2d_totRect_set_resize(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef 0)
  br label %27

27:                                               ; preds = %26, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @UI_view2d_tab_set(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 23
  %4 = load i32, ptr %3, align 4, !tbaa !107
  %5 = icmp eq i32 %4, %1
  br i1 %5, label %46, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 21
  %8 = load ptr, ptr %7, align 8, !tbaa !108
  %9 = icmp eq ptr %8, null
  br i1 %9, label %46, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 22
  %12 = load i32, ptr %11, align 8, !tbaa !109
  %13 = icmp sgt i32 %12, %1
  %14 = shl nsw i32 %1, 1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds float, ptr %8, i64 %15
  br i1 %13, label %17, label %19

17:                                               ; preds = %10
  %18 = load float, ptr %16, align 4, !tbaa !54
  br label %19

19:                                               ; preds = %10, %17
  %20 = phi float [ %18, %17 ], [ 0.000000e+00, %10 ]
  %21 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1
  %22 = load float, ptr %21, align 8, !tbaa !60
  %23 = fsub float %20, %22
  %24 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 1
  %25 = load float, ptr %24, align 4, !tbaa !61
  %26 = fadd float %25, %23
  store float %26, ptr %24, align 4, !tbaa !61
  br i1 %13, label %27, label %29

27:                                               ; preds = %19
  %28 = load float, ptr %16, align 4, !tbaa !54
  br label %29

29:                                               ; preds = %19, %27
  %30 = phi float [ %28, %27 ], [ 0.000000e+00, %19 ]
  store float %30, ptr %21, align 8, !tbaa !60
  %31 = getelementptr inbounds float, ptr %16, i64 1
  br i1 %13, label %32, label %34

32:                                               ; preds = %29
  %33 = load float, ptr %31, align 4, !tbaa !54
  br label %34

34:                                               ; preds = %29, %32
  %35 = phi float [ %33, %32 ], [ 0.000000e+00, %29 ]
  %36 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 3
  %37 = load float, ptr %36, align 4, !tbaa !62
  %38 = fsub float %35, %37
  %39 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 2
  %40 = load float, ptr %39, align 8, !tbaa !63
  %41 = fadd float %40, %38
  store float %41, ptr %39, align 8, !tbaa !63
  br i1 %13, label %42, label %44

42:                                               ; preds = %34
  %43 = load float, ptr %31, align 4, !tbaa !54
  br label %44

44:                                               ; preds = %34, %42
  %45 = phi float [ %43, %42 ], [ 0.000000e+00, %34 ]
  store float %45, ptr %36, align 4, !tbaa !62
  br label %46

46:                                               ; preds = %44, %6, %2
  %47 = phi i8 [ 1, %44 ], [ 0, %6 ], [ 0, %2 ]
  %48 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 22
  %49 = load i32, ptr %48, align 8, !tbaa !109
  %50 = icmp sgt i32 %49, %1
  br i1 %50, label %67, label %51

51:                                               ; preds = %46
  %52 = load ptr, ptr @MEM_callocN, align 8, !tbaa !95
  %53 = add nsw i32 %1, 1
  %54 = sext i32 %53 to i64
  %55 = shl nsw i64 %54, 3
  %56 = tail call ptr %52(i64 noundef %55, ptr noundef nonnull @.str.1) #16
  %57 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 21
  %58 = load ptr, ptr %57, align 8, !tbaa !108
  %59 = icmp eq ptr %58, null
  br i1 %59, label %66, label %60

60:                                               ; preds = %51
  %61 = load i32, ptr %48, align 8, !tbaa !109
  %62 = sext i32 %61 to i64
  %63 = shl nsw i64 %62, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %56, ptr nonnull align 4 %58, i64 %63, i1 false)
  %64 = load ptr, ptr @MEM_freeN, align 8, !tbaa !95
  %65 = load ptr, ptr %57, align 8, !tbaa !108
  tail call void %64(ptr noundef %65) #16
  br label %66

66:                                               ; preds = %60, %51
  store ptr %56, ptr %57, align 8, !tbaa !108
  store i32 %53, ptr %48, align 8, !tbaa !109
  br label %67

67:                                               ; preds = %66, %46
  store i32 %1, ptr %3, align 4, !tbaa !107
  %68 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1
  %69 = load float, ptr %68, align 8, !tbaa !60
  %70 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 21
  %71 = load ptr, ptr %70, align 8, !tbaa !108
  %72 = shl nsw i32 %1, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds float, ptr %71, i64 %73
  store float %69, ptr %74, align 4, !tbaa !54
  %75 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 3
  %76 = load float, ptr %75, align 4, !tbaa !62
  %77 = or disjoint i32 %72, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds float, ptr %71, i64 %78
  store float %76, ptr %79, align 4, !tbaa !54
  ret i8 %47
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: nounwind uwtable
define dso_local void @UI_view2d_zoom_cache_reset() local_unnamed_addr #0 {
  tail call void @BLF_cache_clear() #16
  ret void
}

declare void @BLF_cache_clear() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @UI_view2d_view_ortho(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct.rctf, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #16
  %3 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4
  %4 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !89
  %6 = load i32, ptr %3, align 4, !tbaa !90
  %7 = sub nsw i32 %5, %6
  %8 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4, i32 3
  %9 = load i32, ptr %8, align 4, !tbaa !91
  %10 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !92
  %12 = sub nsw i32 %9, %11
  %13 = icmp sgt i32 %7, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1
  %16 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 1
  %17 = load float, ptr %16, align 4, !tbaa !70
  %18 = load float, ptr %15, align 4, !tbaa !71
  %19 = fsub float %17, %18
  %20 = fmul float %19, 0x3F50624DE0000000
  %21 = sitofp i32 %7 to float
  %22 = fdiv float %20, %21
  br label %23

23:                                               ; preds = %14, %1
  %24 = phi float [ %22, %14 ], [ 0.000000e+00, %1 ]
  %25 = icmp sgt i32 %12, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 3
  %28 = load float, ptr %27, align 4, !tbaa !72
  %29 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 2
  %30 = load float, ptr %29, align 4, !tbaa !73
  %31 = fsub float %28, %30
  %32 = fmul float %31, 0x3F50624DE0000000
  %33 = sitofp i32 %12 to float
  %34 = fdiv float %32, %33
  br label %35

35:                                               ; preds = %26, %23
  %36 = phi float [ %34, %26 ], [ 0.000000e+00, %23 ]
  call fastcc void @view2d_map_cur_using_mask(ptr noundef %0, ptr noundef nonnull %2)
  %37 = fneg float %24
  %38 = fneg float %36
  call void @BLI_rctf_translate(ptr noundef nonnull %2, float noundef %37, float noundef %38) #16
  %39 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 14
  %40 = load i16, ptr %39, align 2, !tbaa !34
  %41 = and i16 %40, 4
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %35
  %44 = load float, ptr %2, align 4, !tbaa !71
  %45 = call float @llvm.floor.f32(float %44)
  %46 = fadd float %24, 0x3F50624DE0000000
  %47 = fsub float %45, %46
  store float %47, ptr %2, align 4, !tbaa !71
  %48 = getelementptr inbounds %struct.rctf, ptr %2, i64 0, i32 1
  %49 = load float, ptr %48, align 4, !tbaa !70
  %50 = call float @llvm.floor.f32(float %49)
  %51 = fsub float %50, %46
  store float %51, ptr %48, align 4, !tbaa !70
  br label %52

52:                                               ; preds = %43, %35
  %53 = and i16 %40, 8
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %65, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.rctf, ptr %2, i64 0, i32 2
  %57 = load float, ptr %56, align 4, !tbaa !73
  %58 = call float @llvm.floor.f32(float %57)
  %59 = fadd float %36, 0x3F50624DE0000000
  %60 = fsub float %58, %59
  store float %60, ptr %56, align 4, !tbaa !73
  %61 = getelementptr inbounds %struct.rctf, ptr %2, i64 0, i32 3
  %62 = load float, ptr %61, align 4, !tbaa !72
  %63 = call float @llvm.floor.f32(float %62)
  %64 = fsub float %63, %59
  store float %64, ptr %61, align 4, !tbaa !72
  br label %65

65:                                               ; preds = %55, %52
  %66 = load float, ptr %2, align 4, !tbaa !71
  %67 = getelementptr inbounds %struct.rctf, ptr %2, i64 0, i32 1
  %68 = load float, ptr %67, align 4, !tbaa !70
  %69 = getelementptr inbounds %struct.rctf, ptr %2, i64 0, i32 2
  %70 = load float, ptr %69, align 4, !tbaa !73
  %71 = getelementptr inbounds %struct.rctf, ptr %2, i64 0, i32 3
  %72 = load float, ptr %71, align 4, !tbaa !72
  call void @wmOrtho2(float noundef %66, float noundef %68, float noundef %70, float noundef %72) #16
  call void @glLoadIdentity() #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @view2d_map_cur_using_mask(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !53
  %4 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 9
  %5 = load i16, ptr %4, align 8, !tbaa !56
  %6 = sext i16 %5 to i32
  %7 = and i32 %6, 1024
  %8 = icmp eq i32 %7, 0
  %9 = and i32 %6, -13
  %10 = select i1 %8, i32 %6, i32 %9
  %11 = and i32 %10, 512
  %12 = icmp eq i32 %11, 0
  %13 = and i32 %10, -4
  %14 = select i1 %12, i32 %10, i32 %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %86, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4
  %18 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !89
  %20 = load i32, ptr %17, align 4, !tbaa !90
  %21 = sub nsw i32 %19, %20
  %22 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4, i32 3
  %23 = load i32, ptr %22, align 4, !tbaa !91
  %24 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !92
  %26 = sub nsw i32 %23, %25
  %27 = icmp sgt i32 %21, 0
  %28 = icmp sgt i32 %26, 0
  %29 = select i1 %27, i1 %28, i1 false
  br i1 %29, label %30, label %86

30:                                               ; preds = %16
  %31 = sitofp i32 %26 to float
  %32 = sitofp i32 %21 to float
  %33 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 1
  %34 = load float, ptr %33, align 4, !tbaa !70
  %35 = load float, ptr %3, align 4, !tbaa !71
  %36 = fsub float %34, %35
  %37 = fadd float %32, 1.000000e+00
  %38 = fdiv float %36, %37
  %39 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 3
  %40 = load float, ptr %39, align 4, !tbaa !72
  %41 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 2
  %42 = load float, ptr %41, align 4, !tbaa !73
  %43 = fsub float %40, %42
  %44 = fadd float %31, 1.000000e+00
  %45 = fdiv float %43, %44
  %46 = icmp eq i32 %20, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %30
  %48 = sitofp i32 %20 to float
  %49 = load float, ptr %1, align 4, !tbaa !71
  %50 = fneg float %38
  %51 = tail call float @llvm.fmuladd.f32(float %50, float %48, float %49)
  store float %51, ptr %1, align 4, !tbaa !71
  br label %52

52:                                               ; preds = %47, %30
  %53 = add nsw i32 %19, 1
  %54 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 16
  %55 = load i16, ptr %54, align 2, !tbaa !64
  %56 = sext i16 %55 to i32
  %57 = icmp eq i32 %53, %56
  br i1 %57, label %65, label %58

58:                                               ; preds = %52
  %59 = xor i32 %19, -1
  %60 = add i32 %56, %59
  %61 = sitofp i32 %60 to float
  %62 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 1
  %63 = load float, ptr %62, align 4, !tbaa !70
  %64 = tail call float @llvm.fmuladd.f32(float %38, float %61, float %63)
  store float %64, ptr %62, align 4, !tbaa !70
  br label %65

65:                                               ; preds = %58, %52
  %66 = icmp eq i32 %25, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %65
  %68 = sitofp i32 %25 to float
  %69 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 2
  %70 = load float, ptr %69, align 4, !tbaa !73
  %71 = fneg float %45
  %72 = tail call float @llvm.fmuladd.f32(float %71, float %68, float %70)
  store float %72, ptr %69, align 4, !tbaa !73
  br label %73

73:                                               ; preds = %67, %65
  %74 = add nsw i32 %23, 1
  %75 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 17
  %76 = load i16, ptr %75, align 8, !tbaa !65
  %77 = sext i16 %76 to i32
  %78 = icmp eq i32 %74, %77
  br i1 %78, label %86, label %79

79:                                               ; preds = %73
  %80 = xor i32 %23, -1
  %81 = add i32 %77, %80
  %82 = sitofp i32 %81 to float
  %83 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 3
  %84 = load float, ptr %83, align 4, !tbaa !72
  %85 = tail call float @llvm.fmuladd.f32(float %45, float %82, float %84)
  store float %85, ptr %83, align 4, !tbaa !72
  br label %86

86:                                               ; preds = %16, %79, %73, %2
  ret void
}

declare void @BLI_rctf_translate(ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #4

declare void @wmOrtho2(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @glLoadIdentity() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @UI_view2d_view_orthoSpecial(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca %struct.rctf, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #16
  call fastcc void @view2d_map_cur_using_mask(ptr noundef %1, ptr noundef nonnull %4)
  %5 = icmp eq i8 %2, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %3
  %7 = load float, ptr %4, align 4, !tbaa !71
  %8 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 1
  %9 = load float, ptr %8, align 4, !tbaa !70
  %10 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 6
  %11 = load i16, ptr %10, align 2, !tbaa !110
  %12 = sitofp i16 %11 to float
  tail call void @wmOrtho2(float noundef %7, float noundef %9, float noundef -0.000000e+00, float noundef %12) #16
  br label %21

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 5
  %15 = load i16, ptr %14, align 8, !tbaa !111
  %16 = sitofp i16 %15 to float
  %17 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 2
  %18 = load float, ptr %17, align 4, !tbaa !73
  %19 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 3
  %20 = load float, ptr %19, align 4, !tbaa !72
  tail call void @wmOrtho2(float noundef -0.000000e+00, float noundef %16, float noundef %18, float noundef %20) #16
  br label %21

21:                                               ; preds = %13, %6
  tail call void @glLoadIdentity() #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @UI_view2d_view_restore(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_region(ptr noundef %0) #16
  %3 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 3
  %4 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 3, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !89
  %6 = load i32, ptr %3, align 4, !tbaa !90
  %7 = add i32 %5, 1
  %8 = sub i32 %7, %6
  %9 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 3, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !91
  %11 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 3, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !92
  %13 = add i32 %10, 1
  %14 = sub i32 %13, %12
  %15 = sitofp i32 %8 to float
  %16 = sitofp i32 %14 to float
  tail call void @wmOrtho2(float noundef 0.000000e+00, float noundef %15, float noundef 0.000000e+00, float noundef %16) #16
  tail call void @glLoadIdentity() #16
  ret void
}

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @UI_view2d_grid_calc(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i16 noundef signext %2, i16 noundef signext %3, i16 noundef signext %4, i16 noundef signext %5, i32 %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = sext i16 %2 to i32
  %10 = icmp ne i16 %2, -1
  %11 = icmp ne i16 %3, -1
  %12 = and i1 %10, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %8
  %14 = icmp eq i16 %4, -1
  %15 = icmp eq i16 %5, -1
  %16 = or i1 %14, %15
  br i1 %16, label %146, label %17

17:                                               ; preds = %13, %8
  %18 = load ptr, ptr @MEM_callocN, align 8, !tbaa !95
  %19 = tail call ptr %18(i64 noundef 24, ptr noundef nonnull @.str.2) #16
  %20 = icmp eq i16 %2, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 55
  %23 = load i16, ptr %22, align 4, !tbaa !112
  %24 = sitofp i16 %23 to double
  %25 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 65
  %26 = load float, ptr %25, align 4, !tbaa !131
  %27 = fpext float %26 to double
  %28 = fdiv double %24, %27
  %29 = fmul double %28, 1.000000e-02
  %30 = fptrunc double %29 to float
  br label %31

31:                                               ; preds = %17, %21
  %32 = phi float [ %30, %21 ], [ 1.000000e+00, %17 ]
  br i1 %12, label %33, label %73

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 4
  %35 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 4, i32 1
  %36 = load i32, ptr %35, align 4, !tbaa !89
  %37 = load i32, ptr %34, align 4, !tbaa !90
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %61, label %39

39:                                               ; preds = %33
  %40 = sub nsw i32 %36, %37
  %41 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 1, i32 1
  %42 = load float, ptr %41, align 4, !tbaa !70
  %43 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 1
  %44 = load float, ptr %43, align 4, !tbaa !71
  %45 = fsub float %42, %44
  %46 = sitofp i32 %40 to float
  %47 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 16), align 8, !tbaa !132
  %48 = sitofp i16 %47 to float
  %49 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !133
  %50 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !134
  %51 = sitofp i32 %50 to float
  %52 = fmul float %49, %51
  %53 = fdiv float %52, 7.200000e+01
  %54 = fmul float %53, %48
  %55 = fmul float %45, %54
  %56 = fmul float %32, %46
  %57 = fdiv float %55, %56
  store float %57, ptr %19, align 4, !tbaa !135
  %58 = getelementptr inbounds %struct.View2DGrid, ptr %19, i64 0, i32 4
  tail call fastcc void @step_to_grid(ptr noundef nonnull %19, ptr noundef nonnull %58, i32 noundef %9)
  %59 = load float, ptr %19, align 4, !tbaa !135
  %60 = fmul float %32, %59
  store float %60, ptr %19, align 4, !tbaa !135
  br label %61

61:                                               ; preds = %39, %33
  %62 = icmp eq i16 %3, 1
  br i1 %62, label %63, label %73

63:                                               ; preds = %61
  %64 = load float, ptr %19, align 4, !tbaa !135
  %65 = fcmp olt float %64, 0x3FB99999A0000000
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store float 0x3FB99999A0000000, ptr %19, align 4, !tbaa !135
  br label %67

67:                                               ; preds = %66, %63
  %68 = getelementptr inbounds %struct.View2DGrid, ptr %19, i64 0, i32 4
  %69 = load i32, ptr %68, align 4, !tbaa !137
  %70 = add nsw i32 %69, -2
  %71 = icmp slt i32 %69, 0
  %72 = select i1 %71, i32 -2, i32 %70
  store i32 %72, ptr %68, align 4
  br label %73

73:                                               ; preds = %67, %61, %31
  %74 = icmp ne i16 %4, -1
  %75 = icmp ne i16 %5, -1
  %76 = and i1 %74, %75
  br i1 %76, label %77, label %106

77:                                               ; preds = %73
  %78 = sext i16 %4 to i32
  %79 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 1, i32 3
  %80 = load float, ptr %79, align 4, !tbaa !72
  %81 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 1, i32 2
  %82 = load float, ptr %81, align 4, !tbaa !73
  %83 = fsub float %80, %82
  %84 = sitofp i32 %7 to float
  %85 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 16), align 8, !tbaa !132
  %86 = sitofp i16 %85 to float
  %87 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !133
  %88 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !134
  %89 = sitofp i32 %88 to float
  %90 = fmul float %87, %89
  %91 = fdiv float %90, 7.200000e+01
  %92 = fmul float %91, %86
  %93 = fmul float %83, %92
  %94 = fdiv float %93, %84
  %95 = getelementptr inbounds %struct.View2DGrid, ptr %19, i64 0, i32 1
  store float %94, ptr %95, align 4, !tbaa !138
  %96 = getelementptr inbounds %struct.View2DGrid, ptr %19, i64 0, i32 5
  tail call fastcc void @step_to_grid(ptr noundef nonnull %95, ptr noundef nonnull %96, i32 noundef %78)
  %97 = icmp eq i16 %5, 1
  br i1 %97, label %98, label %106

98:                                               ; preds = %77
  %99 = load float, ptr %95, align 4, !tbaa !138
  %100 = fcmp olt float %99, 1.000000e+00
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  store float 1.000000e+00, ptr %95, align 4, !tbaa !138
  br label %102

102:                                              ; preds = %101, %98
  %103 = load i32, ptr %96, align 4, !tbaa !139
  %104 = icmp slt i32 %103, 1
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  store i32 1, ptr %96, align 4, !tbaa !139
  br label %106

106:                                              ; preds = %77, %105, %102, %73
  %107 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 1
  %108 = load float, ptr %107, align 8, !tbaa !60
  br i1 %12, label %109, label %125

109:                                              ; preds = %106
  %110 = fdiv float %108, %32
  %111 = fpext float %110 to double
  %112 = load float, ptr %19, align 4, !tbaa !135
  %113 = fdiv float %112, %32
  %114 = fpext float %113 to double
  %115 = tail call double @fmod(double noundef %111, double noundef %114) #16
  %116 = fptrunc double %115 to float
  %117 = fsub float %110, %116
  %118 = fmul float %32, %117
  %119 = getelementptr inbounds %struct.View2DGrid, ptr %19, i64 0, i32 2
  store float %118, ptr %119, align 4, !tbaa !140
  %120 = load float, ptr %107, align 8, !tbaa !60
  %121 = fcmp olt float %120, 0.000000e+00
  br i1 %121, label %122, label %127

122:                                              ; preds = %109
  %123 = load float, ptr %19, align 4, !tbaa !135
  %124 = fsub float %118, %123
  store float %124, ptr %119, align 4, !tbaa !140
  br label %127

125:                                              ; preds = %106
  %126 = getelementptr inbounds %struct.View2DGrid, ptr %19, i64 0, i32 2
  store float %108, ptr %126, align 4, !tbaa !140
  br label %127

127:                                              ; preds = %109, %122, %125
  %128 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 1, i32 2
  %129 = load float, ptr %128, align 8, !tbaa !63
  br i1 %76, label %130, label %144

130:                                              ; preds = %127
  %131 = fpext float %129 to double
  %132 = getelementptr inbounds %struct.View2DGrid, ptr %19, i64 0, i32 1
  %133 = load float, ptr %132, align 4, !tbaa !138
  %134 = fpext float %133 to double
  %135 = tail call double @fmod(double noundef %131, double noundef %134) #16
  %136 = fptrunc double %135 to float
  %137 = fsub float %129, %136
  %138 = getelementptr inbounds %struct.View2DGrid, ptr %19, i64 0, i32 3
  store float %137, ptr %138, align 4, !tbaa !141
  %139 = load float, ptr %128, align 8, !tbaa !63
  %140 = fcmp olt float %139, 0.000000e+00
  br i1 %140, label %141, label %146

141:                                              ; preds = %130
  %142 = load float, ptr %132, align 4, !tbaa !138
  %143 = fsub float %137, %142
  store float %143, ptr %138, align 4, !tbaa !141
  br label %146

144:                                              ; preds = %127
  %145 = getelementptr inbounds %struct.View2DGrid, ptr %19, i64 0, i32 3
  store float %129, ptr %145, align 4, !tbaa !141
  br label %146

146:                                              ; preds = %144, %141, %130, %13
  %147 = phi ptr [ null, %13 ], [ %19, %130 ], [ %19, %141 ], [ %19, %144 ]
  ret ptr %147
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @step_to_grid(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #10 {
  %4 = load float, ptr %0, align 4, !tbaa !54
  %5 = fpext float %4 to double
  %6 = tail call double @log10(double noundef %5) #16
  %7 = fptrunc double %6 to float
  %8 = fptosi float %7 to i32
  store i32 %8, ptr %1, align 4, !tbaa !75
  %9 = sitofp i32 %8 to float
  %10 = fsub float %7, %9
  %11 = fpext float %10 to double
  %12 = tail call double @pow(double noundef 1.000000e+01, double noundef %11) #16
  %13 = fptrunc double %12 to float
  %14 = fcmp olt float %7, 0.000000e+00
  %15 = load i32, ptr %1, align 4, !tbaa !75
  %16 = sitofp i32 %15 to double
  %17 = tail call double @pow(double noundef 1.000000e+01, double noundef %16) #16
  %18 = fptrunc double %17 to float
  br i1 %14, label %19, label %32

19:                                               ; preds = %3
  %20 = fcmp olt float %13, 0x3FC99999A0000000
  %21 = fcmp olt float %13, 5.000000e-01
  %22 = select i1 %21, float 5.000000e-01, float 1.000000e+00
  %23 = select i1 %20, float 0x3FC99999A0000000, float %22
  %24 = fmul float %23, %18
  %25 = icmp eq i32 %2, 1
  %26 = select i1 %25, float 2.000000e+00, float %24
  %27 = select i1 %25, float 1.000000e+00, float %23
  store float %26, ptr %0, align 4, !tbaa !54
  %28 = fcmp oeq float %27, 1.000000e+00
  br i1 %28, label %29, label %45

29:                                               ; preds = %19
  %30 = load i32, ptr %1, align 4, !tbaa !75
  %31 = add nsw i32 %30, 1
  br label %43

32:                                               ; preds = %3
  %33 = fcmp olt float %13, 2.000000e+00
  %34 = fcmp olt float %13, 5.000000e+00
  %35 = select i1 %34, float 5.000000e+00, float 1.000000e+01
  %36 = select i1 %33, float 2.000000e+00, float %35
  %37 = fmul float %36, %18
  store float %37, ptr %0, align 4, !tbaa !54
  %38 = load i32, ptr %1, align 4, !tbaa !75
  %39 = add nsw i32 %38, 1
  store i32 %39, ptr %1, align 4, !tbaa !75
  %40 = fcmp oeq float %36, 1.000000e+01
  br i1 %40, label %41, label %45

41:                                               ; preds = %32
  %42 = add nsw i32 %38, 2
  br label %43

43:                                               ; preds = %29, %41
  %44 = phi i32 [ %42, %41 ], [ %31, %29 ]
  store i32 %44, ptr %1, align 4, !tbaa !75
  br label %45

45:                                               ; preds = %43, %32, %19
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define dso_local void @UI_view2d_grid_draw(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [2 x float], align 4
  %5 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  %6 = icmp eq ptr %1, null
  br i1 %6, label %133, label %7

7:                                                ; preds = %3
  %8 = and i32 %2, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %58, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.View2DGrid, ptr %1, i64 0, i32 2
  %12 = load float, ptr %11, align 4, !tbaa !140
  store float %12, ptr %5, align 4, !tbaa !54
  store float %12, ptr %4, align 4, !tbaa !54
  %13 = getelementptr inbounds %struct.View2DGrid, ptr %1, i64 0, i32 3
  %14 = load float, ptr %13, align 4, !tbaa !141
  %15 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  store float %14, ptr %15, align 4, !tbaa !54
  %16 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 3
  %17 = load float, ptr %16, align 4, !tbaa !62
  %18 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  store float %17, ptr %18, align 4, !tbaa !54
  %19 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4
  %20 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !89
  %22 = load i32, ptr %19, align 4, !tbaa !90
  %23 = add i32 %21, 1
  %24 = sub i32 %23, %22
  %25 = sitofp i32 %24 to float
  %26 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 16), align 8, !tbaa !132
  %27 = sitofp i16 %26 to float
  %28 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !133
  %29 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !134
  %30 = sitofp i32 %29 to float
  %31 = fmul float %28, %30
  %32 = fdiv float %31, 7.200000e+01
  %33 = fmul float %32, %27
  %34 = fdiv float %25, %33
  %35 = fptosi float %34 to i32
  tail call void @UI_ThemeColor(i32 noundef 24) #16
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %10, %37
  %38 = phi i32 [ %42, %37 ], [ 0, %10 ]
  call void @glBegin(i32 noundef 3) #16
  call void @glVertex2fv(ptr noundef nonnull %4) #16
  call void @glVertex2fv(ptr noundef nonnull %5) #16
  call void @glEnd() #16
  %39 = load float, ptr %1, align 4, !tbaa !135
  %40 = load float, ptr %4, align 4, !tbaa !54
  %41 = fadd float %39, %40
  store float %41, ptr %4, align 4, !tbaa !54
  store float %41, ptr %5, align 4, !tbaa !54
  %42 = add nuw nsw i32 %38, 1
  %43 = icmp eq i32 %42, %35
  br i1 %43, label %44, label %37, !llvm.loop !142

44:                                               ; preds = %37, %10
  %45 = load float, ptr %1, align 4, !tbaa !135
  %46 = load float, ptr %4, align 4, !tbaa !54
  %47 = call float @llvm.fmuladd.f32(float %45, float -5.000000e-01, float %46)
  store float %47, ptr %4, align 4, !tbaa !54
  store float %47, ptr %5, align 4, !tbaa !54
  call void @UI_ThemeColorShade(i32 noundef 24, i32 noundef 16) #16
  %48 = icmp slt i32 %35, -1
  br i1 %48, label %58, label %49

49:                                               ; preds = %44
  %50 = add i32 %35, 1
  br label %51

51:                                               ; preds = %49, %51
  %52 = phi i32 [ %56, %51 ], [ 0, %49 ]
  call void @glBegin(i32 noundef 3) #16
  call void @glVertex2fv(ptr noundef nonnull %4) #16
  call void @glVertex2fv(ptr noundef nonnull %5) #16
  call void @glEnd() #16
  %53 = load float, ptr %1, align 4, !tbaa !135
  %54 = load float, ptr %4, align 4, !tbaa !54
  %55 = fsub float %54, %53
  store float %55, ptr %4, align 4, !tbaa !54
  store float %55, ptr %5, align 4, !tbaa !54
  %56 = add nuw i32 %52, 1
  %57 = icmp eq i32 %52, %50
  br i1 %57, label %58, label %51, !llvm.loop !143

58:                                               ; preds = %51, %44, %7
  %59 = and i32 %2, 1
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %113, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.View2DGrid, ptr %1, i64 0, i32 3
  %63 = load float, ptr %62, align 4, !tbaa !141
  %64 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  store float %63, ptr %64, align 4, !tbaa !54
  %65 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  store float %63, ptr %65, align 4, !tbaa !54
  %66 = getelementptr inbounds %struct.View2DGrid, ptr %1, i64 0, i32 2
  %67 = load float, ptr %66, align 4, !tbaa !140
  store float %67, ptr %4, align 4, !tbaa !54
  %68 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 1
  %69 = load float, ptr %68, align 4, !tbaa !61
  store float %69, ptr %5, align 4, !tbaa !54
  %70 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4, i32 3
  %71 = load i32, ptr %70, align 4, !tbaa !91
  %72 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4, i32 2
  %73 = load i32, ptr %72, align 4, !tbaa !92
  %74 = add i32 %71, 1
  %75 = sub i32 %74, %73
  %76 = sitofp i32 %75 to float
  %77 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 16), align 8, !tbaa !132
  %78 = sitofp i16 %77 to float
  %79 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !133
  %80 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !134
  %81 = sitofp i32 %80 to float
  %82 = fmul float %79, %81
  %83 = fdiv float %82, 7.200000e+01
  %84 = fmul float %83, %78
  %85 = fdiv float %76, %84
  %86 = fptosi float %85 to i32
  call void @UI_ThemeColor(i32 noundef 24) #16
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %97, label %88

88:                                               ; preds = %61
  %89 = getelementptr inbounds %struct.View2DGrid, ptr %1, i64 0, i32 1
  br label %90

90:                                               ; preds = %88, %90
  %91 = phi i32 [ 0, %88 ], [ %95, %90 ]
  call void @glBegin(i32 noundef 3) #16
  call void @glVertex2fv(ptr noundef nonnull %4) #16
  call void @glVertex2fv(ptr noundef nonnull %5) #16
  call void @glEnd() #16
  %92 = load float, ptr %89, align 4, !tbaa !138
  %93 = load float, ptr %65, align 4, !tbaa !54
  %94 = fadd float %92, %93
  store float %94, ptr %65, align 4, !tbaa !54
  store float %94, ptr %64, align 4, !tbaa !54
  %95 = add nuw i32 %91, 1
  %96 = icmp eq i32 %91, %86
  br i1 %96, label %97, label %90, !llvm.loop !144

97:                                               ; preds = %90, %61
  %98 = getelementptr inbounds %struct.View2DGrid, ptr %1, i64 0, i32 1
  %99 = load float, ptr %98, align 4, !tbaa !138
  %100 = load float, ptr %65, align 4, !tbaa !54
  %101 = call float @llvm.fmuladd.f32(float %99, float -5.000000e-01, float %100)
  store float %101, ptr %65, align 4, !tbaa !54
  store float %101, ptr %64, align 4, !tbaa !54
  %102 = and i32 %2, 16
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %113, label %104

104:                                              ; preds = %97
  call void @UI_ThemeColorShade(i32 noundef 24, i32 noundef 16) #16
  %105 = icmp slt i32 %86, 0
  br i1 %105, label %113, label %106

106:                                              ; preds = %104, %106
  %107 = phi i32 [ %111, %106 ], [ 0, %104 ]
  call void @glBegin(i32 noundef 3) #16
  call void @glVertex2fv(ptr noundef nonnull %4) #16
  call void @glVertex2fv(ptr noundef nonnull %5) #16
  call void @glEnd() #16
  %108 = load float, ptr %98, align 4, !tbaa !138
  %109 = load float, ptr %65, align 4, !tbaa !54
  %110 = fsub float %109, %108
  store float %110, ptr %65, align 4, !tbaa !54
  store float %110, ptr %64, align 4, !tbaa !54
  %111 = add nuw i32 %107, 1
  %112 = icmp eq i32 %107, %86
  br i1 %112, label %113, label %106, !llvm.loop !145

113:                                              ; preds = %106, %104, %97, %58
  call void @UI_ThemeColorShade(i32 noundef 24, i32 noundef -50) #16
  %114 = and i32 %2, 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %123, label %116

116:                                              ; preds = %113
  %117 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1
  %118 = load float, ptr %117, align 8, !tbaa !60
  store float %118, ptr %4, align 4, !tbaa !54
  %119 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 1
  %120 = load float, ptr %119, align 4, !tbaa !61
  store float %120, ptr %5, align 4, !tbaa !54
  %121 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  store float 0.000000e+00, ptr %121, align 4, !tbaa !54
  %122 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  store float 0.000000e+00, ptr %122, align 4, !tbaa !54
  call void @glBegin(i32 noundef 3) #16
  call void @glVertex2fv(ptr noundef nonnull %4) #16
  call void @glVertex2fv(ptr noundef nonnull %5) #16
  call void @glEnd() #16
  br label %123

123:                                              ; preds = %116, %113
  %124 = and i32 %2, 8
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %133, label %126

126:                                              ; preds = %123
  %127 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 2
  %128 = load float, ptr %127, align 8, !tbaa !63
  %129 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  store float %128, ptr %129, align 4, !tbaa !54
  %130 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 3
  %131 = load float, ptr %130, align 4, !tbaa !62
  %132 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  store float %131, ptr %132, align 4, !tbaa !54
  store float 0.000000e+00, ptr %5, align 4, !tbaa !54
  store float 0.000000e+00, ptr %4, align 4, !tbaa !54
  call void @glBegin(i32 noundef 3) #16
  call void @glVertex2fv(ptr noundef nonnull %4) #16
  call void @glVertex2fv(ptr noundef nonnull %5) #16
  call void @glEnd() #16
  br label %133

133:                                              ; preds = %123, %126, %3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  ret void
}

declare void @UI_ThemeColor(i32 noundef) local_unnamed_addr #2

declare void @glBegin(i32 noundef) local_unnamed_addr #2

declare void @glVertex2fv(ptr noundef) local_unnamed_addr #2

declare void @glEnd() local_unnamed_addr #2

declare void @UI_ThemeColorShade(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @UI_view2d_constant_grid_draw(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  tail call void @UI_ThemeColorShade(i32 noundef 2, i32 noundef -10) #16
  %2 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1
  %3 = load float, ptr %2, align 8, !tbaa !60
  %4 = fpext float %3 to double
  %5 = tail call double @fmod(double noundef %4, double noundef 2.500000e+01) #16
  %6 = fptrunc double %5 to float
  %7 = fsub float %3, %6
  tail call void @glBegin(i32 noundef 1) #16
  %8 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 1
  %9 = load float, ptr %8, align 4, !tbaa !61
  %10 = fcmp olt float %7, %9
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 2
  %13 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 3
  br label %14

14:                                               ; preds = %11, %14
  %15 = phi float [ %7, %11 ], [ %18, %14 ]
  %16 = load float, ptr %12, align 8, !tbaa !63
  tail call void @glVertex2f(float noundef %15, float noundef %16) #16
  %17 = load float, ptr %13, align 4, !tbaa !62
  tail call void @glVertex2f(float noundef %15, float noundef %17) #16
  %18 = fadd float %15, 2.500000e+01
  %19 = load float, ptr %8, align 4, !tbaa !61
  %20 = fcmp olt float %18, %19
  br i1 %20, label %14, label %21, !llvm.loop !146

21:                                               ; preds = %14, %1
  %22 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 1
  %23 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 2
  %24 = load float, ptr %23, align 8, !tbaa !63
  %25 = fpext float %24 to double
  %26 = tail call double @fmod(double noundef %25, double noundef 2.500000e+01) #16
  %27 = fptrunc double %26 to float
  %28 = fsub float %24, %27
  %29 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 3
  %30 = load float, ptr %29, align 4, !tbaa !62
  %31 = fcmp olt float %28, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %21, %32
  %33 = phi float [ %36, %32 ], [ %28, %21 ]
  %34 = load float, ptr %2, align 8, !tbaa !60
  tail call void @glVertex2f(float noundef %34, float noundef %33) #16
  %35 = load float, ptr %22, align 4, !tbaa !61
  tail call void @glVertex2f(float noundef %35, float noundef %33) #16
  %36 = fadd float %33, 2.500000e+01
  %37 = load float, ptr %29, align 4, !tbaa !62
  %38 = fcmp olt float %36, %37
  br i1 %38, label %32, label %39, !llvm.loop !147

39:                                               ; preds = %32, %21
  %40 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 3
  tail call void @UI_ThemeColorShade(i32 noundef 2, i32 noundef -18) #16
  %41 = load float, ptr %23, align 8, !tbaa !63
  tail call void @glVertex2f(float noundef 0.000000e+00, float noundef %41) #16
  %42 = load float, ptr %40, align 4, !tbaa !62
  tail call void @glVertex2f(float noundef 0.000000e+00, float noundef %42) #16
  %43 = load float, ptr %2, align 8, !tbaa !60
  tail call void @glVertex2f(float noundef %43, float noundef 0.000000e+00) #16
  %44 = load float, ptr %22, align 4, !tbaa !61
  tail call void @glVertex2f(float noundef %44, float noundef 0.000000e+00) #16
  tail call void @glEnd() #16
  ret void
}

declare void @glVertex2f(float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @UI_view2d_multi_grid_draw(ptr nocapture noundef readonly %0, i32 noundef %1, float noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = icmp sgt i32 %4, 0
  br i1 %6, label %7, label %102

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1
  %9 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 1
  %10 = add nsw i32 %4, -1
  %11 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 2
  %12 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 3
  %13 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 1
  %14 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 2
  %15 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 3
  %16 = add nsw i32 %4, -1
  %17 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 3
  %18 = sitofp i32 %3 to float
  br label %19

19:                                               ; preds = %7, %92
  %20 = phi i32 [ 0, %7 ], [ %100, %92 ]
  %21 = phi float [ %2, %7 ], [ %98, %92 ]
  %22 = phi i32 [ -10, %7 ], [ %99, %92 ]
  tail call void @UI_ThemeColorShade(i32 noundef %1, i32 noundef %22) #16
  %23 = load float, ptr %8, align 8, !tbaa !60
  %24 = fcmp ult float %23, 0.000000e+00
  br i1 %24, label %30, label %25

25:                                               ; preds = %19
  %26 = fneg float %23
  %27 = fdiv float %26, %21
  %28 = fptosi float %27 to i32
  %29 = sub nsw i32 0, %28
  br label %33

30:                                               ; preds = %19
  %31 = fdiv float %23, %21
  %32 = fptosi float %31 to i32
  br label %33

33:                                               ; preds = %30, %25
  %34 = phi i32 [ %29, %25 ], [ %32, %30 ]
  %35 = sitofp i32 %34 to float
  %36 = fmul float %21, %35
  tail call void @glBegin(i32 noundef 1) #16
  %37 = load float, ptr %9, align 4, !tbaa !61
  %38 = fcmp olt float %36, %37
  br i1 %38, label %39, label %57

39:                                               ; preds = %33
  %40 = icmp slt i32 %20, %10
  br label %41

41:                                               ; preds = %39, %52
  %42 = phi float [ %36, %39 ], [ %53, %52 ]
  %43 = phi i32 [ %34, %39 ], [ %54, %52 ]
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %41
  br i1 %40, label %46, label %49

46:                                               ; preds = %45
  %47 = srem i32 %43, %3
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %46, %45
  %50 = load float, ptr %11, align 8, !tbaa !63
  tail call void @glVertex2f(float noundef %42, float noundef %50) #16
  %51 = load float, ptr %12, align 4, !tbaa !62
  tail call void @glVertex2f(float noundef %42, float noundef %51) #16
  br label %52

52:                                               ; preds = %41, %46, %49
  %53 = fadd float %21, %42
  %54 = add nsw i32 %43, 1
  %55 = load float, ptr %9, align 4, !tbaa !61
  %56 = fcmp olt float %53, %55
  br i1 %56, label %41, label %57, !llvm.loop !148

57:                                               ; preds = %52, %33
  %58 = load float, ptr %14, align 8, !tbaa !63
  %59 = fcmp ult float %58, 0.000000e+00
  br i1 %59, label %65, label %60

60:                                               ; preds = %57
  %61 = fneg float %58
  %62 = fdiv float %61, %21
  %63 = fptosi float %62 to i32
  %64 = sub nsw i32 0, %63
  br label %68

65:                                               ; preds = %57
  %66 = fdiv float %58, %21
  %67 = fptosi float %66 to i32
  br label %68

68:                                               ; preds = %65, %60
  %69 = phi i32 [ %64, %60 ], [ %67, %65 ]
  %70 = sitofp i32 %69 to float
  %71 = fmul float %21, %70
  %72 = load float, ptr %15, align 4, !tbaa !62
  %73 = fcmp olt float %71, %72
  br i1 %73, label %74, label %92

74:                                               ; preds = %68
  %75 = icmp slt i32 %20, %16
  br label %76

76:                                               ; preds = %74, %87
  %77 = phi float [ %71, %74 ], [ %88, %87 ]
  %78 = phi i32 [ %69, %74 ], [ %89, %87 ]
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %76
  br i1 %75, label %81, label %84

81:                                               ; preds = %80
  %82 = srem i32 %78, %3
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %81, %80
  %85 = load float, ptr %8, align 8, !tbaa !60
  tail call void @glVertex2f(float noundef %85, float noundef %77) #16
  %86 = load float, ptr %13, align 4, !tbaa !61
  tail call void @glVertex2f(float noundef %86, float noundef %77) #16
  br label %87

87:                                               ; preds = %76, %81, %84
  %88 = fadd float %21, %77
  %89 = add nsw i32 %78, 1
  %90 = load float, ptr %15, align 4, !tbaa !62
  %91 = fcmp olt float %88, %90
  br i1 %91, label %76, label %92, !llvm.loop !149

92:                                               ; preds = %87, %68
  %93 = add nsw i32 %22, -8
  tail call void @UI_ThemeColorShade(i32 noundef %1, i32 noundef %93) #16
  %94 = load float, ptr %14, align 8, !tbaa !63
  tail call void @glVertex2f(float noundef 0.000000e+00, float noundef %94) #16
  %95 = load float, ptr %17, align 4, !tbaa !62
  tail call void @glVertex2f(float noundef 0.000000e+00, float noundef %95) #16
  %96 = load float, ptr %8, align 8, !tbaa !60
  tail call void @glVertex2f(float noundef %96, float noundef 0.000000e+00) #16
  %97 = load float, ptr %13, align 4, !tbaa !61
  tail call void @glVertex2f(float noundef %97, float noundef 0.000000e+00) #16
  tail call void @glEnd() #16
  %98 = fmul float %21, %18
  %99 = add nsw i32 %22, -6
  %100 = add nuw nsw i32 %20, 1
  %101 = icmp eq i32 %100, %4
  br i1 %101, label %102, label %19, !llvm.loop !150

102:                                              ; preds = %92, %5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @UI_view2d_grid_size(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #7 {
  %4 = load float, ptr %0, align 4, !tbaa !135
  store float %4, ptr %1, align 4, !tbaa !54
  %5 = getelementptr inbounds %struct.View2DGrid, ptr %0, i64 0, i32 1
  %6 = load float, ptr %5, align 4, !tbaa !138
  store float %6, ptr %2, align 4, !tbaa !54
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @UI_view2d_grid_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @MEM_freeN, align 8, !tbaa !95
  tail call void %4(ptr noundef nonnull %0) #16
  br label %5

5:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @UI_view2d_scrollers_calc(ptr noundef %0, ptr nocapture noundef readonly %1, i16 noundef signext %2, i16 noundef signext %3, i16 noundef signext %4, i16 noundef signext %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 9
  %8 = load i16, ptr %7, align 8, !tbaa !56
  %9 = zext i16 %8 to i32
  %10 = and i32 %9, 1024
  %11 = icmp eq i32 %10, 0
  %12 = and i32 %9, 65523
  %13 = select i1 %11, i32 %9, i32 %12
  %14 = and i32 %13, 512
  %15 = icmp eq i32 %14, 0
  %16 = and i32 %13, 65532
  %17 = select i1 %15, i32 %13, i32 %16
  %18 = load ptr, ptr @MEM_callocN, align 8, !tbaa !95
  %19 = tail call ptr %18(i64 noundef 72, ptr noundef nonnull @.str.3) #16
  %20 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa.struct !74
  %22 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 2, i32 1
  %23 = load i32, ptr %22, align 4, !tbaa.struct !151
  %24 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 2, i32 2
  %25 = load i32, ptr %24, align 8, !tbaa.struct !152
  %26 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 2, i32 3
  %27 = load i32, ptr %26, align 4, !tbaa.struct !153
  %28 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 3
  %29 = load i32, ptr %28, align 8, !tbaa.struct !74
  %30 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 3, i32 1
  %31 = load i32, ptr %30, align 4, !tbaa.struct !151
  %32 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 3, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa.struct !152
  %34 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 3, i32 3
  %35 = load i32, ptr %34, align 4, !tbaa.struct !153
  %36 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !76
  %37 = sitofp i16 %36 to float
  %38 = fmul float %37, 0x3FC99999A0000000
  %39 = fptosi float %38 to i32
  %40 = add nsw i32 %29, %39
  %41 = sub nsw i32 %31, %39
  %42 = and i32 %17, 8
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %43, i32 %39, i32 0
  %45 = sub nsw i32 %35, %44
  %46 = select i1 %43, i32 0, i32 %39
  %47 = add nsw i32 %46, %33
  %48 = and i32 %17, 1
  %49 = icmp eq i32 %48, 0
  %50 = select i1 %49, i32 %39, i32 0
  %51 = sub nsw i32 %23, %50
  %52 = select i1 %49, i32 0, i32 %39
  %53 = add nsw i32 %52, %21
  %54 = add nsw i32 %25, %39
  %55 = sub nsw i32 %27, %39
  %56 = sitofp i32 %54 to float
  %57 = sitofp i32 %55 to float
  %58 = tail call float @llvm.fmuladd.f32(float %37, float 0xBFE3333340000000, float %57)
  %59 = fcmp olt float %58, %56
  %60 = fptosi float %58 to i32
  %61 = select i1 %59, i32 %60, i32 %54
  %62 = sitofp i32 %40 to float
  %63 = sitofp i32 %41 to float
  %64 = tail call float @llvm.fmuladd.f32(float %37, float 0xBFE3333340000000, float %63)
  %65 = fcmp olt float %64, %62
  %66 = fptosi float %64 to i32
  %67 = select i1 %65, i32 %66, i32 %40
  %68 = getelementptr inbounds %struct.View2DScrollers, ptr %19, i64 0, i32 5
  store i32 %53, ptr %68, align 8, !tbaa.struct !74
  %69 = getelementptr inbounds %struct.View2DScrollers, ptr %19, i64 0, i32 5, i32 1
  store i32 %51, ptr %69, align 4, !tbaa.struct !151
  %70 = getelementptr inbounds %struct.View2DScrollers, ptr %19, i64 0, i32 5, i32 2
  store i32 %61, ptr %70, align 8, !tbaa.struct !152
  %71 = getelementptr inbounds %struct.View2DScrollers, ptr %19, i64 0, i32 5, i32 3
  store i32 %55, ptr %71, align 4, !tbaa.struct !153
  %72 = getelementptr inbounds %struct.View2DScrollers, ptr %19, i64 0, i32 4
  store i32 %67, ptr %72, align 8, !tbaa.struct !74
  %73 = getelementptr inbounds %struct.View2DScrollers, ptr %19, i64 0, i32 4, i32 1
  store i32 %41, ptr %73, align 4, !tbaa.struct !151
  %74 = getelementptr inbounds %struct.View2DScrollers, ptr %19, i64 0, i32 4, i32 2
  store i32 %47, ptr %74, align 8, !tbaa.struct !152
  %75 = getelementptr inbounds %struct.View2DScrollers, ptr %19, i64 0, i32 4, i32 3
  store i32 %45, ptr %75, align 4, !tbaa.struct !153
  %76 = and i32 %17, 12
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %143, label %78

78:                                               ; preds = %6
  %79 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 1
  %80 = load float, ptr %79, align 4, !tbaa !70
  %81 = load float, ptr %1, align 4, !tbaa !71
  %82 = fsub float %80, %81
  %83 = sub nsw i32 %41, %67
  %84 = sitofp i32 %83 to float
  %85 = fcmp oeq float %82, 0.000000e+00
  %86 = select i1 %85, float 1.000000e+00, float %82
  %87 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 1
  %88 = load float, ptr %87, align 8, !tbaa !60
  %89 = fsub float %88, %81
  %90 = fdiv float %89, %86
  %91 = fcmp ugt float %90, 0.000000e+00
  %92 = sitofp i32 %67 to float
  %93 = tail call float @llvm.fmuladd.f32(float %90, float %84, float %92)
  %94 = fptosi float %93 to i32
  %95 = select i1 %91, i32 %94, i32 %67
  %96 = getelementptr inbounds %struct.View2DScrollers, ptr %19, i64 0, i32 2
  store i32 %95, ptr %96, align 8, !tbaa !154
  %97 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 1, i32 1
  %98 = load float, ptr %97, align 4, !tbaa !61
  %99 = fsub float %98, %81
  %100 = fdiv float %99, %86
  %101 = fcmp ult float %100, 1.000000e+00
  %102 = sitofp i32 %67 to float
  %103 = tail call float @llvm.fmuladd.f32(float %100, float %84, float %102)
  %104 = fptosi float %103 to i32
  %105 = select i1 %101, i32 %104, i32 %41
  %106 = getelementptr inbounds %struct.View2DScrollers, ptr %19, i64 0, i32 3
  store i32 %105, ptr %106, align 4, !tbaa !156
  %107 = getelementptr inbounds %struct.View2DScrollers, ptr %19, i64 0, i32 2
  %108 = load i32, ptr %107, align 8, !tbaa !154
  %109 = getelementptr inbounds %struct.View2DScrollers, ptr %19, i64 0, i32 3
  %110 = icmp sgt i32 %108, %105
  br i1 %110, label %111, label %112

111:                                              ; preds = %78
  store i32 %105, ptr %107, align 8, !tbaa !154
  br label %112

112:                                              ; preds = %111, %78
  %113 = load i32, ptr %107, align 8, !tbaa !154
  %114 = sub nsw i32 %105, %113
  %115 = sitofp i32 %114 to float
  %116 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !76
  %117 = sitofp i16 %116 to float
  %118 = fmul float %117, 0x3FE3333340000000
  %119 = fcmp ogt float %118, %115
  br i1 %119, label %120, label %143

120:                                              ; preds = %112
  %121 = sitofp i32 %113 to float
  %122 = tail call float @llvm.fmuladd.f32(float %117, float 0x3FE3333340000000, float %121)
  %123 = fptosi float %122 to i32
  store i32 %123, ptr %109, align 4, !tbaa !156
  %124 = sitofp i32 %123 to float
  %125 = sitofp i32 %67 to float
  %126 = tail call float @llvm.fmuladd.f32(float %117, float 0x3FE3333340000000, float %125)
  %127 = fcmp ogt float %126, %124
  br i1 %127, label %128, label %130

128:                                              ; preds = %120
  %129 = fptosi float %126 to i32
  br label %132

130:                                              ; preds = %120
  %131 = icmp slt i32 %41, %123
  br i1 %131, label %132, label %134

132:                                              ; preds = %130, %128
  %133 = phi i32 [ %129, %128 ], [ %41, %130 ]
  store i32 %133, ptr %109, align 4, !tbaa !156
  br label %134

134:                                              ; preds = %132, %130
  %135 = icmp slt i32 %113, %67
  br i1 %135, label %141, label %136

136:                                              ; preds = %134
  %137 = tail call float @llvm.fmuladd.f32(float %117, float 0xBFE3333340000000, float %63)
  %138 = fcmp olt float %137, %121
  br i1 %138, label %139, label %143

139:                                              ; preds = %136
  %140 = fptosi float %137 to i32
  br label %141

141:                                              ; preds = %134, %139
  %142 = phi i32 [ %140, %139 ], [ %67, %134 ]
  store i32 %142, ptr %107, align 8, !tbaa !154
  br label %143

143:                                              ; preds = %141, %112, %136, %6
  %144 = and i32 %17, 3
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %207, label %146

146:                                              ; preds = %143
  %147 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 3
  %148 = load float, ptr %147, align 4, !tbaa !72
  %149 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 2
  %150 = load float, ptr %149, align 4, !tbaa !73
  %151 = fsub float %148, %150
  %152 = sub nsw i32 %55, %61
  %153 = sitofp i32 %152 to float
  %154 = fcmp oeq float %151, 0.000000e+00
  %155 = select i1 %154, float 1.000000e+00, float %151
  %156 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 1, i32 2
  %157 = load float, ptr %156, align 8, !tbaa !63
  %158 = fsub float %157, %150
  %159 = fdiv float %158, %155
  %160 = fcmp ugt float %159, 0.000000e+00
  %161 = sitofp i32 %61 to float
  %162 = tail call float @llvm.fmuladd.f32(float %159, float %153, float %161)
  %163 = fptosi float %162 to i32
  %164 = select i1 %160, i32 %163, i32 %61
  store i32 %164, ptr %19, align 8, !tbaa !157
  %165 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 1, i32 3
  %166 = load float, ptr %165, align 4, !tbaa !62
  %167 = fsub float %166, %150
  %168 = fdiv float %167, %155
  %169 = fcmp ult float %168, 1.000000e+00
  %170 = tail call float @llvm.fmuladd.f32(float %168, float %153, float %161)
  %171 = fptosi float %170 to i32
  %172 = select i1 %169, i32 %171, i32 %55
  %173 = getelementptr inbounds %struct.View2DScrollers, ptr %19, i64 0, i32 1
  store i32 %172, ptr %173, align 4, !tbaa !158
  %174 = getelementptr inbounds %struct.View2DScrollers, ptr %19, i64 0, i32 1
  %175 = icmp sgt i32 %164, %172
  br i1 %175, label %176, label %177

176:                                              ; preds = %146
  store i32 %172, ptr %19, align 8, !tbaa !157
  br label %177

177:                                              ; preds = %176, %146
  %178 = load i32, ptr %19, align 8, !tbaa !157
  %179 = sub nsw i32 %172, %178
  %180 = sitofp i32 %179 to float
  %181 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !76
  %182 = sitofp i16 %181 to float
  %183 = fmul float %182, 0x3FE3333340000000
  %184 = fcmp ogt float %183, %180
  br i1 %184, label %185, label %207

185:                                              ; preds = %177
  %186 = sitofp i32 %178 to float
  %187 = tail call float @llvm.fmuladd.f32(float %182, float 0x3FE3333340000000, float %186)
  %188 = fptosi float %187 to i32
  store i32 %188, ptr %174, align 4, !tbaa !158
  %189 = sitofp i32 %188 to float
  %190 = tail call float @llvm.fmuladd.f32(float %182, float 0x3FE3333340000000, float %161)
  %191 = fcmp ogt float %190, %189
  br i1 %191, label %192, label %194

192:                                              ; preds = %185
  %193 = fptosi float %190 to i32
  br label %196

194:                                              ; preds = %185
  %195 = icmp slt i32 %55, %188
  br i1 %195, label %196, label %198

196:                                              ; preds = %194, %192
  %197 = phi i32 [ %193, %192 ], [ %55, %194 ]
  store i32 %197, ptr %174, align 4, !tbaa !158
  br label %198

198:                                              ; preds = %196, %194
  %199 = icmp slt i32 %178, %61
  br i1 %199, label %205, label %200

200:                                              ; preds = %198
  %201 = tail call float @llvm.fmuladd.f32(float %182, float 0xBFE3333340000000, float %57)
  %202 = fcmp olt float %201, %186
  br i1 %202, label %203, label %207

203:                                              ; preds = %200
  %204 = fptosi float %201 to i32
  br label %205

205:                                              ; preds = %198, %203
  %206 = phi i32 [ %204, %203 ], [ %61, %198 ]
  store i32 %206, ptr %19, align 8, !tbaa !157
  br label %207

207:                                              ; preds = %205, %177, %200, %143
  %208 = and i32 %17, 96
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %219, label %210

210:                                              ; preds = %207
  %211 = getelementptr inbounds %struct.View2DScrollers, ptr %19, i64 0, i32 10
  store i16 %3, ptr %211, align 2, !tbaa !159
  %212 = getelementptr inbounds %struct.View2DScrollers, ptr %19, i64 0, i32 9
  store i16 %2, ptr %212, align 8, !tbaa !160
  %213 = getelementptr inbounds %struct.View2DScrollers, ptr %19, i64 0, i32 12
  store i16 %5, ptr %213, align 2, !tbaa !161
  %214 = getelementptr inbounds %struct.View2DScrollers, ptr %19, i64 0, i32 11
  store i16 %4, ptr %214, align 4, !tbaa !162
  %215 = tail call ptr @CTX_data_scene(ptr noundef %0) #16
  %216 = sub nsw i32 %55, %61
  %217 = tail call ptr @UI_view2d_grid_calc(ptr noundef %215, ptr noundef %1, i16 noundef signext %2, i16 noundef signext %3, i16 noundef signext %4, i16 noundef signext %5, i32 poison, i32 noundef %216)
  %218 = getelementptr inbounds %struct.View2DScrollers, ptr %19, i64 0, i32 8
  store ptr %217, ptr %218, align 8, !tbaa !163
  br label %219

219:                                              ; preds = %210, %207
  ret ptr %19
}

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @UI_view2d_scrollers_draw(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca [32 x i8], align 16
  %5 = alloca [32 x i8], align 16
  %6 = alloca [32 x i8], align 16
  %7 = alloca [32 x i8], align 16
  %8 = alloca [32 x i8], align 16
  %9 = alloca %struct.rcti, align 4
  %10 = alloca %struct.rcti, align 4
  %11 = alloca %struct.uiWidgetColors, align 2
  %12 = alloca %struct.rcti, align 4
  %13 = alloca [4 x i8], align 1
  %14 = alloca %struct.uiWidgetColors, align 2
  %15 = alloca %struct.rcti, align 4
  %16 = alloca [4 x i8], align 1
  %17 = tail call ptr @CTX_data_scene(ptr noundef %0) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #16
  %18 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 9
  %19 = load i16, ptr %18, align 8, !tbaa !56
  %20 = zext i16 %19 to i32
  %21 = and i32 %20, 1024
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %20, 65523
  %24 = select i1 %22, i32 %20, i32 %23
  %25 = and i32 %24, 512
  %26 = icmp eq i32 %25, 0
  %27 = and i32 %24, 65532
  %28 = select i1 %26, i32 %24, i32 %27
  %29 = getelementptr inbounds %struct.View2DScrollers, ptr %2, i64 0, i32 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %29, i64 16, i1 false), !tbaa.struct !74
  %30 = getelementptr inbounds %struct.View2DScrollers, ptr %2, i64 0, i32 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %30, i64 16, i1 false), !tbaa.struct !74
  %31 = and i32 %28, 12
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %221, label %33

33:                                               ; preds = %3
  %34 = tail call ptr @UI_GetTheme() #16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #16
  %35 = getelementptr inbounds %struct.bTheme, ptr %34, i64 0, i32 3, i32 14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %35, i64 32, i1 false), !tbaa.struct !164
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #16
  %36 = getelementptr inbounds %struct.View2DScrollers, ptr %2, i64 0, i32 2
  %37 = load i32, ptr %36, align 8, !tbaa !154
  store i32 %37, ptr %12, align 4, !tbaa !90
  %38 = getelementptr inbounds %struct.View2DScrollers, ptr %2, i64 0, i32 3
  %39 = load i32, ptr %38, align 4, !tbaa !156
  %40 = getelementptr inbounds %struct.rcti, ptr %12, i64 0, i32 1
  store i32 %39, ptr %40, align 4, !tbaa !89
  %41 = getelementptr inbounds %struct.rcti, ptr %10, i64 0, i32 2
  %42 = load i32, ptr %41, align 4, !tbaa !92
  %43 = getelementptr inbounds %struct.rcti, ptr %12, i64 0, i32 2
  store i32 %42, ptr %43, align 4, !tbaa !92
  %44 = getelementptr inbounds %struct.rcti, ptr %10, i64 0, i32 3
  %45 = load i32, ptr %44, align 4, !tbaa !91
  %46 = getelementptr inbounds %struct.rcti, ptr %12, i64 0, i32 3
  store i32 %45, ptr %46, align 4, !tbaa !91
  %47 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 10
  %48 = load i16, ptr %47, align 2, !tbaa !167
  %49 = and i16 %48, 1
  %50 = zext nneg i16 %49 to i32
  %51 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 12
  %52 = load i16, ptr %51, align 2, !tbaa !44
  %53 = and i16 %52, 256
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %33
  %56 = load i16, ptr %18, align 8, !tbaa !56
  %57 = and i16 %56, 64
  %58 = icmp eq i16 %57, 0
  br i1 %58, label %68, label %59

59:                                               ; preds = %55
  %60 = sub nsw i32 %39, %37
  %61 = sitofp i32 %60 to float
  %62 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !76
  %63 = sitofp i16 %62 to float
  %64 = fmul float %63, 0x3FE3333340000000
  %65 = fcmp olt float %64, %61
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = or disjoint i32 %50, 2
  br label %68

68:                                               ; preds = %66, %59, %55, %33
  %69 = phi i32 [ %67, %66 ], [ %50, %59 ], [ %50, %55 ], [ %50, %33 ]
  call void @UI_GetThemeColor4ubv(i32 noundef 2, ptr noundef nonnull %13) #16
  %70 = getelementptr inbounds [4 x i8], ptr %13, i64 0, i64 3
  %71 = load i8, ptr %70, align 1, !tbaa !165
  %72 = icmp eq i8 %71, -1
  br i1 %72, label %73, label %87

73:                                               ; preds = %68
  %74 = load i8, ptr %13, align 1, !tbaa !165
  %75 = getelementptr inbounds [4 x i8], ptr %13, i64 0, i64 1
  %76 = load i8, ptr %75, align 1, !tbaa !165
  %77 = getelementptr inbounds [4 x i8], ptr %13, i64 0, i64 2
  %78 = load i8, ptr %77, align 1, !tbaa !165
  call void @glColor3ub(i8 noundef zeroext %74, i8 noundef zeroext %76, i8 noundef zeroext %78) #16
  %79 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 3
  %80 = load i32, ptr %79, align 8, !tbaa !168
  %81 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 3, i32 2
  %82 = load i32, ptr %81, align 8, !tbaa !84
  %83 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 3, i32 1
  %84 = load i32, ptr %83, align 4, !tbaa !169
  %85 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 3, i32 3
  %86 = load i32, ptr %85, align 4, !tbaa !83
  call void @glRecti(i32 noundef %80, i32 noundef %82, i32 noundef %84, i32 noundef %86) #16
  br label %87

87:                                               ; preds = %73, %68
  call void @uiWidgetScrollDraw(ptr noundef nonnull %11, ptr noundef nonnull %10, ptr noundef nonnull %12, i32 noundef %69) #16
  %88 = and i32 %28, 64
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %220, label %90

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.View2DScrollers, ptr %2, i64 0, i32 8
  %92 = load ptr, ptr %91, align 8, !tbaa !163
  %93 = icmp eq ptr %92, null
  br i1 %93, label %220, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.View2DGrid, ptr %92, i64 0, i32 2
  %96 = load float, ptr %95, align 4, !tbaa !140
  %97 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 1
  %98 = load float, ptr %97, align 8, !tbaa !71
  %99 = fsub float %96, %98
  %100 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 1, i32 1
  %101 = load float, ptr %100, align 4, !tbaa !70
  %102 = fsub float %101, %98
  %103 = fdiv float %99, %102
  %104 = load i32, ptr %10, align 4, !tbaa !90
  %105 = sitofp i32 %104 to float
  %106 = getelementptr inbounds %struct.rcti, ptr %10, i64 0, i32 1
  %107 = load i32, ptr %106, align 4, !tbaa !89
  %108 = sub nsw i32 %107, %104
  %109 = sitofp i32 %108 to float
  %110 = call float @llvm.fmuladd.f32(float %103, float %109, float %105)
  %111 = load float, ptr %92, align 4, !tbaa !135
  %112 = fdiv float %111, %102
  %113 = fmul float %112, %109
  call void @UI_ThemeColor(i32 noundef 3) #16
  %114 = load float, ptr %95, align 4, !tbaa !140
  %115 = getelementptr inbounds %struct.View2DScrollers, ptr %2, i64 0, i32 10
  %116 = load i16, ptr %115, align 2, !tbaa !159
  %117 = icmp eq i16 %116, 1
  br i1 %117, label %118, label %128

118:                                              ; preds = %94
  %119 = load float, ptr %92, align 4, !tbaa !135
  %120 = fcmp olt float %119, 0x3FEFFF2E40000000
  br i1 %120, label %121, label %128

121:                                              ; preds = %118, %121
  %122 = phi float [ %125, %121 ], [ %113, %118 ]
  %123 = phi float [ %124, %121 ], [ %119, %118 ]
  %124 = fmul float %123, 2.000000e+00
  %125 = fmul float %122, 2.000000e+00
  %126 = fcmp olt float %124, 0x3FEFFF2E40000000
  br i1 %126, label %121, label %127, !llvm.loop !170

127:                                              ; preds = %121
  store float %124, ptr %92, align 4, !tbaa !135
  br label %128

128:                                              ; preds = %118, %127, %94
  %129 = phi float [ %113, %94 ], [ %125, %127 ], [ %113, %118 ]
  %130 = getelementptr inbounds %struct.View2DScrollers, ptr %2, i64 0, i32 9
  %131 = load i16, ptr %130, align 8, !tbaa !160
  %132 = icmp eq i16 %131, 1
  br i1 %132, label %133, label %135

133:                                              ; preds = %128
  %134 = getelementptr inbounds %struct.View2DGrid, ptr %92, i64 0, i32 4
  store i32 1, ptr %134, align 4, !tbaa !137
  br label %135

135:                                              ; preds = %133, %128
  %136 = fcmp ogt float %129, 0.000000e+00
  br i1 %136, label %137, label %220

137:                                              ; preds = %135
  %138 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !76
  %139 = sitofp i16 %138 to float
  %140 = load i32, ptr %41, align 4, !tbaa !92
  %141 = sitofp i32 %140 to float
  %142 = call float @llvm.fmuladd.f32(float %139, float 0x3FB99999A0000000, float %141)
  %143 = load i32, ptr %106, align 4, !tbaa !89
  %144 = sitofp i32 %143 to float
  %145 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !76
  %146 = sitofp i16 %145 to float
  %147 = call float @llvm.fmuladd.f32(float %146, float -5.000000e-01, float %144)
  %148 = fcmp olt float %110, %147
  br i1 %148, label %149, label %220

149:                                              ; preds = %137
  %150 = getelementptr inbounds %struct.View2DGrid, ptr %92, i64 0, i32 4
  %151 = getelementptr inbounds %struct.Scene, ptr %17, i64 0, i32 22, i32 55
  %152 = getelementptr inbounds %struct.Scene, ptr %17, i64 0, i32 22, i32 65
  %153 = getelementptr inbounds %struct.View2DGrid, ptr %92, i64 0, i32 4
  %154 = getelementptr inbounds %struct.View2DGrid, ptr %92, i64 0, i32 4
  %155 = getelementptr inbounds %struct.View2DGrid, ptr %92, i64 0, i32 4
  br label %156

156:                                              ; preds = %149, %210
  %157 = phi float [ %146, %149 ], [ %217, %210 ]
  %158 = phi float [ %110, %149 ], [ %211, %210 ]
  %159 = phi float [ %114, %149 ], [ %213, %210 ]
  %160 = load i32, ptr %10, align 4, !tbaa !90
  %161 = sitofp i32 %160 to float
  %162 = call float @llvm.fmuladd.f32(float %157, float 5.000000e-01, float %161)
  %163 = fcmp olt float %158, %162
  br i1 %163, label %210, label %164

164:                                              ; preds = %156
  %165 = load i16, ptr %130, align 8, !tbaa !160
  switch i16 %165, label %210 [
    i16 1, label %166
    i16 2, label %174
    i16 0, label %182
    i16 4, label %198
  ]

166:                                              ; preds = %164
  %167 = load i32, ptr %155, align 4, !tbaa !137
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #16
  %168 = call i64 @BLI_timecode_string_from_time_simple(ptr noundef nonnull %8, i64 noundef 32, i32 noundef %167, float noundef %159) #16
  %169 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %8) #17
  %170 = trunc i64 %169 to i32
  %171 = shl nsw i32 %170, 2
  %172 = sitofp i32 %171 to float
  %173 = fsub float %158, %172
  call void @BLF_draw_default_ascii(float noundef %173, float noundef %142, float noundef 0.000000e+00, ptr noundef nonnull %8, i64 noundef 32) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #16
  br label %210

174:                                              ; preds = %164
  %175 = load i32, ptr %154, align 4, !tbaa !137
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #16
  %176 = call i64 @BLI_timecode_string_from_time_simple(ptr noundef nonnull %7, i64 noundef 32, i32 noundef %175, float noundef %159) #16
  %177 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #17
  %178 = trunc i64 %177 to i32
  %179 = shl nsw i32 %178, 2
  %180 = sitofp i32 %179 to float
  %181 = fsub float %158, %180
  call void @BLF_draw_default_ascii(float noundef %181, float noundef %142, float noundef 0.000000e+00, ptr noundef nonnull %7, i64 noundef 32) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #16
  br label %210

182:                                              ; preds = %164
  %183 = load i16, ptr %151, align 4, !tbaa !112
  %184 = sitofp i16 %183 to double
  %185 = load float, ptr %152, align 4, !tbaa !131
  %186 = fpext float %185 to double
  %187 = fdiv double %184, %186
  %188 = fptrunc double %187 to float
  %189 = fdiv float %159, %188
  %190 = load i32, ptr %153, align 4, !tbaa !137
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #16
  %191 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 17), align 2, !tbaa !171
  %192 = call i64 @BLI_timecode_string_from_time(ptr noundef nonnull %6, i64 noundef 32, i32 noundef %190, float noundef %189, double noundef %187, i16 noundef signext %191) #16
  %193 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #17
  %194 = trunc i64 %193 to i32
  %195 = mul nsw i32 %194, 3
  %196 = sitofp i32 %195 to float
  %197 = fsub float %158, %196
  call void @BLF_draw_default_ascii(float noundef %197, float noundef %142, float noundef 0.000000e+00, ptr noundef nonnull %6, i64 noundef 32) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #16
  br label %210

198:                                              ; preds = %164
  %199 = load i32, ptr %150, align 4, !tbaa !137
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %200 = fmul float %159, 1.000000e+01
  %201 = add nsw i32 %199, 1
  %202 = call i64 @BLI_timecode_string_from_time_simple(ptr noundef nonnull %5, i64 noundef 32, i32 noundef %201, float noundef %200) #16
  %203 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #17
  %204 = shl i64 %203, 32
  %205 = ashr exact i64 %204, 32
  %206 = getelementptr inbounds [32 x i8], ptr %5, i64 0, i64 %205
  store i8 -70, ptr %206, align 1, !tbaa !165
  %207 = add i64 %204, 4294967296
  %208 = ashr exact i64 %207, 32
  %209 = getelementptr inbounds [32 x i8], ptr %5, i64 0, i64 %208
  store i8 0, ptr %209, align 1, !tbaa !165
  call void @BLF_draw_default_ascii(float noundef %158, float noundef %142, float noundef 0.000000e+00, ptr noundef nonnull %5, i64 noundef 32) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %210

210:                                              ; preds = %166, %174, %182, %198, %164, %156
  %211 = fadd float %129, %158
  %212 = load float, ptr %92, align 4, !tbaa !135
  %213 = fadd float %159, %212
  %214 = load i32, ptr %106, align 4, !tbaa !89
  %215 = sitofp i32 %214 to float
  %216 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !76
  %217 = sitofp i16 %216 to float
  %218 = call float @llvm.fmuladd.f32(float %217, float -5.000000e-01, float %215)
  %219 = fcmp olt float %211, %218
  br i1 %219, label %156, label %220, !llvm.loop !172

220:                                              ; preds = %210, %137, %135, %90, %87
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #16
  br label %221

221:                                              ; preds = %220, %3
  %222 = and i32 %28, 3
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %374, label %224

224:                                              ; preds = %221
  %225 = call ptr @UI_GetTheme() #16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %14) #16
  %226 = getelementptr inbounds %struct.bTheme, ptr %225, i64 0, i32 3, i32 14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %226, i64 32, i1 false), !tbaa.struct !164
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #16
  %227 = load i32, ptr %9, align 4, !tbaa !90
  store i32 %227, ptr %15, align 4, !tbaa !90
  %228 = getelementptr inbounds %struct.rcti, ptr %9, i64 0, i32 1
  %229 = load i32, ptr %228, align 4, !tbaa !89
  %230 = getelementptr inbounds %struct.rcti, ptr %15, i64 0, i32 1
  store i32 %229, ptr %230, align 4, !tbaa !89
  %231 = load i32, ptr %2, align 8, !tbaa !157
  %232 = getelementptr inbounds %struct.rcti, ptr %15, i64 0, i32 2
  store i32 %231, ptr %232, align 4, !tbaa !92
  %233 = getelementptr inbounds %struct.View2DScrollers, ptr %2, i64 0, i32 1
  %234 = load i32, ptr %233, align 4, !tbaa !158
  %235 = getelementptr inbounds %struct.rcti, ptr %15, i64 0, i32 3
  store i32 %234, ptr %235, align 4, !tbaa !91
  %236 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 10
  %237 = load i16, ptr %236, align 2, !tbaa !167
  %238 = lshr i16 %237, 1
  %239 = and i16 %238, 1
  %240 = zext nneg i16 %239 to i32
  %241 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 12
  %242 = load i16, ptr %241, align 2, !tbaa !44
  %243 = and i16 %242, 512
  %244 = icmp eq i16 %243, 0
  br i1 %244, label %245, label %258

245:                                              ; preds = %224
  %246 = load i16, ptr %18, align 8, !tbaa !56
  %247 = and i16 %246, 32
  %248 = icmp eq i16 %247, 0
  br i1 %248, label %258, label %249

249:                                              ; preds = %245
  %250 = sub nsw i32 %234, %231
  %251 = sitofp i32 %250 to float
  %252 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !76
  %253 = sitofp i16 %252 to float
  %254 = fmul float %253, 0x3FE3333340000000
  %255 = fcmp olt float %254, %251
  br i1 %255, label %256, label %258

256:                                              ; preds = %249
  %257 = or disjoint i32 %240, 2
  br label %258

258:                                              ; preds = %256, %249, %245, %224
  %259 = phi i32 [ %257, %256 ], [ %240, %249 ], [ %240, %245 ], [ %240, %224 ]
  call void @UI_GetThemeColor4ubv(i32 noundef 2, ptr noundef nonnull %16) #16
  %260 = getelementptr inbounds [4 x i8], ptr %16, i64 0, i64 3
  %261 = load i8, ptr %260, align 1, !tbaa !165
  %262 = icmp eq i8 %261, -1
  br i1 %262, label %263, label %277

263:                                              ; preds = %258
  %264 = load i8, ptr %16, align 1, !tbaa !165
  %265 = getelementptr inbounds [4 x i8], ptr %16, i64 0, i64 1
  %266 = load i8, ptr %265, align 1, !tbaa !165
  %267 = getelementptr inbounds [4 x i8], ptr %16, i64 0, i64 2
  %268 = load i8, ptr %267, align 1, !tbaa !165
  call void @glColor3ub(i8 noundef zeroext %264, i8 noundef zeroext %266, i8 noundef zeroext %268) #16
  %269 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 2
  %270 = load i32, ptr %269, align 8, !tbaa !82
  %271 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 2, i32 2
  %272 = load i32, ptr %271, align 8, !tbaa !85
  %273 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 2, i32 1
  %274 = load i32, ptr %273, align 4, !tbaa !81
  %275 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 2, i32 3
  %276 = load i32, ptr %275, align 4, !tbaa !86
  call void @glRecti(i32 noundef %270, i32 noundef %272, i32 noundef %274, i32 noundef %276) #16
  br label %277

277:                                              ; preds = %263, %258
  call void @uiWidgetScrollDraw(ptr noundef nonnull %14, ptr noundef nonnull %9, ptr noundef nonnull %15, i32 noundef %259) #16
  %278 = and i32 %28, 32
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %373, label %280

280:                                              ; preds = %277
  %281 = getelementptr inbounds %struct.View2DScrollers, ptr %2, i64 0, i32 8
  %282 = load ptr, ptr %281, align 8, !tbaa !163
  %283 = icmp eq ptr %282, null
  br i1 %283, label %373, label %284

284:                                              ; preds = %280
  %285 = getelementptr inbounds %struct.View2DGrid, ptr %282, i64 0, i32 3
  %286 = load float, ptr %285, align 4, !tbaa !141
  %287 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 1, i32 2
  %288 = load float, ptr %287, align 8, !tbaa !73
  %289 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 1, i32 3
  %290 = load float, ptr %289, align 4, !tbaa !72
  %291 = fsub float %290, %288
  %292 = getelementptr inbounds %struct.rcti, ptr %9, i64 0, i32 2
  %293 = load i32, ptr %292, align 4, !tbaa !92
  %294 = getelementptr inbounds %struct.rcti, ptr %9, i64 0, i32 3
  %295 = load i32, ptr %294, align 4, !tbaa !91
  %296 = sub nsw i32 %295, %293
  %297 = sitofp i32 %296 to float
  %298 = getelementptr inbounds %struct.View2DGrid, ptr %282, i64 0, i32 1
  %299 = load float, ptr %298, align 4, !tbaa !138
  %300 = fdiv float %299, %291
  %301 = fmul float %300, %297
  call void @UI_ThemeColor(i32 noundef 3) #16
  %302 = fcmp ogt float %301, 0.000000e+00
  br i1 %302, label %303, label %373

303:                                              ; preds = %284
  %304 = getelementptr inbounds %struct.View2DScrollers, ptr %2, i64 0, i32 12
  %305 = load i16, ptr %304, align 2, !tbaa !161
  %306 = icmp eq i16 %305, 1
  %307 = fsub float %286, %288
  %308 = fdiv float %307, %291
  %309 = sitofp i32 %293 to float
  %310 = call float @llvm.fmuladd.f32(float %308, float %297, float %309)
  %311 = call float @llvm.fmuladd.f32(float %301, float 5.000000e-01, float %310)
  %312 = select i1 %306, float %311, float %310
  %313 = load float, ptr %285, align 4, !tbaa !141
  call void @BLF_rotation_default(float noundef 0x3FF921FB60000000) #16
  call void @BLF_enable_default(i32 noundef 1) #16
  %314 = load i32, ptr %294, align 4, !tbaa !91
  %315 = add nsw i32 %314, -10
  %316 = sitofp i32 %315 to float
  %317 = fcmp olt float %312, %316
  br i1 %317, label %318, label %372

318:                                              ; preds = %303
  %319 = getelementptr inbounds %struct.View2DGrid, ptr %282, i64 0, i32 5
  %320 = getelementptr inbounds %struct.View2DScrollers, ptr %2, i64 0, i32 11
  %321 = getelementptr inbounds %struct.Scene, ptr %17, i64 0, i32 22, i32 55
  %322 = getelementptr inbounds %struct.Scene, ptr %17, i64 0, i32 22, i32 65
  br label %323

323:                                              ; preds = %318, %364
  %324 = phi float [ %313, %318 ], [ %367, %364 ]
  %325 = phi float [ %312, %318 ], [ %365, %364 ]
  %326 = load i32, ptr %292, align 4, !tbaa !92
  %327 = add nsw i32 %326, 10
  %328 = sitofp i32 %327 to float
  %329 = fcmp olt float %325, %328
  br i1 %329, label %364, label %330

330:                                              ; preds = %323
  %331 = load i32, ptr %228, align 4, !tbaa !89
  %332 = sitofp i32 %331 to float
  %333 = fadd float %332, -2.000000e+00
  %334 = load i32, ptr %319, align 4, !tbaa !139
  %335 = load i16, ptr %320, align 4, !tbaa !162
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #16
  %336 = and i16 %335, -2
  %337 = icmp eq i16 %336, 4
  %338 = fmul float %324, 1.000000e+01
  %339 = zext i1 %337 to i32
  %340 = add nsw i32 %334, %339
  %341 = select i1 %337, float %338, float %324
  %342 = icmp eq i16 %335, 0
  br i1 %342, label %343, label %351

343:                                              ; preds = %330
  %344 = load i16, ptr %321, align 4, !tbaa !112
  %345 = sitofp i16 %344 to double
  %346 = load float, ptr %322, align 4, !tbaa !131
  %347 = fpext float %346 to double
  %348 = fdiv double %345, %347
  %349 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 17), align 2, !tbaa !171
  %350 = call i64 @BLI_timecode_string_from_time(ptr noundef nonnull %4, i64 noundef 32, i32 noundef %340, float noundef %341, double noundef %348, i16 noundef signext %349) #16
  br label %353

351:                                              ; preds = %330
  %352 = call i64 @BLI_timecode_string_from_time_simple(ptr noundef nonnull %4, i64 noundef 32, i32 noundef %340, float noundef %341) #16
  br label %353

353:                                              ; preds = %351, %343
  %354 = icmp eq i16 %335, 4
  br i1 %354, label %355, label %363

355:                                              ; preds = %353
  %356 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #17
  %357 = shl i64 %356, 32
  %358 = ashr exact i64 %357, 32
  %359 = getelementptr inbounds [32 x i8], ptr %4, i64 0, i64 %358
  store i8 -70, ptr %359, align 1, !tbaa !165
  %360 = add i64 %357, 4294967296
  %361 = ashr exact i64 %360, 32
  %362 = getelementptr inbounds [32 x i8], ptr %4, i64 0, i64 %361
  store i8 0, ptr %362, align 1, !tbaa !165
  br label %363

363:                                              ; preds = %353, %355
  call void @BLF_draw_default_ascii(float noundef %333, float noundef %325, float noundef 0.000000e+00, ptr noundef nonnull %4, i64 noundef 32) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #16
  br label %364

364:                                              ; preds = %323, %363
  %365 = fadd float %301, %325
  %366 = load float, ptr %298, align 4, !tbaa !138
  %367 = fadd float %324, %366
  %368 = load i32, ptr %294, align 4, !tbaa !91
  %369 = add nsw i32 %368, -10
  %370 = sitofp i32 %369 to float
  %371 = fcmp olt float %365, %370
  br i1 %371, label %323, label %372, !llvm.loop !173

372:                                              ; preds = %364, %303
  call void @BLF_disable_default(i32 noundef 1) #16
  br label %373

373:                                              ; preds = %284, %372, %280, %277
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #16
  br label %374

374:                                              ; preds = %373, %221
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #16
  ret void
}

declare ptr @UI_GetTheme() local_unnamed_addr #2

declare void @UI_GetThemeColor4ubv(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @glColor3ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare void @glRecti(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @uiWidgetScrollDraw(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BLF_rotation_default(float noundef) local_unnamed_addr #2

declare void @BLF_enable_default(i32 noundef) local_unnamed_addr #2

declare void @BLF_disable_default(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @UI_view2d_scrollers_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.View2DScrollers, ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !163
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !95
  tail call void %6(ptr noundef nonnull %3) #16
  br label %7

7:                                                ; preds = %5, %1
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !95
  tail call void %8(ptr noundef %0) #16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @UI_view2d_listview_cell_to_view(ptr noundef readonly %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef writeonly %7) local_unnamed_addr #7 {
  %9 = icmp eq ptr %0, null
  %10 = icmp eq ptr %7, null
  %11 = or i1 %9, %10
  br i1 %11, label %44, label %12

12:                                               ; preds = %8
  %13 = fcmp ole float %1, 0.000000e+00
  %14 = fcmp ole float %2, 0.000000e+00
  %15 = and i1 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  br label %44

17:                                               ; preds = %12
  %18 = sitofp i32 %5 to float
  %19 = tail call float @llvm.fmuladd.f32(float %1, float %18, float %3)
  store float %19, ptr %7, align 4, !tbaa !71
  %20 = add nsw i32 %5, 1
  %21 = sitofp i32 %20 to float
  %22 = tail call float @llvm.fmuladd.f32(float %1, float %21, float %3)
  %23 = getelementptr inbounds %struct.rctf, ptr %7, i64 0, i32 1
  store float %22, ptr %23, align 4, !tbaa !70
  %24 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 15
  %25 = load i16, ptr %24, align 4, !tbaa !47
  %26 = and i16 %25, 3
  %27 = icmp eq i16 %26, 1
  br i1 %27, label %28, label %31

28:                                               ; preds = %17
  %29 = fneg float %19
  store float %29, ptr %7, align 4, !tbaa !71
  %30 = fneg float %22
  store float %30, ptr %23, align 4, !tbaa !70
  br label %31

31:                                               ; preds = %28, %17
  %32 = sitofp i32 %6 to float
  %33 = tail call float @llvm.fmuladd.f32(float %2, float %32, float %4)
  %34 = getelementptr inbounds %struct.rctf, ptr %7, i64 0, i32 2
  store float %33, ptr %34, align 4, !tbaa !73
  %35 = add nsw i32 %6, 1
  %36 = sitofp i32 %35 to float
  %37 = tail call float @llvm.fmuladd.f32(float %2, float %36, float %4)
  %38 = getelementptr inbounds %struct.rctf, ptr %7, i64 0, i32 3
  store float %37, ptr %38, align 4, !tbaa !72
  %39 = and i16 %25, 12
  %40 = icmp eq i16 %39, 4
  br i1 %40, label %41, label %44

41:                                               ; preds = %31
  %42 = fneg float %33
  store float %42, ptr %34, align 4, !tbaa !73
  %43 = fneg float %37
  store float %43, ptr %38, align 4, !tbaa !72
  br label %44

44:                                               ; preds = %8, %16, %41, %31
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @UI_view2d_listview_view_to_cell(ptr noundef readnone %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, ptr noundef writeonly %7, ptr noundef writeonly %8) local_unnamed_addr #12 {
  %10 = tail call float @llvm.fabs.f32(float %5)
  %11 = fadd float %10, 5.000000e-01
  %12 = tail call float @llvm.floor.f32(float %11)
  %13 = fsub float %12, %3
  %14 = fptosi float %13 to i32
  %15 = tail call float @llvm.fabs.f32(float %6)
  %16 = fadd float %15, 5.000000e-01
  %17 = tail call float @llvm.floor.f32(float %16)
  %18 = fsub float %17, %4
  %19 = fptosi float %18 to i32
  %20 = icmp eq ptr %0, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %9
  %22 = fcmp ole float %1, 0.000000e+00
  %23 = fcmp ole float %2, 0.000000e+00
  %24 = and i1 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %21, %9
  %26 = icmp eq ptr %7, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %25
  store i32 0, ptr %7, align 4, !tbaa !75
  br label %28

28:                                               ; preds = %27, %25
  %29 = icmp eq ptr %8, null
  br i1 %29, label %52, label %50

30:                                               ; preds = %21
  %31 = icmp ne ptr %7, null
  %32 = fcmp ogt float %1, 0.000000e+00
  %33 = and i1 %32, %31
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = sitofp i32 %14 to float
  %36 = fdiv float %35, %1
  %37 = fptosi float %36 to i32
  br label %39

38:                                               ; preds = %30
  br i1 %31, label %39, label %41

39:                                               ; preds = %38, %34
  %40 = phi i32 [ %37, %34 ], [ 0, %38 ]
  store i32 %40, ptr %7, align 4, !tbaa !75
  br label %41

41:                                               ; preds = %39, %38
  %42 = icmp ne ptr %8, null
  %43 = fcmp ogt float %2, 0.000000e+00
  %44 = and i1 %43, %42
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = sitofp i32 %19 to float
  %47 = fdiv float %46, %2
  %48 = fptosi float %47 to i32
  br label %50

49:                                               ; preds = %41
  br i1 %42, label %50, label %52

50:                                               ; preds = %49, %28, %45
  %51 = phi i32 [ %48, %45 ], [ 0, %28 ], [ 0, %49 ]
  store i32 %51, ptr %8, align 4, !tbaa !75
  br label %52

52:                                               ; preds = %50, %49, %28
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @UI_view2d_listview_visible_cells(ptr noundef readonly %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, ptr noundef writeonly %5, ptr noundef writeonly %6, ptr noundef writeonly %7, ptr noundef writeonly %8) local_unnamed_addr #7 {
  %10 = icmp eq ptr %0, null
  br i1 %10, label %101, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1
  %13 = load float, ptr %12, align 8, !tbaa !60
  %14 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 2
  %15 = load float, ptr %14, align 8, !tbaa !63
  %16 = tail call float @llvm.fabs.f32(float %13)
  %17 = fadd float %16, 5.000000e-01
  %18 = tail call float @llvm.floor.f32(float %17)
  %19 = fsub float %18, %3
  %20 = fptosi float %19 to i32
  %21 = tail call float @llvm.fabs.f32(float %15)
  %22 = fadd float %21, 5.000000e-01
  %23 = tail call float @llvm.floor.f32(float %22)
  %24 = fsub float %23, %4
  %25 = fptosi float %24 to i32
  %26 = fcmp ole float %1, 0.000000e+00
  %27 = fcmp ole float %2, 0.000000e+00
  %28 = and i1 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %11
  %30 = icmp eq ptr %5, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %29
  store i32 0, ptr %5, align 4, !tbaa !75
  br label %32

32:                                               ; preds = %31, %29
  %33 = icmp eq ptr %7, null
  br i1 %33, label %56, label %54

34:                                               ; preds = %11
  %35 = icmp ne ptr %5, null
  %36 = fcmp ogt float %1, 0.000000e+00
  %37 = and i1 %36, %35
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = sitofp i32 %20 to float
  %40 = fdiv float %39, %1
  %41 = fptosi float %40 to i32
  br label %43

42:                                               ; preds = %34
  br i1 %35, label %43, label %45

43:                                               ; preds = %42, %38
  %44 = phi i32 [ %41, %38 ], [ 0, %42 ]
  store i32 %44, ptr %5, align 4, !tbaa !75
  br label %45

45:                                               ; preds = %43, %42
  %46 = icmp ne ptr %7, null
  %47 = fcmp ogt float %2, 0.000000e+00
  %48 = and i1 %47, %46
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = sitofp i32 %25 to float
  %51 = fdiv float %50, %2
  %52 = fptosi float %51 to i32
  br label %54

53:                                               ; preds = %45
  br i1 %46, label %54, label %56

54:                                               ; preds = %53, %32, %49
  %55 = phi i32 [ %52, %49 ], [ 0, %32 ], [ 0, %53 ]
  store i32 %55, ptr %7, align 4, !tbaa !75
  br label %56

56:                                               ; preds = %54, %32, %53
  %57 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 1
  %58 = load float, ptr %57, align 4, !tbaa !61
  %59 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 3
  %60 = load float, ptr %59, align 4, !tbaa !62
  %61 = tail call float @llvm.fabs.f32(float %58)
  %62 = fadd float %61, 5.000000e-01
  %63 = tail call float @llvm.floor.f32(float %62)
  %64 = fsub float %63, %3
  %65 = fptosi float %64 to i32
  %66 = tail call float @llvm.fabs.f32(float %60)
  %67 = fadd float %66, 5.000000e-01
  %68 = tail call float @llvm.floor.f32(float %67)
  %69 = fsub float %68, %4
  %70 = fptosi float %69 to i32
  %71 = fcmp ole float %1, 0.000000e+00
  %72 = fcmp ole float %2, 0.000000e+00
  %73 = and i1 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %56
  %75 = icmp eq ptr %6, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %74
  store i32 0, ptr %6, align 4, !tbaa !75
  br label %77

77:                                               ; preds = %76, %74
  %78 = icmp eq ptr %8, null
  br i1 %78, label %101, label %99

79:                                               ; preds = %56
  %80 = icmp ne ptr %6, null
  %81 = fcmp ogt float %1, 0.000000e+00
  %82 = and i1 %81, %80
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = sitofp i32 %65 to float
  %85 = fdiv float %84, %1
  %86 = fptosi float %85 to i32
  br label %88

87:                                               ; preds = %79
  br i1 %80, label %88, label %90

88:                                               ; preds = %87, %83
  %89 = phi i32 [ %86, %83 ], [ 0, %87 ]
  store i32 %89, ptr %6, align 4, !tbaa !75
  br label %90

90:                                               ; preds = %88, %87
  %91 = icmp ne ptr %8, null
  %92 = fcmp ogt float %2, 0.000000e+00
  %93 = and i1 %92, %91
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = sitofp i32 %70 to float
  %96 = fdiv float %95, %2
  %97 = fptosi float %96 to i32
  br label %99

98:                                               ; preds = %90
  br i1 %91, label %99, label %101

99:                                               ; preds = %98, %77, %94
  %100 = phi i32 [ %97, %94 ], [ 0, %77 ], [ 0, %98 ]
  store i32 %100, ptr %8, align 4, !tbaa !75
  br label %101

101:                                              ; preds = %99, %98, %77, %9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local float @UI_view2d_region_to_view_x(ptr nocapture noundef readonly %0, float noundef %1) local_unnamed_addr #13 {
  %3 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1
  %4 = load float, ptr %3, align 8, !tbaa !71
  %5 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 1
  %6 = load float, ptr %5, align 4, !tbaa !70
  %7 = fsub float %6, %4
  %8 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !90
  %10 = sitofp i32 %9 to float
  %11 = fsub float %1, %10
  %12 = fmul float %7, %11
  %13 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !89
  %15 = sub nsw i32 %14, %9
  %16 = sitofp i32 %15 to float
  %17 = fdiv float %12, %16
  %18 = fadd float %4, %17
  ret float %18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local float @UI_view2d_region_to_view_y(ptr nocapture noundef readonly %0, float noundef %1) local_unnamed_addr #13 {
  %3 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 2
  %4 = load float, ptr %3, align 8, !tbaa !73
  %5 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 3
  %6 = load float, ptr %5, align 4, !tbaa !72
  %7 = fsub float %6, %4
  %8 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !92
  %10 = sitofp i32 %9 to float
  %11 = fsub float %1, %10
  %12 = fmul float %7, %11
  %13 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4, i32 3
  %14 = load i32, ptr %13, align 4, !tbaa !91
  %15 = sub nsw i32 %14, %9
  %16 = sitofp i32 %15 to float
  %17 = fdiv float %12, %16
  %18 = fadd float %4, %17
  ret float %18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @UI_view2d_region_to_view(ptr nocapture noundef readonly %0, float noundef %1, float noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #7 {
  %6 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1
  %7 = load float, ptr %6, align 8, !tbaa !71
  %8 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 1
  %9 = load float, ptr %8, align 4, !tbaa !70
  %10 = fsub float %9, %7
  %11 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4
  %12 = load i32, ptr %11, align 8, !tbaa !90
  %13 = sitofp i32 %12 to float
  %14 = fsub float %1, %13
  %15 = fmul float %10, %14
  %16 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4, i32 1
  %17 = load i32, ptr %16, align 4, !tbaa !89
  %18 = sub nsw i32 %17, %12
  %19 = sitofp i32 %18 to float
  %20 = fdiv float %15, %19
  %21 = fadd float %7, %20
  store float %21, ptr %3, align 4, !tbaa !54
  %22 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 2
  %23 = load float, ptr %22, align 8, !tbaa !73
  %24 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 3
  %25 = load float, ptr %24, align 4, !tbaa !72
  %26 = fsub float %25, %23
  %27 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4, i32 2
  %28 = load i32, ptr %27, align 8, !tbaa !92
  %29 = sitofp i32 %28 to float
  %30 = fsub float %2, %29
  %31 = fmul float %26, %30
  %32 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4, i32 3
  %33 = load i32, ptr %32, align 4, !tbaa !91
  %34 = sub nsw i32 %33, %28
  %35 = sitofp i32 %34 to float
  %36 = fdiv float %31, %35
  %37 = fadd float %23, %36
  store float %37, ptr %4, align 4, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @UI_view2d_region_to_view_rctf(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #7 {
  %4 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 1
  %6 = load float, ptr %5, align 4, !tbaa !70
  %7 = load float, ptr %4, align 4, !tbaa !71
  %8 = fsub float %6, %7
  %9 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 3
  %10 = load float, ptr %9, align 4, !tbaa !72
  %11 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 2
  %12 = load float, ptr %11, align 4, !tbaa !73
  %13 = fsub float %10, %12
  %14 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4
  %15 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !89
  %17 = load i32, ptr %14, align 4, !tbaa !90
  %18 = sub nsw i32 %16, %17
  %19 = sitofp i32 %18 to float
  %20 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4, i32 3
  %21 = load i32, ptr %20, align 4, !tbaa !91
  %22 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !92
  %24 = sub nsw i32 %21, %23
  %25 = sitofp i32 %24 to float
  %26 = load float, ptr %1, align 4, !tbaa !71
  %27 = sitofp i32 %17 to float
  %28 = fsub float %26, %27
  %29 = fmul float %8, %28
  %30 = fdiv float %29, %19
  %31 = fadd float %7, %30
  store float %31, ptr %2, align 4, !tbaa !71
  %32 = load float, ptr %4, align 8, !tbaa !60
  %33 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 1
  %34 = load float, ptr %33, align 4, !tbaa !70
  %35 = fsub float %34, %27
  %36 = fmul float %8, %35
  %37 = fdiv float %36, %19
  %38 = fadd float %32, %37
  %39 = getelementptr inbounds %struct.rctf, ptr %2, i64 0, i32 1
  store float %38, ptr %39, align 4, !tbaa !70
  %40 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 2
  %41 = load float, ptr %40, align 4, !tbaa !73
  %42 = sitofp i32 %23 to float
  %43 = fsub float %41, %42
  %44 = fmul float %13, %43
  %45 = fdiv float %44, %25
  %46 = fadd float %12, %45
  %47 = getelementptr inbounds %struct.rctf, ptr %2, i64 0, i32 2
  store float %46, ptr %47, align 4, !tbaa !73
  %48 = load float, ptr %11, align 8, !tbaa !63
  %49 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 3
  %50 = load float, ptr %49, align 4, !tbaa !72
  %51 = fsub float %50, %42
  %52 = fmul float %13, %51
  %53 = fdiv float %52, %25
  %54 = fadd float %48, %53
  %55 = getelementptr inbounds %struct.rctf, ptr %2, i64 0, i32 3
  store float %54, ptr %55, align 4, !tbaa !72
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local float @UI_view2d_view_to_region_x(ptr nocapture noundef readonly %0, float noundef %1) local_unnamed_addr #13 {
  %3 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !90
  %5 = sitofp i32 %4 to float
  %6 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1
  %7 = load float, ptr %6, align 8, !tbaa !71
  %8 = fsub float %1, %7
  %9 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 1
  %10 = load float, ptr %9, align 4, !tbaa !70
  %11 = fsub float %10, %7
  %12 = fdiv float %8, %11
  %13 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !89
  %15 = sub nsw i32 %14, %4
  %16 = sitofp i32 %15 to float
  %17 = tail call float @llvm.fmuladd.f32(float %12, float %16, float %5)
  ret float %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local float @UI_view2d_view_to_region_y(ptr nocapture noundef readonly %0, float noundef %1) local_unnamed_addr #13 {
  %3 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !92
  %5 = sitofp i32 %4 to float
  %6 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 2
  %7 = load float, ptr %6, align 8, !tbaa !73
  %8 = fsub float %1, %7
  %9 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 3
  %10 = load float, ptr %9, align 4, !tbaa !72
  %11 = fsub float %10, %7
  %12 = fdiv float %8, %11
  %13 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4, i32 3
  %14 = load i32, ptr %13, align 4, !tbaa !91
  %15 = sub nsw i32 %14, %4
  %16 = sitofp i32 %15 to float
  %17 = tail call float @llvm.fmuladd.f32(float %12, float %16, float %5)
  ret float %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i8 @UI_view2d_view_to_region_clip(ptr nocapture noundef readonly %0, float noundef %1, float noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #7 {
  %6 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1
  %7 = load float, ptr %6, align 8, !tbaa !71
  %8 = fsub float %1, %7
  %9 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 1
  %10 = load float, ptr %9, align 4, !tbaa !70
  %11 = fsub float %10, %7
  %12 = fdiv float %8, %11
  %13 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 2
  %14 = load float, ptr %13, align 8, !tbaa !73
  %15 = fsub float %2, %14
  %16 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 3
  %17 = load float, ptr %16, align 4, !tbaa !72
  %18 = fsub float %17, %14
  %19 = fdiv float %15, %18
  %20 = fcmp oge float %12, 0.000000e+00
  %21 = fcmp ole float %12, 1.000000e+00
  %22 = and i1 %20, %21
  %23 = fcmp oge float %19, 0.000000e+00
  %24 = select i1 %22, i1 %23, i1 false
  %25 = fcmp ole float %19, 1.000000e+00
  %26 = select i1 %24, i1 %25, i1 false
  br i1 %26, label %27, label %46

27:                                               ; preds = %5
  %28 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4
  %29 = load i32, ptr %28, align 8, !tbaa !90
  %30 = sitofp i32 %29 to float
  %31 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4, i32 1
  %32 = load i32, ptr %31, align 4, !tbaa !89
  %33 = sub nsw i32 %32, %29
  %34 = sitofp i32 %33 to float
  %35 = tail call float @llvm.fmuladd.f32(float %12, float %34, float %30)
  %36 = fptosi float %35 to i32
  store i32 %36, ptr %3, align 4, !tbaa !75
  %37 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4, i32 2
  %38 = load i32, ptr %37, align 8, !tbaa !92
  %39 = sitofp i32 %38 to float
  %40 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4, i32 3
  %41 = load i32, ptr %40, align 4, !tbaa !91
  %42 = sub nsw i32 %41, %38
  %43 = sitofp i32 %42 to float
  %44 = tail call float @llvm.fmuladd.f32(float %19, float %43, float %39)
  %45 = fptosi float %44 to i32
  store i32 %45, ptr %4, align 4, !tbaa !75
  br label %47

46:                                               ; preds = %5
  store i32 12000, ptr %4, align 4, !tbaa !75
  store i32 12000, ptr %3, align 4, !tbaa !75
  br label %47

47:                                               ; preds = %46, %27
  %48 = phi i8 [ 1, %27 ], [ 0, %46 ]
  ret i8 %48
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @UI_view2d_view_to_region(ptr nocapture noundef readonly %0, float noundef %1, float noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #7 {
  %6 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1
  %7 = load float, ptr %6, align 8, !tbaa !71
  %8 = fsub float %1, %7
  %9 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 1
  %10 = load float, ptr %9, align 4, !tbaa !70
  %11 = fsub float %10, %7
  %12 = fdiv float %8, %11
  %13 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 2
  %14 = load float, ptr %13, align 8, !tbaa !73
  %15 = fsub float %2, %14
  %16 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 3
  %17 = load float, ptr %16, align 4, !tbaa !72
  %18 = fsub float %17, %14
  %19 = fdiv float %15, %18
  %20 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4
  %21 = load i32, ptr %20, align 8, !tbaa !90
  %22 = sitofp i32 %21 to float
  %23 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !89
  %25 = sub nsw i32 %24, %21
  %26 = sitofp i32 %25 to float
  %27 = tail call float @llvm.fmuladd.f32(float %12, float %26, float %22)
  %28 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4, i32 2
  %29 = load i32, ptr %28, align 8, !tbaa !92
  %30 = sitofp i32 %29 to float
  %31 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4, i32 3
  %32 = load i32, ptr %31, align 4, !tbaa !91
  %33 = sub nsw i32 %32, %29
  %34 = sitofp i32 %33 to float
  %35 = tail call float @llvm.fmuladd.f32(float %19, float %34, float %30)
  %36 = fcmp olt float %27, 0xC1E0000000000000
  br i1 %36, label %41, label %37

37:                                               ; preds = %5
  %38 = fcmp ogt float %27, 0x41E0000000000000
  br i1 %38, label %41, label %39

39:                                               ; preds = %37
  %40 = fptosi float %27 to i32
  br label %41

41:                                               ; preds = %5, %37, %39
  %42 = phi i32 [ %40, %39 ], [ -2147483648, %5 ], [ poison, %37 ]
  store i32 %42, ptr %3, align 4, !tbaa !75
  %43 = fcmp olt float %35, 0xC1E0000000000000
  br i1 %43, label %48, label %44

44:                                               ; preds = %41
  %45 = fcmp ogt float %35, 0x41E0000000000000
  br i1 %45, label %48, label %46

46:                                               ; preds = %44
  %47 = fptosi float %35 to i32
  br label %48

48:                                               ; preds = %41, %44, %46
  %49 = phi i32 [ %47, %46 ], [ -2147483648, %41 ], [ poison, %44 ]
  store i32 %49, ptr %4, align 4, !tbaa !75
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @UI_view2d_view_to_region_fl(ptr nocapture noundef readonly %0, float noundef %1, float noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #7 {
  %6 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1
  %7 = load float, ptr %6, align 8, !tbaa !71
  %8 = fsub float %1, %7
  %9 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 1
  %10 = load float, ptr %9, align 4, !tbaa !70
  %11 = fsub float %10, %7
  %12 = fdiv float %8, %11
  %13 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 2
  %14 = load float, ptr %13, align 8, !tbaa !73
  %15 = fsub float %2, %14
  %16 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 3
  %17 = load float, ptr %16, align 4, !tbaa !72
  %18 = fsub float %17, %14
  %19 = fdiv float %15, %18
  %20 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4
  %21 = load i32, ptr %20, align 8, !tbaa !90
  %22 = sitofp i32 %21 to float
  %23 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !89
  %25 = sub nsw i32 %24, %21
  %26 = sitofp i32 %25 to float
  %27 = tail call float @llvm.fmuladd.f32(float %12, float %26, float %22)
  store float %27, ptr %3, align 4, !tbaa !54
  %28 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4, i32 2
  %29 = load i32, ptr %28, align 8, !tbaa !92
  %30 = sitofp i32 %29 to float
  %31 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4, i32 3
  %32 = load i32, ptr %31, align 4, !tbaa !91
  %33 = sub nsw i32 %32, %29
  %34 = sitofp i32 %33 to float
  %35 = tail call float @llvm.fmuladd.f32(float %19, float %34, float %30)
  store float %35, ptr %4, align 4, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @UI_view2d_view_to_region_rcti(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #7 {
  %4 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 1
  %6 = load float, ptr %5, align 4, !tbaa !70
  %7 = load float, ptr %4, align 4, !tbaa !71
  %8 = fsub float %6, %7
  %9 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 3
  %10 = load float, ptr %9, align 4, !tbaa !72
  %11 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 2
  %12 = load float, ptr %11, align 4, !tbaa !73
  %13 = fsub float %10, %12
  %14 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4
  %15 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !89
  %17 = load i32, ptr %14, align 4, !tbaa !90
  %18 = sub nsw i32 %16, %17
  %19 = sitofp i32 %18 to float
  %20 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4, i32 3
  %21 = load i32, ptr %20, align 4, !tbaa !91
  %22 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !92
  %24 = sub nsw i32 %21, %23
  %25 = sitofp i32 %24 to float
  %26 = load float, ptr %1, align 4, !tbaa !71
  %27 = fsub float %26, %7
  %28 = fdiv float %27, %8
  %29 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 1
  %30 = load float, ptr %29, align 4, !tbaa !70
  %31 = fsub float %30, %7
  %32 = fdiv float %31, %8
  %33 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 2
  %34 = load float, ptr %33, align 4, !tbaa !73
  %35 = fsub float %34, %12
  %36 = fdiv float %35, %13
  %37 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 3
  %38 = load float, ptr %37, align 4, !tbaa !72
  %39 = fsub float %38, %12
  %40 = fdiv float %39, %13
  %41 = sitofp i32 %17 to float
  %42 = tail call float @llvm.fmuladd.f32(float %28, float %19, float %41)
  %43 = tail call float @llvm.fmuladd.f32(float %32, float %19, float %41)
  %44 = sitofp i32 %23 to float
  %45 = tail call float @llvm.fmuladd.f32(float %36, float %25, float %44)
  %46 = tail call float @llvm.fmuladd.f32(float %40, float %25, float %44)
  %47 = fcmp olt float %42, 0xC1E0000000000000
  br i1 %47, label %52, label %48

48:                                               ; preds = %3
  %49 = fcmp ogt float %42, 0x41E0000000000000
  br i1 %49, label %52, label %50

50:                                               ; preds = %48
  %51 = fptosi float %42 to i32
  br label %52

52:                                               ; preds = %50, %48, %3
  %53 = phi i32 [ %51, %50 ], [ -2147483648, %3 ], [ poison, %48 ]
  store i32 %53, ptr %2, align 4, !tbaa !90
  %54 = fcmp olt float %43, 0xC1E0000000000000
  br i1 %54, label %59, label %55

55:                                               ; preds = %52
  %56 = fcmp ogt float %43, 0x41E0000000000000
  br i1 %56, label %59, label %57

57:                                               ; preds = %55
  %58 = fptosi float %43 to i32
  br label %59

59:                                               ; preds = %57, %55, %52
  %60 = phi i32 [ %58, %57 ], [ -2147483648, %52 ], [ poison, %55 ]
  %61 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 1
  store i32 %60, ptr %61, align 4, !tbaa !89
  %62 = fcmp olt float %45, 0xC1E0000000000000
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = fcmp ogt float %45, 0x41E0000000000000
  br i1 %64, label %67, label %65

65:                                               ; preds = %63
  %66 = fptosi float %45 to i32
  br label %67

67:                                               ; preds = %65, %63, %59
  %68 = phi i32 [ %66, %65 ], [ -2147483648, %59 ], [ poison, %63 ]
  %69 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 2
  store i32 %68, ptr %69, align 4, !tbaa !92
  %70 = fcmp olt float %46, 0xC1E0000000000000
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  %72 = fcmp ogt float %46, 0x41E0000000000000
  br i1 %72, label %75, label %73

73:                                               ; preds = %71
  %74 = fptosi float %46 to i32
  br label %75

75:                                               ; preds = %67, %71, %73
  %76 = phi i32 [ %74, %73 ], [ -2147483648, %67 ], [ poison, %71 ]
  %77 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 3
  store i32 %76, ptr %77, align 4, !tbaa !91
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i8 @UI_view2d_view_to_region_rcti_clip(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #7 {
  %4 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 1
  %6 = load float, ptr %5, align 4, !tbaa !70
  %7 = load float, ptr %4, align 4, !tbaa !71
  %8 = fsub float %6, %7
  %9 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 3
  %10 = load float, ptr %9, align 4, !tbaa !72
  %11 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 2
  %12 = load float, ptr %11, align 4, !tbaa !73
  %13 = fsub float %10, %12
  %14 = load float, ptr %1, align 4, !tbaa !71
  %15 = fsub float %14, %7
  %16 = fdiv float %15, %8
  %17 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 1
  %18 = load float, ptr %17, align 4, !tbaa !70
  %19 = fsub float %18, %7
  %20 = fdiv float %19, %8
  %21 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 2
  %22 = load float, ptr %21, align 4, !tbaa !73
  %23 = fsub float %22, %12
  %24 = fdiv float %23, %13
  %25 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 3
  %26 = load float, ptr %25, align 4, !tbaa !72
  %27 = fsub float %26, %12
  %28 = fdiv float %27, %13
  %29 = fcmp uge float %20, 0.000000e+00
  %30 = fcmp ule float %16, 1.000000e+00
  %31 = select i1 %29, i1 %30, i1 false
  %32 = fcmp uge float %28, 0.000000e+00
  %33 = select i1 %31, i1 %32, i1 false
  %34 = fcmp ule float %24, 1.000000e+00
  %35 = select i1 %33, i1 %34, i1 false
  br i1 %35, label %36, label %86

36:                                               ; preds = %3
  %37 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4, i32 3
  %38 = load i32, ptr %37, align 4, !tbaa !91
  %39 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4, i32 2
  %40 = load i32, ptr %39, align 4, !tbaa !92
  %41 = sub nsw i32 %38, %40
  %42 = sitofp i32 %41 to float
  %43 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4
  %44 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4, i32 1
  %45 = load i32, ptr %44, align 4, !tbaa !89
  %46 = load i32, ptr %43, align 4, !tbaa !90
  %47 = sub nsw i32 %45, %46
  %48 = sitofp i32 %47 to float
  %49 = sitofp i32 %46 to float
  %50 = tail call float @llvm.fmuladd.f32(float %16, float %48, float %49)
  %51 = sitofp i32 %40 to float
  %52 = tail call float @llvm.fmuladd.f32(float %20, float %48, float %51)
  %53 = tail call float @llvm.fmuladd.f32(float %24, float %42, float %51)
  %54 = tail call float @llvm.fmuladd.f32(float %28, float %42, float %51)
  %55 = fcmp olt float %50, 0xC1E0000000000000
  br i1 %55, label %60, label %56

56:                                               ; preds = %36
  %57 = fcmp ogt float %50, 0x41E0000000000000
  br i1 %57, label %60, label %58

58:                                               ; preds = %56
  %59 = fptosi float %50 to i32
  br label %60

60:                                               ; preds = %58, %56, %36
  %61 = phi i32 [ %59, %58 ], [ -2147483648, %36 ], [ poison, %56 ]
  store i32 %61, ptr %2, align 4, !tbaa !90
  %62 = fcmp olt float %52, 0xC1E0000000000000
  br i1 %62, label %67, label %63

63:                                               ; preds = %60
  %64 = fcmp ogt float %52, 0x41E0000000000000
  br i1 %64, label %67, label %65

65:                                               ; preds = %63
  %66 = fptosi float %52 to i32
  br label %67

67:                                               ; preds = %65, %63, %60
  %68 = phi i32 [ %66, %65 ], [ -2147483648, %60 ], [ poison, %63 ]
  %69 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 1
  store i32 %68, ptr %69, align 4, !tbaa !89
  %70 = fcmp olt float %53, 0xC1E0000000000000
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  %72 = fcmp ogt float %53, 0x41E0000000000000
  br i1 %72, label %75, label %73

73:                                               ; preds = %71
  %74 = fptosi float %53 to i32
  br label %75

75:                                               ; preds = %73, %71, %67
  %76 = phi i32 [ %74, %73 ], [ -2147483648, %67 ], [ poison, %71 ]
  %77 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 2
  store i32 %76, ptr %77, align 4, !tbaa !92
  %78 = fcmp olt float %54, 0xC1E0000000000000
  br i1 %78, label %83, label %79

79:                                               ; preds = %75
  %80 = fcmp ogt float %54, 0x41E0000000000000
  br i1 %80, label %83, label %81

81:                                               ; preds = %79
  %82 = fptosi float %54 to i32
  br label %83

83:                                               ; preds = %75, %79, %81
  %84 = phi i32 [ %82, %81 ], [ -2147483648, %75 ], [ poison, %79 ]
  %85 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 3
  store i32 %84, ptr %85, align 4, !tbaa !91
  br label %90

86:                                               ; preds = %3
  %87 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 3
  store i32 12000, ptr %87, align 4, !tbaa !91
  %88 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 2
  store i32 12000, ptr %88, align 4, !tbaa !92
  %89 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 1
  store i32 12000, ptr %89, align 4, !tbaa !89
  store i32 12000, ptr %2, align 4, !tbaa !90
  br label %90

90:                                               ; preds = %86, %83
  %91 = phi i8 [ 1, %83 ], [ 0, %86 ]
  ret i8 %91
}

; Function Attrs: nounwind uwtable
define dso_local ptr @UI_view2d_fromcontext(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_area(ptr noundef %0) #16
  %3 = tail call ptr @CTX_wm_region(ptr noundef %0) #16
  %4 = icmp eq ptr %2, null
  %5 = icmp eq ptr %3, null
  %6 = select i1 %4, i1 true, i1 %5
  %7 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 2
  %8 = select i1 %6, ptr null, ptr %7
  ret ptr %8
}

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @UI_view2d_fromcontext_rwin(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_area(ptr noundef %0) #16
  %3 = tail call ptr @CTX_wm_region(ptr noundef %0) #16
  %4 = icmp eq ptr %2, null
  %5 = icmp eq ptr %3, null
  %6 = select i1 %4, i1 true, i1 %5
  br i1 %6, label %18, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 8
  %9 = load i16, ptr %8, align 2, !tbaa !174
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = tail call ptr @BKE_area_find_region_type(ptr noundef nonnull %2, i32 noundef 0) #16
  %13 = icmp eq ptr %12, null
  %14 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 2
  %15 = select i1 %13, ptr null, ptr %14
  br label %18

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 2
  br label %18

18:                                               ; preds = %1, %16, %11
  %19 = phi ptr [ %15, %11 ], [ %17, %16 ], [ null, %1 ]
  ret ptr %19
}

declare ptr @BKE_area_find_region_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @UI_view2d_scale_get(ptr nocapture noundef readonly %0, ptr noundef writeonly %1, ptr noundef writeonly %2) local_unnamed_addr #7 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4
  %7 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !89
  %9 = load i32, ptr %6, align 4, !tbaa !90
  %10 = sub nsw i32 %8, %9
  %11 = sitofp i32 %10 to float
  %12 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1
  %13 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 1
  %14 = load float, ptr %13, align 4, !tbaa !70
  %15 = load float, ptr %12, align 4, !tbaa !71
  %16 = fsub float %14, %15
  %17 = fdiv float %11, %16
  store float %17, ptr %1, align 4, !tbaa !54
  br label %18

18:                                               ; preds = %5, %3
  %19 = icmp eq ptr %2, null
  br i1 %19, label %33, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4, i32 3
  %22 = load i32, ptr %21, align 4, !tbaa !91
  %23 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4, i32 2
  %24 = load i32, ptr %23, align 4, !tbaa !92
  %25 = sub nsw i32 %22, %24
  %26 = sitofp i32 %25 to float
  %27 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 3
  %28 = load float, ptr %27, align 4, !tbaa !72
  %29 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 2
  %30 = load float, ptr %29, align 4, !tbaa !73
  %31 = fsub float %28, %30
  %32 = fdiv float %26, %31
  store float %32, ptr %2, align 4, !tbaa !54
  br label %33

33:                                               ; preds = %20, %18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @UI_view2d_scale_get_inverse(ptr nocapture noundef readonly %0, ptr noundef writeonly %1, ptr noundef writeonly %2) local_unnamed_addr #7 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 1
  %8 = load float, ptr %7, align 4, !tbaa !70
  %9 = load float, ptr %6, align 4, !tbaa !71
  %10 = fsub float %8, %9
  %11 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4
  %12 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !89
  %14 = load i32, ptr %11, align 4, !tbaa !90
  %15 = sub nsw i32 %13, %14
  %16 = sitofp i32 %15 to float
  %17 = fdiv float %10, %16
  store float %17, ptr %1, align 4, !tbaa !54
  br label %18

18:                                               ; preds = %5, %3
  %19 = icmp eq ptr %2, null
  br i1 %19, label %33, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 3
  %22 = load float, ptr %21, align 4, !tbaa !72
  %23 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 2
  %24 = load float, ptr %23, align 4, !tbaa !73
  %25 = fsub float %22, %24
  %26 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4, i32 3
  %27 = load i32, ptr %26, align 4, !tbaa !91
  %28 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4, i32 2
  %29 = load i32, ptr %28, align 4, !tbaa !92
  %30 = sub nsw i32 %27, %29
  %31 = sitofp i32 %30 to float
  %32 = fdiv float %25, %31
  store float %32, ptr %2, align 4, !tbaa !54
  br label %33

33:                                               ; preds = %20, %18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @UI_view2d_center_get(ptr nocapture noundef readonly %0, ptr noundef writeonly %1, ptr noundef writeonly %2) local_unnamed_addr #7 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1
  %7 = load float, ptr %6, align 4, !tbaa !71
  %8 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 1
  %9 = load float, ptr %8, align 4, !tbaa !70
  %10 = fadd float %7, %9
  %11 = fmul float %10, 5.000000e-01
  store float %11, ptr %1, align 4, !tbaa !54
  br label %12

12:                                               ; preds = %5, %3
  %13 = icmp eq ptr %2, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 2
  %16 = load float, ptr %15, align 4, !tbaa !73
  %17 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 3
  %18 = load float, ptr %17, align 4, !tbaa !72
  %19 = fadd float %16, %18
  %20 = fmul float %19, 5.000000e-01
  store float %20, ptr %2, align 4, !tbaa !54
  br label %21

21:                                               ; preds = %14, %12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @UI_view2d_center_set(ptr noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1
  tail call void @BLI_rctf_recenter(ptr noundef nonnull %4, float noundef %1, float noundef %2) #16
  tail call fastcc void @ui_view2d_curRect_validate_resize(ptr noundef %0, i32 noundef 0, i32 noundef 1)
  ret void
}

declare void @BLI_rctf_recenter(ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @UI_view2d_offset(ptr noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #5 {
  %4 = fcmp une float %1, -1.000000e+00
  br i1 %4, label %5, label %19

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 1
  %8 = load float, ptr %7, align 4, !tbaa !70
  %9 = load float, ptr %6, align 4, !tbaa !71
  %10 = fsub float %8, %9
  %11 = load float, ptr %0, align 8, !tbaa !50
  %12 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %13 = load float, ptr %12, align 4, !tbaa !51
  %14 = fsub float %13, %10
  %15 = fsub float 1.000000e+00, %1
  %16 = fmul float %14, %1
  %17 = tail call float @llvm.fmuladd.f32(float %11, float %15, float %16)
  store float %17, ptr %6, align 8, !tbaa !60
  %18 = fadd float %10, %17
  store float %18, ptr %7, align 4, !tbaa !61
  br label %19

19:                                               ; preds = %5, %3
  %20 = fcmp une float %2, -1.000000e+00
  br i1 %20, label %21, label %36

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 3
  %23 = load float, ptr %22, align 4, !tbaa !72
  %24 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 2
  %25 = load float, ptr %24, align 4, !tbaa !73
  %26 = fsub float %23, %25
  %27 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %28 = load float, ptr %27, align 8, !tbaa !49
  %29 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %30 = load float, ptr %29, align 4, !tbaa !52
  %31 = fsub float %30, %26
  %32 = fsub float 1.000000e+00, %2
  %33 = fmul float %31, %2
  %34 = tail call float @llvm.fmuladd.f32(float %28, float %32, float %33)
  store float %34, ptr %24, align 8, !tbaa !63
  %35 = fadd float %26, %34
  store float %35, ptr %22, align 4, !tbaa !62
  br label %36

36:                                               ; preds = %21, %19
  tail call fastcc void @ui_view2d_curRect_validate_resize(ptr noundef %0, i32 noundef 0, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef signext i16 @UI_view2d_mouse_in_scrollers(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [2 x i32], align 4
  %6 = tail call ptr @CTX_wm_region(ptr noundef %0) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  %7 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 9
  %8 = load i16, ptr %7, align 8, !tbaa !56
  %9 = zext i16 %8 to i32
  %10 = and i32 %9, 1024
  %11 = icmp eq i32 %10, 0
  %12 = and i32 %9, 65523
  %13 = select i1 %11, i32 %9, i32 %12
  %14 = and i32 %13, 512
  %15 = icmp eq i32 %14, 0
  %16 = and i32 %13, 65532
  %17 = select i1 %15, i32 %13, i32 %16
  %18 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 3
  %19 = load i32, ptr %18, align 8, !tbaa !175
  %20 = sub nsw i32 %2, %19
  store i32 %20, ptr %5, align 4, !tbaa !75
  %21 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 3, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !176
  %23 = sub nsw i32 %3, %22
  %24 = getelementptr inbounds [2 x i32], ptr %5, i64 0, i64 1
  store i32 %23, ptr %24, align 4, !tbaa !75
  %25 = and i32 %17, 12
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %4
  %28 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 3
  %29 = call zeroext i8 @BLI_rcti_isect_pt_v(ptr noundef nonnull %28, ptr noundef nonnull %5) #16
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %27, %4
  %32 = and i32 %17, 3
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 2
  %36 = call zeroext i8 @BLI_rcti_isect_pt_v(ptr noundef nonnull %35, ptr noundef nonnull %5) #16
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34, %31
  br label %39

39:                                               ; preds = %34, %27, %38
  %40 = phi i16 [ 0, %38 ], [ 104, %27 ], [ 118, %34 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  ret i16 %40
}

declare zeroext i8 @BLI_rcti_isect_pt_v(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @UI_view2d_text_cache_add(ptr nocapture noundef readonly %0, float noundef %1, float noundef %2, ptr nocapture noundef readonly %3, i64 noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1
  %8 = load float, ptr %7, align 8, !tbaa !71
  %9 = fsub float %1, %8
  %10 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 1
  %11 = load float, ptr %10, align 4, !tbaa !70
  %12 = fsub float %11, %8
  %13 = fdiv float %9, %12
  %14 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 2
  %15 = load float, ptr %14, align 8, !tbaa !73
  %16 = fsub float %2, %15
  %17 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 3
  %18 = load float, ptr %17, align 4, !tbaa !72
  %19 = fsub float %18, %15
  %20 = fdiv float %16, %19
  %21 = fcmp oge float %13, 0.000000e+00
  %22 = fcmp ole float %13, 1.000000e+00
  %23 = and i1 %21, %22
  %24 = fcmp oge float %20, 0.000000e+00
  %25 = select i1 %23, i1 %24, i1 false
  %26 = fcmp ole float %20, 1.000000e+00
  %27 = select i1 %25, i1 %26, i1 false
  br i1 %27, label %28, label %47

28:                                               ; preds = %6
  %29 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4
  %30 = load i32, ptr %29, align 8, !tbaa !90
  %31 = sitofp i32 %30 to float
  %32 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4, i32 1
  %33 = load i32, ptr %32, align 4, !tbaa !89
  %34 = sub nsw i32 %33, %30
  %35 = sitofp i32 %34 to float
  %36 = tail call float @llvm.fmuladd.f32(float %13, float %35, float %31)
  %37 = fptosi float %36 to i32
  %38 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4, i32 2
  %39 = load i32, ptr %38, align 8, !tbaa !92
  %40 = sitofp i32 %39 to float
  %41 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4, i32 3
  %42 = load i32, ptr %41, align 4, !tbaa !91
  %43 = sub nsw i32 %42, %39
  %44 = sitofp i32 %43 to float
  %45 = tail call float @llvm.fmuladd.f32(float %20, float %44, float %40)
  %46 = fptosi float %45 to i32
  br label %47

47:                                               ; preds = %6, %28
  %48 = phi i32 [ %46, %28 ], [ 12000, %6 ]
  %49 = phi i32 [ %37, %28 ], [ 12000, %6 ]
  br i1 %27, label %50, label %69

50:                                               ; preds = %47
  %51 = load ptr, ptr @g_v2d_strings_arena, align 8, !tbaa !95
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = tail call ptr @BLI_memarena_new(i64 noundef 16376, ptr noundef nonnull @__func__.UI_view2d_text_cache_add) #16
  store ptr %54, ptr @g_v2d_strings_arena, align 8, !tbaa !95
  br label %55

55:                                               ; preds = %53, %50
  %56 = load ptr, ptr @g_v2d_strings_arena, align 8, !tbaa !95
  %57 = shl i64 %4, 32
  %58 = add i64 %57, 4294967296
  %59 = ashr exact i64 %58, 32
  %60 = add nsw i64 %59, 40
  %61 = tail call ptr @BLI_memarena_alloc(ptr noundef %56, i64 noundef %60) #16
  %62 = load ptr, ptr @g_v2d_strings, align 8, !tbaa !95
  store ptr %62, ptr %61, align 8, !tbaa !95
  store ptr %61, ptr @g_v2d_strings, align 8, !tbaa !95
  %63 = load i32, ptr %5, align 4, !tbaa !75
  %64 = getelementptr inbounds %struct.View2DString, ptr %61, i64 0, i32 1
  store i32 %63, ptr %64, align 8, !tbaa !165
  %65 = getelementptr inbounds %struct.View2DString, ptr %61, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %65, i8 0, i64 16, i1 false)
  %66 = getelementptr inbounds %struct.View2DString, ptr %61, i64 0, i32 3
  store i32 %49, ptr %66, align 4, !tbaa !75
  %67 = getelementptr inbounds %struct.View2DString, ptr %61, i64 0, i32 3, i64 1
  store i32 %48, ptr %67, align 4, !tbaa !75
  %68 = getelementptr inbounds %struct.View2DString, ptr %61, i64 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %68, ptr align 1 %3, i64 %59, i1 false)
  br label %69

69:                                               ; preds = %55, %47
  ret void
}

declare ptr @BLI_memarena_new(i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_memarena_alloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @UI_view2d_text_cache_add_rectf(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #0 {
  %6 = alloca %struct.rcti, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #16
  %7 = call zeroext i8 @UI_view2d_view_to_region_rcti_clip(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6), !range !177
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %31, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr @g_v2d_strings_arena, align 8, !tbaa !95
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = tail call ptr @BLI_memarena_new(i64 noundef 16376, ptr noundef nonnull @__func__.UI_view2d_text_cache_add_rectf) #16
  store ptr %13, ptr @g_v2d_strings_arena, align 8, !tbaa !95
  br label %14

14:                                               ; preds = %12, %9
  %15 = load ptr, ptr @g_v2d_strings_arena, align 8, !tbaa !95
  %16 = shl i64 %3, 32
  %17 = add i64 %16, 4294967296
  %18 = ashr exact i64 %17, 32
  %19 = add nsw i64 %18, 40
  %20 = tail call ptr @BLI_memarena_alloc(ptr noundef %15, i64 noundef %19) #16
  %21 = load ptr, ptr @g_v2d_strings, align 8, !tbaa !95
  store ptr %21, ptr %20, align 8, !tbaa !95
  store ptr %20, ptr @g_v2d_strings, align 8, !tbaa !95
  %22 = load i32, ptr %4, align 4, !tbaa !75
  %23 = getelementptr inbounds %struct.View2DString, ptr %20, i64 0, i32 1
  store i32 %22, ptr %23, align 8, !tbaa !165
  %24 = getelementptr inbounds %struct.View2DString, ptr %20, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %24, ptr noundef nonnull align 4 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !74
  %25 = load i32, ptr %24, align 4, !tbaa !90
  %26 = getelementptr inbounds %struct.View2DString, ptr %20, i64 0, i32 3
  store i32 %25, ptr %26, align 4, !tbaa !75
  %27 = getelementptr inbounds %struct.View2DString, ptr %20, i64 0, i32 2, i32 2
  %28 = load i32, ptr %27, align 4, !tbaa !92
  %29 = getelementptr inbounds %struct.View2DString, ptr %20, i64 0, i32 3, i64 1
  store i32 %28, ptr %29, align 4, !tbaa !75
  %30 = getelementptr inbounds %struct.View2DString, ptr %20, i64 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %30, ptr align 1 %2, i64 %18, i1 false)
  br label %31

31:                                               ; preds = %14, %5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @UI_view2d_text_cache_draw(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @g_v2d_strings, align 8, !tbaa !95
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call float @BLF_height_default(ptr noundef nonnull @.str.4, i64 noundef 3) #16
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi float [ %5, %4 ], [ 0.000000e+00, %1 ]
  tail call void @wmOrtho2_region_ui(ptr noundef %0) #16
  %8 = load ptr, ptr @g_v2d_strings, align 8, !tbaa !95
  %9 = icmp eq ptr %8, null
  br i1 %9, label %65, label %10

10:                                               ; preds = %6, %62
  %11 = phi ptr [ %63, %62 ], [ %8, %6 ]
  %12 = phi i32 [ %31, %62 ], [ 0, %6 ]
  %13 = getelementptr inbounds %struct.View2DString, ptr %11, i64 0, i32 2
  %14 = getelementptr inbounds %struct.View2DString, ptr %11, i64 0, i32 2, i32 3
  %15 = load i32, ptr %14, align 4, !tbaa !91
  %16 = getelementptr inbounds %struct.View2DString, ptr %11, i64 0, i32 2, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !92
  %18 = sub nsw i32 %15, %17
  %19 = sitofp i32 %18 to float
  %20 = fsub float %19, %7
  %21 = fmul float %20, 5.000000e-01
  %22 = tail call float @llvm.ceil.f32(float %21)
  %23 = fptosi float %22 to i32
  %24 = tail call i32 @llvm.smax.i32(i32 %23, i32 1)
  %25 = getelementptr inbounds %struct.View2DString, ptr %11, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !165
  %27 = icmp eq i32 %12, %26
  br i1 %27, label %30, label %28

28:                                               ; preds = %10
  tail call void @glColor3ubv(ptr noundef nonnull %25) #16
  %29 = load i32, ptr %25, align 8, !tbaa !165
  br label %30

30:                                               ; preds = %28, %10
  %31 = phi i32 [ %29, %28 ], [ %12, %10 ]
  %32 = load i32, ptr %13, align 4, !tbaa !90
  %33 = getelementptr inbounds %struct.View2DString, ptr %11, i64 0, i32 2, i32 1
  %34 = load i32, ptr %33, align 4, !tbaa !89
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %45, label %36

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.View2DString, ptr %11, i64 0, i32 3
  %38 = load i32, ptr %37, align 4, !tbaa !75
  %39 = sitofp i32 %38 to float
  %40 = getelementptr inbounds %struct.View2DString, ptr %11, i64 0, i32 3, i64 1
  %41 = load i32, ptr %40, align 4, !tbaa !75
  %42 = add nsw i32 %41, %24
  %43 = sitofp i32 %42 to float
  %44 = getelementptr inbounds %struct.View2DString, ptr %11, i64 0, i32 4
  tail call void @BLF_draw_default(float noundef %39, float noundef %43, float noundef 0.000000e+00, ptr noundef nonnull %44, i64 noundef 1024) #16
  br label %62

45:                                               ; preds = %30
  %46 = add nsw i32 %32, -4
  %47 = sitofp i32 %46 to float
  %48 = load i32, ptr %16, align 4, !tbaa !92
  %49 = add nsw i32 %48, -4
  %50 = sitofp i32 %49 to float
  %51 = add nsw i32 %34, 4
  %52 = sitofp i32 %51 to float
  %53 = load i32, ptr %14, align 4, !tbaa !91
  %54 = add nsw i32 %53, 4
  %55 = sitofp i32 %54 to float
  tail call void @BLF_clipping_default(float noundef %47, float noundef %50, float noundef %52, float noundef %55) #16
  tail call void @BLF_enable_default(i32 noundef 2) #16
  %56 = load i32, ptr %13, align 4, !tbaa !90
  %57 = sitofp i32 %56 to float
  %58 = load i32, ptr %16, align 4, !tbaa !92
  %59 = add nsw i32 %58, %24
  %60 = sitofp i32 %59 to float
  %61 = getelementptr inbounds %struct.View2DString, ptr %11, i64 0, i32 4
  tail call void @BLF_draw_default(float noundef %57, float noundef %60, float noundef 0.000000e+00, ptr noundef nonnull %61, i64 noundef 1024) #16
  tail call void @BLF_disable_default(i32 noundef 2) #16
  br label %62

62:                                               ; preds = %45, %36
  %63 = load ptr, ptr %11, align 8, !tbaa !95
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %10, !llvm.loop !178

65:                                               ; preds = %62, %6
  store ptr null, ptr @g_v2d_strings, align 8, !tbaa !95
  %66 = load ptr, ptr @g_v2d_strings_arena, align 8, !tbaa !95
  %67 = icmp eq ptr %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %65
  tail call void @BLI_memarena_free(ptr noundef nonnull %66) #16
  store ptr null, ptr @g_v2d_strings_arena, align 8, !tbaa !95
  br label %69

69:                                               ; preds = %68, %65
  ret void
}

declare float @BLF_height_default(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @wmOrtho2_region_ui(ptr noundef) local_unnamed_addr #2

declare void @glColor3ubv(ptr noundef) local_unnamed_addr #2

declare void @BLF_draw_default(float noundef, float noundef, float noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @BLF_clipping_default(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @BLI_memarena_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @log10(double noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #11

declare i64 @BLI_timecode_string_from_time(ptr noundef, i64 noundef, i32 noundef, float noundef, double noundef, i16 noundef signext) local_unnamed_addr #2

declare i64 @BLI_timecode_string_from_time_simple(ptr noundef, i64 noundef, i32 noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #14

declare void @BLF_draw_default_ascii(float noundef, float noundef, float noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind }
attributes #17 = { nounwind willreturn memory(read) }

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
!34 = !{!35, !42, i64 114}
!35 = !{!"View2D", !36, i64 0, !36, i64 16, !40, i64 32, !40, i64 48, !40, i64 64, !38, i64 80, !38, i64 88, !37, i64 96, !37, i64 100, !42, i64 104, !42, i64 106, !42, i64 108, !42, i64 110, !42, i64 112, !42, i64 114, !42, i64 116, !42, i64 118, !42, i64 120, !42, i64 122, !42, i64 124, !42, i64 126, !43, i64 128, !41, i64 136, !41, i64 140, !43, i64 144, !43, i64 152}
!36 = !{!"rctf", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12}
!37 = !{!"float", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!41 = !{!"int", !38, i64 0}
!42 = !{!"short", !38, i64 0}
!43 = !{!"any pointer", !38, i64 0}
!44 = !{!35, !42, i64 110}
!45 = !{!35, !37, i64 96}
!46 = !{!35, !37, i64 100}
!47 = !{!35, !42, i64 116}
!48 = !{!35, !42, i64 108}
!49 = !{!35, !37, i64 8}
!50 = !{!35, !37, i64 0}
!51 = !{!35, !37, i64 4}
!52 = !{!35, !37, i64 12}
!53 = !{i64 0, i64 4, !54, i64 4, i64 4, !54, i64 8, i64 4, !54, i64 12, i64 4, !54}
!54 = !{!37, !37, i64 0}
!55 = !{!35, !42, i64 112}
!56 = !{!35, !42, i64 104}
!57 = !{!58, !37, i64 208}
!58 = !{!"uiStyle", !43, i64 0, !43, i64 8, !38, i64 16, !59, i64 80, !59, i64 112, !59, i64 144, !59, i64 176, !37, i64 208, !42, i64 212, !42, i64 214, !42, i64 216, !42, i64 218, !42, i64 220, !42, i64 222, !42, i64 224, !42, i64 226, !42, i64 228, !42, i64 230}
!59 = !{!"uiFontStyle", !42, i64 0, !42, i64 2, !42, i64 4, !38, i64 6, !42, i64 12, !42, i64 14, !42, i64 16, !42, i64 18, !42, i64 20, !42, i64 22, !37, i64 24, !37, i64 28}
!60 = !{!35, !37, i64 16}
!61 = !{!35, !37, i64 20}
!62 = !{!35, !37, i64 28}
!63 = !{!35, !37, i64 24}
!64 = !{!35, !42, i64 118}
!65 = !{!35, !42, i64 120}
!66 = !{!35, !41, i64 72}
!67 = !{!35, !41, i64 64}
!68 = !{!35, !41, i64 68}
!69 = !{!35, !41, i64 76}
!70 = !{!36, !37, i64 4}
!71 = !{!36, !37, i64 0}
!72 = !{!36, !37, i64 12}
!73 = !{!36, !37, i64 8}
!74 = !{i64 0, i64 4, !75, i64 4, i64 4, !75, i64 8, i64 4, !75, i64 12, i64 4, !75}
!75 = !{!41, !41, i64 0}
!76 = !{!77, !42, i64 8948}
!77 = !{!"UserDef", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !38, i64 20, !38, i64 788, !38, i64 1556, !38, i64 2580, !38, i64 3348, !38, i64 4116, !38, i64 4884, !38, i64 5652, !38, i64 6420, !38, i64 7444, !41, i64 8468, !42, i64 8472, !42, i64 8474, !42, i64 8476, !42, i64 8478, !42, i64 8480, !42, i64 8482, !41, i64 8484, !41, i64 8488, !41, i64 8492, !42, i64 8496, !42, i64 8498, !41, i64 8500, !41, i64 8504, !41, i64 8508, !41, i64 8512, !41, i64 8516, !41, i64 8520, !41, i64 8524, !42, i64 8528, !42, i64 8530, !42, i64 8532, !42, i64 8534, !78, i64 8536, !78, i64 8552, !78, i64 8568, !78, i64 8584, !78, i64 8600, !78, i64 8616, !78, i64 8632, !38, i64 8648, !42, i64 8712, !42, i64 8714, !42, i64 8716, !42, i64 8718, !42, i64 8720, !42, i64 8722, !42, i64 8724, !42, i64 8726, !38, i64 8728, !42, i64 8896, !42, i64 8898, !42, i64 8900, !42, i64 8902, !42, i64 8904, !42, i64 8906, !42, i64 8908, !42, i64 8910, !41, i64 8912, !41, i64 8916, !42, i64 8920, !42, i64 8922, !42, i64 8924, !42, i64 8926, !42, i64 8928, !42, i64 8930, !42, i64 8932, !42, i64 8934, !42, i64 8936, !42, i64 8938, !38, i64 8940, !38, i64 8941, !38, i64 8942, !38, i64 8943, !42, i64 8944, !42, i64 8946, !42, i64 8948, !42, i64 8950, !42, i64 8952, !42, i64 8954, !37, i64 8956, !37, i64 8960, !41, i64 8964, !42, i64 8968, !42, i64 8970, !37, i64 8972, !42, i64 8976, !42, i64 8978, !42, i64 8980, !42, i64 8982, !79, i64 8984, !38, i64 9760, !38, i64 9772, !42, i64 9788, !38, i64 9790, !38, i64 9791, !38, i64 9792, !38, i64 9872, !41, i64 10896, !41, i64 10900, !37, i64 10904, !37, i64 10908, !41, i64 10912, !42, i64 10916, !42, i64 10918, !42, i64 10920, !42, i64 10922, !42, i64 10924, !42, i64 10926, !80, i64 10928}
!78 = !{!"ListBase", !43, i64 0, !43, i64 8}
!79 = !{!"ColorBand", !42, i64 0, !42, i64 2, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !38, i64 8}
!80 = !{!"WalkNavigation", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12, !37, i64 16, !37, i64 20, !42, i64 24, !38, i64 26}
!81 = !{!35, !41, i64 36}
!82 = !{!35, !41, i64 32}
!83 = !{!35, !41, i64 60}
!84 = !{!35, !41, i64 56}
!85 = !{!35, !41, i64 40}
!86 = !{!35, !41, i64 44}
!87 = !{!88, !41, i64 2100}
!88 = !{!"Global", !43, i64 0, !38, i64 8, !38, i64 1032, !38, i64 2056, !38, i64 2057, !38, i64 2058, !78, i64 2064, !38, i64 2080, !38, i64 2081, !38, i64 2082, !42, i64 2084, !42, i64 2086, !42, i64 2088, !38, i64 2090, !42, i64 2092, !41, i64 2096, !41, i64 2100, !38, i64 2104, !41, i64 2108, !41, i64 2112, !38, i64 2116}
!89 = !{!40, !41, i64 4}
!90 = !{!40, !41, i64 0}
!91 = !{!40, !41, i64 12}
!92 = !{!40, !41, i64 8}
!93 = !{!35, !42, i64 122}
!94 = !{!35, !42, i64 124}
!95 = !{!43, !43, i64 0}
!96 = !{!97, !42, i64 130}
!97 = !{!"ARegion", !43, i64 0, !43, i64 8, !35, i64 16, !40, i64 176, !40, i64 192, !42, i64 208, !42, i64 210, !42, i64 212, !42, i64 214, !42, i64 216, !42, i64 218, !37, i64 220, !42, i64 224, !42, i64 226, !42, i64 228, !42, i64 230, !42, i64 232, !42, i64 234, !42, i64 236, !42, i64 238, !43, i64 240, !78, i64 248, !78, i64 264, !78, i64 280, !78, i64 296, !78, i64 312, !78, i64 328, !78, i64 344, !43, i64 360, !43, i64 368, !43, i64 376}
!98 = !{!97, !37, i64 40}
!99 = !{!97, !37, i64 44}
!100 = distinct !{!100, !101, !102}
!101 = !{!"llvm.loop.mustprogress"}
!102 = !{!"llvm.loop.unroll.disable"}
!103 = distinct !{!103, !101, !102}
!104 = !{!97, !37, i64 32}
!105 = !{!97, !37, i64 36}
!106 = distinct !{!106, !101, !102}
!107 = !{!35, !41, i64 140}
!108 = !{!35, !43, i64 128}
!109 = !{!35, !41, i64 136}
!110 = !{!97, !42, i64 210}
!111 = !{!97, !42, i64 208}
!112 = !{!113, !42, i64 820}
!113 = !{!"Scene", !114, i64 0, !43, i64 120, !43, i64 128, !43, i64 136, !43, i64 144, !78, i64 152, !43, i64 168, !43, i64 176, !38, i64 184, !38, i64 196, !38, i64 208, !38, i64 220, !41, i64 232, !41, i64 236, !41, i64 240, !42, i64 244, !38, i64 246, !38, i64 247, !43, i64 248, !43, i64 256, !43, i64 264, !43, i64 272, !115, i64 280, !122, i64 4264, !78, i64 4296, !78, i64 4312, !43, i64 4328, !43, i64 4336, !43, i64 4344, !43, i64 4352, !43, i64 4360, !43, i64 4368, !42, i64 4376, !42, i64 4378, !41, i64 4380, !78, i64 4384, !123, i64 4400, !124, i64 4416, !127, i64 4600, !43, i64 4608, !128, i64 4616, !43, i64 4640, !129, i64 4648, !129, i64 4656, !117, i64 4664, !118, i64 4824, !130, i64 4888, !43, i64 4952}
!114 = !{!"ID", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !38, i64 32, !42, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !43, i64 112}
!115 = !{!"RenderData", !116, i64 0, !43, i64 248, !43, i64 256, !119, i64 264, !120, i64 328, !41, i64 400, !41, i64 404, !41, i64 408, !37, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !41, i64 428, !42, i64 432, !42, i64 434, !37, i64 436, !37, i64 440, !37, i64 444, !37, i64 448, !37, i64 452, !42, i64 456, !42, i64 458, !42, i64 460, !42, i64 462, !42, i64 464, !42, i64 466, !41, i64 468, !42, i64 472, !42, i64 474, !42, i64 476, !42, i64 478, !42, i64 480, !42, i64 482, !41, i64 484, !41, i64 488, !42, i64 492, !42, i64 494, !41, i64 496, !41, i64 500, !42, i64 504, !42, i64 506, !42, i64 508, !42, i64 510, !42, i64 512, !38, i64 514, !38, i64 515, !41, i64 516, !41, i64 520, !41, i64 524, !42, i64 528, !42, i64 530, !42, i64 532, !42, i64 534, !42, i64 536, !42, i64 538, !42, i64 540, !42, i64 542, !36, i64 544, !36, i64 560, !40, i64 576, !78, i64 592, !42, i64 608, !42, i64 610, !37, i64 612, !37, i64 616, !37, i64 620, !37, i64 624, !41, i64 628, !37, i64 632, !37, i64 636, !37, i64 640, !37, i64 644, !42, i64 648, !42, i64 650, !42, i64 652, !42, i64 654, !42, i64 656, !42, i64 658, !37, i64 660, !37, i64 664, !42, i64 668, !42, i64 670, !37, i64 672, !37, i64 676, !38, i64 680, !41, i64 1704, !42, i64 1708, !42, i64 1710, !38, i64 1712, !38, i64 2480, !38, i64 2496, !38, i64 2512, !38, i64 2513, !38, i64 2514, !38, i64 2515, !41, i64 2520, !42, i64 2524, !42, i64 2526, !37, i64 2528, !37, i64 2532, !42, i64 2536, !42, i64 2538, !37, i64 2540, !42, i64 2544, !42, i64 2546, !41, i64 2548, !42, i64 2552, !42, i64 2554, !42, i64 2556, !42, i64 2558, !37, i64 2560, !37, i64 2564, !43, i64 2568, !41, i64 2576, !37, i64 2580, !38, i64 2584, !121, i64 2616, !41, i64 3976, !41, i64 3980}
!116 = !{!"ImageFormatData", !38, i64 0, !38, i64 1, !38, i64 2, !38, i64 3, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !42, i64 8, !42, i64 10, !37, i64 12, !38, i64 16, !38, i64 17, !38, i64 18, !117, i64 24, !118, i64 184}
!117 = !{!"ColorManagedViewSettings", !41, i64 0, !41, i64 4, !38, i64 8, !38, i64 72, !37, i64 136, !37, i64 140, !43, i64 144, !43, i64 152}
!118 = !{!"ColorManagedDisplaySettings", !38, i64 0}
!119 = !{!"QuicktimeCodecSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !42, i64 48, !42, i64 50, !41, i64 52, !41, i64 56, !41, i64 60}
!120 = !{!"FFMpegCodecData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !37, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !43, i64 64}
!121 = !{!"BakeData", !116, i64 0, !38, i64 248, !42, i64 1272, !42, i64 1274, !42, i64 1276, !42, i64 1278, !37, i64 1280, !37, i64 1284, !38, i64 1288, !38, i64 1291, !38, i64 1292, !38, i64 1293, !38, i64 1296}
!122 = !{!"AudioData", !41, i64 0, !37, i64 4, !37, i64 8, !37, i64 12, !41, i64 16, !42, i64 20, !42, i64 22, !37, i64 24, !37, i64 28}
!123 = !{!"GameFraming", !38, i64 0, !38, i64 12, !38, i64 13, !38, i64 14, !38, i64 15}
!124 = !{!"GameData", !123, i64 0, !42, i64 16, !42, i64 18, !42, i64 20, !42, i64 22, !42, i64 24, !42, i64 26, !42, i64 28, !42, i64 30, !42, i64 32, !38, i64 34, !125, i64 40, !42, i64 64, !42, i64 66, !37, i64 68, !126, i64 72, !37, i64 128, !37, i64 132, !41, i64 136, !42, i64 140, !42, i64 142, !42, i64 144, !42, i64 146, !42, i64 148, !42, i64 150, !42, i64 152, !42, i64 154, !42, i64 156, !42, i64 158, !42, i64 160, !42, i64 162, !37, i64 164, !37, i64 168, !37, i64 172, !37, i64 176, !37, i64 180}
!125 = !{!"GameDome", !42, i64 0, !42, i64 2, !42, i64 4, !42, i64 6, !37, i64 8, !37, i64 12, !43, i64 16}
!126 = !{!"RecastData", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12, !37, i64 16, !37, i64 20, !37, i64 24, !37, i64 28, !37, i64 32, !37, i64 36, !41, i64 40, !37, i64 44, !37, i64 48, !42, i64 52, !42, i64 54}
!127 = !{!"UnitSettings", !37, i64 0, !38, i64 4, !38, i64 5, !42, i64 6}
!128 = !{!"PhysicsSettings", !38, i64 0, !41, i64 12, !41, i64 16, !41, i64 20}
!129 = !{!"long", !38, i64 0}
!130 = !{!"ColorManagedColorspaceSettings", !38, i64 0}
!131 = !{!113, !37, i64 900}
!132 = !{!77, !42, i64 8472}
!133 = !{!77, !37, i64 10908}
!134 = !{!77, !41, i64 8524}
!135 = !{!136, !37, i64 0}
!136 = !{!"View2DGrid", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12, !41, i64 16, !41, i64 20}
!137 = !{!136, !41, i64 16}
!138 = !{!136, !37, i64 4}
!139 = !{!136, !41, i64 20}
!140 = !{!136, !37, i64 8}
!141 = !{!136, !37, i64 12}
!142 = distinct !{!142, !101, !102}
!143 = distinct !{!143, !101, !102}
!144 = distinct !{!144, !101, !102}
!145 = distinct !{!145, !101, !102}
!146 = distinct !{!146, !101, !102}
!147 = distinct !{!147, !101, !102}
!148 = distinct !{!148, !101, !102}
!149 = distinct !{!149, !101, !102}
!150 = distinct !{!150, !101, !102}
!151 = !{i64 0, i64 4, !75, i64 4, i64 4, !75, i64 8, i64 4, !75}
!152 = !{i64 0, i64 4, !75, i64 4, i64 4, !75}
!153 = !{i64 0, i64 4, !75}
!154 = !{!155, !41, i64 8}
!155 = !{!"View2DScrollers", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !40, i64 32, !41, i64 48, !41, i64 52, !43, i64 56, !42, i64 64, !42, i64 66, !42, i64 68, !42, i64 70}
!156 = !{!155, !41, i64 12}
!157 = !{!155, !41, i64 0}
!158 = !{!155, !41, i64 4}
!159 = !{!155, !42, i64 66}
!160 = !{!155, !42, i64 64}
!161 = !{!155, !42, i64 70}
!162 = !{!155, !42, i64 68}
!163 = !{!155, !43, i64 56}
!164 = !{i64 0, i64 4, !165, i64 4, i64 4, !165, i64 8, i64 4, !165, i64 12, i64 4, !165, i64 16, i64 4, !165, i64 20, i64 4, !165, i64 24, i64 2, !166, i64 26, i64 2, !166, i64 28, i64 2, !166, i64 30, i64 2, !166}
!165 = !{!38, !38, i64 0}
!166 = !{!42, !42, i64 0}
!167 = !{!35, !42, i64 106}
!168 = !{!35, !41, i64 48}
!169 = !{!35, !41, i64 52}
!170 = distinct !{!170, !101, !102}
!171 = !{!77, !42, i64 8474}
!172 = distinct !{!172, !101, !102}
!173 = distinct !{!173, !101, !102}
!174 = !{!97, !42, i64 214}
!175 = !{!97, !41, i64 176}
!176 = !{!97, !41, i64 184}
!177 = !{i8 0, i8 2}
!178 = distinct !{!178, !101, !102}
