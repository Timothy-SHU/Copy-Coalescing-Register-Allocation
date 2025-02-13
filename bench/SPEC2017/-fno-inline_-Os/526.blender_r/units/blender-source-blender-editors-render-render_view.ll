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
  store ptr %6, ptr %4, align 8, !tbaa !34
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %8 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 22, i32 43
  %9 = load i16, ptr %8, align 8, !tbaa !38
  switch i16 %9, label %67 [
    i16 3, label %116
    i16 2, label %10
    i16 0, label %53
  ]

10:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #5
  %11 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 22, i32 33
  %12 = load i32, ptr %11, align 4, !tbaa !63
  %13 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 22, i32 30
  %14 = load i16, ptr %13, align 2, !tbaa !64
  %15 = sext i16 %14 to i32
  %16 = mul nsw i32 %12, %15
  %17 = sdiv i32 %16, 100
  %18 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 22, i32 34
  %19 = load i32, ptr %18, align 8, !tbaa !65
  %20 = mul nsw i32 %19, %15
  %21 = sdiv i32 %20, 100
  %22 = tail call i32 @llvm.smax.i32(i32 %17, i32 310)
  %23 = add nuw nsw i32 %22, 10
  %24 = tail call i32 @llvm.smax.i32(i32 %21, i32 216)
  %25 = add nuw nsw i32 %24, 40
  %26 = sitofp i32 %1 to float
  %27 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !66
  %28 = fdiv float %26, %27
  %29 = getelementptr inbounds %struct.wmWindow, ptr %6, i64 0, i32 6
  %30 = load i16, ptr %29, align 8, !tbaa !70
  %31 = sitofp i16 %30 to float
  %32 = fadd float %28, %31
  %33 = lshr i32 %23, 1
  %34 = sitofp i32 %33 to float
  %35 = fsub float %32, %34
  %36 = fptosi float %35 to i32
  store i32 %36, ptr %5, align 4, !tbaa !72
  %37 = sitofp i32 %2 to float
  %38 = fdiv float %37, %27
  %39 = getelementptr inbounds %struct.wmWindow, ptr %6, i64 0, i32 7
  %40 = load i16, ptr %39, align 2, !tbaa !73
  %41 = sitofp i16 %40 to float
  %42 = fadd float %38, %41
  %43 = lshr i32 %25, 1
  %44 = sitofp i32 %43 to float
  %45 = fsub float %42, %44
  %46 = fptosi float %45 to i32
  %47 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 2
  store i32 %46, ptr %47, align 4, !tbaa !74
  %48 = add nsw i32 %23, %36
  %49 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 1
  store i32 %48, ptr %49, align 4, !tbaa !75
  %50 = add nsw i32 %25, %46
  %51 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 3
  store i32 %50, ptr %51, align 4, !tbaa !76
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
  %58 = load i8, ptr %57, align 8, !tbaa !77
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
  %75 = load ptr, ptr %4, align 8, !tbaa !34
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
  %91 = load i8, ptr %90, align 8, !tbaa !77
  %92 = icmp eq i8 %91, 6
  br i1 %92, label %100, label %93

93:                                               ; preds = %87, %86
  %94 = phi ptr [ %84, %86 ], [ %89, %87 ]
  %95 = getelementptr inbounds %struct.ScrArea, ptr %94, i64 0, i32 19
  %96 = load ptr, ptr %95, align 8, !tbaa !79
  %97 = getelementptr inbounds %struct.SpaceImage, ptr %96, i64 0, i32 4
  %98 = load i32, ptr %97, align 4, !tbaa !80
  %99 = or i32 %98, 32768
  store i32 %99, ptr %97, align 4, !tbaa !80
  br label %100

100:                                              ; preds = %93, %81, %87, %63
  %101 = phi i1 [ %64, %63 ], [ %68, %87 ], [ %68, %81 ], [ %68, %93 ]
  %102 = phi ptr [ %65, %63 ], [ %89, %87 ], [ %74, %81 ], [ %94, %93 ]
  %103 = getelementptr inbounds %struct.ScrArea, ptr %102, i64 0, i32 19
  %104 = load ptr, ptr %103, align 8, !tbaa !79
  %105 = call ptr @BKE_image_verify_viewer(i32 noundef 4, ptr noundef nonnull @.str) #6
  %106 = getelementptr inbounds %struct.SpaceImage, ptr %104, i64 0, i32 5
  store ptr %105, ptr %106, align 8, !tbaa !86
  %107 = getelementptr inbounds %struct.ScrArea, ptr %102, i64 0, i32 6
  %108 = load ptr, ptr %107, align 8, !tbaa !87
  %109 = icmp eq ptr %108, null
  br i1 %109, label %116, label %110

