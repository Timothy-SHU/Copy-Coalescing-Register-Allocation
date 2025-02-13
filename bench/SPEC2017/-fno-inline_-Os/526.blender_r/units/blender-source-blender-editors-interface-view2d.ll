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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @UI_view2d_region_reinit(ptr noundef %0, i16 noundef signext %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call ptr @UI_GetStyle() #17
  %6 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 14
  %7 = load i16, ptr %6, align 2, !tbaa !34
  %8 = and i16 %7, 1024
  %9 = icmp eq i16 %8, 0
  switch i16 %1, label %96 [
    i16 0, label %10
    i16 1, label %24
    i16 2, label %29
    i16 3, label %34
    i16 4, label %55
  ]

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 12
  store i16 3, ptr %11, align 2, !tbaa !44
  %12 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 7
  store <2 x float> <float 0x3F847AE140000000, float 1.000000e+03>, ptr %12, align 8, !tbaa !45
  %13 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 15
  store i16 10, ptr %13, align 4, !tbaa !46
  %14 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 11
  store i16 1, ptr %14, align 4, !tbaa !47
  br i1 %9, label %15, label %96

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  store float 0.000000e+00, ptr %16, align 8, !tbaa !48
  store float 0.000000e+00, ptr %0, align 8, !tbaa !49
  %17 = add nsw i32 %2, -1
  %18 = sitofp i32 %17 to float
  %19 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  store float %18, ptr %19, align 4, !tbaa !50
  %20 = add nsw i32 %3, -1
  %21 = sitofp i32 %20 to float
  %22 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  store float %21, ptr %22, align 4, !tbaa !51
  %23 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %23, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !52
  br label %96

24:                                               ; preds = %4
  %25 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 12
  store i16 771, ptr %25, align 2, !tbaa !44
  %26 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 7
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %26, align 8, !tbaa !45
  %27 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 15
  store i16 6, ptr %27, align 4, !tbaa !46
  %28 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 11
  store i16 2, ptr %28, align 4, !tbaa !47
  br label %89

29:                                               ; preds = %4
  %30 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 12
  store i16 771, ptr %30, align 2, !tbaa !44
  %31 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 7
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %31, align 8, !tbaa !45
  %32 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 15
  store i16 10, ptr %32, align 4, !tbaa !46
  %33 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 11
  store i16 2, ptr %33, align 4, !tbaa !47
  br label %89

34:                                               ; preds = %4
  %35 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 12
  store i16 771, ptr %35, align 2, !tbaa !44
  %36 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 7
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %36, align 8, !tbaa !45
  br i1 %9, label %37, label %50

37:                                               ; preds = %34
  store float 0.000000e+00, ptr %0, align 8, !tbaa !49
  %38 = sitofp i32 %2 to float
  %39 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  store float %38, ptr %39, align 4, !tbaa !50
  %40 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  store float 0.000000e+00, ptr %40, align 8, !tbaa !48
  %41 = sitofp i32 %3 to float
  %42 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  store float %41, ptr %42, align 4, !tbaa !51
  %43 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %43, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !52
  %44 = insertelement <2 x i32> poison, i32 %2, i64 0
  %45 = insertelement <2 x i32> %44, i32 %3, i64 1
  %46 = add nsw <2 x i32> %45, <i32 -1, i32 -1>
  %47 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 5
  %48 = sitofp <2 x i32> %46 to <2 x float>
  %49 = shufflevector <2 x float> %48, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  store <4 x float> %49, ptr %47, align 8, !tbaa !45
  br label %50

50:                                               ; preds = %37, %34
  %51 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 15
  store i16 10, ptr %51, align 4, !tbaa !46
  %52 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 11
  store i16 2, ptr %52, align 4, !tbaa !47
  %53 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 13
  store i16 4, ptr %53, align 8, !tbaa !53
  %54 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 9
  store i16 0, ptr %54, align 8, !tbaa !54
  br label %89

55:                                               ; preds = %4
  %56 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 12
  store i16 7, ptr %56, align 2, !tbaa !44
  %57 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 7
  store <2 x float> <float 5.000000e-01, float 2.000000e+00>, ptr %57, align 8, !tbaa !45
  %58 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 15
  store i16 6, ptr %58, align 4, !tbaa !46
  %59 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 11
  store i16 1, ptr %59, align 4, !tbaa !47
  %60 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 9
  %61 = load i16, ptr %60, align 8, !tbaa !54
  %62 = or i16 %61, 384
  store i16 %62, ptr %60, align 8, !tbaa !54
  br i1 %9, label %63, label %96

63:                                               ; preds = %55
  %64 = icmp eq ptr %5, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %63
  %66 = getelementptr inbounds %struct.uiStyle, ptr %5, i64 0, i32 7
  %67 = load float, ptr %66, align 8, !tbaa !55
  br label %68

68:                                               ; preds = %63, %65
  %69 = phi float [ %67, %65 ], [ 1.000000e+00, %63 ]
  %70 = and i16 %61, 2
  %71 = icmp eq i16 %70, 0
  %72 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4
  %73 = sitofp i16 %72 to float
  %74 = fmul float %73, 0x3FEB333340000000
  %75 = select i1 %71, float 0.000000e+00, float %74
  store float 0.000000e+00, ptr %0, align 8, !tbaa !49
  %76 = sitofp i32 %2 to float
  %77 = fsub float %76, %75
  %78 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  store float %77, ptr %78, align 4, !tbaa !50
  %79 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %80 = sub nsw i32 0, %3
  %81 = sitofp i32 %80 to float
  %82 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  store float %81, ptr %82, align 8, !tbaa !48
  store <2 x float> zeroinitializer, ptr %79, align 4, !tbaa !45
  %83 = fneg float %75
  %84 = tail call float @llvm.fmuladd.f32(float %76, float %69, float %83)
  %85 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 1
  store float %84, ptr %85, align 4, !tbaa !58
  %86 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 3
  store float 0.000000e+00, ptr %86, align 4, !tbaa !59
  %87 = fmul float %69, %81
  %88 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 2
  store float %87, ptr %88, align 8, !tbaa !60
  br label %96

89:                                               ; preds = %50, %29, %24
  %90 = or i16 %7, 1024
  store i16 %90, ptr %6, align 2, !tbaa !34
  %91 = trunc i32 %2 to i16
  %92 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 16
  store i16 %91, ptr %92, align 2, !tbaa !61
  %93 = trunc i32 %3 to i16
  %94 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 17
  store i16 %93, ptr %94, align 8, !tbaa !62
  tail call fastcc void @view2d_masks(ptr noundef nonnull %0, i32 noundef 0) #18
  br i1 %9, label %95, label %102

95:                                               ; preds = %89
  tail call void @UI_view2d_totRect_set_resize(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %3, i32 noundef 0) #18
  br label %105

96:                                               ; preds = %10, %15, %55, %68, %4
  %97 = or i16 %7, 1024
  store i16 %97, ptr %6, align 2, !tbaa !34
  %98 = trunc i32 %2 to i16
  %99 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 16
  store i16 %98, ptr %99, align 2, !tbaa !61
  %100 = trunc i32 %3 to i16
  %101 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 17
  store i16 %100, ptr %101, align 8, !tbaa !62
  tail call fastcc void @view2d_masks(ptr noundef nonnull %0, i32 noundef 0) #18
  br label %102

102:                                              ; preds = %96, %89
  %103 = lshr exact i16 %8, 10
  %104 = zext nneg i16 %103 to i32
  tail call fastcc void @ui_view2d_curRect_validate_resize(ptr noundef nonnull %0, i32 noundef %104, i32 noundef 0) #18
  br label %105

105:                                              ; preds = %102, %95
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @UI_GetStyle() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @view2d_masks(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #5 !PGOFuncName !63 {
  %3 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4
  %4 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4, i32 2
  store i32 0, ptr %4, align 8, !tbaa !64
  store i32 0, ptr %3, align 8, !tbaa !65
  %5 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 16
  %6 = load i16, ptr %5, align 2, !tbaa !61
  %7 = sext i16 %6 to i32
  %8 = add nsw i32 %7, -1
  %9 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4, i32 1
  store i32 %8, ptr %9, align 4, !tbaa !66
  %10 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 17
  %11 = load i16, ptr %10, align 8, !tbaa !62
  %12 = sext i16 %11 to i32
  %13 = add nsw i32 %12, -1
  %14 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4, i32 3
  store i32 %13, ptr %14, align 4, !tbaa !67
  %15 = icmp eq i32 %1, 0
  %16 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 9
  %17 = load i16, ptr %16, align 8, !tbaa !54
  br i1 %15, label %44, label %18

18:                                               ; preds = %2
  %19 = and i16 %17, 320
  %20 = icmp eq i16 %19, 256
  br i1 %20, label %21, label %30

21:                                               ; preds = %18
  %22 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %0) #18
  %23 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1
  %24 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %23) #18
  %25 = fcmp ogt float %22, %24
  %26 = or i16 %17, 1024
  %27 = and i16 %17, -1089
  %28 = select i1 %25, i16 %27, i16 %26
  %29 = select i1 %25, i16 %27, i16 %26
  store i16 %28, ptr %16, align 8, !tbaa !54
  br label %30

30:                                               ; preds = %21, %18
  %31 = phi i16 [ %17, %18 ], [ %29, %21 ]
  %32 = and i16 %31, 160
  %33 = icmp eq i16 %32, 128
  br i1 %33, label %34, label %44

34:                                               ; preds = %30
  %35 = tail call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %0) #18
  %36 = fadd float %35, 0x3F847AE140000000
  %37 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1
  %38 = tail call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %37) #18
  %39 = fcmp ogt float %36, %38
  %40 = and i16 %31, -545
  %41 = or i16 %31, 512
  %42 = select i1 %39, i16 %40, i16 %41
  %43 = select i1 %39, i16 %40, i16 %41
  store i16 %42, ptr %16, align 8, !tbaa !54
  br label %44

44:                                               ; preds = %34, %2, %30
  %45 = phi i16 [ %31, %30 ], [ %17, %2 ], [ %43, %34 ]
  %46 = sext i16 %45 to i32
  %47 = tail call fastcc i32 @view2d_scroll_mapped(i32 noundef %46) #18
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %108, label %49

49:                                               ; preds = %44
  %50 = and i32 %47, 1
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %53, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !68
  %54 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !70
  %55 = sitofp i16 %54 to float
  %56 = fmul float %55, 0x3FEB333340000000
  %57 = fptosi float %56 to i32
  %58 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 2, i32 1
  store i32 %57, ptr %58, align 4, !tbaa !75
  %59 = add nsw i32 %57, 1
  store i32 %59, ptr %3, align 8, !tbaa !65
  br label %74

60:                                               ; preds = %49
  %61 = and i32 %47, 2
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %74, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %64, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !68
  %65 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 2, i32 1
  %66 = load i32, ptr %65, align 4, !tbaa !75
  %67 = add nsw i32 %66, 1
  store i32 %67, ptr %65, align 4, !tbaa !75
  %68 = sitofp i32 %67 to float
  %69 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !70
  %70 = sitofp i16 %69 to float
  %71 = tail call float @llvm.fmuladd.f32(float %70, float 0xBFEB333340000000, float %68)
  %72 = fptosi float %71 to i32
  store i32 %72, ptr %64, align 8, !tbaa !76
  %73 = add nsw i32 %72, -1
  store i32 %73, ptr %9, align 4, !tbaa !66
  br label %74

74:                                               ; preds = %60, %63, %52
  %75 = and i32 %47, 8
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %94

77:                                               ; preds = %74
  %78 = and i32 %47, 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %108, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %81, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !68
  %82 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 3, i32 3
  %83 = load i32, ptr %82, align 4, !tbaa !77
  %84 = sitofp i32 %83 to float
  %85 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !70
  %86 = sitofp i16 %85 to float
  %87 = tail call float @llvm.fmuladd.f32(float %86, float 0xBFEB333340000000, float %84)
  %88 = fptosi float %87 to i32
  %89 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 3, i32 2
  store i32 %88, ptr %89, align 8, !tbaa !78
  %90 = add nsw i32 %88, -1
  store i32 %90, ptr %14, align 4, !tbaa !67
  %91 = and i32 %47, 3
  %92 = icmp eq i32 %91, 0
  %93 = or i1 %92, %79
  br i1 %93, label %108, label %106

94:                                               ; preds = %74
  %95 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %95, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !68
  %96 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !70
  %97 = sitofp i16 %96 to float
  %98 = fmul float %97, 0x3FEB333340000000
  %99 = fptosi float %98 to i32
  %100 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 3, i32 3
  store i32 %99, ptr %100, align 4, !tbaa !77
  %101 = add nsw i32 %99, 1
  store i32 %101, ptr %4, align 8, !tbaa !64
  %102 = and i32 %47, 3
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %94
  %105 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 2, i32 2
  store i32 %101, ptr %105, align 8, !tbaa !79
  br label %108

106:                                              ; preds = %80
  %107 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 2, i32 3
  store i32 %90, ptr %107, align 4, !tbaa !80
  br label %108

108:                                              ; preds = %77, %94, %80, %106, %104, %44
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @UI_view2d_totRect_set_resize(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #6 {
  %5 = tail call i32 @llvm.abs.i32(i32 %1, i1 true)
  %6 = tail call i32 @llvm.abs.i32(i32 %2, i1 true)
  %7 = icmp eq i32 %1, 0
  %8 = icmp eq i32 %2, 0
  %9 = or i1 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %4
  %11 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !81
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %49, label %14

14:                                               ; preds = %10
  %15 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef %0, i32 noundef %5, i32 noundef %6) #18
  br label %49

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 15
  %18 = load i16, ptr %17, align 4, !tbaa !46
  %19 = zext i16 %18 to i32
  %20 = and i32 %19, 3
  switch i32 %20, label %26 [
    i32 1, label %21
    i32 2, label %24
  ]

21:                                               ; preds = %16
  %22 = sub nsw i32 0, %5
  %23 = sitofp i32 %22 to float
  store float %23, ptr %0, align 8, !tbaa !49
  br label %30

24:                                               ; preds = %16
  store float 0.000000e+00, ptr %0, align 8, !tbaa !49
  %25 = sitofp i32 %5 to float
  br label %30

26:                                               ; preds = %16
  %27 = sitofp i32 %5 to float
  %28 = fmul float %27, 5.000000e-01
  %29 = fneg float %28
  store float %29, ptr %0, align 8, !tbaa !49
  br label %30

30:                                               ; preds = %24, %26, %21
  %31 = phi float [ %25, %24 ], [ %28, %26 ], [ 0.000000e+00, %21 ]
  %32 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  store float %31, ptr %32, align 4, !tbaa !50
  %33 = and i32 %19, 12
  switch i32 %33, label %41 [
    i32 4, label %34
    i32 8, label %38
  ]

34:                                               ; preds = %30
  %35 = sub nsw i32 0, %6
  %36 = sitofp i32 %35 to float
  %37 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  store float %36, ptr %37, align 8, !tbaa !48
  br label %46

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  store float 0.000000e+00, ptr %39, align 8, !tbaa !48
  %40 = sitofp i32 %6 to float
  br label %46

41:                                               ; preds = %30
  %42 = sitofp i32 %6 to float
  %43 = fmul float %42, 5.000000e-01
  %44 = fneg float %43
  %45 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  store float %44, ptr %45, align 8, !tbaa !48
  br label %46

46:                                               ; preds = %38, %41, %34
  %47 = phi float [ %40, %38 ], [ %43, %41 ], [ 0.000000e+00, %34 ]
  %48 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  store float %47, ptr %48, align 4, !tbaa !51
  tail call fastcc void @ui_view2d_curRect_validate_resize(ptr noundef nonnull %0, i32 noundef %3, i32 noundef 1) #18
  br label %49

49:                                               ; preds = %10, %14, %46
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ui_view2d_curRect_validate_resize(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #5 !PGOFuncName !83 {
  %4 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4
  %5 = tail call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %4) #18
  %6 = tail call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %4) #18
  %7 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1
  %8 = tail call fastcc float @BLI_rctf_size_x(ptr noundef %0) #18
  %9 = tail call fastcc float @BLI_rctf_size_y(ptr noundef %0) #18
  %10 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %7) #18
  %11 = tail call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %7) #18
  %12 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 12
  %13 = load i16, ptr %12, align 2, !tbaa !44
  %14 = and i16 %13, 256
  %15 = icmp eq i16 %14, 0
  %16 = and i16 %13, 512
  %17 = icmp eq i16 %16, 0
  %18 = insertelement <2 x i32> poison, i32 %5, i64 0
  %19 = insertelement <2 x i32> %18, i32 %6, i64 1
  %20 = add nsw <2 x i32> %19, <i32 1, i32 1>
  %21 = sitofp <2 x i32> %20 to <2 x float>
  %22 = extractelement <2 x float> %21, i64 0
  %23 = select i1 %15, float %10, float %22
  %24 = extractelement <2 x float> %21, i64 1
  %25 = select i1 %17, float %11, float %24
  %26 = fcmp olt float %23, 0x3810000000000000
  %27 = select i1 %26, float 1.000000e+00, float %23
  %28 = fcmp olt float %25, 0x3810000000000000
  %29 = select i1 %28, float 1.000000e+00, float %25
  %30 = icmp slt <2 x i32> %19, zeroinitializer
  %31 = select <2 x i1> %30, <2 x float> <float 1.000000e+00, float 1.000000e+00>, <2 x float> %21
  %32 = icmp eq i32 %1, 0
  %33 = zext i16 %13 to i32
  %34 = and i32 %33, 4
  %35 = icmp eq i32 %34, 0
  %36 = select i1 %32, i1 true, i1 %35
  br i1 %36, label %71, label %37

37:                                               ; preds = %3
  %38 = and i32 %33, 256
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 18
  %42 = load i16, ptr %41, align 2, !tbaa !84
  %43 = sitofp i16 %42 to float
  %44 = shufflevector <2 x float> %31, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %45 = insertelement <2 x float> %44, float %43, i64 0
  %46 = insertelement <2 x float> poison, float %10, i64 0
  %47 = insertelement <2 x float> %46, float %27, i64 1
  %48 = fdiv <2 x float> %45, %47
  %49 = extractelement <2 x float> %48, i64 0
  %50 = extractelement <2 x float> %48, i64 1
  %51 = fcmp une float %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %40
  %53 = fdiv float %50, %49
  %54 = fmul float %27, %53
  br label %55

55:                                               ; preds = %40, %52, %37
  %56 = phi float [ %54, %52 ], [ %27, %40 ], [ %27, %37 ]
  br i1 %17, label %57, label %126

57:                                               ; preds = %55
  %58 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 19
  %59 = load i16, ptr %58, align 4, !tbaa !85
  %60 = sitofp i16 %59 to float
  %61 = insertelement <2 x float> %31, float %60, i64 0
  %62 = insertelement <2 x float> poison, float %11, i64 0
  %63 = insertelement <2 x float> %62, float %29, i64 1
  %64 = fdiv <2 x float> %61, %63
  %65 = extractelement <2 x float> %64, i64 0
  %66 = extractelement <2 x float> %64, i64 1
  %67 = fcmp une float %65, %66
  br i1 %67, label %68, label %126

68:                                               ; preds = %57
  %69 = fdiv float %66, %65
  %70 = fmul float %29, %69
  br label %126

71:                                               ; preds = %3
  %72 = and i32 %33, 1
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %107, label %74

74:                                               ; preds = %71
  %75 = and i32 %33, 256
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %91

77:                                               ; preds = %74
  %78 = extractelement <2 x float> %31, i64 0
  %79 = fdiv float %78, %27
  %80 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 7
  %81 = load float, ptr %80, align 8, !tbaa !86
  %82 = fcmp olt float %79, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %77
  %84 = fdiv float %78, %81
  br label %91

85:                                               ; preds = %77
  %86 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 8
  %87 = load float, ptr %86, align 4, !tbaa !87
  %88 = fcmp ogt float %79, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = fdiv float %78, %87
  br label %91

91:                                               ; preds = %83, %89, %85, %74
  %92 = phi float [ %27, %74 ], [ %84, %83 ], [ %90, %89 ], [ %27, %85 ]
  br i1 %17, label %93, label %126

93:                                               ; preds = %91
  %94 = extractelement <2 x float> %31, i64 1
  %95 = fdiv float %94, %29
  %96 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 7
  %97 = load float, ptr %96, align 8, !tbaa !86
  %98 = fcmp olt float %95, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %93
  %100 = fdiv float %94, %97
  br label %126

101:                                              ; preds = %93
  %102 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 8
  %103 = load float, ptr %102, align 4, !tbaa !87
  %104 = fcmp ogt float %95, %103
  br i1 %104, label %105, label %126

105:                                              ; preds = %101
  %106 = fdiv float %94, %103
  br label %126

107:                                              ; preds = %71
  %108 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 5
  %109 = load float, ptr %108, align 8, !tbaa !45
  %110 = fcmp olt float %27, %109
  br i1 %110, label %116, label %111

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 6
  %113 = load float, ptr %112, align 8, !tbaa !45
  %114 = fcmp ogt float %27, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %111
  br label %116

116:                                              ; preds = %107, %111, %115
  %117 = phi float [ %113, %115 ], [ %27, %111 ], [ %109, %107 ]
  %118 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 5, i64 1
  %119 = load float, ptr %118, align 4, !tbaa !45
  %120 = fcmp olt float %29, %119
  br i1 %120, label %126, label %121

121:                                              ; preds = %116
  %122 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 6, i64 1
  %123 = load float, ptr %122, align 4, !tbaa !45
  %124 = fcmp ogt float %29, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %121
  br label %126

126:                                              ; preds = %116, %99, %105, %101, %55, %68, %57, %91, %121, %125
  %127 = phi float [ %29, %91 ], [ %123, %125 ], [ %29, %121 ], [ %70, %68 ], [ %29, %57 ], [ %29, %55 ], [ %100, %99 ], [ %106, %105 ], [ %29, %101 ], [ %119, %116 ]
  %128 = phi float [ %92, %91 ], [ %117, %125 ], [ %117, %121 ], [ %56, %68 ], [ %56, %57 ], [ %56, %55 ], [ %92, %99 ], [ %92, %105 ], [ %92, %101 ], [ %117, %116 ]
  %129 = and i16 %13, 2
  %130 = icmp eq i16 %129, 0
  br i1 %130, label %204, label %131

131:                                              ; preds = %126
  %132 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 18
  %133 = extractelement <2 x float> %31, i64 0
  %134 = load <2 x i16>, ptr %132, align 2, !tbaa !88
  %135 = sitofp <2 x i16> %134 to <2 x float>
  %136 = extractelement <2 x float> %135, i64 0
  %137 = fcmp une float %133, %136
  %138 = extractelement <2 x float> %31, i64 1
  %139 = extractelement <2 x float> %135, i64 1
  %140 = fcmp une float %138, %139
  %141 = fdiv float %138, %133
  %142 = xor i1 %137, %140
  br i1 %142, label %153, label %143

143:                                              ; preds = %131
  %144 = and i1 %137, %140
  br i1 %144, label %145, label %151

