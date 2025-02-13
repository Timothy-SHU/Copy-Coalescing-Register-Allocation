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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ED_space_clip_poll(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #11
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.SpaceClip, ptr %2, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !5
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

; Function Attrs: optsize
declare ptr @CTX_wm_space_clip(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ED_space_clip_view_clip_poll(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #11
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.SpaceClip, ptr %2, i64 0, i32 14
  %6 = load i16, ptr %5, align 2, !tbaa !18
  %7 = icmp eq i16 %6, 0
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %4
  %10 = phi i32 [ %8, %4 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ED_space_clip_tracking_poll(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #11
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.SpaceClip, ptr %2, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = tail call zeroext i8 @ED_space_clip_check_show_trackedit(ptr noundef nonnull %2) #12, !range !19
  %10 = zext nneg i8 %9 to i32
  br label %11

11:                                               ; preds = %1, %4, %8
  %12 = phi i32 [ %10, %8 ], [ 0, %4 ], [ 0, %1 ]
  ret i32 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @ED_space_clip_check_show_trackedit(ptr noundef readonly %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 13
  %5 = load i16, ptr %4, align 4, !tbaa !20
  %6 = icmp eq i16 %5, 0
  %7 = zext i1 %6 to i8
  br label %8

8:                                                ; preds = %1, %3
  %9 = phi i8 [ %7, %3 ], [ 0, %1 ]
  ret i8 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ED_space_clip_maskedit_poll(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #11
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.SpaceClip, ptr %2, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = tail call zeroext i8 @ED_space_clip_check_show_maskedit(ptr noundef nonnull %2) #12, !range !19
  %10 = zext nneg i8 %9 to i32
  br label %11

11:                                               ; preds = %1, %4, %8
  %12 = phi i32 [ %10, %8 ], [ 0, %4 ], [ 0, %1 ]
  ret i32 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @ED_space_clip_check_show_maskedit(ptr noundef readonly %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 13
  %5 = load i16, ptr %4, align 4, !tbaa !20
  %6 = icmp eq i16 %5, 3
  %7 = zext i1 %6 to i8
  br label %8

8:                                                ; preds = %1, %3
  %9 = phi i8 [ %7, %3 ], [ 0, %1 ]
  ret i8 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ED_space_clip_maskedit_mask_poll(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @ED_space_clip_maskedit_poll(ptr noundef %0) #12, !range !21
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_data_edit_movieclip(ptr noundef %0) #11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #11
  %9 = getelementptr inbounds %struct.SpaceClip, ptr %8, i64 0, i32 28
  %10 = load ptr, ptr %9, align 8, !tbaa !22
  %11 = icmp ne ptr %10, null
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %4, %1, %7
  %14 = phi i32 [ %12, %7 ], [ 0, %1 ], [ 0, %4 ]
  ret i32 %14
}

; Function Attrs: optsize
declare ptr @CTX_data_edit_movieclip(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_space_clip_get_size(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 9
  tail call void @BKE_movieclip_get_size(ptr noundef nonnull %5, ptr noundef nonnull %8, ptr noundef %1, ptr noundef %2) #11
  br label %10

9:                                                ; preds = %3
  store i32 256, ptr %2, align 4, !tbaa !23
  store i32 256, ptr %1, align 4, !tbaa !23
  br label %10

10:                                               ; preds = %9, %7
  ret void
}

; Function Attrs: optsize
declare void @BKE_movieclip_get_size(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_space_clip_get_size_fl(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca [2 x i32], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  %4 = getelementptr inbounds [2 x i32], ptr %3, i64 0, i64 1
  call void @ED_space_clip_get_size(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #12
  %5 = load <2 x i32>, ptr %3, align 8, !tbaa !23
  %6 = sitofp <2 x i32> %5 to <2 x float>
  store <2 x float> %6, ptr %1, align 4, !tbaa !24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_space_clip_get_zoom(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  call void @ED_space_clip_get_size(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6) #12
  %7 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %8 = call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %7) #12
  %9 = add nsw i32 %8, 1
  %10 = sitofp i32 %9 to float
  %11 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1
  %12 = call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %11) #12
  %13 = load i32, ptr %5, align 4, !tbaa !23
  %14 = sitofp i32 %13 to float
  %15 = fmul float %12, %14
  %16 = fdiv float %10, %15
  store float %16, ptr %2, align 4, !tbaa !24
  %17 = call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %7) #12
  %18 = add nsw i32 %17, 1
  %19 = sitofp i32 %18 to float
  %20 = call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %11) #12
  %21 = load i32, ptr %6, align 4, !tbaa !23
  %22 = sitofp i32 %21 to float
  %23 = fmul float %20, %22
  %24 = fdiv float %19, %23
  store float %24, ptr %3, align 4, !tbaa !24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_x(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !25
  %4 = load i32, ptr %0, align 4, !tbaa !27
  %5 = sub nsw i32 %3, %4
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_x(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %3 = load float, ptr %2, align 4, !tbaa !28
  %4 = load float, ptr %0, align 4, !tbaa !30
  %5 = fsub float %3, %4
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_y(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !31
  %4 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !32
  %6 = sub nsw i32 %3, %5
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_y(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %3 = load float, ptr %2, align 4, !tbaa !33
  %4 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = fsub float %3, %5
  ret float %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_space_clip_get_aspect(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @ED_space_clip_get_clip(ptr noundef %0) #12
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  tail call void @BKE_movieclip_get_aspect(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %2) #11
  %7 = load float, ptr %1, align 4, !tbaa !24
  br label %9

8:                                                ; preds = %3
  store float 1.000000e+00, ptr %2, align 4, !tbaa !24
  store float 1.000000e+00, ptr %1, align 4, !tbaa !24
  br label %9

9:                                                ; preds = %8, %6
  %10 = phi float [ 1.000000e+00, %8 ], [ %7, %6 ]
  %11 = load float, ptr %2, align 4, !tbaa !24
  %12 = fcmp olt float %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = fdiv float %11, %10
  store float %14, ptr %2, align 4, !tbaa !24
  br label %17

15:                                               ; preds = %9
  %16 = fdiv float %10, %11
  store float %16, ptr %1, align 4, !tbaa !24
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi ptr [ %2, %15 ], [ %1, %13 ]
  store float 1.000000e+00, ptr %18, align 4, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @ED_space_clip_get_clip(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  ret ptr %3
}

; Function Attrs: optsize
declare void @BKE_movieclip_get_aspect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_space_clip_get_aspect_dimension_aware(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  %6 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  store float 1.000000e+00, ptr %1, align 4, !tbaa !24
  br label %27

10:                                               ; preds = %3
  tail call void @ED_space_clip_get_aspect(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) #12
  %11 = load ptr, ptr %6, align 8, !tbaa !5
  %12 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 9
  call void @BKE_movieclip_get_size(ptr noundef %11, ptr noundef nonnull %12, ptr noundef nonnull %4, ptr noundef nonnull %5) #11
  %13 = load i32, ptr %4, align 4, !tbaa !23
  %14 = sitofp i32 %13 to float
  %15 = load float, ptr %1, align 4, !tbaa !24
  %16 = fmul float %15, %14
  store float %16, ptr %1, align 4, !tbaa !24
  %17 = load i32, ptr %5, align 4, !tbaa !23
  %18 = sitofp i32 %17 to float
  %19 = load float, ptr %2, align 4, !tbaa !24
  %20 = fmul float %19, %18
  store float %20, ptr %2, align 4, !tbaa !24
  %21 = load float, ptr %1, align 4, !tbaa !24
  %22 = fcmp olt float %21, %20
  br i1 %22, label %23, label %25

23:                                               ; preds = %10
  %24 = fdiv float %20, %21
  store float %24, ptr %2, align 4, !tbaa !24
  br label %27

25:                                               ; preds = %10
  %26 = fdiv float %21, %20
  store float %26, ptr %1, align 4, !tbaa !24
  br label %27

27:                                               ; preds = %23, %25, %9
  %28 = phi ptr [ %1, %23 ], [ %2, %25 ], [ %2, %9 ]
  store float 1.000000e+00, ptr %28, align 4, !tbaa !24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ED_space_clip_get_clip_frame_number(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call ptr @ED_space_clip_get_clip(ptr noundef %0) #12
  %3 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !35
  %5 = sitofp i32 %4 to float
  %6 = tail call float @BKE_movieclip_remap_scene_to_clip_frame(ptr noundef %2, float noundef %5) #11
  %7 = fptosi float %6 to i32
  ret i32 %7
}

; Function Attrs: optsize
declare float @BKE_movieclip_remap_scene_to_clip_frame(ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ED_space_clip_get_buffer(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 9
  %7 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 22
  %8 = load i32, ptr %7, align 8, !tbaa !36
  %9 = tail call ptr @BKE_movieclip_get_postprocessed_ibuf(ptr noundef nonnull %3, ptr noundef nonnull %6, i32 noundef %8) #11
  %10 = icmp eq ptr %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !37
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 9
  %17 = load ptr, ptr %16, align 8, !tbaa !40
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  tail call void @IMB_freeImBuf(ptr noundef nonnull %9) #11
  br label %20

20:                                               ; preds = %19, %5, %1, %11, %15
  %21 = phi ptr [ %9, %15 ], [ %9, %11 ], [ null, %1 ], [ null, %5 ], [ null, %19 ]
  ret ptr %21
}

; Function Attrs: optsize
declare ptr @BKE_movieclip_get_postprocessed_ibuf(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ED_space_clip_get_stable_buffer(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %23, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 9
  %10 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 22
  %11 = load i32, ptr %10, align 8, !tbaa !36
  %12 = tail call ptr @BKE_movieclip_get_stable_ibuf(ptr noundef nonnull %6, ptr noundef nonnull %9, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %11) #11
  %13 = icmp eq ptr %12, null
  br i1 %13, label %23, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ImBuf, ptr %12, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !37
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.ImBuf, ptr %12, i64 0, i32 9
  %20 = load ptr, ptr %19, align 8, !tbaa !40
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  tail call void @IMB_freeImBuf(ptr noundef nonnull %12) #11
  br label %23

23:                                               ; preds = %22, %8, %4, %14, %18
  %24 = phi ptr [ %12, %18 ], [ %12, %14 ], [ null, %4 ], [ null, %8 ], [ null, %22 ]
  ret ptr %24
}

; Function Attrs: optsize
declare ptr @BKE_movieclip_get_stable_ibuf(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @ED_space_clip_color_sample(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca [2 x float], align 8
  %7 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 45
  %8 = tail call ptr @IMB_colormanagement_display_get_named(ptr noundef nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #13
  %9 = tail call ptr @ED_space_clip_get_buffer(ptr noundef %1) #12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %69, label %11

11:                                               ; preds = %5
  call void @ED_clip_mouse_pos(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6) #12
  %12 = load <2 x float>, ptr %6, align 8, !tbaa !24
  %13 = extractelement <2 x float> %12, i64 0
  %14 = fcmp oge float %13, 0.000000e+00
  %15 = extractelement <2 x float> %12, i64 1
  %16 = fcmp oge float %15, 0.000000e+00
  %17 = select i1 %14, i1 %16, i1 false
  %18 = fcmp olt float %13, 1.000000e+00
  %19 = and i1 %18, %17
  %20 = fcmp olt float %15, 1.000000e+00
  %21 = select i1 %19, i1 %20, i1 false
  br i1 %21, label %22, label %67

22:                                               ; preds = %11
  %23 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 2
  %24 = load <2 x i32>, ptr %23, align 8, !tbaa !23
  %25 = sitofp <2 x i32> %24 to <2 x float>
  %26 = fmul <2 x float> %12, %25
  %27 = fptosi <2 x float> %26 to <2 x i32>
  %28 = extractelement <2 x i32> %27, i64 0
  %29 = extractelement <2 x i32> %24, i64 0
  %30 = icmp sgt i32 %29, %28
  %31 = add nsw i32 %29, -1
  %32 = select i1 %30, i32 %28, i32 %31
  %33 = icmp slt <2 x i32> %27, zeroinitializer
  %34 = extractelement <2 x i1> %33, i64 0
  %35 = select i1 %34, i32 0, i32 %32
  %36 = extractelement <2 x i32> %27, i64 1
  %37 = extractelement <2 x i32> %24, i64 1
  %38 = icmp sgt i32 %37, %36
  %39 = add nsw i32 %37, -1
  %40 = select i1 %38, i32 %36, i32 %39
  %41 = extractelement <2 x i1> %33, i64 1
  %42 = select i1 %41, i32 0, i32 %40
  %43 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 9
  %44 = load ptr, ptr %43, align 8, !tbaa !40
  %45 = icmp eq ptr %44, null
  br i1 %45, label %54, label %46

46:                                               ; preds = %22
  %47 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 5
  %48 = load i32, ptr %47, align 4, !tbaa !41
  %49 = mul nsw i32 %42, %29
  %50 = add nsw i32 %49, %35
  %51 = mul nsw i32 %48, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds float, ptr %44, i64 %52
  tail call fastcc void @copy_v3_v3(ptr noundef %4, ptr noundef nonnull %53) #12
  br label %66

54:                                               ; preds = %22
  %55 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 8
  %56 = load ptr, ptr %55, align 8, !tbaa !37
  %57 = icmp eq ptr %56, null
  br i1 %57, label %67, label %58

58:                                               ; preds = %54
  %59 = mul nsw i32 %42, %29
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, ptr %56, i64 %60
  %62 = sext i32 %35 to i64
  %63 = getelementptr inbounds i32, ptr %61, i64 %62
  tail call void @rgb_uchar_to_float(ptr noundef %4, ptr noundef nonnull %63) #11
  %64 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 34
  %65 = load ptr, ptr %64, align 8, !tbaa !42
  tail call void @IMB_colormanagement_colorspace_to_scene_linear_v3(ptr noundef %4, ptr noundef %65) #11
  br label %66

66:                                               ; preds = %58, %46
  tail call void @IMB_colormanagement_scene_linear_to_display_v3(ptr noundef %4, ptr noundef %8) #11
  br label %67

67:                                               ; preds = %54, %11, %66
  %68 = phi i8 [ 1, %66 ], [ 0, %11 ], [ 0, %54 ]
  tail call void @IMB_freeImBuf(ptr noundef nonnull %9) #11
  br label %69

69:                                               ; preds = %5, %67
  %70 = phi i8 [ %68, %67 ], [ 0, %5 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  ret i8 %70
}

; Function Attrs: optsize
declare ptr @IMB_colormanagement_display_get_named(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_clip_mouse_pos(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = load i32, ptr %2, align 4, !tbaa !23
  %6 = sitofp i32 %5 to float
  %7 = getelementptr inbounds i32, ptr %2, i64 1
  %8 = load i32, ptr %7, align 4, !tbaa !23
  %9 = sitofp i32 %8 to float
  %10 = getelementptr inbounds float, ptr %3, i64 1
  tail call void @ED_clip_point_stable_pos(ptr noundef %0, ptr noundef %1, float noundef %6, float noundef %9, ptr noundef %3, ptr noundef nonnull %10) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 {
  %3 = load float, ptr %1, align 4, !tbaa !24
  store float %3, ptr %0, align 4, !tbaa !24
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !24
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !24
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !24
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !24
  ret void
}

; Function Attrs: optsize
declare void @rgb_uchar_to_float(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_colormanagement_colorspace_to_scene_linear_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_colormanagement_scene_linear_to_display_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_clip_update_frame(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 40
  %4 = load ptr, ptr %3, align 8, !tbaa !43
  %5 = icmp eq ptr %4, null
  br i1 %5, label %37, label %9

6:                                                ; preds = %14, %9
  %7 = load ptr, ptr %10, align 8, !tbaa !43
  %8 = icmp eq ptr %7, null
  br i1 %8, label %37, label %9, !llvm.loop !44

9:                                                ; preds = %2, %6
  %10 = phi ptr [ %7, %6 ], [ %4, %2 ]
  %11 = getelementptr inbounds %struct.wmWindowManager, ptr %10, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !43
  %13 = icmp eq ptr %12, null
  br i1 %13, label %6, label %17

14:                                               ; preds = %34, %17
  %15 = load ptr, ptr %18, align 8, !tbaa !43
  %16 = icmp eq ptr %15, null
  br i1 %16, label %6, label %17, !llvm.loop !46

17:                                               ; preds = %9, %14
  %18 = phi ptr [ %15, %14 ], [ %12, %9 ]
  %19 = getelementptr inbounds %struct.wmWindow, ptr %18, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !47
  %21 = getelementptr inbounds %struct.bScreen, ptr %20, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !43
  %23 = icmp eq ptr %22, null
  br i1 %23, label %14, label %24

24:                                               ; preds = %17, %34
  %25 = phi ptr [ %35, %34 ], [ %22, %17 ]
  %26 = getelementptr inbounds %struct.ScrArea, ptr %25, i64 0, i32 8
  %27 = load i8, ptr %26, align 8, !tbaa !49
  %28 = icmp eq i8 %27, 20
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.ScrArea, ptr %25, i64 0, i32 19
  %31 = load ptr, ptr %30, align 8, !tbaa !51
  %32 = getelementptr inbounds %struct.SpaceClip, ptr %31, i64 0, i32 11
  store i16 0, ptr %32, align 8, !tbaa !52
  %33 = getelementptr inbounds %struct.SpaceClip, ptr %31, i64 0, i32 9
  tail call void @BKE_movieclip_user_set_frame(ptr noundef nonnull %33, i32 noundef %1) #11
  br label %34

34:                                               ; preds = %24, %29
  %35 = load ptr, ptr %25, align 8, !tbaa !43
  %36 = icmp eq ptr %35, null
  br i1 %36, label %14, label %24, !llvm.loop !53

37:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: optsize
declare void @BKE_movieclip_user_set_frame(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @ED_clip_view_selection(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [2 x float], align 8
  %7 = alloca [2 x float], align 8
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #13
  call void @ED_space_clip_get_size(ptr noundef %10, ptr noundef nonnull %4, ptr noundef nonnull %5) #12
  %11 = load i32, ptr %4, align 4, !tbaa !23
  %12 = icmp eq i32 %11, 0
  %13 = load i32, ptr %5, align 4
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %12, i1 true, i1 %14
  br i1 %15, label %78, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.SpaceClip, ptr %10, i64 0, i32 10
  %18 = load ptr, ptr %17, align 8, !tbaa !5
  %19 = icmp eq ptr %18, null
  br i1 %19, label %78, label %20

20:                                               ; preds = %16
  %21 = call fastcc zeroext i8 @selected_boundbox(ptr noundef nonnull %10, ptr noundef nonnull %6, ptr noundef nonnull %7) #12, !range !19
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %78, label %23

23:                                               ; preds = %20
  %24 = load float, ptr %7, align 8, !tbaa !24
  %25 = load float, ptr %6, align 8, !tbaa !24
  %26 = fadd float %24, %25
  %27 = load i32, ptr %4, align 4, !tbaa !23
  %28 = shl nsw i32 %27, 1
  %29 = sitofp i32 %28 to float
  %30 = fdiv float %26, %29
  %31 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  %32 = load float, ptr %31, align 4, !tbaa !24
  %33 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !24
  %35 = fadd float %32, %34
  %36 = load i32, ptr %5, align 4, !tbaa !23
  %37 = shl nsw i32 %36, 1
  %38 = sitofp i32 %37 to float
  %39 = fdiv float %35, %38
  call void @clip_view_center_to_point(ptr noundef nonnull %10, float noundef %30, float noundef %39) #11
  %40 = load <2 x float>, ptr %7, align 8, !tbaa !24
  %41 = load <2 x float>, ptr %6, align 8, !tbaa !24
  %42 = fsub <2 x float> %40, %41
  %43 = fptosi <2 x float> %42 to <2 x i32>
  %44 = icmp sgt <2 x i32> %43, zeroinitializer
  %45 = extractelement <2 x i1> %44, i64 0
  %46 = extractelement <2 x i1> %44, i64 1
  %47 = select i1 %45, i1 %46, i1 false
  br i1 %47, label %48, label %78

48:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #13
  call void @ED_space_clip_get_aspect(ptr noundef nonnull %10, ptr noundef nonnull %8, ptr noundef nonnull %9) #12
  %49 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %50 = call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %49) #12
  %51 = add nsw i32 %50, 1
  %52 = call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %49) #12
  %53 = add nsw i32 %52, 1
  %54 = sitofp i32 %51 to float
  %55 = extractelement <2 x i32> %43, i64 0
  %56 = sitofp i32 %55 to float
  %57 = fdiv float %54, %56
  %58 = load float, ptr %8, align 4, !tbaa !24
  %59 = fdiv float %57, %58
  %60 = sitofp i32 %53 to float
  %61 = extractelement <2 x i32> %43, i64 1
  %62 = sitofp i32 %61 to float
  %63 = fdiv float %60, %62
  %64 = load float, ptr %9, align 4, !tbaa !24
  %65 = fdiv float %63, %64
  %66 = call fastcc float @min_ff(float noundef %59, float noundef %65) #12
  %67 = fdiv float 1.000000e+00, %66
  %68 = call fastcc float @power_of_2(float noundef %67) #12
  %69 = fdiv float 1.000000e+00, %68
  %70 = icmp eq i8 %2, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %48
  %72 = getelementptr inbounds %struct.SpaceClip, ptr %10, i64 0, i32 8
  %73 = load float, ptr %72, align 4, !tbaa !54
  %74 = fcmp ogt float %73, %69
  br i1 %74, label %75, label %77

75:                                               ; preds = %71, %48
  %76 = getelementptr inbounds %struct.SpaceClip, ptr %10, i64 0, i32 8
  store float %69, ptr %76, align 4, !tbaa !54
  br label %77

77:                                               ; preds = %75, %71
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #13
  br label %78

78:                                               ; preds = %23, %77, %20, %3, %16
  %79 = phi i8 [ 0, %16 ], [ 0, %3 ], [ 0, %20 ], [ 1, %77 ], [ 1, %23 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret i8 %79
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @selected_boundbox(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [3 x float], align 8
  %7 = tail call ptr @ED_space_clip_get_clip(ptr noundef %0) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  %8 = getelementptr inbounds %struct.MovieClip, ptr %7, i64 0, i32 11
  %9 = tail call ptr @BKE_tracking_get_active_tracks(ptr noundef nonnull %8) #11
  %10 = tail call i32 @ED_space_clip_get_clip_frame_number(ptr noundef %0) #12
  store <2 x float> <float 0x46293E5940000000, float 0x46293E5940000000>, ptr %1, align 4, !tbaa !24
  store <2 x float> <float 0xC6293E5940000000, float 0xC6293E5940000000>, ptr %2, align 4, !tbaa !24
  call void @ED_space_clip_get_size(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5) #12
  %11 = load ptr, ptr %9, align 8, !tbaa !43
  %12 = icmp eq ptr %11, null
  br i1 %12, label %70, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 12
  %15 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %16 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 9, i32 2
  %17 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 20
  br label %18

18:                                               ; preds = %13, %66
  %19 = phi ptr [ %11, %13 ], [ %68, %66 ]
  %20 = phi i8 [ 0, %13 ], [ %67, %66 ]
  %21 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %19, i64 0, i32 13
  %22 = load i32, ptr %21, align 8, !tbaa !55
  %23 = and i32 %22, 32
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %66

25:                                               ; preds = %18
  %26 = and i32 %22, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %25
  %29 = load i32, ptr %14, align 8, !tbaa !57
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %19, i64 0, i32 14
  %34 = load i32, ptr %33, align 4, !tbaa !58
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %32, %28
  %38 = and i32 %29, 2
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %66, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %19, i64 0, i32 15
  %42 = load i32, ptr %41, align 8, !tbaa !59
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %66, label %45

45:                                               ; preds = %40, %32, %25
  %46 = call ptr @BKE_tracking_marker_get(ptr noundef nonnull %19, i32 noundef %10) #11
  %47 = icmp eq ptr %46, null
  br i1 %47, label %66, label %48

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #13
  %49 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %19, i64 0, i32 7
  %50 = load <2 x float>, ptr %46, align 4, !tbaa !24
  %51 = load <2 x float>, ptr %49, align 8, !tbaa !24
  %52 = fadd <2 x float> %50, %51
  store <2 x float> %52, ptr %6, align 8, !tbaa !24
  store float 0.000000e+00, ptr %15, align 8, !tbaa !24
  %53 = load i16, ptr %16, align 2, !tbaa !60
  %54 = and i16 %53, 1
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %48
  call void @ED_clip_point_undistorted_pos(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef nonnull %6) #12
  %57 = load <2 x float>, ptr %6, align 8, !tbaa !24
  br label %58

58:                                               ; preds = %56, %48
  %59 = phi <2 x float> [ %57, %56 ], [ %52, %48 ]
  %60 = load i32, ptr %4, align 4, !tbaa !23
  %61 = load i32, ptr %5, align 4, !tbaa !23
  %62 = insertelement <2 x i32> poison, i32 %60, i64 0
  %63 = insertelement <2 x i32> %62, i32 %61, i64 1
  %64 = sitofp <2 x i32> %63 to <2 x float>
  %65 = fmul <2 x float> %59, %64
  store <2 x float> %65, ptr %6, align 8, !tbaa !24
  call void @mul_v3_m4v3(ptr noundef nonnull %6, ptr noundef nonnull %17, ptr noundef nonnull %6) #11
  call void @minmax_v2v2_v2(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #13
  br label %66

66:                                               ; preds = %45, %58, %40, %37, %18
  %67 = phi i8 [ %20, %40 ], [ %20, %37 ], [ %20, %18 ], [ 1, %58 ], [ %20, %45 ]
  %68 = load ptr, ptr %19, align 8, !tbaa !43
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %18, !llvm.loop !61

70:                                               ; preds = %66, %3
  %71 = phi i8 [ 0, %3 ], [ %67, %66 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret i8 %71
}

; Function Attrs: optsize
declare void @clip_view_center_to_point(ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @power_of_2(float noundef %0) unnamed_addr #0 {
  %2 = fpext float %0 to double
  %3 = tail call double @log(double noundef %2) #11
  %4 = fdiv double %3, 0x3FE62E42FEFA39EF
  %5 = tail call double @llvm.ceil.f64(double %4)
  %6 = tail call double @exp2(double %5) #13
  %7 = fptrunc double %6 to float
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0, float noundef %1) unnamed_addr #5 {
  %3 = fcmp olt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_clip_point_undistorted_pos(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  tail call fastcc void @copy_v2_v2(ptr noundef %2, ptr noundef %1) #12
  %6 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 9, i32 2
  %7 = load i16, ptr %6, align 2, !tbaa !60
  %8 = and i16 %7, 1
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %37, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 9
  %12 = tail call ptr @ED_space_clip_get_clip(ptr noundef nonnull %0) #12
  %13 = getelementptr inbounds %struct.MovieClip, ptr %12, i64 0, i32 11
  %14 = getelementptr inbounds %struct.MovieClip, ptr %12, i64 0, i32 11, i32 1, i32 4
  %15 = load float, ptr %14, align 8, !tbaa !62
  %16 = fdiv float 1.000000e+00, %15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  %17 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 10
  %18 = load ptr, ptr %17, align 8, !tbaa !5
  call void @BKE_movieclip_get_size(ptr noundef %18, ptr noundef nonnull %11, ptr noundef nonnull %4, ptr noundef nonnull %5) #11
  %19 = load i32, ptr %4, align 4, !tbaa !23
  %20 = sitofp i32 %19 to float
  %21 = load i32, ptr %5, align 4, !tbaa !23
  %22 = sitofp i32 %21 to float
  %23 = fmul float %16, %22
  %24 = load <2 x float>, ptr %2, align 4, !tbaa !24
  %25 = insertelement <2 x float> poison, float %20, i64 0
  %26 = insertelement <2 x float> %25, float %23, i64 1
  %27 = fmul <2 x float> %24, %26
  store <2 x float> %27, ptr %2, align 4, !tbaa !24
  call void @BKE_tracking_undistort_v2(ptr noundef nonnull %13, ptr noundef nonnull %2, ptr noundef nonnull %2) #11
  %28 = load i32, ptr %4, align 4, !tbaa !23
  %29 = sitofp i32 %28 to float
  %30 = load i32, ptr %5, align 4, !tbaa !23
  %31 = sitofp i32 %30 to float
  %32 = fmul float %16, %31
  %33 = load <2 x float>, ptr %2, align 4, !tbaa !24
  %34 = insertelement <2 x float> poison, float %29, i64 0
  %35 = insertelement <2 x float> %34, float %32, i64 1
  %36 = fdiv <2 x float> %33, %35
  store <2 x float> %36, ptr %2, align 4, !tbaa !24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  br label %37

37:                                               ; preds = %10, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 {
  %3 = load float, ptr %1, align 4, !tbaa !24
  store float %3, ptr %0, align 4, !tbaa !24
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !24
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !24
  ret void
}

; Function Attrs: optsize
declare void @BKE_tracking_undistort_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_clip_point_stable_pos(ptr noundef %0, ptr noundef %1, float noundef %2, float noundef %3, ptr nocapture noundef %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca [3 x float], align 8
  %14 = alloca [4 x [4 x float]], align 16
  %15 = alloca [2 x float], align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %14) #13
  call void @ED_space_clip_get_zoom(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %11, ptr noundef nonnull %12) #12
  call void @ED_space_clip_get_size(ptr noundef %0, ptr noundef nonnull %9, ptr noundef nonnull %10) #12
  %16 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  call void @UI_view2d_view_to_region(ptr noundef nonnull %16, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull %7, ptr noundef nonnull %8) #11
  %17 = load i32, ptr %7, align 4, !tbaa !23
  %18 = load float, ptr %11, align 4, !tbaa !24
  %19 = load i32, ptr %8, align 4, !tbaa !23
  %20 = load float, ptr %12, align 4, !tbaa !24
  %21 = getelementptr inbounds [3 x float], ptr %13, i64 0, i64 1
  %22 = insertelement <2 x i32> poison, i32 %17, i64 0
  %23 = insertelement <2 x i32> %22, i32 %19, i64 1
  %24 = sitofp <2 x i32> %23 to <2 x float>
  %25 = insertelement <2 x float> poison, float %2, i64 0
  %26 = insertelement <2 x float> %25, float %3, i64 1
  %27 = fsub <2 x float> %26, %24
  %28 = insertelement <2 x float> poison, float %18, i64 0
  %29 = insertelement <2 x float> %28, float %20, i64 1
  %30 = fdiv <2 x float> %27, %29
  store <2 x float> %30, ptr %13, align 8, !tbaa !24
  %31 = getelementptr inbounds [3 x float], ptr %13, i64 0, i64 2
  store float 0.000000e+00, ptr %31, align 8, !tbaa !24
  %32 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 20
  %33 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %14, ptr noundef nonnull %32) #11
  call void @mul_v3_m4v3(ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %13) #11
  %34 = load float, ptr %13, align 8, !tbaa !24
  %35 = load i32, ptr %9, align 4, !tbaa !23
  %36 = sitofp i32 %35 to float
  %37 = fdiv float %34, %36
  store float %37, ptr %4, align 4, !tbaa !24
  %38 = load float, ptr %21, align 4, !tbaa !24
  %39 = load i32, ptr %10, align 4, !tbaa !23
  %40 = sitofp i32 %39 to float
  %41 = fdiv float %38, %40
  store float %41, ptr %5, align 4, !tbaa !24
  %42 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 9, i32 2
  %43 = load i16, ptr %42, align 2, !tbaa !60
  %44 = and i16 %43, 1
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %69, label %46

46:                                               ; preds = %6
  %47 = call ptr @ED_space_clip_get_clip(ptr noundef nonnull %0) #12
  %48 = getelementptr inbounds %struct.MovieClip, ptr %47, i64 0, i32 11
  %49 = getelementptr inbounds %struct.MovieClip, ptr %47, i64 0, i32 11, i32 1, i32 4
  %50 = load float, ptr %49, align 8, !tbaa !73
  %51 = fdiv float 1.000000e+00, %50
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #13
  %52 = load float, ptr %4, align 4, !tbaa !24
  %53 = getelementptr inbounds float, ptr %15, i64 1
  %54 = fmul float %41, %40
  %55 = insertelement <2 x float> poison, float %52, i64 0
  %56 = insertelement <2 x float> %55, float %54, i64 1
  %57 = insertelement <2 x float> poison, float %36, i64 0
  %58 = insertelement <2 x float> %57, float %51, i64 1
  %59 = fmul <2 x float> %56, %58
  store <2 x float> %59, ptr %15, align 8, !tbaa !24
  call void @BKE_tracking_distort_v2(ptr noundef nonnull %48, ptr noundef nonnull %15, ptr noundef nonnull %15) #11
  %60 = load float, ptr %15, align 8, !tbaa !24
  %61 = load i32, ptr %9, align 4, !tbaa !23
  %62 = sitofp i32 %61 to float
  %63 = fdiv float %60, %62
  store float %63, ptr %4, align 4, !tbaa !24
  %64 = load float, ptr %53, align 4, !tbaa !24
  %65 = load i32, ptr %10, align 4, !tbaa !23
  %66 = sitofp i32 %65 to float
  %67 = fmul float %51, %66
  %68 = fdiv float %64, %67
  store float %68, ptr %5, align 4, !tbaa !24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #13
  br label %69

69:                                               ; preds = %46, %6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %14) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  ret void
}

; Function Attrs: optsize
declare void @UI_view2d_view_to_region(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_v3_m4v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_tracking_distort_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_clip_point_stable_pos__reverse(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca [3 x float], align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #13
  %12 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  call void @UI_view2d_view_to_region(ptr noundef nonnull %12, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull %10, ptr noundef nonnull %11) #11
  call void @ED_space_clip_get_size(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %9) #12
  call void @ED_space_clip_get_zoom(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %6) #12
  call void @ED_clip_point_undistorted_pos(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %7) #12
  %13 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  store float 0.000000e+00, ptr %13, align 8, !tbaa !24
  %14 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 20
  call void @mul_v3_m4v3(ptr noundef nonnull %7, ptr noundef nonnull %14, ptr noundef nonnull %7) #11
  %15 = load i32, ptr %8, align 4, !tbaa !23
  %16 = load float, ptr %5, align 4, !tbaa !24
  %17 = load i32, ptr %10, align 4, !tbaa !23
  %18 = load i32, ptr %9, align 4, !tbaa !23
  %19 = load float, ptr %6, align 4, !tbaa !24
  %20 = load i32, ptr %11, align 4, !tbaa !23
  %21 = load <2 x float>, ptr %7, align 8, !tbaa !24
  %22 = insertelement <2 x i32> poison, i32 %15, i64 0
  %23 = insertelement <2 x i32> %22, i32 %18, i64 1
  %24 = sitofp <2 x i32> %23 to <2 x float>
  %25 = fmul <2 x float> %21, %24
  %26 = insertelement <2 x i32> poison, i32 %17, i64 0
  %27 = insertelement <2 x i32> %26, i32 %20, i64 1
  %28 = sitofp <2 x i32> %27 to <2 x float>
  %29 = insertelement <2 x float> poison, float %16, i64 0
  %30 = insertelement <2 x float> %29, float %19, i64 1
  %31 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %25, <2 x float> %30, <2 x float> %28)
  store <2 x float> %31, ptr %3, align 4, !tbaa !24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_space_clip_set_clip(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %1, null
  %6 = icmp ne ptr %0, null
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = tail call ptr @CTX_wm_screen(ptr noundef nonnull %0) #11
  br label %10

10:                                               ; preds = %8, %4
  %11 = phi ptr [ %9, %8 ], [ %1, %4 ]
  %12 = getelementptr inbounds %struct.SpaceClip, ptr %2, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !5
  store ptr %3, ptr %12, align 8, !tbaa !5
  tail call void @id_us_ensure_real(ptr noundef %3) #11
  %14 = icmp eq ptr %11, null
  br i1 %14, label %60, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.SpaceClip, ptr %2, i64 0, i32 14
  %17 = load i16, ptr %16, align 2, !tbaa !18
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %19, label %60

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.bScreen, ptr %11, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !43
  %22 = icmp eq ptr %21, null
  br i1 %22, label %60, label %27

23:                                               ; preds = %54, %27
  %24 = phi i8 [ %29, %27 ], [ %55, %54 ]
  %25 = load ptr, ptr %28, align 8, !tbaa !43
  %26 = icmp eq ptr %25, null
  br i1 %26, label %58, label %27, !llvm.loop !74

27:                                               ; preds = %19, %23
  %28 = phi ptr [ %25, %23 ], [ %21, %19 ]
  %29 = phi i8 [ %24, %23 ], [ 0, %19 ]
  %30 = getelementptr inbounds %struct.ScrArea, ptr %28, i64 0, i32 19
  %31 = load ptr, ptr %30, align 8, !tbaa !43
  %32 = icmp eq ptr %31, null
  br i1 %32, label %23, label %33

33:                                               ; preds = %27, %54
  %34 = phi ptr [ %56, %54 ], [ %31, %27 ]
  %35 = phi i8 [ %55, %54 ], [ %29, %27 ]
  %36 = getelementptr inbounds %struct.SpaceLink, ptr %34, i64 0, i32 3
  %37 = load i32, ptr %36, align 8, !tbaa !75
  %38 = icmp ne i32 %37, 20
  %39 = icmp eq ptr %34, %2
  %40 = or i1 %39, %38
  br i1 %40, label %54, label %41

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.SpaceClip, ptr %34, i64 0, i32 14
  %43 = load i16, ptr %42, align 2, !tbaa !18
  %44 = icmp eq i16 %43, 0
  %45 = getelementptr inbounds %struct.SpaceClip, ptr %34, i64 0, i32 10
  %46 = load ptr, ptr %45, align 8, !tbaa !5
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
  store ptr %3, ptr %45, align 8, !tbaa !5
  br label %54

54:                                               ; preds = %48, %53, %50, %33
  %55 = phi i8 [ %35, %33 ], [ %35, %53 ], [ %49, %48 ], [ %35, %50 ]
  %56 = load ptr, ptr %34, align 8, !tbaa !43
  %57 = icmp eq ptr %56, null
  br i1 %57, label %23, label %33, !llvm.loop !77

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
  tail call void @BKE_movieclip_clear_cache(ptr noundef nonnull %13) #11
  br label %67

67:                                               ; preds = %66, %60
  br i1 %6, label %68, label %70

68:                                               ; preds = %67
  %69 = load ptr, ptr %12, align 8, !tbaa !5
  tail call void @WM_event_add_notifier(ptr noundef nonnull %0, i32 noundef 335544326, ptr noundef %69) #11
  br label %70

70:                                               ; preds = %68, %67
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_wm_screen(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @id_us_ensure_real(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_movieclip_clear_cache(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @ED_space_clip_get_mask(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 28
  %3 = load ptr, ptr %2, align 8, !tbaa !22
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_space_clip_set_mask(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.SpaceClip, ptr %1, i64 0, i32 28
  store ptr %2, ptr %4, align 8, !tbaa !22
  tail call void @id_us_ensure_real(ptr noundef %2) #11
  %5 = icmp eq ptr %0, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @WM_event_add_notifier(ptr noundef nonnull %0, i32 noundef 352321542, ptr noundef %2) #11
  br label %7

7:                                                ; preds = %6, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @clip_start_prefetch_job(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #11
  %3 = tail call fastcc zeroext i8 @prefetch_check_early_out(ptr noundef %0) #12, !range !19
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %24

5:                                                ; preds = %1
  %6 = tail call ptr @CTX_wm_manager(ptr noundef %0) #11
  %7 = tail call ptr @CTX_wm_window(ptr noundef %0) #11
  %8 = tail call ptr @CTX_wm_area(ptr noundef %0) #11
  %9 = tail call ptr @WM_jobs_get(ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef nonnull @.str, i32 noundef 4, i32 noundef 13) #11
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !43
  %11 = tail call ptr %10(i64 noundef 24, ptr noundef nonnull @.str.1) #11
  %12 = tail call ptr @ED_space_clip_get_clip(ptr noundef %2) #12
  store ptr %12, ptr %11, align 8, !tbaa !78
  %13 = tail call fastcc i32 @prefetch_get_start_frame(ptr noundef %0) #12
  %14 = getelementptr inbounds %struct.PrefetchJob, ptr %11, i64 0, i32 1
  store i32 %13, ptr %14, align 8, !tbaa !80
  %15 = getelementptr inbounds %struct.SpaceClip, ptr %2, i64 0, i32 9
  %16 = load i32, ptr %15, align 8, !tbaa !35
  %17 = getelementptr inbounds %struct.PrefetchJob, ptr %11, i64 0, i32 2
  store i32 %16, ptr %17, align 4, !tbaa !81
  %18 = tail call fastcc i32 @prefetch_get_final_frame(ptr noundef %0) #12
  %19 = getelementptr inbounds %struct.PrefetchJob, ptr %11, i64 0, i32 3
  store i32 %18, ptr %19, align 8, !tbaa !82
  %20 = getelementptr inbounds %struct.SpaceClip, ptr %2, i64 0, i32 9, i32 1
  %21 = getelementptr inbounds %struct.PrefetchJob, ptr %11, i64 0, i32 4
  %22 = load <2 x i16>, ptr %20, align 4, !tbaa !83
  store <2 x i16> %22, ptr %21, align 4, !tbaa !83
  tail call void @WM_jobs_customdata_set(ptr noundef %9, ptr noundef nonnull %11, ptr noundef nonnull @prefetch_freejob) #11
  tail call void @WM_jobs_timer(ptr noundef %9, double noundef 2.000000e-01, i32 noundef 338886656, i32 noundef 0) #11
  tail call void @WM_jobs_callbacks(ptr noundef %9, ptr noundef nonnull @prefetch_startjob, ptr noundef null, ptr noundef null, ptr noundef null) #11
  store i8 0, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !84
  %23 = tail call ptr @CTX_wm_manager(ptr noundef %0) #11
  tail call void @WM_jobs_start(ptr noundef %23, ptr noundef %9) #11
  br label %24

24:                                               ; preds = %1, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @prefetch_check_early_out(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #11
  %3 = tail call ptr @ED_space_clip_get_clip(ptr noundef %2) #12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @BKE_movieclip_get_duration(ptr noundef nonnull %3) #11
  %7 = tail call fastcc i32 @prefetch_get_final_frame(ptr noundef %0) #12
  %8 = getelementptr inbounds %struct.SpaceClip, ptr %2, i64 0, i32 9
  %9 = load i32, ptr %8, align 8, !tbaa !35
  %10 = getelementptr inbounds %struct.SpaceClip, ptr %2, i64 0, i32 9, i32 1
  %11 = load i16, ptr %10, align 4, !tbaa !86
  %12 = getelementptr inbounds %struct.SpaceClip, ptr %2, i64 0, i32 9, i32 2
  %13 = load i16, ptr %12, align 2, !tbaa !60
  %14 = tail call fastcc i32 @prefetch_find_uncached_frame(ptr noundef nonnull %3, i32 noundef %9, i32 noundef %7, i16 noundef signext %11, i16 noundef signext %13, i16 noundef signext 1) #12
  %15 = icmp sgt i32 %14, %7
  %16 = icmp eq i32 %14, %6
  %17 = select i1 %15, i1 true, i1 %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %5
  %19 = tail call fastcc i32 @prefetch_get_start_frame(ptr noundef %0) #12
  %20 = load i32, ptr %8, align 8, !tbaa !35
  %21 = load i16, ptr %10, align 4, !tbaa !86
  %22 = load i16, ptr %12, align 2, !tbaa !60
  %23 = tail call fastcc i32 @prefetch_find_uncached_frame(ptr noundef nonnull %3, i32 noundef %20, i32 noundef %19, i16 noundef signext %21, i16 noundef signext %22, i16 noundef signext -1) #12
  %24 = icmp slt i32 %23, %19
  br i1 %24, label %26, label %25

25:                                               ; preds = %5, %18
  br label %26

26:                                               ; preds = %1, %18, %25
  %27 = phi i8 [ 0, %25 ], [ 1, %18 ], [ 1, %1 ]
  ret i8 %27
}

; Function Attrs: optsize
declare ptr @WM_jobs_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @prefetch_get_start_frame(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @CTX_data_scene(ptr noundef %0) #11
  %3 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 6
  %4 = load i32, ptr %3, align 4, !tbaa !87
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @prefetch_get_final_frame(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @CTX_data_scene(ptr noundef %0) #11
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #11
  %4 = tail call ptr @ED_space_clip_get_clip(ptr noundef %3) #12
  %5 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !104
  %7 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 15
  %8 = load i32, ptr %7, align 4, !tbaa !105
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = tail call fastcc i32 @min_ii(i32 noundef %6, i32 noundef %8) #12
  br label %12

12:                                               ; preds = %10, %1
  %13 = phi i32 [ %11, %10 ], [ %6, %1 ]
  ret i32 %13
}

; Function Attrs: optsize
declare void @WM_jobs_customdata_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @prefetch_freejob(ptr noundef %0) #0 {
  %2 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %2(ptr noundef %0) #11
  ret void
}

; Function Attrs: optsize
declare void @WM_jobs_timer(ptr noundef, double noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_jobs_callbacks(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @prefetch_startjob(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = load ptr, ptr %0, align 8, !tbaa !78
  %6 = getelementptr inbounds %struct.MovieClip, ptr %5, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !106
  switch i32 %7, label %30 [
    i32 1, label %8
    i32 2, label %19
  ]

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.PrefetchJob, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !80
  %11 = getelementptr inbounds %struct.PrefetchJob, ptr %0, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !81
  %13 = getelementptr inbounds %struct.PrefetchJob, ptr %0, i64 0, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !82
  %15 = getelementptr inbounds %struct.PrefetchJob, ptr %0, i64 0, i32 4
  %16 = load i16, ptr %15, align 4, !tbaa !107
  %17 = getelementptr inbounds %struct.PrefetchJob, ptr %0, i64 0, i32 5
  %18 = load i16, ptr %17, align 2, !tbaa !108
  tail call fastcc void @start_prefetch_threads(ptr noundef nonnull %5, i32 noundef %10, i32 noundef %12, i32 noundef %14, i16 noundef signext %16, i16 noundef signext %18, ptr noundef %1, ptr noundef %2, ptr noundef %3) #12
  br label %30

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.PrefetchJob, ptr %0, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !80
  %22 = getelementptr inbounds %struct.PrefetchJob, ptr %0, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !81
  %24 = getelementptr inbounds %struct.PrefetchJob, ptr %0, i64 0, i32 3
  %25 = load i32, ptr %24, align 8, !tbaa !82
  %26 = getelementptr inbounds %struct.PrefetchJob, ptr %0, i64 0, i32 4
  %27 = load i16, ptr %26, align 4, !tbaa !107
  %28 = getelementptr inbounds %struct.PrefetchJob, ptr %0, i64 0, i32 5
  %29 = load i16, ptr %28, align 2, !tbaa !108
  tail call fastcc void @do_prefetch_movie(ptr noundef nonnull %5, i32 noundef %21, i32 noundef %23, i32 noundef %25, i16 noundef signext %27, i16 noundef signext %29, ptr noundef %1, ptr noundef %2, ptr noundef %3) #12
  br label %30

30:                                               ; preds = %4, %19, %8
  ret void
}

; Function Attrs: optsize
declare void @WM_jobs_start(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_tracking_get_active_tracks(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_tracking_marker_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @minmax_v2v2_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @log(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #7

; Function Attrs: optsize
declare i32 @BKE_movieclip_get_duration(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @prefetch_find_uncached_frame(ptr noundef %0, i32 noundef %1, i32 noundef %2, i16 noundef signext %3, i16 noundef signext %4, i16 noundef signext %5) unnamed_addr #0 {
  %7 = alloca %struct.MovieClipUser, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #13
  store i64 0, ptr %7, align 8
  %8 = getelementptr inbounds %struct.MovieClipUser, ptr %7, i64 0, i32 1
  store i16 %3, ptr %8, align 4, !tbaa !109
  %9 = getelementptr inbounds %struct.MovieClipUser, ptr %7, i64 0, i32 2
  store i16 %4, ptr %9, align 2, !tbaa !110
  %10 = icmp sgt i16 %5, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  %12 = icmp slt i32 %1, %2
  br i1 %12, label %31, label %24

13:                                               ; preds = %6
  %14 = icmp sgt i32 %1, %2
  br i1 %14, label %31, label %15

15:                                               ; preds = %13
  %16 = add i32 %2, 1
  br label %17

17:                                               ; preds = %15, %21
  %18 = phi i32 [ %22, %21 ], [ %1, %15 ]
  store i32 %18, ptr %7, align 8, !tbaa !111
  %19 = call zeroext i8 @BKE_movieclip_has_cached_frame(ptr noundef %0, ptr noundef nonnull %7) #11
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %17
  %22 = add i32 %18, 1
  %23 = icmp eq i32 %18, %2
  br i1 %23, label %31, label %17, !llvm.loop !112

24:                                               ; preds = %11, %28
  %25 = phi i32 [ %29, %28 ], [ %1, %11 ]
  store i32 %25, ptr %7, align 8, !tbaa !111
  %26 = call zeroext i8 @BKE_movieclip_has_cached_frame(ptr noundef %0, ptr noundef nonnull %7) #11
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = add nsw i32 %25, -1
  %30 = icmp sgt i32 %25, %2
  br i1 %30, label %24, label %31, !llvm.loop !113

31:                                               ; preds = %24, %28, %17, %21, %11, %13
  %32 = phi i32 [ %1, %13 ], [ %1, %11 ], [ %18, %17 ], [ %16, %21 ], [ %25, %24 ], [ %29, %28 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  ret i32 %32
}

; Function Attrs: optsize
declare zeroext i8 @BKE_movieclip_has_cached_frame(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @min_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #5 {
  %3 = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @start_prefetch_threads(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i16 noundef signext %4, i16 noundef signext %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #0 {
  %10 = alloca %struct.PrefetchQueue, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %10) #13
  %11 = tail call ptr @BLI_task_scheduler_get() #11
  %12 = tail call i32 @BLI_task_scheduler_num_threads(ptr noundef %11) #11
  %13 = getelementptr inbounds %struct.PrefetchQueue, ptr %10, i64 0, i32 7
  call void @BLI_spin_init(ptr noundef nonnull %13) #11
  %14 = getelementptr inbounds %struct.PrefetchQueue, ptr %10, i64 0, i32 1
  store i32 %2, ptr %14, align 4, !tbaa !114
  store i32 %2, ptr %10, align 8, !tbaa !116
  %15 = getelementptr inbounds %struct.PrefetchQueue, ptr %10, i64 0, i32 2
  store i32 %1, ptr %15, align 8, !tbaa !117
  %16 = getelementptr inbounds %struct.PrefetchQueue, ptr %10, i64 0, i32 3
  store i32 %3, ptr %16, align 4, !tbaa !118
  %17 = getelementptr inbounds %struct.PrefetchQueue, ptr %10, i64 0, i32 4
  store i16 %4, ptr %17, align 8, !tbaa !119
  %18 = getelementptr inbounds %struct.PrefetchQueue, ptr %10, i64 0, i32 5
  store i16 %5, ptr %18, align 2, !tbaa !120
  %19 = getelementptr inbounds %struct.PrefetchQueue, ptr %10, i64 0, i32 6
  store i8 1, ptr %19, align 4, !tbaa !121
  %20 = getelementptr inbounds %struct.PrefetchQueue, ptr %10, i64 0, i32 8
  store ptr %6, ptr %20, align 8, !tbaa !122
  %21 = getelementptr inbounds %struct.PrefetchQueue, ptr %10, i64 0, i32 9
  store ptr %7, ptr %21, align 8, !tbaa !123
  %22 = getelementptr inbounds %struct.PrefetchQueue, ptr %10, i64 0, i32 10
  store ptr %8, ptr %22, align 8, !tbaa !124
  %23 = call ptr @BLI_task_pool_create(ptr noundef %11, ptr noundef nonnull %10) #11
  %24 = icmp sgt i32 %12, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %9, %25
  %26 = phi i32 [ %27, %25 ], [ 0, %9 ]
  call void @BLI_task_pool_push(ptr noundef %23, ptr noundef nonnull @prefetch_task_func, ptr noundef %0, i8 noundef zeroext 0, i32 noundef 0) #11
  %27 = add nuw nsw i32 %26, 1
  %28 = icmp eq i32 %27, %12
  br i1 %28, label %29, label %25, !llvm.loop !125

29:                                               ; preds = %25, %9
  call void @BLI_task_pool_work_and_wait(ptr noundef %23) #11
  call void @BLI_task_pool_free(ptr noundef %23) #11
  call void @BLI_spin_end(ptr noundef nonnull %13) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_prefetch_movie(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i16 noundef signext %4, i16 noundef signext %5, ptr nocapture noundef %6, ptr nocapture noundef writeonly %7, ptr nocapture noundef writeonly %8) unnamed_addr #0 {
  %10 = icmp sgt i32 %2, %3
  br i1 %10, label %16, label %11

11:                                               ; preds = %9
  %12 = sub nsw i32 %3, %1
  %13 = sitofp i32 %12 to float
  %14 = add i32 %3, 1
  %15 = sub i32 %14, %2
  br label %25

16:                                               ; preds = %30, %9
  %17 = phi i32 [ 0, %9 ], [ %15, %30 ]
  %18 = icmp slt i32 %2, %1
  br i1 %18, label %47, label %19

19:                                               ; preds = %16
  %20 = sub nsw i32 %3, %1
  %21 = sitofp i32 %20 to float
  %22 = add i32 %17, %2
  %23 = add i32 %22, 1
  %24 = sub i32 %23, %1
  br label %36

25:                                               ; preds = %11, %30
  %26 = phi i32 [ 0, %11 ], [ %31, %30 ]
  %27 = phi i32 [ %2, %11 ], [ %34, %30 ]
  %28 = tail call fastcc zeroext i8 @prefetch_movie_frame(ptr noundef %0, i32 noundef %27, i16 noundef signext %4, i16 noundef signext %5, ptr noundef %6) #12, !range !19
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %47, label %30

30:                                               ; preds = %25
  %31 = add nuw i32 %26, 1
  store i16 1, ptr %7, align 2, !tbaa !83
  %32 = sitofp i32 %31 to float
  %33 = fdiv float %32, %13
  store float %33, ptr %8, align 4, !tbaa !24
  %34 = add nsw i32 %27, 1
  %35 = icmp eq i32 %31, %15
  br i1 %35, label %16, label %25, !llvm.loop !126

36:                                               ; preds = %19, %41
  %37 = phi i32 [ %17, %19 ], [ %42, %41 ]
  %38 = phi i32 [ %2, %19 ], [ %45, %41 ]
  %39 = tail call fastcc zeroext i8 @prefetch_movie_frame(ptr noundef %0, i32 noundef %38, i16 noundef signext %4, i16 noundef signext %5, ptr noundef %6) #12, !range !19
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %36
  %42 = add i32 %37, 1
  store i16 1, ptr %7, align 2, !tbaa !83
  %43 = sitofp i32 %42 to float
  %44 = fdiv float %43, %21
  store float %44, ptr %8, align 4, !tbaa !24
  %45 = add nsw i32 %38, -1
  %46 = icmp eq i32 %42, %24
  br i1 %46, label %47, label %36, !llvm.loop !127

47:                                               ; preds = %25, %36, %41, %16
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_task_scheduler_get() local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_task_scheduler_num_threads(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_spin_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_task_pool_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_task_pool_push(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @prefetch_task_func(ptr noundef %0, ptr noundef %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.MovieClipUser, align 4
  %7 = tail call ptr @BLI_task_pool_userdata(ptr noundef %0) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  %8 = call fastcc ptr @prefetch_thread_next_frame(ptr noundef %7, ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5) #12
  %9 = icmp eq ptr %8, null
  br i1 %9, label %33, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.PrefetchQueue, ptr %7, i64 0, i32 4
  %12 = getelementptr inbounds %struct.MovieClipUser, ptr %6, i64 0, i32 1
  %13 = getelementptr inbounds %struct.MovieClip, ptr %1, i64 0, i32 18
  br label %14

14:                                               ; preds = %10, %30
  %15 = phi ptr [ %8, %10 ], [ %31, %30 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #13
  %16 = load i32, ptr %5, align 4, !tbaa !23
  store i32 %16, ptr %6, align 4, !tbaa !111
  %17 = load <2 x i16>, ptr %11, align 8, !tbaa !83
  store <2 x i16> %17, ptr %12, align 4, !tbaa !83
  %18 = extractelement <2 x i16> %17, i64 1
  %19 = and i16 %18, 1
  %20 = icmp eq i16 %19, 0
  %21 = select i1 %20, ptr null, ptr %13
  %22 = load i64, ptr %4, align 8, !tbaa !128
  %23 = call ptr @IMB_ibImageFromMemory(ptr noundef nonnull %15, i64 noundef %22, i32 noundef 8193, ptr noundef %21, ptr noundef nonnull @.str.2) #11
  %24 = call zeroext i8 @BKE_movieclip_put_frame_if_possible(ptr noundef %1, ptr noundef nonnull %6, ptr noundef %23) #11
  call void @IMB_freeImBuf(ptr noundef %23) #11
  %25 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  call void %25(ptr noundef nonnull %15) #11
  %26 = icmp eq i8 %24, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %14
  %28 = getelementptr inbounds %struct.PrefetchQueue, ptr %7, i64 0, i32 8
  %29 = load ptr, ptr %28, align 8, !tbaa !122
  store i16 1, ptr %29, align 2, !tbaa !83
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  br label %33

30:                                               ; preds = %14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  %31 = call fastcc ptr @prefetch_thread_next_frame(ptr noundef nonnull %7, ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5) #12
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %14

33:                                               ; preds = %30, %3, %27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  ret void
}

; Function Attrs: optsize
declare void @BLI_task_pool_work_and_wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_task_pool_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_spin_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_task_pool_userdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @prefetch_thread_next_frame(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.PrefetchQueue, ptr %0, i64 0, i32 7
  tail call void @BLI_spin_lock(ptr noundef nonnull %5) #11
  %6 = getelementptr inbounds %struct.PrefetchQueue, ptr %0, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !122
  %8 = load i16, ptr %7, align 2, !tbaa !83
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %10, label %101

10:                                               ; preds = %4
  %11 = tail call fastcc zeroext i8 @check_prefetch_break() #12
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %101

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.PrefetchQueue, ptr %0, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !117
  %16 = getelementptr inbounds %struct.PrefetchQueue, ptr %0, i64 0, i32 3
  %17 = load i32, ptr %16, align 4, !tbaa !118
  %18 = icmp slt i32 %15, %17
  %19 = getelementptr inbounds %struct.PrefetchQueue, ptr %0, i64 0, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !114
  br i1 %18, label %21, label %25

21:                                               ; preds = %13
  %22 = icmp sgt i32 %15, %20
  %23 = icmp sgt i32 %20, %17
  %24 = or i1 %22, %23
  br i1 %24, label %101, label %29

25:                                               ; preds = %13
  %26 = icmp sgt i32 %17, %20
  %27 = icmp sgt i32 %20, %15
  %28 = or i1 %26, %27
  br i1 %28, label %101, label %29

29:                                               ; preds = %25, %21
  %30 = getelementptr inbounds %struct.PrefetchQueue, ptr %0, i64 0, i32 6
  %31 = load i8, ptr %30, align 4, !tbaa !121
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %50, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.PrefetchQueue, ptr %0, i64 0, i32 1
  %35 = add nsw i32 %20, 1
  %36 = getelementptr inbounds %struct.PrefetchQueue, ptr %0, i64 0, i32 4
  %37 = load i16, ptr %36, align 8, !tbaa !119
  %38 = getelementptr inbounds %struct.PrefetchQueue, ptr %0, i64 0, i32 5
  %39 = load i16, ptr %38, align 2, !tbaa !120
  %40 = tail call fastcc i32 @prefetch_find_uncached_frame(ptr noundef %1, i32 noundef %35, i32 noundef %17, i16 noundef signext %37, i16 noundef signext %39, i16 noundef signext 1) #12
  %41 = load i32, ptr %16, align 4, !tbaa !118
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %33
  %44 = load i32, ptr %0, align 8, !tbaa !116
  store i32 %44, ptr %34, align 4, !tbaa !114
  store i8 0, ptr %30, align 4, !tbaa !121
  br label %50

45:                                               ; preds = %33
  %46 = load i8, ptr %30, align 4, !tbaa !121
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %45
  %49 = load i32, ptr %34, align 4, !tbaa !114
  br label %50

50:                                               ; preds = %48, %29, %43
  %51 = phi i32 [ %49, %48 ], [ %20, %29 ], [ %44, %43 ]
  %52 = add nsw i32 %51, -1
  %53 = load i32, ptr %14, align 8, !tbaa !117
  %54 = getelementptr inbounds %struct.PrefetchQueue, ptr %0, i64 0, i32 4
  %55 = load i16, ptr %54, align 8, !tbaa !119
  %56 = getelementptr inbounds %struct.PrefetchQueue, ptr %0, i64 0, i32 5
  %57 = load i16, ptr %56, align 2, !tbaa !120
  %58 = tail call fastcc i32 @prefetch_find_uncached_frame(ptr noundef %1, i32 noundef %52, i32 noundef %53, i16 noundef signext %55, i16 noundef signext %57, i16 noundef signext -1) #12
  %59 = load i32, ptr %16, align 4, !tbaa !118
  br label %60

60:                                               ; preds = %50, %45
  %61 = phi i32 [ %41, %45 ], [ %59, %50 ]
  %62 = phi i32 [ %40, %45 ], [ %58, %50 ]
  %63 = load i32, ptr %14, align 8, !tbaa !117
  %64 = icmp slt i32 %63, %61
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = icmp sgt i32 %63, %62
  %67 = icmp sgt i32 %62, %61
  %68 = or i1 %66, %67
  br i1 %68, label %101, label %73

69:                                               ; preds = %60
  %70 = icmp sgt i32 %61, %62
  %71 = icmp sgt i32 %62, %63
  %72 = or i1 %71, %70
  br i1 %72, label %101, label %73

73:                                               ; preds = %69, %65
  %74 = getelementptr inbounds %struct.PrefetchQueue, ptr %0, i64 0, i32 4
  %75 = load i16, ptr %74, align 8, !tbaa !119
  %76 = getelementptr inbounds %struct.PrefetchQueue, ptr %0, i64 0, i32 5
  %77 = load i16, ptr %76, align 2, !tbaa !120
  %78 = tail call fastcc ptr @prefetch_read_file_to_memory(ptr noundef %1, i32 noundef %62, i16 noundef signext %75, i16 noundef signext %77, ptr noundef %2) #12
  store i32 %62, ptr %3, align 4, !tbaa !23
  %79 = getelementptr inbounds %struct.PrefetchQueue, ptr %0, i64 0, i32 1
  store i32 %62, ptr %79, align 4, !tbaa !114
  %80 = load i8, ptr %30, align 4, !tbaa !121
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %73
  %83 = load i32, ptr %0, align 8, !tbaa !116
  %84 = sub nsw i32 %62, %83
  %85 = load i32, ptr %16, align 4, !tbaa !118
  br label %89

86:                                               ; preds = %73
  %87 = load i32, ptr %16, align 4, !tbaa !118
  %88 = sub i32 %87, %62
  br label %89

89:                                               ; preds = %86, %82
  %90 = phi i32 [ %85, %82 ], [ %87, %86 ]
  %91 = phi i32 [ %84, %82 ], [ %88, %86 ]
  %92 = getelementptr inbounds %struct.PrefetchQueue, ptr %0, i64 0, i32 9
  %93 = load ptr, ptr %92, align 8, !tbaa !123
  store i16 1, ptr %93, align 2, !tbaa !83
  %94 = sitofp i32 %91 to float
  %95 = load i32, ptr %14, align 8, !tbaa !117
  %96 = sub nsw i32 %90, %95
  %97 = sitofp i32 %96 to float
  %98 = fdiv float %94, %97
  %99 = getelementptr inbounds %struct.PrefetchQueue, ptr %0, i64 0, i32 10
  %100 = load ptr, ptr %99, align 8, !tbaa !124
  store float %98, ptr %100, align 4, !tbaa !24
  br label %101

101:                                              ; preds = %89, %65, %69, %25, %21, %10, %4
  %102 = phi ptr [ null, %4 ], [ null, %10 ], [ null, %21 ], [ null, %25 ], [ %78, %89 ], [ null, %65 ], [ null, %69 ]
  tail call void @BLI_spin_unlock(ptr noundef nonnull %5) #11
  ret ptr %102
}

; Function Attrs: optsize
declare ptr @IMB_ibImageFromMemory(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BKE_movieclip_put_frame_if_possible(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_spin_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @check_prefetch_break() unnamed_addr #8 {
  %1 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !84
  ret i8 %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @prefetch_read_file_to_memory(ptr noundef %0, i32 noundef %1, i16 noundef signext %2, i16 noundef signext %3, ptr nocapture noundef writeonly %4) unnamed_addr #0 {
  %6 = alloca %struct.MovieClipUser, align 4
  %7 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %7) #13
  store i32 %1, ptr %6, align 4, !tbaa !111
  %8 = getelementptr inbounds %struct.MovieClipUser, ptr %6, i64 0, i32 1
  store i16 %2, ptr %8, align 4, !tbaa !109
  %9 = getelementptr inbounds %struct.MovieClipUser, ptr %6, i64 0, i32 2
  store i16 %3, ptr %9, align 2, !tbaa !110
  call void @BKE_movieclip_filename_for_frame(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7) #11
  %10 = call i32 @BLI_open(ptr noundef nonnull %7, i32 noundef 0, i32 noundef 0) #11
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %27, label %12

12:                                               ; preds = %5
  %13 = call i64 @BLI_file_descriptor_size(i32 noundef %10) #11
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = call i32 @close(i32 noundef %10) #11
  br label %27

17:                                               ; preds = %12
  %18 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !43
  %19 = call ptr %18(i64 noundef %13, ptr noundef nonnull @.str.3) #11
  %20 = call i64 @read(i32 noundef %10, ptr noundef %19, i64 noundef %13) #11
  %21 = icmp eq i64 %20, %13
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = call i32 @close(i32 noundef %10) #11
  %24 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  call void %24(ptr noundef %19) #11
  br label %27

25:                                               ; preds = %17
  store i64 %13, ptr %4, align 8, !tbaa !128
  %26 = call i32 @close(i32 noundef %10) #11
  br label %27

27:                                               ; preds = %5, %25, %22, %15
  %28 = phi ptr [ null, %15 ], [ null, %22 ], [ %19, %25 ], [ null, %5 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  ret ptr %28
}

; Function Attrs: optsize
declare void @BLI_spin_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_movieclip_filename_for_frame(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_open(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @BLI_file_descriptor_size(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @close(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree optsize
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @prefetch_movie_frame(ptr noundef %0, i32 noundef %1, i16 noundef signext %2, i16 noundef signext %3, ptr nocapture noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.MovieClipUser, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #13
  %7 = tail call fastcc zeroext i8 @check_prefetch_break() #12
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %26

9:                                                ; preds = %5
  %10 = load i16, ptr %4, align 2, !tbaa !83
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %9
  store i32 %1, ptr %6, align 4, !tbaa !111
  %13 = getelementptr inbounds %struct.MovieClipUser, ptr %6, i64 0, i32 1
  store i16 %2, ptr %13, align 4, !tbaa !109
  %14 = getelementptr inbounds %struct.MovieClipUser, ptr %6, i64 0, i32 2
  store i16 %3, ptr %14, align 2, !tbaa !110
  %15 = call zeroext i8 @BKE_movieclip_has_cached_frame(ptr noundef %0, ptr noundef nonnull %6) #11
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %12
  %18 = call ptr @BKE_movieclip_anim_ibuf_for_frame(ptr noundef %0, ptr noundef nonnull %6) #11
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %17
  %21 = call zeroext i8 @BKE_movieclip_put_frame_if_possible(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %18) #11
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i16 1, ptr %4, align 2, !tbaa !83
  br label %24

24:                                               ; preds = %23, %20
  call void @IMB_freeImBuf(ptr noundef nonnull %18) #11
  br label %26

25:                                               ; preds = %17
  store i16 1, ptr %4, align 2, !tbaa !83
  br label %26

26:                                               ; preds = %12, %25, %24, %5, %9
  %27 = phi i8 [ 0, %9 ], [ 0, %5 ], [ 1, %24 ], [ 1, %25 ], [ 1, %12 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  ret i8 %27
}

; Function Attrs: optsize
declare ptr @BKE_movieclip_anim_ibuf_for_frame(ptr noundef, ptr noundef) local_unnamed_addr #2

declare double @exp2(double) local_unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #10

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind optsize }
attributes #12 = { optsize }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 64}
!6 = !{!"SpaceClip", !7, i64 0, !7, i64 8, !10, i64 16, !11, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !13, i64 56, !7, i64 64, !15, i64 72, !11, i64 208, !14, i64 212, !14, i64 214, !11, i64 216, !8, i64 220, !12, i64 228, !12, i64 232, !11, i64 236, !8, i64 240, !8, i64 304, !11, i64 368, !14, i64 372, !14, i64 374, !11, i64 376, !11, i64 380, !8, i64 384, !17, i64 392}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"ListBase", !7, i64 0, !7, i64 8}
!11 = !{!"int", !8, i64 0}
!12 = !{!"float", !8, i64 0}
!13 = !{!"MovieClipUser", !11, i64 0, !14, i64 4, !14, i64 6}
!14 = !{!"short", !8, i64 0}
!15 = !{!"MovieClipScopes", !14, i64 0, !14, i64 2, !11, i64 4, !11, i64 8, !11, i64 12, !16, i64 16, !7, i64 80, !7, i64 88, !8, i64 96, !14, i64 104, !14, i64 106, !11, i64 108, !7, i64 112, !7, i64 120, !8, i64 128}
!16 = !{!"MovieTrackingMarker", !8, i64 0, !8, i64 8, !8, i64 40, !8, i64 48, !11, i64 56, !11, i64 60}
!17 = !{!"MaskSpaceInfo", !7, i64 0, !8, i64 8, !8, i64 9, !8, i64 10, !8, i64 11}
!18 = !{!6, !14, i64 214}
!19 = !{i8 0, i8 2}
!20 = !{!6, !14, i64 212}
!21 = !{i32 0, i32 2}
!22 = !{!6, !7, i64 392}
!23 = !{!11, !11, i64 0}
!24 = !{!12, !12, i64 0}
!25 = !{!26, !11, i64 4}
!26 = !{!"rcti", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12}
!27 = !{!26, !11, i64 0}
!28 = !{!29, !12, i64 4}
!29 = !{!"rctf", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12}
!30 = !{!29, !12, i64 0}
!31 = !{!26, !11, i64 12}
!32 = !{!26, !11, i64 8}
!33 = !{!29, !12, i64 12}
!34 = !{!29, !12, i64 8}
!35 = !{!6, !11, i64 56}
!36 = !{!6, !11, i64 368}
!37 = !{!38, !7, i64 40}
!38 = !{!"ImBuf", !7, i64 0, !7, i64 8, !11, i64 16, !11, i64 20, !8, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !7, i64 40, !7, i64 48, !8, i64 56, !11, i64 72, !11, i64 76, !11, i64 80, !11, i64 84, !7, i64 88, !7, i64 96, !7, i64 104, !12, i64 112, !8, i64 120, !11, i64 280, !11, i64 284, !11, i64 288, !11, i64 292, !7, i64 296, !7, i64 304, !11, i64 312, !8, i64 316, !8, i64 1340, !7, i64 2368, !11, i64 2376, !7, i64 2384, !11, i64 2392, !11, i64 2396, !7, i64 2400, !7, i64 2408, !7, i64 2416, !7, i64 2424, !11, i64 2432, !26, i64 2436, !39, i64 2456}
!39 = !{!"DDSData", !11, i64 0, !11, i64 4, !7, i64 8, !11, i64 16}
!40 = !{!38, !7, i64 48}
!41 = !{!38, !11, i64 28}
!42 = !{!38, !7, i64 2400}
!43 = !{!7, !7, i64 0}
!44 = distinct !{!44, !45}
!45 = !{!"llvm.loop.mustprogress"}
!46 = distinct !{!46, !45}
!47 = !{!48, !7, i64 24}
!48 = !{!"wmWindow", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !8, i64 40, !14, i64 104, !14, i64 106, !14, i64 108, !14, i64 110, !14, i64 112, !14, i64 114, !14, i64 116, !14, i64 118, !14, i64 120, !14, i64 122, !14, i64 124, !14, i64 126, !11, i64 128, !14, i64 132, !14, i64 134, !7, i64 136, !7, i64 144, !7, i64 152, !11, i64 160, !11, i64 164, !7, i64 168, !10, i64 176, !10, i64 192, !10, i64 208, !10, i64 224, !10, i64 240}
!49 = !{!50, !8, i64 72}
!50 = !{!"ScrArea", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !26, i64 56, !8, i64 72, !8, i64 73, !14, i64 74, !14, i64 76, !14, i64 78, !14, i64 80, !14, i64 82, !14, i64 84, !8, i64 86, !8, i64 87, !7, i64 88, !10, i64 96, !10, i64 112, !10, i64 128, !10, i64 144}
!51 = !{!50, !7, i64 96}
!52 = !{!6, !14, i64 72}
!53 = distinct !{!53, !45}
!54 = !{!6, !12, i64 52}
!55 = !{!56, !11, i64 152}
!56 = !{!"MovieTrackingTrack", !7, i64 0, !7, i64 8, !8, i64 16, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !11, i64 120, !11, i64 124, !7, i64 128, !8, i64 136, !12, i64 148, !11, i64 152, !11, i64 156, !11, i64 160, !8, i64 164, !14, i64 176, !14, i64 178, !14, i64 180, !14, i64 182, !11, i64 184, !12, i64 188, !7, i64 192, !12, i64 200, !12, i64 204}
!57 = !{!6, !11, i64 208}
!58 = !{!56, !11, i64 156}
!59 = !{!56, !11, i64 160}
!60 = !{!6, !14, i64 62}
!61 = distinct !{!61, !45}
!62 = !{!63, !12, i64 1288}
!63 = !{!"MovieClip", !64, i64 0, !7, i64 120, !8, i64 128, !11, i64 1152, !11, i64 1156, !8, i64 1160, !12, i64 1168, !12, i64 1172, !7, i64 1176, !7, i64 1184, !7, i64 1192, !65, i64 1200, !7, i64 1528, !71, i64 1536, !11, i64 2312, !11, i64 2316, !11, i64 2320, !11, i64 2324, !72, i64 2328}
!64 = !{!"ID", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !14, i64 98, !11, i64 100, !11, i64 104, !11, i64 108, !7, i64 112}
!65 = !{!"MovieTracking", !66, i64 0, !67, i64 72, !10, i64 128, !10, i64 144, !68, i64 160, !69, i64 184, !7, i64 232, !7, i64 240, !10, i64 248, !11, i64 264, !11, i64 268, !7, i64 272, !70, i64 280}
!66 = !{!"MovieTrackingSettings", !11, i64 0, !14, i64 4, !14, i64 6, !12, i64 8, !14, i64 12, !14, i64 14, !14, i64 16, !14, i64 18, !14, i64 20, !14, i64 22, !12, i64 24, !14, i64 28, !14, i64 30, !11, i64 32, !11, i64 36, !11, i64 40, !14, i64 44, !14, i64 46, !12, i64 48, !11, i64 52, !11, i64 56, !12, i64 60, !12, i64 64, !11, i64 68}
!67 = !{!"MovieTrackingCamera", !7, i64 0, !14, i64 8, !14, i64 10, !12, i64 12, !12, i64 16, !12, i64 20, !14, i64 24, !14, i64 26, !8, i64 28, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52}
!68 = !{!"MovieTrackingReconstruction", !11, i64 0, !12, i64 4, !11, i64 8, !11, i64 12, !7, i64 16}
!69 = !{!"MovieTrackingStabilization", !11, i64 0, !11, i64 4, !11, i64 8, !12, i64 12, !7, i64 16, !12, i64 24, !12, i64 28, !12, i64 32, !11, i64 36, !11, i64 40, !12, i64 44}
!70 = !{!"MovieTrackingDopesheet", !11, i64 0, !14, i64 4, !14, i64 6, !10, i64 8, !10, i64 24, !11, i64 40, !11, i64 44}
!71 = !{!"MovieClipProxy", !8, i64 0, !14, i64 768, !14, i64 770, !14, i64 772, !14, i64 774}
!72 = !{!"ColorManagedColorspaceSettings", !8, i64 0}
!73 = !{!65, !12, i64 88}
!74 = distinct !{!74, !45}
!75 = !{!76, !11, i64 32}
!76 = !{!"SpaceLink", !7, i64 0, !7, i64 8, !10, i64 16, !11, i64 32, !12, i64 36, !8, i64 40}
!77 = distinct !{!77, !45}
!78 = !{!79, !7, i64 0}
!79 = !{!"PrefetchJob", !7, i64 0, !11, i64 8, !11, i64 12, !11, i64 16, !14, i64 20, !14, i64 22}
!80 = !{!79, !11, i64 8}
!81 = !{!79, !11, i64 12}
!82 = !{!79, !11, i64 16}
!83 = !{!14, !14, i64 0}
!84 = !{!85, !8, i64 2080}
!85 = !{!"Global", !7, i64 0, !8, i64 8, !8, i64 1032, !8, i64 2056, !8, i64 2057, !8, i64 2058, !10, i64 2064, !8, i64 2080, !8, i64 2081, !8, i64 2082, !14, i64 2084, !14, i64 2086, !14, i64 2088, !8, i64 2090, !14, i64 2092, !11, i64 2096, !11, i64 2100, !8, i64 2104, !11, i64 2108, !11, i64 2112, !8, i64 2116}
!86 = !{!6, !14, i64 60}
!87 = !{!88, !11, i64 684}
!88 = !{!"Scene", !64, i64 0, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !10, i64 152, !7, i64 168, !7, i64 176, !8, i64 184, !8, i64 196, !8, i64 208, !8, i64 220, !11, i64 232, !11, i64 236, !11, i64 240, !14, i64 244, !8, i64 246, !8, i64 247, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !89, i64 280, !96, i64 4264, !10, i64 4296, !10, i64 4312, !7, i64 4328, !7, i64 4336, !7, i64 4344, !7, i64 4352, !7, i64 4360, !7, i64 4368, !14, i64 4376, !14, i64 4378, !11, i64 4380, !10, i64 4384, !97, i64 4400, !98, i64 4416, !101, i64 4600, !7, i64 4608, !102, i64 4616, !7, i64 4640, !103, i64 4648, !103, i64 4656, !91, i64 4664, !92, i64 4824, !72, i64 4888, !7, i64 4952}
!89 = !{!"RenderData", !90, i64 0, !7, i64 248, !7, i64 256, !93, i64 264, !94, i64 328, !11, i64 400, !11, i64 404, !11, i64 408, !12, i64 412, !11, i64 416, !11, i64 420, !11, i64 424, !11, i64 428, !14, i64 432, !14, i64 434, !12, i64 436, !12, i64 440, !12, i64 444, !12, i64 448, !12, i64 452, !14, i64 456, !14, i64 458, !14, i64 460, !14, i64 462, !14, i64 464, !14, i64 466, !11, i64 468, !14, i64 472, !14, i64 474, !14, i64 476, !14, i64 478, !14, i64 480, !14, i64 482, !11, i64 484, !11, i64 488, !14, i64 492, !14, i64 494, !11, i64 496, !11, i64 500, !14, i64 504, !14, i64 506, !14, i64 508, !14, i64 510, !14, i64 512, !8, i64 514, !8, i64 515, !11, i64 516, !11, i64 520, !11, i64 524, !14, i64 528, !14, i64 530, !14, i64 532, !14, i64 534, !14, i64 536, !14, i64 538, !14, i64 540, !14, i64 542, !29, i64 544, !29, i64 560, !26, i64 576, !10, i64 592, !14, i64 608, !14, i64 610, !12, i64 612, !12, i64 616, !12, i64 620, !12, i64 624, !11, i64 628, !12, i64 632, !12, i64 636, !12, i64 640, !12, i64 644, !14, i64 648, !14, i64 650, !14, i64 652, !14, i64 654, !14, i64 656, !14, i64 658, !12, i64 660, !12, i64 664, !14, i64 668, !14, i64 670, !12, i64 672, !12, i64 676, !8, i64 680, !11, i64 1704, !14, i64 1708, !14, i64 1710, !8, i64 1712, !8, i64 2480, !8, i64 2496, !8, i64 2512, !8, i64 2513, !8, i64 2514, !8, i64 2515, !11, i64 2520, !14, i64 2524, !14, i64 2526, !12, i64 2528, !12, i64 2532, !14, i64 2536, !14, i64 2538, !12, i64 2540, !14, i64 2544, !14, i64 2546, !11, i64 2548, !14, i64 2552, !14, i64 2554, !14, i64 2556, !14, i64 2558, !12, i64 2560, !12, i64 2564, !7, i64 2568, !11, i64 2576, !12, i64 2580, !8, i64 2584, !95, i64 2616, !11, i64 3976, !11, i64 3980}
!90 = !{!"ImageFormatData", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !14, i64 8, !14, i64 10, !12, i64 12, !8, i64 16, !8, i64 17, !8, i64 18, !91, i64 24, !92, i64 184}
!91 = !{!"ColorManagedViewSettings", !11, i64 0, !11, i64 4, !8, i64 8, !8, i64 72, !12, i64 136, !12, i64 140, !7, i64 144, !7, i64 152}
!92 = !{!"ColorManagedDisplaySettings", !8, i64 0}
!93 = !{!"QuicktimeCodecSettings", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !14, i64 48, !14, i64 50, !11, i64 52, !11, i64 56, !11, i64 60}
!94 = !{!"FFMpegCodecData", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !12, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !7, i64 64}
!95 = !{!"BakeData", !90, i64 0, !8, i64 248, !14, i64 1272, !14, i64 1274, !14, i64 1276, !14, i64 1278, !12, i64 1280, !12, i64 1284, !8, i64 1288, !8, i64 1291, !8, i64 1292, !8, i64 1293, !8, i64 1296}
!96 = !{!"AudioData", !11, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !11, i64 16, !14, i64 20, !14, i64 22, !12, i64 24, !12, i64 28}
!97 = !{!"GameFraming", !8, i64 0, !8, i64 12, !8, i64 13, !8, i64 14, !8, i64 15}
!98 = !{!"GameData", !97, i64 0, !14, i64 16, !14, i64 18, !14, i64 20, !14, i64 22, !14, i64 24, !14, i64 26, !14, i64 28, !14, i64 30, !14, i64 32, !8, i64 34, !99, i64 40, !14, i64 64, !14, i64 66, !12, i64 68, !100, i64 72, !12, i64 128, !12, i64 132, !11, i64 136, !14, i64 140, !14, i64 142, !14, i64 144, !14, i64 146, !14, i64 148, !14, i64 150, !14, i64 152, !14, i64 154, !14, i64 156, !14, i64 158, !14, i64 160, !14, i64 162, !12, i64 164, !12, i64 168, !12, i64 172, !12, i64 176, !12, i64 180}
!99 = !{!"GameDome", !14, i64 0, !14, i64 2, !14, i64 4, !14, i64 6, !12, i64 8, !12, i64 12, !7, i64 16}
!100 = !{!"RecastData", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !11, i64 40, !12, i64 44, !12, i64 48, !14, i64 52, !14, i64 54}
!101 = !{!"UnitSettings", !12, i64 0, !8, i64 4, !8, i64 5, !14, i64 6}
!102 = !{!"PhysicsSettings", !8, i64 0, !11, i64 12, !11, i64 16, !11, i64 20}
!103 = !{!"long", !8, i64 0}
!104 = !{!88, !11, i64 688}
!105 = !{!63, !11, i64 2316}
!106 = !{!63, !11, i64 1152}
!107 = !{!79, !14, i64 20}
!108 = !{!79, !14, i64 22}
!109 = !{!13, !14, i64 4}
!110 = !{!13, !14, i64 6}
!111 = !{!13, !11, i64 0}
!112 = distinct !{!112, !45}
!113 = distinct !{!113, !45}
!114 = !{!115, !11, i64 4}
!115 = !{!"PrefetchQueue", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !14, i64 16, !14, i64 18, !8, i64 20, !11, i64 24, !7, i64 32, !7, i64 40, !7, i64 48}
!116 = !{!115, !11, i64 0}
!117 = !{!115, !11, i64 8}
!118 = !{!115, !11, i64 12}
!119 = !{!115, !14, i64 16}
!120 = !{!115, !14, i64 18}
!121 = !{!115, !8, i64 20}
!122 = !{!115, !7, i64 32}
!123 = !{!115, !7, i64 40}
!124 = !{!115, !7, i64 48}
!125 = distinct !{!125, !45}
!126 = distinct !{!126, !45}
!127 = distinct !{!127, !45}
!128 = !{!103, !103, i64 0}
