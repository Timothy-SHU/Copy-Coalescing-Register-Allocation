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
%struct.uiStyle = type { ptr, ptr, [64 x i8], %struct.uiFontStyle, %struct.uiFontStyle, %struct.uiFontStyle, %struct.uiFontStyle, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.uiFontStyle = type { i16, i16, i16, [6 x i8], i16, i16, i16, i16, i16, i16, float, float }
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
%struct.MovieTrackingPlaneMarker = type { [4 x [2 x float]], i32, i32 }
%struct.MovieReconstructedCamera = type { i32, float, [4 x [4 x float]] }
%struct.MovieTrackingObject = type { ptr, ptr, [64 x i8], i32, float, %struct.ListBase, %struct.ListBase, %struct.MovieTrackingReconstruction, i32, i32 }
%struct.Image = type { %struct.ID, [1024 x i8], ptr, ptr, ptr, ptr, [8 x ptr], i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, ptr, ptr, ptr, float, i32, i16, i16, i32, i32, i8, i8, i16, [4 x float], float, float, %struct.ColorManagedColorspaceSettings, i8, [7 x i8], [8 x %struct.RenderSlot] }
%struct.RenderSlot = type { [64 x i8] }

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

; Function Attrs: nounwind uwtable
define dso_local void @clip_draw_main(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca [2 x float], align 4
  %7 = alloca [2 x float], align 4
  %8 = alloca [11 x [11 x [2 x float]]], align 16
  %9 = alloca [4 x [2 x float]], align 16
  %10 = alloca [4 x [2 x float]], align 16
  %11 = alloca [2 x float], align 4
  %12 = alloca [2 x float], align 4
  %13 = alloca [2 x float], align 4
  %14 = alloca [128 x i8], align 16
  %15 = alloca [64 x i8], align 16
  %16 = alloca [3 x float], align 4
  %17 = alloca [2 x float], align 4
  %18 = alloca [2 x float], align 4
  %19 = alloca [2 x float], align 4
  %20 = alloca [2 x float], align 4
  %21 = alloca [102 x [2 x float]], align 16
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca [2 x float], align 4
  %25 = alloca [4 x float], align 16
  %26 = alloca [4 x float], align 16
  %27 = alloca [4 x [4 x float]], align 16
  %28 = alloca [2 x float], align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca float, align 4
  %38 = alloca float, align 4
  %39 = alloca [4 x [4 x float]], align 16
  %40 = alloca [4 x [4 x float]], align 16
  %41 = alloca [2 x float], align 4
  %42 = tail call ptr @ED_space_clip_get_clip(ptr noundef %1) #8
  %43 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %35) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %36) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %37) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %38) #8
  call void @ED_space_clip_get_size(ptr noundef %1, ptr noundef nonnull %35, ptr noundef nonnull %36) #8
  call void @ED_space_clip_get_zoom(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %37, ptr noundef nonnull %38) #8
  %44 = icmp eq ptr %42, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %3
  %46 = load float, ptr %37, align 4, !tbaa !34
  %47 = load float, ptr %38, align 4, !tbaa !34
  call void @ED_region_grid_draw(ptr noundef %2, float noundef %46, float noundef %47) #8
  br label %1413

48:                                               ; preds = %3
  %49 = getelementptr inbounds %struct.SpaceClip, ptr %1, i64 0, i32 12
  %50 = load i32, ptr %49, align 8, !tbaa !38
  %51 = and i32 %50, 1024
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %96, label %53

53:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %39) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %40) #8
  %54 = getelementptr inbounds %struct.SpaceClip, ptr %1, i64 0, i32 16
  %55 = getelementptr inbounds %struct.SpaceClip, ptr %1, i64 0, i32 17
  %56 = getelementptr inbounds %struct.SpaceClip, ptr %1, i64 0, i32 18
  %57 = call ptr @ED_space_clip_get_stable_buffer(ptr noundef %1, ptr noundef nonnull %54, ptr noundef nonnull %55, ptr noundef nonnull %56) #8
  %58 = icmp eq ptr %57, null
  br i1 %58, label %95, label %59

59:                                               ; preds = %53
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %41) #8
  %60 = getelementptr inbounds %struct.MovieClip, ptr %42, i64 0, i32 11, i32 1, i32 4
  %61 = load float, ptr %60, align 8, !tbaa !48
  %62 = load i32, ptr %35, align 4, !tbaa !59
  %63 = getelementptr inbounds %struct.ImBuf, ptr %57, i64 0, i32 2
  %64 = load i32, ptr %63, align 8, !tbaa !60
  %65 = icmp eq i32 %62, %64
  br i1 %65, label %75, label %66

66:                                               ; preds = %59
  %67 = sitofp i32 %62 to float
  %68 = sitofp i32 %64 to float
  %69 = fdiv float %67, %68
  %70 = load float, ptr %54, align 4, !tbaa !34
  %71 = fmul float %69, %70
  store float %71, ptr %41, align 4, !tbaa !34
  %72 = getelementptr inbounds %struct.SpaceClip, ptr %1, i64 0, i32 16, i64 1
  %73 = load float, ptr %72, align 4, !tbaa !34
  %74 = fmul float %69, %73
  br label %79

75:                                               ; preds = %59
  %76 = load float, ptr %54, align 4, !tbaa !34
  store float %76, ptr %41, align 4, !tbaa !34
  %77 = getelementptr inbounds %struct.SpaceClip, ptr %1, i64 0, i32 16, i64 1
  %78 = load float, ptr %77, align 4, !tbaa !34
  br label %79

79:                                               ; preds = %75, %66
  %80 = phi float [ %78, %75 ], [ %74, %66 ]
  %81 = getelementptr inbounds float, ptr %41, i64 1
  store float %80, ptr %81, align 4, !tbaa !34
  %82 = load i32, ptr %36, align 4, !tbaa !59
  %83 = load float, ptr %55, align 4, !tbaa !64
  %84 = load float, ptr %56, align 8, !tbaa !65
  %85 = getelementptr inbounds %struct.SpaceClip, ptr %1, i64 0, i32 20
  call void @BKE_tracking_stabilization_data_to_mat4(i32 noundef %62, i32 noundef %82, float noundef %61, ptr noundef nonnull %41, float noundef %83, float noundef %84, ptr noundef nonnull %85) #8
  call void @unit_m4(ptr noundef nonnull %39) #8
  %86 = load i32, ptr %35, align 4, !tbaa !59
  %87 = sitofp i32 %86 to float
  %88 = fdiv float 1.000000e+00, %87
  store float %88, ptr %39, align 16, !tbaa !34
  %89 = load i32, ptr %36, align 4, !tbaa !59
  %90 = sitofp i32 %89 to float
  %91 = fdiv float 1.000000e+00, %90
  %92 = getelementptr inbounds [4 x [4 x float]], ptr %39, i64 0, i64 1, i64 1
  store float %91, ptr %92, align 4, !tbaa !34
  %93 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %40, ptr noundef nonnull %39) #8
  %94 = getelementptr inbounds %struct.SpaceClip, ptr %1, i64 0, i32 21
  call void @_va_mul_m4_series_4(ptr noundef nonnull %94, ptr noundef nonnull %39, ptr noundef nonnull %85, ptr noundef nonnull %40) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %41) #8
  br label %95

95:                                               ; preds = %79, %53
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %40) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %39) #8
  br label %106

96:                                               ; preds = %48
  %97 = and i32 %50, 64
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %96
  %100 = call ptr @ED_space_clip_get_buffer(ptr noundef %1) #8
  %101 = getelementptr inbounds %struct.SpaceClip, ptr %1, i64 0, i32 16
  store float 0.000000e+00, ptr %101, align 4, !tbaa !34
  %102 = getelementptr inbounds %struct.SpaceClip, ptr %1, i64 0, i32 16, i64 1
  store float 0.000000e+00, ptr %102, align 4, !tbaa !34
  %103 = getelementptr inbounds %struct.SpaceClip, ptr %1, i64 0, i32 17
  store float 1.000000e+00, ptr %103, align 4, !tbaa !64
  %104 = getelementptr inbounds %struct.SpaceClip, ptr %1, i64 0, i32 20
  call void @unit_m4(ptr noundef nonnull %104) #8
  %105 = getelementptr inbounds %struct.SpaceClip, ptr %1, i64 0, i32 21
  call void @unit_m4(ptr noundef nonnull %105) #8
  br label %106

106:                                              ; preds = %96, %99, %95
  %107 = phi ptr [ %57, %95 ], [ %100, %99 ], [ null, %96 ]
  %108 = icmp eq ptr %107, null
  br i1 %108, label %165, label %109

109:                                              ; preds = %106
  %110 = load i32, ptr %35, align 4, !tbaa !59
  %111 = load i32, ptr %36, align 4, !tbaa !59
  %112 = load float, ptr %37, align 4, !tbaa !34
  %113 = load float, ptr %38, align 4, !tbaa !34
  %114 = call ptr @ED_space_clip_get_clip(ptr noundef %1) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %33) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %34) #8
  %115 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2
  call void @UI_view2d_view_to_region(ptr noundef nonnull %115, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull %33, ptr noundef nonnull %34) #8
  %116 = getelementptr inbounds %struct.ImBuf, ptr %107, i64 0, i32 4
  %117 = load i8, ptr %116, align 8, !tbaa !66
  %118 = icmp eq i8 %117, 32
  br i1 %118, label %119, label %132

119:                                              ; preds = %109
  call void @glEnable(i32 noundef 3042) #8
  call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #8
  %120 = load i32, ptr %33, align 4, !tbaa !59
  %121 = sitofp i32 %120 to float
  %122 = load i32, ptr %34, align 4, !tbaa !59
  %123 = sitofp i32 %122 to float
  %124 = getelementptr inbounds %struct.ImBuf, ptr %107, i64 0, i32 2
  %125 = load i32, ptr %124, align 8, !tbaa !60
  %126 = sitofp i32 %125 to float
  %127 = call float @llvm.fmuladd.f32(float %112, float %126, float %121)
  %128 = getelementptr inbounds %struct.ImBuf, ptr %107, i64 0, i32 3
  %129 = load i32, ptr %128, align 4, !tbaa !67
  %130 = sitofp i32 %129 to float
  %131 = call float @llvm.fmuladd.f32(float %113, float %130, float %123)
  call void @fdrawcheckerboard(float noundef %121, float noundef %123, float noundef %127, float noundef %131) #8
  br label %132

132:                                              ; preds = %119, %109
  %133 = getelementptr inbounds %struct.MovieClip, ptr %114, i64 0, i32 14
  %134 = load i32, ptr %133, align 8, !tbaa !68
  %135 = and i32 %134, 1
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %143, label %137

137:                                              ; preds = %132
  %138 = getelementptr inbounds %struct.SpaceClip, ptr %1, i64 0, i32 9, i32 1
  %139 = load i16, ptr %138, align 4, !tbaa !69
  %140 = and i16 %139, -5
  %141 = icmp eq i16 %140, 0
  %142 = select i1 %141, i32 9728, i32 9729
  br label %143

143:                                              ; preds = %137, %132
  %144 = phi i32 [ %142, %137 ], [ 9728, %132 ]
  %145 = sitofp i32 %110 to float
  %146 = fmul float %112, %145
  %147 = getelementptr inbounds %struct.ImBuf, ptr %107, i64 0, i32 2
  %148 = load i32, ptr %147, align 8, !tbaa !60
  %149 = sitofp i32 %148 to float
  %150 = fdiv float %146, %149
  %151 = sitofp i32 %111 to float
  %152 = fmul float %113, %151
  %153 = getelementptr inbounds %struct.ImBuf, ptr %107, i64 0, i32 3
  %154 = load i32, ptr %153, align 4, !tbaa !67
  %155 = sitofp i32 %154 to float
  %156 = fdiv float %152, %155
  call void @glPixelZoom(float noundef %150, float noundef %156) #8
  %157 = load i32, ptr %33, align 4, !tbaa !59
  %158 = sitofp i32 %157 to float
  %159 = load i32, ptr %34, align 4, !tbaa !59
  %160 = sitofp i32 %159 to float
  call void @glaDrawImBuf_glsl_ctx(ptr noundef %0, ptr noundef nonnull %107, float noundef %158, float noundef %160, i32 noundef %144) #8
  call void @glPixelZoom(float noundef 1.000000e+00, float noundef 1.000000e+00) #8
  %161 = load i8, ptr %116, align 8, !tbaa !66
  %162 = icmp eq i8 %161, 32
  br i1 %162, label %163, label %164

163:                                              ; preds = %143
  call void @glDisable(i32 noundef 3042) #8
  br label %164

164:                                              ; preds = %143, %163
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %34) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %33) #8
  call void @IMB_freeImBuf(ptr noundef nonnull %107) #8
  br label %186

165:                                              ; preds = %106
  %166 = load i32, ptr %49, align 8, !tbaa !38
  %167 = and i32 %166, 64
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %183, label %169

169:                                              ; preds = %165
  %170 = load i32, ptr %35, align 4, !tbaa !59
  %171 = load i32, ptr %36, align 4, !tbaa !59
  %172 = load float, ptr %37, align 4, !tbaa !34
  %173 = load float, ptr %38, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %31) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %32) #8
  %174 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2
  call void @UI_view2d_view_to_region(ptr noundef nonnull %174, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull %31, ptr noundef nonnull %32) #8
  call void @glColor3f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #8
  %175 = load i32, ptr %31, align 4, !tbaa !59
  %176 = sitofp i32 %175 to float
  %177 = load i32, ptr %32, align 4, !tbaa !59
  %178 = sitofp i32 %177 to float
  %179 = sitofp i32 %170 to float
  %180 = call float @llvm.fmuladd.f32(float %172, float %179, float %176)
  %181 = sitofp i32 %171 to float
  %182 = call float @llvm.fmuladd.f32(float %173, float %181, float %178)
  call void @glRectf(float noundef %176, float noundef %178, float noundef %180, float noundef %182) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %32) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %31) #8
  br label %186

183:                                              ; preds = %165
  %184 = load float, ptr %37, align 4, !tbaa !34
  %185 = load float, ptr %38, align 4, !tbaa !34
  call void @ED_region_grid_draw(ptr noundef %2, float noundef %184, float noundef %185) #8
  br label %186

186:                                              ; preds = %169, %183, %164
  %187 = load i32, ptr %35, align 4, !tbaa !59
  %188 = icmp ne i32 %187, 0
  %189 = load i32, ptr %36, align 4
  %190 = icmp ne i32 %189, 0
  %191 = select i1 %188, i1 %190, i1 false
  br i1 %191, label %192, label %1413

192:                                              ; preds = %186
  %193 = load float, ptr %37, align 4, !tbaa !34
  %194 = load float, ptr %38, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %29) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %30) #8
  %195 = call ptr @ED_space_clip_get_clip(ptr noundef %1) #8
  %196 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2
  call void @UI_view2d_view_to_region(ptr noundef nonnull %196, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull %29, ptr noundef nonnull %30) #8
  %197 = load i32, ptr %49, align 8, !tbaa !38
  %198 = and i32 %197, 1024
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %213, label %200

200:                                              ; preds = %192
  %201 = getelementptr inbounds %struct.MovieClip, ptr %195, i64 0, i32 11, i32 5
  %202 = load i32, ptr %201, align 8, !tbaa !70
  %203 = and i32 %202, 1
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %213, label %205

205:                                              ; preds = %200
  call void @glColor3f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #8
  call void @glLineStipple(i32 noundef 3, i16 noundef zeroext -21846) #8
  call void @glEnable(i32 noundef 2852) #8
  call void @glEnable(i32 noundef 3058) #8
  call void @glLogicOp(i32 noundef 5384) #8
  call void @glPushMatrix() #8
  %206 = load i32, ptr %29, align 4, !tbaa !59
  %207 = sitofp i32 %206 to float
  %208 = load i32, ptr %30, align 4, !tbaa !59
  %209 = sitofp i32 %208 to float
  call void @glTranslatef(float noundef %207, float noundef %209, float noundef 0.000000e+00) #8
  call void @glScalef(float noundef %193, float noundef %194, float noundef 1.000000e+00) #8
  %210 = getelementptr inbounds %struct.SpaceClip, ptr %1, i64 0, i32 20
  call void @glMultMatrixf(ptr noundef nonnull %210) #8
  call void @glBegin(i32 noundef 2) #8
  call void @glVertex2f(float noundef 0.000000e+00, float noundef 0.000000e+00) #8
  %211 = sitofp i32 %187 to float
  call void @glVertex2f(float noundef %211, float noundef 0.000000e+00) #8
  %212 = sitofp i32 %189 to float
  call void @glVertex2f(float noundef %211, float noundef %212) #8
  call void @glVertex2f(float noundef 0.000000e+00, float noundef %212) #8
  call void @glEnd() #8
  call void @glPopMatrix() #8
  call void @glDisable(i32 noundef 3058) #8
  call void @glDisable(i32 noundef 2852) #8
  br label %213

213:                                              ; preds = %192, %200, %205
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %30) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %29) #8
  %214 = load i32, ptr %35, align 4, !tbaa !59
  %215 = load i32, ptr %36, align 4, !tbaa !59
  %216 = load float, ptr %37, align 4, !tbaa !34
  %217 = load float, ptr %38, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %22) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %23) #8
  %218 = getelementptr inbounds %struct.MovieClip, ptr %42, i64 0, i32 11
  %219 = call ptr @BKE_tracking_get_active_tracks(ptr noundef nonnull %218) #8
  %220 = call ptr @BKE_tracking_get_active_plane_tracks(ptr noundef nonnull %218) #8
  %221 = call i32 @ED_space_clip_get_clip_frame_number(ptr noundef %1) #8
  %222 = getelementptr inbounds %struct.SpaceClip, ptr %1, i64 0, i32 9, i32 2
  %223 = load i16, ptr %222, align 2, !tbaa !71
  %224 = and i16 %223, 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %24) #8
  call void @UI_view2d_view_to_region_fl(ptr noundef nonnull %196, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull %22, ptr noundef nonnull %23) #8
  call void @glPushMatrix() #8
  %225 = load float, ptr %22, align 4, !tbaa !34
  %226 = load float, ptr %23, align 4, !tbaa !34
  call void @glTranslatef(float noundef %225, float noundef %226, float noundef 0.000000e+00) #8
  call void @glPushMatrix() #8
  call void @glScalef(float noundef %216, float noundef %217, float noundef 0.000000e+00) #8
  %227 = getelementptr inbounds %struct.SpaceClip, ptr %1, i64 0, i32 20
  call void @glMultMatrixf(ptr noundef nonnull %227) #8
  %228 = sitofp i32 %214 to float
  %229 = sitofp i32 %215 to float
  call void @glScalef(float noundef %228, float noundef %229, float noundef 0.000000e+00) #8
  %230 = call ptr @BKE_tracking_track_get_active(ptr noundef nonnull %218) #8
  %231 = call ptr @BKE_tracking_plane_track_get_active(ptr noundef nonnull %218) #8
  %232 = load ptr, ptr %220, align 8, !tbaa !72
  %233 = icmp eq ptr %232, null
  br i1 %233, label %247, label %234

234:                                              ; preds = %213, %244
  %235 = phi ptr [ %245, %244 ], [ %232, %213 ]
  %236 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %235, i64 0, i32 8
  %237 = load i32, ptr %236, align 4, !tbaa !73
  %238 = and i32 %237, 2
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %244

240:                                              ; preds = %234
  %241 = icmp eq ptr %235, %231
  %242 = zext i1 %241 to i8
  %243 = call ptr @BKE_tracking_plane_marker_get(ptr noundef nonnull %235, i32 noundef %221) #8
  call fastcc void @draw_plane_marker_ex(ptr noundef %1, ptr noundef %43, ptr noundef nonnull %235, ptr noundef %243, i8 noundef zeroext 0, i8 noundef zeroext 1, i32 noundef %214, i32 noundef %215)
  call fastcc void @draw_plane_marker_ex(ptr noundef %1, ptr noundef %43, ptr noundef nonnull %235, ptr noundef %243, i8 noundef zeroext %242, i8 noundef zeroext 0, i32 noundef %214, i32 noundef %215)
  br label %244

244:                                              ; preds = %240, %234
  %245 = load ptr, ptr %235, align 8, !tbaa !72
  %246 = icmp eq ptr %245, null
  br i1 %246, label %247, label %234, !llvm.loop !75

247:                                              ; preds = %244, %213
  %248 = load i16, ptr %222, align 2, !tbaa !71
  %249 = and i16 %248, 1
  %250 = icmp eq i16 %249, 0
  br i1 %250, label %328, label %251

251:                                              ; preds = %247
  %252 = load ptr, ptr %219, align 8, !tbaa !72
  %253 = icmp eq ptr %252, null
  br i1 %253, label %284, label %254

254:                                              ; preds = %251
  %255 = getelementptr inbounds %struct.SpaceClip, ptr %1, i64 0, i32 10
  br label %256

256:                                              ; preds = %254, %280
  %257 = phi ptr [ %252, %254 ], [ %282, %280 ]
  %258 = phi i32 [ 0, %254 ], [ %281, %280 ]
  %259 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %257, i64 0, i32 13
  %260 = load i32, ptr %259, align 8, !tbaa !78
  %261 = and i32 %260, 32
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %263, label %280

263:                                              ; preds = %256
  %264 = call ptr @BKE_tracking_marker_get(ptr noundef nonnull %257, i32 noundef %221) #8
  %265 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %264, i64 0, i32 5
  %266 = load i32, ptr %265, align 4, !tbaa !80
  %267 = and i32 %266, 1
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %278, label %269

269:                                              ; preds = %263
  %270 = load i32, ptr %49, align 8, !tbaa !38
  %271 = and i32 %270, 128
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %278, label %273

273:                                              ; preds = %269
  %274 = load ptr, ptr %255, align 8, !tbaa !81
  %275 = getelementptr inbounds %struct.MovieClip, ptr %274, i64 0, i32 11, i32 6
  %276 = load ptr, ptr %275, align 8, !tbaa !82
  %277 = icmp eq ptr %276, %257
  br i1 %277, label %278, label %280

278:                                              ; preds = %273, %269, %263
  %279 = add nsw i32 %258, 1
  br label %280

280:                                              ; preds = %278, %273, %256
  %281 = phi i32 [ %279, %278 ], [ %258, %273 ], [ %258, %256 ]
  %282 = load ptr, ptr %257, align 8, !tbaa !72
  %283 = icmp eq ptr %282, null
  br i1 %283, label %284, label %256, !llvm.loop !83

284:                                              ; preds = %280, %251
  %285 = phi i32 [ 0, %251 ], [ %281, %280 ]
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %328, label %287

287:                                              ; preds = %284
  %288 = load ptr, ptr @MEM_callocN, align 8, !tbaa !72
  %289 = sext i32 %285 to i64
  %290 = shl nsw i64 %289, 3
  %291 = call ptr %288(i64 noundef %290, ptr noundef nonnull @.str) #8
  %292 = load ptr, ptr %219, align 8, !tbaa !72
  %293 = icmp eq ptr %292, null
  br i1 %293, label %328, label %294

294:                                              ; preds = %287
  %295 = getelementptr inbounds %struct.SpaceClip, ptr %1, i64 0, i32 10
  br label %296

296:                                              ; preds = %294, %323
  %297 = phi ptr [ %292, %294 ], [ %326, %323 ]
  %298 = phi ptr [ null, %294 ], [ %325, %323 ]
  %299 = phi ptr [ %291, %294 ], [ %324, %323 ]
  %300 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %297, i64 0, i32 13
  %301 = load i32, ptr %300, align 8, !tbaa !78
  %302 = and i32 %301, 32
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %304, label %323

304:                                              ; preds = %296
  %305 = call ptr @BKE_tracking_marker_get(ptr noundef nonnull %297, i32 noundef %221) #8
  %306 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %305, i64 0, i32 5
  %307 = load i32, ptr %306, align 4, !tbaa !80
  %308 = and i32 %307, 1
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %319, label %310

310:                                              ; preds = %304
  %311 = load i32, ptr %49, align 8, !tbaa !38
  %312 = and i32 %311, 128
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %319, label %314

314:                                              ; preds = %310
  %315 = load ptr, ptr %295, align 8, !tbaa !81
  %316 = getelementptr inbounds %struct.MovieClip, ptr %315, i64 0, i32 11, i32 6
  %317 = load ptr, ptr %316, align 8, !tbaa !82
  %318 = icmp eq ptr %317, %297
  br i1 %318, label %319, label %323

319:                                              ; preds = %314, %310, %304
  call void @ED_clip_point_undistorted_pos(ptr noundef %1, ptr noundef %305, ptr noundef %299) #8
  %320 = icmp eq ptr %297, %230
  %321 = select i1 %320, ptr %299, ptr %298
  %322 = getelementptr inbounds float, ptr %299, i64 2
  br label %323

323:                                              ; preds = %319, %314, %296
  %324 = phi ptr [ %322, %319 ], [ %299, %314 ], [ %299, %296 ]
  %325 = phi ptr [ %321, %319 ], [ %298, %314 ], [ %298, %296 ]
  %326 = load ptr, ptr %297, align 8, !tbaa !72
  %327 = icmp eq ptr %326, null
  br i1 %327, label %328, label %296, !llvm.loop !84

328:                                              ; preds = %323, %287, %284, %247
  %329 = phi ptr [ null, %247 ], [ null, %284 ], [ null, %287 ], [ %325, %323 ]
  %330 = phi ptr [ null, %247 ], [ null, %284 ], [ %291, %287 ], [ %291, %323 ]
  %331 = load i32, ptr %49, align 8, !tbaa !38
  %332 = and i32 %331, 16
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %579, label %334

334:                                              ; preds = %328
  %335 = load ptr, ptr %219, align 8, !tbaa !72
  %336 = icmp eq ptr %335, null
  br i1 %336, label %579, label %337

337:                                              ; preds = %334
  %338 = getelementptr inbounds %struct.SpaceClip, ptr %1, i64 0, i32 15
  br label %339