145:                                              ; preds = %143
  %146 = fsub <2 x float> %31, %135
  %147 = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %146)
  %148 = extractelement <2 x float> %147, i64 0
  %149 = extractelement <2 x float> %147, i64 1
  %150 = fcmp ogt float %148, %149
  br i1 %150, label %154, label %168

151:                                              ; preds = %143
  %152 = fcmp ogt float %141, 1.000000e+00
  br i1 %152, label %168, label %154

153:                                              ; preds = %131
  br i1 %137, label %154, label %168

154:                                              ; preds = %145, %151, %153
  %155 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 11
  %156 = load i16, ptr %155, align 4, !tbaa !47
  %157 = icmp eq i16 %156, 2
  %158 = and i1 %137, %157
  br i1 %158, label %159, label %166

159:                                              ; preds = %154
  %160 = fcmp olt float %133, %136
  br i1 %160, label %161, label %200

161:                                              ; preds = %159
  %162 = fsub <2 x float> %135, %31
  %163 = load <2 x float>, ptr %7, align 4, !tbaa !45
  %164 = shufflevector <2 x float> %162, <2 x float> poison, <2 x i32> zeroinitializer
  %165 = fsub <2 x float> %163, %164
  store <2 x float> %165, ptr %7, align 4, !tbaa !45
  br label %200

166:                                              ; preds = %154
  %167 = fdiv float %127, %141
  br label %200

168:                                              ; preds = %151, %145, %153
  %169 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 11
  %170 = load i16, ptr %169, align 4, !tbaa !47
  %171 = icmp eq i16 %170, 2
  %172 = and i1 %140, %171
  br i1 %172, label %173, label %198

173:                                              ; preds = %168
  %174 = fcmp olt float %138, %139
  br i1 %174, label %175, label %200

175:                                              ; preds = %173
  %176 = fsub float %139, %138
  %177 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 15
  %178 = load i16, ptr %177, align 4, !tbaa !46
  %179 = and i16 %178, 8
  %180 = icmp eq i16 %179, 0
  %181 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 2
  %182 = load float, ptr %181, align 4, !tbaa !89
  %183 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 3
  br i1 %180, label %191, label %184

184:                                              ; preds = %175
  %185 = load float, ptr %183, align 4, !tbaa !90
  %186 = insertelement <2 x float> poison, float %182, i64 0
  %187 = insertelement <2 x float> %186, float %185, i64 1
  %188 = insertelement <2 x float> poison, float %176, i64 0
  %189 = shufflevector <2 x float> %188, <2 x float> poison, <2 x i32> zeroinitializer
  %190 = fsub <2 x float> %187, %189
  store <2 x float> %190, ptr %181, align 4, !tbaa !45
  br label %200

191:                                              ; preds = %175
  %192 = load float, ptr %183, align 4, !tbaa !90
  %193 = insertelement <2 x float> poison, float %176, i64 0
  %194 = shufflevector <2 x float> %193, <2 x float> poison, <2 x i32> zeroinitializer
  %195 = insertelement <2 x float> poison, float %182, i64 0
  %196 = insertelement <2 x float> %195, float %192, i64 1
  %197 = fadd <2 x float> %194, %196
  store <2 x float> %197, ptr %181, align 4, !tbaa !45
  br label %200

198:                                              ; preds = %168
  %199 = fmul float %141, %128
  br label %200

200:                                              ; preds = %184, %191, %198, %173, %166, %161, %159
  %201 = phi float [ %127, %161 ], [ %127, %159 ], [ %127, %166 ], [ %127, %173 ], [ %199, %198 ], [ %127, %191 ], [ %127, %184 ]
  %202 = phi float [ %128, %161 ], [ %128, %159 ], [ %167, %166 ], [ %128, %173 ], [ %128, %198 ], [ %128, %191 ], [ %128, %184 ]
  %203 = fptosi <2 x float> %31 to <2 x i16>
  store <2 x i16> %203, ptr %132, align 2, !tbaa !88
  br label %204

204:                                              ; preds = %200, %126
  %205 = phi float [ %201, %200 ], [ %127, %126 ]
  %206 = phi float [ %202, %200 ], [ %128, %126 ]
  %207 = fcmp une float %206, %10
  %208 = fcmp une float %205, %11
  %209 = select i1 %207, i1 true, i1 %208
  br i1 %209, label %210, label %284

210:                                              ; preds = %204
  br i1 %207, label %211, label %246

211:                                              ; preds = %210
  %212 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 13
  %213 = load i16, ptr %212, align 8, !tbaa !53
  %214 = zext i16 %213 to i32
  %215 = and i32 %214, 2
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %223, label %217

217:                                              ; preds = %211
  %218 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %7) #18
  %219 = fsub float %206, %218
  %220 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 1
  %221 = load float, ptr %220, align 4, !tbaa !91
  %222 = fadd float %221, %219
  store float %222, ptr %220, align 4, !tbaa !91
  br label %246

223:                                              ; preds = %211
  %224 = and i32 %214, 8
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %240, label %226

226:                                              ; preds = %223
  %227 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 15
  %228 = load i16, ptr %227, align 4, !tbaa !46
  %229 = and i16 %228, 1
  %230 = icmp eq i16 %229, 0
  %231 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %7) #18
  %232 = fsub float %206, %231
  br i1 %230, label %236, label %233

233:                                              ; preds = %226
  %234 = load float, ptr %7, align 4, !tbaa !92
  %235 = fsub float %234, %232
  store float %235, ptr %7, align 4, !tbaa !92
  br label %246

236:                                              ; preds = %226
  %237 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 1
  %238 = load float, ptr %237, align 4, !tbaa !91
  %239 = fadd float %238, %232
  store float %239, ptr %237, align 4, !tbaa !91
  br label %246

240:                                              ; preds = %223
  %241 = tail call fastcc float @BLI_rctf_cent_x(ptr noundef nonnull %7) #18
  %242 = fmul float %206, 5.000000e-01
  %243 = fsub float %241, %242
  store float %243, ptr %7, align 4, !tbaa !92
  %244 = fadd float %242, %241
  %245 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 1
  store float %244, ptr %245, align 4, !tbaa !91
  br label %246

246:                                              ; preds = %217, %233, %236, %240, %210
  br i1 %208, label %247, label %284

247:                                              ; preds = %246
  %248 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 13
  %249 = load i16, ptr %248, align 8, !tbaa !53
  %250 = zext i16 %249 to i32
  %251 = and i32 %250, 4
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %259, label %253

253:                                              ; preds = %247
  %254 = tail call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %7) #18
  %255 = fsub float %205, %254
  %256 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 3
  %257 = load float, ptr %256, align 4, !tbaa !90
  %258 = fadd float %257, %255
  store float %258, ptr %256, align 4, !tbaa !90
  br label %284

259:                                              ; preds = %247
  %260 = and i32 %250, 16
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %277, label %262

262:                                              ; preds = %259
  %263 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 15
  %264 = load i16, ptr %263, align 4, !tbaa !46
  %265 = and i16 %264, 4
  %266 = icmp eq i16 %265, 0
  %267 = tail call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %7) #18
  %268 = fsub float %205, %267
  br i1 %266, label %273, label %269

269:                                              ; preds = %262
  %270 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 2
  %271 = load float, ptr %270, align 4, !tbaa !89
  %272 = fsub float %271, %268
  store float %272, ptr %270, align 4, !tbaa !89
  br label %284

273:                                              ; preds = %262
  %274 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 3
  %275 = load float, ptr %274, align 4, !tbaa !90
  %276 = fadd float %275, %268
  store float %276, ptr %274, align 4, !tbaa !90
  br label %284

277:                                              ; preds = %259
  %278 = tail call fastcc float @BLI_rctf_cent_y(ptr noundef nonnull %7) #18
  %279 = fmul float %205, 5.000000e-01
  %280 = fsub float %278, %279
  %281 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 2
  store float %280, ptr %281, align 4, !tbaa !89
  %282 = fadd float %279, %278
  %283 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 3
  store float %282, ptr %283, align 4, !tbaa !90
  br label %284

284:                                              ; preds = %246, %277, %273, %269, %253, %204
  %285 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 11
  %286 = load i16, ptr %285, align 4, !tbaa !47
  %287 = icmp eq i16 %286, 0
  br i1 %287, label %420, label %288

288:                                              ; preds = %284
  %289 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %7) #18
  %290 = tail call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %7) #18
  %291 = fcmp ogt float %289, %8
  %292 = and i16 %13, 261
  %293 = icmp eq i16 %292, 0
  %294 = select i1 %291, i1 %293, i1 false
  br i1 %294, label %295, label %307

295:                                              ; preds = %288
  %296 = load float, ptr %7, align 4, !tbaa !92
  %297 = load float, ptr %0, align 4, !tbaa !92
  %298 = fcmp olt float %296, %297
  br i1 %298, label %299, label %300

299:                                              ; preds = %295
  store float %297, ptr %7, align 4, !tbaa !92
  br label %300

300:                                              ; preds = %299, %295
  %301 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 1
  %302 = load float, ptr %301, align 4, !tbaa !91
  %303 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %304 = load float, ptr %303, align 4, !tbaa !91
  %305 = fcmp ogt float %302, %304
  br i1 %305, label %306, label %374

306:                                              ; preds = %300
  store float %304, ptr %301, align 4, !tbaa !91
  br label %374

307:                                              ; preds = %288
  %308 = icmp eq i16 %286, 2
  %309 = load float, ptr %7, align 4, !tbaa !92
  %310 = load float, ptr %0, align 4, !tbaa !92
  %311 = fcmp olt float %309, %310
  br i1 %308, label %312, label %341

312:                                              ; preds = %307
  br i1 %311, label %313, label %322

313:                                              ; preds = %312
  %314 = fsub float %310, %309
  %315 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 1
  %316 = load float, ptr %315, align 4, !tbaa !91
  %317 = insertelement <2 x float> poison, float %309, i64 0
  %318 = insertelement <2 x float> %317, float %316, i64 1
  %319 = insertelement <2 x float> poison, float %314, i64 0
  %320 = shufflevector <2 x float> %319, <2 x float> poison, <2 x i32> zeroinitializer
  %321 = fadd <2 x float> %318, %320
  store <2 x float> %321, ptr %7, align 4, !tbaa !45
  br label %374

322:                                              ; preds = %312
  %323 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 1
  %324 = load float, ptr %323, align 4, !tbaa !91
  %325 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %326 = load float, ptr %325, align 4, !tbaa !91
  %327 = fcmp ogt float %324, %326
  br i1 %327, label %328, label %374

328:                                              ; preds = %322
  %329 = fsub float %324, %326
  %330 = fsub float %309, %329
  %331 = fcmp olt float %330, %310
  br i1 %331, label %332, label %339

332:                                              ; preds = %328
  %333 = fsub float %309, %310
  %334 = insertelement <2 x float> poison, float %309, i64 0
  %335 = insertelement <2 x float> %334, float %324, i64 1
  %336 = insertelement <2 x float> poison, float %333, i64 0
  %337 = shufflevector <2 x float> %336, <2 x float> poison, <2 x i32> zeroinitializer
  %338 = fsub <2 x float> %335, %337
  store <2 x float> %338, ptr %7, align 4, !tbaa !45
  br label %374

339:                                              ; preds = %328
  store float %330, ptr %7, align 4, !tbaa !92
  %340 = fsub float %324, %329
  store float %340, ptr %323, align 4, !tbaa !91
  br label %374

341:                                              ; preds = %307
  %342 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 1
  %343 = load float, ptr %342, align 4, !tbaa !91
  %344 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %345 = load float, ptr %344, align 4, !tbaa !91
  %346 = fcmp ogt float %343, %345
  br i1 %311, label %347, label %360

347:                                              ; preds = %341
  br i1 %346, label %348, label %353

348:                                              ; preds = %347
  %349 = tail call fastcc float @BLI_rctf_cent_x(ptr noundef nonnull %0) #18
  %350 = fmul float %289, 5.000000e-01
  %351 = fsub float %349, %350
  store float %351, ptr %7, align 4, !tbaa !92
  %352 = fadd float %350, %349
  store float %352, ptr %342, align 4, !tbaa !91
  br label %374

353:                                              ; preds = %347
  %354 = fsub float %310, %309
  %355 = insertelement <2 x float> poison, float %309, i64 0
  %356 = insertelement <2 x float> %355, float %343, i64 1
  %357 = insertelement <2 x float> poison, float %354, i64 0
  %358 = shufflevector <2 x float> %357, <2 x float> poison, <2 x i32> zeroinitializer
  %359 = fadd <2 x float> %356, %358
  store <2 x float> %359, ptr %7, align 4, !tbaa !45
  br label %374

360:                                              ; preds = %341
  br i1 %346, label %361, label %374

361:                                              ; preds = %360
  %362 = fsub float %343, %345
  %363 = fsub float %309, %362
  %364 = fcmp olt float %363, %310
  br i1 %364, label %365, label %372

365:                                              ; preds = %361
  %366 = fsub float %309, %310
  %367 = insertelement <2 x float> poison, float %309, i64 0
  %368 = insertelement <2 x float> %367, float %343, i64 1
  %369 = insertelement <2 x float> poison, float %366, i64 0
  %370 = shufflevector <2 x float> %369, <2 x float> poison, <2 x i32> zeroinitializer
  %371 = fsub <2 x float> %368, %370
  store <2 x float> %371, ptr %7, align 4, !tbaa !45
  br label %374

372:                                              ; preds = %361
  store float %363, ptr %7, align 4, !tbaa !92
  %373 = fsub float %343, %362
  store float %373, ptr %342, align 4, !tbaa !91
  br label %374

374:                                              ; preds = %322, %339, %332, %313, %353, %365, %372, %360, %348, %300, %306
  %375 = fcmp ogt float %290, %9
  %376 = and i16 %13, 517
  %377 = icmp eq i16 %376, 0
  %378 = select i1 %375, i1 %377, i1 false
  %379 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 2
  %380 = load float, ptr %379, align 4, !tbaa !89
  %381 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %382 = load float, ptr %381, align 4, !tbaa !89
  %383 = fcmp olt float %380, %382
  br i1 %378, label %384, label %393

384:                                              ; preds = %374
  br i1 %383, label %385, label %386

385:                                              ; preds = %384
  store float %382, ptr %379, align 4, !tbaa !89
  br label %386

386:                                              ; preds = %385, %384
  %387 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 3
  %388 = load float, ptr %387, align 4, !tbaa !90
  %389 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %390 = load float, ptr %389, align 4, !tbaa !90
  %391 = fcmp ogt float %388, %390
  br i1 %391, label %392, label %420

392:                                              ; preds = %386
  store float %390, ptr %387, align 4, !tbaa !90
  br label %420

393:                                              ; preds = %374
  %394 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 3
  %395 = load float, ptr %394, align 4, !tbaa !90
  %396 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %397 = load float, ptr %396, align 4, !tbaa !90
  %398 = fcmp ogt float %395, %397
  br i1 %383, label %399, label %412

399:                                              ; preds = %393
  br i1 %398, label %400, label %405

400:                                              ; preds = %399
  %401 = tail call fastcc float @BLI_rctf_cent_y(ptr noundef nonnull %0) #18
  %402 = fmul float %290, 5.000000e-01
  %403 = fsub float %401, %402
  store float %403, ptr %379, align 4, !tbaa !89
  %404 = fadd float %402, %401
  store float %404, ptr %394, align 4, !tbaa !90
  br label %420

405:                                              ; preds = %399
  %406 = fsub float %382, %380
  %407 = insertelement <2 x float> poison, float %380, i64 0
  %408 = insertelement <2 x float> %407, float %395, i64 1
  %409 = insertelement <2 x float> poison, float %406, i64 0
  %410 = shufflevector <2 x float> %409, <2 x float> poison, <2 x i32> zeroinitializer
  %411 = fadd <2 x float> %408, %410
  store <2 x float> %411, ptr %379, align 4, !tbaa !45
  br label %420

412:                                              ; preds = %393
  br i1 %398, label %413, label %420

413:                                              ; preds = %412
  %414 = fsub float %395, %397
  %415 = insertelement <2 x float> poison, float %380, i64 0
  %416 = insertelement <2 x float> %415, float %395, i64 1
  %417 = insertelement <2 x float> poison, float %414, i64 0
  %418 = shufflevector <2 x float> %417, <2 x float> poison, <2 x i32> zeroinitializer
  %419 = fsub <2 x float> %416, %418
  store <2 x float> %419, ptr %379, align 4, !tbaa !45
  br label %420

420:                                              ; preds = %392, %386, %405, %413, %412, %400, %284
  %421 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 15
  %422 = load i16, ptr %421, align 4, !tbaa !46
  %423 = icmp eq i16 %422, 0
  br i1 %423, label %459, label %424

424:                                              ; preds = %420
  %425 = zext i16 %422 to i32
  %426 = and i32 %425, 3
  switch i32 %426, label %441 [
    i32 1, label %427
    i32 2, label %434
  ]

427:                                              ; preds = %424
  %428 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 1
  %429 = load float, ptr %428, align 4, !tbaa !58
  %430 = fcmp ogt float %429, 0.000000e+00
  br i1 %430, label %431, label %441

431:                                              ; preds = %427
  %432 = load float, ptr %7, align 8, !tbaa !93
  %433 = fsub float %432, %429
  store float %433, ptr %7, align 8, !tbaa !93
  store float 0.000000e+00, ptr %428, align 4, !tbaa !58
  br label %441

434:                                              ; preds = %424
  %435 = load float, ptr %7, align 8, !tbaa !93
  %436 = fcmp olt float %435, 0.000000e+00
  br i1 %436, label %437, label %441

437:                                              ; preds = %434
  %438 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 1
  %439 = load float, ptr %438, align 4, !tbaa !58
  %440 = fsub float %439, %435
  store float %440, ptr %438, align 4, !tbaa !58
  store float 0.000000e+00, ptr %7, align 8, !tbaa !93
  br label %441

441:                                              ; preds = %424, %437, %434, %427, %431
  %442 = and i32 %425, 12
  switch i32 %442, label %459 [
    i32 4, label %443
    i32 8, label %451
  ]

443:                                              ; preds = %441
  %444 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 3
  %445 = load float, ptr %444, align 4, !tbaa !59
  %446 = fcmp ogt float %445, 0.000000e+00
  br i1 %446, label %447, label %459

447:                                              ; preds = %443
  %448 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 2
  %449 = load float, ptr %448, align 8, !tbaa !60
  %450 = fsub float %449, %445
  store float %450, ptr %448, align 8, !tbaa !60
  store float 0.000000e+00, ptr %444, align 4, !tbaa !59
  br label %459

451:                                              ; preds = %441
  %452 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 2
  %453 = load float, ptr %452, align 8, !tbaa !60
  %454 = fcmp olt float %453, 0.000000e+00
  br i1 %454, label %455, label %459

455:                                              ; preds = %451
  %456 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 3
  %457 = load float, ptr %456, align 4, !tbaa !59
  %458 = fsub float %457, %453
  store float %458, ptr %456, align 4, !tbaa !59
  store float 0.000000e+00, ptr %452, align 8, !tbaa !60
  br label %459

459:                                              ; preds = %441, %447, %443, %451, %455, %420
  tail call fastcc void @view2d_masks(ptr noundef nonnull %0, i32 noundef %2) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @UI_view2d_curRect_validate(ptr noundef %0) local_unnamed_addr #5 {
  tail call fastcc void @ui_view2d_curRect_validate_resize(ptr noundef %0, i32 noundef 0, i32 noundef 1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @UI_view2d_sync(ptr noundef readonly %0, ptr noundef readonly %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.View2D, ptr %2, i64 0, i32 14
  %6 = load i16, ptr %5, align 2, !tbaa !34
  %7 = zext i16 %6 to i32
  %8 = and i32 %7, 3
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %85, label %10

10:                                               ; preds = %4
  %11 = and i32 %7, 2
  %12 = icmp ne i32 %11, 0
  %13 = icmp ne ptr %1, null
  %14 = and i1 %13, %12
  br i1 %14, label %15, label %44

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 20
  %17 = load ptr, ptr %16, align 8, !tbaa !94
  %18 = icmp eq ptr %17, null
  br i1 %18, label %44, label %19

19:                                               ; preds = %15
  %20 = icmp eq i32 %3, 1
  %21 = getelementptr inbounds %struct.View2D, ptr %2, i64 0, i32 1, i32 2
  br label %22

22:                                               ; preds = %19, %39
  %23 = phi ptr [ %17, %19 ], [ %40, %39 ]
  %24 = getelementptr inbounds %struct.ARegion, ptr %23, i64 0, i32 2
  %25 = icmp eq ptr %24, %2
  br i1 %25, label %39, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.ARegion, ptr %23, i64 0, i32 2, i32 14
  %28 = load i16, ptr %27, align 2, !tbaa !95
  %29 = and i16 %28, 2
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %26
  br i1 %20, label %32, label %35

32:                                               ; preds = %31
  %33 = getelementptr inbounds %struct.ARegion, ptr %23, i64 0, i32 2, i32 1, i32 2
  %34 = load <2 x float>, ptr %21, align 8, !tbaa !45
  store <2 x float> %34, ptr %33, align 8, !tbaa !45
  br label %38

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.ARegion, ptr %23, i64 0, i32 2, i32 1, i32 2
  %37 = load <2 x float>, ptr %36, align 8, !tbaa !45
  store <2 x float> %37, ptr %21, align 8, !tbaa !45
  br label %38

38:                                               ; preds = %35, %32
  tail call void @ED_region_tag_redraw(ptr noundef nonnull %23) #17
  br label %39

39:                                               ; preds = %22, %38, %26
  %40 = load ptr, ptr %23, align 8, !tbaa !94
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %22, !llvm.loop !97

42:                                               ; preds = %39
  %43 = load i16, ptr %5, align 2, !tbaa !34
  br label %44

44:                                               ; preds = %42, %15, %10
  %45 = phi i16 [ %43, %42 ], [ %6, %15 ], [ %6, %10 ]
  %46 = and i16 %45, 1
  %47 = icmp ne i16 %46, 0
  %48 = icmp ne ptr %0, null
  %49 = and i1 %48, %47
  br i1 %49, label %50, label %85

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !94
  %53 = icmp eq ptr %52, null
  br i1 %53, label %85, label %54

54:                                               ; preds = %50
  %55 = icmp eq i32 %3, 1
  %56 = getelementptr inbounds %struct.View2D, ptr %2, i64 0, i32 1
  br label %60

57:                                               ; preds = %82, %60
  %58 = load ptr, ptr %61, align 8, !tbaa !94
  %59 = icmp eq ptr %58, null
  br i1 %59, label %85, label %60, !llvm.loop !99

60:                                               ; preds = %54, %57
  %61 = phi ptr [ %52, %54 ], [ %58, %57 ]
  %62 = getelementptr inbounds %struct.ScrArea, ptr %61, i64 0, i32 20
  %63 = load ptr, ptr %62, align 8, !tbaa !94
  %64 = icmp eq ptr %63, null
  br i1 %64, label %57, label %65

65:                                               ; preds = %60, %82
  %66 = phi ptr [ %83, %82 ], [ %63, %60 ]
  %67 = getelementptr inbounds %struct.ARegion, ptr %66, i64 0, i32 2
  %68 = icmp eq ptr %67, %2
  br i1 %68, label %82, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.ARegion, ptr %66, i64 0, i32 2, i32 14
  %71 = load i16, ptr %70, align 2, !tbaa !95
  %72 = and i16 %71, 1
  %73 = icmp eq i16 %72, 0
  br i1 %73, label %82, label %74

74:                                               ; preds = %69
  br i1 %55, label %75, label %78

75:                                               ; preds = %74
  %76 = getelementptr inbounds %struct.ARegion, ptr %66, i64 0, i32 2, i32 1
  %77 = load <2 x float>, ptr %56, align 8, !tbaa !45
  store <2 x float> %77, ptr %76, align 8, !tbaa !45
  br label %81

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.ARegion, ptr %66, i64 0, i32 2, i32 1
  %80 = load <2 x float>, ptr %79, align 8, !tbaa !45
  store <2 x float> %80, ptr %56, align 8, !tbaa !45
  br label %81

81:                                               ; preds = %78, %75
  tail call void @ED_region_tag_redraw(ptr noundef nonnull %66) #17
  br label %82

82:                                               ; preds = %65, %81, %69
  %83 = load ptr, ptr %66, align 8, !tbaa !94
  %84 = icmp eq ptr %83, null
  br i1 %84, label %57, label %65, !llvm.loop !100

85:                                               ; preds = %57, %50, %44, %4
  ret void
}

; Function Attrs: optsize
declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @UI_view2d_curRect_reset(ptr nocapture noundef %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4
  %3 = tail call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %2) #18
  %4 = add nsw i32 %3, 1
  %5 = sitofp i32 %4 to float
  %6 = tail call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %2) #18
  %7 = add nsw i32 %6, 1
  %8 = sitofp i32 %7 to float
  %9 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 15
  %10 = load i16, ptr %9, align 4, !tbaa !46
  %11 = zext i16 %10 to i32
  %12 = and i32 %11, 3
  switch i32 %12, label %15 [
    i32 1, label %13
    i32 2, label %18
  ]

