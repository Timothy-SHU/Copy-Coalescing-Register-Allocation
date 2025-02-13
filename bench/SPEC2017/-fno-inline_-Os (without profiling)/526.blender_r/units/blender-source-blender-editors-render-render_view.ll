; ModuleID = 'blender/source/blender/editors/render/render_view.c'
source_filename = "blender/source/blender/editors/render/render_view.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.rctf = type { float, float, float, float }
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
%struct.wmWindow = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, ptr, ptr, ptr, i32, i32, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.SpaceImage = type { ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.ImageUser, ptr, %struct.Scopes, %struct.Histogram, ptr, [2 x float], float, float, float, float, float, i8, i8, i16, i16, i16, i8, i8, i8, i8, %struct.MaskSpaceInfo }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.Scopes = type { i32, i32, i32, float, i32, float, float, i32, float, i32, [3 x [2 x float]], %struct.Histogram, ptr, ptr, ptr, ptr, i32, i32 }
%struct.Histogram = type { i32, i32, [256 x float], [256 x float], [256 x float], [256 x float], [256 x float], float, float, i16, i16, i32, [2 x [2 x float]] }
%struct.MaskSpaceInfo = type { ptr, i8, i8, i8, [5 x i8] }
%struct.wmWindowManager = type { %struct.ID, ptr, ptr, %struct.ListBase, i32, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ReportList, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, %struct.ListBase, ptr, i8, [7 x i8] }
%struct.ReportList = type { %struct.ListBase, i32, i32, i32, i32, ptr }
%struct.bScreen = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr }
%struct.Image = type { %struct.ID, [1024 x i8], ptr, ptr, ptr, ptr, [8 x ptr], i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, ptr, ptr, ptr, float, i32, i16, i16, i32, i32, i8, i8, i16, [4 x float], float, float, %struct.ColorManagedColorspaceSettings, i8, [7 x i8], [8 x %struct.RenderSlot] }
%struct.RenderSlot = type { [64 x i8] }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.SpaceLink = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16] }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }

@U = external local_unnamed_addr global %struct.UserDef, align 8
@.str = private unnamed_addr constant [14 x i8] c"Render Result\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Cancel Render View\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Cancel show render view\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"RENDER_OT_view_cancel\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Show/Hide Render View\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Toggle show render view\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"RENDER_OT_view_show\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @render_view_open(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct.rcti, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #5
  %6 = tail call ptr @CTX_wm_window(ptr noundef %0) #6
  store ptr %6, ptr %4, align 8, !tbaa !5
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %8 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 22, i32 43
  %9 = load i16, ptr %8, align 8, !tbaa !9
  switch i16 %9, label %67 [
    i16 3, label %116
    i16 2, label %10
    i16 0, label %53
  ]

10:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #5
  %11 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 22, i32 33
  %12 = load i32, ptr %11, align 4, !tbaa !34
  %13 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 22, i32 30
  %14 = load i16, ptr %13, align 2, !tbaa !35
  %15 = sext i16 %14 to i32
  %16 = mul nsw i32 %12, %15
  %17 = sdiv i32 %16, 100
  %18 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 22, i32 34
  %19 = load i32, ptr %18, align 8, !tbaa !36
  %20 = mul nsw i32 %19, %15
  %21 = sdiv i32 %20, 100
  %22 = tail call i32 @llvm.smax.i32(i32 %17, i32 310)
  %23 = add nuw nsw i32 %22, 10
  %24 = tail call i32 @llvm.smax.i32(i32 %21, i32 216)
  %25 = add nuw nsw i32 %24, 40
  %26 = sitofp i32 %1 to float
  %27 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !37
  %28 = fdiv float %26, %27
  %29 = getelementptr inbounds %struct.wmWindow, ptr %6, i64 0, i32 6
  %30 = load i16, ptr %29, align 8, !tbaa !41
  %31 = sitofp i16 %30 to float
  %32 = fadd float %28, %31
  %33 = lshr i32 %23, 1
  %34 = sitofp i32 %33 to float
  %35 = fsub float %32, %34
  %36 = fptosi float %35 to i32
  store i32 %36, ptr %5, align 4, !tbaa !43
  %37 = sitofp i32 %2 to float
  %38 = fdiv float %37, %27
  %39 = getelementptr inbounds %struct.wmWindow, ptr %6, i64 0, i32 7
  %40 = load i16, ptr %39, align 2, !tbaa !44
  %41 = sitofp i16 %40 to float
  %42 = fadd float %38, %41
  %43 = lshr i32 %25, 1
  %44 = sitofp i32 %43 to float
  %45 = fsub float %42, %44
  %46 = fptosi float %45 to i32
  %47 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 2
  store i32 %46, ptr %47, align 4, !tbaa !45
  %48 = add nsw i32 %23, %36
  %49 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 1
  store i32 %48, ptr %49, align 4, !tbaa !46
  %50 = add nsw i32 %25, %46
  %51 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 3
  store i32 %50, ptr %51, align 4, !tbaa !47
  call void @WM_window_open_temp(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 0) #6
  %52 = call ptr @CTX_wm_area(ptr noundef %0) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #5
  br label %63

