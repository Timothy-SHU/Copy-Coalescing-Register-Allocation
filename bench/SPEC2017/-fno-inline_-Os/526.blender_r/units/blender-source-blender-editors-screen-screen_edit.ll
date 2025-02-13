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
%struct.vec2f = type { float, float }

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

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @screen_findedge(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8, !tbaa !34
  store ptr %2, ptr %5, align 8, !tbaa !34
  call fastcc void @sortscrvert(ptr noundef nonnull %4, ptr noundef nonnull %5) #13
  %6 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %24, label %9

9:                                                ; preds = %3
  %10 = load ptr, ptr %4, align 8, !tbaa !34
  %11 = load ptr, ptr %5, align 8
  br label %12

12:                                               ; preds = %9, %21
  %13 = phi ptr [ %7, %9 ], [ %22, %21 ]
  %14 = getelementptr inbounds %struct.ScrEdge, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !38
  %16 = icmp eq ptr %15, %10
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.ScrEdge, ptr %13, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !42
  %20 = icmp eq ptr %19, %11
  br i1 %20, label %24, label %21

21:                                               ; preds = %12, %17
  %22 = load ptr, ptr %13, align 8, !tbaa !34
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %12, !llvm.loop !43

24:                                               ; preds = %17, %21, %3
  %25 = phi ptr [ null, %3 ], [ null, %21 ], [ %13, %17 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sortscrvert(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #2 !PGOFuncName !45 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = load ptr, ptr %1, align 8, !tbaa !34
  %5 = icmp ugt ptr %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  store ptr %4, ptr %0, align 8, !tbaa !34
  store ptr %3, ptr %1, align 8, !tbaa !34
  br label %7

7:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @removedouble_scrverts(ptr noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %40, label %5

5:                                                ; preds = %1, %37
  %6 = phi ptr [ %38, %37 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.ScrVert, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = icmp eq ptr %8, null
  %10 = load ptr, ptr %6, align 8, !tbaa !34
  br i1 %9, label %11, label %37

11:                                               ; preds = %5
  %12 = icmp eq ptr %10, null
  br i1 %12, label %40, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.ScrVert, ptr %6, i64 0, i32 3
  %15 = getelementptr inbounds %struct.ScrVert, ptr %6, i64 0, i32 3, i32 1
  br label %16

16:                                               ; preds = %13, %32
  %17 = phi ptr [ %10, %13 ], [ %33, %32 ]
  %18 = getelementptr inbounds %struct.ScrVert, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !46
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.ScrVert, ptr %17, i64 0, i32 3
  %23 = load i16, ptr %22, align 8, !tbaa !49
  %24 = load i16, ptr %14, align 8, !tbaa !49
  %25 = icmp eq i16 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.ScrVert, ptr %17, i64 0, i32 3, i32 1
  %28 = load i16, ptr %27, align 2, !tbaa !50
  %29 = load i16, ptr %15, align 2, !tbaa !50
  %30 = icmp eq i16 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store ptr %6, ptr %18, align 8, !tbaa !46
  br label %32

32:                                               ; preds = %21, %26, %31, %16
  %33 = load ptr, ptr %17, align 8, !tbaa !51
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %16, !llvm.loop !52

35:                                               ; preds = %32
  %36 = load ptr, ptr %6, align 8, !tbaa !34
  br label %37

37:                                               ; preds = %35, %5
  %38 = phi ptr [ %36, %35 ], [ %10, %5 ]
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %5, !llvm.loop !53

40:                                               ; preds = %11, %37, %1
  %41 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !34
  %43 = icmp eq ptr %42, null
  br i1 %43, label %62, label %44

44:                                               ; preds = %40, %59
  %45 = phi ptr [ %60, %59 ], [ %42, %40 ]
  %46 = getelementptr inbounds %struct.ScrEdge, ptr %45, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !38
  %48 = getelementptr inbounds %struct.ScrVert, ptr %47, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !46
  %50 = icmp eq ptr %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %44
  store ptr %49, ptr %46, align 8, !tbaa !38
  br label %52

52:                                               ; preds = %51, %44
  %53 = getelementptr inbounds %struct.ScrEdge, ptr %45, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !42
  %55 = getelementptr inbounds %struct.ScrVert, ptr %54, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !46
  %57 = icmp eq ptr %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %52
  store ptr %56, ptr %53, align 8, !tbaa !42
  br label %59

59:                                               ; preds = %58, %52
  tail call fastcc void @sortscrvert(ptr noundef nonnull %46, ptr noundef nonnull %53) #13
  %60 = load ptr, ptr %45, align 8, !tbaa !34
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %44, !llvm.loop !54

62:                                               ; preds = %59, %40
  %63 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !34
  %65 = icmp eq ptr %64, null
  br i1 %65, label %98, label %66

66:                                               ; preds = %62, %95
  %67 = phi ptr [ %96, %95 ], [ %64, %62 ]
  %68 = getelementptr inbounds %struct.ScrArea, ptr %67, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !55
  %70 = getelementptr inbounds %struct.ScrVert, ptr %69, i64 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !46
  %72 = icmp eq ptr %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %66
  store ptr %71, ptr %68, align 8, !tbaa !55
  br label %74

74:                                               ; preds = %73, %66
  %75 = getelementptr inbounds %struct.ScrArea, ptr %67, i64 0, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !59
  %77 = getelementptr inbounds %struct.ScrVert, ptr %76, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !46
  %79 = icmp eq ptr %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %74
  store ptr %78, ptr %75, align 8, !tbaa !59
  br label %81

81:                                               ; preds = %80, %74
  %82 = getelementptr inbounds %struct.ScrArea, ptr %67, i64 0, i32 4
  %83 = load ptr, ptr %82, align 8, !tbaa !60
  %84 = getelementptr inbounds %struct.ScrVert, ptr %83, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !46
  %86 = icmp eq ptr %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %81
  store ptr %85, ptr %82, align 8, !tbaa !60
  br label %88

88:                                               ; preds = %87, %81
  %89 = getelementptr inbounds %struct.ScrArea, ptr %67, i64 0, i32 5
  %90 = load ptr, ptr %89, align 8, !tbaa !61
  %91 = getelementptr inbounds %struct.ScrVert, ptr %90, i64 0, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !46
  %93 = icmp eq ptr %92, null
  br i1 %93, label %95, label %94

94:                                               ; preds = %88
  store ptr %92, ptr %89, align 8, !tbaa !61
  br label %95

95:                                               ; preds = %94, %88
  %96 = load ptr, ptr %67, align 8, !tbaa !34
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %66, !llvm.loop !62

98:                                               ; preds = %95, %62
  %99 = load ptr, ptr %2, align 8, !tbaa !63
  %100 = icmp eq ptr %99, null
  br i1 %100, label %111, label %101

101:                                              ; preds = %98, %109
  %102 = phi ptr [ %103, %109 ], [ %99, %98 ]
  %103 = load ptr, ptr %102, align 8, !tbaa !51
  %104 = getelementptr inbounds %struct.ScrVert, ptr %102, i64 0, i32 2
  %105 = load ptr, ptr %104, align 8, !tbaa !46
  %106 = icmp eq ptr %105, null
  br i1 %106, label %109, label %107

107:                                              ; preds = %101
  tail call void @BLI_remlink(ptr noundef nonnull %2, ptr noundef nonnull %102) #14
  %108 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %108(ptr noundef nonnull %102) #14
  br label %109

109:                                              ; preds = %107, %101
  %110 = icmp eq ptr %103, null
  br i1 %110, label %111, label %101, !llvm.loop !66

111:                                              ; preds = %109, %98
  ret void
}

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @removenotused_scrverts(ptr noundef %0) local_unnamed_addr #3 {
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
  %21 = load ptr, ptr %20, align 8, !tbaa !51
  %22 = getelementptr inbounds %struct.ScrVert, ptr %20, i64 0, i32 4
  %23 = load i16, ptr %22, align 4, !tbaa !67
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  tail call void @BLI_remlink(ptr noundef nonnull %16, ptr noundef nonnull %20) #14
  %26 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %26(ptr noundef nonnull %20) #14
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @removedouble_scredges(ptr noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %31, label %8

5:                                                ; preds = %29
  %6 = load ptr, ptr %9, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %31, label %8, !llvm.loop !70

8:                                                ; preds = %1, %5
  %9 = phi ptr [ %6, %5 ], [ %3, %1 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = icmp eq ptr %10, null
  br i1 %11, label %31, label %12

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
  tail call void @BLI_remlink(ptr noundef nonnull %2, ptr noundef nonnull %16) #14
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %28(ptr noundef nonnull %16) #14
  br label %29

29:                                               ; preds = %27, %22, %15
  %30 = icmp eq ptr %17, null
  br i1 %30, label %5, label %15, !llvm.loop !72

31:                                               ; preds = %5, %8, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @removenotused_scredges(ptr noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %54, label %5

5:                                                ; preds = %1, %50
  %6 = phi ptr [ %52, %50 ], [ %3, %1 ]
  %7 = phi i32 [ %51, %50 ], [ 0, %1 ]
  %8 = getelementptr inbounds %struct.ScrArea, ptr %6, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !55
  %10 = getelementptr inbounds %struct.ScrArea, ptr %6, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !59
  %12 = tail call ptr @screen_findedge(ptr noundef %0, ptr noundef %9, ptr noundef %11) #13
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %5
  %15 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %7) #13
  %16 = load ptr, ptr %10, align 8, !tbaa !59
  br label %19

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.ScrEdge, ptr %12, i64 0, i32 5
  store i16 1, ptr %18, align 2, !tbaa !73
  br label %19

19:                                               ; preds = %17, %14
  %20 = phi ptr [ %11, %17 ], [ %16, %14 ]
  %21 = getelementptr inbounds %struct.ScrArea, ptr %6, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !60
  %23 = tail call ptr @screen_findedge(ptr noundef %0, ptr noundef %20, ptr noundef %22) #13
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %7) #13
  %27 = load ptr, ptr %21, align 8, !tbaa !60
  br label %30

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.ScrEdge, ptr %23, i64 0, i32 5
  store i16 1, ptr %29, align 2, !tbaa !73
  br label %30

30:                                               ; preds = %28, %25
  %31 = phi ptr [ %22, %28 ], [ %27, %25 ]
  %32 = getelementptr inbounds %struct.ScrArea, ptr %6, i64 0, i32 5
  %33 = load ptr, ptr %32, align 8, !tbaa !61
  %34 = tail call ptr @screen_findedge(ptr noundef %0, ptr noundef %31, ptr noundef %33) #13
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %7) #13
  %38 = load ptr, ptr %32, align 8, !tbaa !61
  br label %41

39:                                               ; preds = %30
  %40 = getelementptr inbounds %struct.ScrEdge, ptr %34, i64 0, i32 5
  store i16 1, ptr %40, align 2, !tbaa !73
  br label %41

41:                                               ; preds = %39, %36
  %42 = phi ptr [ %33, %39 ], [ %38, %36 ]
  %43 = load ptr, ptr %8, align 8, !tbaa !55
  %44 = tail call ptr @screen_findedge(ptr noundef %0, ptr noundef %42, ptr noundef %43) #13
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %7) #13
  br label %50

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.ScrEdge, ptr %44, i64 0, i32 5
  store i16 1, ptr %49, align 2, !tbaa !73
  br label %50

50:                                               ; preds = %48, %46
  %51 = add nuw nsw i32 %7, 1
  %52 = load ptr, ptr %6, align 8, !tbaa !34
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %5, !llvm.loop !74

54:                                               ; preds = %50, %1
  %55 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !75
  %57 = icmp eq ptr %56, null
  br i1 %57, label %69, label %58

58:                                               ; preds = %54, %67
  %59 = phi ptr [ %60, %67 ], [ %56, %54 ]
  %60 = load ptr, ptr %59, align 8, !tbaa !71
  %61 = getelementptr inbounds %struct.ScrEdge, ptr %59, i64 0, i32 5
  %62 = load i16, ptr %61, align 2, !tbaa !73
  %63 = icmp eq i16 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  tail call void @BLI_remlink(ptr noundef nonnull %55, ptr noundef nonnull %59) #14
  %65 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %65(ptr noundef nonnull %59) #14
  br label %67

66:                                               ; preds = %58
  store i16 0, ptr %61, align 2, !tbaa !73
  br label %67

67:                                               ; preds = %66, %64
  %68 = icmp eq ptr %60, null
  br i1 %68, label %69, label %58, !llvm.loop !76

69:                                               ; preds = %67, %54
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @scredge_is_horizontal(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.ScrEdge, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !38
  %4 = getelementptr inbounds %struct.ScrVert, ptr %3, i64 0, i32 3, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !50
  %6 = getelementptr inbounds %struct.ScrEdge, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !42
  %8 = getelementptr inbounds %struct.ScrVert, ptr %7, i64 0, i32 3, i32 1
  %9 = load i16, ptr %8, align 2, !tbaa !50
  %10 = icmp eq i16 %5, %9
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @screen_find_active_scredge(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !77
  %7 = sdiv i16 %6, 10
  %8 = tail call i16 @llvm.smax.i16(i16 %7, i16 2)
  %9 = zext nneg i16 %8 to i32
  %10 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %75, label %13

13:                                               ; preds = %5
  %14 = add nsw i32 %2, -1
  %15 = add nsw i32 %1, -1
  br label %16

16:                                               ; preds = %13, %72
  %17 = phi ptr [ %11, %13 ], [ %73, %72 ]
  %18 = tail call zeroext i8 @scredge_is_horizontal(ptr noundef nonnull %17) #13, !range !82
  %19 = icmp eq i8 %18, 0
  %20 = getelementptr inbounds %struct.ScrEdge, ptr %17, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !38
  br i1 %19, label %47, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.ScrVert, ptr %21, i64 0, i32 3, i32 1
  %24 = load i16, ptr %23, align 2, !tbaa !50
  %25 = icmp sgt i16 %24, 0
  %26 = sext i16 %24 to i32
  %27 = icmp sgt i32 %14, %26
  %28 = select i1 %25, i1 %27, i1 false
  br i1 %28, label %29, label %72

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.ScrVert, ptr %21, i64 0, i32 3
  %31 = load i16, ptr %30, align 8, !tbaa !49
  %32 = getelementptr inbounds %struct.ScrEdge, ptr %17, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !42
  %34 = getelementptr inbounds %struct.ScrVert, ptr %33, i64 0, i32 3
  %35 = load i16, ptr %34, align 8, !tbaa !49
  %36 = tail call i16 @llvm.smin.i16(i16 %31, i16 %35)
  %37 = tail call i16 @llvm.smax.i16(i16 %31, i16 %35)
  %38 = sub nsw i32 %4, %26
  %39 = tail call i32 @llvm.abs.i32(i32 %38, i1 true)
  %40 = icmp ugt i32 %39, %9
  %41 = sext i16 %36 to i32
  %42 = icmp sgt i32 %41, %3
  %43 = select i1 %40, i1 true, i1 %42
  %44 = sext i16 %37 to i32
  %45 = icmp slt i32 %44, %3
  %46 = select i1 %43, i1 true, i1 %45
  br i1 %46, label %72, label %75

47:                                               ; preds = %16
  %48 = getelementptr inbounds %struct.ScrVert, ptr %21, i64 0, i32 3
  %49 = load i16, ptr %48, align 8, !tbaa !49
  %50 = icmp sgt i16 %49, 0
  %51 = sext i16 %49 to i32
  %52 = icmp sgt i32 %15, %51
  %53 = select i1 %50, i1 %52, i1 false
  br i1 %53, label %54, label %72

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.ScrVert, ptr %21, i64 0, i32 3, i32 1
  %56 = load i16, ptr %55, align 2, !tbaa !50
  %57 = getelementptr inbounds %struct.ScrEdge, ptr %17, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !42
  %59 = getelementptr inbounds %struct.ScrVert, ptr %58, i64 0, i32 3, i32 1
  %60 = load i16, ptr %59, align 2, !tbaa !50
  %61 = tail call i16 @llvm.smin.i16(i16 %56, i16 %60)
  %62 = tail call i16 @llvm.smax.i16(i16 %56, i16 %60)
  %63 = sub nsw i32 %3, %51
  %64 = tail call i32 @llvm.abs.i32(i32 %63, i1 true)
  %65 = icmp ugt i32 %64, %9
  %66 = sext i16 %61 to i32
  %67 = icmp sgt i32 %66, %4
  %68 = select i1 %65, i1 true, i1 %67
  %69 = sext i16 %62 to i32
  %70 = icmp slt i32 %69, %4
  %71 = select i1 %68, i1 true, i1 %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %29, %22, %54, %47
  %73 = load ptr, ptr %17, align 8, !tbaa !34
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %16, !llvm.loop !83

75:                                               ; preds = %54, %29, %72, %5
  %76 = phi ptr [ null, %5 ], [ null, %72 ], [ %17, %29 ], [ %17, %54 ]
  ret ptr %76
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @area_split(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, float noundef %3, i32 noundef %4) local_unnamed_addr #3 {
  %6 = icmp eq ptr %1, null
  br i1 %6, label %78, label %7

7:                                                ; preds = %5
  %8 = tail call fastcc signext i16 @testsplitpoint(ptr noundef nonnull %1, i8 noundef zeroext %2, float noundef %3) #13
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %78, label %10

10:                                               ; preds = %7
  %11 = icmp eq i8 %2, 104
  %12 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !55
  %14 = fcmp ogt float %3, 5.000000e-01
  %15 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 12
  %16 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 8
  br i1 %11, label %17, label %47

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.ScrVert, ptr %13, i64 0, i32 3
  %19 = load i16, ptr %18, align 8, !tbaa !49
  %20 = tail call fastcc ptr @screen_addvert(ptr noundef %0, i16 noundef signext %19, i16 noundef signext %8) #13
  %21 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !61
  %23 = getelementptr inbounds %struct.ScrVert, ptr %22, i64 0, i32 3
  %24 = load i16, ptr %23, align 8, !tbaa !49
  %25 = tail call fastcc ptr @screen_addvert(ptr noundef %0, i16 noundef signext %24, i16 noundef signext %8) #13
  %26 = load ptr, ptr %12, align 8, !tbaa !55
  tail call fastcc void @screen_addedge(ptr noundef %0, ptr noundef %26, ptr noundef %20) #13
  %27 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !59
  tail call fastcc void @screen_addedge(ptr noundef %0, ptr noundef %20, ptr noundef %28) #13
  %29 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !60
  tail call fastcc void @screen_addedge(ptr noundef %0, ptr noundef %30, ptr noundef %25) #13
  %31 = load ptr, ptr %21, align 8, !tbaa !61
  tail call fastcc void @screen_addedge(ptr noundef %0, ptr noundef %25, ptr noundef %31) #13
  tail call fastcc void @screen_addedge(ptr noundef %0, ptr noundef %20, ptr noundef %25) #13
  %32 = load i16, ptr %15, align 2, !tbaa !84
  %33 = load i8, ptr %16, align 8, !tbaa !85
  %34 = zext i8 %33 to i16
  br i1 %14, label %35, label %39

35:                                               ; preds = %17
  %36 = load ptr, ptr %27, align 8, !tbaa !59
  %37 = load ptr, ptr %29, align 8, !tbaa !60
  %38 = tail call fastcc ptr @screen_addarea(ptr noundef %0, ptr noundef %20, ptr noundef %36, ptr noundef %37, ptr noundef %25, i16 noundef signext %32, i16 noundef signext %34) #13
  br label %43

39:                                               ; preds = %17
  %40 = load ptr, ptr %12, align 8, !tbaa !55
  %41 = load ptr, ptr %21, align 8, !tbaa !61
  %42 = tail call fastcc ptr @screen_addarea(ptr noundef %0, ptr noundef %40, ptr noundef %20, ptr noundef %25, ptr noundef %41, i16 noundef signext %32, i16 noundef signext %34) #13
  br label %43

43:                                               ; preds = %39, %35
  %44 = phi ptr [ %12, %39 ], [ %27, %35 ]
  %45 = phi ptr [ %21, %39 ], [ %29, %35 ]
  %46 = phi ptr [ %42, %39 ], [ %38, %35 ]
  store ptr %20, ptr %44, align 8, !tbaa !34
  store ptr %25, ptr %45, align 8, !tbaa !34
  br label %73

47:                                               ; preds = %10
  %48 = getelementptr inbounds %struct.ScrVert, ptr %13, i64 0, i32 3, i32 1
  %49 = load i16, ptr %48, align 2, !tbaa !50
  %50 = tail call fastcc ptr @screen_addvert(ptr noundef %0, i16 noundef signext %8, i16 noundef signext %49) #13
  %51 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !59
  %53 = getelementptr inbounds %struct.ScrVert, ptr %52, i64 0, i32 3, i32 1
  %54 = load i16, ptr %53, align 2, !tbaa !50
  %55 = tail call fastcc ptr @screen_addvert(ptr noundef %0, i16 noundef signext %8, i16 noundef signext %54) #13
  %56 = load ptr, ptr %12, align 8, !tbaa !55
  tail call fastcc void @screen_addedge(ptr noundef %0, ptr noundef %56, ptr noundef %50) #13
  %57 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 5
  %58 = load ptr, ptr %57, align 8, !tbaa !61
  tail call fastcc void @screen_addedge(ptr noundef %0, ptr noundef %50, ptr noundef %58) #13
  %59 = load ptr, ptr %51, align 8, !tbaa !59
  tail call fastcc void @screen_addedge(ptr noundef %0, ptr noundef %59, ptr noundef %55) #13
  %60 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 4
  %61 = load ptr, ptr %60, align 8, !tbaa !60
  tail call fastcc void @screen_addedge(ptr noundef %0, ptr noundef %55, ptr noundef %61) #13
  tail call fastcc void @screen_addedge(ptr noundef %0, ptr noundef %50, ptr noundef %55) #13
  %62 = load i16, ptr %15, align 2, !tbaa !84
  %63 = load i8, ptr %16, align 8, !tbaa !85
  %64 = zext i8 %63 to i16
  br i1 %14, label %65, label %69

65:                                               ; preds = %47
  %66 = load ptr, ptr %60, align 8, !tbaa !60
  %67 = load ptr, ptr %57, align 8, !tbaa !61
  %68 = tail call fastcc ptr @screen_addarea(ptr noundef %0, ptr noundef %50, ptr noundef %55, ptr noundef %66, ptr noundef %67, i16 noundef signext %62, i16 noundef signext %64) #13
  store ptr %55, ptr %60, align 8, !tbaa !60
  store ptr %50, ptr %57, align 8, !tbaa !61
  br label %73

69:                                               ; preds = %47
  %70 = load ptr, ptr %12, align 8, !tbaa !55
  %71 = load ptr, ptr %51, align 8, !tbaa !59
  %72 = tail call fastcc ptr @screen_addarea(ptr noundef %0, ptr noundef %70, ptr noundef %71, ptr noundef %55, ptr noundef %50, i16 noundef signext %62, i16 noundef signext %64) #13
  store ptr %50, ptr %12, align 8, !tbaa !55
  store ptr %55, ptr %51, align 8, !tbaa !59
  br label %73

73:                                               ; preds = %65, %69, %43
  %74 = phi ptr [ %46, %43 ], [ %68, %65 ], [ %72, %69 ]
  tail call void @ED_area_data_copy(ptr noundef %74, ptr noundef nonnull %1, i8 noundef zeroext 1) #14
  %75 = icmp eq i32 %4, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %73
  tail call void @removedouble_scrverts(ptr noundef %0) #13
  br label %77

77:                                               ; preds = %76, %73
  tail call void @removedouble_scredges(ptr noundef %0) #13
  tail call void @removenotused_scredges(ptr noundef %0) #13
  br label %78

78:                                               ; preds = %7, %5, %77
  %79 = phi ptr [ %74, %77 ], [ null, %5 ], [ null, %7 ]
  ret ptr %79
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc signext i16 @testsplitpoint(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, float noundef %2) unnamed_addr #3 !PGOFuncName !86 {
  %4 = tail call i32 @ED_area_headersize() #14
  switch i8 %1, label %33 [
    i8 118, label %5
    i8 104, label %18
  ]

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !61
  %8 = getelementptr inbounds %struct.ScrVert, ptr %7, i64 0, i32 3
  %9 = load i16, ptr %8, align 8, !tbaa !49
  %10 = sext i16 %9 to i32
  %11 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !55
  %13 = getelementptr inbounds %struct.ScrVert, ptr %12, i64 0, i32 3
  %14 = load i16, ptr %13, align 8, !tbaa !49
  %15 = sext i16 %14 to i32
  %16 = sub nsw i32 %10, %15
  %17 = icmp slt i32 %16, 65
  br i1 %17, label %101, label %33

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !59
  %21 = getelementptr inbounds %struct.ScrVert, ptr %20, i64 0, i32 3, i32 1
  %22 = load i16, ptr %21, align 2, !tbaa !50
  %23 = sext i16 %22 to i32
  %24 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !55
  %26 = getelementptr inbounds %struct.ScrVert, ptr %25, i64 0, i32 3, i32 1
  %27 = load i16, ptr %26, align 2, !tbaa !50
  %28 = sext i16 %27 to i32
  %29 = sub nsw i32 %23, %28
  %30 = shl i32 %4, 16
  %31 = ashr exact i32 %30, 15
  %32 = icmp sgt i32 %29, %31
  br i1 %32, label %33, label %101

33:                                               ; preds = %3, %5, %18
  %34 = phi i1 [ true, %18 ], [ false, %5 ], [ false, %3 ]
  %35 = fcmp olt float %2, 0.000000e+00
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = fcmp ogt float %2, 1.000000e+00
  br i1 %37, label %38, label %39

38:                                               ; preds = %36
  br label %39

39:                                               ; preds = %33, %36, %38
  %40 = phi float [ 1.000000e+00, %38 ], [ %2, %36 ], [ 0.000000e+00, %33 ]
  %41 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !55
  br i1 %34, label %43, label %74

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.ScrVert, ptr %42, i64 0, i32 3, i32 1
  %45 = load i16, ptr %44, align 2, !tbaa !50
  %46 = sext i16 %45 to i32
  %47 = sitofp i16 %45 to float
  %48 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !59
  %50 = getelementptr inbounds %struct.ScrVert, ptr %49, i64 0, i32 3, i32 1
  %51 = load i16, ptr %50, align 2, !tbaa !50
  %52 = sext i16 %51 to i32
  %53 = sub nsw i32 %52, %46
  %54 = sitofp i32 %53 to float
  %55 = tail call float @llvm.fmuladd.f32(float %40, float %54, float %47)
  %56 = fptosi float %55 to i16
  %57 = sext i16 %56 to i32
  %58 = sub nsw i32 %57, %46
  %59 = shl i32 %4, 16
  %60 = ashr exact i32 %59, 16
  %61 = icmp slt i32 %58, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %43
  %63 = trunc i32 %4 to i16
  %64 = add i16 %45, %63
  br label %101

65:                                               ; preds = %43
  %66 = sub nsw i32 %52, %57
  %67 = icmp slt i32 %66, %60
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = trunc i32 %4 to i16
  %70 = sub i16 %51, %69
  br label %101

71:                                               ; preds = %65
  %72 = srem i16 %56, 4
  %73 = sub i16 %56, %72
  br label %101

74:                                               ; preds = %39
  %75 = getelementptr inbounds %struct.ScrVert, ptr %42, i64 0, i32 3
  %76 = load i16, ptr %75, align 8, !tbaa !49
  %77 = sext i16 %76 to i32
  %78 = sitofp i16 %76 to float
  %79 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 5
  %80 = load ptr, ptr %79, align 8, !tbaa !61
  %81 = getelementptr inbounds %struct.ScrVert, ptr %80, i64 0, i32 3
  %82 = load i16, ptr %81, align 8, !tbaa !49
  %83 = sext i16 %82 to i32
  %84 = sub nsw i32 %83, %77
  %85 = sitofp i32 %84 to float
  %86 = tail call float @llvm.fmuladd.f32(float %40, float %85, float %78)
  %87 = fptosi float %86 to i16
  %88 = sext i16 %87 to i32
  %89 = sub nsw i32 %88, %77
  %90 = icmp slt i32 %89, 32
  br i1 %90, label %91, label %93

91:                                               ; preds = %74
  %92 = add i16 %76, 32
  br label %101

93:                                               ; preds = %74
  %94 = sub nsw i32 %83, %88
  %95 = icmp slt i32 %94, 32
  br i1 %95, label %96, label %98

96:                                               ; preds = %93
  %97 = add i16 %82, -32
  br label %101

98:                                               ; preds = %93
  %99 = srem i16 %87, 4
  %100 = sub i16 %87, %99
  br label %101

101:                                              ; preds = %91, %98, %96, %62, %71, %68, %18, %5
  %102 = phi i16 [ 0, %5 ], [ 0, %18 ], [ %64, %62 ], [ %70, %68 ], [ %73, %71 ], [ %92, %91 ], [ %97, %96 ], [ %100, %98 ]
  ret i16 %102
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @screen_addvert(ptr noundef %0, i16 noundef signext %1, i16 noundef signext %2) unnamed_addr #3 !PGOFuncName !87 {
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %5 = tail call ptr %4(i64 noundef 32, ptr noundef nonnull @.str.10) #14
  %6 = getelementptr inbounds %struct.ScrVert, ptr %5, i64 0, i32 3
  store i16 %1, ptr %6, align 8, !tbaa !49
  %7 = getelementptr inbounds %struct.ScrVert, ptr %5, i64 0, i32 3, i32 1
  store i16 %2, ptr %7, align 2, !tbaa !50
  %8 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 1
  tail call void @BLI_addtail(ptr noundef nonnull %8, ptr noundef %5) #14
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @screen_addedge(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 !PGOFuncName !88 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8, !tbaa !34
  store ptr %2, ptr %5, align 8, !tbaa !34
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %7 = tail call ptr %6(i64 noundef 40, ptr noundef nonnull @.str.11) #14
  call fastcc void @sortscrvert(ptr noundef nonnull %4, ptr noundef nonnull %5) #13
  %8 = load ptr, ptr %4, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.ScrEdge, ptr %7, i64 0, i32 2
  store ptr %8, ptr %9, align 8, !tbaa !38
  %10 = load ptr, ptr %5, align 8, !tbaa !34
  %11 = getelementptr inbounds %struct.ScrEdge, ptr %7, i64 0, i32 3
  store ptr %10, ptr %11, align 8, !tbaa !42
  %12 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %12, ptr noundef %7) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @screen_addarea(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i16 noundef signext %5, i16 noundef signext %6) unnamed_addr #3 !PGOFuncName !89 {
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %9 = tail call ptr %8(i64 noundef 160, ptr noundef nonnull @.str.12) #14
  %10 = getelementptr inbounds %struct.ScrArea, ptr %9, i64 0, i32 2
  store ptr %1, ptr %10, align 8, !tbaa !55
  %11 = getelementptr inbounds %struct.ScrArea, ptr %9, i64 0, i32 3
  store ptr %2, ptr %11, align 8, !tbaa !59
  %12 = getelementptr inbounds %struct.ScrArea, ptr %9, i64 0, i32 4
  store ptr %3, ptr %12, align 8, !tbaa !60
  %13 = getelementptr inbounds %struct.ScrArea, ptr %9, i64 0, i32 5
  store ptr %4, ptr %13, align 8, !tbaa !61
  %14 = getelementptr inbounds %struct.ScrArea, ptr %9, i64 0, i32 12
  store i16 %5, ptr %14, align 2, !tbaa !84
  %15 = trunc i16 %6 to i8
  %16 = getelementptr inbounds %struct.ScrArea, ptr %9, i64 0, i32 9
  store i8 %15, ptr %16, align 1, !tbaa !90
  %17 = getelementptr inbounds %struct.ScrArea, ptr %9, i64 0, i32 8
  store i8 %15, ptr %17, align 8, !tbaa !85
  %18 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 3
  tail call void @BLI_addtail(ptr noundef nonnull %18, ptr noundef %9) #14
  ret ptr %9
}

; Function Attrs: optsize
declare void @ED_area_data_copy(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @ED_screen_add(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 {
  %4 = tail call i32 @WM_window_pixels_x(ptr noundef %0) #14
  %5 = tail call i32 @WM_window_pixels_y(ptr noundef %0) #14
  %6 = load ptr, ptr @G, align 8, !tbaa !91
  %7 = tail call ptr @BKE_libblock_alloc(ptr noundef %6, i16 noundef signext 21075, ptr noundef %2) #14
  %8 = getelementptr inbounds %struct.bScreen, ptr %7, i64 0, i32 5
  store ptr %1, ptr %8, align 8, !tbaa !93
  %9 = getelementptr inbounds %struct.bScreen, ptr %7, i64 0, i32 13
  store i16 1, ptr %9, align 8, !tbaa !94
  %10 = getelementptr inbounds %struct.bScreen, ptr %7, i64 0, i32 7
  store i32 6, ptr %10, align 8, !tbaa !95
  %11 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 18
  %12 = load i32, ptr %11, align 8, !tbaa !96
  %13 = trunc i32 %12 to i16
  %14 = getelementptr inbounds %struct.bScreen, ptr %7, i64 0, i32 11
  store i16 %13, ptr %14, align 4, !tbaa !98
  %15 = tail call fastcc ptr @screen_addvert(ptr noundef %7, i16 noundef signext 0, i16 noundef signext 0) #13
  %16 = trunc i32 %5 to i16
  %17 = add i16 %16, -1
  %18 = tail call fastcc ptr @screen_addvert(ptr noundef %7, i16 noundef signext 0, i16 noundef signext %17) #13
  %19 = trunc i32 %4 to i16
  %20 = add i16 %19, -1
  %21 = tail call fastcc ptr @screen_addvert(ptr noundef %7, i16 noundef signext %20, i16 noundef signext %17) #13
  %22 = tail call fastcc ptr @screen_addvert(ptr noundef %7, i16 noundef signext %20, i16 noundef signext 0) #13
  tail call fastcc void @screen_addedge(ptr noundef %7, ptr noundef %15, ptr noundef %18) #13
  tail call fastcc void @screen_addedge(ptr noundef %7, ptr noundef %18, ptr noundef %21) #13
  tail call fastcc void @screen_addedge(ptr noundef %7, ptr noundef %21, ptr noundef %22) #13
  tail call fastcc void @screen_addedge(ptr noundef %7, ptr noundef %22, ptr noundef %15) #13
  %23 = tail call fastcc ptr @screen_addarea(ptr noundef %7, ptr noundef %15, ptr noundef %18, ptr noundef %21, ptr noundef %22, i16 noundef signext 1, i16 noundef signext 0) #13
  ret ptr %7
}

; Function Attrs: optsize
declare i32 @WM_window_pixels_x(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @WM_window_pixels_y(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @BKE_libblock_alloc(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @area_getorientation(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #8 {
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @screen_area_join(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 {
  %5 = tail call i32 @area_getorientation(ptr noundef %2, ptr noundef %3) #13, !range !99
  switch i32 %5, label %44 [
    i32 -1, label %6
    i32 0, label %14
    i32 1, label %24
    i32 2, label %34
  ]

6:                                                ; preds = %4
  %7 = icmp eq ptr %2, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 14
  %10 = load i16, ptr %9, align 2, !tbaa !100
  %11 = and i16 %10, -5
  store i16 %11, ptr %9, align 2, !tbaa !100
  br label %12

12:                                               ; preds = %8, %6
  %13 = icmp eq ptr %3, null
  br i1 %13, label %66, label %59

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !55
  %17 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 2
  store ptr %16, ptr %17, align 8, !tbaa !55
  %18 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !59
  %20 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 3
  store ptr %19, ptr %20, align 8, !tbaa !59
  %21 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !60
  tail call fastcc void @screen_addedge(ptr noundef %1, ptr noundef %19, ptr noundef %22) #13
  %23 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 5
  br label %54

24:                                               ; preds = %4
  %25 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !59
  %27 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 3
  store ptr %26, ptr %27, align 8, !tbaa !59
  %28 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !60
  %30 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 4
  store ptr %29, ptr %30, align 8, !tbaa !60
  %31 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !55
  tail call fastcc void @screen_addedge(ptr noundef %1, ptr noundef %32, ptr noundef %26) #13
  %33 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 5
  br label %54

34:                                               ; preds = %4
  %35 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 4
  %36 = load ptr, ptr %35, align 8, !tbaa !60
  %37 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 4
  store ptr %36, ptr %37, align 8, !tbaa !60
  %38 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 5
  %39 = load ptr, ptr %38, align 8, !tbaa !61
  %40 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 5
  store ptr %39, ptr %40, align 8, !tbaa !61
  %41 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !59
  tail call fastcc void @screen_addedge(ptr noundef %1, ptr noundef %42, ptr noundef %36) #13
  %43 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 2
  br label %54

44:                                               ; preds = %4
  %45 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !55
  %47 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 2
  store ptr %46, ptr %47, align 8, !tbaa !55
  %48 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 5
  %49 = load ptr, ptr %48, align 8, !tbaa !61
  %50 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 5
  store ptr %49, ptr %50, align 8, !tbaa !61
  %51 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !59
  tail call fastcc void @screen_addedge(ptr noundef %1, ptr noundef %46, ptr noundef %52) #13
  %53 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 4
  br label %54

54:                                               ; preds = %24, %44, %34, %14
  %55 = phi ptr [ %33, %24 ], [ %50, %44 ], [ %40, %34 ], [ %23, %14 ]
  %56 = phi ptr [ %30, %24 ], [ %53, %44 ], [ %43, %34 ], [ %17, %14 ]
  %57 = load ptr, ptr %56, align 8, !tbaa !34
  %58 = load ptr, ptr %55, align 8, !tbaa !61
  tail call fastcc void @screen_addedge(ptr noundef %1, ptr noundef %57, ptr noundef %58) #13
  tail call fastcc void @screen_delarea(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3) #13
  tail call void @removedouble_scrverts(ptr noundef %1) #13
  br label %59

59:                                               ; preds = %12, %54
  %60 = phi ptr [ %2, %54 ], [ %3, %12 ]
  %61 = phi i16 [ -5, %54 ], [ -3, %12 ]
  %62 = phi i32 [ 1, %54 ], [ 0, %12 ]
  %63 = getelementptr inbounds %struct.ScrArea, ptr %60, i64 0, i32 14
  %64 = load i16, ptr %63, align 2, !tbaa !100
  %65 = and i16 %64, %61
  store i16 %65, ptr %63, align 2, !tbaa !100
  br label %66

66:                                               ; preds = %59, %12
  %67 = phi i32 [ 0, %12 ], [ %62, %59 ]
  ret i32 %67
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @screen_delarea(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 !PGOFuncName !101 {
  tail call void @ED_area_exit(ptr noundef %0, ptr noundef %2) #13
  tail call void @BKE_screen_area_free(ptr noundef %2) #14
  %4 = getelementptr inbounds %struct.bScreen, ptr %1, i64 0, i32 3
  tail call void @BLI_remlink(ptr noundef nonnull %4, ptr noundef %2) #14
  %5 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %5(ptr noundef %2) #14
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @select_connected_scredge(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.ScrEdge, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !38
  %5 = getelementptr inbounds %struct.ScrVert, ptr %4, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !49
  %7 = getelementptr inbounds %struct.ScrEdge, ptr %1, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !42
  %9 = getelementptr inbounds %struct.ScrVert, ptr %8, i64 0, i32 3
  %10 = load i16, ptr %9, align 8, !tbaa !49
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
  br i1 %19, label %20, label %15, !llvm.loop !102

20:                                               ; preds = %15, %2
  %21 = getelementptr inbounds %struct.ScrVert, ptr %4, i64 0, i32 4
  store i16 1, ptr %21, align 4, !tbaa !67
  %22 = getelementptr inbounds %struct.ScrVert, ptr %8, i64 0, i32 4
  store i16 1, ptr %22, align 4, !tbaa !67
  %23 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !34
  %25 = icmp eq ptr %24, null
  br i1 %25, label %65, label %29

26:                                               ; preds = %58
  %27 = icmp eq i32 %59, 0
  %28 = or i1 %27, %25
  br i1 %28, label %65, label %62

29:                                               ; preds = %20, %62
  %30 = phi ptr [ %63, %62 ], [ %24, %20 ]
  %31 = phi i32 [ %64, %62 ], [ 0, %20 ]
  %32 = getelementptr inbounds %struct.ScrEdge, ptr %30, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !38
  %34 = getelementptr inbounds %struct.ScrVert, ptr %33, i64 0, i32 4
  %35 = load i16, ptr %34, align 4, !tbaa !67
  %36 = sext i16 %35 to i32
  %37 = getelementptr inbounds %struct.ScrEdge, ptr %30, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !42
  %39 = getelementptr inbounds %struct.ScrVert, ptr %38, i64 0, i32 4
  %40 = load i16, ptr %39, align 4, !tbaa !67
  %41 = sext i16 %40 to i32
  %42 = add nsw i32 %41, %36
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %58

44:                                               ; preds = %29
  br i1 %11, label %51, label %45

45:                                               ; preds = %44
  %46 = getelementptr inbounds %struct.ScrVert, ptr %33, i64 0, i32 3, i32 1
  %47 = load i16, ptr %46, align 2, !tbaa !50
  %48 = getelementptr inbounds %struct.ScrVert, ptr %38, i64 0, i32 3, i32 1
  %49 = load i16, ptr %48, align 2, !tbaa !50
  %50 = icmp eq i16 %47, %49
  br i1 %50, label %57, label %58

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.ScrVert, ptr %33, i64 0, i32 3
  %53 = load i16, ptr %52, align 8, !tbaa !49
  %54 = getelementptr inbounds %struct.ScrVert, ptr %38, i64 0, i32 3
  %55 = load i16, ptr %54, align 8, !tbaa !49
  %56 = icmp eq i16 %53, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51, %45
  store i16 1, ptr %39, align 4, !tbaa !67
  store i16 1, ptr %34, align 4, !tbaa !67
  br label %58

58:                                               ; preds = %57, %45, %51, %29
  %59 = phi i32 [ %31, %51 ], [ %31, %29 ], [ %31, %45 ], [ 1, %57 ]
  %60 = load ptr, ptr %30, align 8, !tbaa !34
  %61 = icmp eq ptr %60, null
  br i1 %61, label %26, label %62

62:                                               ; preds = %58, %26
  %63 = phi ptr [ %60, %58 ], [ %24, %26 ]
  %64 = phi i32 [ %59, %58 ], [ 0, %26 ]
  br label %29, !llvm.loop !103

65:                                               ; preds = %26, %20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @ED_screen_duplicate(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.bScreen, ptr %1, i64 0, i32 9
  %4 = load i16, ptr %3, align 8, !tbaa !104
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bScreen, ptr %1, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !93
  %9 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4, i64 2
  %10 = tail call ptr @ED_screen_add(ptr noundef %0, ptr noundef %8, ptr noundef nonnull %9) #13
  tail call fastcc void @screen_copy(ptr noundef %10, ptr noundef nonnull %1) #13
  br label %11

11:                                               ; preds = %2, %6
  %12 = phi ptr [ %10, %6 ], [ null, %2 ]
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @screen_copy(ptr noundef %0, ptr noundef %1) unnamed_addr #3 !PGOFuncName !105 {
  tail call void @BKE_screen_free(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.bScreen, ptr %1, i64 0, i32 1
  tail call void @BLI_duplicatelist(ptr noundef nonnull %3, ptr noundef nonnull %4) #14
  %5 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 2
  %6 = getelementptr inbounds %struct.bScreen, ptr %1, i64 0, i32 2
  tail call void @BLI_duplicatelist(ptr noundef nonnull %5, ptr noundef nonnull %6) #14
  %7 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 3
  %8 = getelementptr inbounds %struct.bScreen, ptr %1, i64 0, i32 3
  tail call void @BLI_duplicatelist(ptr noundef nonnull %7, ptr noundef nonnull %8) #14
  %9 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 4
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %9) #13
  %10 = load ptr, ptr %4, align 8, !tbaa !34
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %15, %2
  %13 = load ptr, ptr %5, align 8, !tbaa !34
  %14 = icmp eq ptr %13, null
  br i1 %14, label %22, label %25

15:                                               ; preds = %2, %15
  %16 = phi ptr [ %20, %15 ], [ %10, %2 ]
  %17 = phi ptr [ %18, %15 ], [ %3, %2 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  %19 = getelementptr inbounds %struct.ScrVert, ptr %16, i64 0, i32 2
  store ptr %18, ptr %19, align 8, !tbaa !46
  %20 = load ptr, ptr %16, align 8, !tbaa !34
  %21 = icmp eq ptr %20, null
  br i1 %21, label %12, label %15, !llvm.loop !106

22:                                               ; preds = %25, %12
  %23 = load ptr, ptr %7, align 8, !tbaa !34
  %24 = icmp eq ptr %23, null
  br i1 %24, label %37, label %40

25:                                               ; preds = %12, %25
  %26 = phi ptr [ %35, %25 ], [ %13, %12 ]
  %27 = getelementptr inbounds %struct.ScrEdge, ptr %26, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !38
  %29 = getelementptr inbounds %struct.ScrVert, ptr %28, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !46
  store ptr %30, ptr %27, align 8, !tbaa !38
  %31 = getelementptr inbounds %struct.ScrEdge, ptr %26, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !42
  %33 = getelementptr inbounds %struct.ScrVert, ptr %32, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !46
  store ptr %34, ptr %31, align 8, !tbaa !42
  tail call fastcc void @sortscrvert(ptr noundef nonnull %27, ptr noundef nonnull %31) #13
  %35 = load ptr, ptr %26, align 8, !tbaa !34
  %36 = icmp eq ptr %35, null
  br i1 %36, label %22, label %25, !llvm.loop !107

37:                                               ; preds = %40, %22
  %38 = load ptr, ptr %4, align 8, !tbaa !34
  %39 = icmp eq ptr %38, null
  br i1 %39, label %71, label %66

40:                                               ; preds = %22, %40
  %41 = phi ptr [ %64, %40 ], [ %23, %22 ]
  %42 = phi ptr [ %43, %40 ], [ %8, %22 ]
  %43 = load ptr, ptr %42, align 8, !tbaa !34
  %44 = getelementptr inbounds %struct.ScrArea, ptr %41, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !55
  %46 = getelementptr inbounds %struct.ScrVert, ptr %45, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !46
  store ptr %47, ptr %44, align 8, !tbaa !55
  %48 = getelementptr inbounds %struct.ScrArea, ptr %41, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !59
  %50 = getelementptr inbounds %struct.ScrVert, ptr %49, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !46
  store ptr %51, ptr %48, align 8, !tbaa !59
  %52 = getelementptr inbounds %struct.ScrArea, ptr %41, i64 0, i32 4
  %53 = load ptr, ptr %52, align 8, !tbaa !60
  %54 = getelementptr inbounds %struct.ScrVert, ptr %53, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !46
  store ptr %55, ptr %52, align 8, !tbaa !60
  %56 = getelementptr inbounds %struct.ScrArea, ptr %41, i64 0, i32 5
  %57 = load ptr, ptr %56, align 8, !tbaa !61
  %58 = getelementptr inbounds %struct.ScrVert, ptr %57, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !46
  store ptr %59, ptr %56, align 8, !tbaa !61
  %60 = getelementptr inbounds %struct.ScrArea, ptr %41, i64 0, i32 19
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %60) #13
  %61 = getelementptr inbounds %struct.ScrArea, ptr %41, i64 0, i32 20
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %61) #13
  %62 = getelementptr inbounds %struct.ScrArea, ptr %41, i64 0, i32 22
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %62) #13
  %63 = getelementptr inbounds %struct.ScrArea, ptr %41, i64 0, i32 21
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %63) #13
  tail call void @ED_area_data_copy(ptr noundef nonnull %41, ptr noundef %43, i8 noundef zeroext 1) #14
  %64 = load ptr, ptr %41, align 8, !tbaa !34
  %65 = icmp eq ptr %64, null
  br i1 %65, label %37, label %40, !llvm.loop !108

66:                                               ; preds = %37, %66
  %67 = phi ptr [ %69, %66 ], [ %38, %37 ]
  %68 = getelementptr inbounds %struct.ScrVert, ptr %67, i64 0, i32 2
  store ptr null, ptr %68, align 8, !tbaa !46
  %69 = load ptr, ptr %67, align 8, !tbaa !34
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %66, !llvm.loop !109

71:                                               ; preds = %66, %37
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_screen_do_listen(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = tail call ptr @CTX_wm_window(ptr noundef %0) #14
  %4 = getelementptr inbounds %struct.wmNotifier, ptr %1, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !110
  %6 = add i32 %5, -16777216
  %7 = tail call i32 @llvm.fshl.i32(i32 %6, i32 %6, i32 8)
  switch i32 %7, label %36 [
    i32 0, label %8
    i32 1, label %16
    i32 2, label %20
    i32 3, label %29
  ]

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.wmNotifier, ptr %1, i64 0, i32 6
  %10 = load i32, ptr %9, align 8, !tbaa !112
  %11 = icmp eq i32 %10, 65536
  br i1 %11, label %12, label %36

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.wmWindow, ptr %3, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !113
  %15 = getelementptr inbounds %struct.bScreen, ptr %14, i64 0, i32 12
  store i16 1, ptr %15, align 2, !tbaa !114
  br label %36

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.wmWindow, ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !113
  %19 = getelementptr inbounds %struct.bScreen, ptr %18, i64 0, i32 12
  store i16 1, ptr %19, align 2, !tbaa !114
  br label %36

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.wmNotifier, ptr %1, i64 0, i32 8
  %22 = load i32, ptr %21, align 8, !tbaa !115
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %36

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.wmWindow, ptr %3, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !113
  %27 = getelementptr inbounds %struct.bScreen, ptr %26, i64 0, i32 13
  store i16 1, ptr %27, align 8, !tbaa !94
  %28 = getelementptr inbounds %struct.bScreen, ptr %26, i64 0, i32 12
  store i16 1, ptr %28, align 2, !tbaa !114
  br label %36

29:                                               ; preds = %2
  %30 = getelementptr inbounds %struct.wmNotifier, ptr %1, i64 0, i32 6
  %31 = load i32, ptr %30, align 8, !tbaa !112
  %32 = icmp eq i32 %31, 720896
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.wmNotifier, ptr %1, i64 0, i32 4
  %35 = load i32, ptr %34, align 8, !tbaa !116
  tail call fastcc void @region_cursor_set(ptr noundef %3, i32 noundef %35, i32 noundef 1) #13
  br label %36

36:                                               ; preds = %29, %33, %20, %24, %8, %12, %2, %16
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @region_cursor_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #3 !PGOFuncName !117 {
  %4 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !113
  %6 = getelementptr inbounds %struct.bScreen, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %41, label %12

9:                                                ; preds = %15
  %10 = load ptr, ptr %13, align 8, !tbaa !34
  %11 = icmp eq ptr %10, null
  br i1 %11, label %41, label %12, !llvm.loop !118

12:                                               ; preds = %3, %9
  %13 = phi ptr [ %10, %9 ], [ %7, %3 ]
  %14 = getelementptr inbounds %struct.ScrArea, ptr %13, i64 0, i32 20
  br label %15

15:                                               ; preds = %19, %12
  %16 = phi ptr [ %14, %12 ], [ %17, %19 ]
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  %18 = icmp eq ptr %17, null
  br i1 %18, label %9, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.ARegion, ptr %17, i64 0, i32 7
  %21 = load i16, ptr %20, align 4, !tbaa !119
  %22 = sext i16 %21 to i32
  %23 = icmp eq i32 %22, %1
  br i1 %23, label %24, label %15, !llvm.loop !123

24:                                               ; preds = %19
  %25 = icmp eq i32 %2, 0
  %26 = getelementptr inbounds %struct.ARegion, ptr %17, i64 0, i32 20
  %27 = load ptr, ptr %26, align 8, !tbaa !124
  %28 = icmp eq ptr %27, null
  br i1 %25, label %29, label %34

29:                                               ; preds = %24
  br i1 %28, label %41, label %30

30:                                               ; preds = %29
  %31 = getelementptr inbounds %struct.ARegionType, ptr %27, i64 0, i32 23
  %32 = load i16, ptr %31, align 8, !tbaa !125
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %41, label %35

34:                                               ; preds = %24
  br i1 %28, label %40, label %35

35:                                               ; preds = %30, %34
  %36 = getelementptr inbounds %struct.ARegionType, ptr %27, i64 0, i32 11
  %37 = load ptr, ptr %36, align 8, !tbaa !127
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  tail call void %37(ptr noundef %0, ptr noundef nonnull %13, ptr noundef nonnull %17) #14
  br label %41

40:                                               ; preds = %35, %34
  tail call void @WM_cursor_set(ptr noundef %0, i32 noundef 1006) #14
  br label %41

41:                                               ; preds = %9, %3, %39, %40, %30, %29
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_screen_draw(ptr noundef %0) local_unnamed_addr #3 {
  %2 = tail call i32 @WM_window_pixels_x(ptr noundef %0) #14
  %3 = tail call i32 @WM_window_pixels_y(ptr noundef %0) #14
  %4 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !113
  %6 = getelementptr inbounds %struct.bScreen, ptr %5, i64 0, i32 18
  %7 = load i16, ptr %6, align 2, !tbaa !128
  %8 = sext i16 %7 to i32
  tail call void @wmSubWindowSet(ptr noundef %0, i32 noundef %8) #14
  %9 = load ptr, ptr %4, align 8, !tbaa !113
  %10 = getelementptr inbounds %struct.bScreen, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %89, label %13

13:                                               ; preds = %1, %13
  %14 = phi ptr [ %29, %13 ], [ %11, %1 ]
  %15 = phi ptr [ %28, %13 ], [ null, %1 ]
  %16 = phi ptr [ %25, %13 ], [ null, %1 ]
  %17 = phi ptr [ %22, %13 ], [ null, %1 ]
  %18 = getelementptr inbounds %struct.ScrArea, ptr %14, i64 0, i32 14
  %19 = load i16, ptr %18, align 2, !tbaa !100
  %20 = and i16 %19, 4
  %21 = icmp eq i16 %20, 0
  %22 = select i1 %21, ptr %17, ptr %14
  %23 = and i16 %19, 2
  %24 = icmp eq i16 %23, 0
  %25 = select i1 %24, ptr %16, ptr %14
  %26 = and i16 %19, 48
  %27 = icmp eq i16 %26, 0
  %28 = select i1 %27, ptr %15, ptr %14
  tail call fastcc void @drawscredge_area(ptr noundef nonnull %14, i32 noundef %2, i32 noundef %3, i32 noundef 0) #13
  %29 = load ptr, ptr %14, align 8, !tbaa !34
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %13, !llvm.loop !129

31:                                               ; preds = %13
  %32 = load ptr, ptr %4, align 8, !tbaa !113
  %33 = getelementptr inbounds %struct.bScreen, ptr %32, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !34
  %35 = icmp eq ptr %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %31, %36
  %37 = phi ptr [ %38, %36 ], [ %34, %31 ]
  tail call fastcc void @drawscredge_area(ptr noundef nonnull %37, i32 noundef %2, i32 noundef %3, i32 noundef 1) #13
  %38 = load ptr, ptr %37, align 8, !tbaa !34
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %36, !llvm.loop !130

40:                                               ; preds = %36, %31
  %41 = icmp ne ptr %22, null
  %42 = icmp ne ptr %25, null
  %43 = select i1 %41, i1 %42, i1 false
  br i1 %43, label %44, label %51

44:                                               ; preds = %40
  %45 = tail call i32 @area_getorientation(ptr noundef nonnull %22, ptr noundef nonnull %25) #13, !range !99
  %46 = add nsw i32 %45, 1
  %47 = zext i32 %46 to i40
  %48 = shl nuw nsw i40 %47, 3
  %49 = lshr i40 504329695999, %48
  %50 = trunc i40 %49 to i8
  tail call fastcc void @scrarea_draw_shape_dark(ptr noundef nonnull %25, i8 noundef zeroext %50) #13
  tail call fastcc void @scrarea_draw_shape_light(ptr noundef nonnull %22) #13
  br label %51

51:                                               ; preds = %44, %40
  %52 = icmp eq ptr %28, null
  br i1 %52, label %89, label %53

53:                                               ; preds = %51
  tail call void @glEnable(i32 noundef 3042) #14
  tail call void @glColor4ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext 100) #14
  %54 = getelementptr inbounds %struct.ScrArea, ptr %28, i64 0, i32 14
  %55 = load i16, ptr %54, align 2, !tbaa !100
  %56 = and i16 %55, 16
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %73, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.ScrArea, ptr %28, i64 0, i32 7
  %60 = load i32, ptr %59, align 8, !tbaa !131
  %61 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 21
  %62 = load ptr, ptr %61, align 8, !tbaa !132
  %63 = getelementptr inbounds %struct.wmEvent, ptr %62, i64 0, i32 5
  %64 = load i32, ptr %63, align 8, !tbaa !133
  %65 = getelementptr inbounds %struct.ScrArea, ptr %28, i64 0, i32 7, i32 1
  %66 = load i32, ptr %65, align 4, !tbaa !136
  tail call void @sdrawline(i32 noundef %60, i32 noundef %64, i32 noundef %66, i32 noundef %64) #14
  tail call void @glColor4ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 100) #14
  %67 = load i32, ptr %59, align 8, !tbaa !131
  %68 = load ptr, ptr %61, align 8, !tbaa !132
  %69 = getelementptr inbounds %struct.wmEvent, ptr %68, i64 0, i32 5
  %70 = load i32, ptr %69, align 8, !tbaa !133
  %71 = add nsw i32 %70, 1
  %72 = load i32, ptr %65, align 4, !tbaa !136
  tail call void @sdrawline(i32 noundef %67, i32 noundef %71, i32 noundef %72, i32 noundef %71) #14
  br label %88

73:                                               ; preds = %53
  %74 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 21
  %75 = load ptr, ptr %74, align 8, !tbaa !132
  %76 = getelementptr inbounds %struct.wmEvent, ptr %75, i64 0, i32 4
  %77 = load i32, ptr %76, align 4, !tbaa !137
  %78 = getelementptr inbounds %struct.ScrArea, ptr %28, i64 0, i32 7, i32 2
  %79 = load i32, ptr %78, align 8, !tbaa !138
  %80 = getelementptr inbounds %struct.ScrArea, ptr %28, i64 0, i32 7, i32 3
  %81 = load i32, ptr %80, align 4, !tbaa !139
  tail call void @sdrawline(i32 noundef %77, i32 noundef %79, i32 noundef %77, i32 noundef %81) #14
  tail call void @glColor4ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 100) #14
  %82 = load ptr, ptr %74, align 8, !tbaa !132
  %83 = getelementptr inbounds %struct.wmEvent, ptr %82, i64 0, i32 4
  %84 = load i32, ptr %83, align 4, !tbaa !137
  %85 = add nsw i32 %84, 1
  %86 = load i32, ptr %78, align 8, !tbaa !138
  %87 = load i32, ptr %80, align 4, !tbaa !139
  tail call void @sdrawline(i32 noundef %85, i32 noundef %86, i32 noundef %85, i32 noundef %87) #14
  br label %88

88:                                               ; preds = %73, %58
  tail call void @glDisable(i32 noundef 3042) #14
  br label %89

89:                                               ; preds = %1, %88, %51
  %90 = load ptr, ptr %4, align 8, !tbaa !113
  %91 = getelementptr inbounds %struct.bScreen, ptr %90, i64 0, i32 12
  store i16 0, ptr %91, align 2, !tbaa !114
  ret void
}

; Function Attrs: optsize
declare void @wmSubWindowSet(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @drawscredge_area(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #3 !PGOFuncName !140 {
  %5 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = getelementptr inbounds %struct.ScrVert, ptr %6, i64 0, i32 3
  %8 = load i16, ptr %7, align 8, !tbaa !49
  %9 = getelementptr inbounds %struct.ScrVert, ptr %6, i64 0, i32 3, i32 1
  %10 = load i16, ptr %9, align 2, !tbaa !50
  %11 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !60
  %13 = getelementptr inbounds %struct.ScrVert, ptr %12, i64 0, i32 3
  %14 = load i16, ptr %13, align 8, !tbaa !49
  %15 = getelementptr inbounds %struct.ScrVert, ptr %12, i64 0, i32 3, i32 1
  %16 = load i16, ptr %15, align 2, !tbaa !50
  %17 = icmp eq i32 %3, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %4
  %19 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !141
  %20 = fcmp ogt float %19, 1.000000e+00
  br i1 %20, label %21, label %33

21:                                               ; preds = %18
  tail call void @glColor3ub(i8 noundef zeroext 80, i8 noundef zeroext 80, i8 noundef zeroext 80) #14
  %22 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !141
  %23 = tail call float @llvm.fmuladd.f32(float %22, float 2.000000e+00, float -1.000000e+00)
  tail call void @glLineWidth(float noundef %23) #14
  %24 = sext i16 %8 to i32
  %25 = sext i16 %10 to i32
  %26 = sext i16 %14 to i32
  %27 = sext i16 %16 to i32
  tail call fastcc void @drawscredge_area_draw(i32 noundef %1, i32 noundef %2, i32 noundef %24, i32 noundef %25, i32 noundef %26, i32 noundef %27) #13
  tail call void @glLineWidth(float noundef 1.000000e+00) #14
  br label %33

28:                                               ; preds = %4
  tail call void @glColor3ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %29 = sext i16 %8 to i32
  %30 = sext i16 %10 to i32
  %31 = sext i16 %14 to i32
  %32 = sext i16 %16 to i32
  tail call fastcc void @drawscredge_area_draw(i32 noundef %1, i32 noundef %2, i32 noundef %29, i32 noundef %30, i32 noundef %31, i32 noundef %32) #13
  br label %33

33:                                               ; preds = %18, %21, %28
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @scrarea_draw_shape_dark(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #3 !PGOFuncName !142 {
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #14
  tail call void @glEnable(i32 noundef 3042) #14
  tail call void @glColor4ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 50) #14
  tail call fastcc void @draw_join_shape(ptr noundef %0, i8 noundef zeroext %1) #13
  tail call void @glDisable(i32 noundef 3042) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @scrarea_draw_shape_light(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !143 {
  tail call void @glBlendFunc(i32 noundef 774, i32 noundef 770) #14
  tail call void @glEnable(i32 noundef 3042) #14
  tail call void @glColor4ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext 50) #14
  %2 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = getelementptr inbounds %struct.ScrVert, ptr %3, i64 0, i32 3
  %5 = load i16, ptr %4, align 8, !tbaa !49
  %6 = sext i16 %5 to i32
  %7 = getelementptr inbounds %struct.ScrVert, ptr %3, i64 0, i32 3, i32 1
  %8 = load i16, ptr %7, align 2, !tbaa !50
  %9 = sext i16 %8 to i32
  %10 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !60
  %12 = getelementptr inbounds %struct.ScrVert, ptr %11, i64 0, i32 3
  %13 = load i16, ptr %12, align 8, !tbaa !49
  %14 = sext i16 %13 to i32
  %15 = getelementptr inbounds %struct.ScrVert, ptr %11, i64 0, i32 3, i32 1
  %16 = load i16, ptr %15, align 2, !tbaa !50
  %17 = sext i16 %16 to i32
  tail call void @glRecti(i32 noundef %6, i32 noundef %9, i32 noundef %14, i32 noundef %17) #14
  tail call void @glDisable(i32 noundef 3042) #14
  ret void
}

; Function Attrs: optsize
declare void @glEnable(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @glColor4ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare void @sdrawline(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @glDisable(i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_screen_refresh(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = alloca %struct.rcti, align 4
  %4 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !144
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %46

6:                                                ; preds = %2
  %7 = tail call i32 @WM_window_pixels_x(ptr noundef %1) #14
  %8 = tail call i32 @WM_window_pixels_y(ptr noundef %1) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #15
  store i32 0, ptr %3, align 4, !tbaa !145
  %9 = add nsw i32 %7, -1
  %10 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 1
  store i32 %9, ptr %10, align 4, !tbaa !146
  %11 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 2
  store i32 0, ptr %11, align 4, !tbaa !147
  %12 = add nsw i32 %8, -1
  %13 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 3
  store i32 %12, ptr %13, align 4, !tbaa !148
  tail call fastcc void @screen_refresh_headersizes() #13
  %14 = getelementptr inbounds %struct.wmWindow, ptr %1, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !113
  tail call fastcc void @screen_test_scale(ptr noundef %15, i32 noundef %7, i32 noundef %8) #13
  %16 = load ptr, ptr %14, align 8, !tbaa !113
  %17 = getelementptr inbounds %struct.bScreen, ptr %16, i64 0, i32 18
  %18 = load i16, ptr %17, align 2, !tbaa !128
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %6
  %21 = call i32 @wm_subwindow_open(ptr noundef nonnull %1, ptr noundef nonnull %3) #14
  %22 = trunc i32 %21 to i16
  %23 = load ptr, ptr %14, align 8, !tbaa !113
  %24 = getelementptr inbounds %struct.bScreen, ptr %23, i64 0, i32 18
  store i16 %22, ptr %24, align 2, !tbaa !128
  br label %28

25:                                               ; preds = %6
  %26 = sext i16 %18 to i32
  call void @wm_subwindow_position(ptr noundef nonnull %1, i32 noundef %26, ptr noundef nonnull %3) #14
  %27 = load ptr, ptr %14, align 8, !tbaa !113
  br label %28

28:                                               ; preds = %25, %20
  %29 = phi ptr [ %27, %25 ], [ %23, %20 ]
  %30 = getelementptr inbounds %struct.bScreen, ptr %29, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !34
  %32 = icmp eq ptr %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %28, %33
  %34 = phi ptr [ %35, %33 ], [ %31, %28 ]
  call void @ED_area_initialize(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %34) #14
  %35 = load ptr, ptr %34, align 8, !tbaa !34
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %33, !llvm.loop !149

37:                                               ; preds = %33
  %38 = load ptr, ptr %14, align 8, !tbaa !113
  br label %39

39:                                               ; preds = %37, %28
  %40 = phi ptr [ %38, %37 ], [ %29, %28 ]
  %41 = getelementptr inbounds %struct.bScreen, ptr %40, i64 0, i32 21
  %42 = load ptr, ptr %41, align 8, !tbaa !150
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  call void @WM_event_timer_sleep(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %42, i8 noundef zeroext 0) #14
  br label %45

45:                                               ; preds = %44, %39
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #15
  br label %46

46:                                               ; preds = %45, %2
  %47 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !151
  %48 = and i32 %47, 8
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %46
  %51 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @__func__.ED_screen_refresh) #13
  br label %52

52:                                               ; preds = %50, %46
  %53 = getelementptr inbounds %struct.wmWindow, ptr %1, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !113
  %55 = getelementptr inbounds %struct.bScreen, ptr %54, i64 0, i32 13
  store i16 0, ptr %55, align 8, !tbaa !94
  %56 = getelementptr inbounds %struct.bScreen, ptr %54, i64 0, i32 22
  store ptr @ed_screen_context, ptr %56, align 8, !tbaa !152
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @screen_refresh_headersizes() unnamed_addr #3 !PGOFuncName !153 {
  %1 = tail call ptr @BKE_spacetypes_list() #14
  %2 = load ptr, ptr %1, align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %0, %11
  %5 = phi ptr [ %12, %11 ], [ %2, %0 ]
  %6 = tail call ptr @BKE_regiontype_from_id(ptr noundef nonnull %5, i32 noundef 1) #14
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = tail call i32 @ED_area_headersize() #14
  %10 = getelementptr inbounds %struct.ARegionType, ptr %6, i64 0, i32 19
  store i32 %9, ptr %10, align 4, !tbaa !154
  br label %11

11:                                               ; preds = %8, %4
  %12 = load ptr, ptr %5, align 8, !tbaa !34
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %4, !llvm.loop !155

14:                                               ; preds = %11, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @screen_test_scale(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #3 !PGOFuncName !156 {
  %4 = alloca [2 x float], align 8
  %5 = alloca [2 x float], align 8
  %6 = alloca [2 x float], align 8
  %7 = tail call i32 @ED_area_headersize() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  store <2 x float> <float 2.000000e+04, float 2.000000e+04>, ptr %4, align 8, !tbaa !157
  store <2 x float> zeroinitializer, ptr %5, align 8, !tbaa !157
  %8 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %31, label %15

11:                                               ; preds = %15
  %12 = load ptr, ptr %8, align 8, !tbaa !34
  %13 = load <2 x float>, ptr %4, align 8, !tbaa !157
  %14 = icmp eq ptr %12, null
  br i1 %14, label %31, label %22

15:                                               ; preds = %3, %15
  %16 = phi ptr [ %20, %15 ], [ %9, %3 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #15
  %17 = getelementptr inbounds %struct.ScrVert, ptr %16, i64 0, i32 3
  %18 = load <2 x i16>, ptr %17, align 8, !tbaa !158
  %19 = sitofp <2 x i16> %18 to <2 x float>
  store <2 x float> %19, ptr %6, align 8, !tbaa !157
  call void @minmax_v2v2_v2(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #15
  %20 = load ptr, ptr %16, align 8, !tbaa !34
  %21 = icmp eq ptr %20, null
  br i1 %21, label %11, label %15, !llvm.loop !159

22:                                               ; preds = %11, %22
  %23 = phi ptr [ %29, %22 ], [ %12, %11 ]
  %24 = getelementptr inbounds %struct.ScrVert, ptr %23, i64 0, i32 3
  %25 = load <2 x i16>, ptr %24, align 8, !tbaa !158
  %26 = sitofp <2 x i16> %25 to <2 x float>
  %27 = fsub <2 x float> %26, %13
  %28 = fptosi <2 x float> %27 to <2 x i16>
  store <2 x i16> %28, ptr %24, align 8, !tbaa !158
  %29 = load ptr, ptr %23, align 8, !tbaa !34
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %22, !llvm.loop !160

31:                                               ; preds = %22, %3, %11
  %32 = phi <2 x float> [ %13, %11 ], [ <float 2.000000e+04, float 2.000000e+04>, %3 ], [ %13, %22 ]
  %33 = load <2 x float>, ptr %5, align 8, !tbaa !157
  %34 = fsub <2 x float> %33, %32
  %35 = fadd <2 x float> %34, <float 1.000000e+00, float 1.000000e+00>
  %36 = fptosi <2 x float> %35 to <2 x i32>
  %37 = extractelement <2 x i32> %36, i64 1
  %38 = icmp slt i32 %37, %2
  br i1 %38, label %39, label %80

39:                                               ; preds = %31
  %40 = add nsw i32 %7, 4
  %41 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !34
  %43 = icmp eq ptr %42, null
  br i1 %43, label %80, label %44

44:                                               ; preds = %39
  %45 = add nsw i32 %37, -1
  br label %46

46:                                               ; preds = %44, %77
  %47 = phi ptr [ %42, %44 ], [ %78, %77 ]
  %48 = call ptr @BKE_area_find_region_type(ptr noundef nonnull %47, i32 noundef 1) #14
  %49 = getelementptr inbounds %struct.ScrArea, ptr %47, i64 0, i32 16
  store i8 0, ptr %49, align 2, !tbaa !161
  %50 = icmp eq ptr %48, null
  br i1 %50, label %77, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.ARegion, ptr %48, i64 0, i32 10
  %53 = load i16, ptr %52, align 2, !tbaa !162
  %54 = and i16 %53, 1
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %56, label %77

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.ScrArea, ptr %47, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !59
  %59 = getelementptr inbounds %struct.ScrVert, ptr %58, i64 0, i32 3, i32 1
  %60 = load i16, ptr %59, align 2, !tbaa !50
  %61 = sext i16 %60 to i32
  %62 = icmp eq i32 %45, %61
  %63 = getelementptr inbounds %struct.ScrArea, ptr %47, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !55
  %65 = getelementptr inbounds %struct.ScrVert, ptr %64, i64 0, i32 3, i32 1
  %66 = load i16, ptr %65, align 2, !tbaa !50
  br i1 %62, label %67, label %71

67:                                               ; preds = %56
  %68 = sext i16 %66 to i32
  %69 = sub nsw i32 %45, %68
  %70 = icmp slt i32 %69, %40
  br i1 %70, label %75, label %77

71:                                               ; preds = %56
  %72 = icmp eq i16 %66, 0
  %73 = icmp sgt i32 %40, %61
  %74 = select i1 %72, i1 %73, i1 false
  br i1 %74, label %75, label %77

75:                                               ; preds = %71, %67
  %76 = phi i8 [ 2, %67 ], [ 1, %71 ]
  store i8 %76, ptr %49, align 2, !tbaa !161
  br label %77

77:                                               ; preds = %75, %67, %71, %51, %46
  %78 = load ptr, ptr %47, align 8, !tbaa !34
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %46, !llvm.loop !163

80:                                               ; preds = %77, %39, %31
  %81 = insertelement <2 x i32> poison, i32 %1, i64 0
  %82 = insertelement <2 x i32> %81, i32 %2, i64 1
  %83 = icmp eq <2 x i32> %82, %36
  %84 = shufflevector <2 x i1> %83, <2 x i1> poison, <2 x i32> <i32 1, i32 poison>
  %85 = and <2 x i1> %83, %84
  %86 = extractelement <2 x i1> %85, i64 0
  br i1 %86, label %136, label %87

87:                                               ; preds = %80
  %88 = sitofp i32 %1 to float
  %89 = fadd float %88, -1.000000e+00
  %90 = extractelement <2 x i32> %36, i64 0
  %91 = sitofp i32 %90 to float
  %92 = fadd float %91, -1.000000e+00
  %93 = fdiv float %89, %92
  %94 = sitofp i32 %2 to float
  %95 = fadd float %94, -1.000000e+00
  %96 = sitofp i32 %37 to float
  %97 = fadd float %96, -1.000000e+00
  %98 = fdiv float %95, %97
  %99 = load ptr, ptr %8, align 8, !tbaa !34
  %100 = icmp eq ptr %99, null
  br i1 %100, label %136, label %101

101:                                              ; preds = %87
  %102 = trunc i32 %1 to i16
  %103 = add i16 %102, -1
  %104 = trunc i32 %2 to i16
  %105 = add i16 %104, -1
  br label %106

106:                                              ; preds = %101, %133
  %107 = phi ptr [ %99, %101 ], [ %134, %133 ]
  %108 = getelementptr inbounds %struct.ScrVert, ptr %107, i64 0, i32 3
  %109 = load i16, ptr %108, align 8, !tbaa !49
  %110 = sitofp i16 %109 to float
  %111 = fmul float %93, %110
  %112 = fadd float %111, 5.000000e-01
  %113 = fptosi float %112 to i16
  store i16 %113, ptr %108, align 8, !tbaa !49
  %114 = icmp slt i16 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %106
  %116 = zext nneg i16 %113 to i32
  %117 = icmp slt i32 %116, %1
  br i1 %117, label %120, label %118

118:                                              ; preds = %115, %106
  %119 = phi i16 [ 0, %106 ], [ %103, %115 ]
  store i16 %119, ptr %108, align 8, !tbaa !49
  br label %120

120:                                              ; preds = %118, %115
  %121 = getelementptr inbounds %struct.ScrVert, ptr %107, i64 0, i32 3, i32 1
  %122 = load i16, ptr %121, align 2, !tbaa !50
  %123 = sitofp i16 %122 to float
  %124 = fmul float %98, %123
  %125 = fadd float %124, 5.000000e-01
  %126 = fptosi float %125 to i16
  store i16 %126, ptr %121, align 2, !tbaa !50
  %127 = icmp slt i16 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %120
  %129 = zext nneg i16 %126 to i32
  %130 = icmp slt i32 %129, %2
  br i1 %130, label %133, label %131

131:                                              ; preds = %128, %120
  %132 = phi i16 [ 0, %120 ], [ %105, %128 ]
  store i16 %132, ptr %121, align 2, !tbaa !50
  br label %133

133:                                              ; preds = %131, %128
  %134 = load ptr, ptr %107, align 8, !tbaa !34
  %135 = icmp eq ptr %134, null
  br i1 %135, label %136, label %106, !llvm.loop !164

136:                                              ; preds = %133, %87, %80
  br i1 %38, label %137, label %213

137:                                              ; preds = %136
  %138 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 3
  %139 = load ptr, ptr %138, align 8, !tbaa !34
  %140 = icmp eq ptr %139, null
  br i1 %140, label %213, label %141

141:                                              ; preds = %137
  %142 = trunc i32 %7 to i16
  br label %143

143:                                              ; preds = %141, %210
  %144 = phi ptr [ %139, %141 ], [ %211, %210 ]
  %145 = getelementptr inbounds %struct.ScrArea, ptr %144, i64 0, i32 16
  %146 = load i8, ptr %145, align 2, !tbaa !161
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %210, label %148

148:                                              ; preds = %143
  %149 = getelementptr inbounds %struct.ScrArea, ptr %144, i64 0, i32 2
  %150 = load ptr, ptr %149, align 8, !tbaa !55
  %151 = getelementptr inbounds %struct.ScrArea, ptr %144, i64 0, i32 3
  %152 = load ptr, ptr %151, align 8, !tbaa !59
  %153 = icmp eq ptr %150, %152
  br i1 %153, label %210, label %154

154:                                              ; preds = %148
  %155 = icmp eq i8 %146, 2
  br i1 %155, label %156, label %183

156:                                              ; preds = %154
  %157 = getelementptr inbounds %struct.ScrVert, ptr %152, i64 0, i32 3, i32 1
  %158 = load i16, ptr %157, align 2, !tbaa !50
  %159 = getelementptr inbounds %struct.ScrArea, ptr %144, i64 0, i32 5
  %160 = load ptr, ptr %159, align 8, !tbaa !61
  %161 = call ptr @screen_findedge(ptr noundef %0, ptr noundef %160, ptr noundef %150) #13
  call void @select_connected_scredge(ptr noundef %0, ptr noundef %161) #13
  %162 = load ptr, ptr %8, align 8, !tbaa !34
  %163 = icmp eq ptr %162, null
  br i1 %163, label %210, label %164

164:                                              ; preds = %156
  %165 = load ptr, ptr %151, align 8, !tbaa !59
  %166 = getelementptr inbounds %struct.ScrArea, ptr %144, i64 0, i32 4
  %167 = sub i16 %158, %142
  br label %168

168:                                              ; preds = %164, %180
  %169 = phi ptr [ %162, %164 ], [ %181, %180 ]
  %170 = icmp eq ptr %169, %165
  br i1 %170, label %180, label %171

171:                                              ; preds = %168
  %172 = load ptr, ptr %166, align 8, !tbaa !60
  %173 = icmp eq ptr %169, %172
  br i1 %173, label %180, label %174

174:                                              ; preds = %171
  %175 = getelementptr inbounds %struct.ScrVert, ptr %169, i64 0, i32 4
  %176 = load i16, ptr %175, align 4, !tbaa !67
  %177 = icmp eq i16 %176, 0
  br i1 %177, label %180, label %178

178:                                              ; preds = %174
  %179 = getelementptr inbounds %struct.ScrVert, ptr %169, i64 0, i32 3, i32 1
  store i16 %167, ptr %179, align 2, !tbaa !50
  br label %180

180:                                              ; preds = %168, %171, %178, %174
  %181 = load ptr, ptr %169, align 8, !tbaa !34
  %182 = icmp eq ptr %181, null
  br i1 %182, label %210, label %168, !llvm.loop !165

183:                                              ; preds = %154
  %184 = getelementptr inbounds %struct.ScrVert, ptr %150, i64 0, i32 3, i32 1
  %185 = load i16, ptr %184, align 2, !tbaa !50
  %186 = getelementptr inbounds %struct.ScrArea, ptr %144, i64 0, i32 4
  %187 = load ptr, ptr %186, align 8, !tbaa !60
  %188 = call ptr @screen_findedge(ptr noundef %0, ptr noundef %152, ptr noundef %187) #13
  call void @select_connected_scredge(ptr noundef %0, ptr noundef %188) #13
  %189 = load ptr, ptr %8, align 8, !tbaa !34
  %190 = icmp eq ptr %189, null
  br i1 %190, label %210, label %191

191:                                              ; preds = %183
  %192 = load ptr, ptr %149, align 8, !tbaa !55
  %193 = getelementptr inbounds %struct.ScrArea, ptr %144, i64 0, i32 5
  %194 = add i16 %185, %142
  br label %195

195:                                              ; preds = %191, %207
  %196 = phi ptr [ %189, %191 ], [ %208, %207 ]
  %197 = icmp eq ptr %196, %192
  br i1 %197, label %207, label %198

198:                                              ; preds = %195
  %199 = load ptr, ptr %193, align 8, !tbaa !61
  %200 = icmp eq ptr %196, %199
  br i1 %200, label %207, label %201

201:                                              ; preds = %198
  %202 = getelementptr inbounds %struct.ScrVert, ptr %196, i64 0, i32 4
  %203 = load i16, ptr %202, align 4, !tbaa !67
  %204 = icmp eq i16 %203, 0
  br i1 %204, label %207, label %205

205:                                              ; preds = %201
  %206 = getelementptr inbounds %struct.ScrVert, ptr %196, i64 0, i32 3, i32 1
  store i16 %194, ptr %206, align 2, !tbaa !50
  br label %207

207:                                              ; preds = %195, %198, %205, %201
  %208 = load ptr, ptr %196, align 8, !tbaa !34
  %209 = icmp eq ptr %208, null
  br i1 %209, label %210, label %195, !llvm.loop !166

210:                                              ; preds = %207, %180, %183, %156, %148, %143
  %211 = load ptr, ptr %144, align 8, !tbaa !34
  %212 = icmp eq ptr %211, null
  br i1 %212, label %213, label %143, !llvm.loop !167

213:                                              ; preds = %210, %137, %136
  %214 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 3
  %215 = load ptr, ptr %214, align 8, !tbaa !34
  %216 = icmp eq ptr %215, null
  br i1 %216, label %281, label %217

217:                                              ; preds = %213
  %218 = sitofp i32 %7 to float
  %219 = add nsw i32 %2, -1
  br label %220

220:                                              ; preds = %217, %278
  %221 = phi ptr [ %215, %217 ], [ %279, %278 ]
  %222 = getelementptr inbounds %struct.ScrArea, ptr %221, i64 0, i32 2
  %223 = load ptr, ptr %222, align 8, !tbaa !55
  %224 = getelementptr inbounds %struct.ScrVert, ptr %223, i64 0, i32 3, i32 1
  %225 = load i16, ptr %224, align 2, !tbaa !50
  %226 = icmp sgt i16 %225, 0
  %227 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4
  %228 = fadd float %227, %218
  %229 = fptosi float %228 to i32
  %230 = select i1 %226, i32 %229, i32 %7
  %231 = getelementptr inbounds %struct.ScrArea, ptr %221, i64 0, i32 3
  %232 = load ptr, ptr %231, align 8, !tbaa !59
  %233 = getelementptr inbounds %struct.ScrVert, ptr %232, i64 0, i32 3, i32 1
  %234 = load i16, ptr %233, align 2, !tbaa !50
  %235 = sext i16 %234 to i32
  %236 = icmp sgt i32 %219, %235
  %237 = sitofp i32 %230 to float
  %238 = fadd float %227, %237
  %239 = fptosi float %238 to i32
  %240 = select i1 %236, i32 %239, i32 %230
  %241 = sext i16 %225 to i32
  %242 = sub nsw i32 %235, %241
  %243 = add nsw i32 %242, 1
  %244 = icmp slt i32 %243, %240
  br i1 %244, label %245, label %278

245:                                              ; preds = %220
  %246 = getelementptr inbounds %struct.ScrArea, ptr %221, i64 0, i32 5
  %247 = load ptr, ptr %246, align 8, !tbaa !61
  %248 = call ptr @screen_findedge(ptr noundef %0, ptr noundef %247, ptr noundef nonnull %223) #13
  %249 = icmp eq ptr %248, null
  %250 = icmp eq ptr %223, %232
  %251 = or i1 %250, %249
  br i1 %251, label %278, label %252

252:                                              ; preds = %245
  call void @select_connected_scredge(ptr noundef %0, ptr noundef nonnull %248) #13
  %253 = load ptr, ptr %231, align 8, !tbaa !59
  %254 = load ptr, ptr %8, align 8, !tbaa !34
  %255 = icmp eq ptr %254, null
  br i1 %255, label %278, label %256

256:                                              ; preds = %252
  %257 = getelementptr inbounds %struct.ScrVert, ptr %253, i64 0, i32 3, i32 1
  %258 = load i16, ptr %257, align 2, !tbaa !50
  %259 = getelementptr inbounds %struct.ScrArea, ptr %221, i64 0, i32 4
  %260 = trunc i32 %240 to i16
  %261 = sub i16 %258, %260
  %262 = add i16 %261, 1
  br label %263

263:                                              ; preds = %256, %275
  %264 = phi ptr [ %254, %256 ], [ %276, %275 ]
  %265 = icmp eq ptr %264, %253
  br i1 %265, label %275, label %266

266:                                              ; preds = %263
  %267 = load ptr, ptr %259, align 8, !tbaa !60
  %268 = icmp eq ptr %264, %267
  br i1 %268, label %275, label %269

269:                                              ; preds = %266
  %270 = getelementptr inbounds %struct.ScrVert, ptr %264, i64 0, i32 4
  %271 = load i16, ptr %270, align 4, !tbaa !67
  %272 = icmp eq i16 %271, 0
  br i1 %272, label %275, label %273

273:                                              ; preds = %269
  %274 = getelementptr inbounds %struct.ScrVert, ptr %264, i64 0, i32 3, i32 1
  store i16 %262, ptr %274, align 2, !tbaa !50
  br label %275

275:                                              ; preds = %263, %266, %273, %269
  %276 = load ptr, ptr %264, align 8, !tbaa !34
  %277 = icmp eq ptr %276, null
  br i1 %277, label %278, label %263, !llvm.loop !168

278:                                              ; preds = %275, %252, %245, %220
  %279 = load ptr, ptr %221, align 8, !tbaa !34
  %280 = icmp eq ptr %279, null
  br i1 %280, label %281, label %220, !llvm.loop !169

281:                                              ; preds = %278, %213
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  ret void
}

; Function Attrs: optsize
declare i32 @wm_subwindow_open(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @wm_subwindow_position(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ED_area_initialize(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @WM_event_timer_sleep(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @ed_screen_context(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_screens_initialize(ptr noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %1, %14
  %6 = phi ptr [ %15, %14 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.wmWindow, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !113
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  %11 = load ptr, ptr @G, align 8, !tbaa !91
  %12 = getelementptr inbounds %struct.Main, ptr %11, i64 0, i32 26
  %13 = load ptr, ptr %12, align 8, !tbaa !170
  store ptr %13, ptr %7, align 8, !tbaa !113
  br label %14

14:                                               ; preds = %10, %5
  tail call void @ED_screen_refresh(ptr noundef %0, ptr noundef nonnull %6) #13
  %15 = load ptr, ptr %6, align 8, !tbaa !34
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %5, !llvm.loop !173

17:                                               ; preds = %14, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_region_exit(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = tail call ptr @CTX_wm_manager(ptr noundef %0) #14
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #14
  %5 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 20
  %6 = load ptr, ptr %5, align 8, !tbaa !124
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ARegionType, ptr %6, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !174
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void %10(ptr noundef %3, ptr noundef nonnull %1) #14
  br label %13

13:                                               ; preds = %12, %8, %2
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef nonnull %1) #14
  %14 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 26
  tail call void @WM_event_remove_handlers(ptr noundef %0, ptr noundef nonnull %14) #14
  %15 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 7
  %16 = load i16, ptr %15, align 4, !tbaa !119
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = tail call ptr @CTX_wm_window(ptr noundef %0) #14
  %20 = load i16, ptr %15, align 4, !tbaa !119
  %21 = sext i16 %20 to i32
  tail call void @wm_subwindow_close(ptr noundef %19, i32 noundef %21) #14
  br label %22

22:                                               ; preds = %18, %13
  store i16 0, ptr %15, align 4, !tbaa !119
  %23 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 29
  %24 = load ptr, ptr %23, align 8, !tbaa !175
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %27(ptr noundef nonnull %24) #14
  br label %28

28:                                               ; preds = %26, %22
  store ptr null, ptr %23, align 8, !tbaa !175
  %29 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 28
  %30 = load ptr, ptr %29, align 8, !tbaa !176
  %31 = icmp eq ptr %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = tail call ptr @CTX_wm_manager(ptr noundef %0) #14
  %34 = tail call ptr @CTX_wm_window(ptr noundef %0) #14
  %35 = load ptr, ptr %29, align 8, !tbaa !176
  tail call void @WM_event_remove_timer(ptr noundef %33, ptr noundef %34, ptr noundef %35) #14
  br label %36

36:                                               ; preds = %32, %28
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef %4) #14
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @CTX_wm_region_set(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @WM_event_remove_handlers(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @wm_subwindow_close(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @WM_event_remove_timer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_area_exit(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = tail call ptr @CTX_wm_manager(ptr noundef %0) #14
  %4 = tail call ptr @CTX_wm_area(ptr noundef %0) #14
  %5 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 18
  %6 = load ptr, ptr %5, align 8, !tbaa !177
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.SpaceType, ptr %6, i64 0, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !178
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void %10(ptr noundef %3, ptr noundef nonnull %1) #14
  br label %13

13:                                               ; preds = %12, %8, %2
  tail call void @CTX_wm_area_set(ptr noundef %0, ptr noundef nonnull %1) #14
  %14 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 20
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %13, %17
  %18 = phi ptr [ %19, %17 ], [ %15, %13 ]
  tail call void @ED_region_exit(ptr noundef %0, ptr noundef nonnull %18) #13
  %19 = load ptr, ptr %18, align 8, !tbaa !34
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %17, !llvm.loop !180

21:                                               ; preds = %17, %13
  %22 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 21
  tail call void @WM_event_remove_handlers(ptr noundef %0, ptr noundef nonnull %22) #14
  tail call void @CTX_wm_area_set(ptr noundef %0, ptr noundef %4) #14
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @CTX_wm_area_set(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_screen_exit(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #3 {
  %4 = tail call ptr @CTX_wm_manager(ptr noundef %0) #14
  %5 = tail call ptr @CTX_wm_window(ptr noundef %0) #14
  tail call void @CTX_wm_window_set(ptr noundef %0, ptr noundef %1) #14
  %6 = getelementptr inbounds %struct.bScreen, ptr %2, i64 0, i32 21
  %7 = load ptr, ptr %6, align 8, !tbaa !150
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  tail call void @WM_event_remove_timer(ptr noundef %4, ptr noundef %1, ptr noundef nonnull %7) #14
  br label %10

10:                                               ; preds = %9, %3
  store ptr null, ptr %6, align 8, !tbaa !150
  %11 = getelementptr inbounds %struct.bScreen, ptr %2, i64 0, i32 18
  %12 = load i16, ptr %11, align 2, !tbaa !128
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = sext i16 %12 to i32
  tail call void @wm_subwindow_close(ptr noundef %1, i32 noundef %15) #14
  br label %16

16:                                               ; preds = %14, %10
  store i16 0, ptr %11, align 2, !tbaa !128
  %17 = getelementptr inbounds %struct.bScreen, ptr %2, i64 0, i32 19
  store i16 0, ptr %17, align 4, !tbaa !181
  %18 = getelementptr inbounds %struct.bScreen, ptr %2, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !34
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %16, %21
  %22 = phi ptr [ %23, %21 ], [ %19, %16 ]
  tail call void @ED_region_exit(ptr noundef %0, ptr noundef nonnull %22) #13
  %23 = load ptr, ptr %22, align 8, !tbaa !34
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %21, !llvm.loop !182

25:                                               ; preds = %21, %16
  %26 = getelementptr inbounds %struct.bScreen, ptr %2, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !34
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %25, %29
  %30 = phi ptr [ %31, %29 ], [ %27, %25 ]
  tail call void @ED_area_exit(ptr noundef %0, ptr noundef nonnull %30) #13
  %31 = load ptr, ptr %30, align 8, !tbaa !34
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %29, !llvm.loop !183

33:                                               ; preds = %29, %25
  %34 = getelementptr inbounds %struct.bScreen, ptr %2, i64 0, i32 11
  store i16 0, ptr %34, align 4, !tbaa !98
  %35 = getelementptr inbounds %struct.wmWindow, ptr %5, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !113
  %37 = getelementptr inbounds %struct.bScreen, ptr %36, i64 0, i32 10
  %38 = load i16, ptr %37, align 2, !tbaa !184
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  tail call void @CTX_wm_window_set(ptr noundef %0, ptr noundef nonnull %5) #14
  br label %42

41:                                               ; preds = %33
  tail call void @CTX_wm_window_set(ptr noundef %0, ptr noundef null) #14
  br label %42

42:                                               ; preds = %41, %40
  ret void
}

; Function Attrs: optsize
declare void @CTX_wm_window_set(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_screen_set_subwinactive(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = tail call ptr @CTX_wm_window(ptr noundef %0) #14
  %4 = getelementptr inbounds %struct.wmWindow, ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !113
  %6 = icmp eq ptr %5, null
  br i1 %6, label %113, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.bScreen, ptr %5, i64 0, i32 19
  %9 = load i16, ptr %8, align 4, !tbaa !181
  %10 = getelementptr inbounds %struct.bScreen, ptr %5, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %54, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 4
  %15 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 5
  br label %16

16:                                               ; preds = %13, %38
  %17 = phi ptr [ %11, %13 ], [ %39, %38 ]
  %18 = load i32, ptr %14, align 4, !tbaa !137
  %19 = getelementptr inbounds %struct.ScrArea, ptr %17, i64 0, i32 7
  %20 = load i32, ptr %19, align 8, !tbaa !131
  %21 = icmp sgt i32 %18, %20
  br i1 %21, label %22, label %38

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.ScrArea, ptr %17, i64 0, i32 7, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !136
  %25 = icmp slt i32 %18, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %22
  %27 = load i32, ptr %15, align 8, !tbaa !133
  %28 = getelementptr inbounds %struct.ScrArea, ptr %17, i64 0, i32 7, i32 2
  %29 = load i32, ptr %28, align 8, !tbaa !138
  %30 = icmp sgt i32 %27, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.ScrArea, ptr %17, i64 0, i32 7, i32 3
  %33 = load i32, ptr %32, align 4, !tbaa !139
  %34 = icmp slt i32 %27, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = tail call ptr @is_in_area_actionzone(ptr noundef nonnull %17, ptr noundef nonnull %14) #14
  %37 = icmp eq ptr %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %16, %22, %35, %31, %26
  %39 = load ptr, ptr %17, align 8, !tbaa !34
  %40 = icmp eq ptr %39, null
  br i1 %40, label %54, label %16, !llvm.loop !185

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.ScrArea, ptr %17, i64 0, i32 20
  br label %43

43:                                               ; preds = %47, %41
  %44 = phi ptr [ %42, %41 ], [ %45, %47 ]
  %45 = load ptr, ptr %44, align 8, !tbaa !34
  %46 = icmp eq ptr %45, null
  br i1 %46, label %57, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.ARegion, ptr %45, i64 0, i32 3
  %49 = tail call zeroext i8 @BLI_rcti_isect_pt_v(ptr noundef nonnull %48, ptr noundef nonnull %14) #14
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %43, label %51, !llvm.loop !186

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.ARegion, ptr %45, i64 0, i32 7
  %53 = load i16, ptr %52, align 4, !tbaa !119
  store i16 %53, ptr %8, align 4, !tbaa !181
  br label %59

54:                                               ; preds = %38, %7
  %55 = getelementptr inbounds %struct.bScreen, ptr %5, i64 0, i32 18
  %56 = load i16, ptr %55, align 2, !tbaa !128
  store i16 %56, ptr %8, align 4, !tbaa !181
  br label %59

57:                                               ; preds = %43
  %58 = load i16, ptr %8, align 4, !tbaa !181
  br label %59

59:                                               ; preds = %57, %51, %54
  %60 = phi i16 [ %58, %57 ], [ %53, %51 ], [ %56, %54 ]
  %61 = icmp eq i16 %9, %60
  br i1 %61, label %101, label %62

62:                                               ; preds = %59
  %63 = load ptr, ptr %10, align 8, !tbaa !34
  %64 = icmp eq ptr %63, null
  br i1 %64, label %101, label %65

65:                                               ; preds = %62, %96
  %66 = phi ptr [ %97, %96 ], [ %63, %62 ]
  %67 = getelementptr inbounds %struct.ScrArea, ptr %66, i64 0, i32 20
  %68 = load ptr, ptr %67, align 8, !tbaa !34
  %69 = icmp eq ptr %68, null
  br i1 %69, label %96, label %70

70:                                               ; preds = %65, %80
  %71 = phi ptr [ %82, %80 ], [ %68, %65 ]
  %72 = phi i8 [ %81, %80 ], [ 0, %65 ]
  %73 = getelementptr inbounds %struct.ARegion, ptr %71, i64 0, i32 7
  %74 = load i16, ptr %73, align 4, !tbaa !119
  %75 = icmp eq i16 %74, %9
  br i1 %75, label %79, label %76

76:                                               ; preds = %70
  %77 = load i16, ptr %8, align 4, !tbaa !181
  %78 = icmp eq i16 %74, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %76, %70
  br label %80

80:                                               ; preds = %76, %79
  %81 = phi i8 [ 1, %79 ], [ %72, %76 ]
  %82 = load ptr, ptr %71, align 8, !tbaa !34
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %70, !llvm.loop !187

84:                                               ; preds = %80
  %85 = icmp eq i8 %81, 0
  %86 = or i1 %85, %69
  br i1 %86, label %96, label %87

87:                                               ; preds = %84, %93
  %88 = phi ptr [ %94, %93 ], [ %68, %84 ]
  %89 = getelementptr inbounds %struct.ARegion, ptr %88, i64 0, i32 8
  %90 = load i16, ptr %89, align 2, !tbaa !188
  %91 = icmp eq i16 %90, 1
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  tail call void @ED_region_tag_redraw(ptr noundef nonnull %88) #14
  br label %93

93:                                               ; preds = %87, %92
  %94 = load ptr, ptr %88, align 8, !tbaa !34
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %87, !llvm.loop !189

96:                                               ; preds = %93, %84, %65
  %97 = load ptr, ptr %66, align 8, !tbaa !34
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %65, !llvm.loop !190

99:                                               ; preds = %96
  %100 = load i16, ptr %8, align 4, !tbaa !181
  br label %101

101:                                              ; preds = %99, %62, %59
  %102 = phi i16 [ %100, %99 ], [ %60, %62 ], [ %9, %59 ]
  %103 = sext i16 %102 to i32
  %104 = getelementptr inbounds %struct.bScreen, ptr %5, i64 0, i32 18
  %105 = load i16, ptr %104, align 2, !tbaa !128
  %106 = icmp eq i16 %102, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %101
  tail call fastcc void @screen_cursor_set(ptr noundef %3, ptr noundef %1) #13
  br label %113

108:                                              ; preds = %101
  %109 = icmp eq i16 %9, %102
  br i1 %109, label %112, label %110

110:                                              ; preds = %108
  tail call fastcc void @region_cursor_set(ptr noundef %3, i32 noundef %103, i32 noundef 1) #13
  %111 = load ptr, ptr %4, align 8, !tbaa !113
  tail call void @uiFreeActiveButtons(ptr noundef %0, ptr noundef %111) #14
  br label %113

112:                                              ; preds = %108
  tail call fastcc void @region_cursor_set(ptr noundef %3, i32 noundef %103, i32 noundef 0) #13
  br label %113

113:                                              ; preds = %107, %112, %110, %2
  ret void
}

; Function Attrs: optsize
declare ptr @is_in_area_actionzone(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @BLI_rcti_isect_pt_v(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @screen_cursor_set(ptr noundef %0, ptr noundef %1) unnamed_addr #3 !PGOFuncName !191 {
  %3 = tail call i32 @WM_window_pixels_x(ptr noundef %0) #14
  %4 = tail call i32 @WM_window_pixels_y(ptr noundef %0) #14
  %5 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !113
  %7 = getelementptr inbounds %struct.bScreen, ptr %6, i64 0, i32 3
  %8 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 4
  br label %9

9:                                                ; preds = %13, %2
  %10 = phi ptr [ %7, %2 ], [ %11, %13 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %26, label %13

13:                                               ; preds = %9
  %14 = tail call ptr @is_in_area_actionzone(ptr noundef nonnull %11, ptr noundef nonnull %8) #14
  %15 = icmp eq ptr %14, null
  br i1 %15, label %9, label %16, !llvm.loop !192

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.AZone, ptr %14, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !193
  switch i32 %18, label %39 [
    i32 1, label %19
    i32 2, label %20
  ]

19:                                               ; preds = %16
  tail call void @WM_cursor_set(ptr noundef %0, i32 noundef 1002) #14
  br label %39

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.AZone, ptr %14, i64 0, i32 4
  %22 = load i32, ptr %21, align 4, !tbaa !195
  %23 = icmp ult i32 %22, 2
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  tail call void @WM_cursor_set(ptr noundef %0, i32 noundef 1003) #14
  br label %39

25:                                               ; preds = %20
  tail call void @WM_cursor_set(ptr noundef %0, i32 noundef 1004) #14
  br label %39

26:                                               ; preds = %9
  %27 = load ptr, ptr %5, align 8, !tbaa !113
  %28 = load i32, ptr %8, align 4, !tbaa !137
  %29 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 5
  %30 = load i32, ptr %29, align 8, !tbaa !133
  %31 = tail call ptr @screen_find_active_scredge(ptr noundef %27, i32 noundef %3, i32 noundef %4, i32 noundef %28, i32 noundef %30) #13
  %32 = icmp eq ptr %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %26
  %34 = tail call zeroext i8 @scredge_is_horizontal(ptr noundef nonnull %31) #13, !range !82
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  tail call void @WM_cursor_set(ptr noundef nonnull %0, i32 noundef 1004) #14
  br label %39

37:                                               ; preds = %33
  tail call void @WM_cursor_set(ptr noundef nonnull %0, i32 noundef 1003) #14
  br label %39

38:                                               ; preds = %26
  tail call void @WM_cursor_set(ptr noundef nonnull %0, i32 noundef 1006) #14
  br label %39

39:                                               ; preds = %38, %37, %36, %16, %19, %24, %25
  ret void
}

; Function Attrs: optsize
declare void @uiFreeActiveButtons(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ED_screen_area_active(ptr noundef %0) local_unnamed_addr #3 {
  %2 = tail call ptr @CTX_wm_window(ptr noundef %0) #14
  %3 = tail call ptr @CTX_wm_screen(ptr noundef %0) #14
  %4 = tail call ptr @CTX_wm_area(ptr noundef %0) #14
  %5 = icmp ne ptr %2, null
  %6 = icmp ne ptr %3, null
  %7 = select i1 %5, i1 %6, i1 false
  %8 = icmp ne ptr %4, null
  %9 = select i1 %7, i1 %8, i1 false
  br i1 %9, label %10, label %32

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.wmWindow, ptr %2, i64 0, i32 21
  %12 = load ptr, ptr %11, align 8, !tbaa !132
  %13 = getelementptr inbounds %struct.wmEvent, ptr %12, i64 0, i32 4
  %14 = tail call ptr @is_in_area_actionzone(ptr noundef nonnull %4, ptr noundef nonnull %13) #14
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.AZone, ptr %14, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !193
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
  %29 = load i16, ptr %28, align 4, !tbaa !119
  %30 = load i16, ptr %22, align 4, !tbaa !181
  %31 = icmp eq i16 %29, %30
  br i1 %31, label %32, label %23, !llvm.loop !196

32:                                               ; preds = %27, %23, %16, %1
  %33 = phi i32 [ 0, %1 ], [ 1, %16 ], [ 1, %27 ], [ 0, %23 ]
  ret i32 %33
}

; Function Attrs: optsize
declare ptr @CTX_wm_screen(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_screen_set(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #14
  %4 = tail call ptr @CTX_wm_manager(ptr noundef %0) #14
  %5 = tail call ptr @CTX_wm_window(ptr noundef %0) #14
  %6 = tail call ptr @CTX_wm_screen(ptr noundef %0) #14
  %7 = getelementptr inbounds %struct.Main, ptr %3, i64 0, i32 26
  br label %8

8:                                                ; preds = %8, %2
  %9 = phi ptr [ %7, %2 ], [ %10, %8 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = icmp eq ptr %10, null
  %12 = icmp eq ptr %10, %1
  %13 = or i1 %11, %12
  br i1 %13, label %14, label %8, !llvm.loop !197

14:                                               ; preds = %8
  br i1 %11, label %80, label %15

15:                                               ; preds = %14
  %16 = getelementptr inbounds %struct.bScreen, ptr %1, i64 0, i32 9
  %17 = load i16, ptr %16, align 8, !tbaa !104
  %18 = icmp eq i16 %17, 2
  br i1 %18, label %19, label %29

19:                                               ; preds = %15, %23
  %20 = phi ptr [ %21, %23 ], [ %7, %15 ]
  %21 = load ptr, ptr %20, align 8, !tbaa !34
  %22 = icmp eq ptr %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.bScreen, ptr %21, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !198
  %26 = getelementptr inbounds %struct.ScrArea, ptr %25, i64 0, i32 6
  %27 = load ptr, ptr %26, align 8, !tbaa !199
  %28 = icmp eq ptr %27, %1
  br i1 %28, label %29, label %19

29:                                               ; preds = %23, %19, %15
  %30 = phi ptr [ %1, %15 ], [ %1, %19 ], [ %21, %23 ]
  %31 = getelementptr inbounds %struct.bScreen, ptr %30, i64 0, i32 11
  %32 = load i16, ptr %31, align 4, !tbaa !98
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %29
  %35 = sext i16 %32 to i32
  %36 = getelementptr inbounds %struct.wmWindow, ptr %5, i64 0, i32 18
  %37 = load i32, ptr %36, align 8, !tbaa !96
  %38 = icmp ne i32 %37, %35
  %39 = icmp eq ptr %6, %30
  %40 = select i1 %38, i1 true, i1 %39
  br i1 %40, label %80, label %43

41:                                               ; preds = %29
  %42 = icmp eq ptr %6, %30
  br i1 %42, label %80, label %43

43:                                               ; preds = %34, %41
  %44 = getelementptr inbounds %struct.bScreen, ptr %6, i64 0, i32 21
  %45 = load ptr, ptr %44, align 8, !tbaa !150
  %46 = getelementptr inbounds %struct.bScreen, ptr %6, i64 0, i32 5
  %47 = load ptr, ptr %46, align 8, !tbaa !93
  %48 = getelementptr inbounds %struct.bScreen, ptr %6, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !34
  %50 = icmp eq ptr %49, null
  br i1 %50, label %57, label %51

51:                                               ; preds = %43
  %52 = getelementptr inbounds %struct.wmWindow, ptr %5, i64 0, i32 29
  br label %53

53:                                               ; preds = %51, %53
  %54 = phi ptr [ %49, %51 ], [ %55, %53 ]
  tail call void @WM_event_remove_area_handler(ptr noundef nonnull %52, ptr noundef nonnull %54) #14
  %55 = load ptr, ptr %54, align 8, !tbaa !34
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %53, !llvm.loop !200

57:                                               ; preds = %53, %43
  store ptr null, ptr %44, align 8, !tbaa !150
  %58 = icmp eq ptr %45, null
  br i1 %58, label %67, label %59

59:                                               ; preds = %57
  tail call void @WM_event_timer_sleep(ptr noundef %4, ptr noundef %5, ptr noundef nonnull %45, i8 noundef zeroext 1) #14
  tail call void @ED_screen_exit(ptr noundef %0, ptr noundef %5, ptr noundef nonnull %6) #13
  %60 = getelementptr inbounds %struct.bScreen, ptr %30, i64 0, i32 5
  %61 = load ptr, ptr %60, align 8, !tbaa !93
  %62 = icmp eq ptr %47, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.bScreen, ptr %30, i64 0, i32 21
  store ptr %45, ptr %64, align 8, !tbaa !150
  br label %68

65:                                               ; preds = %59
  store ptr %45, ptr %44, align 8, !tbaa !150
  %66 = tail call i32 @ED_screen_animation_play(ptr noundef %0, i32 noundef 0, i32 noundef 0) #14
  br label %68

67:                                               ; preds = %57
  tail call void @ED_screen_exit(ptr noundef %0, ptr noundef %5, ptr noundef nonnull %6) #13
  br label %68

68:                                               ; preds = %67, %63, %65
  %69 = getelementptr inbounds %struct.wmWindow, ptr %5, i64 0, i32 3
  store ptr %30, ptr %69, align 8, !tbaa !113
  tail call void @CTX_wm_window_set(ptr noundef %0, ptr noundef %5) #14
  %70 = getelementptr inbounds %struct.wmWindow, ptr %5, i64 0, i32 18
  %71 = load i32, ptr %70, align 8, !tbaa !96
  %72 = trunc i32 %71 to i16
  store i16 %72, ptr %31, align 4, !tbaa !98
  %73 = tail call ptr @CTX_wm_manager(ptr noundef %0) #14
  %74 = tail call ptr @CTX_wm_window(ptr noundef %0) #14
  tail call void @ED_screen_refresh(ptr noundef %73, ptr noundef %74) #13
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 33554432, ptr noundef null) #14
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 50790400, ptr noundef %30) #14
  tail call void @WM_event_add_mousemove(ptr noundef %0) #14
  %75 = getelementptr inbounds %struct.bScreen, ptr %30, i64 0, i32 5
  %76 = load ptr, ptr %75, align 8, !tbaa !93
  %77 = icmp eq ptr %47, %76
  br i1 %77, label %79, label %78

78:                                               ; preds = %68
  tail call void @BKE_scene_set_background(ptr noundef %3, ptr noundef %76) #14
  br label %79

79:                                               ; preds = %78, %68
  tail call void @DAG_on_visible_update(ptr noundef %3, i8 noundef zeroext 0) #14
  br label %80

80:                                               ; preds = %41, %79, %34, %14
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @WM_event_remove_area_handler(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @ED_screen_animation_play(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @WM_event_add_mousemove(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BKE_scene_set_background(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @DAG_on_visible_update(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_screen_delete(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #14
  %4 = tail call ptr @CTX_wm_manager(ptr noundef %0) #14
  %5 = tail call ptr @CTX_wm_window(ptr noundef %0) #14
  %6 = getelementptr inbounds %struct.bScreen, ptr %1, i64 0, i32 9
  %7 = load i16, ptr %6, align 8, !tbaa !104
  %8 = add i16 %7, -1
  %9 = icmp ult i16 %8, 2
  br i1 %9, label %31, label %10

10:                                               ; preds = %2, %15
  %11 = phi ptr [ %13, %15 ], [ %1, %2 ]
  %12 = getelementptr inbounds %struct.ID, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !201
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = tail call fastcc i32 @ed_screen_used(ptr noundef %4, ptr noundef nonnull %13) #13, !range !202
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %25, label %10, !llvm.loop !203

18:                                               ; preds = %10, %22
  %19 = phi ptr [ %20, %22 ], [ %1, %10 ]
  %20 = load ptr, ptr %19, align 8, !tbaa !204
  %21 = icmp eq ptr %20, null
  br i1 %21, label %31, label %22

22:                                               ; preds = %18
  %23 = tail call fastcc i32 @ed_screen_used(ptr noundef %4, ptr noundef nonnull %20) #13, !range !202
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %18, !llvm.loop !205

25:                                               ; preds = %15, %22
  %26 = phi ptr [ %20, %22 ], [ %13, %15 ]
  tail call void @ED_screen_set(ptr noundef %0, ptr noundef nonnull %26) #13
  %27 = getelementptr inbounds %struct.wmWindow, ptr %5, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !113
  %29 = icmp eq ptr %28, %1
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  tail call void @BKE_libblock_free(ptr noundef %3, ptr noundef %1) #14
  br label %31

31:                                               ; preds = %18, %2, %25, %30
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @ed_screen_used(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #0 !PGOFuncName !206 {
  %3 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 3
  br label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ %3, %2 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.wmWindow, ptr %6, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !113
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %12, label %4, !llvm.loop !207

12:                                               ; preds = %4, %8
  %13 = phi i32 [ 1, %8 ], [ 0, %4 ]
  ret i32 %13
}

; Function Attrs: optsize
declare void @BKE_libblock_free(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_screen_set_scene(ptr noundef %0, ptr noundef readnone %1, ptr noundef %2) local_unnamed_addr #3 {
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #14
  %5 = icmp eq ptr %1, null
  br i1 %5, label %66, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @CTX_wm_manager(ptr noundef %0) #14
  %8 = tail call fastcc i32 @ed_screen_used(ptr noundef %7, ptr noundef nonnull %1) #13, !range !202
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @ED_object_editmode_exit(ptr noundef %0, i32 noundef 9) #14
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 26
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = icmp eq ptr %13, null
  br i1 %14, label %65, label %15

15:                                               ; preds = %11
  %16 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !208
  %17 = and i32 %16, 16
  %18 = icmp ne i32 %17, 0
  br label %22

19:                                               ; preds = %31
  %20 = load ptr, ptr %12, align 8, !tbaa !34
  %21 = icmp eq ptr %20, null
  br i1 %21, label %65, label %34

22:                                               ; preds = %15, %31
  %23 = phi ptr [ %13, %15 ], [ %32, %31 ]
  %24 = icmp eq ptr %23, %1
  %25 = or i1 %24, %18
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.bScreen, ptr %23, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !93
  %29 = icmp eq ptr %28, %2
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  store ptr %2, ptr %27, align 8, !tbaa !93
  br label %31

31:                                               ; preds = %22, %30, %26
  %32 = load ptr, ptr %23, align 8, !tbaa !34
  %33 = icmp eq ptr %32, null
  br i1 %33, label %19, label %22, !llvm.loop !209

34:                                               ; preds = %19, %62
  %35 = phi ptr [ %63, %62 ], [ %20, %19 ]
  %36 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !208
  %37 = and i32 %36, 16
  %38 = icmp ne i32 %37, 0
  %39 = icmp eq ptr %35, %1
  %40 = or i1 %39, %38
  br i1 %40, label %41, label %62

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.bScreen, ptr %35, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !34
  %44 = icmp eq ptr %43, null
  br i1 %44, label %62, label %48

45:                                               ; preds = %59, %48
  %46 = load ptr, ptr %49, align 8, !tbaa !34
  %47 = icmp eq ptr %46, null
  br i1 %47, label %62, label %48, !llvm.loop !210

48:                                               ; preds = %41, %45
  %49 = phi ptr [ %46, %45 ], [ %43, %41 ]
  %50 = getelementptr inbounds %struct.ScrArea, ptr %49, i64 0, i32 19
  %51 = load ptr, ptr %50, align 8, !tbaa !34
  %52 = icmp eq ptr %51, null
  br i1 %52, label %45, label %53

53:                                               ; preds = %48, %59
  %54 = phi ptr [ %60, %59 ], [ %51, %48 ]
  %55 = getelementptr inbounds %struct.SpaceLink, ptr %54, i64 0, i32 3
  %56 = load i32, ptr %55, align 8, !tbaa !211
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  tail call fastcc void @ed_screen_set_3dview_camera(ptr noundef %2, ptr noundef nonnull %35, ptr noundef nonnull %49, ptr noundef nonnull %54) #13
  br label %59

59:                                               ; preds = %58, %53
  %60 = load ptr, ptr %54, align 8, !tbaa !34
  %61 = icmp eq ptr %60, null
  br i1 %61, label %45, label %53, !llvm.loop !213

62:                                               ; preds = %45, %41, %34
  %63 = load ptr, ptr %35, align 8, !tbaa !34
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %34, !llvm.loop !214

65:                                               ; preds = %62, %11, %19
  tail call void @CTX_data_scene_set(ptr noundef %0, ptr noundef %2) #14
  tail call void @BKE_scene_set_background(ptr noundef %4, ptr noundef %2) #14
  tail call void @DAG_on_visible_update(ptr noundef %4, i8 noundef zeroext 0) #14
  tail call void @ED_render_engine_changed(ptr noundef %4) #14
  tail call void @ED_update_for_newframe(ptr noundef %4, ptr noundef %2, i32 poison) #13
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 33554432, ptr noundef null) #14
  br label %66

66:                                               ; preds = %3, %65
  ret void
}

; Function Attrs: optsize
declare void @ED_object_editmode_exit(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ed_screen_set_3dview_camera(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #3 !PGOFuncName !215 {
  tail call void @BKE_screen_view3d_sync(ptr noundef %3, ptr noundef %0) #14
  %5 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 15
  %6 = load ptr, ptr %5, align 8, !tbaa !216
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = tail call ptr @BKE_scene_base_find(ptr noundef %0, ptr noundef nonnull %6) #14
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %40

11:                                               ; preds = %8, %4
  %12 = getelementptr inbounds %struct.bScreen, ptr %1, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !93
  %14 = tail call ptr @BKE_scene_camera_find(ptr noundef %13) #14
  store ptr %14, ptr %5, align 8, !tbaa !216
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %40

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 19
  %18 = load ptr, ptr %17, align 8, !tbaa !218
  %19 = icmp eq ptr %18, %3
  %20 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 20
  %21 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 2
  %22 = select i1 %19, ptr %20, ptr %21
  %23 = load ptr, ptr %22, align 8, !tbaa !34
  %24 = icmp eq ptr %23, null
  br i1 %24, label %40, label %25

25:                                               ; preds = %16, %37
  %26 = phi ptr [ %38, %37 ], [ %23, %16 ]
  %27 = getelementptr inbounds %struct.ARegion, ptr %26, i64 0, i32 8
  %28 = load i16, ptr %27, align 2, !tbaa !188
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.ARegion, ptr %26, i64 0, i32 30
  %32 = load ptr, ptr %31, align 8, !tbaa !219
  %33 = getelementptr inbounds %struct.RegionView3D, ptr %32, i64 0, i32 25
  %34 = load i8, ptr %33, align 1, !tbaa !220
  %35 = icmp eq i8 %34, 2
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i8 1, ptr %33, align 1, !tbaa !220
  br label %37

37:                                               ; preds = %30, %36, %25
  %38 = load ptr, ptr %26, align 8, !tbaa !34
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %25, !llvm.loop !222

40:                                               ; preds = %37, %16, %11, %8
  ret void
}

; Function Attrs: optsize
declare void @CTX_data_scene_set(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ED_render_engine_changed(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_update_for_newframe(ptr noundef %0, ptr noundef %1, i32 %2) local_unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 40
  %5 = load ptr, ptr %4, align 8, !tbaa !223
  %6 = tail call ptr @BKE_scene_camera_switch_find(ptr noundef %1) #14
  %7 = icmp eq ptr %6, null
  br i1 %7, label %20, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !224
  %11 = icmp eq ptr %10, %6
  br i1 %11, label %20, label %12

12:                                               ; preds = %8
  store ptr %6, ptr %9, align 8, !tbaa !224
  %13 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 26
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %12, %16
  %17 = phi ptr [ %18, %16 ], [ %14, %12 ]
  tail call void @BKE_screen_view3d_scene_sync(ptr noundef nonnull %17) #14
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %16, !llvm.loop !241

20:                                               ; preds = %16, %12, %8, %3
  %21 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 5
  %22 = load i32, ptr %21, align 8, !tbaa !242
  tail call void @ED_clip_update_frame(ptr noundef %0, i32 noundef %22) #14
  %23 = getelementptr inbounds %struct.wmWindowManager, ptr %5, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !34
  %25 = icmp eq ptr %24, null
  br i1 %25, label %35, label %26

26:                                               ; preds = %20, %26
  %27 = phi ptr [ %33, %26 ], [ %24, %20 ]
  %28 = phi i32 [ %32, %26 ], [ 0, %20 ]
  %29 = getelementptr inbounds %struct.wmWindow, ptr %27, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !113
  %31 = tail call i32 @BKE_screen_visible_layers(ptr noundef %30, ptr noundef %1) #14
  %32 = or i32 %31, %28
  %33 = load ptr, ptr %27, align 8, !tbaa !34
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %26, !llvm.loop !243

35:                                               ; preds = %26, %20
  %36 = phi i32 [ 0, %20 ], [ %32, %26 ]
  %37 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 46
  %38 = load ptr, ptr %37, align 8, !tbaa !244
  tail call void @BKE_scene_update_for_newframe(ptr noundef %38, ptr noundef %0, ptr noundef %1, i32 noundef %36) #14
  %39 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 16
  %40 = load i8, ptr %39, align 2, !tbaa !245
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 18
  %44 = load ptr, ptr %43, align 8, !tbaa !246
  %45 = icmp eq ptr %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %42
  %47 = tail call i32 @ntreeCompositTagAnimated(ptr noundef nonnull %44) #14
  br label %48

48:                                               ; preds = %46, %42, %35
  %49 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 18
  %50 = load ptr, ptr %49, align 8, !tbaa !34
  %51 = icmp eq ptr %50, null
  br i1 %51, label %66, label %52

52:                                               ; preds = %48, %63
  %53 = phi ptr [ %64, %63 ], [ %50, %48 ]
  %54 = getelementptr inbounds %struct.Tex, ptr %53, i64 0, i32 61
  %55 = load i8, ptr %54, align 8, !tbaa !247
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.Tex, ptr %53, i64 0, i32 52
  %59 = load ptr, ptr %58, align 8, !tbaa !250
  %60 = icmp eq ptr %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %57
  %62 = tail call i32 @ntreeTexTagAnimated(ptr noundef nonnull %59) #14
  br label %63

63:                                               ; preds = %52, %57, %61
  %64 = load ptr, ptr %53, align 8, !tbaa !34
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %52, !llvm.loop !251

66:                                               ; preds = %63, %48
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_screen_delete_scene(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #14
  %4 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !252
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load ptr, ptr %1, align 8, !tbaa !253
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %7, %2
  %11 = phi ptr [ %5, %2 ], [ %8, %7 ]
  %12 = tail call ptr @CTX_wm_screen(ptr noundef %0) #14
  tail call void @ED_screen_set_scene(ptr noundef %0, ptr noundef %12, ptr noundef nonnull %11) #13
  tail call void @BKE_scene_unlink(ptr noundef %3, ptr noundef nonnull %1, ptr noundef nonnull %11) #14
  br label %13

13:                                               ; preds = %7, %10
  ret void
}

; Function Attrs: optsize
declare void @BKE_scene_unlink(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @ED_screen_full_newspace(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = tail call ptr @CTX_wm_window(ptr noundef %0) #14
  %5 = tail call ptr @CTX_wm_screen(ptr noundef %0) #14
  %6 = icmp eq ptr %1, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !199
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %3, %7
  %12 = tail call ptr @ED_screen_state_toggle(ptr noundef %0, ptr noundef %4, ptr noundef %1, i16 noundef signext 1) #13
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %33

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !199
  %17 = icmp eq ptr %16, null
  br i1 %17, label %33, label %18

18:                                               ; preds = %7, %14
  %19 = getelementptr inbounds %struct.bScreen, ptr %5, i64 0, i32 9
  %20 = load i16, ptr %19, align 8, !tbaa !104
  %21 = icmp eq i16 %20, 1
  br i1 %21, label %22, label %33

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.bScreen, ptr %5, i64 0, i32 3
  %24 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 14
  br label %25

25:                                               ; preds = %29, %22
  %26 = phi ptr [ %23, %22 ], [ %27, %29 ]
  %27 = load ptr, ptr %26, align 8, !tbaa !34
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i16, ptr %24, align 2, !tbaa !100
  %31 = and i16 %30, 8
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %33, label %25, !llvm.loop !254

33:                                               ; preds = %29, %25, %14, %18, %11
  %34 = phi ptr [ %12, %11 ], [ %1, %18 ], [ %1, %14 ], [ null, %25 ], [ %27, %29 ]
  tail call void @ED_area_newspace(ptr noundef %0, ptr noundef %34, i32 noundef %2) #14
  ret ptr %34
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ED_screen_state_toggle(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef signext %3) local_unnamed_addr #3 {
  %5 = alloca [64 x i8], align 16
  %6 = icmp eq ptr %2, null
  br i1 %6, label %64, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 20
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %7, %11
  %12 = phi ptr [ %14, %11 ], [ %9, %7 ]
  %13 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 21
  tail call void @uiFreeBlocks(ptr noundef %0, ptr noundef nonnull %13) #14
  %14 = load ptr, ptr %12, align 8, !tbaa !34
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %11, !llvm.loop !255

16:                                               ; preds = %11, %7
  tail call void @ED_area_headerprint(ptr noundef nonnull %2, ptr noundef null) #14
  %17 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !199
  %19 = icmp eq ptr %18, null
  br i1 %19, label %64, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.wmWindow, ptr %1, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !113
  %23 = getelementptr inbounds %struct.bScreen, ptr %18, i64 0, i32 9
  store i16 0, ptr %23, align 8, !tbaa !104
  %24 = getelementptr inbounds %struct.bScreen, ptr %18, i64 0, i32 3
  br label %25

25:                                               ; preds = %29, %20
  %26 = phi ptr [ %24, %20 ], [ %27, %29 ]
  %27 = load ptr, ptr %26, align 8, !tbaa !34
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.ScrArea, ptr %27, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !199
  %32 = icmp eq ptr %31, null
  br i1 %32, label %25, label %39, !llvm.loop !256

33:                                               ; preds = %25
  %34 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !151
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %126, label %37

37:                                               ; preds = %33
  %38 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, ptr noundef nonnull @__func__.ED_screen_state_toggle) #13
  br label %126

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
  %48 = load i16, ptr %47, align 4, !tbaa !257
  %49 = getelementptr inbounds %struct.ARegion, ptr %46, i64 0, i32 10
  store i16 %48, ptr %49, align 2, !tbaa !162
  %50 = load ptr, ptr %46, align 8, !tbaa !34
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %45, !llvm.loop !258

52:                                               ; preds = %45, %42, %39
  tail call void @ED_area_data_swap(ptr noundef nonnull %27, ptr noundef nonnull %2) #14
  %53 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 14
  %54 = load i16, ptr %53, align 2, !tbaa !100
  %55 = and i16 %54, 8
  %56 = icmp eq i16 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %52
  %58 = and i16 %54, -9
  store i16 %58, ptr %53, align 2, !tbaa !100
  br label %59

59:                                               ; preds = %52, %57
  store ptr null, ptr %40, align 8, !tbaa !199
  %60 = getelementptr inbounds %struct.bScreen, ptr %22, i64 0, i32 21
  %61 = load ptr, ptr %60, align 8, !tbaa !150
  %62 = getelementptr inbounds %struct.bScreen, ptr %18, i64 0, i32 21
  store ptr %61, ptr %62, align 8, !tbaa !150
  store ptr null, ptr %60, align 8, !tbaa !150
  tail call void @ED_screen_set(ptr noundef %0, ptr noundef nonnull %18) #13
  tail call void @BKE_screen_free(ptr noundef %22) #14
  %63 = tail call ptr @CTX_data_main(ptr noundef %0) #14
  tail call void @BKE_libblock_free(ptr noundef %63, ptr noundef %22) #14
  br label %121

64:                                               ; preds = %4, %16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #15
  %65 = getelementptr inbounds %struct.wmWindow, ptr %1, i64 0, i32 3
  %66 = load ptr, ptr %65, align 8, !tbaa !113
  %67 = getelementptr inbounds %struct.bScreen, ptr %66, i64 0, i32 9
  store i16 %3, ptr %67, align 8, !tbaa !104
  %68 = getelementptr inbounds %struct.ID, ptr %66, i64 0, i32 4, i64 2
  %69 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 64, ptr noundef nonnull @.str.6, ptr noundef nonnull %68, ptr noundef nonnull @.str.7) #14
  %70 = getelementptr inbounds %struct.bScreen, ptr %66, i64 0, i32 5
  %71 = load ptr, ptr %70, align 8, !tbaa !93
  %72 = call ptr @ED_screen_add(ptr noundef %1, ptr noundef %71, ptr noundef nonnull %5) #13
  %73 = getelementptr inbounds %struct.bScreen, ptr %72, i64 0, i32 9
  store i16 %3, ptr %73, align 8, !tbaa !104
  %74 = getelementptr inbounds %struct.bScreen, ptr %66, i64 0, i32 21
  %75 = load ptr, ptr %74, align 8, !tbaa !150
  %76 = getelementptr inbounds %struct.bScreen, ptr %72, i64 0, i32 21
  store ptr %75, ptr %76, align 8, !tbaa !150
  store ptr null, ptr %74, align 8, !tbaa !150
  br i1 %6, label %77, label %80

77:                                               ; preds = %64
  %78 = getelementptr inbounds %struct.bScreen, ptr %66, i64 0, i32 3
  %79 = load ptr, ptr %78, align 8, !tbaa !198
  br label %80

80:                                               ; preds = %77, %64
  %81 = phi ptr [ %2, %64 ], [ %79, %77 ]
  switch i16 %3, label %120 [
    i16 1, label %82
    i16 2, label %94
  ]

82:                                               ; preds = %80
  %83 = getelementptr inbounds %struct.bScreen, ptr %72, i64 0, i32 3
  %84 = load ptr, ptr %83, align 8, !tbaa !198
  %85 = call ptr @area_split(ptr noundef nonnull %72, ptr noundef %84, i8 noundef zeroext 104, float noundef 0x3FEFAE1480000000, i32 noundef 1) #13
  call void @ED_area_newspace(ptr noundef %0, ptr noundef %85, i32 noundef 7) #14
  %86 = getelementptr inbounds %struct.ScrArea, ptr %85, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !259
  call void @ED_area_data_swap(ptr noundef %87, ptr noundef %81) #14
  %88 = getelementptr inbounds %struct.ScrArea, ptr %81, i64 0, i32 14
  %89 = load i16, ptr %88, align 2, !tbaa !100
  %90 = or i16 %89, 8
  store i16 %90, ptr %88, align 2, !tbaa !100
  %91 = getelementptr inbounds %struct.ScrArea, ptr %81, i64 0, i32 6
  store ptr %66, ptr %91, align 8, !tbaa !199
  %92 = getelementptr inbounds %struct.ScrArea, ptr %87, i64 0, i32 6
  store ptr %66, ptr %92, align 8, !tbaa !199
  %93 = load ptr, ptr %87, align 8, !tbaa !260
  br label %117

94:                                               ; preds = %80
  %95 = getelementptr inbounds %struct.bScreen, ptr %72, i64 0, i32 3
  %96 = load ptr, ptr %95, align 8, !tbaa !198
  call void @ED_area_data_swap(ptr noundef %96, ptr noundef %81) #14
  %97 = getelementptr inbounds %struct.ScrArea, ptr %81, i64 0, i32 14
  %98 = load i16, ptr %97, align 2, !tbaa !100
  %99 = getelementptr inbounds %struct.ScrArea, ptr %96, i64 0, i32 14
  store i16 %98, ptr %99, align 2, !tbaa !100
  %100 = getelementptr inbounds %struct.ScrArea, ptr %96, i64 0, i32 20
  %101 = load ptr, ptr %100, align 8, !tbaa !34
  %102 = icmp eq ptr %101, null
  br i1 %102, label %115, label %103

103:                                              ; preds = %94, %112
  %104 = phi ptr [ %113, %112 ], [ %101, %94 ]
  %105 = getelementptr inbounds %struct.ARegion, ptr %104, i64 0, i32 10
  %106 = load i16, ptr %105, align 2, !tbaa !162
  %107 = getelementptr inbounds %struct.ARegion, ptr %104, i64 0, i32 18
  store i16 %106, ptr %107, align 4, !tbaa !257
  %108 = getelementptr inbounds %struct.ARegion, ptr %104, i64 0, i32 8
  %109 = load i16, ptr %108, align 2, !tbaa !188
  switch i16 %109, label %112 [
    i16 4, label %110
    i16 1, label %110
    i16 5, label %110
  ]

110:                                              ; preds = %103, %103, %103
  %111 = or i16 %106, 1
  store i16 %111, ptr %105, align 2, !tbaa !162
  br label %112

112:                                              ; preds = %103, %110
  %113 = load ptr, ptr %104, align 8, !tbaa !34
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %103, !llvm.loop !261

115:                                              ; preds = %112, %94
  %116 = getelementptr inbounds %struct.ScrArea, ptr %81, i64 0, i32 6
  store ptr %66, ptr %116, align 8, !tbaa !199
  br label %117

117:                                              ; preds = %82, %115
  %118 = phi ptr [ %96, %115 ], [ %93, %82 ]
  %119 = getelementptr inbounds %struct.ScrArea, ptr %118, i64 0, i32 6
  store ptr %66, ptr %119, align 8, !tbaa !199
  br label %120

120:                                              ; preds = %117, %80
  call void @ED_screen_set(ptr noundef %0, ptr noundef %72) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #15
  br label %121

121:                                              ; preds = %59, %120
  %122 = phi ptr [ %18, %59 ], [ %72, %120 ]
  %123 = getelementptr inbounds %struct.bScreen, ptr %122, i64 0, i32 3
  %124 = load ptr, ptr %123, align 8, !tbaa !198
  call void @CTX_wm_area_set(ptr noundef %0, ptr noundef %124) #14
  %125 = load ptr, ptr %123, align 8, !tbaa !198
  br label %126

126:                                              ; preds = %37, %33, %121
  %127 = phi ptr [ %125, %121 ], [ null, %33 ], [ null, %37 ]
  ret ptr %127
}

; Function Attrs: optsize
declare void @ED_area_newspace(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_screen_full_prevspace(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = tail call ptr @CTX_wm_window(ptr noundef %0) #14
  tail call void @ED_area_prevspace(ptr noundef %0, ptr noundef %1) #14
  %4 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !199
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @ED_screen_state_toggle(ptr noundef %0, ptr noundef %3, ptr noundef nonnull %1, i16 noundef signext 1) #13
  br label %9

9:                                                ; preds = %7, %2
  ret void
}

; Function Attrs: optsize
declare void @ED_area_prevspace(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_screen_full_restore(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = tail call ptr @CTX_wm_window(ptr noundef %0) #14
  %4 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !218
  %6 = tail call ptr @CTX_wm_screen(ptr noundef %0) #14
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.bScreen, ptr %6, i64 0, i32 9
  %10 = load i16, ptr %9, align 8, !tbaa !104
  br label %11

11:                                               ; preds = %2, %8
  %12 = phi i16 [ %10, %8 ], [ 1, %2 ]
  %13 = load ptr, ptr %5, align 8, !tbaa !262
  %14 = icmp eq ptr %13, null
  br i1 %14, label %31, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.SpaceLink, ptr %5, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !211
  switch i32 %17, label %29 [
    i32 6, label %18
    i32 5, label %28
  ]

18:                                               ; preds = %15
  %19 = load ptr, ptr %4, align 8, !tbaa !218
  %20 = getelementptr inbounds %struct.SpaceImage, ptr %19, i64 0, i32 4
  %21 = load i32, ptr %20, align 4, !tbaa !263
  %22 = and i32 %21, 98304
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %18
  %25 = and i32 %21, -98305
  store i32 %25, ptr %20, align 4, !tbaa !263
  tail call void @ED_screen_full_prevspace(ptr noundef %0, ptr noundef nonnull %1) #13
  br label %33

26:                                               ; preds = %18
  %27 = tail call ptr @ED_screen_state_toggle(ptr noundef %0, ptr noundef %3, ptr noundef nonnull %1, i16 noundef signext %12) #13
  br label %33

28:                                               ; preds = %15
  tail call void @ED_screen_full_prevspace(ptr noundef %0, ptr noundef nonnull %1) #13
  br label %33

29:                                               ; preds = %15
  %30 = tail call ptr @ED_screen_state_toggle(ptr noundef %0, ptr noundef %3, ptr noundef nonnull %1, i16 noundef signext %12) #13
  br label %33

31:                                               ; preds = %11
  %32 = tail call ptr @ED_screen_state_toggle(ptr noundef %0, ptr noundef %3, ptr noundef nonnull %1, i16 noundef signext %12) #13
  br label %33

33:                                               ; preds = %24, %26, %29, %28, %31
  ret void
}

; Function Attrs: optsize
declare void @uiFreeBlocks(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ED_area_headerprint(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ED_area_data_swap(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BKE_screen_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_refresh_viewport_fps(ptr noundef %0) local_unnamed_addr #3 {
  %2 = tail call ptr @CTX_wm_screen(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.bScreen, ptr %2, i64 0, i32 21
  %4 = load ptr, ptr %3, align 8, !tbaa !150
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  %6 = icmp eq ptr %4, null
  br i1 %6, label %24, label %7

7:                                                ; preds = %1
  %8 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !268
  %9 = and i32 %8, 2097152
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %24, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 30
  %13 = load ptr, ptr %12, align 8, !tbaa !269
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %17 = tail call ptr %16(i64 noundef 56, ptr noundef nonnull @.str.8) #14
  store ptr %17, ptr %12, align 8, !tbaa !269
  br label %18

18:                                               ; preds = %15, %11
  %19 = phi ptr [ %17, %15 ], [ %13, %11 ]
  %20 = getelementptr inbounds %struct.ScreenFrameRateInfo, ptr %19, i64 0, i32 1
  %21 = load double, ptr %20, align 8, !tbaa !270
  store double %21, ptr %19, align 8, !tbaa !272
  %22 = getelementptr inbounds %struct.wmTimer, ptr %4, i64 0, i32 8
  %23 = load double, ptr %22, align 8, !tbaa !273
  store double %23, ptr %20, align 8, !tbaa !270
  br label %31

24:                                               ; preds = %7, %1
  %25 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 30
  %26 = load ptr, ptr %25, align 8, !tbaa !269
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %29(ptr noundef nonnull %26) #14
  br label %30

30:                                               ; preds = %28, %24
  store ptr null, ptr %25, align 8, !tbaa !269
  br label %31

31:                                               ; preds = %30, %18
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_screen_animation_timer(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 {
  %6 = tail call ptr @CTX_wm_screen(ptr noundef %0) #14
  %7 = tail call ptr @CTX_wm_manager(ptr noundef %0) #14
  %8 = tail call ptr @CTX_wm_window(ptr noundef %0) #14
  %9 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  %10 = tail call ptr @ED_screen_animation_playing(ptr noundef %7) #14
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.bScreen, ptr %10, i64 0, i32 21
  %14 = load ptr, ptr %13, align 8, !tbaa !150
  tail call void @WM_event_remove_timer(ptr noundef %7, ptr noundef %8, ptr noundef %14) #14
  store ptr null, ptr %13, align 8, !tbaa !150
  br label %15

15:                                               ; preds = %12, %5
  %16 = icmp eq i32 %4, 0
  br i1 %16, label %65, label %17

17:                                               ; preds = %15
  %18 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %19 = tail call ptr %18(i64 noundef 32, ptr noundef nonnull @.str.9) #14
  %20 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 55
  %21 = load i16, ptr %20, align 4, !tbaa !275
  %22 = sitofp i16 %21 to double
  %23 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 65
  %24 = load float, ptr %23, align 4, !tbaa !276
  %25 = fpext float %24 to double
  %26 = fdiv double %22, %25
  %27 = fdiv double 1.000000e+00, %26
  %28 = tail call ptr @WM_event_add_timer(ptr noundef %7, ptr noundef %8, i32 noundef 273, double noundef %27) #14
  %29 = getelementptr inbounds %struct.bScreen, ptr %6, i64 0, i32 21
  store ptr %28, ptr %29, align 8, !tbaa !150
  %30 = tail call ptr @CTX_wm_region(ptr noundef %0) #14
  store ptr %30, ptr %19, align 8, !tbaa !277
  %31 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 13
  %32 = load i16, ptr %31, align 8, !tbaa !279
  %33 = and i16 %32, 1
  %34 = icmp eq i16 %33, 0
  %35 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 5
  %36 = load i32, ptr %35, align 8, !tbaa !242
  %37 = getelementptr inbounds %struct.ScreenAnimData, ptr %19, i64 0, i32 4
  br i1 %34, label %42, label %38

38:                                               ; preds = %17
  %39 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 9
  %40 = load i32, ptr %39, align 8, !tbaa !280
  %41 = icmp sgt i32 %40, %36
  store i32 %36, ptr %37, align 8, !tbaa !281
  br i1 %41, label %46, label %48

42:                                               ; preds = %17
  %43 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 6
  %44 = load i32, ptr %43, align 4, !tbaa !282
  %45 = icmp sgt i32 %44, %36
  store i32 %36, ptr %37, align 8, !tbaa !281
  br i1 %45, label %46, label %48

46:                                               ; preds = %42, %38
  %47 = phi i32 [ %40, %38 ], [ %44, %42 ]
  store i32 %47, ptr %35, align 8, !tbaa !242
  br label %48

48:                                               ; preds = %46, %42, %38
  %49 = trunc i32 %1 to i16
  %50 = getelementptr inbounds %struct.ScreenAnimData, ptr %19, i64 0, i32 1
  store i16 %49, ptr %50, align 8, !tbaa !283
  %51 = trunc i32 %2 to i16
  %52 = getelementptr inbounds %struct.ScreenAnimData, ptr %19, i64 0, i32 2
  store i16 %51, ptr %52, align 2, !tbaa !284
  %53 = lshr i32 %4, 31
  %54 = getelementptr inbounds %struct.ScreenAnimData, ptr %19, i64 0, i32 3
  %55 = load i16, ptr %54, align 4, !tbaa !285
  %56 = trunc i32 %53 to i16
  %57 = icmp eq i32 %3, 0
  %58 = icmp eq i32 %3, 1
  %59 = select i1 %58, i16 4, i16 0
  %60 = select i1 %57, i16 8, i16 %59
  %61 = or disjoint i16 %60, %56
  %62 = or i16 %61, %55
  store i16 %62, ptr %54, align 4, !tbaa !285
  %63 = load ptr, ptr %29, align 8, !tbaa !150
  %64 = getelementptr inbounds %struct.wmTimer, ptr %63, i64 0, i32 5
  store ptr %19, ptr %64, align 8, !tbaa !286
  br label %65

65:                                               ; preds = %48, %15
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 50593792, ptr noundef null) #14
  ret void
}

; Function Attrs: optsize
declare ptr @ED_screen_animation_playing(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @WM_event_add_timer(ptr noundef, ptr noundef, i32 noundef, double noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ED_screen_animation_timer_update(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #9 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 21
  %7 = load ptr, ptr %6, align 8, !tbaa !150
  %8 = icmp eq ptr %7, null
  br i1 %8, label %20, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.wmTimer, ptr %7, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !286
  %12 = trunc i32 %1 to i16
  %13 = getelementptr inbounds %struct.ScreenAnimData, ptr %11, i64 0, i32 1
  store i16 %12, ptr %13, align 8, !tbaa !283
  %14 = trunc i32 %2 to i16
  %15 = getelementptr inbounds %struct.ScreenAnimData, ptr %11, i64 0, i32 2
  store i16 %14, ptr %15, align 2, !tbaa !284
  store ptr null, ptr %11, align 8, !tbaa !277
  %16 = and i32 %1, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %9
  %19 = tail call fastcc ptr @time_top_left_3dwindow(ptr noundef nonnull %0) #13
  store ptr %19, ptr %11, align 8, !tbaa !277
  br label %20

20:                                               ; preds = %9, %18, %5, %3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @time_top_left_3dwindow(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !287 {
  %2 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %42, label %5

5:                                                ; preds = %1, %37
  %6 = phi ptr [ %40, %37 ], [ %3, %1 ]
  %7 = phi i32 [ %39, %37 ], [ 10000, %1 ]
  %8 = phi ptr [ %38, %37 ], [ null, %1 ]
  %9 = getelementptr inbounds %struct.ScrArea, ptr %6, i64 0, i32 8
  %10 = load i8, ptr %9, align 8, !tbaa !85
  %11 = icmp eq i8 %10, 1
  br i1 %11, label %12, label %37

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.ScrArea, ptr %6, i64 0, i32 20
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  %15 = icmp eq ptr %14, null
  br i1 %15, label %37, label %16

16:                                               ; preds = %12, %32
  %17 = phi ptr [ %35, %32 ], [ %14, %12 ]
  %18 = phi i32 [ %34, %32 ], [ %7, %12 ]
  %19 = phi ptr [ %33, %32 ], [ %8, %12 ]
  %20 = getelementptr inbounds %struct.ARegion, ptr %17, i64 0, i32 8
  %21 = load i16, ptr %20, align 2, !tbaa !188
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.ARegion, ptr %17, i64 0, i32 3
  %25 = load i32, ptr %24, align 8, !tbaa !288
  %26 = getelementptr inbounds %struct.ARegion, ptr %17, i64 0, i32 3, i32 2
  %27 = load i32, ptr %26, align 8, !tbaa !289
  %28 = sub nsw i32 %25, %27
  %29 = icmp slt i32 %28, %18
  %30 = select i1 %29, ptr %17, ptr %19
  %31 = tail call i32 @llvm.smin.i32(i32 %28, i32 %18)
  br label %32

32:                                               ; preds = %23, %16
  %33 = phi ptr [ %19, %16 ], [ %30, %23 ]
  %34 = phi i32 [ %18, %16 ], [ %31, %23 ]
  %35 = load ptr, ptr %17, align 8, !tbaa !34
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %16, !llvm.loop !290

37:                                               ; preds = %32, %12, %5
  %38 = phi ptr [ %8, %5 ], [ %8, %12 ], [ %33, %32 ]
  %39 = phi i32 [ %7, %5 ], [ %7, %12 ], [ %34, %32 ]
  %40 = load ptr, ptr %6, align 8, !tbaa !34
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %5, !llvm.loop !291

42:                                               ; preds = %37, %1
  %43 = phi ptr [ null, %1 ], [ %38, %37 ]
  ret ptr %43
}

; Function Attrs: optsize
declare ptr @BKE_scene_camera_switch_find(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BKE_screen_view3d_scene_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ED_clip_update_frame(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @BKE_screen_visible_layers(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BKE_scene_update_for_newframe(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @ntreeCompositTagAnimated(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @ntreeTexTagAnimated(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @ED_area_headersize() local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BKE_screen_area_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BLI_duplicatelist(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @BLI_listbase_clear(ptr nocapture noundef writeonly %0) unnamed_addr #10 !PGOFuncName !292 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: optsize
declare void @WM_cursor_set(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @glColor3ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare void @glLineWidth(float noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @drawscredge_area_draw(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #3 !PGOFuncName !293 {
  %7 = add nsw i32 %0, -1
  %8 = icmp sgt i32 %7, %4
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  tail call void @sdrawline(i32 noundef %4, i32 noundef %3, i32 noundef %4, i32 noundef %5) #14
  br label %10

10:                                               ; preds = %9, %6
  %11 = icmp sgt i32 %2, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  tail call void @sdrawline(i32 noundef %2, i32 noundef %3, i32 noundef %2, i32 noundef %5) #14
  br label %13

13:                                               ; preds = %12, %10
  %14 = add nsw i32 %1, -1
  %15 = icmp sgt i32 %14, %5
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  tail call void @sdrawline(i32 noundef %2, i32 noundef %5, i32 noundef %4, i32 noundef %5) #14
  br label %17

17:                                               ; preds = %16, %13
  %18 = icmp sgt i32 %3, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %17
  tail call void @sdrawline(i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %3) #14
  br label %20

20:                                               ; preds = %19, %17
  ret void
}

; Function Attrs: optsize
declare void @glBlendFunc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_join_shape(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #3 !PGOFuncName !294 {
  switch i8 %1, label %4 [
    i8 117, label %3
    i8 100, label %3
  ]

3:                                                ; preds = %2, %2
  tail call fastcc void @draw_vertical_join_shape(ptr noundef %0, i8 noundef zeroext %1) #13
  br label %5

4:                                                ; preds = %2
  tail call fastcc void @draw_horizontal_join_shape(ptr noundef %0, i8 noundef zeroext %1) #13
  br label %5

5:                                                ; preds = %4, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_vertical_join_shape(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #3 !PGOFuncName !295 {
  %3 = alloca [10 x %struct.vec2f], align 16
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #15
  %4 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !60
  %6 = getelementptr inbounds %struct.ScrVert, ptr %5, i64 0, i32 3
  %7 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !55
  %9 = getelementptr inbounds %struct.ScrVert, ptr %8, i64 0, i32 3
  %10 = getelementptr inbounds %struct.vec2f, ptr %3, i64 0, i32 1
  %11 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !59
  %13 = getelementptr inbounds %struct.ScrVert, ptr %12, i64 0, i32 3
  %14 = getelementptr inbounds [10 x %struct.vec2f], ptr %3, i64 0, i64 1
  %15 = load <2 x i16>, ptr %13, align 8, !tbaa !158
  %16 = sitofp <2 x i16> %15 to <2 x float>
  store <2 x float> %16, ptr %14, align 8, !tbaa !157
  %17 = getelementptr inbounds [10 x %struct.vec2f], ptr %3, i64 0, i64 2
  %18 = getelementptr inbounds [10 x %struct.vec2f], ptr %3, i64 0, i64 2, i32 1
  %19 = getelementptr inbounds [10 x %struct.vec2f], ptr %3, i64 0, i64 3
  %20 = getelementptr inbounds [10 x %struct.vec2f], ptr %3, i64 0, i64 3, i32 1
  %21 = load <2 x i16>, ptr %9, align 8, !tbaa !158
  %22 = sitofp <2 x i16> %21 to <2 x float>
  %23 = shufflevector <2 x float> %22, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %24 = extractelement <2 x float> %22, i64 0
  store float %24, ptr %17, align 16, !tbaa !296
  %25 = extractelement <2 x float> %22, i64 1
  %26 = getelementptr inbounds [10 x %struct.vec2f], ptr %3, i64 0, i64 4, i32 1
  %27 = getelementptr inbounds [10 x %struct.vec2f], ptr %3, i64 0, i64 5, i32 1
  %28 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 5
  %29 = load ptr, ptr %28, align 8, !tbaa !61
  %30 = getelementptr inbounds %struct.ScrVert, ptr %29, i64 0, i32 3
  %31 = load i16, ptr %30, align 8, !tbaa !49
  %32 = sitofp i16 %31 to float
  %33 = getelementptr inbounds [10 x %struct.vec2f], ptr %3, i64 0, i64 6
  store float %32, ptr %33, align 16, !tbaa !296
  %34 = getelementptr inbounds %struct.ScrVert, ptr %29, i64 0, i32 3, i32 1
  %35 = load i16, ptr %34, align 2, !tbaa !50
  %36 = sitofp i16 %35 to float
  %37 = getelementptr inbounds [10 x %struct.vec2f], ptr %3, i64 0, i64 6, i32 1
  %38 = getelementptr inbounds [10 x %struct.vec2f], ptr %3, i64 0, i64 7
  %39 = load <2 x i16>, ptr %6, align 8, !tbaa !158
  %40 = sitofp <2 x i16> %39 to <2 x float>
  %41 = extractelement <2 x float> %40, i64 1
  store float %41, ptr %10, align 4, !tbaa !298
  %42 = sext <2 x i16> %21 to <2 x i32>
  %43 = sext <2 x i16> %39 to <2 x i32>
  %44 = sub nsw <2 x i32> %43, %42
  %45 = sitofp <2 x i32> %44 to <2 x float>
  %46 = extractelement <2 x float> %45, i64 0
  %47 = extractelement <2 x float> %45, i64 1
  %48 = fcmp olt float %47, %46
  %49 = select i1 %48, float %47, float %46
  %50 = fmul float %49, 1.250000e-01
  %51 = insertelement <2 x float> poison, float %49, i64 0
  %52 = shufflevector <2 x float> %51, <2 x float> %45, <2 x i32> <i32 0, i32 2>
  %53 = fmul <2 x float> %52, <float 2.500000e-01, float 5.000000e-01>
  %54 = fadd <2 x float> %53, %23
  %55 = extractelement <2 x float> %54, i64 1
  store float %55, ptr %3, align 16, !tbaa !296
  %56 = extractelement <2 x float> %54, i64 0
  store float %56, ptr %18, align 4, !tbaa !298
  %57 = tail call float @llvm.fmuladd.f32(float %50, float -2.000000e+00, float %55)
  store float %57, ptr %19, align 8, !tbaa !296
  store <2 x float> %54, ptr %20, align 4, !tbaa !157
  %58 = extractelement <2 x float> %53, i64 0
  %59 = insertelement <2 x float> %53, float %50, i64 1
  %60 = shufflevector <2 x float> %23, <2 x float> %54, <2 x i32> <i32 0, i32 3>
  %61 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %59, <2 x float> <float 2.000000e+00, float 2.000000e+00>, <2 x float> %60)
  store <2 x float> %61, ptr %26, align 4, !tbaa !157
  store float %56, ptr %27, align 4, !tbaa !298
  %62 = fadd float %58, %36
  store float %62, ptr %37, align 4, !tbaa !298
  store <2 x float> %40, ptr %38, align 8, !tbaa !157
  %63 = fsub float %55, %50
  %64 = getelementptr inbounds [10 x %struct.vec2f], ptr %3, i64 0, i64 8
  store float %63, ptr %64, align 16, !tbaa !296
  %65 = getelementptr inbounds [10 x %struct.vec2f], ptr %3, i64 0, i64 8, i32 1
  store float %25, ptr %65, align 4, !tbaa !298
  %66 = fadd float %55, %50
  %67 = getelementptr inbounds [10 x %struct.vec2f], ptr %3, i64 0, i64 9
  store float %66, ptr %67, align 8, !tbaa !296
  %68 = getelementptr inbounds [10 x %struct.vec2f], ptr %3, i64 0, i64 9, i32 1
  store float %25, ptr %68, align 4, !tbaa !298
  %69 = icmp eq i8 %1, 117
  br i1 %69, label %70, label %80

70:                                               ; preds = %2
  %71 = fadd float %25, %47
  br label %72

72:                                               ; preds = %70, %72
  %73 = phi i64 [ 0, %70 ], [ %78, %72 ]
  %74 = getelementptr inbounds [10 x %struct.vec2f], ptr %3, i64 0, i64 %73, i32 1
  %75 = load float, ptr %74, align 4, !tbaa !298
  %76 = fsub float %71, %75
  %77 = fadd float %76, %25
  store float %77, ptr %74, align 4, !tbaa !298
  %78 = add nuw nsw i64 %73, 1
  %79 = icmp eq i64 %78, 10
  br i1 %79, label %80, label %72, !llvm.loop !299

80:                                               ; preds = %72, %2
  tail call void @glBegin(i32 noundef 9) #14
  br label %81

81:                                               ; preds = %80, %81
  %82 = phi i64 [ 0, %80 ], [ %87, %81 ]
  %83 = getelementptr inbounds [10 x %struct.vec2f], ptr %3, i64 0, i64 %82
  %84 = load float, ptr %83, align 8, !tbaa !296
  %85 = getelementptr inbounds [10 x %struct.vec2f], ptr %3, i64 0, i64 %82, i32 1
  %86 = load float, ptr %85, align 4, !tbaa !298
  tail call void @glVertex2f(float noundef %84, float noundef %86) #14
  %87 = add nuw nsw i64 %82, 1
  %88 = icmp eq i64 %87, 5
  br i1 %88, label %89, label %81, !llvm.loop !300

89:                                               ; preds = %81
  tail call void @glEnd() #14
  tail call void @glBegin(i32 noundef 9) #14
  br label %90

90:                                               ; preds = %89, %90
  %91 = phi i64 [ 4, %89 ], [ %96, %90 ]
  %92 = getelementptr inbounds [10 x %struct.vec2f], ptr %3, i64 0, i64 %91
  %93 = load float, ptr %92, align 8, !tbaa !296
  %94 = getelementptr inbounds [10 x %struct.vec2f], ptr %3, i64 0, i64 %91, i32 1
  %95 = load float, ptr %94, align 4, !tbaa !298
  tail call void @glVertex2f(float noundef %93, float noundef %95) #14
  %96 = add nuw nsw i64 %91, 1
  %97 = icmp eq i64 %96, 8
  br i1 %97, label %98, label %90, !llvm.loop !301

98:                                               ; preds = %90
  %99 = load float, ptr %10, align 4, !tbaa !298
  tail call void @glVertex2f(float noundef %55, float noundef %99) #14
  tail call void @glEnd() #14
  %100 = load float, ptr %18, align 4, !tbaa !298
  %101 = load float, ptr %65, align 4, !tbaa !298
  tail call void @glRectf(float noundef %24, float noundef %100, float noundef %63, float noundef %101) #14
  %102 = load float, ptr %37, align 4, !tbaa !298
  %103 = load float, ptr %68, align 4, !tbaa !298
  tail call void @glRectf(float noundef %32, float noundef %102, float noundef %66, float noundef %103) #14
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_horizontal_join_shape(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #3 !PGOFuncName !302 {
  %3 = alloca [10 x %struct.vec2f], align 16
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #15
  %4 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !60
  %6 = getelementptr inbounds %struct.ScrVert, ptr %5, i64 0, i32 3
  %7 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !55
  %9 = getelementptr inbounds %struct.ScrVert, ptr %8, i64 0, i32 3
  %10 = getelementptr inbounds %struct.vec2f, ptr %3, i64 0, i32 1
  %11 = getelementptr inbounds [10 x %struct.vec2f], ptr %3, i64 0, i64 1
  %12 = load <2 x i16>, ptr %9, align 8, !tbaa !158
  %13 = load <2 x i16>, ptr %6, align 8, !tbaa !158
  %14 = sext <2 x i16> %13 to <2 x i32>
  %15 = sext <2 x i16> %12 to <2 x i32>
  %16 = sub nsw <2 x i32> %14, %15
  %17 = sitofp <2 x i32> %16 to <2 x float>
  %18 = extractelement <2 x float> %17, i64 0
  %19 = extractelement <2 x float> %17, i64 1
  %20 = fcmp olt float %19, %18
  %21 = select i1 %20, float %19, float %18
  %22 = sitofp <2 x i16> %12 to <2 x float>
  %23 = extractelement <2 x float> %22, i64 0
  store float %23, ptr %3, align 16, !tbaa !296
  %24 = fmul float %19, 5.000000e-01
  %25 = extractelement <2 x float> %22, i64 1
  %26 = fadd float %24, %25
  store float %26, ptr %10, align 4, !tbaa !298
  store <2 x float> %22, ptr %11, align 8, !tbaa !157
  %27 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !61
  %29 = getelementptr inbounds %struct.ScrVert, ptr %28, i64 0, i32 3
  %30 = load i16, ptr %29, align 8, !tbaa !49
  %31 = getelementptr inbounds [10 x %struct.vec2f], ptr %3, i64 0, i64 2
  %32 = getelementptr inbounds %struct.ScrVert, ptr %28, i64 0, i32 3, i32 1
  %33 = load i16, ptr %32, align 2, !tbaa !50
  %34 = sitofp i16 %33 to float
  %35 = getelementptr inbounds [10 x %struct.vec2f], ptr %3, i64 0, i64 2, i32 1
  store float %34, ptr %35, align 4, !tbaa !298
  %36 = getelementptr inbounds [10 x %struct.vec2f], ptr %3, i64 0, i64 3
  %37 = fadd float %24, %34
  %38 = getelementptr inbounds [10 x %struct.vec2f], ptr %3, i64 0, i64 3, i32 1
  %39 = getelementptr inbounds [10 x %struct.vec2f], ptr %3, i64 0, i64 4, i32 1
  store float %37, ptr %39, align 4, !tbaa !298
  %40 = getelementptr inbounds [10 x %struct.vec2f], ptr %3, i64 0, i64 5
  %41 = getelementptr inbounds [10 x %struct.vec2f], ptr %3, i64 0, i64 5, i32 1
  %42 = extractelement <2 x i16> %13, i64 0
  %43 = sitofp i16 %42 to float
  %44 = getelementptr inbounds [10 x %struct.vec2f], ptr %3, i64 0, i64 6
  %45 = getelementptr inbounds [10 x %struct.vec2f], ptr %3, i64 0, i64 6, i32 1
  %46 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !59
  %48 = getelementptr inbounds %struct.ScrVert, ptr %47, i64 0, i32 3
  %49 = load <2 x i16>, ptr %48, align 8, !tbaa !158
  %50 = shufflevector <2 x i16> %13, <2 x i16> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %51 = shufflevector <2 x i16> %49, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %52 = shufflevector <4 x i16> %50, <4 x i16> %51, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %53 = insertelement <4 x i16> %52, i16 %30, i64 3
  %54 = sitofp <4 x i16> %53 to <4 x float>
  %55 = extractelement <4 x float> %54, i64 3
  %56 = insertelement <2 x float> poison, float %21, i64 0
  %57 = shufflevector <2 x float> %56, <2 x float> poison, <2 x i32> zeroinitializer
  %58 = fmul <2 x float> %57, <float 1.250000e-01, float 2.500000e-01>
  %59 = extractelement <2 x float> %58, i64 0
  %60 = tail call float @llvm.fmuladd.f32(float %59, float 2.000000e+00, float %37)
  store float %60, ptr %41, align 4, !tbaa !298
  %61 = extractelement <2 x float> %58, i64 1
  %62 = fsub float %43, %61
  store float %62, ptr %44, align 16, !tbaa !296
  %63 = fsub float %55, %61
  store float %63, ptr %31, align 16, !tbaa !296
  store float %63, ptr %36, align 8, !tbaa !296
  %64 = shufflevector <4 x float> %54, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %65 = insertelement <2 x float> %64, float %37, i64 0
  %66 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %58, <2 x float> <float -2.000000e+00, float -2.000000e+00>, <2 x float> %65)
  store <2 x float> %66, ptr %38, align 4, !tbaa !157
  store float %63, ptr %40, align 8, !tbaa !296
  store <4 x float> %54, ptr %45, align 4, !tbaa !157
  %67 = fsub float %37, %59
  %68 = getelementptr inbounds [10 x %struct.vec2f], ptr %3, i64 0, i64 8, i32 1
  store float %67, ptr %68, align 4, !tbaa !298
  %69 = getelementptr inbounds [10 x %struct.vec2f], ptr %3, i64 0, i64 9
  store float %55, ptr %69, align 8, !tbaa !296
  %70 = fadd float %59, %37
  %71 = getelementptr inbounds [10 x %struct.vec2f], ptr %3, i64 0, i64 9, i32 1
  store float %70, ptr %71, align 4, !tbaa !298
  %72 = icmp eq i8 %1, 108
  br i1 %72, label %73, label %84

73:                                               ; preds = %2
  %74 = fadd <2 x float> %22, %17
  %75 = extractelement <2 x float> %74, i64 0
  br label %76

76:                                               ; preds = %73, %76
  %77 = phi i64 [ 0, %73 ], [ %82, %76 ]
  %78 = getelementptr inbounds [10 x %struct.vec2f], ptr %3, i64 0, i64 %77
  %79 = load float, ptr %78, align 8, !tbaa !296
  %80 = fsub float %75, %79
  %81 = fadd float %80, %23
  store float %81, ptr %78, align 8, !tbaa !296
  %82 = add nuw nsw i64 %77, 1
  %83 = icmp eq i64 %82, 10
  br i1 %83, label %84, label %76, !llvm.loop !303

84:                                               ; preds = %76, %2
  tail call void @glBegin(i32 noundef 9) #14
  br label %85

85:                                               ; preds = %84, %85
  %86 = phi i64 [ 0, %84 ], [ %91, %85 ]
  %87 = getelementptr inbounds [10 x %struct.vec2f], ptr %3, i64 0, i64 %86
  %88 = load float, ptr %87, align 8, !tbaa !296
  %89 = getelementptr inbounds [10 x %struct.vec2f], ptr %3, i64 0, i64 %86, i32 1
  %90 = load float, ptr %89, align 4, !tbaa !298
  tail call void @glVertex2f(float noundef %88, float noundef %90) #14
  %91 = add nuw nsw i64 %86, 1
  %92 = icmp eq i64 %91, 5
  br i1 %92, label %93, label %85, !llvm.loop !304

93:                                               ; preds = %85
  tail call void @glEnd() #14
  tail call void @glBegin(i32 noundef 9) #14
  br label %94

94:                                               ; preds = %93, %94
  %95 = phi i64 [ 4, %93 ], [ %100, %94 ]
  %96 = getelementptr inbounds [10 x %struct.vec2f], ptr %3, i64 0, i64 %95
  %97 = load float, ptr %96, align 8, !tbaa !296
  %98 = getelementptr inbounds [10 x %struct.vec2f], ptr %3, i64 0, i64 %95, i32 1
  %99 = load float, ptr %98, align 4, !tbaa !298
  tail call void @glVertex2f(float noundef %97, float noundef %99) #14
  %100 = add nuw nsw i64 %95, 1
  %101 = icmp eq i64 %100, 8
  br i1 %101, label %102, label %94, !llvm.loop !305

102:                                              ; preds = %94
  %103 = getelementptr inbounds [10 x %struct.vec2f], ptr %3, i64 0, i64 8
  %104 = load float, ptr %3, align 16, !tbaa !296
  tail call void @glVertex2f(float noundef %104, float noundef %26) #14
  tail call void @glEnd() #14
  %105 = load float, ptr %31, align 16, !tbaa !296
  %106 = load float, ptr %103, align 16, !tbaa !296
  tail call void @glRectf(float noundef %105, float noundef %34, float noundef %106, float noundef %67) #14
  %107 = load float, ptr %44, align 16, !tbaa !296
  %108 = load float, ptr %69, align 8, !tbaa !296
  %109 = extractelement <4 x float> %54, i64 0
  tail call void @glRectf(float noundef %107, float noundef %109, float noundef %108, float noundef %70) #14
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #15
  ret void
}

; Function Attrs: optsize
declare void @glBegin(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @glVertex2f(float noundef, float noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @glEnd() local_unnamed_addr #4

; Function Attrs: optsize
declare void @glRectf(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @glRecti(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @BKE_spacetypes_list() local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @BKE_regiontype_from_id(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @minmax_v2v2_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @BKE_area_find_region_type(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BKE_screen_view3d_sync(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @BKE_scene_base_find(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @BKE_scene_camera_find(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smin.i16(i16, i16) #11

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #11

attributes #0 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { optsize }
attributes #14 = { nounwind optsize }
attributes #15 = { nounwind }

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
!38 = !{!39, !35, i64 16}
!39 = !{!"ScrEdge", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !40, i64 32, !40, i64 34, !41, i64 36}
!40 = !{!"short", !36, i64 0}
!41 = !{!"int", !36, i64 0}
!42 = !{!39, !35, i64 24}
!43 = distinct !{!43, !44}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!"screen_edit.c:sortscrvert"}
!46 = !{!47, !35, i64 16}
!47 = !{!"ScrVert", !35, i64 0, !35, i64 8, !35, i64 16, !48, i64 24, !40, i64 28, !40, i64 30}
!48 = !{!"vec2s", !40, i64 0, !40, i64 2}
!49 = !{!47, !40, i64 24}
!50 = !{!47, !40, i64 26}
!51 = !{!47, !35, i64 0}
!52 = distinct !{!52, !44}
!53 = distinct !{!53, !44}
!54 = distinct !{!54, !44}
!55 = !{!56, !35, i64 16}
!56 = !{!"ScrArea", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !57, i64 56, !36, i64 72, !36, i64 73, !40, i64 74, !40, i64 76, !40, i64 78, !40, i64 80, !40, i64 82, !40, i64 84, !36, i64 86, !36, i64 87, !35, i64 88, !58, i64 96, !58, i64 112, !58, i64 128, !58, i64 144}
!57 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!58 = !{!"ListBase", !35, i64 0, !35, i64 8}
!59 = !{!56, !35, i64 24}
!60 = !{!56, !35, i64 32}
!61 = !{!56, !35, i64 40}
!62 = distinct !{!62, !44}
!63 = !{!64, !35, i64 120}
!64 = !{!"bScreen", !65, i64 0, !58, i64 120, !58, i64 136, !58, i64 152, !58, i64 168, !35, i64 184, !35, i64 192, !41, i64 200, !41, i64 204, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !40, i64 216, !40, i64 218, !40, i64 220, !40, i64 222, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !35, i64 232, !35, i64 240}
!65 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !40, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !35, i64 112}
!66 = distinct !{!66, !44}
!67 = !{!47, !40, i64 28}
!68 = distinct !{!68, !44}
!69 = distinct !{!69, !44}
!70 = distinct !{!70, !44}
!71 = !{!39, !35, i64 0}
!72 = distinct !{!72, !44}
!73 = !{!39, !40, i64 34}
!74 = distinct !{!74, !44}
!75 = !{!64, !35, i64 136}
!76 = distinct !{!76, !44}
!77 = !{!78, !40, i64 8948}
!78 = !{!"UserDef", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !36, i64 20, !36, i64 788, !36, i64 1556, !36, i64 2580, !36, i64 3348, !36, i64 4116, !36, i64 4884, !36, i64 5652, !36, i64 6420, !36, i64 7444, !41, i64 8468, !40, i64 8472, !40, i64 8474, !40, i64 8476, !40, i64 8478, !40, i64 8480, !40, i64 8482, !41, i64 8484, !41, i64 8488, !41, i64 8492, !40, i64 8496, !40, i64 8498, !41, i64 8500, !41, i64 8504, !41, i64 8508, !41, i64 8512, !41, i64 8516, !41, i64 8520, !41, i64 8524, !40, i64 8528, !40, i64 8530, !40, i64 8532, !40, i64 8534, !58, i64 8536, !58, i64 8552, !58, i64 8568, !58, i64 8584, !58, i64 8600, !58, i64 8616, !58, i64 8632, !36, i64 8648, !40, i64 8712, !40, i64 8714, !40, i64 8716, !40, i64 8718, !40, i64 8720, !40, i64 8722, !40, i64 8724, !40, i64 8726, !36, i64 8728, !40, i64 8896, !40, i64 8898, !40, i64 8900, !40, i64 8902, !40, i64 8904, !40, i64 8906, !40, i64 8908, !40, i64 8910, !41, i64 8912, !41, i64 8916, !40, i64 8920, !40, i64 8922, !40, i64 8924, !40, i64 8926, !40, i64 8928, !40, i64 8930, !40, i64 8932, !40, i64 8934, !40, i64 8936, !40, i64 8938, !36, i64 8940, !36, i64 8941, !36, i64 8942, !36, i64 8943, !40, i64 8944, !40, i64 8946, !40, i64 8948, !40, i64 8950, !40, i64 8952, !40, i64 8954, !79, i64 8956, !79, i64 8960, !41, i64 8964, !40, i64 8968, !40, i64 8970, !79, i64 8972, !40, i64 8976, !40, i64 8978, !40, i64 8980, !40, i64 8982, !80, i64 8984, !36, i64 9760, !36, i64 9772, !40, i64 9788, !36, i64 9790, !36, i64 9791, !36, i64 9792, !36, i64 9872, !41, i64 10896, !41, i64 10900, !79, i64 10904, !79, i64 10908, !41, i64 10912, !40, i64 10916, !40, i64 10918, !40, i64 10920, !40, i64 10922, !40, i64 10924, !40, i64 10926, !81, i64 10928}
!79 = !{!"float", !36, i64 0}
!80 = !{!"ColorBand", !40, i64 0, !40, i64 2, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !36, i64 8}
!81 = !{!"WalkNavigation", !79, i64 0, !79, i64 4, !79, i64 8, !79, i64 12, !79, i64 16, !79, i64 20, !40, i64 24, !36, i64 26}
!82 = !{i8 0, i8 2}
!83 = distinct !{!83, !44}
!84 = !{!56, !40, i64 78}
!85 = !{!56, !36, i64 72}
!86 = !{!"screen_edit.c:testsplitpoint"}
!87 = !{!"screen_edit.c:screen_addvert"}
!88 = !{!"screen_edit.c:screen_addedge"}
!89 = !{!"screen_edit.c:screen_addarea"}
!90 = !{!56, !36, i64 73}
!91 = !{!92, !35, i64 0}
!92 = !{!"Global", !35, i64 0, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 2057, !36, i64 2058, !58, i64 2064, !36, i64 2080, !36, i64 2081, !36, i64 2082, !40, i64 2084, !40, i64 2086, !40, i64 2088, !36, i64 2090, !40, i64 2092, !41, i64 2096, !41, i64 2100, !36, i64 2104, !41, i64 2108, !41, i64 2112, !36, i64 2116}
!93 = !{!64, !35, i64 184}
!94 = !{!64, !40, i64 216}
!95 = !{!64, !41, i64 200}
!96 = !{!97, !41, i64 128}
!97 = !{!"wmWindow", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !36, i64 40, !40, i64 104, !40, i64 106, !40, i64 108, !40, i64 110, !40, i64 112, !40, i64 114, !40, i64 116, !40, i64 118, !40, i64 120, !40, i64 122, !40, i64 124, !40, i64 126, !41, i64 128, !40, i64 132, !40, i64 134, !35, i64 136, !35, i64 144, !35, i64 152, !41, i64 160, !41, i64 164, !35, i64 168, !58, i64 176, !58, i64 192, !58, i64 208, !58, i64 224, !58, i64 240}
!98 = !{!64, !40, i64 212}
!99 = !{i32 -1, i32 4}
!100 = !{!56, !40, i64 82}
!101 = !{!"screen_edit.c:screen_delarea"}
!102 = distinct !{!102, !44}
!103 = distinct !{!103, !44}
!104 = !{!64, !40, i64 208}
!105 = !{!"screen_edit.c:screen_copy"}
!106 = distinct !{!106, !44}
!107 = distinct !{!107, !44}
!108 = distinct !{!108, !44}
!109 = distinct !{!109, !44}
!110 = !{!111, !41, i64 36}
!111 = !{!"wmNotifier", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !35, i64 56}
!112 = !{!111, !41, i64 40}
!113 = !{!97, !35, i64 24}
!114 = !{!64, !40, i64 214}
!115 = !{!111, !41, i64 48}
!116 = !{!111, !41, i64 32}
!117 = !{!"screen_edit.c:region_cursor_set"}
!118 = distinct !{!118, !44}
!119 = !{!120, !40, i64 212}
!120 = !{!"ARegion", !35, i64 0, !35, i64 8, !121, i64 16, !57, i64 176, !57, i64 192, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !40, i64 216, !40, i64 218, !79, i64 220, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !40, i64 232, !40, i64 234, !40, i64 236, !40, i64 238, !35, i64 240, !58, i64 248, !58, i64 264, !58, i64 280, !58, i64 296, !58, i64 312, !58, i64 328, !58, i64 344, !35, i64 360, !35, i64 368, !35, i64 376}
!121 = !{!"View2D", !122, i64 0, !122, i64 16, !57, i64 32, !57, i64 48, !57, i64 64, !36, i64 80, !36, i64 88, !79, i64 96, !79, i64 100, !40, i64 104, !40, i64 106, !40, i64 108, !40, i64 110, !40, i64 112, !40, i64 114, !40, i64 116, !40, i64 118, !40, i64 120, !40, i64 122, !40, i64 124, !40, i64 126, !35, i64 128, !41, i64 136, !41, i64 140, !35, i64 144, !35, i64 152}
!122 = !{!"rctf", !79, i64 0, !79, i64 4, !79, i64 8, !79, i64 12}
!123 = distinct !{!123, !44}
!124 = !{!120, !35, i64 240}
!125 = !{!126, !40, i64 176}
!126 = !{!"ARegionType", !35, i64 0, !35, i64 8, !41, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !35, i64 88, !35, i64 96, !58, i64 104, !58, i64 120, !58, i64 136, !41, i64 152, !41, i64 156, !41, i64 160, !41, i64 164, !41, i64 168, !40, i64 172, !40, i64 174, !40, i64 176}
!127 = !{!126, !35, i64 88}
!128 = !{!64, !40, i64 226}
!129 = distinct !{!129, !44}
!130 = distinct !{!130, !44}
!131 = !{!56, !41, i64 56}
!132 = !{!97, !35, i64 136}
!133 = !{!134, !41, i64 24}
!134 = !{!"wmEvent", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 18, !41, i64 20, !41, i64 24, !36, i64 28, !36, i64 36, !36, i64 42, !36, i64 43, !40, i64 44, !40, i64 46, !41, i64 48, !41, i64 52, !135, i64 56, !41, i64 64, !41, i64 68, !40, i64 72, !40, i64 74, !40, i64 76, !40, i64 78, !40, i64 80, !40, i64 82, !35, i64 88, !35, i64 96, !40, i64 104, !40, i64 106, !41, i64 108, !35, i64 112}
!135 = !{!"double", !36, i64 0}
!136 = !{!56, !41, i64 60}
!137 = !{!134, !41, i64 20}
!138 = !{!56, !41, i64 64}
!139 = !{!56, !41, i64 68}
!140 = !{!"screen_edit.c:drawscredge_area"}
!141 = !{!78, !79, i64 10908}
!142 = !{!"screen_edit.c:scrarea_draw_shape_dark"}
!143 = !{!"screen_edit.c:scrarea_draw_shape_light"}
!144 = !{!92, !36, i64 2081}
!145 = !{!57, !41, i64 0}
!146 = !{!57, !41, i64 4}
!147 = !{!57, !41, i64 8}
!148 = !{!57, !41, i64 12}
!149 = distinct !{!149, !44}
!150 = !{!64, !35, i64 232}
!151 = !{!92, !41, i64 2100}
!152 = !{!64, !35, i64 240}
!153 = !{!"screen_edit.c:screen_refresh_headersizes"}
!154 = !{!126, !41, i64 164}
!155 = distinct !{!155, !44}
!156 = !{!"screen_edit.c:screen_test_scale"}
!157 = !{!79, !79, i64 0}
!158 = !{!40, !40, i64 0}
!159 = distinct !{!159, !44}
!160 = distinct !{!160, !44}
!161 = !{!56, !36, i64 86}
!162 = !{!120, !40, i64 218}
!163 = distinct !{!163, !44}
!164 = distinct !{!164, !44}
!165 = distinct !{!165, !44}
!166 = distinct !{!166, !44}
!167 = distinct !{!167, !44}
!168 = distinct !{!168, !44}
!169 = distinct !{!169, !44}
!170 = !{!171, !35, i64 1328}
!171 = !{!"Main", !35, i64 0, !35, i64 8, !36, i64 16, !40, i64 1040, !40, i64 1042, !40, i64 1044, !40, i64 1046, !172, i64 1048, !36, i64 1056, !40, i64 1072, !35, i64 1080, !58, i64 1088, !58, i64 1104, !58, i64 1120, !58, i64 1136, !58, i64 1152, !58, i64 1168, !58, i64 1184, !58, i64 1200, !58, i64 1216, !58, i64 1232, !58, i64 1248, !58, i64 1264, !58, i64 1280, !58, i64 1296, !58, i64 1312, !58, i64 1328, !58, i64 1344, !58, i64 1360, !58, i64 1376, !58, i64 1392, !58, i64 1408, !58, i64 1424, !58, i64 1440, !58, i64 1456, !58, i64 1472, !58, i64 1488, !58, i64 1504, !58, i64 1520, !58, i64 1536, !58, i64 1552, !58, i64 1568, !58, i64 1584, !58, i64 1600, !58, i64 1616, !36, i64 1632, !35, i64 1888, !35, i64 1896}
!172 = !{!"long", !36, i64 0}
!173 = distinct !{!173, !44}
!174 = !{!126, !35, i64 32}
!175 = !{!120, !35, i64 368}
!176 = !{!120, !35, i64 360}
!177 = !{!56, !35, i64 88}
!178 = !{!179, !35, i64 112}
!179 = !{!"SpaceType", !35, i64 0, !35, i64 8, !36, i64 16, !41, i64 80, !41, i64 84, !35, i64 88, !35, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !35, i64 152, !35, i64 160, !35, i64 168, !58, i64 176, !58, i64 192, !41, i64 208}
!180 = distinct !{!180, !44}
!181 = !{!64, !40, i64 228}
!182 = distinct !{!182, !44}
!183 = distinct !{!183, !44}
!184 = !{!64, !40, i64 210}
!185 = distinct !{!185, !44}
!186 = distinct !{!186, !44}
!187 = distinct !{!187, !44}
!188 = !{!120, !40, i64 214}
!189 = distinct !{!189, !44}
!190 = distinct !{!190, !44}
!191 = !{!"screen_edit.c:screen_cursor_set"}
!192 = distinct !{!192, !44}
!193 = !{!194, !41, i64 24}
!194 = !{!"AZone", !35, i64 0, !35, i64 8, !35, i64 16, !41, i64 24, !41, i64 28, !40, i64 32, !40, i64 34, !40, i64 36, !40, i64 38, !57, i64 40, !79, i64 56}
!195 = !{!194, !41, i64 28}
!196 = distinct !{!196, !44}
!197 = distinct !{!197, !44}
!198 = !{!64, !35, i64 152}
!199 = !{!56, !35, i64 48}
!200 = distinct !{!200, !44}
!201 = !{!64, !35, i64 8}
!202 = !{i32 0, i32 2}
!203 = distinct !{!203, !44}
!204 = !{!64, !35, i64 0}
!205 = distinct !{!205, !44}
!206 = !{!"screen_edit.c:ed_screen_used"}
!207 = distinct !{!207, !44}
!208 = !{!78, !41, i64 8}
!209 = distinct !{!209, !44}
!210 = distinct !{!210, !44}
!211 = !{!212, !41, i64 32}
!212 = !{!"SpaceLink", !35, i64 0, !35, i64 8, !58, i64 16, !41, i64 32, !79, i64 36, !36, i64 40}
!213 = distinct !{!213, !44}
!214 = distinct !{!214, !44}
!215 = !{!"screen_edit.c:ed_screen_set_3dview_camera"}
!216 = !{!217, !35, i64 96}
!217 = !{!"View3D", !35, i64 0, !35, i64 8, !58, i64 16, !41, i64 32, !79, i64 36, !36, i64 40, !36, i64 56, !79, i64 72, !79, i64 76, !36, i64 80, !36, i64 81, !41, i64 84, !41, i64 88, !40, i64 92, !40, i64 94, !35, i64 96, !35, i64 104, !122, i64 112, !58, i64 128, !35, i64 144, !35, i64 152, !36, i64 160, !41, i64 224, !41, i64 228, !40, i64 232, !40, i64 234, !40, i64 236, !40, i64 238, !40, i64 240, !40, i64 242, !79, i64 244, !79, i64 248, !79, i64 252, !79, i64 256, !36, i64 260, !36, i64 272, !40, i64 284, !40, i64 286, !40, i64 288, !36, i64 290, !36, i64 291, !36, i64 292, !36, i64 293, !36, i64 294, !58, i64 296, !58, i64 312, !58, i64 328, !36, i64 344, !36, i64 345, !36, i64 346, !36, i64 347, !35, i64 352, !35, i64 360, !35, i64 368}
!218 = !{!56, !35, i64 96}
!219 = !{!120, !35, i64 376}
!220 = !{!221, !36, i64 809}
!221 = !{!"RegionView3D", !36, i64 0, !36, i64 64, !36, i64 128, !36, i64 192, !36, i64 256, !36, i64 320, !36, i64 384, !36, i64 448, !36, i64 544, !35, i64 640, !35, i64 648, !35, i64 656, !35, i64 664, !35, i64 672, !35, i64 680, !35, i64 688, !36, i64 696, !36, i64 760, !79, i64 776, !79, i64 780, !79, i64 784, !79, i64 788, !36, i64 792, !79, i64 804, !36, i64 808, !36, i64 809, !36, i64 810, !36, i64 811, !36, i64 812, !36, i64 813, !36, i64 816, !40, i64 824, !40, i64 826, !36, i64 828, !40, i64 844, !40, i64 846, !79, i64 848, !36, i64 852, !79, i64 864, !36, i64 868}
!222 = distinct !{!222, !44}
!223 = !{!171, !35, i64 1552}
!224 = !{!225, !35, i64 128}
!225 = !{!"Scene", !65, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !58, i64 152, !35, i64 168, !35, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !41, i64 232, !41, i64 236, !41, i64 240, !40, i64 244, !36, i64 246, !36, i64 247, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !226, i64 280, !233, i64 4264, !58, i64 4296, !58, i64 4312, !35, i64 4328, !35, i64 4336, !35, i64 4344, !35, i64 4352, !35, i64 4360, !35, i64 4368, !40, i64 4376, !40, i64 4378, !41, i64 4380, !58, i64 4384, !234, i64 4400, !235, i64 4416, !238, i64 4600, !35, i64 4608, !239, i64 4616, !35, i64 4640, !172, i64 4648, !172, i64 4656, !228, i64 4664, !229, i64 4824, !240, i64 4888, !35, i64 4952}
!226 = !{!"RenderData", !227, i64 0, !35, i64 248, !35, i64 256, !230, i64 264, !231, i64 328, !41, i64 400, !41, i64 404, !41, i64 408, !79, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !41, i64 428, !40, i64 432, !40, i64 434, !79, i64 436, !79, i64 440, !79, i64 444, !79, i64 448, !79, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !41, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !41, i64 484, !41, i64 488, !40, i64 492, !40, i64 494, !41, i64 496, !41, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !36, i64 514, !36, i64 515, !41, i64 516, !41, i64 520, !41, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !122, i64 544, !122, i64 560, !57, i64 576, !58, i64 592, !40, i64 608, !40, i64 610, !79, i64 612, !79, i64 616, !79, i64 620, !79, i64 624, !41, i64 628, !79, i64 632, !79, i64 636, !79, i64 640, !79, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !79, i64 660, !79, i64 664, !40, i64 668, !40, i64 670, !79, i64 672, !79, i64 676, !36, i64 680, !41, i64 1704, !40, i64 1708, !40, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !41, i64 2520, !40, i64 2524, !40, i64 2526, !79, i64 2528, !79, i64 2532, !40, i64 2536, !40, i64 2538, !79, i64 2540, !40, i64 2544, !40, i64 2546, !41, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !79, i64 2560, !79, i64 2564, !35, i64 2568, !41, i64 2576, !79, i64 2580, !36, i64 2584, !232, i64 2616, !41, i64 3976, !41, i64 3980}
!227 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !40, i64 8, !40, i64 10, !79, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !228, i64 24, !229, i64 184}
!228 = !{!"ColorManagedViewSettings", !41, i64 0, !41, i64 4, !36, i64 8, !36, i64 72, !79, i64 136, !79, i64 140, !35, i64 144, !35, i64 152}
!229 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!230 = !{!"QuicktimeCodecSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !40, i64 48, !40, i64 50, !41, i64 52, !41, i64 56, !41, i64 60}
!231 = !{!"FFMpegCodecData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !79, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !35, i64 64}
!232 = !{!"BakeData", !227, i64 0, !36, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !79, i64 1280, !79, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!233 = !{!"AudioData", !41, i64 0, !79, i64 4, !79, i64 8, !79, i64 12, !41, i64 16, !40, i64 20, !40, i64 22, !79, i64 24, !79, i64 28}
!234 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!235 = !{!"GameData", !234, i64 0, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !40, i64 32, !36, i64 34, !236, i64 40, !40, i64 64, !40, i64 66, !79, i64 68, !237, i64 72, !79, i64 128, !79, i64 132, !41, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !40, i64 148, !40, i64 150, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !40, i64 160, !40, i64 162, !79, i64 164, !79, i64 168, !79, i64 172, !79, i64 176, !79, i64 180}
!236 = !{!"GameDome", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !79, i64 8, !79, i64 12, !35, i64 16}
!237 = !{!"RecastData", !79, i64 0, !79, i64 4, !79, i64 8, !79, i64 12, !79, i64 16, !79, i64 20, !79, i64 24, !79, i64 28, !79, i64 32, !79, i64 36, !41, i64 40, !79, i64 44, !79, i64 48, !40, i64 52, !40, i64 54}
!238 = !{!"UnitSettings", !79, i64 0, !36, i64 4, !36, i64 5, !40, i64 6}
!239 = !{!"PhysicsSettings", !36, i64 0, !41, i64 12, !41, i64 16, !41, i64 20}
!240 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!241 = distinct !{!241, !44}
!242 = !{!225, !41, i64 680}
!243 = distinct !{!243, !44}
!244 = !{!171, !35, i64 1888}
!245 = !{!225, !36, i64 246}
!246 = !{!225, !35, i64 248}
!247 = !{!248, !36, i64 408}
!248 = !{!"Tex", !65, i64 0, !35, i64 120, !79, i64 128, !79, i64 132, !79, i64 136, !79, i64 140, !79, i64 144, !79, i64 148, !79, i64 152, !79, i64 156, !79, i64 160, !79, i64 164, !79, i64 168, !79, i64 172, !79, i64 176, !79, i64 180, !79, i64 184, !79, i64 188, !79, i64 192, !79, i64 196, !79, i64 200, !79, i64 204, !79, i64 208, !79, i64 212, !40, i64 216, !40, i64 218, !40, i64 220, !40, i64 222, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !40, i64 232, !40, i64 234, !79, i64 236, !79, i64 240, !79, i64 244, !79, i64 248, !41, i64 252, !41, i64 256, !40, i64 260, !40, i64 262, !40, i64 264, !40, i64 266, !41, i64 268, !41, i64 272, !41, i64 276, !41, i64 280, !79, i64 284, !79, i64 288, !79, i64 292, !249, i64 296, !35, i64 336, !35, i64 344, !35, i64 352, !35, i64 360, !35, i64 368, !35, i64 376, !35, i64 384, !35, i64 392, !35, i64 400, !36, i64 408, !36, i64 409}
!249 = !{!"ImageUser", !35, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !36, i64 24, !36, i64 25, !36, i64 26, !36, i64 27, !40, i64 28, !40, i64 30, !40, i64 32, !40, i64 34, !41, i64 36}
!250 = !{!248, !35, i64 336}
!251 = distinct !{!251, !44}
!252 = !{!225, !35, i64 8}
!253 = !{!225, !35, i64 0}
!254 = distinct !{!254, !44}
!255 = distinct !{!255, !44}
!256 = distinct !{!256, !44}
!257 = !{!120, !40, i64 236}
!258 = distinct !{!258, !44}
!259 = !{!56, !35, i64 8}
!260 = !{!56, !35, i64 0}
!261 = distinct !{!261, !44}
!262 = !{!212, !35, i64 0}
!263 = !{!264, !41, i64 36}
!264 = !{!"SpaceImage", !35, i64 0, !35, i64 8, !58, i64 16, !41, i64 32, !41, i64 36, !35, i64 40, !249, i64 48, !35, i64 88, !265, i64 96, !266, i64 5360, !35, i64 10520, !36, i64 10528, !79, i64 10536, !79, i64 10540, !79, i64 10544, !79, i64 10548, !79, i64 10552, !36, i64 10556, !36, i64 10557, !40, i64 10558, !40, i64 10560, !40, i64 10562, !36, i64 10564, !36, i64 10565, !36, i64 10566, !36, i64 10567, !267, i64 10568}
!265 = !{!"Scopes", !41, i64 0, !41, i64 4, !41, i64 8, !79, i64 12, !41, i64 16, !79, i64 20, !79, i64 24, !41, i64 28, !79, i64 32, !41, i64 36, !36, i64 40, !266, i64 64, !35, i64 5224, !35, i64 5232, !35, i64 5240, !35, i64 5248, !41, i64 5256, !41, i64 5260}
!266 = !{!"Histogram", !41, i64 0, !41, i64 4, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 3080, !36, i64 4104, !79, i64 5128, !79, i64 5132, !40, i64 5136, !40, i64 5138, !41, i64 5140, !36, i64 5144}
!267 = !{!"MaskSpaceInfo", !35, i64 0, !36, i64 8, !36, i64 9, !36, i64 10, !36, i64 11}
!268 = !{!78, !41, i64 8484}
!269 = !{!225, !35, i64 4360}
!270 = !{!271, !135, i64 8}
!271 = !{!"ScreenFrameRateInfo", !135, i64 0, !135, i64 8, !36, i64 16, !40, i64 48}
!272 = !{!271, !135, i64 0}
!273 = !{!274, !135, i64 64}
!274 = !{!"wmTimer", !35, i64 0, !35, i64 8, !35, i64 16, !135, i64 24, !41, i64 32, !35, i64 40, !135, i64 48, !135, i64 56, !135, i64 64, !135, i64 72, !135, i64 80, !41, i64 88}
!275 = !{!225, !40, i64 820}
!276 = !{!225, !79, i64 900}
!277 = !{!278, !35, i64 0}
!278 = !{!"ScreenAnimData", !35, i64 0, !40, i64 8, !40, i64 10, !40, i64 12, !41, i64 16, !41, i64 20, !135, i64 24}
!279 = !{!225, !40, i64 712}
!280 = !{!225, !41, i64 696}
!281 = !{!278, !41, i64 16}
!282 = !{!225, !41, i64 684}
!283 = !{!278, !40, i64 8}
!284 = !{!278, !40, i64 10}
!285 = !{!278, !40, i64 12}
!286 = !{!274, !35, i64 40}
!287 = !{!"screen_edit.c:time_top_left_3dwindow"}
!288 = !{!120, !41, i64 176}
!289 = !{!120, !41, i64 184}
!290 = distinct !{!290, !44}
!291 = distinct !{!291, !44}
!292 = !{!"screen_edit.c:BLI_listbase_clear"}
!293 = !{!"screen_edit.c:drawscredge_area_draw"}
!294 = !{!"screen_edit.c:draw_join_shape"}
!295 = !{!"screen_edit.c:draw_vertical_join_shape"}
!296 = !{!297, !79, i64 0}
!297 = !{!"vec2f", !79, i64 0, !79, i64 4}
!298 = !{!297, !79, i64 4}
!299 = distinct !{!299, !44}
!300 = distinct !{!300, !44}
!301 = distinct !{!301, !44}
!302 = !{!"screen_edit.c:draw_horizontal_join_shape"}
!303 = distinct !{!303, !44}
!304 = distinct !{!304, !44}
!305 = distinct !{!305, !44}