13:                                               ; preds = %1
  %14 = fneg float %5
  br label %18

15:                                               ; preds = %1
  %16 = fmul float %5, 5.000000e-01
  %17 = fneg float %16
  br label %18

18:                                               ; preds = %1, %15, %13
  %19 = phi float [ %17, %15 ], [ %14, %13 ], [ 0.000000e+00, %1 ]
  %20 = phi float [ %16, %15 ], [ 0.000000e+00, %13 ], [ %5, %1 ]
  %21 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1
  store float %19, ptr %21, align 8, !tbaa !93
  %22 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 1
  store float %20, ptr %22, align 4, !tbaa !58
  %23 = and i32 %11, 12
  switch i32 %23, label %26 [
    i32 4, label %24
    i32 8, label %29
  ]

24:                                               ; preds = %18
  %25 = fneg float %8
  br label %29

26:                                               ; preds = %18
  %27 = fmul float %8, 5.000000e-01
  %28 = fneg float %27
  br label %29

29:                                               ; preds = %18, %26, %24
  %30 = phi float [ %28, %26 ], [ %25, %24 ], [ 0.000000e+00, %18 ]
  %31 = phi float [ %27, %26 ], [ 0.000000e+00, %24 ], [ %8, %18 ]
  %32 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 2
  store float %30, ptr %32, align 8, !tbaa !60
  %33 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 3
  store float %31, ptr %33, align 4, !tbaa !59
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_x(ptr nocapture noundef readonly %0) unnamed_addr #8 !PGOFuncName !101 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !102
  %4 = load i32, ptr %0, align 4, !tbaa !103
  %5 = sub nsw i32 %3, %4
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_y(ptr nocapture noundef readonly %0) unnamed_addr #8 !PGOFuncName !104 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !105
  %4 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !106
  %6 = sub nsw i32 %3, %5
  ret i32 %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @UI_view2d_totRect_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 9
  %5 = load i16, ptr %4, align 8, !tbaa !54
  %6 = sext i16 %5 to i32
  %7 = tail call fastcc i32 @view2d_scroll_mapped(i32 noundef %6) #18
  tail call void @UI_view2d_totRect_set_resize(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef 0) #18
  %8 = load i16, ptr %4, align 8, !tbaa !54
  %9 = sext i16 %8 to i32
  %10 = tail call fastcc i32 @view2d_scroll_mapped(i32 noundef %9) #18
  %11 = icmp eq i32 %7, %10
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  tail call void @UI_view2d_totRect_set_resize(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef 0) #18
  br label %13

13:                                               ; preds = %12, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @view2d_scroll_mapped(i32 noundef %0) unnamed_addr #10 !PGOFuncName !107 {
  %2 = and i32 %0, 1024
  %3 = icmp eq i32 %2, 0
  %4 = and i32 %0, -13
  %5 = select i1 %3, i32 %0, i32 %4
  %6 = and i32 %5, 512
  %7 = icmp eq i32 %6, 0
  %8 = and i32 %5, -4
  %9 = select i1 %7, i32 %5, i32 %8
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @UI_view2d_tab_set(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 23
  %4 = load i32, ptr %3, align 4, !tbaa !108
  %5 = icmp eq i32 %4, %1
  br i1 %5, label %49, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 21
  %8 = load ptr, ptr %7, align 8, !tbaa !109
  %9 = icmp eq ptr %8, null
  br i1 %9, label %49, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 22
  %12 = load i32, ptr %11, align 8, !tbaa !110
  %13 = icmp sgt i32 %12, %1
  br i1 %13, label %25, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1
  %16 = load float, ptr %15, align 8, !tbaa !93
  %17 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 1
  store float 0.000000e+00, ptr %15, align 8, !tbaa !93
  %18 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 3
  %19 = load float, ptr %18, align 4, !tbaa !59
  %20 = insertelement <2 x float> poison, float %16, i64 0
  %21 = insertelement <2 x float> %20, float %19, i64 1
  %22 = fsub <2 x float> zeroinitializer, %21
  %23 = load <2 x float>, ptr %17, align 4, !tbaa !45
  %24 = fadd <2 x float> %23, %22
  store <2 x float> %24, ptr %17, align 4, !tbaa !45
  br label %46

25:                                               ; preds = %10
  %26 = shl nsw i32 %1, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds float, ptr %8, i64 %27
  %29 = load float, ptr %28, align 4, !tbaa !45
  %30 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1
  %31 = load float, ptr %30, align 8, !tbaa !93
  %32 = fsub float %29, %31
  %33 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 1
  %34 = load float, ptr %33, align 4, !tbaa !58
  %35 = fadd float %34, %32
  store float %35, ptr %33, align 4, !tbaa !58
  %36 = load float, ptr %28, align 4, !tbaa !45
  store float %36, ptr %30, align 8, !tbaa !93
  %37 = getelementptr inbounds float, ptr %28, i64 1
  %38 = load float, ptr %37, align 4, !tbaa !45
  %39 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 3
  %40 = load float, ptr %39, align 4, !tbaa !59
  %41 = fsub float %38, %40
  %42 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 2
  %43 = load float, ptr %42, align 8, !tbaa !60
  %44 = fadd float %43, %41
  store float %44, ptr %42, align 8, !tbaa !60
  %45 = load float, ptr %37, align 4, !tbaa !45
  br label %46

46:                                               ; preds = %14, %25
  %47 = phi ptr [ %39, %25 ], [ %18, %14 ]
  %48 = phi float [ %45, %25 ], [ 0.000000e+00, %14 ]
  store float %48, ptr %47, align 4, !tbaa !59
  br label %49

49:                                               ; preds = %46, %6, %2
  %50 = phi i8 [ 1, %46 ], [ 0, %6 ], [ 0, %2 ]
  %51 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 22
  %52 = load i32, ptr %51, align 8, !tbaa !110
  %53 = icmp sgt i32 %52, %1
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 21
  %56 = load ptr, ptr %55, align 8, !tbaa !109
  br label %73

57:                                               ; preds = %49
  %58 = load ptr, ptr @MEM_callocN, align 8, !tbaa !94
  %59 = add nsw i32 %1, 1
  %60 = sext i32 %59 to i64
  %61 = shl nsw i64 %60, 3
  %62 = tail call ptr %58(i64 noundef %61, ptr noundef nonnull @.str.1) #17
  %63 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 21
  %64 = load ptr, ptr %63, align 8, !tbaa !109
  %65 = icmp eq ptr %64, null
  br i1 %65, label %72, label %66

66:                                               ; preds = %57
  %67 = load i32, ptr %51, align 8, !tbaa !110
  %68 = sext i32 %67 to i64
  %69 = shl nsw i64 %68, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %62, ptr nonnull align 4 %64, i64 %69, i1 false)
  %70 = load ptr, ptr @MEM_freeN, align 8, !tbaa !94
  %71 = load ptr, ptr %63, align 8, !tbaa !109
  tail call void %70(ptr noundef %71) #17
  br label %72

72:                                               ; preds = %66, %57
  store ptr %62, ptr %63, align 8, !tbaa !109
  store i32 %59, ptr %51, align 8, !tbaa !110
  br label %73

73:                                               ; preds = %54, %72
  %74 = phi ptr [ %56, %54 ], [ %62, %72 ]
  store i32 %1, ptr %3, align 4, !tbaa !108
  %75 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1
  %76 = load float, ptr %75, align 8, !tbaa !93
  %77 = shl nsw i32 %1, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds float, ptr %74, i64 %78
  store float %76, ptr %79, align 4, !tbaa !45
  %80 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 3
  %81 = load float, ptr %80, align 4, !tbaa !59
  %82 = or disjoint i32 %77, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds float, ptr %74, i64 %83
  store float %81, ptr %84, align 4, !tbaa !45
  ret i8 %50
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @UI_view2d_zoom_cache_reset() local_unnamed_addr #0 {
  tail call void @BLF_cache_clear() #17
  ret void
}

; Function Attrs: optsize
declare void @BLF_cache_clear() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @UI_view2d_view_ortho(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct.rctf, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #19
  %3 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4
  %4 = tail call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %3) #18
  %5 = tail call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %3) #18
  %6 = icmp sgt i32 %4, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1
  %9 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %8) #18
  %10 = fmul float %9, 0x3F50624DE0000000
  %11 = sitofp i32 %4 to float
  %12 = fdiv float %10, %11
  br label %13

13:                                               ; preds = %7, %1
  %14 = phi float [ %12, %7 ], [ 0.000000e+00, %1 ]
  %15 = icmp sgt i32 %5, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1
  %18 = tail call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %17) #18
  %19 = fmul float %18, 0x3F50624DE0000000
  %20 = sitofp i32 %5 to float
  %21 = fdiv float %19, %20
  br label %22

22:                                               ; preds = %16, %13
  %23 = phi float [ %21, %16 ], [ 0.000000e+00, %13 ]
  call fastcc void @view2d_map_cur_using_mask(ptr noundef %0, ptr noundef nonnull %2) #18
  %24 = fneg float %14
  %25 = fneg float %23
  call void @BLI_rctf_translate(ptr noundef nonnull %2, float noundef %24, float noundef %25) #17
  %26 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 14
  %27 = load i16, ptr %26, align 2, !tbaa !34
  %28 = and i16 %27, 4
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %22
  %31 = fadd float %14, 0x3F50624DE0000000
  %32 = load <2 x float>, ptr %2, align 8, !tbaa !45
  %33 = call <2 x float> @llvm.floor.v2f32(<2 x float> %32)
  %34 = insertelement <2 x float> poison, float %31, i64 0
  %35 = shufflevector <2 x float> %34, <2 x float> poison, <2 x i32> zeroinitializer
  %36 = fsub <2 x float> %33, %35
  store <2 x float> %36, ptr %2, align 8, !tbaa !45
  br label %37

37:                                               ; preds = %30, %22
  %38 = and i16 %27, 8
  %39 = icmp eq i16 %38, 0
  %40 = getelementptr inbounds %struct.rctf, ptr %2, i64 0, i32 2
  %41 = load float, ptr %40, align 8, !tbaa !89
  br i1 %39, label %42, label %45

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.rctf, ptr %2, i64 0, i32 3
  %44 = load float, ptr %43, align 4, !tbaa !90
  br label %53

45:                                               ; preds = %37
  %46 = call float @llvm.floor.f32(float %41)
  %47 = fadd float %23, 0x3F50624DE0000000
  %48 = fsub float %46, %47
  store float %48, ptr %40, align 8, !tbaa !89
  %49 = getelementptr inbounds %struct.rctf, ptr %2, i64 0, i32 3
  %50 = load float, ptr %49, align 4, !tbaa !90
  %51 = call float @llvm.floor.f32(float %50)
  %52 = fsub float %51, %47
  store float %52, ptr %49, align 4, !tbaa !90
  br label %53

53:                                               ; preds = %42, %45
  %54 = phi float [ %44, %42 ], [ %52, %45 ]
  %55 = phi float [ %41, %42 ], [ %48, %45 ]
  %56 = load float, ptr %2, align 8, !tbaa !92
  %57 = getelementptr inbounds %struct.rctf, ptr %2, i64 0, i32 1
  %58 = load float, ptr %57, align 4, !tbaa !91
  call void @wmOrtho2(float noundef %56, float noundef %58, float noundef %55, float noundef %54) #17
  call void @glLoadIdentity() #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_x(ptr nocapture noundef readonly %0) unnamed_addr #8 !PGOFuncName !111 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %3 = load float, ptr %2, align 4, !tbaa !91
  %4 = load float, ptr %0, align 4, !tbaa !92
  %5 = fsub float %3, %4
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_y(ptr nocapture noundef readonly %0) unnamed_addr #8 !PGOFuncName !112 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %3 = load float, ptr %2, align 4, !tbaa !90
  %4 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %5 = load float, ptr %4, align 4, !tbaa !89
  %6 = fsub float %3, %5
  ret float %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @view2d_map_cur_using_mask(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #7 !PGOFuncName !113 {
  %3 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !52
  %4 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 9
  %5 = load i16, ptr %4, align 8, !tbaa !54
  %6 = sext i16 %5 to i32
  %7 = tail call fastcc i32 @view2d_scroll_mapped(i32 noundef %6) #18
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %72, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4
  %11 = tail call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %10) #18
  %12 = tail call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %10) #18
  %13 = icmp sgt i32 %11, 0
  %14 = icmp sgt i32 %12, 0
  %15 = select i1 %13, i1 %14, i1 false
  br i1 %15, label %16, label %72

16:                                               ; preds = %9
  %17 = sitofp i32 %12 to float
  %18 = sitofp i32 %11 to float
  %19 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %3) #18
  %20 = fadd float %18, 1.000000e+00
  %21 = fdiv float %19, %20
  %22 = tail call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %3) #18
  %23 = fadd float %17, 1.000000e+00
  %24 = fdiv float %22, %23
  %25 = load i32, ptr %10, align 8, !tbaa !65
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %16
  %28 = sitofp i32 %25 to float
  %29 = load float, ptr %1, align 4, !tbaa !92
  %30 = fneg float %21
  %31 = tail call float @llvm.fmuladd.f32(float %30, float %28, float %29)
  store float %31, ptr %1, align 4, !tbaa !92
  br label %32

32:                                               ; preds = %27, %16
  %33 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4, i32 1
  %34 = load i32, ptr %33, align 4, !tbaa !66
  %35 = add nsw i32 %34, 1
  %36 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 16
  %37 = load i16, ptr %36, align 2, !tbaa !61
  %38 = sext i16 %37 to i32
  %39 = icmp eq i32 %35, %38
  br i1 %39, label %47, label %40

40:                                               ; preds = %32
  %41 = xor i32 %34, -1
  %42 = add i32 %38, %41
  %43 = sitofp i32 %42 to float
  %44 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 1
  %45 = load float, ptr %44, align 4, !tbaa !91
  %46 = tail call float @llvm.fmuladd.f32(float %21, float %43, float %45)
  store float %46, ptr %44, align 4, !tbaa !91
  br label %47

47:                                               ; preds = %40, %32
  %48 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4, i32 2
  %49 = load i32, ptr %48, align 8, !tbaa !64
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %47
  %52 = sitofp i32 %49 to float
  %53 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 2
  %54 = load float, ptr %53, align 4, !tbaa !89
  %55 = fneg float %24
  %56 = tail call float @llvm.fmuladd.f32(float %55, float %52, float %54)
  store float %56, ptr %53, align 4, !tbaa !89
  br label %57

57:                                               ; preds = %51, %47
  %58 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4, i32 3
  %59 = load i32, ptr %58, align 4, !tbaa !67
  %60 = add nsw i32 %59, 1
  %61 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 17
  %62 = load i16, ptr %61, align 8, !tbaa !62
  %63 = sext i16 %62 to i32
  %64 = icmp eq i32 %60, %63
  br i1 %64, label %72, label %65

65:                                               ; preds = %57
  %66 = xor i32 %59, -1
  %67 = add i32 %63, %66
  %68 = sitofp i32 %67 to float
  %69 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 3
  %70 = load float, ptr %69, align 4, !tbaa !90
  %71 = tail call float @llvm.fmuladd.f32(float %24, float %68, float %70)
  store float %71, ptr %69, align 4, !tbaa !90
  br label %72

72:                                               ; preds = %9, %65, %57, %2
  ret void
}

; Function Attrs: optsize
declare void @BLI_rctf_translate(ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #4

; Function Attrs: optsize
declare void @wmOrtho2(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glLoadIdentity() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @UI_view2d_view_orthoSpecial(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca %struct.rctf, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #19
  call fastcc void @view2d_map_cur_using_mask(ptr noundef %1, ptr noundef nonnull %4) #18
  %5 = icmp eq i8 %2, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %3
  %7 = load float, ptr %4, align 4, !tbaa !92
  %8 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 1
  %9 = load float, ptr %8, align 4, !tbaa !91
  %10 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 6
  %11 = load i16, ptr %10, align 2, !tbaa !114
  %12 = sitofp i16 %11 to float
  tail call void @wmOrtho2(float noundef %7, float noundef %9, float noundef -0.000000e+00, float noundef %12) #17
  br label %21

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 5
  %15 = load i16, ptr %14, align 8, !tbaa !115
  %16 = sitofp i16 %15 to float
  %17 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 2
  %18 = load float, ptr %17, align 4, !tbaa !89
  %19 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 3
  %20 = load float, ptr %19, align 4, !tbaa !90
  tail call void @wmOrtho2(float noundef -0.000000e+00, float noundef %16, float noundef %18, float noundef %20) #17
  br label %21

21:                                               ; preds = %13, %6
  tail call void @glLoadIdentity() #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @UI_view2d_view_restore(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_region(ptr noundef %0) #17
  %3 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 3
  %4 = tail call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %3) #18
  %5 = add nsw i32 %4, 1
  %6 = tail call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %3) #18
  %7 = add nsw i32 %6, 1
  %8 = sitofp i32 %5 to float
  %9 = sitofp i32 %7 to float
  tail call void @wmOrtho2(float noundef 0.000000e+00, float noundef %8, float noundef 0.000000e+00, float noundef %9) #17
  tail call void @glLoadIdentity() #17
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
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
  br i1 %16, label %137, label %17

17:                                               ; preds = %13, %8
  %18 = load ptr, ptr @MEM_callocN, align 8, !tbaa !94
  %19 = tail call ptr %18(i64 noundef 24, ptr noundef nonnull @.str.2) #17
  %20 = icmp eq i16 %2, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 55
  %23 = load i16, ptr %22, align 4, !tbaa !116
  %24 = sitofp i16 %23 to double
  %25 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 65
  %26 = load float, ptr %25, align 4, !tbaa !135
  %27 = fpext float %26 to double
  %28 = fdiv double %24, %27
  %29 = fmul double %28, 1.000000e-02
  %30 = fptrunc double %29 to float
  br label %31

31:                                               ; preds = %17, %21
  %32 = phi float [ %30, %21 ], [ 1.000000e+00, %17 ]
  br i1 %12, label %33, label %67

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 4
  %35 = tail call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %34) #18
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %55, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 1
  %39 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %38) #18
  %40 = sitofp i32 %35 to float
  %41 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 16), align 8, !tbaa !136
  %42 = sitofp i16 %41 to float
  %43 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !137
  %44 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !138
  %45 = sitofp i32 %44 to float
  %46 = fmul float %43, %45
  %47 = fdiv float %46, 7.200000e+01
  %48 = fmul float %47, %42
  %49 = fmul float %39, %48
  %50 = fmul float %32, %40
  %51 = fdiv float %49, %50
  store float %51, ptr %19, align 4, !tbaa !139
  %52 = getelementptr inbounds %struct.View2DGrid, ptr %19, i64 0, i32 4
  tail call fastcc void @step_to_grid(ptr noundef nonnull %19, ptr noundef nonnull %52, i32 noundef %9) #18
  %53 = load float, ptr %19, align 4, !tbaa !139
  %54 = fmul float %32, %53
  store float %54, ptr %19, align 4, !tbaa !139
  br label %55

55:                                               ; preds = %37, %33
  %56 = icmp eq i16 %3, 1
  br i1 %56, label %57, label %67

57:                                               ; preds = %55
  %58 = load float, ptr %19, align 4, !tbaa !139
  %59 = fcmp olt float %58, 0x3FB99999A0000000
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store float 0x3FB99999A0000000, ptr %19, align 4, !tbaa !139
  br label %61

61:                                               ; preds = %60, %57
  %62 = getelementptr inbounds %struct.View2DGrid, ptr %19, i64 0, i32 4
  %63 = load i32, ptr %62, align 4, !tbaa !141
  %64 = add nsw i32 %63, -2
  %65 = icmp slt i32 %63, 0
  %66 = select i1 %65, i32 -2, i32 %64
  store i32 %66, ptr %62, align 4
  br label %67

67:                                               ; preds = %61, %55, %31
  %68 = icmp ne i16 %4, -1
  %69 = icmp ne i16 %5, -1
  %70 = and i1 %68, %69
  br i1 %70, label %71, label %97

71:                                               ; preds = %67
  %72 = sext i16 %4 to i32
  %73 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 1
  %74 = tail call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %73) #18
  %75 = sitofp i32 %7 to float
  %76 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 16), align 8, !tbaa !136
  %77 = sitofp i16 %76 to float
  %78 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !137
  %79 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !138
  %80 = sitofp i32 %79 to float
  %81 = fmul float %78, %80
  %82 = fdiv float %81, 7.200000e+01
  %83 = fmul float %82, %77
  %84 = fmul float %74, %83
  %85 = fdiv float %84, %75
  %86 = getelementptr inbounds %struct.View2DGrid, ptr %19, i64 0, i32 1
  store float %85, ptr %86, align 4, !tbaa !142
  %87 = getelementptr inbounds %struct.View2DGrid, ptr %19, i64 0, i32 5
  tail call fastcc void @step_to_grid(ptr noundef nonnull %86, ptr noundef nonnull %87, i32 noundef %72) #18
  %88 = icmp eq i16 %5, 1
  br i1 %88, label %89, label %97

