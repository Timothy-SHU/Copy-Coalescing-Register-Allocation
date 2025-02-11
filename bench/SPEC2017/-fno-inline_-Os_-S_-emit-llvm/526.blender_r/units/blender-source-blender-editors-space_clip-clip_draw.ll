; ModuleID = 'blender/source/blender/editors/space_clip/clip_draw.c'
source_filename = "blender/source/blender/editors/space_clip/clip_draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.SpaceClip = type { ptr, ptr, %struct.ListBase, i32, float, float, float, float, float, %struct.MovieClipUser, ptr, %struct.MovieClipScopes, i32, i16, i16, i32, [2 x float], float, float, i32, [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i32, i32, [2 x float], %struct.MaskSpaceInfo }
%struct.MovieClipUser = type { i32, i16, i16 }
%struct.MovieClipScopes = type { i16, i16, i32, i32, i32, %struct.MovieTrackingMarker, ptr, ptr, [2 x float], i16, i16, i32, ptr, ptr, [2 x float] }
%struct.MovieTrackingMarker = type { [2 x float], [4 x [2 x float]], [2 x float], [2 x float], i32, i32 }
%struct.MaskSpaceInfo = type { ptr, i8, i8, i8, [5 x i8] }
%struct.MovieClip = type { %struct.ID, ptr, [1024 x i8], i32, i32, [2 x i32], float, float, ptr, ptr, ptr, %struct.MovieTracking, ptr, %struct.MovieClipProxy, i32, i32, i32, i32, %struct.ColorManagedColorspaceSettings }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.MovieTracking = type { %struct.MovieTrackingSettings, %struct.MovieTrackingCamera, %struct.ListBase, %struct.ListBase, %struct.MovieTrackingReconstruction, %struct.MovieTrackingStabilization, ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.MovieTrackingDopesheet }
%struct.MovieTrackingSettings = type { i32, i16, i16, float, i16, i16, i16, i16, i16, i16, float, i16, i16, i32, i32, i32, i16, i16, float, i32, i32, float, float, i32 }
%struct.MovieTrackingCamera = type { ptr, i16, i16, float, float, float, i16, i16, [2 x float], float, float, float, float, float }
%struct.MovieTrackingReconstruction = type { i32, float, i32, i32, ptr }
%struct.MovieTrackingStabilization = type { i32, i32, i32, float, ptr, float, float, float, i32, i32, float }
%struct.MovieTrackingDopesheet = type { i32, i16, i16, %struct.ListBase, %struct.ListBase, i32, i32 }
%struct.MovieClipProxy = type { [768 x i8], i16, i16, i16, i16 }
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.DDSData = type { i32, i32, ptr, i32 }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.MovieTrackingPlaneTrack = type { ptr, ptr, [64 x i8], ptr, i32, i32, ptr, i32, i32, ptr, float, i32 }
%struct.MovieTrackingTrack = type { ptr, ptr, [64 x i8], [2 x float], [2 x float], [2 x float], [2 x float], [2 x float], i32, i32, ptr, [3 x float], float, i32, i32, i32, [3 x float], i16, i16, i16, i16, i32, float, ptr, float, float }
%struct.bGPdata = type { %struct.ID, %struct.ListBase, i32, i16, i16, ptr }
%struct.bGPDlayer = type { ptr, ptr, %struct.ListBase, ptr, i32, i16, i16, [4 x float], [128 x i8] }
%struct.bGPDframe = type { ptr, ptr, %struct.ListBase, i32, i32 }
%struct.bGPDstroke = type { ptr, ptr, ptr, ptr, i32, i16, i16, double }
%struct.bGPDspoint = type { float, float, float, float, float }
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
%struct.MovieReconstructedCamera = type { i32, float, [4 x [4 x float]] }
%struct.MovieTrackingObject = type { ptr, ptr, [64 x i8], i32, float, %struct.ListBase, %struct.ListBase, %struct.MovieTrackingReconstruction, i32, i32 }
%struct.uiStyle = type { ptr, ptr, [64 x i8], %struct.uiFontStyle, %struct.uiFontStyle, %struct.uiFontStyle, %struct.uiFontStyle, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.uiFontStyle = type { i16, i16, i16, [6 x i8], i16, i16, i16, i16, i16, i16, float, float }
%struct.Image = type { %struct.ID, [1024 x i8], ptr, ptr, ptr, ptr, [8 x ptr], i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, ptr, ptr, ptr, float, i32, i16, i16, i32, i32, i8, i8, i16, [4 x float], float, float, %struct.ColorManagedColorspaceSettings, i8, [7 x i8], [8 x %struct.RenderSlot] }
%struct.RenderSlot = type { [64 x i8] }
%struct.MovieTrackingPlaneMarker = type { [4 x [2 x float]], i32, i32 }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [32 x i8] c"draw_tracking_tracks marker_pos\00", align 1
@U = external local_unnamed_addr global %struct.UserDef, align 8
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@__const.draw_plane_marker_image.frame_corners = private unnamed_addr constant [4 x [2 x float]] [[2 x float] zeroinitializer, [2 x float] [float 1.000000e+00, float 0.000000e+00], [2 x float] [float 1.000000e+00, float 1.000000e+00], [2 x float] [float 0.000000e+00, float 1.000000e+00]], align 16
@.str.1 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"estimated\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"keyframed\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"Average error: %.3f\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"locked\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"Locked\00", align 1
@__const.draw_movieclip_notes.fill_color = private unnamed_addr constant [4 x float] [float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0x3FE3333340000000], align 16

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @clip_draw_main(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca [4 x [4 x float]], align 16
  %9 = alloca [4 x [4 x float]], align 16
  %10 = alloca [2 x float], align 4
  %11 = tail call ptr @ED_space_clip_get_clip(ptr noundef %1) #15
  %12 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  call void @ED_space_clip_get_size(ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5) #15
  call void @ED_space_clip_get_zoom(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %6, ptr noundef nonnull %7) #15
  %13 = icmp eq ptr %11, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load float, ptr %6, align 4, !tbaa !5
  %16 = load float, ptr %7, align 4, !tbaa !5
  call void @ED_region_grid_draw(ptr noundef %2, float noundef %15, float noundef %16) #15
  br label %103

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.SpaceClip, ptr %1, i64 0, i32 12
  %19 = load i32, ptr %18, align 8, !tbaa !9
  %20 = and i32 %19, 1024
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %55, label %22

22:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #16
  %23 = getelementptr inbounds %struct.SpaceClip, ptr %1, i64 0, i32 16
  %24 = getelementptr inbounds %struct.SpaceClip, ptr %1, i64 0, i32 17
  %25 = getelementptr inbounds %struct.SpaceClip, ptr %1, i64 0, i32 18
  %26 = call ptr @ED_space_clip_get_stable_buffer(ptr noundef nonnull %1, ptr noundef nonnull %23, ptr noundef nonnull %24, ptr noundef nonnull %25) #15
  %27 = icmp eq ptr %26, null
  br i1 %27, label %54, label %28

28:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #16
  %29 = getelementptr inbounds %struct.MovieClip, ptr %11, i64 0, i32 11, i32 1, i32 4
  %30 = load float, ptr %29, align 8, !tbaa !19
  %31 = load i32, ptr %4, align 4, !tbaa !30
  %32 = getelementptr inbounds %struct.ImBuf, ptr %26, i64 0, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !31
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %28
  %36 = sitofp i32 %31 to float
  %37 = sitofp i32 %33 to float
  %38 = fdiv float %36, %37
  call fastcc void @mul_v2_v2fl(ptr noundef nonnull %10, ptr noundef nonnull %23, float noundef %38) #17
  br label %40

39:                                               ; preds = %28
  call fastcc void @copy_v2_v2(ptr noundef nonnull %10, ptr noundef nonnull %23) #17
  br label %40

40:                                               ; preds = %39, %35
  %41 = load i32, ptr %5, align 4, !tbaa !30
  %42 = load float, ptr %24, align 4, !tbaa !35
  %43 = load float, ptr %25, align 8, !tbaa !36
  %44 = getelementptr inbounds %struct.SpaceClip, ptr %1, i64 0, i32 20
  call void @BKE_tracking_stabilization_data_to_mat4(i32 noundef %31, i32 noundef %41, float noundef %30, ptr noundef nonnull %10, float noundef %42, float noundef %43, ptr noundef nonnull %44) #15
  call void @unit_m4(ptr noundef nonnull %8) #15
  %45 = load i32, ptr %4, align 4, !tbaa !30
  %46 = sitofp i32 %45 to float
  %47 = fdiv float 1.000000e+00, %46
  store float %47, ptr %8, align 16, !tbaa !5
  %48 = load i32, ptr %5, align 4, !tbaa !30
  %49 = sitofp i32 %48 to float
  %50 = fdiv float 1.000000e+00, %49
  %51 = getelementptr inbounds [4 x [4 x float]], ptr %8, i64 0, i64 1, i64 1
  store float %50, ptr %51, align 4, !tbaa !5
  %52 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %9, ptr noundef nonnull %8) #15
  %53 = getelementptr inbounds %struct.SpaceClip, ptr %1, i64 0, i32 21
  call void @_va_mul_m4_series_4(ptr noundef nonnull %53, ptr noundef nonnull %8, ptr noundef nonnull %44, ptr noundef nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #16
  br label %54

54:                                               ; preds = %40, %22
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #16
  br label %64

55:                                               ; preds = %17
  %56 = and i32 %19, 64
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %74

58:                                               ; preds = %55
  %59 = call ptr @ED_space_clip_get_buffer(ptr noundef nonnull %1) #15
  %60 = getelementptr inbounds %struct.SpaceClip, ptr %1, i64 0, i32 16
  call fastcc void @zero_v2(ptr noundef nonnull %60) #17
  %61 = getelementptr inbounds %struct.SpaceClip, ptr %1, i64 0, i32 17
  store float 1.000000e+00, ptr %61, align 4, !tbaa !35
  %62 = getelementptr inbounds %struct.SpaceClip, ptr %1, i64 0, i32 20
  call void @unit_m4(ptr noundef nonnull %62) #15
  %63 = getelementptr inbounds %struct.SpaceClip, ptr %1, i64 0, i32 21
  call void @unit_m4(ptr noundef nonnull %63) #15
  br label %64

64:                                               ; preds = %58, %54
  %65 = phi ptr [ %26, %54 ], [ %59, %58 ]
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = load i32, ptr %18, align 8, !tbaa !9
  br label %74

69:                                               ; preds = %64
  %70 = load i32, ptr %4, align 4, !tbaa !30
  %71 = load i32, ptr %5, align 4, !tbaa !30
  %72 = load float, ptr %6, align 4, !tbaa !5
  %73 = load float, ptr %7, align 4, !tbaa !5
  call fastcc void @draw_movieclip_buffer(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %65, i32 noundef %70, i32 noundef %71, float noundef %72, float noundef %73) #17
  call void @IMB_freeImBuf(ptr noundef nonnull %65) #15
  br label %86

74:                                               ; preds = %67, %55
  %75 = phi i32 [ %68, %67 ], [ %19, %55 ]
  %76 = and i32 %75, 64
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %74
  %79 = load i32, ptr %4, align 4, !tbaa !30
  %80 = load i32, ptr %5, align 4, !tbaa !30
  %81 = load float, ptr %6, align 4, !tbaa !5
  %82 = load float, ptr %7, align 4, !tbaa !5
  call fastcc void @draw_movieclip_muted(ptr noundef %2, i32 noundef %79, i32 noundef %80, float noundef %81, float noundef %82) #17
  br label %86

83:                                               ; preds = %74
  %84 = load float, ptr %6, align 4, !tbaa !5
  %85 = load float, ptr %7, align 4, !tbaa !5
  call void @ED_region_grid_draw(ptr noundef %2, float noundef %84, float noundef %85) #15
  br label %86

86:                                               ; preds = %78, %83, %69
  %87 = load i32, ptr %4, align 4, !tbaa !30
  %88 = icmp ne i32 %87, 0
  %89 = load i32, ptr %5, align 4
  %90 = icmp ne i32 %89, 0
  %91 = select i1 %88, i1 %90, i1 false
  br i1 %91, label %92, label %103

92:                                               ; preds = %86
  %93 = load float, ptr %6, align 4, !tbaa !5
  %94 = load float, ptr %7, align 4, !tbaa !5
  call fastcc void @draw_stabilization_border(ptr noundef nonnull %1, ptr noundef %2, i32 noundef %87, i32 noundef %89, float noundef %93, float noundef %94) #17
  %95 = load i32, ptr %4, align 4, !tbaa !30
  %96 = load i32, ptr %5, align 4, !tbaa !30
  %97 = load float, ptr %6, align 4, !tbaa !5
  %98 = load float, ptr %7, align 4, !tbaa !5
  call fastcc void @draw_tracking_tracks(ptr noundef nonnull %1, ptr noundef %12, ptr noundef %2, ptr noundef nonnull %11, i32 noundef %95, i32 noundef %96, float noundef %97, float noundef %98) #17
  %99 = load i32, ptr %4, align 4, !tbaa !30
  %100 = load i32, ptr %5, align 4, !tbaa !30
  %101 = load float, ptr %6, align 4, !tbaa !5
  %102 = load float, ptr %7, align 4, !tbaa !5
  call fastcc void @draw_distortion(ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %11, i32 noundef %99, i32 noundef %100, float noundef %101, float noundef %102) #17
  br label %103

103:                                              ; preds = %86, %92, %14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @ED_space_clip_get_clip(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_space_clip_get_size(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_space_clip_get_zoom(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_grid_draw(ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_space_clip_get_stable_buffer(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v2_v2fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #3 {
  %4 = load float, ptr %1, align 4, !tbaa !5
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !5
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !5
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = load float, ptr %1, align 4, !tbaa !5
  store float %3, ptr %0, align 4, !tbaa !5
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !5
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !5
  ret void
}

; Function Attrs: optsize
declare void @BKE_tracking_stabilization_data_to_mat4(i32 noundef, i32 noundef, float noundef, ptr noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @unit_m4(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_va_mul_m4_series_4(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @ED_space_clip_get_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v2(ptr nocapture noundef writeonly %0) unnamed_addr #4 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_movieclip_buffer(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, float noundef %6, float noundef %7) unnamed_addr #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = tail call ptr @ED_space_clip_get_clip(ptr noundef %1) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #16
  %12 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2
  call void @UI_view2d_view_to_region(ptr noundef nonnull %12, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull %9, ptr noundef nonnull %10) #15
  %13 = getelementptr inbounds %struct.ImBuf, ptr %3, i64 0, i32 4
  %14 = load i8, ptr %13, align 8, !tbaa !37
  %15 = icmp eq i8 %14, 32
  br i1 %15, label %16, label %29

16:                                               ; preds = %8
  call void @glEnable(i32 noundef 3042) #15
  call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #15
  %17 = load i32, ptr %9, align 4, !tbaa !30
  %18 = sitofp i32 %17 to float
  %19 = load i32, ptr %10, align 4, !tbaa !30
  %20 = sitofp i32 %19 to float
  %21 = getelementptr inbounds %struct.ImBuf, ptr %3, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !31
  %23 = sitofp i32 %22 to float
  %24 = call float @llvm.fmuladd.f32(float %6, float %23, float %18)
  %25 = getelementptr inbounds %struct.ImBuf, ptr %3, i64 0, i32 3
  %26 = load i32, ptr %25, align 4, !tbaa !38
  %27 = sitofp i32 %26 to float
  %28 = call float @llvm.fmuladd.f32(float %7, float %27, float %20)
  call void @fdrawcheckerboard(float noundef %18, float noundef %20, float noundef %24, float noundef %28) #15
  br label %29

29:                                               ; preds = %16, %8
  %30 = getelementptr inbounds %struct.MovieClip, ptr %11, i64 0, i32 14
  %31 = load i32, ptr %30, align 8, !tbaa !39
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.SpaceClip, ptr %1, i64 0, i32 9, i32 1
  %36 = load i16, ptr %35, align 4, !tbaa !40
  %37 = and i16 %36, -5
  %38 = icmp eq i16 %37, 0
  %39 = select i1 %38, i32 9728, i32 9729
  br label %40

40:                                               ; preds = %29, %34
  %41 = phi i32 [ %39, %34 ], [ 9728, %29 ]
  %42 = sitofp i32 %4 to float
  %43 = fmul float %42, %6
  %44 = getelementptr inbounds %struct.ImBuf, ptr %3, i64 0, i32 2
  %45 = load i32, ptr %44, align 8, !tbaa !31
  %46 = sitofp i32 %45 to float
  %47 = fdiv float %43, %46
  %48 = sitofp i32 %5 to float
  %49 = fmul float %48, %7
  %50 = getelementptr inbounds %struct.ImBuf, ptr %3, i64 0, i32 3
  %51 = load i32, ptr %50, align 4, !tbaa !38
  %52 = sitofp i32 %51 to float
  %53 = fdiv float %49, %52
  call void @glPixelZoom(float noundef %47, float noundef %53) #15
  %54 = load i32, ptr %9, align 4, !tbaa !30
  %55 = sitofp i32 %54 to float
  %56 = load i32, ptr %10, align 4, !tbaa !30
  %57 = sitofp i32 %56 to float
  call void @glaDrawImBuf_glsl_ctx(ptr noundef %0, ptr noundef nonnull %3, float noundef %55, float noundef %57, i32 noundef %41) #15
  call void @glPixelZoom(float noundef 1.000000e+00, float noundef 1.000000e+00) #15
  %58 = load i8, ptr %13, align 8, !tbaa !37
  %59 = icmp eq i8 %58, 32
  br i1 %59, label %60, label %61

60:                                               ; preds = %40
  call void @glDisable(i32 noundef 3042) #15
  br label %61

61:                                               ; preds = %60, %40
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #16
  ret void
}

; Function Attrs: optsize
declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_movieclip_muted(ptr noundef %0, i32 noundef %1, i32 noundef %2, float noundef %3, float noundef %4) unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  %8 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 2
  call void @UI_view2d_view_to_region(ptr noundef nonnull %8, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull %6, ptr noundef nonnull %7) #15
  call void @glColor3f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #15
  %9 = load i32, ptr %6, align 4, !tbaa !30
  %10 = sitofp i32 %9 to float
  %11 = load i32, ptr %7, align 4, !tbaa !30
  %12 = sitofp i32 %11 to float
  %13 = sitofp i32 %1 to float
  %14 = call float @llvm.fmuladd.f32(float %3, float %13, float %10)
  %15 = sitofp i32 %2 to float
  %16 = call float @llvm.fmuladd.f32(float %4, float %15, float %12)
  call void @glRectf(float noundef %10, float noundef %12, float noundef %14, float noundef %16) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_stabilization_border(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, float noundef %4, float noundef %5) unnamed_addr #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #16
  %9 = tail call ptr @ED_space_clip_get_clip(ptr noundef %0) #15
  %10 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  call void @UI_view2d_view_to_region(ptr noundef nonnull %10, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull %7, ptr noundef nonnull %8) #15
  %11 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 12
  %12 = load i32, ptr %11, align 8, !tbaa !9
  %13 = and i32 %12, 1024
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.MovieClip, ptr %9, i64 0, i32 11, i32 5
  %17 = load i32, ptr %16, align 8, !tbaa !41
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %15
  call void @glColor3f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #15
  call void @glLineStipple(i32 noundef 3, i16 noundef zeroext -21846) #15
  call void @glEnable(i32 noundef 2852) #15
  call void @glEnable(i32 noundef 3058) #15
  call void @glLogicOp(i32 noundef 5384) #15
  call void @glPushMatrix() #15
  %21 = load i32, ptr %7, align 4, !tbaa !30
  %22 = sitofp i32 %21 to float
  %23 = load i32, ptr %8, align 4, !tbaa !30
  %24 = sitofp i32 %23 to float
  call void @glTranslatef(float noundef %22, float noundef %24, float noundef 0.000000e+00) #15
  call void @glScalef(float noundef %4, float noundef %5, float noundef 1.000000e+00) #15
  %25 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 20
  call void @glMultMatrixf(ptr noundef nonnull %25) #15
  call void @glBegin(i32 noundef 2) #15
  call void @glVertex2f(float noundef 0.000000e+00, float noundef 0.000000e+00) #15
  %26 = sitofp i32 %2 to float
  call void @glVertex2f(float noundef %26, float noundef 0.000000e+00) #15
  %27 = sitofp i32 %3 to float
  call void @glVertex2f(float noundef %26, float noundef %27) #15
  call void @glVertex2f(float noundef 0.000000e+00, float noundef %27) #15
  call void @glEnd() #15
  call void @glPopMatrix() #15
  call void @glDisable(i32 noundef 3058) #15
  call void @glDisable(i32 noundef 2852) #15
  br label %28

28:                                               ; preds = %20, %15, %6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_tracking_tracks(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, float noundef %6, float noundef %7) unnamed_addr #0 {
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca [2 x float], align 4
  %12 = alloca [4 x float], align 16
  %13 = alloca [4 x float], align 16
  %14 = alloca [4 x [4 x float]], align 16
  %15 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #16
  %16 = getelementptr inbounds %struct.MovieClip, ptr %3, i64 0, i32 11
  %17 = tail call ptr @BKE_tracking_get_active_tracks(ptr noundef nonnull %16) #15
  %18 = tail call ptr @BKE_tracking_get_active_plane_tracks(ptr noundef nonnull %16) #15
  %19 = tail call i32 @ED_space_clip_get_clip_frame_number(ptr noundef %0) #15
  %20 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 9, i32 2
  %21 = load i16, ptr %20, align 2, !tbaa !42
  %22 = and i16 %21, 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #16
  %23 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2
  call void @UI_view2d_view_to_region_fl(ptr noundef nonnull %23, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull %9, ptr noundef nonnull %10) #15
  call void @glPushMatrix() #15
  %24 = load float, ptr %9, align 4, !tbaa !5
  %25 = load float, ptr %10, align 4, !tbaa !5
  call void @glTranslatef(float noundef %24, float noundef %25, float noundef 0.000000e+00) #15
  call void @glPushMatrix() #15
  call void @glScalef(float noundef %6, float noundef %7, float noundef 0.000000e+00) #15
  %26 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 20
  call void @glMultMatrixf(ptr noundef nonnull %26) #15
  %27 = sitofp i32 %4 to float
  %28 = sitofp i32 %5 to float
  call void @glScalef(float noundef %27, float noundef %28, float noundef 0.000000e+00) #15
  %29 = call ptr @BKE_tracking_track_get_active(ptr noundef nonnull %16) #15
  %30 = call ptr @BKE_tracking_plane_track_get_active(ptr noundef nonnull %16) #15
  %31 = load ptr, ptr %18, align 8, !tbaa !43
  %32 = icmp eq ptr %31, null
  br i1 %32, label %45, label %33

33:                                               ; preds = %8, %42
  %34 = phi ptr [ %43, %42 ], [ %31, %8 ]
  %35 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %34, i64 0, i32 8
  %36 = load i32, ptr %35, align 4, !tbaa !44
  %37 = and i32 %36, 2
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = icmp eq ptr %34, %30
  %41 = zext i1 %40 to i8
  call fastcc void @draw_plane_track(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %34, i32 noundef %19, i8 noundef zeroext %41, i32 noundef %4, i32 noundef %5) #17
  br label %42

42:                                               ; preds = %33, %39
  %43 = load ptr, ptr %34, align 8, !tbaa !43
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %33, !llvm.loop !46

45:                                               ; preds = %42, %8
  %46 = load i16, ptr %20, align 2, !tbaa !42
  %47 = and i16 %46, 1
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %127, label %49

49:                                               ; preds = %45
  %50 = load ptr, ptr %17, align 8, !tbaa !43
  %51 = icmp eq ptr %50, null
  br i1 %51, label %131, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 12
  %54 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 10
  br label %55

55:                                               ; preds = %52, %79
  %56 = phi ptr [ %50, %52 ], [ %81, %79 ]
  %57 = phi i32 [ 0, %52 ], [ %80, %79 ]
  %58 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %56, i64 0, i32 13
  %59 = load i32, ptr %58, align 8, !tbaa !48
  %60 = and i32 %59, 32
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %79

62:                                               ; preds = %55
  %63 = call ptr @BKE_tracking_marker_get(ptr noundef nonnull %56, i32 noundef %19) #15
  %64 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %63, i64 0, i32 5
  %65 = load i32, ptr %64, align 4, !tbaa !50
  %66 = and i32 %65, 1
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %77, label %68

68:                                               ; preds = %62
  %69 = load i32, ptr %53, align 8, !tbaa !9
  %70 = and i32 %69, 128
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %68
  %73 = load ptr, ptr %54, align 8, !tbaa !51
  %74 = getelementptr inbounds %struct.MovieClip, ptr %73, i64 0, i32 11, i32 6
  %75 = load ptr, ptr %74, align 8, !tbaa !52
  %76 = icmp eq ptr %75, %56
  br i1 %76, label %77, label %79

77:                                               ; preds = %72, %68, %62
  %78 = add nsw i32 %57, 1
  br label %79

79:                                               ; preds = %72, %77, %55
  %80 = phi i32 [ %78, %77 ], [ %57, %72 ], [ %57, %55 ]
  %81 = load ptr, ptr %56, align 8, !tbaa !43
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %55, !llvm.loop !53

83:                                               ; preds = %79
  %84 = icmp eq i32 %80, 0
  br i1 %84, label %127, label %85

85:                                               ; preds = %83
  %86 = load ptr, ptr @MEM_callocN, align 8, !tbaa !43
  %87 = sext i32 %80 to i64
  %88 = shl nsw i64 %87, 3
  %89 = call ptr %86(i64 noundef %88, ptr noundef nonnull @.str) #15
  %90 = load ptr, ptr %17, align 8, !tbaa !43
  %91 = icmp eq ptr %90, null
  br i1 %91, label %131, label %92

92:                                               ; preds = %85
  %93 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 12
  %94 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 10
  br label %95

95:                                               ; preds = %92, %122
  %96 = phi ptr [ %90, %92 ], [ %125, %122 ]
  %97 = phi ptr [ null, %92 ], [ %124, %122 ]
  %98 = phi ptr [ %89, %92 ], [ %123, %122 ]
  %99 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %96, i64 0, i32 13
  %100 = load i32, ptr %99, align 8, !tbaa !48
  %101 = and i32 %100, 32
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %122

103:                                              ; preds = %95
  %104 = call ptr @BKE_tracking_marker_get(ptr noundef nonnull %96, i32 noundef %19) #15
  %105 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %104, i64 0, i32 5
  %106 = load i32, ptr %105, align 4, !tbaa !50
  %107 = and i32 %106, 1
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %118, label %109

109:                                              ; preds = %103
  %110 = load i32, ptr %93, align 8, !tbaa !9
  %111 = and i32 %110, 128
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %118, label %113

113:                                              ; preds = %109
  %114 = load ptr, ptr %94, align 8, !tbaa !51
  %115 = getelementptr inbounds %struct.MovieClip, ptr %114, i64 0, i32 11, i32 6
  %116 = load ptr, ptr %115, align 8, !tbaa !52
  %117 = icmp eq ptr %116, %96
  br i1 %117, label %118, label %122

118:                                              ; preds = %113, %109, %103
  call void @ED_clip_point_undistorted_pos(ptr noundef %0, ptr noundef nonnull %104, ptr noundef %98) #15
  %119 = icmp eq ptr %96, %29
  %120 = select i1 %119, ptr %98, ptr %97
  %121 = getelementptr inbounds float, ptr %98, i64 2
  br label %122

122:                                              ; preds = %113, %118, %95
  %123 = phi ptr [ %121, %118 ], [ %98, %113 ], [ %98, %95 ]
  %124 = phi ptr [ %120, %118 ], [ %97, %113 ], [ %97, %95 ]
  %125 = load ptr, ptr %96, align 8, !tbaa !43
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %95, !llvm.loop !54

127:                                              ; preds = %122, %45, %83
  %128 = phi ptr [ null, %83 ], [ null, %45 ], [ %124, %122 ]
  %129 = phi ptr [ null, %83 ], [ null, %45 ], [ %89, %122 ]
  %130 = load ptr, ptr %17, align 8, !tbaa !43
  br label %131

131:                                              ; preds = %49, %127, %85
  %132 = phi ptr [ %130, %127 ], [ null, %85 ], [ null, %49 ]
  %133 = phi ptr [ %128, %127 ], [ null, %85 ], [ null, %49 ]
  %134 = phi ptr [ %129, %127 ], [ %89, %85 ], [ null, %49 ]
  %135 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 12
  %136 = load i32, ptr %135, align 8, !tbaa !9
  %137 = and i32 %136, 16
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %153, label %139

139:                                              ; preds = %131
  %140 = icmp eq ptr %132, null
  br i1 %140, label %229, label %141

141:                                              ; preds = %139, %148
  %142 = phi ptr [ %149, %148 ], [ %132, %139 ]
  %143 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %142, i64 0, i32 13
  %144 = load i32, ptr %143, align 8, !tbaa !48
  %145 = and i32 %144, 32
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %141
  call fastcc void @draw_track_path(ptr noundef %0, ptr noundef nonnull %142) #17
  br label %148

148:                                              ; preds = %147, %141
  %149 = load ptr, ptr %142, align 8, !tbaa !43
  %150 = icmp eq ptr %149, null
  br i1 %150, label %151, label %141, !llvm.loop !55

151:                                              ; preds = %148
  %152 = load ptr, ptr %17, align 8, !tbaa !43
  br label %153

153:                                              ; preds = %151, %131
  %154 = phi ptr [ %152, %151 ], [ %132, %131 ]
  %155 = icmp eq ptr %154, null
  br i1 %155, label %229, label %156

156:                                              ; preds = %153
  %157 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 10
  br label %163

158:                                              ; preds = %190
  %159 = load ptr, ptr %17, align 8, !tbaa !43
  %160 = icmp eq ptr %159, null
  br i1 %160, label %229, label %161

161:                                              ; preds = %158
  %162 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 10
  br label %194

163:                                              ; preds = %156, %190
  %164 = phi ptr [ %154, %156 ], [ %192, %190 ]
  %165 = phi ptr [ %134, %156 ], [ %191, %190 ]
  %166 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %164, i64 0, i32 13
  %167 = load i32, ptr %166, align 8, !tbaa !48
  %168 = and i32 %167, 32
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %190

170:                                              ; preds = %163
  %171 = call ptr @BKE_tracking_marker_get(ptr noundef nonnull %164, i32 noundef %19) #15
  %172 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %171, i64 0, i32 5
  %173 = load i32, ptr %172, align 4, !tbaa !50
  %174 = and i32 %173, 1
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %185, label %176

176:                                              ; preds = %170
  %177 = load i32, ptr %135, align 8, !tbaa !9
  %178 = and i32 %177, 128
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %185, label %180

180:                                              ; preds = %176
  %181 = load ptr, ptr %157, align 8, !tbaa !51
  %182 = getelementptr inbounds %struct.MovieClip, ptr %181, i64 0, i32 11, i32 6
  %183 = load ptr, ptr %182, align 8, !tbaa !52
  %184 = icmp eq ptr %183, %164
  br i1 %184, label %185, label %190

185:                                              ; preds = %180, %176, %170
  %186 = icmp eq ptr %165, null
  %187 = select i1 %186, ptr %171, ptr %165
  call fastcc void @copy_v2_v2(ptr noundef nonnull %11, ptr noundef %187) #17
  call fastcc void @draw_marker_outline(ptr noundef %0, ptr noundef nonnull %164, ptr noundef nonnull %171, ptr noundef nonnull %11, i32 noundef %4, i32 noundef %5) #17
  call fastcc void @draw_marker_areas(ptr noundef %0, ptr noundef nonnull %164, ptr noundef nonnull %171, ptr noundef nonnull %11, i32 noundef %4, i32 noundef %5, i32 noundef 0, i32 noundef 0) #17
  call fastcc void @draw_marker_slide_zones(ptr noundef %0, ptr noundef nonnull %164, ptr noundef nonnull %171, ptr noundef nonnull %11, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef %4, i32 noundef %5) #17
  call fastcc void @draw_marker_slide_zones(ptr noundef %0, ptr noundef nonnull %164, ptr noundef nonnull %171, ptr noundef nonnull %11, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %4, i32 noundef %5) #17
  %188 = getelementptr inbounds float, ptr %165, i64 2
  %189 = select i1 %186, ptr null, ptr %188
  br label %190

190:                                              ; preds = %185, %180, %163
  %191 = phi ptr [ %165, %180 ], [ %165, %163 ], [ %189, %185 ]
  %192 = load ptr, ptr %164, align 8, !tbaa !43
  %193 = icmp eq ptr %192, null
  br i1 %193, label %158, label %163, !llvm.loop !56

194:                                              ; preds = %161, %225
  %195 = phi ptr [ %159, %161 ], [ %227, %225 ]
  %196 = phi ptr [ %134, %161 ], [ %226, %225 ]
  %197 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %195, i64 0, i32 13
  %198 = load i32, ptr %197, align 8, !tbaa !48
  %199 = and i32 %198, 32
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %225

201:                                              ; preds = %194
  %202 = icmp eq ptr %195, %29
  %203 = call ptr @BKE_tracking_marker_get(ptr noundef nonnull %195, i32 noundef %19) #15
  %204 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %203, i64 0, i32 5
  %205 = load i32, ptr %204, align 4, !tbaa !50
  %206 = and i32 %205, 1
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %217, label %208

208:                                              ; preds = %201
  %209 = load i32, ptr %135, align 8, !tbaa !9
  %210 = and i32 %209, 128
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %217, label %212

212:                                              ; preds = %208
  %213 = load ptr, ptr %162, align 8, !tbaa !51
  %214 = getelementptr inbounds %struct.MovieClip, ptr %213, i64 0, i32 11, i32 6
  %215 = load ptr, ptr %214, align 8, !tbaa !52
  %216 = icmp eq ptr %215, %195
  br i1 %216, label %217, label %225

217:                                              ; preds = %212, %208, %201
  br i1 %202, label %221, label %218

218:                                              ; preds = %217
  %219 = icmp eq ptr %196, null
  %220 = select i1 %219, ptr %203, ptr %196
  call fastcc void @copy_v2_v2(ptr noundef nonnull %11, ptr noundef %220) #17
  call fastcc void @draw_marker_areas(ptr noundef %0, ptr noundef nonnull %195, ptr noundef nonnull %203, ptr noundef nonnull %11, i32 noundef %4, i32 noundef %5, i32 noundef 0, i32 noundef 1) #17
  call fastcc void @draw_marker_slide_zones(ptr noundef %0, ptr noundef nonnull %195, ptr noundef nonnull %203, ptr noundef nonnull %11, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef %4, i32 noundef %5) #17
  br label %221

221:                                              ; preds = %218, %217
  %222 = icmp eq ptr %196, null
  %223 = getelementptr inbounds float, ptr %196, i64 2
  %224 = select i1 %222, ptr null, ptr %223
  br label %225

225:                                              ; preds = %221, %212, %194
  %226 = phi ptr [ %196, %194 ], [ %196, %212 ], [ %224, %221 ]
  %227 = load ptr, ptr %195, align 8, !tbaa !43
  %228 = icmp eq ptr %227, null
  br i1 %228, label %229, label %194, !llvm.loop !57

229:                                              ; preds = %225, %139, %153, %158
  %230 = icmp eq ptr %29, null
  br i1 %230, label %255, label %231

231:                                              ; preds = %229
  %232 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %29, i64 0, i32 13
  %233 = load i32, ptr %232, align 8, !tbaa !48
  %234 = and i32 %233, 32
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %255

236:                                              ; preds = %231
  %237 = call ptr @BKE_tracking_marker_get(ptr noundef nonnull %29, i32 noundef %19) #15
  %238 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %237, i64 0, i32 5
  %239 = load i32, ptr %238, align 4, !tbaa !50
  %240 = and i32 %239, 1
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %252, label %242

242:                                              ; preds = %236
  %243 = load i32, ptr %135, align 8, !tbaa !9
  %244 = and i32 %243, 128
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %252, label %246

246:                                              ; preds = %242
  %247 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 10
  %248 = load ptr, ptr %247, align 8, !tbaa !51
  %249 = getelementptr inbounds %struct.MovieClip, ptr %248, i64 0, i32 11, i32 6
  %250 = load ptr, ptr %249, align 8, !tbaa !52
  %251 = icmp eq ptr %250, %29
  br i1 %251, label %252, label %255

252:                                              ; preds = %246, %242, %236
  %253 = icmp eq ptr %133, null
  %254 = select i1 %253, ptr %237, ptr %133
  call fastcc void @copy_v2_v2(ptr noundef nonnull %11, ptr noundef %254) #17
  call fastcc void @draw_marker_areas(ptr noundef %0, ptr noundef nonnull %29, ptr noundef nonnull %237, ptr noundef nonnull %11, i32 noundef %4, i32 noundef %5, i32 noundef 1, i32 noundef 1) #17
  call fastcc void @draw_marker_slide_zones(ptr noundef %0, ptr noundef nonnull %29, ptr noundef nonnull %237, ptr noundef nonnull %11, i32 noundef 0, i32 noundef 1, i32 noundef 1, i32 noundef %4, i32 noundef %5) #17
  br label %255

255:                                              ; preds = %231, %252, %246, %229
  %256 = load i32, ptr %135, align 8, !tbaa !9
  %257 = and i32 %256, 32
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %349, label %259

259:                                              ; preds = %255
  %260 = call ptr @BKE_tracking_object_get_active(ptr noundef nonnull %16) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %14) #16
  call void @glEnable(i32 noundef 2832) #15
  call void @glPointSize(float noundef 3.000000e+00) #15
  %261 = getelementptr inbounds %struct.MovieClip, ptr %3, i64 0, i32 11, i32 1, i32 4
  %262 = load float, ptr %261, align 8, !tbaa !19
  %263 = fdiv float 1.000000e+00, %262
  call void @BKE_tracking_get_projection_matrix(ptr noundef nonnull %16, ptr noundef %260, i32 noundef %19, i32 noundef %4, i32 noundef %5, ptr noundef nonnull %14) #15
  %264 = load ptr, ptr %17, align 8, !tbaa !43
  %265 = icmp eq ptr %264, null
  br i1 %265, label %348, label %266

266:                                              ; preds = %259
  %267 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 10
  %268 = getelementptr inbounds [4 x float], ptr %13, i64 0, i64 3
  %269 = getelementptr inbounds [4 x float], ptr %12, i64 0, i64 3
  %270 = getelementptr inbounds [4 x float], ptr %12, i64 0, i64 1
  %271 = getelementptr inbounds [2 x float], ptr %15, i64 0, i64 1
  %272 = fmul float %263, %28
  %273 = getelementptr inbounds [4 x float], ptr %13, i64 0, i64 1
  %274 = icmp eq i16 %22, 0
  br label %275

275:                                              ; preds = %266, %345
  %276 = phi ptr [ %264, %266 ], [ %346, %345 ]
  %277 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %276, i64 0, i32 13
  %278 = load i32, ptr %277, align 8, !tbaa !48
  %279 = and i32 %278, 34
  %280 = icmp eq i32 %279, 2
  br i1 %280, label %281, label %345

281:                                              ; preds = %275
  %282 = call ptr @BKE_tracking_marker_get(ptr noundef nonnull %276, i32 noundef %19) #15
  %283 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %282, i64 0, i32 5
  %284 = load i32, ptr %283, align 4, !tbaa !50
  %285 = and i32 %284, 1
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %296, label %287

287:                                              ; preds = %281
  %288 = load i32, ptr %135, align 8, !tbaa !9
  %289 = and i32 %288, 128
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %296, label %291

291:                                              ; preds = %287
  %292 = load ptr, ptr %267, align 8, !tbaa !51
  %293 = getelementptr inbounds %struct.MovieClip, ptr %292, i64 0, i32 11, i32 6
  %294 = load ptr, ptr %293, align 8, !tbaa !52
  %295 = icmp eq ptr %294, %276
  br i1 %295, label %296, label %345

296:                                              ; preds = %291, %287, %281
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #16
  %297 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %276, i64 0, i32 11
  call fastcc void @copy_v3_v3(ptr noundef nonnull %13, ptr noundef nonnull %297) #17
  store float 1.000000e+00, ptr %268, align 4, !tbaa !5
  call void @mul_v4_m4v4(ptr noundef nonnull %12, ptr noundef nonnull %14, ptr noundef nonnull %13) #15
  %298 = load float, ptr %12, align 16, !tbaa !5
  %299 = load float, ptr %269, align 4, !tbaa !5
  %300 = fmul float %299, 2.000000e+00
  %301 = fdiv float %298, %300
  %302 = fadd float %301, 5.000000e-01
  %303 = fmul float %302, %27
  store float %303, ptr %12, align 16, !tbaa !5
  %304 = load float, ptr %270, align 4, !tbaa !5
  %305 = fdiv float %304, %300
  %306 = fadd float %305, 5.000000e-01
  %307 = fmul float %306, %28
  %308 = fmul float %263, %307
  store float %308, ptr %270, align 4, !tbaa !5
  call void @BKE_tracking_distort_v2(ptr noundef nonnull %16, ptr noundef nonnull %12, ptr noundef nonnull %15) #15
  %309 = load float, ptr %15, align 4, !tbaa !5
  %310 = fcmp ult float %309, 0.000000e+00
  %311 = load float, ptr %271, align 4
  %312 = fcmp ult float %311, 0.000000e+00
  %313 = select i1 %310, i1 true, i1 %312
  %314 = fcmp ugt float %309, %27
  %315 = or i1 %314, %313
  %316 = fcmp ugt float %311, %272
  %317 = select i1 %315, i1 true, i1 %316
  br i1 %317, label %344, label %318

318:                                              ; preds = %296
  %319 = load float, ptr %282, align 4, !tbaa !5
  %320 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %276, i64 0, i32 7
  %321 = load float, ptr %320, align 8, !tbaa !5
  %322 = fadd float %319, %321
  %323 = fmul float %322, %27
  store float %323, ptr %13, align 16, !tbaa !5
  %324 = getelementptr inbounds [2 x float], ptr %282, i64 0, i64 1
  %325 = load float, ptr %324, align 4, !tbaa !5
  %326 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %276, i64 0, i32 7, i64 1
  %327 = load float, ptr %326, align 4, !tbaa !5
  %328 = fadd float %325, %327
  %329 = fmul float %328, %28
  %330 = fmul float %263, %329
  store float %330, ptr %273, align 4, !tbaa !5
  call fastcc void @sub_v2_v2(ptr noundef nonnull %13, ptr noundef nonnull %15) #17
  %331 = call fastcc float @len_squared_v2(ptr noundef nonnull %13) #17
  %332 = fcmp olt float %331, 9.000000e+00
  br i1 %332, label %333, label %334

333:                                              ; preds = %318
  call void @glColor3f(float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00) #15
  br label %335

334:                                              ; preds = %318
  call void @glColor3f(float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #15
  br label %335

335:                                              ; preds = %334, %333
  call void @glBegin(i32 noundef 0) #15
  %336 = load float, ptr %15, align 4
  %337 = load float, ptr %12, align 16
  %338 = select i1 %274, float %336, float %337
  %339 = fdiv float %338, %27
  %340 = load float, ptr %271, align 4
  %341 = load float, ptr %270, align 4
  %342 = select i1 %274, float %340, float %341
  %343 = fdiv float %342, %272
  call void @glVertex3f(float noundef %339, float noundef %343, float noundef 0.000000e+00) #15
  call void @glEnd() #15
  br label %344

344:                                              ; preds = %335, %296
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #16
  br label %345

345:                                              ; preds = %291, %344, %275
  %346 = load ptr, ptr %276, align 8, !tbaa !43
  %347 = icmp eq ptr %346, null
  br i1 %347, label %348, label %275, !llvm.loop !58

348:                                              ; preds = %345, %259
  call void @glPointSize(float noundef 1.000000e+00) #15
  call void @glDisable(i32 noundef 2832) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #16
  br label %349

349:                                              ; preds = %348, %255
  call void @glPopMatrix() #15
  %350 = load i32, ptr %135, align 8, !tbaa !9
  %351 = and i32 %350, 256
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %391, label %353

353:                                              ; preds = %349
  %354 = load ptr, ptr %17, align 8, !tbaa !43
  %355 = icmp eq ptr %354, null
  br i1 %355, label %391, label %356

356:                                              ; preds = %353
  %357 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 10
  br label %358

358:                                              ; preds = %356, %387
  %359 = phi ptr [ %354, %356 ], [ %389, %387 ]
  %360 = phi ptr [ %134, %356 ], [ %388, %387 ]
  %361 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %359, i64 0, i32 13
  %362 = load i32, ptr %361, align 8, !tbaa !48
  %363 = and i32 %362, 32
  %364 = icmp eq i32 %363, 0
  br i1 %364, label %365, label %387

365:                                              ; preds = %358
  %366 = call ptr @BKE_tracking_marker_get(ptr noundef nonnull %359, i32 noundef %19) #15
  %367 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %366, i64 0, i32 5
  %368 = load i32, ptr %367, align 4, !tbaa !50
  %369 = and i32 %368, 1
  %370 = icmp eq i32 %369, 0
  br i1 %370, label %380, label %371

371:                                              ; preds = %365
  %372 = load i32, ptr %135, align 8, !tbaa !9
  %373 = and i32 %372, 128
  %374 = icmp eq i32 %373, 0
  br i1 %374, label %380, label %375

375:                                              ; preds = %371
  %376 = load ptr, ptr %357, align 8, !tbaa !51
  %377 = getelementptr inbounds %struct.MovieClip, ptr %376, i64 0, i32 11, i32 6
  %378 = load ptr, ptr %377, align 8, !tbaa !52
  %379 = icmp eq ptr %378, %359
  br i1 %379, label %380, label %387

380:                                              ; preds = %375, %371, %365
  %381 = icmp eq ptr %359, %29
  %382 = zext i1 %381 to i32
  %383 = icmp eq ptr %360, null
  %384 = select i1 %383, ptr %366, ptr %360
  call fastcc void @copy_v2_v2(ptr noundef nonnull %11, ptr noundef %384) #17
  call fastcc void @draw_marker_texts(ptr noundef %0, ptr noundef nonnull %359, ptr noundef nonnull %366, ptr noundef nonnull %11, i32 noundef %382, i32 noundef %4, i32 noundef %5, float noundef %6, float noundef %7) #17
  %385 = getelementptr inbounds float, ptr %360, i64 2
  %386 = select i1 %383, ptr null, ptr %385
  br label %387

387:                                              ; preds = %375, %380, %358
  %388 = phi ptr [ %386, %380 ], [ %360, %375 ], [ %360, %358 ]
  %389 = load ptr, ptr %359, align 8, !tbaa !43
  %390 = icmp eq ptr %389, null
  br i1 %390, label %391, label %358, !llvm.loop !59

391:                                              ; preds = %387, %353, %349
  call void @glPopMatrix() #15
  %392 = icmp eq ptr %134, null
  br i1 %392, label %395, label %393

393:                                              ; preds = %391
  %394 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  call void %394(ptr noundef nonnull %134) #15
  br label %395

395:                                              ; preds = %393, %391
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_distortion(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5, float noundef %6) unnamed_addr #0 {
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca [2 x float], align 4
  %11 = alloca [2 x float], align 4
  %12 = alloca [11 x [11 x [2 x float]]], align 16
  %13 = alloca [4 x [2 x float]], align 16
  %14 = alloca [4 x [2 x float]], align 16
  %15 = alloca [2 x float], align 8
  %16 = alloca [2 x float], align 8
  %17 = alloca [2 x float], align 4
  %18 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #16
  call void @llvm.lifetime.start.p0(i64 968, ptr nonnull %12) #16
  %19 = getelementptr inbounds %struct.MovieClip, ptr %2, i64 0, i32 11
  %20 = getelementptr inbounds %struct.MovieClip, ptr %2, i64 0, i32 11, i32 1, i32 4
  %21 = load float, ptr %20, align 8, !tbaa !60
  %22 = fdiv float 1.000000e+00, %21
  %23 = sitofp i32 %3 to float
  %24 = fdiv float %23, 1.000000e+01
  %25 = sitofp i32 %4 to float
  %26 = fdiv float %25, 1.000000e+01
  %27 = fmul float %26, %22
  %28 = getelementptr inbounds %struct.MovieClip, ptr %2, i64 0, i32 11, i32 1, i32 5
  %29 = load float, ptr %28, align 4, !tbaa !61
  %30 = fcmp une float %29, 0.000000e+00
  br i1 %30, label %31, label %293

31:                                               ; preds = %7
  %32 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 12
  %33 = load i32, ptr %32, align 8, !tbaa !9
  %34 = and i32 %33, 2560
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %293, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  call void @UI_view2d_view_to_region_fl(ptr noundef nonnull %37, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull %8, ptr noundef nonnull %9) #15
  call void @glPushMatrix() #15
  %38 = load float, ptr %8, align 4, !tbaa !5
  %39 = load float, ptr %9, align 4, !tbaa !5
  call void @glTranslatef(float noundef %38, float noundef %39, float noundef 0.000000e+00) #15
  call void @glScalef(float noundef %5, float noundef %6, float noundef 0.000000e+00) #15
  %40 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 20
  call void @glMultMatrixf(ptr noundef nonnull %40) #15
  call void @glScalef(float noundef %23, float noundef %25, float noundef 0.000000e+00) #15
  %41 = load i32, ptr %32, align 8, !tbaa !9
  %42 = and i32 %41, 512
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %166, label %44

44:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %13) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %14) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #16
  br label %45

45:                                               ; preds = %44, %45
  %46 = phi i64 [ 0, %44 ], [ %51, %45 ]
  %47 = icmp ult i64 %46, 2
  %48 = and i64 %46, 1
  %49 = select i1 %47, float 0x47EFFFFFE0000000, float 0xC7EFFFFFE0000000
  %50 = getelementptr inbounds [4 x [2 x float]], ptr %13, i64 0, i64 %46, i64 %48
  store float %49, ptr %50, align 4, !tbaa !5
  %51 = add nuw nsw i64 %46, 1
  %52 = icmp eq i64 %51, 4
  br i1 %52, label %53, label %45, !llvm.loop !62

53:                                               ; preds = %45
  call fastcc void @zero_v2(ptr noundef nonnull %10) #17
  %54 = getelementptr inbounds [2 x float], ptr %10, i64 0, i64 1
  br label %55

55:                                               ; preds = %53, %97
  %56 = phi i32 [ 0, %53 ], [ %100, %97 ]
  %57 = icmp eq i32 %56, 0
  %58 = icmp eq i32 %56, 10
  %59 = sitofp i32 %56 to float
  br label %60

60:                                               ; preds = %55, %92
  %61 = phi i32 [ 0, %55 ], [ %95, %92 ]
  %62 = icmp eq i32 %61, 0
  %63 = or i1 %57, %62
  %64 = or i1 %58, %63
  %65 = icmp eq i32 %61, 10
  %66 = or i1 %65, %64
  br i1 %66, label %67, label %92

67:                                               ; preds = %60
  call void @BKE_tracking_distort_v2(ptr noundef nonnull %19, ptr noundef nonnull %10, ptr noundef nonnull %11) #15
  %68 = sitofp i32 %61 to float
  br label %69

69:                                               ; preds = %67, %89
  %70 = phi i64 [ 0, %67 ], [ %90, %89 ]
  %71 = icmp ult i64 %70, 2
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = getelementptr inbounds [2 x float], ptr %11, i64 0, i64 %70
  %74 = load float, ptr %73, align 4, !tbaa !5
  %75 = getelementptr inbounds [4 x [2 x float]], ptr %13, i64 0, i64 %70, i64 %70
  %76 = load float, ptr %75, align 4, !tbaa !5
  %77 = fcmp olt float %74, %76
  br i1 %77, label %85, label %89

78:                                               ; preds = %69
  %79 = and i64 %70, 1
  %80 = getelementptr inbounds [2 x float], ptr %11, i64 0, i64 %79
  %81 = load float, ptr %80, align 4, !tbaa !5
  %82 = getelementptr inbounds [4 x [2 x float]], ptr %13, i64 0, i64 %70, i64 %79
  %83 = load float, ptr %82, align 4, !tbaa !5
  %84 = fcmp ogt float %81, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %72, %78
  %86 = getelementptr inbounds [4 x [2 x float]], ptr %13, i64 0, i64 %70
  call fastcc void @copy_v2_v2(ptr noundef nonnull %86, ptr noundef nonnull %11) #17
  %87 = getelementptr inbounds [4 x [2 x float]], ptr %14, i64 0, i64 %70
  store float %68, ptr %87, align 8, !tbaa !5
  %88 = getelementptr inbounds [4 x [2 x float]], ptr %14, i64 0, i64 %70, i64 1
  store float %59, ptr %88, align 4, !tbaa !5
  br label %89

89:                                               ; preds = %72, %85, %78
  %90 = add nuw nsw i64 %70, 1
  %91 = icmp eq i64 %90, 4
  br i1 %91, label %92, label %69, !llvm.loop !63

92:                                               ; preds = %89, %60
  %93 = load float, ptr %10, align 4, !tbaa !5
  %94 = fadd float %24, %93
  store float %94, ptr %10, align 4, !tbaa !5
  %95 = add nuw nsw i32 %61, 1
  %96 = icmp eq i32 %95, 11
  br i1 %96, label %97, label %60, !llvm.loop !64

97:                                               ; preds = %92
  store float 0.000000e+00, ptr %10, align 4, !tbaa !5
  %98 = load float, ptr %54, align 4, !tbaa !5
  %99 = fadd float %27, %98
  store float %99, ptr %54, align 4, !tbaa !5
  %100 = add nuw nsw i32 %56, 1
  %101 = icmp eq i32 %100, 11
  br i1 %101, label %102, label %55, !llvm.loop !65

102:                                              ; preds = %97
  %103 = getelementptr inbounds [2 x float], ptr %15, i64 0, i64 1
  store <2 x float> <float 0x46293E5940000000, float 0x46293E5940000000>, ptr %15, align 8, !tbaa !5
  %104 = getelementptr inbounds [2 x float], ptr %16, i64 0, i64 1
  store <2 x float> <float 0xC6293E5940000000, float 0xC6293E5940000000>, ptr %16, align 8, !tbaa !5
  br label %105

105:                                              ; preds = %102, %105
  %106 = phi i64 [ 0, %102 ], [ %113, %105 ]
  %107 = getelementptr inbounds [4 x [2 x float]], ptr %14, i64 0, i64 %106
  %108 = load float, ptr %107, align 8, !tbaa !5
  %109 = fmul float %24, %108
  store float %109, ptr %10, align 4, !tbaa !5
  %110 = getelementptr inbounds [4 x [2 x float]], ptr %14, i64 0, i64 %106, i64 1
  %111 = load float, ptr %110, align 4, !tbaa !5
  %112 = fmul float %27, %111
  store float %112, ptr %54, align 4, !tbaa !5
  call void @BKE_tracking_undistort_v2(ptr noundef nonnull %19, ptr noundef nonnull %10, ptr noundef nonnull %11) #15
  call void @minmax_v2v2_v2(ptr noundef nonnull %15, ptr noundef nonnull %16, ptr noundef nonnull %11) #15
  %113 = add nuw nsw i64 %106, 1
  %114 = icmp eq i64 %113, 4
  br i1 %114, label %115, label %105, !llvm.loop !66

115:                                              ; preds = %105
  call fastcc void @copy_v2_v2(ptr noundef nonnull %10, ptr noundef nonnull %15) #17
  %116 = load float, ptr %16, align 8, !tbaa !5
  %117 = load float, ptr %15, align 8, !tbaa !5
  %118 = fsub float %116, %117
  %119 = fdiv float %118, 1.000000e+01
  %120 = load float, ptr %104, align 4, !tbaa !5
  %121 = load float, ptr %103, align 4, !tbaa !5
  %122 = fsub float %120, %121
  %123 = fdiv float %122, 1.000000e+01
  %124 = fmul float %22, %25
  %125 = insertelement <2 x float> poison, float %23, i64 0
  %126 = insertelement <2 x float> %125, float %124, i64 1
  br label %127

127:                                              ; preds = %115, %138
  %128 = phi i64 [ 0, %115 ], [ %142, %138 ]
  br label %129

129:                                              ; preds = %127, %129
  %130 = phi i64 [ 0, %127 ], [ %136, %129 ]
  %131 = getelementptr inbounds [11 x [11 x [2 x float]]], ptr %12, i64 0, i64 %128, i64 %130
  call void @BKE_tracking_distort_v2(ptr noundef nonnull %19, ptr noundef nonnull %10, ptr noundef nonnull %131) #15
  %132 = load <2 x float>, ptr %131, align 8, !tbaa !5
  %133 = fdiv <2 x float> %132, %126
  store <2 x float> %133, ptr %131, align 8, !tbaa !5
  %134 = load float, ptr %10, align 4, !tbaa !5
  %135 = fadd float %119, %134
  store float %135, ptr %10, align 4, !tbaa !5
  %136 = add nuw nsw i64 %130, 1
  %137 = icmp eq i64 %136, 11
  br i1 %137, label %138, label %129, !llvm.loop !67

138:                                              ; preds = %129
  %139 = load float, ptr %15, align 8, !tbaa !5
  store float %139, ptr %10, align 4, !tbaa !5
  %140 = load float, ptr %54, align 4, !tbaa !5
  %141 = fadd float %123, %140
  store float %141, ptr %54, align 4, !tbaa !5
  %142 = add nuw nsw i64 %128, 1
  %143 = icmp eq i64 %142, 11
  br i1 %143, label %144, label %127, !llvm.loop !68

144:                                              ; preds = %138
  call void @glColor3f(float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #15
  br label %145

145:                                              ; preds = %144, %152
  %146 = phi i64 [ 0, %144 ], [ %153, %152 ]
  call void @glBegin(i32 noundef 3) #15
  br label %147

147:                                              ; preds = %145, %147
  %148 = phi i64 [ 0, %145 ], [ %150, %147 ]
  %149 = getelementptr inbounds [11 x [11 x [2 x float]]], ptr %12, i64 0, i64 %146, i64 %148
  call void @glVertex2fv(ptr noundef nonnull %149) #15
  %150 = add nuw nsw i64 %148, 1
  %151 = icmp eq i64 %150, 11
  br i1 %151, label %152, label %147, !llvm.loop !69

152:                                              ; preds = %147
  call void @glEnd() #15
  %153 = add nuw nsw i64 %146, 1
  %154 = icmp eq i64 %153, 11
  br i1 %154, label %155, label %145, !llvm.loop !70

155:                                              ; preds = %152, %162
  %156 = phi i64 [ %163, %162 ], [ 0, %152 ]
  call void @glBegin(i32 noundef 3) #15
  br label %157

157:                                              ; preds = %155, %157
  %158 = phi i64 [ 0, %155 ], [ %160, %157 ]
  %159 = getelementptr inbounds [11 x [11 x [2 x float]]], ptr %12, i64 0, i64 %158, i64 %156
  call void @glVertex2fv(ptr noundef nonnull %159) #15
  %160 = add nuw nsw i64 %158, 1
  %161 = icmp eq i64 %160, 11
  br i1 %161, label %162, label %157, !llvm.loop !71

162:                                              ; preds = %157
  call void @glEnd() #15
  %163 = add nuw nsw i64 %156, 1
  %164 = icmp eq i64 %163, 11
  br i1 %164, label %165, label %155, !llvm.loop !72

165:                                              ; preds = %162
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #16
  br label %166

166:                                              ; preds = %165, %36
  %167 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 23
  %168 = load i16, ptr %167, align 4, !tbaa !73
  %169 = icmp eq i16 %168, 1
  br i1 %169, label %292, label %170

170:                                              ; preds = %166
  %171 = getelementptr inbounds %struct.MovieClip, ptr %2, i64 0, i32 10
  %172 = load ptr, ptr %171, align 8, !tbaa !74
  %173 = load i32, ptr %32, align 8, !tbaa !9
  %174 = and i32 %173, 2048
  %175 = icmp ne i32 %174, 0
  %176 = icmp ne ptr %172, null
  %177 = select i1 %175, i1 %176, i1 false
  br i1 %177, label %178, label %292

178:                                              ; preds = %170
  %179 = getelementptr inbounds %struct.bGPdata, ptr %172, i64 0, i32 1
  %180 = load ptr, ptr %179, align 8, !tbaa !43
  %181 = icmp eq ptr %180, null
  br i1 %181, label %291, label %182

182:                                              ; preds = %178
  %183 = getelementptr inbounds [2 x float], ptr %10, i64 0, i64 1
  %184 = getelementptr inbounds [2 x float], ptr %17, i64 0, i64 1
  %185 = getelementptr inbounds [2 x float], ptr %11, i64 0, i64 1
  %186 = fmul float %22, %25
  br label %187

187:                                              ; preds = %182, %288
  %188 = phi ptr [ %180, %182 ], [ %289, %288 ]
  %189 = getelementptr inbounds %struct.bGPDlayer, ptr %188, i64 0, i32 4
  %190 = load i32, ptr %189, align 8, !tbaa !75
  %191 = and i32 %190, 1
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %288, !llvm.loop !77

193:                                              ; preds = %187
  %194 = getelementptr inbounds %struct.bGPDlayer, ptr %188, i64 0, i32 2
  %195 = load ptr, ptr %194, align 8, !tbaa !78
  %196 = getelementptr inbounds %struct.bGPDlayer, ptr %188, i64 0, i32 7
  call void @glColor4fv(ptr noundef nonnull %196) #15
  %197 = getelementptr inbounds %struct.bGPDlayer, ptr %188, i64 0, i32 5
  %198 = load i16, ptr %197, align 4, !tbaa !79
  %199 = sitofp i16 %198 to float
  call void @glLineWidth(float noundef %199) #15
  %200 = load i16, ptr %197, align 4, !tbaa !79
  %201 = sext i16 %200 to i32
  %202 = add nsw i32 %201, 2
  %203 = sitofp i32 %202 to float
  call void @glPointSize(float noundef %203) #15
  %204 = icmp eq ptr %195, null
  br i1 %204, label %288, label %205

205:                                              ; preds = %193, %285
  %206 = phi ptr [ %286, %285 ], [ %195, %193 ]
  %207 = getelementptr inbounds %struct.bGPDframe, ptr %206, i64 0, i32 2
  %208 = load ptr, ptr %207, align 8, !tbaa !43
  %209 = icmp eq ptr %208, null
  br i1 %209, label %285, label %210

210:                                              ; preds = %205, %282
  %211 = phi ptr [ %283, %282 ], [ %208, %205 ]
  %212 = getelementptr inbounds %struct.bGPDstroke, ptr %211, i64 0, i32 6
  %213 = load i16, ptr %212, align 2, !tbaa !80
  %214 = and i16 %213, 2
  %215 = icmp eq i16 %214, 0
  br i1 %215, label %282, label %216

216:                                              ; preds = %210
  %217 = getelementptr inbounds %struct.bGPDstroke, ptr %211, i64 0, i32 4
  %218 = load i32, ptr %217, align 8, !tbaa !83
  %219 = icmp sgt i32 %218, 1
  br i1 %219, label %220, label %271

220:                                              ; preds = %216
  call void @glBegin(i32 noundef 3) #15
  %221 = load i32, ptr %217, align 8, !tbaa !83
  %222 = icmp sgt i32 %221, 1
  br i1 %222, label %223, label %281

223:                                              ; preds = %220
  %224 = getelementptr inbounds %struct.bGPDstroke, ptr %211, i64 0, i32 2
  br label %225

225:                                              ; preds = %223, %266
  %226 = phi i64 [ 0, %223 ], [ %238, %266 ]
  %227 = phi i32 [ %221, %223 ], [ %267, %266 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #16
  %228 = load ptr, ptr %224, align 8, !tbaa !84
  %229 = getelementptr inbounds %struct.bGPDspoint, ptr %228, i64 %226
  %230 = load float, ptr %229, align 4, !tbaa !85
  %231 = fadd float %230, 0.000000e+00
  %232 = fmul float %231, %23
  store float %232, ptr %10, align 4, !tbaa !5
  %233 = getelementptr inbounds %struct.bGPDspoint, ptr %228, i64 %226, i32 1
  %234 = load float, ptr %233, align 4, !tbaa !87
  %235 = fadd float %234, 0.000000e+00
  %236 = fmul float %235, %25
  %237 = fmul float %22, %236
  store float %237, ptr %183, align 4, !tbaa !5
  %238 = add nuw nsw i64 %226, 1
  %239 = getelementptr inbounds %struct.bGPDspoint, ptr %228, i64 %238
  %240 = load float, ptr %239, align 4, !tbaa !85
  %241 = fadd float %240, 0.000000e+00
  %242 = fmul float %241, %23
  store float %242, ptr %17, align 4, !tbaa !5
  %243 = getelementptr inbounds %struct.bGPDspoint, ptr %228, i64 %238, i32 1
  %244 = load float, ptr %243, align 4, !tbaa !87
  %245 = fadd float %244, 0.000000e+00
  %246 = fmul float %245, %25
  %247 = fmul float %22, %246
  store float %247, ptr %184, align 4, !tbaa !5
  %248 = call fastcc float @len_v2v2(ptr noundef nonnull %10, ptr noundef nonnull %17) #17
  %249 = fdiv float %248, 5.000000e+00
  %250 = call float @llvm.ceil.f32(float %249)
  %251 = fptosi float %250 to i32
  %252 = icmp eq i32 %227, 2
  br i1 %252, label %253, label %254

253:                                              ; preds = %225
  call void @BKE_tracking_undistort_v2(ptr noundef nonnull %19, ptr noundef nonnull %10, ptr noundef nonnull %10) #15
  call void @BKE_tracking_undistort_v2(ptr noundef nonnull %19, ptr noundef nonnull %17, ptr noundef nonnull %17) #15
  br label %254

254:                                              ; preds = %253, %225
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %18, ptr noundef nonnull %17, ptr noundef nonnull %10) #17
  %255 = sitofp i32 %251 to float
  %256 = fdiv float 1.000000e+00, %255
  call fastcc void @mul_v2_fl(ptr noundef nonnull %18, float noundef %256) #17
  %257 = icmp slt i32 %251, 0
  br i1 %257, label %266, label %258

258:                                              ; preds = %254, %258
  %259 = phi i32 [ %264, %258 ], [ 0, %254 ]
  call void @BKE_tracking_distort_v2(ptr noundef nonnull %19, ptr noundef nonnull %10, ptr noundef nonnull %11) #15
  %260 = load float, ptr %11, align 4, !tbaa !5
  %261 = fdiv float %260, %23
  %262 = load float, ptr %185, align 4, !tbaa !5
  %263 = fdiv float %262, %186
  call void @glVertex2f(float noundef %261, float noundef %263) #15
  call fastcc void @add_v2_v2(ptr noundef nonnull %10, ptr noundef nonnull %18) #17
  %264 = add nuw i32 %259, 1
  %265 = icmp eq i32 %259, %251
  br i1 %265, label %266, label %258, !llvm.loop !88

266:                                              ; preds = %258, %254
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #16
  %267 = load i32, ptr %217, align 8, !tbaa !83
  %268 = add nsw i32 %267, -1
  %269 = sext i32 %268 to i64
  %270 = icmp slt i64 %238, %269
  br i1 %270, label %225, label %281, !llvm.loop !89

271:                                              ; preds = %216
  %272 = icmp eq i32 %218, 1
  br i1 %272, label %273, label %282

273:                                              ; preds = %271
  call void @glBegin(i32 noundef 0) #15
  %274 = getelementptr inbounds %struct.bGPDstroke, ptr %211, i64 0, i32 2
  %275 = load ptr, ptr %274, align 8, !tbaa !84
  %276 = load float, ptr %275, align 4, !tbaa !85
  %277 = fadd float %276, 0.000000e+00
  %278 = getelementptr inbounds %struct.bGPDspoint, ptr %275, i64 0, i32 1
  %279 = load float, ptr %278, align 4, !tbaa !87
  %280 = fadd float %279, 0.000000e+00
  call void @glVertex2f(float noundef %277, float noundef %280) #15
  br label %281

281:                                              ; preds = %266, %220, %273
  call void @glEnd() #15
  br label %282

282:                                              ; preds = %281, %271, %210
  %283 = load ptr, ptr %211, align 8, !tbaa !43
  %284 = icmp eq ptr %283, null
  br i1 %284, label %285, label %210, !llvm.loop !90

285:                                              ; preds = %282, %205
  %286 = load ptr, ptr %206, align 8, !tbaa !91
  %287 = icmp eq ptr %286, null
  br i1 %287, label %288, label %205, !llvm.loop !93

288:                                              ; preds = %285, %193, %187
  %289 = load ptr, ptr %188, align 8, !tbaa !43
  %290 = icmp eq ptr %289, null
  br i1 %290, label %291, label %187

291:                                              ; preds = %288, %178
  call void @glLineWidth(float noundef 1.000000e+00) #15
  call void @glPointSize(float noundef 1.000000e+00) #15
  br label %292

292:                                              ; preds = %166, %291, %170
  call void @glPopMatrix() #15
  br label %293

293:                                              ; preds = %31, %7, %292
  call void @llvm.lifetime.end.p0(i64 968, ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @clip_draw_cache_and_notes(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %5 = tail call ptr @ED_space_clip_get_clip(ptr noundef %1) #15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call fastcc void @draw_movieclip_cache(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %5, ptr noundef %4) #17
  tail call fastcc void @draw_movieclip_notes(ptr noundef %1, ptr noundef %2) #17
  br label %8

8:                                                ; preds = %7, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_movieclip_cache(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  %7 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !94
  %9 = sitofp i32 %8 to float
  %10 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !112
  %12 = sitofp i32 %11 to float
  %13 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %14 = load i16, ptr %13, align 8, !tbaa !113
  %15 = sitofp i16 %14 to float
  %16 = fsub float %12, %9
  %17 = fadd float %16, 1.000000e+00
  %18 = fdiv float %15, %17
  %19 = getelementptr inbounds %struct.MovieClip, ptr %2, i64 0, i32 11
  %20 = tail call ptr @BKE_tracking_object_get_active(ptr noundef nonnull %19) #15
  %21 = tail call ptr @BKE_tracking_track_get_active(ptr noundef nonnull %19) #15
  %22 = tail call ptr @BKE_tracking_plane_track_get_active(ptr noundef nonnull %19) #15
  %23 = tail call ptr @BKE_tracking_get_active_reconstruction(ptr noundef nonnull %19) #15
  tail call void @glEnable(i32 noundef 3042) #15
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #15
  tail call void @ED_region_cache_draw_background(ptr noundef %1) #15
  %24 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 9
  call void @BKE_movieclip_get_cache_segments(ptr noundef %2, ptr noundef nonnull %24, ptr noundef nonnull %6, ptr noundef nonnull %5) #15
  %25 = load i32, ptr %6, align 4, !tbaa !30
  %26 = load ptr, ptr %5, align 8, !tbaa !43
  %27 = fptosi float %9 to i32
  %28 = fptosi float %12 to i32
  call void @ED_region_cache_draw_cached_segments(ptr noundef %1, i32 noundef %25, ptr noundef %26, i32 noundef %27, i32 noundef %28) #15
  %29 = icmp ne ptr %21, null
  %30 = icmp ne ptr %22, null
  %31 = select i1 %29, i1 true, i1 %30
  br i1 %31, label %32, label %103

32:                                               ; preds = %4
  %33 = getelementptr inbounds %struct.MovieClip, ptr %2, i64 0, i32 16
  %34 = load i32, ptr %33, align 8, !tbaa !116
  %35 = sitofp i32 %34 to float
  %36 = fsub float %9, %35
  %37 = fadd float %36, 1.000000e+00
  %38 = fptosi float %37 to i32
  %39 = sitofp i32 %38 to float
  %40 = fsub float %12, %35
  %41 = fadd float %40, 1.000000e+00
  %42 = fcmp ult float %41, %39
  br i1 %42, label %103, label %43

43:                                               ; preds = %32, %95
  %44 = phi i32 [ %96, %95 ], [ %34, %32 ]
  %45 = phi float [ %98, %95 ], [ %39, %32 ]
  %46 = phi i32 [ %97, %95 ], [ %38, %32 ]
  %47 = phi i32 [ %65, %95 ], [ 0, %32 ]
  %48 = call fastcc i32 @generic_track_get_markersnr(ptr noundef %21, ptr noundef %22) #17
  %49 = icmp slt i32 %47, %48
  %50 = add nsw i32 %48, -1
  br i1 %49, label %51, label %63

51:                                               ; preds = %43, %61
  %52 = phi i32 [ %57, %61 ], [ %47, %43 ]
  %53 = call fastcc i32 @generic_track_get_marker_framenr(ptr noundef %21, ptr noundef %22, i32 noundef %52) #17
  %54 = icmp slt i32 %53, %46
  br i1 %54, label %55, label %63

55:                                               ; preds = %51
  %56 = icmp slt i32 %52, %50
  %57 = add i32 %52, 1
  br i1 %56, label %58, label %61

58:                                               ; preds = %55
  %59 = call fastcc i32 @generic_track_get_marker_framenr(ptr noundef %21, ptr noundef %22, i32 noundef %57) #17
  %60 = icmp sgt i32 %59, %46
  br i1 %60, label %63, label %61

61:                                               ; preds = %55, %58
  %62 = icmp eq i32 %57, %48
  br i1 %62, label %63, label %51

63:                                               ; preds = %61, %51, %58, %43
  %64 = phi i32 [ %47, %43 ], [ %52, %58 ], [ %52, %51 ], [ %48, %61 ]
  %65 = call fastcc i32 @min_ii(i32 noundef %64, i32 noundef %50) #17
  %66 = call fastcc zeroext i8 @generic_track_is_marker_enabled(ptr noundef %21, ptr noundef %22, i32 noundef %65) #17, !range !117
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %95, label %68

68:                                               ; preds = %63
  %69 = call fastcc i32 @generic_track_get_marker_framenr(ptr noundef %21, ptr noundef %22, i32 noundef %65) #17
  %70 = icmp eq i32 %69, %46
  br i1 %70, label %72, label %71

71:                                               ; preds = %68
  call void @glColor4ub(i8 noundef zeroext -128, i8 noundef zeroext -128, i8 noundef zeroext 0, i8 noundef zeroext 96) #15
  br label %77

72:                                               ; preds = %68
  %73 = call fastcc zeroext i8 @generic_track_is_marker_keyframed(ptr noundef %21, ptr noundef %22, i32 noundef %65) #17, !range !117
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %72
  call void @glColor4ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext 0, i8 noundef zeroext -60) #15
  br label %77

76:                                               ; preds = %72
  call void @glColor4ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext 0, i8 noundef zeroext 96) #15
  br label %77

77:                                               ; preds = %75, %76, %71
  %78 = fsub float %45, %9
  %79 = load i32, ptr %33, align 8, !tbaa !116
  %80 = sitofp i32 %79 to float
  %81 = fadd float %78, %80
  %82 = fadd float %81, -1.000000e+00
  %83 = fmul float %18, %82
  %84 = fptosi float %83 to i32
  %85 = fmul float %18, %81
  %86 = fptosi float %85 to i32
  %87 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !118
  %88 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !122
  %89 = sitofp i32 %88 to float
  %90 = fmul float %87, %89
  %91 = fdiv float %90, 7.200000e+01
  %92 = fmul float %91, 4.000000e+00
  %93 = fptosi float %92 to i32
  call void @glRecti(i32 noundef %84, i32 noundef 0, i32 noundef %86, i32 noundef %93) #15
  %94 = load i32, ptr %33, align 8, !tbaa !116
  br label %95

95:                                               ; preds = %77, %63
  %96 = phi i32 [ %94, %77 ], [ %44, %63 ]
  %97 = add nsw i32 %46, 1
  %98 = sitofp i32 %97 to float
  %99 = sitofp i32 %96 to float
  %100 = fsub float %12, %99
  %101 = fadd float %100, 1.000000e+00
  %102 = fcmp ult float %101, %98
  br i1 %102, label %103, label %43, !llvm.loop !123

103:                                              ; preds = %95, %32, %4
  %104 = load i32, ptr %23, align 8, !tbaa !124
  %105 = and i32 %104, 1
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %161, label %107

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.MovieTrackingReconstruction, ptr %23, i64 0, i32 3
  %109 = load i32, ptr %108, align 4, !tbaa !125
  %110 = getelementptr inbounds %struct.MovieTrackingReconstruction, ptr %23, i64 0, i32 4
  %111 = load ptr, ptr %110, align 8, !tbaa !126
  call void @glColor4ub(i8 noundef zeroext -1, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 96) #15
  %112 = sitofp i32 %27 to float
  %113 = fcmp ugt float %112, %12
  br i1 %113, label %161, label %114

114:                                              ; preds = %107
  %115 = getelementptr inbounds %struct.MovieClip, ptr %2, i64 0, i32 16
  %116 = sext i32 %109 to i64
  br label %117

117:                                              ; preds = %114, %156
  %118 = phi float [ %112, %114 ], [ %159, %156 ]
  %119 = phi i32 [ %27, %114 ], [ %158, %156 ]
  %120 = phi i32 [ 0, %114 ], [ %157, %156 ]
  %121 = icmp slt i32 %120, %109
  br i1 %121, label %122, label %136

122:                                              ; preds = %117
  %123 = sext i32 %120 to i64
  br label %124

124:                                              ; preds = %122, %131
  %125 = phi i64 [ %123, %122 ], [ %132, %131 ]
  %126 = getelementptr inbounds %struct.MovieReconstructedCamera, ptr %111, i64 %125
  %127 = load i32, ptr %126, align 4, !tbaa !127
  %128 = icmp eq i32 %127, %119
  br i1 %128, label %154, label %129

129:                                              ; preds = %124
  %130 = icmp sgt i32 %127, %119
  br i1 %130, label %134, label %131

131:                                              ; preds = %129
  %132 = add nsw i64 %125, 1
  %133 = icmp eq i64 %132, %116
  br i1 %133, label %136, label %124, !llvm.loop !129

134:                                              ; preds = %129
  %135 = trunc i64 %125 to i32
  br label %136

136:                                              ; preds = %131, %134, %117
  %137 = phi i32 [ %120, %117 ], [ %135, %134 ], [ %109, %131 ]
  %138 = fsub float %118, %9
  %139 = load i32, ptr %115, align 8, !tbaa !116
  %140 = sitofp i32 %139 to float
  %141 = fadd float %138, %140
  %142 = fadd float %141, -1.000000e+00
  %143 = fmul float %18, %142
  %144 = fptosi float %143 to i32
  %145 = fmul float %18, %141
  %146 = fptosi float %145 to i32
  %147 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !118
  %148 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !122
  %149 = sitofp i32 %148 to float
  %150 = fmul float %147, %149
  %151 = fdiv float %150, 7.200000e+01
  %152 = fmul float %151, 8.000000e+00
  %153 = fptosi float %152 to i32
  call void @glRecti(i32 noundef %144, i32 noundef 0, i32 noundef %146, i32 noundef %153) #15
  br label %156

154:                                              ; preds = %124
  %155 = trunc i64 %125 to i32
  br label %156

156:                                              ; preds = %154, %136
  %157 = phi i32 [ %137, %136 ], [ %155, %154 ]
  %158 = add nsw i32 %119, 1
  %159 = sitofp i32 %158 to float
  %160 = fcmp ugt float %159, %12
  br i1 %160, label %161, label %117, !llvm.loop !130

161:                                              ; preds = %156, %107, %103
  call void @glDisable(i32 noundef 3042) #15
  %162 = load i32, ptr %24, align 8, !tbaa !131
  %163 = sitofp i32 %162 to float
  %164 = fsub float %163, %9
  %165 = fdiv float %164, %17
  %166 = load i16, ptr %13, align 8, !tbaa !113
  %167 = sitofp i16 %166 to float
  %168 = fmul float %165, %167
  call void @UI_ThemeColor(i32 noundef 49) #15
  %169 = fptosi float %168 to i32
  %170 = call float @llvm.ceil.f32(float %18)
  %171 = fadd float %170, %168
  %172 = fptosi float %171 to i32
  %173 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !118
  %174 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !122
  %175 = sitofp i32 %174 to float
  %176 = fmul float %173, %175
  %177 = fdiv float %176, 7.200000e+01
  %178 = fmul float %177, 8.000000e+00
  %179 = fptosi float %178 to i32
  call void @glRecti(i32 noundef %169, i32 noundef 0, i32 noundef %172, i32 noundef %179) #15
  %180 = load i32, ptr %24, align 8, !tbaa !131
  %181 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !118
  %182 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !122
  %183 = sitofp i32 %182 to float
  %184 = fmul float %181, %183
  %185 = fdiv float %184, 7.200000e+01
  %186 = fmul float %185, 8.000000e+00
  call void @ED_region_cache_draw_curfra_label(i32 noundef %180, float noundef %168, float noundef %186) #15
  call void @glColor4ub(i8 noundef zeroext -81, i8 noundef zeroext -1, i8 noundef zeroext 0, i8 noundef zeroext -1) #15
  %187 = getelementptr inbounds %struct.MovieTrackingObject, ptr %20, i64 0, i32 8
  %188 = load i32, ptr %187, align 8, !tbaa !132
  %189 = getelementptr inbounds %struct.MovieClip, ptr %2, i64 0, i32 16
  %190 = load i32, ptr %189, align 8, !tbaa !116
  %191 = add i32 %188, -1
  %192 = add i32 %191, %190
  %193 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 5
  %194 = load i32, ptr %193, align 8, !tbaa !134
  call fastcc void @draw_keyframe(i32 noundef %192, i32 noundef %194, i32 noundef %27, float noundef %18) #17
  %195 = getelementptr inbounds %struct.MovieTrackingObject, ptr %20, i64 0, i32 9
  %196 = load i32, ptr %195, align 4, !tbaa !135
  %197 = load i32, ptr %189, align 8, !tbaa !116
  %198 = add i32 %196, -1
  %199 = add i32 %198, %197
  %200 = load i32, ptr %193, align 8, !tbaa !134
  call fastcc void @draw_keyframe(i32 noundef %199, i32 noundef %200, i32 noundef %27, float noundef %18) #17
  %201 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 13
  %202 = load i16, ptr %201, align 4, !tbaa !136
  %203 = icmp eq i16 %202, 3
  br i1 %203, label %204, label %210

204:                                              ; preds = %161
  %205 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 28
  %206 = load ptr, ptr %205, align 8, !tbaa !137
  %207 = icmp eq ptr %206, null
  br i1 %207, label %210, label %208

208:                                              ; preds = %204
  %209 = load i32, ptr %193, align 8, !tbaa !134
  call void @ED_mask_draw_frames(ptr noundef nonnull %206, ptr noundef nonnull %1, i32 noundef %209, i32 noundef %27, i32 noundef %28) #15
  br label %210

210:                                              ; preds = %208, %204, %161
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_movieclip_notes(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [256 x i8], align 16
  %4 = alloca [4 x float], align 16
  %5 = tail call ptr @ED_space_clip_get_clip(ptr noundef %0) #15
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %3, i8 0, i64 256, i1 false)
  %6 = getelementptr inbounds %struct.MovieClip, ptr %5, i64 0, i32 11, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !138
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 12
  %11 = load i32, ptr %10, align 8, !tbaa !9
  %12 = and i32 %11, 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(7) %3, ptr noundef nonnull align 1 dereferenceable(7) @.str.8, i64 7, i1 false) #15
  br label %19

15:                                               ; preds = %2
  %16 = call ptr @BLI_strncpy(ptr noundef nonnull %3, ptr noundef nonnull %7, i64 noundef 256) #15
  %17 = load i8, ptr %3, align 16, !tbaa !139
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %14, %15
  %20 = phi i32 [ 0, %14 ], [ 1, %15 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) @__const.draw_movieclip_notes.fill_color, i64 16, i1 false)
  call void @ED_region_info_draw(ptr noundef %1, ptr noundef nonnull %3, i32 noundef %20, ptr noundef nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #16
  br label %21

21:                                               ; preds = %9, %19, %15
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @clip_draw_grease_pencil(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #15
  %4 = tail call ptr @ED_space_clip_get_clip(ptr noundef %3) #15
  %5 = icmp eq ptr %4, null
  br i1 %5, label %33, label %6

6:                                                ; preds = %2
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %32, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 23
  %10 = load i16, ptr %9, align 4, !tbaa !73
  %11 = icmp eq i16 %10, 1
  %12 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 12
  %13 = load i32, ptr %12, align 8, !tbaa !9
  %14 = and i32 %13, 2048
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %15, i1 true, i1 %11
  br i1 %16, label %17, label %33

17:                                               ; preds = %8
  tail call void @glPushMatrix() #15
  %18 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 21
  tail call void @glMultMatrixf(ptr noundef nonnull %18) #15
  br i1 %11, label %19, label %31

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 10
  %21 = load ptr, ptr %20, align 8, !tbaa !51
  %22 = getelementptr inbounds %struct.MovieClip, ptr %21, i64 0, i32 11
  %23 = tail call ptr @BKE_tracking_track_get_active(ptr noundef nonnull %22) #15
  %24 = icmp eq ptr %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = tail call i32 @ED_space_clip_get_clip_frame_number(ptr noundef nonnull %3) #15
  %27 = tail call ptr @BKE_tracking_marker_get(ptr noundef nonnull %23, i32 noundef %26) #15
  %28 = load float, ptr %27, align 4, !tbaa !5
  %29 = getelementptr inbounds [2 x float], ptr %27, i64 0, i64 1
  %30 = load float, ptr %29, align 4, !tbaa !5
  tail call void @glTranslatef(float noundef %28, float noundef %30, float noundef 0.000000e+00) #15
  br label %31

31:                                               ; preds = %19, %25, %17
  tail call void @ED_gpencil_draw_2dimage(ptr noundef %0) #15
  tail call void @glPopMatrix() #15
  br label %33

32:                                               ; preds = %6
  tail call void @ED_gpencil_draw_view2d(ptr noundef %0, i8 noundef zeroext 0) #15
  br label %33

33:                                               ; preds = %32, %8, %31, %2
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_wm_space_clip(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glPushMatrix() local_unnamed_addr #2

; Function Attrs: optsize
declare void @glMultMatrixf(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_tracking_track_get_active(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ED_space_clip_get_clip_frame_number(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_tracking_marker_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glTranslatef(float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_gpencil_draw_2dimage(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glPopMatrix() local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_gpencil_draw_view2d(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_view2d_view_to_region(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glEnable(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glBlendFunc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @fdrawcheckerboard(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: optsize
declare void @glPixelZoom(float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glaDrawImBuf_glsl_ctx(ptr noundef, ptr noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glDisable(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glColor3f(float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glRectf(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glLineStipple(i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glLogicOp(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glScalef(float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glBegin(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glVertex2f(float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glEnd() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_tracking_get_active_tracks(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_tracking_get_active_plane_tracks(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_view2d_view_to_region_fl(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_tracking_plane_track_get_active(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_plane_track(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i8 noundef zeroext %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 {
  %8 = tail call ptr @BKE_tracking_plane_marker_get(ptr noundef %2, i32 noundef %3) #15
  tail call fastcc void @draw_plane_marker_outline(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %8, i32 noundef %5, i32 noundef %6) #17
  tail call fastcc void @draw_plane_marker(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %8, i8 noundef zeroext %4, i32 noundef %5, i32 noundef %6) #17
  ret void
}

; Function Attrs: optsize
declare void @ED_clip_point_undistorted_pos(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_track_path(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [102 x [2 x float]], align 16
  %4 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 15
  %5 = load i32, ptr %4, align 8, !tbaa !140
  call void @llvm.lifetime.start.p0(i64 816, ptr nonnull %3) #16
  %6 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 12
  %7 = load i32, ptr %6, align 8, !tbaa !9
  %8 = and i32 %7, 8
  %9 = icmp eq i32 %5, 0
  br i1 %9, label %218, label %10

10:                                               ; preds = %2
  %11 = tail call i32 @ED_space_clip_get_clip_frame_number(ptr noundef nonnull %0) #15
  %12 = tail call ptr @BKE_tracking_marker_get(ptr noundef %1, i32 noundef %11) #15
  %13 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %12, i64 0, i32 4
  %14 = load i32, ptr %13, align 4, !tbaa !141
  %15 = icmp eq i32 %14, %11
  br i1 %15, label %16, label %218

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %12, i64 0, i32 5
  %18 = load i32, ptr %17, align 4, !tbaa !50
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %218

21:                                               ; preds = %16
  %22 = sub nsw i32 %11, %5
  %23 = icmp sgt i32 %5, 0
  br i1 %23, label %24, label %89

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %1, i64 0, i32 7
  %26 = zext nneg i32 %5 to i64
  br label %27

27:                                               ; preds = %24, %43
  %28 = phi i64 [ %26, %24 ], [ %44, %43 ]
  %29 = phi i32 [ %11, %24 ], [ %31, %43 ]
  %30 = phi i32 [ -1, %24 ], [ %49, %43 ]
  %31 = add nsw i32 %29, -1
  %32 = call ptr @BKE_tracking_marker_get(ptr noundef %1, i32 noundef %31) #15
  %33 = icmp eq ptr %32, null
  br i1 %33, label %53, label %34

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %32, i64 0, i32 5
  %36 = load i32, ptr %35, align 4, !tbaa !50
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %32, i64 0, i32 4
  %41 = load i32, ptr %40, align 4, !tbaa !141
  %42 = icmp eq i32 %41, %31
  br i1 %42, label %43, label %55

43:                                               ; preds = %39
  %44 = add nsw i64 %28, -1
  %45 = trunc i64 %44 to i32
  %46 = getelementptr inbounds [102 x [2 x float]], ptr %3, i64 0, i64 %44
  call fastcc void @add_v2_v2v2(ptr noundef nonnull %46, ptr noundef nonnull %32, ptr noundef nonnull %25) #17
  call void @ED_clip_point_undistorted_pos(ptr noundef %0, ptr noundef nonnull %46, ptr noundef nonnull %46) #15
  %47 = load i32, ptr %40, align 4, !tbaa !141
  %48 = icmp eq i32 %47, %11
  %49 = select i1 %48, i32 %45, i32 %30
  %50 = icmp sgt i32 %31, %22
  br i1 %50, label %27, label %57, !llvm.loop !142

51:                                               ; preds = %34
  %52 = trunc i64 %28 to i32
  br label %57

53:                                               ; preds = %27
  %54 = trunc i64 %28 to i32
  br label %57

55:                                               ; preds = %39
  %56 = trunc i64 %28 to i32
  br label %57

57:                                               ; preds = %43, %51, %53, %55
  %58 = phi i32 [ %30, %51 ], [ %30, %53 ], [ %30, %55 ], [ %49, %43 ]
  %59 = phi i32 [ %52, %51 ], [ %54, %53 ], [ %56, %55 ], [ %45, %43 ]
  %60 = add i32 %11, %5
  %61 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %1, i64 0, i32 7
  %62 = zext nneg i32 %5 to i64
  %63 = call i32 @llvm.smax.i32(i32 %11, i32 %60)
  br label %64

64:                                               ; preds = %57, %80
  %65 = phi i64 [ %62, %57 ], [ %83, %80 ]
  %66 = phi i32 [ %11, %57 ], [ %85, %80 ]
  %67 = phi i32 [ %58, %57 ], [ %82, %80 ]
  %68 = call ptr @BKE_tracking_marker_get(ptr noundef %1, i32 noundef %66) #15
  %69 = icmp eq ptr %68, null
  %70 = trunc i64 %65 to i32
  br i1 %69, label %89, label %71

71:                                               ; preds = %64
  %72 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %68, i64 0, i32 5
  %73 = load i32, ptr %72, align 4, !tbaa !50
  %74 = and i32 %73, 1
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %68, i64 0, i32 4
  %78 = load i32, ptr %77, align 4, !tbaa !141
  %79 = icmp eq i32 %78, %66
  br i1 %79, label %80, label %89

80:                                               ; preds = %76
  %81 = icmp eq i32 %66, %11
  %82 = select i1 %81, i32 %70, i32 %67
  %83 = add nuw nsw i64 %65, 1
  %84 = getelementptr inbounds [102 x [2 x float]], ptr %3, i64 0, i64 %65
  call fastcc void @add_v2_v2v2(ptr noundef nonnull %84, ptr noundef nonnull %68, ptr noundef nonnull %61) #17
  call void @ED_clip_point_undistorted_pos(ptr noundef %0, ptr noundef nonnull %84, ptr noundef nonnull %84) #15
  %85 = add i32 %66, 1
  %86 = icmp eq i32 %66, %63
  br i1 %86, label %87, label %64, !llvm.loop !143

87:                                               ; preds = %80
  %88 = trunc i64 %83 to i32
  br label %89

89:                                               ; preds = %76, %64, %71, %87, %21
  %90 = phi i32 [ %5, %21 ], [ %59, %87 ], [ %59, %71 ], [ %59, %64 ], [ %59, %76 ]
  %91 = phi i32 [ -1, %21 ], [ %82, %87 ], [ %67, %71 ], [ %67, %64 ], [ %67, %76 ]
  %92 = phi i32 [ %5, %21 ], [ %88, %87 ], [ %70, %71 ], [ %70, %64 ], [ %70, %76 ]
  %93 = icmp eq i32 %8, 0
  br i1 %93, label %94, label %151

94:                                               ; preds = %89
  call void @UI_ThemeColor(i32 noundef 140) #15
  %95 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %1, i64 0, i32 13
  %96 = load i32, ptr %95, align 8, !tbaa !48
  %97 = and i32 %96, 32
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %137

99:                                               ; preds = %94
  %100 = and i32 %96, 1
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %119

102:                                              ; preds = %99
  %103 = load i32, ptr %6, align 8, !tbaa !9
  %104 = and i32 %103, 1
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %1, i64 0, i32 14
  %108 = load i32, ptr %107, align 4, !tbaa !144
  %109 = and i32 %108, 1
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %106, %102
  %112 = and i32 %103, 2
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %137, label %114

114:                                              ; preds = %111
  %115 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %1, i64 0, i32 15
  %116 = load i32, ptr %115, align 8, !tbaa !145
  %117 = and i32 %116, 1
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %137, label %119

119:                                              ; preds = %114, %106, %99
  call void @glPointSize(float noundef 5.000000e+00) #15
  call void @glBegin(i32 noundef 0) #15
  %120 = icmp slt i32 %90, %92
  br i1 %120, label %121, label %136

121:                                              ; preds = %119
  %122 = sext i32 %90 to i64
  %123 = sext i32 %91 to i64
  br label %124

124:                                              ; preds = %121, %132
  %125 = phi i64 [ %122, %121 ], [ %133, %132 ]
  %126 = icmp eq i64 %125, %123
  br i1 %126, label %132, label %127

127:                                              ; preds = %124
  %128 = getelementptr inbounds [102 x [2 x float]], ptr %3, i64 0, i64 %125
  %129 = load float, ptr %128, align 8, !tbaa !5
  %130 = getelementptr inbounds [102 x [2 x float]], ptr %3, i64 0, i64 %125, i64 1
  %131 = load float, ptr %130, align 4, !tbaa !5
  call void @glVertex2f(float noundef %129, float noundef %131) #15
  br label %132

132:                                              ; preds = %124, %127
  %133 = add nsw i64 %125, 1
  %134 = trunc i64 %133 to i32
  %135 = icmp eq i32 %92, %134
  br i1 %135, label %136, label %124, !llvm.loop !146

136:                                              ; preds = %132, %119
  call void @glEnd() #15
  br label %137

137:                                              ; preds = %136, %114, %111, %94
  call void @glLineWidth(float noundef 3.000000e+00) #15
  call void @glBegin(i32 noundef 3) #15
  %138 = icmp slt i32 %90, %92
  br i1 %138, label %139, label %150

139:                                              ; preds = %137
  %140 = sext i32 %90 to i64
  br label %141

141:                                              ; preds = %139, %141
  %142 = phi i64 [ %140, %139 ], [ %147, %141 ]
  %143 = getelementptr inbounds [102 x [2 x float]], ptr %3, i64 0, i64 %142
  %144 = load float, ptr %143, align 8, !tbaa !5
  %145 = getelementptr inbounds [102 x [2 x float]], ptr %3, i64 0, i64 %142, i64 1
  %146 = load float, ptr %145, align 4, !tbaa !5
  call void @glVertex2f(float noundef %144, float noundef %146) #15
  %147 = add nsw i64 %142, 1
  %148 = trunc i64 %147 to i32
  %149 = icmp eq i32 %92, %148
  br i1 %149, label %150, label %141, !llvm.loop !147

150:                                              ; preds = %141, %137
  call void @glEnd() #15
  call void @glLineWidth(float noundef 1.000000e+00) #15
  br label %151

151:                                              ; preds = %150, %89
  call void @UI_ThemeColor(i32 noundef 146) #15
  %152 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %1, i64 0, i32 13
  %153 = load i32, ptr %152, align 8, !tbaa !48
  %154 = and i32 %153, 32
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %199

156:                                              ; preds = %151
  %157 = and i32 %153, 1
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %176

159:                                              ; preds = %156
  %160 = load i32, ptr %6, align 8, !tbaa !9
  %161 = and i32 %160, 1
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %168, label %163

163:                                              ; preds = %159
  %164 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %1, i64 0, i32 14
  %165 = load i32, ptr %164, align 4, !tbaa !144
  %166 = and i32 %165, 1
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %176

168:                                              ; preds = %163, %159
  %169 = and i32 %160, 2
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %199, label %171

171:                                              ; preds = %168
  %172 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %1, i64 0, i32 15
  %173 = load i32, ptr %172, align 8, !tbaa !145
  %174 = and i32 %173, 1
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %199, label %176

176:                                              ; preds = %171, %163, %156
  call void @glPointSize(float noundef 3.000000e+00) #15
  call void @glBegin(i32 noundef 0) #15
  %177 = icmp slt i32 %90, %92
  br i1 %177, label %178, label %198

178:                                              ; preds = %176
  %179 = add nsw i32 %5, 1
  %180 = sext i32 %90 to i64
  %181 = sext i32 %179 to i64
  %182 = sext i32 %91 to i64
  br label %183

183:                                              ; preds = %178, %194
  %184 = phi i64 [ %180, %178 ], [ %195, %194 ]
  %185 = icmp eq i64 %184, %181
  br i1 %185, label %186, label %187

186:                                              ; preds = %183
  call void @UI_ThemeColor(i32 noundef 147) #15
  br label %187

187:                                              ; preds = %186, %183
  %188 = icmp eq i64 %184, %182
  br i1 %188, label %194, label %189

189:                                              ; preds = %187
  %190 = getelementptr inbounds [102 x [2 x float]], ptr %3, i64 0, i64 %184
  %191 = load float, ptr %190, align 8, !tbaa !5
  %192 = getelementptr inbounds [102 x [2 x float]], ptr %3, i64 0, i64 %184, i64 1
  %193 = load float, ptr %192, align 4, !tbaa !5
  call void @glVertex2f(float noundef %191, float noundef %193) #15
  br label %194

194:                                              ; preds = %187, %189
  %195 = add nsw i64 %184, 1
  %196 = trunc i64 %195 to i32
  %197 = icmp eq i32 %92, %196
  br i1 %197, label %198, label %183, !llvm.loop !148

198:                                              ; preds = %194, %176
  call void @glEnd() #15
  br label %199

199:                                              ; preds = %198, %171, %168, %151
  call void @UI_ThemeColor(i32 noundef 146) #15
  call void @glBegin(i32 noundef 3) #15
  %200 = icmp slt i32 %90, %92
  br i1 %200, label %201, label %217

201:                                              ; preds = %199
  %202 = add nsw i32 %5, 1
  %203 = sext i32 %90 to i64
  %204 = sext i32 %202 to i64
  br label %205

205:                                              ; preds = %201, %209
  %206 = phi i64 [ %203, %201 ], [ %214, %209 ]
  %207 = icmp eq i64 %206, %204
  br i1 %207, label %208, label %209

208:                                              ; preds = %205
  call void @UI_ThemeColor(i32 noundef 147) #15
  br label %209

209:                                              ; preds = %208, %205
  %210 = getelementptr inbounds [102 x [2 x float]], ptr %3, i64 0, i64 %206
  %211 = load float, ptr %210, align 8, !tbaa !5
  %212 = getelementptr inbounds [102 x [2 x float]], ptr %3, i64 0, i64 %206, i64 1
  %213 = load float, ptr %212, align 4, !tbaa !5
  call void @glVertex2f(float noundef %211, float noundef %213) #15
  %214 = add nsw i64 %206, 1
  %215 = trunc i64 %214 to i32
  %216 = icmp eq i32 %92, %215
  br i1 %216, label %217, label %205, !llvm.loop !149

217:                                              ; preds = %209, %199
  call void @glEnd() #15
  call void @glPointSize(float noundef 1.000000e+00) #15
  br label %218

218:                                              ; preds = %10, %16, %2, %217
  call void @llvm.lifetime.end.p0(i64 816, ptr nonnull %3) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_marker_outline(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = alloca [2 x float], align 4
  %8 = alloca [2 x float], align 4
  %9 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 12
  %10 = load i32, ptr %9, align 8, !tbaa !9
  %11 = and i32 %10, 8
  tail call void @UI_ThemeColor(i32 noundef 140) #15
  %12 = sitofp i32 %4 to float
  %13 = fdiv float 1.000000e+00, %12
  %14 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 8
  %15 = load float, ptr %14, align 4, !tbaa !150
  %16 = fdiv float %13, %15
  %17 = sitofp i32 %5 to float
  %18 = fdiv float 1.000000e+00, %17
  %19 = fdiv float %18, %15
  %20 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 5
  %21 = load i32, ptr %20, align 4, !tbaa !50
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %70

24:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #16
  %25 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %1, i64 0, i32 7
  call fastcc void @add_v2_v2v2(ptr noundef nonnull %7, ptr noundef nonnull %2, ptr noundef nonnull %25) #17
  call void @ED_clip_point_undistorted_pos(ptr noundef nonnull %0, ptr noundef nonnull %7, ptr noundef nonnull %7) #15
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef %3) #17
  %26 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 1
  %27 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 1, i64 1
  %28 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 1, i64 2
  %29 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 1, i64 3
  %30 = call i32 @isect_point_quad_v2(ptr noundef nonnull %8, ptr noundef nonnull %26, ptr noundef nonnull %27, ptr noundef nonnull %28, ptr noundef nonnull %29) #15
  %31 = icmp eq i32 %30, 0
  %32 = icmp eq i32 %11, 0
  br i1 %31, label %38, label %33

33:                                               ; preds = %24
  %34 = select i1 %32, float 4.000000e+00, float 3.000000e+00
  call void @glPointSize(float noundef %34) #15
  call void @glBegin(i32 noundef 0) #15
  %35 = load float, ptr %7, align 4, !tbaa !5
  %36 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  %37 = load float, ptr %36, align 4, !tbaa !5
  call void @glVertex2f(float noundef %35, float noundef %37) #15
  call void @glEnd() #15
  call void @glPointSize(float noundef 1.000000e+00) #15
  br label %69

38:                                               ; preds = %24
  br i1 %32, label %39, label %40

39:                                               ; preds = %38
  call void @glLineWidth(float noundef 3.000000e+00) #15
  br label %40

40:                                               ; preds = %39, %38
  call void @glBegin(i32 noundef 1) #15
  %41 = load float, ptr %7, align 4, !tbaa !5
  %42 = call float @llvm.fmuladd.f32(float %16, float 2.000000e+00, float %41)
  %43 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  %44 = load float, ptr %43, align 4, !tbaa !5
  call void @glVertex2f(float noundef %42, float noundef %44) #15
  %45 = load float, ptr %7, align 4, !tbaa !5
  %46 = call float @llvm.fmuladd.f32(float %16, float 8.000000e+00, float %45)
  %47 = load float, ptr %43, align 4, !tbaa !5
  call void @glVertex2f(float noundef %46, float noundef %47) #15
  %48 = load float, ptr %7, align 4, !tbaa !5
  %49 = fneg float %16
  %50 = call float @llvm.fmuladd.f32(float %49, float 2.000000e+00, float %48)
  %51 = load float, ptr %43, align 4, !tbaa !5
  call void @glVertex2f(float noundef %50, float noundef %51) #15
  %52 = load float, ptr %7, align 4, !tbaa !5
  %53 = call float @llvm.fmuladd.f32(float %49, float 8.000000e+00, float %52)
  %54 = load float, ptr %43, align 4, !tbaa !5
  call void @glVertex2f(float noundef %53, float noundef %54) #15
  %55 = load float, ptr %7, align 4, !tbaa !5
  %56 = load float, ptr %43, align 4, !tbaa !5
  %57 = fneg float %19
  %58 = call float @llvm.fmuladd.f32(float %57, float 2.000000e+00, float %56)
  call void @glVertex2f(float noundef %55, float noundef %58) #15
  %59 = load float, ptr %7, align 4, !tbaa !5
  %60 = load float, ptr %43, align 4, !tbaa !5
  %61 = call float @llvm.fmuladd.f32(float %57, float 8.000000e+00, float %60)
  call void @glVertex2f(float noundef %59, float noundef %61) #15
  %62 = load float, ptr %7, align 4, !tbaa !5
  %63 = load float, ptr %43, align 4, !tbaa !5
  %64 = call float @llvm.fmuladd.f32(float %19, float 2.000000e+00, float %63)
  call void @glVertex2f(float noundef %62, float noundef %64) #15
  %65 = load float, ptr %7, align 4, !tbaa !5
  %66 = load float, ptr %43, align 4, !tbaa !5
  %67 = call float @llvm.fmuladd.f32(float %19, float 8.000000e+00, float %66)
  call void @glVertex2f(float noundef %65, float noundef %67) #15
  call void @glEnd() #15
  br i1 %32, label %68, label %69

68:                                               ; preds = %40
  call void @glLineWidth(float noundef 1.000000e+00) #15
  br label %69

69:                                               ; preds = %40, %68, %33
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  br label %70

70:                                               ; preds = %69, %6
  call void @glPushMatrix() #15
  %71 = load float, ptr %3, align 4, !tbaa !5
  %72 = getelementptr inbounds float, ptr %3, i64 1
  %73 = load float, ptr %72, align 4, !tbaa !5
  call void @glTranslatef(float noundef %71, float noundef %73, float noundef 0.000000e+00) #15
  %74 = icmp eq i32 %11, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  call void @glLineWidth(float noundef 3.000000e+00) #15
  br label %76

76:                                               ; preds = %75, %70
  %77 = load i32, ptr %9, align 8, !tbaa !9
  %78 = and i32 %77, 1
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %76
  call void @glBegin(i32 noundef 2) #15
  %81 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 1
  call void @glVertex2fv(ptr noundef nonnull %81) #15
  %82 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 1, i64 1
  call void @glVertex2fv(ptr noundef nonnull %82) #15
  %83 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 1, i64 2
  call void @glVertex2fv(ptr noundef nonnull %83) #15
  %84 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 1, i64 3
  call void @glVertex2fv(ptr noundef nonnull %84) #15
  call void @glEnd() #15
  br label %85

85:                                               ; preds = %80, %76
  %86 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %1, i64 0, i32 13
  %87 = load i32, ptr %86, align 8, !tbaa !48
  %88 = and i32 %87, 32
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %133

90:                                               ; preds = %85
  %91 = and i32 %87, 1
  %92 = icmp eq i32 %91, 0
  %93 = load i32, ptr %9, align 8, !tbaa !9
  br i1 %92, label %94, label %110

94:                                               ; preds = %90
  %95 = and i32 %93, 1
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %1, i64 0, i32 14
  %99 = load i32, ptr %98, align 4, !tbaa !144
  %100 = and i32 %99, 1
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %97, %94
  %103 = and i32 %93, 2
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %133, label %105

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %1, i64 0, i32 15
  %107 = load i32, ptr %106, align 8, !tbaa !145
  %108 = and i32 %107, 1
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %133, label %110

110:                                              ; preds = %105, %97, %90
  %111 = load i32, ptr %20, align 4, !tbaa !50
  %112 = and i32 %111, 1
  %113 = icmp eq i32 %112, 0
  %114 = and i32 %93, 1
  %115 = icmp eq i32 %114, 0
  %116 = select i1 %113, i1 true, i1 %115
  %117 = and i32 %93, 2
  %118 = icmp ne i32 %117, 0
  %119 = select i1 %118, i1 %116, i1 false
  br i1 %119, label %120, label %133

120:                                              ; preds = %110
  call void @glBegin(i32 noundef 2) #15
  %121 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 2
  %122 = load float, ptr %121, align 4, !tbaa !5
  %123 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 2, i64 1
  %124 = load float, ptr %123, align 4, !tbaa !5
  call void @glVertex2f(float noundef %122, float noundef %124) #15
  %125 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 3
  %126 = load float, ptr %125, align 4, !tbaa !5
  %127 = load float, ptr %123, align 4, !tbaa !5
  call void @glVertex2f(float noundef %126, float noundef %127) #15
  %128 = load float, ptr %125, align 4, !tbaa !5
  %129 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 3, i64 1
  %130 = load float, ptr %129, align 4, !tbaa !5
  call void @glVertex2f(float noundef %128, float noundef %130) #15
  %131 = load float, ptr %121, align 4, !tbaa !5
  %132 = load float, ptr %129, align 4, !tbaa !5
  call void @glVertex2f(float noundef %131, float noundef %132) #15
  call void @glEnd() #15
  br label %133

133:                                              ; preds = %85, %102, %105, %120, %110
  call void @glPopMatrix() #15
  br i1 %74, label %134, label %135

134:                                              ; preds = %133
  call void @glLineWidth(float noundef 1.000000e+00) #15
  br label %135

135:                                              ; preds = %134, %133
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_marker_areas(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #0 {
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [2 x float], align 4
  %12 = alloca [2 x float], align 4
  %13 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 12
  %14 = load i32, ptr %13, align 8, !tbaa !9
  %15 = and i32 %14, 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #16
  call fastcc void @track_colors(ptr noundef %1, i32 noundef %6, ptr noundef nonnull %9, ptr noundef nonnull %10) #17
  %16 = sitofp i32 %4 to float
  %17 = fdiv float 1.000000e+00, %16
  %18 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 8
  %19 = load float, ptr %18, align 4, !tbaa !150
  %20 = fdiv float %17, %19
  %21 = sitofp i32 %5 to float
  %22 = fdiv float 1.000000e+00, %21
  %23 = fdiv float %22, %19
  %24 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %1, i64 0, i32 13
  %25 = load i32, ptr %24, align 8, !tbaa !48
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, %7
  br i1 %27, label %28, label %94

28:                                               ; preds = %8
  %29 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 5
  %30 = load i32, ptr %29, align 4, !tbaa !50
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %94

33:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #16
  %34 = and i32 %25, 64
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %33
  %37 = icmp eq i32 %6, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %36
  call void @UI_ThemeColor(i32 noundef 142) #15
  br label %47

39:                                               ; preds = %36
  %40 = icmp eq i32 %7, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %39
  call void @UI_ThemeColorShade(i32 noundef 149, i32 noundef 64) #15
  br label %47

42:                                               ; preds = %39
  call void @UI_ThemeColor(i32 noundef 149) #15
  br label %47

43:                                               ; preds = %33
  %44 = icmp eq i32 %7, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %43
  call void @glColor3fv(ptr noundef nonnull %10) #15
  br label %47

46:                                               ; preds = %43
  call void @glColor3fv(ptr noundef nonnull %9) #15
  br label %47

47:                                               ; preds = %45, %46, %38, %42, %41
  %48 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %1, i64 0, i32 7
  call fastcc void @add_v2_v2v2(ptr noundef nonnull %11, ptr noundef nonnull %2, ptr noundef nonnull %48) #17
  call void @ED_clip_point_undistorted_pos(ptr noundef nonnull %0, ptr noundef nonnull %11, ptr noundef nonnull %11) #15
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %12, ptr noundef nonnull %11, ptr noundef %3) #17
  %49 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 1
  %50 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 1, i64 1
  %51 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 1, i64 2
  %52 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 1, i64 3
  %53 = call i32 @isect_point_quad_v2(ptr noundef nonnull %12, ptr noundef nonnull %49, ptr noundef nonnull %50, ptr noundef nonnull %51, ptr noundef nonnull %52) #15
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %47
  %56 = icmp eq i32 %15, 0
  br i1 %56, label %57, label %89

57:                                               ; preds = %55
  call void @glPointSize(float noundef 2.000000e+00) #15
  call void @glBegin(i32 noundef 0) #15
  %58 = load float, ptr %11, align 4, !tbaa !5
  %59 = getelementptr inbounds [2 x float], ptr %11, i64 0, i64 1
  %60 = load float, ptr %59, align 4, !tbaa !5
  call void @glVertex2f(float noundef %58, float noundef %60) #15
  call void @glEnd() #15
  call void @glPointSize(float noundef 1.000000e+00) #15
  br label %93

61:                                               ; preds = %47
  call void @glBegin(i32 noundef 1) #15
  %62 = load float, ptr %11, align 4, !tbaa !5
  %63 = call float @llvm.fmuladd.f32(float %20, float 3.000000e+00, float %62)
  %64 = getelementptr inbounds [2 x float], ptr %11, i64 0, i64 1
  %65 = load float, ptr %64, align 4, !tbaa !5
  call void @glVertex2f(float noundef %63, float noundef %65) #15
  %66 = load float, ptr %11, align 4, !tbaa !5
  %67 = call float @llvm.fmuladd.f32(float %20, float 7.000000e+00, float %66)
  %68 = load float, ptr %64, align 4, !tbaa !5
  call void @glVertex2f(float noundef %67, float noundef %68) #15
  %69 = load float, ptr %11, align 4, !tbaa !5
  %70 = fneg float %20
  %71 = call float @llvm.fmuladd.f32(float %70, float 3.000000e+00, float %69)
  %72 = load float, ptr %64, align 4, !tbaa !5
  call void @glVertex2f(float noundef %71, float noundef %72) #15
  %73 = load float, ptr %11, align 4, !tbaa !5
  %74 = call float @llvm.fmuladd.f32(float %70, float 7.000000e+00, float %73)
  %75 = load float, ptr %64, align 4, !tbaa !5
  call void @glVertex2f(float noundef %74, float noundef %75) #15
  %76 = load float, ptr %11, align 4, !tbaa !5
  %77 = load float, ptr %64, align 4, !tbaa !5
  %78 = fneg float %23
  %79 = call float @llvm.fmuladd.f32(float %78, float 3.000000e+00, float %77)
  call void @glVertex2f(float noundef %76, float noundef %79) #15
  %80 = load float, ptr %11, align 4, !tbaa !5
  %81 = load float, ptr %64, align 4, !tbaa !5
  %82 = call float @llvm.fmuladd.f32(float %78, float 7.000000e+00, float %81)
  call void @glVertex2f(float noundef %80, float noundef %82) #15
  %83 = load float, ptr %11, align 4, !tbaa !5
  %84 = load float, ptr %64, align 4, !tbaa !5
  %85 = call float @llvm.fmuladd.f32(float %23, float 3.000000e+00, float %84)
  call void @glVertex2f(float noundef %83, float noundef %85) #15
  %86 = load float, ptr %11, align 4, !tbaa !5
  %87 = load float, ptr %64, align 4, !tbaa !5
  %88 = call float @llvm.fmuladd.f32(float %23, float 7.000000e+00, float %87)
  call void @glVertex2f(float noundef %86, float noundef %88) #15
  call void @glEnd() #15
  call void @glColor3f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #15
  call void @glLineStipple(i32 noundef 3, i16 noundef zeroext -21846) #15
  call void @glEnable(i32 noundef 2852) #15
  call void @glEnable(i32 noundef 3058) #15
  call void @glLogicOp(i32 noundef 5384) #15
  call void @glBegin(i32 noundef 1) #15
  call void @glVertex2fv(ptr noundef nonnull %11) #15
  call void @glVertex2fv(ptr noundef %3) #15
  call void @glEnd() #15
  call void @glDisable(i32 noundef 3058) #15
  call void @glDisable(i32 noundef 2852) #15
  br label %93

89:                                               ; preds = %55
  call void @glBegin(i32 noundef 0) #15
  %90 = load float, ptr %11, align 4, !tbaa !5
  %91 = getelementptr inbounds [2 x float], ptr %11, i64 0, i64 1
  %92 = load float, ptr %91, align 4, !tbaa !5
  call void @glVertex2f(float noundef %90, float noundef %92) #15
  call void @glEnd() #15
  br label %93

93:                                               ; preds = %89, %57, %61
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #16
  br label %94

94:                                               ; preds = %93, %28, %8
  call void @glPushMatrix() #15
  %95 = load float, ptr %3, align 4, !tbaa !5
  %96 = getelementptr inbounds float, ptr %3, i64 1
  %97 = load float, ptr %96, align 4, !tbaa !5
  call void @glTranslatef(float noundef %95, float noundef %97, float noundef 0.000000e+00) #15
  %98 = icmp eq i32 %15, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %94
  call void @glLineStipple(i32 noundef 3, i16 noundef zeroext -21846) #15
  call void @glEnable(i32 noundef 2852) #15
  br label %100

100:                                              ; preds = %99, %94
  %101 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %1, i64 0, i32 14
  %102 = load i32, ptr %101, align 4, !tbaa !144
  %103 = and i32 %102, 1
  %104 = icmp eq i32 %103, %7
  br i1 %104, label %105, label %141

105:                                              ; preds = %100
  %106 = load i32, ptr %13, align 8, !tbaa !9
  %107 = and i32 %106, 1
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %141, label %109

109:                                              ; preds = %105
  %110 = load i32, ptr %24, align 8, !tbaa !48
  %111 = and i32 %110, 64
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %120, label %113

113:                                              ; preds = %109
  %114 = icmp eq i32 %6, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %113
  call void @UI_ThemeColor(i32 noundef 142) #15
  br label %136

116:                                              ; preds = %113
  %117 = icmp eq i32 %7, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %116
  call void @UI_ThemeColorShade(i32 noundef 149, i32 noundef 64) #15
  br label %136

119:                                              ; preds = %116
  call void @UI_ThemeColor(i32 noundef 149) #15
  br label %136

120:                                              ; preds = %109
  %121 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 5
  %122 = load i32, ptr %121, align 4, !tbaa !50
  %123 = and i32 %122, 1
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %132, label %125

125:                                              ; preds = %120
  %126 = icmp eq i32 %6, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %125
  call void @UI_ThemeColor(i32 noundef 142) #15
  br label %136

128:                                              ; preds = %125
  %129 = icmp eq i32 %7, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %128
  call void @UI_ThemeColorShade(i32 noundef 145, i32 noundef 128) #15
  br label %136

131:                                              ; preds = %128
  call void @UI_ThemeColor(i32 noundef 145) #15
  br label %136

132:                                              ; preds = %120
  %133 = icmp eq i32 %7, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %132
  call void @glColor3fv(ptr noundef nonnull %10) #15
  br label %136

135:                                              ; preds = %132
  call void @glColor3fv(ptr noundef nonnull %9) #15
  br label %136

136:                                              ; preds = %130, %131, %127, %135, %134, %115, %119, %118
  call void @glBegin(i32 noundef 2) #15
  %137 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 1
  call void @glVertex2fv(ptr noundef nonnull %137) #15
  %138 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 1, i64 1
  call void @glVertex2fv(ptr noundef nonnull %138) #15
  %139 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 1, i64 2
  call void @glVertex2fv(ptr noundef nonnull %139) #15
  %140 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 1, i64 3
  call void @glVertex2fv(ptr noundef nonnull %140) #15
  call void @glEnd() #15
  br label %141

141:                                              ; preds = %136, %105, %100
  %142 = load i32, ptr %24, align 8, !tbaa !48
  %143 = and i32 %142, 32
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %173

145:                                              ; preds = %141
  %146 = and i32 %142, 1
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %164

148:                                              ; preds = %145
  %149 = load i32, ptr %13, align 8, !tbaa !9
  %150 = and i32 %149, 1
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %156, label %152

152:                                              ; preds = %148
  %153 = load i32, ptr %101, align 4, !tbaa !144
  %154 = and i32 %153, 1
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %164

156:                                              ; preds = %152, %148
  %157 = and i32 %149, 2
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %173, label %159

159:                                              ; preds = %156
  %160 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %1, i64 0, i32 15
  %161 = load i32, ptr %160, align 8, !tbaa !145
  %162 = and i32 %161, 1
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %173, label %164

164:                                              ; preds = %159, %152, %145
  %165 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 5
  %166 = load i32, ptr %165, align 4, !tbaa !50
  %167 = and i32 %166, 1
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %173, label %169

169:                                              ; preds = %164
  %170 = load i32, ptr %13, align 8, !tbaa !9
  %171 = and i32 %170, 1
  %172 = icmp eq i32 %171, 0
  br label %173

173:                                              ; preds = %164, %169, %159, %156, %141
  %174 = phi i1 [ false, %159 ], [ false, %156 ], [ false, %141 ], [ true, %164 ], [ %172, %169 ]
  %175 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %1, i64 0, i32 15
  %176 = load i32, ptr %175, align 8, !tbaa !145
  %177 = and i32 %176, 1
  %178 = icmp eq i32 %177, %7
  br i1 %178, label %179, label %223

179:                                              ; preds = %173
  %180 = load i32, ptr %13, align 8, !tbaa !9
  %181 = and i32 %180, 2
  %182 = icmp ne i32 %181, 0
  %183 = select i1 %182, i1 %174, i1 false
  br i1 %183, label %184, label %223

184:                                              ; preds = %179
  %185 = and i32 %142, 64
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %194, label %187

187:                                              ; preds = %184
  %188 = icmp eq i32 %6, 0
  br i1 %188, label %190, label %189

189:                                              ; preds = %187
  call void @UI_ThemeColor(i32 noundef 142) #15
  br label %210

190:                                              ; preds = %187
  %191 = icmp eq i32 %7, 0
  br i1 %191, label %193, label %192

192:                                              ; preds = %190
  call void @UI_ThemeColorShade(i32 noundef 149, i32 noundef 64) #15
  br label %210

193:                                              ; preds = %190
  call void @UI_ThemeColor(i32 noundef 149) #15
  br label %210

194:                                              ; preds = %184
  %195 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 5
  %196 = load i32, ptr %195, align 4, !tbaa !50
  %197 = and i32 %196, 1
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %206, label %199

199:                                              ; preds = %194
  %200 = icmp eq i32 %6, 0
  br i1 %200, label %202, label %201

201:                                              ; preds = %199
  call void @UI_ThemeColor(i32 noundef 142) #15
  br label %210

202:                                              ; preds = %199
  %203 = icmp eq i32 %7, 0
  br i1 %203, label %205, label %204

204:                                              ; preds = %202
  call void @UI_ThemeColorShade(i32 noundef 145, i32 noundef 128) #15
  br label %210

205:                                              ; preds = %202
  call void @UI_ThemeColor(i32 noundef 145) #15
  br label %210

206:                                              ; preds = %194
  %207 = icmp eq i32 %7, 0
  br i1 %207, label %209, label %208

208:                                              ; preds = %206
  call void @glColor3fv(ptr noundef nonnull %10) #15
  br label %210

209:                                              ; preds = %206
  call void @glColor3fv(ptr noundef nonnull %9) #15
  br label %210

210:                                              ; preds = %204, %205, %201, %209, %208, %189, %193, %192
  call void @glBegin(i32 noundef 2) #15
  %211 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 2
  %212 = load float, ptr %211, align 4, !tbaa !5
  %213 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 2, i64 1
  %214 = load float, ptr %213, align 4, !tbaa !5
  call void @glVertex2f(float noundef %212, float noundef %214) #15
  %215 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 3
  %216 = load float, ptr %215, align 4, !tbaa !5
  %217 = load float, ptr %213, align 4, !tbaa !5
  call void @glVertex2f(float noundef %216, float noundef %217) #15
  %218 = load float, ptr %215, align 4, !tbaa !5
  %219 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 3, i64 1
  %220 = load float, ptr %219, align 4, !tbaa !5
  call void @glVertex2f(float noundef %218, float noundef %220) #15
  %221 = load float, ptr %211, align 4, !tbaa !5
  %222 = load float, ptr %219, align 4, !tbaa !5
  call void @glVertex2f(float noundef %221, float noundef %222) #15
  call void @glEnd() #15
  br label %223

223:                                              ; preds = %210, %179, %173
  br i1 %98, label %225, label %224

224:                                              ; preds = %223
  call void @glDisable(i32 noundef 2852) #15
  br label %225

225:                                              ; preds = %224, %223
  call void @glPopMatrix() #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_marker_slide_zones(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) unnamed_addr #0 {
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [2 x float], align 8
  %13 = alloca [2 x float], align 4
  %14 = alloca [2 x float], align 4
  %15 = alloca [2 x float], align 4
  %16 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 12
  %17 = load i32, ptr %16, align 8, !tbaa !9
  %18 = and i32 %17, 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #16
  %19 = icmp ne i32 %18, 0
  %20 = icmp ne i32 %4, 0
  %21 = and i1 %20, %19
  br i1 %21, label %171, label %22

22:                                               ; preds = %9
  %23 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 5
  %24 = load i32, ptr %23, align 4, !tbaa !50
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %171

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %1, i64 0, i32 13
  %29 = load i32, ptr %28, align 8, !tbaa !48
  %30 = and i32 %29, 32
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %171

32:                                               ; preds = %27
  %33 = and i32 %29, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %54

35:                                               ; preds = %32
  %36 = and i32 %17, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %1, i64 0, i32 14
  %40 = load i32, ptr %39, align 4, !tbaa !144
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %38, %35
  %44 = and i32 %17, 2
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %171, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %1, i64 0, i32 15
  %48 = load i32, ptr %47, align 8, !tbaa !145
  %49 = and i32 %48, 1
  %50 = icmp ne i32 %49, 0
  %51 = and i32 %29, 64
  %52 = icmp eq i32 %51, 0
  %53 = and i1 %52, %50
  br i1 %53, label %57, label %171

54:                                               ; preds = %38, %32
  %55 = and i32 %29, 64
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %171

57:                                               ; preds = %46, %54
  call fastcc void @track_colors(ptr noundef nonnull %1, i32 noundef %6, ptr noundef nonnull %10, ptr noundef nonnull %11) #17
  br i1 %20, label %58, label %59

58:                                               ; preds = %57
  call void @glLineWidth(float noundef 3.000000e+00) #15
  call void @UI_ThemeColor(i32 noundef 140) #15
  br label %59

59:                                               ; preds = %58, %57
  call void @glPushMatrix() #15
  %60 = load float, ptr %3, align 4, !tbaa !5
  %61 = getelementptr inbounds float, ptr %3, i64 1
  %62 = load float, ptr %61, align 4, !tbaa !5
  call void @glTranslatef(float noundef %60, float noundef %62, float noundef 0.000000e+00) #15
  %63 = insertelement <2 x i32> poison, i32 %7, i64 0
  %64 = insertelement <2 x i32> %63, i32 %8, i64 1
  %65 = sitofp <2 x i32> %64 to <2 x float>
  %66 = extractelement <2 x float> %65, i64 0
  %67 = fdiv float 6.000000e+00, %66
  %68 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 8
  %69 = load float, ptr %68, align 4, !tbaa !150
  %70 = fdiv float %67, %69
  %71 = extractelement <2 x float> %65, i64 1
  %72 = fdiv float 6.000000e+00, %71
  %73 = fdiv float %72, %69
  %74 = call fastcc float @get_shortest_pattern_side(ptr noundef nonnull %2) #17
  %75 = fmul float %70, 2.000000e+00
  %76 = fdiv float %75, 3.000000e+00
  %77 = fdiv float %74, 6.000000e+00
  %78 = call fastcc float @min_ff(float noundef %76, float noundef %77) #17
  %79 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !118
  %80 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !122
  %81 = sitofp i32 %80 to float
  %82 = fmul float %79, %81
  %83 = fdiv float %82, 7.200000e+01
  %84 = fmul float %78, %83
  %85 = fmul float %73, 2.000000e+00
  %86 = fdiv float %85, 3.000000e+00
  %87 = fmul float %74, %66
  %88 = fdiv float %87, %71
  %89 = fdiv float %88, 6.000000e+00
  %90 = call fastcc float @min_ff(float noundef %86, float noundef %89) #17
  %91 = fmul float %90, %83
  %92 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 3
  %93 = load float, ptr %92, align 4, !tbaa !5
  %94 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 2
  %95 = load float, ptr %94, align 4, !tbaa !5
  %96 = fsub float %93, %95
  %97 = fdiv float %96, 6.000000e+00
  %98 = call fastcc float @min_ff(float noundef %70, float noundef %97) #17
  %99 = fmul float %83, %98
  %100 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 3, i64 1
  %101 = load float, ptr %100, align 4, !tbaa !5
  %102 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 2, i64 1
  %103 = load float, ptr %102, align 4, !tbaa !5
  %104 = fsub float %101, %103
  %105 = fdiv float %104, 6.000000e+00
  %106 = call fastcc float @min_ff(float noundef %73, float noundef %105) #17
  %107 = fmul float %83, %106
  %108 = load float, ptr %68, align 4, !tbaa !150
  %109 = fdiv float 1.000000e+00, %108
  %110 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 17
  %111 = load float, ptr %110, align 4, !tbaa !35
  %112 = insertelement <2 x float> poison, float %109, i64 0
  %113 = shufflevector <2 x float> %112, <2 x float> poison, <2 x i32> zeroinitializer
  %114 = fdiv <2 x float> %113, %65
  %115 = insertelement <2 x float> poison, float %111, i64 0
  %116 = shufflevector <2 x float> %115, <2 x float> poison, <2 x i32> zeroinitializer
  %117 = fdiv <2 x float> %114, %116
  store <2 x float> %117, ptr %12, align 8, !tbaa !5
  %118 = load i32, ptr %16, align 8, !tbaa !9
  %119 = and i32 %118, 2
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %137, label %121

121:                                              ; preds = %59
  %122 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %1, i64 0, i32 15
  %123 = load i32, ptr %122, align 8, !tbaa !145
  %124 = and i32 %123, 1
  %125 = icmp eq i32 %124, %5
  %126 = or i1 %20, %125
  br i1 %126, label %127, label %137

127:                                              ; preds = %121
  br i1 %20, label %131, label %128

128:                                              ; preds = %127
  %129 = icmp eq i32 %124, 0
  %130 = select i1 %129, ptr %10, ptr %11
  call void @glColor3fv(ptr noundef nonnull %130) #15
  br label %131

131:                                              ; preds = %128, %127
  %132 = load float, ptr %94, align 4, !tbaa !5
  %133 = load float, ptr %100, align 4, !tbaa !5
  call fastcc void @draw_marker_slide_square(float noundef %132, float noundef %133, float noundef %99, float noundef %107, i32 noundef %4, ptr noundef nonnull %12) #17
  %134 = load float, ptr %92, align 4, !tbaa !5
  %135 = load float, ptr %102, align 4, !tbaa !5
  call fastcc void @draw_marker_slide_triangle(float noundef %134, float noundef %135, float noundef %99, float noundef %107, i32 noundef %4, ptr noundef nonnull %12) #17
  %136 = load i32, ptr %16, align 8, !tbaa !9
  br label %137

137:                                              ; preds = %121, %131, %59
  %138 = phi i32 [ %118, %121 ], [ %136, %131 ], [ %118, %59 ]
  %139 = and i32 %138, 1
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %169, label %141

141:                                              ; preds = %137
  %142 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %1, i64 0, i32 14
  %143 = load i32, ptr %142, align 4, !tbaa !144
  %144 = and i32 %143, 1
  %145 = icmp eq i32 %144, %5
  %146 = or i1 %20, %145
  br i1 %146, label %148, label %147

147:                                              ; preds = %141
  call void @glPopMatrix() #15
  br label %171

148:                                              ; preds = %141
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #16
  br i1 %20, label %152, label %149

149:                                              ; preds = %148
  %150 = icmp eq i32 %144, 0
  %151 = select i1 %150, ptr %10, ptr %11
  call void @glColor3fv(ptr noundef nonnull %151) #15
  br label %152

152:                                              ; preds = %149, %148
  %153 = fdiv float %84, 1.500000e+00
  %154 = fdiv float %91, 1.500000e+00
  br label %155

155:                                              ; preds = %152, %155
  %156 = phi i64 [ 0, %152 ], [ %161, %155 ]
  %157 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 1, i64 %156
  %158 = load float, ptr %157, align 4, !tbaa !5
  %159 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 1, i64 %156, i64 1
  %160 = load float, ptr %159, align 4, !tbaa !5
  call fastcc void @draw_marker_slide_square(float noundef %158, float noundef %160, float noundef %153, float noundef %154, i32 noundef %4, ptr noundef nonnull %12) #17
  %161 = add nuw nsw i64 %156, 1
  %162 = icmp eq i64 %161, 4
  br i1 %162, label %163, label %155, !llvm.loop !151

163:                                              ; preds = %155
  %164 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 1, i64 1
  %165 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 1, i64 2
  call fastcc void @add_v2_v2v2(ptr noundef nonnull %15, ptr noundef nonnull %164, ptr noundef nonnull %165) #17
  call void @BKE_tracking_marker_pattern_minmax(ptr noundef nonnull %2, ptr noundef nonnull %13, ptr noundef nonnull %14) #15
  call void @glEnable(i32 noundef 2852) #15
  call void @glLineStipple(i32 noundef 3, i16 noundef zeroext -21846) #15
  call void @glBegin(i32 noundef 1) #15
  call void @glVertex2f(float noundef 0.000000e+00, float noundef 0.000000e+00) #15
  call void @glVertex2fv(ptr noundef nonnull %15) #15
  call void @glEnd() #15
  call void @glDisable(i32 noundef 2852) #15
  %166 = load float, ptr %15, align 4, !tbaa !5
  %167 = getelementptr inbounds [2 x float], ptr %15, i64 0, i64 1
  %168 = load float, ptr %167, align 4, !tbaa !5
  call fastcc void @draw_marker_slide_square(float noundef %166, float noundef %168, float noundef %84, float noundef %91, i32 noundef %4, ptr noundef nonnull %12) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #16
  br label %169

169:                                              ; preds = %163, %137
  call void @glPopMatrix() #15
  br i1 %20, label %170, label %171

170:                                              ; preds = %169
  call void @glLineWidth(float noundef 1.000000e+00) #15
  br label %171

171:                                              ; preds = %147, %169, %170, %27, %43, %46, %54, %22, %9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #16
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_tracking_object_get_active(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glPointSize(float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_tracking_get_projection_matrix(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = load float, ptr %1, align 4, !tbaa !5
  store float %3, ptr %0, align 4, !tbaa !5
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !5
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !5
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !5
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !5
  ret void
}

; Function Attrs: optsize
declare void @mul_v4_m4v4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_tracking_distort_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v2_v2(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = load float, ptr %1, align 4, !tbaa !5
  %4 = load float, ptr %0, align 4, !tbaa !5
  %5 = fsub float %4, %3
  store float %5, ptr %0, align 4, !tbaa !5
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !5
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !5
  %10 = fsub float %9, %7
  store float %10, ptr %8, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_squared_v2(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = load float, ptr %0, align 4, !tbaa !5
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !5
  %5 = fmul float %4, %4
  %6 = tail call float @llvm.fmuladd.f32(float %2, float %2, float %5)
  ret float %6
}

; Function Attrs: optsize
declare void @glVertex3f(float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_marker_texts(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, float noundef %7, float noundef %8) unnamed_addr #0 {
  %10 = alloca [128 x i8], align 16
  %11 = alloca [64 x i8], align 16
  %12 = alloca [3 x float], align 8
  %13 = alloca [2 x float], align 8
  %14 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %10) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %10, i8 0, i64 128, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %11, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #16
  %15 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 40), align 8, !tbaa !152
  %16 = getelementptr inbounds %struct.uiStyle, ptr %15, i64 0, i32 6
  %17 = load i16, ptr %16, align 8, !tbaa !153
  %18 = sext i16 %17 to i32
  %19 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %1, i64 0, i32 13
  %20 = load i32, ptr %19, align 8, !tbaa !48
  %21 = and i32 %20, 32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %140

23:                                               ; preds = %9
  %24 = and i32 %20, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 12
  %28 = load i32, ptr %27, align 8, !tbaa !9
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %1, i64 0, i32 14
  %33 = load i32, ptr %32, align 4, !tbaa !144
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %31, %26
  %37 = and i32 %28, 2
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %140, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %1, i64 0, i32 15
  %41 = load i32, ptr %40, align 8, !tbaa !145
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %140, label %44

44:                                               ; preds = %39, %31, %23
  %45 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !118
  %46 = fmul float %45, 1.100000e+01
  %47 = fptosi float %46 to i32
  %48 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !122
  tail call void @BLF_size(i32 noundef %18, i32 noundef %47, i32 noundef %48) #15
  %49 = tail call float @BLF_height_max(i32 noundef %18) #15
  %50 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 5
  %51 = load i32, ptr %50, align 4, !tbaa !50
  %52 = and i32 %51, 1
  %53 = icmp eq i32 %52, 0
  %54 = icmp eq i32 %4, 0
  br i1 %53, label %58, label %55

55:                                               ; preds = %44
  br i1 %54, label %57, label %56

56:                                               ; preds = %55
  tail call void @UI_ThemeColor(i32 noundef 142) #15
  br label %61

57:                                               ; preds = %55
  tail call void @UI_ThemeColorShade(i32 noundef 145, i32 noundef 128) #15
  br label %61

58:                                               ; preds = %44
  br i1 %54, label %60, label %59

59:                                               ; preds = %58
  tail call void @UI_ThemeColor(i32 noundef 142) #15
  br label %61

60:                                               ; preds = %58
  tail call void @UI_ThemeColor(i32 noundef 143) #15
  br label %61

61:                                               ; preds = %59, %60, %56, %57
  %62 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 12
  %63 = load i32, ptr %62, align 8, !tbaa !9
  %64 = and i32 %63, 2
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = and i32 %63, 1
  br label %76

68:                                               ; preds = %61
  %69 = load i32, ptr %50, align 4, !tbaa !50
  %70 = and i32 %63, 1
  %71 = and i32 %70, %69
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 2
  %75 = load <2 x float>, ptr %74, align 4, !tbaa !5
  br label %81

76:                                               ; preds = %66, %68
  %77 = phi i32 [ %67, %66 ], [ %70, %68 ]
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %76
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #16
  call void @BKE_tracking_marker_pattern_minmax(ptr noundef nonnull %2, ptr noundef nonnull %13, ptr noundef nonnull %14) #15
  %80 = load <2 x float>, ptr %13, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #16
  br label %81

81:                                               ; preds = %76, %79, %73
  %82 = phi <2 x float> [ %75, %73 ], [ %80, %79 ], [ zeroinitializer, %76 ]
  %83 = insertelement <2 x i32> poison, i32 %5, i64 0
  %84 = insertelement <2 x i32> %83, i32 %6, i64 1
  %85 = sitofp <2 x i32> %84 to <2 x float>
  %86 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 1
  %87 = load <2 x float>, ptr %3, align 4, !tbaa !5
  %88 = fadd <2 x float> %82, %87
  %89 = fmul <2 x float> %88, %85
  store <2 x float> %89, ptr %12, align 8, !tbaa !5
  %90 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 2
  store float 0.000000e+00, ptr %90, align 8, !tbaa !5
  %91 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 20
  call void @mul_m4_v3(ptr noundef nonnull %91, ptr noundef nonnull %12) #15
  %92 = load float, ptr %12, align 8, !tbaa !5
  %93 = fmul float %92, %7
  store float %93, ptr %12, align 8, !tbaa !5
  %94 = load float, ptr %86, align 4, !tbaa !5
  %95 = fneg float %49
  %96 = call float @llvm.fmuladd.f32(float %94, float %8, float %95)
  store float %96, ptr %86, align 4, !tbaa !5
  %97 = load i32, ptr %50, align 4, !tbaa !50
  %98 = and i32 %97, 1
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %81
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(9) %11, ptr noundef nonnull align 1 dereferenceable(9) @.str.1, i64 9, i1 false) #15
  br label %113

101:                                              ; preds = %81
  %102 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 4
  %103 = load i32, ptr %102, align 4, !tbaa !141
  %104 = call i32 @ED_space_clip_get_clip_frame_number(ptr noundef nonnull %0) #15
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %107, label %106

106:                                              ; preds = %101
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(10) %11, ptr noundef nonnull align 1 dereferenceable(10) @.str.2, i64 10, i1 false) #15
  br label %113

107:                                              ; preds = %101
  %108 = load i32, ptr %50, align 4, !tbaa !50
  %109 = and i32 %108, 2
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %107
  store i64 28259009574302324, ptr %11, align 16
  br label %113

112:                                              ; preds = %107
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(10) %11, ptr noundef nonnull align 1 dereferenceable(10) @.str.4, i64 10, i1 false) #15
  br label %113

113:                                              ; preds = %111, %106, %112, %100
  %114 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %1, i64 0, i32 2
  %115 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %10, i64 noundef 128, ptr noundef nonnull @.str.5, ptr noundef nonnull %114, ptr noundef nonnull %11) #15
  %116 = load float, ptr %86, align 4, !tbaa !5
  %117 = load float, ptr %12, align 8, !tbaa !5
  call void @BLF_position(i32 noundef %18, float noundef %117, float noundef %116, float noundef 0.000000e+00) #15
  call void @BLF_draw(i32 noundef %18, ptr noundef nonnull %10, i64 noundef 128) #15
  %118 = load float, ptr %86, align 4, !tbaa !5
  %119 = fsub float %118, %49
  store float %119, ptr %86, align 4, !tbaa !5
  %120 = load i32, ptr %19, align 8, !tbaa !48
  %121 = and i32 %120, 2
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %133, label %123

123:                                              ; preds = %113
  %124 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %1, i64 0, i32 12
  %125 = load float, ptr %124, align 4, !tbaa !156
  %126 = fpext float %125 to double
  %127 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %10, i64 noundef 128, ptr noundef nonnull @.str.6, double noundef %126) #15
  %128 = load float, ptr %12, align 8, !tbaa !5
  %129 = load float, ptr %86, align 4, !tbaa !5
  call void @BLF_position(i32 noundef %18, float noundef %128, float noundef %129, float noundef 0.000000e+00) #15
  call void @BLF_draw(i32 noundef %18, ptr noundef nonnull %10, i64 noundef 128) #15
  %130 = load float, ptr %86, align 4, !tbaa !5
  %131 = fsub float %130, %49
  store float %131, ptr %86, align 4, !tbaa !5
  %132 = load i32, ptr %19, align 8, !tbaa !48
  br label %133

133:                                              ; preds = %123, %113
  %134 = phi float [ %131, %123 ], [ %119, %113 ]
  %135 = phi i32 [ %132, %123 ], [ %120, %113 ]
  %136 = and i32 %135, 64
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %140, label %138

138:                                              ; preds = %133
  %139 = load float, ptr %12, align 8, !tbaa !5
  call void @BLF_position(i32 noundef %18, float noundef %139, float noundef %134, float noundef 0.000000e+00) #15
  call void @BLF_draw(i32 noundef %18, ptr noundef nonnull @.str.7, i64 noundef 6) #15
  br label %140

140:                                              ; preds = %133, %138, %9, %36, %39
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %10) #16
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_tracking_plane_marker_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_plane_marker_outline(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 {
  tail call fastcc void @draw_plane_marker_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext 1, i32 noundef %4, i32 noundef %5) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_plane_marker(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i8 noundef zeroext %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 {
  tail call fastcc void @draw_plane_marker_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, i8 noundef zeroext 0, i32 noundef %5, i32 noundef %6) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_plane_marker_ex(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i32 noundef %6, i32 noundef %7) unnamed_addr #0 {
  %9 = alloca [2 x float], align 8
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [2 x float], align 4
  %13 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 12
  %14 = load i32, ptr %13, align 8, !tbaa !9
  %15 = trunc i32 %14 to i8
  %16 = lshr i8 %15, 3
  %17 = and i8 %16, 1
  %18 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %2, i64 0, i32 8
  %19 = load i32, ptr %18, align 4, !tbaa !44
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %2, i64 0, i32 9
  %23 = load ptr, ptr %22, align 8, !tbaa !157
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %8
  %26 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %2, i64 0, i32 10
  %27 = load float, ptr %26, align 8, !tbaa !158
  %28 = fcmp une float %27, 0.000000e+00
  br label %29

29:                                               ; preds = %25, %8
  %30 = phi i1 [ false, %8 ], [ %28, %25 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #16
  %31 = icmp eq i8 %5, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  tail call void @UI_ThemeColor(i32 noundef 140) #15
  br label %36

33:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #16
  call fastcc void @plane_track_colors(i8 noundef zeroext %4, ptr noundef nonnull %10, ptr noundef nonnull %11) #17
  %34 = icmp eq i8 %21, 0
  %35 = select i1 %34, ptr %10, ptr %11
  call void @glColor3fv(ptr noundef nonnull %35) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #16
  br label %36

36:                                               ; preds = %33, %32
  %37 = insertelement <2 x i32> poison, i32 %6, i64 0
  %38 = insertelement <2 x i32> %37, i32 %7, i64 1
  %39 = sitofp <2 x i32> %38 to <2 x float>
  %40 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 8
  %41 = load float, ptr %40, align 4, !tbaa !150
  %42 = fdiv <2 x float> <float 1.000000e+00, float 1.000000e+00>, %39
  %43 = insertelement <2 x float> poison, float %41, i64 0
  %44 = shufflevector <2 x float> %43, <2 x float> poison, <2 x i32> zeroinitializer
  %45 = fdiv <2 x float> %42, %44
  store <2 x float> %45, ptr %9, align 8, !tbaa !5
  %46 = zext nneg i8 %5 to i32
  br i1 %31, label %50, label %47

47:                                               ; preds = %36
  %48 = icmp eq i8 %17, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %47
  call void @glLineWidth(float noundef 3.000000e+00) #15
  br label %53

50:                                               ; preds = %36
  call fastcc void @draw_plane_marker_image(ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3) #17
  %51 = icmp eq i8 %17, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %50
  call void @glLineStipple(i32 noundef 3, i16 noundef zeroext -21846) #15
  call void @glEnable(i32 noundef 2852) #15
  br label %53

53:                                               ; preds = %50, %52, %47, %49
  br i1 %30, label %61, label %54

54:                                               ; preds = %53
  call void @glBegin(i32 noundef 2) #15
  call void @glVertex2fv(ptr noundef %3) #15
  %55 = getelementptr inbounds [4 x [2 x float]], ptr %3, i64 0, i64 1
  call void @glVertex2fv(ptr noundef nonnull %55) #15
  %56 = getelementptr inbounds [4 x [2 x float]], ptr %3, i64 0, i64 2
  call void @glVertex2fv(ptr noundef nonnull %56) #15
  %57 = getelementptr inbounds [4 x [2 x float]], ptr %3, i64 0, i64 3
  call void @glVertex2fv(ptr noundef nonnull %57) #15
  call void @glEnd() #15
  br i1 %31, label %58, label %61

58:                                               ; preds = %54
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #16
  call void @glPushAttrib(i32 noundef 16385) #15
  %59 = load float, ptr %40, align 4, !tbaa !150
  call fastcc void @getArrowEndPoint(i32 noundef %6, i32 noundef %7, float noundef %59, ptr noundef %3, ptr noundef nonnull %55, ptr noundef nonnull %12) #17
  call void @glColor3f(float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #15
  call void @glBegin(i32 noundef 1) #15
  call void @glVertex2fv(ptr noundef %3) #15
  call void @glVertex2fv(ptr noundef nonnull %12) #15
  call void @glEnd() #15
  %60 = load float, ptr %40, align 4, !tbaa !150
  call fastcc void @getArrowEndPoint(i32 noundef %6, i32 noundef %7, float noundef %60, ptr noundef %3, ptr noundef nonnull %57, ptr noundef nonnull %12) #17
  call void @glColor3f(float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00) #15
  call void @glBegin(i32 noundef 1) #15
  call void @glVertex2fv(ptr noundef %3) #15
  call void @glVertex2fv(ptr noundef nonnull %12) #15
  call void @glEnd() #15
  call void @glPopAttrib() #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #16
  br label %61

61:                                               ; preds = %54, %58, %53
  %62 = icmp eq i8 %21, 0
  br i1 %62, label %76, label %63

63:                                               ; preds = %61
  %64 = extractelement <2 x float> %45, i64 0
  %65 = fmul float %64, 3.000000e+00
  %66 = extractelement <2 x float> %45, i64 1
  %67 = fmul float %66, 3.000000e+00
  br label %68

68:                                               ; preds = %63, %68
  %69 = phi i64 [ 0, %63 ], [ %74, %68 ]
  %70 = getelementptr inbounds [4 x [2 x float]], ptr %3, i64 0, i64 %69
  %71 = load float, ptr %70, align 4, !tbaa !5
  %72 = getelementptr inbounds [4 x [2 x float]], ptr %3, i64 0, i64 %69, i64 1
  %73 = load float, ptr %72, align 4, !tbaa !5
  call fastcc void @draw_marker_slide_square(float noundef %71, float noundef %73, float noundef %65, float noundef %67, i32 noundef %46, ptr noundef nonnull %9) #17
  %74 = add nuw nsw i64 %69, 1
  %75 = icmp eq i64 %74, 4
  br i1 %75, label %76, label %68, !llvm.loop !159

76:                                               ; preds = %68, %61
  %77 = icmp eq i8 %17, 0
  br i1 %31, label %80, label %78

78:                                               ; preds = %76
  br i1 %77, label %79, label %82

79:                                               ; preds = %78
  call void @glLineWidth(float noundef 1.000000e+00) #15
  br label %82

80:                                               ; preds = %76
  br i1 %77, label %82, label %81

81:                                               ; preds = %80
  call void @glDisable(i32 noundef 2852) #15
  br label %82

82:                                               ; preds = %80, %81, %78, %79
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #16
  ret void
}

; Function Attrs: optsize
declare void @UI_ThemeColor(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @plane_track_colors(i8 noundef zeroext %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  tail call void @UI_GetThemeColor3fv(i32 noundef 141, ptr noundef %1) #15
  %4 = icmp eq i8 %0, 0
  %5 = select i1 %4, i32 143, i32 142
  tail call void @UI_GetThemeColor3fv(i32 noundef %5, ptr noundef %2) #15
  ret void
}

; Function Attrs: optsize
declare void @glColor3fv(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_plane_marker_image(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca [4 x [2 x float]], align 16
  %8 = alloca [3 x [3 x float]], align 16
  %9 = alloca [4 x [4 x float]], align 16
  %10 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %1, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !157
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %12 = icmp eq ptr %11, null
  br i1 %12, label %55, label %13

13:                                               ; preds = %3
  %14 = call ptr @BKE_image_acquire_ibuf(ptr noundef nonnull %11, ptr noundef null, ptr noundef nonnull %4) #15
  %15 = icmp eq ptr %14, null
  br i1 %15, label %53, label %16

16:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  %17 = getelementptr inbounds %struct.Image, ptr %11, i64 0, i32 10
  %18 = load i16, ptr %17, align 2, !tbaa !160
  %19 = and i16 %18, 2048
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 44
  %23 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 45
  %24 = call ptr @IMB_display_buffer_acquire(ptr noundef nonnull %14, ptr noundef nonnull %22, ptr noundef nonnull %23, ptr noundef nonnull %5) #15
  br label %28

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 45
  %27 = call ptr @IMB_display_buffer_acquire(ptr noundef nonnull %14, ptr noundef null, ptr noundef nonnull %26, ptr noundef nonnull %5) #15
  br label %28

28:                                               ; preds = %25, %21
  %29 = phi ptr [ %24, %21 ], [ %27, %25 ]
  %30 = icmp eq ptr %29, null
  br i1 %30, label %51, label %31

31:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %7, ptr noundef nonnull align 16 dereferenceable(32) @__const.draw_plane_marker_image.frame_corners, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #16
  call void @BKE_tracking_homography_between_two_quads(ptr noundef nonnull %7, ptr noundef %2, ptr noundef nonnull %8) #15
  call fastcc void @homogeneous_2d_to_gl_matrix(ptr noundef nonnull %8, ptr noundef nonnull %9) #17
  %32 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %1, i64 0, i32 10
  %33 = load float, ptr %32, align 8, !tbaa !158
  %34 = fcmp une float %33, 1.000000e+00
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.ImBuf, ptr %14, i64 0, i32 4
  %37 = load i8, ptr %36, align 8, !tbaa !37
  %38 = icmp eq i8 %37, 32
  br i1 %38, label %39, label %40

39:                                               ; preds = %35, %31
  call void @glEnable(i32 noundef 3042) #15
  call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #15
  br label %40

40:                                               ; preds = %39, %35
  %41 = phi i1 [ false, %39 ], [ true, %35 ]
  call void @glTexEnvi(i32 noundef 8960, i32 noundef 8704, i32 noundef 8448) #15
  %42 = load float, ptr %32, align 8, !tbaa !158
  call void @glColor4f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef %42) #15
  %43 = call i32 @glaGetOneInteger(i32 noundef 3553) #15
  call void @glEnable(i32 noundef 3553) #15
  call void @glGenTextures(i32 noundef 1, ptr noundef nonnull %6) #15
  %44 = load i32, ptr %6, align 4, !tbaa !30
  call void @glBindTexture(i32 noundef 3553, i32 noundef %44) #15
  call void @glTexParameteri(i32 noundef 3553, i32 noundef 10241, i32 noundef 9728) #15
  call void @glTexParameteri(i32 noundef 3553, i32 noundef 10240, i32 noundef 9728) #15
  %45 = getelementptr inbounds %struct.ImBuf, ptr %14, i64 0, i32 2
  %46 = load i32, ptr %45, align 8, !tbaa !31
  %47 = getelementptr inbounds %struct.ImBuf, ptr %14, i64 0, i32 3
  %48 = load i32, ptr %47, align 4, !tbaa !38
  call void @glTexImage2D(i32 noundef 3553, i32 noundef 0, i32 noundef 32856, i32 noundef %46, i32 noundef %48, i32 noundef 0, i32 noundef 6408, i32 noundef 5121, ptr noundef nonnull %29) #15
  call void @glPushMatrix() #15
  call void @glMultMatrixf(ptr noundef nonnull %9) #15
  call void @glBegin(i32 noundef 7) #15
  call void @glTexCoord2f(float noundef 0.000000e+00, float noundef 0.000000e+00) #15
  call void @glVertex2f(float noundef 0.000000e+00, float noundef 0.000000e+00) #15
  call void @glTexCoord2f(float noundef 1.000000e+00, float noundef 0.000000e+00) #15
  call void @glVertex2f(float noundef 1.000000e+00, float noundef 0.000000e+00) #15
  call void @glTexCoord2f(float noundef 1.000000e+00, float noundef 1.000000e+00) #15
  call void @glVertex2f(float noundef 1.000000e+00, float noundef 1.000000e+00) #15
  call void @glTexCoord2f(float noundef 0.000000e+00, float noundef 1.000000e+00) #15
  call void @glVertex2f(float noundef 0.000000e+00, float noundef 1.000000e+00) #15
  call void @glEnd() #15
  call void @glPopMatrix() #15
  call void @glBindTexture(i32 noundef 3553, i32 noundef %43) #15
  call void @glDisable(i32 noundef 3553) #15
  br i1 %41, label %50, label %49

49:                                               ; preds = %40
  call void @glDisable(i32 noundef 3042) #15
  br label %50

50:                                               ; preds = %49, %40
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  br label %51

51:                                               ; preds = %50, %28
  %52 = load ptr, ptr %5, align 8, !tbaa !43
  call void @IMB_display_buffer_release(ptr noundef %52) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  br label %53

53:                                               ; preds = %51, %13
  %54 = load ptr, ptr %4, align 8, !tbaa !43
  call void @BKE_image_release_ibuf(ptr noundef nonnull %11, ptr noundef %14, ptr noundef %54) #15
  br label %55

55:                                               ; preds = %3, %53
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  ret void
}

; Function Attrs: optsize
declare void @glLineWidth(float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glVertex2fv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glPushAttrib(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @getArrowEndPoint(i32 noundef %0, i32 noundef %1, float noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef writeonly %5) unnamed_addr #7 {
  %7 = alloca [2 x float], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %7, ptr noundef %4, ptr noundef %3) #17
  %8 = insertelement <2 x i32> poison, i32 %0, i64 0
  %9 = insertelement <2 x i32> %8, i32 %1, i64 1
  %10 = sitofp <2 x i32> %9 to <2 x float>
  %11 = load <2 x float>, ptr %7, align 8, !tbaa !5
  %12 = fmul <2 x float> %11, %10
  store <2 x float> %12, ptr %7, align 8, !tbaa !5
  %13 = call fastcc float @normalize_v2(ptr noundef nonnull %7) #17
  %14 = fdiv float 3.200000e+01, %2
  %15 = tail call fastcc float @min_ff(float noundef %14, float noundef %13) #17
  call fastcc void @mul_v2_fl(ptr noundef nonnull %7, float noundef %15) #17
  %16 = load <2 x float>, ptr %7, align 8, !tbaa !5
  %17 = fdiv <2 x float> %16, %10
  store <2 x float> %17, ptr %7, align 8, !tbaa !5
  call fastcc void @add_v2_v2v2(ptr noundef %5, ptr noundef %3, ptr noundef nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  ret void
}

; Function Attrs: optsize
declare void @glPopAttrib() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_marker_slide_square(float noundef %0, float noundef %1, float noundef %2, float noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5) unnamed_addr #0 {
  %7 = icmp eq i32 %4, 0
  %8 = insertelement <2 x float> poison, float %2, i64 0
  %9 = insertelement <2 x float> %8, float %3, i64 1
  br i1 %7, label %13, label %10

10:                                               ; preds = %6
  %11 = load <2 x float>, ptr %5, align 4, !tbaa !5
  %12 = fadd <2 x float> %11, %9
  br label %13

13:                                               ; preds = %10, %6
  %14 = phi <2 x float> [ %12, %10 ], [ %9, %6 ]
  tail call void @glBegin(i32 noundef 7) #15
  %15 = extractelement <2 x float> %14, i64 0
  %16 = fsub float %0, %15
  %17 = extractelement <2 x float> %14, i64 1
  %18 = fadd float %17, %1
  tail call void @glVertex3f(float noundef %16, float noundef %18, float noundef 0.000000e+00) #15
  %19 = fadd float %15, %0
  tail call void @glVertex3f(float noundef %19, float noundef %18, float noundef 0.000000e+00) #15
  %20 = fsub float %1, %17
  tail call void @glVertex3f(float noundef %19, float noundef %20, float noundef 0.000000e+00) #15
  tail call void @glVertex3f(float noundef %16, float noundef %20, float noundef 0.000000e+00) #15
  tail call void @glEnd() #15
  ret void
}

; Function Attrs: optsize
declare void @UI_GetThemeColor3fv(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_image_acquire_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @IMB_display_buffer_acquire(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: optsize
declare void @BKE_tracking_homography_between_two_quads(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @homogeneous_2d_to_gl_matrix(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #3 {
  %3 = load float, ptr %0, align 4, !tbaa !5
  store float %3, ptr %1, align 4, !tbaa !5
  %4 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !5
  %6 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 1
  store float %5, ptr %6, align 4, !tbaa !5
  %7 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 2
  store float 0.000000e+00, ptr %7, align 4, !tbaa !5
  %8 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !5
  %10 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 3
  store float %9, ptr %10, align 4, !tbaa !5
  %11 = getelementptr inbounds [3 x float], ptr %0, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !5
  %13 = getelementptr inbounds [4 x float], ptr %1, i64 1
  store float %12, ptr %13, align 4, !tbaa !5
  %14 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !5
  %16 = getelementptr inbounds [4 x float], ptr %1, i64 1, i64 1
  store float %15, ptr %16, align 4, !tbaa !5
  %17 = getelementptr inbounds [4 x float], ptr %1, i64 1, i64 2
  store float 0.000000e+00, ptr %17, align 4, !tbaa !5
  %18 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !5
  %20 = getelementptr inbounds [4 x float], ptr %1, i64 1, i64 3
  store float %19, ptr %20, align 4, !tbaa !5
  %21 = getelementptr inbounds [4 x float], ptr %1, i64 2
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %21, align 4, !tbaa !5
  %22 = getelementptr inbounds [3 x float], ptr %0, i64 2
  %23 = load float, ptr %22, align 4, !tbaa !5
  %24 = getelementptr inbounds [4 x float], ptr %1, i64 3
  store float %23, ptr %24, align 4, !tbaa !5
  %25 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !5
  %27 = getelementptr inbounds [4 x float], ptr %1, i64 3, i64 1
  store float %26, ptr %27, align 4, !tbaa !5
  %28 = getelementptr inbounds [4 x float], ptr %1, i64 3, i64 2
  store float 0.000000e+00, ptr %28, align 4, !tbaa !5
  %29 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 2
  %30 = load float, ptr %29, align 4, !tbaa !5
  %31 = getelementptr inbounds [4 x float], ptr %1, i64 3, i64 3
  store float %30, ptr %31, align 4, !tbaa !5
  ret void
}

; Function Attrs: optsize
declare void @glTexEnvi(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glColor4f(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @glaGetOneInteger(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glGenTextures(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glBindTexture(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glTexParameteri(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glTexImage2D(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glTexCoord2f(float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_display_buffer_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_image_release_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 {
  %4 = load float, ptr %1, align 4, !tbaa !5
  %5 = load float, ptr %2, align 4, !tbaa !5
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !5
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !5
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !5
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v2(ptr nocapture noundef %0) unnamed_addr #7 {
  %2 = tail call fastcc float @normalize_v2_v2(ptr noundef %0, ptr noundef %0) #17
  ret float %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v2_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #3 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !5
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0, float noundef %1) unnamed_addr #9 {
  %3 = fcmp olt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 {
  %4 = load float, ptr %1, align 4, !tbaa !5
  %5 = load float, ptr %2, align 4, !tbaa !5
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !5
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !5
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !5
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 {
  %3 = tail call fastcc float @dot_v2v2(ptr noundef %1, ptr noundef %1) #17
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #15
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v2_v2fl(ptr noundef %0, ptr noundef %1, float noundef %7) #17
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v2(ptr noundef %0) #17
  br label %9

9:                                                ; preds = %8, %5
  %10 = phi float [ %6, %5 ], [ 0.000000e+00, %8 ]
  ret float %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 {
  %3 = load float, ptr %0, align 4, !tbaa !5
  %4 = load float, ptr %1, align 4, !tbaa !5
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !5
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !5
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  ret float %10
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #10

; Function Attrs: optsize
declare i32 @isect_point_quad_v2(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @track_colors(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 13
  %6 = load i32, ptr %5, align 8, !tbaa !48
  %7 = and i32 %6, 128
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = icmp eq i32 %1, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %9
  tail call void @UI_GetThemeColor3fv(i32 noundef 142, ptr noundef %3) #15
  br label %14

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 16
  tail call fastcc void @copy_v3_v3(ptr noundef %3, ptr noundef nonnull %13) #17
  br label %14

14:                                               ; preds = %12, %11
  %15 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 16
  tail call fastcc void @mul_v3_v3fl(ptr noundef %2, ptr noundef nonnull %15) #17
  br label %20

16:                                               ; preds = %4
  tail call void @UI_GetThemeColor3fv(i32 noundef 141, ptr noundef %2) #15
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %16
  tail call void @UI_GetThemeColor3fv(i32 noundef 142, ptr noundef %3) #15
  br label %20

19:                                               ; preds = %16
  tail call void @UI_GetThemeColor3fv(i32 noundef 143, ptr noundef %3) #15
  br label %20

20:                                               ; preds = %18, %19, %14
  ret void
}

; Function Attrs: optsize
declare void @UI_ThemeColorShade(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = load float, ptr %1, align 4, !tbaa !5
  %4 = fmul float %3, 5.000000e-01
  store float %4, ptr %0, align 4, !tbaa !5
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !5
  %7 = fmul float %6, 5.000000e-01
  %8 = getelementptr inbounds float, ptr %0, i64 1
  store float %7, ptr %8, align 4, !tbaa !5
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !5
  %11 = fmul float %10, 5.000000e-01
  %12 = getelementptr inbounds float, ptr %0, i64 2
  store float %11, ptr %12, align 4, !tbaa !5
  ret void
}

; Function Attrs: nofree noinline nounwind optsize memory(write, argmem: readwrite) uwtable
define internal fastcc float @get_shortest_pattern_side(ptr nocapture noundef readonly %0) unnamed_addr #11 {
  br label %2

2:                                                ; preds = %1, %2
  %3 = phi i64 [ 0, %1 ], [ %5, %2 ]
  %4 = phi float [ 0x47EFFFFFE0000000, %1 ], [ %10, %2 ]
  %5 = add nuw nsw i64 %3, 1
  %6 = and i64 %5, 3
  %7 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %0, i64 0, i32 1, i64 %3
  %8 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %0, i64 0, i32 1, i64 %6
  %9 = tail call fastcc float @len_squared_v2v2(ptr noundef nonnull %7, ptr noundef nonnull %8) #17
  %10 = tail call fastcc float @min_ff(float noundef %9, float noundef %4) #17
  %11 = icmp eq i64 %5, 4
  br i1 %11, label %12, label %2, !llvm.loop !162

12:                                               ; preds = %2
  %13 = tail call float @sqrtf(float noundef %10) #15
  ret float %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_marker_slide_triangle(float noundef %0, float noundef %1, float noundef %2, float noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5) unnamed_addr #0 {
  %7 = insertelement <2 x float> poison, float %2, i64 0
  %8 = insertelement <2 x float> %7, float %3, i64 1
  %9 = fmul <2 x float> %8, <float 2.000000e+00, float 2.000000e+00>
  %10 = icmp eq i32 %4, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = load <2 x float>, ptr %5, align 4, !tbaa !5
  %13 = fadd <2 x float> %9, %12
  br label %14

14:                                               ; preds = %11, %6
  %15 = phi <2 x float> [ %13, %11 ], [ %9, %6 ]
  tail call void @glBegin(i32 noundef 4) #15
  tail call void @glVertex3f(float noundef %0, float noundef %1, float noundef 0.000000e+00) #15
  %16 = extractelement <2 x float> %15, i64 0
  %17 = fsub float %0, %16
  tail call void @glVertex3f(float noundef %17, float noundef %1, float noundef 0.000000e+00) #15
  %18 = extractelement <2 x float> %15, i64 1
  %19 = fadd float %18, %1
  tail call void @glVertex3f(float noundef %0, float noundef %19, float noundef 0.000000e+00) #15
  tail call void @glEnd() #15
  ret void
}

; Function Attrs: optsize
declare void @BKE_tracking_marker_pattern_minmax(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc float @len_squared_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #17
  %4 = call fastcc float @dot_v2v2(ptr noundef nonnull %3, ptr noundef nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret float %4
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: optsize
declare void @BLF_size(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @BLF_height_max(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLF_position(i32 noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLF_draw(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_tracking_undistort_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @minmax_v2v2_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glColor4fv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 {
  %3 = load float, ptr %0, align 4, !tbaa !5
  %4 = load float, ptr %1, align 4, !tbaa !5
  %5 = fsub float %3, %4
  %6 = getelementptr inbounds float, ptr %0, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !5
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !5
  %10 = fsub float %7, %9
  %11 = fmul float %10, %10
  %12 = tail call float @llvm.fmuladd.f32(float %5, float %5, float %11)
  %13 = tail call float @llvm.sqrt.f32(float %12)
  ret float %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v2_v2(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = load float, ptr %1, align 4, !tbaa !5
  %4 = load float, ptr %0, align 4, !tbaa !5
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !5
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !5
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !5
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !5
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_tracking_get_active_reconstruction(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_cache_draw_background(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_movieclip_get_cache_segments(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_cache_draw_cached_segments(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @generic_track_get_markersnr(ptr noundef readonly %0, ptr noundef readonly %1) unnamed_addr #13 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 8
  br label %10

6:                                                ; preds = %2
  %7 = icmp eq ptr %1, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %1, i64 0, i32 7
  br label %10

10:                                               ; preds = %4, %8
  %11 = phi ptr [ %9, %8 ], [ %5, %4 ]
  %12 = load i32, ptr %11, align 8, !tbaa !30
  br label %13

13:                                               ; preds = %10, %6
  %14 = phi i32 [ 0, %6 ], [ %12, %10 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @generic_track_get_marker_framenr(ptr noundef readonly %0, ptr noundef readonly %1, i32 noundef %2) unnamed_addr #13 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !163
  %8 = sext i32 %2 to i64
  %9 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %7, i64 %8, i32 4
  br label %17

10:                                               ; preds = %3
  %11 = icmp eq ptr %1, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %1, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !164
  %15 = sext i32 %2 to i64
  %16 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %14, i64 %15, i32 1
  br label %17

17:                                               ; preds = %5, %12
  %18 = phi ptr [ %16, %12 ], [ %9, %5 ]
  %19 = load i32, ptr %18, align 4, !tbaa !30
  br label %20

20:                                               ; preds = %17, %10
  %21 = phi i32 [ 0, %10 ], [ %19, %17 ]
  ret i32 %21
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @min_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #9 {
  %3 = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @generic_track_is_marker_enabled(ptr noundef readonly %0, ptr noundef readnone %1, i32 noundef %2) unnamed_addr #13 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !163
  %8 = sext i32 %2 to i64
  %9 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %7, i64 %8, i32 5
  %10 = load i32, ptr %9, align 4, !tbaa !50
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 1
  %13 = xor i8 %12, 1
  br label %17

14:                                               ; preds = %3
  %15 = icmp ne ptr %1, null
  %16 = zext i1 %15 to i8
  br label %17

17:                                               ; preds = %14, %5
  %18 = phi i8 [ %13, %5 ], [ %16, %14 ]
  ret i8 %18
}

; Function Attrs: optsize
declare void @glColor4ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @generic_track_is_marker_keyframed(ptr noundef readonly %0, ptr noundef readonly %1, i32 noundef %2) unnamed_addr #13 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !163
  %8 = sext i32 %2 to i64
  %9 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %7, i64 %8, i32 5
  br label %17

10:                                               ; preds = %3
  %11 = icmp eq ptr %1, null
  br i1 %11, label %23, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %1, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !164
  %15 = sext i32 %2 to i64
  %16 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %14, i64 %15, i32 2
  br label %17

17:                                               ; preds = %5, %12
  %18 = phi ptr [ %16, %12 ], [ %9, %5 ]
  %19 = load i32, ptr %18, align 4, !tbaa !30
  %20 = and i32 %19, 2
  %21 = icmp eq i32 %20, 0
  %22 = zext i1 %21 to i8
  br label %23

23:                                               ; preds = %17, %10
  %24 = phi i8 [ 0, %10 ], [ %22, %17 ]
  ret i8 %24
}

; Function Attrs: optsize
declare void @glRecti(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #5

; Function Attrs: optsize
declare void @ED_region_cache_draw_curfra_label(i32 noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_keyframe(i32 noundef %0, i32 noundef %1, i32 noundef %2, float noundef %3) unnamed_addr #0 {
  %5 = sub nsw i32 %0, %2
  %6 = sitofp i32 %5 to float
  %7 = fmul float %6, %3
  %8 = fptosi float %7 to i32
  %9 = icmp eq i32 %0, %1
  %10 = select i1 %9, i32 22, i32 10
  %11 = add nsw i32 %8, 2
  %12 = sitofp i32 %10 to float
  %13 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !118
  %14 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !122
  %15 = sitofp i32 %14 to float
  %16 = fmul float %13, %15
  %17 = fdiv float %16, 7.200000e+01
  %18 = fmul float %17, %12
  %19 = fptosi float %18 to i32
  tail call void @glRecti(i32 noundef %8, i32 noundef 0, i32 noundef %11, i32 noundef %19) #15
  ret void
}

; Function Attrs: optsize
declare void @ED_mask_draw_frames(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_info_draw(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #14

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline nounwind optsize memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind optsize }
attributes #16 = { nounwind }
attributes #17 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"float", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !13, i64 208}
!10 = !{!"SpaceClip", !11, i64 0, !11, i64 8, !12, i64 16, !13, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !14, i64 56, !11, i64 64, !16, i64 72, !13, i64 208, !15, i64 212, !15, i64 214, !13, i64 216, !7, i64 220, !6, i64 228, !6, i64 232, !13, i64 236, !7, i64 240, !7, i64 304, !13, i64 368, !15, i64 372, !15, i64 374, !13, i64 376, !13, i64 380, !7, i64 384, !18, i64 392}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"ListBase", !11, i64 0, !11, i64 8}
!13 = !{!"int", !7, i64 0}
!14 = !{!"MovieClipUser", !13, i64 0, !15, i64 4, !15, i64 6}
!15 = !{!"short", !7, i64 0}
!16 = !{!"MovieClipScopes", !15, i64 0, !15, i64 2, !13, i64 4, !13, i64 8, !13, i64 12, !17, i64 16, !11, i64 80, !11, i64 88, !7, i64 96, !15, i64 104, !15, i64 106, !13, i64 108, !11, i64 112, !11, i64 120, !7, i64 128}
!17 = !{!"MovieTrackingMarker", !7, i64 0, !7, i64 8, !7, i64 40, !7, i64 48, !13, i64 56, !13, i64 60}
!18 = !{!"MaskSpaceInfo", !11, i64 0, !7, i64 8, !7, i64 9, !7, i64 10, !7, i64 11}
!19 = !{!20, !6, i64 1288}
!20 = !{!"MovieClip", !21, i64 0, !11, i64 120, !7, i64 128, !13, i64 1152, !13, i64 1156, !7, i64 1160, !6, i64 1168, !6, i64 1172, !11, i64 1176, !11, i64 1184, !11, i64 1192, !22, i64 1200, !11, i64 1528, !28, i64 1536, !13, i64 2312, !13, i64 2316, !13, i64 2320, !13, i64 2324, !29, i64 2328}
!21 = !{!"ID", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !7, i64 32, !15, i64 98, !13, i64 100, !13, i64 104, !13, i64 108, !11, i64 112}
!22 = !{!"MovieTracking", !23, i64 0, !24, i64 72, !12, i64 128, !12, i64 144, !25, i64 160, !26, i64 184, !11, i64 232, !11, i64 240, !12, i64 248, !13, i64 264, !13, i64 268, !11, i64 272, !27, i64 280}
!23 = !{!"MovieTrackingSettings", !13, i64 0, !15, i64 4, !15, i64 6, !6, i64 8, !15, i64 12, !15, i64 14, !15, i64 16, !15, i64 18, !15, i64 20, !15, i64 22, !6, i64 24, !15, i64 28, !15, i64 30, !13, i64 32, !13, i64 36, !13, i64 40, !15, i64 44, !15, i64 46, !6, i64 48, !13, i64 52, !13, i64 56, !6, i64 60, !6, i64 64, !13, i64 68}
!24 = !{!"MovieTrackingCamera", !11, i64 0, !15, i64 8, !15, i64 10, !6, i64 12, !6, i64 16, !6, i64 20, !15, i64 24, !15, i64 26, !7, i64 28, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52}
!25 = !{!"MovieTrackingReconstruction", !13, i64 0, !6, i64 4, !13, i64 8, !13, i64 12, !11, i64 16}
!26 = !{!"MovieTrackingStabilization", !13, i64 0, !13, i64 4, !13, i64 8, !6, i64 12, !11, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !13, i64 36, !13, i64 40, !6, i64 44}
!27 = !{!"MovieTrackingDopesheet", !13, i64 0, !15, i64 4, !15, i64 6, !12, i64 8, !12, i64 24, !13, i64 40, !13, i64 44}
!28 = !{!"MovieClipProxy", !7, i64 0, !15, i64 768, !15, i64 770, !15, i64 772, !15, i64 774}
!29 = !{!"ColorManagedColorspaceSettings", !7, i64 0}
!30 = !{!13, !13, i64 0}
!31 = !{!32, !13, i64 16}
!32 = !{!"ImBuf", !11, i64 0, !11, i64 8, !13, i64 16, !13, i64 20, !7, i64 24, !13, i64 28, !13, i64 32, !13, i64 36, !11, i64 40, !11, i64 48, !7, i64 56, !13, i64 72, !13, i64 76, !13, i64 80, !13, i64 84, !11, i64 88, !11, i64 96, !11, i64 104, !6, i64 112, !7, i64 120, !13, i64 280, !13, i64 284, !13, i64 288, !13, i64 292, !11, i64 296, !11, i64 304, !13, i64 312, !7, i64 316, !7, i64 1340, !11, i64 2368, !13, i64 2376, !11, i64 2384, !13, i64 2392, !13, i64 2396, !11, i64 2400, !11, i64 2408, !11, i64 2416, !11, i64 2424, !13, i64 2432, !33, i64 2436, !34, i64 2456}
!33 = !{!"rcti", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12}
!34 = !{!"DDSData", !13, i64 0, !13, i64 4, !11, i64 8, !13, i64 16}
!35 = !{!10, !6, i64 228}
!36 = !{!10, !6, i64 232}
!37 = !{!32, !7, i64 24}
!38 = !{!32, !13, i64 20}
!39 = !{!20, !13, i64 2312}
!40 = !{!10, !15, i64 60}
!41 = !{!20, !13, i64 1384}
!42 = !{!10, !15, i64 62}
!43 = !{!11, !11, i64 0}
!44 = !{!45, !13, i64 108}
!45 = !{!"MovieTrackingPlaneTrack", !11, i64 0, !11, i64 8, !7, i64 16, !11, i64 80, !13, i64 88, !13, i64 92, !11, i64 96, !13, i64 104, !13, i64 108, !11, i64 112, !6, i64 120, !13, i64 124}
!46 = distinct !{!46, !47}
!47 = !{!"llvm.loop.mustprogress"}
!48 = !{!49, !13, i64 152}
!49 = !{!"MovieTrackingTrack", !11, i64 0, !11, i64 8, !7, i64 16, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !13, i64 120, !13, i64 124, !11, i64 128, !7, i64 136, !6, i64 148, !13, i64 152, !13, i64 156, !13, i64 160, !7, i64 164, !15, i64 176, !15, i64 178, !15, i64 180, !15, i64 182, !13, i64 184, !6, i64 188, !11, i64 192, !6, i64 200, !6, i64 204}
!50 = !{!17, !13, i64 60}
!51 = !{!10, !11, i64 64}
!52 = !{!20, !11, i64 1432}
!53 = distinct !{!53, !47}
!54 = distinct !{!54, !47}
!55 = distinct !{!55, !47}
!56 = distinct !{!56, !47}
!57 = distinct !{!57, !47}
!58 = distinct !{!58, !47}
!59 = distinct !{!59, !47}
!60 = !{!22, !6, i64 88}
!61 = !{!22, !6, i64 92}
!62 = distinct !{!62, !47}
!63 = distinct !{!63, !47}
!64 = distinct !{!64, !47}
!65 = distinct !{!65, !47}
!66 = distinct !{!66, !47}
!67 = distinct !{!67, !47}
!68 = distinct !{!68, !47}
!69 = distinct !{!69, !47}
!70 = distinct !{!70, !47}
!71 = distinct !{!71, !47}
!72 = distinct !{!72, !47}
!73 = !{!10, !15, i64 372}
!74 = !{!20, !11, i64 1192}
!75 = !{!76, !13, i64 40}
!76 = !{!"bGPDlayer", !11, i64 0, !11, i64 8, !12, i64 16, !11, i64 32, !13, i64 40, !15, i64 44, !15, i64 46, !7, i64 48, !7, i64 64}
!77 = distinct !{!77, !47}
!78 = !{!76, !11, i64 16}
!79 = !{!76, !15, i64 44}
!80 = !{!81, !15, i64 38}
!81 = !{!"bGPDstroke", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !13, i64 32, !15, i64 36, !15, i64 38, !82, i64 40}
!82 = !{!"double", !7, i64 0}
!83 = !{!81, !13, i64 32}
!84 = !{!81, !11, i64 16}
!85 = !{!86, !6, i64 0}
!86 = !{!"bGPDspoint", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16}
!87 = !{!86, !6, i64 4}
!88 = distinct !{!88, !47}
!89 = distinct !{!89, !47}
!90 = distinct !{!90, !47}
!91 = !{!92, !11, i64 0}
!92 = !{!"bGPDframe", !11, i64 0, !11, i64 8, !12, i64 16, !13, i64 32, !13, i64 36}
!93 = distinct !{!93, !47}
!94 = !{!95, !13, i64 684}
!95 = !{!"Scene", !21, i64 0, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !12, i64 152, !11, i64 168, !11, i64 176, !7, i64 184, !7, i64 196, !7, i64 208, !7, i64 220, !13, i64 232, !13, i64 236, !13, i64 240, !15, i64 244, !7, i64 246, !7, i64 247, !11, i64 248, !11, i64 256, !11, i64 264, !11, i64 272, !96, i64 280, !104, i64 4264, !12, i64 4296, !12, i64 4312, !11, i64 4328, !11, i64 4336, !11, i64 4344, !11, i64 4352, !11, i64 4360, !11, i64 4368, !15, i64 4376, !15, i64 4378, !13, i64 4380, !12, i64 4384, !105, i64 4400, !106, i64 4416, !109, i64 4600, !11, i64 4608, !110, i64 4616, !11, i64 4640, !111, i64 4648, !111, i64 4656, !98, i64 4664, !99, i64 4824, !29, i64 4888, !11, i64 4952}
!96 = !{!"RenderData", !97, i64 0, !11, i64 248, !11, i64 256, !100, i64 264, !101, i64 328, !13, i64 400, !13, i64 404, !13, i64 408, !6, i64 412, !13, i64 416, !13, i64 420, !13, i64 424, !13, i64 428, !15, i64 432, !15, i64 434, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !15, i64 456, !15, i64 458, !15, i64 460, !15, i64 462, !15, i64 464, !15, i64 466, !13, i64 468, !15, i64 472, !15, i64 474, !15, i64 476, !15, i64 478, !15, i64 480, !15, i64 482, !13, i64 484, !13, i64 488, !15, i64 492, !15, i64 494, !13, i64 496, !13, i64 500, !15, i64 504, !15, i64 506, !15, i64 508, !15, i64 510, !15, i64 512, !7, i64 514, !7, i64 515, !13, i64 516, !13, i64 520, !13, i64 524, !15, i64 528, !15, i64 530, !15, i64 532, !15, i64 534, !15, i64 536, !15, i64 538, !15, i64 540, !15, i64 542, !102, i64 544, !102, i64 560, !33, i64 576, !12, i64 592, !15, i64 608, !15, i64 610, !6, i64 612, !6, i64 616, !6, i64 620, !6, i64 624, !13, i64 628, !6, i64 632, !6, i64 636, !6, i64 640, !6, i64 644, !15, i64 648, !15, i64 650, !15, i64 652, !15, i64 654, !15, i64 656, !15, i64 658, !6, i64 660, !6, i64 664, !15, i64 668, !15, i64 670, !6, i64 672, !6, i64 676, !7, i64 680, !13, i64 1704, !15, i64 1708, !15, i64 1710, !7, i64 1712, !7, i64 2480, !7, i64 2496, !7, i64 2512, !7, i64 2513, !7, i64 2514, !7, i64 2515, !13, i64 2520, !15, i64 2524, !15, i64 2526, !6, i64 2528, !6, i64 2532, !15, i64 2536, !15, i64 2538, !6, i64 2540, !15, i64 2544, !15, i64 2546, !13, i64 2548, !15, i64 2552, !15, i64 2554, !15, i64 2556, !15, i64 2558, !6, i64 2560, !6, i64 2564, !11, i64 2568, !13, i64 2576, !6, i64 2580, !7, i64 2584, !103, i64 2616, !13, i64 3976, !13, i64 3980}
!97 = !{!"ImageFormatData", !7, i64 0, !7, i64 1, !7, i64 2, !7, i64 3, !7, i64 4, !7, i64 5, !7, i64 6, !7, i64 7, !15, i64 8, !15, i64 10, !6, i64 12, !7, i64 16, !7, i64 17, !7, i64 18, !98, i64 24, !99, i64 184}
!98 = !{!"ColorManagedViewSettings", !13, i64 0, !13, i64 4, !7, i64 8, !7, i64 72, !6, i64 136, !6, i64 140, !11, i64 144, !11, i64 152}
!99 = !{!"ColorManagedDisplaySettings", !7, i64 0}
!100 = !{!"QuicktimeCodecSettings", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !13, i64 32, !13, i64 36, !13, i64 40, !13, i64 44, !15, i64 48, !15, i64 50, !13, i64 52, !13, i64 56, !13, i64 60}
!101 = !{!"FFMpegCodecData", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !6, i64 32, !13, i64 36, !13, i64 40, !13, i64 44, !13, i64 48, !13, i64 52, !13, i64 56, !13, i64 60, !11, i64 64}
!102 = !{!"rctf", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!103 = !{!"BakeData", !97, i64 0, !7, i64 248, !15, i64 1272, !15, i64 1274, !15, i64 1276, !15, i64 1278, !6, i64 1280, !6, i64 1284, !7, i64 1288, !7, i64 1291, !7, i64 1292, !7, i64 1293, !7, i64 1296}
!104 = !{!"AudioData", !13, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !13, i64 16, !15, i64 20, !15, i64 22, !6, i64 24, !6, i64 28}
!105 = !{!"GameFraming", !7, i64 0, !7, i64 12, !7, i64 13, !7, i64 14, !7, i64 15}
!106 = !{!"GameData", !105, i64 0, !15, i64 16, !15, i64 18, !15, i64 20, !15, i64 22, !15, i64 24, !15, i64 26, !15, i64 28, !15, i64 30, !15, i64 32, !7, i64 34, !107, i64 40, !15, i64 64, !15, i64 66, !6, i64 68, !108, i64 72, !6, i64 128, !6, i64 132, !13, i64 136, !15, i64 140, !15, i64 142, !15, i64 144, !15, i64 146, !15, i64 148, !15, i64 150, !15, i64 152, !15, i64 154, !15, i64 156, !15, i64 158, !15, i64 160, !15, i64 162, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !6, i64 180}
!107 = !{!"GameDome", !15, i64 0, !15, i64 2, !15, i64 4, !15, i64 6, !6, i64 8, !6, i64 12, !11, i64 16}
!108 = !{!"RecastData", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !13, i64 40, !6, i64 44, !6, i64 48, !15, i64 52, !15, i64 54}
!109 = !{!"UnitSettings", !6, i64 0, !7, i64 4, !7, i64 5, !15, i64 6}
!110 = !{!"PhysicsSettings", !7, i64 0, !13, i64 12, !13, i64 16, !13, i64 20}
!111 = !{!"long", !7, i64 0}
!112 = !{!95, !13, i64 688}
!113 = !{!114, !15, i64 208}
!114 = !{!"ARegion", !11, i64 0, !11, i64 8, !115, i64 16, !33, i64 176, !33, i64 192, !15, i64 208, !15, i64 210, !15, i64 212, !15, i64 214, !15, i64 216, !15, i64 218, !6, i64 220, !15, i64 224, !15, i64 226, !15, i64 228, !15, i64 230, !15, i64 232, !15, i64 234, !15, i64 236, !15, i64 238, !11, i64 240, !12, i64 248, !12, i64 264, !12, i64 280, !12, i64 296, !12, i64 312, !12, i64 328, !12, i64 344, !11, i64 360, !11, i64 368, !11, i64 376}
!115 = !{!"View2D", !102, i64 0, !102, i64 16, !33, i64 32, !33, i64 48, !33, i64 64, !7, i64 80, !7, i64 88, !6, i64 96, !6, i64 100, !15, i64 104, !15, i64 106, !15, i64 108, !15, i64 110, !15, i64 112, !15, i64 114, !15, i64 116, !15, i64 118, !15, i64 120, !15, i64 122, !15, i64 124, !15, i64 126, !11, i64 128, !13, i64 136, !13, i64 140, !11, i64 144, !11, i64 152}
!116 = !{!20, !13, i64 2320}
!117 = !{i8 0, i8 2}
!118 = !{!119, !6, i64 10908}
!119 = !{!"UserDef", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !7, i64 20, !7, i64 788, !7, i64 1556, !7, i64 2580, !7, i64 3348, !7, i64 4116, !7, i64 4884, !7, i64 5652, !7, i64 6420, !7, i64 7444, !13, i64 8468, !15, i64 8472, !15, i64 8474, !15, i64 8476, !15, i64 8478, !15, i64 8480, !15, i64 8482, !13, i64 8484, !13, i64 8488, !13, i64 8492, !15, i64 8496, !15, i64 8498, !13, i64 8500, !13, i64 8504, !13, i64 8508, !13, i64 8512, !13, i64 8516, !13, i64 8520, !13, i64 8524, !15, i64 8528, !15, i64 8530, !15, i64 8532, !15, i64 8534, !12, i64 8536, !12, i64 8552, !12, i64 8568, !12, i64 8584, !12, i64 8600, !12, i64 8616, !12, i64 8632, !7, i64 8648, !15, i64 8712, !15, i64 8714, !15, i64 8716, !15, i64 8718, !15, i64 8720, !15, i64 8722, !15, i64 8724, !15, i64 8726, !7, i64 8728, !15, i64 8896, !15, i64 8898, !15, i64 8900, !15, i64 8902, !15, i64 8904, !15, i64 8906, !15, i64 8908, !15, i64 8910, !13, i64 8912, !13, i64 8916, !15, i64 8920, !15, i64 8922, !15, i64 8924, !15, i64 8926, !15, i64 8928, !15, i64 8930, !15, i64 8932, !15, i64 8934, !15, i64 8936, !15, i64 8938, !7, i64 8940, !7, i64 8941, !7, i64 8942, !7, i64 8943, !15, i64 8944, !15, i64 8946, !15, i64 8948, !15, i64 8950, !15, i64 8952, !15, i64 8954, !6, i64 8956, !6, i64 8960, !13, i64 8964, !15, i64 8968, !15, i64 8970, !6, i64 8972, !15, i64 8976, !15, i64 8978, !15, i64 8980, !15, i64 8982, !120, i64 8984, !7, i64 9760, !7, i64 9772, !15, i64 9788, !7, i64 9790, !7, i64 9791, !7, i64 9792, !7, i64 9872, !13, i64 10896, !13, i64 10900, !6, i64 10904, !6, i64 10908, !13, i64 10912, !15, i64 10916, !15, i64 10918, !15, i64 10920, !15, i64 10922, !15, i64 10924, !15, i64 10926, !121, i64 10928}
!120 = !{!"ColorBand", !15, i64 0, !15, i64 2, !7, i64 4, !7, i64 5, !7, i64 6, !7, i64 7, !7, i64 8}
!121 = !{!"WalkNavigation", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !15, i64 24, !7, i64 26}
!122 = !{!119, !13, i64 8524}
!123 = distinct !{!123, !47}
!124 = !{!25, !13, i64 0}
!125 = !{!25, !13, i64 12}
!126 = !{!25, !11, i64 16}
!127 = !{!128, !13, i64 0}
!128 = !{!"MovieReconstructedCamera", !13, i64 0, !6, i64 4, !7, i64 8}
!129 = distinct !{!129, !47}
!130 = distinct !{!130, !47}
!131 = !{!10, !13, i64 56}
!132 = !{!133, !13, i64 144}
!133 = !{!"MovieTrackingObject", !11, i64 0, !11, i64 8, !7, i64 16, !13, i64 80, !6, i64 84, !12, i64 88, !12, i64 104, !25, i64 120, !13, i64 144, !13, i64 148}
!134 = !{!95, !13, i64 680}
!135 = !{!133, !13, i64 148}
!136 = !{!10, !15, i64 212}
!137 = !{!10, !11, i64 392}
!138 = !{!22, !11, i64 272}
!139 = !{!7, !7, i64 0}
!140 = !{!10, !13, i64 216}
!141 = !{!17, !13, i64 56}
!142 = distinct !{!142, !47}
!143 = distinct !{!143, !47}
!144 = !{!49, !13, i64 156}
!145 = !{!49, !13, i64 160}
!146 = distinct !{!146, !47}
!147 = distinct !{!147, !47}
!148 = distinct !{!148, !47}
!149 = distinct !{!149, !47}
!150 = !{!10, !6, i64 52}
!151 = distinct !{!151, !47}
!152 = !{!119, !11, i64 8568}
!153 = !{!154, !15, i64 176}
!154 = !{!"uiStyle", !11, i64 0, !11, i64 8, !7, i64 16, !155, i64 80, !155, i64 112, !155, i64 144, !155, i64 176, !6, i64 208, !15, i64 212, !15, i64 214, !15, i64 216, !15, i64 218, !15, i64 220, !15, i64 222, !15, i64 224, !15, i64 226, !15, i64 228, !15, i64 230}
!155 = !{!"uiFontStyle", !15, i64 0, !15, i64 2, !15, i64 4, !7, i64 6, !15, i64 12, !15, i64 14, !15, i64 16, !15, i64 18, !15, i64 20, !15, i64 22, !6, i64 24, !6, i64 28}
!156 = !{!49, !6, i64 148}
!157 = !{!45, !11, i64 112}
!158 = !{!45, !6, i64 120}
!159 = distinct !{!159, !47}
!160 = !{!161, !15, i64 1246}
!161 = !{!"Image", !21, i64 0, !7, i64 120, !11, i64 1144, !11, i64 1152, !11, i64 1160, !11, i64 1168, !7, i64 1176, !15, i64 1240, !15, i64 1242, !15, i64 1244, !15, i64 1246, !15, i64 1248, !15, i64 1250, !13, i64 1252, !15, i64 1256, !15, i64 1258, !15, i64 1260, !15, i64 1262, !15, i64 1264, !15, i64 1266, !13, i64 1268, !11, i64 1272, !11, i64 1280, !11, i64 1288, !6, i64 1296, !13, i64 1300, !15, i64 1304, !15, i64 1306, !13, i64 1308, !13, i64 1312, !7, i64 1316, !7, i64 1317, !15, i64 1318, !7, i64 1320, !6, i64 1336, !6, i64 1340, !29, i64 1344, !7, i64 1408, !7, i64 1409, !7, i64 1416}
!162 = distinct !{!162, !47}
!163 = !{!49, !11, i64 128}
!164 = !{!45, !11, i64 96}
