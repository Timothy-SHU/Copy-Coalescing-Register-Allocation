; ModuleID = 'blender/source/blender/blenkernel/intern/movieclip.c'
source_filename = "blender/source/blender/blenkernel/intern/movieclip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.MovieClipUser = type { i32, i16, i16 }
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
%struct.MovieClipImBufCacheKey = type { i32, i32, i16 }
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
@switch.table.get_proxy_fname = private unnamed_addr constant [5 x i32] [i32 100, i32 25, i32 50, i32 75, i32 100], align 4
@switch.table.put_imbuf_cache = private unnamed_addr constant [5 x i32] [i32 0, i32 1, i32 2, i32 4, i32 8], align 4

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_movieclip_file_add(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.MovieClipUser, align 8
  %6 = alloca [1024 x i8], align 16
  %7 = alloca [1024 x i8], align 16
  %8 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %8) #13
  %9 = call ptr @BLI_strncpy(ptr noundef nonnull %7, ptr noundef %1, i64 noundef 1024) #13
  %10 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 2
  %11 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %7, ptr noundef nonnull %10) #13
  %12 = call i32 @BLI_open(ptr noundef nonnull %7, i32 noundef 0, i32 noundef 0) #13
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %102, label %14

14:                                               ; preds = %2
  %15 = call i32 @close(i32 noundef %12) #13
  %16 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 42
  br label %17

17:                                               ; preds = %21, %14
  %18 = phi ptr [ %16, %14 ], [ %19, %21 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !34
  %20 = icmp eq ptr %19, null
  br i1 %20, label %34, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.MovieClip, ptr %19, i64 0, i32 2
  %23 = call ptr @BLI_strncpy(ptr noundef nonnull %8, ptr noundef nonnull %22, i64 noundef 1024) #13
  %24 = load ptr, ptr @G, align 8, !tbaa !38
  %25 = getelementptr inbounds %struct.Main, ptr %24, i64 0, i32 2
  %26 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %8, ptr noundef nonnull %25) #13
  %27 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) %7) #14
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %17, !llvm.loop !43

29:                                               ; preds = %21
  %30 = call ptr @BLI_strncpy(ptr noundef nonnull %22, ptr noundef %1, i64 noundef 1024) #13
  %31 = getelementptr inbounds %struct.ID, ptr %19, i64 0, i32 6
  %32 = load i32, ptr %31, align 4, !tbaa !46
  %33 = add nsw i32 %32, 1
  store i32 %33, ptr %31, align 4, !tbaa !46
  br label %102

34:                                               ; preds = %17
  %35 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #14
  %36 = trunc i64 %35 to i32
  %37 = getelementptr i8, ptr %1, i64 -1
  %38 = icmp sgt i32 %36, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %34
  %40 = and i64 %35, 4294967295
  br label %41

41:                                               ; preds = %39, %45
  %42 = phi i64 [ %40, %39 ], [ %46, %45 ]
  %43 = getelementptr i8, ptr %37, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !58
  switch i8 %44, label %45 [
    i8 47, label %48
    i8 92, label %48
  ]

45:                                               ; preds = %41
  %46 = add nsw i64 %42, -1
  %47 = icmp sgt i64 %42, 1
  br i1 %47, label %41, label %48, !llvm.loop !59

48:                                               ; preds = %45, %41, %41, %34
  %49 = phi i64 [ %35, %34 ], [ 0, %45 ], [ %42, %41 ], [ %42, %41 ]
  %50 = shl i64 %49, 32
  %51 = ashr exact i64 %50, 32
  %52 = getelementptr inbounds i8, ptr %1, i64 %51
  %53 = call ptr @BKE_libblock_alloc(ptr noundef %0, i16 noundef signext 17229, ptr noundef %52) #13
  %54 = getelementptr inbounds %struct.MovieClip, ptr %53, i64 0, i32 7
  store float 1.000000e+00, ptr %54, align 4, !tbaa !60
  %55 = getelementptr inbounds %struct.MovieClip, ptr %53, i64 0, i32 6
  store float 1.000000e+00, ptr %55, align 8, !tbaa !61
  %56 = getelementptr inbounds %struct.MovieClip, ptr %53, i64 0, i32 11
  call void @BKE_tracking_settings_init(ptr noundef nonnull %56) #13
  %57 = getelementptr inbounds %struct.MovieClip, ptr %53, i64 0, i32 18
  call void @BKE_color_managed_colorspace_settings_init(ptr noundef nonnull %57) #13
  %58 = getelementptr inbounds %struct.MovieClip, ptr %53, i64 0, i32 13, i32 3
  store i16 1, ptr %58, align 4, !tbaa !62
  %59 = getelementptr inbounds %struct.MovieClip, ptr %53, i64 0, i32 13, i32 4
  store i16 15, ptr %59, align 2, !tbaa !63
  %60 = getelementptr inbounds %struct.MovieClip, ptr %53, i64 0, i32 13, i32 2
  store i16 90, ptr %60, align 2, !tbaa !64
  %61 = getelementptr inbounds %struct.MovieClip, ptr %53, i64 0, i32 16
  store i32 1, ptr %61, align 8, !tbaa !65
  %62 = getelementptr inbounds %struct.MovieClip, ptr %53, i64 0, i32 17
  store i32 0, ptr %62, align 4, !tbaa !66
  %63 = getelementptr inbounds %struct.MovieClip, ptr %53, i64 0, i32 2
  %64 = call ptr @BLI_strncpy(ptr noundef nonnull %63, ptr noundef %1, i64 noundef 1024) #13
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %6) #13
  %65 = call ptr @BLI_strncpy(ptr noundef nonnull %6, ptr noundef nonnull %63, i64 noundef 1024) #13
  %66 = load ptr, ptr @G, align 8, !tbaa !38
  %67 = getelementptr inbounds %struct.Main, ptr %66, i64 0, i32 2
  %68 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %6, ptr noundef nonnull %67) #13
  %69 = call ptr @IMB_testiffname(ptr noundef nonnull %6, i32 noundef 129) #13
  %70 = icmp eq ptr %69, null
  %71 = getelementptr inbounds %struct.MovieClip, ptr %53, i64 0, i32 3
  br i1 %70, label %73, label %72

72:                                               ; preds = %48
  store i32 1, ptr %71, align 8, !tbaa !67
  call void @IMB_freeImBuf(ptr noundef nonnull %69) #13
  br label %74

73:                                               ; preds = %48
  store i32 2, ptr %71, align 8, !tbaa !67
  br label %74

74:                                               ; preds = %72, %73
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  store i64 0, ptr %5, align 8
  store i32 1, ptr %5, align 8, !tbaa !68
  call void @BKE_movieclip_get_size(ptr noundef %53, ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %4)
  %75 = load i32, ptr %3, align 4, !tbaa !70
  %76 = icmp ne i32 %75, 0
  %77 = load i32, ptr %4, align 4
  %78 = icmp ne i32 %77, 0
  %79 = select i1 %76, i1 %78, i1 false
  br i1 %79, label %80, label %87

80:                                               ; preds = %74
  %81 = sitofp i32 %75 to float
  %82 = fmul float %81, 5.000000e-01
  %83 = getelementptr inbounds %struct.MovieClip, ptr %53, i64 0, i32 11, i32 1, i32 8
  store float %82, ptr %83, align 4, !tbaa !71
  %84 = sitofp i32 %77 to float
  %85 = fmul float %84, 5.000000e-01
  %86 = getelementptr inbounds %struct.MovieClip, ptr %53, i64 0, i32 11, i32 1, i32 8, i64 1
  store float %85, ptr %86, align 4, !tbaa !71
  br label %90

87:                                               ; preds = %74
  %88 = getelementptr inbounds %struct.MovieClip, ptr %53, i64 0, i32 5
  %89 = getelementptr inbounds %struct.MovieClip, ptr %53, i64 0, i32 5, i64 1
  store i32 256, ptr %89, align 4, !tbaa !70
  store i32 256, ptr %88, align 8, !tbaa !70
  br label %90

90:                                               ; preds = %80, %87
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  %91 = getelementptr inbounds %struct.MovieClip, ptr %53, i64 0, i32 5
  %92 = load i32, ptr %91, align 8, !tbaa !70
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %101, label %94

94:                                               ; preds = %90
  %95 = sitofp i32 %92 to float
  %96 = fmul float %95, 2.400000e+01
  %97 = getelementptr inbounds %struct.MovieClip, ptr %53, i64 0, i32 11, i32 1, i32 3
  %98 = load float, ptr %97, align 4, !tbaa !72
  %99 = fdiv float %96, %98
  %100 = getelementptr inbounds %struct.MovieClip, ptr %53, i64 0, i32 11, i32 1, i32 5
  store float %99, ptr %100, align 4, !tbaa !73
  br label %101

101:                                              ; preds = %94, %90
  call fastcc void @movieclip_calc_length(ptr noundef %53)
  br label %102