89:                                               ; preds = %71
  %90 = load float, ptr %86, align 4, !tbaa !142
  %91 = fcmp olt float %90, 1.000000e+00
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  store float 1.000000e+00, ptr %86, align 4, !tbaa !142
  br label %93

93:                                               ; preds = %92, %89
  %94 = load i32, ptr %87, align 4, !tbaa !143
  %95 = icmp slt i32 %94, 1
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  store i32 1, ptr %87, align 4, !tbaa !143
  br label %97

97:                                               ; preds = %71, %96, %93, %67
  %98 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 1
  %99 = load float, ptr %98, align 8, !tbaa !93
  br i1 %12, label %100, label %116

100:                                              ; preds = %97
  %101 = fdiv float %99, %32
  %102 = fpext float %101 to double
  %103 = load float, ptr %19, align 4, !tbaa !139
  %104 = fdiv float %103, %32
  %105 = fpext float %104 to double
  %106 = tail call double @fmod(double noundef %102, double noundef %105) #17
  %107 = fptrunc double %106 to float
  %108 = fsub float %101, %107
  %109 = fmul float %32, %108
  %110 = getelementptr inbounds %struct.View2DGrid, ptr %19, i64 0, i32 2
  store float %109, ptr %110, align 4, !tbaa !144
  %111 = load float, ptr %98, align 8, !tbaa !93
  %112 = fcmp olt float %111, 0.000000e+00
  br i1 %112, label %113, label %118

113:                                              ; preds = %100
  %114 = load float, ptr %19, align 4, !tbaa !139
  %115 = fsub float %109, %114
  store float %115, ptr %110, align 4, !tbaa !144
  br label %118

116:                                              ; preds = %97
  %117 = getelementptr inbounds %struct.View2DGrid, ptr %19, i64 0, i32 2
  store float %99, ptr %117, align 4, !tbaa !144
  br label %118

118:                                              ; preds = %100, %113, %116
  %119 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 1, i32 2
  %120 = load float, ptr %119, align 8, !tbaa !60
  br i1 %70, label %121, label %135

121:                                              ; preds = %118
  %122 = fpext float %120 to double
  %123 = getelementptr inbounds %struct.View2DGrid, ptr %19, i64 0, i32 1
  %124 = load float, ptr %123, align 4, !tbaa !142
  %125 = fpext float %124 to double
  %126 = tail call double @fmod(double noundef %122, double noundef %125) #17
  %127 = fptrunc double %126 to float
  %128 = fsub float %120, %127
  %129 = getelementptr inbounds %struct.View2DGrid, ptr %19, i64 0, i32 3
  store float %128, ptr %129, align 4, !tbaa !145
  %130 = load float, ptr %119, align 8, !tbaa !60
  %131 = fcmp olt float %130, 0.000000e+00
  br i1 %131, label %132, label %137

132:                                              ; preds = %121
  %133 = load float, ptr %123, align 4, !tbaa !142
  %134 = fsub float %128, %133
  store float %134, ptr %129, align 4, !tbaa !145
  br label %137

135:                                              ; preds = %118
  %136 = getelementptr inbounds %struct.View2DGrid, ptr %19, i64 0, i32 3
  store float %120, ptr %136, align 4, !tbaa !145
  br label %137

137:                                              ; preds = %135, %132, %121, %13
  %138 = phi ptr [ null, %13 ], [ %19, %121 ], [ %19, %132 ], [ %19, %135 ]
  ret ptr %138
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @step_to_grid(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #12 !PGOFuncName !146 {
  %4 = load float, ptr %0, align 4, !tbaa !45
  %5 = fpext float %4 to double
  %6 = tail call double @log10(double noundef %5) #17
  %7 = fptrunc double %6 to float
  %8 = fptosi float %7 to i32
  store i32 %8, ptr %1, align 4, !tbaa !69
  %9 = sitofp i32 %8 to float
  %10 = fsub float %7, %9
  %11 = fpext float %10 to double
  %12 = tail call double @pow(double noundef 1.000000e+01, double noundef %11) #17
  %13 = fptrunc double %12 to float
  %14 = fcmp olt float %7, 0.000000e+00
  %15 = load i32, ptr %1, align 4, !tbaa !69
  %16 = sitofp i32 %15 to double
  %17 = tail call double @pow(double noundef 1.000000e+01, double noundef %16) #17
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
  store float %26, ptr %0, align 4, !tbaa !45
  %28 = fcmp oeq float %27, 1.000000e+00
  br i1 %28, label %29, label %45

29:                                               ; preds = %19
  %30 = load i32, ptr %1, align 4, !tbaa !69
  %31 = add nsw i32 %30, 1
  br label %43

32:                                               ; preds = %3
  %33 = fcmp olt float %13, 2.000000e+00
  %34 = fcmp olt float %13, 5.000000e+00
  %35 = select i1 %34, float 5.000000e+00, float 1.000000e+01
  %36 = select i1 %33, float 2.000000e+00, float %35
  %37 = fmul float %36, %18
  store float %37, ptr %0, align 4, !tbaa !45
  %38 = load i32, ptr %1, align 4, !tbaa !69
  %39 = add nsw i32 %38, 1
  store i32 %39, ptr %1, align 4, !tbaa !69
  %40 = fcmp oeq float %36, 1.000000e+01
  br i1 %40, label %41, label %45

41:                                               ; preds = %32
  %42 = add nsw i32 %38, 2
  br label %43

43:                                               ; preds = %29, %41
  %44 = phi i32 [ %42, %41 ], [ %31, %29 ]
  store i32 %44, ptr %1, align 4, !tbaa !69
  br label %45

45:                                               ; preds = %43, %32, %19
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #13

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @UI_view2d_grid_draw(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [2 x float], align 8
  %5 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  %6 = icmp eq ptr %1, null
  br i1 %6, label %127, label %7

7:                                                ; preds = %3
  %8 = and i32 %2, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %55, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.View2DGrid, ptr %1, i64 0, i32 2
  %12 = load <2 x float>, ptr %11, align 4, !tbaa !45
  %13 = extractelement <2 x float> %12, i64 0
  store float %13, ptr %5, align 4, !tbaa !45
  store <2 x float> %12, ptr %4, align 8, !tbaa !45
  %14 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 3
  %15 = load float, ptr %14, align 4, !tbaa !59
  %16 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  store float %15, ptr %16, align 4, !tbaa !45
  %17 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4
  %18 = tail call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %17) #18
  %19 = add nsw i32 %18, 1
  %20 = sitofp i32 %19 to float
  %21 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 16), align 8, !tbaa !136
  %22 = sitofp i16 %21 to float
  %23 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !137
  %24 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !138
  %25 = sitofp i32 %24 to float
  %26 = fmul float %23, %25
  %27 = fdiv float %26, 7.200000e+01
  %28 = fmul float %27, %22
  %29 = fdiv float %20, %28
  %30 = fptosi float %29 to i32
  tail call void @UI_ThemeColor(i32 noundef 24) #17
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %10
  %33 = load float, ptr %1, align 4, !tbaa !139
  br label %41

34:                                               ; preds = %10, %34
  %35 = phi i32 [ %39, %34 ], [ 0, %10 ]
  call void @glBegin(i32 noundef 3) #17
  call void @glVertex2fv(ptr noundef nonnull %4) #17
  call void @glVertex2fv(ptr noundef nonnull %5) #17
  call void @glEnd() #17
  %36 = load float, ptr %1, align 4, !tbaa !139
  %37 = load float, ptr %4, align 8, !tbaa !45
  %38 = fadd float %36, %37
  store float %38, ptr %4, align 8, !tbaa !45
  store float %38, ptr %5, align 4, !tbaa !45
  %39 = add nuw nsw i32 %35, 1
  %40 = icmp eq i32 %39, %30
  br i1 %40, label %41, label %34, !llvm.loop !147

41:                                               ; preds = %34, %32
  %42 = phi float [ %13, %32 ], [ %38, %34 ]
  %43 = phi float [ %33, %32 ], [ %36, %34 ]
  %44 = call float @llvm.fmuladd.f32(float %43, float -5.000000e-01, float %42)
  store float %44, ptr %4, align 8, !tbaa !45
  store float %44, ptr %5, align 4, !tbaa !45
  call void @UI_ThemeColorShade(i32 noundef 24, i32 noundef 16) #17
  %45 = icmp slt i32 %30, -1
  br i1 %45, label %55, label %46

46:                                               ; preds = %41
  %47 = add i32 %30, 1
  br label %48

48:                                               ; preds = %46, %48
  %49 = phi i32 [ %53, %48 ], [ 0, %46 ]
  call void @glBegin(i32 noundef 3) #17
  call void @glVertex2fv(ptr noundef nonnull %4) #17
  call void @glVertex2fv(ptr noundef nonnull %5) #17
  call void @glEnd() #17
  %50 = load float, ptr %1, align 4, !tbaa !139
  %51 = load float, ptr %4, align 8, !tbaa !45
  %52 = fsub float %51, %50
  store float %52, ptr %4, align 8, !tbaa !45
  store float %52, ptr %5, align 4, !tbaa !45
  %53 = add nuw i32 %49, 1
  %54 = icmp eq i32 %49, %47
  br i1 %54, label %55, label %48, !llvm.loop !148

55:                                               ; preds = %48, %41, %7
  %56 = and i32 %2, 1
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %107, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  %60 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  %61 = getelementptr inbounds %struct.View2DGrid, ptr %1, i64 0, i32 2
  %62 = load <2 x float>, ptr %61, align 4, !tbaa !45
  %63 = extractelement <2 x float> %62, i64 1
  store float %63, ptr %59, align 4, !tbaa !45
  store <2 x float> %62, ptr %4, align 8, !tbaa !45
  %64 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 1
  %65 = load float, ptr %64, align 4, !tbaa !58
  store float %65, ptr %5, align 4, !tbaa !45
  %66 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4
  %67 = call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %66) #18
  %68 = add nsw i32 %67, 1
  %69 = sitofp i32 %68 to float
  %70 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 16), align 8, !tbaa !136
  %71 = sitofp i16 %70 to float
  %72 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !137
  %73 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !138
  %74 = sitofp i32 %73 to float
  %75 = fmul float %72, %74
  %76 = fdiv float %75, 7.200000e+01
  %77 = fmul float %76, %71
  %78 = fdiv float %69, %77
  %79 = fptosi float %78 to i32
  call void @UI_ThemeColor(i32 noundef 24) #17
  %80 = icmp slt i32 %79, 0
  %81 = getelementptr inbounds %struct.View2DGrid, ptr %1, i64 0, i32 1
  br i1 %80, label %82, label %85

82:                                               ; preds = %58
  %83 = load float, ptr %81, align 4, !tbaa !142
  %84 = load float, ptr %60, align 4, !tbaa !45
  br label %92

85:                                               ; preds = %58, %85
  %86 = phi i32 [ %90, %85 ], [ 0, %58 ]
  call void @glBegin(i32 noundef 3) #17
  call void @glVertex2fv(ptr noundef nonnull %4) #17
  call void @glVertex2fv(ptr noundef nonnull %5) #17
  call void @glEnd() #17
  %87 = load float, ptr %81, align 4, !tbaa !142
  %88 = load float, ptr %60, align 4, !tbaa !45
  %89 = fadd float %87, %88
  store float %89, ptr %60, align 4, !tbaa !45
  store float %89, ptr %59, align 4, !tbaa !45
  %90 = add nuw i32 %86, 1
  %91 = icmp eq i32 %86, %79
  br i1 %91, label %92, label %85, !llvm.loop !149

92:                                               ; preds = %85, %82
  %93 = phi float [ %84, %82 ], [ %89, %85 ]
  %94 = phi float [ %83, %82 ], [ %87, %85 ]
  %95 = getelementptr inbounds %struct.View2DGrid, ptr %1, i64 0, i32 1
  %96 = call float @llvm.fmuladd.f32(float %94, float -5.000000e-01, float %93)
  store float %96, ptr %60, align 4, !tbaa !45
  store float %96, ptr %59, align 4, !tbaa !45
  %97 = and i32 %2, 16
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %107, label %99

99:                                               ; preds = %92
  call void @UI_ThemeColorShade(i32 noundef 24, i32 noundef 16) #17
  br i1 %80, label %107, label %100

100:                                              ; preds = %99, %100
  %101 = phi i32 [ %105, %100 ], [ 0, %99 ]
  call void @glBegin(i32 noundef 3) #17
  call void @glVertex2fv(ptr noundef nonnull %4) #17
  call void @glVertex2fv(ptr noundef nonnull %5) #17
  call void @glEnd() #17
  %102 = load float, ptr %95, align 4, !tbaa !142
  %103 = load float, ptr %60, align 4, !tbaa !45
  %104 = fsub float %103, %102
  store float %104, ptr %60, align 4, !tbaa !45
  store float %104, ptr %59, align 4, !tbaa !45
  %105 = add nuw i32 %101, 1
  %106 = icmp eq i32 %101, %79
  br i1 %106, label %107, label %100, !llvm.loop !150

107:                                              ; preds = %100, %99, %92, %55
  call void @UI_ThemeColorShade(i32 noundef 24, i32 noundef -50) #17
  %108 = and i32 %2, 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %117, label %110

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1
  %112 = load float, ptr %111, align 8, !tbaa !93
  store float %112, ptr %4, align 8, !tbaa !45
  %113 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 1
  %114 = load float, ptr %113, align 4, !tbaa !58
  store float %114, ptr %5, align 4, !tbaa !45
  %115 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  store float 0.000000e+00, ptr %115, align 4, !tbaa !45
  %116 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  store float 0.000000e+00, ptr %116, align 4, !tbaa !45
  call void @glBegin(i32 noundef 3) #17
  call void @glVertex2fv(ptr noundef nonnull %4) #17
  call void @glVertex2fv(ptr noundef nonnull %5) #17
  call void @glEnd() #17
  br label %117

117:                                              ; preds = %110, %107
  %118 = and i32 %2, 8
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %127, label %120

120:                                              ; preds = %117
  %121 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 2
  %122 = load float, ptr %121, align 8, !tbaa !60
  %123 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  store float %122, ptr %123, align 4, !tbaa !45
  %124 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 3
  %125 = load float, ptr %124, align 4, !tbaa !59
  %126 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  store float %125, ptr %126, align 4, !tbaa !45
  store float 0.000000e+00, ptr %5, align 4, !tbaa !45
  store float 0.000000e+00, ptr %4, align 8, !tbaa !45
  call void @glBegin(i32 noundef 3) #17
  call void @glVertex2fv(ptr noundef nonnull %4) #17
  call void @glVertex2fv(ptr noundef nonnull %5) #17
  call void @glEnd() #17
  br label %127

127:                                              ; preds = %117, %120, %3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  ret void
}