339:                                              ; preds = %337, %576
  %340 = phi ptr [ %335, %337 ], [ %577, %576 ]
  %341 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %340, i64 0, i32 13
  %342 = load i32, ptr %341, align 8, !tbaa !78
  %343 = and i32 %342, 32
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %345, label %576

345:                                              ; preds = %339
  %346 = load i32, ptr %338, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(i64 816, ptr nonnull %21) #8
  %347 = load i32, ptr %49, align 8, !tbaa !38
  %348 = and i32 %347, 8
  %349 = icmp eq i32 %346, 0
  br i1 %349, label %575, label %350

350:                                              ; preds = %345
  %351 = call i32 @ED_space_clip_get_clip_frame_number(ptr noundef %1) #8
  %352 = call ptr @BKE_tracking_marker_get(ptr noundef nonnull %340, i32 noundef %351) #8
  %353 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %352, i64 0, i32 4
  %354 = load i32, ptr %353, align 4, !tbaa !86
  %355 = icmp eq i32 %354, %351
  br i1 %355, label %356, label %575

356:                                              ; preds = %350
  %357 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %352, i64 0, i32 5
  %358 = load i32, ptr %357, align 4, !tbaa !80
  %359 = and i32 %358, 1
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %361, label %575

361:                                              ; preds = %356
  %362 = sub nsw i32 %351, %346
  %363 = icmp sgt i32 %346, 0
  br i1 %363, label %364, label %404

364:                                              ; preds = %361
  %365 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %340, i64 0, i32 7
  %366 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %340, i64 0, i32 7, i64 1
  %367 = zext nneg i32 %346 to i64
  br label %368

368:                                              ; preds = %364, %384
  %369 = phi i64 [ %367, %364 ], [ %385, %384 ]
  %370 = phi i32 [ %351, %364 ], [ %372, %384 ]
  %371 = phi i32 [ -1, %364 ], [ %398, %384 ]
  %372 = add nsw i32 %370, -1
  %373 = call ptr @BKE_tracking_marker_get(ptr noundef nonnull %340, i32 noundef %372) #8
  %374 = icmp eq ptr %373, null
  br i1 %374, label %400, label %375

375:                                              ; preds = %368
  %376 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %373, i64 0, i32 5
  %377 = load i32, ptr %376, align 4, !tbaa !80
  %378 = and i32 %377, 1
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %380, label %400

380:                                              ; preds = %375
  %381 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %373, i64 0, i32 4
  %382 = load i32, ptr %381, align 4, !tbaa !86
  %383 = icmp eq i32 %382, %372
  br i1 %383, label %384, label %400

384:                                              ; preds = %380
  %385 = add nsw i64 %369, -1
  %386 = getelementptr inbounds [102 x [2 x float]], ptr %21, i64 0, i64 %385
  %387 = load float, ptr %373, align 4, !tbaa !34
  %388 = load float, ptr %365, align 4, !tbaa !34
  %389 = fadd float %387, %388
  store float %389, ptr %386, align 8, !tbaa !34
  %390 = getelementptr inbounds float, ptr %373, i64 1
  %391 = load float, ptr %390, align 4, !tbaa !34
  %392 = load float, ptr %366, align 4, !tbaa !34
  %393 = fadd float %391, %392
  %394 = getelementptr inbounds float, ptr %386, i64 1
  store float %393, ptr %394, align 4, !tbaa !34
  call void @ED_clip_point_undistorted_pos(ptr noundef %1, ptr noundef nonnull %386, ptr noundef nonnull %386) #8
  %395 = load i32, ptr %381, align 4, !tbaa !86
  %396 = icmp eq i32 %395, %351
  %397 = trunc i64 %385 to i32
  %398 = select i1 %396, i32 %397, i32 %371
  %399 = icmp sgt i32 %372, %362
  br i1 %399, label %368, label %400, !llvm.loop !87

400:                                              ; preds = %380, %375, %368, %384
  %401 = phi i32 [ %398, %384 ], [ %371, %368 ], [ %371, %375 ], [ %371, %380 ]
  %402 = phi i64 [ %385, %384 ], [ %369, %368 ], [ %369, %375 ], [ %369, %380 ]
  %403 = trunc i64 %402 to i32
  br label %404

404:                                              ; preds = %400, %361
  %405 = phi i32 [ -1, %361 ], [ %401, %400 ]
  %406 = phi i32 [ %346, %361 ], [ %403, %400 ]
  %407 = icmp slt i32 %346, 0
  br i1 %407, label %449, label %408

408:                                              ; preds = %404
  %409 = add i32 %351, %346
  %410 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %340, i64 0, i32 7
  %411 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %340, i64 0, i32 7, i64 1
  %412 = zext nneg i32 %346 to i64
  %413 = call i32 @llvm.smax.i32(i32 %351, i32 %409)
  br label %414

414:                                              ; preds = %408, %429
  %415 = phi i64 [ %412, %408 ], [ %433, %429 ]
  %416 = phi i32 [ %351, %408 ], [ %443, %429 ]
  %417 = phi i32 [ %405, %408 ], [ %432, %429 ]
  %418 = call ptr @BKE_tracking_marker_get(ptr noundef nonnull %340, i32 noundef %416) #8
  %419 = icmp eq ptr %418, null
  br i1 %419, label %445, label %420

420:                                              ; preds = %414
  %421 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %418, i64 0, i32 5
  %422 = load i32, ptr %421, align 4, !tbaa !80
  %423 = and i32 %422, 1
  %424 = icmp eq i32 %423, 0
  br i1 %424, label %425, label %445

425:                                              ; preds = %420
  %426 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %418, i64 0, i32 4
  %427 = load i32, ptr %426, align 4, !tbaa !86
  %428 = icmp eq i32 %427, %416
  br i1 %428, label %429, label %445

429:                                              ; preds = %425
  %430 = icmp eq i32 %427, %351
  %431 = trunc i64 %415 to i32
  %432 = select i1 %430, i32 %431, i32 %417
  %433 = add nuw nsw i64 %415, 1
  %434 = getelementptr inbounds [102 x [2 x float]], ptr %21, i64 0, i64 %415
  %435 = load float, ptr %418, align 4, !tbaa !34
  %436 = load float, ptr %410, align 4, !tbaa !34
  %437 = fadd float %435, %436
  store float %437, ptr %434, align 8, !tbaa !34
  %438 = getelementptr inbounds float, ptr %418, i64 1
  %439 = load float, ptr %438, align 4, !tbaa !34
  %440 = load float, ptr %411, align 4, !tbaa !34
  %441 = fadd float %439, %440
  %442 = getelementptr inbounds float, ptr %434, i64 1
  store float %441, ptr %442, align 4, !tbaa !34
  call void @ED_clip_point_undistorted_pos(ptr noundef %1, ptr noundef nonnull %434, ptr noundef nonnull %434) #8
  %443 = add i32 %416, 1
  %444 = icmp eq i32 %416, %413
  br i1 %444, label %445, label %414, !llvm.loop !88

445:                                              ; preds = %425, %420, %414, %429
  %446 = phi i32 [ %432, %429 ], [ %417, %414 ], [ %417, %420 ], [ %417, %425 ]
  %447 = phi i64 [ %433, %429 ], [ %415, %414 ], [ %415, %420 ], [ %415, %425 ]
  %448 = trunc i64 %447 to i32
  br label %449

449:                                              ; preds = %445, %404
  %450 = phi i32 [ %405, %404 ], [ %446, %445 ]
  %451 = phi i32 [ %346, %404 ], [ %448, %445 ]
  %452 = icmp eq i32 %348, 0
  br i1 %452, label %453, label %509

453:                                              ; preds = %449
  call void @UI_ThemeColor(i32 noundef 140) #8
  %454 = load i32, ptr %341, align 8, !tbaa !78
  %455 = and i32 %454, 32
  %456 = icmp eq i32 %455, 0
  br i1 %456, label %457, label %495

457:                                              ; preds = %453
  %458 = and i32 %454, 1
  %459 = icmp eq i32 %458, 0
  br i1 %459, label %460, label %477

460:                                              ; preds = %457
  %461 = load i32, ptr %49, align 8, !tbaa !38
  %462 = and i32 %461, 1
  %463 = icmp eq i32 %462, 0
  br i1 %463, label %469, label %464

464:                                              ; preds = %460
  %465 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %340, i64 0, i32 14
  %466 = load i32, ptr %465, align 4, !tbaa !89
  %467 = and i32 %466, 1
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %469, label %477

469:                                              ; preds = %464, %460
  %470 = and i32 %461, 2
  %471 = icmp eq i32 %470, 0
  br i1 %471, label %495, label %472

472:                                              ; preds = %469
  %473 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %340, i64 0, i32 15
  %474 = load i32, ptr %473, align 8, !tbaa !90
  %475 = and i32 %474, 1
  %476 = icmp eq i32 %475, 0
  br i1 %476, label %495, label %477

477:                                              ; preds = %472, %464, %457
  call void @glPointSize(float noundef 5.000000e+00) #8
  call void @glBegin(i32 noundef 0) #8
  %478 = icmp slt i32 %406, %451
  br i1 %478, label %479, label %494

479:                                              ; preds = %477
  %480 = sext i32 %406 to i64
  %481 = sext i32 %450 to i64
  br label %482

482:                                              ; preds = %479, %490
  %483 = phi i64 [ %480, %479 ], [ %491, %490 ]
  %484 = icmp eq i64 %483, %481
  br i1 %484, label %490, label %485

485:                                              ; preds = %482
  %486 = getelementptr inbounds [102 x [2 x float]], ptr %21, i64 0, i64 %483
  %487 = load float, ptr %486, align 8, !tbaa !34
  %488 = getelementptr inbounds [102 x [2 x float]], ptr %21, i64 0, i64 %483, i64 1
  %489 = load float, ptr %488, align 4, !tbaa !34
  call void @glVertex2f(float noundef %487, float noundef %489) #8
  br label %490

490:                                              ; preds = %485, %482
  %491 = add nsw i64 %483, 1
  %492 = trunc i64 %491 to i32
  %493 = icmp eq i32 %451, %492
  br i1 %493, label %494, label %482, !llvm.loop !91

494:                                              ; preds = %490, %477
  call void @glEnd() #8
  br label %495

495:                                              ; preds = %494, %472, %469, %453
  call void @glLineWidth(float noundef 3.000000e+00) #8
  call void @glBegin(i32 noundef 3) #8
  %496 = icmp slt i32 %406, %451
  br i1 %496, label %497, label %508

497:                                              ; preds = %495
  %498 = sext i32 %406 to i64
  %499 = sext i32 %451 to i64
  br label %500

500:                                              ; preds = %497, %500
  %501 = phi i64 [ %498, %497 ], [ %506, %500 ]
  %502 = getelementptr inbounds [102 x [2 x float]], ptr %21, i64 0, i64 %501
  %503 = load float, ptr %502, align 8, !tbaa !34
  %504 = getelementptr inbounds [102 x [2 x float]], ptr %21, i64 0, i64 %501, i64 1
  %505 = load float, ptr %504, align 4, !tbaa !34
  call void @glVertex2f(float noundef %503, float noundef %505) #8
  %506 = add nsw i64 %501, 1
  %507 = icmp eq i64 %506, %499
  br i1 %507, label %508, label %500, !llvm.loop !92

508:                                              ; preds = %500, %495
  call void @glEnd() #8
  call void @glLineWidth(float noundef 1.000000e+00) #8
  br label %509

509:                                              ; preds = %508, %449
  call void @UI_ThemeColor(i32 noundef 146) #8
  %510 = load i32, ptr %341, align 8, !tbaa !78
  %511 = and i32 %510, 32
  %512 = icmp eq i32 %511, 0
  br i1 %512, label %513, label %556

513:                                              ; preds = %509
  %514 = and i32 %510, 1
  %515 = icmp eq i32 %514, 0
  br i1 %515, label %516, label %533

516:                                              ; preds = %513
  %517 = load i32, ptr %49, align 8, !tbaa !38
  %518 = and i32 %517, 1
  %519 = icmp eq i32 %518, 0
  br i1 %519, label %525, label %520

520:                                              ; preds = %516
  %521 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %340, i64 0, i32 14
  %522 = load i32, ptr %521, align 4, !tbaa !89
  %523 = and i32 %522, 1
  %524 = icmp eq i32 %523, 0
  br i1 %524, label %525, label %533

525:                                              ; preds = %520, %516
  %526 = and i32 %517, 2
  %527 = icmp eq i32 %526, 0
  br i1 %527, label %556, label %528

528:                                              ; preds = %525
  %529 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %340, i64 0, i32 15
  %530 = load i32, ptr %529, align 8, !tbaa !90
  %531 = and i32 %530, 1
  %532 = icmp eq i32 %531, 0
  br i1 %532, label %556, label %533

533:                                              ; preds = %528, %520, %513
  call void @glPointSize(float noundef 3.000000e+00) #8
  call void @glBegin(i32 noundef 0) #8
  %534 = icmp slt i32 %406, %451
  br i1 %534, label %535, label %555

535:                                              ; preds = %533
  %536 = add nsw i32 %346, 1
  %537 = sext i32 %406 to i64
  %538 = sext i32 %450 to i64
  %539 = sext i32 %536 to i64
  br label %540

540:                                              ; preds = %535, %551
  %541 = phi i64 [ %537, %535 ], [ %552, %551 ]
  %542 = icmp eq i64 %541, %539
  br i1 %542, label %543, label %544

543:                                              ; preds = %540
  call void @UI_ThemeColor(i32 noundef 147) #8
  br label %544

544:                                              ; preds = %543, %540
  %545 = icmp eq i64 %541, %538
  br i1 %545, label %551, label %546

546:                                              ; preds = %544
  %547 = getelementptr inbounds [102 x [2 x float]], ptr %21, i64 0, i64 %541
  %548 = load float, ptr %547, align 8, !tbaa !34
  %549 = getelementptr inbounds [102 x [2 x float]], ptr %21, i64 0, i64 %541, i64 1
  %550 = load float, ptr %549, align 4, !tbaa !34
  call void @glVertex2f(float noundef %548, float noundef %550) #8
  br label %551

551:                                              ; preds = %546, %544
  %552 = add nsw i64 %541, 1
  %553 = trunc i64 %552 to i32
  %554 = icmp eq i32 %451, %553
  br i1 %554, label %555, label %540, !llvm.loop !93

555:                                              ; preds = %551, %533
  call void @glEnd() #8
  br label %556

556:                                              ; preds = %555, %528, %525, %509
  call void @UI_ThemeColor(i32 noundef 146) #8
  call void @glBegin(i32 noundef 3) #8
  %557 = icmp slt i32 %406, %451
  br i1 %557, label %558, label %574

558:                                              ; preds = %556
  %559 = add nsw i32 %346, 1
  %560 = sext i32 %406 to i64
  %561 = sext i32 %559 to i64
  br label %562

562:                                              ; preds = %558, %566
  %563 = phi i64 [ %560, %558 ], [ %571, %566 ]
  %564 = icmp eq i64 %563, %561
  br i1 %564, label %565, label %566

565:                                              ; preds = %562
  call void @UI_ThemeColor(i32 noundef 147) #8
  br label %566

566:                                              ; preds = %565, %562
  %567 = getelementptr inbounds [102 x [2 x float]], ptr %21, i64 0, i64 %563
  %568 = load float, ptr %567, align 8, !tbaa !34
  %569 = getelementptr inbounds [102 x [2 x float]], ptr %21, i64 0, i64 %563, i64 1
  %570 = load float, ptr %569, align 4, !tbaa !34
  call void @glVertex2f(float noundef %568, float noundef %570) #8
  %571 = add nsw i64 %563, 1
  %572 = trunc i64 %571 to i32
  %573 = icmp eq i32 %451, %572
  br i1 %573, label %574, label %562, !llvm.loop !94

574:                                              ; preds = %566, %556
  call void @glEnd() #8
  call void @glPointSize(float noundef 1.000000e+00) #8
  br label %575

575:                                              ; preds = %574, %356, %350, %345
  call void @llvm.lifetime.end.p0(i64 816, ptr nonnull %21) #8
  br label %576

576:                                              ; preds = %575, %339
  %577 = load ptr, ptr %340, align 8, !tbaa !72
  %578 = icmp eq ptr %577, null
  br i1 %578, label %579, label %339, !llvm.loop !95

579:                                              ; preds = %576, %334, %328
  %580 = load ptr, ptr %219, align 8, !tbaa !72
  %581 = icmp eq ptr %580, null
  br i1 %581, label %590, label %582

582:                                              ; preds = %579
  %583 = getelementptr inbounds %struct.SpaceClip, ptr %1, i64 0, i32 10
  %584 = getelementptr inbounds float, ptr %24, i64 1
  %585 = fdiv float 1.000000e+00, %228
  %586 = getelementptr inbounds %struct.SpaceClip, ptr %1, i64 0, i32 8
  %587 = fdiv float 1.000000e+00, %229
  %588 = getelementptr inbounds float, ptr %19, i64 1
  %589 = getelementptr inbounds float, ptr %20, i64 1
  br label %596

590:                                              ; preds = %760, %579
  %591 = load ptr, ptr %219, align 8, !tbaa !72
  %592 = icmp eq ptr %591, null
  br i1 %592, label %802, label %593

593:                                              ; preds = %590
  %594 = getelementptr inbounds %struct.SpaceClip, ptr %1, i64 0, i32 10
  %595 = getelementptr inbounds float, ptr %24, i64 1
  br label %764

596:                                              ; preds = %582, %760
  %597 = phi ptr [ %580, %582 ], [ %762, %760 ]
  %598 = phi ptr [ %330, %582 ], [ %761, %760 ]
  %599 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %597, i64 0, i32 13
  %600 = load i32, ptr %599, align 8, !tbaa !78
  %601 = and i32 %600, 32
  %602 = icmp eq i32 %601, 0
  br i1 %602, label %603, label %760

603:                                              ; preds = %596
  %604 = call ptr @BKE_tracking_marker_get(ptr noundef nonnull %597, i32 noundef %221) #8
  %605 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %604, i64 0, i32 5
  %606 = load i32, ptr %605, align 4, !tbaa !80
  %607 = and i32 %606, 1
  %608 = icmp eq i32 %607, 0
  br i1 %608, label %618, label %609

609:                                              ; preds = %603
  %610 = load i32, ptr %49, align 8, !tbaa !38
  %611 = and i32 %610, 128
  %612 = icmp eq i32 %611, 0
  br i1 %612, label %618, label %613

613:                                              ; preds = %609
  %614 = load ptr, ptr %583, align 8, !tbaa !81
  %615 = getelementptr inbounds %struct.MovieClip, ptr %614, i64 0, i32 11, i32 6
  %616 = load ptr, ptr %615, align 8, !tbaa !82
  %617 = icmp eq ptr %616, %597
  br i1 %617, label %618, label %760

618:                                              ; preds = %613, %609, %603
  %619 = icmp eq ptr %598, null
  %620 = select i1 %619, ptr %604, ptr %598
  %621 = load float, ptr %620, align 4, !tbaa !34
  store float %621, ptr %24, align 4, !tbaa !34
  %622 = getelementptr inbounds float, ptr %620, i64 1
  %623 = load float, ptr %622, align 4, !tbaa !34
  store float %623, ptr %584, align 4, !tbaa !34
  %624 = load i32, ptr %49, align 8, !tbaa !38
  %625 = and i32 %624, 8
  call void @UI_ThemeColor(i32 noundef 140) #8
  %626 = load float, ptr %586, align 4, !tbaa !96
  %627 = fdiv float %585, %626
  %628 = fdiv float %587, %626
  %629 = load i32, ptr %605, align 4, !tbaa !80
  %630 = and i32 %629, 1
  %631 = icmp eq i32 %630, 0
  br i1 %631, label %632, label %690

632:                                              ; preds = %618
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %20) #8
  %633 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %597, i64 0, i32 7
  %634 = load float, ptr %604, align 4, !tbaa !34
  %635 = load float, ptr %633, align 4, !tbaa !34
  %636 = fadd float %634, %635
  store float %636, ptr %19, align 4, !tbaa !34
  %637 = getelementptr inbounds float, ptr %604, i64 1
  %638 = load float, ptr %637, align 4, !tbaa !34
  %639 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %597, i64 0, i32 7, i64 1
  %640 = load float, ptr %639, align 4, !tbaa !34
  %641 = fadd float %638, %640
  store float %641, ptr %588, align 4, !tbaa !34
  call void @ED_clip_point_undistorted_pos(ptr noundef %1, ptr noundef nonnull %19, ptr noundef nonnull %19) #8
  %642 = load float, ptr %19, align 4, !tbaa !34
  %643 = load float, ptr %24, align 4, !tbaa !34
  %644 = fsub float %642, %643
  store float %644, ptr %20, align 4, !tbaa !34
  %645 = load float, ptr %588, align 4, !tbaa !34
  %646 = load float, ptr %584, align 4, !tbaa !34
  %647 = fsub float %645, %646
  store float %647, ptr %589, align 4, !tbaa !34
  %648 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %604, i64 0, i32 1
  %649 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %604, i64 0, i32 1, i64 1
  %650 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %604, i64 0, i32 1, i64 2
  %651 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %604, i64 0, i32 1, i64 3
  %652 = call i32 @isect_point_quad_v2(ptr noundef nonnull %20, ptr noundef nonnull %648, ptr noundef nonnull %649, ptr noundef nonnull %650, ptr noundef nonnull %651) #8
  %653 = icmp eq i32 %652, 0
  %654 = icmp eq i32 %625, 0
  br i1 %653, label %659, label %655

655:                                              ; preds = %632
  %656 = select i1 %654, float 4.000000e+00, float 3.000000e+00
  call void @glPointSize(float noundef %656) #8
  call void @glBegin(i32 noundef 0) #8
  %657 = load float, ptr %19, align 4, !tbaa !34
  %658 = load float, ptr %588, align 4, !tbaa !34
  call void @glVertex2f(float noundef %657, float noundef %658) #8
  call void @glEnd() #8
  call void @glPointSize(float noundef 1.000000e+00) #8
  br label %689

659:                                              ; preds = %632
  br i1 %654, label %660, label %661

660:                                              ; preds = %659
  call void @glLineWidth(float noundef 3.000000e+00) #8
  br label %661

661:                                              ; preds = %660, %659
  call void @glBegin(i32 noundef 1) #8
  %662 = load float, ptr %19, align 4, !tbaa !34
  %663 = call float @llvm.fmuladd.f32(float %627, float 2.000000e+00, float %662)
  %664 = load float, ptr %588, align 4, !tbaa !34
  call void @glVertex2f(float noundef %663, float noundef %664) #8
  %665 = load float, ptr %19, align 4, !tbaa !34
  %666 = call float @llvm.fmuladd.f32(float %627, float 8.000000e+00, float %665)
  %667 = load float, ptr %588, align 4, !tbaa !34
  call void @glVertex2f(float noundef %666, float noundef %667) #8
  %668 = load float, ptr %19, align 4, !tbaa !34
  %669 = fneg float %627
  %670 = call float @llvm.fmuladd.f32(float %669, float 2.000000e+00, float %668)
  %671 = load float, ptr %588, align 4, !tbaa !34
  call void @glVertex2f(float noundef %670, float noundef %671) #8
  %672 = load float, ptr %19, align 4, !tbaa !34
  %673 = call float @llvm.fmuladd.f32(float %669, float 8.000000e+00, float %672)
  %674 = load float, ptr %588, align 4, !tbaa !34
  call void @glVertex2f(float noundef %673, float noundef %674) #8
  %675 = load float, ptr %19, align 4, !tbaa !34
  %676 = load float, ptr %588, align 4, !tbaa !34
  %677 = fneg float %628
  %678 = call float @llvm.fmuladd.f32(float %677, float 2.000000e+00, float %676)
  call void @glVertex2f(float noundef %675, float noundef %678) #8
  %679 = load float, ptr %19, align 4, !tbaa !34
  %680 = load float, ptr %588, align 4, !tbaa !34
  %681 = call float @llvm.fmuladd.f32(float %677, float 8.000000e+00, float %680)
  call void @glVertex2f(float noundef %679, float noundef %681) #8
  %682 = load float, ptr %19, align 4, !tbaa !34
  %683 = load float, ptr %588, align 4, !tbaa !34
  %684 = call float @llvm.fmuladd.f32(float %628, float 2.000000e+00, float %683)
  call void @glVertex2f(float noundef %682, float noundef %684) #8
  %685 = load float, ptr %19, align 4, !tbaa !34
  %686 = load float, ptr %588, align 4, !tbaa !34
  %687 = call float @llvm.fmuladd.f32(float %628, float 8.000000e+00, float %686)
  call void @glVertex2f(float noundef %685, float noundef %687) #8
  call void @glEnd() #8
  br i1 %654, label %688, label %689

688:                                              ; preds = %661
  call void @glLineWidth(float noundef 1.000000e+00) #8
  br label %689

689:                                              ; preds = %688, %661, %655
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #8
  br label %690

690:                                              ; preds = %689, %618
  call void @glPushMatrix() #8
  %691 = load float, ptr %24, align 4, !tbaa !34
  %692 = load float, ptr %584, align 4, !tbaa !34
  call void @glTranslatef(float noundef %691, float noundef %692, float noundef 0.000000e+00) #8
  %693 = icmp eq i32 %625, 0
  br i1 %693, label %694, label %695

694:                                              ; preds = %690
  call void @glLineWidth(float noundef 3.000000e+00) #8
  br label %695

695:                                              ; preds = %694, %690
  %696 = load i32, ptr %49, align 8, !tbaa !38
  %697 = and i32 %696, 1
  %698 = icmp eq i32 %697, 0
  br i1 %698, label %704, label %699

699:                                              ; preds = %695
  call void @glBegin(i32 noundef 2) #8
  %700 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %604, i64 0, i32 1
  call void @glVertex2fv(ptr noundef nonnull %700) #8
  %701 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %604, i64 0, i32 1, i64 1
  call void @glVertex2fv(ptr noundef nonnull %701) #8
  %702 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %604, i64 0, i32 1, i64 2
  call void @glVertex2fv(ptr noundef nonnull %702) #8
  %703 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %604, i64 0, i32 1, i64 3
  call void @glVertex2fv(ptr noundef nonnull %703) #8
  call void @glEnd() #8
  br label %704