102:                                              ; preds = %2, %101, %29
  %103 = phi ptr [ %19, %29 ], [ %53, %101 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %7) #13
  ret ptr %103
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare zeroext i8 @BLI_path_abs(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BLI_open(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @close(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @movieclip_calc_length(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i16, align 2
  %3 = alloca [1024 x i8], align 16
  %4 = alloca [1024 x i8], align 16
  %5 = alloca [1024 x i8], align 16
  %6 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !67
  switch i32 %7, label %38 [
    i32 2, label %8
    i32 1, label %18
  ]

8:                                                ; preds = %1
  tail call fastcc void @movieclip_open_anim_file(ptr noundef %0)
  %9 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !74
  %11 = icmp eq ptr %10, null
  br i1 %11, label %38, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 13, i32 1
  %14 = load i16, ptr %13, align 8, !tbaa !75
  %15 = sext i16 %14 to i32
  %16 = tail call i32 @IMB_anim_get_duration(ptr noundef nonnull %10, i32 noundef %15) #13
  %17 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 15
  store i32 %16, ptr %17, align 4, !tbaa !76
  br label %38

18:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #13
  %19 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 2
  %20 = call i32 @BLI_stringdec(ptr noundef nonnull %19, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %2) #13
  %21 = load i16, ptr %2, align 2, !tbaa !77
  %22 = icmp eq i16 %21, 0
  %23 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 15
  br i1 %22, label %24, label %25

24:                                               ; preds = %18
  store i32 1, ptr %23, align 4, !tbaa !76
  br label %37

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 16
  store i32 0, ptr %23, align 4, !tbaa !76
  %27 = load i32, ptr %26, align 8, !tbaa !65
  call fastcc void @get_sequence_fname(ptr noundef %0, i32 noundef %27, ptr noundef nonnull %3)
  %28 = call i32 @BLI_exists(ptr noundef nonnull %3) #13
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %25, %30
  %31 = load i32, ptr %23, align 4, !tbaa !76
  %32 = add nsw i32 %31, 1
  store i32 %32, ptr %23, align 4, !tbaa !76
  %33 = load i32, ptr %26, align 8, !tbaa !65
  %34 = add nsw i32 %33, %32
  call fastcc void @get_sequence_fname(ptr noundef %0, i32 noundef %34, ptr noundef nonnull %3)
  %35 = call i32 @BLI_exists(ptr noundef nonnull %3) #13
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %30, !llvm.loop !78

37:                                               ; preds = %30, %25, %24
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #13
  br label %38

38:                                               ; preds = %1, %37, %8, %12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_movieclip_get_ibuf(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 14
  %4 = load i32, ptr %3, align 8, !tbaa !79
  %5 = tail call fastcc ptr @movieclip_get_postprocessed_ibuf(ptr noundef %0, ptr noundef %1, i32 noundef %4, i32 noundef 0, i32 noundef 0)
  ret ptr %5
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_movieclip_get_ibuf_flag(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call fastcc ptr @movieclip_get_postprocessed_ibuf(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 0, i32 noundef %3)
  ret ptr %5
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @movieclip_get_postprocessed_ibuf(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca [1024 x i8], align 16
  %7 = alloca %struct.MovieClipImBufCacheKey, align 4
  %8 = load i32, ptr %1, align 4, !tbaa !68
  tail call void @BLI_lock_thread(i32 noundef 7) #13
  %9 = getelementptr inbounds %struct.MovieClipUser, ptr %1, i64 0, i32 1
  %10 = load i16, ptr %9, align 4, !tbaa !80
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.MovieClipUser, ptr %1, i64 0, i32 2
  %14 = load i16, ptr %13, align 2, !tbaa !81
  %15 = and i16 %14, 1
  %16 = zext nneg i16 %15 to i32
  br label %17

17:                                               ; preds = %5, %12
  %18 = phi i32 [ 0, %5 ], [ %16, %12 ]
  %19 = or i32 %18, %3
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %130, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 9
  %23 = load ptr, ptr %22, align 8, !tbaa !82
  %24 = load i32, ptr %1, align 4, !tbaa !68
  %25 = and i32 %2, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %38, label %27

27:                                               ; preds = %21
  %28 = icmp ult i16 %10, 5
  br i1 %28, label %29, label %33

29:                                               ; preds = %27
  %30 = zext nneg i16 %10 to i64
  %31 = getelementptr inbounds [5 x i32], ptr @switch.table.put_imbuf_cache, i64 0, i64 %30
  %32 = load i32, ptr %31, align 4
  br label %33

33:                                               ; preds = %27, %29
  %34 = phi i32 [ %32, %29 ], [ 0, %27 ]
  %35 = getelementptr inbounds %struct.MovieClipUser, ptr %1, i64 0, i32 2
  %36 = load i16, ptr %35, align 2, !tbaa !81
  %37 = sext i16 %36 to i32
  br label %38

38:                                               ; preds = %33, %21
  %39 = phi i32 [ %34, %33 ], [ 0, %21 ]
  %40 = phi i32 [ %37, %33 ], [ 0, %21 ]
  %41 = icmp eq ptr %23, null
  br i1 %41, label %127, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.MovieClipCache, ptr %23, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !83
  %45 = icmp eq ptr %44, null
  br i1 %45, label %127, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.MovieClipCache, ptr %23, i64 0, i32 1, i32 1
  %48 = load i32, ptr %47, align 8, !tbaa !87
  %49 = icmp eq i32 %48, %24
  br i1 %49, label %50, label %127

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.MovieClipCache, ptr %23, i64 0, i32 1, i32 12
  %52 = load i16, ptr %51, align 4, !tbaa !88
  %53 = sext i16 %52 to i32
  %54 = icmp eq i32 %40, %53
  br i1 %54, label %55, label %127

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.MovieClipCache, ptr %23, i64 0, i32 1, i32 11
  %57 = load i32, ptr %56, align 8, !tbaa !89
  %58 = icmp eq i32 %57, %39
  br i1 %58, label %59, label %127

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.MovieClipCache, ptr %23, i64 0, i32 1, i32 2
  %61 = load i32, ptr %60, align 4, !tbaa !90
  %62 = icmp eq i32 %61, %3
  br i1 %62, label %63, label %127

63:                                               ; preds = %59
  br i1 %11, label %64, label %121

64:                                               ; preds = %63
  %65 = getelementptr inbounds %struct.MovieClipUser, ptr %1, i64 0, i32 2
  %66 = load i16, ptr %65, align 2, !tbaa !81
  %67 = and i16 %66, 1
  %68 = icmp eq i16 %67, 0
  br i1 %68, label %121, label %69

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 11, i32 1, i32 8
  %71 = getelementptr inbounds %struct.MovieClipCache, ptr %23, i64 0, i32 1, i32 3
  %72 = load float, ptr %70, align 4, !tbaa !71
  %73 = load float, ptr %71, align 4, !tbaa !71
  %74 = fcmp oeq float %72, %73
  br i1 %74, label %75, label %118

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 11, i32 1, i32 8, i64 1
  %77 = load float, ptr %76, align 4, !tbaa !71
  %78 = getelementptr inbounds %struct.MovieClipCache, ptr %23, i64 0, i32 1, i32 3, i64 1
  %79 = load float, ptr %78, align 4, !tbaa !71
  %80 = fcmp une float %77, %79
  br i1 %80, label %118, label %81

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 11, i32 1, i32 1
  %83 = load i16, ptr %82, align 8, !tbaa !91
  %84 = getelementptr inbounds %struct.MovieClipCache, ptr %23, i64 0, i32 1, i32 9
  %85 = load i16, ptr %84, align 4, !tbaa !92
  %86 = icmp eq i16 %83, %85
  br i1 %86, label %87, label %118

87:                                               ; preds = %81
  %88 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 11, i32 1, i32 9
  %89 = getelementptr inbounds %struct.MovieClipCache, ptr %23, i64 0, i32 1, i32 4
  %90 = load float, ptr %88, align 4, !tbaa !71
  %91 = load float, ptr %89, align 4, !tbaa !71
  %92 = fcmp oeq float %90, %91
  br i1 %92, label %93, label %118

93:                                               ; preds = %87
  %94 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 11, i32 1, i32 10
  %95 = load float, ptr %94, align 4, !tbaa !71
  %96 = getelementptr inbounds %struct.MovieClipCache, ptr %23, i64 0, i32 1, i32 5
  %97 = load float, ptr %96, align 4, !tbaa !71
  %98 = fcmp oeq float %95, %97
  br i1 %98, label %99, label %118

99:                                               ; preds = %93
  %100 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 11, i32 1, i32 11
  %101 = load float, ptr %100, align 4, !tbaa !71
  %102 = getelementptr inbounds %struct.MovieClipCache, ptr %23, i64 0, i32 1, i32 6
  %103 = load float, ptr %102, align 4, !tbaa !71
  %104 = fcmp une float %101, %103
  br i1 %104, label %118, label %105

105:                                              ; preds = %99
  %106 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 11, i32 1, i32 12
  %107 = getelementptr inbounds %struct.MovieClipCache, ptr %23, i64 0, i32 1, i32 7
  %108 = load float, ptr %106, align 4, !tbaa !71
  %109 = load float, ptr %107, align 4, !tbaa !71
  %110 = fcmp oeq float %108, %109
  br i1 %110, label %111, label %118

111:                                              ; preds = %105
  %112 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 11, i32 1, i32 13
  %113 = load float, ptr %112, align 4, !tbaa !71
  %114 = getelementptr inbounds %struct.MovieClipCache, ptr %23, i64 0, i32 1, i32 8
  %115 = load float, ptr %114, align 4, !tbaa !71
  %116 = fcmp oeq float %113, %115
  %117 = zext i1 %116 to i8
  br label %118

118:                                              ; preds = %69, %75, %81, %87, %93, %99, %105, %111
  %119 = phi i8 [ 0, %75 ], [ 0, %81 ], [ 0, %99 ], [ 0, %105 ], [ %117, %111 ], [ 0, %69 ], [ 0, %87 ], [ 0, %93 ]
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %127, label %125

121:                                              ; preds = %63, %64
  %122 = getelementptr inbounds %struct.MovieClipCache, ptr %23, i64 0, i32 1, i32 10
  %123 = load i8, ptr %122, align 2, !tbaa !93
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %121, %118
  tail call void @IMB_refImBuf(ptr noundef nonnull %44) #13
  %126 = load ptr, ptr %43, align 8, !tbaa !83
  br label %127

127:                                              ; preds = %38, %42, %46, %50, %55, %59, %118, %121, %125
  %128 = phi ptr [ %126, %125 ], [ null, %42 ], [ null, %38 ], [ null, %46 ], [ null, %55 ], [ null, %50 ], [ null, %59 ], [ null, %118 ], [ null, %121 ]
  %129 = icmp ne ptr %128, null
  br label %130

130:                                              ; preds = %127, %17
  %131 = phi i1 [ true, %17 ], [ %129, %127 ]
  %132 = phi ptr [ null, %17 ], [ %128, %127 ]
  %133 = icmp eq ptr %132, null
  br i1 %133, label %134, label %163

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 9
  %136 = load ptr, ptr %135, align 8, !tbaa !82
  %137 = icmp eq ptr %136, null
  br i1 %137, label %163, label %138

138:                                              ; preds = %134
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #13
  %139 = load i32, ptr %1, align 4, !tbaa !68
  %140 = tail call fastcc i32 @user_frame_to_cache_frame(ptr noundef %0, i32 noundef %139)
  store i32 %140, ptr %7, align 4, !tbaa !94
  %141 = and i32 %2, 1
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %155, label %143

143:                                              ; preds = %138
  %144 = load i16, ptr %9, align 4, !tbaa !80
  %145 = icmp ult i16 %144, 5
  br i1 %145, label %146, label %150

146:                                              ; preds = %143
  %147 = zext nneg i16 %144 to i64
  %148 = getelementptr inbounds [5 x i32], ptr @switch.table.put_imbuf_cache, i64 0, i64 %147
  %149 = load i32, ptr %148, align 4
  br label %150

150:                                              ; preds = %143, %146
  %151 = phi i32 [ %149, %146 ], [ 0, %143 ]
  %152 = getelementptr inbounds %struct.MovieClipImBufCacheKey, ptr %7, i64 0, i32 1
  store i32 %151, ptr %152, align 4, !tbaa !96
  %153 = getelementptr inbounds %struct.MovieClipUser, ptr %1, i64 0, i32 2
  %154 = load i16, ptr %153, align 2, !tbaa !81
  br label %157

155:                                              ; preds = %138
  %156 = getelementptr inbounds %struct.MovieClipImBufCacheKey, ptr %7, i64 0, i32 1
  store i32 0, ptr %156, align 4, !tbaa !96
  br label %157

157:                                              ; preds = %155, %150
  %158 = phi i16 [ 0, %155 ], [ %154, %150 ]
  %159 = getelementptr inbounds %struct.MovieClipImBufCacheKey, ptr %7, i64 0, i32 2
  store i16 %158, ptr %159, align 4, !tbaa !97
  %160 = load ptr, ptr %135, align 8, !tbaa !82
  %161 = load ptr, ptr %160, align 8, !tbaa !98
  %162 = call ptr @IMB_moviecache_get(ptr noundef %161, ptr noundef nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #13
  br label %163

163:                                              ; preds = %157, %134, %130
  %164 = phi ptr [ %132, %130 ], [ %162, %157 ], [ null, %134 ]
  %165 = icmp eq ptr %164, null
  br i1 %165, label %166, label %236

166:                                              ; preds = %163
  %167 = getelementptr inbounds %struct.MovieClipUser, ptr %1, i64 0, i32 2
  %168 = load i16, ptr %167, align 2, !tbaa !81
  %169 = and i16 %168, 1
  %170 = icmp eq i16 %169, 0
  br i1 %170, label %174, label %171

171:                                              ; preds = %166
  %172 = load i16, ptr %9, align 4, !tbaa !80
  %173 = icmp ne i16 %172, 0
  br label %174

174:                                              ; preds = %171, %166
  %175 = phi i1 [ false, %166 ], [ %173, %171 ]
  %176 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 3
  %177 = load i32, ptr %176, align 8, !tbaa !67
  %178 = icmp eq i32 %177, 1
  %179 = select i1 %178, i1 true, i1 %175
  br i1 %179, label %180, label %199

180:                                              ; preds = %174
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %6) #13
  %181 = and i32 %2, 1
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %194, label %183

183:                                              ; preds = %180
  %184 = load i16, ptr %9, align 4, !tbaa !80
  %185 = icmp eq i16 %184, 0
  br i1 %185, label %194, label %186

186:                                              ; preds = %183
  %187 = sext i16 %184 to i32
  %188 = trunc i16 %168 to i8
  %189 = and i8 %188, 1
  call fastcc void @get_proxy_fname(ptr noundef %0, i32 noundef %187, i8 noundef zeroext %189, i32 noundef %8, ptr noundef nonnull %6)
  %190 = load i32, ptr %176, align 8, !tbaa !67
  %191 = icmp eq i32 %190, 2
  %192 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 18
  %193 = select i1 %191, ptr %192, ptr null
  br label %196

194:                                              ; preds = %183, %180
  call fastcc void @get_sequence_fname(ptr noundef %0, i32 noundef %8, ptr noundef nonnull %6)
  %195 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 18
  br label %196

196:                                              ; preds = %186, %194
  %197 = phi ptr [ %193, %186 ], [ %195, %194 ]
  %198 = call ptr @IMB_loadiffname(ptr noundef nonnull %6, i32 noundef 8321, ptr noundef %197) #13
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %6) #13
  br label %228

199:                                              ; preds = %174
  %200 = and i32 %2, 1
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %206, label %202

202:                                              ; preds = %199
  %203 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 13, i32 1
  %204 = load i16, ptr %203, align 8, !tbaa !75
  %205 = sext i16 %204 to i32
  br label %206

206:                                              ; preds = %202, %199
  %207 = phi i32 [ %205, %202 ], [ 0, %199 ]
  br i1 %201, label %215, label %208

208:                                              ; preds = %206
  %209 = load i16, ptr %9, align 4, !tbaa !80
  %210 = icmp ult i16 %209, 5
  br i1 %210, label %211, label %215

211:                                              ; preds = %208
  %212 = zext nneg i16 %209 to i64
  %213 = getelementptr inbounds [5 x i32], ptr @switch.table.put_imbuf_cache, i64 0, i64 %212
  %214 = load i32, ptr %213, align 4
  br label %215

215:                                              ; preds = %208, %211, %206
  %216 = phi i32 [ 0, %206 ], [ %214, %211 ], [ 0, %208 ]
  call fastcc void @movieclip_open_anim_file(ptr noundef %0)
  %217 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 8
  %218 = load ptr, ptr %217, align 8, !tbaa !74
  %219 = icmp eq ptr %218, null
  br i1 %219, label %228, label %220

220:                                              ; preds = %215
  %221 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 16
  %222 = load i32, ptr %221, align 8, !tbaa !65
  %223 = sub i32 %8, %222
  %224 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 17
  %225 = load i32, ptr %224, align 4, !tbaa !66
  %226 = add nsw i32 %223, %225
  %227 = call ptr @IMB_anim_absolute(ptr noundef nonnull %218, i32 noundef %226, i32 noundef %207, i32 noundef %216) #13
  br label %228

228:                                              ; preds = %220, %215, %196
  %229 = phi ptr [ %198, %196 ], [ %227, %220 ], [ null, %215 ]
  %230 = icmp ne ptr %229, null
  %231 = and i32 %4, 1
  %232 = icmp eq i32 %231, 0
  %233 = and i1 %232, %230
  br i1 %233, label %234, label %236

234:                                              ; preds = %228
  %235 = call fastcc zeroext i8 @put_imbuf_cache(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %229, i32 noundef %2, i8 noundef zeroext 1)
  br label %236

236:                                              ; preds = %228, %234, %163
  %237 = phi ptr [ %164, %163 ], [ %229, %234 ], [ %229, %228 ]
  %238 = icmp eq ptr %237, null
  br i1 %238, label %380, label %239

239:                                              ; preds = %236
  %240 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 4
  store i32 %8, ptr %240, align 4, !tbaa !99
  %241 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 5
  %242 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 5, i64 1
  %243 = getelementptr inbounds %struct.ImBuf, ptr %237, i64 0, i32 2
  %244 = load i32, ptr %243, align 8, !tbaa !100
  store i32 %244, ptr %241, align 4, !tbaa !70
  %245 = getelementptr inbounds %struct.ImBuf, ptr %237, i64 0, i32 3
  %246 = load i32, ptr %245, align 4, !tbaa !104
  store i32 %246, ptr %242, align 4, !tbaa !70
  %247 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 14
  %248 = load i32, ptr %247, align 8, !tbaa !79
  %249 = and i32 %248, 1
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %274, label %251

251:                                              ; preds = %239
  %252 = load i16, ptr %9, align 4, !tbaa !80
  switch i16 %252, label %274 [
    i16 1, label %253
    i16 2, label %256
    i16 3, label %263
  ]

253:                                              ; preds = %251
  %254 = shl nsw i32 %244, 2
  store i32 %254, ptr %241, align 4, !tbaa !70
  %255 = shl nsw i32 %246, 2
  br label %272

256:                                              ; preds = %251
  %257 = sitofp i32 %244 to float
  %258 = fmul float %257, 2.000000e+00
  %259 = fptosi float %258 to i32
  store i32 %259, ptr %241, align 4, !tbaa !70
  %260 = sitofp i32 %246 to float
  %261 = fmul float %260, 2.000000e+00
  %262 = fptosi float %261 to i32
  br label %272

263:                                              ; preds = %251
  %264 = sitofp i32 %244 to float
  %265 = fmul float %264, 4.000000e+00
  %266 = fdiv float %265, 3.000000e+00
  %267 = fptosi float %266 to i32
  store i32 %267, ptr %241, align 4, !tbaa !70
  %268 = sitofp i32 %246 to float
  %269 = fmul float %268, 4.000000e+00
  %270 = fdiv float %269, 3.000000e+00
  %271 = fptosi float %270 to i32
  br label %272

272:                                              ; preds = %263, %256, %253
  %273 = phi i32 [ %255, %253 ], [ %262, %256 ], [ %271, %263 ]
  store i32 %273, ptr %242, align 4, !tbaa !70
  br label %274

274:                                              ; preds = %272, %239, %251
  br i1 %131, label %380, label %275

275:                                              ; preds = %274
  %276 = load i16, ptr %9, align 4, !tbaa !80
  %277 = icmp eq i16 %276, 0
  br i1 %277, label %278, label %291

278:                                              ; preds = %275
  %279 = getelementptr inbounds %struct.MovieClipUser, ptr %1, i64 0, i32 2
  %280 = load i16, ptr %279, align 2, !tbaa !81
  %281 = and i16 %280, 1
  %282 = icmp eq i16 %281, 0
  br i1 %282, label %291, label %283

283:                                              ; preds = %278
  %284 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 11
  %285 = load i32, ptr %243, align 8, !tbaa !100
  %286 = load i32, ptr %245, align 4, !tbaa !104
  %287 = call ptr @BKE_tracking_undistort_frame(ptr noundef nonnull %284, ptr noundef nonnull %237, i32 noundef %285, i32 noundef %286, float noundef 0.000000e+00) #13
  %288 = load i32, ptr %243, align 8, !tbaa !100
  %289 = load i32, ptr %245, align 4, !tbaa !104
  %290 = call ptr @IMB_scaleImBuf(ptr noundef %287, i32 noundef %288, i32 noundef %289) #13
  br label %293

291:                                              ; preds = %275, %278
  %292 = call ptr @IMB_dupImBuf(ptr noundef nonnull %237) #13
  br label %293

293:                                              ; preds = %291, %283
  %294 = phi ptr [ %287, %283 ], [ %292, %291 ]
  %295 = icmp eq i32 %3, 0
  br i1 %295, label %310, label %296

296:                                              ; preds = %293
  %297 = trunc i32 %3 to i8
  %298 = lshr i8 %297, 1
  %299 = lshr i8 %297, 2
  %300 = or i8 %298, %299
  %301 = and i8 %300, 1
  %302 = icmp ne i8 %301, 0
  %303 = and i32 %3, 9
  %304 = icmp ne i32 %303, 0
  %305 = or i1 %304, %302
  br i1 %305, label %306, label %310

306:                                              ; preds = %296
  %307 = and i8 %299, 1
  %308 = and i8 %298, 1
  %309 = and i8 %297, 1
  call void @BKE_tracking_disable_channels(ptr noundef %294, i8 noundef zeroext %309, i8 noundef zeroext %308, i8 noundef zeroext %307, i8 noundef zeroext 1) #13
  br label %310

310:                                              ; preds = %293, %296, %306
  call void @IMB_freeImBuf(ptr noundef nonnull %237) #13
  %311 = icmp ne ptr %294, null
  %312 = and i32 %4, 1
  %313 = icmp eq i32 %312, 0
  %314 = and i1 %313, %311
  br i1 %314, label %315, label %380

315:                                              ; preds = %310
  %316 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 9
  %317 = load ptr, ptr %316, align 8, !tbaa !82
  %318 = load i32, ptr %1, align 4, !tbaa !68
  %319 = getelementptr inbounds %struct.MovieClipCache, ptr %317, i64 0, i32 1
  %320 = getelementptr inbounds %struct.MovieClipCache, ptr %317, i64 0, i32 1, i32 1
  store i32 %318, ptr %320, align 8, !tbaa !87
  %321 = getelementptr inbounds %struct.MovieClipCache, ptr %317, i64 0, i32 1, i32 2
  store i32 %3, ptr %321, align 4, !tbaa !90
  %322 = and i32 %2, 1
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %336, label %324

324:                                              ; preds = %315
  %325 = load i16, ptr %9, align 4, !tbaa !80
  %326 = icmp ult i16 %325, 5
  br i1 %326, label %327, label %331

327:                                              ; preds = %324
  %328 = zext nneg i16 %325 to i64
  %329 = getelementptr inbounds [5 x i32], ptr @switch.table.put_imbuf_cache, i64 0, i64 %328
  %330 = load i32, ptr %329, align 4
  br label %331

331:                                              ; preds = %324, %327
  %332 = phi i32 [ %330, %327 ], [ 0, %324 ]
  %333 = getelementptr inbounds %struct.MovieClipCache, ptr %317, i64 0, i32 1, i32 11
  store i32 %332, ptr %333, align 8, !tbaa !89
  %334 = getelementptr inbounds %struct.MovieClipUser, ptr %1, i64 0, i32 2
  %335 = load i16, ptr %334, align 2, !tbaa !81
  br label %338

336:                                              ; preds = %315
  %337 = getelementptr inbounds %struct.MovieClipCache, ptr %317, i64 0, i32 1, i32 11
  store i32 0, ptr %337, align 8, !tbaa !89
  br label %338

338:                                              ; preds = %336, %331
  %339 = phi i16 [ 0, %336 ], [ %335, %331 ]
  %340 = getelementptr inbounds %struct.MovieClipCache, ptr %317, i64 0, i32 1, i32 12
  store i16 %339, ptr %340, align 4, !tbaa !88
  %341 = load i16, ptr %9, align 4, !tbaa !80
  %342 = icmp eq i16 %341, 0
  br i1 %342, label %343, label %373

343:                                              ; preds = %338
  %344 = getelementptr inbounds %struct.MovieClipUser, ptr %1, i64 0, i32 2
  %345 = load i16, ptr %344, align 2, !tbaa !81
  %346 = and i16 %345, 1
  %347 = icmp eq i16 %346, 0
  br i1 %347, label %373, label %348

348:                                              ; preds = %343
  %349 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 11, i32 1, i32 1
  %350 = load i16, ptr %349, align 8, !tbaa !91
  %351 = getelementptr inbounds %struct.MovieClipCache, ptr %317, i64 0, i32 1, i32 9
  store i16 %350, ptr %351, align 4, !tbaa !92
  %352 = getelementptr inbounds %struct.MovieClipCache, ptr %317, i64 0, i32 1, i32 3
  %353 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 11, i32 1, i32 8
  %354 = load float, ptr %353, align 4, !tbaa !71
  store float %354, ptr %352, align 4, !tbaa !71
  %355 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 11, i32 1, i32 8, i64 1
  %356 = load float, ptr %355, align 4, !tbaa !71
  %357 = getelementptr inbounds %struct.MovieClipCache, ptr %317, i64 0, i32 1, i32 3, i64 1
  store float %356, ptr %357, align 4, !tbaa !71
  %358 = getelementptr inbounds %struct.MovieClipCache, ptr %317, i64 0, i32 1, i32 4
  %359 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 11, i32 1, i32 9
  %360 = load float, ptr %359, align 4, !tbaa !71
  store float %360, ptr %358, align 4, !tbaa !71
  %361 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 11, i32 1, i32 10
  %362 = load float, ptr %361, align 4, !tbaa !71
  %363 = getelementptr inbounds %struct.MovieClipCache, ptr %317, i64 0, i32 1, i32 5
  store float %362, ptr %363, align 4, !tbaa !71
  %364 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 11, i32 1, i32 11
  %365 = load float, ptr %364, align 4, !tbaa !71
  %366 = getelementptr inbounds %struct.MovieClipCache, ptr %317, i64 0, i32 1, i32 6
  store float %365, ptr %366, align 4, !tbaa !71
  %367 = getelementptr inbounds %struct.MovieClipCache, ptr %317, i64 0, i32 1, i32 7
  %368 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 11, i32 1, i32 12
  %369 = load float, ptr %368, align 4, !tbaa !71
  store float %369, ptr %367, align 4, !tbaa !71
  %370 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 11, i32 1, i32 13
  %371 = load float, ptr %370, align 4, !tbaa !71
  %372 = getelementptr inbounds %struct.MovieClipCache, ptr %317, i64 0, i32 1, i32 8
  store float %371, ptr %372, align 4, !tbaa !71
  br label %373

373:                                              ; preds = %343, %338, %348
  %374 = phi i8 [ 1, %348 ], [ 0, %338 ], [ 0, %343 ]
  %375 = getelementptr inbounds %struct.MovieClipCache, ptr %317, i64 0, i32 1, i32 10
  store i8 %374, ptr %375, align 2, !tbaa !93
  call void @IMB_refImBuf(ptr noundef nonnull %294) #13
  %376 = load ptr, ptr %319, align 8, !tbaa !83
  %377 = icmp eq ptr %376, null
  br i1 %377, label %379, label %378

378:                                              ; preds = %373
  call void @IMB_freeImBuf(ptr noundef nonnull %376) #13
  br label %379

379:                                              ; preds = %373, %378
  store ptr %294, ptr %319, align 8, !tbaa !83
  br label %380

380:                                              ; preds = %310, %379, %274, %236
  %381 = phi ptr [ %237, %274 ], [ null, %236 ], [ %294, %379 ], [ %294, %310 ]
  call void @BLI_unlock_thread(i32 noundef 7) #13
  ret ptr %381
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_movieclip_get_postprocessed_ibuf(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 14
  %5 = load i32, ptr %4, align 8, !tbaa !79
  %6 = tail call fastcc ptr @movieclip_get_postprocessed_ibuf(ptr noundef %0, ptr noundef %1, i32 noundef %5, i32 noundef %2, i32 noundef 0)
  ret ptr %6
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_movieclip_get_stable_ibuf(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef writeonly %2, ptr noundef writeonly %3, ptr noundef writeonly %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca [2 x float], align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca [2 x float], align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = load i32, ptr %1, align 4, !tbaa !68
  %14 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 14
  %15 = load i32, ptr %14, align 8, !tbaa !79
  %16 = tail call fastcc ptr @movieclip_get_postprocessed_ibuf(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %15, i32 noundef %5, i32 noundef 0)
  %17 = icmp eq ptr %16, null
  br i1 %17, label %205, label %18

18:                                               ; preds = %6
  %19 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 11, i32 5
  %20 = load i32, ptr %19, align 8, !tbaa !105
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %189, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 9
  %25 = load ptr, ptr %24, align 8, !tbaa !82
  %26 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #13
  %27 = sitofp i32 %13 to float
  %28 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 16
  %29 = load i32, ptr %28, align 8, !tbaa !65
  %30 = sitofp i32 %29 to float
  %31 = fsub float %27, %30
  %32 = fadd float %31, 1.000000e+00
  %33 = fptosi float %32 to i32
  %34 = load i32, ptr %14, align 8, !tbaa !79
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %50, label %37

37:                                               ; preds = %23
  %38 = getelementptr inbounds %struct.MovieClipUser, ptr %1, i64 0, i32 1
  %39 = load i16, ptr %38, align 4, !tbaa !80
  %40 = icmp ult i16 %39, 5
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = zext nneg i16 %39 to i64
  %43 = getelementptr inbounds [5 x i32], ptr @switch.table.put_imbuf_cache, i64 0, i64 %42
  %44 = load i32, ptr %43, align 4
  br label %45

45:                                               ; preds = %37, %41
  %46 = phi i32 [ %44, %41 ], [ 0, %37 ]
  %47 = getelementptr inbounds %struct.MovieClipUser, ptr %1, i64 0, i32 2
  %48 = load i16, ptr %47, align 2, !tbaa !81
  %49 = sext i16 %48 to i32
  br label %50

50:                                               ; preds = %45, %23
  %51 = phi i32 [ %46, %45 ], [ 0, %23 ]
  %52 = phi i32 [ %49, %45 ], [ 0, %23 ]
  %53 = getelementptr inbounds %struct.MovieClipCache, ptr %25, i64 0, i32 2
  %54 = getelementptr inbounds %struct.MovieClipCache, ptr %25, i64 0, i32 2, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !106
  %56 = icmp eq ptr %55, null
  br i1 %56, label %115, label %57

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.MovieClipCache, ptr %25, i64 0, i32 2, i32 2
  %59 = load i32, ptr %58, align 8, !tbaa !107
  %60 = icmp eq i32 %59, %13
  br i1 %60, label %61, label %115

61:                                               ; preds = %57
  %62 = load ptr, ptr %53, align 8, !tbaa !108
  %63 = icmp eq ptr %62, %16
  br i1 %63, label %64, label %115

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.MovieClipCache, ptr %25, i64 0, i32 2, i32 10
  %66 = load i16, ptr %65, align 4, !tbaa !109
  %67 = sext i16 %66 to i32
  %68 = icmp eq i32 %52, %67
  br i1 %68, label %69, label %115

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.MovieClipCache, ptr %25, i64 0, i32 2, i32 8
  %71 = load i32, ptr %70, align 4, !tbaa !110
  %72 = icmp eq i32 %71, %51
  br i1 %72, label %73, label %115

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.MovieClipCache, ptr %25, i64 0, i32 2, i32 3
  %75 = load i32, ptr %74, align 4, !tbaa !111
  %76 = icmp eq i32 %75, %5
  br i1 %76, label %77, label %115

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.MovieClipCache, ptr %25, i64 0, i32 2, i32 7
  %79 = load float, ptr %78, align 8, !tbaa !112
  %80 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 11, i32 1, i32 4
  %81 = load float, ptr %80, align 8, !tbaa !113
  %82 = fcmp une float %79, %81
  br i1 %82, label %115, label %83

83:                                               ; preds = %77
  %84 = getelementptr inbounds %struct.MovieClipCache, ptr %25, i64 0, i32 2, i32 9
  %85 = load i32, ptr %84, align 8, !tbaa !114
  %86 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 11, i32 5, i32 8
  %87 = load i32, ptr %86, align 4, !tbaa !115
  %88 = icmp eq i32 %85, %87
  br i1 %88, label %89, label %115

89:                                               ; preds = %83
  %90 = getelementptr inbounds %struct.ImBuf, ptr %55, i64 0, i32 2
  %91 = load i32, ptr %90, align 8, !tbaa !100
  %92 = getelementptr inbounds %struct.ImBuf, ptr %55, i64 0, i32 3
  %93 = load i32, ptr %92, align 4, !tbaa !104
  call void @BKE_tracking_stabilization_data_get(ptr noundef nonnull %26, i32 noundef %33, i32 noundef %91, i32 noundef %93, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12) #13
  %94 = load float, ptr %11, align 4, !tbaa !71
  %95 = getelementptr inbounds %struct.MovieClipCache, ptr %25, i64 0, i32 2, i32 5
  %96 = load float, ptr %95, align 8, !tbaa !116
  %97 = fcmp une float %94, %96
  br i1 %97, label %115, label %98

98:                                               ; preds = %89
  %99 = load float, ptr %12, align 4, !tbaa !71
  %100 = getelementptr inbounds %struct.MovieClipCache, ptr %25, i64 0, i32 2, i32 6
  %101 = load float, ptr %100, align 4, !tbaa !117
  %102 = fcmp une float %99, %101
  br i1 %102, label %115, label %103

103:                                              ; preds = %98
  %104 = getelementptr inbounds %struct.MovieClipCache, ptr %25, i64 0, i32 2, i32 4
  %105 = load float, ptr %10, align 4, !tbaa !71
  %106 = load float, ptr %104, align 4, !tbaa !71
  %107 = fcmp oeq float %105, %106
  br i1 %107, label %108, label %115

108:                                              ; preds = %103
  %109 = getelementptr inbounds float, ptr %10, i64 1
  %110 = load float, ptr %109, align 4, !tbaa !71
  %111 = getelementptr inbounds %struct.MovieClipCache, ptr %25, i64 0, i32 2, i32 4, i64 1
  %112 = load float, ptr %111, align 4, !tbaa !71
  %113 = fcmp une float %110, %112
  br i1 %113, label %115, label %114

114:                                              ; preds = %108
  call void @IMB_refImBuf(ptr noundef nonnull %55) #13
  br label %115

115:                                              ; preds = %103, %50, %57, %61, %64, %69, %73, %77, %83, %89, %98, %108, %114
  %116 = phi ptr [ %55, %114 ], [ null, %57 ], [ null, %50 ], [ null, %61 ], [ null, %69 ], [ null, %64 ], [ null, %73 ], [ null, %77 ], [ null, %83 ], [ null, %108 ], [ null, %98 ], [ null, %89 ], [ null, %103 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #13
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %170

118:                                              ; preds = %115
  %119 = load ptr, ptr %24, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #13
  %120 = load i32, ptr %28, align 8, !tbaa !65
  %121 = sitofp i32 %120 to float
  %122 = fsub float %27, %121
  %123 = fadd float %122, 1.000000e+00
  %124 = fptosi float %123 to i32
  %125 = call ptr @BKE_tracking_stabilize_frame(ptr noundef nonnull %26, i32 noundef %124, ptr noundef nonnull %16, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #13
  %126 = getelementptr inbounds %struct.MovieClipCache, ptr %119, i64 0, i32 2
  %127 = getelementptr inbounds %struct.MovieClipCache, ptr %119, i64 0, i32 2, i32 4
  %128 = load float, ptr %7, align 4, !tbaa !71
  store float %128, ptr %127, align 4, !tbaa !71
  %129 = getelementptr inbounds float, ptr %7, i64 1
  %130 = load float, ptr %129, align 4, !tbaa !71
  %131 = getelementptr inbounds %struct.MovieClipCache, ptr %119, i64 0, i32 2, i32 4, i64 1
  store float %130, ptr %131, align 4, !tbaa !71
  store ptr %16, ptr %126, align 8, !tbaa !108
  %132 = load float, ptr %8, align 4, !tbaa !71
  %133 = getelementptr inbounds %struct.MovieClipCache, ptr %119, i64 0, i32 2, i32 5
  store float %132, ptr %133, align 8, !tbaa !116
  %134 = load float, ptr %9, align 4, !tbaa !71
  %135 = getelementptr inbounds %struct.MovieClipCache, ptr %119, i64 0, i32 2, i32 6
  store float %134, ptr %135, align 4, !tbaa !117
  %136 = getelementptr inbounds %struct.MovieClipCache, ptr %119, i64 0, i32 2, i32 2
  store i32 %13, ptr %136, align 8, !tbaa !107
  %137 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 11, i32 1, i32 4
  %138 = load float, ptr %137, align 8, !tbaa !113
  %139 = getelementptr inbounds %struct.MovieClipCache, ptr %119, i64 0, i32 2, i32 7
  store float %138, ptr %139, align 8, !tbaa !112
  %140 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 11, i32 5, i32 8
  %141 = load i32, ptr %140, align 4, !tbaa !115
  %142 = getelementptr inbounds %struct.MovieClipCache, ptr %119, i64 0, i32 2, i32 9
  store i32 %141, ptr %142, align 8, !tbaa !114
  %143 = load i32, ptr %14, align 8, !tbaa !79
  %144 = and i32 %143, 1
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %159, label %146

146:                                              ; preds = %118
  %147 = getelementptr inbounds %struct.MovieClipUser, ptr %1, i64 0, i32 1
  %148 = load i16, ptr %147, align 4, !tbaa !80
  %149 = icmp ult i16 %148, 5
  br i1 %149, label %150, label %154

150:                                              ; preds = %146
  %151 = zext nneg i16 %148 to i64
  %152 = getelementptr inbounds [5 x i32], ptr @switch.table.put_imbuf_cache, i64 0, i64 %151
  %153 = load i32, ptr %152, align 4
  br label %154

154:                                              ; preds = %146, %150
  %155 = phi i32 [ %153, %150 ], [ 0, %146 ]
  %156 = getelementptr inbounds %struct.MovieClipCache, ptr %119, i64 0, i32 2, i32 8
  store i32 %155, ptr %156, align 4, !tbaa !110
  %157 = getelementptr inbounds %struct.MovieClipUser, ptr %1, i64 0, i32 2
  %158 = load i16, ptr %157, align 2, !tbaa !81
  br label %161

159:                                              ; preds = %118
  %160 = getelementptr inbounds %struct.MovieClipCache, ptr %119, i64 0, i32 2, i32 8
  store i32 0, ptr %160, align 4, !tbaa !110
  br label %161

161:                                              ; preds = %159, %154
  %162 = phi i16 [ 0, %159 ], [ %158, %154 ]
  %163 = getelementptr inbounds %struct.MovieClipCache, ptr %119, i64 0, i32 2, i32 10
  store i16 %162, ptr %163, align 4, !tbaa !109
  %164 = getelementptr inbounds %struct.MovieClipCache, ptr %119, i64 0, i32 2, i32 3
  store i32 %5, ptr %164, align 4, !tbaa !111
  %165 = getelementptr inbounds %struct.MovieClipCache, ptr %119, i64 0, i32 2, i32 1
  %166 = load ptr, ptr %165, align 8, !tbaa !106
  %167 = icmp eq ptr %166, null
  br i1 %167, label %169, label %168

168:                                              ; preds = %161
  call void @IMB_freeImBuf(ptr noundef nonnull %166) #13
  br label %169

169:                                              ; preds = %161, %168
  store ptr %125, ptr %165, align 8, !tbaa !106
  call void @IMB_refImBuf(ptr noundef %125) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  br label %170

170:                                              ; preds = %169, %115
  %171 = phi ptr [ %116, %115 ], [ %125, %169 ]
  %172 = icmp eq ptr %2, null
  br i1 %172, label %179, label %173

173:                                              ; preds = %170
  %174 = getelementptr inbounds %struct.MovieClipCache, ptr %25, i64 0, i32 2, i32 4
  %175 = load float, ptr %174, align 4, !tbaa !71
  store float %175, ptr %2, align 4, !tbaa !71
  %176 = getelementptr inbounds %struct.MovieClipCache, ptr %25, i64 0, i32 2, i32 4, i64 1
  %177 = load float, ptr %176, align 4, !tbaa !71
  %178 = getelementptr inbounds float, ptr %2, i64 1
  store float %177, ptr %178, align 4, !tbaa !71
  br label %179

179:                                              ; preds = %173, %170
  %180 = icmp eq ptr %3, null
  br i1 %180, label %184, label %181

181:                                              ; preds = %179
  %182 = getelementptr inbounds %struct.MovieClipCache, ptr %25, i64 0, i32 2, i32 5
  %183 = load float, ptr %182, align 8, !tbaa !116
  store float %183, ptr %3, align 4, !tbaa !71
  br label %184

184:                                              ; preds = %181, %179
  %185 = icmp eq ptr %4, null
  br i1 %185, label %201, label %186

186:                                              ; preds = %184
  %187 = getelementptr inbounds %struct.MovieClipCache, ptr %25, i64 0, i32 2, i32 6
  %188 = load float, ptr %187, align 4, !tbaa !117
  br label %198

189:                                              ; preds = %18
  %190 = icmp eq ptr %2, null
  br i1 %190, label %193, label %191

191:                                              ; preds = %189
  store float 0.000000e+00, ptr %2, align 4, !tbaa !71
  %192 = getelementptr inbounds float, ptr %2, i64 1
  store float 0.000000e+00, ptr %192, align 4, !tbaa !71
  br label %193

193:                                              ; preds = %191, %189
  %194 = icmp eq ptr %3, null
  br i1 %194, label %196, label %195

195:                                              ; preds = %193
  store float 1.000000e+00, ptr %3, align 4, !tbaa !71
  br label %196

196:                                              ; preds = %195, %193
  %197 = icmp eq ptr %4, null
  br i1 %197, label %201, label %198

198:                                              ; preds = %196, %186
  %199 = phi float [ %188, %186 ], [ 0.000000e+00, %196 ]
  %200 = phi ptr [ %171, %186 ], [ %16, %196 ]
  store float %199, ptr %4, align 4, !tbaa !71
  br label %201

201:                                              ; preds = %198, %196, %184
  %202 = phi ptr [ %171, %184 ], [ %16, %196 ], [ %200, %198 ]
  %203 = icmp eq ptr %202, %16
  br i1 %203, label %205, label %204

204:                                              ; preds = %201
  call void @IMB_freeImBuf(ptr noundef nonnull %16) #13
  br label %205

205:                                              ; preds = %201, %204, %6
  %206 = phi ptr [ null, %6 ], [ %202, %204 ], [ %16, %201 ]
  ret ptr %206
}

declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @BKE_movieclip_has_frame(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 14
  %4 = load i32, ptr %3, align 8, !tbaa !79
  %5 = tail call fastcc ptr @movieclip_get_postprocessed_ibuf(ptr noundef %0, ptr noundef %1, i32 noundef %4, i32 noundef 0, i32 noundef 0)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @IMB_freeImBuf(ptr noundef nonnull %5) #13
  br label %8

8:                                                ; preds = %2, %7
  %9 = phi i8 [ 1, %7 ], [ 0, %2 ]
  ret i8 %9
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_movieclip_get_size(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !70
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 5, i64 1
  %10 = load i32, ptr %9, align 4, !tbaa !70
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  store i32 %6, ptr %2, align 4, !tbaa !70
  %13 = load i32, ptr %9, align 4, !tbaa !70
  store i32 %13, ptr %3, align 4, !tbaa !70
  br label %68

14:                                               ; preds = %8, %4
  %15 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 14
  %16 = load i32, ptr %15, align 8, !tbaa !79
  %17 = tail call fastcc ptr @movieclip_get_postprocessed_ibuf(ptr noundef %0, ptr noundef %1, i32 noundef %16, i32 noundef 0, i32 noundef 0)
  %18 = icmp eq ptr %17, null
  br i1 %18, label %60, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.ImBuf, ptr %17, i64 0, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !100
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %60, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.ImBuf, ptr %17, i64 0, i32 3
  %25 = load i32, ptr %24, align 4, !tbaa !104
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %60, label %27

27:                                               ; preds = %23
  store i32 %21, ptr %2, align 4, !tbaa !70
  %28 = load i32, ptr %24, align 4, !tbaa !104
  store i32 %28, ptr %3, align 4, !tbaa !70
  %29 = load i32, ptr %15, align 8, !tbaa !79
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %66, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.MovieClipUser, ptr %1, i64 0, i32 1
  %34 = load i16, ptr %33, align 4, !tbaa !80
  switch i16 %34, label %66 [
    i16 1, label %35
    i16 2, label %40
    i16 3, label %49
  ]

35:                                               ; preds = %32
  %36 = load i32, ptr %2, align 4, !tbaa !70
  %37 = shl nsw i32 %36, 2
  store i32 %37, ptr %2, align 4, !tbaa !70
  %38 = load i32, ptr %3, align 4, !tbaa !70
  %39 = shl nsw i32 %38, 2
  br label %64

40:                                               ; preds = %32
  %41 = load i32, ptr %2, align 4, !tbaa !70
  %42 = sitofp i32 %41 to float
  %43 = fmul float %42, 2.000000e+00
  %44 = fptosi float %43 to i32
  store i32 %44, ptr %2, align 4, !tbaa !70
  %45 = load i32, ptr %3, align 4, !tbaa !70
  %46 = sitofp i32 %45 to float
  %47 = fmul float %46, 2.000000e+00
  %48 = fptosi float %47 to i32
  br label %64

49:                                               ; preds = %32
  %50 = load i32, ptr %2, align 4, !tbaa !70
  %51 = sitofp i32 %50 to float
  %52 = fmul float %51, 4.000000e+00
  %53 = fdiv float %52, 3.000000e+00
  %54 = fptosi float %53 to i32
  store i32 %54, ptr %2, align 4, !tbaa !70
  %55 = load i32, ptr %3, align 4, !tbaa !70
  %56 = sitofp i32 %55 to float
  %57 = fmul float %56, 4.000000e+00
  %58 = fdiv float %57, 3.000000e+00
  %59 = fptosi float %58 to i32
  br label %64

60:                                               ; preds = %23, %19, %14
  %61 = load i32, ptr %5, align 8, !tbaa !70
  store i32 %61, ptr %2, align 4, !tbaa !70
  %62 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 5, i64 1
  %63 = load i32, ptr %62, align 4, !tbaa !70
  br label %64

64:                                               ; preds = %60, %35, %40, %49
  %65 = phi i32 [ %59, %49 ], [ %48, %40 ], [ %39, %35 ], [ %63, %60 ]
  store i32 %65, ptr %3, align 4, !tbaa !70
  br label %66

66:                                               ; preds = %64, %32, %27
  br i1 %18, label %68, label %67

67:                                               ; preds = %66
  tail call void @IMB_freeImBuf(ptr noundef nonnull %17) #13
  br label %68

68:                                               ; preds = %66, %67, %12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_movieclip_get_size_fl(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  call void @BKE_movieclip_get_size(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %6 = load i32, ptr %4, align 4, !tbaa !70
  %7 = sitofp i32 %6 to float
  store float %7, ptr %2, align 4, !tbaa !71
  %8 = load i32, ptr %5, align 4, !tbaa !70
  %9 = sitofp i32 %8 to float
  %10 = getelementptr inbounds float, ptr %2, i64 1
  store float %9, ptr %10, align 4, !tbaa !71
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @BKE_movieclip_get_duration(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 15
  %3 = load i32, ptr %2, align 4, !tbaa !76
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call fastcc void @movieclip_calc_length(ptr noundef %0)
  br label %6

6:                                                ; preds = %5, %1
  %7 = load i32, ptr %2, align 4, !tbaa !76
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_movieclip_get_aspect(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #4 {
  store float 1.000000e+00, ptr %1, align 4, !tbaa !71
  %4 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 7
  %5 = load float, ptr %4, align 4, !tbaa !60
  %6 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 6
  %7 = load float, ptr %6, align 8, !tbaa !61
  %8 = fdiv float %5, %7
  %9 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 11, i32 1, i32 4
  %10 = load float, ptr %9, align 8, !tbaa !118
  %11 = fdiv float %8, %10
  store float %11, ptr %2, align 4, !tbaa !71
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_movieclip_get_cache_segments(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  store i32 0, ptr %2, align 4, !tbaa !70
  store ptr null, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !82
  %7 = icmp eq ptr %6, null
  br i1 %7, label %27, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 14
  %10 = load i32, ptr %9, align 8, !tbaa !79
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.MovieClipUser, ptr %1, i64 0, i32 1
  %15 = load i16, ptr %14, align 4, !tbaa !80
  %16 = icmp ult i16 %15, 5
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = zext nneg i16 %15 to i64
  %19 = getelementptr inbounds [5 x i32], ptr @switch.table.put_imbuf_cache, i64 0, i64 %18
  %20 = load i32, ptr %19, align 4
  br label %21

21:                                               ; preds = %13, %17, %8
  %22 = phi i32 [ 0, %8 ], [ %20, %17 ], [ 0, %13 ]
  %23 = load ptr, ptr %6, align 8, !tbaa !98
  %24 = getelementptr inbounds %struct.MovieClipUser, ptr %1, i64 0, i32 2
  %25 = load i16, ptr %24, align 2, !tbaa !81
  %26 = sext i16 %25 to i32
  tail call void @IMB_moviecache_get_cache_segments(ptr noundef %23, i32 noundef %22, i32 noundef %26, ptr noundef nonnull %2, ptr noundef nonnull %3) #13
  br label %27

27:                                               ; preds = %21, %4
  ret void
}

declare void @IMB_moviecache_get_cache_segments(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @BKE_movieclip_user_set_frame(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #5 {
  store i32 %1, ptr %0, align 4, !tbaa !68
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_movieclip_clear_cache(ptr noundef %0) local_unnamed_addr #0 {
  tail call fastcc void @free_buffers(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @free_buffers(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !82
  %4 = icmp eq ptr %3, null
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !98
  tail call void @IMB_moviecache_free(ptr noundef %6) #13
  %7 = load ptr, ptr %2, align 8, !tbaa !82
  %8 = getelementptr inbounds %struct.MovieClipCache, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !83
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %5
  tail call void @IMB_freeImBuf(ptr noundef nonnull %9) #13
  br label %12

12:                                               ; preds = %11, %5
  %13 = load ptr, ptr %2, align 8, !tbaa !82
  %14 = getelementptr inbounds %struct.MovieClipCache, ptr %13, i64 0, i32 2, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !106
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  tail call void @IMB_freeImBuf(ptr noundef nonnull %15) #13
  br label %18

18:                                               ; preds = %17, %12
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %20 = load ptr, ptr %2, align 8, !tbaa !82
  tail call void %19(ptr noundef %20) #13
  store ptr null, ptr %2, align 8, !tbaa !82
  br label %21

21:                                               ; preds = %18, %1
  %22 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !74
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void @IMB_free_anim(ptr noundef nonnull %23) #13
  store ptr null, ptr %22, align 8, !tbaa !74
  br label %26

26:                                               ; preds = %25, %21
  tail call void @BKE_free_animdata(ptr noundef %0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_movieclip_reload(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.MovieClipUser, align 8
  %5 = alloca [1024 x i8], align 16
  tail call fastcc void @free_buffers(ptr noundef %0)
  %6 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 11, i32 5, i32 9
  store i32 0, ptr %6, align 8, !tbaa !119
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #13
  %7 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 2
  %8 = call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef nonnull %7, i64 noundef 1024) #13
  %9 = load ptr, ptr @G, align 8, !tbaa !38
  %10 = getelementptr inbounds %struct.Main, ptr %9, i64 0, i32 2
  %11 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %5, ptr noundef nonnull %10) #13
  %12 = call ptr @IMB_testiffname(ptr noundef nonnull %5, i32 noundef 129) #13
  %13 = icmp eq ptr %12, null
  %14 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 3
  br i1 %13, label %16, label %15

15:                                               ; preds = %1
  store i32 1, ptr %14, align 8, !tbaa !67
  call void @IMB_freeImBuf(ptr noundef nonnull %12) #13
  br label %17

16:                                               ; preds = %1
  store i32 2, ptr %14, align 8, !tbaa !67
  br label %17

17:                                               ; preds = %15, %16
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #13
  %18 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 5
  %19 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 5, i64 1
  store i32 0, ptr %19, align 4, !tbaa !70
  store i32 0, ptr %18, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  store i64 0, ptr %4, align 8
  store i32 1, ptr %4, align 8, !tbaa !68
  call void @BKE_movieclip_get_size(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %2, ptr noundef nonnull %3)
  %20 = load i32, ptr %2, align 4, !tbaa !70
  %21 = icmp ne i32 %20, 0
  %22 = load i32, ptr %3, align 4
  %23 = icmp ne i32 %22, 0
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %25, label %32

25:                                               ; preds = %17
  %26 = sitofp i32 %20 to float
  %27 = fmul float %26, 5.000000e-01
  %28 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 11, i32 1, i32 8
  store float %27, ptr %28, align 4, !tbaa !71
  %29 = sitofp i32 %22 to float
  %30 = fmul float %29, 5.000000e-01
  %31 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 11, i32 1, i32 8, i64 1
  store float %30, ptr %31, align 4, !tbaa !71
  br label %33

32:                                               ; preds = %17
  store i32 256, ptr %19, align 4, !tbaa !70
  store i32 256, ptr %18, align 8, !tbaa !70
  br label %33

33:                                               ; preds = %25, %32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #13
  call fastcc void @movieclip_calc_length(ptr noundef %0)
  %34 = load ptr, ptr @G, align 8, !tbaa !38
  %35 = getelementptr inbounds %struct.Main, ptr %34, i64 0, i32 11
  %36 = load ptr, ptr %35, align 8, !tbaa !34
  %37 = icmp eq ptr %36, null
  br i1 %37, label %48, label %38

38:                                               ; preds = %33, %45
  %39 = phi ptr [ %46, %45 ], [ %36, %33 ]
  %40 = getelementptr inbounds %struct.Scene, ptr %39, i64 0, i32 18
  %41 = load ptr, ptr %40, align 8, !tbaa !120
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %38
  %44 = call zeroext i8 @nodeUpdateID(ptr noundef nonnull %41, ptr noundef %0) #13
  br label %45

45:                                               ; preds = %38, %43
  %46 = load ptr, ptr %39, align 8, !tbaa !34
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %38, !llvm.loop !138

48:                                               ; preds = %45, %33
  ret void
}

declare zeroext i8 @nodeUpdateID(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BKE_movieclip_update_scopes(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.MovieTrackingMarker, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x float], align 4
  %8 = alloca [2 x float], align 4
  %9 = load i16, ptr %2, align 8, !tbaa !139
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %117

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.MovieClipScopes, ptr %2, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !142
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @IMB_freeImBuf(ptr noundef nonnull %13) #13
  store ptr null, ptr %12, align 8, !tbaa !142
  br label %16

16:                                               ; preds = %15, %11
  %17 = getelementptr inbounds %struct.MovieClipScopes, ptr %2, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !143
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @IMB_freeImBuf(ptr noundef nonnull %18) #13
  store ptr null, ptr %17, align 8, !tbaa !143
  br label %21

21:                                               ; preds = %20, %16
  %22 = getelementptr inbounds %struct.MovieClipScopes, ptr %2, i64 0, i32 13
  %23 = getelementptr inbounds %struct.MovieClipScopes, ptr %2, i64 0, i32 12
  %24 = getelementptr inbounds %struct.MovieClipScopes, ptr %2, i64 0, i32 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %23, i8 0, i64 16, i1 false)
  store i16 1, ptr %24, align 2, !tbaa !144
  %25 = icmp eq ptr %0, null
  br i1 %25, label %114, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 11
  %28 = tail call ptr @BKE_tracking_track_get_active(ptr noundef nonnull %27) #13
  %29 = icmp eq ptr %28, null
  br i1 %29, label %114, label %30

30:                                               ; preds = %26
  %31 = load i32, ptr %1, align 4, !tbaa !68
  %32 = sitofp i32 %31 to float
  %33 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 16
  %34 = load i32, ptr %33, align 8, !tbaa !65
  %35 = sitofp i32 %34 to float
  %36 = fsub float %32, %35
  %37 = fadd float %36, 1.000000e+00
  %38 = fptosi float %37 to i32
  %39 = tail call ptr @BKE_tracking_marker_get(ptr noundef nonnull %28, i32 noundef %38) #13
  store ptr %39, ptr %22, align 8, !tbaa !145
  store ptr %28, ptr %23, align 8, !tbaa !146
  %40 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %39, i64 0, i32 5
  %41 = load i32, ptr %40, align 4, !tbaa !147
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %30
  %45 = getelementptr inbounds %struct.MovieClipScopes, ptr %2, i64 0, i32 9
  store i16 1, ptr %45, align 8, !tbaa !148
  br label %98

46:                                               ; preds = %30
  %47 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 14
  %48 = load i32, ptr %47, align 8, !tbaa !79
  %49 = tail call fastcc ptr @movieclip_get_postprocessed_ibuf(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %48, i32 noundef 0, i32 noundef 0)
  %50 = getelementptr inbounds %struct.MovieClipScopes, ptr %2, i64 0, i32 9
  store i16 0, ptr %50, align 8, !tbaa !148
  %51 = icmp eq ptr %49, null
  br i1 %51, label %97, label %52

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.ImBuf, ptr %49, i64 0, i32 8
  %54 = load ptr, ptr %53, align 8, !tbaa !149
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.ImBuf, ptr %49, i64 0, i32 9
  %58 = load ptr, ptr %57, align 8, !tbaa !150
  %59 = icmp eq ptr %58, null
  br i1 %59, label %97, label %60

60:                                               ; preds = %56, %52
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %4, ptr noundef nonnull align 4 dereferenceable(64) %39, i64 64, i1 false), !tbaa.struct !151
  %61 = getelementptr inbounds %struct.MovieClipUser, ptr %1, i64 0, i32 2
  %62 = load i16, ptr %61, align 2, !tbaa !81
  %63 = and i16 %62, 1
  %64 = icmp eq i16 %63, 0
  br i1 %64, label %83, label %65

65:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  %66 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 11, i32 1, i32 4
  %67 = load float, ptr %66, align 8, !tbaa !118
  %68 = fdiv float 1.000000e+00, %67
  call void @BKE_movieclip_get_size(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %69 = load i32, ptr %5, align 4, !tbaa !70
  %70 = sitofp i32 %69 to float
  %71 = load float, ptr %4, align 4, !tbaa !71
  %72 = fmul float %71, %70
  store float %72, ptr %4, align 4, !tbaa !71
  %73 = load i32, ptr %6, align 4, !tbaa !70
  %74 = sitofp i32 %73 to float
  %75 = fmul float %68, %74
  %76 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  %77 = load float, ptr %76, align 4, !tbaa !71
  %78 = fmul float %77, %75
  store float %78, ptr %76, align 4, !tbaa !71
  call void @BKE_tracking_undistort_v2(ptr noundef nonnull %27, ptr noundef nonnull %4, ptr noundef nonnull %4) #13
  %79 = load float, ptr %4, align 4, !tbaa !71
  %80 = fdiv float %79, %70
  store float %80, ptr %4, align 4, !tbaa !71
  %81 = load float, ptr %76, align 4, !tbaa !71
  %82 = fdiv float %81, %75
  store float %82, ptr %76, align 4, !tbaa !71
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  br label %83

83:                                               ; preds = %65, %60
  %84 = call ptr @BKE_tracking_get_search_imbuf(ptr noundef nonnull %49, ptr noundef nonnull %28, ptr noundef nonnull %4, i8 noundef zeroext 1, i8 noundef zeroext 1) #13
  store ptr %84, ptr %17, align 8, !tbaa !143
  %85 = getelementptr inbounds %struct.MovieClipScopes, ptr %2, i64 0, i32 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %85, ptr noundef nonnull align 4 dereferenceable(64) %4, i64 64, i1 false), !tbaa.struct !151
  %86 = getelementptr inbounds %struct.ImBuf, ptr %49, i64 0, i32 2
  %87 = load i32, ptr %86, align 8, !tbaa !100
  %88 = getelementptr inbounds %struct.MovieClipScopes, ptr %2, i64 0, i32 3
  store i32 %87, ptr %88, align 8, !tbaa !152
  %89 = getelementptr inbounds %struct.ImBuf, ptr %49, i64 0, i32 3
  %90 = load i32, ptr %89, align 4, !tbaa !104
  %91 = getelementptr inbounds %struct.MovieClipScopes, ptr %2, i64 0, i32 4
  store i32 %90, ptr %91, align 4, !tbaa !153
  %92 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %28, i64 0, i32 13
  %93 = load i32, ptr %92, align 8, !tbaa !154
  %94 = trunc i32 %93 to i16
  %95 = and i16 %94, 2048
  %96 = getelementptr inbounds %struct.MovieClipScopes, ptr %2, i64 0, i32 1
  store i16 %95, ptr %96, align 2, !tbaa !156
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #13
  br label %97

97:                                               ; preds = %83, %56, %46
  call void @IMB_freeImBuf(ptr noundef %49) #13
  br label %98

98:                                               ; preds = %97, %44
  %99 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %28, i64 0, i32 13
  %100 = load i32, ptr %99, align 8, !tbaa !154
  %101 = and i32 %100, 64
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %114

103:                                              ; preds = %98
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #13
  store i16 0, ptr %24, align 2, !tbaa !144
  call void @BKE_tracking_marker_pattern_minmax(ptr noundef %39, ptr noundef nonnull %7, ptr noundef nonnull %8) #13
  %104 = load float, ptr %8, align 4, !tbaa !71
  %105 = load float, ptr %7, align 4, !tbaa !71
  %106 = fsub float %104, %105
  %107 = getelementptr inbounds %struct.MovieClipScopes, ptr %2, i64 0, i32 14
  store float %106, ptr %107, align 8, !tbaa !71
  %108 = getelementptr inbounds [2 x float], ptr %8, i64 0, i64 1
  %109 = load float, ptr %108, align 4, !tbaa !71
  %110 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  %111 = load float, ptr %110, align 4, !tbaa !71
  %112 = fsub float %109, %111
  %113 = getelementptr inbounds %struct.MovieClipScopes, ptr %2, i64 0, i32 14, i64 1
  store float %112, ptr %113, align 4, !tbaa !71
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  br label %114

114:                                              ; preds = %26, %103, %98, %21
  %115 = load i32, ptr %1, align 4, !tbaa !68
  %116 = getelementptr inbounds %struct.MovieClipScopes, ptr %2, i64 0, i32 11
  store i32 %115, ptr %116, align 4, !tbaa !157
  store i16 1, ptr %2, align 8, !tbaa !139
  br label %117

117:                                              ; preds = %3, %114
  ret void
}

declare ptr @BKE_tracking_track_get_active(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local float @BKE_movieclip_remap_scene_to_clip_frame(ptr nocapture noundef readonly %0, float noundef %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 16
  %4 = load i32, ptr %3, align 8, !tbaa !65
  %5 = sitofp i32 %4 to float
  %6 = fsub float %1, %5
  %7 = fadd float %6, 1.000000e+00
  ret float %7
}

declare ptr @BKE_tracking_marker_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

declare void @BKE_tracking_undistort_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_tracking_get_search_imbuf(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare void @BKE_tracking_marker_pattern_minmax(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BKE_movieclip_build_proxy_frame(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i8 noundef zeroext %6) local_unnamed_addr #0 {
  %8 = alloca %struct.MovieClipUser, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #13
  %9 = icmp eq i32 %5, 0
  br i1 %9, label %49, label %10

10:                                               ; preds = %7
  store i32 %3, ptr %8, align 4, !tbaa !68
  %11 = getelementptr inbounds %struct.MovieClipUser, ptr %8, i64 0, i32 2
  store i16 0, ptr %11, align 2, !tbaa !81
  %12 = getelementptr inbounds %struct.MovieClipUser, ptr %8, i64 0, i32 1
  store i16 0, ptr %12, align 4, !tbaa !80
  %13 = call fastcc ptr @movieclip_get_postprocessed_ibuf(ptr noundef %0, ptr noundef nonnull %8, i32 noundef %1, i32 noundef 0, i32 noundef 1)
  %14 = icmp eq ptr %13, null
  br i1 %14, label %49, label %15

15:                                               ; preds = %10
  %16 = icmp eq i8 %6, 0
  br i1 %16, label %35, label %17

17:                                               ; preds = %15
  %18 = icmp eq ptr %2, null
  %19 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 11
  %20 = getelementptr inbounds %struct.ImBuf, ptr %13, i64 0, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !100
  %22 = getelementptr inbounds %struct.ImBuf, ptr %13, i64 0, i32 3
  %23 = load i32, ptr %22, align 4, !tbaa !104
  br i1 %18, label %26, label %24

24:                                               ; preds = %17
  %25 = tail call ptr @BKE_tracking_distortion_exec(ptr noundef nonnull %2, ptr noundef nonnull %19, ptr noundef nonnull %13, i32 noundef %21, i32 noundef %23, float noundef 0.000000e+00, i8 noundef zeroext 1) #13
  br label %28

26:                                               ; preds = %17
  %27 = tail call ptr @BKE_tracking_undistort_frame(ptr noundef nonnull %19, ptr noundef nonnull %13, i32 noundef %21, i32 noundef %23, float noundef 0.000000e+00) #13
  br label %28

28:                                               ; preds = %24, %26
  %29 = phi ptr [ %25, %24 ], [ %27, %26 ]
  %30 = getelementptr inbounds %struct.ImBuf, ptr %13, i64 0, i32 2
  %31 = load i32, ptr %30, align 8, !tbaa !100
  %32 = getelementptr inbounds %struct.ImBuf, ptr %13, i64 0, i32 3
  %33 = load i32, ptr %32, align 4, !tbaa !104
  %34 = tail call ptr @IMB_scaleImBuf(ptr noundef %29, i32 noundef %31, i32 noundef %33) #13
  br label %35

35:                                               ; preds = %28, %15
  %36 = phi ptr [ %29, %28 ], [ %13, %15 ]
  %37 = icmp sgt i32 %5, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = zext nneg i32 %5 to i64
  br label %40

40:                                               ; preds = %38, %40
  %41 = phi i64 [ 0, %38 ], [ %44, %40 ]
  %42 = getelementptr inbounds i32, ptr %4, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !70
  tail call fastcc void @movieclip_build_proxy_ibuf(ptr noundef %0, ptr noundef %36, i32 noundef %3, i32 noundef %43, i8 noundef zeroext %6, i8 noundef zeroext 1)
  %44 = add nuw nsw i64 %41, 1
  %45 = icmp eq i64 %44, %39
  br i1 %45, label %46, label %40, !llvm.loop !158

46:                                               ; preds = %40, %35
  tail call void @IMB_freeImBuf(ptr noundef nonnull %13) #13
  %47 = icmp eq ptr %36, %13
  br i1 %47, label %49, label %48

48:                                               ; preds = %46
  tail call void @IMB_freeImBuf(ptr noundef %36) #13
  br label %49

49:                                               ; preds = %10, %48, %46, %7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @movieclip_build_proxy_ibuf(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5) unnamed_addr #0 {
  %7 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %7) #13
  %8 = icmp ult i32 %3, 5
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = zext nneg i32 %3 to i64
  %11 = getelementptr inbounds [5 x i32], ptr @switch.table.get_proxy_fname, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4
  br label %13

13:                                               ; preds = %6, %9
  %14 = phi i32 [ %12, %9 ], [ 100, %6 ]
  call fastcc void @get_proxy_fname(ptr noundef %0, i32 noundef %3, i8 noundef zeroext %4, i32 noundef %2, ptr noundef nonnull %7)
  %15 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !100
  %17 = mul nsw i32 %16, %14
  %18 = sitofp i32 %17 to float
  %19 = fdiv float %18, 1.000000e+02
  %20 = fptosi float %19 to i32
  %21 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 3
  %22 = load i32, ptr %21, align 4, !tbaa !104
  %23 = mul nsw i32 %22, %14
  %24 = sitofp i32 %23 to float
  %25 = fdiv float %24, 1.000000e+02
  %26 = fptosi float %25 to i32
  %27 = call ptr @IMB_dupImBuf(ptr noundef %1) #13
  %28 = icmp eq i8 %5, 0
  %29 = shl i32 %20, 16
  %30 = ashr exact i32 %29, 16
  %31 = shl i32 %26, 16
  %32 = ashr exact i32 %31, 16
  br i1 %28, label %34, label %33

33:                                               ; preds = %13
  call void @IMB_scaleImBuf_threaded(ptr noundef %27, i32 noundef %30, i32 noundef %32) #13
  br label %36

34:                                               ; preds = %13
  %35 = call ptr @IMB_scaleImBuf(ptr noundef %27, i32 noundef %30, i32 noundef %32) #13
  br label %36

36:                                               ; preds = %34, %33
  %37 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 13, i32 2
  %38 = load i16, ptr %37, align 2, !tbaa !64
  %39 = sext i16 %38 to i32
  %40 = or i32 %39, 134217728
  %41 = getelementptr inbounds %struct.ImBuf, ptr %27, i64 0, i32 26
  store i32 %40, ptr %41, align 8, !tbaa !159
  %42 = getelementptr inbounds %struct.ImBuf, ptr %27, i64 0, i32 4
  %43 = load i8, ptr %42, align 8, !tbaa !160
  %44 = icmp eq i8 %43, 32
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  store i8 24, ptr %42, align 8, !tbaa !160
  br label %46

46:                                               ; preds = %45, %36
  call void @BLI_lock_thread(i32 noundef 7) #13
  call void @BLI_make_existing_file(ptr noundef nonnull %7) #13
  %47 = call signext i16 @IMB_saveiff(ptr noundef %27, ptr noundef nonnull %7, i32 noundef 1) #13
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  call void @perror(ptr noundef nonnull %7) #15
  br label %50

50:                                               ; preds = %49, %46
  call void @BLI_unlock_thread(i32 noundef 7) #13
  call void @IMB_freeImBuf(ptr noundef %27) #13
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %7) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_movieclip_build_proxy_frame_for_ibuf(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i8 noundef zeroext %6) local_unnamed_addr #0 {
  %8 = icmp ne i32 %5, 0
  %9 = icmp ne ptr %1, null
  %10 = and i1 %9, %8
  br i1 %10, label %11, label %45

11:                                               ; preds = %7
  %12 = icmp eq i8 %6, 0
  br i1 %12, label %31, label %13

13:                                               ; preds = %11
  %14 = icmp eq ptr %2, null
  %15 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 11
  %16 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !100
  %18 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 3
  %19 = load i32, ptr %18, align 4, !tbaa !104
  br i1 %14, label %22, label %20

20:                                               ; preds = %13
  %21 = tail call ptr @BKE_tracking_distortion_exec(ptr noundef nonnull %2, ptr noundef nonnull %15, ptr noundef nonnull %1, i32 noundef %17, i32 noundef %19, float noundef 0.000000e+00, i8 noundef zeroext 1) #13
  br label %24

22:                                               ; preds = %13
  %23 = tail call ptr @BKE_tracking_undistort_frame(ptr noundef nonnull %15, ptr noundef nonnull %1, i32 noundef %17, i32 noundef %19, float noundef 0.000000e+00) #13
  br label %24

24:                                               ; preds = %20, %22
  %25 = phi ptr [ %21, %20 ], [ %23, %22 ]
  %26 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 2
  %27 = load i32, ptr %26, align 8, !tbaa !100
  %28 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 3
  %29 = load i32, ptr %28, align 4, !tbaa !104
  %30 = tail call ptr @IMB_scaleImBuf(ptr noundef %25, i32 noundef %27, i32 noundef %29) #13
  br label %31

31:                                               ; preds = %24, %11
  %32 = phi ptr [ %25, %24 ], [ %1, %11 ]
  %33 = icmp sgt i32 %5, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = zext nneg i32 %5 to i64
  br label %36

36:                                               ; preds = %34, %36
  %37 = phi i64 [ 0, %34 ], [ %40, %36 ]
  %38 = getelementptr inbounds i32, ptr %4, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !70
  tail call fastcc void @movieclip_build_proxy_ibuf(ptr noundef %0, ptr noundef %32, i32 noundef %3, i32 noundef %39, i8 noundef zeroext %6, i8 noundef zeroext 0)
  %40 = add nuw nsw i64 %37, 1
  %41 = icmp eq i64 %40, %35
  br i1 %41, label %42, label %36, !llvm.loop !161

42:                                               ; preds = %36, %31
  %43 = icmp eq ptr %32, %1
  br i1 %43, label %45, label %44

44:                                               ; preds = %42
  tail call void @IMB_freeImBuf(ptr noundef %32) #13
  br label %45

45:                                               ; preds = %42, %44, %7
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_movieclip_free(ptr noundef %0) local_unnamed_addr #0 {
  tail call fastcc void @free_buffers(ptr noundef %0)
  %2 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 11
  tail call void @BKE_tracking_free(ptr noundef nonnull %2) #13
  ret void
}

declare void @BKE_tracking_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
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
  br i1 %11, label %50, label %12, !llvm.loop !162

12:                                               ; preds = %2, %9
  %13 = phi ptr [ %10, %9 ], [ %7, %2 ]
  %14 = getelementptr inbounds %struct.bScreen, ptr %13, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = icmp eq ptr %15, null
  br i1 %16, label %9, label %20

17:                                               ; preds = %47, %20
  %18 = load ptr, ptr %21, align 8, !tbaa !34
  %19 = icmp eq ptr %18, null
  br i1 %19, label %9, label %20, !llvm.loop !163

20:                                               ; preds = %12, %17
  %21 = phi ptr [ %18, %17 ], [ %15, %12 ]
  %22 = getelementptr inbounds %struct.ScrArea, ptr %21, i64 0, i32 19
  %23 = load ptr, ptr %22, align 8, !tbaa !34
  %24 = icmp eq ptr %23, null
  br i1 %24, label %17, label %25

25:                                               ; preds = %20, %47
  %26 = phi ptr [ %48, %47 ], [ %23, %20 ]
  %27 = getelementptr inbounds %struct.SpaceLink, ptr %26, i64 0, i32 3
  %28 = load i32, ptr %27, align 8, !tbaa !164
  switch i32 %28, label %47 [
    i32 20, label %29
    i32 1, label %34
  ]

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.SpaceClip, ptr %26, i64 0, i32 10
  %31 = load ptr, ptr %30, align 8, !tbaa !166
  %32 = icmp eq ptr %31, %1
  br i1 %32, label %33, label %47

33:                                               ; preds = %29
  store ptr null, ptr %30, align 8, !tbaa !166
  br label %47

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.View3D, ptr %26, i64 0, i32 18
  %36 = load ptr, ptr %35, align 8, !tbaa !34
  %37 = icmp eq ptr %36, null
  br i1 %37, label %47, label %38

38:                                               ; preds = %34, %44
  %39 = phi ptr [ %45, %44 ], [ %36, %34 ]
  %40 = getelementptr inbounds %struct.BGpic, ptr %39, i64 0, i32 4
  %41 = load ptr, ptr %40, align 8, !tbaa !169
  %42 = icmp eq ptr %41, %1
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store ptr null, ptr %40, align 8, !tbaa !169
  br label %44

44:                                               ; preds = %38, %43
  %45 = load ptr, ptr %39, align 8, !tbaa !34
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %38, !llvm.loop !172

47:                                               ; preds = %44, %34, %25, %29, %33
  %48 = load ptr, ptr %26, align 8, !tbaa !34
  %49 = icmp eq ptr %48, null
  br i1 %49, label %17, label %25, !llvm.loop !173

50:                                               ; preds = %9, %2
  %51 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 11
  %52 = load ptr, ptr %51, align 8, !tbaa !34
  %53 = icmp eq ptr %52, null
  br i1 %53, label %63, label %54

54:                                               ; preds = %50, %60
  %55 = phi ptr [ %61, %60 ], [ %52, %50 ]
  %56 = getelementptr inbounds %struct.Scene, ptr %55, i64 0, i32 41
  %57 = load ptr, ptr %56, align 8, !tbaa !174
  %58 = icmp eq ptr %57, %1
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  store ptr null, ptr %56, align 8, !tbaa !174
  br label %60

60:                                               ; preds = %54, %59
  %61 = load ptr, ptr %55, align 8, !tbaa !34
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %54, !llvm.loop !175

63:                                               ; preds = %60, %50
  %64 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 13
  %65 = load ptr, ptr %64, align 8, !tbaa !34
  %66 = icmp eq ptr %65, null
  br i1 %66, label %99, label %70

67:                                               ; preds = %96, %70
  %68 = load ptr, ptr %71, align 8, !tbaa !34
  %69 = icmp eq ptr %68, null
  br i1 %69, label %99, label %70, !llvm.loop !176

70:                                               ; preds = %63, %67
  %71 = phi ptr [ %68, %67 ], [ %65, %63 ]
  %72 = getelementptr inbounds %struct.Object, ptr %71, i64 0, i32 106
  %73 = load ptr, ptr %72, align 8, !tbaa !34
  %74 = icmp eq ptr %73, null
  br i1 %74, label %67, label %75

75:                                               ; preds = %70, %96
  %76 = phi ptr [ %97, %96 ], [ %73, %70 ]
  %77 = getelementptr inbounds %struct.bConstraint, ptr %76, i64 0, i32 3
  %78 = load i16, ptr %77, align 8, !tbaa !177
  switch i16 %78, label %96 [
    i16 26, label %79
    i16 27, label %84
    i16 28, label %89
  ]

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.bConstraint, ptr %76, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !179
  %82 = load ptr, ptr %81, align 8, !tbaa !180
  %83 = icmp eq ptr %82, %1
  br i1 %83, label %94, label %96

84:                                               ; preds = %75
  %85 = getelementptr inbounds %struct.bConstraint, ptr %76, i64 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !179
  %87 = load ptr, ptr %86, align 8, !tbaa !182
  %88 = icmp eq ptr %87, %1
  br i1 %88, label %94, label %96

89:                                               ; preds = %75
  %90 = getelementptr inbounds %struct.bConstraint, ptr %76, i64 0, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !179
  %92 = load ptr, ptr %91, align 8, !tbaa !184
  %93 = icmp eq ptr %92, %1
  br i1 %93, label %94, label %96

94:                                               ; preds = %89, %84, %79
  %95 = phi ptr [ %81, %79 ], [ %86, %84 ], [ %91, %89 ]
  store ptr null, ptr %95, align 8, !tbaa !34
  br label %96

96:                                               ; preds = %94, %89, %75, %84, %79
  %97 = load ptr, ptr %76, align 8, !tbaa !34
  %98 = icmp eq ptr %97, null
  br i1 %98, label %67, label %75, !llvm.loop !186

99:                                               ; preds = %67, %63
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  call void @BKE_node_tree_iter_init(ptr noundef nonnull %3, ptr noundef %0) #13
  %100 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #13
  %101 = icmp eq i8 %100, 1
  br i1 %101, label %102, label %109

102:                                              ; preds = %99, %106
  %103 = load ptr, ptr %4, align 8, !tbaa !34
  %104 = icmp eq ptr %103, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %102
  call void @BKE_node_tree_unlink_id(ptr noundef %1, ptr noundef nonnull %103) #13
  br label %106

106:                                              ; preds = %105, %102
  %107 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #13
  %108 = icmp eq i8 %107, 1
  br i1 %108, label %102, label %109, !llvm.loop !187

109:                                              ; preds = %106, %99
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #13
  %110 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 6
  store i32 0, ptr %110, align 4, !tbaa !46
  ret void
}

declare void @BKE_node_tree_iter_init(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BKE_node_tree_iter_step(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_node_tree_unlink_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local float @BKE_movieclip_remap_clip_to_scene_frame(ptr nocapture noundef readonly %0, float noundef %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 16
  %4 = load i32, ptr %3, align 8, !tbaa !65
  %5 = sitofp i32 %4 to float
  %6 = fadd float %5, %1
  %7 = fadd float %6, -1.000000e+00
  ret float %7
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_movieclip_filename_for_frame(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !67
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %25

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 14
  %9 = load i32, ptr %8, align 8, !tbaa !79
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.MovieClipUser, ptr %1, i64 0, i32 1
  %14 = load i16, ptr %13, align 4, !tbaa !80
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.MovieClipUser, ptr %1, i64 0, i32 2
  %18 = load i16, ptr %17, align 2, !tbaa !81
  %19 = sext i16 %14 to i32
  %20 = trunc i16 %18 to i8
  %21 = and i8 %20, 1
  %22 = load i32, ptr %1, align 4, !tbaa !68
  tail call fastcc void @get_proxy_fname(ptr noundef %0, i32 noundef %19, i8 noundef zeroext %21, i32 noundef %22, ptr noundef %2)
  br label %36

23:                                               ; preds = %7, %12
  %24 = load i32, ptr %1, align 4, !tbaa !68
  tail call fastcc void @get_sequence_fname(ptr noundef %0, i32 noundef %24, ptr noundef %2)
  br label %36

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 2
  %27 = tail call ptr @BLI_strncpy(ptr noundef %2, ptr noundef nonnull %26, i64 noundef 1024) #13
  %28 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !188
  %30 = icmp eq ptr %29, null
  %31 = getelementptr inbounds %struct.Library, ptr %29, i64 0, i32 4
  %32 = load ptr, ptr @G, align 8
  %33 = getelementptr inbounds %struct.Main, ptr %32, i64 0, i32 2
  %34 = select i1 %30, ptr %33, ptr %31
  %35 = tail call zeroext i8 @BLI_path_abs(ptr noundef %2, ptr noundef nonnull %34) #13
  br label %36

36:                                               ; preds = %16, %23, %25
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @get_proxy_fname(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca [1024 x i8], align 16
  %7 = alloca [1024 x i8], align 16
  %8 = alloca [1024 x i8], align 16
  %9 = icmp ult i32 %1, 5
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  %11 = zext nneg i32 %1 to i64
  %12 = getelementptr inbounds [5 x i32], ptr @switch.table.get_proxy_fname, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4
  br label %14

14:                                               ; preds = %5, %10
  %15 = phi i32 [ %13, %10 ], [ 100, %5 ]
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %8) #13
  %16 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 16
  %17 = load i32, ptr %16, align 8, !tbaa !65
  %18 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 17
  %19 = load i32, ptr %18, align 4, !tbaa !66
  %20 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 2
  call void @BLI_split_dirfile(ptr noundef nonnull %20, ptr noundef nonnull %7, ptr noundef nonnull %8, i64 noundef 1024, i64 noundef 1024) #13
  %21 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 14
  %22 = load i32, ptr %21, align 8, !tbaa !79
  %23 = and i32 %22, 2
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %14
  %26 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 13
  %27 = call ptr @BLI_strncpy(ptr noundef nonnull %6, ptr noundef nonnull %26, i64 noundef 1024) #13
  br label %30

28:                                               ; preds = %14
  %29 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %6, i64 noundef 1024, ptr noundef nonnull @.str, ptr noundef nonnull %7) #13
  br label %30

30:                                               ; preds = %28, %25
  %31 = add i32 %3, 1
  %32 = sub i32 %31, %17
  %33 = add nsw i32 %32, %19
  %34 = icmp eq i8 %2, 0
  %35 = select i1 %34, ptr @.str.2, ptr @.str.1
  %36 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %4, i64 noundef 1024, ptr noundef nonnull %35, ptr noundef nonnull %6, ptr noundef nonnull %8, i32 noundef %15, i32 noundef %33) #13
  %37 = load ptr, ptr @G, align 8, !tbaa !38
  %38 = getelementptr inbounds %struct.Main, ptr %37, i64 0, i32 2
  %39 = call zeroext i8 @BLI_path_abs(ptr noundef %4, ptr noundef nonnull %38) #13
  %40 = call zeroext i8 @BLI_path_frame(ptr noundef %4, i32 noundef 1, i32 noundef 0) #13
  %41 = call i64 @strlen(ptr nonnull dereferenceable(1) %4)
  %42 = getelementptr inbounds i8, ptr %4, i64 %41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %42, ptr noundef nonnull align 1 dereferenceable(5) @.str.3, i64 5, i1 false)
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %6) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @get_sequence_fname(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca [1024 x i8], align 16
  %5 = alloca i16, align 2
  %6 = alloca [1024 x i8], align 16
  %7 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %7) #13
  %8 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 2
  %9 = tail call ptr @BLI_strncpy(ptr noundef %2, ptr noundef nonnull %8, i64 noundef 1024) #13
  %10 = call i32 @BLI_stringdec(ptr noundef %2, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %5) #13
  %11 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #14
  %12 = load i16, ptr %5, align 2, !tbaa !77
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %4, i8 0, i64 1024, i1 false)
  %13 = shl i64 %11, 32
  %14 = ashr exact i64 %13, 32
  %15 = getelementptr inbounds i8, ptr %8, i64 %14
  %16 = zext i16 %12 to i64
  %17 = add nuw nsw i64 %16, 1
  %18 = call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef nonnull %15, i64 noundef %17) #13
  %19 = call i64 @strtol(ptr nocapture noundef nonnull %4, ptr noundef null, i32 noundef 10) #13
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #13
  %20 = load i16, ptr %5, align 2, !tbaa !77
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %3
  %23 = trunc i64 %19 to i32
  %24 = add nsw i32 %23, %1
  %25 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 16
  %26 = load i32, ptr %25, align 8, !tbaa !65
  %27 = sub i32 %24, %26
  %28 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 17
  %29 = load i32, ptr %28, align 4, !tbaa !66
  %30 = add nsw i32 %27, %29
  call void @BLI_stringenc(ptr noundef %2, ptr noundef nonnull %6, ptr noundef nonnull %7, i16 noundef zeroext %20, i32 noundef %30) #13
  br label %33

31:                                               ; preds = %3
  %32 = call ptr @BLI_strncpy(ptr noundef %2, ptr noundef nonnull %8, i64 noundef 1024) #13
  br label %33

33:                                               ; preds = %31, %22
  %34 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !188
  %36 = icmp eq ptr %35, null
  %37 = getelementptr inbounds %struct.Library, ptr %35, i64 0, i32 4
  %38 = load ptr, ptr @G, align 8
  %39 = getelementptr inbounds %struct.Main, ptr %38, i64 0, i32 2
  %40 = select i1 %36, ptr %39, ptr %37
  %41 = call zeroext i8 @BLI_path_abs(ptr noundef %2, ptr noundef nonnull %40) #13
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_movieclip_anim_ibuf_for_frame(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !67
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %6, label %41

6:                                                ; preds = %2
  tail call void @BLI_lock_thread(i32 noundef 7) #13
  %7 = load i32, ptr %1, align 4, !tbaa !68
  %8 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 14
  %9 = load i32, ptr %8, align 8, !tbaa !79
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 13, i32 1
  %14 = load i16, ptr %13, align 8, !tbaa !75
  %15 = sext i16 %14 to i32
  br label %16

16:                                               ; preds = %12, %6
  %17 = phi i32 [ %15, %12 ], [ 0, %6 ]
  br i1 %11, label %26, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.MovieClipUser, ptr %1, i64 0, i32 1
  %20 = load i16, ptr %19, align 4, !tbaa !80
  %21 = icmp ult i16 %20, 5
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = zext nneg i16 %20 to i64
  %24 = getelementptr inbounds [5 x i32], ptr @switch.table.put_imbuf_cache, i64 0, i64 %23
  %25 = load i32, ptr %24, align 4
  br label %26

26:                                               ; preds = %18, %22, %16
  %27 = phi i32 [ 0, %16 ], [ %25, %22 ], [ 0, %18 ]
  tail call fastcc void @movieclip_open_anim_file(ptr noundef %0)
  %28 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 8
  %29 = load ptr, ptr %28, align 8, !tbaa !74
  %30 = icmp eq ptr %29, null
  br i1 %30, label %39, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 16
  %33 = load i32, ptr %32, align 8, !tbaa !65
  %34 = sub i32 %7, %33
  %35 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 17
  %36 = load i32, ptr %35, align 4, !tbaa !66
  %37 = add nsw i32 %34, %36
  %38 = tail call ptr @IMB_anim_absolute(ptr noundef nonnull %29, i32 noundef %37, i32 noundef %17, i32 noundef %27) #13
  br label %39

39:                                               ; preds = %26, %31
  %40 = phi ptr [ %38, %31 ], [ null, %26 ]
  tail call void @BLI_unlock_thread(i32 noundef 7) #13
  br label %41

41:                                               ; preds = %39, %2
  %42 = phi ptr [ %40, %39 ], [ null, %2 ]
  ret ptr %42
}

declare void @BLI_lock_thread(i32 noundef) local_unnamed_addr #2

declare void @BLI_unlock_thread(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @BKE_movieclip_has_cached_frame(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.MovieClipImBufCacheKey, align 4
  tail call void @BLI_lock_thread(i32 noundef 7) #13
  %4 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !82
  %6 = icmp eq ptr %5, null
  br i1 %6, label %35, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 14
  %9 = load i32, ptr %8, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #13
  %10 = load i32, ptr %1, align 4, !tbaa !68
  %11 = tail call fastcc i32 @user_frame_to_cache_frame(ptr noundef %0, i32 noundef %10)
  store i32 %11, ptr %3, align 4, !tbaa !94
  %12 = and i32 %9, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %27, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.MovieClipUser, ptr %1, i64 0, i32 1
  %16 = load i16, ptr %15, align 4, !tbaa !80
  %17 = icmp ult i16 %16, 5
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = zext nneg i16 %16 to i64
  %20 = getelementptr inbounds [5 x i32], ptr @switch.table.put_imbuf_cache, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4
  br label %22

22:                                               ; preds = %14, %18
  %23 = phi i32 [ %21, %18 ], [ 0, %14 ]
  %24 = getelementptr inbounds %struct.MovieClipImBufCacheKey, ptr %3, i64 0, i32 1
  store i32 %23, ptr %24, align 4, !tbaa !96
  %25 = getelementptr inbounds %struct.MovieClipUser, ptr %1, i64 0, i32 2
  %26 = load i16, ptr %25, align 2, !tbaa !81
  br label %29

27:                                               ; preds = %7
  %28 = getelementptr inbounds %struct.MovieClipImBufCacheKey, ptr %3, i64 0, i32 1
  store i32 0, ptr %28, align 4, !tbaa !96
  br label %29

29:                                               ; preds = %27, %22
  %30 = phi i16 [ 0, %27 ], [ %26, %22 ]
  %31 = getelementptr inbounds %struct.MovieClipImBufCacheKey, ptr %3, i64 0, i32 2
  store i16 %30, ptr %31, align 4, !tbaa !97
  %32 = load ptr, ptr %4, align 8, !tbaa !82
  %33 = load ptr, ptr %32, align 8, !tbaa !98
  %34 = call zeroext i8 @IMB_moviecache_has_frame(ptr noundef %33, ptr noundef nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #13
  br label %35

35:                                               ; preds = %2, %29
  %36 = phi i8 [ %34, %29 ], [ 0, %2 ]
  call void @BLI_unlock_thread(i32 noundef 7) #13
  ret i8 %36
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @BKE_movieclip_put_frame_if_possible(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  tail call void @BLI_lock_thread(i32 noundef 7) #13
  %4 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 14
  %5 = load i32, ptr %4, align 8, !tbaa !79
  %6 = tail call fastcc zeroext i8 @put_imbuf_cache(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %5, i8 noundef zeroext 0)
  tail call void @BLI_unlock_thread(i32 noundef 7) #13
  ret i8 %6
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @put_imbuf_cache(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, i8 noundef zeroext %4) unnamed_addr #0 {
  %6 = alloca %struct.MovieClipImBufCacheKey, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #13
  %7 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !82
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %5
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %12 = tail call ptr %11(i64 noundef 128, ptr noundef nonnull @.str.4) #13
  store ptr %12, ptr %7, align 8, !tbaa !82
  %13 = tail call ptr @IMB_moviecache_create(ptr noundef nonnull @.str.5, i32 noundef 12, ptr noundef nonnull @moviecache_hashhash, ptr noundef nonnull @moviecache_hashcmp) #13
  tail call void @IMB_moviecache_set_getdata_callback(ptr noundef %13, ptr noundef nonnull @moviecache_keydata) #13
  tail call void @IMB_moviecache_set_priority_callback(ptr noundef %13, ptr noundef nonnull @moviecache_getprioritydata, ptr noundef nonnull @moviecache_getitempriority, ptr noundef nonnull @moviecache_prioritydeleter) #13
  %14 = load ptr, ptr %7, align 8, !tbaa !82
  store ptr %13, ptr %14, align 8, !tbaa !98
  %15 = getelementptr inbounds %struct.MovieClipCache, ptr %14, i64 0, i32 3
  store i32 -1, ptr %15, align 8, !tbaa !189
  br label %16

16:                                               ; preds = %10, %5
  %17 = load i32, ptr %1, align 4, !tbaa !68
  %18 = tail call fastcc i32 @user_frame_to_cache_frame(ptr noundef %0, i32 noundef %17)
  store i32 %18, ptr %6, align 4, !tbaa !94
  %19 = and i32 %3, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %34, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.MovieClipUser, ptr %1, i64 0, i32 1
  %23 = load i16, ptr %22, align 4, !tbaa !80
  %24 = icmp ult i16 %23, 5
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = zext nneg i16 %23 to i64
  %27 = getelementptr inbounds [5 x i32], ptr @switch.table.put_imbuf_cache, i64 0, i64 %26
  %28 = load i32, ptr %27, align 4
  br label %29

29:                                               ; preds = %21, %25
  %30 = phi i32 [ %28, %25 ], [ 0, %21 ]
  %31 = getelementptr inbounds %struct.MovieClipImBufCacheKey, ptr %6, i64 0, i32 1
  store i32 %30, ptr %31, align 4, !tbaa !96
  %32 = getelementptr inbounds %struct.MovieClipUser, ptr %1, i64 0, i32 2
  %33 = load i16, ptr %32, align 2, !tbaa !81
  br label %36

34:                                               ; preds = %16
  %35 = getelementptr inbounds %struct.MovieClipImBufCacheKey, ptr %6, i64 0, i32 1
  store i32 0, ptr %35, align 4, !tbaa !96
  br label %36

36:                                               ; preds = %34, %29
  %37 = phi i16 [ 0, %34 ], [ %33, %29 ]
  %38 = getelementptr inbounds %struct.MovieClipImBufCacheKey, ptr %6, i64 0, i32 2
  store i16 %37, ptr %38, align 4, !tbaa !97
  %39 = icmp eq i8 %4, 0
  %40 = load ptr, ptr %7, align 8, !tbaa !82
  %41 = load ptr, ptr %40, align 8, !tbaa !98
  br i1 %39, label %43, label %42

42:                                               ; preds = %36
  call void @IMB_moviecache_put(ptr noundef %41, ptr noundef nonnull %6, ptr noundef %2) #13
  br label %45

43:                                               ; preds = %36
  %44 = call zeroext i8 @IMB_moviecache_put_if_possible(ptr noundef %41, ptr noundef nonnull %6, ptr noundef %2) #13
  br label %45

45:                                               ; preds = %43, %42
  %46 = phi i8 [ 1, %42 ], [ %44, %43 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #13
  ret i8 %46
}

declare ptr @BKE_libblock_alloc(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #2

declare void @BKE_tracking_settings_init(ptr noundef) local_unnamed_addr #2

declare void @BKE_color_managed_colorspace_settings_init(ptr noundef) local_unnamed_addr #2

declare ptr @IMB_testiffname(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nounwind uwtable
define internal fastcc void @movieclip_open_anim_file(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca [1024 x i8], align 16
  %3 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %2) #13
  %4 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !74
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %33

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 2
  %9 = call ptr @BLI_strncpy(ptr noundef nonnull %2, ptr noundef nonnull %8, i64 noundef 1024) #13
  %10 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !188
  %12 = icmp eq ptr %11, null
  %13 = getelementptr inbounds %struct.Library, ptr %11, i64 0, i32 4
  %14 = load ptr, ptr @G, align 8
  %15 = getelementptr inbounds %struct.Main, ptr %14, i64 0, i32 2
  %16 = select i1 %12, ptr %15, ptr %13
  %17 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %2, ptr noundef nonnull %16) #13
  %18 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 18
  %19 = call ptr @openanim(ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %18) #13
  store ptr %19, ptr %4, align 8, !tbaa !74
  %20 = icmp eq ptr %19, null
  br i1 %20, label %33, label %21

21:                                               ; preds = %7
  %22 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 14
  %23 = load i32, ptr %22, align 8, !tbaa !79
  %24 = and i32 %23, 2
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #13
  %27 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 13
  %28 = call ptr @BLI_strncpy(ptr noundef nonnull %3, ptr noundef nonnull %27, i64 noundef 1024) #13
  %29 = load ptr, ptr @G, align 8, !tbaa !38
  %30 = getelementptr inbounds %struct.Main, ptr %29, i64 0, i32 2
  %31 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %3, ptr noundef nonnull %30) #13
  %32 = load ptr, ptr %4, align 8, !tbaa !74
  call void @IMB_anim_set_index_dir(ptr noundef %32, ptr noundef nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #13
  br label %33

33:                                               ; preds = %7, %26, %21, %1
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %2) #13
  ret void
}

declare i32 @IMB_anim_get_duration(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BLI_stringdec(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BLI_exists(ptr noundef) local_unnamed_addr #2

declare ptr @openanim(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @IMB_anim_set_index_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @IMB_refImBuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @user_frame_to_cache_frame(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca [1024 x i8], align 16
  %4 = alloca i16, align 2
  %5 = alloca [1024 x i8], align 16
  %6 = alloca [1024 x i8], align 16
  %7 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 16
  %8 = load i32, ptr %7, align 8, !tbaa !65
  %9 = sub nsw i32 %1, %8
  %10 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 17
  %11 = load i32, ptr %10, align 4, !tbaa !66
  %12 = add nsw i32 %9, %11
  %13 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !67
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %42

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 9
  %18 = load ptr, ptr %17, align 8, !tbaa !82
  %19 = getelementptr inbounds %struct.MovieClipCache, ptr %18, i64 0, i32 3
  %20 = load i32, ptr %19, align 8, !tbaa !189
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %37

22:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %6) #13
  %23 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 2
  %24 = call i32 @BLI_stringdec(ptr noundef nonnull %23, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %4) #13
  %25 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #14
  %26 = load i16, ptr %4, align 2, !tbaa !77
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %3, i8 0, i64 1024, i1 false)
  %27 = shl i64 %25, 32
  %28 = ashr exact i64 %27, 32
  %29 = getelementptr inbounds i8, ptr %23, i64 %28
  %30 = zext i16 %26 to i64
  %31 = add nuw nsw i64 %30, 1
  %32 = call ptr @BLI_strncpy(ptr noundef nonnull %3, ptr noundef nonnull %29, i64 noundef %31) #13
  %33 = call i64 @strtol(ptr nocapture noundef nonnull %3, ptr noundef null, i32 noundef 10) #13
  %34 = trunc i64 %33 to i32
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #13
  %35 = load ptr, ptr %17, align 8, !tbaa !82
  %36 = getelementptr inbounds %struct.MovieClipCache, ptr %35, i64 0, i32 3
  store i32 %34, ptr %36, align 8, !tbaa !189
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #13
  br label %37

37:                                               ; preds = %22, %16
  %38 = load ptr, ptr %17, align 8, !tbaa !82
  %39 = getelementptr inbounds %struct.MovieClipCache, ptr %38, i64 0, i32 3
  %40 = load i32, ptr %39, align 8, !tbaa !189
  %41 = add nsw i32 %40, %12
  br label %42

42:                                               ; preds = %37, %2
  %43 = phi i32 [ %41, %37 ], [ %12, %2 ]
  %44 = call i32 @llvm.smin.i32(i32 %43, i32 0)
  %45 = sub nsw i32 %1, %44
  ret i32 %45
}

declare ptr @IMB_moviecache_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

declare ptr @IMB_loadiffname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @IMB_dupImBuf(ptr noundef) local_unnamed_addr #2

declare void @BKE_tracking_disable_channels(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare void @BKE_tracking_stabilization_data_get(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_tracking_stabilize_frame(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @IMB_moviecache_free(ptr noundef) local_unnamed_addr #2

declare void @IMB_free_anim(ptr noundef) local_unnamed_addr #2

declare void @BKE_free_animdata(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_tracking_distortion_exec(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, float noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @BKE_tracking_undistort_frame(ptr noundef, ptr noundef, i32 noundef, i32 noundef, float noundef) local_unnamed_addr #2

declare ptr @IMB_scaleImBuf(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @IMB_scaleImBuf_threaded(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @BLI_make_existing_file(ptr noundef) local_unnamed_addr #2

declare signext i16 @IMB_saveiff(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #10

declare void @BLI_split_dirfile(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare zeroext i8 @BLI_path_frame(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @BLI_stringenc(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare ptr @IMB_anim_absolute(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @IMB_moviecache_has_frame(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @IMB_moviecache_create(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @moviecache_hashhash(ptr nocapture noundef readonly %0) #6 {
  %2 = load i32, ptr %0, align 4, !tbaa !94
  ret i32 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal zeroext i8 @moviecache_hashcmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = load i32, ptr %0, align 4, !tbaa !94
  %4 = load i32, ptr %1, align 4, !tbaa !94
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %6, label %19

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.MovieClipImBufCacheKey, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !96
  %9 = getelementptr inbounds %struct.MovieClipImBufCacheKey, ptr %1, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !96
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.MovieClipImBufCacheKey, ptr %0, i64 0, i32 2
  %14 = load i16, ptr %13, align 4, !tbaa !97
  %15 = getelementptr inbounds %struct.MovieClipImBufCacheKey, ptr %1, i64 0, i32 2
  %16 = load i16, ptr %15, align 4, !tbaa !97
  %17 = icmp ne i16 %14, %16
  %18 = zext i1 %17 to i8
  br label %19

19:                                               ; preds = %12, %6, %2
  %20 = phi i8 [ 1, %6 ], [ 1, %2 ], [ %18, %12 ]
  ret i8 %20
}

declare void @IMB_moviecache_set_getdata_callback(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @moviecache_keydata(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #4 {
  %5 = load i32, ptr %0, align 4, !tbaa !94
  store i32 %5, ptr %1, align 4, !tbaa !70
  %6 = getelementptr inbounds %struct.MovieClipImBufCacheKey, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !96
  store i32 %7, ptr %2, align 4, !tbaa !70
  %8 = getelementptr inbounds %struct.MovieClipImBufCacheKey, ptr %0, i64 0, i32 2
  %9 = load i16, ptr %8, align 4, !tbaa !97
  %10 = sext i16 %9 to i32
  store i32 %10, ptr %3, align 4, !tbaa !70
  ret void
}

declare void @IMB_moviecache_set_priority_callback(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef ptr @moviecache_getprioritydata(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 4, ptr noundef nonnull @.str.6) #13
  %4 = load i32, ptr %0, align 4, !tbaa !94
  store i32 %4, ptr %3, align 4, !tbaa !190
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @moviecache_getitempriority(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = load i32, ptr %0, align 4, !tbaa !94
  %4 = load i32, ptr %1, align 4, !tbaa !190
  %5 = sub nsw i32 %3, %4
  %6 = tail call i32 @llvm.abs.i32(i32 %5, i1 true)
  %7 = sub nsw i32 0, %6
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal void @moviecache_prioritydeleter(ptr noundef %0) #0 {
  %2 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %2(ptr noundef %0) #13
  ret void
}

declare void @IMB_moviecache_put(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @IMB_moviecache_put_if_possible(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { nounwind willreturn memory(read) }
attributes #15 = { cold }

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
!38 = !{!39, !35, i64 0}
!39 = !{!"Global", !35, i64 0, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 2057, !36, i64 2058, !40, i64 2064, !36, i64 2080, !36, i64 2081, !36, i64 2082, !41, i64 2084, !41, i64 2086, !41, i64 2088, !36, i64 2090, !41, i64 2092, !42, i64 2096, !42, i64 2100, !36, i64 2104, !42, i64 2108, !42, i64 2112, !36, i64 2116}
!40 = !{!"ListBase", !35, i64 0, !35, i64 8}
!41 = !{!"short", !36, i64 0}
!42 = !{!"int", !36, i64 0}
!43 = distinct !{!43, !44, !45}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!"llvm.loop.unroll.disable"}
!46 = !{!47, !42, i64 100}
!47 = !{!"MovieClip", !48, i64 0, !35, i64 120, !36, i64 128, !42, i64 1152, !42, i64 1156, !36, i64 1160, !49, i64 1168, !49, i64 1172, !35, i64 1176, !35, i64 1184, !35, i64 1192, !50, i64 1200, !35, i64 1528, !56, i64 1536, !42, i64 2312, !42, i64 2316, !42, i64 2320, !42, i64 2324, !57, i64 2328}
!48 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !41, i64 98, !42, i64 100, !42, i64 104, !42, i64 108, !35, i64 112}
!49 = !{!"float", !36, i64 0}
!50 = !{!"MovieTracking", !51, i64 0, !52, i64 72, !40, i64 128, !40, i64 144, !53, i64 160, !54, i64 184, !35, i64 232, !35, i64 240, !40, i64 248, !42, i64 264, !42, i64 268, !35, i64 272, !55, i64 280}
!51 = !{!"MovieTrackingSettings", !42, i64 0, !41, i64 4, !41, i64 6, !49, i64 8, !41, i64 12, !41, i64 14, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !49, i64 24, !41, i64 28, !41, i64 30, !42, i64 32, !42, i64 36, !42, i64 40, !41, i64 44, !41, i64 46, !49, i64 48, !42, i64 52, !42, i64 56, !49, i64 60, !49, i64 64, !42, i64 68}
!52 = !{!"MovieTrackingCamera", !35, i64 0, !41, i64 8, !41, i64 10, !49, i64 12, !49, i64 16, !49, i64 20, !41, i64 24, !41, i64 26, !36, i64 28, !49, i64 36, !49, i64 40, !49, i64 44, !49, i64 48, !49, i64 52}
!53 = !{!"MovieTrackingReconstruction", !42, i64 0, !49, i64 4, !42, i64 8, !42, i64 12, !35, i64 16}
!54 = !{!"MovieTrackingStabilization", !42, i64 0, !42, i64 4, !42, i64 8, !49, i64 12, !35, i64 16, !49, i64 24, !49, i64 28, !49, i64 32, !42, i64 36, !42, i64 40, !49, i64 44}
!55 = !{!"MovieTrackingDopesheet", !42, i64 0, !41, i64 4, !41, i64 6, !40, i64 8, !40, i64 24, !42, i64 40, !42, i64 44}
!56 = !{!"MovieClipProxy", !36, i64 0, !41, i64 768, !41, i64 770, !41, i64 772, !41, i64 774}
!57 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!58 = !{!36, !36, i64 0}
!59 = distinct !{!59, !44, !45}
!60 = !{!47, !49, i64 1172}
!61 = !{!47, !49, i64 1168}
!62 = !{!47, !41, i64 2308}
!63 = !{!47, !41, i64 2310}
!64 = !{!47, !41, i64 2306}
!65 = !{!47, !42, i64 2320}
!66 = !{!47, !42, i64 2324}
!67 = !{!47, !42, i64 1152}
!68 = !{!69, !42, i64 0}
!69 = !{!"MovieClipUser", !42, i64 0, !41, i64 4, !41, i64 6}
!70 = !{!42, !42, i64 0}
!71 = !{!49, !49, i64 0}
!72 = !{!47, !49, i64 1284}
!73 = !{!47, !49, i64 1292}
!74 = !{!47, !35, i64 1176}
!75 = !{!47, !41, i64 2304}
!76 = !{!47, !42, i64 2316}
!77 = !{!41, !41, i64 0}
!78 = distinct !{!78, !45}
!79 = !{!47, !42, i64 2312}
!80 = !{!69, !41, i64 4}
!81 = !{!69, !41, i64 6}
!82 = !{!47, !35, i64 1184}
!83 = !{!84, !35, i64 8}
!84 = !{!"MovieClipCache", !35, i64 0, !85, i64 8, !86, i64 64, !42, i64 120}
!85 = !{!"", !35, i64 0, !42, i64 8, !42, i64 12, !36, i64 16, !49, i64 24, !49, i64 28, !49, i64 32, !49, i64 36, !49, i64 40, !41, i64 44, !36, i64 46, !42, i64 48, !41, i64 52}
!86 = !{!"", !35, i64 0, !35, i64 8, !42, i64 16, !42, i64 20, !36, i64 24, !49, i64 32, !49, i64 36, !49, i64 40, !42, i64 44, !42, i64 48, !41, i64 52}
!87 = !{!84, !42, i64 16}
!88 = !{!84, !41, i64 60}
!89 = !{!84, !42, i64 56}
!90 = !{!84, !42, i64 20}
!91 = !{!52, !41, i64 8}
!92 = !{!84, !41, i64 52}
!93 = !{!84, !36, i64 54}
!94 = !{!95, !42, i64 0}
!95 = !{!"MovieClipImBufCacheKey", !42, i64 0, !42, i64 4, !41, i64 8}
!96 = !{!95, !42, i64 4}
!97 = !{!95, !41, i64 8}
!98 = !{!84, !35, i64 0}
!99 = !{!47, !42, i64 1156}
!100 = !{!101, !42, i64 16}
!101 = !{!"ImBuf", !35, i64 0, !35, i64 8, !42, i64 16, !42, i64 20, !36, i64 24, !42, i64 28, !42, i64 32, !42, i64 36, !35, i64 40, !35, i64 48, !36, i64 56, !42, i64 72, !42, i64 76, !42, i64 80, !42, i64 84, !35, i64 88, !35, i64 96, !35, i64 104, !49, i64 112, !36, i64 120, !42, i64 280, !42, i64 284, !42, i64 288, !42, i64 292, !35, i64 296, !35, i64 304, !42, i64 312, !36, i64 316, !36, i64 1340, !35, i64 2368, !42, i64 2376, !35, i64 2384, !42, i64 2392, !42, i64 2396, !35, i64 2400, !35, i64 2408, !35, i64 2416, !35, i64 2424, !42, i64 2432, !102, i64 2436, !103, i64 2456}
!102 = !{!"rcti", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12}
!103 = !{!"DDSData", !42, i64 0, !42, i64 4, !35, i64 8, !42, i64 16}
!104 = !{!101, !42, i64 20}
!105 = !{!47, !42, i64 1384}
!106 = !{!84, !35, i64 72}
!107 = !{!84, !42, i64 80}
!108 = !{!84, !35, i64 64}
!109 = !{!84, !41, i64 116}
!110 = !{!84, !42, i64 108}
!111 = !{!84, !42, i64 84}
!112 = !{!84, !49, i64 104}
!113 = !{!50, !49, i64 88}
!114 = !{!84, !42, i64 112}
!115 = !{!50, !42, i64 220}
!116 = !{!84, !49, i64 96}
!117 = !{!84, !49, i64 100}
!118 = !{!47, !49, i64 1288}
!119 = !{!47, !42, i64 1424}
!120 = !{!121, !35, i64 248}
!121 = !{!"Scene", !48, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !40, i64 152, !35, i64 168, !35, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !42, i64 232, !42, i64 236, !42, i64 240, !41, i64 244, !36, i64 246, !36, i64 247, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !122, i64 280, !130, i64 4264, !40, i64 4296, !40, i64 4312, !35, i64 4328, !35, i64 4336, !35, i64 4344, !35, i64 4352, !35, i64 4360, !35, i64 4368, !41, i64 4376, !41, i64 4378, !42, i64 4380, !40, i64 4384, !131, i64 4400, !132, i64 4416, !135, i64 4600, !35, i64 4608, !136, i64 4616, !35, i64 4640, !137, i64 4648, !137, i64 4656, !124, i64 4664, !125, i64 4824, !57, i64 4888, !35, i64 4952}
!122 = !{!"RenderData", !123, i64 0, !35, i64 248, !35, i64 256, !126, i64 264, !127, i64 328, !42, i64 400, !42, i64 404, !42, i64 408, !49, i64 412, !42, i64 416, !42, i64 420, !42, i64 424, !42, i64 428, !41, i64 432, !41, i64 434, !49, i64 436, !49, i64 440, !49, i64 444, !49, i64 448, !49, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !42, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !42, i64 484, !42, i64 488, !41, i64 492, !41, i64 494, !42, i64 496, !42, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !36, i64 514, !36, i64 515, !42, i64 516, !42, i64 520, !42, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !128, i64 544, !128, i64 560, !102, i64 576, !40, i64 592, !41, i64 608, !41, i64 610, !49, i64 612, !49, i64 616, !49, i64 620, !49, i64 624, !42, i64 628, !49, i64 632, !49, i64 636, !49, i64 640, !49, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !49, i64 660, !49, i64 664, !41, i64 668, !41, i64 670, !49, i64 672, !49, i64 676, !36, i64 680, !42, i64 1704, !41, i64 1708, !41, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !42, i64 2520, !41, i64 2524, !41, i64 2526, !49, i64 2528, !49, i64 2532, !41, i64 2536, !41, i64 2538, !49, i64 2540, !41, i64 2544, !41, i64 2546, !42, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !49, i64 2560, !49, i64 2564, !35, i64 2568, !42, i64 2576, !49, i64 2580, !36, i64 2584, !129, i64 2616, !42, i64 3976, !42, i64 3980}
!123 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !41, i64 8, !41, i64 10, !49, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !124, i64 24, !125, i64 184}
!124 = !{!"ColorManagedViewSettings", !42, i64 0, !42, i64 4, !36, i64 8, !36, i64 72, !49, i64 136, !49, i64 140, !35, i64 144, !35, i64 152}
!125 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!126 = !{!"QuicktimeCodecSettings", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !42, i64 32, !42, i64 36, !42, i64 40, !42, i64 44, !41, i64 48, !41, i64 50, !42, i64 52, !42, i64 56, !42, i64 60}
!127 = !{!"FFMpegCodecData", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !49, i64 32, !42, i64 36, !42, i64 40, !42, i64 44, !42, i64 48, !42, i64 52, !42, i64 56, !42, i64 60, !35, i64 64}
!128 = !{!"rctf", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12}
!129 = !{!"BakeData", !123, i64 0, !36, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !49, i64 1280, !49, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!130 = !{!"AudioData", !42, i64 0, !49, i64 4, !49, i64 8, !49, i64 12, !42, i64 16, !41, i64 20, !41, i64 22, !49, i64 24, !49, i64 28}
!131 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!132 = !{!"GameData", !131, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !36, i64 34, !133, i64 40, !41, i64 64, !41, i64 66, !49, i64 68, !134, i64 72, !49, i64 128, !49, i64 132, !42, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !49, i64 164, !49, i64 168, !49, i64 172, !49, i64 176, !49, i64 180}
!133 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !49, i64 8, !49, i64 12, !35, i64 16}
!134 = !{!"RecastData", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12, !49, i64 16, !49, i64 20, !49, i64 24, !49, i64 28, !49, i64 32, !49, i64 36, !42, i64 40, !49, i64 44, !49, i64 48, !41, i64 52, !41, i64 54}
!135 = !{!"UnitSettings", !49, i64 0, !36, i64 4, !36, i64 5, !41, i64 6}
!136 = !{!"PhysicsSettings", !36, i64 0, !42, i64 12, !42, i64 16, !42, i64 20}
!137 = !{!"long", !36, i64 0}
!138 = distinct !{!138, !44, !45}
!139 = !{!140, !41, i64 0}
!140 = !{!"MovieClipScopes", !41, i64 0, !41, i64 2, !42, i64 4, !42, i64 8, !42, i64 12, !141, i64 16, !35, i64 80, !35, i64 88, !36, i64 96, !41, i64 104, !41, i64 106, !42, i64 108, !35, i64 112, !35, i64 120, !36, i64 128}
!141 = !{!"MovieTrackingMarker", !36, i64 0, !36, i64 8, !36, i64 40, !36, i64 48, !42, i64 56, !42, i64 60}
!142 = !{!140, !35, i64 88}
!143 = !{!140, !35, i64 80}
!144 = !{!140, !41, i64 106}
!145 = !{!140, !35, i64 120}
!146 = !{!140, !35, i64 112}
!147 = !{!141, !42, i64 60}
!148 = !{!140, !41, i64 104}
!149 = !{!101, !35, i64 40}
!150 = !{!101, !35, i64 48}
!151 = !{i64 0, i64 8, !58, i64 8, i64 32, !58, i64 40, i64 8, !58, i64 48, i64 8, !58, i64 56, i64 4, !70, i64 60, i64 4, !70}
!152 = !{!140, !42, i64 8}
!153 = !{!140, !42, i64 12}
!154 = !{!155, !42, i64 152}
!155 = !{!"MovieTrackingTrack", !35, i64 0, !35, i64 8, !36, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !42, i64 120, !42, i64 124, !35, i64 128, !36, i64 136, !49, i64 148, !42, i64 152, !42, i64 156, !42, i64 160, !36, i64 164, !41, i64 176, !41, i64 178, !41, i64 180, !41, i64 182, !42, i64 184, !49, i64 188, !35, i64 192, !49, i64 200, !49, i64 204}
!156 = !{!140, !41, i64 2}
!157 = !{!140, !42, i64 108}
!158 = distinct !{!158, !44, !45}
!159 = !{!101, !42, i64 312}
!160 = !{!101, !36, i64 24}
!161 = distinct !{!161, !44, !45}
!162 = distinct !{!162, !44, !45}
!163 = distinct !{!163, !44, !45}
!164 = !{!165, !42, i64 32}
!165 = !{!"SpaceLink", !35, i64 0, !35, i64 8, !40, i64 16, !42, i64 32, !49, i64 36, !36, i64 40}
!166 = !{!167, !35, i64 64}
!167 = !{!"SpaceClip", !35, i64 0, !35, i64 8, !40, i64 16, !42, i64 32, !49, i64 36, !49, i64 40, !49, i64 44, !49, i64 48, !49, i64 52, !69, i64 56, !35, i64 64, !140, i64 72, !42, i64 208, !41, i64 212, !41, i64 214, !42, i64 216, !36, i64 220, !49, i64 228, !49, i64 232, !42, i64 236, !36, i64 240, !36, i64 304, !42, i64 368, !41, i64 372, !41, i64 374, !42, i64 376, !42, i64 380, !36, i64 384, !168, i64 392}
!168 = !{!"MaskSpaceInfo", !35, i64 0, !36, i64 8, !36, i64 9, !36, i64 10, !36, i64 11}
!169 = !{!170, !35, i64 64}
!170 = !{!"BGpic", !35, i64 0, !35, i64 8, !35, i64 16, !171, i64 24, !35, i64 64, !69, i64 72, !49, i64 80, !49, i64 84, !49, i64 88, !49, i64 92, !41, i64 96, !41, i64 98, !41, i64 100, !41, i64 102}
!171 = !{!"ImageUser", !35, i64 0, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !36, i64 24, !36, i64 25, !36, i64 26, !36, i64 27, !41, i64 28, !41, i64 30, !41, i64 32, !41, i64 34, !42, i64 36}
!172 = distinct !{!172, !44, !45}
!173 = distinct !{!173, !44, !45}
!174 = !{!121, !35, i64 4640}
!175 = distinct !{!175, !44, !45}
!176 = distinct !{!176, !44, !45}
!177 = !{!178, !41, i64 24}
!178 = !{!"bConstraint", !35, i64 0, !35, i64 8, !35, i64 16, !41, i64 24, !41, i64 26, !36, i64 28, !36, i64 29, !36, i64 30, !41, i64 94, !49, i64 96, !49, i64 100, !35, i64 104, !49, i64 112, !49, i64 116}
!179 = !{!178, !35, i64 16}
!180 = !{!181, !35, i64 0}
!181 = !{!"bFollowTrackConstraint", !35, i64 0, !36, i64 8, !42, i64 72, !42, i64 76, !36, i64 80, !35, i64 144, !35, i64 152}
!182 = !{!183, !35, i64 0}
!183 = !{!"bCameraSolverConstraint", !35, i64 0, !42, i64 8, !42, i64 12}
!184 = !{!185, !35, i64 0}
!185 = !{!"bObjectSolverConstraint", !35, i64 0, !42, i64 8, !42, i64 12, !36, i64 16, !36, i64 80, !35, i64 144}
!186 = distinct !{!186, !44, !45}
!187 = distinct !{!187, !44, !45}
!188 = !{!47, !35, i64 24}
!189 = !{!84, !42, i64 120}
!190 = !{!191, !42, i64 0}
!191 = !{!"MovieClipCachePriorityData", !42, i64 0}