; Function Attrs: optsize
declare void @UI_ThemeColor(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glBegin(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glVertex2fv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glEnd() local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_ThemeColorShade(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @UI_view2d_constant_grid_draw(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  tail call void @UI_ThemeColorShade(i32 noundef 2, i32 noundef -10) #17
  %2 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1
  %3 = load float, ptr %2, align 8, !tbaa !93
  %4 = fpext float %3 to double
  %5 = tail call double @fmod(double noundef %4, double noundef 2.500000e+01) #17
  %6 = fptrunc double %5 to float
  %7 = fsub float %3, %6
  tail call void @glBegin(i32 noundef 1) #17
  %8 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 1
  %9 = load float, ptr %8, align 4, !tbaa !58
  %10 = fcmp olt float %7, %9
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 2
  %13 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 3
  br label %14

14:                                               ; preds = %11, %14
  %15 = phi float [ %7, %11 ], [ %18, %14 ]
  %16 = load float, ptr %12, align 8, !tbaa !60
  tail call void @glVertex2f(float noundef %15, float noundef %16) #17
  %17 = load float, ptr %13, align 4, !tbaa !59
  tail call void @glVertex2f(float noundef %15, float noundef %17) #17
  %18 = fadd float %15, 2.500000e+01
  %19 = load float, ptr %8, align 4, !tbaa !58
  %20 = fcmp olt float %18, %19
  br i1 %20, label %14, label %21, !llvm.loop !151

21:                                               ; preds = %14, %1
  %22 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 2
  %23 = load float, ptr %22, align 8, !tbaa !60
  %24 = fpext float %23 to double
  %25 = tail call double @fmod(double noundef %24, double noundef 2.500000e+01) #17
  %26 = fptrunc double %25 to float
  %27 = fsub float %23, %26
  %28 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 3
  %29 = load float, ptr %28, align 4, !tbaa !59
  %30 = fcmp olt float %27, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %21, %31
  %32 = phi float [ %35, %31 ], [ %27, %21 ]
  %33 = load float, ptr %2, align 8, !tbaa !93
  tail call void @glVertex2f(float noundef %33, float noundef %32) #17
  %34 = load float, ptr %8, align 4, !tbaa !58
  tail call void @glVertex2f(float noundef %34, float noundef %32) #17
  %35 = fadd float %32, 2.500000e+01
  %36 = load float, ptr %28, align 4, !tbaa !59
  %37 = fcmp olt float %35, %36
  br i1 %37, label %31, label %38, !llvm.loop !152

38:                                               ; preds = %31, %21
  tail call void @UI_ThemeColorShade(i32 noundef 2, i32 noundef -18) #17
  %39 = load float, ptr %22, align 8, !tbaa !60
  tail call void @glVertex2f(float noundef 0.000000e+00, float noundef %39) #17
  %40 = load float, ptr %28, align 4, !tbaa !59
  tail call void @glVertex2f(float noundef 0.000000e+00, float noundef %40) #17
  %41 = load float, ptr %2, align 8, !tbaa !93
  tail call void @glVertex2f(float noundef %41, float noundef 0.000000e+00) #17
  %42 = load float, ptr %8, align 4, !tbaa !58
  tail call void @glVertex2f(float noundef %42, float noundef 0.000000e+00) #17
  tail call void @glEnd() #17
  ret void
}

; Function Attrs: optsize
declare void @glVertex2f(float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @UI_view2d_multi_grid_draw(ptr nocapture noundef readonly %0, i32 noundef %1, float noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = icmp sgt i32 %4, 0
  br i1 %6, label %7, label %101

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1
  %9 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 1
  %10 = add nsw i32 %4, -1
  %11 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 2
  %12 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 3
  %13 = sitofp i32 %3 to float
  br label %14

14:                                               ; preds = %7, %91
  %15 = phi i32 [ 0, %7 ], [ %99, %91 ]
  %16 = phi float [ %2, %7 ], [ %97, %91 ]
  %17 = phi i32 [ -10, %7 ], [ %98, %91 ]
  tail call void @UI_ThemeColorShade(i32 noundef %1, i32 noundef %17) #17
  %18 = load float, ptr %8, align 8, !tbaa !93
  %19 = fcmp ult float %18, 0.000000e+00
  br i1 %19, label %25, label %20

20:                                               ; preds = %14
  %21 = fneg float %18
  %22 = fdiv float %21, %16
  %23 = fptosi float %22 to i32
  %24 = sub nsw i32 0, %23
  br label %28

25:                                               ; preds = %14
  %26 = fdiv float %18, %16
  %27 = fptosi float %26 to i32
  br label %28

28:                                               ; preds = %25, %20
  %29 = phi i32 [ %24, %20 ], [ %27, %25 ]
  %30 = sitofp i32 %29 to float
  %31 = fmul float %16, %30
  tail call void @glBegin(i32 noundef 1) #17
  %32 = load float, ptr %9, align 4, !tbaa !58
  %33 = fcmp olt float %31, %32
  br i1 %33, label %34, label %54

34:                                               ; preds = %28
  %35 = icmp slt i32 %15, %10
  br label %36

36:                                               ; preds = %34, %49
  %37 = phi float [ %32, %34 ], [ %50, %49 ]
  %38 = phi float [ %31, %34 ], [ %51, %49 ]
  %39 = phi i32 [ %29, %34 ], [ %52, %49 ]
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %36
  br i1 %35, label %42, label %45

42:                                               ; preds = %41
  %43 = srem i32 %39, %3
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %42, %41
  %46 = load float, ptr %11, align 8, !tbaa !60
  tail call void @glVertex2f(float noundef %38, float noundef %46) #17
  %47 = load float, ptr %12, align 4, !tbaa !59
  tail call void @glVertex2f(float noundef %38, float noundef %47) #17
  %48 = load float, ptr %9, align 4, !tbaa !58
  br label %49

49:                                               ; preds = %36, %42, %45
  %50 = phi float [ %37, %36 ], [ %37, %42 ], [ %48, %45 ]
  %51 = fadd float %16, %38
  %52 = add nsw i32 %39, 1
  %53 = fcmp olt float %51, %50
  br i1 %53, label %36, label %54, !llvm.loop !153

54:                                               ; preds = %49, %28
  %55 = load float, ptr %11, align 8, !tbaa !60
  %56 = fcmp ult float %55, 0.000000e+00
  br i1 %56, label %62, label %57

57:                                               ; preds = %54
  %58 = fneg float %55
  %59 = fdiv float %58, %16
  %60 = fptosi float %59 to i32
  %61 = sub nsw i32 0, %60
  br label %65

62:                                               ; preds = %54
  %63 = fdiv float %55, %16
  %64 = fptosi float %63 to i32
  br label %65

65:                                               ; preds = %62, %57
  %66 = phi i32 [ %61, %57 ], [ %64, %62 ]
  %67 = sitofp i32 %66 to float
  %68 = fmul float %16, %67
  %69 = load float, ptr %12, align 4, !tbaa !59
  %70 = fcmp olt float %68, %69
  br i1 %70, label %71, label %91

71:                                               ; preds = %65
  %72 = icmp slt i32 %15, %10
  br label %73

73:                                               ; preds = %71, %86
  %74 = phi float [ %69, %71 ], [ %87, %86 ]
  %75 = phi float [ %68, %71 ], [ %88, %86 ]
  %76 = phi i32 [ %66, %71 ], [ %89, %86 ]
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %86, label %78

78:                                               ; preds = %73
  br i1 %72, label %79, label %82

79:                                               ; preds = %78
  %80 = srem i32 %76, %3
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %79, %78
  %83 = load float, ptr %8, align 8, !tbaa !93
  tail call void @glVertex2f(float noundef %83, float noundef %75) #17
  %84 = load float, ptr %9, align 4, !tbaa !58
  tail call void @glVertex2f(float noundef %84, float noundef %75) #17
  %85 = load float, ptr %12, align 4, !tbaa !59
  br label %86

86:                                               ; preds = %73, %79, %82
  %87 = phi float [ %74, %73 ], [ %74, %79 ], [ %85, %82 ]
  %88 = fadd float %16, %75
  %89 = add nsw i32 %76, 1
  %90 = fcmp olt float %88, %87
  br i1 %90, label %73, label %91, !llvm.loop !154

91:                                               ; preds = %86, %65
  %92 = add nsw i32 %17, -8
  tail call void @UI_ThemeColorShade(i32 noundef %1, i32 noundef %92) #17
  %93 = load float, ptr %11, align 8, !tbaa !60
  tail call void @glVertex2f(float noundef 0.000000e+00, float noundef %93) #17
  %94 = load float, ptr %12, align 4, !tbaa !59
  tail call void @glVertex2f(float noundef 0.000000e+00, float noundef %94) #17
  %95 = load float, ptr %8, align 8, !tbaa !93
  tail call void @glVertex2f(float noundef %95, float noundef 0.000000e+00) #17
  %96 = load float, ptr %9, align 4, !tbaa !58
  tail call void @glVertex2f(float noundef %96, float noundef 0.000000e+00) #17
  tail call void @glEnd() #17
  %97 = fmul float %16, %13
  %98 = add nsw i32 %17, -6
  %99 = add nuw nsw i32 %15, 1
  %100 = icmp eq i32 %99, %4
  br i1 %100, label %101, label %14, !llvm.loop !155

101:                                              ; preds = %91, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @UI_view2d_grid_size(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #7 {
  %4 = load float, ptr %0, align 4, !tbaa !139
  store float %4, ptr %1, align 4, !tbaa !45
  %5 = getelementptr inbounds %struct.View2DGrid, ptr %0, i64 0, i32 1
  %6 = load float, ptr %5, align 4, !tbaa !142
  store float %6, ptr %2, align 4, !tbaa !45
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @UI_view2d_grid_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @MEM_freeN, align 8, !tbaa !94
  tail call void %4(ptr noundef nonnull %0) #17
  br label %5

5:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @UI_view2d_scrollers_calc(ptr noundef %0, ptr nocapture noundef readonly %1, i16 noundef signext %2, i16 noundef signext %3, i16 noundef signext %4, i16 noundef signext %5) local_unnamed_addr #0 {
  %7 = alloca %struct.rcti, align 4
  %8 = alloca %struct.rcti, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #19
  %9 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 9
  %10 = load i16, ptr %9, align 8, !tbaa !54
  %11 = sext i16 %10 to i32
  %12 = tail call fastcc i32 @view2d_scroll_mapped(i32 noundef %11) #18
  %13 = load ptr, ptr @MEM_callocN, align 8, !tbaa !94
  %14 = tail call ptr %13(i64 noundef 72, ptr noundef nonnull @.str.3) #17
  %15 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %15, i64 16, i1 false), !tbaa.struct !68
  %16 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %16, i64 16, i1 false), !tbaa.struct !68
  %17 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !70
  %18 = sitofp i16 %17 to float
  %19 = fmul float %18, 0x3FC99999A0000000
  %20 = fptosi float %19 to i32
  %21 = load i32, ptr %8, align 4, !tbaa !103
  %22 = add nsw i32 %21, %20
  store i32 %22, ptr %8, align 4, !tbaa !103
  %23 = getelementptr inbounds %struct.rcti, ptr %8, i64 0, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !102
  %25 = sub nsw i32 %24, %20
  store i32 %25, ptr %23, align 4, !tbaa !102
  %26 = and i32 %12, 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %6
  %29 = getelementptr inbounds %struct.rcti, ptr %8, i64 0, i32 2
  %30 = load i32, ptr %29, align 4, !tbaa !106
  %31 = add nsw i32 %30, %20
  store i32 %31, ptr %29, align 4, !tbaa !106
  br label %36

32:                                               ; preds = %6
  %33 = getelementptr inbounds %struct.rcti, ptr %8, i64 0, i32 3
  %34 = load i32, ptr %33, align 4, !tbaa !105
  %35 = sub nsw i32 %34, %20
  store i32 %35, ptr %33, align 4, !tbaa !105
  br label %36

36:                                               ; preds = %32, %28
  %37 = and i32 %12, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load i32, ptr %7, align 4, !tbaa !103
  %41 = add nsw i32 %40, %20
  store i32 %41, ptr %7, align 4, !tbaa !103
  br label %46

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.rcti, ptr %7, i64 0, i32 1
  %44 = load i32, ptr %43, align 4, !tbaa !102
  %45 = sub nsw i32 %44, %20
  store i32 %45, ptr %43, align 4, !tbaa !102
  br label %46

46:                                               ; preds = %42, %39
  %47 = getelementptr inbounds %struct.rcti, ptr %7, i64 0, i32 2
  %48 = load i32, ptr %47, align 4, !tbaa !106
  %49 = add nsw i32 %48, %20
  store i32 %49, ptr %47, align 4, !tbaa !106
  %50 = getelementptr inbounds %struct.rcti, ptr %7, i64 0, i32 3
  %51 = load i32, ptr %50, align 4, !tbaa !105
  %52 = sub nsw i32 %51, %20
  store i32 %52, ptr %50, align 4, !tbaa !105
  %53 = sitofp i32 %49 to float
  %54 = sitofp i32 %52 to float
  %55 = tail call float @llvm.fmuladd.f32(float %18, float 0xBFE3333340000000, float %54)
  %56 = fcmp olt float %55, %53
  br i1 %56, label %57, label %59

57:                                               ; preds = %46
  %58 = fptosi float %55 to i32
  store i32 %58, ptr %47, align 4, !tbaa !106
  br label %59

59:                                               ; preds = %57, %46
  %60 = phi i32 [ %58, %57 ], [ %49, %46 ]
  %61 = sitofp i32 %22 to float
  %62 = sitofp i32 %25 to float
  %63 = tail call float @llvm.fmuladd.f32(float %18, float 0xBFE3333340000000, float %62)
  %64 = fcmp olt float %63, %61
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = fptosi float %63 to i32
  store i32 %66, ptr %8, align 4, !tbaa !103
  br label %67

67:                                               ; preds = %59, %65
  %68 = phi i32 [ %22, %59 ], [ %66, %65 ]
  %69 = getelementptr inbounds %struct.View2DScrollers, ptr %14, i64 0, i32 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %69, ptr noundef nonnull align 4 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !68
  %70 = getelementptr inbounds %struct.View2DScrollers, ptr %14, i64 0, i32 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %70, ptr noundef nonnull align 4 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !68
  %71 = and i32 %12, 12
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %133, label %73

73:                                               ; preds = %67
  %74 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %1) #18
  %75 = call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %8) #18
  %76 = sitofp i32 %75 to float
  %77 = fcmp oeq float %74, 0.000000e+00
  %78 = select i1 %77, float 1.000000e+00, float %74
  %79 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 1
  %80 = load float, ptr %79, align 8, !tbaa !93
  %81 = load float, ptr %1, align 8, !tbaa !49
  %82 = fsub float %80, %81
  %83 = fdiv float %82, %78
  %84 = fcmp ugt float %83, 0.000000e+00
  %85 = sitofp i32 %68 to float
  %86 = tail call float @llvm.fmuladd.f32(float %83, float %76, float %85)
  %87 = fptosi float %86 to i32
  %88 = select i1 %84, i32 %87, i32 %68
  %89 = getelementptr inbounds %struct.View2DScrollers, ptr %14, i64 0, i32 2
  store i32 %88, ptr %89, align 8
  %90 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 1, i32 1
  %91 = load float, ptr %90, align 4, !tbaa !58
  %92 = fsub float %91, %81
  %93 = fdiv float %92, %78
  %94 = fcmp ult float %93, 1.000000e+00
  %95 = sitofp i32 %68 to float
  %96 = tail call float @llvm.fmuladd.f32(float %93, float %76, float %95)
  %97 = fptosi float %96 to i32
  %98 = select i1 %94, i32 %97, i32 %25
  %99 = getelementptr inbounds %struct.View2DScrollers, ptr %14, i64 0, i32 3
  store i32 %98, ptr %99, align 4
  %100 = icmp sgt i32 %88, %98
  br i1 %100, label %101, label %102

101:                                              ; preds = %73
  store i32 %98, ptr %89, align 8, !tbaa !156
  br label %102

102:                                              ; preds = %101, %73
  %103 = phi i32 [ %98, %101 ], [ %88, %73 ]
  %104 = sub nsw i32 %98, %103
  %105 = sitofp i32 %104 to float
  %106 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !70
  %107 = sitofp i16 %106 to float
  %108 = fmul float %107, 0x3FE3333340000000
  %109 = fcmp ogt float %108, %105
  br i1 %109, label %110, label %133

110:                                              ; preds = %102
  %111 = sitofp i32 %103 to float
  %112 = tail call float @llvm.fmuladd.f32(float %107, float 0x3FE3333340000000, float %111)
  %113 = fptosi float %112 to i32
  store i32 %113, ptr %99, align 4, !tbaa !158
  %114 = sitofp i32 %113 to float
  %115 = sitofp i32 %68 to float
  %116 = tail call float @llvm.fmuladd.f32(float %107, float 0x3FE3333340000000, float %115)
  %117 = fcmp ogt float %116, %114
  br i1 %117, label %118, label %120

118:                                              ; preds = %110
  %119 = fptosi float %116 to i32
  br label %122

120:                                              ; preds = %110
  %121 = icmp slt i32 %25, %113
  br i1 %121, label %122, label %124

122:                                              ; preds = %120, %118
  %123 = phi i32 [ %119, %118 ], [ %25, %120 ]
  store i32 %123, ptr %99, align 4, !tbaa !158
  br label %124

124:                                              ; preds = %122, %120
  %125 = icmp slt i32 %103, %68
  br i1 %125, label %131, label %126

126:                                              ; preds = %124
  %127 = tail call float @llvm.fmuladd.f32(float %107, float 0xBFE3333340000000, float %62)
  %128 = fcmp olt float %127, %111
  br i1 %128, label %129, label %133

129:                                              ; preds = %126
  %130 = fptosi float %127 to i32
  br label %131

131:                                              ; preds = %124, %129
  %132 = phi i32 [ %130, %129 ], [ %68, %124 ]
  store i32 %132, ptr %89, align 8, !tbaa !156
  br label %133

133:                                              ; preds = %131, %102, %126, %67
  %134 = and i32 %12, 3
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %200, label %136

136:                                              ; preds = %133
  %137 = tail call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %1) #18
  %138 = call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %7) #18
  %139 = sitofp i32 %138 to float
  %140 = fcmp oeq float %137, 0.000000e+00
  %141 = select i1 %140, float 1.000000e+00, float %137
  %142 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 1, i32 2
  %143 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 2
  %144 = load float, ptr %143, align 8, !tbaa !48
  %145 = insertelement <2 x i32> poison, i32 %60, i64 0
  %146 = shufflevector <2 x i32> %145, <2 x i32> poison, <2 x i32> zeroinitializer
  %147 = sitofp <2 x i32> %146 to <2 x float>
  %148 = getelementptr inbounds %struct.View2DScrollers, ptr %14, i64 0, i32 1
  %149 = load <2 x float>, ptr %142, align 8, !tbaa !45
  %150 = insertelement <2 x float> poison, float %144, i64 0
  %151 = shufflevector <2 x float> %150, <2 x float> poison, <2 x i32> zeroinitializer
  %152 = fsub <2 x float> %149, %151
  %153 = insertelement <2 x float> poison, float %141, i64 0
  %154 = shufflevector <2 x float> %153, <2 x float> poison, <2 x i32> zeroinitializer
  %155 = fdiv <2 x float> %152, %154
  %156 = insertelement <2 x float> %155, float 1.000000e+00, i64 1
  %157 = insertelement <2 x float> %155, float 0.000000e+00, i64 0
  %158 = fcmp ugt <2 x float> %156, %157
  %159 = insertelement <2 x float> poison, float %139, i64 0
  %160 = shufflevector <2 x float> %159, <2 x float> poison, <2 x i32> zeroinitializer
  %161 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %155, <2 x float> %160, <2 x float> %147)
  %162 = fptosi <2 x float> %161 to <2 x i32>
  %163 = insertelement <2 x i32> %146, i32 %52, i64 1
  %164 = select <2 x i1> %158, <2 x i32> %162, <2 x i32> %163
  store <2 x i32> %164, ptr %14, align 8
  %165 = extractelement <2 x i32> %164, i64 0
  %166 = extractelement <2 x i32> %164, i64 1
  %167 = icmp sgt i32 %165, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %136
  store i32 %166, ptr %14, align 8, !tbaa !159
  br label %169

169:                                              ; preds = %168, %136
  %170 = phi i32 [ %166, %168 ], [ %165, %136 ]
  %171 = sub nsw i32 %166, %170
  %172 = sitofp i32 %171 to float
  %173 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !70
  %174 = sitofp i16 %173 to float
  %175 = fmul float %174, 0x3FE3333340000000
  %176 = fcmp ogt float %175, %172
  br i1 %176, label %177, label %200

177:                                              ; preds = %169
  %178 = sitofp i32 %170 to float
  %179 = tail call float @llvm.fmuladd.f32(float %174, float 0x3FE3333340000000, float %178)
  %180 = fptosi float %179 to i32
  store i32 %180, ptr %148, align 4, !tbaa !160
  %181 = sitofp i32 %180 to float
  %182 = sitofp i32 %60 to float
  %183 = tail call float @llvm.fmuladd.f32(float %174, float 0x3FE3333340000000, float %182)
  %184 = fcmp ogt float %183, %181
  br i1 %184, label %185, label %187

185:                                              ; preds = %177
  %186 = fptosi float %183 to i32
  br label %189

187:                                              ; preds = %177
  %188 = icmp slt i32 %52, %180
  br i1 %188, label %189, label %191

189:                                              ; preds = %187, %185
  %190 = phi i32 [ %186, %185 ], [ %52, %187 ]
  store i32 %190, ptr %148, align 4, !tbaa !160
  br label %191

191:                                              ; preds = %189, %187
  %192 = icmp slt i32 %170, %60
  br i1 %192, label %198, label %193

193:                                              ; preds = %191
  %194 = tail call float @llvm.fmuladd.f32(float %174, float 0xBFE3333340000000, float %54)
  %195 = fcmp olt float %194, %178
  br i1 %195, label %196, label %200

196:                                              ; preds = %193
  %197 = fptosi float %194 to i32
  br label %198

198:                                              ; preds = %191, %196
  %199 = phi i32 [ %197, %196 ], [ %60, %191 ]
  store i32 %199, ptr %14, align 8, !tbaa !159
  br label %200

200:                                              ; preds = %198, %169, %193, %133
  %201 = and i32 %12, 96
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %212, label %203

203:                                              ; preds = %200
  %204 = getelementptr inbounds %struct.View2DScrollers, ptr %14, i64 0, i32 10
  store i16 %3, ptr %204, align 2, !tbaa !161
  %205 = getelementptr inbounds %struct.View2DScrollers, ptr %14, i64 0, i32 9
  store i16 %2, ptr %205, align 8, !tbaa !162
  %206 = getelementptr inbounds %struct.View2DScrollers, ptr %14, i64 0, i32 12
  store i16 %5, ptr %206, align 2, !tbaa !163
  %207 = getelementptr inbounds %struct.View2DScrollers, ptr %14, i64 0, i32 11
  store i16 %4, ptr %207, align 4, !tbaa !164
  %208 = tail call ptr @CTX_data_scene(ptr noundef %0) #17
  %209 = call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %7) #18
  %210 = tail call ptr @UI_view2d_grid_calc(ptr noundef %208, ptr noundef nonnull %1, i16 noundef signext %2, i16 noundef signext %3, i16 noundef signext %4, i16 noundef signext %5, i32 poison, i32 noundef %209) #18
  %211 = getelementptr inbounds %struct.View2DScrollers, ptr %14, i64 0, i32 8
  store ptr %210, ptr %211, align 8, !tbaa !165
  br label %212

212:                                              ; preds = %203, %200
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #19
  ret ptr %14
}

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @UI_view2d_scrollers_draw(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct.rcti, align 16
  %5 = alloca %struct.rcti, align 4
  %6 = alloca %struct.uiWidgetColors, align 2
  %7 = alloca %struct.rcti, align 16
  %8 = alloca [4 x i8], align 1
  %9 = alloca %struct.uiWidgetColors, align 2
  %10 = alloca %struct.rcti, align 16
  %11 = alloca [4 x i8], align 1
  %12 = tail call ptr @CTX_data_scene(ptr noundef %0) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #19
  %13 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 9
  %14 = load i16, ptr %13, align 8, !tbaa !54
  %15 = sext i16 %14 to i32
  %16 = tail call fastcc i32 @view2d_scroll_mapped(i32 noundef %15) #18
  %17 = getelementptr inbounds %struct.View2DScrollers, ptr %2, i64 0, i32 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %17, i64 16, i1 false), !tbaa.struct !68
  %18 = getelementptr inbounds %struct.View2DScrollers, ptr %2, i64 0, i32 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %18, i64 16, i1 false), !tbaa.struct !68
  %19 = and i32 %16, 12
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %166, label %21

21:                                               ; preds = %3
  %22 = tail call ptr @UI_GetTheme() #17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #19
  %23 = getelementptr inbounds %struct.bTheme, ptr %22, i64 0, i32 3, i32 14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %23, i64 32, i1 false), !tbaa.struct !166
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #19
  %24 = getelementptr inbounds %struct.View2DScrollers, ptr %2, i64 0, i32 2
  %25 = load <2 x i32>, ptr %24, align 8, !tbaa !69
  %26 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 2
  %27 = load <2 x i32>, ptr %26, align 4, !tbaa !69
  %28 = shufflevector <2 x i32> %25, <2 x i32> %27, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %28, ptr %7, align 16, !tbaa !69
  %29 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 10
  %30 = load i16, ptr %29, align 2, !tbaa !168
  %31 = and i16 %30, 1
  %32 = zext nneg i16 %31 to i32
  %33 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 12
  %34 = load i16, ptr %33, align 2, !tbaa !44
  %35 = and i16 %34, 256
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %21
  %38 = load i16, ptr %13, align 8, !tbaa !54
  %39 = and i16 %38, 64
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %37
  %42 = call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %7) #18
  %43 = sitofp i32 %42 to float
  %44 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !70
  %45 = sitofp i16 %44 to float
  %46 = fmul float %45, 0x3FE3333340000000
  %47 = fcmp olt float %46, %43
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = or disjoint i32 %32, 2
  br label %50

50:                                               ; preds = %48, %41, %37, %21
  %51 = phi i32 [ %49, %48 ], [ %32, %41 ], [ %32, %37 ], [ %32, %21 ]
  call void @UI_GetThemeColor4ubv(i32 noundef 2, ptr noundef nonnull %8) #17
  %52 = getelementptr inbounds [4 x i8], ptr %8, i64 0, i64 3
  %53 = load i8, ptr %52, align 1, !tbaa !167
  %54 = icmp eq i8 %53, -1
  br i1 %54, label %55, label %69

55:                                               ; preds = %50
  %56 = load i8, ptr %8, align 1, !tbaa !167
  %57 = getelementptr inbounds [4 x i8], ptr %8, i64 0, i64 1
  %58 = load i8, ptr %57, align 1, !tbaa !167
  %59 = getelementptr inbounds [4 x i8], ptr %8, i64 0, i64 2
  %60 = load i8, ptr %59, align 1, !tbaa !167
  call void @glColor3ub(i8 noundef zeroext %56, i8 noundef zeroext %58, i8 noundef zeroext %60) #17
  %61 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 3
  %62 = load i32, ptr %61, align 8, !tbaa !169
  %63 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 3, i32 2
  %64 = load i32, ptr %63, align 8, !tbaa !78
  %65 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 3, i32 1
  %66 = load i32, ptr %65, align 4, !tbaa !170
  %67 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 3, i32 3
  %68 = load i32, ptr %67, align 4, !tbaa !77
  call void @glRecti(i32 noundef %62, i32 noundef %64, i32 noundef %66, i32 noundef %68) #17
  br label %69

69:                                               ; preds = %55, %50
  call void @uiWidgetScrollDraw(ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %7, i32 noundef %51) #17
  %70 = and i32 %16, 64
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %165, label %72

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.View2DScrollers, ptr %2, i64 0, i32 8
  %74 = load ptr, ptr %73, align 8, !tbaa !165
  %75 = icmp eq ptr %74, null
  br i1 %75, label %165, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.View2DGrid, ptr %74, i64 0, i32 2
  %78 = load float, ptr %77, align 4, !tbaa !144
  %79 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 1
  %80 = load float, ptr %79, align 8, !tbaa !93
  %81 = fsub float %78, %80
  %82 = call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %79) #18
  %83 = fdiv float %81, %82
  %84 = load i32, ptr %5, align 4, !tbaa !103
  %85 = sitofp i32 %84 to float
  %86 = call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %5) #18
  %87 = sitofp i32 %86 to float
  %88 = call float @llvm.fmuladd.f32(float %83, float %87, float %85)
  %89 = load float, ptr %74, align 4, !tbaa !139
  %90 = fdiv float %89, %82
  %91 = fmul float %90, %87
  call void @UI_ThemeColor(i32 noundef 3) #17
  %92 = load float, ptr %77, align 4, !tbaa !144
  %93 = getelementptr inbounds %struct.View2DScrollers, ptr %2, i64 0, i32 10
  %94 = load i16, ptr %93, align 2, !tbaa !161
  %95 = icmp eq i16 %94, 1
  br i1 %95, label %96, label %106

96:                                               ; preds = %76
  %97 = load float, ptr %74, align 4, !tbaa !139
  %98 = fcmp olt float %97, 0x3FEFFF2E40000000
  br i1 %98, label %99, label %106

99:                                               ; preds = %96, %99
  %100 = phi float [ %103, %99 ], [ %91, %96 ]
  %101 = phi float [ %102, %99 ], [ %97, %96 ]
  %102 = fmul float %101, 2.000000e+00
  %103 = fmul float %100, 2.000000e+00
  %104 = fcmp olt float %102, 0x3FEFFF2E40000000
  br i1 %104, label %99, label %105, !llvm.loop !171

105:                                              ; preds = %99
  store float %102, ptr %74, align 4, !tbaa !139
  br label %106

106:                                              ; preds = %96, %105, %76
  %107 = phi float [ %91, %76 ], [ %103, %105 ], [ %91, %96 ]
  %108 = getelementptr inbounds %struct.View2DScrollers, ptr %2, i64 0, i32 9
  %109 = load i16, ptr %108, align 8, !tbaa !162
  %110 = icmp eq i16 %109, 1
  br i1 %110, label %111, label %113

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.View2DGrid, ptr %74, i64 0, i32 4
  store i32 1, ptr %112, align 4, !tbaa !141
  br label %113

113:                                              ; preds = %111, %106
  %114 = fcmp ogt float %107, 0.000000e+00
  br i1 %114, label %115, label %165

115:                                              ; preds = %113
  %116 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !70
  %117 = sitofp i16 %116 to float
  %118 = load i32, ptr %26, align 4, !tbaa !106
  %119 = sitofp i32 %118 to float
  %120 = call float @llvm.fmuladd.f32(float %117, float 0x3FB99999A0000000, float %119)
  %121 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 1
  %122 = load i32, ptr %121, align 4, !tbaa !102
  %123 = sitofp i32 %122 to float
  %124 = call float @llvm.fmuladd.f32(float %117, float -5.000000e-01, float %123)
  %125 = fcmp olt float %88, %124
  br i1 %125, label %126, label %165

