; ModuleID = 'blender/source/blender/editors/screen/screen_edit.c'
source_filename = "blender/source/blender/editors/screen/screen_edit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.bScreen = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.ScrEdge = type { ptr, ptr, ptr, ptr, i16, i16, i32 }
%struct.ScrVert = type { ptr, ptr, ptr, %struct.vec2s, i16, i16 }
%struct.vec2s = type { i16, i16 }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.wmWindow = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, ptr, ptr, ptr, i32, i32, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.wmNotifier = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.ARegionType = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i16 }
%struct.vec2f = type { float, float }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.wmWindowManager = type { %struct.ID, ptr, ptr, %struct.ListBase, i32, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ReportList, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, %struct.ListBase, ptr, i8, [7 x i8] }
%struct.ReportList = type { %struct.ListBase, i32, i32, i32, i32, ptr }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.SpaceType = type { ptr, ptr, [64 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, i32 }
%struct.AZone = type { ptr, ptr, ptr, i32, i32, i16, i16, i16, i16, %struct.rcti, float }
%struct.SpaceLink = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16] }
%struct.View3D = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], [4 x float], float, float, i8, [3 x i8], i32, i32, i16, i16, ptr, ptr, %struct.rctf, %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, i16, i16, float, float, float, float, [3 x float], [3 x float], i16, i16, i16, i8, i8, i8, i8, [2 x i8], %struct.ListBase, %struct.ListBase, %struct.ListBase, i8, i8, i8, [5 x i8], ptr, ptr, ptr }
%struct.RegionView3D = type { [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [6 x [4 x float]], [6 x [4 x float]], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x [4 x float]], [4 x float], float, float, float, float, [3 x float], float, i8, i8, i8, i8, i8, [3 x i8], [2 x float], i16, i16, [4 x float], i16, i16, float, [3 x float], float, [3 x float] }
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
%struct.Tex = type { %struct.ID, ptr, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, float, float, float, %struct.ImageUser, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, [7 x i8] }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.SpaceImage = type { ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.ImageUser, ptr, %struct.Scopes, %struct.Histogram, ptr, [2 x float], float, float, float, float, float, i8, i8, i16, i16, i16, i8, i8, i8, i8, %struct.MaskSpaceInfo }
%struct.Scopes = type { i32, i32, i32, float, i32, float, float, i32, float, i32, [3 x [2 x float]], %struct.Histogram, ptr, ptr, ptr, ptr, i32, i32 }
%struct.Histogram = type { i32, i32, [256 x float], [256 x float], [256 x float], [256 x float], [256 x float], float, float, i16, i16, i32, [2 x [2 x float]] }
%struct.MaskSpaceInfo = type { ptr, i8, i8, i8, [5 x i8] }
%struct.ScreenFrameRateInfo = type { double, double, [8 x float], i16 }
%struct.wmTimer = type { ptr, ptr, ptr, double, i32, ptr, double, double, double, double, double, i32 }
%struct.ScreenAnimData = type { ptr, i16, i16, i16, i32, i32, double }

@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [37 x i8] c"error: area %d edge 1 doesn't exist\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"error: area %d edge 2 doesn't exist\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"error: area %d edge 3 doesn't exist\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"error: area %d edge 4 doesn't exist\0A\00", align 1
@U = external local_unnamed_addr global %struct.UserDef, align 8
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"%s: set screen\0A\00", align 1
@__func__.ED_screen_refresh = private unnamed_addr constant [18 x i8] c"ED_screen_refresh\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"%s: something wrong in areafullscreen\0A\00", align 1
@__func__.ED_screen_state_toggle = private unnamed_addr constant [23 x i8] c"ED_screen_state_toggle\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%s-%s\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"nonnormal\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [30 x i8] c"refresh_viewport_fps fps_info\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"ScreenAnimData\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"addscrvert\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"addscredge\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"addscrarea\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @screen_findedge(ptr nocapture noundef readonly %0, ptr noundef readnone %1, ptr noundef readnone %2) local_unnamed_addr #0 {
  %4 = icmp ugt ptr %1, %2
  %5 = select i1 %4, ptr %2, ptr %1
  %6 = select i1 %4, ptr %1, ptr %2
  %7 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %22, label %10

10:                                               ; preds = %3, %19
  %11 = phi ptr [ %20, %19 ], [ %8, %3 ]
  %12 = getelementptr inbounds %struct.ScrEdge, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !38
  %14 = icmp eq ptr %13, %5
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.ScrEdge, ptr %11, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !42
  %18 = icmp eq ptr %17, %6
  br i1 %18, label %22, label %19

19:                                               ; preds = %10, %15
  %20 = load ptr, ptr %11, align 8, !tbaa !34
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %10, !llvm.loop !43

22:                                               ; preds = %15, %19, %3
  %23 = phi ptr [ null, %3 ], [ %11, %15 ], [ null, %19 ]
  ret ptr %23
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @removedouble_scrverts(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %38, label %5

5:                                                ; preds = %1, %35
  %6 = phi ptr [ %36, %35 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.ScrVert, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %35

10:                                               ; preds = %5
  %11 = load ptr, ptr %6, align 8, !tbaa !49
  %12 = icmp eq ptr %11, null
  br i1 %12, label %35, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.ScrVert, ptr %6, i64 0, i32 3
  %15 = getelementptr inbounds %struct.ScrVert, ptr %6, i64 0, i32 3, i32 1
  br label %16

16:                                               ; preds = %13, %32
  %17 = phi ptr [ %11, %13 ], [ %33, %32 ]
  %18 = getelementptr inbounds %struct.ScrVert, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !46
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.ScrVert, ptr %17, i64 0, i32 3
  %23 = load i16, ptr %22, align 8, !tbaa !50
  %24 = load i16, ptr %14, align 8, !tbaa !50
  %25 = icmp eq i16 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.ScrVert, ptr %17, i64 0, i32 3, i32 1
  %28 = load i16, ptr %27, align 2, !tbaa !51
  %29 = load i16, ptr %15, align 2, !tbaa !51
  %30 = icmp eq i16 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store ptr %6, ptr %18, align 8, !tbaa !46
  br label %32

32:                                               ; preds = %21, %26, %31, %16
  %33 = load ptr, ptr %17, align 8, !tbaa !49
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %16, !llvm.loop !52

35:                                               ; preds = %32, %10, %5
  %36 = load ptr, ptr %6, align 8, !tbaa !34
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %5, !llvm.loop !53

38:                                               ; preds = %35, %1
  %39 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !34
  %41 = icmp eq ptr %40, null
  br i1 %41, label %65, label %42

42:                                               ; preds = %38, %62
  %43 = phi ptr [ %63, %62 ], [ %40, %38 ]
  %44 = getelementptr inbounds %struct.ScrEdge, ptr %43, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !38
  %46 = getelementptr inbounds %struct.ScrVert, ptr %45, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !46
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %42
  store ptr %47, ptr %44, align 8, !tbaa !38
  br label %50

50:                                               ; preds = %49, %42
  %51 = getelementptr inbounds %struct.ScrEdge, ptr %43, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !42
  %53 = getelementptr inbounds %struct.ScrVert, ptr %52, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !46
  %55 = icmp eq ptr %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %50
  store ptr %54, ptr %51, align 8, !tbaa !42
  br label %57

57:                                               ; preds = %56, %50
  %58 = load ptr, ptr %44, align 8, !tbaa !34
  %59 = load ptr, ptr %51, align 8, !tbaa !34
  %60 = icmp ugt ptr %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  store ptr %59, ptr %44, align 8, !tbaa !34
  store ptr %58, ptr %51, align 8, !tbaa !34
  br label %62

62:                                               ; preds = %57, %61
  %63 = load ptr, ptr %43, align 8, !tbaa !34
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %42, !llvm.loop !54

65:                                               ; preds = %62, %38
  %66 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 3
  %67 = load ptr, ptr %66, align 8, !tbaa !34
  %68 = icmp eq ptr %67, null
  br i1 %68, label %101, label %69

69:                                               ; preds = %65, %98
  %70 = phi ptr [ %99, %98 ], [ %67, %65 ]
  %71 = getelementptr inbounds %struct.ScrArea, ptr %70, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !55
  %73 = getelementptr inbounds %struct.ScrVert, ptr %72, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !46
  %75 = icmp eq ptr %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %69
  store ptr %74, ptr %71, align 8, !tbaa !55
  br label %77

77:                                               ; preds = %76, %69
  %78 = getelementptr inbounds %struct.ScrArea, ptr %70, i64 0, i32 3
  %79 = load ptr, ptr %78, align 8, !tbaa !59
  %80 = getelementptr inbounds %struct.ScrVert, ptr %79, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !46
  %82 = icmp eq ptr %81, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %77
  store ptr %81, ptr %78, align 8, !tbaa !59
  br label %84

84:                                               ; preds = %83, %77
  %85 = getelementptr inbounds %struct.ScrArea, ptr %70, i64 0, i32 4
  %86 = load ptr, ptr %85, align 8, !tbaa !60
  %87 = getelementptr inbounds %struct.ScrVert, ptr %86, i64 0, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !46
  %89 = icmp eq ptr %88, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %84
  store ptr %88, ptr %85, align 8, !tbaa !60
  br label %91

91:                                               ; preds = %90, %84
  %92 = getelementptr inbounds %struct.ScrArea, ptr %70, i64 0, i32 5
  %93 = load ptr, ptr %92, align 8, !tbaa !61
  %94 = getelementptr inbounds %struct.ScrVert, ptr %93, i64 0, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !46
  %96 = icmp eq ptr %95, null
  br i1 %96, label %98, label %97

97:                                               ; preds = %91
  store ptr %95, ptr %92, align 8, !tbaa !61
  br label %98

98:                                               ; preds = %97, %91
  %99 = load ptr, ptr %70, align 8, !tbaa !34
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %69, !llvm.loop !62

101:                                              ; preds = %98, %65
  %102 = load ptr, ptr %2, align 8, !tbaa !63
  %103 = icmp eq ptr %102, null
  br i1 %103, label %114, label %104

104:                                              ; preds = %101, %112
  %105 = phi ptr [ %106, %112 ], [ %102, %101 ]
  %106 = load ptr, ptr %105, align 8, !tbaa !49
  %107 = getelementptr inbounds %struct.ScrVert, ptr %105, i64 0, i32 2
  %108 = load ptr, ptr %107, align 8, !tbaa !46
  %109 = icmp eq ptr %108, null
  br i1 %109, label %112, label %110

110:                                              ; preds = %104
  tail call void @BLI_remlink(ptr noundef nonnull %2, ptr noundef nonnull %105) #11
  %111 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %111(ptr noundef nonnull %105) #11
  br label %112

112:                                              ; preds = %110, %104
  %113 = icmp eq ptr %106, null
  br i1 %113, label %114, label %104, !llvm.loop !66

114:                                              ; preds = %112, %101
  ret void
}

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @removenotused_scrverts(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %13, %5 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.ScrEdge, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !38
  %9 = getelementptr inbounds %struct.ScrVert, ptr %8, i64 0, i32 4
  store i16 1, ptr %9, align 4, !tbaa !67
  %10 = getelementptr inbounds %struct.ScrEdge, ptr %6, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !42
  %12 = getelementptr inbounds %struct.ScrVert, ptr %11, i64 0, i32 4
  store i16 1, ptr %12, align 4, !tbaa !67
  %13 = load ptr, ptr %6, align 8, !tbaa !34
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %5, !llvm.loop !68

15:                                               ; preds = %5, %1
  %16 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !63
  %18 = icmp eq ptr %17, null
  br i1 %18, label %30, label %19

19:                                               ; preds = %15, %28
  %20 = phi ptr [ %21, %28 ], [ %17, %15 ]
  %21 = load ptr, ptr %20, align 8, !tbaa !49
  %22 = getelementptr inbounds %struct.ScrVert, ptr %20, i64 0, i32 4
  %23 = load i16, ptr %22, align 4, !tbaa !67
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  tail call void @BLI_remlink(ptr noundef nonnull %16, ptr noundef nonnull %20) #11
  %26 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %26(ptr noundef nonnull %20) #11
  br label %28

27:                                               ; preds = %19
  store i16 0, ptr %22, align 4, !tbaa !67
  br label %28

28:                                               ; preds = %27, %25
  %29 = icmp eq ptr %21, null
  br i1 %29, label %30, label %19, !llvm.loop !69

30:                                               ; preds = %28, %15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @removedouble_scredges(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %31, label %8

5:                                                ; preds = %29, %8
  %6 = load ptr, ptr %9, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %31, label %8, !llvm.loop !70

8:                                                ; preds = %1, %5
  %9 = phi ptr [ %6, %5 ], [ %3, %1 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !71
  %11 = icmp eq ptr %10, null
  br i1 %11, label %5, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ScrEdge, ptr %9, i64 0, i32 2
  %14 = getelementptr inbounds %struct.ScrEdge, ptr %9, i64 0, i32 3
  br label %15

15:                                               ; preds = %12, %29
  %16 = phi ptr [ %10, %12 ], [ %17, %29 ]
  %17 = load ptr, ptr %16, align 8, !tbaa !71
  %18 = load ptr, ptr %13, align 8, !tbaa !38
  %19 = getelementptr inbounds %struct.ScrEdge, ptr %16, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !38
  %21 = icmp eq ptr %18, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %15
  %23 = load ptr, ptr %14, align 8, !tbaa !42
  %24 = getelementptr inbounds %struct.ScrEdge, ptr %16, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !42
  %26 = icmp eq ptr %23, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  tail call void @BLI_remlink(ptr noundef nonnull %2, ptr noundef nonnull %16) #11
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %28(ptr noundef nonnull %16) #11
  br label %29

29:                                               ; preds = %27, %22, %15
  %30 = icmp eq ptr %17, null
  br i1 %30, label %5, label %15, !llvm.loop !72

31:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @removenotused_scredges(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %125, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 2
  br label %7

7:                                                ; preds = %5, %121
  %8 = phi ptr [ %3, %5 ], [ %123, %121 ]
  %9 = phi i32 [ 0, %5 ], [ %122, %121 ]
  %10 = getelementptr inbounds %struct.ScrArea, ptr %8, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !55
  %12 = getelementptr inbounds %struct.ScrArea, ptr %8, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !59
  %14 = icmp ugt ptr %11, %13
  %15 = select i1 %14, ptr %13, ptr %11
  %16 = select i1 %14, ptr %11, ptr %13
  %17 = load ptr, ptr %6, align 8, !tbaa !34
  %18 = icmp eq ptr %17, null
  br i1 %18, label %31, label %19

19:                                               ; preds = %7, %28
  %20 = phi ptr [ %29, %28 ], [ %17, %7 ]
  %21 = getelementptr inbounds %struct.ScrEdge, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !38
  %23 = icmp eq ptr %22, %15
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.ScrEdge, ptr %20, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !42
  %27 = icmp eq ptr %26, %16
  br i1 %27, label %31, label %28

28:                                               ; preds = %24, %19
  %29 = load ptr, ptr %20, align 8, !tbaa !34
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %19, !llvm.loop !43

31:                                               ; preds = %24, %28, %7
  %32 = phi ptr [ null, %7 ], [ %20, %24 ], [ null, %28 ]
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %9)
  br label %38

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.ScrEdge, ptr %32, i64 0, i32 5
  store i16 1, ptr %37, align 2, !tbaa !73
  br label %38

38:                                               ; preds = %36, %34
  %39 = load ptr, ptr %12, align 8, !tbaa !59
  %40 = getelementptr inbounds %struct.ScrArea, ptr %8, i64 0, i32 4
  %41 = load ptr, ptr %40, align 8, !tbaa !60
  %42 = icmp ugt ptr %39, %41
  %43 = select i1 %42, ptr %41, ptr %39
  %44 = select i1 %42, ptr %39, ptr %41
  %45 = load ptr, ptr %6, align 8, !tbaa !34
  %46 = icmp eq ptr %45, null
  br i1 %46, label %59, label %47

47:                                               ; preds = %38, %56
  %48 = phi ptr [ %57, %56 ], [ %45, %38 ]
  %49 = getelementptr inbounds %struct.ScrEdge, ptr %48, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !38
  %51 = icmp eq ptr %50, %43
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.ScrEdge, ptr %48, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !42
  %55 = icmp eq ptr %54, %44
  br i1 %55, label %59, label %56

56:                                               ; preds = %52, %47
  %57 = load ptr, ptr %48, align 8, !tbaa !34
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %47, !llvm.loop !43

59:                                               ; preds = %52, %56, %38
  %60 = phi ptr [ null, %38 ], [ %48, %52 ], [ null, %56 ]
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %9)
  br label %66

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.ScrEdge, ptr %60, i64 0, i32 5
  store i16 1, ptr %65, align 2, !tbaa !73
  br label %66

66:                                               ; preds = %64, %62
  %67 = load ptr, ptr %40, align 8, !tbaa !60
  %68 = getelementptr inbounds %struct.ScrArea, ptr %8, i64 0, i32 5
  %69 = load ptr, ptr %68, align 8, !tbaa !61
  %70 = icmp ugt ptr %67, %69
  %71 = select i1 %70, ptr %69, ptr %67
  %72 = select i1 %70, ptr %67, ptr %69
  %73 = load ptr, ptr %6, align 8, !tbaa !34
  %74 = icmp eq ptr %73, null
  br i1 %74, label %87, label %75

75:                                               ; preds = %66, %84
  %76 = phi ptr [ %85, %84 ], [ %73, %66 ]
  %77 = getelementptr inbounds %struct.ScrEdge, ptr %76, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !38
  %79 = icmp eq ptr %78, %71
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.ScrEdge, ptr %76, i64 0, i32 3
  %82 = load ptr, ptr %81, align 8, !tbaa !42
  %83 = icmp eq ptr %82, %72
  br i1 %83, label %87, label %84

84:                                               ; preds = %80, %75
  %85 = load ptr, ptr %76, align 8, !tbaa !34
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %75, !llvm.loop !43

87:                                               ; preds = %80, %84, %66
  %88 = phi ptr [ null, %66 ], [ %76, %80 ], [ null, %84 ]
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %92

90:                                               ; preds = %87
  %91 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %9)
  br label %94

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.ScrEdge, ptr %88, i64 0, i32 5
  store i16 1, ptr %93, align 2, !tbaa !73
  br label %94

94:                                               ; preds = %92, %90
  %95 = load ptr, ptr %68, align 8, !tbaa !61
  %96 = load ptr, ptr %10, align 8, !tbaa !55
  %97 = icmp ugt ptr %95, %96
  %98 = select i1 %97, ptr %96, ptr %95
  %99 = select i1 %97, ptr %95, ptr %96
  %100 = load ptr, ptr %6, align 8, !tbaa !34
  %101 = icmp eq ptr %100, null
  br i1 %101, label %114, label %102

102:                                              ; preds = %94, %111
  %103 = phi ptr [ %112, %111 ], [ %100, %94 ]
  %104 = getelementptr inbounds %struct.ScrEdge, ptr %103, i64 0, i32 2
  %105 = load ptr, ptr %104, align 8, !tbaa !38
  %106 = icmp eq ptr %105, %98
  br i1 %106, label %107, label %111

107:                                              ; preds = %102
  %108 = getelementptr inbounds %struct.ScrEdge, ptr %103, i64 0, i32 3
  %109 = load ptr, ptr %108, align 8, !tbaa !42
  %110 = icmp eq ptr %109, %99
  br i1 %110, label %114, label %111

111:                                              ; preds = %107, %102
  %112 = load ptr, ptr %103, align 8, !tbaa !34
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %102, !llvm.loop !43

114:                                              ; preds = %107, %111, %94
  %115 = phi ptr [ null, %94 ], [ %103, %107 ], [ null, %111 ]
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %119

117:                                              ; preds = %114
  %118 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %9)
  br label %121

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.ScrEdge, ptr %115, i64 0, i32 5
  store i16 1, ptr %120, align 2, !tbaa !73
  br label %121

121:                                              ; preds = %119, %117
  %122 = add nuw nsw i32 %9, 1
  %123 = load ptr, ptr %8, align 8, !tbaa !34
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %7, !llvm.loop !74

125:                                              ; preds = %121, %1
  %126 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 2
  %127 = load ptr, ptr %126, align 8, !tbaa !75
  %128 = icmp eq ptr %127, null
  br i1 %128, label %140, label %129

129:                                              ; preds = %125, %138
  %130 = phi ptr [ %131, %138 ], [ %127, %125 ]
  %131 = load ptr, ptr %130, align 8, !tbaa !71
  %132 = getelementptr inbounds %struct.ScrEdge, ptr %130, i64 0, i32 5
  %133 = load i16, ptr %132, align 2, !tbaa !73
  %134 = icmp eq i16 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %129
  tail call void @BLI_remlink(ptr noundef nonnull %126, ptr noundef nonnull %130) #11
  %136 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %136(ptr noundef nonnull %130) #11
  br label %138

137:                                              ; preds = %129
  store i16 0, ptr %132, align 2, !tbaa !73
  br label %138

138:                                              ; preds = %137, %135
  %139 = icmp eq ptr %131, null
  br i1 %139, label %140, label %129, !llvm.loop !76

140:                                              ; preds = %138, %125
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @scredge_is_horizontal(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.ScrEdge, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !38
  %4 = getelementptr inbounds %struct.ScrVert, ptr %3, i64 0, i32 3, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !51
  %6 = getelementptr inbounds %struct.ScrEdge, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !42
  %8 = getelementptr inbounds %struct.ScrVert, ptr %7, i64 0, i32 3, i32 1
  %9 = load i16, ptr %8, align 2, !tbaa !51
  %10 = icmp eq i16 %5, %9
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @screen_find_active_scredge(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !77
  %7 = sdiv i16 %6, 10
  %8 = tail call i16 @llvm.smax.i16(i16 %7, i16 2)
  %9 = zext nneg i16 %8 to i32
  %10 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %74, label %13

13:                                               ; preds = %5
  %14 = add nsw i32 %1, -1
  %15 = add nsw i32 %2, -1
  br label %16

16:                                               ; preds = %13, %70
  %17 = phi ptr [ %11, %13 ], [ %72, %70 ]
  %18 = phi ptr [ undef, %13 ], [ %71, %70 ]
  %19 = getelementptr inbounds %struct.ScrEdge, ptr %17, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !38
  %21 = getelementptr inbounds %struct.ScrVert, ptr %20, i64 0, i32 3, i32 1
  %22 = load i16, ptr %21, align 2, !tbaa !51
  %23 = getelementptr inbounds %struct.ScrEdge, ptr %17, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !42
  %25 = getelementptr inbounds %struct.ScrVert, ptr %24, i64 0, i32 3, i32 1
  %26 = load i16, ptr %25, align 2, !tbaa !51
  %27 = icmp eq i16 %22, %26
  br i1 %27, label %28, label %50

28:                                               ; preds = %16
  %29 = icmp sgt i16 %22, 0
  %30 = sext i16 %22 to i32
  %31 = icmp sgt i32 %15, %30
  %32 = select i1 %29, i1 %31, i1 false
  br i1 %32, label %33, label %70

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.ScrVert, ptr %20, i64 0, i32 3
  %35 = load i16, ptr %34, align 8, !tbaa !50
  %36 = getelementptr inbounds %struct.ScrVert, ptr %24, i64 0, i32 3
  %37 = load i16, ptr %36, align 8, !tbaa !50
  %38 = tail call i16 @llvm.smin.i16(i16 %35, i16 %37)
  %39 = tail call i16 @llvm.smax.i16(i16 %35, i16 %37)
  %40 = sub nsw i32 %4, %30
  %41 = tail call i32 @llvm.abs.i32(i32 %40, i1 true)
  %42 = icmp ugt i32 %41, %9
  %43 = sext i16 %38 to i32
  %44 = icmp sgt i32 %43, %3
  %45 = select i1 %42, i1 true, i1 %44
  %46 = sext i16 %39 to i32
  %47 = icmp slt i32 %46, %3
  %48 = select i1 %45, i1 true, i1 %47
  %49 = select i1 %48, ptr %18, ptr %17
  br i1 %48, label %70, label %74

50:                                               ; preds = %16
  %51 = getelementptr inbounds %struct.ScrVert, ptr %20, i64 0, i32 3
  %52 = load i16, ptr %51, align 8, !tbaa !50
  %53 = icmp sgt i16 %52, 0
  %54 = sext i16 %52 to i32
  %55 = icmp sgt i32 %14, %54
  %56 = select i1 %53, i1 %55, i1 false
  br i1 %56, label %57, label %70

57:                                               ; preds = %50
  %58 = tail call i16 @llvm.smin.i16(i16 %22, i16 %26)
  %59 = tail call i16 @llvm.smax.i16(i16 %22, i16 %26)
  %60 = sub nsw i32 %3, %54
  %61 = tail call i32 @llvm.abs.i32(i32 %60, i1 true)
  %62 = icmp ugt i32 %61, %9
  %63 = sext i16 %58 to i32
  %64 = icmp sgt i32 %63, %4
  %65 = or i1 %64, %62
  %66 = sext i16 %59 to i32
  %67 = icmp slt i32 %66, %4
  %68 = or i1 %67, %65
  %69 = select i1 %68, ptr %18, ptr %17
  br i1 %68, label %70, label %74

70:                                               ; preds = %33, %28, %57, %50
  %71 = phi ptr [ %49, %33 ], [ %18, %28 ], [ %69, %57 ], [ %18, %50 ]
  %72 = load ptr, ptr %17, align 8, !tbaa !34
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %16, !llvm.loop !82

74:                                               ; preds = %57, %33, %70, %5
  %75 = phi ptr [ null, %5 ], [ %69, %57 ], [ %49, %33 ], [ null, %70 ]
  ret ptr %75
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @area_split(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, float noundef %3, i32 noundef %4) local_unnamed_addr #2 {
  %6 = icmp eq ptr %1, null
  br i1 %6, label %324, label %7

7:                                                ; preds = %5
  %8 = tail call i32 @ED_area_headersize() #11
  %9 = icmp eq i8 %2, 118
  br i1 %9, label %10, label %23

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !61
  %13 = getelementptr inbounds %struct.ScrVert, ptr %12, i64 0, i32 3
  %14 = load i16, ptr %13, align 8, !tbaa !50
  %15 = sext i16 %14 to i32
  %16 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !55
  %18 = getelementptr inbounds %struct.ScrVert, ptr %17, i64 0, i32 3
  %19 = load i16, ptr %18, align 8, !tbaa !50
  %20 = sext i16 %19 to i32
  %21 = sub nsw i32 %15, %20
  %22 = icmp slt i32 %21, 65
  br i1 %22, label %109, label %23

23:                                               ; preds = %10, %7
  %24 = icmp eq i8 %2, 104
  br i1 %24, label %25, label %40

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !59
  %28 = getelementptr inbounds %struct.ScrVert, ptr %27, i64 0, i32 3, i32 1
  %29 = load i16, ptr %28, align 2, !tbaa !51
  %30 = sext i16 %29 to i32
  %31 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !55
  %33 = getelementptr inbounds %struct.ScrVert, ptr %32, i64 0, i32 3, i32 1
  %34 = load i16, ptr %33, align 2, !tbaa !51
  %35 = sext i16 %34 to i32
  %36 = sub nsw i32 %30, %35
  %37 = shl i32 %8, 16
  %38 = ashr exact i32 %37, 15
  %39 = icmp sgt i32 %36, %38
  br i1 %39, label %40, label %109

40:                                               ; preds = %25, %23
  %41 = fcmp olt float %3, 0.000000e+00
  br i1 %41, label %45, label %42

42:                                               ; preds = %40
  %43 = fcmp ogt float %3, 1.000000e+00
  br i1 %43, label %44, label %45

44:                                               ; preds = %42
  br label %45

45:                                               ; preds = %44, %42, %40
  %46 = phi float [ 1.000000e+00, %44 ], [ %3, %42 ], [ 0.000000e+00, %40 ]
  %47 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !55
  br i1 %24, label %49, label %81

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.ScrVert, ptr %48, i64 0, i32 3, i32 1
  %51 = load i16, ptr %50, align 2, !tbaa !51
  %52 = sext i16 %51 to i32
  %53 = sitofp i16 %51 to float
  %54 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !59
  %56 = getelementptr inbounds %struct.ScrVert, ptr %55, i64 0, i32 3, i32 1
  %57 = load i16, ptr %56, align 2, !tbaa !51
  %58 = sext i16 %57 to i32
  %59 = sub nsw i32 %58, %52
  %60 = sitofp i32 %59 to float
  %61 = tail call float @llvm.fmuladd.f32(float %46, float %60, float %53)
  %62 = fptosi float %61 to i16
  %63 = sext i16 %62 to i32
  %64 = sub nsw i32 %63, %52
  %65 = shl i32 %8, 16
  %66 = ashr exact i32 %65, 16
  %67 = icmp slt i32 %64, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %49
  %69 = trunc i32 %8 to i16
  %70 = add i16 %51, %69
  br label %109

71:                                               ; preds = %49
  %72 = sub nsw i32 %58, %63
  %73 = icmp slt i32 %72, %66
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = trunc i32 %8 to i16
  %76 = sub i16 %57, %75
  br label %109

77:                                               ; preds = %71
  %78 = srem i32 %63, 4
  %79 = trunc i32 %78 to i16
  %80 = sub i16 %62, %79
  br label %109

81:                                               ; preds = %45
  %82 = getelementptr inbounds %struct.ScrVert, ptr %48, i64 0, i32 3
  %83 = load i16, ptr %82, align 8, !tbaa !50
  %84 = sext i16 %83 to i32
  %85 = sitofp i16 %83 to float
  %86 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 5
  %87 = load ptr, ptr %86, align 8, !tbaa !61
  %88 = getelementptr inbounds %struct.ScrVert, ptr %87, i64 0, i32 3
  %89 = load i16, ptr %88, align 8, !tbaa !50
  %90 = sext i16 %89 to i32
  %91 = sub nsw i32 %90, %84
  %92 = sitofp i32 %91 to float
  %93 = tail call float @llvm.fmuladd.f32(float %46, float %92, float %85)
  %94 = fptosi float %93 to i16
  %95 = sext i16 %94 to i32
  %96 = sub nsw i32 %95, %84
  %97 = icmp slt i32 %96, 32
  br i1 %97, label %98, label %100

98:                                               ; preds = %81
  %99 = add i16 %83, 32
  br label %109

100:                                              ; preds = %81
  %101 = sub nsw i32 %90, %95
  %102 = icmp slt i32 %101, 32
  br i1 %102, label %103, label %105

103:                                              ; preds = %100
  %104 = add i16 %89, -32
  br label %109

105:                                              ; preds = %100
  %106 = srem i32 %95, 4
  %107 = trunc i32 %106 to i16
  %108 = sub i16 %94, %107
  br label %109

109:                                              ; preds = %10, %25, %68, %74, %77, %98, %103, %105
  %110 = phi i16 [ 0, %10 ], [ 0, %25 ], [ %70, %68 ], [ %76, %74 ], [ %80, %77 ], [ %99, %98 ], [ %104, %103 ], [ %108, %105 ]
  %111 = icmp eq i16 %110, 0
  br i1 %111, label %324, label %112

112:                                              ; preds = %109
  %113 = icmp eq i8 %2, 104
  %114 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 2
  %115 = load ptr, ptr %114, align 8, !tbaa !55
  %116 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %117 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 1
  br i1 %113, label %118, label %204

118:                                              ; preds = %112
  %119 = getelementptr inbounds %struct.ScrVert, ptr %115, i64 0, i32 3
  %120 = load i16, ptr %119, align 8, !tbaa !50
  %121 = tail call ptr %116(i64 noundef 32, ptr noundef nonnull @.str.10) #11
  %122 = getelementptr inbounds %struct.ScrVert, ptr %121, i64 0, i32 3
  store i16 %120, ptr %122, align 8, !tbaa !50
  %123 = getelementptr inbounds %struct.ScrVert, ptr %121, i64 0, i32 3, i32 1
  store i16 %110, ptr %123, align 2, !tbaa !51
  tail call void @BLI_addtail(ptr noundef nonnull %117, ptr noundef %121) #11
  %124 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 5
  %125 = load ptr, ptr %124, align 8, !tbaa !61
  %126 = getelementptr inbounds %struct.ScrVert, ptr %125, i64 0, i32 3
  %127 = load i16, ptr %126, align 8, !tbaa !50
  %128 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %129 = tail call ptr %128(i64 noundef 32, ptr noundef nonnull @.str.10) #11
  %130 = getelementptr inbounds %struct.ScrVert, ptr %129, i64 0, i32 3
  store i16 %127, ptr %130, align 8, !tbaa !50
  %131 = getelementptr inbounds %struct.ScrVert, ptr %129, i64 0, i32 3, i32 1
  store i16 %110, ptr %131, align 2, !tbaa !51
  tail call void @BLI_addtail(ptr noundef nonnull %117, ptr noundef %129) #11
  %132 = load ptr, ptr %114, align 8, !tbaa !55
  %133 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %134 = tail call ptr %133(i64 noundef 40, ptr noundef nonnull @.str.11) #11
  %135 = icmp ugt ptr %132, %121
  %136 = select i1 %135, ptr %121, ptr %132
  %137 = select i1 %135, ptr %132, ptr %121
  %138 = getelementptr inbounds %struct.ScrEdge, ptr %134, i64 0, i32 2
  store ptr %136, ptr %138, align 8, !tbaa !38
  %139 = getelementptr inbounds %struct.ScrEdge, ptr %134, i64 0, i32 3
  store ptr %137, ptr %139, align 8, !tbaa !42
  %140 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %140, ptr noundef %134) #11
  %141 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 3
  %142 = load ptr, ptr %141, align 8, !tbaa !59
  %143 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %144 = tail call ptr %143(i64 noundef 40, ptr noundef nonnull @.str.11) #11
  %145 = icmp ugt ptr %121, %142
  %146 = select i1 %145, ptr %142, ptr %121
  %147 = select i1 %145, ptr %121, ptr %142
  %148 = getelementptr inbounds %struct.ScrEdge, ptr %144, i64 0, i32 2
  store ptr %146, ptr %148, align 8, !tbaa !38
  %149 = getelementptr inbounds %struct.ScrEdge, ptr %144, i64 0, i32 3
  store ptr %147, ptr %149, align 8, !tbaa !42
  tail call void @BLI_addtail(ptr noundef nonnull %140, ptr noundef %144) #11
  %150 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 4
  %151 = load ptr, ptr %150, align 8, !tbaa !60
  %152 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %153 = tail call ptr %152(i64 noundef 40, ptr noundef nonnull @.str.11) #11
  %154 = icmp ugt ptr %151, %129
  %155 = select i1 %154, ptr %129, ptr %151
  %156 = select i1 %154, ptr %151, ptr %129
  %157 = getelementptr inbounds %struct.ScrEdge, ptr %153, i64 0, i32 2
  store ptr %155, ptr %157, align 8, !tbaa !38
  %158 = getelementptr inbounds %struct.ScrEdge, ptr %153, i64 0, i32 3
  store ptr %156, ptr %158, align 8, !tbaa !42
  tail call void @BLI_addtail(ptr noundef nonnull %140, ptr noundef %153) #11
  %159 = load ptr, ptr %124, align 8, !tbaa !61
  %160 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %161 = tail call ptr %160(i64 noundef 40, ptr noundef nonnull @.str.11) #11
  %162 = icmp ugt ptr %129, %159
  %163 = select i1 %162, ptr %159, ptr %129
  %164 = select i1 %162, ptr %129, ptr %159
  %165 = getelementptr inbounds %struct.ScrEdge, ptr %161, i64 0, i32 2
  store ptr %163, ptr %165, align 8, !tbaa !38
  %166 = getelementptr inbounds %struct.ScrEdge, ptr %161, i64 0, i32 3
  store ptr %164, ptr %166, align 8, !tbaa !42
  tail call void @BLI_addtail(ptr noundef nonnull %140, ptr noundef %161) #11
  %167 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %168 = tail call ptr %167(i64 noundef 40, ptr noundef nonnull @.str.11) #11
  %169 = icmp ugt ptr %121, %129
  %170 = select i1 %169, ptr %129, ptr %121
  %171 = select i1 %169, ptr %121, ptr %129
  %172 = getelementptr inbounds %struct.ScrEdge, ptr %168, i64 0, i32 2
  store ptr %170, ptr %172, align 8, !tbaa !38
  %173 = getelementptr inbounds %struct.ScrEdge, ptr %168, i64 0, i32 3
  store ptr %171, ptr %173, align 8, !tbaa !42
  tail call void @BLI_addtail(ptr noundef nonnull %140, ptr noundef %168) #11
  %174 = fcmp ogt float %3, 5.000000e-01
  %175 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 12
  %176 = load i16, ptr %175, align 2, !tbaa !83
  %177 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 8
  %178 = load i8, ptr %177, align 8, !tbaa !84
  %179 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %180 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 3
  br i1 %174, label %181, label %185

181:                                              ; preds = %118
  %182 = load ptr, ptr %141, align 8, !tbaa !59
  %183 = load ptr, ptr %150, align 8, !tbaa !60
  %184 = tail call ptr %179(i64 noundef 160, ptr noundef nonnull @.str.12) #11
  br label %189

185:                                              ; preds = %118
  %186 = load ptr, ptr %114, align 8, !tbaa !55
  %187 = load ptr, ptr %124, align 8, !tbaa !61
  %188 = tail call ptr %179(i64 noundef 160, ptr noundef nonnull @.str.12) #11
  br label %189

189:                                              ; preds = %185, %181
  %190 = phi ptr [ %188, %185 ], [ %184, %181 ]
  %191 = phi ptr [ %186, %185 ], [ %121, %181 ]
  %192 = phi ptr [ %121, %185 ], [ %182, %181 ]
  %193 = phi ptr [ %129, %185 ], [ %183, %181 ]
  %194 = phi ptr [ %187, %185 ], [ %129, %181 ]
  %195 = phi ptr [ %114, %185 ], [ %141, %181 ]
  %196 = phi ptr [ %124, %185 ], [ %150, %181 ]
  %197 = getelementptr inbounds %struct.ScrArea, ptr %190, i64 0, i32 2
  store ptr %191, ptr %197, align 8, !tbaa !55
  %198 = getelementptr inbounds %struct.ScrArea, ptr %190, i64 0, i32 3
  store ptr %192, ptr %198, align 8, !tbaa !59
  %199 = getelementptr inbounds %struct.ScrArea, ptr %190, i64 0, i32 4
  store ptr %193, ptr %199, align 8, !tbaa !60
  %200 = getelementptr inbounds %struct.ScrArea, ptr %190, i64 0, i32 5
  store ptr %194, ptr %200, align 8, !tbaa !61
  %201 = getelementptr inbounds %struct.ScrArea, ptr %190, i64 0, i32 12
  store i16 %176, ptr %201, align 2, !tbaa !83
  %202 = getelementptr inbounds %struct.ScrArea, ptr %190, i64 0, i32 9
  store i8 %178, ptr %202, align 1, !tbaa !85
  %203 = getelementptr inbounds %struct.ScrArea, ptr %190, i64 0, i32 8
  store i8 %178, ptr %203, align 8, !tbaa !84
  tail call void @BLI_addtail(ptr noundef nonnull %180, ptr noundef %190) #11
  store ptr %121, ptr %195, align 8, !tbaa !34
  store ptr %129, ptr %196, align 8, !tbaa !34
  br label %289

204:                                              ; preds = %112
  %205 = getelementptr inbounds %struct.ScrVert, ptr %115, i64 0, i32 3, i32 1
  %206 = load i16, ptr %205, align 2, !tbaa !51
  %207 = tail call ptr %116(i64 noundef 32, ptr noundef nonnull @.str.10) #11
  %208 = getelementptr inbounds %struct.ScrVert, ptr %207, i64 0, i32 3
  store i16 %110, ptr %208, align 8, !tbaa !50
  %209 = getelementptr inbounds %struct.ScrVert, ptr %207, i64 0, i32 3, i32 1
  store i16 %206, ptr %209, align 2, !tbaa !51
  tail call void @BLI_addtail(ptr noundef nonnull %117, ptr noundef %207) #11
  %210 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 3
  %211 = load ptr, ptr %210, align 8, !tbaa !59
  %212 = getelementptr inbounds %struct.ScrVert, ptr %211, i64 0, i32 3, i32 1
  %213 = load i16, ptr %212, align 2, !tbaa !51
  %214 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %215 = tail call ptr %214(i64 noundef 32, ptr noundef nonnull @.str.10) #11
  %216 = getelementptr inbounds %struct.ScrVert, ptr %215, i64 0, i32 3
  store i16 %110, ptr %216, align 8, !tbaa !50
  %217 = getelementptr inbounds %struct.ScrVert, ptr %215, i64 0, i32 3, i32 1
  store i16 %213, ptr %217, align 2, !tbaa !51
  tail call void @BLI_addtail(ptr noundef nonnull %117, ptr noundef %215) #11
  %218 = load ptr, ptr %114, align 8, !tbaa !55
  %219 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %220 = tail call ptr %219(i64 noundef 40, ptr noundef nonnull @.str.11) #11
  %221 = icmp ugt ptr %218, %207
  %222 = select i1 %221, ptr %207, ptr %218
  %223 = select i1 %221, ptr %218, ptr %207
  %224 = getelementptr inbounds %struct.ScrEdge, ptr %220, i64 0, i32 2
  store ptr %222, ptr %224, align 8, !tbaa !38
  %225 = getelementptr inbounds %struct.ScrEdge, ptr %220, i64 0, i32 3
  store ptr %223, ptr %225, align 8, !tbaa !42
  %226 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %226, ptr noundef %220) #11
  %227 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 5
  %228 = load ptr, ptr %227, align 8, !tbaa !61
  %229 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %230 = tail call ptr %229(i64 noundef 40, ptr noundef nonnull @.str.11) #11
  %231 = icmp ugt ptr %207, %228
  %232 = select i1 %231, ptr %228, ptr %207
  %233 = select i1 %231, ptr %207, ptr %228
  %234 = getelementptr inbounds %struct.ScrEdge, ptr %230, i64 0, i32 2
  store ptr %232, ptr %234, align 8, !tbaa !38
  %235 = getelementptr inbounds %struct.ScrEdge, ptr %230, i64 0, i32 3
  store ptr %233, ptr %235, align 8, !tbaa !42
  tail call void @BLI_addtail(ptr noundef nonnull %226, ptr noundef %230) #11
  %236 = load ptr, ptr %210, align 8, !tbaa !59
  %237 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %238 = tail call ptr %237(i64 noundef 40, ptr noundef nonnull @.str.11) #11
  %239 = icmp ugt ptr %236, %215
  %240 = select i1 %239, ptr %215, ptr %236
  %241 = select i1 %239, ptr %236, ptr %215
  %242 = getelementptr inbounds %struct.ScrEdge, ptr %238, i64 0, i32 2
  store ptr %240, ptr %242, align 8, !tbaa !38
  %243 = getelementptr inbounds %struct.ScrEdge, ptr %238, i64 0, i32 3
  store ptr %241, ptr %243, align 8, !tbaa !42
  tail call void @BLI_addtail(ptr noundef nonnull %226, ptr noundef %238) #11
  %244 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 4
  %245 = load ptr, ptr %244, align 8, !tbaa !60
  %246 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %247 = tail call ptr %246(i64 noundef 40, ptr noundef nonnull @.str.11) #11
  %248 = icmp ugt ptr %215, %245
  %249 = select i1 %248, ptr %245, ptr %215
  %250 = select i1 %248, ptr %215, ptr %245
  %251 = getelementptr inbounds %struct.ScrEdge, ptr %247, i64 0, i32 2
  store ptr %249, ptr %251, align 8, !tbaa !38
  %252 = getelementptr inbounds %struct.ScrEdge, ptr %247, i64 0, i32 3
  store ptr %250, ptr %252, align 8, !tbaa !42
  tail call void @BLI_addtail(ptr noundef nonnull %226, ptr noundef %247) #11
  %253 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %254 = tail call ptr %253(i64 noundef 40, ptr noundef nonnull @.str.11) #11
  %255 = icmp ugt ptr %207, %215
  %256 = select i1 %255, ptr %215, ptr %207
  %257 = select i1 %255, ptr %207, ptr %215
  %258 = getelementptr inbounds %struct.ScrEdge, ptr %254, i64 0, i32 2
  store ptr %256, ptr %258, align 8, !tbaa !38
  %259 = getelementptr inbounds %struct.ScrEdge, ptr %254, i64 0, i32 3
  store ptr %257, ptr %259, align 8, !tbaa !42
  tail call void @BLI_addtail(ptr noundef nonnull %226, ptr noundef %254) #11
  %260 = fcmp ogt float %3, 5.000000e-01
  %261 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 12
  %262 = load i16, ptr %261, align 2, !tbaa !83
  %263 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 8
  %264 = load i8, ptr %263, align 8, !tbaa !84
  %265 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %266 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 3
  br i1 %260, label %267, label %278

267:                                              ; preds = %204
  %268 = load ptr, ptr %244, align 8, !tbaa !60
  %269 = load ptr, ptr %227, align 8, !tbaa !61
  %270 = tail call ptr %265(i64 noundef 160, ptr noundef nonnull @.str.12) #11
  %271 = getelementptr inbounds %struct.ScrArea, ptr %270, i64 0, i32 2
  store ptr %207, ptr %271, align 8, !tbaa !55
  %272 = getelementptr inbounds %struct.ScrArea, ptr %270, i64 0, i32 3
  store ptr %215, ptr %272, align 8, !tbaa !59
  %273 = getelementptr inbounds %struct.ScrArea, ptr %270, i64 0, i32 4
  store ptr %268, ptr %273, align 8, !tbaa !60
  %274 = getelementptr inbounds %struct.ScrArea, ptr %270, i64 0, i32 5
  store ptr %269, ptr %274, align 8, !tbaa !61
  %275 = getelementptr inbounds %struct.ScrArea, ptr %270, i64 0, i32 12
  store i16 %262, ptr %275, align 2, !tbaa !83
  %276 = getelementptr inbounds %struct.ScrArea, ptr %270, i64 0, i32 9
  store i8 %264, ptr %276, align 1, !tbaa !85
  %277 = getelementptr inbounds %struct.ScrArea, ptr %270, i64 0, i32 8
  store i8 %264, ptr %277, align 8, !tbaa !84
  tail call void @BLI_addtail(ptr noundef nonnull %266, ptr noundef %270) #11
  store ptr %215, ptr %244, align 8, !tbaa !60
  store ptr %207, ptr %227, align 8, !tbaa !61
  br label %289

278:                                              ; preds = %204
  %279 = load ptr, ptr %114, align 8, !tbaa !55
  %280 = load ptr, ptr %210, align 8, !tbaa !59
  %281 = tail call ptr %265(i64 noundef 160, ptr noundef nonnull @.str.12) #11
  %282 = getelementptr inbounds %struct.ScrArea, ptr %281, i64 0, i32 2
  store ptr %279, ptr %282, align 8, !tbaa !55
  %283 = getelementptr inbounds %struct.ScrArea, ptr %281, i64 0, i32 3
  store ptr %280, ptr %283, align 8, !tbaa !59
  %284 = getelementptr inbounds %struct.ScrArea, ptr %281, i64 0, i32 4
  store ptr %215, ptr %284, align 8, !tbaa !60
  %285 = getelementptr inbounds %struct.ScrArea, ptr %281, i64 0, i32 5
  store ptr %207, ptr %285, align 8, !tbaa !61
  %286 = getelementptr inbounds %struct.ScrArea, ptr %281, i64 0, i32 12
  store i16 %262, ptr %286, align 2, !tbaa !83
  %287 = getelementptr inbounds %struct.ScrArea, ptr %281, i64 0, i32 9
  store i8 %264, ptr %287, align 1, !tbaa !85
  %288 = getelementptr inbounds %struct.ScrArea, ptr %281, i64 0, i32 8
  store i8 %264, ptr %288, align 8, !tbaa !84
  tail call void @BLI_addtail(ptr noundef nonnull %266, ptr noundef %281) #11
  store ptr %207, ptr %114, align 8, !tbaa !55
  store ptr %215, ptr %210, align 8, !tbaa !59
  br label %289

289:                                              ; preds = %267, %278, %189
  %290 = phi ptr [ %190, %189 ], [ %270, %267 ], [ %281, %278 ]
  tail call void @ED_area_data_copy(ptr noundef %290, ptr noundef nonnull %1, i8 noundef zeroext 1) #11
  %291 = icmp eq i32 %4, 0
  br i1 %291, label %293, label %292

292:                                              ; preds = %289
  tail call void @removedouble_scrverts(ptr noundef %0)
  br label %293

293:                                              ; preds = %292, %289
  %294 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 2
  %295 = load ptr, ptr %294, align 8, !tbaa !34
  %296 = icmp eq ptr %295, null
  br i1 %296, label %323, label %300

297:                                              ; preds = %321, %300
  %298 = load ptr, ptr %301, align 8, !tbaa !34
  %299 = icmp eq ptr %298, null
  br i1 %299, label %323, label %300, !llvm.loop !70

300:                                              ; preds = %293, %297
  %301 = phi ptr [ %298, %297 ], [ %295, %293 ]
  %302 = load ptr, ptr %301, align 8, !tbaa !71
  %303 = icmp eq ptr %302, null
  br i1 %303, label %297, label %304

304:                                              ; preds = %300
  %305 = getelementptr inbounds %struct.ScrEdge, ptr %301, i64 0, i32 2
  %306 = getelementptr inbounds %struct.ScrEdge, ptr %301, i64 0, i32 3
  br label %307

307:                                              ; preds = %321, %304
  %308 = phi ptr [ %302, %304 ], [ %309, %321 ]
  %309 = load ptr, ptr %308, align 8, !tbaa !71
  %310 = load ptr, ptr %305, align 8, !tbaa !38
  %311 = getelementptr inbounds %struct.ScrEdge, ptr %308, i64 0, i32 2
  %312 = load ptr, ptr %311, align 8, !tbaa !38
  %313 = icmp eq ptr %310, %312
  br i1 %313, label %314, label %321

314:                                              ; preds = %307
  %315 = load ptr, ptr %306, align 8, !tbaa !42
  %316 = getelementptr inbounds %struct.ScrEdge, ptr %308, i64 0, i32 3
  %317 = load ptr, ptr %316, align 8, !tbaa !42
  %318 = icmp eq ptr %315, %317
  br i1 %318, label %319, label %321

319:                                              ; preds = %314
  tail call void @BLI_remlink(ptr noundef nonnull %294, ptr noundef nonnull %308) #11
  %320 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %320(ptr noundef nonnull %308) #11
  br label %321

321:                                              ; preds = %319, %314, %307
  %322 = icmp eq ptr %309, null
  br i1 %322, label %297, label %307, !llvm.loop !72

323:                                              ; preds = %297, %293
  tail call void @removenotused_scredges(ptr noundef %0)
  br label %324

324:                                              ; preds = %109, %5, %323
  %325 = phi ptr [ %290, %323 ], [ null, %5 ], [ null, %109 ]
  ret ptr %325
}