704:                                              ; preds = %699, %695
  %705 = load i32, ptr %599, align 8, !tbaa !78
  %706 = and i32 %705, 32
  %707 = icmp eq i32 %706, 0
  br i1 %707, label %708, label %736

708:                                              ; preds = %704
  %709 = and i32 %705, 1
  %710 = icmp eq i32 %709, 0
  br i1 %710, label %711, label %728

711:                                              ; preds = %708
  %712 = load i32, ptr %49, align 8, !tbaa !38
  %713 = and i32 %712, 1
  %714 = icmp eq i32 %713, 0
  br i1 %714, label %720, label %715

715:                                              ; preds = %711
  %716 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %597, i64 0, i32 14
  %717 = load i32, ptr %716, align 4, !tbaa !89
  %718 = and i32 %717, 1
  %719 = icmp eq i32 %718, 0
  br i1 %719, label %720, label %728

720:                                              ; preds = %715, %711
  %721 = and i32 %712, 2
  %722 = icmp eq i32 %721, 0
  br i1 %722, label %736, label %723

723:                                              ; preds = %720
  %724 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %597, i64 0, i32 15
  %725 = load i32, ptr %724, align 8, !tbaa !90
  %726 = and i32 %725, 1
  %727 = icmp eq i32 %726, 0
  br i1 %727, label %736, label %728

728:                                              ; preds = %723, %715, %708
  %729 = load i32, ptr %605, align 4, !tbaa !80
  %730 = and i32 %729, 1
  %731 = icmp eq i32 %730, 0
  br i1 %731, label %736, label %732

732:                                              ; preds = %728
  %733 = load i32, ptr %49, align 8, !tbaa !38
  %734 = and i32 %733, 1
  %735 = icmp eq i32 %734, 0
  br label %736

736:                                              ; preds = %732, %728, %723, %720, %704
  %737 = phi i1 [ false, %723 ], [ false, %720 ], [ false, %704 ], [ true, %728 ], [ %735, %732 ]
  %738 = load i32, ptr %49, align 8, !tbaa !38
  %739 = and i32 %738, 2
  %740 = icmp ne i32 %739, 0
  %741 = select i1 %740, i1 %737, i1 false
  br i1 %741, label %742, label %755

742:                                              ; preds = %736
  call void @glBegin(i32 noundef 2) #8
  %743 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %604, i64 0, i32 2
  %744 = load float, ptr %743, align 4, !tbaa !34
  %745 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %604, i64 0, i32 2, i64 1
  %746 = load float, ptr %745, align 4, !tbaa !34
  call void @glVertex2f(float noundef %744, float noundef %746) #8
  %747 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %604, i64 0, i32 3
  %748 = load float, ptr %747, align 4, !tbaa !34
  %749 = load float, ptr %745, align 4, !tbaa !34
  call void @glVertex2f(float noundef %748, float noundef %749) #8
  %750 = load float, ptr %747, align 4, !tbaa !34
  %751 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %604, i64 0, i32 3, i64 1
  %752 = load float, ptr %751, align 4, !tbaa !34
  call void @glVertex2f(float noundef %750, float noundef %752) #8
  %753 = load float, ptr %743, align 4, !tbaa !34
  %754 = load float, ptr %751, align 4, !tbaa !34
  call void @glVertex2f(float noundef %753, float noundef %754) #8
  call void @glEnd() #8
  br label %755

755:                                              ; preds = %742, %736
  call void @glPopMatrix() #8
  br i1 %693, label %756, label %757

756:                                              ; preds = %755
  call void @glLineWidth(float noundef 1.000000e+00) #8
  br label %757

757:                                              ; preds = %756, %755
  call fastcc void @draw_marker_areas(ptr noundef %1, ptr noundef nonnull %597, ptr noundef %604, ptr noundef nonnull %24, i32 noundef %214, i32 noundef %215, i32 noundef 0, i32 noundef 0)
  call fastcc void @draw_marker_slide_zones(ptr noundef %1, ptr noundef nonnull %597, ptr noundef %604, ptr noundef nonnull %24, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef %214, i32 noundef %215)
  call fastcc void @draw_marker_slide_zones(ptr noundef %1, ptr noundef nonnull %597, ptr noundef %604, ptr noundef nonnull %24, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %214, i32 noundef %215)
  %758 = getelementptr inbounds float, ptr %598, i64 2
  %759 = select i1 %619, ptr null, ptr %758
  br label %760

760:                                              ; preds = %757, %613, %596
  %761 = phi ptr [ %598, %613 ], [ %598, %596 ], [ %759, %757 ]
  %762 = load ptr, ptr %597, align 8, !tbaa !72
  %763 = icmp eq ptr %762, null
  br i1 %763, label %590, label %596, !llvm.loop !97

764:                                              ; preds = %593, %798
  %765 = phi ptr [ %591, %593 ], [ %800, %798 ]
  %766 = phi ptr [ %330, %593 ], [ %799, %798 ]
  %767 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %765, i64 0, i32 13
  %768 = load i32, ptr %767, align 8, !tbaa !78
  %769 = and i32 %768, 32
  %770 = icmp eq i32 %769, 0
  br i1 %770, label %771, label %798

771:                                              ; preds = %764
  %772 = icmp eq ptr %765, %230
  %773 = call ptr @BKE_tracking_marker_get(ptr noundef nonnull %765, i32 noundef %221) #8
  %774 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %773, i64 0, i32 5
  %775 = load i32, ptr %774, align 4, !tbaa !80
  %776 = and i32 %775, 1
  %777 = icmp eq i32 %776, 0
  br i1 %777, label %787, label %778

778:                                              ; preds = %771
  %779 = load i32, ptr %49, align 8, !tbaa !38
  %780 = and i32 %779, 128
  %781 = icmp eq i32 %780, 0
  br i1 %781, label %787, label %782

782:                                              ; preds = %778
  %783 = load ptr, ptr %594, align 8, !tbaa !81
  %784 = getelementptr inbounds %struct.MovieClip, ptr %783, i64 0, i32 11, i32 6
  %785 = load ptr, ptr %784, align 8, !tbaa !82
  %786 = icmp eq ptr %785, %765
  br i1 %786, label %787, label %798

787:                                              ; preds = %782, %778, %771
  br i1 %772, label %794, label %788

788:                                              ; preds = %787
  %789 = icmp eq ptr %766, null
  %790 = select i1 %789, ptr %773, ptr %766
  %791 = load float, ptr %790, align 4, !tbaa !34
  store float %791, ptr %24, align 4, !tbaa !34
  %792 = getelementptr inbounds float, ptr %790, i64 1
  %793 = load float, ptr %792, align 4, !tbaa !34
  store float %793, ptr %595, align 4, !tbaa !34
  call fastcc void @draw_marker_areas(ptr noundef %1, ptr noundef nonnull %765, ptr noundef %773, ptr noundef nonnull %24, i32 noundef %214, i32 noundef %215, i32 noundef 0, i32 noundef 1)
  call fastcc void @draw_marker_slide_zones(ptr noundef %1, ptr noundef nonnull %765, ptr noundef %773, ptr noundef nonnull %24, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef %214, i32 noundef %215)
  br label %794

794:                                              ; preds = %788, %787
  %795 = icmp eq ptr %766, null
  %796 = getelementptr inbounds float, ptr %766, i64 2
  %797 = select i1 %795, ptr null, ptr %796
  br label %798

798:                                              ; preds = %794, %782, %764
  %799 = phi ptr [ %766, %764 ], [ %766, %782 ], [ %797, %794 ]
  %800 = load ptr, ptr %765, align 8, !tbaa !72
  %801 = icmp eq ptr %800, null
  br i1 %801, label %802, label %764, !llvm.loop !98

802:                                              ; preds = %798, %590
  %803 = icmp eq ptr %230, null
  br i1 %803, label %832, label %804

804:                                              ; preds = %802
  %805 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %230, i64 0, i32 13
  %806 = load i32, ptr %805, align 8, !tbaa !78
  %807 = and i32 %806, 32
  %808 = icmp eq i32 %807, 0
  br i1 %808, label %809, label %832

809:                                              ; preds = %804
  %810 = call ptr @BKE_tracking_marker_get(ptr noundef nonnull %230, i32 noundef %221) #8
  %811 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %810, i64 0, i32 5
  %812 = load i32, ptr %811, align 4, !tbaa !80
  %813 = and i32 %812, 1
  %814 = icmp eq i32 %813, 0
  br i1 %814, label %825, label %815

815:                                              ; preds = %809
  %816 = load i32, ptr %49, align 8, !tbaa !38
  %817 = and i32 %816, 128
  %818 = icmp eq i32 %817, 0
  br i1 %818, label %825, label %819

819:                                              ; preds = %815
  %820 = getelementptr inbounds %struct.SpaceClip, ptr %1, i64 0, i32 10
  %821 = load ptr, ptr %820, align 8, !tbaa !81
  %822 = getelementptr inbounds %struct.MovieClip, ptr %821, i64 0, i32 11, i32 6
  %823 = load ptr, ptr %822, align 8, !tbaa !82
  %824 = icmp eq ptr %823, %230
  br i1 %824, label %825, label %832

825:                                              ; preds = %819, %815, %809
  %826 = icmp eq ptr %329, null
  %827 = select i1 %826, ptr %810, ptr %329
  %828 = load float, ptr %827, align 4, !tbaa !34
  store float %828, ptr %24, align 4, !tbaa !34
  %829 = getelementptr inbounds float, ptr %827, i64 1
  %830 = load float, ptr %829, align 4, !tbaa !34
  %831 = getelementptr inbounds float, ptr %24, i64 1
  store float %830, ptr %831, align 4, !tbaa !34
  call fastcc void @draw_marker_areas(ptr noundef %1, ptr noundef nonnull %230, ptr noundef %810, ptr noundef nonnull %24, i32 noundef %214, i32 noundef %215, i32 noundef 1, i32 noundef 1)
  call fastcc void @draw_marker_slide_zones(ptr noundef %1, ptr noundef nonnull %230, ptr noundef %810, ptr noundef nonnull %24, i32 noundef 0, i32 noundef 1, i32 noundef 1, i32 noundef %214, i32 noundef %215)
  br label %832

832:                                              ; preds = %825, %819, %804, %802
  %833 = load i32, ptr %49, align 8, !tbaa !38
  %834 = and i32 %833, 32
  %835 = icmp eq i32 %834, 0
  br i1 %835, label %935, label %836

836:                                              ; preds = %832
  %837 = call ptr @BKE_tracking_object_get_active(ptr noundef nonnull %218) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %25) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %26) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %27) #8
  call void @glEnable(i32 noundef 2832) #8
  call void @glPointSize(float noundef 3.000000e+00) #8
  %838 = getelementptr inbounds %struct.MovieClip, ptr %42, i64 0, i32 11, i32 1, i32 4
  %839 = load float, ptr %838, align 8, !tbaa !48
  %840 = fdiv float 1.000000e+00, %839
  call void @BKE_tracking_get_projection_matrix(ptr noundef nonnull %218, ptr noundef %837, i32 noundef %221, i32 noundef %214, i32 noundef %215, ptr noundef nonnull %27) #8
  %841 = load ptr, ptr %219, align 8, !tbaa !72
  %842 = icmp eq ptr %841, null
  br i1 %842, label %934, label %843

843:                                              ; preds = %836
  %844 = getelementptr inbounds %struct.SpaceClip, ptr %1, i64 0, i32 10
  %845 = getelementptr inbounds float, ptr %26, i64 1
  %846 = getelementptr inbounds float, ptr %26, i64 2
  %847 = getelementptr inbounds [4 x float], ptr %26, i64 0, i64 3
  %848 = getelementptr inbounds [4 x float], ptr %25, i64 0, i64 3
  %849 = getelementptr inbounds [4 x float], ptr %25, i64 0, i64 1
  %850 = getelementptr inbounds [2 x float], ptr %28, i64 0, i64 1
  %851 = fmul float %840, %229
  %852 = icmp eq i16 %224, 0
  br label %853

853:                                              ; preds = %843, %931
  %854 = phi ptr [ %841, %843 ], [ %932, %931 ]
  %855 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %854, i64 0, i32 13
  %856 = load i32, ptr %855, align 8, !tbaa !78
  %857 = and i32 %856, 34
  %858 = icmp eq i32 %857, 2
  br i1 %858, label %859, label %931

859:                                              ; preds = %853
  %860 = call ptr @BKE_tracking_marker_get(ptr noundef nonnull %854, i32 noundef %221) #8
  %861 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %860, i64 0, i32 5
  %862 = load i32, ptr %861, align 4, !tbaa !80
  %863 = and i32 %862, 1
  %864 = icmp eq i32 %863, 0
  br i1 %864, label %874, label %865

865:                                              ; preds = %859
  %866 = load i32, ptr %49, align 8, !tbaa !38
  %867 = and i32 %866, 128
  %868 = icmp eq i32 %867, 0
  br i1 %868, label %874, label %869

869:                                              ; preds = %865
  %870 = load ptr, ptr %844, align 8, !tbaa !81
  %871 = getelementptr inbounds %struct.MovieClip, ptr %870, i64 0, i32 11, i32 6
  %872 = load ptr, ptr %871, align 8, !tbaa !82
  %873 = icmp eq ptr %872, %854
  br i1 %873, label %874, label %931

874:                                              ; preds = %869, %865, %859
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %28) #8
  %875 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %854, i64 0, i32 11
  %876 = load float, ptr %875, align 4, !tbaa !34
  store float %876, ptr %26, align 16, !tbaa !34
  %877 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %854, i64 0, i32 11, i64 1
  %878 = load float, ptr %877, align 4, !tbaa !34
  store float %878, ptr %845, align 4, !tbaa !34
  %879 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %854, i64 0, i32 11, i64 2
  %880 = load float, ptr %879, align 4, !tbaa !34
  store float %880, ptr %846, align 8, !tbaa !34
  store float 1.000000e+00, ptr %847, align 4, !tbaa !34
  call void @mul_v4_m4v4(ptr noundef nonnull %25, ptr noundef nonnull %27, ptr noundef nonnull %26) #8
  %881 = load float, ptr %25, align 16, !tbaa !34
  %882 = load float, ptr %848, align 4, !tbaa !34
  %883 = fmul float %882, 2.000000e+00
  %884 = fdiv float %881, %883
  %885 = fadd float %884, 5.000000e-01
  %886 = fmul float %885, %228
  store float %886, ptr %25, align 16, !tbaa !34
  %887 = load float, ptr %849, align 4, !tbaa !34
  %888 = fdiv float %887, %883
  %889 = fadd float %888, 5.000000e-01
  %890 = fmul float %889, %229
  %891 = fmul float %840, %890
  store float %891, ptr %849, align 4, !tbaa !34
  call void @BKE_tracking_distort_v2(ptr noundef nonnull %218, ptr noundef nonnull %25, ptr noundef nonnull %28) #8
  %892 = load float, ptr %28, align 4, !tbaa !34
  %893 = fcmp ult float %892, 0.000000e+00
  %894 = load float, ptr %850, align 4
  %895 = fcmp ult float %894, 0.000000e+00
  %896 = select i1 %893, i1 true, i1 %895
  %897 = fcmp ugt float %892, %228
  %898 = or i1 %897, %896
  %899 = fcmp ugt float %894, %851
  %900 = select i1 %898, i1 true, i1 %899
  br i1 %900, label %930, label %901

901:                                              ; preds = %874
  %902 = load float, ptr %860, align 4, !tbaa !34
  %903 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %854, i64 0, i32 7
  %904 = load float, ptr %903, align 8, !tbaa !34
  %905 = fadd float %902, %904
  %906 = fmul float %905, %228
  store float %906, ptr %26, align 16, !tbaa !34
  %907 = getelementptr inbounds [2 x float], ptr %860, i64 0, i64 1
  %908 = load float, ptr %907, align 4, !tbaa !34
  %909 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %854, i64 0, i32 7, i64 1
  %910 = load float, ptr %909, align 4, !tbaa !34
  %911 = fadd float %908, %910
  %912 = fmul float %911, %229
  %913 = fmul float %840, %912
  store float %913, ptr %845, align 4, !tbaa !34
  %914 = fsub float %906, %892
  store float %914, ptr %26, align 16, !tbaa !34
  %915 = fsub float %913, %894
  store float %915, ptr %845, align 4, !tbaa !34
  %916 = fmul float %915, %915
  %917 = call float @llvm.fmuladd.f32(float %914, float %914, float %916)
  %918 = fcmp olt float %917, 9.000000e+00
  br i1 %918, label %919, label %920

919:                                              ; preds = %901
  call void @glColor3f(float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00) #8
  br label %921

920:                                              ; preds = %901
  call void @glColor3f(float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #8
  br label %921

921:                                              ; preds = %920, %919
  call void @glBegin(i32 noundef 0) #8
  %922 = load float, ptr %28, align 4
  %923 = load float, ptr %25, align 16
  %924 = select i1 %852, float %922, float %923
  %925 = fdiv float %924, %228
  %926 = load float, ptr %850, align 4
  %927 = load float, ptr %849, align 4
  %928 = select i1 %852, float %926, float %927
  %929 = fdiv float %928, %851
  call void @glVertex3f(float noundef %925, float noundef %929, float noundef 0.000000e+00) #8
  call void @glEnd() #8
  br label %930

930:                                              ; preds = %921, %874
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %28) #8
  br label %931

931:                                              ; preds = %930, %869, %853
  %932 = load ptr, ptr %854, align 8, !tbaa !72
  %933 = icmp eq ptr %932, null
  br i1 %933, label %934, label %853, !llvm.loop !99

934:                                              ; preds = %931, %836
  call void @glPointSize(float noundef 1.000000e+00) #8
  call void @glDisable(i32 noundef 2832) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %27) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %26) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %25) #8
  br label %935

935:                                              ; preds = %934, %832
  call void @glPopMatrix() #8
  %936 = load i32, ptr %49, align 8, !tbaa !38
  %937 = and i32 %936, 256
  %938 = icmp eq i32 %937, 0
  br i1 %938, label %1108, label %939

939:                                              ; preds = %935
  %940 = load ptr, ptr %219, align 8, !tbaa !72
  %941 = icmp eq ptr %940, null
  br i1 %941, label %1108, label %942

942:                                              ; preds = %939
  %943 = getelementptr inbounds %struct.SpaceClip, ptr %1, i64 0, i32 10
  %944 = getelementptr inbounds float, ptr %24, i64 1
  %945 = getelementptr inbounds [2 x float], ptr %17, i64 0, i64 1
  %946 = getelementptr inbounds [3 x float], ptr %16, i64 0, i64 1
  %947 = getelementptr inbounds [3 x float], ptr %16, i64 0, i64 2
  br label %948

948:                                              ; preds = %942, %1104
  %949 = phi ptr [ %940, %942 ], [ %1106, %1104 ]
  %950 = phi ptr [ %330, %942 ], [ %1105, %1104 ]
  %951 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %949, i64 0, i32 13
  %952 = load i32, ptr %951, align 8, !tbaa !78
  %953 = and i32 %952, 32
  %954 = icmp eq i32 %953, 0
  br i1 %954, label %955, label %1104

955:                                              ; preds = %948
  %956 = call ptr @BKE_tracking_marker_get(ptr noundef nonnull %949, i32 noundef %221) #8
  %957 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %956, i64 0, i32 5
  %958 = load i32, ptr %957, align 4, !tbaa !80
  %959 = and i32 %958, 1
  %960 = icmp eq i32 %959, 0
  br i1 %960, label %970, label %961

961:                                              ; preds = %955
  %962 = load i32, ptr %49, align 8, !tbaa !38
  %963 = and i32 %962, 128
  %964 = icmp eq i32 %963, 0
  br i1 %964, label %970, label %965

965:                                              ; preds = %961
  %966 = load ptr, ptr %943, align 8, !tbaa !81
  %967 = getelementptr inbounds %struct.MovieClip, ptr %966, i64 0, i32 11, i32 6
  %968 = load ptr, ptr %967, align 8, !tbaa !82
  %969 = icmp eq ptr %968, %949
  br i1 %969, label %970, label %1104

970:                                              ; preds = %965, %961, %955
  %971 = icmp eq ptr %949, %230
  %972 = icmp eq ptr %950, null
  %973 = select i1 %972, ptr %956, ptr %950
  %974 = load float, ptr %973, align 4, !tbaa !34
  store float %974, ptr %24, align 4, !tbaa !34
  %975 = getelementptr inbounds float, ptr %973, i64 1
  %976 = load float, ptr %975, align 4, !tbaa !34
  store float %976, ptr %944, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %14) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %14, i8 0, i64 128, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %15) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %15, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #8
  %977 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 40), align 8, !tbaa !100
  %978 = getelementptr inbounds %struct.uiStyle, ptr %977, i64 0, i32 6
  %979 = load i16, ptr %978, align 8, !tbaa !104
  %980 = sext i16 %979 to i32
  %981 = load i32, ptr %951, align 8, !tbaa !78
  %982 = and i32 %981, 32
  %983 = icmp eq i32 %982, 0
  br i1 %983, label %984, label %1101

984:                                              ; preds = %970
  %985 = and i32 %981, 1
  %986 = icmp eq i32 %985, 0
  br i1 %986, label %987, label %1004

987:                                              ; preds = %984
  %988 = load i32, ptr %49, align 8, !tbaa !38
  %989 = and i32 %988, 1
  %990 = icmp eq i32 %989, 0
  br i1 %990, label %996, label %991

991:                                              ; preds = %987
  %992 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %949, i64 0, i32 14
  %993 = load i32, ptr %992, align 4, !tbaa !89
  %994 = and i32 %993, 1
  %995 = icmp eq i32 %994, 0
  br i1 %995, label %996, label %1004

996:                                              ; preds = %991, %987
  %997 = and i32 %988, 2
  %998 = icmp eq i32 %997, 0
  br i1 %998, label %1101, label %999

999:                                              ; preds = %996
  %1000 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %949, i64 0, i32 15
  %1001 = load i32, ptr %1000, align 8, !tbaa !90
  %1002 = and i32 %1001, 1
  %1003 = icmp eq i32 %1002, 0
  br i1 %1003, label %1101, label %1004

1004:                                             ; preds = %999, %991, %984
  %1005 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !107
  %1006 = fmul float %1005, 1.100000e+01
  %1007 = fptosi float %1006 to i32
  %1008 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !108
  call void @BLF_size(i32 noundef %980, i32 noundef %1007, i32 noundef %1008) #8
  %1009 = call float @BLF_height_max(i32 noundef %980) #8
  %1010 = load i32, ptr %957, align 4, !tbaa !80
  %1011 = and i32 %1010, 1
  %1012 = icmp eq i32 %1011, 0
  br i1 %1012, label %1016, label %1013

1013:                                             ; preds = %1004
  br i1 %971, label %1014, label %1015

1014:                                             ; preds = %1013
  call void @UI_ThemeColor(i32 noundef 142) #8
  br label %1019

1015:                                             ; preds = %1013
  call void @UI_ThemeColorShade(i32 noundef 145, i32 noundef 128) #8
  br label %1019

1016:                                             ; preds = %1004
  br i1 %971, label %1017, label %1018

1017:                                             ; preds = %1016
  call void @UI_ThemeColor(i32 noundef 142) #8
  br label %1019

1018:                                             ; preds = %1016
  call void @UI_ThemeColor(i32 noundef 143) #8
  br label %1019

1019:                                             ; preds = %1018, %1017, %1015, %1014
  %1020 = load i32, ptr %49, align 8, !tbaa !38
  %1021 = and i32 %1020, 2
  %1022 = icmp eq i32 %1021, 0
  br i1 %1022, label %1033, label %1023

1023:                                             ; preds = %1019
  %1024 = load i32, ptr %957, align 4, !tbaa !80
  %1025 = and i32 %1020, 1
  %1026 = and i32 %1025, %1024
  %1027 = icmp eq i32 %1026, 0
  br i1 %1027, label %1028, label %1033

1028:                                             ; preds = %1023
  %1029 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %956, i64 0, i32 2
  %1030 = load float, ptr %1029, align 4, !tbaa !34
  %1031 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %956, i64 0, i32 2, i64 1
  %1032 = load float, ptr %1031, align 4, !tbaa !34
  br label %1039

1033:                                             ; preds = %1023, %1019
  %1034 = and i32 %1020, 1
  %1035 = icmp eq i32 %1034, 0
  br i1 %1035, label %1039, label %1036

1036:                                             ; preds = %1033
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #8
  call void @BKE_tracking_marker_pattern_minmax(ptr noundef %956, ptr noundef nonnull %17, ptr noundef nonnull %18) #8
  %1037 = load float, ptr %17, align 4, !tbaa !34
  %1038 = load float, ptr %945, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #8
  br label %1039

1039:                                             ; preds = %1036, %1033, %1028
  %1040 = phi float [ %1032, %1028 ], [ %1038, %1036 ], [ 0.000000e+00, %1033 ]
  %1041 = phi float [ %1030, %1028 ], [ %1037, %1036 ], [ 0.000000e+00, %1033 ]
  %1042 = load float, ptr %24, align 4, !tbaa !34
  %1043 = fadd float %1041, %1042
  %1044 = fmul float %1043, %228
  store float %1044, ptr %16, align 4, !tbaa !34
  %1045 = load float, ptr %944, align 4, !tbaa !34
  %1046 = fadd float %1040, %1045
  %1047 = fmul float %1046, %229
  store float %1047, ptr %946, align 4, !tbaa !34
  store float 0.000000e+00, ptr %947, align 4, !tbaa !34
  call void @mul_m4_v3(ptr noundef nonnull %227, ptr noundef nonnull %16) #8
  %1048 = load float, ptr %16, align 4, !tbaa !34
  %1049 = fmul float %216, %1048
  store float %1049, ptr %16, align 4, !tbaa !34
  %1050 = load float, ptr %946, align 4, !tbaa !34
  %1051 = fneg float %1009
  %1052 = call float @llvm.fmuladd.f32(float %1050, float %217, float %1051)
  store float %1052, ptr %946, align 4, !tbaa !34
  %1053 = load i32, ptr %957, align 4, !tbaa !80
  %1054 = and i32 %1053, 1
  %1055 = icmp eq i32 %1054, 0
  br i1 %1055, label %1057, label %1056