110:                                              ; preds = %100
  %111 = getelementptr inbounds %struct.SpaceImage, ptr %104, i64 0, i32 4
  %112 = load i32, ptr %111, align 4, !tbaa !80
  %113 = or i32 %112, 65536
  store i32 %113, ptr %111, align 4, !tbaa !80
  br i1 %101, label %114, label %116

114:                                              ; preds = %110
  %115 = or i32 %112, 98304
  store i32 %115, ptr %111, align 4, !tbaa !80
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
define internal fastcc ptr @find_area_showing_r_result(ptr noundef %0, ptr noundef readnone %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !PGOFuncName !88 {
  %4 = tail call ptr @CTX_wm_manager(ptr noundef %0) #6
  %5 = getelementptr inbounds %struct.wmWindowManager, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  store ptr %6, ptr %2, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %40, label %8

8:                                                ; preds = %3, %37
  %9 = phi ptr [ %38, %37 ], [ %6, %3 ]
  %10 = getelementptr inbounds %struct.wmWindow, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !89
  %12 = getelementptr inbounds %struct.bScreen, ptr %11, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !90
  %14 = icmp eq ptr %13, %1
  br i1 %14, label %15, label %37

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.bScreen, ptr %11, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  %18 = icmp eq ptr %17, null
  br i1 %18, label %37, label %19

19:                                               ; preds = %15, %34
  %20 = phi ptr [ %35, %34 ], [ %17, %15 ]
  %21 = getelementptr inbounds %struct.ScrArea, ptr %20, i64 0, i32 8
  %22 = load i8, ptr %21, align 8, !tbaa !77
  %23 = icmp eq i8 %22, 6
  br i1 %23, label %24, label %34

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.ScrArea, ptr %20, i64 0, i32 19
  %26 = load ptr, ptr %25, align 8, !tbaa !79
  %27 = getelementptr inbounds %struct.SpaceImage, ptr %26, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !86
  %29 = icmp eq ptr %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.Image, ptr %28, i64 0, i32 12
  %32 = load i16, ptr %31, align 2, !tbaa !92
  %33 = icmp eq i16 %32, 4
  br i1 %33, label %40, label %34

34:                                               ; preds = %19, %30, %24
  %35 = load ptr, ptr %20, align 8, !tbaa !34
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %19, !llvm.loop !94

37:                                               ; preds = %34, %15, %8
  %38 = load ptr, ptr %9, align 8, !tbaa !34
  store ptr %38, ptr %2, align 8, !tbaa !34
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %8, !llvm.loop !96

40:                                               ; preds = %37, %30, %3
  %41 = phi ptr [ null, %3 ], [ %20, %30 ], [ null, %37 ]
  ret ptr %41
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_area_image_empty(ptr noundef %0) unnamed_addr #0 !PGOFuncName !97 {
  %2 = tail call ptr @CTX_wm_screen(ptr noundef %0) #6
  %3 = getelementptr inbounds %struct.bScreen, ptr %2, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %1, %17
  %7 = phi ptr [ %18, %17 ], [ %4, %1 ]
  %8 = getelementptr inbounds %struct.ScrArea, ptr %7, i64 0, i32 8
  %9 = load i8, ptr %8, align 8, !tbaa !77
  %10 = icmp eq i8 %9, 6
  br i1 %10, label %11, label %17

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.ScrArea, ptr %7, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !79
  %14 = getelementptr inbounds %struct.SpaceImage, ptr %13, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !86
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %6, %11
  %18 = load ptr, ptr %7, align 8, !tbaa !34
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %6, !llvm.loop !98

20:                                               ; preds = %17, %11, %1
  %21 = phi ptr [ null, %1 ], [ %7, %11 ], [ null, %17 ]
  ret ptr %21
}

; Function Attrs: optsize
declare void @wm_window_raise(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @biggest_non_image_area(ptr noundef %0) unnamed_addr #0 !PGOFuncName !99 {
  %2 = tail call ptr @CTX_wm_screen(ptr noundef %0) #6
  %3 = getelementptr inbounds %struct.bScreen, ptr %2, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %41, label %6

6:                                                ; preds = %1, %34
  %7 = phi ptr [ %39, %34 ], [ %4, %1 ]
  %8 = phi i16 [ %38, %34 ], [ 0, %1 ]
  %9 = phi i32 [ %37, %34 ], [ 0, %1 ]
  %10 = phi i32 [ %36, %34 ], [ 0, %1 ]
  %11 = phi ptr [ %35, %34 ], [ null, %1 ]
  %12 = getelementptr inbounds %struct.ScrArea, ptr %7, i64 0, i32 10
  %13 = load i16, ptr %12, align 2, !tbaa !100
  %14 = sext i16 %13 to i32
  %15 = icmp sgt i16 %13, 30
  br i1 %15, label %16, label %34

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.ScrArea, ptr %7, i64 0, i32 11
  %18 = load i16, ptr %17, align 4, !tbaa !101
  %19 = icmp sgt i16 %18, 30
  br i1 %19, label %20, label %34

20:                                               ; preds = %16
  %21 = zext nneg i16 %18 to i32
  %22 = mul nuw nsw i32 %21, %14
  %23 = getelementptr inbounds %struct.ScrArea, ptr %7, i64 0, i32 8
  %24 = load i8, ptr %23, align 8, !tbaa !77
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
  %39 = load ptr, ptr %7, align 8, !tbaa !34
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %6, !llvm.loop !102

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
  store ptr @.str.1, ptr %0, align 8, !tbaa !103
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %2, align 8, !tbaa !106
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.3, ptr %3, align 8, !tbaa !107
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @render_view_cancel_exec, ptr %4, align 8, !tbaa !108
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_image_active, ptr %5, align 8, !tbaa !109
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @render_view_cancel_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !110 {
  %3 = tail call ptr @CTX_wm_window(ptr noundef %0) #6
  %4 = tail call ptr @CTX_wm_area(ptr noundef %0) #6
  %5 = getelementptr inbounds %struct.wmWindow, ptr %3, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !89
  %7 = getelementptr inbounds %struct.bScreen, ptr %6, i64 0, i32 10
  %8 = load i16, ptr %7, align 2, !tbaa !111
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call void @wm_window_lower(ptr noundef nonnull %3) #6
  br label %31

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.ScrArea, ptr %4, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !79
  %14 = getelementptr inbounds %struct.SpaceImage, ptr %13, i64 0, i32 4
  %15 = load i32, ptr %14, align 4, !tbaa !80
  %16 = and i32 %15, 32768
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %11
  %19 = and i32 %15, -32769
  store i32 %19, ptr %14, align 4, !tbaa !80
  %20 = and i32 %15, 65536
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = and i32 %15, -98305
  store i32 %23, ptr %14, align 4, !tbaa !80
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
  store i32 %29, ptr %14, align 4, !tbaa !80
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
  store ptr @.str.4, ptr %0, align 8, !tbaa !103
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.5, ptr %2, align 8, !tbaa !106
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.6, ptr %3, align 8, !tbaa !107
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @render_view_show_invoke, ptr %4, align 8, !tbaa !112
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_screenactive, ptr %5, align 8, !tbaa !109
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @render_view_show_invoke(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !113 {
  %4 = alloca ptr, align 8
  %5 = tail call ptr @CTX_wm_window(ptr noundef %0) #6
  %6 = getelementptr inbounds %struct.wmWindow, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !89
  %8 = getelementptr inbounds %struct.bScreen, ptr %7, i64 0, i32 10
  %9 = load i16, ptr %8, align 2, !tbaa !111
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
  %19 = load ptr, ptr %16, align 8, !tbaa !34
  %20 = icmp eq ptr %19, null
  br i1 %20, label %45, label %21

21:                                               ; preds = %12, %40
  %22 = phi ptr [ %41, %40 ], [ %19, %12 ]
  %23 = getelementptr inbounds %struct.wmWindow, ptr %22, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !89
  %25 = getelementptr inbounds %struct.bScreen, ptr %24, i64 0, i32 10
  %26 = load i16, ptr %25, align 2, !tbaa !111
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.bScreen, ptr %24, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !114
  %31 = getelementptr inbounds %struct.ScrArea, ptr %30, i64 0, i32 8
  %32 = load i8, ptr %31, align 8, !tbaa !77
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
  %41 = load ptr, ptr %22, align 8, !tbaa !34
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %21, !llvm.loop !115

43:                                               ; preds = %37, %28
  %44 = phi ptr [ %17, %37 ], [ %22, %28 ]
  tail call void @wm_window_raise(ptr noundef nonnull %44) #6
  br label %84

45:                                               ; preds = %40, %12
  %46 = icmp eq ptr %14, null
  br i1 %46, label %78, label %47

47:                                               ; preds = %45
  %48 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 13), align 2, !tbaa !116
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %84

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.ScrArea, ptr %14, i64 0, i32 19
  %52 = load ptr, ptr %51, align 8, !tbaa !79
  %53 = getelementptr inbounds %struct.SpaceImage, ptr %52, i64 0, i32 4
  %54 = load i32, ptr %53, align 4, !tbaa !80
  %55 = and i32 %54, 32768
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %84, label %57

57:                                               ; preds = %50
  %58 = and i32 %54, -32769
  store i32 %58, ptr %53, align 4, !tbaa !80
  %59 = and i32 %54, 65536
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %57
  %62 = and i32 %54, -98305
  store i32 %62, ptr %53, align 4, !tbaa !80
  tail call void @ED_screen_full_prevspace(ptr noundef %0, ptr noundef nonnull %14) #6
  br label %84

63:                                               ; preds = %57
  %64 = load ptr, ptr %52, align 8, !tbaa !118
  %65 = icmp eq ptr %64, null
  br i1 %65, label %84, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.SpaceLink, ptr %64, i64 0, i32 3
  %68 = load i32, ptr %67, align 8, !tbaa !119
  %69 = icmp eq i32 %68, 5
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = load ptr, ptr %64, align 8, !tbaa !121
  %72 = icmp eq ptr %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.SpaceLink, ptr %71, i64 0, i32 3
  %75 = load i32, ptr %74, align 8, !tbaa !119
  br label %76

76:                                               ; preds = %66, %70, %73
  %77 = phi i32 [ %75, %73 ], [ %68, %70 ], [ %68, %66 ]
  tail call void @ED_area_newspace(ptr noundef %0, ptr noundef nonnull %14, i32 noundef %77) #6
  tail call void @ED_area_tag_redraw(ptr noundef nonnull %14) #6
  br label %84

78:                                               ; preds = %45
  %79 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %80 = load i32, ptr %79, align 4, !tbaa !122
  %81 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %82 = load i32, ptr %81, align 8, !tbaa !125
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
!38 = !{!39, !41, i64 792}
!39 = !{!"Scene", !40, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !43, i64 152, !35, i64 168, !35, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !42, i64 232, !42, i64 236, !42, i64 240, !41, i64 244, !36, i64 246, !36, i64 247, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !44, i64 280, !54, i64 4264, !43, i64 4296, !43, i64 4312, !35, i64 4328, !35, i64 4336, !35, i64 4344, !35, i64 4352, !35, i64 4360, !35, i64 4368, !41, i64 4376, !41, i64 4378, !42, i64 4380, !43, i64 4384, !55, i64 4400, !56, i64 4416, !59, i64 4600, !35, i64 4608, !60, i64 4616, !35, i64 4640, !61, i64 4648, !61, i64 4656, !47, i64 4664, !48, i64 4824, !62, i64 4888, !35, i64 4952}
!40 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !41, i64 98, !42, i64 100, !42, i64 104, !42, i64 108, !35, i64 112}
!41 = !{!"short", !36, i64 0}
!42 = !{!"int", !36, i64 0}
!43 = !{!"ListBase", !35, i64 0, !35, i64 8}
!44 = !{!"RenderData", !45, i64 0, !35, i64 248, !35, i64 256, !49, i64 264, !50, i64 328, !42, i64 400, !42, i64 404, !42, i64 408, !46, i64 412, !42, i64 416, !42, i64 420, !42, i64 424, !42, i64 428, !41, i64 432, !41, i64 434, !46, i64 436, !46, i64 440, !46, i64 444, !46, i64 448, !46, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !42, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !42, i64 484, !42, i64 488, !41, i64 492, !41, i64 494, !42, i64 496, !42, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !36, i64 514, !36, i64 515, !42, i64 516, !42, i64 520, !42, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !51, i64 544, !51, i64 560, !52, i64 576, !43, i64 592, !41, i64 608, !41, i64 610, !46, i64 612, !46, i64 616, !46, i64 620, !46, i64 624, !42, i64 628, !46, i64 632, !46, i64 636, !46, i64 640, !46, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !46, i64 660, !46, i64 664, !41, i64 668, !41, i64 670, !46, i64 672, !46, i64 676, !36, i64 680, !42, i64 1704, !41, i64 1708, !41, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !42, i64 2520, !41, i64 2524, !41, i64 2526, !46, i64 2528, !46, i64 2532, !41, i64 2536, !41, i64 2538, !46, i64 2540, !41, i64 2544, !41, i64 2546, !42, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !46, i64 2560, !46, i64 2564, !35, i64 2568, !42, i64 2576, !46, i64 2580, !36, i64 2584, !53, i64 2616, !42, i64 3976, !42, i64 3980}
!45 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !41, i64 8, !41, i64 10, !46, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !47, i64 24, !48, i64 184}
!46 = !{!"float", !36, i64 0}
!47 = !{!"ColorManagedViewSettings", !42, i64 0, !42, i64 4, !36, i64 8, !36, i64 72, !46, i64 136, !46, i64 140, !35, i64 144, !35, i64 152}
!48 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!49 = !{!"QuicktimeCodecSettings", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !42, i64 32, !42, i64 36, !42, i64 40, !42, i64 44, !41, i64 48, !41, i64 50, !42, i64 52, !42, i64 56, !42, i64 60}
!50 = !{!"FFMpegCodecData", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !46, i64 32, !42, i64 36, !42, i64 40, !42, i64 44, !42, i64 48, !42, i64 52, !42, i64 56, !42, i64 60, !35, i64 64}
!51 = !{!"rctf", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12}
!52 = !{!"rcti", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12}
!53 = !{!"BakeData", !45, i64 0, !36, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !46, i64 1280, !46, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!54 = !{!"AudioData", !42, i64 0, !46, i64 4, !46, i64 8, !46, i64 12, !42, i64 16, !41, i64 20, !41, i64 22, !46, i64 24, !46, i64 28}
!55 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!56 = !{!"GameData", !55, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !36, i64 34, !57, i64 40, !41, i64 64, !41, i64 66, !46, i64 68, !58, i64 72, !46, i64 128, !46, i64 132, !42, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !46, i64 164, !46, i64 168, !46, i64 172, !46, i64 176, !46, i64 180}
!57 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !46, i64 8, !46, i64 12, !35, i64 16}
!58 = !{!"RecastData", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12, !46, i64 16, !46, i64 20, !46, i64 24, !46, i64 28, !46, i64 32, !46, i64 36, !42, i64 40, !46, i64 44, !46, i64 48, !41, i64 52, !41, i64 54}
!59 = !{!"UnitSettings", !46, i64 0, !36, i64 4, !36, i64 5, !41, i64 6}
!60 = !{!"PhysicsSettings", !36, i64 0, !42, i64 12, !42, i64 16, !42, i64 20}
!61 = !{!"long", !36, i64 0}
!62 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!63 = !{!39, !42, i64 764}
!64 = !{!39, !41, i64 758}
!65 = !{!39, !42, i64 768}
!66 = !{!67, !46, i64 10908}
!67 = !{!"UserDef", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !36, i64 20, !36, i64 788, !36, i64 1556, !36, i64 2580, !36, i64 3348, !36, i64 4116, !36, i64 4884, !36, i64 5652, !36, i64 6420, !36, i64 7444, !42, i64 8468, !41, i64 8472, !41, i64 8474, !41, i64 8476, !41, i64 8478, !41, i64 8480, !41, i64 8482, !42, i64 8484, !42, i64 8488, !42, i64 8492, !41, i64 8496, !41, i64 8498, !42, i64 8500, !42, i64 8504, !42, i64 8508, !42, i64 8512, !42, i64 8516, !42, i64 8520, !42, i64 8524, !41, i64 8528, !41, i64 8530, !41, i64 8532, !41, i64 8534, !43, i64 8536, !43, i64 8552, !43, i64 8568, !43, i64 8584, !43, i64 8600, !43, i64 8616, !43, i64 8632, !36, i64 8648, !41, i64 8712, !41, i64 8714, !41, i64 8716, !41, i64 8718, !41, i64 8720, !41, i64 8722, !41, i64 8724, !41, i64 8726, !36, i64 8728, !41, i64 8896, !41, i64 8898, !41, i64 8900, !41, i64 8902, !41, i64 8904, !41, i64 8906, !41, i64 8908, !41, i64 8910, !42, i64 8912, !42, i64 8916, !41, i64 8920, !41, i64 8922, !41, i64 8924, !41, i64 8926, !41, i64 8928, !41, i64 8930, !41, i64 8932, !41, i64 8934, !41, i64 8936, !41, i64 8938, !36, i64 8940, !36, i64 8941, !36, i64 8942, !36, i64 8943, !41, i64 8944, !41, i64 8946, !41, i64 8948, !41, i64 8950, !41, i64 8952, !41, i64 8954, !46, i64 8956, !46, i64 8960, !42, i64 8964, !41, i64 8968, !41, i64 8970, !46, i64 8972, !41, i64 8976, !41, i64 8978, !41, i64 8980, !41, i64 8982, !68, i64 8984, !36, i64 9760, !36, i64 9772, !41, i64 9788, !36, i64 9790, !36, i64 9791, !36, i64 9792, !36, i64 9872, !42, i64 10896, !42, i64 10900, !46, i64 10904, !46, i64 10908, !42, i64 10912, !41, i64 10916, !41, i64 10918, !41, i64 10920, !41, i64 10922, !41, i64 10924, !41, i64 10926, !69, i64 10928}
!68 = !{!"ColorBand", !41, i64 0, !41, i64 2, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !36, i64 8}
!69 = !{!"WalkNavigation", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12, !46, i64 16, !46, i64 20, !41, i64 24, !36, i64 26}
!70 = !{!71, !41, i64 104}
!71 = !{!"wmWindow", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !36, i64 40, !41, i64 104, !41, i64 106, !41, i64 108, !41, i64 110, !41, i64 112, !41, i64 114, !41, i64 116, !41, i64 118, !41, i64 120, !41, i64 122, !41, i64 124, !41, i64 126, !42, i64 128, !41, i64 132, !41, i64 134, !35, i64 136, !35, i64 144, !35, i64 152, !42, i64 160, !42, i64 164, !35, i64 168, !43, i64 176, !43, i64 192, !43, i64 208, !43, i64 224, !43, i64 240}
!72 = !{!52, !42, i64 0}
!73 = !{!71, !41, i64 106}
!74 = !{!52, !42, i64 8}
!75 = !{!52, !42, i64 4}
!76 = !{!52, !42, i64 12}
!77 = !{!78, !36, i64 72}
!78 = !{!"ScrArea", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !52, i64 56, !36, i64 72, !36, i64 73, !41, i64 74, !41, i64 76, !41, i64 78, !41, i64 80, !41, i64 82, !41, i64 84, !36, i64 86, !36, i64 87, !35, i64 88, !43, i64 96, !43, i64 112, !43, i64 128, !43, i64 144}
!79 = !{!78, !35, i64 96}
!80 = !{!81, !42, i64 36}
!81 = !{!"SpaceImage", !35, i64 0, !35, i64 8, !43, i64 16, !42, i64 32, !42, i64 36, !35, i64 40, !82, i64 48, !35, i64 88, !83, i64 96, !84, i64 5360, !35, i64 10520, !36, i64 10528, !46, i64 10536, !46, i64 10540, !46, i64 10544, !46, i64 10548, !46, i64 10552, !36, i64 10556, !36, i64 10557, !41, i64 10558, !41, i64 10560, !41, i64 10562, !36, i64 10564, !36, i64 10565, !36, i64 10566, !36, i64 10567, !85, i64 10568}
!82 = !{!"ImageUser", !35, i64 0, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !36, i64 24, !36, i64 25, !36, i64 26, !36, i64 27, !41, i64 28, !41, i64 30, !41, i64 32, !41, i64 34, !42, i64 36}
!83 = !{!"Scopes", !42, i64 0, !42, i64 4, !42, i64 8, !46, i64 12, !42, i64 16, !46, i64 20, !46, i64 24, !42, i64 28, !46, i64 32, !42, i64 36, !36, i64 40, !84, i64 64, !35, i64 5224, !35, i64 5232, !35, i64 5240, !35, i64 5248, !42, i64 5256, !42, i64 5260}
!84 = !{!"Histogram", !42, i64 0, !42, i64 4, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 3080, !36, i64 4104, !46, i64 5128, !46, i64 5132, !41, i64 5136, !41, i64 5138, !42, i64 5140, !36, i64 5144}
!85 = !{!"MaskSpaceInfo", !35, i64 0, !36, i64 8, !36, i64 9, !36, i64 10, !36, i64 11}
!86 = !{!81, !35, i64 40}
!87 = !{!78, !35, i64 48}
!88 = !{!"render_view.c:find_area_showing_r_result"}
!89 = !{!71, !35, i64 24}
!90 = !{!91, !35, i64 184}
!91 = !{!"bScreen", !40, i64 0, !43, i64 120, !43, i64 136, !43, i64 152, !43, i64 168, !35, i64 184, !35, i64 192, !42, i64 200, !42, i64 204, !41, i64 208, !41, i64 210, !41, i64 212, !41, i64 214, !41, i64 216, !41, i64 218, !41, i64 220, !41, i64 222, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !35, i64 232, !35, i64 240}
!92 = !{!93, !41, i64 1250}
!93 = !{!"Image", !40, i64 0, !36, i64 120, !35, i64 1144, !35, i64 1152, !35, i64 1160, !35, i64 1168, !36, i64 1176, !41, i64 1240, !41, i64 1242, !41, i64 1244, !41, i64 1246, !41, i64 1248, !41, i64 1250, !42, i64 1252, !41, i64 1256, !41, i64 1258, !41, i64 1260, !41, i64 1262, !41, i64 1264, !41, i64 1266, !42, i64 1268, !35, i64 1272, !35, i64 1280, !35, i64 1288, !46, i64 1296, !42, i64 1300, !41, i64 1304, !41, i64 1306, !42, i64 1308, !42, i64 1312, !36, i64 1316, !36, i64 1317, !41, i64 1318, !36, i64 1320, !46, i64 1336, !46, i64 1340, !62, i64 1344, !36, i64 1408, !36, i64 1409, !36, i64 1416}
!94 = distinct !{!94, !95}
!95 = !{!"llvm.loop.mustprogress"}
!96 = distinct !{!96, !95}
!97 = !{!"render_view.c:find_area_image_empty"}
!98 = distinct !{!98, !95}
!99 = !{!"render_view.c:biggest_non_image_area"}
!100 = !{!78, !41, i64 74}
!101 = !{!78, !41, i64 76}
!102 = distinct !{!102, !95}
!103 = !{!104, !35, i64 0}
!104 = !{!"wmOperatorType", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !35, i64 88, !35, i64 96, !35, i64 104, !43, i64 112, !35, i64 128, !35, i64 136, !35, i64 144, !105, i64 152, !41, i64 184}
!105 = !{!"ExtensionRNA", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24}
!106 = !{!104, !35, i64 24}
!107 = !{!104, !35, i64 8}
!108 = !{!104, !35, i64 32}
!109 = !{!104, !35, i64 72}
!110 = !{!"render_view.c:render_view_cancel_exec"}
!111 = !{!91, !41, i64 210}
!112 = !{!104, !35, i64 48}
!113 = !{!"render_view.c:render_view_show_invoke"}
!114 = !{!91, !35, i64 152}
!115 = distinct !{!115, !95}
!116 = !{!117, !36, i64 2090}
!117 = !{!"Global", !35, i64 0, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 2057, !36, i64 2058, !43, i64 2064, !36, i64 2080, !36, i64 2081, !36, i64 2082, !41, i64 2084, !41, i64 2086, !41, i64 2088, !36, i64 2090, !41, i64 2092, !42, i64 2096, !42, i64 2100, !36, i64 2104, !42, i64 2108, !42, i64 2112, !36, i64 2116}
!118 = !{!81, !35, i64 0}
!119 = !{!120, !42, i64 32}
!120 = !{!"SpaceLink", !35, i64 0, !35, i64 8, !43, i64 16, !42, i64 32, !46, i64 36, !36, i64 40}
!121 = !{!120, !35, i64 0}
!122 = !{!123, !42, i64 20}
!123 = !{!"wmEvent", !35, i64 0, !35, i64 8, !41, i64 16, !41, i64 18, !42, i64 20, !42, i64 24, !36, i64 28, !36, i64 36, !36, i64 42, !36, i64 43, !41, i64 44, !41, i64 46, !42, i64 48, !42, i64 52, !124, i64 56, !42, i64 64, !42, i64 68, !41, i64 72, !41, i64 74, !41, i64 76, !41, i64 78, !41, i64 80, !41, i64 82, !35, i64 88, !35, i64 96, !41, i64 104, !41, i64 106, !42, i64 108, !35, i64 112}
!124 = !{!"double", !36, i64 0}
!125 = !{!123, !42, i64 24}
