; ModuleID = 'blender/source/blender/blenkernel/intern/movieclip.c'
source_filename = "blender/source/blender/blenkernel/intern/movieclip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
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
%struct.MovieClipUser = type { i32, i16, i16 }
%struct.MovieClipCache = type { ptr, %struct.anon, %struct.anon.0, i32 }
%struct.anon = type { ptr, i32, i32, [2 x float], float, float, float, float, float, i16, i8, i32, i16 }
%struct.anon.0 = type { ptr, ptr, i32, i32, [2 x float], float, float, float, i32, i32, i16 }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.DDSData = type { i32, i32, ptr, i32 }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
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
%struct.MovieTrackingMarker = type { [2 x float], [4 x [2 x float]], [2 x float], [2 x float], i32, i32 }
%struct.MovieClipScopes = type { i16, i16, i32, i32, i32, %struct.MovieTrackingMarker, ptr, ptr, [2 x float], i16, i16, i32, ptr, ptr, [2 x float] }
%struct.MovieTrackingTrack = type { ptr, ptr, [64 x i8], [2 x float], [2 x float], [2 x float], [2 x float], [2 x float], i32, i32, ptr, [3 x float], float, i32, i32, i32, [3 x float], i16, i16, i16, i16, i32, float, ptr, float, float }
%struct.NodeTreeIterStore = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bScreen = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.SpaceLink = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16] }
%struct.SpaceClip = type { ptr, ptr, %struct.ListBase, i32, float, float, float, float, float, %struct.MovieClipUser, ptr, %struct.MovieClipScopes, i32, i16, i16, i32, [2 x float], float, float, i32, [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i32, i32, [2 x float], %struct.MaskSpaceInfo }
%struct.MaskSpaceInfo = type { ptr, i8, i8, i8, [5 x i8] }
%struct.View3D = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], [4 x float], float, float, i8, [3 x i8], i32, i32, i16, i16, ptr, ptr, %struct.rctf, %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, i16, i16, float, float, float, float, [3 x float], [3 x float], i16, i16, i16, i8, i8, i8, i8, [2 x i8], %struct.ListBase, %struct.ListBase, %struct.ListBase, i8, i8, i8, [5 x i8], ptr, ptr, ptr }
%struct.BGpic = type { ptr, ptr, ptr, %struct.ImageUser, ptr, %struct.MovieClipUser, float, float, float, float, i16, i16, i16, i16 }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.bConstraint = type { ptr, ptr, ptr, i16, i16, i8, i8, [64 x i8], i16, float, float, ptr, float, float }
%struct.Library = type { %struct.ID, ptr, ptr, [1024 x i8], [1024 x i8], ptr, ptr }
%struct.MovieClipImBufCacheKey = type { i32, i32, i16 }

@G = external local_unnamed_addr global %struct.Global, align 8
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [12 x i8] c"%s/BL_proxy\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"%s/%s/proxy_%d_undistorted/%08d\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"%s/%s/proxy_%d/%08d\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c".jpg\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [15 x i8] c"movieClipCache\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"movieclip\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"movie cache clip priority data\00", align 1
@switch.table.rendersize_to_proxy = private unnamed_addr constant [5 x i32] [i32 0, i32 1, i32 2, i32 4, i32 8], align 4
@switch.table.rendersize_to_number = private unnamed_addr constant [5 x i32] [i32 100, i32 25, i32 50, i32 75, i32 100], align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_movieclip_file_add(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [1024 x i8], align 16
  %4 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #15
  %5 = call ptr @BLI_strncpy(ptr noundef nonnull %3, ptr noundef %1, i64 noundef 1024) #16
  %6 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 2
  %7 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %3, ptr noundef nonnull %6) #16
  %8 = call i32 @BLI_open(ptr noundef nonnull %3, i32 noundef 0, i32 noundef 0) #16
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %63, label %10

10:                                               ; preds = %2
  %11 = call i32 @close(i32 noundef %8) #16
  %12 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 42
  br label %13

13:                                               ; preds = %17, %10
  %14 = phi ptr [ %12, %10 ], [ %15, %17 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = icmp eq ptr %15, null
  br i1 %16, label %30, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.MovieClip, ptr %15, i64 0, i32 2
  %19 = call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef nonnull %18, i64 noundef 1024) #16
  %20 = load ptr, ptr @G, align 8, !tbaa !38
  %21 = getelementptr inbounds %struct.Main, ptr %20, i64 0, i32 2
  %22 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %4, ptr noundef nonnull %21) #16
  %23 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %3) #17
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %13, !llvm.loop !43

25:                                               ; preds = %17
  %26 = call ptr @BLI_strncpy(ptr noundef nonnull %18, ptr noundef %1, i64 noundef 1024) #16
  %27 = getelementptr inbounds %struct.ID, ptr %15, i64 0, i32 6
  %28 = load i32, ptr %27, align 4, !tbaa !45
  %29 = add nsw i32 %28, 1
  store i32 %29, ptr %27, align 4, !tbaa !45
  br label %63

30:                                               ; preds = %13
  %31 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17
  %32 = trunc i64 %31 to i32
  %33 = getelementptr i8, ptr %1, i64 -1
  %34 = icmp sgt i32 %32, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %30
  %36 = and i64 %31, 4294967295
  br label %37

37:                                               ; preds = %35, %41
  %38 = phi i64 [ %36, %35 ], [ %42, %41 ]
  %39 = getelementptr i8, ptr %33, i64 %38
  %40 = load i8, ptr %39, align 1, !tbaa !57
  switch i8 %40, label %41 [
    i8 47, label %44
    i8 92, label %44
  ]

41:                                               ; preds = %37
  %42 = add nsw i64 %38, -1
  %43 = icmp sgt i64 %38, 1
  br i1 %43, label %37, label %44, !llvm.loop !58

44:                                               ; preds = %41, %37, %37, %30
  %45 = phi i64 [ %31, %30 ], [ %38, %37 ], [ %38, %37 ], [ 0, %41 ]
  %46 = shl i64 %45, 32
  %47 = ashr exact i64 %46, 32
  %48 = getelementptr inbounds i8, ptr %1, i64 %47
  %49 = call fastcc ptr @movieclip_alloc(ptr noundef %0, ptr noundef %48) #18
  %50 = getelementptr inbounds %struct.MovieClip, ptr %49, i64 0, i32 2
  %51 = call ptr @BLI_strncpy(ptr noundef nonnull %50, ptr noundef %1, i64 noundef 1024) #16
  call fastcc void @detect_clip_source(ptr noundef %49) #18
  call fastcc void @movieclip_load_get_szie(ptr noundef %49) #18
  %52 = getelementptr inbounds %struct.MovieClip, ptr %49, i64 0, i32 5
  %53 = load i32, ptr %52, align 8, !tbaa !59
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %44
  %56 = sitofp i32 %53 to float
  %57 = fmul float %56, 2.400000e+01
  %58 = getelementptr inbounds %struct.MovieClip, ptr %49, i64 0, i32 11, i32 1, i32 3
  %59 = load float, ptr %58, align 4, !tbaa !60
  %60 = fdiv float %57, %59
  %61 = getelementptr inbounds %struct.MovieClip, ptr %49, i64 0, i32 11, i32 1, i32 5
  store float %60, ptr %61, align 4, !tbaa !61
  br label %62

62:                                               ; preds = %55, %44
  call fastcc void @movieclip_calc_length(ptr noundef nonnull %49) #18
  br label %63