1056:                                             ; preds = %1039
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(9) %15, ptr noundef nonnull align 1 dereferenceable(9) @.str.1, i64 9, i1 false) #8
  br label %1069

1057:                                             ; preds = %1039
  %1058 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %956, i64 0, i32 4
  %1059 = load i32, ptr %1058, align 4, !tbaa !86
  %1060 = call i32 @ED_space_clip_get_clip_frame_number(ptr noundef %1) #8
  %1061 = icmp eq i32 %1059, %1060
  br i1 %1061, label %1063, label %1062

1062:                                             ; preds = %1057
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(10) %15, ptr noundef nonnull align 1 dereferenceable(10) @.str.2, i64 10, i1 false) #8
  br label %1069

1063:                                             ; preds = %1057
  %1064 = load i32, ptr %957, align 4, !tbaa !80
  %1065 = and i32 %1064, 2
  %1066 = icmp eq i32 %1065, 0
  br i1 %1066, label %1068, label %1067

1067:                                             ; preds = %1063
  store i64 28259009574302324, ptr %15, align 16
  br label %1069

1068:                                             ; preds = %1063
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(10) %15, ptr noundef nonnull align 1 dereferenceable(10) @.str.4, i64 10, i1 false) #8
  br label %1069

1069:                                             ; preds = %1068, %1067, %1062, %1056
  %1070 = load i8, ptr %15, align 16, !tbaa !109
  %1071 = icmp eq i8 %1070, 0
  %1072 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %949, i64 0, i32 2
  br i1 %1071, label %1075, label %1073

1073:                                             ; preds = %1069
  %1074 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %14, i64 noundef 128, ptr noundef nonnull @.str.5, ptr noundef nonnull %1072, ptr noundef nonnull %15) #8
  br label %1077

1075:                                             ; preds = %1069
  %1076 = call ptr @BLI_strncpy(ptr noundef nonnull %14, ptr noundef nonnull %1072, i64 noundef 128) #8
  br label %1077

1077:                                             ; preds = %1075, %1073
  %1078 = load float, ptr %16, align 4, !tbaa !34
  %1079 = load float, ptr %946, align 4, !tbaa !34
  call void @BLF_position(i32 noundef %980, float noundef %1078, float noundef %1079, float noundef 0.000000e+00) #8
  call void @BLF_draw(i32 noundef %980, ptr noundef nonnull %14, i64 noundef 128) #8
  %1080 = load float, ptr %946, align 4, !tbaa !34
  %1081 = fsub float %1080, %1009
  store float %1081, ptr %946, align 4, !tbaa !34
  %1082 = load i32, ptr %951, align 8, !tbaa !78
  %1083 = and i32 %1082, 2
  %1084 = icmp eq i32 %1083, 0
  br i1 %1084, label %1094, label %1085

1085:                                             ; preds = %1077
  %1086 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %949, i64 0, i32 12
  %1087 = load float, ptr %1086, align 4, !tbaa !110
  %1088 = fpext float %1087 to double
  %1089 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %14, i64 noundef 128, ptr noundef nonnull @.str.6, double noundef %1088) #8
  %1090 = load float, ptr %16, align 4, !tbaa !34
  %1091 = load float, ptr %946, align 4, !tbaa !34
  call void @BLF_position(i32 noundef %980, float noundef %1090, float noundef %1091, float noundef 0.000000e+00) #8
  call void @BLF_draw(i32 noundef %980, ptr noundef nonnull %14, i64 noundef 128) #8
  %1092 = load float, ptr %946, align 4, !tbaa !34
  %1093 = fsub float %1092, %1009
  store float %1093, ptr %946, align 4, !tbaa !34
  br label %1094

1094:                                             ; preds = %1085, %1077
  %1095 = load i32, ptr %951, align 8, !tbaa !78
  %1096 = and i32 %1095, 64
  %1097 = icmp eq i32 %1096, 0
  br i1 %1097, label %1101, label %1098

1098:                                             ; preds = %1094
  %1099 = load float, ptr %16, align 4, !tbaa !34
  %1100 = load float, ptr %946, align 4, !tbaa !34
  call void @BLF_position(i32 noundef %980, float noundef %1099, float noundef %1100, float noundef 0.000000e+00) #8
  call void @BLF_draw(i32 noundef %980, ptr noundef nonnull @.str.7, i64 noundef 6) #8
  br label %1101

1101:                                             ; preds = %1098, %1094, %999, %996, %970
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %15) #8
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %14) #8
  %1102 = getelementptr inbounds float, ptr %950, i64 2
  %1103 = select i1 %972, ptr null, ptr %1102
  br label %1104

1104:                                             ; preds = %1101, %965, %948
  %1105 = phi ptr [ %1103, %1101 ], [ %950, %965 ], [ %950, %948 ]
  %1106 = load ptr, ptr %949, align 8, !tbaa !72
  %1107 = icmp eq ptr %1106, null
  br i1 %1107, label %1108, label %948, !llvm.loop !111

1108:                                             ; preds = %1104, %939, %935
  call void @glPopMatrix() #8
  %1109 = icmp eq ptr %330, null
  br i1 %1109, label %1112, label %1110

1110:                                             ; preds = %1108
  %1111 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  call void %1111(ptr noundef nonnull %330) #8
  br label %1112

1112:                                             ; preds = %1108, %1110
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %24) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %23) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %22) #8
  %1113 = load i32, ptr %35, align 4, !tbaa !59
  %1114 = load i32, ptr %36, align 4, !tbaa !59
  %1115 = load float, ptr %37, align 4, !tbaa !34
  %1116 = load float, ptr %38, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 968, ptr nonnull %8) #8
  %1117 = getelementptr inbounds %struct.MovieClip, ptr %42, i64 0, i32 11, i32 1, i32 4
  %1118 = load float, ptr %1117, align 8, !tbaa !112
  %1119 = fdiv float 1.000000e+00, %1118
  %1120 = sitofp i32 %1113 to float
  %1121 = fdiv float %1120, 1.000000e+01
  %1122 = sitofp i32 %1114 to float
  %1123 = fdiv float %1122, 1.000000e+01
  %1124 = fmul float %1123, %1119
  %1125 = getelementptr inbounds %struct.MovieClip, ptr %42, i64 0, i32 11, i32 1, i32 5
  %1126 = load float, ptr %1125, align 4, !tbaa !113
  %1127 = fcmp une float %1126, 0.000000e+00
  br i1 %1127, label %1128, label %1412

1128:                                             ; preds = %1112
  %1129 = load i32, ptr %49, align 8, !tbaa !38
  %1130 = and i32 %1129, 2560
  %1131 = icmp eq i32 %1130, 0
  br i1 %1131, label %1412, label %1132

1132:                                             ; preds = %1128
  call void @UI_view2d_view_to_region_fl(ptr noundef nonnull %196, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull %4, ptr noundef nonnull %5) #8
  call void @glPushMatrix() #8
  %1133 = load float, ptr %4, align 4, !tbaa !34
  %1134 = load float, ptr %5, align 4, !tbaa !34
  call void @glTranslatef(float noundef %1133, float noundef %1134, float noundef 0.000000e+00) #8
  call void @glScalef(float noundef %1115, float noundef %1116, float noundef 0.000000e+00) #8
  call void @glMultMatrixf(ptr noundef nonnull %227) #8
  call void @glScalef(float noundef %1120, float noundef %1122, float noundef 0.000000e+00) #8
  %1135 = load i32, ptr %49, align 8, !tbaa !38
  %1136 = and i32 %1135, 512
  %1137 = icmp eq i32 %1136, 0
  br i1 %1137, label %1267, label %1138

1138:                                             ; preds = %1132
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #8
  br label %1139

1139:                                             ; preds = %1138, %1139
  %1140 = phi i64 [ 0, %1138 ], [ %1145, %1139 ]
  %1141 = icmp ult i64 %1140, 2
  %1142 = and i64 %1140, 1
  %1143 = select i1 %1141, float 0x47EFFFFFE0000000, float 0xC7EFFFFFE0000000
  %1144 = getelementptr inbounds [4 x [2 x float]], ptr %9, i64 0, i64 %1140, i64 %1142
  store float %1143, ptr %1144, align 4, !tbaa !34
  %1145 = add nuw nsw i64 %1140, 1
  %1146 = icmp eq i64 %1145, 4
  br i1 %1146, label %1147, label %1139, !llvm.loop !114

1147:                                             ; preds = %1139
  store float 0.000000e+00, ptr %6, align 4, !tbaa !34
  %1148 = getelementptr inbounds float, ptr %6, i64 1
  store float 0.000000e+00, ptr %1148, align 4, !tbaa !34
  %1149 = getelementptr inbounds float, ptr %7, i64 1
  br label %1150

1150:                                             ; preds = %1147, %1197
  %1151 = phi i32 [ 0, %1147 ], [ %1200, %1197 ]
  %1152 = icmp eq i32 %1151, 0
  %1153 = icmp eq i32 %1151, 10
  %1154 = sitofp i32 %1151 to float
  br label %1155

1155:                                             ; preds = %1150, %1192
  %1156 = phi i32 [ 0, %1150 ], [ %1195, %1192 ]
  %1157 = icmp eq i32 %1156, 0
  %1158 = or i1 %1152, %1157
  %1159 = or i1 %1153, %1158
  %1160 = icmp eq i32 %1156, 10
  %1161 = or i1 %1160, %1159
  br i1 %1161, label %1162, label %1192

1162:                                             ; preds = %1155
  call void @BKE_tracking_distort_v2(ptr noundef nonnull %218, ptr noundef nonnull %6, ptr noundef nonnull %7) #8
  %1163 = load float, ptr %7, align 4
  %1164 = load float, ptr %1149, align 4
  %1165 = sitofp i32 %1156 to float
  br label %1166

1166:                                             ; preds = %1162, %1189
  %1167 = phi i64 [ 0, %1162 ], [ %1190, %1189 ]
  %1168 = icmp ult i64 %1167, 2
  br i1 %1168, label %1169, label %1175

1169:                                             ; preds = %1166
  %1170 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 %1167
  %1171 = load float, ptr %1170, align 4, !tbaa !34
  %1172 = getelementptr inbounds [4 x [2 x float]], ptr %9, i64 0, i64 %1167, i64 %1167
  %1173 = load float, ptr %1172, align 4, !tbaa !34
  %1174 = fcmp olt float %1171, %1173
  br label %1182

1175:                                             ; preds = %1166
  %1176 = and i64 %1167, 1
  %1177 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 %1176
  %1178 = load float, ptr %1177, align 4, !tbaa !34
  %1179 = getelementptr inbounds [4 x [2 x float]], ptr %9, i64 0, i64 %1167, i64 %1176
  %1180 = load float, ptr %1179, align 4, !tbaa !34
  %1181 = fcmp ogt float %1178, %1180
  br label %1182

1182:                                             ; preds = %1175, %1169
  %1183 = phi i1 [ %1174, %1169 ], [ %1181, %1175 ]
  br i1 %1183, label %1184, label %1189

1184:                                             ; preds = %1182
  %1185 = getelementptr inbounds [4 x [2 x float]], ptr %9, i64 0, i64 %1167
  store float %1163, ptr %1185, align 8, !tbaa !34
  %1186 = getelementptr inbounds float, ptr %1185, i64 1
  store float %1164, ptr %1186, align 4, !tbaa !34
  %1187 = getelementptr inbounds [4 x [2 x float]], ptr %10, i64 0, i64 %1167
  store float %1165, ptr %1187, align 8, !tbaa !34
  %1188 = getelementptr inbounds [4 x [2 x float]], ptr %10, i64 0, i64 %1167, i64 1
  store float %1154, ptr %1188, align 4, !tbaa !34
  br label %1189

1189:                                             ; preds = %1184, %1182
  %1190 = add nuw nsw i64 %1167, 1
  %1191 = icmp eq i64 %1190, 4
  br i1 %1191, label %1192, label %1166, !llvm.loop !115

1192:                                             ; preds = %1189, %1155
  %1193 = load float, ptr %6, align 4, !tbaa !34
  %1194 = fadd float %1121, %1193
  store float %1194, ptr %6, align 4, !tbaa !34
  %1195 = add nuw nsw i32 %1156, 1
  %1196 = icmp eq i32 %1195, 11
  br i1 %1196, label %1197, label %1155, !llvm.loop !116

1197:                                             ; preds = %1192
  store float 0.000000e+00, ptr %6, align 4, !tbaa !34
  %1198 = load float, ptr %1148, align 4, !tbaa !34
  %1199 = fadd float %1124, %1198
  store float %1199, ptr %1148, align 4, !tbaa !34
  %1200 = add nuw nsw i32 %1151, 1
  %1201 = icmp eq i32 %1200, 11
  br i1 %1201, label %1202, label %1150, !llvm.loop !117

1202:                                             ; preds = %1197
  %1203 = getelementptr inbounds [2 x float], ptr %11, i64 0, i64 1
  store float 0x46293E5940000000, ptr %1203, align 4, !tbaa !34
  store float 0x46293E5940000000, ptr %11, align 4, !tbaa !34
  %1204 = getelementptr inbounds [2 x float], ptr %12, i64 0, i64 1
  store float 0xC6293E5940000000, ptr %1204, align 4, !tbaa !34
  store float 0xC6293E5940000000, ptr %12, align 4, !tbaa !34
  br label %1205

1205:                                             ; preds = %1202, %1205
  %1206 = phi i64 [ 0, %1202 ], [ %1213, %1205 ]
  %1207 = getelementptr inbounds [4 x [2 x float]], ptr %10, i64 0, i64 %1206
  %1208 = load float, ptr %1207, align 8, !tbaa !34
  %1209 = fmul float %1121, %1208
  store float %1209, ptr %6, align 4, !tbaa !34
  %1210 = getelementptr inbounds [4 x [2 x float]], ptr %10, i64 0, i64 %1206, i64 1
  %1211 = load float, ptr %1210, align 4, !tbaa !34
  %1212 = fmul float %1124, %1211
  store float %1212, ptr %1148, align 4, !tbaa !34
  call void @BKE_tracking_undistort_v2(ptr noundef nonnull %218, ptr noundef nonnull %6, ptr noundef nonnull %7) #8
  call void @minmax_v2v2_v2(ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %7) #8
  %1213 = add nuw nsw i64 %1206, 1
  %1214 = icmp eq i64 %1213, 4
  br i1 %1214, label %1215, label %1205, !llvm.loop !118

1215:                                             ; preds = %1205
  %1216 = load float, ptr %11, align 4, !tbaa !34
  store float %1216, ptr %6, align 4, !tbaa !34
  %1217 = load float, ptr %1203, align 4, !tbaa !34
  store float %1217, ptr %1148, align 4, !tbaa !34
  %1218 = load float, ptr %12, align 4, !tbaa !34
  %1219 = fsub float %1218, %1216
  %1220 = fdiv float %1219, 1.000000e+01
  %1221 = load float, ptr %1204, align 4, !tbaa !34
  %1222 = fsub float %1221, %1217
  %1223 = fdiv float %1222, 1.000000e+01
  %1224 = fmul float %1119, %1122
  br label %1225

1225:                                             ; preds = %1215, %1239
  %1226 = phi i64 [ 0, %1215 ], [ %1243, %1239 ]
  br label %1227

1227:                                             ; preds = %1225, %1227
  %1228 = phi i64 [ 0, %1225 ], [ %1237, %1227 ]
  %1229 = getelementptr inbounds [11 x [11 x [2 x float]]], ptr %8, i64 0, i64 %1226, i64 %1228
  call void @BKE_tracking_distort_v2(ptr noundef nonnull %218, ptr noundef nonnull %6, ptr noundef nonnull %1229) #8
  %1230 = load float, ptr %1229, align 8, !tbaa !34
  %1231 = fdiv float %1230, %1120
  store float %1231, ptr %1229, align 8, !tbaa !34
  %1232 = getelementptr inbounds [11 x [11 x [2 x float]]], ptr %8, i64 0, i64 %1226, i64 %1228, i64 1
  %1233 = load float, ptr %1232, align 4, !tbaa !34
  %1234 = fdiv float %1233, %1224
  store float %1234, ptr %1232, align 4, !tbaa !34
  %1235 = load float, ptr %6, align 4, !tbaa !34
  %1236 = fadd float %1220, %1235
  store float %1236, ptr %6, align 4, !tbaa !34
  %1237 = add nuw nsw i64 %1228, 1
  %1238 = icmp eq i64 %1237, 11
  br i1 %1238, label %1239, label %1227, !llvm.loop !119

1239:                                             ; preds = %1227
  %1240 = load float, ptr %11, align 4, !tbaa !34
  store float %1240, ptr %6, align 4, !tbaa !34
  %1241 = load float, ptr %1148, align 4, !tbaa !34
  %1242 = fadd float %1223, %1241
  store float %1242, ptr %1148, align 4, !tbaa !34
  %1243 = add nuw nsw i64 %1226, 1
  %1244 = icmp eq i64 %1243, 11
  br i1 %1244, label %1245, label %1225, !llvm.loop !120

