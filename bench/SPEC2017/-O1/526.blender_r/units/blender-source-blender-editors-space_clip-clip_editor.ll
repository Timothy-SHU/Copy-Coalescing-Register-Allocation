; ModuleID = 'blender/source/blender/editors/space_clip/clip_editor.c'
source_filename = "blender/source/blender/editors/space_clip/clip_editor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.SpaceClip = type { ptr, ptr, %struct.ListBase, i32, float, float, float, float, float, %struct.MovieClipUser, ptr, %struct.MovieClipScopes, i32, i16, i16, i32, [2 x float], float, float, i32, [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i32, i32, [2 x float], %struct.MaskSpaceInfo }
%struct.MovieClipUser = type { i32, i16, i16 }
%struct.MovieClipScopes = type { i16, i16, i32, i32, i32, %struct.MovieTrackingMarker, ptr, ptr, [2 x float], i16, i16, i32, ptr, ptr, [2 x float] }
%struct.MovieTrackingMarker = type { [2 x float], [4 x [2 x float]], [2 x float], [2 x float], i32, i32 }
%struct.MaskSpaceInfo = type { ptr, i8, i8, i8, [5 x i8] }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.DDSData = type { i32, i32, ptr, i32 }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
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
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.wmWindowManager = type { %struct.ID, ptr, ptr, %struct.ListBase, i32, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ReportList, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, %struct.ListBase, ptr, i8, [7 x i8] }
%struct.ReportList = type { %struct.ListBase, i32, i32, i32, i32, ptr }
%struct.wmWindow = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, ptr, ptr, ptr, i32, i32, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.bScreen = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.MovieClip = type { %struct.ID, ptr, [1024 x i8], i32, i32, [2 x i32], float, float, ptr, ptr, ptr, %struct.MovieTracking, ptr, %struct.MovieClipProxy, i32, i32, i32, i32, %struct.ColorManagedColorspaceSettings }
%struct.MovieTracking = type { %struct.MovieTrackingSettings, %struct.MovieTrackingCamera, %struct.ListBase, %struct.ListBase, %struct.MovieTrackingReconstruction, %struct.MovieTrackingStabilization, ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.MovieTrackingDopesheet }
%struct.MovieTrackingSettings = type { i32, i16, i16, float, i16, i16, i16, i16, i16, i16, float, i16, i16, i32, i32, i32, i16, i16, float, i32, i32, float, float, i32 }
%struct.MovieTrackingCamera = type { ptr, i16, i16, float, float, float, i16, i16, [2 x float], float, float, float, float, float }
%struct.MovieTrackingReconstruction = type { i32, float, i32, i32, ptr }
%struct.MovieTrackingStabilization = type { i32, i32, i32, float, ptr, float, float, float, i32, i32, float }
%struct.MovieTrackingDopesheet = type { i32, i16, i16, %struct.ListBase, %struct.ListBase, i32, i32 }
%struct.MovieClipProxy = type { [768 x i8], i16, i16, i16, i16 }
%struct.MovieTrackingTrack = type { ptr, ptr, [64 x i8], [2 x float], [2 x float], [2 x float], [2 x float], [2 x float], i32, i32, ptr, [3 x float], float, i32, i32, i32, [3 x float], i16, i16, i16, i16, i32, float, ptr, float, float }
%struct.SpaceLink = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16] }
%struct.PrefetchJob = type { ptr, i32, i32, i32, i16, i16 }
%struct.PrefetchQueue = type { i32, i32, i32, i32, i16, i16, i8, i32, ptr, ptr, ptr }