126:                                              ; preds = %115
  %127 = getelementptr inbounds %struct.View2DGrid, ptr %74, i64 0, i32 4
  %128 = getelementptr inbounds %struct.Scene, ptr %12, i64 0, i32 22, i32 55
  %129 = getelementptr inbounds %struct.Scene, ptr %12, i64 0, i32 22, i32 65
  br label %130

130:                                              ; preds = %126, %155
  %131 = phi float [ %117, %126 ], [ %162, %155 ]
  %132 = phi float [ %88, %126 ], [ %156, %155 ]
  %133 = phi float [ %92, %126 ], [ %158, %155 ]
  %134 = load i32, ptr %5, align 4, !tbaa !103
  %135 = sitofp i32 %134 to float
  %136 = call float @llvm.fmuladd.f32(float %131, float 5.000000e-01, float %135)
  %137 = fcmp olt float %132, %136
  br i1 %137, label %155, label %138

138:                                              ; preds = %130
  %139 = load i16, ptr %108, align 8, !tbaa !162
  switch i16 %139, label %155 [
    i16 1, label %140
    i16 2, label %142
    i16 0, label %144
    i16 4, label %153
  ]

140:                                              ; preds = %138
  %141 = load i32, ptr %127, align 4, !tbaa !141
  call fastcc void @scroll_printstr(ptr noundef %12, float noundef %132, float noundef %120, float noundef %133, i32 noundef %141, i16 noundef signext 1, i8 noundef zeroext 104) #18
  br label %155

142:                                              ; preds = %138
  %143 = load i32, ptr %127, align 4, !tbaa !141
  call fastcc void @scroll_printstr(ptr noundef %12, float noundef %132, float noundef %120, float noundef %133, i32 noundef %143, i16 noundef signext 2, i8 noundef zeroext 104) #18
  br label %155

144:                                              ; preds = %138
  %145 = load i16, ptr %128, align 4, !tbaa !116
  %146 = sitofp i16 %145 to double
  %147 = load float, ptr %129, align 4, !tbaa !135
  %148 = fpext float %147 to double
  %149 = fdiv double %146, %148
  %150 = fptrunc double %149 to float
  %151 = fdiv float %133, %150
  %152 = load i32, ptr %127, align 4, !tbaa !141
  call fastcc void @scroll_printstr(ptr noundef %12, float noundef %132, float noundef %120, float noundef %151, i32 noundef %152, i16 noundef signext 0, i8 noundef zeroext 104) #18
  br label %155

153:                                              ; preds = %138
  %154 = load i32, ptr %127, align 4, !tbaa !141
  call fastcc void @scroll_printstr(ptr noundef %12, float noundef %132, float noundef %120, float noundef %133, i32 noundef %154, i16 noundef signext 4, i8 noundef zeroext 118) #18
  br label %155

155:                                              ; preds = %140, %142, %144, %153, %138, %130
  %156 = fadd float %107, %132
  %157 = load float, ptr %74, align 4, !tbaa !139
  %158 = fadd float %133, %157
  %159 = load i32, ptr %121, align 4, !tbaa !102
  %160 = sitofp i32 %159 to float
  %161 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !70
  %162 = sitofp i16 %161 to float
  %163 = call float @llvm.fmuladd.f32(float %162, float -5.000000e-01, float %160)
  %164 = fcmp olt float %156, %163
  br i1 %164, label %130, label %165, !llvm.loop !172

165:                                              ; preds = %155, %115, %113, %72, %69
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #19
  br label %166

166:                                              ; preds = %165, %3
  %167 = and i32 %16, 3
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %285, label %169

169:                                              ; preds = %166
  %170 = call ptr @UI_GetTheme() #17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #19
  %171 = getelementptr inbounds %struct.bTheme, ptr %170, i64 0, i32 3, i32 14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %171, i64 32, i1 false), !tbaa.struct !166
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #19
  %172 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 1
  %173 = load <4 x i32>, ptr %4, align 16
  %174 = load <2 x i32>, ptr %2, align 8, !tbaa !69
  %175 = shufflevector <2 x i32> %174, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %176 = shufflevector <4 x i32> %173, <4 x i32> %175, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x i32> %176, ptr %10, align 16, !tbaa !69
  %177 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 10
  %178 = load i16, ptr %177, align 2, !tbaa !168
  %179 = lshr i16 %178, 1
  %180 = and i16 %179, 1
  %181 = zext nneg i16 %180 to i32
  %182 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 12
  %183 = load i16, ptr %182, align 2, !tbaa !44
  %184 = and i16 %183, 512
  %185 = icmp eq i16 %184, 0
  br i1 %185, label %186, label %199

186:                                              ; preds = %169
  %187 = load i16, ptr %13, align 8, !tbaa !54
  %188 = and i16 %187, 32
  %189 = icmp eq i16 %188, 0
  br i1 %189, label %199, label %190

190:                                              ; preds = %186
  %191 = call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %10) #18
  %192 = sitofp i32 %191 to float
  %193 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !70
  %194 = sitofp i16 %193 to float
  %195 = fmul float %194, 0x3FE3333340000000
  %196 = fcmp olt float %195, %192
  br i1 %196, label %197, label %199

197:                                              ; preds = %190
  %198 = or disjoint i32 %181, 2
  br label %199

199:                                              ; preds = %197, %190, %186, %169
  %200 = phi i32 [ %198, %197 ], [ %181, %190 ], [ %181, %186 ], [ %181, %169 ]
  call void @UI_GetThemeColor4ubv(i32 noundef 2, ptr noundef nonnull %11) #17
  %201 = getelementptr inbounds [4 x i8], ptr %11, i64 0, i64 3
  %202 = load i8, ptr %201, align 1, !tbaa !167
  %203 = icmp eq i8 %202, -1
  br i1 %203, label %204, label %218

204:                                              ; preds = %199
  %205 = load i8, ptr %11, align 1, !tbaa !167
  %206 = getelementptr inbounds [4 x i8], ptr %11, i64 0, i64 1
  %207 = load i8, ptr %206, align 1, !tbaa !167
  %208 = getelementptr inbounds [4 x i8], ptr %11, i64 0, i64 2
  %209 = load i8, ptr %208, align 1, !tbaa !167
  call void @glColor3ub(i8 noundef zeroext %205, i8 noundef zeroext %207, i8 noundef zeroext %209) #17
  %210 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 2
  %211 = load i32, ptr %210, align 8, !tbaa !76
  %212 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 2, i32 2
  %213 = load i32, ptr %212, align 8, !tbaa !79
  %214 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 2, i32 1
  %215 = load i32, ptr %214, align 4, !tbaa !75
  %216 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 2, i32 3
  %217 = load i32, ptr %216, align 4, !tbaa !80
  call void @glRecti(i32 noundef %211, i32 noundef %213, i32 noundef %215, i32 noundef %217) #17
  br label %218

218:                                              ; preds = %204, %199
  call void @uiWidgetScrollDraw(ptr noundef nonnull %9, ptr noundef nonnull %4, ptr noundef nonnull %10, i32 noundef %200) #17
  %219 = and i32 %16, 32
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %284, label %221

221:                                              ; preds = %218
  %222 = getelementptr inbounds %struct.View2DScrollers, ptr %2, i64 0, i32 8
  %223 = load ptr, ptr %222, align 8, !tbaa !165
  %224 = icmp eq ptr %223, null
  br i1 %224, label %284, label %225

225:                                              ; preds = %221
  %226 = getelementptr inbounds %struct.View2DGrid, ptr %223, i64 0, i32 3
  %227 = load float, ptr %226, align 4, !tbaa !145
  %228 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 1
  %229 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 1, i32 2
  %230 = load float, ptr %229, align 8, !tbaa !60
  %231 = call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %228) #18
  %232 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 2
  %233 = load i32, ptr %232, align 8, !tbaa !106
  %234 = call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %4) #18
  %235 = sitofp i32 %234 to float
  %236 = getelementptr inbounds %struct.View2DGrid, ptr %223, i64 0, i32 1
  %237 = load float, ptr %236, align 4, !tbaa !142
  %238 = fdiv float %237, %231
  %239 = fmul float %238, %235
  call void @UI_ThemeColor(i32 noundef 3) #17
  %240 = fcmp ogt float %239, 0.000000e+00
  br i1 %240, label %241, label %284

241:                                              ; preds = %225
  %242 = getelementptr inbounds %struct.View2DScrollers, ptr %2, i64 0, i32 12
  %243 = load i16, ptr %242, align 2, !tbaa !163
  %244 = icmp eq i16 %243, 1
  %245 = fsub float %227, %230
  %246 = fdiv float %245, %231
  %247 = sitofp i32 %233 to float
  %248 = call float @llvm.fmuladd.f32(float %246, float %235, float %247)
  %249 = call float @llvm.fmuladd.f32(float %239, float 5.000000e-01, float %248)
  %250 = select i1 %244, float %249, float %248
  %251 = load float, ptr %226, align 4, !tbaa !145
  call void @BLF_rotation_default(float noundef 0x3FF921FB60000000) #17
  call void @BLF_enable_default(i32 noundef 1) #17
  %252 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 3
  %253 = load i32, ptr %252, align 4, !tbaa !105
  %254 = add nsw i32 %253, -10
  %255 = sitofp i32 %254 to float
  %256 = fcmp olt float %250, %255
  br i1 %256, label %257, label %283

257:                                              ; preds = %241
  %258 = getelementptr inbounds %struct.View2DGrid, ptr %223, i64 0, i32 5
  %259 = getelementptr inbounds %struct.View2DScrollers, ptr %2, i64 0, i32 11
  br label %260

260:                                              ; preds = %257, %275
  %261 = phi i32 [ %253, %257 ], [ %276, %275 ]
  %262 = phi float [ %251, %257 ], [ %279, %275 ]
  %263 = phi float [ %250, %257 ], [ %277, %275 ]
  %264 = load i32, ptr %232, align 8, !tbaa !106
  %265 = add nsw i32 %264, 10
  %266 = sitofp i32 %265 to float
  %267 = fcmp olt float %263, %266
  br i1 %267, label %275, label %268

268:                                              ; preds = %260
  %269 = load i32, ptr %172, align 4, !tbaa !102
  %270 = sitofp i32 %269 to float
  %271 = fadd float %270, -2.000000e+00
  %272 = load i32, ptr %258, align 4, !tbaa !143
  %273 = load i16, ptr %259, align 4, !tbaa !164
  call fastcc void @scroll_printstr(ptr noundef %12, float noundef %271, float noundef %263, float noundef %262, i32 noundef %272, i16 noundef signext %273, i8 noundef zeroext 118) #18
  %274 = load i32, ptr %252, align 4, !tbaa !105
  br label %275

275:                                              ; preds = %260, %268
  %276 = phi i32 [ %261, %260 ], [ %274, %268 ]
  %277 = fadd float %239, %263
  %278 = load float, ptr %236, align 4, !tbaa !142
  %279 = fadd float %262, %278
  %280 = add nsw i32 %276, -10
  %281 = sitofp i32 %280 to float
  %282 = fcmp olt float %277, %281
  br i1 %282, label %260, label %283, !llvm.loop !173

283:                                              ; preds = %275, %241
  call void @BLF_disable_default(i32 noundef 1) #17
  br label %284

284:                                              ; preds = %225, %283, %221, %218
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #19
  br label %285

285:                                              ; preds = %284, %166
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #19
  ret void
}

; Function Attrs: optsize
declare ptr @UI_GetTheme() local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_GetThemeColor4ubv(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glColor3ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glRecti(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiWidgetScrollDraw(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @scroll_printstr(ptr nocapture noundef readonly %0, float noundef %1, float noundef %2, float noundef %3, i32 noundef %4, i16 noundef signext %5, i8 noundef zeroext %6) unnamed_addr #0 !PGOFuncName !174 {
  %8 = alloca [32 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #19
  %9 = icmp eq i8 %6, 118
  %10 = and i16 %5, -2
  %11 = icmp eq i16 %10, 4
  %12 = and i1 %9, %11
  %13 = fmul float %3, 1.000000e+01
  %14 = zext i1 %12 to i32
  %15 = add nsw i32 %14, %4
  %16 = select i1 %12, float %13, float %3
  %17 = icmp eq i16 %5, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %7
  %19 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 55
  %20 = load i16, ptr %19, align 4, !tbaa !116
  %21 = sitofp i16 %20 to double
  %22 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 65
  %23 = load float, ptr %22, align 4, !tbaa !135
  %24 = fpext float %23 to double
  %25 = fdiv double %21, %24
  %26 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 17), align 2, !tbaa !175
  %27 = call i64 @BLI_timecode_string_from_time(ptr noundef nonnull %8, i64 noundef 32, i32 noundef %15, float noundef %16, double noundef %25, i16 noundef signext %26) #17
  %28 = icmp eq i8 %6, 104
  br i1 %28, label %33, label %54

29:                                               ; preds = %7
  %30 = call i64 @BLI_timecode_string_from_time_simple(ptr noundef nonnull %8, i64 noundef 32, i32 noundef %15, float noundef %16) #17
  %31 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %8) #20
  %32 = icmp eq i8 %6, 104
  br i1 %32, label %39, label %44

33:                                               ; preds = %18
  %34 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %8) #20
  %35 = trunc i64 %34 to i32
  %36 = mul nsw i32 %35, 3
  %37 = sitofp i32 %36 to float
  %38 = fsub float %1, %37
  br label %54

39:                                               ; preds = %29
  %40 = trunc i64 %31 to i32
  %41 = shl nsw i32 %40, 2
  %42 = sitofp i32 %41 to float
  %43 = fsub float %1, %42
  br label %54

44:                                               ; preds = %29
  %45 = icmp eq i16 %5, 4
  %46 = and i1 %45, %9
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = shl i64 %31, 32
  %49 = ashr exact i64 %48, 32
  %50 = getelementptr inbounds [32 x i8], ptr %8, i64 0, i64 %49
  store i8 -70, ptr %50, align 1, !tbaa !167
  %51 = add i64 %48, 4294967296
  %52 = ashr exact i64 %51, 32
  %53 = getelementptr inbounds [32 x i8], ptr %8, i64 0, i64 %52
  store i8 0, ptr %53, align 1, !tbaa !167
  br label %54

54:                                               ; preds = %18, %39, %33, %47, %44
  %55 = phi float [ %1, %47 ], [ %1, %44 ], [ %43, %39 ], [ %38, %33 ], [ %1, %18 ]
  call void @BLF_draw_default_ascii(float noundef %55, float noundef %2, float noundef 0.000000e+00, ptr noundef nonnull %8, i64 noundef 32) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #19
  ret void
}

; Function Attrs: optsize
declare void @BLF_rotation_default(float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLF_enable_default(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLF_disable_default(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @UI_view2d_scrollers_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.View2DScrollers, ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !165
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !94
  tail call void %6(ptr noundef nonnull %3) #17
  br label %7

7:                                                ; preds = %5, %1
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !94
  tail call void %8(ptr noundef nonnull %0) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @UI_view2d_listview_cell_to_view(ptr noundef readonly %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef writeonly %7) local_unnamed_addr #7 {
  %9 = icmp eq ptr %0, null
  %10 = icmp eq ptr %7, null
  %11 = or i1 %9, %10
  br i1 %11, label %49, label %12

12:                                               ; preds = %8
  %13 = fcmp ole float %1, 0.000000e+00
  %14 = fcmp ole float %2, 0.000000e+00
  %15 = and i1 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  br label %49

17:                                               ; preds = %12
  %18 = add nsw i32 %5, 1
  %19 = insertelement <2 x i32> poison, i32 %5, i64 0
  %20 = insertelement <2 x i32> %19, i32 %18, i64 1
  %21 = sitofp <2 x i32> %20 to <2 x float>
  %22 = insertelement <2 x float> poison, float %1, i64 0
  %23 = shufflevector <2 x float> %22, <2 x float> poison, <2 x i32> zeroinitializer
  %24 = insertelement <2 x float> poison, float %3, i64 0
  %25 = shufflevector <2 x float> %24, <2 x float> poison, <2 x i32> zeroinitializer
  %26 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %23, <2 x float> %21, <2 x float> %25)
  store <2 x float> %26, ptr %7, align 4, !tbaa !45
  %27 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 15
  %28 = load i16, ptr %27, align 4, !tbaa !46
  %29 = zext i16 %28 to i32
  %30 = and i32 %29, 3
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %34

32:                                               ; preds = %17
  %33 = fneg <2 x float> %26
  store <2 x float> %33, ptr %7, align 4, !tbaa !45
  br label %34

34:                                               ; preds = %32, %17
  %35 = getelementptr inbounds %struct.rctf, ptr %7, i64 0, i32 2
  %36 = add nsw i32 %6, 1
  %37 = insertelement <2 x i32> poison, i32 %6, i64 0
  %38 = insertelement <2 x i32> %37, i32 %36, i64 1
  %39 = sitofp <2 x i32> %38 to <2 x float>
  %40 = insertelement <2 x float> poison, float %2, i64 0
  %41 = shufflevector <2 x float> %40, <2 x float> poison, <2 x i32> zeroinitializer
  %42 = insertelement <2 x float> poison, float %4, i64 0
  %43 = shufflevector <2 x float> %42, <2 x float> poison, <2 x i32> zeroinitializer
  %44 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %41, <2 x float> %39, <2 x float> %43)
  store <2 x float> %44, ptr %35, align 4, !tbaa !45
  %45 = and i32 %29, 12
  %46 = icmp eq i32 %45, 4
  br i1 %46, label %47, label %49

47:                                               ; preds = %34
  %48 = fneg <2 x float> %44
  store <2 x float> %48, ptr %35, align 4, !tbaa !45
  br label %49

49:                                               ; preds = %8, %16, %47, %34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @UI_view2d_listview_view_to_cell(ptr noundef readnone %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, ptr noundef writeonly %7, ptr noundef writeonly %8) local_unnamed_addr #14 {
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
  store i32 0, ptr %7, align 4, !tbaa !69
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
  store i32 %40, ptr %7, align 4, !tbaa !69
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
  store i32 %51, ptr %8, align 4, !tbaa !69
  br label %52

52:                                               ; preds = %50, %49, %28
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @UI_view2d_listview_visible_cells(ptr noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) local_unnamed_addr #7 {
  %10 = icmp eq ptr %0, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1
  %13 = load float, ptr %12, align 8, !tbaa !93
  %14 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 2
  %15 = load float, ptr %14, align 8, !tbaa !60
  tail call void @UI_view2d_listview_view_to_cell(ptr noundef nonnull %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %13, float noundef %15, ptr noundef %5, ptr noundef %7) #18
  %16 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 1
  %17 = load float, ptr %16, align 4, !tbaa !58
  %18 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 3
  %19 = load float, ptr %18, align 4, !tbaa !59
  tail call void @UI_view2d_listview_view_to_cell(ptr noundef nonnull %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %17, float noundef %19, ptr noundef %6, ptr noundef %8) #18
  br label %20

20:                                               ; preds = %11, %9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local float @UI_view2d_region_to_view_x(ptr nocapture noundef readonly %0, float noundef %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1
  %4 = load float, ptr %3, align 8, !tbaa !93
  %5 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %3) #18
  %6 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !65
  %8 = sitofp i32 %7 to float
  %9 = fsub float %1, %8
  %10 = fmul float %5, %9
  %11 = tail call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %6) #18
  %12 = sitofp i32 %11 to float
  %13 = fdiv float %10, %12
  %14 = fadd float %4, %13
  ret float %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local float @UI_view2d_region_to_view_y(ptr nocapture noundef readonly %0, float noundef %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 2
  %5 = load float, ptr %4, align 8, !tbaa !60
  %6 = tail call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %3) #18
  %7 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4
  %8 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !64
  %10 = sitofp i32 %9 to float
  %11 = fsub float %1, %10
  %12 = fmul float %6, %11
  %13 = tail call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %7) #18
  %14 = sitofp i32 %13 to float
  %15 = fdiv float %12, %14
  %16 = fadd float %5, %15
  ret float %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @UI_view2d_region_to_view(ptr nocapture noundef readonly %0, float noundef %1, float noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #7 {
  %6 = tail call float @UI_view2d_region_to_view_x(ptr noundef %0, float noundef %1) #18
  store float %6, ptr %3, align 4, !tbaa !45
  %7 = tail call float @UI_view2d_region_to_view_y(ptr noundef %0, float noundef %2) #18
  store float %7, ptr %4, align 4, !tbaa !45
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @UI_view2d_region_to_view_rctf(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #7 {
  %4 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1
  %5 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %4) #18
  %6 = tail call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %4) #18
  %7 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4
  %8 = tail call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %7) #18
  %9 = tail call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %7) #18
  %10 = load float, ptr %4, align 8, !tbaa !93
  %11 = load float, ptr %1, align 4, !tbaa !92
  %12 = load i32, ptr %7, align 8, !tbaa !65
  %13 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 1
  %14 = getelementptr inbounds %struct.rctf, ptr %2, i64 0, i32 1
  %15 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 2
  %16 = load float, ptr %15, align 8, !tbaa !60
  %17 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !64
  %19 = insertelement <2 x i32> poison, i32 %8, i64 0
  %20 = insertelement <2 x i32> %19, i32 %9, i64 1
  %21 = sitofp <2 x i32> %20 to <2 x float>
  %22 = insertelement <2 x i32> poison, i32 %12, i64 0
  %23 = insertelement <2 x i32> %22, i32 %18, i64 1
  %24 = sitofp <2 x i32> %23 to <2 x float>
  %25 = extractelement <2 x float> %24, i64 0
  %26 = fsub float %11, %25
  %27 = fmul float %5, %26
  %28 = extractelement <2 x float> %21, i64 0
  %29 = fdiv float %27, %28
  %30 = fadd float %10, %29
  store float %30, ptr %2, align 4, !tbaa !92
  %31 = load float, ptr %4, align 8, !tbaa !93
  %32 = load <2 x float>, ptr %13, align 4, !tbaa !45
  %33 = fsub <2 x float> %32, %24
  %34 = insertelement <2 x float> poison, float %5, i64 0
  %35 = insertelement <2 x float> %34, float %6, i64 1
  %36 = fmul <2 x float> %35, %33
  %37 = fdiv <2 x float> %36, %21
  %38 = insertelement <2 x float> poison, float %31, i64 0
  %39 = insertelement <2 x float> %38, float %16, i64 1
  %40 = fadd <2 x float> %39, %37
  store <2 x float> %40, ptr %14, align 4, !tbaa !45
  %41 = load float, ptr %15, align 8, !tbaa !60
  %42 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 3
  %43 = load float, ptr %42, align 4, !tbaa !90
  %44 = extractelement <2 x float> %24, i64 1
  %45 = fsub float %43, %44
  %46 = fmul float %6, %45
  %47 = extractelement <2 x float> %21, i64 1
  %48 = fdiv float %46, %47
  %49 = fadd float %41, %48
  %50 = getelementptr inbounds %struct.rctf, ptr %2, i64 0, i32 3
  store float %49, ptr %50, align 4, !tbaa !90
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local float @UI_view2d_view_to_region_x(ptr nocapture noundef readonly %0, float noundef %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !65
  %5 = sitofp i32 %4 to float
  %6 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1
  %7 = load float, ptr %6, align 8, !tbaa !93
  %8 = fsub float %1, %7
  %9 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %6) #18
  %10 = fdiv float %8, %9
  %11 = tail call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %3) #18
  %12 = sitofp i32 %11 to float
  %13 = tail call float @llvm.fmuladd.f32(float %10, float %12, float %5)
  ret float %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local float @UI_view2d_view_to_region_y(ptr nocapture noundef readonly %0, float noundef %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4
  %4 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !64
  %6 = sitofp i32 %5 to float
  %7 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1
  %8 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 2
  %9 = load float, ptr %8, align 8, !tbaa !60
  %10 = fsub float %1, %9
  %11 = tail call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %7) #18
  %12 = fdiv float %10, %11
  %13 = tail call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %3) #18
  %14 = sitofp i32 %13 to float
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %6)
  ret float %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i8 @UI_view2d_view_to_region_clip(ptr nocapture noundef readonly %0, float noundef %1, float noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #7 {
  %6 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1
  %7 = load float, ptr %6, align 8, !tbaa !93
  %8 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %6) #18
  %9 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 2
  %10 = load float, ptr %9, align 8, !tbaa !60
  %11 = tail call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %6) #18
  %12 = insertelement <2 x float> poison, float %1, i64 0
  %13 = insertelement <2 x float> %12, float %2, i64 1
  %14 = insertelement <2 x float> poison, float %7, i64 0
  %15 = insertelement <2 x float> %14, float %10, i64 1
  %16 = fsub <2 x float> %13, %15
  %17 = insertelement <2 x float> poison, float %8, i64 0
  %18 = insertelement <2 x float> %17, float %11, i64 1
  %19 = fdiv <2 x float> %16, %18
  %20 = shufflevector <2 x float> %19, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %21 = fcmp ole <4 x float> %20, <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %22 = fcmp oge <4 x float> %20, <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %23 = shufflevector <4 x i1> %21, <4 x i1> %22, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %24 = freeze <4 x i1> %23
  %25 = bitcast <4 x i1> %24 to i4
  %26 = icmp eq i4 %25, -1
  br i1 %26, label %27, label %44