1245:                                             ; preds = %1239
  call void @glColor3f(float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #8
  br label %1246

1246:                                             ; preds = %1245, %1253
  %1247 = phi i64 [ 0, %1245 ], [ %1254, %1253 ]
  call void @glBegin(i32 noundef 3) #8
  br label %1248

1248:                                             ; preds = %1246, %1248
  %1249 = phi i64 [ 0, %1246 ], [ %1251, %1248 ]
  %1250 = getelementptr inbounds [11 x [11 x [2 x float]]], ptr %8, i64 0, i64 %1247, i64 %1249
  call void @glVertex2fv(ptr noundef nonnull %1250) #8
  %1251 = add nuw nsw i64 %1249, 1
  %1252 = icmp eq i64 %1251, 11
  br i1 %1252, label %1253, label %1248, !llvm.loop !121

1253:                                             ; preds = %1248
  call void @glEnd() #8
  %1254 = add nuw nsw i64 %1247, 1
  %1255 = icmp eq i64 %1254, 11
  br i1 %1255, label %1256, label %1246, !llvm.loop !122

1256:                                             ; preds = %1253, %1263
  %1257 = phi i64 [ %1264, %1263 ], [ 0, %1253 ]
  call void @glBegin(i32 noundef 3) #8
  br label %1258

1258:                                             ; preds = %1256, %1258
  %1259 = phi i64 [ 0, %1256 ], [ %1261, %1258 ]
  %1260 = getelementptr inbounds [11 x [11 x [2 x float]]], ptr %8, i64 0, i64 %1259, i64 %1257
  call void @glVertex2fv(ptr noundef nonnull %1260) #8
  %1261 = add nuw nsw i64 %1259, 1
  %1262 = icmp eq i64 %1261, 11
  br i1 %1262, label %1263, label %1258, !llvm.loop !123

1263:                                             ; preds = %1258
  call void @glEnd() #8
  %1264 = add nuw nsw i64 %1257, 1
  %1265 = icmp eq i64 %1264, 11
  br i1 %1265, label %1266, label %1256, !llvm.loop !124

1266:                                             ; preds = %1263
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #8
  br label %1267

1267:                                             ; preds = %1266, %1132
  %1268 = getelementptr inbounds %struct.SpaceClip, ptr %1, i64 0, i32 23
  %1269 = load i16, ptr %1268, align 4, !tbaa !125
  %1270 = icmp eq i16 %1269, 1
  br i1 %1270, label %1274, label %1271

1271:                                             ; preds = %1267
  %1272 = getelementptr inbounds %struct.MovieClip, ptr %42, i64 0, i32 10
  %1273 = load ptr, ptr %1272, align 8, !tbaa !126
  br label %1274

1274:                                             ; preds = %1271, %1267
  %1275 = phi ptr [ %1273, %1271 ], [ null, %1267 ]
  %1276 = load i32, ptr %49, align 8, !tbaa !38
  %1277 = and i32 %1276, 2048
  %1278 = icmp ne i32 %1277, 0
  %1279 = icmp ne ptr %1275, null
  %1280 = select i1 %1278, i1 %1279, i1 false
  br i1 %1280, label %1281, label %1411

1281:                                             ; preds = %1274
  %1282 = getelementptr inbounds %struct.bGPdata, ptr %1275, i64 0, i32 1
  %1283 = load ptr, ptr %1282, align 8, !tbaa !72
  %1284 = icmp eq ptr %1283, null
  br i1 %1284, label %1410, label %1285

1285:                                             ; preds = %1281
  %1286 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 1
  %1287 = getelementptr inbounds [2 x float], ptr %13, i64 0, i64 1
  %1288 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  %1289 = fmul float %1119, %1122
  br label %1290

1290:                                             ; preds = %1285, %1407
  %1291 = phi ptr [ %1283, %1285 ], [ %1408, %1407 ]
  %1292 = getelementptr inbounds %struct.bGPDlayer, ptr %1291, i64 0, i32 4
  %1293 = load i32, ptr %1292, align 8, !tbaa !127
  %1294 = and i32 %1293, 1
  %1295 = icmp eq i32 %1294, 0
  br i1 %1295, label %1296, label %1407, !llvm.loop !129

1296:                                             ; preds = %1290
  %1297 = getelementptr inbounds %struct.bGPDlayer, ptr %1291, i64 0, i32 2
  %1298 = load ptr, ptr %1297, align 8, !tbaa !130
  %1299 = getelementptr inbounds %struct.bGPDlayer, ptr %1291, i64 0, i32 7
  call void @glColor4fv(ptr noundef nonnull %1299) #8
  %1300 = getelementptr inbounds %struct.bGPDlayer, ptr %1291, i64 0, i32 5
  %1301 = load i16, ptr %1300, align 4, !tbaa !131
  %1302 = sitofp i16 %1301 to float
  call void @glLineWidth(float noundef %1302) #8
  %1303 = load i16, ptr %1300, align 4, !tbaa !131
  %1304 = sext i16 %1303 to i32
  %1305 = add nsw i32 %1304, 2
  %1306 = sitofp i32 %1305 to float
  call void @glPointSize(float noundef %1306) #8
  %1307 = icmp eq ptr %1298, null
  br i1 %1307, label %1407, label %1308

1308:                                             ; preds = %1296, %1404
  %1309 = phi ptr [ %1405, %1404 ], [ %1298, %1296 ]
  %1310 = getelementptr inbounds %struct.bGPDframe, ptr %1309, i64 0, i32 2
  %1311 = load ptr, ptr %1310, align 8, !tbaa !72
  %1312 = icmp eq ptr %1311, null
  br i1 %1312, label %1404, label %1313

1313:                                             ; preds = %1308, %1401
  %1314 = phi ptr [ %1402, %1401 ], [ %1311, %1308 ]
  %1315 = getelementptr inbounds %struct.bGPDstroke, ptr %1314, i64 0, i32 6
  %1316 = load i16, ptr %1315, align 2, !tbaa !132
  %1317 = and i16 %1316, 2
  %1318 = icmp eq i16 %1317, 0
  br i1 %1318, label %1401, label %1319

1319:                                             ; preds = %1313
  %1320 = getelementptr inbounds %struct.bGPDstroke, ptr %1314, i64 0, i32 4
  %1321 = load i32, ptr %1320, align 8, !tbaa !135
  %1322 = icmp sgt i32 %1321, 1
  br i1 %1322, label %1323, label %1390

1323:                                             ; preds = %1319
  call void @glBegin(i32 noundef 3) #8
  %1324 = load i32, ptr %1320, align 8, !tbaa !135
  %1325 = icmp sgt i32 %1324, 1
  br i1 %1325, label %1326, label %1400

1326:                                             ; preds = %1323
  %1327 = getelementptr inbounds %struct.bGPDstroke, ptr %1314, i64 0, i32 2
  br label %1328

1328:                                             ; preds = %1326, %1385
  %1329 = phi i64 [ 0, %1326 ], [ %1340, %1385 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #8
  %1330 = load ptr, ptr %1327, align 8, !tbaa !136
  %1331 = getelementptr inbounds %struct.bGPDspoint, ptr %1330, i64 %1329
  %1332 = load float, ptr %1331, align 4, !tbaa !137
  %1333 = fadd float %1332, 0.000000e+00
  %1334 = fmul float %1333, %1120
  store float %1334, ptr %6, align 4, !tbaa !34
  %1335 = getelementptr inbounds %struct.bGPDspoint, ptr %1330, i64 %1329, i32 1
  %1336 = load float, ptr %1335, align 4, !tbaa !139
  %1337 = fadd float %1336, 0.000000e+00
  %1338 = fmul float %1337, %1122
  %1339 = fmul float %1119, %1338
  store float %1339, ptr %1286, align 4, !tbaa !34
  %1340 = add nuw nsw i64 %1329, 1
  %1341 = getelementptr inbounds %struct.bGPDspoint, ptr %1330, i64 %1340
  %1342 = load float, ptr %1341, align 4, !tbaa !137
  %1343 = fadd float %1342, 0.000000e+00
  %1344 = fmul float %1343, %1120
  store float %1344, ptr %13, align 4, !tbaa !34
  %1345 = getelementptr inbounds %struct.bGPDspoint, ptr %1330, i64 %1340, i32 1
  %1346 = load float, ptr %1345, align 4, !tbaa !139
  %1347 = fadd float %1346, 0.000000e+00
  %1348 = fmul float %1347, %1122
  %1349 = fmul float %1119, %1348
  store float %1349, ptr %1287, align 4, !tbaa !34
  %1350 = fsub float %1334, %1344
  %1351 = fsub float %1339, %1349
  %1352 = fmul float %1351, %1351
  %1353 = call float @llvm.fmuladd.f32(float %1350, float %1350, float %1352)
  %1354 = call float @sqrtf(float noundef %1353) #8
  %1355 = fdiv float %1354, 5.000000e+00
  %1356 = call float @llvm.ceil.f32(float %1355)
  %1357 = fptosi float %1356 to i32
  %1358 = load i32, ptr %1320, align 8, !tbaa !135
  %1359 = icmp eq i32 %1358, 2
  br i1 %1359, label %1360, label %1361

1360:                                             ; preds = %1328
  call void @BKE_tracking_undistort_v2(ptr noundef nonnull %218, ptr noundef nonnull %6, ptr noundef nonnull %6) #8
  call void @BKE_tracking_undistort_v2(ptr noundef nonnull %218, ptr noundef nonnull %13, ptr noundef nonnull %13) #8
  br label %1361

1361:                                             ; preds = %1360, %1328
  %1362 = load float, ptr %13, align 4, !tbaa !34
  %1363 = load float, ptr %6, align 4, !tbaa !34
  %1364 = fsub float %1362, %1363
  %1365 = load float, ptr %1287, align 4, !tbaa !34
  %1366 = load float, ptr %1286, align 4, !tbaa !34
  %1367 = fsub float %1365, %1366
  %1368 = sitofp i32 %1357 to float
  %1369 = fdiv float 1.000000e+00, %1368
  %1370 = fmul float %1369, %1364
  %1371 = fmul float %1369, %1367
  %1372 = icmp slt i32 %1357, 0
  br i1 %1372, label %1385, label %1373

1373:                                             ; preds = %1361, %1373
  %1374 = phi i32 [ %1383, %1373 ], [ 0, %1361 ]
  call void @BKE_tracking_distort_v2(ptr noundef nonnull %218, ptr noundef nonnull %6, ptr noundef nonnull %7) #8
  %1375 = load float, ptr %7, align 4, !tbaa !34
  %1376 = fdiv float %1375, %1120
  %1377 = load float, ptr %1288, align 4, !tbaa !34
  %1378 = fdiv float %1377, %1289
  call void @glVertex2f(float noundef %1376, float noundef %1378) #8
  %1379 = load float, ptr %6, align 4, !tbaa !34
  %1380 = fadd float %1370, %1379
  store float %1380, ptr %6, align 4, !tbaa !34
  %1381 = load float, ptr %1286, align 4, !tbaa !34
  %1382 = fadd float %1371, %1381
  store float %1382, ptr %1286, align 4, !tbaa !34
  %1383 = add nuw i32 %1374, 1
  %1384 = icmp eq i32 %1374, %1357
  br i1 %1384, label %1385, label %1373, !llvm.loop !140

1385:                                             ; preds = %1373, %1361
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #8
  %1386 = load i32, ptr %1320, align 8, !tbaa !135
  %1387 = add nsw i32 %1386, -1
  %1388 = sext i32 %1387 to i64
  %1389 = icmp slt i64 %1340, %1388
  br i1 %1389, label %1328, label %1400, !llvm.loop !141

1390:                                             ; preds = %1319
  %1391 = icmp eq i32 %1321, 1
  br i1 %1391, label %1392, label %1401

1392:                                             ; preds = %1390
  call void @glBegin(i32 noundef 0) #8
  %1393 = getelementptr inbounds %struct.bGPDstroke, ptr %1314, i64 0, i32 2
  %1394 = load ptr, ptr %1393, align 8, !tbaa !136
  %1395 = load float, ptr %1394, align 4, !tbaa !137
  %1396 = fadd float %1395, 0.000000e+00
  %1397 = getelementptr inbounds %struct.bGPDspoint, ptr %1394, i64 0, i32 1
  %1398 = load float, ptr %1397, align 4, !tbaa !139
  %1399 = fadd float %1398, 0.000000e+00
  call void @glVertex2f(float noundef %1396, float noundef %1399) #8
  br label %1400

1400:                                             ; preds = %1385, %1323, %1392
  call void @glEnd() #8
  br label %1401

1401:                                             ; preds = %1400, %1390, %1313
  %1402 = load ptr, ptr %1314, align 8, !tbaa !72
  %1403 = icmp eq ptr %1402, null
  br i1 %1403, label %1404, label %1313, !llvm.loop !142

1404:                                             ; preds = %1401, %1308
  %1405 = load ptr, ptr %1309, align 8, !tbaa !143
  %1406 = icmp eq ptr %1405, null
  br i1 %1406, label %1407, label %1308, !llvm.loop !145

1407:                                             ; preds = %1404, %1296, %1290
  %1408 = load ptr, ptr %1291, align 8, !tbaa !72
  %1409 = icmp eq ptr %1408, null
  br i1 %1409, label %1410, label %1290

1410:                                             ; preds = %1407, %1281
  call void @glLineWidth(float noundef 1.000000e+00) #8
  call void @glPointSize(float noundef 1.000000e+00) #8
  br label %1411

1411:                                             ; preds = %1410, %1274
  call void @glPopMatrix() #8
  br label %1412

1412:                                             ; preds = %1112, %1128, %1411
  call void @llvm.lifetime.end.p0(i64 968, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  br label %1413

1413:                                             ; preds = %186, %1412, %45
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %38) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %37) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %36) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %35) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @ED_space_clip_get_clip(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare void @ED_space_clip_get_size(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_space_clip_get_zoom(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_region_grid_draw(ptr noundef, float noundef, float noundef) local_unnamed_addr #2

declare ptr @ED_space_clip_get_stable_buffer(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_tracking_stabilization_data_to_mat4(i32 noundef, i32 noundef, float noundef, ptr noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

declare void @unit_m4(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_va_mul_m4_series_4(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare ptr @ED_space_clip_get_buffer(ptr noundef) local_unnamed_addr #2

declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @clip_draw_cache_and_notes(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [256 x i8], align 16
  %5 = alloca [4 x float], align 16
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %9 = tail call ptr @ED_space_clip_get_clip(ptr noundef %1) #8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %352, label %11

11:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  %12 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 22, i32 6
  %13 = load i32, ptr %12, align 4, !tbaa !146
  %14 = sitofp i32 %13 to float
  %15 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 22, i32 7
  %16 = load i32, ptr %15, align 8, !tbaa !164
  %17 = sitofp i32 %16 to float
  %18 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 5
  %19 = load i16, ptr %18, align 8, !tbaa !165
  %20 = sitofp i16 %19 to float
  %21 = fsub float %17, %14
  %22 = fadd float %21, 1.000000e+00
  %23 = fdiv float %20, %22
  %24 = getelementptr inbounds %struct.MovieClip, ptr %9, i64 0, i32 11
  %25 = tail call ptr @BKE_tracking_object_get_active(ptr noundef nonnull %24) #8
  %26 = tail call ptr @BKE_tracking_track_get_active(ptr noundef nonnull %24) #8
  %27 = tail call ptr @BKE_tracking_plane_track_get_active(ptr noundef nonnull %24) #8
  %28 = tail call ptr @BKE_tracking_get_active_reconstruction(ptr noundef nonnull %24) #8
  tail call void @glEnable(i32 noundef 3042) #8
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #8
  tail call void @ED_region_cache_draw_background(ptr noundef %2) #8
  %29 = getelementptr inbounds %struct.SpaceClip, ptr %1, i64 0, i32 9
  call void @BKE_movieclip_get_cache_segments(ptr noundef nonnull %9, ptr noundef nonnull %29, ptr noundef nonnull %7, ptr noundef nonnull %6) #8
  %30 = load i32, ptr %7, align 4, !tbaa !59
  %31 = load ptr, ptr %6, align 8, !tbaa !72
  %32 = fptosi float %14 to i32
  %33 = fptosi float %17 to i32
  call void @ED_region_cache_draw_cached_segments(ptr noundef %2, i32 noundef %30, ptr noundef %31, i32 noundef %32, i32 noundef %33) #8
  %34 = icmp ne ptr %26, null
  %35 = icmp ne ptr %27, null
  %36 = select i1 %34, i1 true, i1 %35
  br i1 %36, label %37, label %196

37:                                               ; preds = %11
  %38 = getelementptr inbounds %struct.MovieClip, ptr %9, i64 0, i32 16
  %39 = load i32, ptr %38, align 8, !tbaa !168
  %40 = sitofp i32 %39 to float
  %41 = fsub float %14, %40
  %42 = fadd float %41, 1.000000e+00
  %43 = fptosi float %42 to i32
  %44 = sitofp i32 %43 to float
  %45 = sitofp i32 %39 to float
  %46 = fsub float %17, %45
  %47 = fadd float %46, 1.000000e+00
  %48 = fcmp ult float %47, %44
  br i1 %48, label %196, label %49

49:                                               ; preds = %37
  %50 = icmp ne ptr %26, null
  %51 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %26, i64 0, i32 8
  %52 = icmp ne ptr %27, null
  %53 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %27, i64 0, i32 7
  %54 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %26, i64 0, i32 10
  %55 = icmp eq ptr %27, null
  %56 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %27, i64 0, i32 6
  %57 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %26, i64 0, i32 10
  %58 = icmp eq ptr %27, null
  %59 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %27, i64 0, i32 6
  %60 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %26, i64 0, i32 10
  %61 = zext i1 %35 to i8
  %62 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %26, i64 0, i32 10
  %63 = icmp eq ptr %27, null
  %64 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %27, i64 0, i32 6
  %65 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %26, i64 0, i32 10
  %66 = icmp eq ptr %27, null
  %67 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %27, i64 0, i32 6
  %68 = select i1 %50, i1 true, i1 %52
  %69 = select i1 %50, ptr %51, ptr %53
  br label %70

70:                                               ; preds = %49, %188
  %71 = phi float [ %44, %49 ], [ %190, %188 ]
  %72 = phi i32 [ %43, %49 ], [ %189, %188 ]
  %73 = phi i32 [ 0, %49 ], [ %125, %188 ]
  br i1 %68, label %74, label %76

74:                                               ; preds = %70
  %75 = load i32, ptr %69, align 8, !tbaa !59
  br label %76

76:                                               ; preds = %70, %74
  %77 = phi i32 [ %75, %74 ], [ 0, %70 ]
  %78 = add nsw i32 %77, -1
  br label %79

79:                                               ; preds = %119, %76
  %80 = phi i32 [ %73, %76 ], [ %121, %119 ]
  %81 = icmp slt i32 %80, %77
  br i1 %81, label %82, label %122

82:                                               ; preds = %79
  br i1 %50, label %83, label %87

83:                                               ; preds = %82
  %84 = load ptr, ptr %54, align 8, !tbaa !169
  %85 = sext i32 %80 to i64
  %86 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %84, i64 %85, i32 4
  br label %92

87:                                               ; preds = %82
  br i1 %55, label %95, label %88

88:                                               ; preds = %87
  %89 = load ptr, ptr %56, align 8, !tbaa !170
  %90 = sext i32 %80 to i64
  %91 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %89, i64 %90, i32 1
  br label %92

92:                                               ; preds = %83, %88
  %93 = phi ptr [ %91, %88 ], [ %86, %83 ]
  %94 = load i32, ptr %93, align 4, !tbaa !59
  br label %95

95:                                               ; preds = %92, %87
  %96 = phi i32 [ 0, %87 ], [ %94, %92 ]
  %97 = icmp slt i32 %96, %72
  br i1 %97, label %98, label %119

98:                                               ; preds = %95
  %99 = icmp slt i32 %80, %78
  br i1 %99, label %100, label %117

100:                                              ; preds = %98
  %101 = add nsw i32 %80, 1
  br i1 %50, label %102, label %106

102:                                              ; preds = %100
  %103 = load ptr, ptr %57, align 8, !tbaa !169
  %104 = sext i32 %101 to i64
  %105 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %103, i64 %104, i32 4
  br label %111

106:                                              ; preds = %100
  br i1 %58, label %114, label %107

107:                                              ; preds = %106
  %108 = load ptr, ptr %59, align 8, !tbaa !170
  %109 = sext i32 %101 to i64
  %110 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %108, i64 %109, i32 1
  br label %111

111:                                              ; preds = %102, %107
  %112 = phi ptr [ %110, %107 ], [ %105, %102 ]
  %113 = load i32, ptr %112, align 4, !tbaa !59
  br label %114

114:                                              ; preds = %111, %106
  %115 = phi i32 [ 0, %106 ], [ %113, %111 ]
  %116 = icmp sgt i32 %115, %72
  br i1 %116, label %119, label %117

117:                                              ; preds = %114, %98
  %118 = add nsw i32 %80, 1
  br label %119

119:                                              ; preds = %117, %114, %95
  %120 = phi i1 [ true, %117 ], [ false, %95 ], [ false, %114 ]
  %121 = phi i32 [ %118, %117 ], [ %80, %95 ], [ %80, %114 ]
  br i1 %120, label %79, label %122

122:                                              ; preds = %119, %79
  %123 = phi i32 [ %121, %119 ], [ %80, %79 ]
  %124 = add nsw i32 %77, -1
  %125 = call i32 @llvm.smin.i32(i32 %123, i32 %124)
  br i1 %50, label %126, label %134

126:                                              ; preds = %122
  %127 = load ptr, ptr %60, align 8, !tbaa !169
  %128 = sext i32 %125 to i64
  %129 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %127, i64 %128, i32 5
  %130 = load i32, ptr %129, align 4, !tbaa !80
  %131 = trunc i32 %130 to i8
  %132 = and i8 %131, 1
  %133 = xor i8 %132, 1
  br label %134

134:                                              ; preds = %122, %126
  %135 = phi i8 [ %133, %126 ], [ %61, %122 ]
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %188, label %137

137:                                              ; preds = %134
  br i1 %50, label %138, label %142

138:                                              ; preds = %137
  %139 = load ptr, ptr %62, align 8, !tbaa !169
  %140 = sext i32 %125 to i64
  %141 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %139, i64 %140, i32 4
  br label %147

142:                                              ; preds = %137
  br i1 %63, label %150, label %143

143:                                              ; preds = %142
  %144 = load ptr, ptr %64, align 8, !tbaa !170
  %145 = sext i32 %125 to i64
  %146 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %144, i64 %145, i32 1
  br label %147

147:                                              ; preds = %138, %143
  %148 = phi ptr [ %146, %143 ], [ %141, %138 ]
  %149 = load i32, ptr %148, align 4, !tbaa !59
  br label %150

150:                                              ; preds = %147, %142
  %151 = phi i32 [ 0, %142 ], [ %149, %147 ]
  %152 = icmp eq i32 %151, %72
  br i1 %152, label %154, label %153

153:                                              ; preds = %150
  call void @glColor4ub(i8 noundef zeroext -128, i8 noundef zeroext -128, i8 noundef zeroext 0, i8 noundef zeroext 96) #8
  br label %171

154:                                              ; preds = %150
  br i1 %50, label %155, label %159

155:                                              ; preds = %154
  %156 = load ptr, ptr %65, align 8, !tbaa !169
  %157 = sext i32 %125 to i64
  %158 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %156, i64 %157, i32 5
  br label %164

159:                                              ; preds = %154
  br i1 %66, label %170, label %160

160:                                              ; preds = %159
  %161 = load ptr, ptr %67, align 8, !tbaa !170
  %162 = sext i32 %125 to i64
  %163 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %161, i64 %162, i32 2
  br label %164

164:                                              ; preds = %160, %155
  %165 = phi ptr [ %158, %155 ], [ %163, %160 ]
  %166 = load i32, ptr %165, align 4, !tbaa !59
  %167 = and i32 %166, 2
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %164
  call void @glColor4ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext 0, i8 noundef zeroext -60) #8
  br label %171

170:                                              ; preds = %159, %164
  call void @glColor4ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext 0, i8 noundef zeroext 96) #8
  br label %171

171:                                              ; preds = %170, %169, %153
  %172 = fsub float %71, %14
  %173 = load i32, ptr %38, align 8, !tbaa !168
  %174 = sitofp i32 %173 to float
  %175 = fadd float %172, %174
  %176 = fadd float %175, -1.000000e+00
  %177 = fmul float %23, %176
  %178 = fptosi float %177 to i32
  %179 = fmul float %23, %175
  %180 = fptosi float %179 to i32
  %181 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !107
  %182 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !108
  %183 = sitofp i32 %182 to float
  %184 = fmul float %181, %183
  %185 = fdiv float %184, 7.200000e+01
  %186 = fmul float %185, 4.000000e+00
  %187 = fptosi float %186 to i32
  call void @glRecti(i32 noundef %178, i32 noundef 0, i32 noundef %180, i32 noundef %187) #8
  br label %188

188:                                              ; preds = %171, %134
  %189 = add nsw i32 %72, 1
  %190 = sitofp i32 %189 to float
  %191 = load i32, ptr %38, align 8, !tbaa !168
  %192 = sitofp i32 %191 to float
  %193 = fsub float %17, %192
  %194 = fadd float %193, 1.000000e+00
  %195 = fcmp ult float %194, %190
  br i1 %195, label %196, label %70, !llvm.loop !171

196:                                              ; preds = %188, %37, %11
  %197 = load i32, ptr %28, align 8, !tbaa !172
  %198 = and i32 %197, 1
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %254, label %200

200:                                              ; preds = %196
  %201 = getelementptr inbounds %struct.MovieTrackingReconstruction, ptr %28, i64 0, i32 3
  %202 = load i32, ptr %201, align 4, !tbaa !173
  %203 = getelementptr inbounds %struct.MovieTrackingReconstruction, ptr %28, i64 0, i32 4
  %204 = load ptr, ptr %203, align 8, !tbaa !174
  call void @glColor4ub(i8 noundef zeroext -1, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 96) #8
  %205 = sitofp i32 %32 to float
  %206 = fcmp ugt float %205, %17
  br i1 %206, label %254, label %207

207:                                              ; preds = %200
  %208 = getelementptr inbounds %struct.MovieClip, ptr %9, i64 0, i32 16
  %209 = sext i32 %202 to i64
  br label %210

210:                                              ; preds = %207, %249
  %211 = phi float [ %205, %207 ], [ %252, %249 ]
  %212 = phi i32 [ %32, %207 ], [ %251, %249 ]
  %213 = phi i32 [ 0, %207 ], [ %250, %249 ]
  %214 = icmp slt i32 %213, %202
  br i1 %214, label %215, label %229

215:                                              ; preds = %210
  %216 = sext i32 %213 to i64
  br label %217

217:                                              ; preds = %215, %224
  %218 = phi i64 [ %216, %215 ], [ %225, %224 ]
  %219 = getelementptr inbounds %struct.MovieReconstructedCamera, ptr %204, i64 %218
  %220 = load i32, ptr %219, align 4, !tbaa !175
  %221 = icmp eq i32 %220, %212
  br i1 %221, label %247, label %222

222:                                              ; preds = %217
  %223 = icmp sgt i32 %220, %212
  br i1 %223, label %227, label %224

224:                                              ; preds = %222
  %225 = add nsw i64 %218, 1
  %226 = icmp eq i64 %225, %209
  br i1 %226, label %229, label %217, !llvm.loop !177

227:                                              ; preds = %222
  %228 = trunc i64 %218 to i32
  br label %229

229:                                              ; preds = %227, %224, %210
  %230 = phi i32 [ %213, %210 ], [ %228, %227 ], [ %202, %224 ]
  %231 = fsub float %211, %14
  %232 = load i32, ptr %208, align 8, !tbaa !168
  %233 = sitofp i32 %232 to float
  %234 = fadd float %231, %233
  %235 = fadd float %234, -1.000000e+00
  %236 = fmul float %23, %235
  %237 = fptosi float %236 to i32
  %238 = fmul float %23, %234
  %239 = fptosi float %238 to i32
  %240 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !107
  %241 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !108
  %242 = sitofp i32 %241 to float
  %243 = fmul float %240, %242
  %244 = fdiv float %243, 7.200000e+01
  %245 = fmul float %244, 8.000000e+00
  %246 = fptosi float %245 to i32
  call void @glRecti(i32 noundef %237, i32 noundef 0, i32 noundef %239, i32 noundef %246) #8
  br label %249

247:                                              ; preds = %217
  %248 = trunc i64 %218 to i32
  br label %249

249:                                              ; preds = %247, %229
  %250 = phi i32 [ %230, %229 ], [ %248, %247 ]
  %251 = add nsw i32 %212, 1
  %252 = sitofp i32 %251 to float
  %253 = fcmp ugt float %252, %17
  br i1 %253, label %254, label %210, !llvm.loop !178

254:                                              ; preds = %249, %200, %196
  call void @glDisable(i32 noundef 3042) #8
  %255 = load i32, ptr %29, align 8, !tbaa !179
  %256 = sitofp i32 %255 to float
  %257 = fsub float %256, %14
  %258 = fdiv float %257, %22
  %259 = load i16, ptr %18, align 8, !tbaa !165
  %260 = sitofp i16 %259 to float
  %261 = fmul float %258, %260
  call void @UI_ThemeColor(i32 noundef 49) #8
  %262 = fptosi float %261 to i32
  %263 = call float @llvm.ceil.f32(float %23)
  %264 = fadd float %263, %261
  %265 = fptosi float %264 to i32
  %266 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !107
  %267 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !108
  %268 = sitofp i32 %267 to float
  %269 = fmul float %266, %268
  %270 = fdiv float %269, 7.200000e+01
  %271 = fmul float %270, 8.000000e+00
  %272 = fptosi float %271 to i32
  call void @glRecti(i32 noundef %262, i32 noundef 0, i32 noundef %265, i32 noundef %272) #8
  %273 = load i32, ptr %29, align 8, !tbaa !179
  %274 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !107
  %275 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !108
  %276 = sitofp i32 %275 to float
  %277 = fmul float %274, %276
  %278 = fdiv float %277, 7.200000e+01
  %279 = fmul float %278, 8.000000e+00
  call void @ED_region_cache_draw_curfra_label(i32 noundef %273, float noundef %261, float noundef %279) #8
  call void @glColor4ub(i8 noundef zeroext -81, i8 noundef zeroext -1, i8 noundef zeroext 0, i8 noundef zeroext -1) #8
  %280 = getelementptr inbounds %struct.MovieTrackingObject, ptr %25, i64 0, i32 8
  %281 = load i32, ptr %280, align 8, !tbaa !180
  %282 = getelementptr inbounds %struct.MovieClip, ptr %9, i64 0, i32 16
  %283 = load i32, ptr %282, align 8, !tbaa !168
  %284 = add i32 %281, -1
  %285 = add i32 %284, %283
  %286 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 22, i32 5
  %287 = load i32, ptr %286, align 8, !tbaa !182
  %288 = sub nsw i32 %285, %32
  %289 = sitofp i32 %288 to float
  %290 = fmul float %23, %289
  %291 = fptosi float %290 to i32
  %292 = icmp eq i32 %285, %287
  %293 = select i1 %292, i32 22, i32 10
  %294 = add nsw i32 %291, 2
  %295 = sitofp i32 %293 to float
  %296 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !107
  %297 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !108
  %298 = sitofp i32 %297 to float
  %299 = fmul float %296, %298
  %300 = fdiv float %299, 7.200000e+01
  %301 = fmul float %300, %295
  %302 = fptosi float %301 to i32
  call void @glRecti(i32 noundef %291, i32 noundef 0, i32 noundef %294, i32 noundef %302) #8
  %303 = getelementptr inbounds %struct.MovieTrackingObject, ptr %25, i64 0, i32 9
  %304 = load i32, ptr %303, align 4, !tbaa !183
  %305 = load i32, ptr %282, align 8, !tbaa !168
  %306 = add i32 %304, -1
  %307 = add i32 %306, %305
  %308 = load i32, ptr %286, align 8, !tbaa !182
  %309 = sub nsw i32 %307, %32
  %310 = sitofp i32 %309 to float
  %311 = fmul float %23, %310
  %312 = fptosi float %311 to i32
  %313 = icmp eq i32 %307, %308
  %314 = select i1 %313, i32 22, i32 10
  %315 = add nsw i32 %312, 2
  %316 = sitofp i32 %314 to float
  %317 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !107
  %318 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !108
  %319 = sitofp i32 %318 to float
  %320 = fmul float %317, %319
  %321 = fdiv float %320, 7.200000e+01
  %322 = fmul float %321, %316
  %323 = fptosi float %322 to i32
  call void @glRecti(i32 noundef %312, i32 noundef 0, i32 noundef %315, i32 noundef %323) #8
  %324 = getelementptr inbounds %struct.SpaceClip, ptr %1, i64 0, i32 13
  %325 = load i16, ptr %324, align 4, !tbaa !184
  %326 = icmp eq i16 %325, 3
  br i1 %326, label %327, label %333

327:                                              ; preds = %254
  %328 = getelementptr inbounds %struct.SpaceClip, ptr %1, i64 0, i32 28
  %329 = load ptr, ptr %328, align 8, !tbaa !185
  %330 = icmp eq ptr %329, null
  br i1 %330, label %333, label %331

331:                                              ; preds = %327
  %332 = load i32, ptr %286, align 8, !tbaa !182
  call void @ED_mask_draw_frames(ptr noundef nonnull %329, ptr noundef %2, i32 noundef %332, i32 noundef %32, i32 noundef %33) #8
  br label %333

333:                                              ; preds = %254, %327, %331
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  %334 = call ptr @ED_space_clip_get_clip(ptr noundef %1) #8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %4, i8 0, i64 256, i1 false)
  %335 = getelementptr inbounds %struct.MovieClip, ptr %334, i64 0, i32 11, i32 11
  %336 = load ptr, ptr %335, align 8, !tbaa !186
  %337 = icmp eq ptr %336, null
  br i1 %337, label %340, label %338

338:                                              ; preds = %333
  %339 = call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef nonnull %336, i64 noundef 256) #8
  br label %346

340:                                              ; preds = %333
  %341 = getelementptr inbounds %struct.SpaceClip, ptr %1, i64 0, i32 12
  %342 = load i32, ptr %341, align 8, !tbaa !38
  %343 = and i32 %342, 4
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %346, label %345

345:                                              ; preds = %340
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(7) %4, ptr noundef nonnull align 1 dereferenceable(7) @.str.8, i64 7, i1 false) #8
  br label %346

346:                                              ; preds = %345, %340, %338
  %347 = phi i32 [ 1, %338 ], [ 0, %345 ], [ 0, %340 ]
  %348 = load i8, ptr %4, align 16, !tbaa !109
  %349 = icmp eq i8 %348, 0
  br i1 %349, label %351, label %350

350:                                              ; preds = %346
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) @__const.draw_movieclip_notes.fill_color, i64 16, i1 false)
  call void @ED_region_info_draw(ptr noundef %2, ptr noundef nonnull %4, i32 noundef %347, ptr noundef nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8
  br label %351

351:                                              ; preds = %346, %350
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #8
  br label %352

352:                                              ; preds = %351, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @clip_draw_grease_pencil(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #8
  %4 = tail call ptr @ED_space_clip_get_clip(ptr noundef %3) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %33, label %6

6:                                                ; preds = %2
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %32, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 23
  %10 = load i16, ptr %9, align 4, !tbaa !125
  %11 = icmp eq i16 %10, 1
  %12 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 12
  %13 = load i32, ptr %12, align 8, !tbaa !38
  %14 = and i32 %13, 2048
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %15, i1 true, i1 %11
  br i1 %16, label %17, label %33

17:                                               ; preds = %8
  tail call void @glPushMatrix() #8
  %18 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 21
  tail call void @glMultMatrixf(ptr noundef nonnull %18) #8
  br i1 %11, label %19, label %31

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 10
  %21 = load ptr, ptr %20, align 8, !tbaa !81
  %22 = getelementptr inbounds %struct.MovieClip, ptr %21, i64 0, i32 11
  %23 = tail call ptr @BKE_tracking_track_get_active(ptr noundef nonnull %22) #8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = tail call i32 @ED_space_clip_get_clip_frame_number(ptr noundef %3) #8
  %27 = tail call ptr @BKE_tracking_marker_get(ptr noundef nonnull %23, i32 noundef %26) #8
  %28 = load float, ptr %27, align 4, !tbaa !34
  %29 = getelementptr inbounds [2 x float], ptr %27, i64 0, i64 1
  %30 = load float, ptr %29, align 4, !tbaa !34
  tail call void @glTranslatef(float noundef %28, float noundef %30, float noundef 0.000000e+00) #8
  br label %31

31:                                               ; preds = %19, %25, %17
  tail call void @ED_gpencil_draw_2dimage(ptr noundef %0) #8
  tail call void @glPopMatrix() #8
  br label %33

32:                                               ; preds = %6
  tail call void @ED_gpencil_draw_view2d(ptr noundef %0, i8 noundef zeroext 0) #8
  br label %33

33:                                               ; preds = %32, %8, %31, %2
  ret void
}

declare ptr @CTX_wm_space_clip(ptr noundef) local_unnamed_addr #2

declare void @glPushMatrix() local_unnamed_addr #2

declare void @glMultMatrixf(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_tracking_track_get_active(ptr noundef) local_unnamed_addr #2

declare i32 @ED_space_clip_get_clip_frame_number(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_tracking_marker_get(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @glTranslatef(float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @ED_gpencil_draw_2dimage(ptr noundef) local_unnamed_addr #2

declare void @glPopMatrix() local_unnamed_addr #2

declare void @ED_gpencil_draw_view2d(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @UI_view2d_view_to_region(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @glEnable(i32 noundef) local_unnamed_addr #2

declare void @glBlendFunc(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @fdrawcheckerboard(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

declare void @glPixelZoom(float noundef, float noundef) local_unnamed_addr #2

declare void @glaDrawImBuf_glsl_ctx(ptr noundef, ptr noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #2

declare void @glDisable(i32 noundef) local_unnamed_addr #2

declare void @glColor3f(float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @glRectf(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @glLineStipple(i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

declare void @glLogicOp(i32 noundef) local_unnamed_addr #2

declare void @glScalef(float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @glBegin(i32 noundef) local_unnamed_addr #2

declare void @glVertex2f(float noundef, float noundef) local_unnamed_addr #2

declare void @glEnd() local_unnamed_addr #2

declare ptr @BKE_tracking_get_active_tracks(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_tracking_get_active_plane_tracks(ptr noundef) local_unnamed_addr #2

declare void @UI_view2d_view_to_region_fl(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_tracking_plane_track_get_active(ptr noundef) local_unnamed_addr #2

declare void @ED_clip_point_undistorted_pos(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @draw_marker_areas(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #0 {
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [2 x float], align 4
  %12 = alloca [2 x float], align 4
  %13 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 12
  %14 = load i32, ptr %13, align 8, !tbaa !38
  %15 = and i32 %14, 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #8
  call fastcc void @track_colors(ptr noundef %1, i32 noundef %6, ptr noundef nonnull %9, ptr noundef nonnull %10)
  %16 = sitofp i32 %4 to float
  %17 = fdiv float 1.000000e+00, %16
  %18 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 8
  %19 = load float, ptr %18, align 4, !tbaa !96
  %20 = fdiv float %17, %19
  %21 = sitofp i32 %5 to float
  %22 = fdiv float 1.000000e+00, %21
  %23 = fdiv float %22, %19
  %24 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %1, i64 0, i32 13
  %25 = load i32, ptr %24, align 8, !tbaa !78
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, %7
  br i1 %27, label %28, label %108

28:                                               ; preds = %8
  %29 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 5
  %30 = load i32, ptr %29, align 4, !tbaa !80
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %108

33:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #8
  %34 = and i32 %25, 64
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %33
  %37 = icmp eq i32 %6, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %36
  call void @UI_ThemeColor(i32 noundef 142) #8
  br label %47

39:                                               ; preds = %36
  %40 = icmp eq i32 %26, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %39
  call void @UI_ThemeColorShade(i32 noundef 149, i32 noundef 64) #8
  br label %47

42:                                               ; preds = %39
  call void @UI_ThemeColor(i32 noundef 149) #8
  br label %47

43:                                               ; preds = %33
  %44 = icmp eq i32 %26, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %43
  call void @glColor3fv(ptr noundef nonnull %10) #8
  br label %47

46:                                               ; preds = %43
  call void @glColor3fv(ptr noundef nonnull %9) #8
  br label %47

47:                                               ; preds = %45, %46, %38, %42, %41
  %48 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %1, i64 0, i32 7
  %49 = load float, ptr %2, align 4, !tbaa !34
  %50 = load float, ptr %48, align 4, !tbaa !34
  %51 = fadd float %49, %50
  store float %51, ptr %11, align 4, !tbaa !34
  %52 = getelementptr inbounds float, ptr %2, i64 1
  %53 = load float, ptr %52, align 4, !tbaa !34
  %54 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %1, i64 0, i32 7, i64 1
  %55 = load float, ptr %54, align 4, !tbaa !34
  %56 = fadd float %53, %55
  %57 = getelementptr inbounds float, ptr %11, i64 1
  store float %56, ptr %57, align 4, !tbaa !34
  call void @ED_clip_point_undistorted_pos(ptr noundef %0, ptr noundef nonnull %11, ptr noundef nonnull %11) #8
  %58 = load float, ptr %11, align 4, !tbaa !34
  %59 = load float, ptr %3, align 4, !tbaa !34
  %60 = fsub float %58, %59
  store float %60, ptr %12, align 4, !tbaa !34
  %61 = load float, ptr %57, align 4, !tbaa !34
  %62 = getelementptr inbounds float, ptr %3, i64 1
  %63 = load float, ptr %62, align 4, !tbaa !34
  %64 = fsub float %61, %63
  %65 = getelementptr inbounds float, ptr %12, i64 1
  store float %64, ptr %65, align 4, !tbaa !34
  %66 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 1
  %67 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 1, i64 1
  %68 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 1, i64 2
  %69 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 1, i64 3
  %70 = call i32 @isect_point_quad_v2(ptr noundef nonnull %12, ptr noundef nonnull %66, ptr noundef nonnull %67, ptr noundef nonnull %68, ptr noundef nonnull %69) #8
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %47
  %73 = icmp eq i32 %15, 0
  br i1 %73, label %74, label %104

74:                                               ; preds = %72
  call void @glPointSize(float noundef 2.000000e+00) #8
  call void @glBegin(i32 noundef 0) #8
  %75 = load float, ptr %11, align 4, !tbaa !34
  %76 = load float, ptr %57, align 4, !tbaa !34
  call void @glVertex2f(float noundef %75, float noundef %76) #8
  call void @glEnd() #8
  call void @glPointSize(float noundef 1.000000e+00) #8
  br label %107

77:                                               ; preds = %47
  call void @glBegin(i32 noundef 1) #8
  %78 = load float, ptr %11, align 4, !tbaa !34
  %79 = call float @llvm.fmuladd.f32(float %20, float 3.000000e+00, float %78)
  %80 = load float, ptr %57, align 4, !tbaa !34
  call void @glVertex2f(float noundef %79, float noundef %80) #8
  %81 = load float, ptr %11, align 4, !tbaa !34
  %82 = call float @llvm.fmuladd.f32(float %20, float 7.000000e+00, float %81)
  %83 = load float, ptr %57, align 4, !tbaa !34
  call void @glVertex2f(float noundef %82, float noundef %83) #8
  %84 = load float, ptr %11, align 4, !tbaa !34
  %85 = fneg float %20
  %86 = call float @llvm.fmuladd.f32(float %85, float 3.000000e+00, float %84)
  %87 = load float, ptr %57, align 4, !tbaa !34
  call void @glVertex2f(float noundef %86, float noundef %87) #8
  %88 = load float, ptr %11, align 4, !tbaa !34
  %89 = call float @llvm.fmuladd.f32(float %85, float 7.000000e+00, float %88)
  %90 = load float, ptr %57, align 4, !tbaa !34
  call void @glVertex2f(float noundef %89, float noundef %90) #8
  %91 = load float, ptr %11, align 4, !tbaa !34
  %92 = load float, ptr %57, align 4, !tbaa !34
  %93 = fneg float %23
  %94 = call float @llvm.fmuladd.f32(float %93, float 3.000000e+00, float %92)
  call void @glVertex2f(float noundef %91, float noundef %94) #8
  %95 = load float, ptr %11, align 4, !tbaa !34
  %96 = load float, ptr %57, align 4, !tbaa !34
  %97 = call float @llvm.fmuladd.f32(float %93, float 7.000000e+00, float %96)
  call void @glVertex2f(float noundef %95, float noundef %97) #8
  %98 = load float, ptr %11, align 4, !tbaa !34
  %99 = load float, ptr %57, align 4, !tbaa !34
  %100 = call float @llvm.fmuladd.f32(float %23, float 3.000000e+00, float %99)
  call void @glVertex2f(float noundef %98, float noundef %100) #8
  %101 = load float, ptr %11, align 4, !tbaa !34
  %102 = load float, ptr %57, align 4, !tbaa !34
  %103 = call float @llvm.fmuladd.f32(float %23, float 7.000000e+00, float %102)
  call void @glVertex2f(float noundef %101, float noundef %103) #8
  call void @glEnd() #8
  call void @glColor3f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #8
  call void @glLineStipple(i32 noundef 3, i16 noundef zeroext -21846) #8
  call void @glEnable(i32 noundef 2852) #8
  call void @glEnable(i32 noundef 3058) #8
  call void @glLogicOp(i32 noundef 5384) #8
  call void @glBegin(i32 noundef 1) #8
  call void @glVertex2fv(ptr noundef nonnull %11) #8
  call void @glVertex2fv(ptr noundef nonnull %3) #8
  call void @glEnd() #8
  call void @glDisable(i32 noundef 3058) #8
  call void @glDisable(i32 noundef 2852) #8
  br label %107

104:                                              ; preds = %72
  call void @glBegin(i32 noundef 0) #8
  %105 = load float, ptr %11, align 4, !tbaa !34
  %106 = load float, ptr %57, align 4, !tbaa !34
  call void @glVertex2f(float noundef %105, float noundef %106) #8
  call void @glEnd() #8
  br label %107

107:                                              ; preds = %104, %74, %77
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #8
  br label %108

108:                                              ; preds = %107, %28, %8
  call void @glPushMatrix() #8
  %109 = load float, ptr %3, align 4, !tbaa !34
  %110 = getelementptr inbounds float, ptr %3, i64 1
  %111 = load float, ptr %110, align 4, !tbaa !34
  call void @glTranslatef(float noundef %109, float noundef %111, float noundef 0.000000e+00) #8
  %112 = icmp eq i32 %15, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %108
  call void @glLineStipple(i32 noundef 3, i16 noundef zeroext -21846) #8
  call void @glEnable(i32 noundef 2852) #8
  br label %114

114:                                              ; preds = %113, %108
  %115 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %1, i64 0, i32 14
  %116 = load i32, ptr %115, align 4, !tbaa !89
  %117 = and i32 %116, 1
  %118 = icmp eq i32 %117, %7
  br i1 %118, label %119, label %155

119:                                              ; preds = %114
  %120 = load i32, ptr %13, align 8, !tbaa !38
  %121 = and i32 %120, 1
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %155, label %123

123:                                              ; preds = %119
  %124 = load i32, ptr %24, align 8, !tbaa !78
  %125 = and i32 %124, 64
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %134, label %127

127:                                              ; preds = %123
  %128 = icmp eq i32 %6, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %127
  call void @UI_ThemeColor(i32 noundef 142) #8
  br label %150

130:                                              ; preds = %127
  %131 = icmp eq i32 %117, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %130
  call void @UI_ThemeColorShade(i32 noundef 149, i32 noundef 64) #8
  br label %150

133:                                              ; preds = %130
  call void @UI_ThemeColor(i32 noundef 149) #8
  br label %150

134:                                              ; preds = %123
  %135 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 5
  %136 = load i32, ptr %135, align 4, !tbaa !80
  %137 = and i32 %136, 1
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %146, label %139

139:                                              ; preds = %134
  %140 = icmp eq i32 %6, 0
  br i1 %140, label %142, label %141

141:                                              ; preds = %139
  call void @UI_ThemeColor(i32 noundef 142) #8
  br label %150

142:                                              ; preds = %139
  %143 = icmp eq i32 %117, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %142
  call void @UI_ThemeColorShade(i32 noundef 145, i32 noundef 128) #8
  br label %150

145:                                              ; preds = %142
  call void @UI_ThemeColor(i32 noundef 145) #8
  br label %150

146:                                              ; preds = %134
  %147 = icmp eq i32 %117, 0
  br i1 %147, label %149, label %148

148:                                              ; preds = %146
  call void @glColor3fv(ptr noundef nonnull %10) #8
  br label %150

149:                                              ; preds = %146
  call void @glColor3fv(ptr noundef nonnull %9) #8
  br label %150

150:                                              ; preds = %144, %145, %141, %149, %148, %129, %133, %132
  call void @glBegin(i32 noundef 2) #8
  %151 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 1
  call void @glVertex2fv(ptr noundef nonnull %151) #8
  %152 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 1, i64 1
  call void @glVertex2fv(ptr noundef nonnull %152) #8
  %153 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 1, i64 2
  call void @glVertex2fv(ptr noundef nonnull %153) #8
  %154 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 1, i64 3
  call void @glVertex2fv(ptr noundef nonnull %154) #8
  call void @glEnd() #8
  br label %155

155:                                              ; preds = %150, %119, %114
  %156 = load i32, ptr %24, align 8, !tbaa !78
  %157 = and i32 %156, 32
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %187

159:                                              ; preds = %155
  %160 = and i32 %156, 1
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %178

162:                                              ; preds = %159
  %163 = load i32, ptr %13, align 8, !tbaa !38
  %164 = and i32 %163, 1
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %170, label %166

166:                                              ; preds = %162
  %167 = load i32, ptr %115, align 4, !tbaa !89
  %168 = and i32 %167, 1
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %178

170:                                              ; preds = %166, %162
  %171 = and i32 %163, 2
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %187, label %173

173:                                              ; preds = %170
  %174 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %1, i64 0, i32 15
  %175 = load i32, ptr %174, align 8, !tbaa !90
  %176 = and i32 %175, 1
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %187, label %178

178:                                              ; preds = %173, %166, %159
  %179 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 5
  %180 = load i32, ptr %179, align 4, !tbaa !80
  %181 = and i32 %180, 1
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %187, label %183

183:                                              ; preds = %178
  %184 = load i32, ptr %13, align 8, !tbaa !38
  %185 = and i32 %184, 1
  %186 = icmp eq i32 %185, 0
  br label %187

187:                                              ; preds = %178, %183, %173, %170, %155
  %188 = phi i1 [ false, %173 ], [ false, %170 ], [ false, %155 ], [ true, %178 ], [ %186, %183 ]
  %189 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %1, i64 0, i32 15
  %190 = load i32, ptr %189, align 8, !tbaa !90
  %191 = and i32 %190, 1
  %192 = icmp eq i32 %191, %7
  br i1 %192, label %193, label %237

193:                                              ; preds = %187
  %194 = load i32, ptr %13, align 8, !tbaa !38
  %195 = and i32 %194, 2
  %196 = icmp ne i32 %195, 0
  %197 = select i1 %196, i1 %188, i1 false
  br i1 %197, label %198, label %237

198:                                              ; preds = %193
  %199 = and i32 %156, 64
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %208, label %201

201:                                              ; preds = %198
  %202 = icmp eq i32 %6, 0
  br i1 %202, label %204, label %203

203:                                              ; preds = %201
  call void @UI_ThemeColor(i32 noundef 142) #8
  br label %224

204:                                              ; preds = %201
  %205 = icmp eq i32 %191, 0
  br i1 %205, label %207, label %206

206:                                              ; preds = %204
  call void @UI_ThemeColorShade(i32 noundef 149, i32 noundef 64) #8
  br label %224

207:                                              ; preds = %204
  call void @UI_ThemeColor(i32 noundef 149) #8
  br label %224

208:                                              ; preds = %198
  %209 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 5
  %210 = load i32, ptr %209, align 4, !tbaa !80
  %211 = and i32 %210, 1
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %220, label %213

213:                                              ; preds = %208
  %214 = icmp eq i32 %6, 0
  br i1 %214, label %216, label %215

215:                                              ; preds = %213
  call void @UI_ThemeColor(i32 noundef 142) #8
  br label %224

216:                                              ; preds = %213
  %217 = icmp eq i32 %191, 0
  br i1 %217, label %219, label %218

218:                                              ; preds = %216
  call void @UI_ThemeColorShade(i32 noundef 145, i32 noundef 128) #8
  br label %224

219:                                              ; preds = %216
  call void @UI_ThemeColor(i32 noundef 145) #8
  br label %224

220:                                              ; preds = %208
  %221 = icmp eq i32 %191, 0
  br i1 %221, label %223, label %222

222:                                              ; preds = %220
  call void @glColor3fv(ptr noundef nonnull %10) #8
  br label %224

223:                                              ; preds = %220
  call void @glColor3fv(ptr noundef nonnull %9) #8
  br label %224

224:                                              ; preds = %218, %219, %215, %223, %222, %203, %207, %206
  call void @glBegin(i32 noundef 2) #8
  %225 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 2
  %226 = load float, ptr %225, align 4, !tbaa !34
  %227 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 2, i64 1
  %228 = load float, ptr %227, align 4, !tbaa !34
  call void @glVertex2f(float noundef %226, float noundef %228) #8
  %229 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 3
  %230 = load float, ptr %229, align 4, !tbaa !34
  %231 = load float, ptr %227, align 4, !tbaa !34
  call void @glVertex2f(float noundef %230, float noundef %231) #8
  %232 = load float, ptr %229, align 4, !tbaa !34
  %233 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 3, i64 1
  %234 = load float, ptr %233, align 4, !tbaa !34
  call void @glVertex2f(float noundef %232, float noundef %234) #8
  %235 = load float, ptr %225, align 4, !tbaa !34
  %236 = load float, ptr %233, align 4, !tbaa !34
  call void @glVertex2f(float noundef %235, float noundef %236) #8
  call void @glEnd() #8
  br label %237

237:                                              ; preds = %224, %193, %187
  br i1 %112, label %239, label %238

238:                                              ; preds = %237
  call void @glDisable(i32 noundef 2852) #8
  br label %239

239:                                              ; preds = %238, %237
  call void @glPopMatrix() #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @draw_marker_slide_zones(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) unnamed_addr #0 {
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [2 x float], align 4
  %13 = alloca [2 x float], align 4
  %14 = alloca [2 x float], align 4
  %15 = alloca [2 x float], align 4
  %16 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 12
  %17 = load i32, ptr %16, align 8, !tbaa !38
  %18 = and i32 %17, 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #8
  %19 = icmp ne i32 %18, 0
  %20 = icmp ne i32 %4, 0
  %21 = and i1 %20, %19
  br i1 %21, label %207, label %22

22:                                               ; preds = %9
  %23 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 5
  %24 = load i32, ptr %23, align 4, !tbaa !80
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %207

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %1, i64 0, i32 13
  %29 = load i32, ptr %28, align 8, !tbaa !78
  %30 = and i32 %29, 32
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %207

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
  %40 = load i32, ptr %39, align 4, !tbaa !89
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %38, %35
  %44 = and i32 %17, 2
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %207, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %1, i64 0, i32 15
  %48 = load i32, ptr %47, align 8, !tbaa !90
  %49 = and i32 %48, 1
  %50 = icmp ne i32 %49, 0
  %51 = and i32 %29, 64
  %52 = icmp eq i32 %51, 0
  %53 = and i1 %52, %50
  br i1 %53, label %57, label %207

54:                                               ; preds = %38, %32
  %55 = and i32 %29, 64
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %207

57:                                               ; preds = %46, %54
  call fastcc void @track_colors(ptr noundef %1, i32 noundef %6, ptr noundef nonnull %10, ptr noundef nonnull %11)
  br i1 %20, label %58, label %59

58:                                               ; preds = %57
  call void @glLineWidth(float noundef 3.000000e+00) #8
  call void @UI_ThemeColor(i32 noundef 140) #8
  br label %59

59:                                               ; preds = %58, %57
  call void @glPushMatrix() #8
  %60 = load float, ptr %3, align 4, !tbaa !34
  %61 = getelementptr inbounds float, ptr %3, i64 1
  %62 = load float, ptr %61, align 4, !tbaa !34
  call void @glTranslatef(float noundef %60, float noundef %62, float noundef 0.000000e+00) #8
  %63 = sitofp i32 %7 to float
  %64 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 8
  %65 = load float, ptr %64, align 4, !tbaa !96
  %66 = sitofp i32 %8 to float
  %67 = fdiv float 6.000000e+00, %66
  br label %68

68:                                               ; preds = %59, %68
  %69 = phi i64 [ 0, %59 ], [ %71, %68 ]
  %70 = phi float [ 0x47EFFFFFE0000000, %59 ], [ %86, %68 ]
  %71 = add nuw nsw i64 %69, 1
  %72 = and i64 %71, 3
  %73 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 1, i64 %69
  %74 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 1, i64 %72
  %75 = load float, ptr %74, align 4, !tbaa !34
  %76 = load float, ptr %73, align 4, !tbaa !34
  %77 = fsub float %75, %76
  %78 = getelementptr inbounds float, ptr %74, i64 1
  %79 = load float, ptr %78, align 4, !tbaa !34
  %80 = getelementptr inbounds float, ptr %73, i64 1
  %81 = load float, ptr %80, align 4, !tbaa !34
  %82 = fsub float %79, %81
  %83 = fmul float %82, %82
  %84 = call float @llvm.fmuladd.f32(float %77, float %77, float %83)
  %85 = fcmp olt float %84, %70
  %86 = select i1 %85, float %84, float %70
  %87 = icmp eq i64 %71, 4
  br i1 %87, label %88, label %68, !llvm.loop !187

88:                                               ; preds = %68
  %89 = fdiv float 6.000000e+00, %63
  %90 = fdiv float %89, %65
  %91 = fdiv float %67, %65
  %92 = call float @sqrtf(float noundef %86) #8
  %93 = fmul float %90, 2.000000e+00
  %94 = fdiv float %93, 3.000000e+00
  %95 = fdiv float %92, 6.000000e+00
  %96 = fcmp olt float %94, %95
  %97 = select i1 %96, float %94, float %95
  %98 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !107
  %99 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !108
  %100 = sitofp i32 %99 to float
  %101 = fmul float %98, %100
  %102 = fdiv float %101, 7.200000e+01
  %103 = fmul float %97, %102
  %104 = fmul float %91, 2.000000e+00
  %105 = fdiv float %104, 3.000000e+00
  %106 = fmul float %92, %63
  %107 = fdiv float %106, %66
  %108 = fdiv float %107, 6.000000e+00
  %109 = fcmp olt float %105, %108
  %110 = select i1 %109, float %105, float %108
  %111 = fmul float %110, %102
  %112 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 3
  %113 = load float, ptr %112, align 4, !tbaa !34
  %114 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 2
  %115 = load float, ptr %114, align 4, !tbaa !34
  %116 = fsub float %113, %115
  %117 = fdiv float %116, 6.000000e+00
  %118 = fcmp olt float %90, %117
  %119 = select i1 %118, float %90, float %117
  %120 = fmul float %102, %119
  %121 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 3, i64 1
  %122 = load float, ptr %121, align 4, !tbaa !34
  %123 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 2, i64 1
  %124 = load float, ptr %123, align 4, !tbaa !34
  %125 = fsub float %122, %124
  %126 = fdiv float %125, 6.000000e+00
  %127 = fcmp olt float %91, %126
  %128 = select i1 %127, float %91, float %126
  %129 = fmul float %102, %128
  %130 = load float, ptr %64, align 4, !tbaa !96
  %131 = fdiv float 1.000000e+00, %130
  %132 = fdiv float %131, %63
  %133 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 17
  %134 = load float, ptr %133, align 4, !tbaa !64
  %135 = fdiv float %132, %134
  store float %135, ptr %12, align 4, !tbaa !34
  %136 = fdiv float %131, %66
  %137 = fdiv float %136, %134
  %138 = getelementptr inbounds [2 x float], ptr %12, i64 0, i64 1
  store float %137, ptr %138, align 4, !tbaa !34
  %139 = load i32, ptr %16, align 8, !tbaa !38
  %140 = and i32 %139, 2
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %166, label %142

142:                                              ; preds = %88
  %143 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %1, i64 0, i32 15
  %144 = load i32, ptr %143, align 8, !tbaa !90
  %145 = and i32 %144, 1
  %146 = icmp eq i32 %145, %5
  %147 = or i1 %20, %146
  br i1 %147, label %148, label %166

148:                                              ; preds = %142
  br i1 %20, label %152, label %149

149:                                              ; preds = %148
  %150 = icmp eq i32 %145, 0
  %151 = select i1 %150, ptr %10, ptr %11
  call void @glColor3fv(ptr noundef nonnull %151) #8
  br label %152

152:                                              ; preds = %149, %148
  %153 = load float, ptr %114, align 4, !tbaa !34
  %154 = load float, ptr %121, align 4, !tbaa !34
  call fastcc void @draw_marker_slide_square(float noundef %153, float noundef %154, float noundef %120, float noundef %129, i32 noundef %4, ptr noundef nonnull %12)
  %155 = load float, ptr %112, align 4, !tbaa !34
  %156 = load float, ptr %123, align 4, !tbaa !34
  %157 = fmul float %120, 2.000000e+00
  %158 = fmul float %129, 2.000000e+00
  %159 = icmp eq i32 %4, 0
  %160 = select i1 %159, float -0.000000e+00, float %135
  %161 = fadd float %157, %160
  %162 = select i1 %159, float -0.000000e+00, float %137
  %163 = fadd float %162, %158
  call void @glBegin(i32 noundef 4) #8
  call void @glVertex3f(float noundef %155, float noundef %156, float noundef 0.000000e+00) #8
  %164 = fsub float %155, %161
  call void @glVertex3f(float noundef %164, float noundef %156, float noundef 0.000000e+00) #8
  %165 = fadd float %163, %156
  call void @glVertex3f(float noundef %155, float noundef %165, float noundef 0.000000e+00) #8
  call void @glEnd() #8
  br label %166

166:                                              ; preds = %142, %152, %88
  %167 = load i32, ptr %16, align 8, !tbaa !38
  %168 = and i32 %167, 1
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %205, label %170

170:                                              ; preds = %166
  %171 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %1, i64 0, i32 14
  %172 = load i32, ptr %171, align 4, !tbaa !89
  %173 = and i32 %172, 1
  %174 = icmp eq i32 %173, %5
  %175 = or i1 %20, %174
  br i1 %175, label %176, label %205

176:                                              ; preds = %170
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #8
  br i1 %20, label %180, label %177

177:                                              ; preds = %176
  %178 = icmp eq i32 %173, 0
  %179 = select i1 %178, ptr %10, ptr %11
  call void @glColor3fv(ptr noundef nonnull %179) #8
  br label %180

180:                                              ; preds = %177, %176
  %181 = fdiv float %103, 1.500000e+00
  %182 = fdiv float %111, 1.500000e+00
  br label %183

183:                                              ; preds = %180, %183
  %184 = phi i64 [ 0, %180 ], [ %189, %183 ]
  %185 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 1, i64 %184
  %186 = load float, ptr %185, align 4, !tbaa !34
  %187 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 1, i64 %184, i64 1
  %188 = load float, ptr %187, align 4, !tbaa !34
  call fastcc void @draw_marker_slide_square(float noundef %186, float noundef %188, float noundef %181, float noundef %182, i32 noundef %4, ptr noundef nonnull %12)
  %189 = add nuw nsw i64 %184, 1
  %190 = icmp eq i64 %189, 4
  br i1 %190, label %191, label %183, !llvm.loop !188

191:                                              ; preds = %183
  %192 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 1, i64 1
  %193 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 1, i64 2
  %194 = load float, ptr %192, align 4, !tbaa !34
  %195 = load float, ptr %193, align 4, !tbaa !34
  %196 = fadd float %194, %195
  store float %196, ptr %15, align 4, !tbaa !34
  %197 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 1, i64 1, i64 1
  %198 = load float, ptr %197, align 4, !tbaa !34
  %199 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 1, i64 2, i64 1
  %200 = load float, ptr %199, align 4, !tbaa !34
  %201 = fadd float %198, %200
  %202 = getelementptr inbounds float, ptr %15, i64 1
  store float %201, ptr %202, align 4, !tbaa !34
  call void @BKE_tracking_marker_pattern_minmax(ptr noundef %2, ptr noundef nonnull %13, ptr noundef nonnull %14) #8
  call void @glEnable(i32 noundef 2852) #8
  call void @glLineStipple(i32 noundef 3, i16 noundef zeroext -21846) #8
  call void @glBegin(i32 noundef 1) #8
  call void @glVertex2f(float noundef 0.000000e+00, float noundef 0.000000e+00) #8
  call void @glVertex2fv(ptr noundef nonnull %15) #8
  call void @glEnd() #8
  call void @glDisable(i32 noundef 2852) #8
  %203 = load float, ptr %15, align 4, !tbaa !34
  %204 = load float, ptr %202, align 4, !tbaa !34
  call fastcc void @draw_marker_slide_square(float noundef %203, float noundef %204, float noundef %103, float noundef %111, i32 noundef %4, ptr noundef nonnull %12)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #8
  br label %205

205:                                              ; preds = %170, %191, %166
  call void @glPopMatrix() #8
  br i1 %20, label %206, label %207

206:                                              ; preds = %205
  call void @glLineWidth(float noundef 1.000000e+00) #8
  br label %207

207:                                              ; preds = %205, %206, %27, %43, %46, %54, %22, %9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #8
  ret void
}

declare ptr @BKE_tracking_object_get_active(ptr noundef) local_unnamed_addr #2

declare void @glPointSize(float noundef) local_unnamed_addr #2

declare void @BKE_tracking_get_projection_matrix(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_v4_m4v4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_tracking_distort_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @glVertex3f(float noundef, float noundef, float noundef) local_unnamed_addr #2

declare ptr @BKE_tracking_plane_marker_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @draw_plane_marker_ex(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i32 noundef %6, i32 noundef %7) unnamed_addr #0 {
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca [4 x [2 x float]], align 16
  %13 = alloca [3 x [3 x float]], align 16
  %14 = alloca [4 x [4 x float]], align 16
  %15 = alloca [2 x float], align 4
  %16 = alloca [3 x float], align 4
  %17 = alloca [3 x float], align 4
  %18 = alloca [2 x float], align 4
  %19 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 12
  %20 = load i32, ptr %19, align 8, !tbaa !38
  %21 = trunc i32 %20 to i8
  %22 = lshr i8 %21, 3
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %2, i64 0, i32 8
  %25 = load i32, ptr %24, align 4, !tbaa !73
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %2, i64 0, i32 9
  %29 = load ptr, ptr %28, align 8, !tbaa !189
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %8
  %32 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %2, i64 0, i32 10
  %33 = load float, ptr %32, align 8, !tbaa !190
  %34 = fcmp une float %33, 0.000000e+00
  br label %35

35:                                               ; preds = %31, %8
  %36 = phi i1 [ false, %8 ], [ %34, %31 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #8
  %37 = icmp eq i8 %5, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  tail call void @UI_ThemeColor(i32 noundef 140) #8
  br label %44

39:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #8
  call void @UI_GetThemeColor3fv(i32 noundef 141, ptr noundef nonnull %16) #8
  %40 = icmp eq i8 %4, 0
  %41 = select i1 %40, i32 143, i32 142
  call void @UI_GetThemeColor3fv(i32 noundef %41, ptr noundef nonnull %17) #8
  %42 = icmp eq i8 %27, 0
  %43 = select i1 %42, ptr %16, ptr %17
  call void @glColor3fv(ptr noundef nonnull %43) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #8
  br label %44

44:                                               ; preds = %39, %38
  %45 = sitofp i32 %6 to float
  %46 = fdiv float 1.000000e+00, %45
  %47 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 8
  %48 = load float, ptr %47, align 4, !tbaa !96
  %49 = fdiv float %46, %48
  store float %49, ptr %15, align 4, !tbaa !34
  %50 = sitofp i32 %7 to float
  %51 = fdiv float 1.000000e+00, %50
  %52 = fdiv float %51, %48
  %53 = getelementptr inbounds [2 x float], ptr %15, i64 0, i64 1
  store float %52, ptr %53, align 4, !tbaa !34
  %54 = zext nneg i8 %5 to i32
  br i1 %37, label %55, label %134

55:                                               ; preds = %44
  %56 = load ptr, ptr %28, align 8, !tbaa !189
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #8
  %57 = icmp eq ptr %56, null
  br i1 %57, label %132, label %58

58:                                               ; preds = %55
  %59 = call ptr @BKE_image_acquire_ibuf(ptr noundef nonnull %56, ptr noundef null, ptr noundef nonnull %9) #8
  %60 = icmp eq ptr %59, null
  br i1 %60, label %130, label %61

61:                                               ; preds = %58
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #8
  %62 = getelementptr inbounds %struct.Image, ptr %56, i64 0, i32 10
  %63 = load i16, ptr %62, align 2, !tbaa !191
  %64 = and i16 %63, 2048
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 44
  %68 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 45
  %69 = call ptr @IMB_display_buffer_acquire(ptr noundef nonnull %59, ptr noundef nonnull %67, ptr noundef nonnull %68, ptr noundef nonnull %10) #8
  br label %73

70:                                               ; preds = %61
  %71 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 45
  %72 = call ptr @IMB_display_buffer_acquire(ptr noundef nonnull %59, ptr noundef null, ptr noundef nonnull %71, ptr noundef nonnull %10) #8
  br label %73

73:                                               ; preds = %70, %66
  %74 = phi ptr [ %69, %66 ], [ %72, %70 ]
  %75 = icmp eq ptr %74, null
  br i1 %75, label %128, label %76

76:                                               ; preds = %73
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %12, ptr noundef nonnull align 16 dereferenceable(32) @__const.draw_plane_marker_image.frame_corners, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %13) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %14) #8
  call void @BKE_tracking_homography_between_two_quads(ptr noundef nonnull %12, ptr noundef %3, ptr noundef nonnull %13) #8
  %77 = load float, ptr %13, align 16, !tbaa !34
  store float %77, ptr %14, align 16, !tbaa !34
  %78 = getelementptr inbounds [3 x float], ptr %13, i64 0, i64 1
  %79 = load float, ptr %78, align 4, !tbaa !34
  %80 = getelementptr inbounds [4 x float], ptr %14, i64 0, i64 1
  store float %79, ptr %80, align 4, !tbaa !34
  %81 = getelementptr inbounds [4 x float], ptr %14, i64 0, i64 2
  store float 0.000000e+00, ptr %81, align 8, !tbaa !34
  %82 = getelementptr inbounds [3 x float], ptr %13, i64 0, i64 2
  %83 = load float, ptr %82, align 8, !tbaa !34
  %84 = getelementptr inbounds [4 x float], ptr %14, i64 0, i64 3
  store float %83, ptr %84, align 4, !tbaa !34
  %85 = getelementptr inbounds [3 x float], ptr %13, i64 1
  %86 = load float, ptr %85, align 4, !tbaa !34
  %87 = getelementptr inbounds [4 x float], ptr %14, i64 1
  store float %86, ptr %87, align 16, !tbaa !34
  %88 = getelementptr inbounds [3 x float], ptr %13, i64 1, i64 1
  %89 = load float, ptr %88, align 16, !tbaa !34
  %90 = getelementptr inbounds [4 x float], ptr %14, i64 1, i64 1
  store float %89, ptr %90, align 4, !tbaa !34
  %91 = getelementptr inbounds [4 x float], ptr %14, i64 1, i64 2
  store float 0.000000e+00, ptr %91, align 8, !tbaa !34
  %92 = getelementptr inbounds [3 x float], ptr %13, i64 1, i64 2
  %93 = load float, ptr %92, align 4, !tbaa !34
  %94 = getelementptr inbounds [4 x float], ptr %14, i64 1, i64 3
  store float %93, ptr %94, align 4, !tbaa !34
  %95 = getelementptr inbounds [4 x float], ptr %14, i64 2
  store float 0.000000e+00, ptr %95, align 16, !tbaa !34
  %96 = getelementptr inbounds [4 x float], ptr %14, i64 2, i64 1
  store float 0.000000e+00, ptr %96, align 4, !tbaa !34
  %97 = getelementptr inbounds [4 x float], ptr %14, i64 2, i64 2
  store float 1.000000e+00, ptr %97, align 8, !tbaa !34
  %98 = getelementptr inbounds [4 x float], ptr %14, i64 2, i64 3
  store float 0.000000e+00, ptr %98, align 4, !tbaa !34
  %99 = getelementptr inbounds [3 x float], ptr %13, i64 2
  %100 = load float, ptr %99, align 8, !tbaa !34
  %101 = getelementptr inbounds [4 x float], ptr %14, i64 3
  store float %100, ptr %101, align 16, !tbaa !34
  %102 = getelementptr inbounds [3 x float], ptr %13, i64 2, i64 1
  %103 = load float, ptr %102, align 4, !tbaa !34
  %104 = getelementptr inbounds [4 x float], ptr %14, i64 3, i64 1
  store float %103, ptr %104, align 4, !tbaa !34
  %105 = getelementptr inbounds [4 x float], ptr %14, i64 3, i64 2
  store float 0.000000e+00, ptr %105, align 8, !tbaa !34
  %106 = getelementptr inbounds [3 x float], ptr %13, i64 2, i64 2
  %107 = load float, ptr %106, align 16, !tbaa !34
  %108 = getelementptr inbounds [4 x float], ptr %14, i64 3, i64 3
  store float %107, ptr %108, align 4, !tbaa !34
  %109 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %2, i64 0, i32 10
  %110 = load float, ptr %109, align 8, !tbaa !190
  %111 = fcmp une float %110, 1.000000e+00
  br i1 %111, label %116, label %112

112:                                              ; preds = %76
  %113 = getelementptr inbounds %struct.ImBuf, ptr %59, i64 0, i32 4
  %114 = load i8, ptr %113, align 8, !tbaa !66
  %115 = icmp eq i8 %114, 32
  br i1 %115, label %116, label %117

116:                                              ; preds = %112, %76
  call void @glEnable(i32 noundef 3042) #8
  call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #8
  br label %117

117:                                              ; preds = %116, %112
  %118 = phi i1 [ false, %116 ], [ true, %112 ]
  call void @glTexEnvi(i32 noundef 8960, i32 noundef 8704, i32 noundef 8448) #8
  %119 = load float, ptr %109, align 8, !tbaa !190
  call void @glColor4f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef %119) #8
  %120 = call i32 @glaGetOneInteger(i32 noundef 3553) #8
  call void @glEnable(i32 noundef 3553) #8
  call void @glGenTextures(i32 noundef 1, ptr noundef nonnull %11) #8
  %121 = load i32, ptr %11, align 4, !tbaa !59
  call void @glBindTexture(i32 noundef 3553, i32 noundef %121) #8
  call void @glTexParameteri(i32 noundef 3553, i32 noundef 10241, i32 noundef 9728) #8
  call void @glTexParameteri(i32 noundef 3553, i32 noundef 10240, i32 noundef 9728) #8
  %122 = getelementptr inbounds %struct.ImBuf, ptr %59, i64 0, i32 2
  %123 = load i32, ptr %122, align 8, !tbaa !60
  %124 = getelementptr inbounds %struct.ImBuf, ptr %59, i64 0, i32 3
  %125 = load i32, ptr %124, align 4, !tbaa !67
  call void @glTexImage2D(i32 noundef 3553, i32 noundef 0, i32 noundef 32856, i32 noundef %123, i32 noundef %125, i32 noundef 0, i32 noundef 6408, i32 noundef 5121, ptr noundef nonnull %74) #8
  call void @glPushMatrix() #8
  call void @glMultMatrixf(ptr noundef nonnull %14) #8
  call void @glBegin(i32 noundef 7) #8
  call void @glTexCoord2f(float noundef 0.000000e+00, float noundef 0.000000e+00) #8
  call void @glVertex2f(float noundef 0.000000e+00, float noundef 0.000000e+00) #8
  call void @glTexCoord2f(float noundef 1.000000e+00, float noundef 0.000000e+00) #8
  call void @glVertex2f(float noundef 1.000000e+00, float noundef 0.000000e+00) #8
  call void @glTexCoord2f(float noundef 1.000000e+00, float noundef 1.000000e+00) #8
  call void @glVertex2f(float noundef 1.000000e+00, float noundef 1.000000e+00) #8
  call void @glTexCoord2f(float noundef 0.000000e+00, float noundef 1.000000e+00) #8
  call void @glVertex2f(float noundef 0.000000e+00, float noundef 1.000000e+00) #8
  call void @glEnd() #8
  call void @glPopMatrix() #8
  call void @glBindTexture(i32 noundef 3553, i32 noundef %120) #8
  call void @glDisable(i32 noundef 3553) #8
  br i1 %118, label %127, label %126

126:                                              ; preds = %117
  call void @glDisable(i32 noundef 3042) #8
  br label %127

127:                                              ; preds = %126, %117
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #8
  br label %128

128:                                              ; preds = %127, %73
  %129 = load ptr, ptr %10, align 8, !tbaa !72
  call void @IMB_display_buffer_release(ptr noundef %129) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #8
  br label %130

130:                                              ; preds = %128, %58
  %131 = load ptr, ptr %9, align 8, !tbaa !72
  call void @BKE_image_release_ibuf(ptr noundef nonnull %56, ptr noundef %59, ptr noundef %131) #8
  br label %132

132:                                              ; preds = %55, %130
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #8
  %133 = icmp eq i8 %23, 0
  br i1 %133, label %138, label %137

134:                                              ; preds = %44
  %135 = icmp eq i8 %23, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %134
  call void @glLineWidth(float noundef 3.000000e+00) #8
  br label %138

137:                                              ; preds = %132
  call void @glLineStipple(i32 noundef 3, i16 noundef zeroext -21846) #8
  call void @glEnable(i32 noundef 2852) #8
  br label %138

138:                                              ; preds = %132, %137, %134, %136
  br i1 %36, label %212, label %139

139:                                              ; preds = %138
  call void @glBegin(i32 noundef 2) #8
  call void @glVertex2fv(ptr noundef %3) #8
  %140 = getelementptr inbounds [4 x [2 x float]], ptr %3, i64 0, i64 1
  call void @glVertex2fv(ptr noundef nonnull %140) #8
  %141 = getelementptr inbounds [4 x [2 x float]], ptr %3, i64 0, i64 2
  call void @glVertex2fv(ptr noundef nonnull %141) #8
  %142 = getelementptr inbounds [4 x [2 x float]], ptr %3, i64 0, i64 3
  call void @glVertex2fv(ptr noundef nonnull %142) #8
  call void @glEnd() #8
  br i1 %37, label %143, label %212

143:                                              ; preds = %139
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #8
  call void @glPushAttrib(i32 noundef 16385) #8
  %144 = load float, ptr %47, align 4, !tbaa !96
  %145 = load float, ptr %140, align 4, !tbaa !34
  %146 = load float, ptr %3, align 4, !tbaa !34
  %147 = fsub float %145, %146
  %148 = getelementptr inbounds [4 x [2 x float]], ptr %3, i64 0, i64 1, i64 1
  %149 = load float, ptr %148, align 4, !tbaa !34
  %150 = getelementptr inbounds float, ptr %3, i64 1
  %151 = load float, ptr %150, align 4, !tbaa !34
  %152 = fsub float %149, %151
  %153 = fmul float %147, %45
  %154 = fmul float %152, %50
  %155 = fmul float %154, %154
  %156 = call float @llvm.fmuladd.f32(float %153, float %153, float %155)
  %157 = fcmp ogt float %156, 0x38AA95A5C0000000
  br i1 %157, label %158, label %163

158:                                              ; preds = %143
  %159 = call float @sqrtf(float noundef %156) #8
  %160 = fdiv float 1.000000e+00, %159
  %161 = fmul float %153, %160
  %162 = fmul float %154, %160
  br label %163

163:                                              ; preds = %143, %158
  %164 = phi float [ %161, %158 ], [ 0.000000e+00, %143 ]
  %165 = phi float [ %162, %158 ], [ 0.000000e+00, %143 ]
  %166 = phi float [ %159, %158 ], [ 0.000000e+00, %143 ]
  %167 = fdiv float 3.200000e+01, %144
  %168 = fcmp olt float %167, %166
  %169 = select i1 %168, float %167, float %166
  %170 = fmul float %164, %169
  %171 = fmul float %165, %169
  %172 = fdiv float %170, %45
  %173 = fdiv float %171, %50
  %174 = load float, ptr %3, align 4, !tbaa !34
  %175 = fadd float %174, %172
  store float %175, ptr %18, align 4, !tbaa !34
  %176 = load float, ptr %150, align 4, !tbaa !34
  %177 = fadd float %176, %173
  %178 = getelementptr inbounds float, ptr %18, i64 1
  store float %177, ptr %178, align 4, !tbaa !34
  call void @glColor3f(float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #8
  call void @glBegin(i32 noundef 1) #8
  call void @glVertex2fv(ptr noundef nonnull %3) #8
  call void @glVertex2fv(ptr noundef nonnull %18) #8
  call void @glEnd() #8
  %179 = load float, ptr %47, align 4, !tbaa !96
  %180 = load float, ptr %142, align 4, !tbaa !34
  %181 = load float, ptr %3, align 4, !tbaa !34
  %182 = fsub float %180, %181
  %183 = getelementptr inbounds [4 x [2 x float]], ptr %3, i64 0, i64 3, i64 1
  %184 = load float, ptr %183, align 4, !tbaa !34
  %185 = load float, ptr %150, align 4, !tbaa !34
  %186 = fsub float %184, %185
  %187 = fmul float %182, %45
  %188 = fmul float %186, %50
  %189 = fmul float %188, %188
  %190 = call float @llvm.fmuladd.f32(float %187, float %187, float %189)
  %191 = fcmp ogt float %190, 0x38AA95A5C0000000
  br i1 %191, label %192, label %197

192:                                              ; preds = %163
  %193 = call float @sqrtf(float noundef %190) #8
  %194 = fdiv float 1.000000e+00, %193
  %195 = fmul float %187, %194
  %196 = fmul float %188, %194
  br label %197

197:                                              ; preds = %163, %192
  %198 = phi float [ %195, %192 ], [ 0.000000e+00, %163 ]
  %199 = phi float [ %196, %192 ], [ 0.000000e+00, %163 ]
  %200 = phi float [ %193, %192 ], [ 0.000000e+00, %163 ]
  %201 = fdiv float 3.200000e+01, %179
  %202 = fcmp olt float %201, %200
  %203 = select i1 %202, float %201, float %200
  %204 = fmul float %198, %203
  %205 = fmul float %199, %203
  %206 = fdiv float %204, %45
  %207 = fdiv float %205, %50
  %208 = load float, ptr %3, align 4, !tbaa !34
  %209 = fadd float %208, %206
  store float %209, ptr %18, align 4, !tbaa !34
  %210 = load float, ptr %150, align 4, !tbaa !34
  %211 = fadd float %210, %207
  store float %211, ptr %178, align 4, !tbaa !34
  call void @glColor3f(float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00) #8
  call void @glBegin(i32 noundef 1) #8
  call void @glVertex2fv(ptr noundef nonnull %3) #8
  call void @glVertex2fv(ptr noundef nonnull %18) #8
  call void @glEnd() #8
  call void @glPopAttrib() #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #8
  br label %212

212:                                              ; preds = %139, %197, %138
  %213 = icmp eq i8 %27, 0
  br i1 %213, label %227, label %214

214:                                              ; preds = %212
  %215 = load float, ptr %15, align 4, !tbaa !34
  %216 = fmul float %215, 3.000000e+00
  %217 = load float, ptr %53, align 4, !tbaa !34
  %218 = fmul float %217, 3.000000e+00
  br label %219

219:                                              ; preds = %214, %219
  %220 = phi i64 [ 0, %214 ], [ %225, %219 ]
  %221 = getelementptr inbounds [4 x [2 x float]], ptr %3, i64 0, i64 %220
  %222 = load float, ptr %221, align 4, !tbaa !34
  %223 = getelementptr inbounds [4 x [2 x float]], ptr %3, i64 0, i64 %220, i64 1
  %224 = load float, ptr %223, align 4, !tbaa !34
  call fastcc void @draw_marker_slide_square(float noundef %222, float noundef %224, float noundef %216, float noundef %218, i32 noundef %54, ptr noundef nonnull %15)
  %225 = add nuw nsw i64 %220, 1
  %226 = icmp eq i64 %225, 4
  br i1 %226, label %227, label %219, !llvm.loop !193

227:                                              ; preds = %219, %212
  %228 = icmp eq i8 %23, 0
  br i1 %37, label %231, label %229

229:                                              ; preds = %227
  br i1 %228, label %230, label %233

230:                                              ; preds = %229
  call void @glLineWidth(float noundef 1.000000e+00) #8
  br label %233

231:                                              ; preds = %227
  br i1 %228, label %233, label %232

232:                                              ; preds = %231
  call void @glDisable(i32 noundef 2852) #8
  br label %233

233:                                              ; preds = %231, %232, %229, %230
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #8
  ret void
}

declare void @UI_ThemeColor(i32 noundef) local_unnamed_addr #2

declare void @glColor3fv(ptr noundef) local_unnamed_addr #2

declare void @glLineWidth(float noundef) local_unnamed_addr #2

declare void @glVertex2fv(ptr noundef) local_unnamed_addr #2

declare void @glPushAttrib(i32 noundef) local_unnamed_addr #2

declare void @glPopAttrib() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @draw_marker_slide_square(float noundef %0, float noundef %1, float noundef %2, float noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5) unnamed_addr #0 {
  %7 = icmp eq i32 %4, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %6
  %9 = load float, ptr %5, align 4, !tbaa !34
  %10 = fadd float %9, %2
  %11 = getelementptr inbounds float, ptr %5, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = fadd float %12, %3
  br label %14

14:                                               ; preds = %8, %6
  %15 = phi float [ %10, %8 ], [ %2, %6 ]
  %16 = phi float [ %13, %8 ], [ %3, %6 ]
  tail call void @glBegin(i32 noundef 7) #8
  %17 = fsub float %0, %15
  %18 = fadd float %16, %1
  tail call void @glVertex3f(float noundef %17, float noundef %18, float noundef 0.000000e+00) #8
  %19 = fadd float %15, %0
  tail call void @glVertex3f(float noundef %19, float noundef %18, float noundef 0.000000e+00) #8
  %20 = fsub float %1, %16
  tail call void @glVertex3f(float noundef %19, float noundef %20, float noundef 0.000000e+00) #8
  tail call void @glVertex3f(float noundef %17, float noundef %20, float noundef 0.000000e+00) #8
  tail call void @glEnd() #8
  ret void
}

declare void @UI_GetThemeColor3fv(i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_image_acquire_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @IMB_display_buffer_acquire(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare void @BKE_tracking_homography_between_two_quads(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @glTexEnvi(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @glColor4f(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare i32 @glaGetOneInteger(i32 noundef) local_unnamed_addr #2

declare void @glGenTextures(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @glBindTexture(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @glTexParameteri(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @glTexImage2D(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @glTexCoord2f(float noundef, float noundef) local_unnamed_addr #2

declare void @IMB_display_buffer_release(ptr noundef) local_unnamed_addr #2

declare void @BKE_image_release_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #5

declare i32 @isect_point_quad_v2(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @track_colors(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 13
  %6 = load i32, ptr %5, align 8, !tbaa !78
  %7 = and i32 %6, 128
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %33, label %9

9:                                                ; preds = %4
  %10 = icmp eq i32 %1, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %9
  tail call void @UI_GetThemeColor3fv(i32 noundef 142, ptr noundef %3) #8
  br label %21

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 16
  %14 = load float, ptr %13, align 4, !tbaa !34
  store float %14, ptr %3, align 4, !tbaa !34
  %15 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 16, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = getelementptr inbounds float, ptr %3, i64 1
  store float %16, ptr %17, align 4, !tbaa !34
  %18 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 16, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = getelementptr inbounds float, ptr %3, i64 2
  store float %19, ptr %20, align 4, !tbaa !34
  br label %21

21:                                               ; preds = %12, %11
  %22 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 16
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = fmul float %23, 5.000000e-01
  store float %24, ptr %2, align 4, !tbaa !34
  %25 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 16, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !34
  %27 = fmul float %26, 5.000000e-01
  %28 = getelementptr inbounds float, ptr %2, i64 1
  store float %27, ptr %28, align 4, !tbaa !34
  %29 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 16, i64 2
  %30 = load float, ptr %29, align 4, !tbaa !34
  %31 = fmul float %30, 5.000000e-01
  %32 = getelementptr inbounds float, ptr %2, i64 2
  store float %31, ptr %32, align 4, !tbaa !34
  br label %37

33:                                               ; preds = %4
  tail call void @UI_GetThemeColor3fv(i32 noundef 141, ptr noundef %2) #8
  %34 = icmp eq i32 %1, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %33
  tail call void @UI_GetThemeColor3fv(i32 noundef 142, ptr noundef %3) #8
  br label %37

36:                                               ; preds = %33
  tail call void @UI_GetThemeColor3fv(i32 noundef 143, ptr noundef %3) #8
  br label %37

37:                                               ; preds = %35, %36, %21
  ret void
}

declare void @UI_ThemeColorShade(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @BKE_tracking_marker_pattern_minmax(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

declare void @BLF_size(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare float @BLF_height_max(i32 noundef) local_unnamed_addr #2

declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @BLF_position(i32 noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @BLF_draw(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @BKE_tracking_undistort_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @minmax_v2v2_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @glColor4fv(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_tracking_get_active_reconstruction(ptr noundef) local_unnamed_addr #2

declare void @ED_region_cache_draw_background(ptr noundef) local_unnamed_addr #2

declare void @BKE_movieclip_get_cache_segments(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_region_cache_draw_cached_segments(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @glColor4ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare void @glRecti(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #3

declare void @ED_region_cache_draw_curfra_label(i32 noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @ED_mask_draw_frames(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @ED_region_info_draw(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

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
!35 = !{!"float", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !42, i64 208}
!39 = !{!"SpaceClip", !40, i64 0, !40, i64 8, !41, i64 16, !42, i64 32, !35, i64 36, !35, i64 40, !35, i64 44, !35, i64 48, !35, i64 52, !43, i64 56, !40, i64 64, !45, i64 72, !42, i64 208, !44, i64 212, !44, i64 214, !42, i64 216, !36, i64 220, !35, i64 228, !35, i64 232, !42, i64 236, !36, i64 240, !36, i64 304, !42, i64 368, !44, i64 372, !44, i64 374, !42, i64 376, !42, i64 380, !36, i64 384, !47, i64 392}
!40 = !{!"any pointer", !36, i64 0}
!41 = !{!"ListBase", !40, i64 0, !40, i64 8}
!42 = !{!"int", !36, i64 0}
!43 = !{!"MovieClipUser", !42, i64 0, !44, i64 4, !44, i64 6}
!44 = !{!"short", !36, i64 0}
!45 = !{!"MovieClipScopes", !44, i64 0, !44, i64 2, !42, i64 4, !42, i64 8, !42, i64 12, !46, i64 16, !40, i64 80, !40, i64 88, !36, i64 96, !44, i64 104, !44, i64 106, !42, i64 108, !40, i64 112, !40, i64 120, !36, i64 128}
!46 = !{!"MovieTrackingMarker", !36, i64 0, !36, i64 8, !36, i64 40, !36, i64 48, !42, i64 56, !42, i64 60}
!47 = !{!"MaskSpaceInfo", !40, i64 0, !36, i64 8, !36, i64 9, !36, i64 10, !36, i64 11}
!48 = !{!49, !35, i64 1288}
!49 = !{!"MovieClip", !50, i64 0, !40, i64 120, !36, i64 128, !42, i64 1152, !42, i64 1156, !36, i64 1160, !35, i64 1168, !35, i64 1172, !40, i64 1176, !40, i64 1184, !40, i64 1192, !51, i64 1200, !40, i64 1528, !57, i64 1536, !42, i64 2312, !42, i64 2316, !42, i64 2320, !42, i64 2324, !58, i64 2328}
!50 = !{!"ID", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !36, i64 32, !44, i64 98, !42, i64 100, !42, i64 104, !42, i64 108, !40, i64 112}
!51 = !{!"MovieTracking", !52, i64 0, !53, i64 72, !41, i64 128, !41, i64 144, !54, i64 160, !55, i64 184, !40, i64 232, !40, i64 240, !41, i64 248, !42, i64 264, !42, i64 268, !40, i64 272, !56, i64 280}
!52 = !{!"MovieTrackingSettings", !42, i64 0, !44, i64 4, !44, i64 6, !35, i64 8, !44, i64 12, !44, i64 14, !44, i64 16, !44, i64 18, !44, i64 20, !44, i64 22, !35, i64 24, !44, i64 28, !44, i64 30, !42, i64 32, !42, i64 36, !42, i64 40, !44, i64 44, !44, i64 46, !35, i64 48, !42, i64 52, !42, i64 56, !35, i64 60, !35, i64 64, !42, i64 68}
!53 = !{!"MovieTrackingCamera", !40, i64 0, !44, i64 8, !44, i64 10, !35, i64 12, !35, i64 16, !35, i64 20, !44, i64 24, !44, i64 26, !36, i64 28, !35, i64 36, !35, i64 40, !35, i64 44, !35, i64 48, !35, i64 52}
!54 = !{!"MovieTrackingReconstruction", !42, i64 0, !35, i64 4, !42, i64 8, !42, i64 12, !40, i64 16}
!55 = !{!"MovieTrackingStabilization", !42, i64 0, !42, i64 4, !42, i64 8, !35, i64 12, !40, i64 16, !35, i64 24, !35, i64 28, !35, i64 32, !42, i64 36, !42, i64 40, !35, i64 44}
!56 = !{!"MovieTrackingDopesheet", !42, i64 0, !44, i64 4, !44, i64 6, !41, i64 8, !41, i64 24, !42, i64 40, !42, i64 44}
!57 = !{!"MovieClipProxy", !36, i64 0, !44, i64 768, !44, i64 770, !44, i64 772, !44, i64 774}
!58 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!59 = !{!42, !42, i64 0}
!60 = !{!61, !42, i64 16}
!61 = !{!"ImBuf", !40, i64 0, !40, i64 8, !42, i64 16, !42, i64 20, !36, i64 24, !42, i64 28, !42, i64 32, !42, i64 36, !40, i64 40, !40, i64 48, !36, i64 56, !42, i64 72, !42, i64 76, !42, i64 80, !42, i64 84, !40, i64 88, !40, i64 96, !40, i64 104, !35, i64 112, !36, i64 120, !42, i64 280, !42, i64 284, !42, i64 288, !42, i64 292, !40, i64 296, !40, i64 304, !42, i64 312, !36, i64 316, !36, i64 1340, !40, i64 2368, !42, i64 2376, !40, i64 2384, !42, i64 2392, !42, i64 2396, !40, i64 2400, !40, i64 2408, !40, i64 2416, !40, i64 2424, !42, i64 2432, !62, i64 2436, !63, i64 2456}
!62 = !{!"rcti", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12}
!63 = !{!"DDSData", !42, i64 0, !42, i64 4, !40, i64 8, !42, i64 16}
!64 = !{!39, !35, i64 228}
!65 = !{!39, !35, i64 232}
!66 = !{!61, !36, i64 24}
!67 = !{!61, !42, i64 20}
!68 = !{!49, !42, i64 2312}
!69 = !{!39, !44, i64 60}
!70 = !{!49, !42, i64 1384}
!71 = !{!39, !44, i64 62}
!72 = !{!40, !40, i64 0}
!73 = !{!74, !42, i64 108}
!74 = !{!"MovieTrackingPlaneTrack", !40, i64 0, !40, i64 8, !36, i64 16, !40, i64 80, !42, i64 88, !42, i64 92, !40, i64 96, !42, i64 104, !42, i64 108, !40, i64 112, !35, i64 120, !42, i64 124}
!75 = distinct !{!75, !76, !77}
!76 = !{!"llvm.loop.mustprogress"}
!77 = !{!"llvm.loop.unroll.disable"}
!78 = !{!79, !42, i64 152}
!79 = !{!"MovieTrackingTrack", !40, i64 0, !40, i64 8, !36, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !42, i64 120, !42, i64 124, !40, i64 128, !36, i64 136, !35, i64 148, !42, i64 152, !42, i64 156, !42, i64 160, !36, i64 164, !44, i64 176, !44, i64 178, !44, i64 180, !44, i64 182, !42, i64 184, !35, i64 188, !40, i64 192, !35, i64 200, !35, i64 204}
!80 = !{!46, !42, i64 60}
!81 = !{!39, !40, i64 64}
!82 = !{!49, !40, i64 1432}
!83 = distinct !{!83, !76, !77}
!84 = distinct !{!84, !76, !77}
!85 = !{!39, !42, i64 216}
!86 = !{!46, !42, i64 56}
!87 = distinct !{!87, !76, !77}
!88 = distinct !{!88, !76, !77}
!89 = !{!79, !42, i64 156}
!90 = !{!79, !42, i64 160}
!91 = distinct !{!91, !76, !77}
!92 = distinct !{!92, !76, !77}
!93 = distinct !{!93, !76, !77}
!94 = distinct !{!94, !76, !77}
!95 = distinct !{!95, !76, !77}
!96 = !{!39, !35, i64 52}
!97 = distinct !{!97, !76, !77}
!98 = distinct !{!98, !76, !77}
!99 = distinct !{!99, !76, !77}
!100 = !{!101, !40, i64 8568}
!101 = !{!"UserDef", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !36, i64 20, !36, i64 788, !36, i64 1556, !36, i64 2580, !36, i64 3348, !36, i64 4116, !36, i64 4884, !36, i64 5652, !36, i64 6420, !36, i64 7444, !42, i64 8468, !44, i64 8472, !44, i64 8474, !44, i64 8476, !44, i64 8478, !44, i64 8480, !44, i64 8482, !42, i64 8484, !42, i64 8488, !42, i64 8492, !44, i64 8496, !44, i64 8498, !42, i64 8500, !42, i64 8504, !42, i64 8508, !42, i64 8512, !42, i64 8516, !42, i64 8520, !42, i64 8524, !44, i64 8528, !44, i64 8530, !44, i64 8532, !44, i64 8534, !41, i64 8536, !41, i64 8552, !41, i64 8568, !41, i64 8584, !41, i64 8600, !41, i64 8616, !41, i64 8632, !36, i64 8648, !44, i64 8712, !44, i64 8714, !44, i64 8716, !44, i64 8718, !44, i64 8720, !44, i64 8722, !44, i64 8724, !44, i64 8726, !36, i64 8728, !44, i64 8896, !44, i64 8898, !44, i64 8900, !44, i64 8902, !44, i64 8904, !44, i64 8906, !44, i64 8908, !44, i64 8910, !42, i64 8912, !42, i64 8916, !44, i64 8920, !44, i64 8922, !44, i64 8924, !44, i64 8926, !44, i64 8928, !44, i64 8930, !44, i64 8932, !44, i64 8934, !44, i64 8936, !44, i64 8938, !36, i64 8940, !36, i64 8941, !36, i64 8942, !36, i64 8943, !44, i64 8944, !44, i64 8946, !44, i64 8948, !44, i64 8950, !44, i64 8952, !44, i64 8954, !35, i64 8956, !35, i64 8960, !42, i64 8964, !44, i64 8968, !44, i64 8970, !35, i64 8972, !44, i64 8976, !44, i64 8978, !44, i64 8980, !44, i64 8982, !102, i64 8984, !36, i64 9760, !36, i64 9772, !44, i64 9788, !36, i64 9790, !36, i64 9791, !36, i64 9792, !36, i64 9872, !42, i64 10896, !42, i64 10900, !35, i64 10904, !35, i64 10908, !42, i64 10912, !44, i64 10916, !44, i64 10918, !44, i64 10920, !44, i64 10922, !44, i64 10924, !44, i64 10926, !103, i64 10928}
!102 = !{!"ColorBand", !44, i64 0, !44, i64 2, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !36, i64 8}
!103 = !{!"WalkNavigation", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !44, i64 24, !36, i64 26}
!104 = !{!105, !44, i64 176}
!105 = !{!"uiStyle", !40, i64 0, !40, i64 8, !36, i64 16, !106, i64 80, !106, i64 112, !106, i64 144, !106, i64 176, !35, i64 208, !44, i64 212, !44, i64 214, !44, i64 216, !44, i64 218, !44, i64 220, !44, i64 222, !44, i64 224, !44, i64 226, !44, i64 228, !44, i64 230}
!106 = !{!"uiFontStyle", !44, i64 0, !44, i64 2, !44, i64 4, !36, i64 6, !44, i64 12, !44, i64 14, !44, i64 16, !44, i64 18, !44, i64 20, !44, i64 22, !35, i64 24, !35, i64 28}
!107 = !{!101, !35, i64 10908}
!108 = !{!101, !42, i64 8524}
!109 = !{!36, !36, i64 0}
!110 = !{!79, !35, i64 148}
!111 = distinct !{!111, !76, !77}
!112 = !{!51, !35, i64 88}
!113 = !{!51, !35, i64 92}
!114 = distinct !{!114, !76, !77}
!115 = distinct !{!115, !76, !77}
!116 = distinct !{!116, !76, !77}
!117 = distinct !{!117, !76, !77}
!118 = distinct !{!118, !76, !77}
!119 = distinct !{!119, !76, !77}
!120 = distinct !{!120, !76, !77}
!121 = distinct !{!121, !76, !77}
!122 = distinct !{!122, !76, !77}
!123 = distinct !{!123, !76, !77}
!124 = distinct !{!124, !76, !77}
!125 = !{!39, !44, i64 372}
!126 = !{!49, !40, i64 1192}
!127 = !{!128, !42, i64 40}
!128 = !{!"bGPDlayer", !40, i64 0, !40, i64 8, !41, i64 16, !40, i64 32, !42, i64 40, !44, i64 44, !44, i64 46, !36, i64 48, !36, i64 64}
!129 = distinct !{!129, !76, !77}
!130 = !{!128, !40, i64 16}
!131 = !{!128, !44, i64 44}
!132 = !{!133, !44, i64 38}
!133 = !{!"bGPDstroke", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !42, i64 32, !44, i64 36, !44, i64 38, !134, i64 40}
!134 = !{!"double", !36, i64 0}
!135 = !{!133, !42, i64 32}
!136 = !{!133, !40, i64 16}
!137 = !{!138, !35, i64 0}
!138 = !{!"bGPDspoint", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16}
!139 = !{!138, !35, i64 4}
!140 = distinct !{!140, !76, !77}
!141 = distinct !{!141, !76, !77}
!142 = distinct !{!142, !76, !77}
!143 = !{!144, !40, i64 0}
!144 = !{!"bGPDframe", !40, i64 0, !40, i64 8, !41, i64 16, !42, i64 32, !42, i64 36}
!145 = distinct !{!145, !76, !77}
!146 = !{!147, !42, i64 684}
!147 = !{!"Scene", !50, i64 0, !40, i64 120, !40, i64 128, !40, i64 136, !40, i64 144, !41, i64 152, !40, i64 168, !40, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !42, i64 232, !42, i64 236, !42, i64 240, !44, i64 244, !36, i64 246, !36, i64 247, !40, i64 248, !40, i64 256, !40, i64 264, !40, i64 272, !148, i64 280, !156, i64 4264, !41, i64 4296, !41, i64 4312, !40, i64 4328, !40, i64 4336, !40, i64 4344, !40, i64 4352, !40, i64 4360, !40, i64 4368, !44, i64 4376, !44, i64 4378, !42, i64 4380, !41, i64 4384, !157, i64 4400, !158, i64 4416, !161, i64 4600, !40, i64 4608, !162, i64 4616, !40, i64 4640, !163, i64 4648, !163, i64 4656, !150, i64 4664, !151, i64 4824, !58, i64 4888, !40, i64 4952}
!148 = !{!"RenderData", !149, i64 0, !40, i64 248, !40, i64 256, !152, i64 264, !153, i64 328, !42, i64 400, !42, i64 404, !42, i64 408, !35, i64 412, !42, i64 416, !42, i64 420, !42, i64 424, !42, i64 428, !44, i64 432, !44, i64 434, !35, i64 436, !35, i64 440, !35, i64 444, !35, i64 448, !35, i64 452, !44, i64 456, !44, i64 458, !44, i64 460, !44, i64 462, !44, i64 464, !44, i64 466, !42, i64 468, !44, i64 472, !44, i64 474, !44, i64 476, !44, i64 478, !44, i64 480, !44, i64 482, !42, i64 484, !42, i64 488, !44, i64 492, !44, i64 494, !42, i64 496, !42, i64 500, !44, i64 504, !44, i64 506, !44, i64 508, !44, i64 510, !44, i64 512, !36, i64 514, !36, i64 515, !42, i64 516, !42, i64 520, !42, i64 524, !44, i64 528, !44, i64 530, !44, i64 532, !44, i64 534, !44, i64 536, !44, i64 538, !44, i64 540, !44, i64 542, !154, i64 544, !154, i64 560, !62, i64 576, !41, i64 592, !44, i64 608, !44, i64 610, !35, i64 612, !35, i64 616, !35, i64 620, !35, i64 624, !42, i64 628, !35, i64 632, !35, i64 636, !35, i64 640, !35, i64 644, !44, i64 648, !44, i64 650, !44, i64 652, !44, i64 654, !44, i64 656, !44, i64 658, !35, i64 660, !35, i64 664, !44, i64 668, !44, i64 670, !35, i64 672, !35, i64 676, !36, i64 680, !42, i64 1704, !44, i64 1708, !44, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !42, i64 2520, !44, i64 2524, !44, i64 2526, !35, i64 2528, !35, i64 2532, !44, i64 2536, !44, i64 2538, !35, i64 2540, !44, i64 2544, !44, i64 2546, !42, i64 2548, !44, i64 2552, !44, i64 2554, !44, i64 2556, !44, i64 2558, !35, i64 2560, !35, i64 2564, !40, i64 2568, !42, i64 2576, !35, i64 2580, !36, i64 2584, !155, i64 2616, !42, i64 3976, !42, i64 3980}
!149 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !44, i64 8, !44, i64 10, !35, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !150, i64 24, !151, i64 184}
!150 = !{!"ColorManagedViewSettings", !42, i64 0, !42, i64 4, !36, i64 8, !36, i64 72, !35, i64 136, !35, i64 140, !40, i64 144, !40, i64 152}
!151 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!152 = !{!"QuicktimeCodecSettings", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !42, i64 32, !42, i64 36, !42, i64 40, !42, i64 44, !44, i64 48, !44, i64 50, !42, i64 52, !42, i64 56, !42, i64 60}
!153 = !{!"FFMpegCodecData", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !35, i64 32, !42, i64 36, !42, i64 40, !42, i64 44, !42, i64 48, !42, i64 52, !42, i64 56, !42, i64 60, !40, i64 64}
!154 = !{!"rctf", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12}
!155 = !{!"BakeData", !149, i64 0, !36, i64 248, !44, i64 1272, !44, i64 1274, !44, i64 1276, !44, i64 1278, !35, i64 1280, !35, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!156 = !{!"AudioData", !42, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !42, i64 16, !44, i64 20, !44, i64 22, !35, i64 24, !35, i64 28}
!157 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!158 = !{!"GameData", !157, i64 0, !44, i64 16, !44, i64 18, !44, i64 20, !44, i64 22, !44, i64 24, !44, i64 26, !44, i64 28, !44, i64 30, !44, i64 32, !36, i64 34, !159, i64 40, !44, i64 64, !44, i64 66, !35, i64 68, !160, i64 72, !35, i64 128, !35, i64 132, !42, i64 136, !44, i64 140, !44, i64 142, !44, i64 144, !44, i64 146, !44, i64 148, !44, i64 150, !44, i64 152, !44, i64 154, !44, i64 156, !44, i64 158, !44, i64 160, !44, i64 162, !35, i64 164, !35, i64 168, !35, i64 172, !35, i64 176, !35, i64 180}
!159 = !{!"GameDome", !44, i64 0, !44, i64 2, !44, i64 4, !44, i64 6, !35, i64 8, !35, i64 12, !40, i64 16}
!160 = !{!"RecastData", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !35, i64 24, !35, i64 28, !35, i64 32, !35, i64 36, !42, i64 40, !35, i64 44, !35, i64 48, !44, i64 52, !44, i64 54}
!161 = !{!"UnitSettings", !35, i64 0, !36, i64 4, !36, i64 5, !44, i64 6}
!162 = !{!"PhysicsSettings", !36, i64 0, !42, i64 12, !42, i64 16, !42, i64 20}
!163 = !{!"long", !36, i64 0}
!164 = !{!147, !42, i64 688}
!165 = !{!166, !44, i64 208}
!166 = !{!"ARegion", !40, i64 0, !40, i64 8, !167, i64 16, !62, i64 176, !62, i64 192, !44, i64 208, !44, i64 210, !44, i64 212, !44, i64 214, !44, i64 216, !44, i64 218, !35, i64 220, !44, i64 224, !44, i64 226, !44, i64 228, !44, i64 230, !44, i64 232, !44, i64 234, !44, i64 236, !44, i64 238, !40, i64 240, !41, i64 248, !41, i64 264, !41, i64 280, !41, i64 296, !41, i64 312, !41, i64 328, !41, i64 344, !40, i64 360, !40, i64 368, !40, i64 376}
!167 = !{!"View2D", !154, i64 0, !154, i64 16, !62, i64 32, !62, i64 48, !62, i64 64, !36, i64 80, !36, i64 88, !35, i64 96, !35, i64 100, !44, i64 104, !44, i64 106, !44, i64 108, !44, i64 110, !44, i64 112, !44, i64 114, !44, i64 116, !44, i64 118, !44, i64 120, !44, i64 122, !44, i64 124, !44, i64 126, !40, i64 128, !42, i64 136, !42, i64 140, !40, i64 144, !40, i64 152}
!168 = !{!49, !42, i64 2320}
!169 = !{!79, !40, i64 128}
!170 = !{!74, !40, i64 96}
!171 = distinct !{!171, !76, !77}
!172 = !{!54, !42, i64 0}
!173 = !{!54, !42, i64 12}
!174 = !{!54, !40, i64 16}
!175 = !{!176, !42, i64 0}
!176 = !{!"MovieReconstructedCamera", !42, i64 0, !35, i64 4, !36, i64 8}
!177 = distinct !{!177, !76, !77}
!178 = distinct !{!178, !76, !77}
!179 = !{!39, !42, i64 56}
!180 = !{!181, !42, i64 144}
!181 = !{!"MovieTrackingObject", !40, i64 0, !40, i64 8, !36, i64 16, !42, i64 80, !35, i64 84, !41, i64 88, !41, i64 104, !54, i64 120, !42, i64 144, !42, i64 148}
!182 = !{!147, !42, i64 680}
!183 = !{!181, !42, i64 148}
!184 = !{!39, !44, i64 212}
!185 = !{!39, !40, i64 392}
!186 = !{!51, !40, i64 272}
!187 = distinct !{!187, !76, !77}
!188 = distinct !{!188, !76, !77}
!189 = !{!74, !40, i64 112}
!190 = !{!74, !35, i64 120}
!191 = !{!192, !44, i64 1246}
!192 = !{!"Image", !50, i64 0, !36, i64 120, !40, i64 1144, !40, i64 1152, !40, i64 1160, !40, i64 1168, !36, i64 1176, !44, i64 1240, !44, i64 1242, !44, i64 1244, !44, i64 1246, !44, i64 1248, !44, i64 1250, !42, i64 1252, !44, i64 1256, !44, i64 1258, !44, i64 1260, !44, i64 1262, !44, i64 1264, !44, i64 1266, !42, i64 1268, !40, i64 1272, !40, i64 1280, !40, i64 1288, !35, i64 1296, !42, i64 1300, !44, i64 1304, !44, i64 1306, !42, i64 1308, !42, i64 1312, !36, i64 1316, !36, i64 1317, !44, i64 1318, !36, i64 1320, !35, i64 1336, !35, i64 1340, !58, i64 1344, !36, i64 1408, !36, i64 1409, !36, i64 1416}
!193 = distinct !{!193, !76, !77}