@.str = private unnamed_addr constant [12 x i8] c"Prefetching\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"prefetch job\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"prefetch frame\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"movieclip prefetch memory file\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ED_space_clip_poll(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.SpaceClip, ptr %2, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %4, %1
  br label %9

9:                                                ; preds = %4, %8
  %10 = phi i32 [ 0, %8 ], [ 1, %4 ]
  ret i32 %10
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @CTX_wm_space_clip(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @ED_space_clip_view_clip_poll(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.SpaceClip, ptr %2, i64 0, i32 14
  %6 = load i16, ptr %5, align 2, !tbaa !47
  %7 = icmp eq i16 %6, 0
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %4
  %10 = phi i32 [ %8, %4 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ED_space_clip_tracking_poll(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.SpaceClip, ptr %2, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.SpaceClip, ptr %2, i64 0, i32 13
  %10 = load i16, ptr %9, align 4, !tbaa !48
  %11 = icmp eq i16 %10, 0
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %1, %4, %8
  %14 = phi i32 [ %12, %8 ], [ 0, %4 ], [ 0, %1 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @ED_space_clip_check_show_trackedit(ptr noundef readonly %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 13
  %5 = load i16, ptr %4, align 4, !tbaa !48
  %6 = icmp eq i16 %5, 0
  %7 = zext i1 %6 to i8
  br label %8

8:                                                ; preds = %1, %3
  %9 = phi i8 [ %7, %3 ], [ 0, %1 ]
  ret i8 %9
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ED_space_clip_maskedit_poll(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.SpaceClip, ptr %2, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.SpaceClip, ptr %2, i64 0, i32 13
  %10 = load i16, ptr %9, align 4, !tbaa !48
  %11 = icmp eq i16 %10, 3
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %1, %4, %8
  %14 = phi i32 [ %12, %8 ], [ 0, %4 ], [ 0, %1 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @ED_space_clip_check_show_maskedit(ptr noundef readonly %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 13
  %5 = load i16, ptr %4, align 4, !tbaa !48
  %6 = icmp eq i16 %5, 3
  %7 = zext i1 %6 to i8
  br label %8

8:                                                ; preds = %1, %3
  %9 = phi i8 [ %7, %3 ], [ 0, %1 ]
  ret i8 %9
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ED_space_clip_maskedit_mask_poll(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %23, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.SpaceClip, ptr %2, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %23, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.SpaceClip, ptr %2, i64 0, i32 13
  %10 = load i16, ptr %9, align 4, !tbaa !48
  %11 = icmp eq i16 %10, 3
  br i1 %11, label %12, label %23

12:                                               ; preds = %8
  %13 = tail call ptr @CTX_data_edit_movieclip(ptr noundef %0) #8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %12
  %16 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #8
  %17 = getelementptr inbounds %struct.SpaceClip, ptr %16, i64 0, i32 28
  %18 = load ptr, ptr %17, align 8, !tbaa !49
  %19 = icmp ne ptr %18, null
  %20 = zext i1 %19 to i32
  br label %21

21:                                               ; preds = %12, %15
  %22 = phi i32 [ %20, %15 ], [ undef, %12 ]
  br i1 %14, label %23, label %24

23:                                               ; preds = %4, %1, %21, %8
  br label %24

24:                                               ; preds = %21, %23
  %25 = phi i32 [ %22, %21 ], [ 0, %23 ]
  ret i32 %25
}

declare ptr @CTX_data_edit_movieclip(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ED_space_clip_get_size(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 9
  tail call void @BKE_movieclip_get_size(ptr noundef nonnull %5, ptr noundef nonnull %8, ptr noundef %1, ptr noundef %2) #8
  br label %10

9:                                                ; preds = %3
  store i32 256, ptr %2, align 4, !tbaa !50
  store i32 256, ptr %1, align 4, !tbaa !50
  br label %10

10:                                               ; preds = %9, %7
  ret void
}

declare void @BKE_movieclip_get_size(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ED_space_clip_get_size_fl(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca [2 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  %4 = getelementptr inbounds [2 x i32], ptr %3, i64 0, i64 1
  %5 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 9
  call void @BKE_movieclip_get_size(ptr noundef nonnull %6, ptr noundef nonnull %9, ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  br label %11

10:                                               ; preds = %2
  store i32 256, ptr %4, align 4, !tbaa !50
  store i32 256, ptr %3, align 4, !tbaa !50
  br label %11

11:                                               ; preds = %8, %10
  %12 = load i32, ptr %3, align 4, !tbaa !50
  %13 = sitofp i32 %12 to float
  store float %13, ptr %1, align 4, !tbaa !51
  %14 = load i32, ptr %4, align 4, !tbaa !50
  %15 = sitofp i32 %14 to float
  %16 = getelementptr inbounds float, ptr %1, i64 1
  store float %15, ptr %16, align 4, !tbaa !51
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_space_clip_get_zoom(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  %7 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 9
  call void @BKE_movieclip_get_size(ptr noundef nonnull %8, ptr noundef nonnull %11, ptr noundef nonnull %5, ptr noundef nonnull %6) #8
  br label %13

12:                                               ; preds = %4
  store i32 256, ptr %6, align 4, !tbaa !50
  store i32 256, ptr %5, align 4, !tbaa !50
  br label %13

13:                                               ; preds = %10, %12
  %14 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %15 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !52
  %17 = load i32, ptr %14, align 4, !tbaa !54
  %18 = add i32 %16, 1
  %19 = sub i32 %18, %17
  %20 = sitofp i32 %19 to float
  %21 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1
  %22 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 1
  %23 = load float, ptr %22, align 4, !tbaa !55
  %24 = load float, ptr %21, align 4, !tbaa !57
  %25 = fsub float %23, %24
  %26 = load i32, ptr %5, align 4, !tbaa !50
  %27 = sitofp i32 %26 to float
  %28 = fmul float %25, %27
  %29 = fdiv float %20, %28
  store float %29, ptr %2, align 4, !tbaa !51
  %30 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 3
  %31 = load i32, ptr %30, align 4, !tbaa !58
  %32 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 2
  %33 = load i32, ptr %32, align 4, !tbaa !59
  %34 = add i32 %31, 1
  %35 = sub i32 %34, %33
  %36 = sitofp i32 %35 to float
  %37 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 3
  %38 = load float, ptr %37, align 4, !tbaa !60
  %39 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 2
  %40 = load float, ptr %39, align 4, !tbaa !61
  %41 = fsub float %38, %40
  %42 = load i32, ptr %6, align 4, !tbaa !50
  %43 = sitofp i32 %42 to float
  %44 = fmul float %41, %43
  %45 = fdiv float %36, %44
  store float %45, ptr %3, align 4, !tbaa !51
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_space_clip_get_aspect(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @BKE_movieclip_get_aspect(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2) #8
  br label %9

8:                                                ; preds = %3
  store float 1.000000e+00, ptr %2, align 4, !tbaa !51
  store float 1.000000e+00, ptr %1, align 4, !tbaa !51
  br label %9

9:                                                ; preds = %8, %7
  %10 = load float, ptr %1, align 4, !tbaa !51
  %11 = load float, ptr %2, align 4, !tbaa !51
  %12 = fcmp olt float %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = fdiv float %11, %10
  store float %14, ptr %2, align 4, !tbaa !51
  br label %17

15:                                               ; preds = %9
  %16 = fdiv float %10, %11
  store float %16, ptr %1, align 4, !tbaa !51
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi ptr [ %2, %15 ], [ %1, %13 ]
  store float 1.000000e+00, ptr %18, align 4, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @ED_space_clip_get_clip(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  ret ptr %3
}

declare void @BKE_movieclip_get_aspect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ED_space_clip_get_aspect_dimension_aware(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  %6 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  store float 1.000000e+00, ptr %1, align 4, !tbaa !51
  br label %36

10:                                               ; preds = %3
  tail call void @BKE_movieclip_get_aspect(ptr noundef nonnull %7, ptr noundef %1, ptr noundef %2) #8
  %11 = load float, ptr %1, align 4, !tbaa !51
  %12 = load float, ptr %2, align 4, !tbaa !51
  %13 = fcmp olt float %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = fdiv float %12, %11
  store float %15, ptr %2, align 4, !tbaa !51
  br label %18

16:                                               ; preds = %10
  %17 = fdiv float %11, %12
  store float %17, ptr %1, align 4, !tbaa !51
  br label %18

18:                                               ; preds = %14, %16
  %19 = phi ptr [ %1, %14 ], [ %2, %16 ]
  store float 1.000000e+00, ptr %19, align 4, !tbaa !51
  %20 = load ptr, ptr %6, align 8, !tbaa !34
  %21 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 9
  call void @BKE_movieclip_get_size(ptr noundef %20, ptr noundef nonnull %21, ptr noundef nonnull %4, ptr noundef nonnull %5) #8
  %22 = load i32, ptr %4, align 4, !tbaa !50
  %23 = sitofp i32 %22 to float
  %24 = load float, ptr %1, align 4, !tbaa !51
  %25 = fmul float %24, %23
  store float %25, ptr %1, align 4, !tbaa !51
  %26 = load i32, ptr %5, align 4, !tbaa !50
  %27 = sitofp i32 %26 to float
  %28 = load float, ptr %2, align 4, !tbaa !51
  %29 = fmul float %28, %27
  store float %29, ptr %2, align 4, !tbaa !51
  %30 = load float, ptr %1, align 4, !tbaa !51
  %31 = fcmp olt float %30, %29
  br i1 %31, label %32, label %34

32:                                               ; preds = %18
  %33 = fdiv float %29, %30
  store float %33, ptr %2, align 4, !tbaa !51
  br label %36

34:                                               ; preds = %18
  %35 = fdiv float %30, %29
  store float %35, ptr %1, align 4, !tbaa !51
  br label %36

36:                                               ; preds = %32, %34, %9
  %37 = phi ptr [ %1, %32 ], [ %2, %34 ], [ %2, %9 ]
  store float 1.000000e+00, ptr %37, align 4, !tbaa !51
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ED_space_clip_get_clip_frame_number(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 9
  %5 = load i32, ptr %4, align 8, !tbaa !62
  %6 = sitofp i32 %5 to float
  %7 = tail call float @BKE_movieclip_remap_scene_to_clip_frame(ptr noundef %3, float noundef %6) #8
  %8 = fptosi float %7 to i32
  ret i32 %8
}

declare float @BKE_movieclip_remap_scene_to_clip_frame(ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @ED_space_clip_get_buffer(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 9
  %7 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 22
  %8 = load i32, ptr %7, align 8, !tbaa !63
  %9 = tail call ptr @BKE_movieclip_get_postprocessed_ibuf(ptr noundef nonnull %3, ptr noundef nonnull %6, i32 noundef %8) #8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !64
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 9
  %17 = load ptr, ptr %16, align 8, !tbaa !67
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  tail call void @IMB_freeImBuf(ptr noundef nonnull %9) #8
  br label %20

20:                                               ; preds = %5, %19, %15, %11, %1
  %21 = phi ptr [ null, %1 ], [ %9, %11 ], [ %9, %15 ], [ null, %19 ], [ null, %5 ]
  ret ptr %21
}

declare ptr @BKE_movieclip_get_postprocessed_ibuf(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @ED_space_clip_get_stable_buffer(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %23, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 9
  %10 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 22
  %11 = load i32, ptr %10, align 8, !tbaa !63
  %12 = tail call ptr @BKE_movieclip_get_stable_ibuf(ptr noundef nonnull %6, ptr noundef nonnull %9, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %11) #8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %23, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ImBuf, ptr %12, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !64
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.ImBuf, ptr %12, i64 0, i32 9
  %20 = load ptr, ptr %19, align 8, !tbaa !67
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  tail call void @IMB_freeImBuf(ptr noundef nonnull %12) #8
  br label %23

23:                                               ; preds = %8, %22, %18, %14, %4
  %24 = phi ptr [ null, %4 ], [ %12, %14 ], [ %12, %18 ], [ null, %22 ], [ null, %8 ]
  ret ptr %24
}

declare ptr @BKE_movieclip_get_stable_ibuf(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @ED_space_clip_color_sample(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca [2 x float], align 4
  %7 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 45
  %8 = tail call ptr @IMB_colormanagement_display_get_named(ptr noundef nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  %9 = getelementptr inbounds %struct.SpaceClip, ptr %1, i64 0, i32 10
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = icmp eq ptr %10, null
  br i1 %11, label %27, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.SpaceClip, ptr %1, i64 0, i32 9
  %14 = getelementptr inbounds %struct.SpaceClip, ptr %1, i64 0, i32 22
  %15 = load i32, ptr %14, align 8, !tbaa !63
  %16 = tail call ptr @BKE_movieclip_get_postprocessed_ibuf(ptr noundef nonnull %10, ptr noundef nonnull %13, i32 noundef %15) #8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %27, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.ImBuf, ptr %16, i64 0, i32 8
  %20 = load ptr, ptr %19, align 8, !tbaa !64
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.ImBuf, ptr %16, i64 0, i32 9
  %24 = load ptr, ptr %23, align 8, !tbaa !67
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  tail call void @IMB_freeImBuf(ptr noundef nonnull %16) #8
  br label %27

27:                                               ; preds = %5, %12, %18, %22, %26
  %28 = phi ptr [ null, %5 ], [ %16, %18 ], [ %16, %22 ], [ null, %26 ], [ null, %12 ]
  %29 = icmp eq ptr %28, null
  br i1 %29, label %102, label %30

30:                                               ; preds = %27
  %31 = load i32, ptr %3, align 4, !tbaa !50
  %32 = sitofp i32 %31 to float
  %33 = getelementptr inbounds i32, ptr %3, i64 1
  %34 = load i32, ptr %33, align 4, !tbaa !50
  %35 = sitofp i32 %34 to float
  %36 = getelementptr inbounds float, ptr %6, i64 1
  call void @ED_clip_point_stable_pos(ptr noundef %1, ptr noundef %2, float noundef %32, float noundef %35, ptr noundef nonnull %6, ptr noundef nonnull %36)
  %37 = load float, ptr %6, align 4, !tbaa !51
  %38 = load float, ptr %36, align 4, !tbaa !51
  %39 = fcmp oge float %37, 0.000000e+00
  %40 = fcmp oge float %38, 0.000000e+00
  %41 = select i1 %39, i1 %40, i1 false
  %42 = fcmp olt float %37, 1.000000e+00
  %43 = and i1 %42, %41
  %44 = fcmp olt float %38, 1.000000e+00
  %45 = select i1 %43, i1 %44, i1 false
  br i1 %45, label %46, label %97

46:                                               ; preds = %30
  %47 = getelementptr inbounds %struct.ImBuf, ptr %28, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !68
  %49 = sitofp i32 %48 to float
  %50 = fmul float %37, %49
  %51 = fptosi float %50 to i32
  %52 = getelementptr inbounds %struct.ImBuf, ptr %28, i64 0, i32 3
  %53 = load i32, ptr %52, align 4, !tbaa !69
  %54 = sitofp i32 %53 to float
  %55 = fmul float %38, %54
  %56 = fptosi float %55 to i32
  %57 = icmp slt i32 %51, 0
  %58 = icmp sgt i32 %48, %51
  %59 = add nsw i32 %48, -1
  %60 = select i1 %58, i32 %51, i32 %59
  %61 = select i1 %57, i32 0, i32 %60
  %62 = icmp slt i32 %56, 0
  %63 = icmp sgt i32 %53, %56
  %64 = add nsw i32 %53, -1
  %65 = select i1 %63, i32 %56, i32 %64
  %66 = select i1 %62, i32 0, i32 %65
  %67 = getelementptr inbounds %struct.ImBuf, ptr %28, i64 0, i32 9
  %68 = load ptr, ptr %67, align 8, !tbaa !67
  %69 = icmp eq ptr %68, null
  br i1 %69, label %85, label %70

70:                                               ; preds = %46
  %71 = getelementptr inbounds %struct.ImBuf, ptr %28, i64 0, i32 5
  %72 = load i32, ptr %71, align 4, !tbaa !70
  %73 = mul nsw i32 %66, %48
  %74 = add nsw i32 %73, %61
  %75 = mul nsw i32 %72, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds float, ptr %68, i64 %76
  %78 = load float, ptr %77, align 4, !tbaa !51
  store float %78, ptr %4, align 4, !tbaa !51
  %79 = getelementptr inbounds float, ptr %77, i64 1
  %80 = load float, ptr %79, align 4, !tbaa !51
  %81 = getelementptr inbounds float, ptr %4, i64 1
  store float %80, ptr %81, align 4, !tbaa !51
  %82 = getelementptr inbounds float, ptr %77, i64 2
  %83 = load float, ptr %82, align 4, !tbaa !51
  %84 = getelementptr inbounds float, ptr %4, i64 2
  store float %83, ptr %84, align 4, !tbaa !51
  br label %97

85:                                               ; preds = %46
  %86 = getelementptr inbounds %struct.ImBuf, ptr %28, i64 0, i32 8
  %87 = load ptr, ptr %86, align 8, !tbaa !64
  %88 = icmp eq ptr %87, null
  br i1 %88, label %97, label %89

89:                                               ; preds = %85
  %90 = mul nsw i32 %66, %48
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, ptr %87, i64 %91
  %93 = sext i32 %61 to i64
  %94 = getelementptr inbounds i32, ptr %92, i64 %93
  tail call void @rgb_uchar_to_float(ptr noundef %4, ptr noundef nonnull %94) #8
  %95 = getelementptr inbounds %struct.ImBuf, ptr %28, i64 0, i32 34
  %96 = load ptr, ptr %95, align 8, !tbaa !71
  tail call void @IMB_colormanagement_colorspace_to_scene_linear_v3(ptr noundef %4, ptr noundef %96) #8
  br label %97

97:                                               ; preds = %70, %89, %85, %30
  %98 = phi i1 [ true, %30 ], [ false, %70 ], [ false, %89 ], [ true, %85 ]
  %99 = phi i8 [ 0, %30 ], [ 1, %70 ], [ 1, %89 ], [ 0, %85 ]
  br i1 %98, label %101, label %100

100:                                              ; preds = %97
  tail call void @IMB_colormanagement_scene_linear_to_display_v3(ptr noundef %4, ptr noundef %8) #8
  br label %101

101:                                              ; preds = %100, %97
  tail call void @IMB_freeImBuf(ptr noundef nonnull %28) #8
  br label %102

102:                                              ; preds = %27, %101
  %103 = phi i8 [ %99, %101 ], [ 0, %27 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  ret i8 %103
}

declare ptr @IMB_colormanagement_display_get_named(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ED_clip_mouse_pos(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = load i32, ptr %2, align 4, !tbaa !50
  %6 = sitofp i32 %5 to float
  %7 = getelementptr inbounds i32, ptr %2, i64 1
  %8 = load i32, ptr %7, align 4, !tbaa !50
  %9 = sitofp i32 %8 to float
  %10 = getelementptr inbounds float, ptr %3, i64 1
  tail call void @ED_clip_point_stable_pos(ptr noundef %0, ptr noundef %1, float noundef %6, float noundef %9, ptr noundef %3, ptr noundef nonnull %10)
  ret void
}

declare void @rgb_uchar_to_float(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @IMB_colormanagement_colorspace_to_scene_linear_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @IMB_colormanagement_scene_linear_to_display_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ED_clip_update_frame(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 40
  %4 = load ptr, ptr %3, align 8, !tbaa !72
  %5 = icmp eq ptr %4, null
  br i1 %5, label %37, label %9

6:                                                ; preds = %14, %9
  %7 = load ptr, ptr %10, align 8, !tbaa !72
  %8 = icmp eq ptr %7, null
  br i1 %8, label %37, label %9, !llvm.loop !73

9:                                                ; preds = %2, %6
  %10 = phi ptr [ %7, %6 ], [ %4, %2 ]
  %11 = getelementptr inbounds %struct.wmWindowManager, ptr %10, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !72
  %13 = icmp eq ptr %12, null
  br i1 %13, label %6, label %17

14:                                               ; preds = %34, %17
  %15 = load ptr, ptr %18, align 8, !tbaa !72
  %16 = icmp eq ptr %15, null
  br i1 %16, label %6, label %17, !llvm.loop !76

17:                                               ; preds = %9, %14
  %18 = phi ptr [ %15, %14 ], [ %12, %9 ]
  %19 = getelementptr inbounds %struct.wmWindow, ptr %18, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !77
  %21 = getelementptr inbounds %struct.bScreen, ptr %20, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !72
  %23 = icmp eq ptr %22, null
  br i1 %23, label %14, label %24

24:                                               ; preds = %17, %34
  %25 = phi ptr [ %35, %34 ], [ %22, %17 ]
  %26 = getelementptr inbounds %struct.ScrArea, ptr %25, i64 0, i32 8
  %27 = load i8, ptr %26, align 8, !tbaa !79
  %28 = icmp eq i8 %27, 20
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.ScrArea, ptr %25, i64 0, i32 19
  %31 = load ptr, ptr %30, align 8, !tbaa !81
  %32 = getelementptr inbounds %struct.SpaceClip, ptr %31, i64 0, i32 11
  store i16 0, ptr %32, align 8, !tbaa !82
  %33 = getelementptr inbounds %struct.SpaceClip, ptr %31, i64 0, i32 9
  tail call void @BKE_movieclip_user_set_frame(ptr noundef nonnull %33, i32 noundef %1) #8
  br label %34

34:                                               ; preds = %24, %29
  %35 = load ptr, ptr %25, align 8, !tbaa !72
  %36 = icmp eq ptr %35, null
  br i1 %36, label %14, label %24, !llvm.loop !83

37:                                               ; preds = %6, %2
  ret void
}

declare void @BKE_movieclip_user_set_frame(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @ED_clip_view_selection(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x float], align 4
  %10 = alloca [2 x float], align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #8
  %14 = getelementptr inbounds %struct.SpaceClip, ptr %13, i64 0, i32 10
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.SpaceClip, ptr %13, i64 0, i32 9
  call void @BKE_movieclip_get_size(ptr noundef nonnull %15, ptr noundef nonnull %18, ptr noundef nonnull %7, ptr noundef nonnull %8) #8
  br label %20

19:                                               ; preds = %3
  store i32 256, ptr %8, align 4, !tbaa !50
  store i32 256, ptr %7, align 4, !tbaa !50
  br label %20

20:                                               ; preds = %17, %19
  %21 = load i32, ptr %7, align 4, !tbaa !50
  %22 = icmp eq i32 %21, 0
  %23 = load i32, ptr %8, align 4
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %22, i1 true, i1 %24
  br i1 %25, label %193, label %26

26:                                               ; preds = %20
  %27 = load ptr, ptr %14, align 8, !tbaa !34
  %28 = icmp eq ptr %27, null
  br i1 %28, label %193, label %29

29:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  %30 = getelementptr inbounds %struct.MovieClip, ptr %27, i64 0, i32 11
  %31 = call ptr @BKE_tracking_get_active_tracks(ptr noundef nonnull %30) #8
  %32 = load ptr, ptr %14, align 8, !tbaa !34
  %33 = getelementptr inbounds %struct.SpaceClip, ptr %13, i64 0, i32 9
  %34 = load i32, ptr %33, align 8, !tbaa !62
  %35 = sitofp i32 %34 to float
  %36 = call float @BKE_movieclip_remap_scene_to_clip_frame(ptr noundef %32, float noundef %35) #8
  %37 = fptosi float %36 to i32
  %38 = getelementptr inbounds float, ptr %9, i64 1
  store float 0x46293E5940000000, ptr %38, align 4, !tbaa !51
  store float 0x46293E5940000000, ptr %9, align 4, !tbaa !51
  %39 = getelementptr inbounds float, ptr %10, i64 1
  store float 0xC6293E5940000000, ptr %39, align 4, !tbaa !51
  store float 0xC6293E5940000000, ptr %10, align 4, !tbaa !51
  %40 = load ptr, ptr %14, align 8, !tbaa !34
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %29
  call void @BKE_movieclip_get_size(ptr noundef nonnull %40, ptr noundef nonnull %33, ptr noundef nonnull %4, ptr noundef nonnull %5) #8
  br label %44

43:                                               ; preds = %29
  store i32 256, ptr %5, align 4, !tbaa !50
  store i32 256, ptr %4, align 4, !tbaa !50
  br label %44

44:                                               ; preds = %43, %42
  %45 = load ptr, ptr %31, align 8, !tbaa !72
  %46 = icmp eq ptr %45, null
  br i1 %46, label %192, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.SpaceClip, ptr %13, i64 0, i32 12
  %49 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %50 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %51 = getelementptr inbounds %struct.SpaceClip, ptr %13, i64 0, i32 9, i32 2
  %52 = getelementptr inbounds %struct.SpaceClip, ptr %13, i64 0, i32 20
  br label %53

53:                                               ; preds = %47, %106
  %54 = phi ptr [ %45, %47 ], [ %108, %106 ]
  %55 = phi i8 [ 0, %47 ], [ %107, %106 ]
  %56 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %54, i64 0, i32 13
  %57 = load i32, ptr %56, align 8, !tbaa !84
  %58 = and i32 %57, 32
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %106

60:                                               ; preds = %53
  %61 = and i32 %57, 1
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %80

63:                                               ; preds = %60
  %64 = load i32, ptr %48, align 8, !tbaa !86
  %65 = and i32 %64, 1
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %54, i64 0, i32 14
  %69 = load i32, ptr %68, align 4, !tbaa !87
  %70 = and i32 %69, 1
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %67, %63
  %73 = and i32 %64, 2
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %106, label %75

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %54, i64 0, i32 15
  %77 = load i32, ptr %76, align 8, !tbaa !88
  %78 = and i32 %77, 1
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %106, label %80

80:                                               ; preds = %75, %67, %60
  %81 = call ptr @BKE_tracking_marker_get(ptr noundef nonnull %54, i32 noundef %37) #8
  %82 = icmp eq ptr %81, null
  br i1 %82, label %106, label %83

83:                                               ; preds = %80
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #8
  %84 = load float, ptr %81, align 4, !tbaa !51
  %85 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %54, i64 0, i32 7
  %86 = load float, ptr %85, align 8, !tbaa !51
  %87 = fadd float %84, %86
  store float %87, ptr %6, align 4, !tbaa !51
  %88 = getelementptr inbounds [2 x float], ptr %81, i64 0, i64 1
  %89 = load float, ptr %88, align 4, !tbaa !51
  %90 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %54, i64 0, i32 7, i64 1
  %91 = load float, ptr %90, align 4, !tbaa !51
  %92 = fadd float %89, %91
  store float %92, ptr %49, align 4, !tbaa !51
  store float 0.000000e+00, ptr %50, align 4, !tbaa !51
  %93 = load i16, ptr %51, align 2, !tbaa !89
  %94 = and i16 %93, 1
  %95 = icmp eq i16 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %83
  call void @ED_clip_point_undistorted_pos(ptr noundef %13, ptr noundef nonnull %6, ptr noundef nonnull %6)
  br label %97

97:                                               ; preds = %96, %83
  %98 = load i32, ptr %4, align 4, !tbaa !50
  %99 = sitofp i32 %98 to float
  %100 = load float, ptr %6, align 4, !tbaa !51
  %101 = fmul float %100, %99
  store float %101, ptr %6, align 4, !tbaa !51
  %102 = load i32, ptr %5, align 4, !tbaa !50
  %103 = sitofp i32 %102 to float
  %104 = load float, ptr %49, align 4, !tbaa !51
  %105 = fmul float %104, %103
  store float %105, ptr %49, align 4, !tbaa !51
  call void @mul_v3_m4v3(ptr noundef nonnull %6, ptr noundef nonnull %52, ptr noundef nonnull %6) #8
  call void @minmax_v2v2_v2(ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #8
  br label %106

106:                                              ; preds = %97, %80, %75, %72, %53
  %107 = phi i8 [ %55, %75 ], [ %55, %72 ], [ %55, %53 ], [ 1, %97 ], [ %55, %80 ]
  %108 = load ptr, ptr %54, align 8, !tbaa !72
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %53, !llvm.loop !90

110:                                              ; preds = %106
  %111 = icmp eq i8 %107, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  br i1 %111, label %193, label %112

112:                                              ; preds = %110
  %113 = load float, ptr %10, align 4, !tbaa !51
  %114 = load float, ptr %9, align 4, !tbaa !51
  %115 = fadd float %113, %114
  %116 = load i32, ptr %7, align 4, !tbaa !50
  %117 = shl nsw i32 %116, 1
  %118 = sitofp i32 %117 to float
  %119 = fdiv float %115, %118
  %120 = load float, ptr %39, align 4, !tbaa !51
  %121 = load float, ptr %38, align 4, !tbaa !51
  %122 = fadd float %120, %121
  %123 = load i32, ptr %8, align 4, !tbaa !50
  %124 = shl nsw i32 %123, 1
  %125 = sitofp i32 %124 to float
  %126 = fdiv float %122, %125
  call void @clip_view_center_to_point(ptr noundef %13, float noundef %119, float noundef %126) #8
  %127 = load float, ptr %10, align 4, !tbaa !51
  %128 = load float, ptr %9, align 4, !tbaa !51
  %129 = fsub float %127, %128
  %130 = fptosi float %129 to i32
  %131 = load float, ptr %39, align 4, !tbaa !51
  %132 = load float, ptr %38, align 4, !tbaa !51
  %133 = fsub float %131, %132
  %134 = fptosi float %133 to i32
  %135 = icmp sgt i32 %130, 0
  %136 = icmp sgt i32 %134, 0
  %137 = select i1 %135, i1 %136, i1 false
  br i1 %137, label %138, label %193

138:                                              ; preds = %112
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #8
  %139 = load ptr, ptr %14, align 8, !tbaa !34
  %140 = icmp eq ptr %139, null
  br i1 %140, label %142, label %141

141:                                              ; preds = %138
  call void @BKE_movieclip_get_aspect(ptr noundef nonnull %139, ptr noundef nonnull %11, ptr noundef nonnull %12) #8
  br label %143

142:                                              ; preds = %138
  store float 1.000000e+00, ptr %12, align 4, !tbaa !51
  store float 1.000000e+00, ptr %11, align 4, !tbaa !51
  br label %143

143:                                              ; preds = %142, %141
  %144 = load float, ptr %11, align 4, !tbaa !51
  %145 = load float, ptr %12, align 4, !tbaa !51
  %146 = fcmp olt float %144, %145
  br i1 %146, label %147, label %149

147:                                              ; preds = %143
  %148 = fdiv float %145, %144
  store float %148, ptr %12, align 4, !tbaa !51
  store float 1.000000e+00, ptr %11, align 4, !tbaa !51
  br label %151

149:                                              ; preds = %143
  %150 = fdiv float %144, %145
  store float %150, ptr %11, align 4, !tbaa !51
  store float 1.000000e+00, ptr %12, align 4, !tbaa !51
  br label %151

151:                                              ; preds = %147, %149
  %152 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %153 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 1
  %154 = load i32, ptr %153, align 4, !tbaa !52
  %155 = load i32, ptr %152, align 4, !tbaa !54
  %156 = add i32 %154, 1
  %157 = sub i32 %156, %155
  %158 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 3
  %159 = load i32, ptr %158, align 4, !tbaa !58
  %160 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 2
  %161 = load i32, ptr %160, align 4, !tbaa !59
  %162 = add i32 %159, 1
  %163 = sub i32 %162, %161
  %164 = sitofp i32 %157 to float
  %165 = sitofp i32 %130 to float
  %166 = fdiv float %164, %165
  %167 = load float, ptr %11, align 4, !tbaa !51
  %168 = fdiv float %166, %167
  %169 = sitofp i32 %163 to float
  %170 = sitofp i32 %134 to float
  %171 = fdiv float %169, %170
  %172 = load float, ptr %12, align 4, !tbaa !51
  %173 = fdiv float %171, %172
  %174 = fcmp olt float %168, %173
  %175 = select i1 %174, float %168, float %173
  %176 = fdiv float 1.000000e+00, %175
  %177 = fpext float %176 to double
  %178 = call double @log(double noundef %177) #8
  %179 = fdiv double %178, 0x3FE62E42FEFA39EF
  %180 = call double @llvm.ceil.f64(double %179)
  %181 = call double @exp2(double %180) #8
  %182 = fptrunc double %181 to float
  %183 = fdiv float 1.000000e+00, %182
  %184 = icmp eq i8 %2, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %151
  %186 = getelementptr inbounds %struct.SpaceClip, ptr %13, i64 0, i32 8
  %187 = load float, ptr %186, align 4, !tbaa !91
  %188 = fcmp ogt float %187, %183
  br i1 %188, label %189, label %191

189:                                              ; preds = %185, %151
  %190 = getelementptr inbounds %struct.SpaceClip, ptr %13, i64 0, i32 8
  store float %183, ptr %190, align 4, !tbaa !91
  br label %191

191:                                              ; preds = %189, %185
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #8
  br label %193

192:                                              ; preds = %44
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  br label %193

193:                                              ; preds = %192, %112, %191, %110, %20, %26
  %194 = phi i8 [ 0, %26 ], [ 0, %20 ], [ 0, %110 ], [ 1, %191 ], [ 1, %112 ], [ 0, %192 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  ret i8 %194
}

declare void @clip_view_center_to_point(ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ED_clip_point_undistorted_pos(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load float, ptr %1, align 4, !tbaa !51
  store float %6, ptr %2, align 4, !tbaa !51
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !51
  %9 = getelementptr inbounds float, ptr %2, i64 1
  store float %8, ptr %9, align 4, !tbaa !51
  %10 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 9, i32 2
  %11 = load i16, ptr %10, align 2, !tbaa !89
  %12 = and i16 %11, 1
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %40, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 9
  %16 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 10
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  %18 = getelementptr inbounds %struct.MovieClip, ptr %17, i64 0, i32 11
  %19 = getelementptr inbounds %struct.MovieClip, ptr %17, i64 0, i32 11, i32 1, i32 4
  %20 = load float, ptr %19, align 8, !tbaa !92
  %21 = fdiv float 1.000000e+00, %20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  call void @BKE_movieclip_get_size(ptr noundef %17, ptr noundef nonnull %15, ptr noundef nonnull %4, ptr noundef nonnull %5) #8
  %22 = load i32, ptr %4, align 4, !tbaa !50
  %23 = sitofp i32 %22 to float
  %24 = load float, ptr %2, align 4, !tbaa !51
  %25 = fmul float %24, %23
  store float %25, ptr %2, align 4, !tbaa !51
  %26 = load i32, ptr %5, align 4, !tbaa !50
  %27 = sitofp i32 %26 to float
  %28 = fmul float %21, %27
  %29 = load float, ptr %9, align 4, !tbaa !51
  %30 = fmul float %29, %28
  store float %30, ptr %9, align 4, !tbaa !51
  call void @BKE_tracking_undistort_v2(ptr noundef nonnull %18, ptr noundef nonnull %2, ptr noundef nonnull %2) #8
  %31 = load i32, ptr %4, align 4, !tbaa !50
  %32 = sitofp i32 %31 to float
  %33 = load float, ptr %2, align 4, !tbaa !51
  %34 = fdiv float %33, %32
  store float %34, ptr %2, align 4, !tbaa !51
  %35 = load i32, ptr %5, align 4, !tbaa !50
  %36 = sitofp i32 %35 to float
  %37 = fmul float %21, %36
  %38 = load float, ptr %9, align 4, !tbaa !51
  %39 = fdiv float %38, %37
  store float %39, ptr %9, align 4, !tbaa !51
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  br label %40

40:                                               ; preds = %14, %3
  ret void
}

declare void @BKE_tracking_undistort_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ED_clip_point_stable_pos(ptr noundef %0, ptr noundef %1, float noundef %2, float noundef %3, ptr nocapture noundef %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca [4 x [4 x float]], align 16
  %15 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %14) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #8
  %16 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 10
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 9
  call void @BKE_movieclip_get_size(ptr noundef nonnull %17, ptr noundef nonnull %20, ptr noundef nonnull %7, ptr noundef nonnull %8) #8
  br label %22

21:                                               ; preds = %6
  store i32 256, ptr %8, align 4, !tbaa !50
  store i32 256, ptr %7, align 4, !tbaa !50
  br label %22

22:                                               ; preds = %19, %21
  %23 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %24 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 1
  %25 = load i32, ptr %24, align 4, !tbaa !52
  %26 = load i32, ptr %23, align 4, !tbaa !54
  %27 = add i32 %25, 1
  %28 = sub i32 %27, %26
  %29 = sitofp i32 %28 to float
  %30 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1
  %31 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 1
  %32 = load float, ptr %31, align 4, !tbaa !55
  %33 = load float, ptr %30, align 4, !tbaa !57
  %34 = fsub float %32, %33
  %35 = load i32, ptr %7, align 4, !tbaa !50
  %36 = sitofp i32 %35 to float
  %37 = fmul float %34, %36
  %38 = fdiv float %29, %37
  %39 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 3
  %40 = load i32, ptr %39, align 4, !tbaa !58
  %41 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 2
  %42 = load i32, ptr %41, align 4, !tbaa !59
  %43 = add i32 %40, 1
  %44 = sub i32 %43, %42
  %45 = sitofp i32 %44 to float
  %46 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 3
  %47 = load float, ptr %46, align 4, !tbaa !60
  %48 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 2
  %49 = load float, ptr %48, align 4, !tbaa !61
  %50 = fsub float %47, %49
  %51 = load i32, ptr %8, align 4, !tbaa !50
  %52 = sitofp i32 %51 to float
  %53 = fmul float %50, %52
  %54 = fdiv float %45, %53
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  %55 = load ptr, ptr %16, align 8, !tbaa !34
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %22
  %58 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 9
  call void @BKE_movieclip_get_size(ptr noundef nonnull %55, ptr noundef nonnull %58, ptr noundef nonnull %11, ptr noundef nonnull %12) #8
  br label %60

59:                                               ; preds = %22
  store i32 256, ptr %12, align 4, !tbaa !50
  store i32 256, ptr %11, align 4, !tbaa !50
  br label %60

60:                                               ; preds = %57, %59
  %61 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  call void @UI_view2d_view_to_region(ptr noundef nonnull %61, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull %9, ptr noundef nonnull %10) #8
  %62 = load i32, ptr %9, align 4, !tbaa !50
  %63 = sitofp i32 %62 to float
  %64 = fsub float %2, %63
  %65 = fdiv float %64, %38
  store float %65, ptr %13, align 4, !tbaa !51
  %66 = load i32, ptr %10, align 4, !tbaa !50
  %67 = sitofp i32 %66 to float
  %68 = fsub float %3, %67
  %69 = fdiv float %68, %54
  %70 = getelementptr inbounds [3 x float], ptr %13, i64 0, i64 1
  store float %69, ptr %70, align 4, !tbaa !51
  %71 = getelementptr inbounds [3 x float], ptr %13, i64 0, i64 2
  store float 0.000000e+00, ptr %71, align 4, !tbaa !51
  %72 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 20
  %73 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %14, ptr noundef nonnull %72) #8
  call void @mul_v3_m4v3(ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %13) #8
  %74 = load float, ptr %13, align 4, !tbaa !51
  %75 = load i32, ptr %11, align 4, !tbaa !50
  %76 = sitofp i32 %75 to float
  %77 = fdiv float %74, %76
  store float %77, ptr %4, align 4, !tbaa !51
  %78 = load float, ptr %70, align 4, !tbaa !51
  %79 = load i32, ptr %12, align 4, !tbaa !50
  %80 = sitofp i32 %79 to float
  %81 = fdiv float %78, %80
  store float %81, ptr %5, align 4, !tbaa !51
  %82 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 9, i32 2
  %83 = load i16, ptr %82, align 2, !tbaa !89
  %84 = and i16 %83, 1
  %85 = icmp eq i16 %84, 0
  br i1 %85, label %106, label %86

86:                                               ; preds = %60
  %87 = load ptr, ptr %16, align 8, !tbaa !34
  %88 = getelementptr inbounds %struct.MovieClip, ptr %87, i64 0, i32 11
  %89 = getelementptr inbounds %struct.MovieClip, ptr %87, i64 0, i32 11, i32 1, i32 4
  %90 = load float, ptr %89, align 8, !tbaa !103
  %91 = fdiv float 1.000000e+00, %90
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #8
  %92 = load float, ptr %4, align 4, !tbaa !51
  %93 = fmul float %92, %76
  store float %93, ptr %15, align 4, !tbaa !51
  %94 = getelementptr inbounds float, ptr %15, i64 1
  %95 = fmul float %81, %80
  %96 = fmul float %95, %91
  store float %96, ptr %94, align 4, !tbaa !51
  call void @BKE_tracking_distort_v2(ptr noundef nonnull %88, ptr noundef nonnull %15, ptr noundef nonnull %15) #8
  %97 = load float, ptr %15, align 4, !tbaa !51
  %98 = load i32, ptr %11, align 4, !tbaa !50
  %99 = sitofp i32 %98 to float
  %100 = fdiv float %97, %99
  store float %100, ptr %4, align 4, !tbaa !51
  %101 = load float, ptr %94, align 4, !tbaa !51
  %102 = load i32, ptr %12, align 4, !tbaa !50
  %103 = sitofp i32 %102 to float
  %104 = fmul float %91, %103
  %105 = fdiv float %101, %104
  store float %105, ptr %5, align 4, !tbaa !51
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #8
  br label %106

106:                                              ; preds = %86, %60
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #8
  ret void
}

declare void @UI_view2d_view_to_region(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_v3_m4v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_tracking_distort_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ED_clip_point_stable_pos__reverse(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #8
  %12 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  call void @UI_view2d_view_to_region(ptr noundef nonnull %12, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull %10, ptr noundef nonnull %11) #8
  %13 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 10
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 9
  call void @BKE_movieclip_get_size(ptr noundef nonnull %14, ptr noundef nonnull %17, ptr noundef nonnull %8, ptr noundef nonnull %9) #8
  br label %19

18:                                               ; preds = %4
  store i32 256, ptr %9, align 4, !tbaa !50
  store i32 256, ptr %8, align 4, !tbaa !50
  br label %19

19:                                               ; preds = %16, %18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  %20 = load ptr, ptr %13, align 8, !tbaa !34
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 9
  call void @BKE_movieclip_get_size(ptr noundef nonnull %20, ptr noundef nonnull %23, ptr noundef nonnull %5, ptr noundef nonnull %6) #8
  br label %25

24:                                               ; preds = %19
  store i32 256, ptr %6, align 4, !tbaa !50
  store i32 256, ptr %5, align 4, !tbaa !50
  br label %25

25:                                               ; preds = %22, %24
  %26 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %27 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa !52
  %29 = load i32, ptr %26, align 4, !tbaa !54
  %30 = add i32 %28, 1
  %31 = sub i32 %30, %29
  %32 = sitofp i32 %31 to float
  %33 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1
  %34 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 1
  %35 = load float, ptr %34, align 4, !tbaa !55
  %36 = load float, ptr %33, align 4, !tbaa !57
  %37 = fsub float %35, %36
  %38 = load i32, ptr %5, align 4, !tbaa !50
  %39 = sitofp i32 %38 to float
  %40 = fmul float %37, %39
  %41 = fdiv float %32, %40
  %42 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 3
  %43 = load i32, ptr %42, align 4, !tbaa !58
  %44 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 2
  %45 = load i32, ptr %44, align 4, !tbaa !59
  %46 = add i32 %43, 1
  %47 = sub i32 %46, %45
  %48 = sitofp i32 %47 to float
  %49 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 3
  %50 = load float, ptr %49, align 4, !tbaa !60
  %51 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 2
  %52 = load float, ptr %51, align 4, !tbaa !61
  %53 = fsub float %50, %52
  %54 = load i32, ptr %6, align 4, !tbaa !50
  %55 = sitofp i32 %54 to float
  %56 = fmul float %53, %55
  %57 = fdiv float %48, %56
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @ED_clip_point_undistorted_pos(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %7)
  %58 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  store float 0.000000e+00, ptr %58, align 4, !tbaa !51
  %59 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 20
  call void @mul_v3_m4v3(ptr noundef nonnull %7, ptr noundef nonnull %59, ptr noundef nonnull %7) #8
  %60 = load float, ptr %7, align 4, !tbaa !51
  %61 = load i32, ptr %8, align 4, !tbaa !50
  %62 = sitofp i32 %61 to float
  %63 = fmul float %60, %62
  %64 = load i32, ptr %10, align 4, !tbaa !50
  %65 = sitofp i32 %64 to float
  %66 = call float @llvm.fmuladd.f32(float %63, float %41, float %65)
  store float %66, ptr %3, align 4, !tbaa !51
  %67 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  %68 = load float, ptr %67, align 4, !tbaa !51
  %69 = load i32, ptr %9, align 4, !tbaa !50
  %70 = sitofp i32 %69 to float
  %71 = fmul float %68, %70
  %72 = load i32, ptr %11, align 4, !tbaa !50
  %73 = sitofp i32 %72 to float
  %74 = call float @llvm.fmuladd.f32(float %71, float %57, float %73)
  %75 = getelementptr inbounds float, ptr %3, i64 1
  store float %74, ptr %75, align 4, !tbaa !51
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: nounwind uwtable
define dso_local void @ED_space_clip_set_clip(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %1, null
  %6 = icmp ne ptr %0, null
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = tail call ptr @CTX_wm_screen(ptr noundef nonnull %0) #8
  br label %10

10:                                               ; preds = %8, %4
  %11 = phi ptr [ %9, %8 ], [ %1, %4 ]
  %12 = getelementptr inbounds %struct.SpaceClip, ptr %2, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  store ptr %3, ptr %12, align 8, !tbaa !34
  tail call void @id_us_ensure_real(ptr noundef %3) #8
  %14 = icmp eq ptr %11, null
  br i1 %14, label %60, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.SpaceClip, ptr %2, i64 0, i32 14
  %17 = load i16, ptr %16, align 2, !tbaa !47
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %19, label %60

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.bScreen, ptr %11, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !72
  %22 = icmp eq ptr %21, null
  br i1 %22, label %60, label %27

23:                                               ; preds = %54, %27
  %24 = phi i8 [ %29, %27 ], [ %55, %54 ]
  %25 = load ptr, ptr %28, align 8, !tbaa !72
  %26 = icmp eq ptr %25, null
  br i1 %26, label %58, label %27, !llvm.loop !104

27:                                               ; preds = %19, %23
  %28 = phi ptr [ %25, %23 ], [ %21, %19 ]
  %29 = phi i8 [ %24, %23 ], [ 0, %19 ]
  %30 = getelementptr inbounds %struct.ScrArea, ptr %28, i64 0, i32 19
  %31 = load ptr, ptr %30, align 8, !tbaa !72
  %32 = icmp eq ptr %31, null
  br i1 %32, label %23, label %33

33:                                               ; preds = %27, %54
  %34 = phi ptr [ %56, %54 ], [ %31, %27 ]
  %35 = phi i8 [ %55, %54 ], [ %29, %27 ]
  %36 = getelementptr inbounds %struct.SpaceLink, ptr %34, i64 0, i32 3
  %37 = load i32, ptr %36, align 8, !tbaa !105
  %38 = icmp ne i32 %37, 20
  %39 = icmp eq ptr %34, %2
  %40 = or i1 %39, %38
  br i1 %40, label %54, label %41

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.SpaceClip, ptr %34, i64 0, i32 14
  %43 = load i16, ptr %42, align 2, !tbaa !47
  %44 = icmp eq i16 %43, 0
  %45 = getelementptr inbounds %struct.SpaceClip, ptr %34, i64 0, i32 10
  %46 = load ptr, ptr %45, align 8, !tbaa !34
  %47 = icmp eq ptr %46, %13
  br i1 %44, label %48, label %50

48:                                               ; preds = %41
  %49 = select i1 %47, i8 1, i8 %35
  br label %54

50:                                               ; preds = %41
  %51 = icmp eq ptr %46, null
  %52 = or i1 %47, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store ptr %3, ptr %45, align 8, !tbaa !34
  br label %54

54:                                               ; preds = %48, %53, %50, %33
  %55 = phi i8 [ %35, %33 ], [ %35, %53 ], [ %49, %48 ], [ %35, %50 ]
  %56 = load ptr, ptr %34, align 8, !tbaa !72
  %57 = icmp eq ptr %56, null
  br i1 %57, label %23, label %33, !llvm.loop !107

58:                                               ; preds = %23
  %59 = icmp ne i8 %24, 0
  br label %60

60:                                               ; preds = %19, %58, %15, %10
  %61 = phi i1 [ false, %15 ], [ false, %10 ], [ false, %19 ], [ %59, %58 ]
  %62 = icmp eq ptr %13, null
  %63 = icmp eq ptr %13, %3
  %64 = or i1 %62, %63
  %65 = select i1 %64, i1 true, i1 %61
  br i1 %65, label %67, label %66

66:                                               ; preds = %60
  tail call void @BKE_movieclip_clear_cache(ptr noundef nonnull %13) #8
  br label %67

67:                                               ; preds = %66, %60
  br i1 %6, label %68, label %70

68:                                               ; preds = %67
  %69 = load ptr, ptr %12, align 8, !tbaa !34
  tail call void @WM_event_add_notifier(ptr noundef nonnull %0, i32 noundef 335544326, ptr noundef %69) #8
  br label %70

70:                                               ; preds = %68, %67
  ret void
}

declare ptr @CTX_wm_screen(ptr noundef) local_unnamed_addr #2

declare void @id_us_ensure_real(ptr noundef) local_unnamed_addr #2

declare void @BKE_movieclip_clear_cache(ptr noundef) local_unnamed_addr #2

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @ED_space_clip_get_mask(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 28
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_space_clip_set_mask(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.SpaceClip, ptr %1, i64 0, i32 28
  store ptr %2, ptr %4, align 8, !tbaa !49
  tail call void @id_us_ensure_real(ptr noundef %2) #8
  %5 = icmp eq ptr %0, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @WM_event_add_notifier(ptr noundef nonnull %0, i32 noundef 352321542, ptr noundef %2) #8
  br label %7

7:                                                ; preds = %6, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @clip_start_prefetch_job(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.MovieClipUser, align 8
  %3 = alloca %struct.MovieClipUser, align 8
  %4 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #8
  %5 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #8
  %6 = getelementptr inbounds %struct.SpaceClip, ptr %5, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %102, label %9

9:                                                ; preds = %1
  %10 = tail call i32 @BKE_movieclip_get_duration(ptr noundef nonnull %7) #8
  %11 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %12 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #8
  %13 = getelementptr inbounds %struct.SpaceClip, ptr %12, i64 0, i32 10
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  %15 = getelementptr inbounds %struct.Scene, ptr %11, i64 0, i32 22, i32 7
  %16 = load i32, ptr %15, align 8, !tbaa !108
  %17 = getelementptr inbounds %struct.MovieClip, ptr %14, i64 0, i32 15
  %18 = load i32, ptr %17, align 4, !tbaa !125
  %19 = icmp eq i32 %18, 0
  %20 = tail call i32 @llvm.smin.i32(i32 %16, i32 %18)
  %21 = select i1 %19, i32 %16, i32 %20
  %22 = getelementptr inbounds %struct.SpaceClip, ptr %5, i64 0, i32 9
  %23 = load i32, ptr %22, align 8, !tbaa !62
  %24 = getelementptr inbounds %struct.SpaceClip, ptr %5, i64 0, i32 9, i32 1
  %25 = load i16, ptr %24, align 4, !tbaa !126
  %26 = getelementptr inbounds %struct.SpaceClip, ptr %5, i64 0, i32 9, i32 2
  %27 = load i16, ptr %26, align 2, !tbaa !89
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  store i64 0, ptr %3, align 8
  %28 = getelementptr inbounds %struct.MovieClipUser, ptr %3, i64 0, i32 1
  store i16 %25, ptr %28, align 4, !tbaa !127
  %29 = getelementptr inbounds %struct.MovieClipUser, ptr %3, i64 0, i32 2
  store i16 %27, ptr %29, align 2, !tbaa !128
  %30 = icmp sgt i32 %23, %21
  br i1 %30, label %43, label %31

31:                                               ; preds = %9
  store i32 %23, ptr %3, align 8, !tbaa !129
  %32 = call zeroext i8 @BKE_movieclip_has_cached_frame(ptr noundef nonnull %7, ptr noundef nonnull %3) #8
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %43, label %37

34:                                               ; preds = %37
  store i32 %39, ptr %3, align 8, !tbaa !129
  %35 = call zeroext i8 @BKE_movieclip_has_cached_frame(ptr noundef nonnull %7, ptr noundef nonnull %3) #8
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %41, label %37, !llvm.loop !130

37:                                               ; preds = %31, %34
  %38 = phi i32 [ %39, %34 ], [ %23, %31 ]
  %39 = add i32 %38, 1
  %40 = icmp eq i32 %38, %21
  br i1 %40, label %41, label %34, !llvm.loop !130

41:                                               ; preds = %37, %34
  %42 = icmp sge i32 %38, %21
  br label %43

43:                                               ; preds = %41, %31, %9
  %44 = phi i32 [ %23, %9 ], [ %23, %31 ], [ %39, %41 ]
  %45 = phi i1 [ %30, %9 ], [ %30, %31 ], [ %42, %41 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  %46 = icmp eq i32 %44, %10
  %47 = select i1 %45, i1 true, i1 %46
  br i1 %47, label %48, label %67

48:                                               ; preds = %43
  %49 = call ptr @CTX_data_scene(ptr noundef %0) #8
  %50 = getelementptr inbounds %struct.Scene, ptr %49, i64 0, i32 22, i32 6
  %51 = load i32, ptr %50, align 4, !tbaa !131
  %52 = load i32, ptr %22, align 8, !tbaa !62
  %53 = load i16, ptr %24, align 4, !tbaa !126
  %54 = load i16, ptr %26, align 2, !tbaa !89
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #8
  store i64 0, ptr %2, align 8
  %55 = getelementptr inbounds %struct.MovieClipUser, ptr %2, i64 0, i32 1
  store i16 %53, ptr %55, align 4, !tbaa !127
  %56 = getelementptr inbounds %struct.MovieClipUser, ptr %2, i64 0, i32 2
  store i16 %54, ptr %56, align 2, !tbaa !128
  %57 = icmp slt i32 %52, %51
  br i1 %57, label %66, label %61

58:                                               ; preds = %61
  %59 = add nsw i32 %62, -1
  %60 = icmp sgt i32 %62, %51
  br i1 %60, label %61, label %66, !llvm.loop !132

61:                                               ; preds = %48, %58
  %62 = phi i32 [ %59, %58 ], [ %52, %48 ]
  store i32 %62, ptr %2, align 8, !tbaa !129
  %63 = call zeroext i8 @BKE_movieclip_has_cached_frame(ptr noundef nonnull %7, ptr noundef nonnull %2) #8
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %58

65:                                               ; preds = %61
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #8
  br label %67

66:                                               ; preds = %58, %48
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #8
  br label %102

67:                                               ; preds = %65, %43
  %68 = call ptr @CTX_wm_manager(ptr noundef %0) #8
  %69 = call ptr @CTX_wm_window(ptr noundef %0) #8
  %70 = call ptr @CTX_wm_area(ptr noundef %0) #8
  %71 = call ptr @WM_jobs_get(ptr noundef %68, ptr noundef %69, ptr noundef %70, ptr noundef nonnull @.str, i32 noundef 4, i32 noundef 13) #8
  %72 = load ptr, ptr @MEM_callocN, align 8, !tbaa !72
  %73 = call ptr %72(i64 noundef 24, ptr noundef nonnull @.str.1) #8
  %74 = getelementptr inbounds %struct.SpaceClip, ptr %4, i64 0, i32 10
  %75 = load ptr, ptr %74, align 8, !tbaa !34
  store ptr %75, ptr %73, align 8, !tbaa !133
  %76 = call ptr @CTX_data_scene(ptr noundef %0) #8
  %77 = getelementptr inbounds %struct.Scene, ptr %76, i64 0, i32 22, i32 6
  %78 = load i32, ptr %77, align 4, !tbaa !131
  %79 = getelementptr inbounds %struct.PrefetchJob, ptr %73, i64 0, i32 1
  store i32 %78, ptr %79, align 8, !tbaa !135
  %80 = getelementptr inbounds %struct.SpaceClip, ptr %4, i64 0, i32 9
  %81 = load i32, ptr %80, align 8, !tbaa !62
  %82 = getelementptr inbounds %struct.PrefetchJob, ptr %73, i64 0, i32 2
  store i32 %81, ptr %82, align 4, !tbaa !136
  %83 = call ptr @CTX_data_scene(ptr noundef %0) #8
  %84 = call ptr @CTX_wm_space_clip(ptr noundef %0) #8
  %85 = getelementptr inbounds %struct.SpaceClip, ptr %84, i64 0, i32 10
  %86 = load ptr, ptr %85, align 8, !tbaa !34
  %87 = getelementptr inbounds %struct.Scene, ptr %83, i64 0, i32 22, i32 7
  %88 = load i32, ptr %87, align 8, !tbaa !108
  %89 = getelementptr inbounds %struct.MovieClip, ptr %86, i64 0, i32 15
  %90 = load i32, ptr %89, align 4, !tbaa !125
  %91 = icmp eq i32 %90, 0
  %92 = call i32 @llvm.smin.i32(i32 %88, i32 %90)
  %93 = select i1 %91, i32 %88, i32 %92
  %94 = getelementptr inbounds %struct.PrefetchJob, ptr %73, i64 0, i32 3
  store i32 %93, ptr %94, align 8, !tbaa !137
  %95 = getelementptr inbounds %struct.SpaceClip, ptr %4, i64 0, i32 9, i32 1
  %96 = load i16, ptr %95, align 4, !tbaa !126
  %97 = getelementptr inbounds %struct.PrefetchJob, ptr %73, i64 0, i32 4
  store i16 %96, ptr %97, align 4, !tbaa !138
  %98 = getelementptr inbounds %struct.SpaceClip, ptr %4, i64 0, i32 9, i32 2
  %99 = load i16, ptr %98, align 2, !tbaa !89
  %100 = getelementptr inbounds %struct.PrefetchJob, ptr %73, i64 0, i32 5
  store i16 %99, ptr %100, align 2, !tbaa !139
  call void @WM_jobs_customdata_set(ptr noundef %71, ptr noundef nonnull %73, ptr noundef nonnull @prefetch_freejob) #8
  call void @WM_jobs_timer(ptr noundef %71, double noundef 2.000000e-01, i32 noundef 338886656, i32 noundef 0) #8
  call void @WM_jobs_callbacks(ptr noundef %71, ptr noundef nonnull @prefetch_startjob, ptr noundef null, ptr noundef null, ptr noundef null) #8
  store i8 0, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !140
  %101 = call ptr @CTX_wm_manager(ptr noundef %0) #8
  call void @WM_jobs_start(ptr noundef %101, ptr noundef %71) #8
  br label %102

102:                                              ; preds = %1, %66, %67
  ret void
}

declare ptr @WM_jobs_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

declare void @WM_jobs_customdata_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @prefetch_freejob(ptr noundef %0) #0 {
  %2 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  tail call void %2(ptr noundef %0) #8
  ret void
}

declare void @WM_jobs_timer(ptr noundef, double noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @WM_jobs_callbacks(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @prefetch_startjob(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca %struct.MovieClipUser, align 8
  %6 = alloca %struct.MovieClipUser, align 8
  %7 = alloca %struct.PrefetchQueue, align 8
  %8 = load ptr, ptr %0, align 8, !tbaa !133
  %9 = getelementptr inbounds %struct.MovieClip, ptr %8, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !142
  switch i32 %10, label %125 [
    i32 1, label %11
    i32 2, label %41
  ]

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.PrefetchJob, ptr %0, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !135
  %14 = getelementptr inbounds %struct.PrefetchJob, ptr %0, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !136
  %16 = getelementptr inbounds %struct.PrefetchJob, ptr %0, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !137
  %18 = getelementptr inbounds %struct.PrefetchJob, ptr %0, i64 0, i32 4
  %19 = load i16, ptr %18, align 4, !tbaa !138
  %20 = getelementptr inbounds %struct.PrefetchJob, ptr %0, i64 0, i32 5
  %21 = load i16, ptr %20, align 2, !tbaa !139
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #8
  %22 = tail call ptr @BLI_task_scheduler_get() #8
  %23 = tail call i32 @BLI_task_scheduler_num_threads(ptr noundef %22) #8
  %24 = getelementptr inbounds %struct.PrefetchQueue, ptr %7, i64 0, i32 7
  call void @BLI_spin_init(ptr noundef nonnull %24) #8
  %25 = getelementptr inbounds %struct.PrefetchQueue, ptr %7, i64 0, i32 1
  store i32 %15, ptr %25, align 4, !tbaa !143
  store i32 %15, ptr %7, align 8, !tbaa !145
  %26 = getelementptr inbounds %struct.PrefetchQueue, ptr %7, i64 0, i32 2
  store i32 %13, ptr %26, align 8, !tbaa !146
  %27 = getelementptr inbounds %struct.PrefetchQueue, ptr %7, i64 0, i32 3
  store i32 %17, ptr %27, align 4, !tbaa !147
  %28 = getelementptr inbounds %struct.PrefetchQueue, ptr %7, i64 0, i32 4
  store i16 %19, ptr %28, align 8, !tbaa !148
  %29 = getelementptr inbounds %struct.PrefetchQueue, ptr %7, i64 0, i32 5
  store i16 %21, ptr %29, align 2, !tbaa !149
  %30 = getelementptr inbounds %struct.PrefetchQueue, ptr %7, i64 0, i32 6
  store i8 1, ptr %30, align 4, !tbaa !150
  %31 = getelementptr inbounds %struct.PrefetchQueue, ptr %7, i64 0, i32 8
  store ptr %1, ptr %31, align 8, !tbaa !151
  %32 = getelementptr inbounds %struct.PrefetchQueue, ptr %7, i64 0, i32 9
  store ptr %2, ptr %32, align 8, !tbaa !152
  %33 = getelementptr inbounds %struct.PrefetchQueue, ptr %7, i64 0, i32 10
  store ptr %3, ptr %33, align 8, !tbaa !153
  %34 = call ptr @BLI_task_pool_create(ptr noundef %22, ptr noundef nonnull %7) #8
  %35 = icmp sgt i32 %23, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %11, %36
  %37 = phi i32 [ %38, %36 ], [ 0, %11 ]
  call void @BLI_task_pool_push(ptr noundef %34, ptr noundef nonnull @prefetch_task_func, ptr noundef %8, i8 noundef zeroext 0, i32 noundef 0) #8
  %38 = add nuw nsw i32 %37, 1
  %39 = icmp eq i32 %38, %23
  br i1 %39, label %40, label %36, !llvm.loop !154

40:                                               ; preds = %36, %11
  call void @BLI_task_pool_work_and_wait(ptr noundef %34) #8
  call void @BLI_task_pool_free(ptr noundef %34) #8
  call void @BLI_spin_end(ptr noundef nonnull %24) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #8
  br label %125

41:                                               ; preds = %4
  %42 = getelementptr inbounds %struct.PrefetchJob, ptr %0, i64 0, i32 1
  %43 = load i32, ptr %42, align 8, !tbaa !135
  %44 = getelementptr inbounds %struct.PrefetchJob, ptr %0, i64 0, i32 2
  %45 = load i32, ptr %44, align 4, !tbaa !136
  %46 = getelementptr inbounds %struct.PrefetchJob, ptr %0, i64 0, i32 3
  %47 = load i32, ptr %46, align 8, !tbaa !137
  %48 = getelementptr inbounds %struct.PrefetchJob, ptr %0, i64 0, i32 4
  %49 = load i16, ptr %48, align 4, !tbaa !138
  %50 = getelementptr inbounds %struct.PrefetchJob, ptr %0, i64 0, i32 5
  %51 = load i16, ptr %50, align 2, !tbaa !139
  %52 = icmp sgt i32 %45, %47
  br i1 %52, label %60, label %53

53:                                               ; preds = %41
  %54 = getelementptr inbounds %struct.MovieClipUser, ptr %6, i64 0, i32 1
  %55 = getelementptr inbounds %struct.MovieClipUser, ptr %6, i64 0, i32 2
  %56 = sub nsw i32 %47, %43
  %57 = sitofp i32 %56 to float
  %58 = add i32 %47, 1
  %59 = sub i32 %58, %45
  br label %71

60:                                               ; preds = %91, %41
  %61 = phi i32 [ 0, %41 ], [ %92, %91 ]
  %62 = icmp slt i32 %45, %43
  br i1 %62, label %125, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.MovieClipUser, ptr %5, i64 0, i32 1
  %65 = getelementptr inbounds %struct.MovieClipUser, ptr %5, i64 0, i32 2
  %66 = sub nsw i32 %47, %43
  %67 = sitofp i32 %66 to float
  %68 = add i32 %61, %45
  %69 = add i32 %68, 1
  %70 = sub i32 %69, %43
  br label %97

71:                                               ; preds = %53, %91
  %72 = phi i32 [ 0, %53 ], [ %92, %91 ]
  %73 = phi i32 [ %45, %53 ], [ %95, %91 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  store i64 0, ptr %6, align 8
  %74 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !140
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %123

76:                                               ; preds = %71
  %77 = load i16, ptr %1, align 2, !tbaa !155
  %78 = icmp eq i16 %77, 0
  br i1 %78, label %79, label %123

79:                                               ; preds = %76
  store i32 %73, ptr %6, align 8, !tbaa !129
  store i16 %49, ptr %54, align 4, !tbaa !127
  store i16 %51, ptr %55, align 2, !tbaa !128
  %80 = call zeroext i8 @BKE_movieclip_has_cached_frame(ptr noundef %8, ptr noundef nonnull %6) #8
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %79
  %83 = call ptr @BKE_movieclip_anim_ibuf_for_frame(ptr noundef %8, ptr noundef nonnull %6) #8
  %84 = icmp eq ptr %83, null
  br i1 %84, label %90, label %85

85:                                               ; preds = %82
  %86 = call zeroext i8 @BKE_movieclip_put_frame_if_possible(ptr noundef %8, ptr noundef nonnull %6, ptr noundef nonnull %83) #8
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  store i16 1, ptr %1, align 2, !tbaa !155
  br label %89

89:                                               ; preds = %88, %85
  call void @IMB_freeImBuf(ptr noundef nonnull %83) #8
  br label %91

90:                                               ; preds = %82
  store i16 1, ptr %1, align 2, !tbaa !155
  br label %91

91:                                               ; preds = %79, %89, %90
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  %92 = add nuw i32 %72, 1
  store i16 1, ptr %2, align 2, !tbaa !155
  %93 = sitofp i32 %92 to float
  %94 = fdiv float %93, %57
  store float %94, ptr %3, align 4, !tbaa !51
  %95 = add nsw i32 %73, 1
  %96 = icmp eq i32 %92, %59
  br i1 %96, label %60, label %71, !llvm.loop !156

97:                                               ; preds = %63, %117
  %98 = phi i32 [ %61, %63 ], [ %118, %117 ]
  %99 = phi i32 [ %45, %63 ], [ %121, %117 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  store i64 0, ptr %5, align 8
  %100 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !140
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %102, label %124

102:                                              ; preds = %97
  %103 = load i16, ptr %1, align 2, !tbaa !155
  %104 = icmp eq i16 %103, 0
  br i1 %104, label %105, label %124

105:                                              ; preds = %102
  store i32 %99, ptr %5, align 8, !tbaa !129
  store i16 %49, ptr %64, align 4, !tbaa !127
  store i16 %51, ptr %65, align 2, !tbaa !128
  %106 = call zeroext i8 @BKE_movieclip_has_cached_frame(ptr noundef %8, ptr noundef nonnull %5) #8
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %108, label %117

108:                                              ; preds = %105
  %109 = call ptr @BKE_movieclip_anim_ibuf_for_frame(ptr noundef %8, ptr noundef nonnull %5) #8
  %110 = icmp eq ptr %109, null
  br i1 %110, label %116, label %111

111:                                              ; preds = %108
  %112 = call zeroext i8 @BKE_movieclip_put_frame_if_possible(ptr noundef %8, ptr noundef nonnull %5, ptr noundef nonnull %109) #8
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %111
  store i16 1, ptr %1, align 2, !tbaa !155
  br label %115

115:                                              ; preds = %114, %111
  call void @IMB_freeImBuf(ptr noundef nonnull %109) #8
  br label %117

116:                                              ; preds = %108
  store i16 1, ptr %1, align 2, !tbaa !155
  br label %117

117:                                              ; preds = %105, %115, %116
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  %118 = add i32 %98, 1
  store i16 1, ptr %2, align 2, !tbaa !155
  %119 = sitofp i32 %118 to float
  %120 = fdiv float %119, %67
  store float %120, ptr %3, align 4, !tbaa !51
  %121 = add nsw i32 %99, -1
  %122 = icmp eq i32 %118, %70
  br i1 %122, label %125, label %97, !llvm.loop !157

123:                                              ; preds = %71, %76
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  br label %125

124:                                              ; preds = %97, %102
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  br label %125

125:                                              ; preds = %117, %60, %124, %123, %4, %40
  ret void
}

declare void @WM_jobs_start(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_tracking_get_active_tracks(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_tracking_marker_get(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @minmax_v2v2_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @log(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #4

declare i32 @BKE_movieclip_get_duration(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BKE_movieclip_has_cached_frame(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare ptr @BLI_task_scheduler_get() local_unnamed_addr #2

declare i32 @BLI_task_scheduler_num_threads(ptr noundef) local_unnamed_addr #2

declare void @BLI_spin_init(ptr noundef) local_unnamed_addr #2

declare ptr @BLI_task_pool_create(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_task_pool_push(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @prefetch_task_func(ptr noundef %0, ptr noundef %1, i32 %2) #0 {
  %4 = alloca %struct.MovieClipUser, align 8
  %5 = alloca [1024 x i8], align 16
  %6 = alloca %struct.MovieClipUser, align 8
  %7 = alloca %struct.MovieClipUser, align 8
  %8 = alloca %struct.MovieClipUser, align 8
  %9 = tail call ptr @BLI_task_pool_userdata(ptr noundef %0) #8
  %10 = getelementptr inbounds %struct.PrefetchQueue, ptr %9, i64 0, i32 7
  %11 = getelementptr inbounds %struct.PrefetchQueue, ptr %9, i64 0, i32 8
  %12 = getelementptr inbounds %struct.PrefetchQueue, ptr %9, i64 0, i32 2
  %13 = getelementptr inbounds %struct.PrefetchQueue, ptr %9, i64 0, i32 3
  %14 = getelementptr inbounds %struct.PrefetchQueue, ptr %9, i64 0, i32 1
  %15 = getelementptr inbounds %struct.PrefetchQueue, ptr %9, i64 0, i32 1
  %16 = getelementptr inbounds %struct.PrefetchQueue, ptr %9, i64 0, i32 6
  %17 = getelementptr inbounds %struct.PrefetchQueue, ptr %9, i64 0, i32 1
  %18 = getelementptr inbounds %struct.PrefetchQueue, ptr %9, i64 0, i32 4
  %19 = getelementptr inbounds %struct.PrefetchQueue, ptr %9, i64 0, i32 5
  %20 = getelementptr inbounds %struct.MovieClipUser, ptr %7, i64 0, i32 1
  %21 = getelementptr inbounds %struct.MovieClipUser, ptr %7, i64 0, i32 2
  %22 = getelementptr inbounds %struct.PrefetchQueue, ptr %9, i64 0, i32 1
  %23 = getelementptr inbounds %struct.PrefetchQueue, ptr %9, i64 0, i32 4
  %24 = getelementptr inbounds %struct.PrefetchQueue, ptr %9, i64 0, i32 5
  %25 = getelementptr inbounds %struct.MovieClipUser, ptr %6, i64 0, i32 1
  %26 = getelementptr inbounds %struct.MovieClipUser, ptr %6, i64 0, i32 2
  %27 = getelementptr inbounds %struct.PrefetchQueue, ptr %9, i64 0, i32 4
  %28 = getelementptr inbounds %struct.PrefetchQueue, ptr %9, i64 0, i32 5
  %29 = getelementptr inbounds %struct.MovieClipUser, ptr %4, i64 0, i32 1
  %30 = getelementptr inbounds %struct.MovieClipUser, ptr %4, i64 0, i32 2
  %31 = getelementptr inbounds %struct.PrefetchQueue, ptr %9, i64 0, i32 1
  %32 = getelementptr inbounds %struct.PrefetchQueue, ptr %9, i64 0, i32 9
  %33 = getelementptr inbounds %struct.PrefetchQueue, ptr %9, i64 0, i32 10
  %34 = getelementptr inbounds %struct.PrefetchQueue, ptr %9, i64 0, i32 4
  %35 = getelementptr inbounds %struct.MovieClipUser, ptr %8, i64 0, i32 1
  %36 = getelementptr inbounds %struct.PrefetchQueue, ptr %9, i64 0, i32 5
  %37 = getelementptr inbounds %struct.MovieClipUser, ptr %8, i64 0, i32 2
  %38 = getelementptr inbounds %struct.MovieClip, ptr %1, i64 0, i32 18
  br label %40

39:                                               ; preds = %157
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #8
  br label %40

40:                                               ; preds = %39, %3
  %41 = phi i64 [ undef, %3 ], [ %153, %39 ]
  %42 = phi i32 [ undef, %3 ], [ %154, %39 ]
  call void @BLI_spin_lock(ptr noundef nonnull %10) #8
  %43 = load ptr, ptr %11, align 8, !tbaa !151
  %44 = load i16, ptr %43, align 2, !tbaa !155
  %45 = icmp eq i16 %44, 0
  %46 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8
  %47 = icmp eq i8 %46, 0
  %48 = select i1 %45, i1 %47, i1 false
  br i1 %48, label %49, label %152

49:                                               ; preds = %40
  %50 = load i32, ptr %12, align 8, !tbaa !146
  %51 = load i32, ptr %13, align 4, !tbaa !147
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = load i32, ptr %15, align 4, !tbaa !143
  %55 = icmp sgt i32 %50, %54
  %56 = icmp sgt i32 %54, %51
  %57 = or i1 %55, %56
  br i1 %57, label %152, label %63

58:                                               ; preds = %49
  %59 = load i32, ptr %14, align 4, !tbaa !143
  %60 = icmp sgt i32 %51, %59
  %61 = icmp sgt i32 %59, %50
  %62 = or i1 %60, %61
  br i1 %62, label %152, label %63

63:                                               ; preds = %58, %53
  %64 = load i8, ptr %16, align 4, !tbaa !150
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %83, label %66

66:                                               ; preds = %63
  %67 = load i32, ptr %17, align 4, !tbaa !143
  %68 = load i16, ptr %18, align 8, !tbaa !148
  %69 = load i16, ptr %19, align 2, !tbaa !149
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  store i64 0, ptr %7, align 8
  store i16 %68, ptr %20, align 4, !tbaa !127
  store i16 %69, ptr %21, align 2, !tbaa !128
  %70 = call i32 @llvm.smax.i32(i32 %67, i32 %51)
  br label %71

71:                                               ; preds = %75, %66
  %72 = phi i32 [ %67, %66 ], [ %73, %75 ]
  %73 = add i32 %72, 1
  %74 = icmp eq i32 %72, %70
  br i1 %74, label %78, label %75

75:                                               ; preds = %71
  store i32 %73, ptr %7, align 8, !tbaa !129
  %76 = call zeroext i8 @BKE_movieclip_has_cached_frame(ptr noundef %1, ptr noundef nonnull %7) #8
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %78, label %71, !llvm.loop !130

78:                                               ; preds = %75, %71
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  %79 = load i32, ptr %13, align 4, !tbaa !147
  %80 = icmp slt i32 %72, %79
  br i1 %80, label %83, label %81

81:                                               ; preds = %78
  %82 = load i32, ptr %9, align 8, !tbaa !145
  store i32 %82, ptr %17, align 4, !tbaa !143
  store i8 0, ptr %16, align 4, !tbaa !150
  br label %83

83:                                               ; preds = %81, %78, %63
  %84 = phi i32 [ %73, %81 ], [ %73, %78 ], [ undef, %63 ]
  %85 = load i8, ptr %16, align 4, !tbaa !150
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %87, label %100

87:                                               ; preds = %83
  %88 = load i32, ptr %22, align 4, !tbaa !143
  %89 = load i32, ptr %12, align 8, !tbaa !146
  %90 = load i16, ptr %23, align 8, !tbaa !148
  %91 = load i16, ptr %24, align 2, !tbaa !149
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  store i64 0, ptr %6, align 8
  store i16 %90, ptr %25, align 4, !tbaa !127
  store i16 %91, ptr %26, align 2, !tbaa !128
  br label %92

92:                                               ; preds = %96, %87
  %93 = phi i32 [ %88, %87 ], [ %94, %96 ]
  %94 = add nsw i32 %93, -1
  %95 = icmp sgt i32 %93, %89
  br i1 %95, label %96, label %99

96:                                               ; preds = %92
  store i32 %94, ptr %6, align 8, !tbaa !129
  %97 = call zeroext i8 @BKE_movieclip_has_cached_frame(ptr noundef %1, ptr noundef nonnull %6) #8
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %99, label %92, !llvm.loop !132

99:                                               ; preds = %96, %92
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  br label %100

100:                                              ; preds = %99, %83
  %101 = phi i32 [ %84, %83 ], [ %94, %99 ]
  %102 = load i32, ptr %12, align 8, !tbaa !146
  %103 = load i32, ptr %13, align 4, !tbaa !147
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %100
  %106 = icmp sgt i32 %102, %101
  %107 = icmp sgt i32 %101, %103
  %108 = or i1 %106, %107
  br i1 %108, label %152, label %113

109:                                              ; preds = %100
  %110 = icmp sgt i32 %103, %101
  %111 = icmp sgt i32 %101, %102
  %112 = or i1 %111, %110
  br i1 %112, label %152, label %113

113:                                              ; preds = %109, %105
  %114 = load i16, ptr %27, align 8, !tbaa !148
  %115 = load i16, ptr %28, align 2, !tbaa !149
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  store i64 0, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #8
  store i32 %101, ptr %4, align 8, !tbaa !129
  store i16 %114, ptr %29, align 4, !tbaa !127
  store i16 %115, ptr %30, align 2, !tbaa !128
  call void @BKE_movieclip_filename_for_frame(ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5) #8
  %116 = call i32 @BLI_open(ptr noundef nonnull %5, i32 noundef 0, i32 noundef 0) #8
  %117 = icmp eq i32 %116, -1
  br i1 %117, label %131, label %118

118:                                              ; preds = %113
  %119 = call i64 @BLI_file_descriptor_size(i32 noundef %116) #8
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %118
  %122 = call i32 @close(i32 noundef %116) #8
  br label %131

123:                                              ; preds = %118
  %124 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !72
  %125 = call ptr %124(i64 noundef %119, ptr noundef nonnull @.str.3) #8
  %126 = call i64 @read(i32 noundef %116, ptr noundef %125, i64 noundef %119) #8
  %127 = icmp eq i64 %126, %119
  %128 = call i32 @close(i32 noundef %116) #8
  br i1 %127, label %131, label %129

129:                                              ; preds = %123
  %130 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  call void %130(ptr noundef %125) #8
  br label %131

131:                                              ; preds = %123, %129, %121, %113
  %132 = phi i64 [ %41, %113 ], [ %41, %121 ], [ %41, %129 ], [ %119, %123 ]
  %133 = phi ptr [ null, %113 ], [ null, %121 ], [ null, %129 ], [ %125, %123 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  store i32 %101, ptr %31, align 4, !tbaa !143
  %134 = load i8, ptr %16, align 4, !tbaa !150
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %131
  %137 = load i32, ptr %9, align 8, !tbaa !145
  %138 = sub nsw i32 %101, %137
  br label %142

139:                                              ; preds = %131
  %140 = load i32, ptr %13, align 4, !tbaa !147
  %141 = sub i32 %140, %101
  br label %142

142:                                              ; preds = %139, %136
  %143 = phi i32 [ %138, %136 ], [ %141, %139 ]
  %144 = load ptr, ptr %32, align 8, !tbaa !152
  store i16 1, ptr %144, align 2, !tbaa !155
  %145 = sitofp i32 %143 to float
  %146 = load i32, ptr %13, align 4, !tbaa !147
  %147 = load i32, ptr %12, align 8, !tbaa !146
  %148 = sub nsw i32 %146, %147
  %149 = sitofp i32 %148 to float
  %150 = fdiv float %145, %149
  %151 = load ptr, ptr %33, align 8, !tbaa !153
  store float %150, ptr %151, align 4, !tbaa !51
  br label %152

152:                                              ; preds = %40, %53, %58, %105, %109, %142
  %153 = phi i64 [ %41, %53 ], [ %41, %105 ], [ %132, %142 ], [ %41, %109 ], [ %41, %58 ], [ %41, %40 ]
  %154 = phi i32 [ %42, %53 ], [ %42, %105 ], [ %101, %142 ], [ %42, %109 ], [ %42, %58 ], [ %42, %40 ]
  %155 = phi ptr [ null, %53 ], [ null, %105 ], [ %133, %142 ], [ null, %109 ], [ null, %58 ], [ null, %40 ]
  call void @BLI_spin_unlock(ptr noundef nonnull %10) #8
  %156 = icmp eq ptr %155, null
  br i1 %156, label %170, label %157

157:                                              ; preds = %152
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #8
  store i64 0, ptr %8, align 8
  store i32 %154, ptr %8, align 8, !tbaa !129
  %158 = load i16, ptr %34, align 8, !tbaa !148
  store i16 %158, ptr %35, align 4, !tbaa !127
  %159 = load i16, ptr %36, align 2, !tbaa !149
  store i16 %159, ptr %37, align 2, !tbaa !128
  %160 = and i16 %159, 1
  %161 = icmp eq i16 %160, 0
  %162 = select i1 %161, ptr null, ptr %38
  %163 = call ptr @IMB_ibImageFromMemory(ptr noundef nonnull %155, i64 noundef %153, i32 noundef 8193, ptr noundef %162, ptr noundef nonnull @.str.2) #8
  %164 = call zeroext i8 @BKE_movieclip_put_frame_if_possible(ptr noundef %1, ptr noundef nonnull %8, ptr noundef %163) #8
  call void @IMB_freeImBuf(ptr noundef %163) #8
  %165 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  call void %165(ptr noundef nonnull %155) #8
  %166 = icmp eq i8 %164, 0
  br i1 %166, label %167, label %39

167:                                              ; preds = %157
  %168 = getelementptr inbounds %struct.PrefetchQueue, ptr %9, i64 0, i32 8
  %169 = load ptr, ptr %168, align 8, !tbaa !151
  store i16 1, ptr %169, align 2, !tbaa !155
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #8
  br label %170

170:                                              ; preds = %152, %167
  ret void
}

declare void @BLI_task_pool_work_and_wait(ptr noundef) local_unnamed_addr #2

declare void @BLI_task_pool_free(ptr noundef) local_unnamed_addr #2

declare void @BLI_spin_end(ptr noundef) local_unnamed_addr #2

declare ptr @BLI_task_pool_userdata(ptr noundef) local_unnamed_addr #2

declare ptr @IMB_ibImageFromMemory(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BKE_movieclip_put_frame_if_possible(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_spin_lock(ptr noundef) local_unnamed_addr #2

declare void @BLI_spin_unlock(ptr noundef) local_unnamed_addr #2

declare void @BKE_movieclip_filename_for_frame(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BLI_open(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i64 @BLI_file_descriptor_size(i32 noundef) local_unnamed_addr #2

declare i32 @close(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

declare ptr @BKE_movieclip_anim_ibuf_for_frame(ptr noundef, ptr noundef) local_unnamed_addr #2

declare double @exp2(double) local_unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!34 = !{!35, !36, i64 64}
!35 = !{!"SpaceClip", !36, i64 0, !36, i64 8, !39, i64 16, !40, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !42, i64 56, !36, i64 64, !44, i64 72, !40, i64 208, !43, i64 212, !43, i64 214, !40, i64 216, !37, i64 220, !41, i64 228, !41, i64 232, !40, i64 236, !37, i64 240, !37, i64 304, !40, i64 368, !43, i64 372, !43, i64 374, !40, i64 376, !40, i64 380, !37, i64 384, !46, i64 392}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"ListBase", !36, i64 0, !36, i64 8}
!40 = !{!"int", !37, i64 0}
!41 = !{!"float", !37, i64 0}
!42 = !{!"MovieClipUser", !40, i64 0, !43, i64 4, !43, i64 6}
!43 = !{!"short", !37, i64 0}
!44 = !{!"MovieClipScopes", !43, i64 0, !43, i64 2, !40, i64 4, !40, i64 8, !40, i64 12, !45, i64 16, !36, i64 80, !36, i64 88, !37, i64 96, !43, i64 104, !43, i64 106, !40, i64 108, !36, i64 112, !36, i64 120, !37, i64 128}
!45 = !{!"MovieTrackingMarker", !37, i64 0, !37, i64 8, !37, i64 40, !37, i64 48, !40, i64 56, !40, i64 60}
!46 = !{!"MaskSpaceInfo", !36, i64 0, !37, i64 8, !37, i64 9, !37, i64 10, !37, i64 11}
!47 = !{!35, !43, i64 214}
!48 = !{!35, !43, i64 212}
!49 = !{!35, !36, i64 392}
!50 = !{!40, !40, i64 0}
!51 = !{!41, !41, i64 0}
!52 = !{!53, !40, i64 4}
!53 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!54 = !{!53, !40, i64 0}
!55 = !{!56, !41, i64 4}
!56 = !{!"rctf", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!57 = !{!56, !41, i64 0}
!58 = !{!53, !40, i64 12}
!59 = !{!53, !40, i64 8}
!60 = !{!56, !41, i64 12}
!61 = !{!56, !41, i64 8}
!62 = !{!35, !40, i64 56}
!63 = !{!35, !40, i64 368}
!64 = !{!65, !36, i64 40}
!65 = !{!"ImBuf", !36, i64 0, !36, i64 8, !40, i64 16, !40, i64 20, !37, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !36, i64 40, !36, i64 48, !37, i64 56, !40, i64 72, !40, i64 76, !40, i64 80, !40, i64 84, !36, i64 88, !36, i64 96, !36, i64 104, !41, i64 112, !37, i64 120, !40, i64 280, !40, i64 284, !40, i64 288, !40, i64 292, !36, i64 296, !36, i64 304, !40, i64 312, !37, i64 316, !37, i64 1340, !36, i64 2368, !40, i64 2376, !36, i64 2384, !40, i64 2392, !40, i64 2396, !36, i64 2400, !36, i64 2408, !36, i64 2416, !36, i64 2424, !40, i64 2432, !53, i64 2436, !66, i64 2456}
!66 = !{!"DDSData", !40, i64 0, !40, i64 4, !36, i64 8, !40, i64 16}
!67 = !{!65, !36, i64 48}
!68 = !{!65, !40, i64 16}
!69 = !{!65, !40, i64 20}
!70 = !{!65, !40, i64 28}
!71 = !{!65, !36, i64 2400}
!72 = !{!36, !36, i64 0}
!73 = distinct !{!73, !74, !75}
!74 = !{!"llvm.loop.mustprogress"}
!75 = !{!"llvm.loop.unroll.disable"}
!76 = distinct !{!76, !74, !75}
!77 = !{!78, !36, i64 24}
!78 = !{!"wmWindow", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !43, i64 104, !43, i64 106, !43, i64 108, !43, i64 110, !43, i64 112, !43, i64 114, !43, i64 116, !43, i64 118, !43, i64 120, !43, i64 122, !43, i64 124, !43, i64 126, !40, i64 128, !43, i64 132, !43, i64 134, !36, i64 136, !36, i64 144, !36, i64 152, !40, i64 160, !40, i64 164, !36, i64 168, !39, i64 176, !39, i64 192, !39, i64 208, !39, i64 224, !39, i64 240}
!79 = !{!80, !37, i64 72}
!80 = !{!"ScrArea", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !53, i64 56, !37, i64 72, !37, i64 73, !43, i64 74, !43, i64 76, !43, i64 78, !43, i64 80, !43, i64 82, !43, i64 84, !37, i64 86, !37, i64 87, !36, i64 88, !39, i64 96, !39, i64 112, !39, i64 128, !39, i64 144}
!81 = !{!80, !36, i64 96}
!82 = !{!35, !43, i64 72}
!83 = distinct !{!83, !74, !75}
!84 = !{!85, !40, i64 152}
!85 = !{!"MovieTrackingTrack", !36, i64 0, !36, i64 8, !37, i64 16, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !40, i64 120, !40, i64 124, !36, i64 128, !37, i64 136, !41, i64 148, !40, i64 152, !40, i64 156, !40, i64 160, !37, i64 164, !43, i64 176, !43, i64 178, !43, i64 180, !43, i64 182, !40, i64 184, !41, i64 188, !36, i64 192, !41, i64 200, !41, i64 204}
!86 = !{!35, !40, i64 208}
!87 = !{!85, !40, i64 156}
!88 = !{!85, !40, i64 160}
!89 = !{!35, !43, i64 62}
!90 = distinct !{!90, !74, !75}
!91 = !{!35, !41, i64 52}
!92 = !{!93, !41, i64 1288}
!93 = !{!"MovieClip", !94, i64 0, !36, i64 120, !37, i64 128, !40, i64 1152, !40, i64 1156, !37, i64 1160, !41, i64 1168, !41, i64 1172, !36, i64 1176, !36, i64 1184, !36, i64 1192, !95, i64 1200, !36, i64 1528, !101, i64 1536, !40, i64 2312, !40, i64 2316, !40, i64 2320, !40, i64 2324, !102, i64 2328}
!94 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !43, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !36, i64 112}
!95 = !{!"MovieTracking", !96, i64 0, !97, i64 72, !39, i64 128, !39, i64 144, !98, i64 160, !99, i64 184, !36, i64 232, !36, i64 240, !39, i64 248, !40, i64 264, !40, i64 268, !36, i64 272, !100, i64 280}
!96 = !{!"MovieTrackingSettings", !40, i64 0, !43, i64 4, !43, i64 6, !41, i64 8, !43, i64 12, !43, i64 14, !43, i64 16, !43, i64 18, !43, i64 20, !43, i64 22, !41, i64 24, !43, i64 28, !43, i64 30, !40, i64 32, !40, i64 36, !40, i64 40, !43, i64 44, !43, i64 46, !41, i64 48, !40, i64 52, !40, i64 56, !41, i64 60, !41, i64 64, !40, i64 68}
!97 = !{!"MovieTrackingCamera", !36, i64 0, !43, i64 8, !43, i64 10, !41, i64 12, !41, i64 16, !41, i64 20, !43, i64 24, !43, i64 26, !37, i64 28, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52}
!98 = !{!"MovieTrackingReconstruction", !40, i64 0, !41, i64 4, !40, i64 8, !40, i64 12, !36, i64 16}
!99 = !{!"MovieTrackingStabilization", !40, i64 0, !40, i64 4, !40, i64 8, !41, i64 12, !36, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !40, i64 36, !40, i64 40, !41, i64 44}
!100 = !{!"MovieTrackingDopesheet", !40, i64 0, !43, i64 4, !43, i64 6, !39, i64 8, !39, i64 24, !40, i64 40, !40, i64 44}
!101 = !{!"MovieClipProxy", !37, i64 0, !43, i64 768, !43, i64 770, !43, i64 772, !43, i64 774}
!102 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!103 = !{!95, !41, i64 88}
!104 = distinct !{!104, !74, !75}
!105 = !{!106, !40, i64 32}
!106 = !{!"SpaceLink", !36, i64 0, !36, i64 8, !39, i64 16, !40, i64 32, !41, i64 36, !37, i64 40}
!107 = distinct !{!107, !74, !75}
!108 = !{!109, !40, i64 688}
!109 = !{!"Scene", !94, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !40, i64 232, !40, i64 236, !40, i64 240, !43, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !110, i64 280, !117, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !43, i64 4376, !43, i64 4378, !40, i64 4380, !39, i64 4384, !118, i64 4400, !119, i64 4416, !122, i64 4600, !36, i64 4608, !123, i64 4616, !36, i64 4640, !124, i64 4648, !124, i64 4656, !112, i64 4664, !113, i64 4824, !102, i64 4888, !36, i64 4952}
!110 = !{!"RenderData", !111, i64 0, !36, i64 248, !36, i64 256, !114, i64 264, !115, i64 328, !40, i64 400, !40, i64 404, !40, i64 408, !41, i64 412, !40, i64 416, !40, i64 420, !40, i64 424, !40, i64 428, !43, i64 432, !43, i64 434, !41, i64 436, !41, i64 440, !41, i64 444, !41, i64 448, !41, i64 452, !43, i64 456, !43, i64 458, !43, i64 460, !43, i64 462, !43, i64 464, !43, i64 466, !40, i64 468, !43, i64 472, !43, i64 474, !43, i64 476, !43, i64 478, !43, i64 480, !43, i64 482, !40, i64 484, !40, i64 488, !43, i64 492, !43, i64 494, !40, i64 496, !40, i64 500, !43, i64 504, !43, i64 506, !43, i64 508, !43, i64 510, !43, i64 512, !37, i64 514, !37, i64 515, !40, i64 516, !40, i64 520, !40, i64 524, !43, i64 528, !43, i64 530, !43, i64 532, !43, i64 534, !43, i64 536, !43, i64 538, !43, i64 540, !43, i64 542, !56, i64 544, !56, i64 560, !53, i64 576, !39, i64 592, !43, i64 608, !43, i64 610, !41, i64 612, !41, i64 616, !41, i64 620, !41, i64 624, !40, i64 628, !41, i64 632, !41, i64 636, !41, i64 640, !41, i64 644, !43, i64 648, !43, i64 650, !43, i64 652, !43, i64 654, !43, i64 656, !43, i64 658, !41, i64 660, !41, i64 664, !43, i64 668, !43, i64 670, !41, i64 672, !41, i64 676, !37, i64 680, !40, i64 1704, !43, i64 1708, !43, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !40, i64 2520, !43, i64 2524, !43, i64 2526, !41, i64 2528, !41, i64 2532, !43, i64 2536, !43, i64 2538, !41, i64 2540, !43, i64 2544, !43, i64 2546, !40, i64 2548, !43, i64 2552, !43, i64 2554, !43, i64 2556, !43, i64 2558, !41, i64 2560, !41, i64 2564, !36, i64 2568, !40, i64 2576, !41, i64 2580, !37, i64 2584, !116, i64 2616, !40, i64 3976, !40, i64 3980}
!111 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !43, i64 8, !43, i64 10, !41, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !112, i64 24, !113, i64 184}
!112 = !{!"ColorManagedViewSettings", !40, i64 0, !40, i64 4, !37, i64 8, !37, i64 72, !41, i64 136, !41, i64 140, !36, i64 144, !36, i64 152}
!113 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!114 = !{!"QuicktimeCodecSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !43, i64 48, !43, i64 50, !40, i64 52, !40, i64 56, !40, i64 60}
!115 = !{!"FFMpegCodecData", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !41, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !36, i64 64}
!116 = !{!"BakeData", !111, i64 0, !37, i64 248, !43, i64 1272, !43, i64 1274, !43, i64 1276, !43, i64 1278, !41, i64 1280, !41, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!117 = !{!"AudioData", !40, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !43, i64 20, !43, i64 22, !41, i64 24, !41, i64 28}
!118 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!119 = !{!"GameData", !118, i64 0, !43, i64 16, !43, i64 18, !43, i64 20, !43, i64 22, !43, i64 24, !43, i64 26, !43, i64 28, !43, i64 30, !43, i64 32, !37, i64 34, !120, i64 40, !43, i64 64, !43, i64 66, !41, i64 68, !121, i64 72, !41, i64 128, !41, i64 132, !40, i64 136, !43, i64 140, !43, i64 142, !43, i64 144, !43, i64 146, !43, i64 148, !43, i64 150, !43, i64 152, !43, i64 154, !43, i64 156, !43, i64 158, !43, i64 160, !43, i64 162, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !41, i64 180}
!120 = !{!"GameDome", !43, i64 0, !43, i64 2, !43, i64 4, !43, i64 6, !41, i64 8, !41, i64 12, !36, i64 16}
!121 = !{!"RecastData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !40, i64 40, !41, i64 44, !41, i64 48, !43, i64 52, !43, i64 54}
!122 = !{!"UnitSettings", !41, i64 0, !37, i64 4, !37, i64 5, !43, i64 6}
!123 = !{!"PhysicsSettings", !37, i64 0, !40, i64 12, !40, i64 16, !40, i64 20}
!124 = !{!"long", !37, i64 0}
!125 = !{!93, !40, i64 2316}
!126 = !{!35, !43, i64 60}
!127 = !{!42, !43, i64 4}
!128 = !{!42, !43, i64 6}
!129 = !{!42, !40, i64 0}
!130 = distinct !{!130, !74, !75}
!131 = !{!109, !40, i64 684}
!132 = distinct !{!132, !74, !75}
!133 = !{!134, !36, i64 0}
!134 = !{!"PrefetchJob", !36, i64 0, !40, i64 8, !40, i64 12, !40, i64 16, !43, i64 20, !43, i64 22}
!135 = !{!134, !40, i64 8}
!136 = !{!134, !40, i64 12}
!137 = !{!134, !40, i64 16}
!138 = !{!134, !43, i64 20}
!139 = !{!134, !43, i64 22}
!140 = !{!141, !37, i64 2080}
!141 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !39, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !43, i64 2084, !43, i64 2086, !43, i64 2088, !37, i64 2090, !43, i64 2092, !40, i64 2096, !40, i64 2100, !37, i64 2104, !40, i64 2108, !40, i64 2112, !37, i64 2116}
!142 = !{!93, !40, i64 1152}
!143 = !{!144, !40, i64 4}
!144 = !{!"PrefetchQueue", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !43, i64 16, !43, i64 18, !37, i64 20, !40, i64 24, !36, i64 32, !36, i64 40, !36, i64 48}
!145 = !{!144, !40, i64 0}
!146 = !{!144, !40, i64 8}
!147 = !{!144, !40, i64 12}
!148 = !{!144, !43, i64 16}
!149 = !{!144, !43, i64 18}
!150 = !{!144, !37, i64 20}
!151 = !{!144, !36, i64 32}
!152 = !{!144, !36, i64 40}
!153 = !{!144, !36, i64 48}
!154 = distinct !{!154, !74, !75}
!155 = !{!43, !43, i64 0}
!156 = distinct !{!156, !74, !75}
!157 = distinct !{!157, !74, !75}