63:                                               ; preds = %2, %62, %25
  %64 = phi ptr [ %15, %25 ], [ %49, %62 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #15
  ret ptr %64
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BLI_path_abs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_open(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @close(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @movieclip_alloc(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !62 {
  %3 = tail call ptr @BKE_libblock_alloc(ptr noundef %0, i16 noundef signext 17229, ptr noundef %1) #16
  %4 = getelementptr inbounds %struct.MovieClip, ptr %3, i64 0, i32 6
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %4, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.MovieClip, ptr %3, i64 0, i32 11
  tail call void @BKE_tracking_settings_init(ptr noundef nonnull %5) #16
  %6 = getelementptr inbounds %struct.MovieClip, ptr %3, i64 0, i32 18
  tail call void @BKE_color_managed_colorspace_settings_init(ptr noundef nonnull %6) #16
  %7 = getelementptr inbounds %struct.MovieClip, ptr %3, i64 0, i32 13, i32 3
  store i16 1, ptr %7, align 4, !tbaa !64
  %8 = getelementptr inbounds %struct.MovieClip, ptr %3, i64 0, i32 13, i32 4
  store i16 15, ptr %8, align 2, !tbaa !65
  %9 = getelementptr inbounds %struct.MovieClip, ptr %3, i64 0, i32 13, i32 2
  store i16 90, ptr %9, align 2, !tbaa !66
  %10 = getelementptr inbounds %struct.MovieClip, ptr %3, i64 0, i32 16
  store i32 1, ptr %10, align 8, !tbaa !67
  %11 = getelementptr inbounds %struct.MovieClip, ptr %3, i64 0, i32 17
  store i32 0, ptr %11, align 4, !tbaa !68
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @detect_clip_source(ptr noundef %0) unnamed_addr #0 !PGOFuncName !69 {
  %2 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %2) #15
  %3 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 2
  %4 = call ptr @BLI_strncpy(ptr noundef nonnull %2, ptr noundef nonnull %3, i64 noundef 1024) #16
  %5 = load ptr, ptr @G, align 8, !tbaa !38
  %6 = getelementptr inbounds %struct.Main, ptr %5, i64 0, i32 2
  %7 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %2, ptr noundef nonnull %6) #16
  %8 = call ptr @IMB_testiffname(ptr noundef nonnull %2, i32 noundef 129) #16
  %9 = icmp eq ptr %8, null
  %10 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 3
  br i1 %9, label %12, label %11

11:                                               ; preds = %1
  store i32 1, ptr %10, align 8, !tbaa !70
  call void @IMB_freeImBuf(ptr noundef nonnull %8) #16
  br label %13

12:                                               ; preds = %1
  store i32 2, ptr %10, align 8, !tbaa !70
  br label %13

13:                                               ; preds = %12, %11
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %2) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @movieclip_load_get_szie(ptr noundef %0) unnamed_addr #0 !PGOFuncName !71 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.MovieClipUser, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  store i64 1, ptr %4, align 8
  call void @BKE_movieclip_get_size(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %2, ptr noundef nonnull %3) #18
  %5 = load i32, ptr %2, align 4, !tbaa !59
  %6 = icmp ne i32 %5, 0
  %7 = load i32, ptr %3, align 4
  %8 = icmp ne i32 %7, 0
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = insertelement <2 x i32> poison, i32 %5, i64 0
  %12 = insertelement <2 x i32> %11, i32 %7, i64 1
  %13 = sitofp <2 x i32> %12 to <2 x float>
  %14 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 11, i32 1, i32 8
  %15 = fmul <2 x float> %13, <float 5.000000e-01, float 5.000000e-01>
  store <2 x float> %15, ptr %14, align 4, !tbaa !63
  br label %19

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 5
  %18 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 5, i64 1
  store i32 256, ptr %18, align 4, !tbaa !59
  store i32 256, ptr %17, align 8, !tbaa !59
  br label %19

19:                                               ; preds = %16, %10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @movieclip_calc_length(ptr noundef %0) unnamed_addr #0 !PGOFuncName !72 {
  %2 = alloca i16, align 2
  %3 = alloca [1024 x i8], align 16
  %4 = alloca [1024 x i8], align 16
  %5 = alloca [1024 x i8], align 16
  %6 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !70
  switch i32 %7, label %38 [
    i32 2, label %8
    i32 1, label %18
  ]

8:                                                ; preds = %1
  tail call fastcc void @movieclip_open_anim_file(ptr noundef nonnull %0) #18
  %9 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !73
  %11 = icmp eq ptr %10, null
  br i1 %11, label %38, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 13, i32 1
  %14 = load i16, ptr %13, align 8, !tbaa !74
  %15 = sext i16 %14 to i32
  %16 = tail call i32 @IMB_anim_get_duration(ptr noundef nonnull %10, i32 noundef %15) #16
  %17 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 15
  store i32 %16, ptr %17, align 4, !tbaa !75
  br label %38

18:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #15
  %19 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 2
  %20 = call i32 @BLI_stringdec(ptr noundef nonnull %19, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %2) #16
  %21 = load i16, ptr %2, align 2, !tbaa !76
  %22 = icmp eq i16 %21, 0
  %23 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 15
  br i1 %22, label %24, label %25

24:                                               ; preds = %18
  store i32 1, ptr %23, align 4, !tbaa !75
  br label %37

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 16
  store i32 0, ptr %23, align 4, !tbaa !75
  %27 = load i32, ptr %26, align 8, !tbaa !67
  call fastcc void @get_sequence_fname(ptr noundef nonnull %0, i32 noundef %27, ptr noundef nonnull %3) #18
  %28 = call i32 @BLI_exists(ptr noundef nonnull %3) #16
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %25, %30
  %31 = load i32, ptr %23, align 4, !tbaa !75
  %32 = add nsw i32 %31, 1
  store i32 %32, ptr %23, align 4, !tbaa !75
  %33 = load i32, ptr %26, align 8, !tbaa !67
  %34 = add nsw i32 %33, %32
  call fastcc void @get_sequence_fname(ptr noundef nonnull %0, i32 noundef %34, ptr noundef nonnull %3) #18
  %35 = call i32 @BLI_exists(ptr noundef nonnull %3) #16
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %30

37:                                               ; preds = %30, %25, %24
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #15
  br label %38

38:                                               ; preds = %1, %37, %8, %12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_movieclip_get_ibuf(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 14
  %4 = load i32, ptr %3, align 8, !tbaa !77
  %5 = tail call ptr @BKE_movieclip_get_ibuf_flag(ptr noundef %0, ptr noundef %1, i32 noundef %4, i32 noundef 0) #18
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_movieclip_get_ibuf_flag(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call fastcc ptr @movieclip_get_postprocessed_ibuf(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 0, i32 noundef %3) #18
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @movieclip_get_postprocessed_ibuf(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 !PGOFuncName !78 {
  %6 = load i32, ptr %1, align 4, !tbaa !79
  tail call void @BLI_lock_thread(i32 noundef 7) #16
  %7 = tail call fastcc i32 @need_postprocessed_frame(ptr noundef nonnull %1, i32 noundef %3) #18
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = tail call fastcc ptr @get_postprocessed_cached_frame(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3) #18
  %11 = icmp ne ptr %10, null
  %12 = icmp eq ptr %10, null
  br i1 %12, label %13, label %47

13:                                               ; preds = %5, %9
  %14 = phi i1 [ %11, %9 ], [ true, %5 ]
  %15 = tail call fastcc ptr @get_imbuf_cache(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2) #18
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %47

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.MovieClipUser, ptr %1, i64 0, i32 2
  %19 = load i16, ptr %18, align 2, !tbaa !81
  %20 = and i16 %19, 1
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.MovieClipUser, ptr %1, i64 0, i32 1
  %24 = load i16, ptr %23, align 4, !tbaa !82
  %25 = icmp ne i16 %24, 0
  br label %26

26:                                               ; preds = %22, %17
  %27 = phi i1 [ false, %17 ], [ %25, %22 ]
  %28 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 3
  %29 = load i32, ptr %28, align 8, !tbaa !70
  %30 = icmp eq i32 %29, 1
  %31 = select i1 %30, i1 true, i1 %27
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = tail call fastcc ptr @movieclip_load_sequence_file(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %6, i32 noundef %2) #18
  br label %36

34:                                               ; preds = %26
  %35 = tail call fastcc ptr @movieclip_load_movie_file(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %6, i32 noundef %2) #18
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi ptr [ %33, %32 ], [ %35, %34 ]
  %38 = icmp ne ptr %37, null
  %39 = and i32 %4, 1
  %40 = icmp eq i32 %39, 0
  %41 = and i1 %40, %38
  br i1 %41, label %42, label %55

42:                                               ; preds = %36
  %43 = tail call fastcc zeroext i8 @put_imbuf_cache(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %37, i32 noundef %2, i8 noundef zeroext 1) #18
  %44 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 4
  store i32 %6, ptr %44, align 4, !tbaa !83
  %45 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 5
  %46 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 5, i64 1
  tail call fastcc void @real_ibuf_size(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %37, ptr noundef nonnull %45, ptr noundef nonnull %46) #18
  br i1 %14, label %69, label %61

47:                                               ; preds = %13, %9
  %48 = phi i1 [ %14, %13 ], [ %11, %9 ]
  %49 = phi ptr [ %15, %13 ], [ %10, %9 ]
  %50 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 4
  store i32 %6, ptr %50, align 4, !tbaa !83
  %51 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 5
  %52 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 5, i64 1
  tail call fastcc void @real_ibuf_size(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %49, ptr noundef nonnull %51, ptr noundef nonnull %52) #18
  br i1 %48, label %69, label %53

53:                                               ; preds = %47
  %54 = and i32 %4, 1
  br label %61

55:                                               ; preds = %36
  %56 = icmp eq ptr %37, null
  br i1 %56, label %69, label %57

57:                                               ; preds = %55
  %58 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 4
  store i32 %6, ptr %58, align 4, !tbaa !83
  %59 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 5
  %60 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 5, i64 1
  tail call fastcc void @real_ibuf_size(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %37, ptr noundef nonnull %59, ptr noundef nonnull %60) #18
  br i1 %14, label %69, label %61

61:                                               ; preds = %53, %42, %57
  %62 = phi i32 [ %54, %53 ], [ 0, %42 ], [ %39, %57 ]
  %63 = phi ptr [ %49, %53 ], [ %37, %42 ], [ %37, %57 ]
  %64 = tail call fastcc ptr @postprocess_frame(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %63, i32 noundef %3) #18
  tail call void @IMB_freeImBuf(ptr noundef nonnull %63) #16
  %65 = icmp ne ptr %64, null
  %66 = icmp eq i32 %62, 0
  %67 = and i1 %66, %65
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  tail call fastcc void @put_postprocessed_frame_to_cache(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %64, i32 noundef %2, i32 noundef %3) #18
  br label %69

69:                                               ; preds = %42, %47, %61, %68, %57, %55
  %70 = phi ptr [ %37, %57 ], [ null, %55 ], [ %64, %68 ], [ %64, %61 ], [ %49, %47 ], [ %37, %42 ]
  tail call void @BLI_unlock_thread(i32 noundef 7) #16
  ret ptr %70
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_movieclip_get_postprocessed_ibuf(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 14
  %5 = load i32, ptr %4, align 8, !tbaa !77
  %6 = tail call fastcc ptr @movieclip_get_postprocessed_ibuf(ptr noundef %0, ptr noundef %1, i32 noundef %5, i32 noundef %2, i32 noundef 0) #18
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_movieclip_get_stable_ibuf(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef writeonly %2, ptr noundef writeonly %3, ptr noundef writeonly %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = load i32, ptr %1, align 4, !tbaa !79
  %8 = tail call ptr @BKE_movieclip_get_postprocessed_ibuf(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %5) #18
  %9 = icmp eq ptr %8, null
  br i1 %9, label %49, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 11, i32 5
  %12 = load i32, ptr %11, align 8, !tbaa !84
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %37, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 9
  %17 = load ptr, ptr %16, align 8, !tbaa !85
  %18 = tail call fastcc ptr @get_stable_cached_frame(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %8, i32 noundef %7, i32 noundef %5) #18
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = tail call fastcc ptr @put_stabilized_frame_to_cache(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %8, i32 noundef %7, i32 noundef %5) #18
  br label %22

22:                                               ; preds = %20, %15
  %23 = phi ptr [ %18, %15 ], [ %21, %20 ]
  %24 = icmp eq ptr %2, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.MovieClipCache, ptr %17, i64 0, i32 2, i32 4
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %2, ptr noundef nonnull %26) #18
  br label %27

27:                                               ; preds = %25, %22
  %28 = icmp eq ptr %3, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.MovieClipCache, ptr %17, i64 0, i32 2, i32 5
  %31 = load float, ptr %30, align 8, !tbaa !86
  store float %31, ptr %3, align 4, !tbaa !63
  br label %32

32:                                               ; preds = %29, %27
  %33 = icmp eq ptr %4, null
  br i1 %33, label %46, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.MovieClipCache, ptr %17, i64 0, i32 2, i32 6
  %36 = load float, ptr %35, align 4, !tbaa !90
  store float %36, ptr %4, align 4, !tbaa !63
  br label %46

37:                                               ; preds = %10
  %38 = icmp eq ptr %2, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %37
  tail call fastcc void @zero_v2(ptr noundef nonnull %2) #18
  br label %40

40:                                               ; preds = %39, %37
  %41 = icmp eq ptr %3, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %40
  store float 1.000000e+00, ptr %3, align 4, !tbaa !63
  br label %43

43:                                               ; preds = %42, %40
  %44 = icmp eq ptr %4, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %43
  store float 0.000000e+00, ptr %4, align 4, !tbaa !63
  br label %49

46:                                               ; preds = %32, %34
  %47 = icmp eq ptr %23, %8
  br i1 %47, label %49, label %48

48:                                               ; preds = %46
  tail call void @IMB_freeImBuf(ptr noundef nonnull %8) #16
  br label %49

49:                                               ; preds = %43, %45, %46, %48, %6
  %50 = phi ptr [ null, %6 ], [ %23, %48 ], [ %8, %46 ], [ %8, %45 ], [ %8, %43 ]
  ret ptr %50
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_stable_cached_frame(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readnone %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 !PGOFuncName !91 {
  %6 = alloca [2 x float], align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !85
  %11 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #15
  %12 = sitofp i32 %3 to float
  %13 = tail call float @BKE_movieclip_remap_scene_to_clip_frame(ptr noundef %0, float noundef %12) #18
  %14 = fptosi float %13 to i32
  %15 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 14
  %16 = load i32, ptr %15, align 8, !tbaa !77
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %5
  %20 = tail call fastcc i32 @rendersize_to_proxy(ptr noundef %1, i32 noundef %16) #18, !range !92
  %21 = getelementptr inbounds %struct.MovieClipUser, ptr %1, i64 0, i32 2
  %22 = load i16, ptr %21, align 2, !tbaa !81
  %23 = sext i16 %22 to i32
  br label %24

24:                                               ; preds = %19, %5
  %25 = phi i32 [ %20, %19 ], [ 0, %5 ]
  %26 = phi i32 [ %23, %19 ], [ 0, %5 ]
  %27 = getelementptr inbounds %struct.MovieClipCache, ptr %10, i64 0, i32 2
  %28 = getelementptr inbounds %struct.MovieClipCache, ptr %10, i64 0, i32 2, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !93
  %30 = icmp eq ptr %29, null
  br i1 %30, label %82, label %31

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.MovieClipCache, ptr %10, i64 0, i32 2, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !94
  %34 = icmp eq i32 %33, %3
  br i1 %34, label %35, label %82

35:                                               ; preds = %31
  %36 = load ptr, ptr %27, align 8, !tbaa !95
  %37 = icmp eq ptr %36, %2
  br i1 %37, label %38, label %82

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.MovieClipCache, ptr %10, i64 0, i32 2, i32 10
  %40 = load i16, ptr %39, align 4, !tbaa !96
  %41 = sext i16 %40 to i32
  %42 = icmp eq i32 %26, %41
  br i1 %42, label %43, label %82

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.MovieClipCache, ptr %10, i64 0, i32 2, i32 8
  %45 = load i32, ptr %44, align 4, !tbaa !97
  %46 = icmp eq i32 %45, %25
  br i1 %46, label %47, label %82

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.MovieClipCache, ptr %10, i64 0, i32 2, i32 3
  %49 = load i32, ptr %48, align 4, !tbaa !98
  %50 = icmp eq i32 %49, %4
  br i1 %50, label %51, label %82

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.MovieClipCache, ptr %10, i64 0, i32 2, i32 7
  %53 = load float, ptr %52, align 8, !tbaa !99
  %54 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 11, i32 1, i32 4
  %55 = load float, ptr %54, align 8, !tbaa !100
  %56 = fcmp une float %53, %55
  br i1 %56, label %82, label %57

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.MovieClipCache, ptr %10, i64 0, i32 2, i32 9
  %59 = load i32, ptr %58, align 8, !tbaa !101
  %60 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 11, i32 5, i32 8
  %61 = load i32, ptr %60, align 4, !tbaa !102
  %62 = icmp eq i32 %59, %61
  br i1 %62, label %63, label %82

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.ImBuf, ptr %29, i64 0, i32 2
  %65 = load i32, ptr %64, align 8, !tbaa !103
  %66 = getelementptr inbounds %struct.ImBuf, ptr %29, i64 0, i32 3
  %67 = load i32, ptr %66, align 4, !tbaa !107
  call void @BKE_tracking_stabilization_data_get(ptr noundef nonnull %11, i32 noundef %14, i32 noundef %65, i32 noundef %67, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8) #16
  %68 = load float, ptr %7, align 4, !tbaa !63
  %69 = getelementptr inbounds %struct.MovieClipCache, ptr %10, i64 0, i32 2, i32 5
  %70 = load float, ptr %69, align 8, !tbaa !86
  %71 = fcmp une float %68, %70
  br i1 %71, label %82, label %72

72:                                               ; preds = %63
  %73 = load float, ptr %8, align 4, !tbaa !63
  %74 = getelementptr inbounds %struct.MovieClipCache, ptr %10, i64 0, i32 2, i32 6
  %75 = load float, ptr %74, align 4, !tbaa !90
  %76 = fcmp une float %73, %75
  br i1 %76, label %82, label %77

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.MovieClipCache, ptr %10, i64 0, i32 2, i32 4
  %79 = call fastcc zeroext i8 @equals_v2v2(ptr noundef nonnull %6, ptr noundef nonnull %78) #18, !range !108
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %77
  call void @IMB_refImBuf(ptr noundef nonnull %29) #16
  br label %82

82:                                               ; preds = %63, %72, %77, %57, %51, %47, %38, %43, %35, %24, %31, %81
  %83 = phi ptr [ %29, %81 ], [ null, %31 ], [ null, %24 ], [ null, %35 ], [ null, %43 ], [ null, %38 ], [ null, %47 ], [ null, %51 ], [ null, %57 ], [ null, %77 ], [ null, %72 ], [ null, %63 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #15
  ret ptr %83
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @put_stabilized_frame_to_cache(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 !PGOFuncName !109 {
  %6 = alloca [2 x float], align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !85
  %11 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #15
  %12 = sitofp i32 %3 to float
  %13 = tail call float @BKE_movieclip_remap_scene_to_clip_frame(ptr noundef %0, float noundef %12) #18
  %14 = fptosi float %13 to i32
  %15 = call ptr @BKE_tracking_stabilize_frame(ptr noundef nonnull %11, i32 noundef %14, ptr noundef %2, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8) #16
  %16 = getelementptr inbounds %struct.MovieClipCache, ptr %10, i64 0, i32 2
  %17 = getelementptr inbounds %struct.MovieClipCache, ptr %10, i64 0, i32 2, i32 4
  call fastcc void @copy_v2_v2(ptr noundef nonnull %17, ptr noundef nonnull %6) #18
  store ptr %2, ptr %16, align 8, !tbaa !95
  %18 = load float, ptr %7, align 4, !tbaa !63
  %19 = getelementptr inbounds %struct.MovieClipCache, ptr %10, i64 0, i32 2, i32 5
  store float %18, ptr %19, align 8, !tbaa !86
  %20 = load float, ptr %8, align 4, !tbaa !63
  %21 = getelementptr inbounds %struct.MovieClipCache, ptr %10, i64 0, i32 2, i32 6
  store float %20, ptr %21, align 4, !tbaa !90
  %22 = getelementptr inbounds %struct.MovieClipCache, ptr %10, i64 0, i32 2, i32 2
  store i32 %3, ptr %22, align 8, !tbaa !94
  %23 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 11, i32 1, i32 4
  %24 = load float, ptr %23, align 8, !tbaa !100
  %25 = getelementptr inbounds %struct.MovieClipCache, ptr %10, i64 0, i32 2, i32 7
  store float %24, ptr %25, align 8, !tbaa !99
  %26 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 11, i32 5, i32 8
  %27 = load i32, ptr %26, align 4, !tbaa !102
  %28 = getelementptr inbounds %struct.MovieClipCache, ptr %10, i64 0, i32 2, i32 9
  store i32 %27, ptr %28, align 8, !tbaa !101
  %29 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 14
  %30 = load i32, ptr %29, align 8, !tbaa !77
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %5
  %34 = call fastcc i32 @rendersize_to_proxy(ptr noundef %1, i32 noundef %30) #18, !range !92
  %35 = getelementptr inbounds %struct.MovieClipUser, ptr %1, i64 0, i32 2
  %36 = load i16, ptr %35, align 2, !tbaa !81
  br label %37

37:                                               ; preds = %5, %33
  %38 = phi i32 [ %34, %33 ], [ 0, %5 ]
  %39 = phi i16 [ %36, %33 ], [ 0, %5 ]
  %40 = getelementptr inbounds %struct.MovieClipCache, ptr %10, i64 0, i32 2, i32 8
  store i32 %38, ptr %40, align 4
  %41 = getelementptr inbounds %struct.MovieClipCache, ptr %10, i64 0, i32 2, i32 10
  store i16 %39, ptr %41, align 4
  %42 = getelementptr inbounds %struct.MovieClipCache, ptr %10, i64 0, i32 2, i32 3
  store i32 %4, ptr %42, align 4, !tbaa !98
  %43 = getelementptr inbounds %struct.MovieClipCache, ptr %10, i64 0, i32 2, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !93
  %45 = icmp eq ptr %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %37
  call void @IMB_freeImBuf(ptr noundef nonnull %44) #16
  br label %47

47:                                               ; preds = %46, %37
  store ptr %15, ptr %43, align 8, !tbaa !93
  call void @IMB_refImBuf(ptr noundef %15) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #15
  ret ptr %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !110 {
  %3 = load float, ptr %1, align 4, !tbaa !63
  store float %3, ptr %0, align 4, !tbaa !63
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !63
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !63
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v2(ptr nocapture noundef writeonly %0) unnamed_addr #5 !PGOFuncName !111 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !63
  ret void
}

; Function Attrs: optsize
declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BKE_movieclip_has_frame(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BKE_movieclip_get_ibuf(ptr noundef %0, ptr noundef %1) #18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @IMB_freeImBuf(ptr noundef nonnull %3) #16
  br label %6

6:                                                ; preds = %2, %5
  %7 = phi i8 [ 1, %5 ], [ 0, %2 ]
  ret i8 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_movieclip_get_size(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !59
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 5, i64 1
  %10 = load i32, ptr %9, align 4, !tbaa !59
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  store i32 %6, ptr %2, align 4, !tbaa !59
  %13 = load i32, ptr %9, align 4, !tbaa !59
  store i32 %13, ptr %3, align 4, !tbaa !59
  br label %35

14:                                               ; preds = %8, %4
  %15 = tail call ptr @BKE_movieclip_get_ibuf(ptr noundef nonnull %0, ptr noundef %1) #18
  %16 = icmp eq ptr %15, null
  br i1 %16, label %30, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.ImBuf, ptr %15, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !103
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.ImBuf, ptr %15, i64 0, i32 3
  %23 = load i32, ptr %22, align 4, !tbaa !107
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call fastcc void @real_ibuf_size(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %15, ptr noundef %2, ptr noundef %3) #18
  br label %34

26:                                               ; preds = %17, %21
  %27 = load i32, ptr %5, align 8, !tbaa !59
  store i32 %27, ptr %2, align 4, !tbaa !59
  %28 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 5, i64 1
  %29 = load i32, ptr %28, align 4, !tbaa !59
  store i32 %29, ptr %3, align 4, !tbaa !59
  br label %34

30:                                               ; preds = %14
  %31 = load i32, ptr %5, align 8, !tbaa !59
  store i32 %31, ptr %2, align 4, !tbaa !59
  %32 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 5, i64 1
  %33 = load i32, ptr %32, align 4, !tbaa !59
  store i32 %33, ptr %3, align 4, !tbaa !59
  br label %35

34:                                               ; preds = %26, %25
  tail call void @IMB_freeImBuf(ptr noundef nonnull %15) #16
  br label %35

35:                                               ; preds = %30, %34, %12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @real_ibuf_size(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3, ptr nocapture noundef %4) unnamed_addr #4 !PGOFuncName !112 {
  %6 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !103
  store i32 %7, ptr %3, align 4, !tbaa !59
  %8 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 3
  %9 = load i32, ptr %8, align 4, !tbaa !107
  store i32 %9, ptr %4, align 4, !tbaa !59
  %10 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 14
  %11 = load i32, ptr %10, align 8, !tbaa !77
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %44, label %14

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.MovieClipUser, ptr %1, i64 0, i32 1
  %16 = load i16, ptr %15, align 4, !tbaa !82
  switch i16 %16, label %44 [
    i16 1, label %17
    i16 2, label %22
    i16 3, label %31
  ]

17:                                               ; preds = %14
  %18 = load i32, ptr %3, align 4, !tbaa !59
  %19 = shl nsw i32 %18, 2
  store i32 %19, ptr %3, align 4, !tbaa !59
  %20 = load i32, ptr %4, align 4, !tbaa !59
  %21 = shl nsw i32 %20, 2
  br label %42

22:                                               ; preds = %14
  %23 = load i32, ptr %3, align 4, !tbaa !59
  %24 = sitofp i32 %23 to float
  %25 = fmul float %24, 2.000000e+00
  %26 = fptosi float %25 to i32
  store i32 %26, ptr %3, align 4, !tbaa !59
  %27 = load i32, ptr %4, align 4, !tbaa !59
  %28 = sitofp i32 %27 to float
  %29 = fmul float %28, 2.000000e+00
  %30 = fptosi float %29 to i32
  br label %42

31:                                               ; preds = %14
  %32 = load i32, ptr %3, align 4, !tbaa !59
  %33 = sitofp i32 %32 to float
  %34 = fmul float %33, 4.000000e+00
  %35 = fdiv float %34, 3.000000e+00
  %36 = fptosi float %35 to i32
  store i32 %36, ptr %3, align 4, !tbaa !59
  %37 = load i32, ptr %4, align 4, !tbaa !59
  %38 = sitofp i32 %37 to float
  %39 = fmul float %38, 4.000000e+00
  %40 = fdiv float %39, 3.000000e+00
  %41 = fptosi float %40 to i32
  br label %42

42:                                               ; preds = %31, %22, %17
  %43 = phi i32 [ %21, %17 ], [ %30, %22 ], [ %41, %31 ]
  store i32 %43, ptr %4, align 4, !tbaa !59
  br label %44

44:                                               ; preds = %42, %14, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_movieclip_get_size_fl(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  call void @BKE_movieclip_get_size(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5) #18
  %6 = load i32, ptr %4, align 4, !tbaa !59
  %7 = load i32, ptr %5, align 4, !tbaa !59
  %8 = insertelement <2 x i32> poison, i32 %6, i64 0
  %9 = insertelement <2 x i32> %8, i32 %7, i64 1
  %10 = sitofp <2 x i32> %9 to <2 x float>
  store <2 x float> %10, ptr %2, align 4, !tbaa !63
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BKE_movieclip_get_duration(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 15
  %3 = load i32, ptr %2, align 4, !tbaa !75
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  tail call fastcc void @movieclip_calc_length(ptr noundef nonnull %0) #18
  %6 = load i32, ptr %2, align 4, !tbaa !75
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi i32 [ %6, %5 ], [ %3, %1 ]
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_movieclip_get_aspect(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #4 {
  store float 1.000000e+00, ptr %1, align 4, !tbaa !63
  %4 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 7
  %5 = load float, ptr %4, align 4, !tbaa !113
  %6 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 6
  %7 = load float, ptr %6, align 8, !tbaa !114
  %8 = fdiv float %5, %7
  %9 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 11, i32 1, i32 4
  %10 = load float, ptr %9, align 8, !tbaa !115
  %11 = fdiv float %8, %10
  store float %11, ptr %2, align 4, !tbaa !63
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_movieclip_get_cache_segments(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  store i32 0, ptr %2, align 4, !tbaa !59
  store ptr null, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !85
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 14
  %10 = load i32, ptr %9, align 8, !tbaa !77
  %11 = tail call fastcc i32 @rendersize_to_proxy(ptr noundef %1, i32 noundef %10) #18, !range !92
  %12 = load ptr, ptr %6, align 8, !tbaa !116
  %13 = getelementptr inbounds %struct.MovieClipUser, ptr %1, i64 0, i32 2
  %14 = load i16, ptr %13, align 2, !tbaa !81
  %15 = sext i16 %14 to i32
  tail call void @IMB_moviecache_get_cache_segments(ptr noundef %12, i32 noundef %11, i32 noundef %15, ptr noundef nonnull %2, ptr noundef nonnull %3) #16
  br label %16

16:                                               ; preds = %8, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef i32 @rendersize_to_proxy(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 !PGOFuncName !117 {
  %3 = and i32 %1, 1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.MovieClipUser, ptr %0, i64 0, i32 1
  %7 = load i16, ptr %6, align 4, !tbaa !82
  %8 = icmp ult i16 %7, 5
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = zext nneg i16 %7 to i64
  %11 = getelementptr inbounds [5 x i32], ptr @switch.table.rendersize_to_proxy, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4
  br label %13

13:                                               ; preds = %5, %9, %2
  %14 = phi i32 [ 0, %2 ], [ %12, %9 ], [ 0, %5 ]
  ret i32 %14
}

; Function Attrs: optsize
declare void @IMB_moviecache_get_cache_segments(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @BKE_movieclip_user_set_frame(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #5 {
  store i32 %1, ptr %0, align 4, !tbaa !79
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_movieclip_clear_cache(ptr noundef %0) local_unnamed_addr #0 {
  tail call fastcc void @free_buffers(ptr noundef %0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_buffers(ptr noundef %0) unnamed_addr #0 !PGOFuncName !118 {
  %2 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !85
  %4 = icmp eq ptr %3, null
  br i1 %4, label %23, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !116
  tail call void @IMB_moviecache_free(ptr noundef %6) #16
  %7 = load ptr, ptr %2, align 8, !tbaa !85
  %8 = getelementptr inbounds %struct.MovieClipCache, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !119
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %5
  tail call void @IMB_freeImBuf(ptr noundef nonnull %9) #16
  %12 = load ptr, ptr %2, align 8, !tbaa !85
  br label %13

13:                                               ; preds = %11, %5
  %14 = phi ptr [ %12, %11 ], [ %7, %5 ]
  %15 = getelementptr inbounds %struct.MovieClipCache, ptr %14, i64 0, i32 2, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !93
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  tail call void @IMB_freeImBuf(ptr noundef nonnull %16) #16
  %19 = load ptr, ptr %2, align 8, !tbaa !85
  br label %20

20:                                               ; preds = %18, %13
  %21 = phi ptr [ %19, %18 ], [ %14, %13 ]
  %22 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %22(ptr noundef %21) #16
  store ptr null, ptr %2, align 8, !tbaa !85
  br label %23

23:                                               ; preds = %20, %1
  %24 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 8
  %25 = load ptr, ptr %24, align 8, !tbaa !73
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  tail call void @IMB_free_anim(ptr noundef nonnull %25) #16
  store ptr null, ptr %24, align 8, !tbaa !73
  br label %28

28:                                               ; preds = %27, %23
  tail call void @BKE_free_animdata(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_movieclip_reload(ptr noundef %0) local_unnamed_addr #0 {
  tail call fastcc void @free_buffers(ptr noundef %0) #18
  %2 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 11, i32 5, i32 9
  store i32 0, ptr %2, align 8, !tbaa !120
  tail call fastcc void @detect_clip_source(ptr noundef %0) #18
  %3 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 5
  %4 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 5, i64 1
  store i32 0, ptr %4, align 4, !tbaa !59
  store i32 0, ptr %3, align 8, !tbaa !59
  tail call fastcc void @movieclip_load_get_szie(ptr noundef %0) #18
  tail call fastcc void @movieclip_calc_length(ptr noundef %0) #18
  %5 = load ptr, ptr @G, align 8, !tbaa !38
  %6 = getelementptr inbounds %struct.Main, ptr %5, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %1, %16
  %10 = phi ptr [ %17, %16 ], [ %7, %1 ]
  %11 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 18
  %12 = load ptr, ptr %11, align 8, !tbaa !121
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = tail call zeroext i8 @nodeUpdateID(ptr noundef nonnull %12, ptr noundef %0) #16
  br label %16

16:                                               ; preds = %9, %14
  %17 = load ptr, ptr %10, align 8, !tbaa !34
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %9, !llvm.loop !139

19:                                               ; preds = %16, %1
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @nodeUpdateID(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_movieclip_update_scopes(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.MovieTrackingMarker, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x float], align 8
  %8 = alloca [2 x float], align 8
  %9 = load i16, ptr %2, align 8, !tbaa !140
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %99

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.MovieClipScopes, ptr %2, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !143
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @IMB_freeImBuf(ptr noundef nonnull %13) #16
  store ptr null, ptr %12, align 8, !tbaa !143
  br label %16

16:                                               ; preds = %15, %11
  %17 = getelementptr inbounds %struct.MovieClipScopes, ptr %2, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !144
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @IMB_freeImBuf(ptr noundef nonnull %18) #16
  store ptr null, ptr %17, align 8, !tbaa !144
  br label %21

21:                                               ; preds = %20, %16
  %22 = getelementptr inbounds %struct.MovieClipScopes, ptr %2, i64 0, i32 13
  %23 = getelementptr inbounds %struct.MovieClipScopes, ptr %2, i64 0, i32 12
  %24 = getelementptr inbounds %struct.MovieClipScopes, ptr %2, i64 0, i32 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %23, i8 0, i64 16, i1 false)
  store i16 1, ptr %24, align 2, !tbaa !145
  %25 = icmp eq ptr %0, null
  br i1 %25, label %96, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 11
  %28 = tail call ptr @BKE_tracking_track_get_active(ptr noundef nonnull %27) #16
  %29 = icmp eq ptr %28, null
  br i1 %29, label %96, label %30

30:                                               ; preds = %26
  %31 = load i32, ptr %1, align 4, !tbaa !79
  %32 = sitofp i32 %31 to float
  %33 = tail call float @BKE_movieclip_remap_scene_to_clip_frame(ptr noundef nonnull %0, float noundef %32) #18
  %34 = fptosi float %33 to i32
  %35 = tail call ptr @BKE_tracking_marker_get(ptr noundef nonnull %28, i32 noundef %34) #16
  store ptr %35, ptr %22, align 8, !tbaa !146
  store ptr %28, ptr %23, align 8, !tbaa !147
  %36 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %35, i64 0, i32 5
  %37 = load i32, ptr %36, align 4, !tbaa !148
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %30
  %41 = getelementptr inbounds %struct.MovieClipScopes, ptr %2, i64 0, i32 9
  store i16 1, ptr %41, align 8, !tbaa !149
  br label %86

42:                                               ; preds = %30
  %43 = tail call ptr @BKE_movieclip_get_ibuf(ptr noundef nonnull %0, ptr noundef nonnull %1) #18
  %44 = getelementptr inbounds %struct.MovieClipScopes, ptr %2, i64 0, i32 9
  store i16 0, ptr %44, align 8, !tbaa !149
  %45 = icmp eq ptr %43, null
  br i1 %45, label %85, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.ImBuf, ptr %43, i64 0, i32 8
  %48 = load ptr, ptr %47, align 8, !tbaa !150
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.ImBuf, ptr %43, i64 0, i32 9
  %52 = load ptr, ptr %51, align 8, !tbaa !151
  %53 = icmp eq ptr %52, null
  br i1 %53, label %85, label %54

54:                                               ; preds = %50, %46
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 4 dereferenceable(64) %35, i64 64, i1 false), !tbaa.struct !152
  %55 = getelementptr inbounds %struct.MovieClipUser, ptr %1, i64 0, i32 2
  %56 = load i16, ptr %55, align 2, !tbaa !81
  %57 = and i16 %56, 1
  %58 = icmp eq i16 %57, 0
  br i1 %58, label %74, label %59

59:                                               ; preds = %54
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #15
  %60 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 11, i32 1, i32 4
  %61 = load float, ptr %60, align 8, !tbaa !115
  %62 = fdiv float 1.000000e+00, %61
  call void @BKE_movieclip_get_size(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %5, ptr noundef nonnull %6) #18
  %63 = load i32, ptr %5, align 4, !tbaa !59
  %64 = sitofp i32 %63 to float
  %65 = load i32, ptr %6, align 4, !tbaa !59
  %66 = sitofp i32 %65 to float
  %67 = fmul float %62, %66
  %68 = load <2 x float>, ptr %4, align 8, !tbaa !63
  %69 = insertelement <2 x float> poison, float %64, i64 0
  %70 = insertelement <2 x float> %69, float %67, i64 1
  %71 = fmul <2 x float> %68, %70
  store <2 x float> %71, ptr %4, align 8, !tbaa !63
  call void @BKE_tracking_undistort_v2(ptr noundef nonnull %27, ptr noundef nonnull %4, ptr noundef nonnull %4) #16
  %72 = load <2 x float>, ptr %4, align 8, !tbaa !63
  %73 = fdiv <2 x float> %72, %70
  store <2 x float> %73, ptr %4, align 8, !tbaa !63
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  br label %74

74:                                               ; preds = %59, %54
  %75 = call ptr @BKE_tracking_get_search_imbuf(ptr noundef nonnull %43, ptr noundef nonnull %28, ptr noundef nonnull %4, i8 noundef zeroext 1, i8 noundef zeroext 1) #16
  store ptr %75, ptr %17, align 8, !tbaa !144
  %76 = getelementptr inbounds %struct.MovieClipScopes, ptr %2, i64 0, i32 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %76, ptr noundef nonnull align 8 dereferenceable(64) %4, i64 64, i1 false), !tbaa.struct !152
  %77 = getelementptr inbounds %struct.ImBuf, ptr %43, i64 0, i32 2
  %78 = getelementptr inbounds %struct.MovieClipScopes, ptr %2, i64 0, i32 3
  %79 = load <2 x i32>, ptr %77, align 8, !tbaa !59
  store <2 x i32> %79, ptr %78, align 8, !tbaa !59
  %80 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %28, i64 0, i32 13
  %81 = load i32, ptr %80, align 8, !tbaa !153
  %82 = trunc i32 %81 to i16
  %83 = and i16 %82, 2048
  %84 = getelementptr inbounds %struct.MovieClipScopes, ptr %2, i64 0, i32 1
  store i16 %83, ptr %84, align 2, !tbaa !155
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #15
  br label %85

85:                                               ; preds = %74, %50, %42
  call void @IMB_freeImBuf(ptr noundef %43) #16
  br label %86

86:                                               ; preds = %85, %40
  %87 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %28, i64 0, i32 13
  %88 = load i32, ptr %87, align 8, !tbaa !153
  %89 = and i32 %88, 64
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #15
  store i16 0, ptr %24, align 2, !tbaa !145
  call void @BKE_tracking_marker_pattern_minmax(ptr noundef nonnull %35, ptr noundef nonnull %7, ptr noundef nonnull %8) #16
  %92 = getelementptr inbounds %struct.MovieClipScopes, ptr %2, i64 0, i32 14
  %93 = load <2 x float>, ptr %8, align 8, !tbaa !63
  %94 = load <2 x float>, ptr %7, align 8, !tbaa !63
  %95 = fsub <2 x float> %93, %94
  store <2 x float> %95, ptr %92, align 8, !tbaa !63
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #15
  br label %96

96:                                               ; preds = %26, %91, %86, %21
  %97 = load i32, ptr %1, align 4, !tbaa !79
  %98 = getelementptr inbounds %struct.MovieClipScopes, ptr %2, i64 0, i32 11
  store i32 %97, ptr %98, align 4, !tbaa !156
  store i16 1, ptr %2, align 8, !tbaa !140
  br label %99

99:                                               ; preds = %3, %96
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_tracking_track_get_active(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local float @BKE_movieclip_remap_scene_to_clip_frame(ptr nocapture noundef readonly %0, float noundef %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 16
  %4 = load i32, ptr %3, align 8, !tbaa !67
  %5 = sitofp i32 %4 to float
  %6 = fsub float %1, %5
  %7 = fadd float %6, 1.000000e+00
  ret float %7
}

; Function Attrs: optsize
declare ptr @BKE_tracking_marker_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: optsize
declare void @BKE_tracking_undistort_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_tracking_get_search_imbuf(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_tracking_marker_pattern_minmax(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_movieclip_build_proxy_frame(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i8 noundef zeroext %6) local_unnamed_addr #0 {
  %8 = alloca %struct.MovieClipUser, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #15
  %9 = icmp eq i32 %5, 0
  br i1 %9, label %33, label %10

10:                                               ; preds = %7
  store i32 %3, ptr %8, align 4, !tbaa !79
  %11 = getelementptr inbounds %struct.MovieClipUser, ptr %8, i64 0, i32 2
  store i16 0, ptr %11, align 2, !tbaa !81
  %12 = getelementptr inbounds %struct.MovieClipUser, ptr %8, i64 0, i32 1
  store i16 0, ptr %12, align 4, !tbaa !82
  %13 = call ptr @BKE_movieclip_get_ibuf_flag(ptr noundef %0, ptr noundef nonnull %8, i32 noundef %1, i32 noundef 1) #18
  %14 = icmp eq ptr %13, null
  br i1 %14, label %33, label %15

15:                                               ; preds = %10
  %16 = icmp eq i8 %6, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %15
  %18 = tail call fastcc ptr @get_undistorted_ibuf(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %13) #18
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi ptr [ %18, %17 ], [ %13, %15 ]
  %21 = icmp sgt i32 %5, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %19
  %23 = zext nneg i32 %5 to i64
  br label %24

24:                                               ; preds = %22, %24
  %25 = phi i64 [ 0, %22 ], [ %28, %24 ]
  %26 = getelementptr inbounds i32, ptr %4, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !59
  tail call fastcc void @movieclip_build_proxy_ibuf(ptr noundef %0, ptr noundef %20, i32 noundef %3, i32 noundef %27, i8 noundef zeroext %6, i8 noundef zeroext 1) #18
  %28 = add nuw nsw i64 %25, 1
  %29 = icmp eq i64 %28, %23
  br i1 %29, label %30, label %24, !llvm.loop !157

30:                                               ; preds = %24, %19
  tail call void @IMB_freeImBuf(ptr noundef nonnull %13) #16
  %31 = icmp eq ptr %20, %13
  br i1 %31, label %33, label %32

32:                                               ; preds = %30
  tail call void @IMB_freeImBuf(ptr noundef %20) #16
  br label %33

33:                                               ; preds = %10, %32, %30, %7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @get_undistorted_ibuf(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !158 {
  %4 = icmp eq ptr %1, null
  %5 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 11
  %6 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !103
  %8 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 3
  %9 = load i32, ptr %8, align 4, !tbaa !107
  br i1 %4, label %12, label %10

10:                                               ; preds = %3
  %11 = tail call ptr @BKE_tracking_distortion_exec(ptr noundef nonnull %1, ptr noundef nonnull %5, ptr noundef %2, i32 noundef %7, i32 noundef %9, float noundef 0.000000e+00, i8 noundef zeroext 1) #16
  br label %14

12:                                               ; preds = %3
  %13 = tail call ptr @BKE_tracking_undistort_frame(ptr noundef nonnull %5, ptr noundef %2, i32 noundef %7, i32 noundef %9, float noundef 0.000000e+00) #16
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi ptr [ %11, %10 ], [ %13, %12 ]
  %16 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !103
  %18 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 3
  %19 = load i32, ptr %18, align 4, !tbaa !107
  %20 = tail call ptr @IMB_scaleImBuf(ptr noundef %15, i32 noundef %17, i32 noundef %19) #16
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @movieclip_build_proxy_ibuf(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5) unnamed_addr #0 !PGOFuncName !159 {
  %7 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %7) #15
  %8 = tail call fastcc i32 @rendersize_to_number(i32 noundef %3) #18, !range !160
  call fastcc void @get_proxy_fname(ptr noundef %0, i32 noundef %3, i8 noundef zeroext %4, i32 noundef %2, ptr noundef nonnull %7) #18
  %9 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !103
  %11 = mul nsw i32 %10, %8
  %12 = sitofp i32 %11 to float
  %13 = fdiv float %12, 1.000000e+02
  %14 = fptosi float %13 to i32
  %15 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !107
  %17 = mul nsw i32 %16, %8
  %18 = sitofp i32 %17 to float
  %19 = fdiv float %18, 1.000000e+02
  %20 = fptosi float %19 to i32
  %21 = call ptr @IMB_dupImBuf(ptr noundef %1) #16
  %22 = icmp eq i8 %5, 0
  %23 = shl i32 %14, 16
  %24 = ashr exact i32 %23, 16
  %25 = shl i32 %20, 16
  %26 = ashr exact i32 %25, 16
  br i1 %22, label %28, label %27

27:                                               ; preds = %6
  call void @IMB_scaleImBuf_threaded(ptr noundef %21, i32 noundef %24, i32 noundef %26) #16
  br label %30

28:                                               ; preds = %6
  %29 = call ptr @IMB_scaleImBuf(ptr noundef %21, i32 noundef %24, i32 noundef %26) #16
  br label %30

30:                                               ; preds = %28, %27
  %31 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 13, i32 2
  %32 = load i16, ptr %31, align 2, !tbaa !66
  %33 = sext i16 %32 to i32
  %34 = or i32 %33, 134217728
  %35 = getelementptr inbounds %struct.ImBuf, ptr %21, i64 0, i32 26
  store i32 %34, ptr %35, align 8, !tbaa !161
  %36 = getelementptr inbounds %struct.ImBuf, ptr %21, i64 0, i32 4
  %37 = load i8, ptr %36, align 8, !tbaa !162
  %38 = icmp eq i8 %37, 32
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  store i8 24, ptr %36, align 8, !tbaa !162
  br label %40

40:                                               ; preds = %39, %30
  call void @BLI_lock_thread(i32 noundef 7) #16
  call void @BLI_make_existing_file(ptr noundef nonnull %7) #16
  %41 = call signext i16 @IMB_saveiff(ptr noundef nonnull %21, ptr noundef nonnull %7, i32 noundef 1) #16
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  call void @perror(ptr noundef nonnull %7) #19
  br label %44

44:                                               ; preds = %43, %40
  call void @BLI_unlock_thread(i32 noundef 7) #16
  call void @IMB_freeImBuf(ptr noundef nonnull %21) #16
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %7) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_movieclip_build_proxy_frame_for_ibuf(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i8 noundef zeroext %6) local_unnamed_addr #0 {
  %8 = icmp ne i32 %5, 0
  %9 = icmp ne ptr %1, null
  %10 = and i1 %9, %8
  br i1 %10, label %11, label %29

11:                                               ; preds = %7
  %12 = icmp eq i8 %6, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %11
  %14 = tail call fastcc ptr @get_undistorted_ibuf(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %1) #18
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi ptr [ %14, %13 ], [ %1, %11 ]
  %17 = icmp sgt i32 %5, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %15
  %19 = zext nneg i32 %5 to i64
  br label %20

20:                                               ; preds = %18, %20
  %21 = phi i64 [ 0, %18 ], [ %24, %20 ]
  %22 = getelementptr inbounds i32, ptr %4, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !59
  tail call fastcc void @movieclip_build_proxy_ibuf(ptr noundef %0, ptr noundef %16, i32 noundef %3, i32 noundef %23, i8 noundef zeroext %6, i8 noundef zeroext 0) #18
  %24 = add nuw nsw i64 %21, 1
  %25 = icmp eq i64 %24, %19
  br i1 %25, label %26, label %20, !llvm.loop !163

26:                                               ; preds = %20, %15
  %27 = icmp eq ptr %16, %1
  br i1 %27, label %29, label %28

28:                                               ; preds = %26
  tail call void @IMB_freeImBuf(ptr noundef %16) #16
  br label %29

29:                                               ; preds = %26, %28, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_movieclip_free(ptr noundef %0) local_unnamed_addr #0 {
  tail call fastcc void @free_buffers(ptr noundef %0) #18
  %2 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 11
  tail call void @BKE_tracking_free(ptr noundef nonnull %2) #16
  ret void
}

; Function Attrs: optsize
declare void @BKE_tracking_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_movieclip_unlink(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.NodeTreeIterStore, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 26
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %50, label %12

9:                                                ; preds = %17, %12
  %10 = load ptr, ptr %13, align 8, !tbaa !34
  %11 = icmp eq ptr %10, null
  br i1 %11, label %50, label %12, !llvm.loop !164

12:                                               ; preds = %2, %9
  %13 = phi ptr [ %10, %9 ], [ %7, %2 ]
  %14 = getelementptr inbounds %struct.bScreen, ptr %13, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = icmp eq ptr %15, null
  br i1 %16, label %9, label %20

17:                                               ; preds = %47, %20
  %18 = load ptr, ptr %21, align 8, !tbaa !34
  %19 = icmp eq ptr %18, null
  br i1 %19, label %9, label %20, !llvm.loop !165

20:                                               ; preds = %12, %17
  %21 = phi ptr [ %18, %17 ], [ %15, %12 ]
  %22 = getelementptr inbounds %struct.ScrArea, ptr %21, i64 0, i32 19
  %23 = load ptr, ptr %22, align 8, !tbaa !34
  %24 = icmp eq ptr %23, null
  br i1 %24, label %17, label %25

25:                                               ; preds = %20, %47
  %26 = phi ptr [ %48, %47 ], [ %23, %20 ]
  %27 = getelementptr inbounds %struct.SpaceLink, ptr %26, i64 0, i32 3
  %28 = load i32, ptr %27, align 8, !tbaa !166
  switch i32 %28, label %47 [
    i32 20, label %29
    i32 1, label %34
  ]

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.SpaceClip, ptr %26, i64 0, i32 10
  %31 = load ptr, ptr %30, align 8, !tbaa !168
  %32 = icmp eq ptr %31, %1
  br i1 %32, label %33, label %47

33:                                               ; preds = %29
  store ptr null, ptr %30, align 8, !tbaa !168
  br label %47

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.View3D, ptr %26, i64 0, i32 18
  %36 = load ptr, ptr %35, align 8, !tbaa !34
  %37 = icmp eq ptr %36, null
  br i1 %37, label %47, label %38

38:                                               ; preds = %34, %44
  %39 = phi ptr [ %45, %44 ], [ %36, %34 ]
  %40 = getelementptr inbounds %struct.BGpic, ptr %39, i64 0, i32 4
  %41 = load ptr, ptr %40, align 8, !tbaa !171
  %42 = icmp eq ptr %41, %1
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store ptr null, ptr %40, align 8, !tbaa !171
  br label %44

44:                                               ; preds = %38, %43
  %45 = load ptr, ptr %39, align 8, !tbaa !34
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %38, !llvm.loop !174

47:                                               ; preds = %44, %34, %25, %29, %33
  %48 = load ptr, ptr %26, align 8, !tbaa !34
  %49 = icmp eq ptr %48, null
  br i1 %49, label %17, label %25, !llvm.loop !175

50:                                               ; preds = %9, %2
  %51 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 11
  %52 = load ptr, ptr %51, align 8, !tbaa !34
  %53 = icmp eq ptr %52, null
  br i1 %53, label %63, label %54

54:                                               ; preds = %50, %60
  %55 = phi ptr [ %61, %60 ], [ %52, %50 ]
  %56 = getelementptr inbounds %struct.Scene, ptr %55, i64 0, i32 41
  %57 = load ptr, ptr %56, align 8, !tbaa !176
  %58 = icmp eq ptr %57, %1
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  store ptr null, ptr %56, align 8, !tbaa !176
  br label %60

60:                                               ; preds = %54, %59
  %61 = load ptr, ptr %55, align 8, !tbaa !34
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %54, !llvm.loop !177

63:                                               ; preds = %60, %50
  %64 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 13
  %65 = load ptr, ptr %64, align 8, !tbaa !34
  %66 = icmp eq ptr %65, null
  br i1 %66, label %99, label %70

67:                                               ; preds = %96, %70
  %68 = load ptr, ptr %71, align 8, !tbaa !34
  %69 = icmp eq ptr %68, null
  br i1 %69, label %99, label %70, !llvm.loop !178

70:                                               ; preds = %63, %67
  %71 = phi ptr [ %68, %67 ], [ %65, %63 ]
  %72 = getelementptr inbounds %struct.Object, ptr %71, i64 0, i32 106
  %73 = load ptr, ptr %72, align 8, !tbaa !34
  %74 = icmp eq ptr %73, null
  br i1 %74, label %67, label %75

75:                                               ; preds = %70, %96
  %76 = phi ptr [ %97, %96 ], [ %73, %70 ]
  %77 = getelementptr inbounds %struct.bConstraint, ptr %76, i64 0, i32 3
  %78 = load i16, ptr %77, align 8, !tbaa !179
  switch i16 %78, label %96 [
    i16 26, label %79
    i16 27, label %84
    i16 28, label %89
  ]

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.bConstraint, ptr %76, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !181
  %82 = load ptr, ptr %81, align 8, !tbaa !182
  %83 = icmp eq ptr %82, %1
  br i1 %83, label %94, label %96

84:                                               ; preds = %75
  %85 = getelementptr inbounds %struct.bConstraint, ptr %76, i64 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !181
  %87 = load ptr, ptr %86, align 8, !tbaa !184
  %88 = icmp eq ptr %87, %1
  br i1 %88, label %94, label %96

89:                                               ; preds = %75
  %90 = getelementptr inbounds %struct.bConstraint, ptr %76, i64 0, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !181
  %92 = load ptr, ptr %91, align 8, !tbaa !186
  %93 = icmp eq ptr %92, %1
  br i1 %93, label %94, label %96

94:                                               ; preds = %89, %84, %79
  %95 = phi ptr [ %81, %79 ], [ %86, %84 ], [ %91, %89 ]
  store ptr null, ptr %95, align 8, !tbaa !34
  br label %96

96:                                               ; preds = %94, %89, %75, %84, %79
  %97 = load ptr, ptr %76, align 8, !tbaa !34
  %98 = icmp eq ptr %97, null
  br i1 %98, label %67, label %75, !llvm.loop !188

99:                                               ; preds = %67, %63
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  call void @BKE_node_tree_iter_init(ptr noundef nonnull %3, ptr noundef %0) #16
  %100 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #16
  %101 = icmp eq i8 %100, 1
  br i1 %101, label %102, label %109

102:                                              ; preds = %99, %106
  %103 = load ptr, ptr %4, align 8, !tbaa !34
  %104 = icmp eq ptr %103, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %102
  call void @BKE_node_tree_unlink_id(ptr noundef %1, ptr noundef nonnull %103) #16
  br label %106

106:                                              ; preds = %105, %102
  %107 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #16
  %108 = icmp eq i8 %107, 1
  br i1 %108, label %102, label %109, !llvm.loop !189

109:                                              ; preds = %106, %99
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #15
  %110 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 6
  store i32 0, ptr %110, align 4, !tbaa !45
  ret void
}

; Function Attrs: optsize
declare void @BKE_node_tree_iter_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BKE_node_tree_iter_step(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_node_tree_unlink_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local float @BKE_movieclip_remap_clip_to_scene_frame(ptr nocapture noundef readonly %0, float noundef %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 16
  %4 = load i32, ptr %3, align 8, !tbaa !67
  %5 = sitofp i32 %4 to float
  %6 = fadd float %5, %1
  %7 = fadd float %6, -1.000000e+00
  ret float %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_movieclip_filename_for_frame(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !70
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %25

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 14
  %9 = load i32, ptr %8, align 8, !tbaa !77
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.MovieClipUser, ptr %1, i64 0, i32 1
  %14 = load i16, ptr %13, align 4, !tbaa !82
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.MovieClipUser, ptr %1, i64 0, i32 2
  %18 = load i16, ptr %17, align 2, !tbaa !81
  %19 = sext i16 %14 to i32
  %20 = trunc i16 %18 to i8
  %21 = and i8 %20, 1
  %22 = load i32, ptr %1, align 4, !tbaa !79
  tail call fastcc void @get_proxy_fname(ptr noundef nonnull %0, i32 noundef %19, i8 noundef zeroext %21, i32 noundef %22, ptr noundef %2) #18
  br label %36

23:                                               ; preds = %7, %12
  %24 = load i32, ptr %1, align 4, !tbaa !79
  tail call fastcc void @get_sequence_fname(ptr noundef nonnull %0, i32 noundef %24, ptr noundef %2) #18
  br label %36

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 2
  %27 = tail call ptr @BLI_strncpy(ptr noundef %2, ptr noundef nonnull %26, i64 noundef 1024) #16
  %28 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !190
  %30 = icmp eq ptr %29, null
  %31 = getelementptr inbounds %struct.Library, ptr %29, i64 0, i32 4
  %32 = load ptr, ptr @G, align 8
  %33 = getelementptr inbounds %struct.Main, ptr %32, i64 0, i32 2
  %34 = select i1 %30, ptr %33, ptr %31
  %35 = tail call zeroext i8 @BLI_path_abs(ptr noundef %2, ptr noundef nonnull %34) #16
  br label %36

36:                                               ; preds = %16, %23, %25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @get_proxy_fname(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 !PGOFuncName !191 {
  %6 = alloca [1024 x i8], align 16
  %7 = alloca [1024 x i8], align 16
  %8 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %8) #15
  %9 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 16
  %10 = load i32, ptr %9, align 8, !tbaa !67
  %11 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 17
  %12 = load i32, ptr %11, align 4, !tbaa !68
  %13 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 2
  call void @BLI_split_dirfile(ptr noundef nonnull %13, ptr noundef nonnull %7, ptr noundef nonnull %8, i64 noundef 1024, i64 noundef 1024) #16
  %14 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 14
  %15 = load i32, ptr %14, align 8, !tbaa !77
  %16 = and i32 %15, 2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %5
  %19 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 13
  %20 = call ptr @BLI_strncpy(ptr noundef nonnull %6, ptr noundef nonnull %19, i64 noundef 1024) #16
  br label %23

21:                                               ; preds = %5
  %22 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %6, i64 noundef 1024, ptr noundef nonnull @.str, ptr noundef nonnull %7) #16
  br label %23

23:                                               ; preds = %21, %18
  %24 = add i32 %3, 1
  %25 = sub i32 %24, %10
  %26 = add nsw i32 %25, %12
  %27 = tail call fastcc i32 @rendersize_to_number(i32 noundef %1) #18, !range !160
  %28 = icmp eq i8 %2, 0
  %29 = select i1 %28, ptr @.str.2, ptr @.str.1
  %30 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %4, i64 noundef 1024, ptr noundef nonnull %29, ptr noundef nonnull %6, ptr noundef nonnull %8, i32 noundef %27, i32 noundef %26) #16
  %31 = load ptr, ptr @G, align 8, !tbaa !38
  %32 = getelementptr inbounds %struct.Main, ptr %31, i64 0, i32 2
  %33 = call zeroext i8 @BLI_path_abs(ptr noundef %4, ptr noundef nonnull %32) #16
  %34 = call zeroext i8 @BLI_path_frame(ptr noundef %4, i32 noundef 1, i32 noundef 0) #16
  %35 = call i64 @strlen(ptr nonnull dereferenceable(1) %4)
  %36 = getelementptr inbounds i8, ptr %4, i64 %35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %36, ptr noundef nonnull align 1 dereferenceable(5) @.str.3, i64 5, i1 false)
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %6) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @get_sequence_fname(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !192 {
  %4 = alloca i16, align 2
  %5 = alloca [1024 x i8], align 16
  %6 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %6) #15
  %7 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 2
  %8 = tail call ptr @BLI_strncpy(ptr noundef %2, ptr noundef nonnull %7, i64 noundef 1024) #16
  %9 = call i32 @BLI_stringdec(ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %4) #16
  %10 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #17
  %11 = trunc i64 %10 to i32
  %12 = load i16, ptr %4, align 2, !tbaa !76
  %13 = call fastcc i32 @sequence_guess_offset(ptr noundef nonnull %7, i32 noundef %11, i16 noundef zeroext %12) #18
  %14 = load i16, ptr %4, align 2, !tbaa !76
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %3
  %17 = add nsw i32 %13, %1
  %18 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 16
  %19 = load i32, ptr %18, align 8, !tbaa !67
  %20 = sub i32 %17, %19
  %21 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 17
  %22 = load i32, ptr %21, align 4, !tbaa !68
  %23 = add nsw i32 %20, %22
  call void @BLI_stringenc(ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %6, i16 noundef zeroext %14, i32 noundef %23) #16
  br label %26

24:                                               ; preds = %3
  %25 = call ptr @BLI_strncpy(ptr noundef %2, ptr noundef nonnull %7, i64 noundef 1024) #16
  br label %26

26:                                               ; preds = %24, %16
  %27 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !190
  %29 = icmp eq ptr %28, null
  %30 = getelementptr inbounds %struct.Library, ptr %28, i64 0, i32 4
  %31 = load ptr, ptr @G, align 8
  %32 = getelementptr inbounds %struct.Main, ptr %31, i64 0, i32 2
  %33 = select i1 %29, ptr %32, ptr %30
  %34 = call zeroext i8 @BLI_path_abs(ptr noundef %2, ptr noundef nonnull %33) #16
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_movieclip_anim_ibuf_for_frame(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !70
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  tail call void @BLI_lock_thread(i32 noundef 7) #16
  %7 = load i32, ptr %1, align 4, !tbaa !79
  %8 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 14
  %9 = load i32, ptr %8, align 8, !tbaa !77
  %10 = tail call fastcc ptr @movieclip_load_movie_file(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %7, i32 noundef %9) #18
  tail call void @BLI_unlock_thread(i32 noundef 7) #16
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi ptr [ %10, %6 ], [ null, %2 ]
  ret ptr %12
}

; Function Attrs: optsize
declare void @BLI_lock_thread(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @movieclip_load_movie_file(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !193 {
  %5 = tail call fastcc i32 @get_timecode(ptr noundef %0, i32 noundef %3) #18, !range !194
  %6 = tail call fastcc i32 @rendersize_to_proxy(ptr noundef %1, i32 noundef %3) #18, !range !92
  tail call fastcc void @movieclip_open_anim_file(ptr noundef %0) #18
  %7 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 8
  %8 = load ptr, ptr %7, align 8, !tbaa !73
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 16
  %12 = load i32, ptr %11, align 8, !tbaa !67
  %13 = sub i32 %2, %12
  %14 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 17
  %15 = load i32, ptr %14, align 4, !tbaa !68
  %16 = add nsw i32 %13, %15
  %17 = tail call ptr @IMB_anim_absolute(ptr noundef nonnull %8, i32 noundef %16, i32 noundef %5, i32 noundef %6) #16
  br label %18

18:                                               ; preds = %10, %4
  %19 = phi ptr [ %17, %10 ], [ null, %4 ]
  ret ptr %19
}

; Function Attrs: optsize
declare void @BLI_unlock_thread(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @BKE_movieclip_has_cached_frame(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  tail call void @BLI_lock_thread(i32 noundef 7) #16
  %3 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 14
  %4 = load i32, ptr %3, align 8, !tbaa !77
  %5 = tail call fastcc zeroext i8 @has_imbuf_cache(ptr noundef %0, ptr noundef %1, i32 noundef %4) #18
  tail call void @BLI_unlock_thread(i32 noundef 7) #16
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @has_imbuf_cache(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !195 {
  %4 = alloca %struct.MovieClipImBufCacheKey, align 4
  %5 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !85
  %7 = icmp eq ptr %6, null
  br i1 %7, label %25, label %8

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #15
  %9 = load i32, ptr %1, align 4, !tbaa !79
  %10 = tail call fastcc i32 @user_frame_to_cache_frame(ptr noundef nonnull %0, i32 noundef %9) #18
  store i32 %10, ptr %4, align 4, !tbaa !196
  %11 = and i32 %2, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %8
  %14 = tail call fastcc i32 @rendersize_to_proxy(ptr noundef nonnull %1, i32 noundef %2) #18, !range !92
  %15 = getelementptr inbounds %struct.MovieClipUser, ptr %1, i64 0, i32 2
  %16 = load i16, ptr %15, align 2, !tbaa !81
  br label %17

17:                                               ; preds = %8, %13
  %18 = phi i32 [ %14, %13 ], [ 0, %8 ]
  %19 = phi i16 [ %16, %13 ], [ 0, %8 ]
  %20 = getelementptr inbounds %struct.MovieClipImBufCacheKey, ptr %4, i64 0, i32 1
  store i32 %18, ptr %20, align 4
  %21 = getelementptr inbounds %struct.MovieClipImBufCacheKey, ptr %4, i64 0, i32 2
  store i16 %19, ptr %21, align 4
  %22 = load ptr, ptr %5, align 8, !tbaa !85
  %23 = load ptr, ptr %22, align 8, !tbaa !116
  %24 = call zeroext i8 @IMB_moviecache_has_frame(ptr noundef %23, ptr noundef nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #15
  br label %25

25:                                               ; preds = %3, %17
  %26 = phi i8 [ %24, %17 ], [ 0, %3 ]
  ret i8 %26
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @BKE_movieclip_put_frame_if_possible(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  tail call void @BLI_lock_thread(i32 noundef 7) #16
  %4 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 14
  %5 = load i32, ptr %4, align 8, !tbaa !77
  %6 = tail call fastcc zeroext i8 @put_imbuf_cache(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %5, i8 noundef zeroext 0) #18
  tail call void @BLI_unlock_thread(i32 noundef 7) #16
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @put_imbuf_cache(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, i8 noundef zeroext %4) unnamed_addr #0 !PGOFuncName !198 {
  %6 = alloca %struct.MovieClipImBufCacheKey, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #15
  %7 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !85
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %5
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %12 = tail call ptr %11(i64 noundef 128, ptr noundef nonnull @.str.4) #16
  store ptr %12, ptr %7, align 8, !tbaa !85
  %13 = tail call ptr @IMB_moviecache_create(ptr noundef nonnull @.str.5, i32 noundef 12, ptr noundef nonnull @moviecache_hashhash, ptr noundef nonnull @moviecache_hashcmp) #16
  tail call void @IMB_moviecache_set_getdata_callback(ptr noundef %13, ptr noundef nonnull @moviecache_keydata) #16
  tail call void @IMB_moviecache_set_priority_callback(ptr noundef %13, ptr noundef nonnull @moviecache_getprioritydata, ptr noundef nonnull @moviecache_getitempriority, ptr noundef nonnull @moviecache_prioritydeleter) #16
  %14 = load ptr, ptr %7, align 8, !tbaa !85
  store ptr %13, ptr %14, align 8, !tbaa !116
  %15 = getelementptr inbounds %struct.MovieClipCache, ptr %14, i64 0, i32 3
  store i32 -1, ptr %15, align 8, !tbaa !199
  br label %16

16:                                               ; preds = %10, %5
  %17 = load i32, ptr %1, align 4, !tbaa !79
  %18 = tail call fastcc i32 @user_frame_to_cache_frame(ptr noundef nonnull %0, i32 noundef %17) #18
  store i32 %18, ptr %6, align 4, !tbaa !196
  %19 = and i32 %3, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = tail call fastcc i32 @rendersize_to_proxy(ptr noundef nonnull %1, i32 noundef %3) #18, !range !92
  %23 = getelementptr inbounds %struct.MovieClipUser, ptr %1, i64 0, i32 2
  %24 = load i16, ptr %23, align 2, !tbaa !81
  br label %25

25:                                               ; preds = %16, %21
  %26 = phi i32 [ %22, %21 ], [ 0, %16 ]
  %27 = phi i16 [ %24, %21 ], [ 0, %16 ]
  %28 = getelementptr inbounds %struct.MovieClipImBufCacheKey, ptr %6, i64 0, i32 1
  store i32 %26, ptr %28, align 4
  %29 = getelementptr inbounds %struct.MovieClipImBufCacheKey, ptr %6, i64 0, i32 2
  store i16 %27, ptr %29, align 4
  %30 = icmp eq i8 %4, 0
  %31 = load ptr, ptr %7, align 8, !tbaa !85
  %32 = load ptr, ptr %31, align 8, !tbaa !116
  br i1 %30, label %34, label %33

33:                                               ; preds = %25
  call void @IMB_moviecache_put(ptr noundef %32, ptr noundef nonnull %6, ptr noundef %2) #16
  br label %36

34:                                               ; preds = %25
  %35 = call zeroext i8 @IMB_moviecache_put_if_possible(ptr noundef %32, ptr noundef nonnull %6, ptr noundef %2) #16
  br label %36

36:                                               ; preds = %34, %33
  %37 = phi i8 [ 1, %33 ], [ %35, %34 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #15
  ret i8 %37
}

; Function Attrs: optsize
declare ptr @BKE_libblock_alloc(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_tracking_settings_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_color_managed_colorspace_settings_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @IMB_testiffname(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @movieclip_open_anim_file(ptr noundef %0) unnamed_addr #0 !PGOFuncName !200 {
  %2 = alloca [1024 x i8], align 16
  %3 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %2) #15
  %4 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !73
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %33

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 2
  %9 = call ptr @BLI_strncpy(ptr noundef nonnull %2, ptr noundef nonnull %8, i64 noundef 1024) #16
  %10 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !190
  %12 = icmp eq ptr %11, null
  %13 = getelementptr inbounds %struct.Library, ptr %11, i64 0, i32 4
  %14 = load ptr, ptr @G, align 8
  %15 = getelementptr inbounds %struct.Main, ptr %14, i64 0, i32 2
  %16 = select i1 %12, ptr %15, ptr %13
  %17 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %2, ptr noundef nonnull %16) #16
  %18 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 18
  %19 = call ptr @openanim(ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %18) #16
  store ptr %19, ptr %4, align 8, !tbaa !73
  %20 = icmp eq ptr %19, null
  br i1 %20, label %33, label %21

21:                                               ; preds = %7
  %22 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 14
  %23 = load i32, ptr %22, align 8, !tbaa !77
  %24 = and i32 %23, 2
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #15
  %27 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 13
  %28 = call ptr @BLI_strncpy(ptr noundef nonnull %3, ptr noundef nonnull %27, i64 noundef 1024) #16
  %29 = load ptr, ptr @G, align 8, !tbaa !38
  %30 = getelementptr inbounds %struct.Main, ptr %29, i64 0, i32 2
  %31 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %3, ptr noundef nonnull %30) #16
  %32 = load ptr, ptr %4, align 8, !tbaa !73
  call void @IMB_anim_set_index_dir(ptr noundef %32, ptr noundef nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #15
  br label %33

33:                                               ; preds = %7, %26, %21, %1
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %2) #15
  ret void
}

; Function Attrs: optsize
declare i32 @IMB_anim_get_duration(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_stringdec(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_exists(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @openanim(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_anim_set_index_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @need_postprocessed_frame(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 !PGOFuncName !201 {
  %3 = tail call fastcc i32 @need_undistortion_postprocess(ptr noundef %0) #18, !range !202
  %4 = or i32 %3, %1
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_postprocessed_cached_frame(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !203 {
  %5 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !85
  %7 = load i32, ptr %1, align 4, !tbaa !79
  %8 = and i32 %2, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %4
  %11 = tail call fastcc i32 @rendersize_to_proxy(ptr noundef nonnull %1, i32 noundef %2) #18, !range !92
  %12 = getelementptr inbounds %struct.MovieClipUser, ptr %1, i64 0, i32 2
  %13 = load i16, ptr %12, align 2, !tbaa !81
  %14 = sext i16 %13 to i32
  br label %15

15:                                               ; preds = %10, %4
  %16 = phi i32 [ %11, %10 ], [ 0, %4 ]
  %17 = phi i32 [ %14, %10 ], [ 0, %4 ]
  %18 = icmp eq ptr %6, null
  br i1 %18, label %52, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.MovieClipCache, ptr %6, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !119
  %22 = icmp eq ptr %21, null
  br i1 %22, label %52, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.MovieClipCache, ptr %6, i64 0, i32 1, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !204
  %26 = icmp eq i32 %25, %7
  br i1 %26, label %27, label %52

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.MovieClipCache, ptr %6, i64 0, i32 1, i32 12
  %29 = load i16, ptr %28, align 4, !tbaa !205
  %30 = sext i16 %29 to i32
  %31 = icmp eq i32 %17, %30
  br i1 %31, label %32, label %52

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.MovieClipCache, ptr %6, i64 0, i32 1, i32 11
  %34 = load i32, ptr %33, align 8, !tbaa !206
  %35 = icmp eq i32 %34, %16
  br i1 %35, label %36, label %52

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.MovieClipCache, ptr %6, i64 0, i32 1, i32 2
  %38 = load i32, ptr %37, align 4, !tbaa !207
  %39 = icmp eq i32 %38, %3
  br i1 %39, label %40, label %52

40:                                               ; preds = %36
  %41 = tail call fastcc i32 @need_undistortion_postprocess(ptr noundef nonnull %1) #18, !range !202
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = tail call fastcc zeroext i8 @check_undistortion_cache_flags(ptr noundef nonnull %0) #18, !range !108
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %52, label %50

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.MovieClipCache, ptr %6, i64 0, i32 1, i32 10
  %48 = load i8, ptr %47, align 2, !tbaa !208
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46, %43
  tail call void @IMB_refImBuf(ptr noundef nonnull %21) #16
  %51 = load ptr, ptr %20, align 8, !tbaa !119
  br label %52

52:                                               ; preds = %46, %43, %36, %27, %32, %23, %15, %19, %50
  %53 = phi ptr [ %51, %50 ], [ null, %19 ], [ null, %15 ], [ null, %23 ], [ null, %32 ], [ null, %27 ], [ null, %36 ], [ null, %43 ], [ null, %46 ]
  ret ptr %53
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_imbuf_cache(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !209 {
  %4 = alloca %struct.MovieClipImBufCacheKey, align 4
  %5 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !85
  %7 = icmp eq ptr %6, null
  br i1 %7, label %25, label %8

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #15
  %9 = load i32, ptr %1, align 4, !tbaa !79
  %10 = tail call fastcc i32 @user_frame_to_cache_frame(ptr noundef nonnull %0, i32 noundef %9) #18
  store i32 %10, ptr %4, align 4, !tbaa !196
  %11 = and i32 %2, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %8
  %14 = tail call fastcc i32 @rendersize_to_proxy(ptr noundef nonnull %1, i32 noundef %2) #18, !range !92
  %15 = getelementptr inbounds %struct.MovieClipUser, ptr %1, i64 0, i32 2
  %16 = load i16, ptr %15, align 2, !tbaa !81
  br label %17

17:                                               ; preds = %8, %13
  %18 = phi i32 [ %14, %13 ], [ 0, %8 ]
  %19 = phi i16 [ %16, %13 ], [ 0, %8 ]
  %20 = getelementptr inbounds %struct.MovieClipImBufCacheKey, ptr %4, i64 0, i32 1
  store i32 %18, ptr %20, align 4
  %21 = getelementptr inbounds %struct.MovieClipImBufCacheKey, ptr %4, i64 0, i32 2
  store i16 %19, ptr %21, align 4
  %22 = load ptr, ptr %5, align 8, !tbaa !85
  %23 = load ptr, ptr %22, align 8, !tbaa !116
  %24 = call ptr @IMB_moviecache_get(ptr noundef %23, ptr noundef nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #15
  br label %25

25:                                               ; preds = %3, %17
  %26 = phi ptr [ %24, %17 ], [ null, %3 ]
  ret ptr %26
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @movieclip_load_sequence_file(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !210 {
  %5 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #15
  %6 = and i32 %3, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %23, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.MovieClipUser, ptr %1, i64 0, i32 1
  %10 = load i16, ptr %9, align 4, !tbaa !82
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.MovieClipUser, ptr %1, i64 0, i32 2
  %14 = load i16, ptr %13, align 2, !tbaa !81
  %15 = sext i16 %10 to i32
  %16 = trunc i16 %14 to i8
  %17 = and i8 %16, 1
  call fastcc void @get_proxy_fname(ptr noundef %0, i32 noundef %15, i8 noundef zeroext %17, i32 noundef %2, ptr noundef nonnull %5) #18
  %18 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 3
  %19 = load i32, ptr %18, align 8, !tbaa !70
  %20 = icmp eq i32 %19, 2
  %21 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 18
  %22 = select i1 %20, ptr %21, ptr null
  br label %25

23:                                               ; preds = %4, %8
  call fastcc void @get_sequence_fname(ptr noundef %0, i32 noundef %2, ptr noundef nonnull %5) #18
  %24 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 18
  br label %25

25:                                               ; preds = %23, %12
  %26 = phi ptr [ %22, %12 ], [ %24, %23 ]
  %27 = call ptr @IMB_loadiffname(ptr noundef nonnull %5, i32 noundef 8321, ptr noundef %26) #16
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #15
  ret ptr %27
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @postprocess_frame(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !211 {
  %5 = tail call fastcc i32 @need_undistortion_postprocess(ptr noundef %1) #18, !range !202
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = tail call fastcc ptr @get_undistorted_ibuf(ptr noundef %0, ptr noundef null, ptr noundef %2) #18
  br label %11

9:                                                ; preds = %4
  %10 = tail call ptr @IMB_dupImBuf(ptr noundef %2) #16
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi ptr [ %8, %7 ], [ %10, %9 ]
  %13 = icmp eq i32 %3, 0
  br i1 %13, label %27, label %14

14:                                               ; preds = %11
  %15 = trunc i32 %3 to i8
  %16 = and i8 %15, 6
  %17 = icmp ne i8 %16, 0
  %18 = and i32 %3, 9
  %19 = icmp ne i32 %18, 0
  %20 = or i1 %19, %17
  br i1 %20, label %21, label %27

21:                                               ; preds = %14
  %22 = lshr i8 %15, 2
  %23 = lshr i8 %15, 1
  %24 = and i8 %22, 1
  %25 = and i8 %23, 1
  %26 = and i8 %15, 1
  tail call void @BKE_tracking_disable_channels(ptr noundef %12, i8 noundef zeroext %26, i8 noundef zeroext %25, i8 noundef zeroext %24, i8 noundef zeroext 1) #16
  br label %27

27:                                               ; preds = %21, %14, %11
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @put_postprocessed_frame_to_cache(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 !PGOFuncName !212 {
  %6 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !85
  %8 = load i32, ptr %1, align 4, !tbaa !79
  %9 = getelementptr inbounds %struct.MovieClipCache, ptr %7, i64 0, i32 1
  %10 = getelementptr inbounds %struct.MovieClipCache, ptr %7, i64 0, i32 1, i32 1
  store i32 %8, ptr %10, align 8, !tbaa !204
  %11 = getelementptr inbounds %struct.MovieClipCache, ptr %7, i64 0, i32 1, i32 2
  store i32 %4, ptr %11, align 4, !tbaa !207
  %12 = and i32 %3, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %5
  %15 = tail call fastcc i32 @rendersize_to_proxy(ptr noundef nonnull %1, i32 noundef %3) #18, !range !92
  %16 = getelementptr inbounds %struct.MovieClipUser, ptr %1, i64 0, i32 2
  %17 = load i16, ptr %16, align 2, !tbaa !81
  br label %18

18:                                               ; preds = %5, %14
  %19 = phi i32 [ %15, %14 ], [ 0, %5 ]
  %20 = phi i16 [ %17, %14 ], [ 0, %5 ]
  %21 = getelementptr inbounds %struct.MovieClipCache, ptr %7, i64 0, i32 1, i32 11
  store i32 %19, ptr %21, align 8
  %22 = getelementptr inbounds %struct.MovieClipCache, ptr %7, i64 0, i32 1, i32 12
  store i16 %20, ptr %22, align 4
  %23 = tail call fastcc i32 @need_undistortion_postprocess(ptr noundef nonnull %1) #18, !range !202
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 11, i32 1, i32 1
  %27 = load i16, ptr %26, align 8, !tbaa !213
  %28 = getelementptr inbounds %struct.MovieClipCache, ptr %7, i64 0, i32 1, i32 9
  store i16 %27, ptr %28, align 4, !tbaa !214
  %29 = getelementptr inbounds %struct.MovieClipCache, ptr %7, i64 0, i32 1, i32 3
  %30 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 11, i32 1, i32 8
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %29, ptr noundef nonnull %30) #18
  %31 = getelementptr inbounds %struct.MovieClipCache, ptr %7, i64 0, i32 1, i32 4
  %32 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 11, i32 1, i32 9
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %31, ptr noundef nonnull %32) #18
  %33 = getelementptr inbounds %struct.MovieClipCache, ptr %7, i64 0, i32 1, i32 7
  %34 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 11, i32 1, i32 12
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %33, ptr noundef nonnull %34) #18
  br label %35

35:                                               ; preds = %18, %25
  %36 = phi i8 [ 1, %25 ], [ 0, %18 ]
  %37 = getelementptr inbounds %struct.MovieClipCache, ptr %7, i64 0, i32 1, i32 10
  store i8 %36, ptr %37, align 2
  tail call void @IMB_refImBuf(ptr noundef %2) #16
  %38 = load ptr, ptr %9, align 8, !tbaa !119
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  tail call void @IMB_freeImBuf(ptr noundef nonnull %38) #16
  br label %41

41:                                               ; preds = %40, %35
  store ptr %2, ptr %9, align 8, !tbaa !119
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @need_undistortion_postprocess(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !215 {
  %2 = getelementptr inbounds %struct.MovieClipUser, ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 4, !tbaa !82
  %4 = icmp eq i16 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.MovieClipUser, ptr %0, i64 0, i32 2
  %7 = load i16, ptr %6, align 2, !tbaa !81
  %8 = and i16 %7, 1
  %9 = zext nneg i16 %8 to i32
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i32 [ 0, %1 ], [ %9, %5 ]
  ret i32 %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @check_undistortion_cache_flags(ptr nocapture noundef readonly %0) unnamed_addr #9 !PGOFuncName !216 {
  %2 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !85
  %4 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 11, i32 1, i32 8
  %5 = getelementptr inbounds %struct.MovieClipCache, ptr %3, i64 0, i32 1, i32 3
  %6 = tail call fastcc zeroext i8 @equals_v2v2(ptr noundef nonnull %4, ptr noundef nonnull %5) #18, !range !108
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %23, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 11, i32 1, i32 1
  %10 = load i16, ptr %9, align 8, !tbaa !213
  %11 = getelementptr inbounds %struct.MovieClipCache, ptr %3, i64 0, i32 1, i32 9
  %12 = load i16, ptr %11, align 4, !tbaa !214
  %13 = icmp eq i16 %10, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 11, i32 1, i32 9
  %16 = getelementptr inbounds %struct.MovieClipCache, ptr %3, i64 0, i32 1, i32 4
  %17 = tail call fastcc zeroext i8 @equals_v3v3(ptr noundef nonnull %15, ptr noundef nonnull %16) #18, !range !108
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 11, i32 1, i32 12
  %21 = getelementptr inbounds %struct.MovieClipCache, ptr %3, i64 0, i32 1, i32 7
  %22 = tail call fastcc zeroext i8 @equals_v2v2(ptr noundef nonnull %20, ptr noundef nonnull %21) #18, !range !108
  br label %23

23:                                               ; preds = %19, %14, %8, %1
  %24 = phi i8 [ 0, %1 ], [ 0, %8 ], [ 0, %14 ], [ %22, %19 ]
  ret i8 %24
}

; Function Attrs: optsize
declare void @IMB_refImBuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @equals_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !217 {
  %3 = load float, ptr %0, align 4, !tbaa !63
  %4 = load float, ptr %1, align 4, !tbaa !63
  %5 = fcmp oeq float %3, %4
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds float, ptr %0, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !63
  %9 = getelementptr inbounds float, ptr %1, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !63
  %11 = fcmp oeq float %8, %10
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %6, %2
  %14 = phi i8 [ 0, %2 ], [ %12, %6 ]
  ret i8 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @equals_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !218 {
  %3 = load float, ptr %0, align 4, !tbaa !63
  %4 = load float, ptr %1, align 4, !tbaa !63
  %5 = fcmp oeq float %3, %4
  br i1 %5, label %6, label %19

6:                                                ; preds = %2
  %7 = getelementptr inbounds float, ptr %0, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !63
  %9 = getelementptr inbounds float, ptr %1, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !63
  %11 = fcmp oeq float %8, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %6
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !63
  %15 = getelementptr inbounds float, ptr %1, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !63
  %17 = fcmp oeq float %14, %16
  %18 = zext i1 %17 to i8
  br label %19

19:                                               ; preds = %12, %6, %2
  %20 = phi i8 [ 0, %6 ], [ 0, %2 ], [ %18, %12 ]
  ret i8 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @user_frame_to_cache_frame(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !219 {
  %3 = alloca i16, align 2
  %4 = alloca [1024 x i8], align 16
  %5 = alloca [1024 x i8], align 16
  %6 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 16
  %7 = load i32, ptr %6, align 8, !tbaa !67
  %8 = sub nsw i32 %1, %7
  %9 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 17
  %10 = load i32, ptr %9, align 4, !tbaa !68
  %11 = add nsw i32 %8, %10
  %12 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !70
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %34

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 9
  %17 = load ptr, ptr %16, align 8, !tbaa !85
  %18 = getelementptr inbounds %struct.MovieClipCache, ptr %17, i64 0, i32 3
  %19 = load i32, ptr %18, align 8, !tbaa !199
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %31

21:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #15
  %22 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 2
  %23 = call i32 @BLI_stringdec(ptr noundef nonnull %22, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %3) #16
  %24 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #17
  %25 = trunc i64 %24 to i32
  %26 = load i16, ptr %3, align 2, !tbaa !76
  %27 = call fastcc i32 @sequence_guess_offset(ptr noundef nonnull %22, i32 noundef %25, i16 noundef zeroext %26) #18
  %28 = load ptr, ptr %16, align 8, !tbaa !85
  %29 = getelementptr inbounds %struct.MovieClipCache, ptr %28, i64 0, i32 3
  store i32 %27, ptr %29, align 8, !tbaa !199
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #15
  %30 = load i32, ptr %29, align 8, !tbaa !199
  br label %31

31:                                               ; preds = %21, %15
  %32 = phi i32 [ %30, %21 ], [ %19, %15 ]
  %33 = add nsw i32 %32, %11
  br label %34

34:                                               ; preds = %31, %2
  %35 = phi i32 [ %33, %31 ], [ %11, %2 ]
  %36 = call i32 @llvm.smin.i32(i32 %35, i32 0)
  %37 = sub nsw i32 %1, %36
  ret i32 %37
}

; Function Attrs: optsize
declare ptr @IMB_moviecache_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @sequence_guess_offset(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2) unnamed_addr #0 !PGOFuncName !220 {
  %4 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %4, i8 0, i64 1024, i1 false)
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds i8, ptr %0, i64 %5
  %7 = zext i16 %2 to i64
  %8 = add nuw nsw i64 %7, 1
  %9 = call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef %6, i64 noundef %8) #16
  %10 = call i32 @atoi(ptr nocapture noundef nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #15
  ret i32 %10
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: optsize
declare ptr @IMB_loadiffname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @IMB_dupImBuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_tracking_disable_channels(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !221 {
  %3 = load float, ptr %1, align 4, !tbaa !63
  store float %3, ptr %0, align 4, !tbaa !63
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !63
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !63
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !63
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !63
  ret void
}

; Function Attrs: optsize
declare void @BKE_tracking_stabilization_data_get(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_tracking_stabilize_frame(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_moviecache_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_free_anim(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_free_animdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_tracking_distortion_exec(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, float noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_tracking_undistort_frame(ptr noundef, ptr noundef, i32 noundef, i32 noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @IMB_scaleImBuf(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @rendersize_to_number(i32 noundef %0) unnamed_addr #11 !PGOFuncName !222 {
  %2 = icmp ult i32 %0, 5
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = zext nneg i32 %0 to i64
  %5 = getelementptr inbounds [5 x i32], ptr @switch.table.rendersize_to_number, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4
  br label %7

7:                                                ; preds = %1, %3
  %8 = phi i32 [ %6, %3 ], [ 100, %1 ]
  ret i32 %8
}

; Function Attrs: optsize
declare void @IMB_scaleImBuf_threaded(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_make_existing_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare signext i16 @IMB_saveiff(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #12

; Function Attrs: optsize
declare void @BLI_split_dirfile(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BLI_path_frame(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_stringenc(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @get_timecode(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 !PGOFuncName !223 {
  %3 = and i32 %1, 1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 13, i32 1
  %7 = load i16, ptr %6, align 8, !tbaa !74
  %8 = sext i16 %7 to i32
  br label %9

9:                                                ; preds = %2, %5
  %10 = phi i32 [ %8, %5 ], [ 0, %2 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @IMB_anim_absolute(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @IMB_moviecache_has_frame(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @IMB_moviecache_create(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @moviecache_hashhash(ptr nocapture noundef readonly %0) #6 !PGOFuncName !224 {
  %2 = load i32, ptr %0, align 4, !tbaa !196
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal zeroext i8 @moviecache_hashcmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 !PGOFuncName !225 {
  %3 = load i32, ptr %0, align 4, !tbaa !196
  %4 = load i32, ptr %1, align 4, !tbaa !196
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %6, label %19

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.MovieClipImBufCacheKey, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !226
  %9 = getelementptr inbounds %struct.MovieClipImBufCacheKey, ptr %1, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !226
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.MovieClipImBufCacheKey, ptr %0, i64 0, i32 2
  %14 = load i16, ptr %13, align 4, !tbaa !227
  %15 = getelementptr inbounds %struct.MovieClipImBufCacheKey, ptr %1, i64 0, i32 2
  %16 = load i16, ptr %15, align 4, !tbaa !227
  %17 = icmp ne i16 %14, %16
  %18 = zext i1 %17 to i8
  br label %19

19:                                               ; preds = %12, %6, %2
  %20 = phi i8 [ 1, %6 ], [ 1, %2 ], [ %18, %12 ]
  ret i8 %20
}

; Function Attrs: optsize
declare void @IMB_moviecache_set_getdata_callback(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @moviecache_keydata(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #4 !PGOFuncName !228 {
  %5 = load i32, ptr %0, align 4, !tbaa !196
  store i32 %5, ptr %1, align 4, !tbaa !59
  %6 = getelementptr inbounds %struct.MovieClipImBufCacheKey, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !226
  store i32 %7, ptr %2, align 4, !tbaa !59
  %8 = getelementptr inbounds %struct.MovieClipImBufCacheKey, ptr %0, i64 0, i32 2
  %9 = load i16, ptr %8, align 4, !tbaa !227
  %10 = sext i16 %9 to i32
  store i32 %10, ptr %3, align 4, !tbaa !59
  ret void
}

; Function Attrs: optsize
declare void @IMB_moviecache_set_priority_callback(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef ptr @moviecache_getprioritydata(ptr nocapture noundef readonly %0) #0 !PGOFuncName !229 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 4, ptr noundef nonnull @.str.6) #16
  %4 = load i32, ptr %0, align 4, !tbaa !196
  store i32 %4, ptr %3, align 4, !tbaa !230
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @moviecache_getitempriority(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 !PGOFuncName !232 {
  %3 = load i32, ptr %0, align 4, !tbaa !196
  %4 = load i32, ptr %1, align 4, !tbaa !230
  %5 = sub nsw i32 %3, %4
  %6 = tail call i32 @llvm.abs.i32(i32 %5, i1 true)
  %7 = sub nsw i32 0, %6
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @moviecache_prioritydeleter(ptr noundef %0) #0 !PGOFuncName !233 {
  %2 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %2(ptr noundef %0) #16
  ret void
}

; Function Attrs: optsize
declare void @IMB_moviecache_put(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @IMB_moviecache_put_if_possible(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind }
attributes #16 = { nounwind optsize }
attributes #17 = { nounwind optsize willreturn memory(read) }
attributes #18 = { optsize }
attributes #19 = { cold optsize }

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
!38 = !{!39, !35, i64 0}
!39 = !{!"Global", !35, i64 0, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 2057, !36, i64 2058, !40, i64 2064, !36, i64 2080, !36, i64 2081, !36, i64 2082, !41, i64 2084, !41, i64 2086, !41, i64 2088, !36, i64 2090, !41, i64 2092, !42, i64 2096, !42, i64 2100, !36, i64 2104, !42, i64 2108, !42, i64 2112, !36, i64 2116}
!40 = !{!"ListBase", !35, i64 0, !35, i64 8}
!41 = !{!"short", !36, i64 0}
!42 = !{!"int", !36, i64 0}
!43 = distinct !{!43, !44}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!46, !42, i64 100}
!46 = !{!"MovieClip", !47, i64 0, !35, i64 120, !36, i64 128, !42, i64 1152, !42, i64 1156, !36, i64 1160, !48, i64 1168, !48, i64 1172, !35, i64 1176, !35, i64 1184, !35, i64 1192, !49, i64 1200, !35, i64 1528, !55, i64 1536, !42, i64 2312, !42, i64 2316, !42, i64 2320, !42, i64 2324, !56, i64 2328}
!47 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !41, i64 98, !42, i64 100, !42, i64 104, !42, i64 108, !35, i64 112}
!48 = !{!"float", !36, i64 0}
!49 = !{!"MovieTracking", !50, i64 0, !51, i64 72, !40, i64 128, !40, i64 144, !52, i64 160, !53, i64 184, !35, i64 232, !35, i64 240, !40, i64 248, !42, i64 264, !42, i64 268, !35, i64 272, !54, i64 280}
!50 = !{!"MovieTrackingSettings", !42, i64 0, !41, i64 4, !41, i64 6, !48, i64 8, !41, i64 12, !41, i64 14, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !48, i64 24, !41, i64 28, !41, i64 30, !42, i64 32, !42, i64 36, !42, i64 40, !41, i64 44, !41, i64 46, !48, i64 48, !42, i64 52, !42, i64 56, !48, i64 60, !48, i64 64, !42, i64 68}
!51 = !{!"MovieTrackingCamera", !35, i64 0, !41, i64 8, !41, i64 10, !48, i64 12, !48, i64 16, !48, i64 20, !41, i64 24, !41, i64 26, !36, i64 28, !48, i64 36, !48, i64 40, !48, i64 44, !48, i64 48, !48, i64 52}
!52 = !{!"MovieTrackingReconstruction", !42, i64 0, !48, i64 4, !42, i64 8, !42, i64 12, !35, i64 16}
!53 = !{!"MovieTrackingStabilization", !42, i64 0, !42, i64 4, !42, i64 8, !48, i64 12, !35, i64 16, !48, i64 24, !48, i64 28, !48, i64 32, !42, i64 36, !42, i64 40, !48, i64 44}
!54 = !{!"MovieTrackingDopesheet", !42, i64 0, !41, i64 4, !41, i64 6, !40, i64 8, !40, i64 24, !42, i64 40, !42, i64 44}
!55 = !{!"MovieClipProxy", !36, i64 0, !41, i64 768, !41, i64 770, !41, i64 772, !41, i64 774}
!56 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!57 = !{!36, !36, i64 0}
!58 = distinct !{!58, !44}
!59 = !{!42, !42, i64 0}
!60 = !{!46, !48, i64 1284}
!61 = !{!46, !48, i64 1292}
!62 = !{!"movieclip.c:movieclip_alloc"}
!63 = !{!48, !48, i64 0}
!64 = !{!46, !41, i64 2308}
!65 = !{!46, !41, i64 2310}
!66 = !{!46, !41, i64 2306}
!67 = !{!46, !42, i64 2320}
!68 = !{!46, !42, i64 2324}
!69 = !{!"movieclip.c:detect_clip_source"}
!70 = !{!46, !42, i64 1152}
!71 = !{!"movieclip.c:movieclip_load_get_szie"}
!72 = !{!"movieclip.c:movieclip_calc_length"}
!73 = !{!46, !35, i64 1176}
!74 = !{!46, !41, i64 2304}
!75 = !{!46, !42, i64 2316}
!76 = !{!41, !41, i64 0}
!77 = !{!46, !42, i64 2312}
!78 = !{!"movieclip.c:movieclip_get_postprocessed_ibuf"}
!79 = !{!80, !42, i64 0}
!80 = !{!"MovieClipUser", !42, i64 0, !41, i64 4, !41, i64 6}
!81 = !{!80, !41, i64 6}
!82 = !{!80, !41, i64 4}
!83 = !{!46, !42, i64 1156}
!84 = !{!46, !42, i64 1384}
!85 = !{!46, !35, i64 1184}
!86 = !{!87, !48, i64 96}
!87 = !{!"MovieClipCache", !35, i64 0, !88, i64 8, !89, i64 64, !42, i64 120}
!88 = !{!"", !35, i64 0, !42, i64 8, !42, i64 12, !36, i64 16, !48, i64 24, !48, i64 28, !48, i64 32, !48, i64 36, !48, i64 40, !41, i64 44, !36, i64 46, !42, i64 48, !41, i64 52}
!89 = !{!"", !35, i64 0, !35, i64 8, !42, i64 16, !42, i64 20, !36, i64 24, !48, i64 32, !48, i64 36, !48, i64 40, !42, i64 44, !42, i64 48, !41, i64 52}
!90 = !{!87, !48, i64 100}
!91 = !{!"movieclip.c:get_stable_cached_frame"}
!92 = !{i32 0, i32 9}
!93 = !{!87, !35, i64 72}
!94 = !{!87, !42, i64 80}
!95 = !{!87, !35, i64 64}
!96 = !{!87, !41, i64 116}
!97 = !{!87, !42, i64 108}
!98 = !{!87, !42, i64 84}
!99 = !{!87, !48, i64 104}
!100 = !{!49, !48, i64 88}
!101 = !{!87, !42, i64 112}
!102 = !{!49, !42, i64 220}
!103 = !{!104, !42, i64 16}
!104 = !{!"ImBuf", !35, i64 0, !35, i64 8, !42, i64 16, !42, i64 20, !36, i64 24, !42, i64 28, !42, i64 32, !42, i64 36, !35, i64 40, !35, i64 48, !36, i64 56, !42, i64 72, !42, i64 76, !42, i64 80, !42, i64 84, !35, i64 88, !35, i64 96, !35, i64 104, !48, i64 112, !36, i64 120, !42, i64 280, !42, i64 284, !42, i64 288, !42, i64 292, !35, i64 296, !35, i64 304, !42, i64 312, !36, i64 316, !36, i64 1340, !35, i64 2368, !42, i64 2376, !35, i64 2384, !42, i64 2392, !42, i64 2396, !35, i64 2400, !35, i64 2408, !35, i64 2416, !35, i64 2424, !42, i64 2432, !105, i64 2436, !106, i64 2456}
!105 = !{!"rcti", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12}
!106 = !{!"DDSData", !42, i64 0, !42, i64 4, !35, i64 8, !42, i64 16}
!107 = !{!104, !42, i64 20}
!108 = !{i8 0, i8 2}
!109 = !{!"movieclip.c:put_stabilized_frame_to_cache"}
!110 = !{!"movieclip.c:copy_v2_v2"}
!111 = !{!"movieclip.c:zero_v2"}
!112 = !{!"movieclip.c:real_ibuf_size"}
!113 = !{!46, !48, i64 1172}
!114 = !{!46, !48, i64 1168}
!115 = !{!46, !48, i64 1288}
!116 = !{!87, !35, i64 0}
!117 = !{!"movieclip.c:rendersize_to_proxy"}
!118 = !{!"movieclip.c:free_buffers"}
!119 = !{!87, !35, i64 8}
!120 = !{!46, !42, i64 1424}
!121 = !{!122, !35, i64 248}
!122 = !{!"Scene", !47, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !40, i64 152, !35, i64 168, !35, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !42, i64 232, !42, i64 236, !42, i64 240, !41, i64 244, !36, i64 246, !36, i64 247, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !123, i64 280, !131, i64 4264, !40, i64 4296, !40, i64 4312, !35, i64 4328, !35, i64 4336, !35, i64 4344, !35, i64 4352, !35, i64 4360, !35, i64 4368, !41, i64 4376, !41, i64 4378, !42, i64 4380, !40, i64 4384, !132, i64 4400, !133, i64 4416, !136, i64 4600, !35, i64 4608, !137, i64 4616, !35, i64 4640, !138, i64 4648, !138, i64 4656, !125, i64 4664, !126, i64 4824, !56, i64 4888, !35, i64 4952}
!123 = !{!"RenderData", !124, i64 0, !35, i64 248, !35, i64 256, !127, i64 264, !128, i64 328, !42, i64 400, !42, i64 404, !42, i64 408, !48, i64 412, !42, i64 416, !42, i64 420, !42, i64 424, !42, i64 428, !41, i64 432, !41, i64 434, !48, i64 436, !48, i64 440, !48, i64 444, !48, i64 448, !48, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !42, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !42, i64 484, !42, i64 488, !41, i64 492, !41, i64 494, !42, i64 496, !42, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !36, i64 514, !36, i64 515, !42, i64 516, !42, i64 520, !42, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !129, i64 544, !129, i64 560, !105, i64 576, !40, i64 592, !41, i64 608, !41, i64 610, !48, i64 612, !48, i64 616, !48, i64 620, !48, i64 624, !42, i64 628, !48, i64 632, !48, i64 636, !48, i64 640, !48, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !48, i64 660, !48, i64 664, !41, i64 668, !41, i64 670, !48, i64 672, !48, i64 676, !36, i64 680, !42, i64 1704, !41, i64 1708, !41, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !42, i64 2520, !41, i64 2524, !41, i64 2526, !48, i64 2528, !48, i64 2532, !41, i64 2536, !41, i64 2538, !48, i64 2540, !41, i64 2544, !41, i64 2546, !42, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !48, i64 2560, !48, i64 2564, !35, i64 2568, !42, i64 2576, !48, i64 2580, !36, i64 2584, !130, i64 2616, !42, i64 3976, !42, i64 3980}
!124 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !41, i64 8, !41, i64 10, !48, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !125, i64 24, !126, i64 184}
!125 = !{!"ColorManagedViewSettings", !42, i64 0, !42, i64 4, !36, i64 8, !36, i64 72, !48, i64 136, !48, i64 140, !35, i64 144, !35, i64 152}
!126 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!127 = !{!"QuicktimeCodecSettings", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !42, i64 32, !42, i64 36, !42, i64 40, !42, i64 44, !41, i64 48, !41, i64 50, !42, i64 52, !42, i64 56, !42, i64 60}
!128 = !{!"FFMpegCodecData", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !48, i64 32, !42, i64 36, !42, i64 40, !42, i64 44, !42, i64 48, !42, i64 52, !42, i64 56, !42, i64 60, !35, i64 64}
!129 = !{!"rctf", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12}
!130 = !{!"BakeData", !124, i64 0, !36, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !48, i64 1280, !48, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!131 = !{!"AudioData", !42, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !42, i64 16, !41, i64 20, !41, i64 22, !48, i64 24, !48, i64 28}
!132 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!133 = !{!"GameData", !132, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !36, i64 34, !134, i64 40, !41, i64 64, !41, i64 66, !48, i64 68, !135, i64 72, !48, i64 128, !48, i64 132, !42, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !48, i64 164, !48, i64 168, !48, i64 172, !48, i64 176, !48, i64 180}
!134 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !48, i64 8, !48, i64 12, !35, i64 16}
!135 = !{!"RecastData", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !48, i64 16, !48, i64 20, !48, i64 24, !48, i64 28, !48, i64 32, !48, i64 36, !42, i64 40, !48, i64 44, !48, i64 48, !41, i64 52, !41, i64 54}
!136 = !{!"UnitSettings", !48, i64 0, !36, i64 4, !36, i64 5, !41, i64 6}
!137 = !{!"PhysicsSettings", !36, i64 0, !42, i64 12, !42, i64 16, !42, i64 20}
!138 = !{!"long", !36, i64 0}
!139 = distinct !{!139, !44}
!140 = !{!141, !41, i64 0}
!141 = !{!"MovieClipScopes", !41, i64 0, !41, i64 2, !42, i64 4, !42, i64 8, !42, i64 12, !142, i64 16, !35, i64 80, !35, i64 88, !36, i64 96, !41, i64 104, !41, i64 106, !42, i64 108, !35, i64 112, !35, i64 120, !36, i64 128}
!142 = !{!"MovieTrackingMarker", !36, i64 0, !36, i64 8, !36, i64 40, !36, i64 48, !42, i64 56, !42, i64 60}
!143 = !{!141, !35, i64 88}
!144 = !{!141, !35, i64 80}
!145 = !{!141, !41, i64 106}
!146 = !{!141, !35, i64 120}
!147 = !{!141, !35, i64 112}
!148 = !{!142, !42, i64 60}
!149 = !{!141, !41, i64 104}
!150 = !{!104, !35, i64 40}
!151 = !{!104, !35, i64 48}
!152 = !{i64 0, i64 8, !57, i64 8, i64 32, !57, i64 40, i64 8, !57, i64 48, i64 8, !57, i64 56, i64 4, !59, i64 60, i64 4, !59}
!153 = !{!154, !42, i64 152}
!154 = !{!"MovieTrackingTrack", !35, i64 0, !35, i64 8, !36, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !42, i64 120, !42, i64 124, !35, i64 128, !36, i64 136, !48, i64 148, !42, i64 152, !42, i64 156, !42, i64 160, !36, i64 164, !41, i64 176, !41, i64 178, !41, i64 180, !41, i64 182, !42, i64 184, !48, i64 188, !35, i64 192, !48, i64 200, !48, i64 204}
!155 = !{!141, !41, i64 2}
!156 = !{!141, !42, i64 108}
!157 = distinct !{!157, !44}
!158 = !{!"movieclip.c:get_undistorted_ibuf"}
!159 = !{!"movieclip.c:movieclip_build_proxy_ibuf"}
!160 = !{i32 25, i32 101}
!161 = !{!104, !42, i64 312}
!162 = !{!104, !36, i64 24}
!163 = distinct !{!163, !44}
!164 = distinct !{!164, !44}
!165 = distinct !{!165, !44}
!166 = !{!167, !42, i64 32}
!167 = !{!"SpaceLink", !35, i64 0, !35, i64 8, !40, i64 16, !42, i64 32, !48, i64 36, !36, i64 40}
!168 = !{!169, !35, i64 64}
!169 = !{!"SpaceClip", !35, i64 0, !35, i64 8, !40, i64 16, !42, i64 32, !48, i64 36, !48, i64 40, !48, i64 44, !48, i64 48, !48, i64 52, !80, i64 56, !35, i64 64, !141, i64 72, !42, i64 208, !41, i64 212, !41, i64 214, !42, i64 216, !36, i64 220, !48, i64 228, !48, i64 232, !42, i64 236, !36, i64 240, !36, i64 304, !42, i64 368, !41, i64 372, !41, i64 374, !42, i64 376, !42, i64 380, !36, i64 384, !170, i64 392}
!170 = !{!"MaskSpaceInfo", !35, i64 0, !36, i64 8, !36, i64 9, !36, i64 10, !36, i64 11}
!171 = !{!172, !35, i64 64}
!172 = !{!"BGpic", !35, i64 0, !35, i64 8, !35, i64 16, !173, i64 24, !35, i64 64, !80, i64 72, !48, i64 80, !48, i64 84, !48, i64 88, !48, i64 92, !41, i64 96, !41, i64 98, !41, i64 100, !41, i64 102}
!173 = !{!"ImageUser", !35, i64 0, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !36, i64 24, !36, i64 25, !36, i64 26, !36, i64 27, !41, i64 28, !41, i64 30, !41, i64 32, !41, i64 34, !42, i64 36}
!174 = distinct !{!174, !44}
!175 = distinct !{!175, !44}
!176 = !{!122, !35, i64 4640}
!177 = distinct !{!177, !44}
!178 = distinct !{!178, !44}
!179 = !{!180, !41, i64 24}
!180 = !{!"bConstraint", !35, i64 0, !35, i64 8, !35, i64 16, !41, i64 24, !41, i64 26, !36, i64 28, !36, i64 29, !36, i64 30, !41, i64 94, !48, i64 96, !48, i64 100, !35, i64 104, !48, i64 112, !48, i64 116}
!181 = !{!180, !35, i64 16}
!182 = !{!183, !35, i64 0}
!183 = !{!"bFollowTrackConstraint", !35, i64 0, !36, i64 8, !42, i64 72, !42, i64 76, !36, i64 80, !35, i64 144, !35, i64 152}
!184 = !{!185, !35, i64 0}
!185 = !{!"bCameraSolverConstraint", !35, i64 0, !42, i64 8, !42, i64 12}
!186 = !{!187, !35, i64 0}
!187 = !{!"bObjectSolverConstraint", !35, i64 0, !42, i64 8, !42, i64 12, !36, i64 16, !36, i64 80, !35, i64 144}
!188 = distinct !{!188, !44}
!189 = distinct !{!189, !44}
!190 = !{!46, !35, i64 24}
!191 = !{!"movieclip.c:get_proxy_fname"}
!192 = !{!"movieclip.c:get_sequence_fname"}
!193 = !{!"movieclip.c:movieclip_load_movie_file"}
!194 = !{i32 -32768, i32 32768}
!195 = !{!"movieclip.c:has_imbuf_cache"}
!196 = !{!197, !42, i64 0}
!197 = !{!"MovieClipImBufCacheKey", !42, i64 0, !42, i64 4, !41, i64 8}
!198 = !{!"movieclip.c:put_imbuf_cache"}
!199 = !{!87, !42, i64 120}
!200 = !{!"movieclip.c:movieclip_open_anim_file"}
!201 = !{!"movieclip.c:need_postprocessed_frame"}
!202 = !{i32 0, i32 2}
!203 = !{!"movieclip.c:get_postprocessed_cached_frame"}
!204 = !{!87, !42, i64 16}
!205 = !{!87, !41, i64 60}
!206 = !{!87, !42, i64 56}
!207 = !{!87, !42, i64 20}
!208 = !{!87, !36, i64 54}
!209 = !{!"movieclip.c:get_imbuf_cache"}
!210 = !{!"movieclip.c:movieclip_load_sequence_file"}
!211 = !{!"movieclip.c:postprocess_frame"}
!212 = !{!"movieclip.c:put_postprocessed_frame_to_cache"}
!213 = !{!51, !41, i64 8}
!214 = !{!87, !41, i64 52}
!215 = !{!"movieclip.c:need_undistortion_postprocess"}
!216 = !{!"movieclip.c:check_undistortion_cache_flags"}
!217 = !{!"movieclip.c:equals_v2v2"}
!218 = !{!"movieclip.c:equals_v3v3"}
!219 = !{!"movieclip.c:user_frame_to_cache_frame"}
!220 = !{!"movieclip.c:sequence_guess_offset"}
!221 = !{!"movieclip.c:copy_v3_v3"}
!222 = !{!"movieclip.c:rendersize_to_number"}
!223 = !{!"movieclip.c:get_timecode"}
!224 = !{!"movieclip.c:moviecache_hashhash"}
!225 = !{!"movieclip.c:moviecache_hashcmp"}
!226 = !{!197, !42, i64 4}
!227 = !{!197, !41, i64 8}
!228 = !{!"movieclip.c:moviecache_keydata"}
!229 = !{!"movieclip.c:moviecache_getprioritydata"}
!230 = !{!231, !42, i64 0}
!231 = !{!"MovieClipCachePriorityData", !42, i64 0}
!232 = !{!"movieclip.c:moviecache_getitempriority"}
!233 = !{!"movieclip.c:moviecache_prioritydeleter"}