declare void @ED_area_data_copy(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @ED_screen_add(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = tail call i32 @WM_window_pixels_x(ptr noundef %0) #11
  %5 = tail call i32 @WM_window_pixels_y(ptr noundef %0) #11
  %6 = load ptr, ptr @G, align 8, !tbaa !86
  %7 = tail call ptr @BKE_libblock_alloc(ptr noundef %6, i16 noundef signext 21075, ptr noundef %2) #11
  %8 = getelementptr inbounds %struct.bScreen, ptr %7, i64 0, i32 5
  store ptr %1, ptr %8, align 8, !tbaa !88
  %9 = getelementptr inbounds %struct.bScreen, ptr %7, i64 0, i32 13
  store i16 1, ptr %9, align 8, !tbaa !89
  %10 = getelementptr inbounds %struct.bScreen, ptr %7, i64 0, i32 7
  store i32 6, ptr %10, align 8, !tbaa !90
  %11 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 18
  %12 = load i32, ptr %11, align 8, !tbaa !91
  %13 = trunc i32 %12 to i16
  %14 = getelementptr inbounds %struct.bScreen, ptr %7, i64 0, i32 11
  store i16 %13, ptr %14, align 4, !tbaa !93
  %15 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %16 = tail call ptr %15(i64 noundef 32, ptr noundef nonnull @.str.10) #11
  %17 = getelementptr inbounds %struct.ScrVert, ptr %16, i64 0, i32 3
  store i16 0, ptr %17, align 8, !tbaa !50
  %18 = getelementptr inbounds %struct.ScrVert, ptr %16, i64 0, i32 3, i32 1
  store i16 0, ptr %18, align 2, !tbaa !51
  %19 = getelementptr inbounds %struct.bScreen, ptr %7, i64 0, i32 1
  tail call void @BLI_addtail(ptr noundef nonnull %19, ptr noundef %16) #11
  %20 = trunc i32 %5 to i16
  %21 = add i16 %20, -1
  %22 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %23 = tail call ptr %22(i64 noundef 32, ptr noundef nonnull @.str.10) #11
  %24 = getelementptr inbounds %struct.ScrVert, ptr %23, i64 0, i32 3
  store i16 0, ptr %24, align 8, !tbaa !50
  %25 = getelementptr inbounds %struct.ScrVert, ptr %23, i64 0, i32 3, i32 1
  store i16 %21, ptr %25, align 2, !tbaa !51
  tail call void @BLI_addtail(ptr noundef nonnull %19, ptr noundef %23) #11
  %26 = trunc i32 %4 to i16
  %27 = add i16 %26, -1
  %28 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %29 = tail call ptr %28(i64 noundef 32, ptr noundef nonnull @.str.10) #11
  %30 = getelementptr inbounds %struct.ScrVert, ptr %29, i64 0, i32 3
  store i16 %27, ptr %30, align 8, !tbaa !50
  %31 = getelementptr inbounds %struct.ScrVert, ptr %29, i64 0, i32 3, i32 1
  store i16 %21, ptr %31, align 2, !tbaa !51
  tail call void @BLI_addtail(ptr noundef nonnull %19, ptr noundef %29) #11
  %32 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %33 = tail call ptr %32(i64 noundef 32, ptr noundef nonnull @.str.10) #11
  %34 = getelementptr inbounds %struct.ScrVert, ptr %33, i64 0, i32 3
  store i16 %27, ptr %34, align 8, !tbaa !50
  %35 = getelementptr inbounds %struct.ScrVert, ptr %33, i64 0, i32 3, i32 1
  store i16 0, ptr %35, align 2, !tbaa !51
  tail call void @BLI_addtail(ptr noundef nonnull %19, ptr noundef %33) #11
  %36 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %37 = tail call ptr %36(i64 noundef 40, ptr noundef nonnull @.str.11) #11
  %38 = icmp ugt ptr %16, %23
  %39 = select i1 %38, ptr %23, ptr %16
  %40 = select i1 %38, ptr %16, ptr %23
  %41 = getelementptr inbounds %struct.ScrEdge, ptr %37, i64 0, i32 2
  store ptr %39, ptr %41, align 8, !tbaa !38
  %42 = getelementptr inbounds %struct.ScrEdge, ptr %37, i64 0, i32 3
  store ptr %40, ptr %42, align 8, !tbaa !42
  %43 = getelementptr inbounds %struct.bScreen, ptr %7, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %43, ptr noundef %37) #11
  %44 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %45 = tail call ptr %44(i64 noundef 40, ptr noundef nonnull @.str.11) #11
  %46 = icmp ugt ptr %23, %29
  %47 = select i1 %46, ptr %29, ptr %23
  %48 = select i1 %46, ptr %23, ptr %29
  %49 = getelementptr inbounds %struct.ScrEdge, ptr %45, i64 0, i32 2
  store ptr %47, ptr %49, align 8, !tbaa !38
  %50 = getelementptr inbounds %struct.ScrEdge, ptr %45, i64 0, i32 3
  store ptr %48, ptr %50, align 8, !tbaa !42
  tail call void @BLI_addtail(ptr noundef nonnull %43, ptr noundef %45) #11
  %51 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %52 = tail call ptr %51(i64 noundef 40, ptr noundef nonnull @.str.11) #11
  %53 = icmp ugt ptr %29, %33
  %54 = select i1 %53, ptr %33, ptr %29
  %55 = select i1 %53, ptr %29, ptr %33
  %56 = getelementptr inbounds %struct.ScrEdge, ptr %52, i64 0, i32 2
  store ptr %54, ptr %56, align 8, !tbaa !38
  %57 = getelementptr inbounds %struct.ScrEdge, ptr %52, i64 0, i32 3
  store ptr %55, ptr %57, align 8, !tbaa !42
  tail call void @BLI_addtail(ptr noundef nonnull %43, ptr noundef %52) #11
  %58 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %59 = tail call ptr %58(i64 noundef 40, ptr noundef nonnull @.str.11) #11
  %60 = icmp ugt ptr %33, %16
  %61 = select i1 %60, ptr %16, ptr %33
  %62 = select i1 %60, ptr %33, ptr %16
  %63 = getelementptr inbounds %struct.ScrEdge, ptr %59, i64 0, i32 2
  store ptr %61, ptr %63, align 8, !tbaa !38
  %64 = getelementptr inbounds %struct.ScrEdge, ptr %59, i64 0, i32 3
  store ptr %62, ptr %64, align 8, !tbaa !42
  tail call void @BLI_addtail(ptr noundef nonnull %43, ptr noundef %59) #11
  %65 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %66 = tail call ptr %65(i64 noundef 160, ptr noundef nonnull @.str.12) #11
  %67 = getelementptr inbounds %struct.ScrArea, ptr %66, i64 0, i32 2
  store ptr %16, ptr %67, align 8, !tbaa !55
  %68 = getelementptr inbounds %struct.ScrArea, ptr %66, i64 0, i32 3
  store ptr %23, ptr %68, align 8, !tbaa !59
  %69 = getelementptr inbounds %struct.ScrArea, ptr %66, i64 0, i32 4
  store ptr %29, ptr %69, align 8, !tbaa !60
  %70 = getelementptr inbounds %struct.ScrArea, ptr %66, i64 0, i32 5
  store ptr %33, ptr %70, align 8, !tbaa !61
  %71 = getelementptr inbounds %struct.ScrArea, ptr %66, i64 0, i32 12
  store i16 1, ptr %71, align 2, !tbaa !83
  %72 = getelementptr inbounds %struct.ScrArea, ptr %66, i64 0, i32 9
  store i8 0, ptr %72, align 1, !tbaa !85
  %73 = getelementptr inbounds %struct.ScrArea, ptr %66, i64 0, i32 8
  store i8 0, ptr %73, align 8, !tbaa !84
  %74 = getelementptr inbounds %struct.bScreen, ptr %7, i64 0, i32 3
  tail call void @BLI_addtail(ptr noundef nonnull %74, ptr noundef %66) #11
  ret ptr %7
}

declare i32 @WM_window_pixels_x(ptr noundef) local_unnamed_addr #3

declare i32 @WM_window_pixels_y(ptr noundef) local_unnamed_addr #3

declare ptr @BKE_libblock_alloc(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @area_getorientation(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #7 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %39, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !55
  %9 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !59
  %11 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !60
  %13 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !61
  %15 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !55
  %17 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !59
  %19 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !60
  %21 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !61
  %23 = icmp eq ptr %8, %22
  %24 = icmp eq ptr %10, %20
  %25 = select i1 %23, i1 %24, i1 false
  br i1 %25, label %39, label %26

26:                                               ; preds = %6
  %27 = icmp eq ptr %10, %16
  %28 = icmp eq ptr %12, %22
  %29 = select i1 %27, i1 %28, i1 false
  br i1 %29, label %39, label %30

30:                                               ; preds = %26
  %31 = icmp eq ptr %12, %18
  %32 = icmp eq ptr %14, %16
  %33 = select i1 %31, i1 %32, i1 false
  br i1 %33, label %39, label %34

34:                                               ; preds = %30
  %35 = icmp eq ptr %8, %18
  %36 = icmp eq ptr %14, %20
  %37 = select i1 %35, i1 %36, i1 false
  %38 = select i1 %37, i32 3, i32 -1
  br label %39

39:                                               ; preds = %34, %30, %26, %6, %2
  %40 = phi i32 [ -1, %2 ], [ 0, %6 ], [ 1, %26 ], [ 2, %30 ], [ %38, %34 ]
  ret i32 %40
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @screen_area_join(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 {
  %5 = icmp eq ptr %2, null
  %6 = icmp eq ptr %3, null
  %7 = or i1 %5, %6
  br i1 %7, label %41, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !55
  %11 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !59
  %13 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !60
  %15 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !61
  %17 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !55
  %19 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !59
  %21 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !60
  %23 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !61
  %25 = icmp eq ptr %10, %24
  %26 = icmp eq ptr %12, %22
  %27 = select i1 %25, i1 %26, i1 false
  br i1 %27, label %41, label %28

28:                                               ; preds = %8
  %29 = icmp eq ptr %12, %18
  %30 = icmp eq ptr %14, %24
  %31 = select i1 %29, i1 %30, i1 false
  br i1 %31, label %41, label %32

32:                                               ; preds = %28
  %33 = icmp eq ptr %14, %20
  %34 = icmp eq ptr %16, %18
  %35 = select i1 %33, i1 %34, i1 false
  br i1 %35, label %41, label %36

36:                                               ; preds = %32
  %37 = icmp eq ptr %10, %20
  %38 = icmp eq ptr %16, %22
  %39 = select i1 %37, i1 %38, i1 false
  %40 = select i1 %39, i32 3, i32 -1
  br label %41

41:                                               ; preds = %4, %8, %28, %32, %36
  %42 = phi i32 [ -1, %4 ], [ 0, %8 ], [ 1, %28 ], [ 2, %32 ], [ %40, %36 ]
  switch i32 %42, label %130 [
    i32 -1, label %43
    i32 0, label %49
    i32 1, label %76
    i32 2, label %103
  ]

43:                                               ; preds = %41
  br i1 %5, label %48, label %44

44:                                               ; preds = %43
  %45 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 14
  %46 = load i16, ptr %45, align 2, !tbaa !94
  %47 = and i16 %46, -5
  store i16 %47, ptr %45, align 2, !tbaa !94
  br label %48

48:                                               ; preds = %44, %43
  br i1 %6, label %167, label %160

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !55
  %52 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 2
  store ptr %51, ptr %52, align 8, !tbaa !55
  %53 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !59
  %55 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 3
  store ptr %54, ptr %55, align 8, !tbaa !59
  %56 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 4
  %57 = load ptr, ptr %56, align 8, !tbaa !60
  %58 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %59 = tail call ptr %58(i64 noundef 40, ptr noundef nonnull @.str.11) #11
  %60 = icmp ugt ptr %54, %57
  %61 = select i1 %60, ptr %57, ptr %54
  %62 = select i1 %60, ptr %54, ptr %57
  %63 = getelementptr inbounds %struct.ScrEdge, ptr %59, i64 0, i32 2
  store ptr %61, ptr %63, align 8, !tbaa !38
  %64 = getelementptr inbounds %struct.ScrEdge, ptr %59, i64 0, i32 3
  store ptr %62, ptr %64, align 8, !tbaa !42
  %65 = getelementptr inbounds %struct.bScreen, ptr %1, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %65, ptr noundef %59) #11
  %66 = load ptr, ptr %52, align 8, !tbaa !55
  %67 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 5
  %68 = load ptr, ptr %67, align 8, !tbaa !61
  %69 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %70 = tail call ptr %69(i64 noundef 40, ptr noundef nonnull @.str.11) #11
  %71 = icmp ugt ptr %66, %68
  %72 = select i1 %71, ptr %68, ptr %66
  %73 = select i1 %71, ptr %66, ptr %68
  %74 = getelementptr inbounds %struct.ScrEdge, ptr %70, i64 0, i32 2
  store ptr %72, ptr %74, align 8, !tbaa !38
  %75 = getelementptr inbounds %struct.ScrEdge, ptr %70, i64 0, i32 3
  store ptr %73, ptr %75, align 8, !tbaa !42
  tail call void @BLI_addtail(ptr noundef nonnull %65, ptr noundef %70) #11
  br label %157

76:                                               ; preds = %41
  %77 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !59
  %79 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 3
  store ptr %78, ptr %79, align 8, !tbaa !59
  %80 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 4
  %81 = load ptr, ptr %80, align 8, !tbaa !60
  %82 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 4
  store ptr %81, ptr %82, align 8, !tbaa !60
  %83 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !55
  %85 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %86 = tail call ptr %85(i64 noundef 40, ptr noundef nonnull @.str.11) #11
  %87 = icmp ugt ptr %84, %78
  %88 = select i1 %87, ptr %78, ptr %84
  %89 = select i1 %87, ptr %84, ptr %78
  %90 = getelementptr inbounds %struct.ScrEdge, ptr %86, i64 0, i32 2
  store ptr %88, ptr %90, align 8, !tbaa !38
  %91 = getelementptr inbounds %struct.ScrEdge, ptr %86, i64 0, i32 3
  store ptr %89, ptr %91, align 8, !tbaa !42
  %92 = getelementptr inbounds %struct.bScreen, ptr %1, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %92, ptr noundef %86) #11
  %93 = load ptr, ptr %82, align 8, !tbaa !60
  %94 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 5
  %95 = load ptr, ptr %94, align 8, !tbaa !61
  %96 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %97 = tail call ptr %96(i64 noundef 40, ptr noundef nonnull @.str.11) #11
  %98 = icmp ugt ptr %93, %95
  %99 = select i1 %98, ptr %95, ptr %93
  %100 = select i1 %98, ptr %93, ptr %95
  %101 = getelementptr inbounds %struct.ScrEdge, ptr %97, i64 0, i32 2
  store ptr %99, ptr %101, align 8, !tbaa !38
  %102 = getelementptr inbounds %struct.ScrEdge, ptr %97, i64 0, i32 3
  store ptr %100, ptr %102, align 8, !tbaa !42
  tail call void @BLI_addtail(ptr noundef nonnull %92, ptr noundef %97) #11
  br label %157

103:                                              ; preds = %41
  %104 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 4
  %105 = load ptr, ptr %104, align 8, !tbaa !60
  %106 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 4
  store ptr %105, ptr %106, align 8, !tbaa !60
  %107 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 5
  %108 = load ptr, ptr %107, align 8, !tbaa !61
  %109 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 5
  store ptr %108, ptr %109, align 8, !tbaa !61
  %110 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 3
  %111 = load ptr, ptr %110, align 8, !tbaa !59
  %112 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %113 = tail call ptr %112(i64 noundef 40, ptr noundef nonnull @.str.11) #11
  %114 = icmp ugt ptr %111, %105
  %115 = select i1 %114, ptr %105, ptr %111
  %116 = select i1 %114, ptr %111, ptr %105
  %117 = getelementptr inbounds %struct.ScrEdge, ptr %113, i64 0, i32 2
  store ptr %115, ptr %117, align 8, !tbaa !38
  %118 = getelementptr inbounds %struct.ScrEdge, ptr %113, i64 0, i32 3
  store ptr %116, ptr %118, align 8, !tbaa !42
  %119 = getelementptr inbounds %struct.bScreen, ptr %1, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %119, ptr noundef %113) #11
  %120 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 2
  %121 = load ptr, ptr %120, align 8, !tbaa !55
  %122 = load ptr, ptr %109, align 8, !tbaa !61
  %123 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %124 = tail call ptr %123(i64 noundef 40, ptr noundef nonnull @.str.11) #11
  %125 = icmp ugt ptr %121, %122
  %126 = select i1 %125, ptr %122, ptr %121
  %127 = select i1 %125, ptr %121, ptr %122
  %128 = getelementptr inbounds %struct.ScrEdge, ptr %124, i64 0, i32 2
  store ptr %126, ptr %128, align 8, !tbaa !38
  %129 = getelementptr inbounds %struct.ScrEdge, ptr %124, i64 0, i32 3
  store ptr %127, ptr %129, align 8, !tbaa !42
  tail call void @BLI_addtail(ptr noundef nonnull %119, ptr noundef %124) #11
  br label %157

130:                                              ; preds = %41
  %131 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 2
  %132 = load ptr, ptr %131, align 8, !tbaa !55
  %133 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 2
  store ptr %132, ptr %133, align 8, !tbaa !55
  %134 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 5
  %135 = load ptr, ptr %134, align 8, !tbaa !61
  %136 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 5
  store ptr %135, ptr %136, align 8, !tbaa !61
  %137 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 3
  %138 = load ptr, ptr %137, align 8, !tbaa !59
  %139 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %140 = tail call ptr %139(i64 noundef 40, ptr noundef nonnull @.str.11) #11
  %141 = icmp ugt ptr %132, %138
  %142 = select i1 %141, ptr %138, ptr %132
  %143 = select i1 %141, ptr %132, ptr %138
  %144 = getelementptr inbounds %struct.ScrEdge, ptr %140, i64 0, i32 2
  store ptr %142, ptr %144, align 8, !tbaa !38
  %145 = getelementptr inbounds %struct.ScrEdge, ptr %140, i64 0, i32 3
  store ptr %143, ptr %145, align 8, !tbaa !42
  %146 = getelementptr inbounds %struct.bScreen, ptr %1, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %146, ptr noundef %140) #11
  %147 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 4
  %148 = load ptr, ptr %147, align 8, !tbaa !60
  %149 = load ptr, ptr %136, align 8, !tbaa !61
  %150 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %151 = tail call ptr %150(i64 noundef 40, ptr noundef nonnull @.str.11) #11
  %152 = icmp ugt ptr %148, %149
  %153 = select i1 %152, ptr %149, ptr %148
  %154 = select i1 %152, ptr %148, ptr %149
  %155 = getelementptr inbounds %struct.ScrEdge, ptr %151, i64 0, i32 2
  store ptr %153, ptr %155, align 8, !tbaa !38
  %156 = getelementptr inbounds %struct.ScrEdge, ptr %151, i64 0, i32 3
  store ptr %154, ptr %156, align 8, !tbaa !42
  tail call void @BLI_addtail(ptr noundef nonnull %146, ptr noundef %151) #11
  br label %157