53:                                               ; preds = %3
  %54 = tail call ptr @CTX_wm_area(ptr noundef %0) #6
  %55 = icmp eq ptr %54, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.ScrArea, ptr %54, i64 0, i32 8
  %58 = load i8, ptr %57, align 8, !tbaa !48
  %59 = icmp ne i8 %58, 6
  br label %60

60:                                               ; preds = %56, %53
  %61 = phi i1 [ true, %53 ], [ %59, %56 ]
  %62 = tail call ptr @ED_screen_full_newspace(ptr noundef %0, ptr noundef %54, i32 noundef 6) #6
  br label %63

63:                                               ; preds = %60, %10
  %64 = phi i1 [ true, %10 ], [ %61, %60 ]
  %65 = phi ptr [ %52, %10 ], [ %62, %60 ]
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %100

67:                                               ; preds = %3, %63
  %68 = phi i1 [ %64, %63 ], [ true, %3 ]
  %69 = call fastcc ptr @find_area_showing_r_result(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %4) #7
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = call fastcc ptr @find_area_image_empty(ptr noundef %0) #7
  br label %73

73:                                               ; preds = %71, %67
  %74 = phi ptr [ %72, %71 ], [ %69, %67 ]
  %75 = load ptr, ptr %4, align 8, !tbaa !5
  %76 = icmp eq ptr %75, null
  br i1 %76, label %81, label %77

77:                                               ; preds = %73
  %78 = call ptr @CTX_wm_window(ptr noundef %0) #6
  %79 = icmp eq ptr %75, %78
  br i1 %79, label %81, label %80

80:                                               ; preds = %77
  call void @wm_window_raise(ptr noundef nonnull %75) #6
  br label %81

81:                                               ; preds = %80, %77, %73
  %82 = icmp eq ptr %74, null
  br i1 %82, label %83, label %100

83:                                               ; preds = %81
  %84 = call fastcc ptr @biggest_non_image_area(ptr noundef %0) #7
  %85 = icmp eq ptr %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %83
  call void @ED_area_newspace(ptr noundef %0, ptr noundef nonnull %84, i32 noundef 6) #6
  br label %93

87:                                               ; preds = %83
  %88 = call ptr @CTX_wm_screen(ptr noundef %0) #6
  %89 = call ptr @BKE_screen_find_big_area(ptr noundef %88, i32 noundef -1, i16 noundef signext 0) #6
  %90 = getelementptr inbounds %struct.ScrArea, ptr %89, i64 0, i32 8
  %91 = load i8, ptr %90, align 8, !tbaa !48
  %92 = icmp eq i8 %91, 6
  br i1 %92, label %100, label %93

93:                                               ; preds = %87, %86
  %94 = phi ptr [ %84, %86 ], [ %89, %87 ]
  %95 = getelementptr inbounds %struct.ScrArea, ptr %94, i64 0, i32 19
  %96 = load ptr, ptr %95, align 8, !tbaa !50
  %97 = getelementptr inbounds %struct.SpaceImage, ptr %96, i64 0, i32 4
  %98 = load i32, ptr %97, align 4, !tbaa !51
  %99 = or i32 %98, 32768
  store i32 %99, ptr %97, align 4, !tbaa !51
  br label %100

100:                                              ; preds = %93, %81, %87, %63
  %101 = phi i1 [ %64, %63 ], [ %68, %87 ], [ %68, %81 ], [ %68, %93 ]
  %102 = phi ptr [ %65, %63 ], [ %89, %87 ], [ %74, %81 ], [ %94, %93 ]
  %103 = getelementptr inbounds %struct.ScrArea, ptr %102, i64 0, i32 19
  %104 = load ptr, ptr %103, align 8, !tbaa !50
  %105 = call ptr @BKE_image_verify_viewer(i32 noundef 4, ptr noundef nonnull @.str) #6
  %106 = getelementptr inbounds %struct.SpaceImage, ptr %104, i64 0, i32 5
  store ptr %105, ptr %106, align 8, !tbaa !57
  %107 = getelementptr inbounds %struct.ScrArea, ptr %102, i64 0, i32 6
  %108 = load ptr, ptr %107, align 8, !tbaa !58
  %109 = icmp eq ptr %108, null
  br i1 %109, label %116, label %110

110:                                              ; preds = %100
  %111 = getelementptr inbounds %struct.SpaceImage, ptr %104, i64 0, i32 4
  %112 = load i32, ptr %111, align 4, !tbaa !51
  %113 = or i32 %112, 65536
  store i32 %113, ptr %111, align 4, !tbaa !51
  br i1 %101, label %114, label %116

114:                                              ; preds = %110
  %115 = or i32 %112, 98304
  store i32 %115, ptr %111, align 4, !tbaa !51
  br label %116