27:                                               ; preds = %5
  %28 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4
  %29 = load i32, ptr %28, align 8, !tbaa !65
  %30 = sitofp i32 %29 to float
  %31 = tail call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %28) #18
  %32 = sitofp i32 %31 to float
  %33 = extractelement <2 x float> %19, i64 0
  %34 = tail call float @llvm.fmuladd.f32(float %33, float %32, float %30)
  %35 = fptosi float %34 to i32
  store i32 %35, ptr %3, align 4, !tbaa !69
  %36 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4, i32 2
  %37 = load i32, ptr %36, align 8, !tbaa !64
  %38 = sitofp i32 %37 to float
  %39 = tail call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %28) #18
  %40 = sitofp i32 %39 to float
  %41 = extractelement <2 x float> %19, i64 1
  %42 = tail call float @llvm.fmuladd.f32(float %41, float %40, float %38)
  %43 = fptosi float %42 to i32
  store i32 %43, ptr %4, align 4, !tbaa !69
  br label %45

44:                                               ; preds = %5
  store i32 12000, ptr %4, align 4, !tbaa !69
  store i32 12000, ptr %3, align 4, !tbaa !69
  br label %45

45:                                               ; preds = %44, %27
  %46 = phi i8 [ 1, %27 ], [ 0, %44 ]
  ret i8 %46
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @UI_view2d_view_to_region(ptr nocapture noundef readonly %0, float noundef %1, float noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #7 {
  %6 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1
  %7 = load float, ptr %6, align 8, !tbaa !93
  %8 = fsub float %1, %7
  %9 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %6) #18
  %10 = fdiv float %8, %9
  %11 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 2
  %12 = load float, ptr %11, align 8, !tbaa !60
  %13 = fsub float %2, %12
  %14 = tail call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %6) #18
  %15 = fdiv float %13, %14
  %16 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4
  %17 = load i32, ptr %16, align 8, !tbaa !65
  %18 = sitofp i32 %17 to float
  %19 = tail call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %16) #18
  %20 = sitofp i32 %19 to float
  %21 = tail call float @llvm.fmuladd.f32(float %10, float %20, float %18)
  %22 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !64
  %24 = sitofp i32 %23 to float
  %25 = tail call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %16) #18
  %26 = sitofp i32 %25 to float
  %27 = tail call float @llvm.fmuladd.f32(float %15, float %26, float %24)
  %28 = tail call fastcc i32 @clamp_float_to_int(float noundef %21) #18
  store i32 %28, ptr %3, align 4, !tbaa !69
  %29 = tail call fastcc i32 @clamp_float_to_int(float noundef %27) #18
  store i32 %29, ptr %4, align 4, !tbaa !69
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @clamp_float_to_int(float noundef %0) unnamed_addr #10 !PGOFuncName !176 {
  %2 = fcmp olt float %0, 0xC1E0000000000000
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = fcmp ogt float %0, 0x41E0000000000000
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = fptosi float %0 to i32
  br label %7

7:                                                ; preds = %3, %1, %5
  %8 = phi i32 [ %6, %5 ], [ -2147483648, %1 ], [ poison, %3 ]
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @UI_view2d_view_to_region_fl(ptr nocapture noundef readonly %0, float noundef %1, float noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #7 {
  %6 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1
  %7 = load float, ptr %6, align 8, !tbaa !93
  %8 = fsub float %1, %7
  %9 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %6) #18
  %10 = fdiv float %8, %9
  %11 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 2
  %12 = load float, ptr %11, align 8, !tbaa !60
  %13 = fsub float %2, %12
  %14 = tail call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %6) #18
  %15 = fdiv float %13, %14
  %16 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4
  %17 = load i32, ptr %16, align 8, !tbaa !65
  %18 = sitofp i32 %17 to float
  %19 = tail call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %16) #18
  %20 = sitofp i32 %19 to float
  %21 = tail call float @llvm.fmuladd.f32(float %10, float %20, float %18)
  store float %21, ptr %3, align 4, !tbaa !45
  %22 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !64
  %24 = sitofp i32 %23 to float
  %25 = tail call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %16) #18
  %26 = sitofp i32 %25 to float
  %27 = tail call float @llvm.fmuladd.f32(float %15, float %26, float %24)
  store float %27, ptr %4, align 4, !tbaa !45
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @UI_view2d_view_to_region_rcti(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #7 {
  %4 = alloca %struct.rctf, align 16
  %5 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1
  %6 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %5) #18
  %7 = tail call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %5) #18
  %8 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4
  %9 = tail call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %8) #18
  %10 = tail call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #19
  %11 = load float, ptr %5, align 8, !tbaa !93
  %12 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 2
  %13 = load float, ptr %12, align 8, !tbaa !60
  %14 = load i32, ptr %8, align 8, !tbaa !65
  %15 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !64
  %17 = insertelement <2 x i32> poison, i32 %9, i64 0
  %18 = insertelement <2 x i32> %17, i32 %10, i64 1
  %19 = sitofp <2 x i32> %18 to <2 x float>
  %20 = shufflevector <2 x float> %19, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %21 = load <4 x float>, ptr %1, align 4, !tbaa !45
  %22 = insertelement <4 x float> poison, float %11, i64 0
  %23 = insertelement <4 x float> %22, float %13, i64 1
  %24 = shufflevector <4 x float> %23, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %25 = fsub <4 x float> %21, %24
  %26 = insertelement <4 x float> poison, float %6, i64 0
  %27 = insertelement <4 x float> %26, float %7, i64 1
  %28 = shufflevector <4 x float> %27, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %29 = fdiv <4 x float> %25, %28
  %30 = insertelement <2 x i32> poison, i32 %14, i64 0
  %31 = insertelement <2 x i32> %30, i32 %16, i64 1
  %32 = sitofp <2 x i32> %31 to <2 x float>
  %33 = shufflevector <2 x float> %32, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %34 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %29, <4 x float> %20, <4 x float> %33)
  store <4 x float> %34, ptr %4, align 16, !tbaa !45
  call fastcc void @clamp_rctf_to_rcti(ptr noundef %2, ptr noundef nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @clamp_rctf_to_rcti(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !177 {
  %3 = load float, ptr %1, align 4, !tbaa !92
  %4 = tail call fastcc i32 @clamp_float_to_int(float noundef %3) #18
  store i32 %4, ptr %0, align 4, !tbaa !103
  %5 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 1
  %6 = load float, ptr %5, align 4, !tbaa !91
  %7 = tail call fastcc i32 @clamp_float_to_int(float noundef %6) #18
  %8 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  store i32 %7, ptr %8, align 4, !tbaa !102
  %9 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 2
  %10 = load float, ptr %9, align 4, !tbaa !89
  %11 = tail call fastcc i32 @clamp_float_to_int(float noundef %10) #18
  %12 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  store i32 %11, ptr %12, align 4, !tbaa !106
  %13 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 3
  %14 = load float, ptr %13, align 4, !tbaa !90
  %15 = tail call fastcc i32 @clamp_float_to_int(float noundef %14) #18
  %16 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  store i32 %15, ptr %16, align 4, !tbaa !105
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i8 @UI_view2d_view_to_region_rcti_clip(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #7 {
  %4 = alloca %struct.rctf, align 16
  %5 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1
  %6 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %5) #18
  %7 = tail call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %5) #18
  %8 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4
  %9 = tail call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %8) #18
  %10 = tail call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #19
  %11 = load float, ptr %5, align 8, !tbaa !93
  %12 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 2
  %13 = load float, ptr %12, align 8, !tbaa !60
  %14 = load <4 x float>, ptr %1, align 4, !tbaa !45
  %15 = insertelement <4 x float> poison, float %11, i64 0
  %16 = insertelement <4 x float> %15, float %13, i64 1
  %17 = shufflevector <4 x float> %16, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %18 = fsub <4 x float> %14, %17
  %19 = insertelement <4 x float> poison, float %6, i64 0
  %20 = insertelement <4 x float> %19, float %7, i64 1
  %21 = shufflevector <4 x float> %20, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %22 = fdiv <4 x float> %18, %21
  %23 = fcmp ule <4 x float> %22, <float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>
  %24 = fcmp uge <4 x float> %22, <float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>
  %25 = shufflevector <4 x i1> %23, <4 x i1> %24, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %26 = freeze <4 x i1> %25
  %27 = bitcast <4 x i1> %26 to i4
  %28 = icmp eq i4 %27, -1
  br i1 %28, label %29, label %42

29:                                               ; preds = %3
  %30 = insertelement <2 x i32> poison, i32 %9, i64 0
  %31 = insertelement <2 x i32> %30, i32 %10, i64 1
  %32 = sitofp <2 x i32> %31 to <2 x float>
  %33 = shufflevector <2 x float> %32, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %34 = load i32, ptr %8, align 8, !tbaa !65
  %35 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4, i32 2
  %36 = load i32, ptr %35, align 8, !tbaa !64
  %37 = insertelement <2 x i32> poison, i32 %34, i64 0
  %38 = insertelement <2 x i32> %37, i32 %36, i64 1
  %39 = sitofp <2 x i32> %38 to <2 x float>
  %40 = shufflevector <2 x float> %39, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %41 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %22, <4 x float> %33, <4 x float> %40)
  store <4 x float> %41, ptr %4, align 16, !tbaa !45
  call fastcc void @clamp_rctf_to_rcti(ptr noundef %2, ptr noundef nonnull %4) #18
  br label %43

42:                                               ; preds = %3
  store <4 x i32> <i32 12000, i32 12000, i32 12000, i32 12000>, ptr %2, align 4, !tbaa !69
  br label %43

43:                                               ; preds = %42, %29
  %44 = phi i8 [ 1, %29 ], [ 0, %42 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #19
  ret i8 %44
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @UI_view2d_fromcontext(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_area(ptr noundef %0) #17
  %3 = tail call ptr @CTX_wm_region(ptr noundef %0) #17
  %4 = icmp eq ptr %2, null
  %5 = icmp eq ptr %3, null
  %6 = select i1 %4, i1 true, i1 %5
  %7 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 2
  %8 = select i1 %6, ptr null, ptr %7
  ret ptr %8
}

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @UI_view2d_fromcontext_rwin(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_area(ptr noundef %0) #17
  %3 = tail call ptr @CTX_wm_region(ptr noundef %0) #17
  %4 = icmp eq ptr %2, null
  %5 = icmp eq ptr %3, null
  %6 = select i1 %4, i1 true, i1 %5
  br i1 %6, label %18, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 8
  %9 = load i16, ptr %8, align 2, !tbaa !178
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = tail call ptr @BKE_area_find_region_type(ptr noundef nonnull %2, i32 noundef 0) #17
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

; Function Attrs: optsize
declare ptr @BKE_area_find_region_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @UI_view2d_scale_get(ptr nocapture noundef readonly %0, ptr noundef writeonly %1, ptr noundef writeonly %2) local_unnamed_addr #7 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4
  %7 = tail call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %6) #18
  %8 = sitofp i32 %7 to float
  %9 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1
  %10 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %9) #18
  %11 = fdiv float %8, %10
  store float %11, ptr %1, align 4, !tbaa !45
  br label %12

12:                                               ; preds = %5, %3
  %13 = icmp eq ptr %2, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4
  %16 = tail call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %15) #18
  %17 = sitofp i32 %16 to float
  %18 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1
  %19 = tail call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %18) #18
  %20 = fdiv float %17, %19
  store float %20, ptr %2, align 4, !tbaa !45
  br label %21

21:                                               ; preds = %14, %12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @UI_view2d_scale_get_inverse(ptr nocapture noundef readonly %0, ptr noundef writeonly %1, ptr noundef writeonly %2) local_unnamed_addr #7 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1
  %7 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %6) #18
  %8 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4
  %9 = tail call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %8) #18
  %10 = sitofp i32 %9 to float
  %11 = fdiv float %7, %10
  store float %11, ptr %1, align 4, !tbaa !45
  br label %12

12:                                               ; preds = %5, %3
  %13 = icmp eq ptr %2, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1
  %16 = tail call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %15) #18
  %17 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4
  %18 = tail call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %17) #18
  %19 = sitofp i32 %18 to float
  %20 = fdiv float %16, %19
  store float %20, ptr %2, align 4, !tbaa !45
  br label %21

21:                                               ; preds = %14, %12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @UI_view2d_center_get(ptr nocapture noundef readonly %0, ptr noundef writeonly %1, ptr noundef writeonly %2) local_unnamed_addr #7 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1
  %7 = tail call fastcc float @BLI_rctf_cent_x(ptr noundef nonnull %6) #18
  store float %7, ptr %1, align 4, !tbaa !45
  br label %8

8:                                                ; preds = %5, %3
  %9 = icmp eq ptr %2, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1
  %12 = tail call fastcc float @BLI_rctf_cent_y(ptr noundef nonnull %11) #18
  store float %12, ptr %2, align 4, !tbaa !45
  br label %13

13:                                               ; preds = %10, %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_cent_x(ptr nocapture noundef readonly %0) unnamed_addr #8 !PGOFuncName !179 {
  %2 = load float, ptr %0, align 4, !tbaa !92
  %3 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %4 = load float, ptr %3, align 4, !tbaa !91
  %5 = fadd float %2, %4
  %6 = fmul float %5, 5.000000e-01
  ret float %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_cent_y(ptr nocapture noundef readonly %0) unnamed_addr #8 !PGOFuncName !180 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %3 = load float, ptr %2, align 4, !tbaa !89
  %4 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %5 = load float, ptr %4, align 4, !tbaa !90
  %6 = fadd float %3, %5
  %7 = fmul float %6, 5.000000e-01
  ret float %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @UI_view2d_center_set(ptr noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1
  tail call void @BLI_rctf_recenter(ptr noundef nonnull %4, float noundef %1, float noundef %2) #17
  tail call void @UI_view2d_curRect_validate(ptr noundef %0) #18
  ret void
}

; Function Attrs: optsize
declare void @BLI_rctf_recenter(ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @UI_view2d_offset(ptr noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #5 {
  %4 = fcmp une float %1, -1.000000e+00
  br i1 %4, label %5, label %17

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1
  %7 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %6) #18
  %8 = load float, ptr %0, align 8, !tbaa !49
  %9 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %10 = load float, ptr %9, align 4, !tbaa !50
  %11 = fsub float %10, %7
  %12 = fsub float 1.000000e+00, %1
  %13 = fmul float %11, %1
  %14 = tail call float @llvm.fmuladd.f32(float %8, float %12, float %13)
  store float %14, ptr %6, align 8, !tbaa !93
  %15 = fadd float %7, %14
  %16 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 1
  store float %15, ptr %16, align 4, !tbaa !58
  br label %17

17:                                               ; preds = %5, %3
  %18 = fcmp une float %2, -1.000000e+00
  br i1 %18, label %19, label %33

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1
  %21 = tail call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %20) #18
  %22 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %23 = load float, ptr %22, align 8, !tbaa !48
  %24 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %25 = load float, ptr %24, align 4, !tbaa !51
  %26 = fsub float %25, %21
  %27 = fsub float 1.000000e+00, %2
  %28 = fmul float %26, %2
  %29 = tail call float @llvm.fmuladd.f32(float %23, float %27, float %28)
  %30 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 2
  store float %29, ptr %30, align 8, !tbaa !60
  %31 = fadd float %21, %29
  %32 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 3
  store float %31, ptr %32, align 4, !tbaa !59
  br label %33