157:                                              ; preds = %76, %130, %103, %49
  tail call void @ED_area_exit(ptr noundef %0, ptr noundef %3)
  tail call void @BKE_screen_area_free(ptr noundef %3) #11
  %158 = getelementptr inbounds %struct.bScreen, ptr %1, i64 0, i32 3
  tail call void @BLI_remlink(ptr noundef nonnull %158, ptr noundef %3) #11
  %159 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %159(ptr noundef %3) #11
  tail call void @removedouble_scrverts(ptr noundef %1)
  br label %160

160:                                              ; preds = %48, %157
  %161 = phi ptr [ %2, %157 ], [ %3, %48 ]
  %162 = phi i16 [ -5, %157 ], [ -3, %48 ]
  %163 = phi i32 [ 1, %157 ], [ 0, %48 ]
  %164 = getelementptr inbounds %struct.ScrArea, ptr %161, i64 0, i32 14
  %165 = load i16, ptr %164, align 2, !tbaa !94
  %166 = and i16 %165, %162
  store i16 %166, ptr %164, align 2, !tbaa !94
  br label %167

167:                                              ; preds = %160, %48
  %168 = phi i32 [ 0, %48 ], [ %163, %160 ]
  ret i32 %168
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @select_connected_scredge(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.ScrEdge, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !38
  %5 = getelementptr inbounds %struct.ScrVert, ptr %4, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !50
  %7 = getelementptr inbounds %struct.ScrEdge, ptr %1, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !42
  %9 = getelementptr inbounds %struct.ScrVert, ptr %8, i64 0, i32 3
  %10 = load i16, ptr %9, align 8, !tbaa !50
  %11 = icmp eq i16 %6, %10
  %12 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %2, %15
  %16 = phi ptr [ %18, %15 ], [ %13, %2 ]
  %17 = getelementptr inbounds %struct.ScrVert, ptr %16, i64 0, i32 4
  store i16 0, ptr %17, align 4, !tbaa !67
  %18 = load ptr, ptr %16, align 8, !tbaa !34
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %15, !llvm.loop !95

20:                                               ; preds = %15, %2
  %21 = getelementptr inbounds %struct.ScrVert, ptr %4, i64 0, i32 4
  store i16 1, ptr %21, align 4, !tbaa !67
  %22 = getelementptr inbounds %struct.ScrVert, ptr %8, i64 0, i32 4
  store i16 1, ptr %22, align 4, !tbaa !67
  %23 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !34
  %25 = icmp eq ptr %24, null
  br label %29

26:                                               ; preds = %62, %29
  %27 = phi i32 [ 0, %29 ], [ %63, %62 ]
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %66, label %29, !llvm.loop !96

29:                                               ; preds = %20, %26
  br i1 %25, label %26, label %30

30:                                               ; preds = %29, %62
  %31 = phi ptr [ %64, %62 ], [ %24, %29 ]
  %32 = phi i32 [ %63, %62 ], [ 0, %29 ]
  %33 = getelementptr inbounds %struct.ScrEdge, ptr %31, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !38
  %35 = getelementptr inbounds %struct.ScrVert, ptr %34, i64 0, i32 4
  %36 = load i16, ptr %35, align 4, !tbaa !67
  %37 = sext i16 %36 to i32
  %38 = getelementptr inbounds %struct.ScrEdge, ptr %31, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !42
  %40 = getelementptr inbounds %struct.ScrVert, ptr %39, i64 0, i32 4
  %41 = load i16, ptr %40, align 4, !tbaa !67
  %42 = sext i16 %41 to i32
  %43 = add nsw i32 %42, %37
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %62

45:                                               ; preds = %30
  br i1 %11, label %53, label %46

46:                                               ; preds = %45
  %47 = getelementptr inbounds %struct.ScrVert, ptr %34, i64 0, i32 3, i32 1
  %48 = load i16, ptr %47, align 2, !tbaa !51
  %49 = getelementptr inbounds %struct.ScrVert, ptr %39, i64 0, i32 3, i32 1
  %50 = load i16, ptr %49, align 2, !tbaa !51
  %51 = icmp eq i16 %48, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  store i16 1, ptr %40, align 4, !tbaa !67
  store i16 1, ptr %35, align 4, !tbaa !67
  br label %53

53:                                               ; preds = %46, %52, %45
  %54 = phi i32 [ 1, %52 ], [ %32, %46 ], [ %32, %45 ]
  br i1 %11, label %55, label %62

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct.ScrVert, ptr %34, i64 0, i32 3
  %57 = load i16, ptr %56, align 8, !tbaa !50
  %58 = getelementptr inbounds %struct.ScrVert, ptr %39, i64 0, i32 3
  %59 = load i16, ptr %58, align 8, !tbaa !50
  %60 = icmp eq i16 %57, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  store i16 1, ptr %40, align 4, !tbaa !67
  store i16 1, ptr %35, align 4, !tbaa !67
  br label %62

62:                                               ; preds = %53, %61, %55, %30
  %63 = phi i32 [ 1, %61 ], [ %54, %55 ], [ %54, %53 ], [ %32, %30 ]
  %64 = load ptr, ptr %31, align 8, !tbaa !34
  %65 = icmp eq ptr %64, null
  br i1 %65, label %26, label %30, !llvm.loop !97

66:                                               ; preds = %26
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @ED_screen_duplicate(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.bScreen, ptr %1, i64 0, i32 9
  %4 = load i16, ptr %3, align 8, !tbaa !98
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %79

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bScreen, ptr %1, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !88
  %9 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4, i64 2
  %10 = tail call ptr @ED_screen_add(ptr noundef %0, ptr noundef %8, ptr noundef nonnull %9)
  tail call void @BKE_screen_free(ptr noundef %10) #11
  %11 = getelementptr inbounds %struct.bScreen, ptr %10, i64 0, i32 1
  %12 = getelementptr inbounds %struct.bScreen, ptr %1, i64 0, i32 1
  tail call void @BLI_duplicatelist(ptr noundef nonnull %11, ptr noundef nonnull %12) #11
  %13 = getelementptr inbounds %struct.bScreen, ptr %10, i64 0, i32 2
  %14 = getelementptr inbounds %struct.bScreen, ptr %1, i64 0, i32 2
  tail call void @BLI_duplicatelist(ptr noundef nonnull %13, ptr noundef nonnull %14) #11
  %15 = getelementptr inbounds %struct.bScreen, ptr %10, i64 0, i32 3
  %16 = getelementptr inbounds %struct.bScreen, ptr %1, i64 0, i32 3
  tail call void @BLI_duplicatelist(ptr noundef nonnull %15, ptr noundef nonnull %16) #11
  %17 = getelementptr inbounds %struct.bScreen, ptr %10, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false)
  %18 = load ptr, ptr %12, align 8, !tbaa !34
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %23, %6
  %21 = load ptr, ptr %13, align 8, !tbaa !34
  %22 = icmp eq ptr %21, null
  br i1 %22, label %30, label %33

23:                                               ; preds = %6, %23
  %24 = phi ptr [ %28, %23 ], [ %18, %6 ]
  %25 = phi ptr [ %26, %23 ], [ %11, %6 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !34
  %27 = getelementptr inbounds %struct.ScrVert, ptr %24, i64 0, i32 2
  store ptr %26, ptr %27, align 8, !tbaa !46
  %28 = load ptr, ptr %24, align 8, !tbaa !34
  %29 = icmp eq ptr %28, null
  br i1 %29, label %20, label %23, !llvm.loop !99

30:                                               ; preds = %45, %20
  %31 = load ptr, ptr %15, align 8, !tbaa !34
  %32 = icmp eq ptr %31, null
  br i1 %32, label %48, label %51

33:                                               ; preds = %20, %45
  %34 = phi ptr [ %46, %45 ], [ %21, %20 ]
  %35 = getelementptr inbounds %struct.ScrEdge, ptr %34, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !38
  %37 = getelementptr inbounds %struct.ScrVert, ptr %36, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !46
  store ptr %38, ptr %35, align 8, !tbaa !38
  %39 = getelementptr inbounds %struct.ScrEdge, ptr %34, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !42
  %41 = getelementptr inbounds %struct.ScrVert, ptr %40, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !46
  store ptr %42, ptr %39, align 8, !tbaa !42
  %43 = icmp ugt ptr %38, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  store ptr %42, ptr %35, align 8, !tbaa !34
  store ptr %38, ptr %39, align 8, !tbaa !34
  br label %45

45:                                               ; preds = %44, %33
  %46 = load ptr, ptr %34, align 8, !tbaa !34
  %47 = icmp eq ptr %46, null
  br i1 %47, label %30, label %33, !llvm.loop !100

48:                                               ; preds = %51, %30
  %49 = load ptr, ptr %12, align 8, !tbaa !34
  %50 = icmp eq ptr %49, null
  br i1 %50, label %79, label %74

51:                                               ; preds = %30, %51
  %52 = phi ptr [ %72, %51 ], [ %31, %30 ]
  %53 = phi ptr [ %54, %51 ], [ %16, %30 ]
  %54 = load ptr, ptr %53, align 8, !tbaa !34
  %55 = getelementptr inbounds %struct.ScrArea, ptr %52, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !55
  %57 = getelementptr inbounds %struct.ScrVert, ptr %56, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !46
  store ptr %58, ptr %55, align 8, !tbaa !55
  %59 = getelementptr inbounds %struct.ScrArea, ptr %52, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !59
  %61 = getelementptr inbounds %struct.ScrVert, ptr %60, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !46
  store ptr %62, ptr %59, align 8, !tbaa !59
  %63 = getelementptr inbounds %struct.ScrArea, ptr %52, i64 0, i32 4
  %64 = load ptr, ptr %63, align 8, !tbaa !60
  %65 = getelementptr inbounds %struct.ScrVert, ptr %64, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !46
  store ptr %66, ptr %63, align 8, !tbaa !60
  %67 = getelementptr inbounds %struct.ScrArea, ptr %52, i64 0, i32 5
  %68 = load ptr, ptr %67, align 8, !tbaa !61
  %69 = getelementptr inbounds %struct.ScrVert, ptr %68, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !46
  store ptr %70, ptr %67, align 8, !tbaa !61
  %71 = getelementptr inbounds %struct.ScrArea, ptr %52, i64 0, i32 19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %71, i8 0, i64 64, i1 false)
  tail call void @ED_area_data_copy(ptr noundef nonnull %52, ptr noundef %54, i8 noundef zeroext 1) #11
  %72 = load ptr, ptr %52, align 8, !tbaa !34
  %73 = icmp eq ptr %72, null
  br i1 %73, label %48, label %51, !llvm.loop !101

74:                                               ; preds = %48, %74
  %75 = phi ptr [ %77, %74 ], [ %49, %48 ]
  %76 = getelementptr inbounds %struct.ScrVert, ptr %75, i64 0, i32 2
  store ptr null, ptr %76, align 8, !tbaa !46
  %77 = load ptr, ptr %75, align 8, !tbaa !34
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %74, !llvm.loop !102

79:                                               ; preds = %74, %48, %2
  %80 = phi ptr [ null, %2 ], [ %10, %48 ], [ %10, %74 ]
  ret ptr %80
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_screen_do_listen(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = tail call ptr @CTX_wm_window(ptr noundef %0) #11
  %4 = getelementptr inbounds %struct.wmNotifier, ptr %1, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !103
  %6 = add i32 %5, -16777216
  %7 = tail call i32 @llvm.fshl.i32(i32 %6, i32 %6, i32 8)
  switch i32 %7, label %66 [
    i32 0, label %8
    i32 1, label %16
    i32 2, label %20
    i32 3, label %29
  ]

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.wmNotifier, ptr %1, i64 0, i32 6
  %10 = load i32, ptr %9, align 8, !tbaa !105
  %11 = icmp eq i32 %10, 65536
  br i1 %11, label %12, label %66

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.wmWindow, ptr %3, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !106
  %15 = getelementptr inbounds %struct.bScreen, ptr %14, i64 0, i32 12
  store i16 1, ptr %15, align 2, !tbaa !107
  br label %66

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.wmWindow, ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !106
  %19 = getelementptr inbounds %struct.bScreen, ptr %18, i64 0, i32 12
  store i16 1, ptr %19, align 2, !tbaa !107
  br label %66

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.wmNotifier, ptr %1, i64 0, i32 8
  %22 = load i32, ptr %21, align 8, !tbaa !108
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %66

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.wmWindow, ptr %3, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !106
  %27 = getelementptr inbounds %struct.bScreen, ptr %26, i64 0, i32 13
  store i16 1, ptr %27, align 8, !tbaa !89
  %28 = getelementptr inbounds %struct.bScreen, ptr %26, i64 0, i32 12
  store i16 1, ptr %28, align 2, !tbaa !107
  br label %66

29:                                               ; preds = %2
  %30 = getelementptr inbounds %struct.wmNotifier, ptr %1, i64 0, i32 6
  %31 = load i32, ptr %30, align 8, !tbaa !105
  %32 = icmp eq i32 %31, 720896
  br i1 %32, label %33, label %66

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.wmNotifier, ptr %1, i64 0, i32 4
  %35 = load i32, ptr %34, align 8, !tbaa !109
  %36 = getelementptr inbounds %struct.wmWindow, ptr %3, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !106
  %38 = getelementptr inbounds %struct.bScreen, ptr %37, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !34
  %40 = icmp eq ptr %39, null
  br i1 %40, label %66, label %44

41:                                               ; preds = %47
  %42 = load ptr, ptr %45, align 8, !tbaa !34
  %43 = icmp eq ptr %42, null
  br i1 %43, label %66, label %44, !llvm.loop !110

44:                                               ; preds = %33, %41
  %45 = phi ptr [ %42, %41 ], [ %39, %33 ]
  %46 = getelementptr inbounds %struct.ScrArea, ptr %45, i64 0, i32 20
  br label %47

47:                                               ; preds = %51, %44
  %48 = phi ptr [ %46, %44 ], [ %49, %51 ]
  %49 = load ptr, ptr %48, align 8, !tbaa !34
  %50 = icmp eq ptr %49, null
  br i1 %50, label %41, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.ARegion, ptr %49, i64 0, i32 7
  %53 = load i16, ptr %52, align 4, !tbaa !111
  %54 = sext i16 %53 to i32
  %55 = icmp eq i32 %35, %54
  br i1 %55, label %56, label %47, !llvm.loop !115

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.ARegion, ptr %49, i64 0, i32 20
  %58 = load ptr, ptr %57, align 8, !tbaa !116
  %59 = icmp eq ptr %58, null
  br i1 %59, label %65, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.ARegionType, ptr %58, i64 0, i32 11
  %62 = load ptr, ptr %61, align 8, !tbaa !117
  %63 = icmp eq ptr %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %60
  tail call void %62(ptr noundef %3, ptr noundef nonnull %45, ptr noundef nonnull %49) #11
  br label %66

65:                                               ; preds = %60, %56
  tail call void @WM_cursor_set(ptr noundef %3, i32 noundef 1006) #11
  br label %66

66:                                               ; preds = %41, %65, %64, %33, %29, %20, %24, %8, %12, %2, %16
  ret void
}

declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @ED_screen_draw(ptr noundef %0) local_unnamed_addr #2 {
  %2 = alloca [10 x %struct.vec2f], align 16
  %3 = alloca [10 x %struct.vec2f], align 16
  %4 = tail call i32 @WM_window_pixels_x(ptr noundef %0) #11
  %5 = tail call i32 @WM_window_pixels_y(ptr noundef %0) #11
  %6 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !106
  %8 = getelementptr inbounds %struct.bScreen, ptr %7, i64 0, i32 18
  %9 = load i16, ptr %8, align 2, !tbaa !119
  %10 = sext i16 %9 to i32
  tail call void @wmSubWindowSet(ptr noundef %0, i32 noundef %10) #11
  %11 = load ptr, ptr %6, align 8, !tbaa !106
  %12 = getelementptr inbounds %struct.bScreen, ptr %11, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = icmp eq ptr %13, null
  br i1 %14, label %70, label %15

15:                                               ; preds = %1
  %16 = add nsw i32 %4, -1
  %17 = add nsw i32 %5, -1
  br label %18

18:                                               ; preds = %15, %67
  %19 = phi ptr [ %13, %15 ], [ %68, %67 ]
  %20 = phi ptr [ null, %15 ], [ %33, %67 ]
  %21 = phi ptr [ null, %15 ], [ %30, %67 ]
  %22 = phi ptr [ null, %15 ], [ %27, %67 ]
  %23 = getelementptr inbounds %struct.ScrArea, ptr %19, i64 0, i32 14
  %24 = load i16, ptr %23, align 2, !tbaa !94
  %25 = and i16 %24, 4
  %26 = icmp eq i16 %25, 0
  %27 = select i1 %26, ptr %22, ptr %19
  %28 = and i16 %24, 2
  %29 = icmp eq i16 %28, 0
  %30 = select i1 %29, ptr %21, ptr %19
  %31 = and i16 %24, 48
  %32 = icmp eq i16 %31, 0
  %33 = select i1 %32, ptr %20, ptr %19
  %34 = getelementptr inbounds %struct.ScrArea, ptr %19, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !55
  %36 = getelementptr inbounds %struct.ScrVert, ptr %35, i64 0, i32 3
  %37 = load i16, ptr %36, align 8, !tbaa !50
  %38 = getelementptr inbounds %struct.ScrVert, ptr %35, i64 0, i32 3, i32 1
  %39 = load i16, ptr %38, align 2, !tbaa !51
  %40 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !120
  %41 = fcmp ogt float %40, 1.000000e+00
  br i1 %41, label %42, label %67

42:                                               ; preds = %18
  %43 = getelementptr inbounds %struct.ScrArea, ptr %19, i64 0, i32 4
  %44 = load ptr, ptr %43, align 8, !tbaa !60
  %45 = getelementptr inbounds %struct.ScrVert, ptr %44, i64 0, i32 3, i32 1
  %46 = load i16, ptr %45, align 2, !tbaa !51
  %47 = getelementptr inbounds %struct.ScrVert, ptr %44, i64 0, i32 3
  %48 = load i16, ptr %47, align 8, !tbaa !50
  tail call void @glColor3ub(i8 noundef zeroext 80, i8 noundef zeroext 80, i8 noundef zeroext 80) #11
  %49 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !120
  %50 = tail call float @llvm.fmuladd.f32(float %49, float 2.000000e+00, float -1.000000e+00)
  tail call void @glLineWidth(float noundef %50) #11
  %51 = sext i16 %37 to i32
  %52 = sext i16 %39 to i32
  %53 = sext i16 %48 to i32
  %54 = sext i16 %46 to i32
  %55 = icmp sgt i32 %16, %53
  br i1 %55, label %56, label %57

56:                                               ; preds = %42
  tail call void @sdrawline(i32 noundef %53, i32 noundef %52, i32 noundef %53, i32 noundef %54) #11
  br label %57

57:                                               ; preds = %56, %42
  %58 = icmp sgt i16 %37, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %57
  tail call void @sdrawline(i32 noundef %51, i32 noundef %52, i32 noundef %51, i32 noundef %54) #11
  br label %60

60:                                               ; preds = %59, %57
  %61 = icmp sgt i32 %17, %54
  br i1 %61, label %62, label %63

62:                                               ; preds = %60
  tail call void @sdrawline(i32 noundef %51, i32 noundef %54, i32 noundef %53, i32 noundef %54) #11
  br label %63

63:                                               ; preds = %62, %60
  %64 = icmp sgt i16 %39, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %63
  tail call void @sdrawline(i32 noundef %51, i32 noundef %52, i32 noundef %53, i32 noundef %52) #11
  br label %66

66:                                               ; preds = %65, %63
  tail call void @glLineWidth(float noundef 1.000000e+00) #11
  br label %67

67:                                               ; preds = %18, %66
  %68 = load ptr, ptr %19, align 8, !tbaa !34
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %18, !llvm.loop !121

70:                                               ; preds = %67, %1
  %71 = phi ptr [ null, %1 ], [ %27, %67 ]
  %72 = phi ptr [ null, %1 ], [ %30, %67 ]
  %73 = phi ptr [ null, %1 ], [ %33, %67 ]
  %74 = load ptr, ptr %6, align 8, !tbaa !106
  %75 = getelementptr inbounds %struct.bScreen, ptr %74, i64 0, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !34
  %77 = icmp eq ptr %76, null
  br i1 %77, label %113, label %78

78:                                               ; preds = %70
  %79 = add nsw i32 %4, -1
  %80 = add nsw i32 %5, -1
  br label %81

81:                                               ; preds = %78, %110
  %82 = phi ptr [ %76, %78 ], [ %111, %110 ]
  %83 = getelementptr inbounds %struct.ScrArea, ptr %82, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !55
  %85 = getelementptr inbounds %struct.ScrVert, ptr %84, i64 0, i32 3
  %86 = load i16, ptr %85, align 8, !tbaa !50
  %87 = getelementptr inbounds %struct.ScrVert, ptr %84, i64 0, i32 3, i32 1
  %88 = load i16, ptr %87, align 2, !tbaa !51
  %89 = getelementptr inbounds %struct.ScrArea, ptr %82, i64 0, i32 4
  %90 = load ptr, ptr %89, align 8, !tbaa !60
  %91 = getelementptr inbounds %struct.ScrVert, ptr %90, i64 0, i32 3
  %92 = load i16, ptr %91, align 8, !tbaa !50
  %93 = getelementptr inbounds %struct.ScrVert, ptr %90, i64 0, i32 3, i32 1
  %94 = load i16, ptr %93, align 2, !tbaa !51
  tail call void @glColor3ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %95 = sext i16 %86 to i32
  %96 = sext i16 %88 to i32
  %97 = sext i16 %92 to i32
  %98 = sext i16 %94 to i32
  %99 = icmp sgt i32 %79, %97
  br i1 %99, label %100, label %101

100:                                              ; preds = %81
  tail call void @sdrawline(i32 noundef %97, i32 noundef %96, i32 noundef %97, i32 noundef %98) #11
  br label %101

101:                                              ; preds = %100, %81
  %102 = icmp sgt i16 %86, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %101
  tail call void @sdrawline(i32 noundef %95, i32 noundef %96, i32 noundef %95, i32 noundef %98) #11
  br label %104

104:                                              ; preds = %103, %101
  %105 = icmp sgt i32 %80, %98
  br i1 %105, label %106, label %107

106:                                              ; preds = %104
  tail call void @sdrawline(i32 noundef %95, i32 noundef %98, i32 noundef %97, i32 noundef %98) #11
  br label %107

107:                                              ; preds = %106, %104
  %108 = icmp sgt i16 %88, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %107
  tail call void @sdrawline(i32 noundef %95, i32 noundef %96, i32 noundef %97, i32 noundef %96) #11
  br label %110

110:                                              ; preds = %107, %109
  %111 = load ptr, ptr %82, align 8, !tbaa !34
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %81, !llvm.loop !122

113:                                              ; preds = %110, %70
  %114 = icmp ne ptr %71, null
  %115 = icmp ne ptr %72, null
  %116 = select i1 %114, i1 %115, i1 false
  br i1 %116, label %117, label %390

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.ScrArea, ptr %71, i64 0, i32 2
  %119 = load ptr, ptr %118, align 8, !tbaa !55
  %120 = getelementptr inbounds %struct.ScrArea, ptr %71, i64 0, i32 3
  %121 = load ptr, ptr %120, align 8, !tbaa !59
  %122 = getelementptr inbounds %struct.ScrArea, ptr %71, i64 0, i32 4
  %123 = load ptr, ptr %122, align 8, !tbaa !60
  %124 = getelementptr inbounds %struct.ScrArea, ptr %71, i64 0, i32 5
  %125 = load ptr, ptr %124, align 8, !tbaa !61
  %126 = getelementptr inbounds %struct.ScrArea, ptr %72, i64 0, i32 2
  %127 = load ptr, ptr %126, align 8, !tbaa !55
  %128 = getelementptr inbounds %struct.ScrArea, ptr %72, i64 0, i32 3
  %129 = load ptr, ptr %128, align 8, !tbaa !59
  %130 = getelementptr inbounds %struct.ScrArea, ptr %72, i64 0, i32 4
  %131 = load ptr, ptr %130, align 8, !tbaa !60
  %132 = getelementptr inbounds %struct.ScrArea, ptr %72, i64 0, i32 5
  %133 = load ptr, ptr %132, align 8, !tbaa !61
  %134 = icmp eq ptr %119, %133
  %135 = icmp eq ptr %121, %131
  %136 = select i1 %134, i1 %135, i1 false
  br i1 %136, label %150, label %137

137:                                              ; preds = %117
  %138 = icmp eq ptr %121, %127
  %139 = icmp eq ptr %123, %133
  %140 = select i1 %138, i1 %139, i1 false
  br i1 %140, label %150, label %141

141:                                              ; preds = %137
  %142 = icmp eq ptr %123, %129
  %143 = icmp eq ptr %125, %127
  %144 = select i1 %142, i1 %143, i1 false
  br i1 %144, label %150, label %145

145:                                              ; preds = %141
  %146 = icmp eq ptr %119, %129
  %147 = icmp eq ptr %125, %131
  %148 = select i1 %146, i1 %147, i1 false
  %149 = select i1 %148, i32 4, i32 0
  br label %150

150:                                              ; preds = %117, %137, %141, %145
  %151 = phi i32 [ 1, %117 ], [ 2, %137 ], [ 3, %141 ], [ %149, %145 ]
  %152 = shl nuw nsw i32 %151, 3
  %153 = zext nneg i32 %152 to i40
  %154 = lshr i40 504329695999, %153
  %155 = trunc i40 %154 to i8
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #11
  tail call void @glEnable(i32 noundef 3042) #11
  tail call void @glColor4ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 50) #11
  switch i8 %155, label %264 [
    i8 117, label %156
    i8 100, label %156
  ]