116:                                              ; preds = %100, %110, %114, %3
  %117 = phi ptr [ null, %3 ], [ %102, %114 ], [ %102, %110 ], [ %102, %100 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #5
  ret ptr %117
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_window_open_temp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @ED_screen_full_newspace(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_area_showing_r_result(ptr noundef %0, ptr noundef readnone %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = tail call ptr @CTX_wm_manager(ptr noundef %0) #6
  %5 = getelementptr inbounds %struct.wmWindowManager, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  store ptr %6, ptr %2, align 8, !tbaa !5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %40, label %8

8:                                                ; preds = %3, %37
  %9 = phi ptr [ %38, %37 ], [ %6, %3 ]
  %10 = getelementptr inbounds %struct.wmWindow, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !59
  %12 = getelementptr inbounds %struct.bScreen, ptr %11, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !60
  %14 = icmp eq ptr %13, %1
  br i1 %14, label %15, label %37

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.bScreen, ptr %11, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !5
  %18 = icmp eq ptr %17, null
  br i1 %18, label %37, label %19

19:                                               ; preds = %15, %34
  %20 = phi ptr [ %35, %34 ], [ %17, %15 ]
  %21 = getelementptr inbounds %struct.ScrArea, ptr %20, i64 0, i32 8
  %22 = load i8, ptr %21, align 8, !tbaa !48
  %23 = icmp eq i8 %22, 6
  br i1 %23, label %24, label %34

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.ScrArea, ptr %20, i64 0, i32 19
  %26 = load ptr, ptr %25, align 8, !tbaa !50
  %27 = getelementptr inbounds %struct.SpaceImage, ptr %26, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !57
  %29 = icmp eq ptr %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.Image, ptr %28, i64 0, i32 12
  %32 = load i16, ptr %31, align 2, !tbaa !62
  %33 = icmp eq i16 %32, 4
  br i1 %33, label %40, label %34

34:                                               ; preds = %19, %30, %24
  %35 = load ptr, ptr %20, align 8, !tbaa !5
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %19, !llvm.loop !64

37:                                               ; preds = %34, %15, %8
  %38 = load ptr, ptr %9, align 8, !tbaa !5
  store ptr %38, ptr %2, align 8, !tbaa !5
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %8, !llvm.loop !66

40:                                               ; preds = %37, %30, %3
  %41 = phi ptr [ null, %3 ], [ %20, %30 ], [ null, %37 ]
  ret ptr %41
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_area_image_empty(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_screen(ptr noundef %0) #6
  %3 = getelementptr inbounds %struct.bScreen, ptr %2, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %1, %17
  %7 = phi ptr [ %18, %17 ], [ %4, %1 ]
  %8 = getelementptr inbounds %struct.ScrArea, ptr %7, i64 0, i32 8
  %9 = load i8, ptr %8, align 8, !tbaa !48
  %10 = icmp eq i8 %9, 6
  br i1 %10, label %11, label %17

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.ScrArea, ptr %7, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !50
  %14 = getelementptr inbounds %struct.SpaceImage, ptr %13, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !57
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %6, %11
  %18 = load ptr, ptr %7, align 8, !tbaa !5
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %6, !llvm.loop !67

20:                                               ; preds = %17, %11, %1
  %21 = phi ptr [ null, %1 ], [ %7, %11 ], [ null, %17 ]
  ret ptr %21
}

; Function Attrs: optsize
declare void @wm_window_raise(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @biggest_non_image_area(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_screen(ptr noundef %0) #6
  %3 = getelementptr inbounds %struct.bScreen, ptr %2, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %41, label %6

6:                                                ; preds = %1, %34
  %7 = phi ptr [ %39, %34 ], [ %4, %1 ]
  %8 = phi i16 [ %38, %34 ], [ 0, %1 ]
  %9 = phi i32 [ %37, %34 ], [ 0, %1 ]
  %10 = phi i32 [ %36, %34 ], [ 0, %1 ]
  %11 = phi ptr [ %35, %34 ], [ null, %1 ]
  %12 = getelementptr inbounds %struct.ScrArea, ptr %7, i64 0, i32 10
  %13 = load i16, ptr %12, align 2, !tbaa !68
  %14 = sext i16 %13 to i32
  %15 = icmp sgt i16 %13, 30
  br i1 %15, label %16, label %34

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.ScrArea, ptr %7, i64 0, i32 11
  %18 = load i16, ptr %17, align 4, !tbaa !69
  %19 = icmp sgt i16 %18, 30
  br i1 %19, label %20, label %34

20:                                               ; preds = %16
  %21 = zext nneg i16 %18 to i32
  %22 = mul nuw nsw i32 %21, %14
  %23 = getelementptr inbounds %struct.ScrArea, ptr %7, i64 0, i32 8
  %24 = load i8, ptr %23, align 8, !tbaa !48
  switch i8 %24, label %31 [
    i8 4, label %25
    i8 6, label %34
  ]

25:                                               ; preds = %20
  %26 = icmp eq i16 %8, 0
  %27 = icmp sgt i32 %22, %9
  %28 = select i1 %26, i1 %27, i1 false
  %29 = select i1 %28, ptr %7, ptr %11
  %30 = select i1 %28, i32 %22, i32 %9
  br label %34

31:                                               ; preds = %20
  %32 = icmp sgt i32 %22, %10
  br i1 %32, label %33, label %34

33:                                               ; preds = %31
  br label %34

34:                                               ; preds = %25, %20, %6, %16, %31, %33
  %35 = phi ptr [ %7, %33 ], [ %11, %31 ], [ %11, %16 ], [ %11, %6 ], [ %11, %20 ], [ %29, %25 ]
  %36 = phi i32 [ %22, %33 ], [ %10, %31 ], [ %10, %16 ], [ %10, %6 ], [ %10, %20 ], [ %10, %25 ]
  %37 = phi i32 [ %9, %33 ], [ %9, %31 ], [ %9, %16 ], [ %9, %6 ], [ %9, %20 ], [ %30, %25 ]
  %38 = phi i16 [ 1, %33 ], [ %8, %31 ], [ %8, %16 ], [ %8, %6 ], [ %8, %20 ], [ %8, %25 ]
  %39 = load ptr, ptr %7, align 8, !tbaa !5
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %6, !llvm.loop !70

41:                                               ; preds = %34, %1
  %42 = phi ptr [ null, %1 ], [ %35, %34 ]
  ret ptr %42
}

; Function Attrs: optsize
declare void @ED_area_newspace(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_screen_find_big_area(ptr noundef, i32 noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_screen(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_image_verify_viewer(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @RENDER_OT_view_cancel(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.1, ptr %0, align 8, !tbaa !71
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %2, align 8, !tbaa !74
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.3, ptr %3, align 8, !tbaa !75
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @render_view_cancel_exec, ptr %4, align 8, !tbaa !76
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_image_active, ptr %5, align 8, !tbaa !77
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @render_view_cancel_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_wm_window(ptr noundef %0) #6
  %4 = tail call ptr @CTX_wm_area(ptr noundef %0) #6
  %5 = getelementptr inbounds %struct.wmWindow, ptr %3, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !59
  %7 = getelementptr inbounds %struct.bScreen, ptr %6, i64 0, i32 10
  %8 = load i16, ptr %7, align 2, !tbaa !78
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call void @wm_window_lower(ptr noundef nonnull %3) #6
  br label %31

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.ScrArea, ptr %4, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !50
  %14 = getelementptr inbounds %struct.SpaceImage, ptr %13, i64 0, i32 4
  %15 = load i32, ptr %14, align 4, !tbaa !51
  %16 = and i32 %15, 32768
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %11
  %19 = and i32 %15, -32769
  store i32 %19, ptr %14, align 4, !tbaa !51
  %20 = and i32 %15, 65536
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = and i32 %15, -98305
  store i32 %23, ptr %14, align 4, !tbaa !51
  tail call void @ED_screen_full_prevspace(ptr noundef %0, ptr noundef nonnull %4) #6
  br label %31

24:                                               ; preds = %18
  tail call void @ED_area_prevspace(ptr noundef %0, ptr noundef nonnull %4) #6
  br label %31

25:                                               ; preds = %11
  %26 = and i32 %15, 65536
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = and i32 %15, -98305
  store i32 %29, ptr %14, align 4, !tbaa !51
  %30 = tail call ptr @ED_screen_state_toggle(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4, i16 noundef signext 1) #6
  br label %31

31:                                               ; preds = %25, %22, %24, %28, %10
  %32 = phi i32 [ 4, %10 ], [ 4, %28 ], [ 4, %24 ], [ 4, %22 ], [ 8, %25 ]
  ret i32 %32
}

; Function Attrs: optsize
declare i32 @ED_operator_image_active(ptr noundef) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @RENDER_OT_view_show(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.4, ptr %0, align 8, !tbaa !71
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.5, ptr %2, align 8, !tbaa !74
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.6, ptr %3, align 8, !tbaa !75
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @render_view_show_invoke, ptr %4, align 8, !tbaa !79
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_screenactive, ptr %5, align 8, !tbaa !77
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @render_view_show_invoke(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca ptr, align 8
  %5 = tail call ptr @CTX_wm_window(ptr noundef %0) #6
  %6 = getelementptr inbounds %struct.wmWindow, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !59
  %8 = getelementptr inbounds %struct.bScreen, ptr %7, i64 0, i32 10
  %9 = load i16, ptr %8, align 2, !tbaa !78
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  tail call void @wm_window_lower(ptr noundef nonnull %5) #6
  br label %85

12:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #5
  %13 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %14 = call fastcc ptr @find_area_showing_r_result(ptr noundef %0, ptr noundef %13, ptr noundef nonnull %4) #7
  %15 = tail call ptr @CTX_wm_manager(ptr noundef %0) #6
  %16 = getelementptr inbounds %struct.wmWindowManager, ptr %15, i64 0, i32 3
  %17 = load ptr, ptr %4, align 8
  %18 = icmp eq ptr %17, %5
  %19 = load ptr, ptr %16, align 8, !tbaa !5
  %20 = icmp eq ptr %19, null
  br i1 %20, label %45, label %21

21:                                               ; preds = %12, %40
  %22 = phi ptr [ %41, %40 ], [ %19, %12 ]
  %23 = getelementptr inbounds %struct.wmWindow, ptr %22, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !59
  %25 = getelementptr inbounds %struct.bScreen, ptr %24, i64 0, i32 10
  %26 = load i16, ptr %25, align 2, !tbaa !78
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.bScreen, ptr %24, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !80
  %31 = getelementptr inbounds %struct.ScrArea, ptr %30, i64 0, i32 8
  %32 = load i8, ptr %31, align 8, !tbaa !48
  %33 = icmp ne i8 %32, 6
  %34 = icmp ne ptr %22, %17
  %35 = or i1 %34, %18
  %36 = select i1 %33, i1 %35, i1 false
  br i1 %36, label %40, label %43

37:                                               ; preds = %21
  %38 = icmp ne ptr %22, %17
  %39 = or i1 %38, %18
  br i1 %39, label %40, label %43

40:                                               ; preds = %37, %28
  %41 = load ptr, ptr %22, align 8, !tbaa !5
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %21, !llvm.loop !81

43:                                               ; preds = %37, %28
  %44 = phi ptr [ %17, %37 ], [ %22, %28 ]
  tail call void @wm_window_raise(ptr noundef nonnull %44) #6
  br label %84

45:                                               ; preds = %40, %12
  %46 = icmp eq ptr %14, null
  br i1 %46, label %78, label %47

47:                                               ; preds = %45
  %48 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 13), align 2, !tbaa !82
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %84

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.ScrArea, ptr %14, i64 0, i32 19
  %52 = load ptr, ptr %51, align 8, !tbaa !50
  %53 = getelementptr inbounds %struct.SpaceImage, ptr %52, i64 0, i32 4
  %54 = load i32, ptr %53, align 4, !tbaa !51
  %55 = and i32 %54, 32768
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %84, label %57

57:                                               ; preds = %50
  %58 = and i32 %54, -32769
  store i32 %58, ptr %53, align 4, !tbaa !51
  %59 = and i32 %54, 65536
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %57
  %62 = and i32 %54, -98305
  store i32 %62, ptr %53, align 4, !tbaa !51
  tail call void @ED_screen_full_prevspace(ptr noundef %0, ptr noundef nonnull %14) #6
  br label %84

63:                                               ; preds = %57
  %64 = load ptr, ptr %52, align 8, !tbaa !84
  %65 = icmp eq ptr %64, null
  br i1 %65, label %84, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.SpaceLink, ptr %64, i64 0, i32 3
  %68 = load i32, ptr %67, align 8, !tbaa !85
  %69 = icmp eq i32 %68, 5
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = load ptr, ptr %64, align 8, !tbaa !87
  %72 = icmp eq ptr %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.SpaceLink, ptr %71, i64 0, i32 3
  %75 = load i32, ptr %74, align 8, !tbaa !85
  br label %76

76:                                               ; preds = %66, %70, %73
  %77 = phi i32 [ %75, %73 ], [ %68, %70 ], [ %68, %66 ]
  tail call void @ED_area_newspace(ptr noundef %0, ptr noundef nonnull %14, i32 noundef %77) #6
  tail call void @ED_area_tag_redraw(ptr noundef nonnull %14) #6
  br label %84

78:                                               ; preds = %45
  %79 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %80 = load i32, ptr %79, align 4, !tbaa !88
  %81 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %82 = load i32, ptr %81, align 8, !tbaa !91
  %83 = tail call ptr @render_view_open(ptr noundef %0, i32 noundef %80, i32 noundef %82) #7
  br label %84

84:                                               ; preds = %78, %47, %61, %76, %63, %50, %43
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #5
  br label %85

85:                                               ; preds = %84, %11
  ret i32 4
}

; Function Attrs: optsize
declare i32 @ED_operator_screenactive(ptr noundef) #2

; Function Attrs: optsize
declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @wm_window_lower(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_screen_full_prevspace(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_area_prevspace(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_screen_state_toggle(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_area_tag_redraw(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }

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
!9 = !{!10, !12, i64 792}
!10 = !{!"Scene", !11, i64 0, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !14, i64 152, !6, i64 168, !6, i64 176, !7, i64 184, !7, i64 196, !7, i64 208, !7, i64 220, !13, i64 232, !13, i64 236, !13, i64 240, !12, i64 244, !7, i64 246, !7, i64 247, !6, i64 248, !6, i64 256, !6, i64 264, !6, i64 272, !15, i64 280, !25, i64 4264, !14, i64 4296, !14, i64 4312, !6, i64 4328, !6, i64 4336, !6, i64 4344, !6, i64 4352, !6, i64 4360, !6, i64 4368, !12, i64 4376, !12, i64 4378, !13, i64 4380, !14, i64 4384, !26, i64 4400, !27, i64 4416, !30, i64 4600, !6, i64 4608, !31, i64 4616, !6, i64 4640, !32, i64 4648, !32, i64 4656, !18, i64 4664, !19, i64 4824, !33, i64 4888, !6, i64 4952}
!11 = !{!"ID", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !7, i64 32, !12, i64 98, !13, i64 100, !13, i64 104, !13, i64 108, !6, i64 112}
!12 = !{!"short", !7, i64 0}
!13 = !{!"int", !7, i64 0}
!14 = !{!"ListBase", !6, i64 0, !6, i64 8}
!15 = !{!"RenderData", !16, i64 0, !6, i64 248, !6, i64 256, !20, i64 264, !21, i64 328, !13, i64 400, !13, i64 404, !13, i64 408, !17, i64 412, !13, i64 416, !13, i64 420, !13, i64 424, !13, i64 428, !12, i64 432, !12, i64 434, !17, i64 436, !17, i64 440, !17, i64 444, !17, i64 448, !17, i64 452, !12, i64 456, !12, i64 458, !12, i64 460, !12, i64 462, !12, i64 464, !12, i64 466, !13, i64 468, !12, i64 472, !12, i64 474, !12, i64 476, !12, i64 478, !12, i64 480, !12, i64 482, !13, i64 484, !13, i64 488, !12, i64 492, !12, i64 494, !13, i64 496, !13, i64 500, !12, i64 504, !12, i64 506, !12, i64 508, !12, i64 510, !12, i64 512, !7, i64 514, !7, i64 515, !13, i64 516, !13, i64 520, !13, i64 524, !12, i64 528, !12, i64 530, !12, i64 532, !12, i64 534, !12, i64 536, !12, i64 538, !12, i64 540, !12, i64 542, !22, i64 544, !22, i64 560, !23, i64 576, !14, i64 592, !12, i64 608, !12, i64 610, !17, i64 612, !17, i64 616, !17, i64 620, !17, i64 624, !13, i64 628, !17, i64 632, !17, i64 636, !17, i64 640, !17, i64 644, !12, i64 648, !12, i64 650, !12, i64 652, !12, i64 654, !12, i64 656, !12, i64 658, !17, i64 660, !17, i64 664, !12, i64 668, !12, i64 670, !17, i64 672, !17, i64 676, !7, i64 680, !13, i64 1704, !12, i64 1708, !12, i64 1710, !7, i64 1712, !7, i64 2480, !7, i64 2496, !7, i64 2512, !7, i64 2513, !7, i64 2514, !7, i64 2515, !13, i64 2520, !12, i64 2524, !12, i64 2526, !17, i64 2528, !17, i64 2532, !12, i64 2536, !12, i64 2538, !17, i64 2540, !12, i64 2544, !12, i64 2546, !13, i64 2548, !12, i64 2552, !12, i64 2554, !12, i64 2556, !12, i64 2558, !17, i64 2560, !17, i64 2564, !6, i64 2568, !13, i64 2576, !17, i64 2580, !7, i64 2584, !24, i64 2616, !13, i64 3976, !13, i64 3980}
!16 = !{!"ImageFormatData", !7, i64 0, !7, i64 1, !7, i64 2, !7, i64 3, !7, i64 4, !7, i64 5, !7, i64 6, !7, i64 7, !12, i64 8, !12, i64 10, !17, i64 12, !7, i64 16, !7, i64 17, !7, i64 18, !18, i64 24, !19, i64 184}
!17 = !{!"float", !7, i64 0}
!18 = !{!"ColorManagedViewSettings", !13, i64 0, !13, i64 4, !7, i64 8, !7, i64 72, !17, i64 136, !17, i64 140, !6, i64 144, !6, i64 152}
!19 = !{!"ColorManagedDisplaySettings", !7, i64 0}
!20 = !{!"QuicktimeCodecSettings", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !13, i64 32, !13, i64 36, !13, i64 40, !13, i64 44, !12, i64 48, !12, i64 50, !13, i64 52, !13, i64 56, !13, i64 60}
!21 = !{!"FFMpegCodecData", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !17, i64 32, !13, i64 36, !13, i64 40, !13, i64 44, !13, i64 48, !13, i64 52, !13, i64 56, !13, i64 60, !6, i64 64}
!22 = !{!"rctf", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12}
!23 = !{!"rcti", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12}
!24 = !{!"BakeData", !16, i64 0, !7, i64 248, !12, i64 1272, !12, i64 1274, !12, i64 1276, !12, i64 1278, !17, i64 1280, !17, i64 1284, !7, i64 1288, !7, i64 1291, !7, i64 1292, !7, i64 1293, !7, i64 1296}
!25 = !{!"AudioData", !13, i64 0, !17, i64 4, !17, i64 8, !17, i64 12, !13, i64 16, !12, i64 20, !12, i64 22, !17, i64 24, !17, i64 28}
!26 = !{!"GameFraming", !7, i64 0, !7, i64 12, !7, i64 13, !7, i64 14, !7, i64 15}
!27 = !{!"GameData", !26, i64 0, !12, i64 16, !12, i64 18, !12, i64 20, !12, i64 22, !12, i64 24, !12, i64 26, !12, i64 28, !12, i64 30, !12, i64 32, !7, i64 34, !28, i64 40, !12, i64 64, !12, i64 66, !17, i64 68, !29, i64 72, !17, i64 128, !17, i64 132, !13, i64 136, !12, i64 140, !12, i64 142, !12, i64 144, !12, i64 146, !12, i64 148, !12, i64 150, !12, i64 152, !12, i64 154, !12, i64 156, !12, i64 158, !12, i64 160, !12, i64 162, !17, i64 164, !17, i64 168, !17, i64 172, !17, i64 176, !17, i64 180}
!28 = !{!"GameDome", !12, i64 0, !12, i64 2, !12, i64 4, !12, i64 6, !17, i64 8, !17, i64 12, !6, i64 16}
!29 = !{!"RecastData", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12, !17, i64 16, !17, i64 20, !17, i64 24, !17, i64 28, !17, i64 32, !17, i64 36, !13, i64 40, !17, i64 44, !17, i64 48, !12, i64 52, !12, i64 54}
!30 = !{!"UnitSettings", !17, i64 0, !7, i64 4, !7, i64 5, !12, i64 6}
!31 = !{!"PhysicsSettings", !7, i64 0, !13, i64 12, !13, i64 16, !13, i64 20}
!32 = !{!"long", !7, i64 0}
!33 = !{!"ColorManagedColorspaceSettings", !7, i64 0}
!34 = !{!10, !13, i64 764}
!35 = !{!10, !12, i64 758}
!36 = !{!10, !13, i64 768}
!37 = !{!38, !17, i64 10908}
!38 = !{!"UserDef", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !7, i64 20, !7, i64 788, !7, i64 1556, !7, i64 2580, !7, i64 3348, !7, i64 4116, !7, i64 4884, !7, i64 5652, !7, i64 6420, !7, i64 7444, !13, i64 8468, !12, i64 8472, !12, i64 8474, !12, i64 8476, !12, i64 8478, !12, i64 8480, !12, i64 8482, !13, i64 8484, !13, i64 8488, !13, i64 8492, !12, i64 8496, !12, i64 8498, !13, i64 8500, !13, i64 8504, !13, i64 8508, !13, i64 8512, !13, i64 8516, !13, i64 8520, !13, i64 8524, !12, i64 8528, !12, i64 8530, !12, i64 8532, !12, i64 8534, !14, i64 8536, !14, i64 8552, !14, i64 8568, !14, i64 8584, !14, i64 8600, !14, i64 8616, !14, i64 8632, !7, i64 8648, !12, i64 8712, !12, i64 8714, !12, i64 8716, !12, i64 8718, !12, i64 8720, !12, i64 8722, !12, i64 8724, !12, i64 8726, !7, i64 8728, !12, i64 8896, !12, i64 8898, !12, i64 8900, !12, i64 8902, !12, i64 8904, !12, i64 8906, !12, i64 8908, !12, i64 8910, !13, i64 8912, !13, i64 8916, !12, i64 8920, !12, i64 8922, !12, i64 8924, !12, i64 8926, !12, i64 8928, !12, i64 8930, !12, i64 8932, !12, i64 8934, !12, i64 8936, !12, i64 8938, !7, i64 8940, !7, i64 8941, !7, i64 8942, !7, i64 8943, !12, i64 8944, !12, i64 8946, !12, i64 8948, !12, i64 8950, !12, i64 8952, !12, i64 8954, !17, i64 8956, !17, i64 8960, !13, i64 8964, !12, i64 8968, !12, i64 8970, !17, i64 8972, !12, i64 8976, !12, i64 8978, !12, i64 8980, !12, i64 8982, !39, i64 8984, !7, i64 9760, !7, i64 9772, !12, i64 9788, !7, i64 9790, !7, i64 9791, !7, i64 9792, !7, i64 9872, !13, i64 10896, !13, i64 10900, !17, i64 10904, !17, i64 10908, !13, i64 10912, !12, i64 10916, !12, i64 10918, !12, i64 10920, !12, i64 10922, !12, i64 10924, !12, i64 10926, !40, i64 10928}
!39 = !{!"ColorBand", !12, i64 0, !12, i64 2, !7, i64 4, !7, i64 5, !7, i64 6, !7, i64 7, !7, i64 8}
!40 = !{!"WalkNavigation", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12, !17, i64 16, !17, i64 20, !12, i64 24, !7, i64 26}
!41 = !{!42, !12, i64 104}
!42 = !{!"wmWindow", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !7, i64 40, !12, i64 104, !12, i64 106, !12, i64 108, !12, i64 110, !12, i64 112, !12, i64 114, !12, i64 116, !12, i64 118, !12, i64 120, !12, i64 122, !12, i64 124, !12, i64 126, !13, i64 128, !12, i64 132, !12, i64 134, !6, i64 136, !6, i64 144, !6, i64 152, !13, i64 160, !13, i64 164, !6, i64 168, !14, i64 176, !14, i64 192, !14, i64 208, !14, i64 224, !14, i64 240}
!43 = !{!23, !13, i64 0}
!44 = !{!42, !12, i64 106}
!45 = !{!23, !13, i64 8}
!46 = !{!23, !13, i64 4}
!47 = !{!23, !13, i64 12}
!48 = !{!49, !7, i64 72}
!49 = !{!"ScrArea", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !23, i64 56, !7, i64 72, !7, i64 73, !12, i64 74, !12, i64 76, !12, i64 78, !12, i64 80, !12, i64 82, !12, i64 84, !7, i64 86, !7, i64 87, !6, i64 88, !14, i64 96, !14, i64 112, !14, i64 128, !14, i64 144}
!50 = !{!49, !6, i64 96}
!51 = !{!52, !13, i64 36}
!52 = !{!"SpaceImage", !6, i64 0, !6, i64 8, !14, i64 16, !13, i64 32, !13, i64 36, !6, i64 40, !53, i64 48, !6, i64 88, !54, i64 96, !55, i64 5360, !6, i64 10520, !7, i64 10528, !17, i64 10536, !17, i64 10540, !17, i64 10544, !17, i64 10548, !17, i64 10552, !7, i64 10556, !7, i64 10557, !12, i64 10558, !12, i64 10560, !12, i64 10562, !7, i64 10564, !7, i64 10565, !7, i64 10566, !7, i64 10567, !56, i64 10568}
!53 = !{!"ImageUser", !6, i64 0, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !7, i64 24, !7, i64 25, !7, i64 26, !7, i64 27, !12, i64 28, !12, i64 30, !12, i64 32, !12, i64 34, !13, i64 36}
!54 = !{!"Scopes", !13, i64 0, !13, i64 4, !13, i64 8, !17, i64 12, !13, i64 16, !17, i64 20, !17, i64 24, !13, i64 28, !17, i64 32, !13, i64 36, !7, i64 40, !55, i64 64, !6, i64 5224, !6, i64 5232, !6, i64 5240, !6, i64 5248, !13, i64 5256, !13, i64 5260}
!55 = !{!"Histogram", !13, i64 0, !13, i64 4, !7, i64 8, !7, i64 1032, !7, i64 2056, !7, i64 3080, !7, i64 4104, !17, i64 5128, !17, i64 5132, !12, i64 5136, !12, i64 5138, !13, i64 5140, !7, i64 5144}
!56 = !{!"MaskSpaceInfo", !6, i64 0, !7, i64 8, !7, i64 9, !7, i64 10, !7, i64 11}
!57 = !{!52, !6, i64 40}
!58 = !{!49, !6, i64 48}
!59 = !{!42, !6, i64 24}
!60 = !{!61, !6, i64 184}
!61 = !{!"bScreen", !11, i64 0, !14, i64 120, !14, i64 136, !14, i64 152, !14, i64 168, !6, i64 184, !6, i64 192, !13, i64 200, !13, i64 204, !12, i64 208, !12, i64 210, !12, i64 212, !12, i64 214, !12, i64 216, !12, i64 218, !12, i64 220, !12, i64 222, !12, i64 224, !12, i64 226, !12, i64 228, !12, i64 230, !6, i64 232, !6, i64 240}
!62 = !{!63, !12, i64 1250}
!63 = !{!"Image", !11, i64 0, !7, i64 120, !6, i64 1144, !6, i64 1152, !6, i64 1160, !6, i64 1168, !7, i64 1176, !12, i64 1240, !12, i64 1242, !12, i64 1244, !12, i64 1246, !12, i64 1248, !12, i64 1250, !13, i64 1252, !12, i64 1256, !12, i64 1258, !12, i64 1260, !12, i64 1262, !12, i64 1264, !12, i64 1266, !13, i64 1268, !6, i64 1272, !6, i64 1280, !6, i64 1288, !17, i64 1296, !13, i64 1300, !12, i64 1304, !12, i64 1306, !13, i64 1308, !13, i64 1312, !7, i64 1316, !7, i64 1317, !12, i64 1318, !7, i64 1320, !17, i64 1336, !17, i64 1340, !33, i64 1344, !7, i64 1408, !7, i64 1409, !7, i64 1416}
!64 = distinct !{!64, !65}
!65 = !{!"llvm.loop.mustprogress"}
!66 = distinct !{!66, !65}
!67 = distinct !{!67, !65}
!68 = !{!49, !12, i64 74}
!69 = !{!49, !12, i64 76}
!70 = distinct !{!70, !65}
!71 = !{!72, !6, i64 0}
!72 = !{!"wmOperatorType", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !14, i64 112, !6, i64 128, !6, i64 136, !6, i64 144, !73, i64 152, !12, i64 184}
!73 = !{!"ExtensionRNA", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24}
!74 = !{!72, !6, i64 24}
!75 = !{!72, !6, i64 8}
!76 = !{!72, !6, i64 32}
!77 = !{!72, !6, i64 72}
!78 = !{!61, !12, i64 210}
!79 = !{!72, !6, i64 48}
!80 = !{!61, !6, i64 152}
!81 = distinct !{!81, !65}
!82 = !{!83, !7, i64 2090}
!83 = !{!"Global", !6, i64 0, !7, i64 8, !7, i64 1032, !7, i64 2056, !7, i64 2057, !7, i64 2058, !14, i64 2064, !7, i64 2080, !7, i64 2081, !7, i64 2082, !12, i64 2084, !12, i64 2086, !12, i64 2088, !7, i64 2090, !12, i64 2092, !13, i64 2096, !13, i64 2100, !7, i64 2104, !13, i64 2108, !13, i64 2112, !7, i64 2116}
!84 = !{!52, !6, i64 0}
!85 = !{!86, !13, i64 32}
!86 = !{!"SpaceLink", !6, i64 0, !6, i64 8, !14, i64 16, !13, i64 32, !17, i64 36, !7, i64 40}
!87 = !{!86, !6, i64 0}
!88 = !{!89, !13, i64 20}
!89 = !{!"wmEvent", !6, i64 0, !6, i64 8, !12, i64 16, !12, i64 18, !13, i64 20, !13, i64 24, !7, i64 28, !7, i64 36, !7, i64 42, !7, i64 43, !12, i64 44, !12, i64 46, !13, i64 48, !13, i64 52, !90, i64 56, !13, i64 64, !13, i64 68, !12, i64 72, !12, i64 74, !12, i64 76, !12, i64 78, !12, i64 80, !12, i64 82, !6, i64 88, !6, i64 96, !12, i64 104, !12, i64 106, !13, i64 108, !6, i64 112}
!90 = !{!"double", !7, i64 0}
!91 = !{!89, !13, i64 24}