33:                                               ; preds = %19, %17
  tail call void @UI_view2d_curRect_validate(ptr noundef %0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef signext i16 @UI_view2d_mouse_in_scrollers(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [2 x i32], align 4
  %6 = tail call ptr @CTX_wm_region(ptr noundef %0) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  %7 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 9
  %8 = load i16, ptr %7, align 8, !tbaa !54
  %9 = sext i16 %8 to i32
  %10 = tail call fastcc i32 @view2d_scroll_mapped(i32 noundef %9) #18
  %11 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !181
  %13 = sub nsw i32 %2, %12
  store i32 %13, ptr %5, align 4, !tbaa !69
  %14 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 3, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !182
  %16 = sub nsw i32 %3, %15
  %17 = getelementptr inbounds [2 x i32], ptr %5, i64 0, i64 1
  store i32 %16, ptr %17, align 4, !tbaa !69
  %18 = and i32 %10, 12
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 3
  %22 = call zeroext i8 @BLI_rcti_isect_pt_v(ptr noundef nonnull %21, ptr noundef nonnull %5) #17
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %20, %4
  %25 = and i32 %10, 3
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 2
  %29 = call zeroext i8 @BLI_rcti_isect_pt_v(ptr noundef nonnull %28, ptr noundef nonnull %5) #17
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27, %24
  br label %32

32:                                               ; preds = %27, %20, %31
  %33 = phi i16 [ 0, %31 ], [ 104, %20 ], [ 118, %27 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  ret i16 %33
}

; Function Attrs: optsize
declare zeroext i8 @BLI_rcti_isect_pt_v(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @UI_view2d_text_cache_add(ptr nocapture noundef readonly %0, float noundef %1, float noundef %2, ptr nocapture noundef readonly %3, i64 noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #0 {
  %7 = alloca [2 x i32], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #19
  %8 = getelementptr inbounds [2 x i32], ptr %7, i64 0, i64 1
  %9 = call zeroext i8 @UI_view2d_view_to_region_clip(ptr noundef %0, float noundef %1, float noundef %2, ptr noundef nonnull %7, ptr noundef nonnull %8) #18, !range !183
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %30, label %11

11:                                               ; preds = %6
  %12 = load ptr, ptr @g_v2d_strings_arena, align 8, !tbaa !94
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = tail call ptr @BLI_memarena_new(i64 noundef 16376, ptr noundef nonnull @__func__.UI_view2d_text_cache_add) #17
  store ptr %15, ptr @g_v2d_strings_arena, align 8, !tbaa !94
  br label %16

16:                                               ; preds = %14, %11
  %17 = phi ptr [ %15, %14 ], [ %12, %11 ]
  %18 = shl i64 %4, 32
  %19 = add i64 %18, 4294967296
  %20 = ashr exact i64 %19, 32
  %21 = add nsw i64 %20, 40
  %22 = tail call ptr @BLI_memarena_alloc(ptr noundef %17, i64 noundef %21) #17
  %23 = load ptr, ptr @g_v2d_strings, align 8, !tbaa !94
  store ptr %23, ptr %22, align 8, !tbaa !94
  store ptr %22, ptr @g_v2d_strings, align 8, !tbaa !94
  %24 = load i32, ptr %5, align 4, !tbaa !69
  %25 = getelementptr inbounds %struct.View2DString, ptr %22, i64 0, i32 1
  store i32 %24, ptr %25, align 8, !tbaa !167
  %26 = getelementptr inbounds %struct.View2DString, ptr %22, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %26, i8 0, i64 16, i1 false)
  %27 = getelementptr inbounds %struct.View2DString, ptr %22, i64 0, i32 3
  %28 = load <2 x i32>, ptr %7, align 8, !tbaa !69
  store <2 x i32> %28, ptr %27, align 4, !tbaa !69
  %29 = getelementptr inbounds %struct.View2DString, ptr %22, i64 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %29, ptr align 1 %3, i64 %20, i1 false)
  br label %30

30:                                               ; preds = %16, %6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_memarena_new(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_memarena_alloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @UI_view2d_text_cache_add_rectf(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #0 {
  %6 = alloca %struct.rcti, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #19
  %7 = call zeroext i8 @UI_view2d_view_to_region_rcti_clip(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6) #18, !range !183
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %31, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr @g_v2d_strings_arena, align 8, !tbaa !94
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = tail call ptr @BLI_memarena_new(i64 noundef 16376, ptr noundef nonnull @__func__.UI_view2d_text_cache_add_rectf) #17
  store ptr %13, ptr @g_v2d_strings_arena, align 8, !tbaa !94
  br label %14

14:                                               ; preds = %12, %9
  %15 = phi ptr [ %13, %12 ], [ %10, %9 ]
  %16 = shl i64 %3, 32
  %17 = add i64 %16, 4294967296
  %18 = ashr exact i64 %17, 32
  %19 = add nsw i64 %18, 40
  %20 = tail call ptr @BLI_memarena_alloc(ptr noundef %15, i64 noundef %19) #17
  %21 = load ptr, ptr @g_v2d_strings, align 8, !tbaa !94
  store ptr %21, ptr %20, align 8, !tbaa !94
  store ptr %20, ptr @g_v2d_strings, align 8, !tbaa !94
  %22 = load i32, ptr %4, align 4, !tbaa !69
  %23 = getelementptr inbounds %struct.View2DString, ptr %20, i64 0, i32 1
  store i32 %22, ptr %23, align 8, !tbaa !167
  %24 = getelementptr inbounds %struct.View2DString, ptr %20, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %24, ptr noundef nonnull align 4 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !68
  %25 = load i32, ptr %24, align 4, !tbaa !103
  %26 = getelementptr inbounds %struct.View2DString, ptr %20, i64 0, i32 3
  store i32 %25, ptr %26, align 4, !tbaa !69
  %27 = getelementptr inbounds %struct.View2DString, ptr %20, i64 0, i32 2, i32 2
  %28 = load i32, ptr %27, align 4, !tbaa !106
  %29 = getelementptr inbounds %struct.View2DString, ptr %20, i64 0, i32 3, i64 1
  store i32 %28, ptr %29, align 4, !tbaa !69
  %30 = getelementptr inbounds %struct.View2DString, ptr %20, i64 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %30, ptr align 1 %2, i64 %18, i1 false)
  br label %31

31:                                               ; preds = %14, %5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @UI_view2d_text_cache_draw(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @g_v2d_strings, align 8, !tbaa !94
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call float @BLF_height_default(ptr noundef nonnull @.str.4, i64 noundef 3) #17
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi float [ %5, %4 ], [ 0.000000e+00, %1 ]
  tail call void @wmOrtho2_region_ui(ptr noundef %0) #17
  %8 = load ptr, ptr @g_v2d_strings, align 8, !tbaa !94
  %9 = icmp eq ptr %8, null
  br i1 %9, label %63, label %10

10:                                               ; preds = %6, %60
  %11 = phi ptr [ %61, %60 ], [ %8, %6 ]
  %12 = phi i32 [ %27, %60 ], [ 0, %6 ]
  %13 = getelementptr inbounds %struct.View2DString, ptr %11, i64 0, i32 2
  %14 = tail call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %13) #18
  %15 = sitofp i32 %14 to float
  %16 = fsub float %15, %7
  %17 = fmul float %16, 5.000000e-01
  %18 = tail call float @llvm.ceil.f32(float %17)
  %19 = fptosi float %18 to i32
  %20 = tail call i32 @llvm.smax.i32(i32 %19, i32 1)
  %21 = getelementptr inbounds %struct.View2DString, ptr %11, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !167
  %23 = icmp eq i32 %12, %22
  br i1 %23, label %26, label %24

24:                                               ; preds = %10
  tail call void @glColor3ubv(ptr noundef nonnull %21) #17
  %25 = load i32, ptr %21, align 8, !tbaa !167
  br label %26

26:                                               ; preds = %24, %10
  %27 = phi i32 [ %25, %24 ], [ %12, %10 ]
  %28 = load i32, ptr %13, align 4, !tbaa !103
  %29 = getelementptr inbounds %struct.View2DString, ptr %11, i64 0, i32 2, i32 1
  %30 = load i32, ptr %29, align 4, !tbaa !102
  %31 = icmp slt i32 %28, %30
  br i1 %31, label %41, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.View2DString, ptr %11, i64 0, i32 3
  %34 = load i32, ptr %33, align 4, !tbaa !69
  %35 = sitofp i32 %34 to float
  %36 = getelementptr inbounds %struct.View2DString, ptr %11, i64 0, i32 3, i64 1
  %37 = load i32, ptr %36, align 4, !tbaa !69
  %38 = add nsw i32 %37, %20
  %39 = sitofp i32 %38 to float
  %40 = getelementptr inbounds %struct.View2DString, ptr %11, i64 0, i32 4
  tail call void @BLF_draw_default(float noundef %35, float noundef %39, float noundef 0.000000e+00, ptr noundef nonnull %40, i64 noundef 1024) #17
  br label %60

41:                                               ; preds = %26
  %42 = add nsw i32 %28, -4
  %43 = sitofp i32 %42 to float
  %44 = getelementptr inbounds %struct.View2DString, ptr %11, i64 0, i32 2, i32 2
  %45 = load i32, ptr %44, align 4, !tbaa !106
  %46 = add nsw i32 %45, -4
  %47 = sitofp i32 %46 to float
  %48 = add nsw i32 %30, 4
  %49 = sitofp i32 %48 to float
  %50 = getelementptr inbounds %struct.View2DString, ptr %11, i64 0, i32 2, i32 3
  %51 = load i32, ptr %50, align 4, !tbaa !105
  %52 = add nsw i32 %51, 4
  %53 = sitofp i32 %52 to float
  tail call void @BLF_clipping_default(float noundef %43, float noundef %47, float noundef %49, float noundef %53) #17
  tail call void @BLF_enable_default(i32 noundef 2) #17
  %54 = load i32, ptr %13, align 4, !tbaa !103
  %55 = sitofp i32 %54 to float
  %56 = load i32, ptr %44, align 4, !tbaa !106
  %57 = add nsw i32 %56, %20
  %58 = sitofp i32 %57 to float
  %59 = getelementptr inbounds %struct.View2DString, ptr %11, i64 0, i32 4
  tail call void @BLF_draw_default(float noundef %55, float noundef %58, float noundef 0.000000e+00, ptr noundef nonnull %59, i64 noundef 1024) #17
  tail call void @BLF_disable_default(i32 noundef 2) #17
  br label %60

60:                                               ; preds = %41, %32
  %61 = load ptr, ptr %11, align 8, !tbaa !94
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %10, !llvm.loop !184

63:                                               ; preds = %60, %6
  store ptr null, ptr @g_v2d_strings, align 8, !tbaa !94
  %64 = load ptr, ptr @g_v2d_strings_arena, align 8, !tbaa !94
  %65 = icmp eq ptr %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %63
  tail call void @BLI_memarena_free(ptr noundef nonnull %64) #17
  store ptr null, ptr @g_v2d_strings_arena, align 8, !tbaa !94
  br label %67

67:                                               ; preds = %66, %63
  ret void
}

; Function Attrs: optsize
declare float @BLF_height_default(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @wmOrtho2_region_ui(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glColor3ubv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLF_draw_default(float noundef, float noundef, float noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLF_clipping_default(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_memarena_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @log10(double noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #13

; Function Attrs: optsize
declare i64 @BLI_timecode_string_from_time(ptr noundef, i64 noundef, i32 noundef, float noundef, double noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @BLI_timecode_string_from_time_simple(ptr noundef, i64 noundef, i32 noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: optsize
declare void @BLF_draw_default_ascii(float noundef, float noundef, float noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.floor.v2f32(<2 x float>) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #16

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind optsize }
attributes #18 = { optsize }
attributes #19 = { nounwind }
attributes #20 = { nounwind optsize willreturn memory(read) }

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
!45 = !{!37, !37, i64 0}
!46 = !{!35, !42, i64 116}
!47 = !{!35, !42, i64 108}
!48 = !{!35, !37, i64 8}
!49 = !{!35, !37, i64 0}
!50 = !{!35, !37, i64 4}
!51 = !{!35, !37, i64 12}
!52 = !{i64 0, i64 4, !45, i64 4, i64 4, !45, i64 8, i64 4, !45, i64 12, i64 4, !45}
!53 = !{!35, !42, i64 112}
!54 = !{!35, !42, i64 104}
!55 = !{!56, !37, i64 208}
!56 = !{!"uiStyle", !43, i64 0, !43, i64 8, !38, i64 16, !57, i64 80, !57, i64 112, !57, i64 144, !57, i64 176, !37, i64 208, !42, i64 212, !42, i64 214, !42, i64 216, !42, i64 218, !42, i64 220, !42, i64 222, !42, i64 224, !42, i64 226, !42, i64 228, !42, i64 230}
!57 = !{!"uiFontStyle", !42, i64 0, !42, i64 2, !42, i64 4, !38, i64 6, !42, i64 12, !42, i64 14, !42, i64 16, !42, i64 18, !42, i64 20, !42, i64 22, !37, i64 24, !37, i64 28}
!58 = !{!35, !37, i64 20}
!59 = !{!35, !37, i64 28}
!60 = !{!35, !37, i64 24}
!61 = !{!35, !42, i64 118}
!62 = !{!35, !42, i64 120}
!63 = !{!"view2d.c:view2d_masks"}
!64 = !{!35, !41, i64 72}
!65 = !{!35, !41, i64 64}
!66 = !{!35, !41, i64 68}
!67 = !{!35, !41, i64 76}
!68 = !{i64 0, i64 4, !69, i64 4, i64 4, !69, i64 8, i64 4, !69, i64 12, i64 4, !69}
!69 = !{!41, !41, i64 0}
!70 = !{!71, !42, i64 8948}
!71 = !{!"UserDef", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !38, i64 20, !38, i64 788, !38, i64 1556, !38, i64 2580, !38, i64 3348, !38, i64 4116, !38, i64 4884, !38, i64 5652, !38, i64 6420, !38, i64 7444, !41, i64 8468, !42, i64 8472, !42, i64 8474, !42, i64 8476, !42, i64 8478, !42, i64 8480, !42, i64 8482, !41, i64 8484, !41, i64 8488, !41, i64 8492, !42, i64 8496, !42, i64 8498, !41, i64 8500, !41, i64 8504, !41, i64 8508, !41, i64 8512, !41, i64 8516, !41, i64 8520, !41, i64 8524, !42, i64 8528, !42, i64 8530, !42, i64 8532, !42, i64 8534, !72, i64 8536, !72, i64 8552, !72, i64 8568, !72, i64 8584, !72, i64 8600, !72, i64 8616, !72, i64 8632, !38, i64 8648, !42, i64 8712, !42, i64 8714, !42, i64 8716, !42, i64 8718, !42, i64 8720, !42, i64 8722, !42, i64 8724, !42, i64 8726, !38, i64 8728, !42, i64 8896, !42, i64 8898, !42, i64 8900, !42, i64 8902, !42, i64 8904, !42, i64 8906, !42, i64 8908, !42, i64 8910, !41, i64 8912, !41, i64 8916, !42, i64 8920, !42, i64 8922, !42, i64 8924, !42, i64 8926, !42, i64 8928, !42, i64 8930, !42, i64 8932, !42, i64 8934, !42, i64 8936, !42, i64 8938, !38, i64 8940, !38, i64 8941, !38, i64 8942, !38, i64 8943, !42, i64 8944, !42, i64 8946, !42, i64 8948, !42, i64 8950, !42, i64 8952, !42, i64 8954, !37, i64 8956, !37, i64 8960, !41, i64 8964, !42, i64 8968, !42, i64 8970, !37, i64 8972, !42, i64 8976, !42, i64 8978, !42, i64 8980, !42, i64 8982, !73, i64 8984, !38, i64 9760, !38, i64 9772, !42, i64 9788, !38, i64 9790, !38, i64 9791, !38, i64 9792, !38, i64 9872, !41, i64 10896, !41, i64 10900, !37, i64 10904, !37, i64 10908, !41, i64 10912, !42, i64 10916, !42, i64 10918, !42, i64 10920, !42, i64 10922, !42, i64 10924, !42, i64 10926, !74, i64 10928}
!72 = !{!"ListBase", !43, i64 0, !43, i64 8}
!73 = !{!"ColorBand", !42, i64 0, !42, i64 2, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !38, i64 8}
!74 = !{!"WalkNavigation", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12, !37, i64 16, !37, i64 20, !42, i64 24, !38, i64 26}
!75 = !{!35, !41, i64 36}
!76 = !{!35, !41, i64 32}
!77 = !{!35, !41, i64 60}
!78 = !{!35, !41, i64 56}
!79 = !{!35, !41, i64 40}
!80 = !{!35, !41, i64 44}
!81 = !{!82, !41, i64 2100}
!82 = !{!"Global", !43, i64 0, !38, i64 8, !38, i64 1032, !38, i64 2056, !38, i64 2057, !38, i64 2058, !72, i64 2064, !38, i64 2080, !38, i64 2081, !38, i64 2082, !42, i64 2084, !42, i64 2086, !42, i64 2088, !38, i64 2090, !42, i64 2092, !41, i64 2096, !41, i64 2100, !38, i64 2104, !41, i64 2108, !41, i64 2112, !38, i64 2116}
!83 = !{!"view2d.c:ui_view2d_curRect_validate_resize"}
!84 = !{!35, !42, i64 122}
!85 = !{!35, !42, i64 124}
!86 = !{!35, !37, i64 96}
!87 = !{!35, !37, i64 100}
!88 = !{!42, !42, i64 0}
!89 = !{!36, !37, i64 8}
!90 = !{!36, !37, i64 12}
!91 = !{!36, !37, i64 4}
!92 = !{!36, !37, i64 0}
!93 = !{!35, !37, i64 16}
!94 = !{!43, !43, i64 0}
!95 = !{!96, !42, i64 130}
!96 = !{!"ARegion", !43, i64 0, !43, i64 8, !35, i64 16, !40, i64 176, !40, i64 192, !42, i64 208, !42, i64 210, !42, i64 212, !42, i64 214, !42, i64 216, !42, i64 218, !37, i64 220, !42, i64 224, !42, i64 226, !42, i64 228, !42, i64 230, !42, i64 232, !42, i64 234, !42, i64 236, !42, i64 238, !43, i64 240, !72, i64 248, !72, i64 264, !72, i64 280, !72, i64 296, !72, i64 312, !72, i64 328, !72, i64 344, !43, i64 360, !43, i64 368, !43, i64 376}
!97 = distinct !{!97, !98}
!98 = !{!"llvm.loop.mustprogress"}
!99 = distinct !{!99, !98}
!100 = distinct !{!100, !98}
!101 = !{!"view2d.c:BLI_rcti_size_x"}
!102 = !{!40, !41, i64 4}
!103 = !{!40, !41, i64 0}
!104 = !{!"view2d.c:BLI_rcti_size_y"}
!105 = !{!40, !41, i64 12}
!106 = !{!40, !41, i64 8}
!107 = !{!"view2d.c:view2d_scroll_mapped"}
!108 = !{!35, !41, i64 140}
!109 = !{!35, !43, i64 128}
!110 = !{!35, !41, i64 136}
!111 = !{!"view2d.c:BLI_rctf_size_x"}
!112 = !{!"view2d.c:BLI_rctf_size_y"}
!113 = !{!"view2d.c:view2d_map_cur_using_mask"}
!114 = !{!96, !42, i64 210}
!115 = !{!96, !42, i64 208}
!116 = !{!117, !42, i64 820}
!117 = !{!"Scene", !118, i64 0, !43, i64 120, !43, i64 128, !43, i64 136, !43, i64 144, !72, i64 152, !43, i64 168, !43, i64 176, !38, i64 184, !38, i64 196, !38, i64 208, !38, i64 220, !41, i64 232, !41, i64 236, !41, i64 240, !42, i64 244, !38, i64 246, !38, i64 247, !43, i64 248, !43, i64 256, !43, i64 264, !43, i64 272, !119, i64 280, !126, i64 4264, !72, i64 4296, !72, i64 4312, !43, i64 4328, !43, i64 4336, !43, i64 4344, !43, i64 4352, !43, i64 4360, !43, i64 4368, !42, i64 4376, !42, i64 4378, !41, i64 4380, !72, i64 4384, !127, i64 4400, !128, i64 4416, !131, i64 4600, !43, i64 4608, !132, i64 4616, !43, i64 4640, !133, i64 4648, !133, i64 4656, !121, i64 4664, !122, i64 4824, !134, i64 4888, !43, i64 4952}
!118 = !{!"ID", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !38, i64 32, !42, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !43, i64 112}
!119 = !{!"RenderData", !120, i64 0, !43, i64 248, !43, i64 256, !123, i64 264, !124, i64 328, !41, i64 400, !41, i64 404, !41, i64 408, !37, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !41, i64 428, !42, i64 432, !42, i64 434, !37, i64 436, !37, i64 440, !37, i64 444, !37, i64 448, !37, i64 452, !42, i64 456, !42, i64 458, !42, i64 460, !42, i64 462, !42, i64 464, !42, i64 466, !41, i64 468, !42, i64 472, !42, i64 474, !42, i64 476, !42, i64 478, !42, i64 480, !42, i64 482, !41, i64 484, !41, i64 488, !42, i64 492, !42, i64 494, !41, i64 496, !41, i64 500, !42, i64 504, !42, i64 506, !42, i64 508, !42, i64 510, !42, i64 512, !38, i64 514, !38, i64 515, !41, i64 516, !41, i64 520, !41, i64 524, !42, i64 528, !42, i64 530, !42, i64 532, !42, i64 534, !42, i64 536, !42, i64 538, !42, i64 540, !42, i64 542, !36, i64 544, !36, i64 560, !40, i64 576, !72, i64 592, !42, i64 608, !42, i64 610, !37, i64 612, !37, i64 616, !37, i64 620, !37, i64 624, !41, i64 628, !37, i64 632, !37, i64 636, !37, i64 640, !37, i64 644, !42, i64 648, !42, i64 650, !42, i64 652, !42, i64 654, !42, i64 656, !42, i64 658, !37, i64 660, !37, i64 664, !42, i64 668, !42, i64 670, !37, i64 672, !37, i64 676, !38, i64 680, !41, i64 1704, !42, i64 1708, !42, i64 1710, !38, i64 1712, !38, i64 2480, !38, i64 2496, !38, i64 2512, !38, i64 2513, !38, i64 2514, !38, i64 2515, !41, i64 2520, !42, i64 2524, !42, i64 2526, !37, i64 2528, !37, i64 2532, !42, i64 2536, !42, i64 2538, !37, i64 2540, !42, i64 2544, !42, i64 2546, !41, i64 2548, !42, i64 2552, !42, i64 2554, !42, i64 2556, !42, i64 2558, !37, i64 2560, !37, i64 2564, !43, i64 2568, !41, i64 2576, !37, i64 2580, !38, i64 2584, !125, i64 2616, !41, i64 3976, !41, i64 3980}
!120 = !{!"ImageFormatData", !38, i64 0, !38, i64 1, !38, i64 2, !38, i64 3, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !42, i64 8, !42, i64 10, !37, i64 12, !38, i64 16, !38, i64 17, !38, i64 18, !121, i64 24, !122, i64 184}
!121 = !{!"ColorManagedViewSettings", !41, i64 0, !41, i64 4, !38, i64 8, !38, i64 72, !37, i64 136, !37, i64 140, !43, i64 144, !43, i64 152}
!122 = !{!"ColorManagedDisplaySettings", !38, i64 0}
!123 = !{!"QuicktimeCodecSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !42, i64 48, !42, i64 50, !41, i64 52, !41, i64 56, !41, i64 60}
!124 = !{!"FFMpegCodecData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !37, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !43, i64 64}
!125 = !{!"BakeData", !120, i64 0, !38, i64 248, !42, i64 1272, !42, i64 1274, !42, i64 1276, !42, i64 1278, !37, i64 1280, !37, i64 1284, !38, i64 1288, !38, i64 1291, !38, i64 1292, !38, i64 1293, !38, i64 1296}
!126 = !{!"AudioData", !41, i64 0, !37, i64 4, !37, i64 8, !37, i64 12, !41, i64 16, !42, i64 20, !42, i64 22, !37, i64 24, !37, i64 28}
!127 = !{!"GameFraming", !38, i64 0, !38, i64 12, !38, i64 13, !38, i64 14, !38, i64 15}
!128 = !{!"GameData", !127, i64 0, !42, i64 16, !42, i64 18, !42, i64 20, !42, i64 22, !42, i64 24, !42, i64 26, !42, i64 28, !42, i64 30, !42, i64 32, !38, i64 34, !129, i64 40, !42, i64 64, !42, i64 66, !37, i64 68, !130, i64 72, !37, i64 128, !37, i64 132, !41, i64 136, !42, i64 140, !42, i64 142, !42, i64 144, !42, i64 146, !42, i64 148, !42, i64 150, !42, i64 152, !42, i64 154, !42, i64 156, !42, i64 158, !42, i64 160, !42, i64 162, !37, i64 164, !37, i64 168, !37, i64 172, !37, i64 176, !37, i64 180}
!129 = !{!"GameDome", !42, i64 0, !42, i64 2, !42, i64 4, !42, i64 6, !37, i64 8, !37, i64 12, !43, i64 16}
!130 = !{!"RecastData", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12, !37, i64 16, !37, i64 20, !37, i64 24, !37, i64 28, !37, i64 32, !37, i64 36, !41, i64 40, !37, i64 44, !37, i64 48, !42, i64 52, !42, i64 54}
!131 = !{!"UnitSettings", !37, i64 0, !38, i64 4, !38, i64 5, !42, i64 6}
!132 = !{!"PhysicsSettings", !38, i64 0, !41, i64 12, !41, i64 16, !41, i64 20}
!133 = !{!"long", !38, i64 0}
!134 = !{!"ColorManagedColorspaceSettings", !38, i64 0}
!135 = !{!117, !37, i64 900}
!136 = !{!71, !42, i64 8472}
!137 = !{!71, !37, i64 10908}
!138 = !{!71, !41, i64 8524}
!139 = !{!140, !37, i64 0}
!140 = !{!"View2DGrid", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12, !41, i64 16, !41, i64 20}
!141 = !{!140, !41, i64 16}
!142 = !{!140, !37, i64 4}
!143 = !{!140, !41, i64 20}
!144 = !{!140, !37, i64 8}
!145 = !{!140, !37, i64 12}
!146 = !{!"view2d.c:step_to_grid"}
!147 = distinct !{!147, !98}
!148 = distinct !{!148, !98}
!149 = distinct !{!149, !98}
!150 = distinct !{!150, !98}
!151 = distinct !{!151, !98}
!152 = distinct !{!152, !98}
!153 = distinct !{!153, !98}
!154 = distinct !{!154, !98}
!155 = distinct !{!155, !98}
!156 = !{!157, !41, i64 8}
!157 = !{!"View2DScrollers", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !40, i64 32, !41, i64 48, !41, i64 52, !43, i64 56, !42, i64 64, !42, i64 66, !42, i64 68, !42, i64 70}
!158 = !{!157, !41, i64 12}
!159 = !{!157, !41, i64 0}
!160 = !{!157, !41, i64 4}
!161 = !{!157, !42, i64 66}
!162 = !{!157, !42, i64 64}
!163 = !{!157, !42, i64 70}
!164 = !{!157, !42, i64 68}
!165 = !{!157, !43, i64 56}
!166 = !{i64 0, i64 4, !167, i64 4, i64 4, !167, i64 8, i64 4, !167, i64 12, i64 4, !167, i64 16, i64 4, !167, i64 20, i64 4, !167, i64 24, i64 2, !88, i64 26, i64 2, !88, i64 28, i64 2, !88, i64 30, i64 2, !88}
!167 = !{!38, !38, i64 0}
!168 = !{!35, !42, i64 106}
!169 = !{!35, !41, i64 48}
!170 = !{!35, !41, i64 52}
!171 = distinct !{!171, !98}
!172 = distinct !{!172, !98}
!173 = distinct !{!173, !98}
!174 = !{!"view2d.c:scroll_printstr"}
!175 = !{!71, !42, i64 8474}
!176 = !{!"view2d.c:clamp_float_to_int"}
!177 = !{!"view2d.c:clamp_rctf_to_rcti"}
!178 = !{!96, !42, i64 214}
!179 = !{!"view2d.c:BLI_rctf_cent_x"}
!180 = !{!"view2d.c:BLI_rctf_cent_y"}
!181 = !{!96, !41, i64 176}
!182 = !{!96, !41, i64 184}
!183 = !{i8 0, i8 2}
!184 = distinct !{!184, !98}