156:                                              ; preds = %150, %150
  %157 = icmp eq i32 %151, 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #11
  %158 = getelementptr inbounds %struct.ScrArea, ptr %72, i64 0, i32 4
  %159 = load ptr, ptr %158, align 8, !tbaa !60
  %160 = getelementptr inbounds %struct.ScrVert, ptr %159, i64 0, i32 3
  %161 = load i16, ptr %160, align 8, !tbaa !50
  %162 = sext i16 %161 to i32
  %163 = getelementptr inbounds %struct.ScrArea, ptr %72, i64 0, i32 2
  %164 = load ptr, ptr %163, align 8, !tbaa !55
  %165 = getelementptr inbounds %struct.ScrVert, ptr %164, i64 0, i32 3
  %166 = load i16, ptr %165, align 8, !tbaa !50
  %167 = sext i16 %166 to i32
  %168 = sub nsw i32 %162, %167
  %169 = sitofp i32 %168 to float
  %170 = getelementptr inbounds %struct.ScrVert, ptr %159, i64 0, i32 3, i32 1
  %171 = load i16, ptr %170, align 2, !tbaa !51
  %172 = sext i16 %171 to i32
  %173 = getelementptr inbounds %struct.ScrVert, ptr %164, i64 0, i32 3, i32 1
  %174 = load i16, ptr %173, align 2, !tbaa !51
  %175 = sext i16 %174 to i32
  %176 = sub nsw i32 %172, %175
  %177 = sitofp i32 %176 to float
  %178 = fcmp olt float %177, %169
  %179 = select i1 %178, float %177, float %169
  %180 = fmul float %179, 1.250000e-01
  %181 = fmul float %179, 2.500000e-01
  %182 = sitofp i16 %166 to float
  %183 = fmul float %169, 5.000000e-01
  %184 = fadd float %183, %182
  store float %184, ptr %3, align 16, !tbaa !123
  %185 = sitofp i16 %171 to float
  %186 = getelementptr inbounds %struct.vec2f, ptr %3, i64 0, i32 1
  store float %185, ptr %186, align 4, !tbaa !125
  %187 = getelementptr inbounds %struct.ScrArea, ptr %72, i64 0, i32 3
  %188 = load ptr, ptr %187, align 8, !tbaa !59
  %189 = getelementptr inbounds %struct.ScrVert, ptr %188, i64 0, i32 3
  %190 = load i16, ptr %189, align 8, !tbaa !50
  %191 = sitofp i16 %190 to float
  %192 = getelementptr inbounds [10 x %struct.vec2f], ptr %3, i64 0, i64 1
  store float %191, ptr %192, align 8, !tbaa !123
  %193 = getelementptr inbounds %struct.ScrVert, ptr %188, i64 0, i32 3, i32 1
  %194 = load i16, ptr %193, align 2, !tbaa !51
  %195 = sitofp i16 %194 to float
  %196 = getelementptr inbounds [10 x %struct.vec2f], ptr %3, i64 0, i64 1, i32 1
  store float %195, ptr %196, align 4, !tbaa !125
  %197 = getelementptr inbounds [10 x %struct.vec2f], ptr %3, i64 0, i64 2
  store float %182, ptr %197, align 16, !tbaa !123
  %198 = sitofp i16 %174 to float
  %199 = fadd float %181, %198
  %200 = getelementptr inbounds [10 x %struct.vec2f], ptr %3, i64 0, i64 2, i32 1
  store float %199, ptr %200, align 4, !tbaa !125
  %201 = tail call float @llvm.fmuladd.f32(float %180, float -2.000000e+00, float %184)
  %202 = getelementptr inbounds [10 x %struct.vec2f], ptr %3, i64 0, i64 3
  store float %201, ptr %202, align 8, !tbaa !123
  %203 = getelementptr inbounds [10 x %struct.vec2f], ptr %3, i64 0, i64 3, i32 1
  store float %199, ptr %203, align 4, !tbaa !125
  %204 = getelementptr inbounds [10 x %struct.vec2f], ptr %3, i64 0, i64 4
  store float %184, ptr %204, align 16, !tbaa !123
  %205 = tail call float @llvm.fmuladd.f32(float %181, float 2.000000e+00, float %198)
  %206 = getelementptr inbounds [10 x %struct.vec2f], ptr %3, i64 0, i64 4, i32 1
  store float %205, ptr %206, align 4, !tbaa !125
  %207 = tail call float @llvm.fmuladd.f32(float %180, float 2.000000e+00, float %184)
  %208 = getelementptr inbounds [10 x %struct.vec2f], ptr %3, i64 0, i64 5
  store float %207, ptr %208, align 8, !tbaa !123
  %209 = getelementptr inbounds [10 x %struct.vec2f], ptr %3, i64 0, i64 5, i32 1
  store float %199, ptr %209, align 4, !tbaa !125
  %210 = getelementptr inbounds %struct.ScrArea, ptr %72, i64 0, i32 5
  %211 = load ptr, ptr %210, align 8, !tbaa !61
  %212 = getelementptr inbounds %struct.ScrVert, ptr %211, i64 0, i32 3
  %213 = load i16, ptr %212, align 8, !tbaa !50
  %214 = sitofp i16 %213 to float
  %215 = getelementptr inbounds [10 x %struct.vec2f], ptr %3, i64 0, i64 6
  store float %214, ptr %215, align 16, !tbaa !123
  %216 = getelementptr inbounds %struct.ScrVert, ptr %211, i64 0, i32 3, i32 1
  %217 = load i16, ptr %216, align 2, !tbaa !51
  %218 = sitofp i16 %217 to float
  %219 = fadd float %181, %218
  %220 = getelementptr inbounds [10 x %struct.vec2f], ptr %3, i64 0, i64 6, i32 1
  store float %219, ptr %220, align 4, !tbaa !125
  %221 = sitofp i16 %161 to float
  %222 = getelementptr inbounds [10 x %struct.vec2f], ptr %3, i64 0, i64 7
  store float %221, ptr %222, align 8, !tbaa !123
  %223 = getelementptr inbounds [10 x %struct.vec2f], ptr %3, i64 0, i64 7, i32 1
  store float %185, ptr %223, align 4, !tbaa !125
  %224 = fsub float %184, %180
  %225 = getelementptr inbounds [10 x %struct.vec2f], ptr %3, i64 0, i64 8
  store float %224, ptr %225, align 16, !tbaa !123
  %226 = getelementptr inbounds [10 x %struct.vec2f], ptr %3, i64 0, i64 8, i32 1
  store float %198, ptr %226, align 4, !tbaa !125
  %227 = fadd float %184, %180
  %228 = getelementptr inbounds [10 x %struct.vec2f], ptr %3, i64 0, i64 9
  store float %227, ptr %228, align 8, !tbaa !123
  %229 = getelementptr inbounds [10 x %struct.vec2f], ptr %3, i64 0, i64 9, i32 1
  store float %198, ptr %229, align 4, !tbaa !125
  br i1 %157, label %230, label %240

230:                                              ; preds = %156
  %231 = fadd float %198, %177
  br label %232

232:                                              ; preds = %230, %232
  %233 = phi i64 [ 0, %230 ], [ %238, %232 ]
  %234 = getelementptr inbounds [10 x %struct.vec2f], ptr %3, i64 0, i64 %233, i32 1
  %235 = load float, ptr %234, align 4, !tbaa !125
  %236 = fsub float %231, %235
  %237 = fadd float %236, %198
  store float %237, ptr %234, align 4, !tbaa !125
  %238 = add nuw nsw i64 %233, 1
  %239 = icmp eq i64 %238, 10
  br i1 %239, label %240, label %232, !llvm.loop !126

240:                                              ; preds = %232, %156
  tail call void @glBegin(i32 noundef 9) #11
  br label %241

241:                                              ; preds = %240, %241
  %242 = phi i64 [ 0, %240 ], [ %247, %241 ]
  %243 = getelementptr inbounds [10 x %struct.vec2f], ptr %3, i64 0, i64 %242
  %244 = load float, ptr %243, align 8, !tbaa !123
  %245 = getelementptr inbounds [10 x %struct.vec2f], ptr %3, i64 0, i64 %242, i32 1
  %246 = load float, ptr %245, align 4, !tbaa !125
  tail call void @glVertex2f(float noundef %244, float noundef %246) #11
  %247 = add nuw nsw i64 %242, 1
  %248 = icmp eq i64 %247, 5
  br i1 %248, label %249, label %241, !llvm.loop !127

249:                                              ; preds = %241
  tail call void @glEnd() #11
  tail call void @glBegin(i32 noundef 9) #11
  br label %250

250:                                              ; preds = %249, %250
  %251 = phi i64 [ 4, %249 ], [ %256, %250 ]
  %252 = getelementptr inbounds [10 x %struct.vec2f], ptr %3, i64 0, i64 %251
  %253 = load float, ptr %252, align 8, !tbaa !123
  %254 = getelementptr inbounds [10 x %struct.vec2f], ptr %3, i64 0, i64 %251, i32 1
  %255 = load float, ptr %254, align 4, !tbaa !125
  tail call void @glVertex2f(float noundef %253, float noundef %255) #11
  %256 = add nuw nsw i64 %251, 1
  %257 = icmp eq i64 %256, 8
  br i1 %257, label %258, label %250, !llvm.loop !128

258:                                              ; preds = %250
  %259 = load float, ptr %186, align 4, !tbaa !125
  tail call void @glVertex2f(float noundef %184, float noundef %259) #11
  tail call void @glEnd() #11
  %260 = load float, ptr %200, align 4, !tbaa !125
  %261 = load float, ptr %226, align 4, !tbaa !125
  tail call void @glRectf(float noundef %182, float noundef %260, float noundef %224, float noundef %261) #11
  %262 = load float, ptr %220, align 4, !tbaa !125
  %263 = load float, ptr %229, align 4, !tbaa !125
  tail call void @glRectf(float noundef %214, float noundef %262, float noundef %227, float noundef %263) #11
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #11
  br label %373

264:                                              ; preds = %150
  %265 = icmp eq i32 %151, 3
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %2) #11
  %266 = getelementptr inbounds %struct.ScrArea, ptr %72, i64 0, i32 4
  %267 = load ptr, ptr %266, align 8, !tbaa !60
  %268 = getelementptr inbounds %struct.ScrVert, ptr %267, i64 0, i32 3
  %269 = load i16, ptr %268, align 8, !tbaa !50
  %270 = sext i16 %269 to i32
  %271 = getelementptr inbounds %struct.ScrArea, ptr %72, i64 0, i32 2
  %272 = load ptr, ptr %271, align 8, !tbaa !55
  %273 = getelementptr inbounds %struct.ScrVert, ptr %272, i64 0, i32 3
  %274 = load i16, ptr %273, align 8, !tbaa !50
  %275 = sext i16 %274 to i32
  %276 = sub nsw i32 %270, %275
  %277 = sitofp i32 %276 to float
  %278 = getelementptr inbounds %struct.ScrVert, ptr %267, i64 0, i32 3, i32 1
  %279 = load i16, ptr %278, align 2, !tbaa !51
  %280 = sext i16 %279 to i32
  %281 = getelementptr inbounds %struct.ScrVert, ptr %272, i64 0, i32 3, i32 1
  %282 = load i16, ptr %281, align 2, !tbaa !51
  %283 = sext i16 %282 to i32
  %284 = sub nsw i32 %280, %283
  %285 = sitofp i32 %284 to float
  %286 = fcmp olt float %285, %277
  %287 = select i1 %286, float %285, float %277
  %288 = fmul float %287, 2.500000e-01
  %289 = fmul float %287, 1.250000e-01
  %290 = sitofp i16 %274 to float
  store float %290, ptr %2, align 16, !tbaa !123
  %291 = sitofp i16 %282 to float
  %292 = fmul float %285, 5.000000e-01
  %293 = fadd float %292, %291
  %294 = getelementptr inbounds %struct.vec2f, ptr %2, i64 0, i32 1
  store float %293, ptr %294, align 4, !tbaa !125
  %295 = getelementptr inbounds [10 x %struct.vec2f], ptr %2, i64 0, i64 1
  store float %290, ptr %295, align 8, !tbaa !123
  %296 = getelementptr inbounds [10 x %struct.vec2f], ptr %2, i64 0, i64 1, i32 1
  store float %291, ptr %296, align 4, !tbaa !125
  %297 = getelementptr inbounds %struct.ScrArea, ptr %72, i64 0, i32 5
  %298 = load ptr, ptr %297, align 8, !tbaa !61
  %299 = getelementptr inbounds %struct.ScrVert, ptr %298, i64 0, i32 3
  %300 = load i16, ptr %299, align 8, !tbaa !50
  %301 = sitofp i16 %300 to float
  %302 = fsub float %301, %288
  %303 = getelementptr inbounds [10 x %struct.vec2f], ptr %2, i64 0, i64 2
  store float %302, ptr %303, align 16, !tbaa !123
  %304 = getelementptr inbounds %struct.ScrVert, ptr %298, i64 0, i32 3, i32 1
  %305 = load i16, ptr %304, align 2, !tbaa !51
  %306 = sitofp i16 %305 to float
  %307 = getelementptr inbounds [10 x %struct.vec2f], ptr %2, i64 0, i64 2, i32 1
  store float %306, ptr %307, align 4, !tbaa !125
  %308 = getelementptr inbounds [10 x %struct.vec2f], ptr %2, i64 0, i64 3
  store float %302, ptr %308, align 8, !tbaa !123
  %309 = fadd float %292, %306
  %310 = tail call float @llvm.fmuladd.f32(float %289, float -2.000000e+00, float %309)
  %311 = getelementptr inbounds [10 x %struct.vec2f], ptr %2, i64 0, i64 3, i32 1
  store float %310, ptr %311, align 4, !tbaa !125
  %312 = tail call float @llvm.fmuladd.f32(float %288, float -2.000000e+00, float %301)
  %313 = getelementptr inbounds [10 x %struct.vec2f], ptr %2, i64 0, i64 4
  store float %312, ptr %313, align 16, !tbaa !123
  %314 = getelementptr inbounds [10 x %struct.vec2f], ptr %2, i64 0, i64 4, i32 1
  store float %309, ptr %314, align 4, !tbaa !125
  %315 = getelementptr inbounds [10 x %struct.vec2f], ptr %2, i64 0, i64 5
  store float %302, ptr %315, align 8, !tbaa !123
  %316 = tail call float @llvm.fmuladd.f32(float %289, float 2.000000e+00, float %309)
  %317 = getelementptr inbounds [10 x %struct.vec2f], ptr %2, i64 0, i64 5, i32 1
  store float %316, ptr %317, align 4, !tbaa !125
  %318 = sitofp i16 %269 to float
  %319 = fsub float %318, %288
  %320 = getelementptr inbounds [10 x %struct.vec2f], ptr %2, i64 0, i64 6
  store float %319, ptr %320, align 16, !tbaa !123
  %321 = sitofp i16 %279 to float
  %322 = getelementptr inbounds [10 x %struct.vec2f], ptr %2, i64 0, i64 6, i32 1
  store float %321, ptr %322, align 4, !tbaa !125
  %323 = getelementptr inbounds %struct.ScrArea, ptr %72, i64 0, i32 3
  %324 = load ptr, ptr %323, align 8, !tbaa !59
  %325 = getelementptr inbounds %struct.ScrVert, ptr %324, i64 0, i32 3
  %326 = load i16, ptr %325, align 8, !tbaa !50
  %327 = sitofp i16 %326 to float
  %328 = getelementptr inbounds [10 x %struct.vec2f], ptr %2, i64 0, i64 7
  store float %327, ptr %328, align 8, !tbaa !123
  %329 = getelementptr inbounds %struct.ScrVert, ptr %324, i64 0, i32 3, i32 1
  %330 = load i16, ptr %329, align 2, !tbaa !51
  %331 = sitofp i16 %330 to float
  %332 = getelementptr inbounds [10 x %struct.vec2f], ptr %2, i64 0, i64 7, i32 1
  store float %331, ptr %332, align 4, !tbaa !125
  %333 = getelementptr inbounds [10 x %struct.vec2f], ptr %2, i64 0, i64 8
  store float %301, ptr %333, align 16, !tbaa !123
  %334 = fsub float %309, %289
  %335 = getelementptr inbounds [10 x %struct.vec2f], ptr %2, i64 0, i64 8, i32 1
  store float %334, ptr %335, align 4, !tbaa !125
  %336 = getelementptr inbounds [10 x %struct.vec2f], ptr %2, i64 0, i64 9
  store float %301, ptr %336, align 8, !tbaa !123
  %337 = fadd float %289, %309
  %338 = getelementptr inbounds [10 x %struct.vec2f], ptr %2, i64 0, i64 9, i32 1
  store float %337, ptr %338, align 4, !tbaa !125
  br i1 %265, label %339, label %349

339:                                              ; preds = %264
  %340 = fadd float %290, %277
  br label %341

341:                                              ; preds = %339, %341
  %342 = phi i64 [ 0, %339 ], [ %347, %341 ]
  %343 = getelementptr inbounds [10 x %struct.vec2f], ptr %2, i64 0, i64 %342
  %344 = load float, ptr %343, align 8, !tbaa !123
  %345 = fsub float %340, %344
  %346 = fadd float %345, %290
  store float %346, ptr %343, align 8, !tbaa !123
  %347 = add nuw nsw i64 %342, 1
  %348 = icmp eq i64 %347, 10
  br i1 %348, label %349, label %341, !llvm.loop !129

349:                                              ; preds = %341, %264
  tail call void @glBegin(i32 noundef 9) #11
  br label %350

350:                                              ; preds = %349, %350
  %351 = phi i64 [ 0, %349 ], [ %356, %350 ]
  %352 = getelementptr inbounds [10 x %struct.vec2f], ptr %2, i64 0, i64 %351
  %353 = load float, ptr %352, align 8, !tbaa !123
  %354 = getelementptr inbounds [10 x %struct.vec2f], ptr %2, i64 0, i64 %351, i32 1
  %355 = load float, ptr %354, align 4, !tbaa !125
  tail call void @glVertex2f(float noundef %353, float noundef %355) #11
  %356 = add nuw nsw i64 %351, 1
  %357 = icmp eq i64 %356, 5
  br i1 %357, label %358, label %350, !llvm.loop !130

358:                                              ; preds = %350
  tail call void @glEnd() #11
  tail call void @glBegin(i32 noundef 9) #11
  br label %359

359:                                              ; preds = %358, %359
  %360 = phi i64 [ 4, %358 ], [ %365, %359 ]
  %361 = getelementptr inbounds [10 x %struct.vec2f], ptr %2, i64 0, i64 %360
  %362 = load float, ptr %361, align 8, !tbaa !123
  %363 = getelementptr inbounds [10 x %struct.vec2f], ptr %2, i64 0, i64 %360, i32 1
  %364 = load float, ptr %363, align 4, !tbaa !125
  tail call void @glVertex2f(float noundef %362, float noundef %364) #11
  %365 = add nuw nsw i64 %360, 1
  %366 = icmp eq i64 %365, 8
  br i1 %366, label %367, label %359, !llvm.loop !131

367:                                              ; preds = %359
  %368 = load float, ptr %2, align 16, !tbaa !123
  tail call void @glVertex2f(float noundef %368, float noundef %293) #11
  tail call void @glEnd() #11
  %369 = load float, ptr %303, align 16, !tbaa !123
  %370 = load float, ptr %333, align 16, !tbaa !123
  tail call void @glRectf(float noundef %369, float noundef %306, float noundef %370, float noundef %334) #11
  %371 = load float, ptr %320, align 16, !tbaa !123
  %372 = load float, ptr %336, align 8, !tbaa !123
  tail call void @glRectf(float noundef %371, float noundef %321, float noundef %372, float noundef %337) #11
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %2) #11
  br label %373

373:                                              ; preds = %258, %367
  tail call void @glDisable(i32 noundef 3042) #11
  tail call void @glBlendFunc(i32 noundef 774, i32 noundef 770) #11
  tail call void @glEnable(i32 noundef 3042) #11
  tail call void @glColor4ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext 50) #11
  %374 = getelementptr inbounds %struct.ScrArea, ptr %71, i64 0, i32 2
  %375 = load ptr, ptr %374, align 8, !tbaa !55
  %376 = getelementptr inbounds %struct.ScrVert, ptr %375, i64 0, i32 3
  %377 = load i16, ptr %376, align 8, !tbaa !50
  %378 = sext i16 %377 to i32
  %379 = getelementptr inbounds %struct.ScrVert, ptr %375, i64 0, i32 3, i32 1
  %380 = load i16, ptr %379, align 2, !tbaa !51
  %381 = sext i16 %380 to i32
  %382 = getelementptr inbounds %struct.ScrArea, ptr %71, i64 0, i32 4
  %383 = load ptr, ptr %382, align 8, !tbaa !60
  %384 = getelementptr inbounds %struct.ScrVert, ptr %383, i64 0, i32 3
  %385 = load i16, ptr %384, align 8, !tbaa !50
  %386 = sext i16 %385 to i32
  %387 = getelementptr inbounds %struct.ScrVert, ptr %383, i64 0, i32 3, i32 1
  %388 = load i16, ptr %387, align 2, !tbaa !51
  %389 = sext i16 %388 to i32
  tail call void @glRecti(i32 noundef %378, i32 noundef %381, i32 noundef %386, i32 noundef %389) #11
  tail call void @glDisable(i32 noundef 3042) #11
  br label %390

390:                                              ; preds = %373, %113
  %391 = icmp eq ptr %73, null
  br i1 %391, label %428, label %392

392:                                              ; preds = %390
  tail call void @glEnable(i32 noundef 3042) #11
  tail call void @glColor4ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext 100) #11
  %393 = getelementptr inbounds %struct.ScrArea, ptr %73, i64 0, i32 14
  %394 = load i16, ptr %393, align 2, !tbaa !94
  %395 = and i16 %394, 16
  %396 = icmp eq i16 %395, 0
  br i1 %396, label %412, label %397

397:                                              ; preds = %392
  %398 = getelementptr inbounds %struct.ScrArea, ptr %73, i64 0, i32 7
  %399 = load i32, ptr %398, align 8, !tbaa !132
  %400 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 21
  %401 = load ptr, ptr %400, align 8, !tbaa !133
  %402 = getelementptr inbounds %struct.wmEvent, ptr %401, i64 0, i32 5
  %403 = load i32, ptr %402, align 8, !tbaa !134
  %404 = getelementptr inbounds %struct.ScrArea, ptr %73, i64 0, i32 7, i32 1
  %405 = load i32, ptr %404, align 4, !tbaa !137
  tail call void @sdrawline(i32 noundef %399, i32 noundef %403, i32 noundef %405, i32 noundef %403) #11
  tail call void @glColor4ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 100) #11
  %406 = load i32, ptr %398, align 8, !tbaa !132
  %407 = load ptr, ptr %400, align 8, !tbaa !133
  %408 = getelementptr inbounds %struct.wmEvent, ptr %407, i64 0, i32 5
  %409 = load i32, ptr %408, align 8, !tbaa !134
  %410 = add nsw i32 %409, 1
  %411 = load i32, ptr %404, align 4, !tbaa !137
  tail call void @sdrawline(i32 noundef %406, i32 noundef %410, i32 noundef %411, i32 noundef %410) #11
  br label %427

412:                                              ; preds = %392
  %413 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 21
  %414 = load ptr, ptr %413, align 8, !tbaa !133
  %415 = getelementptr inbounds %struct.wmEvent, ptr %414, i64 0, i32 4
  %416 = load i32, ptr %415, align 4, !tbaa !138
  %417 = getelementptr inbounds %struct.ScrArea, ptr %73, i64 0, i32 7, i32 2
  %418 = load i32, ptr %417, align 8, !tbaa !139
  %419 = getelementptr inbounds %struct.ScrArea, ptr %73, i64 0, i32 7, i32 3
  %420 = load i32, ptr %419, align 4, !tbaa !140
  tail call void @sdrawline(i32 noundef %416, i32 noundef %418, i32 noundef %416, i32 noundef %420) #11
  tail call void @glColor4ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 100) #11
  %421 = load ptr, ptr %413, align 8, !tbaa !133
  %422 = getelementptr inbounds %struct.wmEvent, ptr %421, i64 0, i32 4
  %423 = load i32, ptr %422, align 4, !tbaa !138
  %424 = add nsw i32 %423, 1
  %425 = load i32, ptr %417, align 8, !tbaa !139
  %426 = load i32, ptr %419, align 4, !tbaa !140
  tail call void @sdrawline(i32 noundef %424, i32 noundef %425, i32 noundef %424, i32 noundef %426) #11
  br label %427

427:                                              ; preds = %412, %397
  tail call void @glDisable(i32 noundef 3042) #11
  br label %428

428:                                              ; preds = %427, %390
  %429 = load ptr, ptr %6, align 8, !tbaa !106
  %430 = getelementptr inbounds %struct.bScreen, ptr %429, i64 0, i32 12
  store i16 0, ptr %430, align 2, !tbaa !107
  ret void
}

declare void @wmSubWindowSet(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @glEnable(i32 noundef) local_unnamed_addr #3

declare void @glColor4ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

declare void @sdrawline(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @glDisable(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @ED_screen_refresh(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = alloca [2 x float], align 4
  %4 = alloca [2 x float], align 4
  %5 = alloca [2 x float], align 4
  %6 = alloca %struct.rcti, align 4
  %7 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !141
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %579

9:                                                ; preds = %2
  %10 = tail call i32 @WM_window_pixels_x(ptr noundef %1) #11
  %11 = tail call i32 @WM_window_pixels_y(ptr noundef %1) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  store i32 0, ptr %6, align 4, !tbaa !142
  %12 = add nsw i32 %10, -1
  %13 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 1
  store i32 %12, ptr %13, align 4, !tbaa !143
  %14 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 2
  store i32 0, ptr %14, align 4, !tbaa !144
  %15 = add nsw i32 %11, -1
  %16 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 3
  store i32 %15, ptr %16, align 4, !tbaa !145
  %17 = tail call ptr @BKE_spacetypes_list() #11
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  %19 = icmp eq ptr %18, null
  br i1 %19, label %30, label %20

20:                                               ; preds = %9, %27
  %21 = phi ptr [ %28, %27 ], [ %18, %9 ]
  %22 = tail call ptr @BKE_regiontype_from_id(ptr noundef nonnull %21, i32 noundef 1) #11
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = tail call i32 @ED_area_headersize() #11
  %26 = getelementptr inbounds %struct.ARegionType, ptr %22, i64 0, i32 19
  store i32 %25, ptr %26, align 4, !tbaa !146
  br label %27

27:                                               ; preds = %24, %20
  %28 = load ptr, ptr %21, align 8, !tbaa !34
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %20, !llvm.loop !147

30:                                               ; preds = %27, %9
  %31 = getelementptr inbounds %struct.wmWindow, ptr %1, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !106
  %33 = tail call i32 @ED_area_headersize() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %34 = getelementptr inbounds [2 x float], ptr %3, i64 0, i64 1
  store float 2.000000e+04, ptr %34, align 4, !tbaa !148
  store float 2.000000e+04, ptr %3, align 4, !tbaa !148
  %35 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  store float 0.000000e+00, ptr %35, align 4, !tbaa !148
  store float 0.000000e+00, ptr %4, align 4, !tbaa !148
  %36 = getelementptr inbounds %struct.bScreen, ptr %32, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !34
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %30
  %40 = getelementptr inbounds float, ptr %5, i64 1
  br label %47

41:                                               ; preds = %47, %30
  %42 = load ptr, ptr %36, align 8, !tbaa !34
  %43 = icmp eq ptr %42, null
  br i1 %43, label %71, label %44

44:                                               ; preds = %41
  %45 = load float, ptr %3, align 4, !tbaa !148
  %46 = load float, ptr %34, align 4, !tbaa !148
  br label %57

47:                                               ; preds = %39, %47
  %48 = phi ptr [ %37, %39 ], [ %55, %47 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  %49 = getelementptr inbounds %struct.ScrVert, ptr %48, i64 0, i32 3
  %50 = load i16, ptr %49, align 8, !tbaa !50
  %51 = sitofp i16 %50 to float
  store float %51, ptr %5, align 4, !tbaa !148
  %52 = getelementptr inbounds %struct.ScrVert, ptr %48, i64 0, i32 3, i32 1
  %53 = load i16, ptr %52, align 2, !tbaa !51
  %54 = sitofp i16 %53 to float
  store float %54, ptr %40, align 4, !tbaa !148
  call void @minmax_v2v2_v2(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  %55 = load ptr, ptr %48, align 8, !tbaa !34
  %56 = icmp eq ptr %55, null
  br i1 %56, label %41, label %47, !llvm.loop !149

57:                                               ; preds = %44, %57
  %58 = phi ptr [ %42, %44 ], [ %69, %57 ]
  %59 = getelementptr inbounds %struct.ScrVert, ptr %58, i64 0, i32 3
  %60 = load i16, ptr %59, align 8, !tbaa !50
  %61 = sitofp i16 %60 to float
  %62 = fsub float %61, %45
  %63 = fptosi float %62 to i16
  store i16 %63, ptr %59, align 8, !tbaa !50
  %64 = getelementptr inbounds %struct.ScrVert, ptr %58, i64 0, i32 3, i32 1
  %65 = load i16, ptr %64, align 2, !tbaa !51
  %66 = sitofp i16 %65 to float
  %67 = fsub float %66, %46
  %68 = fptosi float %67 to i16
  store i16 %68, ptr %64, align 2, !tbaa !51
  %69 = load ptr, ptr %58, align 8, !tbaa !34
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %57, !llvm.loop !150

71:                                               ; preds = %57, %41
  %72 = load float, ptr %4, align 4, !tbaa !148
  %73 = load float, ptr %3, align 4, !tbaa !148
  %74 = fsub float %72, %73
  %75 = fadd float %74, 1.000000e+00
  %76 = fptosi float %75 to i32
  %77 = load float, ptr %35, align 4, !tbaa !148
  %78 = load float, ptr %34, align 4, !tbaa !148
  %79 = fsub float %77, %78
  %80 = fadd float %79, 1.000000e+00
  %81 = fptosi float %80 to i32
  %82 = icmp sgt i32 %11, %81
  br i1 %82, label %83, label %124

83:                                               ; preds = %71
  %84 = add nsw i32 %33, 4
  %85 = getelementptr inbounds %struct.bScreen, ptr %32, i64 0, i32 3
  %86 = load ptr, ptr %85, align 8, !tbaa !34
  %87 = icmp eq ptr %86, null
  br i1 %87, label %124, label %88

88:                                               ; preds = %83
  %89 = add nsw i32 %81, -1
  br label %90

90:                                               ; preds = %88, %121
  %91 = phi ptr [ %86, %88 ], [ %122, %121 ]
  %92 = call ptr @BKE_area_find_region_type(ptr noundef nonnull %91, i32 noundef 1) #11
  %93 = getelementptr inbounds %struct.ScrArea, ptr %91, i64 0, i32 16
  store i8 0, ptr %93, align 2, !tbaa !151
  %94 = icmp eq ptr %92, null
  br i1 %94, label %121, label %95

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.ARegion, ptr %92, i64 0, i32 10
  %97 = load i16, ptr %96, align 2, !tbaa !152
  %98 = and i16 %97, 1
  %99 = icmp eq i16 %98, 0
  br i1 %99, label %100, label %121

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.ScrArea, ptr %91, i64 0, i32 3
  %102 = load ptr, ptr %101, align 8, !tbaa !59
  %103 = getelementptr inbounds %struct.ScrVert, ptr %102, i64 0, i32 3, i32 1
  %104 = load i16, ptr %103, align 2, !tbaa !51
  %105 = sext i16 %104 to i32
  %106 = icmp eq i32 %89, %105
  %107 = getelementptr inbounds %struct.ScrArea, ptr %91, i64 0, i32 2
  %108 = load ptr, ptr %107, align 8, !tbaa !55
  %109 = getelementptr inbounds %struct.ScrVert, ptr %108, i64 0, i32 3, i32 1
  %110 = load i16, ptr %109, align 2, !tbaa !51
  br i1 %106, label %111, label %115

111:                                              ; preds = %100
  %112 = sext i16 %110 to i32
  %113 = sub nsw i32 %105, %112
  %114 = icmp slt i32 %113, %84
  br i1 %114, label %119, label %121

115:                                              ; preds = %100
  %116 = icmp eq i16 %110, 0
  %117 = icmp sgt i32 %84, %105
  %118 = select i1 %116, i1 %117, i1 false
  br i1 %118, label %119, label %121

119:                                              ; preds = %115, %111
  %120 = phi i8 [ 2, %111 ], [ 1, %115 ]
  store i8 %120, ptr %93, align 2, !tbaa !151
  br label %121

121:                                              ; preds = %119, %115, %111, %95, %90
  %122 = load ptr, ptr %91, align 8, !tbaa !34
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %90, !llvm.loop !153

124:                                              ; preds = %121, %83, %71
  %125 = icmp eq i32 %10, %76
  %126 = icmp eq i32 %11, %81
  %127 = and i1 %125, %126
  br i1 %127, label %176, label %128

128:                                              ; preds = %124
  %129 = sitofp i32 %10 to float
  %130 = fadd float %129, -1.000000e+00
  %131 = sitofp i32 %76 to float
  %132 = fadd float %131, -1.000000e+00
  %133 = fdiv float %130, %132
  %134 = sitofp i32 %11 to float
  %135 = fadd float %134, -1.000000e+00
  %136 = sitofp i32 %81 to float
  %137 = fadd float %136, -1.000000e+00
  %138 = fdiv float %135, %137
  %139 = load ptr, ptr %36, align 8, !tbaa !34
  %140 = icmp eq ptr %139, null
  br i1 %140, label %176, label %141

141:                                              ; preds = %128
  %142 = trunc i32 %10 to i16
  %143 = add i16 %142, -1
  %144 = trunc i32 %11 to i16
  %145 = add i16 %144, -1
  br label %146

146:                                              ; preds = %141, %173
  %147 = phi ptr [ %139, %141 ], [ %174, %173 ]
  %148 = getelementptr inbounds %struct.ScrVert, ptr %147, i64 0, i32 3
  %149 = load i16, ptr %148, align 8, !tbaa !50
  %150 = sitofp i16 %149 to float
  %151 = fmul float %133, %150
  %152 = fadd float %151, 5.000000e-01
  %153 = fptosi float %152 to i16
  store i16 %153, ptr %148, align 8, !tbaa !50
  %154 = icmp slt i16 %153, 0
  br i1 %154, label %158, label %155

155:                                              ; preds = %146
  %156 = zext nneg i16 %153 to i32
  %157 = icmp sgt i32 %10, %156
  br i1 %157, label %160, label %158

158:                                              ; preds = %155, %146
  %159 = phi i16 [ 0, %146 ], [ %143, %155 ]
  store i16 %159, ptr %148, align 8, !tbaa !50
  br label %160

160:                                              ; preds = %158, %155
  %161 = getelementptr inbounds %struct.ScrVert, ptr %147, i64 0, i32 3, i32 1
  %162 = load i16, ptr %161, align 2, !tbaa !51
  %163 = sitofp i16 %162 to float
  %164 = fmul float %138, %163
  %165 = fadd float %164, 5.000000e-01
  %166 = fptosi float %165 to i16
  store i16 %166, ptr %161, align 2, !tbaa !51
  %167 = icmp slt i16 %166, 0
  br i1 %167, label %171, label %168

168:                                              ; preds = %160
  %169 = zext nneg i16 %166 to i32
  %170 = icmp sgt i32 %11, %169
  br i1 %170, label %173, label %171

171:                                              ; preds = %168, %160
  %172 = phi i16 [ 0, %160 ], [ %145, %168 ]
  store i16 %172, ptr %161, align 2, !tbaa !51
  br label %173

173:                                              ; preds = %171, %168
  %174 = load ptr, ptr %147, align 8, !tbaa !34
  %175 = icmp eq ptr %174, null
  br i1 %175, label %176, label %146, !llvm.loop !154

176:                                              ; preds = %173, %128, %124
  br i1 %82, label %177, label %406

177:                                              ; preds = %176
  %178 = getelementptr inbounds %struct.bScreen, ptr %32, i64 0, i32 3
  %179 = load ptr, ptr %178, align 8, !tbaa !34
  %180 = icmp eq ptr %179, null
  br i1 %180, label %406, label %181

181:                                              ; preds = %177
  %182 = getelementptr inbounds %struct.bScreen, ptr %32, i64 0, i32 2
  %183 = trunc i32 %33 to i16
  %184 = getelementptr inbounds %struct.bScreen, ptr %32, i64 0, i32 2
  %185 = trunc i32 %33 to i16
  br label %186

186:                                              ; preds = %181, %403
  %187 = phi ptr [ %179, %181 ], [ %404, %403 ]
  %188 = getelementptr inbounds %struct.ScrArea, ptr %187, i64 0, i32 16
  %189 = load i8, ptr %188, align 2, !tbaa !151
  %190 = icmp eq i8 %189, 0
  br i1 %190, label %403, label %191

191:                                              ; preds = %186
  %192 = getelementptr inbounds %struct.ScrArea, ptr %187, i64 0, i32 2
  %193 = load ptr, ptr %192, align 8, !tbaa !55
  %194 = getelementptr inbounds %struct.ScrArea, ptr %187, i64 0, i32 3
  %195 = load ptr, ptr %194, align 8, !tbaa !59
  %196 = icmp eq ptr %193, %195
  br i1 %196, label %403, label %197

197:                                              ; preds = %191
  %198 = icmp eq i8 %189, 2
  br i1 %198, label %199, label %301

199:                                              ; preds = %197
  %200 = getelementptr inbounds %struct.ScrVert, ptr %195, i64 0, i32 3, i32 1
  %201 = load i16, ptr %200, align 2, !tbaa !51
  %202 = getelementptr inbounds %struct.ScrArea, ptr %187, i64 0, i32 5
  %203 = load ptr, ptr %202, align 8, !tbaa !61
  %204 = icmp ugt ptr %203, %193
  %205 = select i1 %204, ptr %193, ptr %203
  %206 = select i1 %204, ptr %203, ptr %193
  br label %207

207:                                              ; preds = %217, %199
  %208 = phi ptr [ %184, %199 ], [ %209, %217 ]
  %209 = load ptr, ptr %208, align 8, !tbaa !34, !nonnull !155, !noundef !155
  %210 = getelementptr inbounds %struct.ScrEdge, ptr %209, i64 0, i32 2
  %211 = load ptr, ptr %210, align 8, !tbaa !38
  %212 = icmp eq ptr %211, %205
  br i1 %212, label %213, label %217

213:                                              ; preds = %207
  %214 = getelementptr inbounds %struct.ScrEdge, ptr %209, i64 0, i32 3
  %215 = load ptr, ptr %214, align 8, !tbaa !42
  %216 = icmp eq ptr %215, %206
  br i1 %216, label %218, label %217

217:                                              ; preds = %213, %207
  br label %207, !llvm.loop !43

218:                                              ; preds = %213
  %219 = getelementptr inbounds %struct.ScrEdge, ptr %209, i64 0, i32 2
  %220 = load ptr, ptr %219, align 8, !tbaa !38
  %221 = getelementptr inbounds %struct.ScrVert, ptr %220, i64 0, i32 3
  %222 = load i16, ptr %221, align 8, !tbaa !50
  %223 = getelementptr inbounds %struct.ScrEdge, ptr %209, i64 0, i32 3
  %224 = load ptr, ptr %223, align 8, !tbaa !42
  %225 = getelementptr inbounds %struct.ScrVert, ptr %224, i64 0, i32 3
  %226 = load i16, ptr %225, align 8, !tbaa !50
  %227 = icmp eq i16 %222, %226
  %228 = load ptr, ptr %36, align 8, !tbaa !34
  %229 = icmp eq ptr %228, null
  br i1 %229, label %235, label %230

230:                                              ; preds = %218, %230
  %231 = phi ptr [ %233, %230 ], [ %228, %218 ]
  %232 = getelementptr inbounds %struct.ScrVert, ptr %231, i64 0, i32 4
  store i16 0, ptr %232, align 4, !tbaa !67
  %233 = load ptr, ptr %231, align 8, !tbaa !34
  %234 = icmp eq ptr %233, null
  br i1 %234, label %235, label %230, !llvm.loop !95

235:                                              ; preds = %230, %218
  %236 = getelementptr inbounds %struct.ScrVert, ptr %220, i64 0, i32 4
  store i16 1, ptr %236, align 4, !tbaa !67
  %237 = getelementptr inbounds %struct.ScrVert, ptr %224, i64 0, i32 4
  store i16 1, ptr %237, align 4, !tbaa !67
  %238 = load ptr, ptr %184, align 8, !tbaa !34
  %239 = icmp eq ptr %238, null
  br label %249

240:                                              ; preds = %282, %249
  %241 = phi i32 [ 0, %249 ], [ %283, %282 ]
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %249, !llvm.loop !96

243:                                              ; preds = %240
  %244 = load ptr, ptr %36, align 8, !tbaa !34
  %245 = icmp eq ptr %244, null
  br i1 %245, label %403, label %246

246:                                              ; preds = %243
  %247 = getelementptr inbounds %struct.ScrArea, ptr %187, i64 0, i32 4
  %248 = sub i16 %201, %185
  br label %286

249:                                              ; preds = %240, %235
  br i1 %239, label %240, label %250

250:                                              ; preds = %249, %282
  %251 = phi ptr [ %284, %282 ], [ %238, %249 ]
  %252 = phi i32 [ %283, %282 ], [ 0, %249 ]
  %253 = getelementptr inbounds %struct.ScrEdge, ptr %251, i64 0, i32 2
  %254 = load ptr, ptr %253, align 8, !tbaa !38
  %255 = getelementptr inbounds %struct.ScrVert, ptr %254, i64 0, i32 4
  %256 = load i16, ptr %255, align 4, !tbaa !67
  %257 = sext i16 %256 to i32
  %258 = getelementptr inbounds %struct.ScrEdge, ptr %251, i64 0, i32 3
  %259 = load ptr, ptr %258, align 8, !tbaa !42
  %260 = getelementptr inbounds %struct.ScrVert, ptr %259, i64 0, i32 4
  %261 = load i16, ptr %260, align 4, !tbaa !67
  %262 = sext i16 %261 to i32
  %263 = add nsw i32 %262, %257
  %264 = icmp eq i32 %263, 1
  br i1 %264, label %265, label %282

265:                                              ; preds = %250
  br i1 %227, label %273, label %266

266:                                              ; preds = %265
  %267 = getelementptr inbounds %struct.ScrVert, ptr %254, i64 0, i32 3, i32 1
  %268 = load i16, ptr %267, align 2, !tbaa !51
  %269 = getelementptr inbounds %struct.ScrVert, ptr %259, i64 0, i32 3, i32 1
  %270 = load i16, ptr %269, align 2, !tbaa !51
  %271 = icmp eq i16 %268, %270
  br i1 %271, label %272, label %273

272:                                              ; preds = %266
  store i16 1, ptr %260, align 4, !tbaa !67
  store i16 1, ptr %255, align 4, !tbaa !67
  br label %273

273:                                              ; preds = %272, %266, %265
  %274 = phi i32 [ 1, %272 ], [ %252, %266 ], [ %252, %265 ]
  br i1 %227, label %275, label %282

275:                                              ; preds = %273
  %276 = getelementptr inbounds %struct.ScrVert, ptr %254, i64 0, i32 3
  %277 = load i16, ptr %276, align 8, !tbaa !50
  %278 = getelementptr inbounds %struct.ScrVert, ptr %259, i64 0, i32 3
  %279 = load i16, ptr %278, align 8, !tbaa !50
  %280 = icmp eq i16 %277, %279
  br i1 %280, label %281, label %282

281:                                              ; preds = %275
  store i16 1, ptr %260, align 4, !tbaa !67
  store i16 1, ptr %255, align 4, !tbaa !67
  br label %282

282:                                              ; preds = %281, %275, %273, %250
  %283 = phi i32 [ 1, %281 ], [ %274, %275 ], [ %274, %273 ], [ %252, %250 ]
  %284 = load ptr, ptr %251, align 8, !tbaa !34
  %285 = icmp eq ptr %284, null
  br i1 %285, label %240, label %250, !llvm.loop !97

286:                                              ; preds = %246, %298
  %287 = phi ptr [ %244, %246 ], [ %299, %298 ]
  %288 = icmp eq ptr %287, %195
  br i1 %288, label %298, label %289

289:                                              ; preds = %286
  %290 = load ptr, ptr %247, align 8, !tbaa !60
  %291 = icmp eq ptr %287, %290
  br i1 %291, label %298, label %292

292:                                              ; preds = %289
  %293 = getelementptr inbounds %struct.ScrVert, ptr %287, i64 0, i32 4
  %294 = load i16, ptr %293, align 4, !tbaa !67
  %295 = icmp eq i16 %294, 0
  br i1 %295, label %298, label %296

296:                                              ; preds = %292
  %297 = getelementptr inbounds %struct.ScrVert, ptr %287, i64 0, i32 3, i32 1
  store i16 %248, ptr %297, align 2, !tbaa !51
  br label %298

298:                                              ; preds = %296, %292, %289, %286
  %299 = load ptr, ptr %287, align 8, !tbaa !34
  %300 = icmp eq ptr %299, null
  br i1 %300, label %403, label %286, !llvm.loop !156

301:                                              ; preds = %197
  %302 = getelementptr inbounds %struct.ScrVert, ptr %193, i64 0, i32 3, i32 1
  %303 = load i16, ptr %302, align 2, !tbaa !51
  %304 = getelementptr inbounds %struct.ScrArea, ptr %187, i64 0, i32 4
  %305 = load ptr, ptr %304, align 8, !tbaa !60
  %306 = icmp ugt ptr %195, %305
  %307 = select i1 %306, ptr %305, ptr %195
  %308 = select i1 %306, ptr %195, ptr %305
  br label %309

309:                                              ; preds = %319, %301
  %310 = phi ptr [ %182, %301 ], [ %311, %319 ]
  %311 = load ptr, ptr %310, align 8, !tbaa !34, !nonnull !155, !noundef !155
  %312 = getelementptr inbounds %struct.ScrEdge, ptr %311, i64 0, i32 2
  %313 = load ptr, ptr %312, align 8, !tbaa !38
  %314 = icmp eq ptr %313, %307
  br i1 %314, label %315, label %319

315:                                              ; preds = %309
  %316 = getelementptr inbounds %struct.ScrEdge, ptr %311, i64 0, i32 3
  %317 = load ptr, ptr %316, align 8, !tbaa !42
  %318 = icmp eq ptr %317, %308
  br i1 %318, label %320, label %319

319:                                              ; preds = %315, %309
  br label %309, !llvm.loop !43

320:                                              ; preds = %315
  %321 = getelementptr inbounds %struct.ScrEdge, ptr %311, i64 0, i32 2
  %322 = load ptr, ptr %321, align 8, !tbaa !38
  %323 = getelementptr inbounds %struct.ScrVert, ptr %322, i64 0, i32 3
  %324 = load i16, ptr %323, align 8, !tbaa !50
  %325 = getelementptr inbounds %struct.ScrEdge, ptr %311, i64 0, i32 3
  %326 = load ptr, ptr %325, align 8, !tbaa !42
  %327 = getelementptr inbounds %struct.ScrVert, ptr %326, i64 0, i32 3
  %328 = load i16, ptr %327, align 8, !tbaa !50
  %329 = icmp eq i16 %324, %328
  %330 = load ptr, ptr %36, align 8, !tbaa !34
  %331 = icmp eq ptr %330, null
  br i1 %331, label %337, label %332

332:                                              ; preds = %320, %332
  %333 = phi ptr [ %335, %332 ], [ %330, %320 ]
  %334 = getelementptr inbounds %struct.ScrVert, ptr %333, i64 0, i32 4
  store i16 0, ptr %334, align 4, !tbaa !67
  %335 = load ptr, ptr %333, align 8, !tbaa !34
  %336 = icmp eq ptr %335, null
  br i1 %336, label %337, label %332, !llvm.loop !95

337:                                              ; preds = %332, %320
  %338 = getelementptr inbounds %struct.ScrVert, ptr %322, i64 0, i32 4
  store i16 1, ptr %338, align 4, !tbaa !67
  %339 = getelementptr inbounds %struct.ScrVert, ptr %326, i64 0, i32 4
  store i16 1, ptr %339, align 4, !tbaa !67
  %340 = load ptr, ptr %182, align 8, !tbaa !34
  %341 = icmp eq ptr %340, null
  br label %351

342:                                              ; preds = %384, %351
  %343 = phi i32 [ 0, %351 ], [ %385, %384 ]
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %345, label %351, !llvm.loop !96

345:                                              ; preds = %342
  %346 = load ptr, ptr %36, align 8, !tbaa !34
  %347 = icmp eq ptr %346, null
  br i1 %347, label %403, label %348

348:                                              ; preds = %345
  %349 = getelementptr inbounds %struct.ScrArea, ptr %187, i64 0, i32 5
  %350 = add i16 %303, %183
  br label %388

351:                                              ; preds = %342, %337
  br i1 %341, label %342, label %352

352:                                              ; preds = %351, %384
  %353 = phi ptr [ %386, %384 ], [ %340, %351 ]
  %354 = phi i32 [ %385, %384 ], [ 0, %351 ]
  %355 = getelementptr inbounds %struct.ScrEdge, ptr %353, i64 0, i32 2
  %356 = load ptr, ptr %355, align 8, !tbaa !38
  %357 = getelementptr inbounds %struct.ScrVert, ptr %356, i64 0, i32 4
  %358 = load i16, ptr %357, align 4, !tbaa !67
  %359 = sext i16 %358 to i32
  %360 = getelementptr inbounds %struct.ScrEdge, ptr %353, i64 0, i32 3
  %361 = load ptr, ptr %360, align 8, !tbaa !42
  %362 = getelementptr inbounds %struct.ScrVert, ptr %361, i64 0, i32 4
  %363 = load i16, ptr %362, align 4, !tbaa !67
  %364 = sext i16 %363 to i32
  %365 = add nsw i32 %364, %359
  %366 = icmp eq i32 %365, 1
  br i1 %366, label %367, label %384

367:                                              ; preds = %352
  br i1 %329, label %375, label %368

368:                                              ; preds = %367
  %369 = getelementptr inbounds %struct.ScrVert, ptr %356, i64 0, i32 3, i32 1
  %370 = load i16, ptr %369, align 2, !tbaa !51
  %371 = getelementptr inbounds %struct.ScrVert, ptr %361, i64 0, i32 3, i32 1
  %372 = load i16, ptr %371, align 2, !tbaa !51
  %373 = icmp eq i16 %370, %372
  br i1 %373, label %374, label %375

374:                                              ; preds = %368
  store i16 1, ptr %362, align 4, !tbaa !67
  store i16 1, ptr %357, align 4, !tbaa !67
  br label %375

375:                                              ; preds = %374, %368, %367
  %376 = phi i32 [ 1, %374 ], [ %354, %368 ], [ %354, %367 ]
  br i1 %329, label %377, label %384

377:                                              ; preds = %375
  %378 = getelementptr inbounds %struct.ScrVert, ptr %356, i64 0, i32 3
  %379 = load i16, ptr %378, align 8, !tbaa !50
  %380 = getelementptr inbounds %struct.ScrVert, ptr %361, i64 0, i32 3
  %381 = load i16, ptr %380, align 8, !tbaa !50
  %382 = icmp eq i16 %379, %381
  br i1 %382, label %383, label %384

383:                                              ; preds = %377
  store i16 1, ptr %362, align 4, !tbaa !67
  store i16 1, ptr %357, align 4, !tbaa !67
  br label %384

384:                                              ; preds = %383, %377, %375, %352
  %385 = phi i32 [ 1, %383 ], [ %376, %377 ], [ %376, %375 ], [ %354, %352 ]
  %386 = load ptr, ptr %353, align 8, !tbaa !34
  %387 = icmp eq ptr %386, null
  br i1 %387, label %342, label %352, !llvm.loop !97

388:                                              ; preds = %348, %400
  %389 = phi ptr [ %346, %348 ], [ %401, %400 ]
  %390 = icmp eq ptr %389, %193
  br i1 %390, label %400, label %391

391:                                              ; preds = %388
  %392 = load ptr, ptr %349, align 8, !tbaa !61
  %393 = icmp eq ptr %389, %392
  br i1 %393, label %400, label %394

394:                                              ; preds = %391
  %395 = getelementptr inbounds %struct.ScrVert, ptr %389, i64 0, i32 4
  %396 = load i16, ptr %395, align 4, !tbaa !67
  %397 = icmp eq i16 %396, 0
  br i1 %397, label %400, label %398

398:                                              ; preds = %394
  %399 = getelementptr inbounds %struct.ScrVert, ptr %389, i64 0, i32 3, i32 1
  store i16 %350, ptr %399, align 2, !tbaa !51
  br label %400

400:                                              ; preds = %398, %394, %391, %388
  %401 = load ptr, ptr %389, align 8, !tbaa !34
  %402 = icmp eq ptr %401, null
  br i1 %402, label %403, label %388, !llvm.loop !157

403:                                              ; preds = %400, %298, %345, %243, %191, %186
  %404 = load ptr, ptr %187, align 8, !tbaa !34
  %405 = icmp eq ptr %404, null
  br i1 %405, label %406, label %186, !llvm.loop !158

406:                                              ; preds = %403, %177, %176
  %407 = getelementptr inbounds %struct.bScreen, ptr %32, i64 0, i32 3
  %408 = load ptr, ptr %407, align 8, !tbaa !34
  %409 = icmp eq ptr %408, null
  br i1 %409, label %551, label %410

410:                                              ; preds = %406
  %411 = sitofp i32 %33 to float
  %412 = getelementptr inbounds %struct.bScreen, ptr %32, i64 0, i32 2
  br label %413

413:                                              ; preds = %410, %548
  %414 = phi ptr [ %408, %410 ], [ %549, %548 ]
  %415 = getelementptr inbounds %struct.ScrArea, ptr %414, i64 0, i32 2
  %416 = load ptr, ptr %415, align 8, !tbaa !55
  %417 = getelementptr inbounds %struct.ScrVert, ptr %416, i64 0, i32 3, i32 1
  %418 = load i16, ptr %417, align 2, !tbaa !51
  %419 = icmp sgt i16 %418, 0
  %420 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4
  %421 = fadd float %420, %411
  %422 = fptosi float %421 to i32
  %423 = select i1 %419, i32 %422, i32 %33
  %424 = getelementptr inbounds %struct.ScrArea, ptr %414, i64 0, i32 3
  %425 = load ptr, ptr %424, align 8, !tbaa !59
  %426 = getelementptr inbounds %struct.ScrVert, ptr %425, i64 0, i32 3, i32 1
  %427 = load i16, ptr %426, align 2, !tbaa !51
  %428 = sext i16 %427 to i32
  %429 = icmp sgt i32 %15, %428
  %430 = sitofp i32 %423 to float
  %431 = fadd float %420, %430
  %432 = fptosi float %431 to i32
  %433 = select i1 %429, i32 %432, i32 %423
  %434 = sext i16 %418 to i32
  %435 = sub nsw i32 %428, %434
  %436 = add nsw i32 %435, 1
  %437 = icmp slt i32 %436, %433
  br i1 %437, label %438, label %548

438:                                              ; preds = %413
  %439 = getelementptr inbounds %struct.ScrArea, ptr %414, i64 0, i32 5
  %440 = load ptr, ptr %439, align 8, !tbaa !61
  %441 = icmp ugt ptr %440, %416
  %442 = select i1 %441, ptr %416, ptr %440
  %443 = select i1 %441, ptr %440, ptr %416
  %444 = load ptr, ptr %412, align 8, !tbaa !34
  %445 = icmp eq ptr %444, null
  br i1 %445, label %458, label %446

446:                                              ; preds = %438, %455
  %447 = phi ptr [ %456, %455 ], [ %444, %438 ]
  %448 = getelementptr inbounds %struct.ScrEdge, ptr %447, i64 0, i32 2
  %449 = load ptr, ptr %448, align 8, !tbaa !38
  %450 = icmp eq ptr %449, %442
  br i1 %450, label %451, label %455

451:                                              ; preds = %446
  %452 = getelementptr inbounds %struct.ScrEdge, ptr %447, i64 0, i32 3
  %453 = load ptr, ptr %452, align 8, !tbaa !42
  %454 = icmp eq ptr %453, %443
  br i1 %454, label %458, label %455

455:                                              ; preds = %451, %446
  %456 = load ptr, ptr %447, align 8, !tbaa !34
  %457 = icmp eq ptr %456, null
  br i1 %457, label %458, label %446, !llvm.loop !43

458:                                              ; preds = %455, %451, %438
  %459 = phi ptr [ null, %438 ], [ null, %455 ], [ %447, %451 ]
  %460 = icmp eq ptr %459, null
  %461 = icmp eq ptr %416, %425
  %462 = or i1 %461, %460
  br i1 %462, label %548, label %463

463:                                              ; preds = %458
  %464 = getelementptr inbounds %struct.ScrEdge, ptr %459, i64 0, i32 2
  %465 = load ptr, ptr %464, align 8, !tbaa !38
  %466 = getelementptr inbounds %struct.ScrVert, ptr %465, i64 0, i32 3
  %467 = load i16, ptr %466, align 8, !tbaa !50
  %468 = getelementptr inbounds %struct.ScrEdge, ptr %459, i64 0, i32 3
  %469 = load ptr, ptr %468, align 8, !tbaa !42
  %470 = getelementptr inbounds %struct.ScrVert, ptr %469, i64 0, i32 3
  %471 = load i16, ptr %470, align 8, !tbaa !50
  %472 = icmp eq i16 %467, %471
  %473 = load ptr, ptr %36, align 8, !tbaa !34
  %474 = icmp eq ptr %473, null
  br i1 %474, label %480, label %475

475:                                              ; preds = %463, %475
  %476 = phi ptr [ %478, %475 ], [ %473, %463 ]
  %477 = getelementptr inbounds %struct.ScrVert, ptr %476, i64 0, i32 4
  store i16 0, ptr %477, align 4, !tbaa !67
  %478 = load ptr, ptr %476, align 8, !tbaa !34
  %479 = icmp eq ptr %478, null
  br i1 %479, label %480, label %475, !llvm.loop !95

480:                                              ; preds = %475, %463
  %481 = getelementptr inbounds %struct.ScrVert, ptr %465, i64 0, i32 4
  store i16 1, ptr %481, align 4, !tbaa !67
  %482 = getelementptr inbounds %struct.ScrVert, ptr %469, i64 0, i32 4
  store i16 1, ptr %482, align 4, !tbaa !67
  %483 = load ptr, ptr %412, align 8, !tbaa !34
  %484 = icmp eq ptr %483, null
  br label %496

485:                                              ; preds = %529, %496
  %486 = phi i32 [ 0, %496 ], [ %530, %529 ]
  %487 = icmp eq i32 %486, 0
  br i1 %487, label %488, label %496, !llvm.loop !96

488:                                              ; preds = %485
  %489 = load ptr, ptr %36, align 8, !tbaa !34
  %490 = icmp eq ptr %489, null
  br i1 %490, label %548, label %491

491:                                              ; preds = %488
  %492 = getelementptr inbounds %struct.ScrArea, ptr %414, i64 0, i32 4
  %493 = trunc i32 %433 to i16
  %494 = add i16 %427, 1
  %495 = sub i16 %494, %493
  br label %533

496:                                              ; preds = %485, %480
  br i1 %484, label %485, label %497

497:                                              ; preds = %496, %529
  %498 = phi ptr [ %531, %529 ], [ %483, %496 ]
  %499 = phi i32 [ %530, %529 ], [ 0, %496 ]
  %500 = getelementptr inbounds %struct.ScrEdge, ptr %498, i64 0, i32 2
  %501 = load ptr, ptr %500, align 8, !tbaa !38
  %502 = getelementptr inbounds %struct.ScrVert, ptr %501, i64 0, i32 4
  %503 = load i16, ptr %502, align 4, !tbaa !67
  %504 = sext i16 %503 to i32
  %505 = getelementptr inbounds %struct.ScrEdge, ptr %498, i64 0, i32 3
  %506 = load ptr, ptr %505, align 8, !tbaa !42
  %507 = getelementptr inbounds %struct.ScrVert, ptr %506, i64 0, i32 4
  %508 = load i16, ptr %507, align 4, !tbaa !67
  %509 = sext i16 %508 to i32
  %510 = add nsw i32 %509, %504
  %511 = icmp eq i32 %510, 1
  br i1 %511, label %512, label %529

512:                                              ; preds = %497
  br i1 %472, label %520, label %513

513:                                              ; preds = %512
  %514 = getelementptr inbounds %struct.ScrVert, ptr %501, i64 0, i32 3, i32 1
  %515 = load i16, ptr %514, align 2, !tbaa !51
  %516 = getelementptr inbounds %struct.ScrVert, ptr %506, i64 0, i32 3, i32 1
  %517 = load i16, ptr %516, align 2, !tbaa !51
  %518 = icmp eq i16 %515, %517
  br i1 %518, label %519, label %520

519:                                              ; preds = %513
  store i16 1, ptr %507, align 4, !tbaa !67
  store i16 1, ptr %502, align 4, !tbaa !67
  br label %520

520:                                              ; preds = %519, %513, %512
  %521 = phi i32 [ 1, %519 ], [ %499, %513 ], [ %499, %512 ]
  br i1 %472, label %522, label %529

522:                                              ; preds = %520
  %523 = getelementptr inbounds %struct.ScrVert, ptr %501, i64 0, i32 3
  %524 = load i16, ptr %523, align 8, !tbaa !50
  %525 = getelementptr inbounds %struct.ScrVert, ptr %506, i64 0, i32 3
  %526 = load i16, ptr %525, align 8, !tbaa !50
  %527 = icmp eq i16 %524, %526
  br i1 %527, label %528, label %529

528:                                              ; preds = %522
  store i16 1, ptr %507, align 4, !tbaa !67
  store i16 1, ptr %502, align 4, !tbaa !67
  br label %529

529:                                              ; preds = %528, %522, %520, %497
  %530 = phi i32 [ 1, %528 ], [ %521, %522 ], [ %521, %520 ], [ %499, %497 ]
  %531 = load ptr, ptr %498, align 8, !tbaa !34
  %532 = icmp eq ptr %531, null
  br i1 %532, label %485, label %497, !llvm.loop !97

533:                                              ; preds = %491, %545
  %534 = phi ptr [ %489, %491 ], [ %546, %545 ]
  %535 = icmp eq ptr %534, %425
  br i1 %535, label %545, label %536

536:                                              ; preds = %533
  %537 = load ptr, ptr %492, align 8, !tbaa !60
  %538 = icmp eq ptr %534, %537
  br i1 %538, label %545, label %539

539:                                              ; preds = %536
  %540 = getelementptr inbounds %struct.ScrVert, ptr %534, i64 0, i32 4
  %541 = load i16, ptr %540, align 4, !tbaa !67
  %542 = icmp eq i16 %541, 0
  br i1 %542, label %545, label %543

543:                                              ; preds = %539
  %544 = getelementptr inbounds %struct.ScrVert, ptr %534, i64 0, i32 3, i32 1
  store i16 %495, ptr %544, align 2, !tbaa !51
  br label %545

545:                                              ; preds = %543, %539, %536, %533
  %546 = load ptr, ptr %534, align 8, !tbaa !34
  %547 = icmp eq ptr %546, null
  br i1 %547, label %548, label %533, !llvm.loop !159

548:                                              ; preds = %545, %488, %458, %413
  %549 = load ptr, ptr %414, align 8, !tbaa !34
  %550 = icmp eq ptr %549, null
  br i1 %550, label %551, label %413, !llvm.loop !160

551:                                              ; preds = %548, %406
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  %552 = load ptr, ptr %31, align 8, !tbaa !106
  %553 = getelementptr inbounds %struct.bScreen, ptr %552, i64 0, i32 18
  %554 = load i16, ptr %553, align 2, !tbaa !119
  %555 = icmp eq i16 %554, 0
  br i1 %555, label %556, label %561

556:                                              ; preds = %551
  %557 = call i32 @wm_subwindow_open(ptr noundef %1, ptr noundef nonnull %6) #11
  %558 = trunc i32 %557 to i16
  %559 = load ptr, ptr %31, align 8, !tbaa !106
  %560 = getelementptr inbounds %struct.bScreen, ptr %559, i64 0, i32 18
  store i16 %558, ptr %560, align 2, !tbaa !119
  br label %563

561:                                              ; preds = %551
  %562 = sext i16 %554 to i32
  call void @wm_subwindow_position(ptr noundef %1, i32 noundef %562, ptr noundef nonnull %6) #11
  br label %563

563:                                              ; preds = %561, %556
  %564 = load ptr, ptr %31, align 8, !tbaa !106
  %565 = getelementptr inbounds %struct.bScreen, ptr %564, i64 0, i32 3
  %566 = load ptr, ptr %565, align 8, !tbaa !34
  %567 = icmp eq ptr %566, null
  br i1 %567, label %572, label %568

568:                                              ; preds = %563, %568
  %569 = phi ptr [ %570, %568 ], [ %566, %563 ]
  call void @ED_area_initialize(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %569) #11
  %570 = load ptr, ptr %569, align 8, !tbaa !34
  %571 = icmp eq ptr %570, null
  br i1 %571, label %572, label %568, !llvm.loop !161

572:                                              ; preds = %568, %563
  %573 = load ptr, ptr %31, align 8, !tbaa !106
  %574 = getelementptr inbounds %struct.bScreen, ptr %573, i64 0, i32 21
  %575 = load ptr, ptr %574, align 8, !tbaa !162
  %576 = icmp eq ptr %575, null
  br i1 %576, label %578, label %577

577:                                              ; preds = %572
  call void @WM_event_timer_sleep(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %575, i8 noundef zeroext 0) #11
  br label %578

578:                                              ; preds = %577, %572
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  br label %579

579:                                              ; preds = %578, %2
  %580 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !163
  %581 = and i32 %580, 8
  %582 = icmp eq i32 %581, 0
  br i1 %582, label %585, label %583

583:                                              ; preds = %579
  %584 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @__func__.ED_screen_refresh)
  br label %585

585:                                              ; preds = %583, %579
  %586 = getelementptr inbounds %struct.wmWindow, ptr %1, i64 0, i32 3
  %587 = load ptr, ptr %586, align 8, !tbaa !106
  %588 = getelementptr inbounds %struct.bScreen, ptr %587, i64 0, i32 13
  store i16 0, ptr %588, align 8, !tbaa !89
  %589 = getelementptr inbounds %struct.bScreen, ptr %587, i64 0, i32 22
  store ptr @ed_screen_context, ptr %589, align 8, !tbaa !164
  ret void
}

declare i32 @wm_subwindow_open(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @wm_subwindow_position(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @ED_area_initialize(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @WM_event_timer_sleep(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare i32 @ed_screen_context(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define dso_local void @ED_screens_initialize(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %1, %14
  %6 = phi ptr [ %15, %14 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.wmWindow, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !106
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  %11 = load ptr, ptr @G, align 8, !tbaa !86
  %12 = getelementptr inbounds %struct.Main, ptr %11, i64 0, i32 26
  %13 = load ptr, ptr %12, align 8, !tbaa !165
  store ptr %13, ptr %7, align 8, !tbaa !106
  br label %14

14:                                               ; preds = %10, %5
  tail call void @ED_screen_refresh(ptr noundef %0, ptr noundef nonnull %6)
  %15 = load ptr, ptr %6, align 8, !tbaa !34
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %5, !llvm.loop !168

17:                                               ; preds = %14, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_region_exit(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = tail call ptr @CTX_wm_manager(ptr noundef %0) #11
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #11
  %5 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 20
  %6 = load ptr, ptr %5, align 8, !tbaa !116
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ARegionType, ptr %6, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !169
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void %10(ptr noundef %3, ptr noundef %1) #11
  br label %13

13:                                               ; preds = %12, %8, %2
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef %1) #11
  %14 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 26
  tail call void @WM_event_remove_handlers(ptr noundef %0, ptr noundef nonnull %14) #11
  %15 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 7
  %16 = load i16, ptr %15, align 4, !tbaa !111
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = tail call ptr @CTX_wm_window(ptr noundef %0) #11
  %20 = load i16, ptr %15, align 4, !tbaa !111
  %21 = sext i16 %20 to i32
  tail call void @wm_subwindow_close(ptr noundef %19, i32 noundef %21) #11
  br label %22

22:                                               ; preds = %18, %13
  store i16 0, ptr %15, align 4, !tbaa !111
  %23 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 29
  %24 = load ptr, ptr %23, align 8, !tbaa !170
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %27(ptr noundef nonnull %24) #11
  br label %28

28:                                               ; preds = %26, %22
  store ptr null, ptr %23, align 8, !tbaa !170
  %29 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 28
  %30 = load ptr, ptr %29, align 8, !tbaa !171
  %31 = icmp eq ptr %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = tail call ptr @CTX_wm_manager(ptr noundef %0) #11
  %34 = tail call ptr @CTX_wm_window(ptr noundef %0) #11
  %35 = load ptr, ptr %29, align 8, !tbaa !171
  tail call void @WM_event_remove_timer(ptr noundef %33, ptr noundef %34, ptr noundef %35) #11
  br label %36

36:                                               ; preds = %32, %28
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef %4) #11
  ret void
}

declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #3

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #3

declare void @CTX_wm_region_set(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @WM_event_remove_handlers(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @wm_subwindow_close(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @WM_event_remove_timer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @ED_area_exit(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = tail call ptr @CTX_wm_manager(ptr noundef %0) #11
  %4 = tail call ptr @CTX_wm_area(ptr noundef %0) #11
  %5 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 18
  %6 = load ptr, ptr %5, align 8, !tbaa !172
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.SpaceType, ptr %6, i64 0, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !173
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void %10(ptr noundef %3, ptr noundef %1) #11
  br label %13

13:                                               ; preds = %12, %8, %2
  tail call void @CTX_wm_area_set(ptr noundef %0, ptr noundef %1) #11
  %14 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 20
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %13, %17
  %18 = phi ptr [ %19, %17 ], [ %15, %13 ]
  tail call void @ED_region_exit(ptr noundef %0, ptr noundef nonnull %18)
  %19 = load ptr, ptr %18, align 8, !tbaa !34
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %17, !llvm.loop !175

21:                                               ; preds = %17, %13
  %22 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 21
  tail call void @WM_event_remove_handlers(ptr noundef %0, ptr noundef nonnull %22) #11
  tail call void @CTX_wm_area_set(ptr noundef %0, ptr noundef %4) #11
  ret void
}

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #3

declare void @CTX_wm_area_set(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @ED_screen_exit(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #2 {
  %4 = tail call ptr @CTX_wm_manager(ptr noundef %0) #11
  %5 = tail call ptr @CTX_wm_window(ptr noundef %0) #11
  tail call void @CTX_wm_window_set(ptr noundef %0, ptr noundef %1) #11
  %6 = getelementptr inbounds %struct.bScreen, ptr %2, i64 0, i32 21
  %7 = load ptr, ptr %6, align 8, !tbaa !162
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  tail call void @WM_event_remove_timer(ptr noundef %4, ptr noundef %1, ptr noundef nonnull %7) #11
  br label %10

10:                                               ; preds = %9, %3
  store ptr null, ptr %6, align 8, !tbaa !162
  %11 = getelementptr inbounds %struct.bScreen, ptr %2, i64 0, i32 18
  %12 = load i16, ptr %11, align 2, !tbaa !119
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = sext i16 %12 to i32
  tail call void @wm_subwindow_close(ptr noundef %1, i32 noundef %15) #11
  br label %16

16:                                               ; preds = %14, %10
  store i16 0, ptr %11, align 2, !tbaa !119
  %17 = getelementptr inbounds %struct.bScreen, ptr %2, i64 0, i32 19
  store i16 0, ptr %17, align 4, !tbaa !176
  %18 = getelementptr inbounds %struct.bScreen, ptr %2, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !34
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %16, %21
  %22 = phi ptr [ %23, %21 ], [ %19, %16 ]
  tail call void @ED_region_exit(ptr noundef %0, ptr noundef nonnull %22)
  %23 = load ptr, ptr %22, align 8, !tbaa !34
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %21, !llvm.loop !177

25:                                               ; preds = %21, %16
  %26 = getelementptr inbounds %struct.bScreen, ptr %2, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !34
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %25, %29
  %30 = phi ptr [ %31, %29 ], [ %27, %25 ]
  tail call void @ED_area_exit(ptr noundef %0, ptr noundef nonnull %30)
  %31 = load ptr, ptr %30, align 8, !tbaa !34
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %29, !llvm.loop !178

33:                                               ; preds = %29, %25
  %34 = getelementptr inbounds %struct.bScreen, ptr %2, i64 0, i32 11
  store i16 0, ptr %34, align 4, !tbaa !93
  %35 = getelementptr inbounds %struct.wmWindow, ptr %5, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !106
  %37 = getelementptr inbounds %struct.bScreen, ptr %36, i64 0, i32 10
  %38 = load i16, ptr %37, align 2, !tbaa !179
  %39 = icmp eq i16 %38, 0
  %40 = select i1 %39, ptr %5, ptr null
  tail call void @CTX_wm_window_set(ptr noundef %0, ptr noundef %40) #11
  ret void
}

declare void @CTX_wm_window_set(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @ED_screen_set_subwinactive(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = tail call ptr @CTX_wm_window(ptr noundef %0) #11
  %4 = getelementptr inbounds %struct.wmWindow, ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !106
  %6 = icmp eq ptr %5, null
  br i1 %6, label %283, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.bScreen, ptr %5, i64 0, i32 19
  %9 = load i16, ptr %8, align 4, !tbaa !176
  %10 = getelementptr inbounds %struct.bScreen, ptr %5, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %53, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 4
  %15 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 5
  br label %16

16:                                               ; preds = %13, %38
  %17 = phi ptr [ %11, %13 ], [ %39, %38 ]
  %18 = load i32, ptr %14, align 4, !tbaa !138
  %19 = getelementptr inbounds %struct.ScrArea, ptr %17, i64 0, i32 7
  %20 = load i32, ptr %19, align 8, !tbaa !132
  %21 = icmp sgt i32 %18, %20
  br i1 %21, label %22, label %38

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.ScrArea, ptr %17, i64 0, i32 7, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !137
  %25 = icmp slt i32 %18, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %22
  %27 = load i32, ptr %15, align 8, !tbaa !134
  %28 = getelementptr inbounds %struct.ScrArea, ptr %17, i64 0, i32 7, i32 2
  %29 = load i32, ptr %28, align 8, !tbaa !139
  %30 = icmp sgt i32 %27, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.ScrArea, ptr %17, i64 0, i32 7, i32 3
  %33 = load i32, ptr %32, align 4, !tbaa !140
  %34 = icmp slt i32 %27, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = tail call ptr @is_in_area_actionzone(ptr noundef nonnull %17, ptr noundef nonnull %14) #11
  %37 = icmp eq ptr %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %16, %22, %35, %31, %26
  %39 = load ptr, ptr %17, align 8, !tbaa !34
  %40 = icmp eq ptr %39, null
  br i1 %40, label %53, label %16, !llvm.loop !180

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.ScrArea, ptr %17, i64 0, i32 20
  br label %43

43:                                               ; preds = %47, %41
  %44 = phi ptr [ %42, %41 ], [ %45, %47 ]
  %45 = load ptr, ptr %44, align 8, !tbaa !34
  %46 = icmp eq ptr %45, null
  br i1 %46, label %58, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.ARegion, ptr %45, i64 0, i32 3
  %49 = tail call zeroext i8 @BLI_rcti_isect_pt_v(ptr noundef nonnull %48, ptr noundef nonnull %14) #11
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %43, label %51, !llvm.loop !181

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.ARegion, ptr %45, i64 0, i32 7
  br label %55

53:                                               ; preds = %38, %7
  %54 = getelementptr inbounds %struct.bScreen, ptr %5, i64 0, i32 18
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi ptr [ %52, %51 ], [ %54, %53 ]
  %57 = load i16, ptr %56, align 2, !tbaa !182
  store i16 %57, ptr %8, align 4, !tbaa !176
  br label %58

58:                                               ; preds = %43, %55
  %59 = load i16, ptr %8, align 4, !tbaa !176
  %60 = icmp eq i16 %9, %59
  br i1 %60, label %101, label %61

61:                                               ; preds = %58
  %62 = load ptr, ptr %10, align 8, !tbaa !34
  %63 = icmp eq ptr %62, null
  br i1 %63, label %101, label %64

64:                                               ; preds = %61, %98
  %65 = phi ptr [ %99, %98 ], [ %62, %61 ]
  %66 = getelementptr inbounds %struct.ScrArea, ptr %65, i64 0, i32 20
  %67 = load ptr, ptr %66, align 8, !tbaa !34
  %68 = icmp eq ptr %67, null
  br i1 %68, label %83, label %69

69:                                               ; preds = %64, %79
  %70 = phi ptr [ %81, %79 ], [ %67, %64 ]
  %71 = phi i8 [ %80, %79 ], [ 0, %64 ]
  %72 = getelementptr inbounds %struct.ARegion, ptr %70, i64 0, i32 7
  %73 = load i16, ptr %72, align 4, !tbaa !111
  %74 = icmp eq i16 %73, %9
  br i1 %74, label %78, label %75

75:                                               ; preds = %69
  %76 = load i16, ptr %8, align 4, !tbaa !176
  %77 = icmp eq i16 %73, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %75, %69
  br label %79

79:                                               ; preds = %75, %78
  %80 = phi i8 [ 1, %78 ], [ %71, %75 ]
  %81 = load ptr, ptr %70, align 8, !tbaa !34
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %69, !llvm.loop !183

83:                                               ; preds = %79, %64
  %84 = phi i8 [ 0, %64 ], [ %80, %79 ]
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %98, label %86

86:                                               ; preds = %83
  %87 = load ptr, ptr %66, align 8, !tbaa !34
  %88 = icmp eq ptr %87, null
  br i1 %88, label %98, label %89

89:                                               ; preds = %86, %95
  %90 = phi ptr [ %96, %95 ], [ %87, %86 ]
  %91 = getelementptr inbounds %struct.ARegion, ptr %90, i64 0, i32 8
  %92 = load i16, ptr %91, align 2, !tbaa !184
  %93 = icmp eq i16 %92, 1
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  tail call void @ED_region_tag_redraw(ptr noundef nonnull %90) #11
  br label %95

95:                                               ; preds = %89, %94
  %96 = load ptr, ptr %90, align 8, !tbaa !34
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %89, !llvm.loop !185

98:                                               ; preds = %95, %86, %83
  %99 = load ptr, ptr %65, align 8, !tbaa !34
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %64, !llvm.loop !186

101:                                              ; preds = %98, %61, %58
  %102 = load i16, ptr %8, align 4, !tbaa !176
  %103 = getelementptr inbounds %struct.bScreen, ptr %5, i64 0, i32 18
  %104 = load i16, ptr %103, align 2, !tbaa !119
  %105 = icmp eq i16 %102, %104
  br i1 %105, label %106, label %221

106:                                              ; preds = %101
  %107 = tail call i32 @WM_window_pixels_x(ptr noundef %3) #11
  %108 = tail call i32 @WM_window_pixels_y(ptr noundef %3) #11
  %109 = load ptr, ptr %4, align 8, !tbaa !106
  %110 = getelementptr inbounds %struct.bScreen, ptr %109, i64 0, i32 3
  %111 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 4
  br label %112

112:                                              ; preds = %116, %106
  %113 = phi ptr [ %110, %106 ], [ %114, %116 ]
  %114 = load ptr, ptr %113, align 8, !tbaa !34
  %115 = icmp eq ptr %114, null
  br i1 %115, label %119, label %116

116:                                              ; preds = %112
  %117 = tail call ptr @is_in_area_actionzone(ptr noundef nonnull %114, ptr noundef nonnull %111) #11
  %118 = icmp eq ptr %117, null
  br i1 %118, label %112, label %119, !llvm.loop !187

119:                                              ; preds = %116, %112
  %120 = phi ptr [ %117, %116 ], [ null, %112 ]
  br i1 %115, label %131, label %121

121:                                              ; preds = %119
  %122 = getelementptr inbounds %struct.AZone, ptr %120, i64 0, i32 3
  %123 = load i32, ptr %122, align 8, !tbaa !188
  switch i32 %123, label %283 [
    i32 1, label %124
    i32 2, label %125
  ]

124:                                              ; preds = %121
  tail call void @WM_cursor_set(ptr noundef %3, i32 noundef 1002) #11
  br label %283

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.AZone, ptr %120, i64 0, i32 4
  %127 = load i32, ptr %126, align 4, !tbaa !190
  %128 = icmp ult i32 %127, 2
  br i1 %128, label %129, label %130

129:                                              ; preds = %125
  tail call void @WM_cursor_set(ptr noundef %3, i32 noundef 1003) #11
  br label %283

130:                                              ; preds = %125
  tail call void @WM_cursor_set(ptr noundef %3, i32 noundef 1004) #11
  br label %283

131:                                              ; preds = %119
  %132 = load ptr, ptr %4, align 8, !tbaa !106
  %133 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 4
  %134 = load i32, ptr %133, align 4, !tbaa !138
  %135 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 5
  %136 = load i32, ptr %135, align 8, !tbaa !134
  %137 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !77
  %138 = sdiv i16 %137, 10
  %139 = tail call i16 @llvm.smax.i16(i16 %138, i16 2)
  %140 = zext nneg i16 %139 to i32
  %141 = getelementptr inbounds %struct.bScreen, ptr %132, i64 0, i32 2
  %142 = load ptr, ptr %141, align 8, !tbaa !34
  %143 = icmp eq ptr %142, null
  br i1 %143, label %205, label %144

144:                                              ; preds = %131
  %145 = add nsw i32 %107, -1
  %146 = add nsw i32 %108, -1
  br label %147

147:                                              ; preds = %201, %144
  %148 = phi ptr [ %142, %144 ], [ %203, %201 ]
  %149 = phi ptr [ undef, %144 ], [ %202, %201 ]
  %150 = getelementptr inbounds %struct.ScrEdge, ptr %148, i64 0, i32 2
  %151 = load ptr, ptr %150, align 8, !tbaa !38
  %152 = getelementptr inbounds %struct.ScrVert, ptr %151, i64 0, i32 3, i32 1
  %153 = load i16, ptr %152, align 2, !tbaa !51
  %154 = getelementptr inbounds %struct.ScrEdge, ptr %148, i64 0, i32 3
  %155 = load ptr, ptr %154, align 8, !tbaa !42
  %156 = getelementptr inbounds %struct.ScrVert, ptr %155, i64 0, i32 3, i32 1
  %157 = load i16, ptr %156, align 2, !tbaa !51
  %158 = icmp eq i16 %153, %157
  br i1 %158, label %159, label %181

159:                                              ; preds = %147
  %160 = icmp sgt i16 %153, 0
  %161 = sext i16 %153 to i32
  %162 = icmp sgt i32 %146, %161
  %163 = select i1 %160, i1 %162, i1 false
  br i1 %163, label %164, label %201

164:                                              ; preds = %159
  %165 = getelementptr inbounds %struct.ScrVert, ptr %151, i64 0, i32 3
  %166 = load i16, ptr %165, align 8, !tbaa !50
  %167 = getelementptr inbounds %struct.ScrVert, ptr %155, i64 0, i32 3
  %168 = load i16, ptr %167, align 8, !tbaa !50
  %169 = tail call i16 @llvm.smin.i16(i16 %166, i16 %168)
  %170 = tail call i16 @llvm.smax.i16(i16 %166, i16 %168)
  %171 = sub nsw i32 %136, %161
  %172 = tail call i32 @llvm.abs.i32(i32 %171, i1 true)
  %173 = icmp ugt i32 %172, %140
  %174 = sext i16 %169 to i32
  %175 = icmp slt i32 %134, %174
  %176 = select i1 %173, i1 true, i1 %175
  %177 = sext i16 %170 to i32
  %178 = icmp sgt i32 %134, %177
  %179 = select i1 %176, i1 true, i1 %178
  %180 = select i1 %179, ptr %149, ptr %148
  br i1 %179, label %201, label %205

181:                                              ; preds = %147
  %182 = getelementptr inbounds %struct.ScrVert, ptr %151, i64 0, i32 3
  %183 = load i16, ptr %182, align 8, !tbaa !50
  %184 = icmp sgt i16 %183, 0
  %185 = sext i16 %183 to i32
  %186 = icmp sgt i32 %145, %185
  %187 = select i1 %184, i1 %186, i1 false
  br i1 %187, label %188, label %201

188:                                              ; preds = %181
  %189 = tail call i16 @llvm.smin.i16(i16 %153, i16 %157)
  %190 = tail call i16 @llvm.smax.i16(i16 %153, i16 %157)
  %191 = sub nsw i32 %134, %185
  %192 = tail call i32 @llvm.abs.i32(i32 %191, i1 true)
  %193 = icmp ugt i32 %192, %140
  %194 = sext i16 %189 to i32
  %195 = icmp slt i32 %136, %194
  %196 = or i1 %195, %193
  %197 = sext i16 %190 to i32
  %198 = icmp sgt i32 %136, %197
  %199 = or i1 %198, %196
  %200 = select i1 %199, ptr %149, ptr %148
  br i1 %199, label %201, label %205

201:                                              ; preds = %188, %181, %164, %159
  %202 = phi ptr [ %180, %164 ], [ %149, %159 ], [ %200, %188 ], [ %149, %181 ]
  %203 = load ptr, ptr %148, align 8, !tbaa !34
  %204 = icmp eq ptr %203, null
  br i1 %204, label %205, label %147, !llvm.loop !82

205:                                              ; preds = %164, %188, %201, %131
  %206 = phi ptr [ null, %131 ], [ %200, %188 ], [ %180, %164 ], [ null, %201 ]
  %207 = icmp eq ptr %206, null
  br i1 %207, label %220, label %208

208:                                              ; preds = %205
  %209 = getelementptr inbounds %struct.ScrEdge, ptr %206, i64 0, i32 2
  %210 = load ptr, ptr %209, align 8, !tbaa !38
  %211 = getelementptr inbounds %struct.ScrVert, ptr %210, i64 0, i32 3, i32 1
  %212 = load i16, ptr %211, align 2, !tbaa !51
  %213 = getelementptr inbounds %struct.ScrEdge, ptr %206, i64 0, i32 3
  %214 = load ptr, ptr %213, align 8, !tbaa !42
  %215 = getelementptr inbounds %struct.ScrVert, ptr %214, i64 0, i32 3, i32 1
  %216 = load i16, ptr %215, align 2, !tbaa !51
  %217 = icmp eq i16 %212, %216
  br i1 %217, label %218, label %219

218:                                              ; preds = %208
  tail call void @WM_cursor_set(ptr noundef %3, i32 noundef 1004) #11
  br label %283

219:                                              ; preds = %208
  tail call void @WM_cursor_set(ptr noundef %3, i32 noundef 1003) #11
  br label %283

220:                                              ; preds = %205
  tail call void @WM_cursor_set(ptr noundef %3, i32 noundef 1006) #11
  br label %283

221:                                              ; preds = %101
  %222 = icmp eq i16 %9, %102
  %223 = load ptr, ptr %4, align 8, !tbaa !106
  %224 = getelementptr inbounds %struct.bScreen, ptr %223, i64 0, i32 3
  %225 = load ptr, ptr %224, align 8, !tbaa !34
  %226 = icmp eq ptr %225, null
  br i1 %222, label %254, label %227

227:                                              ; preds = %221
  br i1 %226, label %252, label %231

228:                                              ; preds = %234
  %229 = load ptr, ptr %232, align 8, !tbaa !34
  %230 = icmp eq ptr %229, null
  br i1 %230, label %252, label %231, !llvm.loop !110

231:                                              ; preds = %227, %228
  %232 = phi ptr [ %229, %228 ], [ %225, %227 ]
  %233 = getelementptr inbounds %struct.ScrArea, ptr %232, i64 0, i32 20
  br label %234

234:                                              ; preds = %238, %231
  %235 = phi ptr [ %233, %231 ], [ %236, %238 ]
  %236 = load ptr, ptr %235, align 8, !tbaa !34
  %237 = icmp eq ptr %236, null
  br i1 %237, label %228, label %238

238:                                              ; preds = %234
  %239 = getelementptr inbounds %struct.ARegion, ptr %236, i64 0, i32 7
  %240 = load i16, ptr %239, align 4, !tbaa !111
  %241 = icmp eq i16 %240, %102
  br i1 %241, label %242, label %234, !llvm.loop !115

242:                                              ; preds = %238
  %243 = getelementptr inbounds %struct.ARegion, ptr %236, i64 0, i32 20
  %244 = load ptr, ptr %243, align 8, !tbaa !116
  %245 = icmp eq ptr %244, null
  br i1 %245, label %251, label %246

246:                                              ; preds = %242
  %247 = getelementptr inbounds %struct.ARegionType, ptr %244, i64 0, i32 11
  %248 = load ptr, ptr %247, align 8, !tbaa !117
  %249 = icmp eq ptr %248, null
  br i1 %249, label %251, label %250

250:                                              ; preds = %246
  tail call void %248(ptr noundef %3, ptr noundef nonnull %232, ptr noundef nonnull %236) #11
  br label %252

251:                                              ; preds = %246, %242
  tail call void @WM_cursor_set(ptr noundef %3, i32 noundef 1006) #11
  br label %252

252:                                              ; preds = %228, %227, %250, %251
  %253 = load ptr, ptr %4, align 8, !tbaa !106
  tail call void @uiFreeActiveButtons(ptr noundef %0, ptr noundef %253) #11
  br label %283

254:                                              ; preds = %221
  br i1 %226, label %283, label %258

255:                                              ; preds = %261
  %256 = load ptr, ptr %259, align 8, !tbaa !34
  %257 = icmp eq ptr %256, null
  br i1 %257, label %283, label %258, !llvm.loop !110

258:                                              ; preds = %254, %255
  %259 = phi ptr [ %256, %255 ], [ %225, %254 ]
  %260 = getelementptr inbounds %struct.ScrArea, ptr %259, i64 0, i32 20
  br label %261

261:                                              ; preds = %265, %258
  %262 = phi ptr [ %260, %258 ], [ %263, %265 ]
  %263 = load ptr, ptr %262, align 8, !tbaa !34
  %264 = icmp eq ptr %263, null
  br i1 %264, label %255, label %265

265:                                              ; preds = %261
  %266 = getelementptr inbounds %struct.ARegion, ptr %263, i64 0, i32 7
  %267 = load i16, ptr %266, align 4, !tbaa !111
  %268 = icmp eq i16 %267, %102
  br i1 %268, label %269, label %261, !llvm.loop !115

269:                                              ; preds = %265
  %270 = getelementptr inbounds %struct.ARegion, ptr %263, i64 0, i32 20
  %271 = load ptr, ptr %270, align 8, !tbaa !116
  %272 = icmp eq ptr %271, null
  br i1 %272, label %283, label %273

273:                                              ; preds = %269
  %274 = getelementptr inbounds %struct.ARegionType, ptr %271, i64 0, i32 23
  %275 = load i16, ptr %274, align 8, !tbaa !191
  %276 = icmp eq i16 %275, 0
  br i1 %276, label %283, label %277

277:                                              ; preds = %273
  %278 = getelementptr inbounds %struct.ARegionType, ptr %271, i64 0, i32 11
  %279 = load ptr, ptr %278, align 8, !tbaa !117
  %280 = icmp eq ptr %279, null
  br i1 %280, label %282, label %281

281:                                              ; preds = %277
  tail call void %279(ptr noundef %3, ptr noundef nonnull %259, ptr noundef nonnull %263) #11
  br label %283

282:                                              ; preds = %277
  tail call void @WM_cursor_set(ptr noundef %3, i32 noundef 1006) #11
  br label %283

283:                                              ; preds = %255, %282, %281, %273, %269, %254, %220, %219, %218, %130, %129, %124, %121, %252, %2
  ret void
}

declare ptr @is_in_area_actionzone(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @BLI_rcti_isect_pt_v(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #3

declare void @uiFreeActiveButtons(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ED_screen_area_active(ptr noundef %0) local_unnamed_addr #2 {
  %2 = tail call ptr @CTX_wm_window(ptr noundef %0) #11
  %3 = tail call ptr @CTX_wm_screen(ptr noundef %0) #11
  %4 = tail call ptr @CTX_wm_area(ptr noundef %0) #11
  %5 = icmp ne ptr %2, null
  %6 = icmp ne ptr %3, null
  %7 = select i1 %5, i1 %6, i1 false
  %8 = icmp ne ptr %4, null
  %9 = select i1 %7, i1 %8, i1 false
  br i1 %9, label %10, label %32

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.wmWindow, ptr %2, i64 0, i32 21
  %12 = load ptr, ptr %11, align 8, !tbaa !133
  %13 = getelementptr inbounds %struct.wmEvent, ptr %12, i64 0, i32 4
  %14 = tail call ptr @is_in_area_actionzone(ptr noundef nonnull %4, ptr noundef nonnull %13) #11
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.AZone, ptr %14, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !188
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %32, label %20

20:                                               ; preds = %16, %10
  %21 = getelementptr inbounds %struct.ScrArea, ptr %4, i64 0, i32 20
  %22 = getelementptr inbounds %struct.bScreen, ptr %3, i64 0, i32 19
  br label %23

23:                                               ; preds = %27, %20
  %24 = phi ptr [ %21, %20 ], [ %25, %27 ]
  %25 = load ptr, ptr %24, align 8, !tbaa !34
  %26 = icmp eq ptr %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.ARegion, ptr %25, i64 0, i32 7
  %29 = load i16, ptr %28, align 4, !tbaa !111
  %30 = load i16, ptr %22, align 4, !tbaa !176
  %31 = icmp eq i16 %29, %30
  br i1 %31, label %32, label %23, !llvm.loop !192

32:                                               ; preds = %27, %23, %16, %1
  %33 = phi i32 [ 0, %1 ], [ 1, %16 ], [ 0, %23 ], [ 1, %27 ]
  ret i32 %33
}

declare ptr @CTX_wm_screen(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @ED_screen_set(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #11
  %4 = tail call ptr @CTX_wm_manager(ptr noundef %0) #11
  %5 = tail call ptr @CTX_wm_window(ptr noundef %0) #11
  %6 = tail call ptr @CTX_wm_screen(ptr noundef %0) #11
  %7 = getelementptr inbounds %struct.Main, ptr %3, i64 0, i32 26
  br label %8

8:                                                ; preds = %8, %2
  %9 = phi ptr [ %7, %2 ], [ %10, %8 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = icmp eq ptr %10, null
  %12 = icmp eq ptr %10, %1
  %13 = or i1 %11, %12
  br i1 %13, label %14, label %8, !llvm.loop !193

14:                                               ; preds = %8
  br i1 %11, label %82, label %15

15:                                               ; preds = %14
  %16 = getelementptr inbounds %struct.bScreen, ptr %1, i64 0, i32 9
  %17 = load i16, ptr %16, align 8, !tbaa !98
  %18 = icmp eq i16 %17, 2
  br i1 %18, label %19, label %31

19:                                               ; preds = %15, %24
  %20 = phi ptr [ %22, %24 ], [ %7, %15 ]
  %21 = phi ptr [ %30, %24 ], [ %1, %15 ]
  %22 = load ptr, ptr %20, align 8, !tbaa !34
  %23 = icmp eq ptr %22, null
  br i1 %23, label %31, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.bScreen, ptr %22, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !194
  %27 = getelementptr inbounds %struct.ScrArea, ptr %26, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !195
  %29 = icmp eq ptr %28, %21
  %30 = select i1 %29, ptr %22, ptr %21
  br i1 %29, label %31, label %19

31:                                               ; preds = %24, %19, %15
  %32 = phi ptr [ %1, %15 ], [ %30, %24 ], [ %21, %19 ]
  %33 = getelementptr inbounds %struct.bScreen, ptr %32, i64 0, i32 11
  %34 = load i16, ptr %33, align 4, !tbaa !93
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %31
  %37 = sext i16 %34 to i32
  %38 = getelementptr inbounds %struct.wmWindow, ptr %5, i64 0, i32 18
  %39 = load i32, ptr %38, align 8, !tbaa !91
  %40 = icmp ne i32 %39, %37
  %41 = icmp eq ptr %6, %32
  %42 = select i1 %40, i1 true, i1 %41
  br i1 %42, label %82, label %45

43:                                               ; preds = %31
  %44 = icmp eq ptr %6, %32
  br i1 %44, label %82, label %45

45:                                               ; preds = %36, %43
  %46 = getelementptr inbounds %struct.bScreen, ptr %6, i64 0, i32 21
  %47 = load ptr, ptr %46, align 8, !tbaa !162
  %48 = getelementptr inbounds %struct.bScreen, ptr %6, i64 0, i32 5
  %49 = load ptr, ptr %48, align 8, !tbaa !88
  %50 = getelementptr inbounds %struct.bScreen, ptr %6, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !34
  %52 = icmp eq ptr %51, null
  br i1 %52, label %59, label %53

53:                                               ; preds = %45
  %54 = getelementptr inbounds %struct.wmWindow, ptr %5, i64 0, i32 29
  br label %55

55:                                               ; preds = %53, %55
  %56 = phi ptr [ %51, %53 ], [ %57, %55 ]
  tail call void @WM_event_remove_area_handler(ptr noundef nonnull %54, ptr noundef nonnull %56) #11
  %57 = load ptr, ptr %56, align 8, !tbaa !34
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %55, !llvm.loop !196

59:                                               ; preds = %55, %45
  store ptr null, ptr %46, align 8, !tbaa !162
  %60 = icmp eq ptr %47, null
  br i1 %60, label %69, label %61

61:                                               ; preds = %59
  tail call void @WM_event_timer_sleep(ptr noundef %4, ptr noundef %5, ptr noundef nonnull %47, i8 noundef zeroext 1) #11
  tail call void @ED_screen_exit(ptr noundef %0, ptr noundef %5, ptr noundef %6)
  %62 = getelementptr inbounds %struct.bScreen, ptr %32, i64 0, i32 5
  %63 = load ptr, ptr %62, align 8, !tbaa !88
  %64 = icmp eq ptr %49, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.bScreen, ptr %32, i64 0, i32 21
  store ptr %47, ptr %66, align 8, !tbaa !162
  br label %70

67:                                               ; preds = %61
  store ptr %47, ptr %46, align 8, !tbaa !162
  %68 = tail call i32 @ED_screen_animation_play(ptr noundef %0, i32 noundef 0, i32 noundef 0) #11
  br label %70

69:                                               ; preds = %59
  tail call void @ED_screen_exit(ptr noundef %0, ptr noundef %5, ptr noundef %6)
  br label %70

70:                                               ; preds = %69, %65, %67
  %71 = getelementptr inbounds %struct.wmWindow, ptr %5, i64 0, i32 3
  store ptr %32, ptr %71, align 8, !tbaa !106
  tail call void @CTX_wm_window_set(ptr noundef %0, ptr noundef %5) #11
  %72 = getelementptr inbounds %struct.wmWindow, ptr %5, i64 0, i32 18
  %73 = load i32, ptr %72, align 8, !tbaa !91
  %74 = trunc i32 %73 to i16
  store i16 %74, ptr %33, align 4, !tbaa !93
  %75 = tail call ptr @CTX_wm_manager(ptr noundef %0) #11
  %76 = tail call ptr @CTX_wm_window(ptr noundef %0) #11
  tail call void @ED_screen_refresh(ptr noundef %75, ptr noundef %76)
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 33554432, ptr noundef null) #11
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 50790400, ptr noundef %32) #11
  tail call void @WM_event_add_mousemove(ptr noundef %0) #11
  %77 = getelementptr inbounds %struct.bScreen, ptr %32, i64 0, i32 5
  %78 = load ptr, ptr %77, align 8, !tbaa !88
  %79 = icmp eq ptr %49, %78
  br i1 %79, label %81, label %80

80:                                               ; preds = %70
  tail call void @BKE_scene_set_background(ptr noundef %3, ptr noundef %78) #11
  br label %81

81:                                               ; preds = %80, %70
  tail call void @DAG_on_visible_update(ptr noundef %3, i8 noundef zeroext 0) #11
  br label %82

82:                                               ; preds = %43, %81, %36, %14
  ret void
}

declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #3

declare void @WM_event_remove_area_handler(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ED_screen_animation_play(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @WM_event_add_mousemove(ptr noundef) local_unnamed_addr #3

declare void @BKE_scene_set_background(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @DAG_on_visible_update(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @ED_screen_delete(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #11
  %4 = tail call ptr @CTX_wm_manager(ptr noundef %0) #11
  %5 = tail call ptr @CTX_wm_window(ptr noundef %0) #11
  %6 = getelementptr inbounds %struct.bScreen, ptr %1, i64 0, i32 9
  %7 = load i16, ptr %6, align 8, !tbaa !98
  %8 = add i16 %7, -1
  %9 = icmp ult i16 %8, 2
  br i1 %9, label %49, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.wmWindowManager, ptr %4, i64 0, i32 3
  br label %12

12:                                               ; preds = %10, %27
  %13 = phi ptr [ %15, %27 ], [ %1, %10 ]
  %14 = getelementptr inbounds %struct.ID, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !197
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.wmWindowManager, ptr %4, i64 0, i32 3
  br label %28

19:                                               ; preds = %12, %23
  %20 = phi ptr [ %21, %23 ], [ %11, %12 ]
  %21 = load ptr, ptr %20, align 8, !tbaa !34
  %22 = icmp eq ptr %21, null
  br i1 %22, label %41, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.wmWindow, ptr %21, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !106
  %26 = icmp eq ptr %25, %15
  br i1 %26, label %27, label %19, !llvm.loop !198

27:                                               ; preds = %23
  br i1 %22, label %41, label %12, !llvm.loop !199

28:                                               ; preds = %17, %40
  %29 = phi ptr [ %30, %40 ], [ %1, %17 ]
  %30 = load ptr, ptr %29, align 8, !tbaa !200
  %31 = icmp eq ptr %30, null
  br i1 %31, label %41, label %32

32:                                               ; preds = %28, %36
  %33 = phi ptr [ %34, %36 ], [ %18, %28 ]
  %34 = load ptr, ptr %33, align 8, !tbaa !34
  %35 = icmp eq ptr %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.wmWindow, ptr %34, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !106
  %39 = icmp eq ptr %38, %30
  br i1 %39, label %40, label %32, !llvm.loop !198

40:                                               ; preds = %36
  br i1 %35, label %41, label %28, !llvm.loop !201

41:                                               ; preds = %27, %19, %28, %40, %32
  %42 = phi ptr [ %30, %32 ], [ %30, %40 ], [ null, %28 ], [ %15, %19 ], [ %15, %27 ]
  %43 = icmp eq ptr %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %41
  tail call void @ED_screen_set(ptr noundef %0, ptr noundef nonnull %42)
  %45 = getelementptr inbounds %struct.wmWindow, ptr %5, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !106
  %47 = icmp eq ptr %46, %1
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  tail call void @BKE_libblock_free(ptr noundef %3, ptr noundef %1) #11
  br label %49

49:                                               ; preds = %2, %44, %48, %41
  ret void
}

declare void @BKE_libblock_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @ED_screen_set_scene(ptr noundef %0, ptr noundef readnone %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #11
  %5 = icmp eq ptr %1, null
  br i1 %5, label %110, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @CTX_wm_manager(ptr noundef %0) #11
  %8 = getelementptr inbounds %struct.wmWindowManager, ptr %7, i64 0, i32 3
  br label %9

9:                                                ; preds = %13, %6
  %10 = phi ptr [ %8, %6 ], [ %11, %13 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.wmWindow, ptr %11, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !106
  %16 = icmp eq ptr %15, %1
  br i1 %16, label %17, label %9, !llvm.loop !198

17:                                               ; preds = %13
  br i1 %12, label %19, label %18

18:                                               ; preds = %17
  tail call void @ED_object_editmode_exit(ptr noundef %0, i32 noundef 9) #11
  br label %19

19:                                               ; preds = %9, %18, %17
  %20 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 26
  %21 = load ptr, ptr %20, align 8, !tbaa !34
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !202
  %25 = and i32 %24, 16
  %26 = icmp ne i32 %25, 0
  br label %30

27:                                               ; preds = %39, %19
  %28 = load ptr, ptr %20, align 8, !tbaa !34
  %29 = icmp eq ptr %28, null
  br i1 %29, label %109, label %42

30:                                               ; preds = %23, %39
  %31 = phi ptr [ %21, %23 ], [ %40, %39 ]
  %32 = icmp eq ptr %31, %1
  %33 = or i1 %32, %26
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.bScreen, ptr %31, i64 0, i32 5
  %36 = load ptr, ptr %35, align 8, !tbaa !88
  %37 = icmp eq ptr %36, %2
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  store ptr %2, ptr %35, align 8, !tbaa !88
  br label %39

39:                                               ; preds = %30, %38, %34
  %40 = load ptr, ptr %31, align 8, !tbaa !34
  %41 = icmp eq ptr %40, null
  br i1 %41, label %27, label %30, !llvm.loop !203

42:                                               ; preds = %27, %106
  %43 = phi ptr [ %107, %106 ], [ %28, %27 ]
  %44 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !202
  %45 = and i32 %44, 16
  %46 = icmp ne i32 %45, 0
  %47 = icmp eq ptr %43, %1
  %48 = or i1 %47, %46
  br i1 %48, label %49, label %106

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.bScreen, ptr %43, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !34
  %52 = icmp eq ptr %51, null
  br i1 %52, label %106, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.bScreen, ptr %43, i64 0, i32 5
  br label %58

55:                                               ; preds = %103, %58
  %56 = load ptr, ptr %59, align 8, !tbaa !34
  %57 = icmp eq ptr %56, null
  br i1 %57, label %106, label %58, !llvm.loop !204

58:                                               ; preds = %53, %55
  %59 = phi ptr [ %51, %53 ], [ %56, %55 ]
  %60 = getelementptr inbounds %struct.ScrArea, ptr %59, i64 0, i32 19
  %61 = load ptr, ptr %60, align 8, !tbaa !34
  %62 = icmp eq ptr %61, null
  br i1 %62, label %55, label %63

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.ScrArea, ptr %59, i64 0, i32 20
  br label %65

65:                                               ; preds = %63, %103
  %66 = phi ptr [ %61, %63 ], [ %104, %103 ]
  %67 = getelementptr inbounds %struct.SpaceLink, ptr %66, i64 0, i32 3
  %68 = load i32, ptr %67, align 8, !tbaa !205
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %70, label %103

70:                                               ; preds = %65
  tail call void @BKE_screen_view3d_sync(ptr noundef nonnull %66, ptr noundef %2) #11
  %71 = getelementptr inbounds %struct.View3D, ptr %66, i64 0, i32 15
  %72 = load ptr, ptr %71, align 8, !tbaa !207
  %73 = icmp eq ptr %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %70
  %75 = tail call ptr @BKE_scene_base_find(ptr noundef %2, ptr noundef nonnull %72) #11
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %103

77:                                               ; preds = %74, %70
  %78 = load ptr, ptr %54, align 8, !tbaa !88
  %79 = tail call ptr @BKE_scene_camera_find(ptr noundef %78) #11
  store ptr %79, ptr %71, align 8, !tbaa !207
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %103

81:                                               ; preds = %77
  %82 = load ptr, ptr %60, align 8, !tbaa !209
  %83 = icmp eq ptr %82, %66
  %84 = getelementptr inbounds %struct.View3D, ptr %66, i64 0, i32 2
  %85 = select i1 %83, ptr %64, ptr %84
  %86 = load ptr, ptr %85, align 8, !tbaa !34
  %87 = icmp eq ptr %86, null
  br i1 %87, label %103, label %88

88:                                               ; preds = %81, %100
  %89 = phi ptr [ %101, %100 ], [ %86, %81 ]
  %90 = getelementptr inbounds %struct.ARegion, ptr %89, i64 0, i32 8
  %91 = load i16, ptr %90, align 2, !tbaa !184
  %92 = icmp eq i16 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.ARegion, ptr %89, i64 0, i32 30
  %95 = load ptr, ptr %94, align 8, !tbaa !210
  %96 = getelementptr inbounds %struct.RegionView3D, ptr %95, i64 0, i32 25
  %97 = load i8, ptr %96, align 1, !tbaa !211
  %98 = icmp eq i8 %97, 2
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  store i8 1, ptr %96, align 1, !tbaa !211
  br label %100

100:                                              ; preds = %99, %93, %88
  %101 = load ptr, ptr %89, align 8, !tbaa !34
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %88, !llvm.loop !213

103:                                              ; preds = %100, %81, %77, %74, %65
  %104 = load ptr, ptr %66, align 8, !tbaa !34
  %105 = icmp eq ptr %104, null
  br i1 %105, label %55, label %65, !llvm.loop !214

106:                                              ; preds = %55, %49, %42
  %107 = load ptr, ptr %43, align 8, !tbaa !34
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %42, !llvm.loop !215

109:                                              ; preds = %106, %27
  tail call void @CTX_data_scene_set(ptr noundef %0, ptr noundef %2) #11
  tail call void @BKE_scene_set_background(ptr noundef %4, ptr noundef %2) #11
  tail call void @DAG_on_visible_update(ptr noundef %4, i8 noundef zeroext 0) #11
  tail call void @ED_render_engine_changed(ptr noundef %4) #11
  tail call void @ED_update_for_newframe(ptr noundef %4, ptr noundef %2, i32 poison)
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 33554432, ptr noundef null) #11
  br label %110

110:                                              ; preds = %3, %109
  ret void
}

declare void @ED_object_editmode_exit(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @CTX_data_scene_set(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ED_render_engine_changed(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @ED_update_for_newframe(ptr noundef %0, ptr noundef %1, i32 %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 40
  %5 = load ptr, ptr %4, align 8, !tbaa !216
  %6 = tail call ptr @BKE_scene_camera_switch_find(ptr noundef %1) #11
  %7 = icmp eq ptr %6, null
  br i1 %7, label %20, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !217
  %11 = icmp eq ptr %10, %6
  br i1 %11, label %20, label %12

12:                                               ; preds = %8
  store ptr %6, ptr %9, align 8, !tbaa !217
  %13 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 26
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %12, %16
  %17 = phi ptr [ %18, %16 ], [ %14, %12 ]
  tail call void @BKE_screen_view3d_scene_sync(ptr noundef nonnull %17) #11
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %16, !llvm.loop !234

20:                                               ; preds = %16, %12, %8, %3
  %21 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 5
  %22 = load i32, ptr %21, align 8, !tbaa !235
  tail call void @ED_clip_update_frame(ptr noundef %0, i32 noundef %22) #11
  %23 = getelementptr inbounds %struct.wmWindowManager, ptr %5, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !34
  %25 = icmp eq ptr %24, null
  br i1 %25, label %35, label %26

26:                                               ; preds = %20, %26
  %27 = phi ptr [ %33, %26 ], [ %24, %20 ]
  %28 = phi i32 [ %32, %26 ], [ 0, %20 ]
  %29 = getelementptr inbounds %struct.wmWindow, ptr %27, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !106
  %31 = tail call i32 @BKE_screen_visible_layers(ptr noundef %30, ptr noundef %1) #11
  %32 = or i32 %31, %28
  %33 = load ptr, ptr %27, align 8, !tbaa !34
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %26, !llvm.loop !236

35:                                               ; preds = %26, %20
  %36 = phi i32 [ 0, %20 ], [ %32, %26 ]
  %37 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 46
  %38 = load ptr, ptr %37, align 8, !tbaa !237
  tail call void @BKE_scene_update_for_newframe(ptr noundef %38, ptr noundef %0, ptr noundef %1, i32 noundef %36) #11
  %39 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 16
  %40 = load i8, ptr %39, align 2, !tbaa !238
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 18
  %44 = load ptr, ptr %43, align 8, !tbaa !239
  %45 = icmp eq ptr %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %42
  %47 = tail call i32 @ntreeCompositTagAnimated(ptr noundef nonnull %44) #11
  br label %48

48:                                               ; preds = %46, %42, %35
  %49 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 18
  %50 = load ptr, ptr %49, align 8, !tbaa !34
  %51 = icmp eq ptr %50, null
  br i1 %51, label %66, label %52

52:                                               ; preds = %48, %63
  %53 = phi ptr [ %64, %63 ], [ %50, %48 ]
  %54 = getelementptr inbounds %struct.Tex, ptr %53, i64 0, i32 61
  %55 = load i8, ptr %54, align 8, !tbaa !240
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.Tex, ptr %53, i64 0, i32 52
  %59 = load ptr, ptr %58, align 8, !tbaa !243
  %60 = icmp eq ptr %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %57
  %62 = tail call i32 @ntreeTexTagAnimated(ptr noundef nonnull %59) #11
  br label %63

63:                                               ; preds = %52, %57, %61
  %64 = load ptr, ptr %53, align 8, !tbaa !34
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %52, !llvm.loop !244

66:                                               ; preds = %63, %48
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_screen_delete_scene(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #11
  %4 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !245
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load ptr, ptr %1, align 8, !tbaa !246
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %7, %2
  %11 = phi ptr [ %5, %2 ], [ %8, %7 ]
  %12 = tail call ptr @CTX_wm_screen(ptr noundef %0) #11
  tail call void @ED_screen_set_scene(ptr noundef %0, ptr noundef %12, ptr noundef nonnull %11)
  tail call void @BKE_scene_unlink(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %11) #11
  br label %13

13:                                               ; preds = %7, %10
  ret void
}

declare void @BKE_scene_unlink(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @ED_screen_full_newspace(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = tail call ptr @CTX_wm_window(ptr noundef %0) #11
  %5 = tail call ptr @CTX_wm_screen(ptr noundef %0) #11
  %6 = icmp eq ptr %1, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !195
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %7, %3
  %12 = tail call ptr @ED_screen_state_toggle(ptr noundef %0, ptr noundef %4, ptr noundef %1, i16 noundef signext 1)
  br label %13

13:                                               ; preds = %11, %7
  %14 = phi ptr [ %12, %11 ], [ null, %7 ]
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %35

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !195
  %19 = icmp eq ptr %18, null
  br i1 %19, label %35, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.bScreen, ptr %5, i64 0, i32 9
  %22 = load i16, ptr %21, align 8, !tbaa !98
  %23 = icmp eq i16 %22, 1
  br i1 %23, label %24, label %35

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.bScreen, ptr %5, i64 0, i32 3
  %26 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 14
  br label %27

27:                                               ; preds = %31, %24
  %28 = phi ptr [ %25, %24 ], [ %29, %31 ]
  %29 = load ptr, ptr %28, align 8, !tbaa !34
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load i16, ptr %26, align 2, !tbaa !94
  %33 = and i16 %32, 8
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %35, label %27, !llvm.loop !247

35:                                               ; preds = %31, %27, %16, %20, %13
  %36 = phi ptr [ %14, %13 ], [ %1, %20 ], [ %1, %16 ], [ %29, %31 ], [ null, %27 ]
  tail call void @ED_area_newspace(ptr noundef %0, ptr noundef %36, i32 noundef %2) #11
  ret ptr %36
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ED_screen_state_toggle(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef signext %3) local_unnamed_addr #2 {
  %5 = alloca [64 x i8], align 16
  %6 = icmp eq ptr %2, null
  br i1 %6, label %65, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 20
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %7, %11
  %12 = phi ptr [ %14, %11 ], [ %9, %7 ]
  %13 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 21
  tail call void @uiFreeBlocks(ptr noundef %0, ptr noundef nonnull %13) #11
  %14 = load ptr, ptr %12, align 8, !tbaa !34
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %11, !llvm.loop !248

16:                                               ; preds = %11, %7
  tail call void @ED_area_headerprint(ptr noundef nonnull %2, ptr noundef null) #11
  %17 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !195
  %19 = icmp eq ptr %18, null
  br i1 %19, label %65, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.wmWindow, ptr %1, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !106
  %23 = getelementptr inbounds %struct.bScreen, ptr %18, i64 0, i32 9
  store i16 0, ptr %23, align 8, !tbaa !98
  %24 = getelementptr inbounds %struct.bScreen, ptr %18, i64 0, i32 3
  br label %25

25:                                               ; preds = %29, %20
  %26 = phi ptr [ %24, %20 ], [ %27, %29 ]
  %27 = load ptr, ptr %26, align 8, !tbaa !34
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.ScrArea, ptr %27, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !195
  %32 = icmp eq ptr %31, null
  br i1 %32, label %25, label %39, !llvm.loop !249

33:                                               ; preds = %25
  %34 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !163
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %64, label %37

37:                                               ; preds = %33
  %38 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, ptr noundef nonnull @__func__.ED_screen_state_toggle)
  br label %64

39:                                               ; preds = %29
  %40 = getelementptr inbounds %struct.ScrArea, ptr %27, i64 0, i32 6
  %41 = icmp eq i16 %3, 2
  br i1 %41, label %42, label %52

42:                                               ; preds = %39
  %43 = load ptr, ptr %8, align 8, !tbaa !34
  %44 = icmp eq ptr %43, null
  br i1 %44, label %52, label %45

45:                                               ; preds = %42, %45
  %46 = phi ptr [ %50, %45 ], [ %43, %42 ]
  %47 = getelementptr inbounds %struct.ARegion, ptr %46, i64 0, i32 18
  %48 = load i16, ptr %47, align 4, !tbaa !250
  %49 = getelementptr inbounds %struct.ARegion, ptr %46, i64 0, i32 10
  store i16 %48, ptr %49, align 2, !tbaa !152
  %50 = load ptr, ptr %46, align 8, !tbaa !34
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %45, !llvm.loop !251

52:                                               ; preds = %45, %42, %39
  tail call void @ED_area_data_swap(ptr noundef nonnull %27, ptr noundef nonnull %2) #11
  %53 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 14
  %54 = load i16, ptr %53, align 2, !tbaa !94
  %55 = and i16 %54, 8
  %56 = icmp eq i16 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %52
  %58 = and i16 %54, -9
  store i16 %58, ptr %53, align 2, !tbaa !94
  br label %59

59:                                               ; preds = %57, %52
  store ptr null, ptr %40, align 8, !tbaa !195
  %60 = getelementptr inbounds %struct.bScreen, ptr %22, i64 0, i32 21
  %61 = load ptr, ptr %60, align 8, !tbaa !162
  %62 = getelementptr inbounds %struct.bScreen, ptr %18, i64 0, i32 21
  store ptr %61, ptr %62, align 8, !tbaa !162
  store ptr null, ptr %60, align 8, !tbaa !162
  tail call void @ED_screen_set(ptr noundef %0, ptr noundef nonnull %18)
  tail call void @BKE_screen_free(ptr noundef %22) #11
  %63 = tail call ptr @CTX_data_main(ptr noundef %0) #11
  tail call void @BKE_libblock_free(ptr noundef %63, ptr noundef %22) #11
  br label %64

64:                                               ; preds = %33, %37, %59
  br i1 %28, label %127, label %122

65:                                               ; preds = %4, %16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #11
  %66 = getelementptr inbounds %struct.wmWindow, ptr %1, i64 0, i32 3
  %67 = load ptr, ptr %66, align 8, !tbaa !106
  %68 = getelementptr inbounds %struct.bScreen, ptr %67, i64 0, i32 9
  store i16 %3, ptr %68, align 8, !tbaa !98
  %69 = getelementptr inbounds %struct.ID, ptr %67, i64 0, i32 4, i64 2
  %70 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 64, ptr noundef nonnull @.str.6, ptr noundef nonnull %69, ptr noundef nonnull @.str.7) #11
  %71 = getelementptr inbounds %struct.bScreen, ptr %67, i64 0, i32 5
  %72 = load ptr, ptr %71, align 8, !tbaa !88
  %73 = call ptr @ED_screen_add(ptr noundef %1, ptr noundef %72, ptr noundef nonnull %5)
  %74 = getelementptr inbounds %struct.bScreen, ptr %73, i64 0, i32 9
  store i16 %3, ptr %74, align 8, !tbaa !98
  %75 = getelementptr inbounds %struct.bScreen, ptr %67, i64 0, i32 21
  %76 = load ptr, ptr %75, align 8, !tbaa !162
  %77 = getelementptr inbounds %struct.bScreen, ptr %73, i64 0, i32 21
  store ptr %76, ptr %77, align 8, !tbaa !162
  store ptr null, ptr %75, align 8, !tbaa !162
  br i1 %6, label %78, label %81

78:                                               ; preds = %65
  %79 = getelementptr inbounds %struct.bScreen, ptr %67, i64 0, i32 3
  %80 = load ptr, ptr %79, align 8, !tbaa !194
  br label %81

81:                                               ; preds = %78, %65
  %82 = phi ptr [ %2, %65 ], [ %80, %78 ]
  switch i16 %3, label %121 [
    i16 1, label %83
    i16 2, label %95
  ]

83:                                               ; preds = %81
  %84 = getelementptr inbounds %struct.bScreen, ptr %73, i64 0, i32 3
  %85 = load ptr, ptr %84, align 8, !tbaa !194
  %86 = call ptr @area_split(ptr noundef %73, ptr noundef %85, i8 noundef zeroext 104, float noundef 0x3FEFAE1480000000, i32 noundef 1)
  call void @ED_area_newspace(ptr noundef %0, ptr noundef %86, i32 noundef 7) #11
  %87 = getelementptr inbounds %struct.ScrArea, ptr %86, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !252
  call void @ED_area_data_swap(ptr noundef %88, ptr noundef %82) #11
  %89 = getelementptr inbounds %struct.ScrArea, ptr %82, i64 0, i32 14
  %90 = load i16, ptr %89, align 2, !tbaa !94
  %91 = or i16 %90, 8
  store i16 %91, ptr %89, align 2, !tbaa !94
  %92 = getelementptr inbounds %struct.ScrArea, ptr %82, i64 0, i32 6
  store ptr %67, ptr %92, align 8, !tbaa !195
  %93 = getelementptr inbounds %struct.ScrArea, ptr %88, i64 0, i32 6
  store ptr %67, ptr %93, align 8, !tbaa !195
  %94 = load ptr, ptr %88, align 8, !tbaa !253
  br label %118

95:                                               ; preds = %81
  %96 = getelementptr inbounds %struct.bScreen, ptr %73, i64 0, i32 3
  %97 = load ptr, ptr %96, align 8, !tbaa !194
  call void @ED_area_data_swap(ptr noundef %97, ptr noundef %82) #11
  %98 = getelementptr inbounds %struct.ScrArea, ptr %82, i64 0, i32 14
  %99 = load i16, ptr %98, align 2, !tbaa !94
  %100 = getelementptr inbounds %struct.ScrArea, ptr %97, i64 0, i32 14
  store i16 %99, ptr %100, align 2, !tbaa !94
  %101 = getelementptr inbounds %struct.ScrArea, ptr %97, i64 0, i32 20
  %102 = load ptr, ptr %101, align 8, !tbaa !34
  %103 = icmp eq ptr %102, null
  br i1 %103, label %116, label %104

104:                                              ; preds = %95, %113
  %105 = phi ptr [ %114, %113 ], [ %102, %95 ]
  %106 = getelementptr inbounds %struct.ARegion, ptr %105, i64 0, i32 10
  %107 = load i16, ptr %106, align 2, !tbaa !152
  %108 = getelementptr inbounds %struct.ARegion, ptr %105, i64 0, i32 18
  store i16 %107, ptr %108, align 4, !tbaa !250
  %109 = getelementptr inbounds %struct.ARegion, ptr %105, i64 0, i32 8
  %110 = load i16, ptr %109, align 2, !tbaa !184
  switch i16 %110, label %113 [
    i16 4, label %111
    i16 1, label %111
    i16 5, label %111
  ]

111:                                              ; preds = %104, %104, %104
  %112 = or i16 %107, 1
  store i16 %112, ptr %106, align 2, !tbaa !152
  br label %113

113:                                              ; preds = %104, %111
  %114 = load ptr, ptr %105, align 8, !tbaa !34
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %104, !llvm.loop !254

116:                                              ; preds = %113, %95
  %117 = getelementptr inbounds %struct.ScrArea, ptr %82, i64 0, i32 6
  store ptr %67, ptr %117, align 8, !tbaa !195
  br label %118

118:                                              ; preds = %83, %116
  %119 = phi ptr [ %97, %116 ], [ %94, %83 ]
  %120 = getelementptr inbounds %struct.ScrArea, ptr %119, i64 0, i32 6
  store ptr %67, ptr %120, align 8, !tbaa !195
  br label %121

121:                                              ; preds = %118, %81
  call void @ED_screen_set(ptr noundef %0, ptr noundef %73)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #11
  br label %122

122:                                              ; preds = %64, %121
  %123 = phi ptr [ %18, %64 ], [ %73, %121 ]
  %124 = getelementptr inbounds %struct.bScreen, ptr %123, i64 0, i32 3
  %125 = load ptr, ptr %124, align 8, !tbaa !194
  call void @CTX_wm_area_set(ptr noundef %0, ptr noundef %125) #11
  %126 = load ptr, ptr %124, align 8, !tbaa !194
  br label %127

127:                                              ; preds = %64, %122
  %128 = phi ptr [ %126, %122 ], [ null, %64 ]
  ret ptr %128
}

declare void @ED_area_newspace(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @ED_screen_full_prevspace(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = tail call ptr @CTX_wm_window(ptr noundef %0) #11
  tail call void @ED_area_prevspace(ptr noundef %0, ptr noundef %1) #11
  %4 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !195
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @ED_screen_state_toggle(ptr noundef %0, ptr noundef %3, ptr noundef %1, i16 noundef signext 1)
  br label %9

9:                                                ; preds = %7, %2
  ret void
}

declare void @ED_area_prevspace(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @ED_screen_full_restore(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = tail call ptr @CTX_wm_window(ptr noundef %0) #11
  %4 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !209
  %6 = tail call ptr @CTX_wm_screen(ptr noundef %0) #11
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.bScreen, ptr %6, i64 0, i32 9
  %10 = load i16, ptr %9, align 8, !tbaa !98
  br label %11

11:                                               ; preds = %2, %8
  %12 = phi i16 [ %10, %8 ], [ 1, %2 ]
  %13 = load ptr, ptr %5, align 8, !tbaa !255
  %14 = icmp eq ptr %13, null
  br i1 %14, label %43, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.SpaceLink, ptr %5, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !205
  switch i32 %17, label %41 [
    i32 6, label %18
    i32 5, label %34
  ]

18:                                               ; preds = %15
  %19 = load ptr, ptr %4, align 8, !tbaa !209
  %20 = getelementptr inbounds %struct.SpaceImage, ptr %19, i64 0, i32 4
  %21 = load i32, ptr %20, align 4, !tbaa !256
  %22 = and i32 %21, 98304
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %18
  %25 = and i32 %21, -98305
  store i32 %25, ptr %20, align 4, !tbaa !256
  %26 = tail call ptr @CTX_wm_window(ptr noundef %0) #11
  tail call void @ED_area_prevspace(ptr noundef %0, ptr noundef %1) #11
  %27 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !195
  %29 = icmp eq ptr %28, null
  br i1 %29, label %45, label %30

30:                                               ; preds = %24
  %31 = tail call ptr @ED_screen_state_toggle(ptr noundef %0, ptr noundef %26, ptr noundef %1, i16 noundef signext 1)
  br label %45

32:                                               ; preds = %18
  %33 = tail call ptr @ED_screen_state_toggle(ptr noundef %0, ptr noundef %3, ptr noundef %1, i16 noundef signext %12)
  br label %45

34:                                               ; preds = %15
  %35 = tail call ptr @CTX_wm_window(ptr noundef %0) #11
  tail call void @ED_area_prevspace(ptr noundef %0, ptr noundef %1) #11
  %36 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !195
  %38 = icmp eq ptr %37, null
  br i1 %38, label %45, label %39

39:                                               ; preds = %34
  %40 = tail call ptr @ED_screen_state_toggle(ptr noundef %0, ptr noundef %35, ptr noundef %1, i16 noundef signext 1)
  br label %45

41:                                               ; preds = %15
  %42 = tail call ptr @ED_screen_state_toggle(ptr noundef %0, ptr noundef %3, ptr noundef %1, i16 noundef signext %12)
  br label %45

43:                                               ; preds = %11
  %44 = tail call ptr @ED_screen_state_toggle(ptr noundef %0, ptr noundef %3, ptr noundef %1, i16 noundef signext %12)
  br label %45

45:                                               ; preds = %39, %34, %30, %24, %32, %41, %43
  ret void
}

declare void @uiFreeBlocks(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ED_area_headerprint(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ED_area_data_swap(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BKE_screen_free(ptr noundef) local_unnamed_addr #3

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @ED_refresh_viewport_fps(ptr noundef %0) local_unnamed_addr #2 {
  %2 = tail call ptr @CTX_wm_screen(ptr noundef %0) #11
  %3 = getelementptr inbounds %struct.bScreen, ptr %2, i64 0, i32 21
  %4 = load ptr, ptr %3, align 8, !tbaa !162
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #11
  %6 = icmp eq ptr %4, null
  br i1 %6, label %24, label %7

7:                                                ; preds = %1
  %8 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !261
  %9 = and i32 %8, 2097152
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %24, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 30
  %13 = load ptr, ptr %12, align 8, !tbaa !262
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %17 = tail call ptr %16(i64 noundef 56, ptr noundef nonnull @.str.8) #11
  store ptr %17, ptr %12, align 8, !tbaa !262
  br label %18

18:                                               ; preds = %15, %11
  %19 = phi ptr [ %17, %15 ], [ %13, %11 ]
  %20 = getelementptr inbounds %struct.ScreenFrameRateInfo, ptr %19, i64 0, i32 1
  %21 = load double, ptr %20, align 8, !tbaa !263
  store double %21, ptr %19, align 8, !tbaa !265
  %22 = getelementptr inbounds %struct.wmTimer, ptr %4, i64 0, i32 8
  %23 = load double, ptr %22, align 8, !tbaa !266
  store double %23, ptr %20, align 8, !tbaa !263
  br label %31

24:                                               ; preds = %7, %1
  %25 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 30
  %26 = load ptr, ptr %25, align 8, !tbaa !262
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %29(ptr noundef nonnull %26) #11
  br label %30

30:                                               ; preds = %28, %24
  store ptr null, ptr %25, align 8, !tbaa !262
  br label %31

31:                                               ; preds = %30, %18
  ret void
}

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @ED_screen_animation_timer(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 {
  %6 = tail call ptr @CTX_wm_screen(ptr noundef %0) #11
  %7 = tail call ptr @CTX_wm_manager(ptr noundef %0) #11
  %8 = tail call ptr @CTX_wm_window(ptr noundef %0) #11
  %9 = tail call ptr @CTX_data_scene(ptr noundef %0) #11
  %10 = tail call ptr @ED_screen_animation_playing(ptr noundef %7) #11
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.bScreen, ptr %10, i64 0, i32 21
  %14 = load ptr, ptr %13, align 8, !tbaa !162
  tail call void @WM_event_remove_timer(ptr noundef %7, ptr noundef %8, ptr noundef %14) #11
  store ptr null, ptr %13, align 8, !tbaa !162
  br label %15

15:                                               ; preds = %12, %5
  %16 = icmp eq i32 %4, 0
  br i1 %16, label %65, label %17

17:                                               ; preds = %15
  %18 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %19 = tail call ptr %18(i64 noundef 32, ptr noundef nonnull @.str.9) #11
  %20 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 55
  %21 = load i16, ptr %20, align 4, !tbaa !268
  %22 = sitofp i16 %21 to double
  %23 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 65
  %24 = load float, ptr %23, align 4, !tbaa !269
  %25 = fpext float %24 to double
  %26 = fdiv double %22, %25
  %27 = fdiv double 1.000000e+00, %26
  %28 = tail call ptr @WM_event_add_timer(ptr noundef %7, ptr noundef %8, i32 noundef 273, double noundef %27) #11
  %29 = getelementptr inbounds %struct.bScreen, ptr %6, i64 0, i32 21
  store ptr %28, ptr %29, align 8, !tbaa !162
  %30 = tail call ptr @CTX_wm_region(ptr noundef %0) #11
  store ptr %30, ptr %19, align 8, !tbaa !270
  %31 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 13
  %32 = load i16, ptr %31, align 8, !tbaa !272
  %33 = and i16 %32, 1
  %34 = icmp eq i16 %33, 0
  %35 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 5
  %36 = load i32, ptr %35, align 8, !tbaa !235
  %37 = getelementptr inbounds %struct.ScreenAnimData, ptr %19, i64 0, i32 4
  br i1 %34, label %42, label %38

38:                                               ; preds = %17
  %39 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 9
  %40 = load i32, ptr %39, align 8, !tbaa !273
  %41 = icmp sgt i32 %40, %36
  store i32 %36, ptr %37, align 8, !tbaa !274
  br i1 %41, label %46, label %48

42:                                               ; preds = %17
  %43 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 6
  %44 = load i32, ptr %43, align 4, !tbaa !275
  %45 = icmp sgt i32 %44, %36
  store i32 %36, ptr %37, align 8, !tbaa !274
  br i1 %45, label %46, label %48

46:                                               ; preds = %42, %38
  %47 = phi i32 [ %40, %38 ], [ %44, %42 ]
  store i32 %47, ptr %35, align 8, !tbaa !235
  br label %48

48:                                               ; preds = %46, %42, %38
  %49 = trunc i32 %1 to i16
  %50 = getelementptr inbounds %struct.ScreenAnimData, ptr %19, i64 0, i32 1
  store i16 %49, ptr %50, align 8, !tbaa !276
  %51 = trunc i32 %2 to i16
  %52 = getelementptr inbounds %struct.ScreenAnimData, ptr %19, i64 0, i32 2
  store i16 %51, ptr %52, align 2, !tbaa !277
  %53 = lshr i32 %4, 31
  %54 = getelementptr inbounds %struct.ScreenAnimData, ptr %19, i64 0, i32 3
  %55 = load i16, ptr %54, align 4, !tbaa !278
  %56 = trunc i32 %53 to i16
  %57 = icmp eq i32 %3, 0
  %58 = icmp eq i32 %3, 1
  %59 = select i1 %58, i16 4, i16 0
  %60 = select i1 %57, i16 8, i16 %59
  %61 = or disjoint i16 %60, %56
  %62 = or i16 %61, %55
  store i16 %62, ptr %54, align 4, !tbaa !278
  %63 = load ptr, ptr %29, align 8, !tbaa !162
  %64 = getelementptr inbounds %struct.wmTimer, ptr %63, i64 0, i32 5
  store ptr %19, ptr %64, align 8, !tbaa !279
  br label %65

65:                                               ; preds = %48, %15
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 50593792, ptr noundef null) #11
  ret void
}

declare ptr @ED_screen_animation_playing(ptr noundef) local_unnamed_addr #3

declare ptr @WM_event_add_timer(ptr noundef, ptr noundef, i32 noundef, double noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ED_screen_animation_timer_update(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %61, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 21
  %7 = load ptr, ptr %6, align 8, !tbaa !162
  %8 = icmp eq ptr %7, null
  br i1 %8, label %61, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.wmTimer, ptr %7, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !279
  %12 = trunc i32 %1 to i16
  %13 = getelementptr inbounds %struct.ScreenAnimData, ptr %11, i64 0, i32 1
  store i16 %12, ptr %13, align 8, !tbaa !276
  %14 = trunc i32 %2 to i16
  %15 = getelementptr inbounds %struct.ScreenAnimData, ptr %11, i64 0, i32 2
  store i16 %14, ptr %15, align 2, !tbaa !277
  store ptr null, ptr %11, align 8, !tbaa !270
  %16 = and i32 %1, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %61, label %18

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !34
  %21 = icmp eq ptr %20, null
  br i1 %21, label %59, label %22

22:                                               ; preds = %18, %54
  %23 = phi ptr [ %57, %54 ], [ %20, %18 ]
  %24 = phi i32 [ %56, %54 ], [ 10000, %18 ]
  %25 = phi ptr [ %55, %54 ], [ null, %18 ]
  %26 = getelementptr inbounds %struct.ScrArea, ptr %23, i64 0, i32 8
  %27 = load i8, ptr %26, align 8, !tbaa !84
  %28 = icmp eq i8 %27, 1
  br i1 %28, label %29, label %54

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.ScrArea, ptr %23, i64 0, i32 20
  %31 = load ptr, ptr %30, align 8, !tbaa !34
  %32 = icmp eq ptr %31, null
  br i1 %32, label %54, label %33

33:                                               ; preds = %29, %49
  %34 = phi ptr [ %52, %49 ], [ %31, %29 ]
  %35 = phi i32 [ %51, %49 ], [ %24, %29 ]
  %36 = phi ptr [ %50, %49 ], [ %25, %29 ]
  %37 = getelementptr inbounds %struct.ARegion, ptr %34, i64 0, i32 8
  %38 = load i16, ptr %37, align 2, !tbaa !184
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.ARegion, ptr %34, i64 0, i32 3
  %42 = load i32, ptr %41, align 8, !tbaa !280
  %43 = getelementptr inbounds %struct.ARegion, ptr %34, i64 0, i32 3, i32 2
  %44 = load i32, ptr %43, align 8, !tbaa !281
  %45 = sub nsw i32 %42, %44
  %46 = icmp slt i32 %45, %35
  %47 = select i1 %46, ptr %34, ptr %36
  %48 = tail call i32 @llvm.smin.i32(i32 %45, i32 %35)
  br label %49

49:                                               ; preds = %40, %33
  %50 = phi ptr [ %36, %33 ], [ %47, %40 ]
  %51 = phi i32 [ %35, %33 ], [ %48, %40 ]
  %52 = load ptr, ptr %34, align 8, !tbaa !34
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %33, !llvm.loop !282

54:                                               ; preds = %49, %29, %22
  %55 = phi ptr [ %25, %22 ], [ %25, %29 ], [ %50, %49 ]
  %56 = phi i32 [ %24, %22 ], [ %24, %29 ], [ %51, %49 ]
  %57 = load ptr, ptr %23, align 8, !tbaa !34
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %22, !llvm.loop !283

59:                                               ; preds = %54, %18
  %60 = phi ptr [ null, %18 ], [ %55, %54 ]
  store ptr %60, ptr %11, align 8, !tbaa !270
  br label %61

61:                                               ; preds = %9, %59, %5, %3
  ret void
}

declare ptr @BKE_scene_camera_switch_find(ptr noundef) local_unnamed_addr #3

declare void @BKE_screen_view3d_scene_sync(ptr noundef) local_unnamed_addr #3

declare void @ED_clip_update_frame(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @BKE_screen_visible_layers(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BKE_scene_update_for_newframe(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ntreeCompositTagAnimated(ptr noundef) local_unnamed_addr #3

declare i32 @ntreeTexTagAnimated(ptr noundef) local_unnamed_addr #3

declare i32 @ED_area_headersize() local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BKE_screen_area_free(ptr noundef) local_unnamed_addr #3

declare void @BLI_duplicatelist(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @WM_cursor_set(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @glColor3ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

declare void @glLineWidth(float noundef) local_unnamed_addr #3

declare void @glBlendFunc(i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @glBegin(i32 noundef) local_unnamed_addr #3

declare void @glVertex2f(float noundef, float noundef) local_unnamed_addr #3

declare void @glEnd() local_unnamed_addr #3

declare void @glRectf(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #3

declare void @glRecti(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @BKE_spacetypes_list() local_unnamed_addr #3

declare ptr @BKE_regiontype_from_id(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @minmax_v2v2_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BKE_area_find_region_type(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @BKE_screen_view3d_sync(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BKE_scene_base_find(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BKE_scene_camera_find(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smin.i16(i16, i16) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

attributes #0 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind }

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
!38 = !{!39, !35, i64 16}
!39 = !{!"ScrEdge", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !40, i64 32, !40, i64 34, !41, i64 36}
!40 = !{!"short", !36, i64 0}
!41 = !{!"int", !36, i64 0}
!42 = !{!39, !35, i64 24}
!43 = distinct !{!43, !44, !45}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!"llvm.loop.unroll.disable"}
!46 = !{!47, !35, i64 16}
!47 = !{!"ScrVert", !35, i64 0, !35, i64 8, !35, i64 16, !48, i64 24, !40, i64 28, !40, i64 30}
!48 = !{!"vec2s", !40, i64 0, !40, i64 2}
!49 = !{!47, !35, i64 0}
!50 = !{!47, !40, i64 24}
!51 = !{!47, !40, i64 26}
!52 = distinct !{!52, !44, !45}
!53 = distinct !{!53, !44, !45}
!54 = distinct !{!54, !44, !45}
!55 = !{!56, !35, i64 16}
!56 = !{!"ScrArea", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !57, i64 56, !36, i64 72, !36, i64 73, !40, i64 74, !40, i64 76, !40, i64 78, !40, i64 80, !40, i64 82, !40, i64 84, !36, i64 86, !36, i64 87, !35, i64 88, !58, i64 96, !58, i64 112, !58, i64 128, !58, i64 144}
!57 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!58 = !{!"ListBase", !35, i64 0, !35, i64 8}
!59 = !{!56, !35, i64 24}
!60 = !{!56, !35, i64 32}
!61 = !{!56, !35, i64 40}
!62 = distinct !{!62, !44, !45}
!63 = !{!64, !35, i64 120}
!64 = !{!"bScreen", !65, i64 0, !58, i64 120, !58, i64 136, !58, i64 152, !58, i64 168, !35, i64 184, !35, i64 192, !41, i64 200, !41, i64 204, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !40, i64 216, !40, i64 218, !40, i64 220, !40, i64 222, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !35, i64 232, !35, i64 240}
!65 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !40, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !35, i64 112}
!66 = distinct !{!66, !44, !45}
!67 = !{!47, !40, i64 28}
!68 = distinct !{!68, !44, !45}
!69 = distinct !{!69, !44, !45}
!70 = distinct !{!70, !44, !45}
!71 = !{!39, !35, i64 0}
!72 = distinct !{!72, !44, !45}
!73 = !{!39, !40, i64 34}
!74 = distinct !{!74, !44, !45}
!75 = !{!64, !35, i64 136}
!76 = distinct !{!76, !44, !45}
!77 = !{!78, !40, i64 8948}
!78 = !{!"UserDef", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !36, i64 20, !36, i64 788, !36, i64 1556, !36, i64 2580, !36, i64 3348, !36, i64 4116, !36, i64 4884, !36, i64 5652, !36, i64 6420, !36, i64 7444, !41, i64 8468, !40, i64 8472, !40, i64 8474, !40, i64 8476, !40, i64 8478, !40, i64 8480, !40, i64 8482, !41, i64 8484, !41, i64 8488, !41, i64 8492, !40, i64 8496, !40, i64 8498, !41, i64 8500, !41, i64 8504, !41, i64 8508, !41, i64 8512, !41, i64 8516, !41, i64 8520, !41, i64 8524, !40, i64 8528, !40, i64 8530, !40, i64 8532, !40, i64 8534, !58, i64 8536, !58, i64 8552, !58, i64 8568, !58, i64 8584, !58, i64 8600, !58, i64 8616, !58, i64 8632, !36, i64 8648, !40, i64 8712, !40, i64 8714, !40, i64 8716, !40, i64 8718, !40, i64 8720, !40, i64 8722, !40, i64 8724, !40, i64 8726, !36, i64 8728, !40, i64 8896, !40, i64 8898, !40, i64 8900, !40, i64 8902, !40, i64 8904, !40, i64 8906, !40, i64 8908, !40, i64 8910, !41, i64 8912, !41, i64 8916, !40, i64 8920, !40, i64 8922, !40, i64 8924, !40, i64 8926, !40, i64 8928, !40, i64 8930, !40, i64 8932, !40, i64 8934, !40, i64 8936, !40, i64 8938, !36, i64 8940, !36, i64 8941, !36, i64 8942, !36, i64 8943, !40, i64 8944, !40, i64 8946, !40, i64 8948, !40, i64 8950, !40, i64 8952, !40, i64 8954, !79, i64 8956, !79, i64 8960, !41, i64 8964, !40, i64 8968, !40, i64 8970, !79, i64 8972, !40, i64 8976, !40, i64 8978, !40, i64 8980, !40, i64 8982, !80, i64 8984, !36, i64 9760, !36, i64 9772, !40, i64 9788, !36, i64 9790, !36, i64 9791, !36, i64 9792, !36, i64 9872, !41, i64 10896, !41, i64 10900, !79, i64 10904, !79, i64 10908, !41, i64 10912, !40, i64 10916, !40, i64 10918, !40, i64 10920, !40, i64 10922, !40, i64 10924, !40, i64 10926, !81, i64 10928}
!79 = !{!"float", !36, i64 0}
!80 = !{!"ColorBand", !40, i64 0, !40, i64 2, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !36, i64 8}
!81 = !{!"WalkNavigation", !79, i64 0, !79, i64 4, !79, i64 8, !79, i64 12, !79, i64 16, !79, i64 20, !40, i64 24, !36, i64 26}
!82 = distinct !{!82, !44, !45}
!83 = !{!56, !40, i64 78}
!84 = !{!56, !36, i64 72}
!85 = !{!56, !36, i64 73}
!86 = !{!87, !35, i64 0}
!87 = !{!"Global", !35, i64 0, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 2057, !36, i64 2058, !58, i64 2064, !36, i64 2080, !36, i64 2081, !36, i64 2082, !40, i64 2084, !40, i64 2086, !40, i64 2088, !36, i64 2090, !40, i64 2092, !41, i64 2096, !41, i64 2100, !36, i64 2104, !41, i64 2108, !41, i64 2112, !36, i64 2116}
!88 = !{!64, !35, i64 184}
!89 = !{!64, !40, i64 216}
!90 = !{!64, !41, i64 200}
!91 = !{!92, !41, i64 128}
!92 = !{!"wmWindow", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !36, i64 40, !40, i64 104, !40, i64 106, !40, i64 108, !40, i64 110, !40, i64 112, !40, i64 114, !40, i64 116, !40, i64 118, !40, i64 120, !40, i64 122, !40, i64 124, !40, i64 126, !41, i64 128, !40, i64 132, !40, i64 134, !35, i64 136, !35, i64 144, !35, i64 152, !41, i64 160, !41, i64 164, !35, i64 168, !58, i64 176, !58, i64 192, !58, i64 208, !58, i64 224, !58, i64 240}
!93 = !{!64, !40, i64 212}
!94 = !{!56, !40, i64 82}
!95 = distinct !{!95, !44, !45}
!96 = distinct !{!96, !44, !45}
!97 = distinct !{!97, !44, !45}
!98 = !{!64, !40, i64 208}
!99 = distinct !{!99, !44, !45}
!100 = distinct !{!100, !44, !45}
!101 = distinct !{!101, !44, !45}
!102 = distinct !{!102, !44, !45}
!103 = !{!104, !41, i64 36}
!104 = !{!"wmNotifier", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !35, i64 56}
!105 = !{!104, !41, i64 40}
!106 = !{!92, !35, i64 24}
!107 = !{!64, !40, i64 214}
!108 = !{!104, !41, i64 48}
!109 = !{!104, !41, i64 32}
!110 = distinct !{!110, !44, !45}
!111 = !{!112, !40, i64 212}
!112 = !{!"ARegion", !35, i64 0, !35, i64 8, !113, i64 16, !57, i64 176, !57, i64 192, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !40, i64 216, !40, i64 218, !79, i64 220, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !40, i64 232, !40, i64 234, !40, i64 236, !40, i64 238, !35, i64 240, !58, i64 248, !58, i64 264, !58, i64 280, !58, i64 296, !58, i64 312, !58, i64 328, !58, i64 344, !35, i64 360, !35, i64 368, !35, i64 376}
!113 = !{!"View2D", !114, i64 0, !114, i64 16, !57, i64 32, !57, i64 48, !57, i64 64, !36, i64 80, !36, i64 88, !79, i64 96, !79, i64 100, !40, i64 104, !40, i64 106, !40, i64 108, !40, i64 110, !40, i64 112, !40, i64 114, !40, i64 116, !40, i64 118, !40, i64 120, !40, i64 122, !40, i64 124, !40, i64 126, !35, i64 128, !41, i64 136, !41, i64 140, !35, i64 144, !35, i64 152}
!114 = !{!"rctf", !79, i64 0, !79, i64 4, !79, i64 8, !79, i64 12}
!115 = distinct !{!115, !44, !45}
!116 = !{!112, !35, i64 240}
!117 = !{!118, !35, i64 88}
!118 = !{!"ARegionType", !35, i64 0, !35, i64 8, !41, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !35, i64 88, !35, i64 96, !58, i64 104, !58, i64 120, !58, i64 136, !41, i64 152, !41, i64 156, !41, i64 160, !41, i64 164, !41, i64 168, !40, i64 172, !40, i64 174, !40, i64 176}
!119 = !{!64, !40, i64 226}
!120 = !{!78, !79, i64 10908}
!121 = distinct !{!121, !44, !45}
!122 = distinct !{!122, !44, !45}
!123 = !{!124, !79, i64 0}
!124 = !{!"vec2f", !79, i64 0, !79, i64 4}
!125 = !{!124, !79, i64 4}
!126 = distinct !{!126, !44, !45}
!127 = distinct !{!127, !44, !45}
!128 = distinct !{!128, !44, !45}
!129 = distinct !{!129, !44, !45}
!130 = distinct !{!130, !44, !45}
!131 = distinct !{!131, !44, !45}
!132 = !{!56, !41, i64 56}
!133 = !{!92, !35, i64 136}
!134 = !{!135, !41, i64 24}
!135 = !{!"wmEvent", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 18, !41, i64 20, !41, i64 24, !36, i64 28, !36, i64 36, !36, i64 42, !36, i64 43, !40, i64 44, !40, i64 46, !41, i64 48, !41, i64 52, !136, i64 56, !41, i64 64, !41, i64 68, !40, i64 72, !40, i64 74, !40, i64 76, !40, i64 78, !40, i64 80, !40, i64 82, !35, i64 88, !35, i64 96, !40, i64 104, !40, i64 106, !41, i64 108, !35, i64 112}
!136 = !{!"double", !36, i64 0}
!137 = !{!56, !41, i64 60}
!138 = !{!135, !41, i64 20}
!139 = !{!56, !41, i64 64}
!140 = !{!56, !41, i64 68}
!141 = !{!87, !36, i64 2081}
!142 = !{!57, !41, i64 0}
!143 = !{!57, !41, i64 4}
!144 = !{!57, !41, i64 8}
!145 = !{!57, !41, i64 12}
!146 = !{!118, !41, i64 164}
!147 = distinct !{!147, !44, !45}
!148 = !{!79, !79, i64 0}
!149 = distinct !{!149, !44, !45}
!150 = distinct !{!150, !44, !45}
!151 = !{!56, !36, i64 86}
!152 = !{!112, !40, i64 218}
!153 = distinct !{!153, !44, !45}
!154 = distinct !{!154, !44, !45}
!155 = !{}
!156 = distinct !{!156, !44, !45}
!157 = distinct !{!157, !44, !45}
!158 = distinct !{!158, !44, !45}
!159 = distinct !{!159, !44, !45}
!160 = distinct !{!160, !44, !45}
!161 = distinct !{!161, !44, !45}
!162 = !{!64, !35, i64 232}
!163 = !{!87, !41, i64 2100}
!164 = !{!64, !35, i64 240}
!165 = !{!166, !35, i64 1328}
!166 = !{!"Main", !35, i64 0, !35, i64 8, !36, i64 16, !40, i64 1040, !40, i64 1042, !40, i64 1044, !40, i64 1046, !167, i64 1048, !36, i64 1056, !40, i64 1072, !35, i64 1080, !58, i64 1088, !58, i64 1104, !58, i64 1120, !58, i64 1136, !58, i64 1152, !58, i64 1168, !58, i64 1184, !58, i64 1200, !58, i64 1216, !58, i64 1232, !58, i64 1248, !58, i64 1264, !58, i64 1280, !58, i64 1296, !58, i64 1312, !58, i64 1328, !58, i64 1344, !58, i64 1360, !58, i64 1376, !58, i64 1392, !58, i64 1408, !58, i64 1424, !58, i64 1440, !58, i64 1456, !58, i64 1472, !58, i64 1488, !58, i64 1504, !58, i64 1520, !58, i64 1536, !58, i64 1552, !58, i64 1568, !58, i64 1584, !58, i64 1600, !58, i64 1616, !36, i64 1632, !35, i64 1888, !35, i64 1896}
!167 = !{!"long", !36, i64 0}
!168 = distinct !{!168, !44, !45}
!169 = !{!118, !35, i64 32}
!170 = !{!112, !35, i64 368}
!171 = !{!112, !35, i64 360}
!172 = !{!56, !35, i64 88}
!173 = !{!174, !35, i64 112}
!174 = !{!"SpaceType", !35, i64 0, !35, i64 8, !36, i64 16, !41, i64 80, !41, i64 84, !35, i64 88, !35, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !35, i64 152, !35, i64 160, !35, i64 168, !58, i64 176, !58, i64 192, !41, i64 208}
!175 = distinct !{!175, !44, !45}
!176 = !{!64, !40, i64 228}
!177 = distinct !{!177, !44, !45}
!178 = distinct !{!178, !44, !45}
!179 = !{!64, !40, i64 210}
!180 = distinct !{!180, !44, !45}
!181 = distinct !{!181, !44, !45}
!182 = !{!40, !40, i64 0}
!183 = distinct !{!183, !44, !45}
!184 = !{!112, !40, i64 214}
!185 = distinct !{!185, !44, !45}
!186 = distinct !{!186, !44, !45}
!187 = distinct !{!187, !44, !45}
!188 = !{!189, !41, i64 24}
!189 = !{!"AZone", !35, i64 0, !35, i64 8, !35, i64 16, !41, i64 24, !41, i64 28, !40, i64 32, !40, i64 34, !40, i64 36, !40, i64 38, !57, i64 40, !79, i64 56}
!190 = !{!189, !41, i64 28}
!191 = !{!118, !40, i64 176}
!192 = distinct !{!192, !44, !45}
!193 = distinct !{!193, !44, !45}
!194 = !{!64, !35, i64 152}
!195 = !{!56, !35, i64 48}
!196 = distinct !{!196, !44, !45}
!197 = !{!64, !35, i64 8}
!198 = distinct !{!198, !44, !45}
!199 = distinct !{!199, !44, !45}
!200 = !{!64, !35, i64 0}
!201 = distinct !{!201, !44, !45}
!202 = !{!78, !41, i64 8}
!203 = distinct !{!203, !44, !45}
!204 = distinct !{!204, !44, !45}
!205 = !{!206, !41, i64 32}
!206 = !{!"SpaceLink", !35, i64 0, !35, i64 8, !58, i64 16, !41, i64 32, !79, i64 36, !36, i64 40}
!207 = !{!208, !35, i64 96}
!208 = !{!"View3D", !35, i64 0, !35, i64 8, !58, i64 16, !41, i64 32, !79, i64 36, !36, i64 40, !36, i64 56, !79, i64 72, !79, i64 76, !36, i64 80, !36, i64 81, !41, i64 84, !41, i64 88, !40, i64 92, !40, i64 94, !35, i64 96, !35, i64 104, !114, i64 112, !58, i64 128, !35, i64 144, !35, i64 152, !36, i64 160, !41, i64 224, !41, i64 228, !40, i64 232, !40, i64 234, !40, i64 236, !40, i64 238, !40, i64 240, !40, i64 242, !79, i64 244, !79, i64 248, !79, i64 252, !79, i64 256, !36, i64 260, !36, i64 272, !40, i64 284, !40, i64 286, !40, i64 288, !36, i64 290, !36, i64 291, !36, i64 292, !36, i64 293, !36, i64 294, !58, i64 296, !58, i64 312, !58, i64 328, !36, i64 344, !36, i64 345, !36, i64 346, !36, i64 347, !35, i64 352, !35, i64 360, !35, i64 368}
!209 = !{!56, !35, i64 96}
!210 = !{!112, !35, i64 376}
!211 = !{!212, !36, i64 809}
!212 = !{!"RegionView3D", !36, i64 0, !36, i64 64, !36, i64 128, !36, i64 192, !36, i64 256, !36, i64 320, !36, i64 384, !36, i64 448, !36, i64 544, !35, i64 640, !35, i64 648, !35, i64 656, !35, i64 664, !35, i64 672, !35, i64 680, !35, i64 688, !36, i64 696, !36, i64 760, !79, i64 776, !79, i64 780, !79, i64 784, !79, i64 788, !36, i64 792, !79, i64 804, !36, i64 808, !36, i64 809, !36, i64 810, !36, i64 811, !36, i64 812, !36, i64 813, !36, i64 816, !40, i64 824, !40, i64 826, !36, i64 828, !40, i64 844, !40, i64 846, !79, i64 848, !36, i64 852, !79, i64 864, !36, i64 868}
!213 = distinct !{!213, !44, !45}
!214 = distinct !{!214, !44, !45}
!215 = distinct !{!215, !44, !45}
!216 = !{!166, !35, i64 1552}
!217 = !{!218, !35, i64 128}
!218 = !{!"Scene", !65, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !58, i64 152, !35, i64 168, !35, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !41, i64 232, !41, i64 236, !41, i64 240, !40, i64 244, !36, i64 246, !36, i64 247, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !219, i64 280, !226, i64 4264, !58, i64 4296, !58, i64 4312, !35, i64 4328, !35, i64 4336, !35, i64 4344, !35, i64 4352, !35, i64 4360, !35, i64 4368, !40, i64 4376, !40, i64 4378, !41, i64 4380, !58, i64 4384, !227, i64 4400, !228, i64 4416, !231, i64 4600, !35, i64 4608, !232, i64 4616, !35, i64 4640, !167, i64 4648, !167, i64 4656, !221, i64 4664, !222, i64 4824, !233, i64 4888, !35, i64 4952}
!219 = !{!"RenderData", !220, i64 0, !35, i64 248, !35, i64 256, !223, i64 264, !224, i64 328, !41, i64 400, !41, i64 404, !41, i64 408, !79, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !41, i64 428, !40, i64 432, !40, i64 434, !79, i64 436, !79, i64 440, !79, i64 444, !79, i64 448, !79, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !41, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !41, i64 484, !41, i64 488, !40, i64 492, !40, i64 494, !41, i64 496, !41, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !36, i64 514, !36, i64 515, !41, i64 516, !41, i64 520, !41, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !114, i64 544, !114, i64 560, !57, i64 576, !58, i64 592, !40, i64 608, !40, i64 610, !79, i64 612, !79, i64 616, !79, i64 620, !79, i64 624, !41, i64 628, !79, i64 632, !79, i64 636, !79, i64 640, !79, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !79, i64 660, !79, i64 664, !40, i64 668, !40, i64 670, !79, i64 672, !79, i64 676, !36, i64 680, !41, i64 1704, !40, i64 1708, !40, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !41, i64 2520, !40, i64 2524, !40, i64 2526, !79, i64 2528, !79, i64 2532, !40, i64 2536, !40, i64 2538, !79, i64 2540, !40, i64 2544, !40, i64 2546, !41, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !79, i64 2560, !79, i64 2564, !35, i64 2568, !41, i64 2576, !79, i64 2580, !36, i64 2584, !225, i64 2616, !41, i64 3976, !41, i64 3980}
!220 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !40, i64 8, !40, i64 10, !79, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !221, i64 24, !222, i64 184}
!221 = !{!"ColorManagedViewSettings", !41, i64 0, !41, i64 4, !36, i64 8, !36, i64 72, !79, i64 136, !79, i64 140, !35, i64 144, !35, i64 152}
!222 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!223 = !{!"QuicktimeCodecSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !40, i64 48, !40, i64 50, !41, i64 52, !41, i64 56, !41, i64 60}
!224 = !{!"FFMpegCodecData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !79, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !35, i64 64}
!225 = !{!"BakeData", !220, i64 0, !36, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !79, i64 1280, !79, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!226 = !{!"AudioData", !41, i64 0, !79, i64 4, !79, i64 8, !79, i64 12, !41, i64 16, !40, i64 20, !40, i64 22, !79, i64 24, !79, i64 28}
!227 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!228 = !{!"GameData", !227, i64 0, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !40, i64 32, !36, i64 34, !229, i64 40, !40, i64 64, !40, i64 66, !79, i64 68, !230, i64 72, !79, i64 128, !79, i64 132, !41, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !40, i64 148, !40, i64 150, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !40, i64 160, !40, i64 162, !79, i64 164, !79, i64 168, !79, i64 172, !79, i64 176, !79, i64 180}
!229 = !{!"GameDome", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !79, i64 8, !79, i64 12, !35, i64 16}
!230 = !{!"RecastData", !79, i64 0, !79, i64 4, !79, i64 8, !79, i64 12, !79, i64 16, !79, i64 20, !79, i64 24, !79, i64 28, !79, i64 32, !79, i64 36, !41, i64 40, !79, i64 44, !79, i64 48, !40, i64 52, !40, i64 54}
!231 = !{!"UnitSettings", !79, i64 0, !36, i64 4, !36, i64 5, !40, i64 6}
!232 = !{!"PhysicsSettings", !36, i64 0, !41, i64 12, !41, i64 16, !41, i64 20}
!233 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!234 = distinct !{!234, !44, !45}
!235 = !{!218, !41, i64 680}
!236 = distinct !{!236, !44, !45}
!237 = !{!166, !35, i64 1888}
!238 = !{!218, !36, i64 246}
!239 = !{!218, !35, i64 248}
!240 = !{!241, !36, i64 408}
!241 = !{!"Tex", !65, i64 0, !35, i64 120, !79, i64 128, !79, i64 132, !79, i64 136, !79, i64 140, !79, i64 144, !79, i64 148, !79, i64 152, !79, i64 156, !79, i64 160, !79, i64 164, !79, i64 168, !79, i64 172, !79, i64 176, !79, i64 180, !79, i64 184, !79, i64 188, !79, i64 192, !79, i64 196, !79, i64 200, !79, i64 204, !79, i64 208, !79, i64 212, !40, i64 216, !40, i64 218, !40, i64 220, !40, i64 222, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !40, i64 232, !40, i64 234, !79, i64 236, !79, i64 240, !79, i64 244, !79, i64 248, !41, i64 252, !41, i64 256, !40, i64 260, !40, i64 262, !40, i64 264, !40, i64 266, !41, i64 268, !41, i64 272, !41, i64 276, !41, i64 280, !79, i64 284, !79, i64 288, !79, i64 292, !242, i64 296, !35, i64 336, !35, i64 344, !35, i64 352, !35, i64 360, !35, i64 368, !35, i64 376, !35, i64 384, !35, i64 392, !35, i64 400, !36, i64 408, !36, i64 409}
!242 = !{!"ImageUser", !35, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !36, i64 24, !36, i64 25, !36, i64 26, !36, i64 27, !40, i64 28, !40, i64 30, !40, i64 32, !40, i64 34, !41, i64 36}
!243 = !{!241, !35, i64 336}
!244 = distinct !{!244, !44, !45}
!245 = !{!218, !35, i64 8}
!246 = !{!218, !35, i64 0}
!247 = distinct !{!247, !44, !45}
!248 = distinct !{!248, !44, !45}
!249 = distinct !{!249, !44, !45}
!250 = !{!112, !40, i64 236}
!251 = distinct !{!251, !44, !45}
!252 = !{!56, !35, i64 8}
!253 = !{!56, !35, i64 0}
!254 = distinct !{!254, !44, !45}
!255 = !{!206, !35, i64 0}
!256 = !{!257, !41, i64 36}
!257 = !{!"SpaceImage", !35, i64 0, !35, i64 8, !58, i64 16, !41, i64 32, !41, i64 36, !35, i64 40, !242, i64 48, !35, i64 88, !258, i64 96, !259, i64 5360, !35, i64 10520, !36, i64 10528, !79, i64 10536, !79, i64 10540, !79, i64 10544, !79, i64 10548, !79, i64 10552, !36, i64 10556, !36, i64 10557, !40, i64 10558, !40, i64 10560, !40, i64 10562, !36, i64 10564, !36, i64 10565, !36, i64 10566, !36, i64 10567, !260, i64 10568}
!258 = !{!"Scopes", !41, i64 0, !41, i64 4, !41, i64 8, !79, i64 12, !41, i64 16, !79, i64 20, !79, i64 24, !41, i64 28, !79, i64 32, !41, i64 36, !36, i64 40, !259, i64 64, !35, i64 5224, !35, i64 5232, !35, i64 5240, !35, i64 5248, !41, i64 5256, !41, i64 5260}
!259 = !{!"Histogram", !41, i64 0, !41, i64 4, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 3080, !36, i64 4104, !79, i64 5128, !79, i64 5132, !40, i64 5136, !40, i64 5138, !41, i64 5140, !36, i64 5144}
!260 = !{!"MaskSpaceInfo", !35, i64 0, !36, i64 8, !36, i64 9, !36, i64 10, !36, i64 11}
!261 = !{!78, !41, i64 8484}
!262 = !{!218, !35, i64 4360}
!263 = !{!264, !136, i64 8}
!264 = !{!"ScreenFrameRateInfo", !136, i64 0, !136, i64 8, !36, i64 16, !40, i64 48}
!265 = !{!264, !136, i64 0}
!266 = !{!267, !136, i64 64}
!267 = !{!"wmTimer", !35, i64 0, !35, i64 8, !35, i64 16, !136, i64 24, !41, i64 32, !35, i64 40, !136, i64 48, !136, i64 56, !136, i64 64, !136, i64 72, !136, i64 80, !41, i64 88}
!268 = !{!218, !40, i64 820}
!269 = !{!218, !79, i64 900}
!270 = !{!271, !35, i64 0}
!271 = !{!"ScreenAnimData", !35, i64 0, !40, i64 8, !40, i64 10, !40, i64 12, !41, i64 16, !41, i64 20, !136, i64 24}
!272 = !{!218, !40, i64 712}
!273 = !{!218, !41, i64 696}
!274 = !{!271, !41, i64 16}
!275 = !{!218, !41, i64 684}
!276 = !{!271, !40, i64 8}
!277 = !{!271, !40, i64 10}
!278 = !{!271, !40, i64 12}
!279 = !{!267, !35, i64 40}
!280 = !{!112, !41, i64 176}
!281 = !{!112, !41, i64 184}
!282 = distinct !{!282, !44, !45}
!283 = distinct !{!283, !44, !45}
