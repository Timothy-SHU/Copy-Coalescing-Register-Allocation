; ModuleID = 'blender/source/blender/blenkernel/intern/tracking.c'
source_filename = "blender/source/blender/blenkernel/intern/tracking.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon = type { %struct.ListBase }
%struct.ListBase = type { ptr, ptr }
%struct.StructRNA = type opaque
%struct.MovieTracking = type { %struct.MovieTrackingSettings, %struct.MovieTrackingCamera, %struct.ListBase, %struct.ListBase, %struct.MovieTrackingReconstruction, %struct.MovieTrackingStabilization, ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.MovieTrackingDopesheet }
%struct.MovieTrackingSettings = type { i32, i16, i16, float, i16, i16, i16, i16, i16, i16, float, i16, i16, i32, i32, i32, i16, i16, float, i32, i32, float, float, i32 }
%struct.MovieTrackingCamera = type { ptr, i16, i16, float, float, float, i16, i16, [2 x float], float, float, float, float, float }
%struct.MovieTrackingReconstruction = type { i32, float, i32, i32, ptr }
%struct.MovieTrackingStabilization = type { i32, i32, i32, float, ptr, float, float, float, i32, i32, float }
%struct.MovieTrackingDopesheet = type { i32, i16, i16, %struct.ListBase, %struct.ListBase, i32, i32 }
%struct.MovieTrackingTrack = type { ptr, ptr, [64 x i8], [2 x float], [2 x float], [2 x float], [2 x float], [2 x float], i32, i32, ptr, [3 x float], float, i32, i32, i32, [3 x float], i16, i16, i16, i16, i32, float, ptr, float, float }
%struct.MovieTrackingPlaneTrack = type { ptr, ptr, [64 x i8], ptr, i32, i32, ptr, i32, i32, ptr, float, i32 }
%struct.MovieTrackingObject = type { ptr, ptr, [64 x i8], i32, float, %struct.ListBase, %struct.ListBase, %struct.MovieTrackingReconstruction, i32, i32 }
%struct.MovieTrackingDopesheetChannel = type { ptr, ptr, ptr, i32, [64 x i8], i32, ptr, i32, i32 }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
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
%struct.MovieReconstructedCamera = type { i32, float, [4 x [4 x float]] }
%struct.MovieTrackingMarker = type { [2 x float], [4 x [2 x float]], [2 x float], [2 x float], i32, i32 }
%struct.bGPdata = type { %struct.ID, %struct.ListBase, i32, i16, i16, ptr }
%struct.bGPDlayer = type { ptr, ptr, %struct.ListBase, ptr, i32, i16, i16, [4 x float], [128 x i8] }
%struct.bGPDframe = type { ptr, ptr, %struct.ListBase, i32, i32 }
%struct.bGPDstroke = type { ptr, ptr, ptr, ptr, i32, i16, i16, double }
%struct.bGPDspoint = type { float, float, float, float, float }
%struct.MovieTrackingPlaneMarker = type { [4 x [2 x float]], i32, i32 }
%struct.Camera = type { %struct.ID, ptr, i8, i8, i16, float, float, float, float, float, float, float, float, float, float, float, ptr, ptr, i8, [7 x i8] }
%struct.libmv_CameraIntrinsicsOptions = type { i32, i32, i32, double, double, double, double, double, double, double, double, double, double }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.DDSData = type { i32, i32, ptr, i32 }
%struct.MovieTrackingDopesheetCoverageSegment = type { ptr, ptr, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"Camera\00", align 1
@tracking_clipboard = internal global %struct.anon zeroinitializer, align 8
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"add_marker_exec track\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Track\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"tracking_track_duplicate new_track\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@MEM_reallocN_id = external local_unnamed_addr global ptr, align 8
@__func__.BKE_tracking_track_path_clear = private unnamed_addr constant [30 x i8] c"BKE_tracking_track_path_clear\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"tmp tracking joined tracks\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"tracking joined tracks\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"track mask\00", align 1
@RNA_MovieTrackingTrack = external global %struct.StructRNA, align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"weight\00", align 1
@__func__.BKE_tracking_marker_insert = private unnamed_addr constant [27 x i8] c"BKE_tracking_marker_insert\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"MovieTracking markers\00", align 1
@__func__.BKE_tracking_marker_delete = private unnamed_addr constant [27 x i8] c"BKE_tracking_marker_delete\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"new plane track\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"Plane Track\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.11 = private unnamed_addr constant [23 x i8] c"new plane tracks array\00", align 1
@__func__.BKE_tracking_plane_marker_insert = private unnamed_addr constant [33 x i8] c"BKE_tracking_plane_marker_insert\00", align 1
@__func__.BKE_tracking_plane_marker_delete = private unnamed_addr constant [33 x i8] c"BKE_tracking_plane_marker_delete\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"tracking object\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"Object\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"BKE_tracking_distortion_create\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"track mask rasterization points\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"tracking dopesheet channel\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"%s (%.4f)\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"tracking channel segments\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"per frame track counter\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"tracking coverage segment\00", align 1
@switch.table.BKE_tracking_dopesheet_update = private unnamed_addr constant [4 x ptr] [ptr @channels_alpha_inverse_sort, ptr @channels_longest_segment_inverse_sort, ptr @channels_total_track_inverse_sort, ptr @channels_average_error_inverse_sort], align 8
@switch.table.BKE_tracking_dopesheet_update.21 = private unnamed_addr constant [4 x ptr] [ptr @channels_alpha_sort, ptr @channels_longest_segment_sort, ptr @channels_total_track_sort, ptr @channels_average_error_sort], align 8

; Function Attrs: nounwind uwtable
define dso_local void @BKE_tracking_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %1, %12
  %6 = phi ptr [ %13, %12 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %6, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !38
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %11(ptr noundef nonnull %8) #19
  br label %12

12:                                               ; preds = %10, %5
  %13 = load ptr, ptr %6, align 8, !tbaa !34
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %5, !llvm.loop !43

15:                                               ; preds = %12, %1
  tail call void @BLI_freelistN(ptr noundef nonnull %2) #19
  %16 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  %18 = icmp eq ptr %17, null
  br i1 %18, label %32, label %19

19:                                               ; preds = %15, %26
  %20 = phi ptr [ %30, %26 ], [ %17, %15 ]
  %21 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %20, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !46
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %25(ptr noundef nonnull %22) #19
  br label %26

26:                                               ; preds = %24, %19
  %27 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %28 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %20, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !48
  tail call void %27(ptr noundef %29) #19
  %30 = load ptr, ptr %20, align 8, !tbaa !34
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %19, !llvm.loop !49

32:                                               ; preds = %26, %15
  tail call void @BLI_freelistN(ptr noundef nonnull %16) #19
  %33 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 4, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !50
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %37(ptr noundef nonnull %34) #19
  br label %38

38:                                               ; preds = %32, %36
  %39 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 8
  %40 = load ptr, ptr %39, align 8, !tbaa !34
  %41 = icmp eq ptr %40, null
  br i1 %41, label %83, label %42

42:                                               ; preds = %38, %80
  %43 = phi ptr [ %81, %80 ], [ %40, %38 ]
  %44 = getelementptr inbounds %struct.MovieTrackingObject, ptr %43, i64 0, i32 5
  %45 = load ptr, ptr %44, align 8, !tbaa !34
  %46 = icmp eq ptr %45, null
  br i1 %46, label %57, label %47

47:                                               ; preds = %42, %54
  %48 = phi ptr [ %55, %54 ], [ %45, %42 ]
  %49 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %48, i64 0, i32 10
  %50 = load ptr, ptr %49, align 8, !tbaa !38
  %51 = icmp eq ptr %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %47
  %53 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %53(ptr noundef nonnull %50) #19
  br label %54

54:                                               ; preds = %52, %47
  %55 = load ptr, ptr %48, align 8, !tbaa !34
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %47, !llvm.loop !43

57:                                               ; preds = %54, %42
  tail call void @BLI_freelistN(ptr noundef nonnull %44) #19
  %58 = getelementptr inbounds %struct.MovieTrackingObject, ptr %43, i64 0, i32 6
  %59 = load ptr, ptr %58, align 8, !tbaa !34
  %60 = icmp eq ptr %59, null
  br i1 %60, label %74, label %61

61:                                               ; preds = %57, %68
  %62 = phi ptr [ %72, %68 ], [ %59, %57 ]
  %63 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %62, i64 0, i32 6
  %64 = load ptr, ptr %63, align 8, !tbaa !46
  %65 = icmp eq ptr %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %61
  %67 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %67(ptr noundef nonnull %64) #19
  br label %68

68:                                               ; preds = %66, %61
  %69 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %70 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %62, i64 0, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !48
  tail call void %69(ptr noundef %71) #19
  %72 = load ptr, ptr %62, align 8, !tbaa !34
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %61, !llvm.loop !49

74:                                               ; preds = %68, %57
  tail call void @BLI_freelistN(ptr noundef nonnull %58) #19
  %75 = getelementptr inbounds %struct.MovieTrackingObject, ptr %43, i64 0, i32 7, i32 4
  %76 = load ptr, ptr %75, align 8, !tbaa !50
  %77 = icmp eq ptr %76, null
  br i1 %77, label %80, label %78

78:                                               ; preds = %74
  %79 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %79(ptr noundef nonnull %76) #19
  br label %80

80:                                               ; preds = %74, %78
  %81 = load ptr, ptr %43, align 8, !tbaa !34
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %42, !llvm.loop !52

83:                                               ; preds = %80, %38
  tail call void @BLI_freelistN(ptr noundef nonnull %39) #19
  %84 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !53
  %86 = icmp eq ptr %85, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %85, align 8, !tbaa !60
  tail call void @libmv_cameraIntrinsicsDestroy(ptr noundef %88) #19
  %89 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %89(ptr noundef nonnull %85) #19
  br label %90

90:                                               ; preds = %87, %83
  %91 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 12, i32 4
  %92 = load ptr, ptr %91, align 8, !tbaa !34
  %93 = icmp eq ptr %92, null
  br i1 %93, label %104, label %94

94:                                               ; preds = %90, %101
  %95 = phi ptr [ %102, %101 ], [ %92, %90 ]
  %96 = getelementptr inbounds %struct.MovieTrackingDopesheetChannel, ptr %95, i64 0, i32 6
  %97 = load ptr, ptr %96, align 8, !tbaa !62
  %98 = icmp eq ptr %97, null
  br i1 %98, label %101, label %99

99:                                               ; preds = %94
  %100 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %100(ptr noundef nonnull %97) #19
  br label %101

101:                                              ; preds = %99, %94
  %102 = load ptr, ptr %95, align 8, !tbaa !34
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %94, !llvm.loop !64

104:                                              ; preds = %101, %90
  tail call void @BLI_freelistN(ptr noundef nonnull %91) #19
  %105 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 12, i32 3
  tail call void @BLI_freelistN(ptr noundef nonnull %105) #19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %105, i8 0, i64 36, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_tracking_distortion_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !60
  tail call void @libmv_cameraIntrinsicsDestroy(ptr noundef %2) #19
  %3 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %3(ptr noundef nonnull %0) #19
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_tracking_settings_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1, i32 3
  store float 3.500000e+01, ptr %2, align 4, !tbaa !65
  %3 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1, i32 4
  store float 1.000000e+00, ptr %3, align 8, !tbaa !66
  %4 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1, i32 6
  store i16 1, ptr %4, align 8, !tbaa !67
  %5 = getelementptr inbounds %struct.MovieTrackingSettings, ptr %0, i64 0, i32 1
  store i16 0, ptr %5, align 4, !tbaa !68
  %6 = getelementptr inbounds %struct.MovieTrackingSettings, ptr %0, i64 0, i32 3
  store float 7.500000e-01, ptr %6, align 8, !tbaa !69
  %7 = getelementptr inbounds %struct.MovieTrackingSettings, ptr %0, i64 0, i32 4
  store i16 21, ptr %7, align 4, !tbaa !70
  %8 = getelementptr inbounds %struct.MovieTrackingSettings, ptr %0, i64 0, i32 5
  store i16 71, ptr %8, align 2, !tbaa !71
  %9 = getelementptr inbounds %struct.MovieTrackingSettings, ptr %0, i64 0, i32 2
  %10 = load i16, ptr %9, align 2, !tbaa !72
  %11 = or i16 %10, 1
  store i16 %11, ptr %9, align 2, !tbaa !72
  %12 = getelementptr inbounds %struct.MovieTrackingSettings, ptr %0, i64 0, i32 10
  store float 1.000000e+00, ptr %12, align 8, !tbaa !73
  %13 = getelementptr inbounds %struct.MovieTrackingSettings, ptr %0, i64 0, i32 18
  store float 1.000000e+00, ptr %13, align 8, !tbaa !74
  %14 = getelementptr inbounds %struct.MovieTrackingSettings, ptr %0, i64 0, i32 22
  store float 1.000000e+00, ptr %14, align 8, !tbaa !75
  %15 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 5, i32 6
  store float 1.000000e+00, ptr %15, align 4, !tbaa !76
  %16 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 5, i32 5
  store float 1.000000e+00, ptr %16, align 8, !tbaa !77
  %17 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 5, i32 7
  store float 1.000000e+00, ptr %17, align 8, !tbaa !78
  %18 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 5, i32 3
  store float 2.000000e+00, ptr %18, align 4, !tbaa !79
  %19 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 5, i32 8
  store i32 1, ptr %19, align 4, !tbaa !80
  %20 = tail call ptr @BKE_tracking_object_add(ptr noundef %0, ptr noundef nonnull @.str)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_tracking_object_add(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %4 = tail call ptr %3(i64 noundef 152, ptr noundef nonnull @.str.12) #19
  %5 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 10
  %6 = load i32, ptr %5, align 4, !tbaa !81
  %7 = icmp eq i32 %6, 0
  %8 = getelementptr inbounds %struct.MovieTrackingObject, ptr %4, i64 0, i32 2
  br i1 %7, label %9, label %14

9:                                                ; preds = %2
  %10 = tail call ptr @BLI_strncpy(ptr noundef nonnull %8, ptr noundef nonnull @.str, i64 noundef 64) #19
  %11 = getelementptr inbounds %struct.MovieTrackingObject, ptr %4, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !82
  %13 = or i32 %12, 1
  store i32 %13, ptr %11, align 8, !tbaa !82
  br label %16

14:                                               ; preds = %2
  %15 = tail call ptr @BLI_strncpy(ptr noundef nonnull %8, ptr noundef %1, i64 noundef 64) #19
  br label %16

16:                                               ; preds = %14, %9
  %17 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 8
  tail call void @BLI_addtail(ptr noundef nonnull %17, ptr noundef %4) #19
  %18 = load i32, ptr %5, align 4, !tbaa !81
  %19 = add nsw i32 %18, 1
  store i32 %19, ptr %5, align 4, !tbaa !81
  %20 = tail call i32 @BLI_countlist(ptr noundef nonnull %17) #19
  %21 = add nsw i32 %20, -1
  %22 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 9
  store i32 %21, ptr %22, align 8, !tbaa !84
  %23 = getelementptr inbounds %struct.MovieTrackingObject, ptr %4, i64 0, i32 4
  store float 1.000000e+00, ptr %23, align 4, !tbaa !85
  %24 = getelementptr inbounds %struct.MovieTrackingObject, ptr %4, i64 0, i32 8
  store i32 1, ptr %24, align 8, !tbaa !86
  %25 = getelementptr inbounds %struct.MovieTrackingObject, ptr %4, i64 0, i32 9
  store i32 30, ptr %25, align 4, !tbaa !87
  tail call void @BLI_uniquename(ptr noundef nonnull %17, ptr noundef %4, ptr noundef nonnull @.str.13, i8 noundef zeroext 46, i32 noundef 16, i32 noundef 64) #19
  %26 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 12
  store i32 0, ptr %26, align 8, !tbaa !88
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @BKE_tracking_get_active_tracks(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 8
  %3 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !84
  %5 = tail call ptr @BLI_findlink(ptr noundef nonnull %2, i32 noundef %4) #19
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.MovieTrackingObject, ptr %5, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !82
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.MovieTrackingObject, ptr %5, i64 0, i32 5
  br label %16

14:                                               ; preds = %7, %1
  %15 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 2
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi ptr [ %13, %12 ], [ %15, %14 ]
  ret ptr %17
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_tracking_object_get_active(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 8
  %3 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !84
  %5 = tail call ptr @BLI_findlink(ptr noundef nonnull %2, i32 noundef %4) #19
  ret ptr %5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @BKE_tracking_get_active_plane_tracks(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 8
  %3 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !84
  %5 = tail call ptr @BLI_findlink(ptr noundef nonnull %2, i32 noundef %4) #19
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.MovieTrackingObject, ptr %5, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !82
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.MovieTrackingObject, ptr %5, i64 0, i32 6
  br label %16

14:                                               ; preds = %7, %1
  %15 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 3
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi ptr [ %13, %12 ], [ %15, %14 ]
  ret ptr %17
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @BKE_tracking_get_active_reconstruction(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 8
  %3 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !84
  %5 = tail call ptr @BLI_findlink(ptr noundef nonnull %2, i32 noundef %4) #19
  %6 = getelementptr inbounds %struct.MovieTrackingObject, ptr %5, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !82
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 4
  %11 = getelementptr inbounds %struct.MovieTrackingObject, ptr %5, i64 0, i32 7
  %12 = select i1 %9, ptr %11, ptr %10
  ret ptr %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local nonnull ptr @BKE_tracking_object_get_reconstruction(ptr noundef readnone %0, ptr noundef readonly %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.MovieTrackingObject, ptr %1, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !82
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  %7 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 4
  %8 = getelementptr inbounds %struct.MovieTrackingObject, ptr %1, i64 0, i32 7
  %9 = select i1 %6, ptr %8, ptr %7
  ret ptr %9
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_tracking_get_camera_object_matrix(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %11

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !89
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = tail call ptr @BKE_scene_camera_find(ptr noundef %0) #19
  br label %11

11:                                               ; preds = %5, %9, %3
  %12 = phi ptr [ %1, %3 ], [ %10, %9 ], [ %7, %5 ]
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  tail call void @BKE_object_where_is_calc_mat4(ptr noundef %0, ptr noundef nonnull %12, ptr noundef %2) #19
  br label %16

15:                                               ; preds = %11
  tail call void @unit_m4(ptr noundef %2) #19
  br label %16

16:                                               ; preds = %15, %14
  ret void
}

declare ptr @BKE_scene_camera_find(ptr noundef) local_unnamed_addr #3

declare void @BKE_object_where_is_calc_mat4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @unit_m4(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @BKE_tracking_get_projection_matrix(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca [4 x [4 x float]], align 16
  %8 = alloca [4 x [4 x float]], align 16
  %9 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1, i32 5
  %10 = load float, ptr %9, align 4, !tbaa !110
  %11 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1, i32 3
  %12 = load float, ptr %11, align 4, !tbaa !65
  %13 = fmul float %10, %12
  %14 = sitofp i32 %3 to float
  %15 = fdiv float %13, %14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #19
  %16 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1, i32 4
  %17 = load float, ptr %16, align 8, !tbaa !66
  %18 = fdiv float 1.000000e+00, %17
  %19 = tail call i32 @llvm.smin.i32(i32 %3, i32 %4)
  %20 = sitofp i32 %19 to float
  %21 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1, i32 8
  %22 = load float, ptr %21, align 4, !tbaa !111
  %23 = fneg float %22
  %24 = tail call float @llvm.fmuladd.f32(float %14, float 5.000000e-01, float %23)
  %25 = fdiv float %24, %14
  %26 = sitofp i32 %4 to float
  %27 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1, i32 8, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !111
  %29 = fneg float %28
  %30 = tail call float @llvm.fmuladd.f32(float %26, float 5.000000e-01, float %29)
  %31 = fdiv float %30, %14
  %32 = icmp slt i32 %3, %4
  %33 = fmul float %15, %14
  %34 = fmul float %15, %18
  %35 = fmul float %34, %26
  %36 = select i1 %32, float %35, float %33
  %37 = fdiv float %36, %12
  %38 = fdiv float 0x3FB99999A0000000, %37
  %39 = fmul float %25, %20
  %40 = tail call float @llvm.fmuladd.f32(float %14, float -5.000000e-01, float %39)
  %41 = fmul float %18, -5.000000e-01
  %42 = fmul float %31, %20
  %43 = tail call float @llvm.fmuladd.f32(float %41, float %26, float %42)
  %44 = tail call float @llvm.fmuladd.f32(float %14, float 5.000000e-01, float %39)
  %45 = fmul float %18, 5.000000e-01
  %46 = tail call float @llvm.fmuladd.f32(float %45, float %26, float %42)
  %47 = fmul float %40, %38
  %48 = fmul float %44, %38
  %49 = fmul float %43, %38
  %50 = fmul float %46, %38
  call void @perspective_m4(ptr noundef nonnull %7, float noundef %47, float noundef %48, float noundef %49, float noundef %50, float noundef 0x3FB99999A0000000, float noundef 1.000000e+03) #19
  %51 = getelementptr inbounds %struct.MovieTrackingObject, ptr %1, i64 0, i32 3
  %52 = load i32, ptr %51, align 8, !tbaa !82
  %53 = and i32 %52, 1
  %54 = icmp eq i32 %53, 0
  %55 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 4
  %56 = getelementptr inbounds %struct.MovieTrackingObject, ptr %1, i64 0, i32 7
  %57 = select i1 %54, ptr %56, ptr %55
  %58 = getelementptr inbounds %struct.MovieTrackingReconstruction, ptr %57, i64 0, i32 4
  %59 = load ptr, ptr %58, align 8, !tbaa !50
  %60 = getelementptr inbounds %struct.MovieTrackingReconstruction, ptr %57, i64 0, i32 3
  %61 = load i32, ptr %60, align 4, !tbaa !112
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %105, label %63

63:                                               ; preds = %6
  %64 = load i32, ptr %59, align 4, !tbaa !113
  %65 = icmp sgt i32 %64, %2
  br i1 %65, label %105, label %66

66:                                               ; preds = %63
  %67 = sext i32 %61 to i64
  %68 = getelementptr %struct.MovieReconstructedCamera, ptr %59, i64 %67
  %69 = getelementptr %struct.MovieReconstructedCamera, ptr %68, i64 -1
  %70 = load i32, ptr %69, align 4, !tbaa !113
  %71 = icmp slt i32 %70, %2
  br i1 %71, label %105, label %72

72:                                               ; preds = %66
  %73 = getelementptr inbounds %struct.MovieTrackingReconstruction, ptr %57, i64 0, i32 2
  %74 = load i32, ptr %73, align 8, !tbaa !115
  %75 = icmp slt i32 %74, %61
  %76 = select i1 %75, i32 %74, i32 0
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.MovieReconstructedCamera, ptr %59, i64 %77
  %79 = load i32, ptr %78, align 4, !tbaa !113
  %80 = icmp slt i32 %79, %2
  %81 = select i1 %80, i32 1, i32 -1
  br label %82

82:                                               ; preds = %100, %72
  %83 = phi i32 [ %76, %72 ], [ %101, %100 ]
  %84 = phi i32 [ undef, %72 ], [ %103, %100 ]
  %85 = icmp sgt i32 %83, -1
  %86 = icmp slt i32 %83, %61
  %87 = and i1 %85, %86
  br i1 %87, label %88, label %104

88:                                               ; preds = %82
  %89 = zext nneg i32 %83 to i64
  %90 = getelementptr inbounds %struct.MovieReconstructedCamera, ptr %59, i64 %89
  %91 = load i32, ptr %90, align 4, !tbaa !113
  %92 = icmp sle i32 %91, %2
  %93 = icmp sge i32 %91, %2
  %94 = select i1 %80, i1 %92, i1 %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %88
  %96 = icmp eq i32 %91, %2
  br i1 %96, label %97, label %98

97:                                               ; preds = %95
  store i32 %83, ptr %73, align 8, !tbaa !115
  br label %100

98:                                               ; preds = %95
  %99 = add nsw i32 %83, %81
  br label %100

100:                                              ; preds = %88, %98, %97
  %101 = phi i32 [ %83, %97 ], [ %99, %98 ], [ %83, %88 ]
  %102 = phi i32 [ 1, %97 ], [ 0, %98 ], [ 3, %88 ]
  %103 = phi i32 [ %83, %97 ], [ %84, %98 ], [ %84, %88 ]
  switch i32 %102, label %105 [
    i32 0, label %82
    i32 3, label %104
  ], !llvm.loop !116

104:                                              ; preds = %100, %82
  br label %105

105:                                              ; preds = %100, %104, %66, %63, %6
  %106 = phi i32 [ -1, %6 ], [ -1, %63 ], [ -1, %66 ], [ -1, %104 ], [ %103, %100 ]
  %107 = icmp eq i32 %106, -1
  %108 = icmp eq ptr %59, null
  %109 = select i1 %107, i1 true, i1 %108
  br i1 %109, label %114, label %110

110:                                              ; preds = %105
  %111 = sext i32 %106 to i64
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #19
  %112 = getelementptr inbounds %struct.MovieReconstructedCamera, ptr %59, i64 %111, i32 2
  %113 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %8, ptr noundef nonnull %112) #19
  call void @mul_m4_m4m4(ptr noundef %5, ptr noundef nonnull %7, ptr noundef nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #19
  br label %115

114:                                              ; preds = %105
  call void @copy_m4_m4(ptr noundef %5, ptr noundef nonnull %7) #19
  br label %115

115:                                              ; preds = %114, %110
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #19
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_tracking_camera_shift_get(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #4 {
  %6 = sitofp i32 %1 to float
  %7 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1, i32 8
  %8 = load float, ptr %7, align 4, !tbaa !111
  %9 = fneg float %8
  %10 = tail call float @llvm.fmuladd.f32(float %6, float 5.000000e-01, float %9)
  %11 = fdiv float %10, %6
  store float %11, ptr %3, align 4, !tbaa !111
  %12 = sitofp i32 %2 to float
  %13 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1, i32 8, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !111
  %15 = fneg float %14
  %16 = tail call float @llvm.fmuladd.f32(float %12, float 5.000000e-01, float %15)
  %17 = fdiv float %16, %6
  store float %17, ptr %4, align 4, !tbaa !111
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

declare void @perspective_m4(ptr noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_tracking_camera_get_reconstructed(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2) local_unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.MovieTrackingObject, ptr %1, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !82
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  %8 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 4
  %9 = getelementptr inbounds %struct.MovieTrackingObject, ptr %1, i64 0, i32 7
  %10 = select i1 %7, ptr %9, ptr %8
  %11 = getelementptr inbounds %struct.MovieTrackingReconstruction, ptr %10, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !50
  %13 = getelementptr inbounds %struct.MovieTrackingReconstruction, ptr %10, i64 0, i32 3
  %14 = load i32, ptr %13, align 4, !tbaa !112
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %58, label %16

16:                                               ; preds = %3
  %17 = load i32, ptr %12, align 4, !tbaa !113
  %18 = icmp sgt i32 %17, %2
  br i1 %18, label %58, label %19

19:                                               ; preds = %16
  %20 = sext i32 %14 to i64
  %21 = getelementptr %struct.MovieReconstructedCamera, ptr %12, i64 %20
  %22 = getelementptr %struct.MovieReconstructedCamera, ptr %21, i64 -1
  %23 = load i32, ptr %22, align 4, !tbaa !113
  %24 = icmp slt i32 %23, %2
  br i1 %24, label %58, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.MovieTrackingReconstruction, ptr %10, i64 0, i32 2
  %27 = load i32, ptr %26, align 8, !tbaa !115
  %28 = icmp slt i32 %27, %14
  %29 = select i1 %28, i32 %27, i32 0
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.MovieReconstructedCamera, ptr %12, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !113
  %33 = icmp slt i32 %32, %2
  %34 = select i1 %33, i32 1, i32 -1
  br label %35

35:                                               ; preds = %53, %25
  %36 = phi i32 [ %29, %25 ], [ %54, %53 ]
  %37 = phi i32 [ undef, %25 ], [ %56, %53 ]
  %38 = icmp sgt i32 %36, -1
  %39 = icmp slt i32 %36, %14
  %40 = and i1 %38, %39
  br i1 %40, label %41, label %57

41:                                               ; preds = %35
  %42 = zext nneg i32 %36 to i64
  %43 = getelementptr inbounds %struct.MovieReconstructedCamera, ptr %12, i64 %42
  %44 = load i32, ptr %43, align 4, !tbaa !113
  %45 = icmp sle i32 %44, %2
  %46 = icmp sge i32 %44, %2
  %47 = select i1 %33, i1 %45, i1 %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %41
  %49 = icmp eq i32 %44, %2
  br i1 %49, label %50, label %51

50:                                               ; preds = %48
  store i32 %36, ptr %26, align 8, !tbaa !115
  br label %53

51:                                               ; preds = %48
  %52 = add nsw i32 %36, %34
  br label %53

53:                                               ; preds = %41, %51, %50
  %54 = phi i32 [ %36, %50 ], [ %52, %51 ], [ %36, %41 ]
  %55 = phi i32 [ 1, %50 ], [ 0, %51 ], [ 3, %41 ]
  %56 = phi i32 [ %36, %50 ], [ %37, %51 ], [ %37, %41 ]
  switch i32 %55, label %58 [
    i32 0, label %35
    i32 3, label %57
  ], !llvm.loop !116

57:                                               ; preds = %53, %35
  br label %58

58:                                               ; preds = %53, %57, %19, %16, %3
  %59 = phi i32 [ -1, %3 ], [ -1, %16 ], [ -1, %19 ], [ -1, %57 ], [ %56, %53 ]
  %60 = icmp eq i32 %59, -1
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds %struct.MovieReconstructedCamera, ptr %12, i64 %61
  %63 = select i1 %60, ptr null, ptr %62
  ret ptr %63
}

declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @BKE_tracking_clipboard_free() local_unnamed_addr #0 {
  %1 = load ptr, ptr @tracking_clipboard, align 8, !tbaa !117
  %2 = icmp eq ptr %1, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %0, %11
  %4 = phi ptr [ %5, %11 ], [ %1, %0 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !119
  %6 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %4, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !38
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %10(ptr noundef nonnull %7) #19
  br label %11

11:                                               ; preds = %3, %9
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %12(ptr noundef nonnull %4) #19
  %13 = icmp eq ptr %5, null
  br i1 %13, label %14, label %3, !llvm.loop !120

14:                                               ; preds = %11, %0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @tracking_clipboard, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_tracking_track_free(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !38
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %6(ptr noundef nonnull %3) #19
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_tracking_clipboard_copy_tracks(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.MovieTrackingObject, ptr %1, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !82
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  %7 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %struct.MovieTrackingObject, ptr %1, i64 0, i32 5
  %9 = select i1 %6, ptr %8, ptr %7
  %10 = load ptr, ptr %9, align 8, !tbaa !121
  %11 = load ptr, ptr @tracking_clipboard, align 8, !tbaa !117
  %12 = icmp eq ptr %11, null
  br i1 %12, label %24, label %13

13:                                               ; preds = %2, %21
  %14 = phi ptr [ %15, %21 ], [ %11, %2 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !119
  %16 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %14, i64 0, i32 10
  %17 = load ptr, ptr %16, align 8, !tbaa !38
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %13
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %20(ptr noundef nonnull %17) #19
  br label %21

21:                                               ; preds = %19, %13
  %22 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %22(ptr noundef nonnull %14) #19
  %23 = icmp eq ptr %15, null
  br i1 %23, label %24, label %13, !llvm.loop !120

24:                                               ; preds = %21, %2
  %25 = icmp eq ptr %10, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @tracking_clipboard, i8 0, i64 16, i1 false)
  br i1 %25, label %58, label %26

26:                                               ; preds = %24, %55
  %27 = phi ptr [ %56, %55 ], [ %10, %24 ]
  %28 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %27, i64 0, i32 13
  %29 = load i32, ptr %28, align 8, !tbaa !122
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %27, i64 0, i32 14
  %34 = load i32, ptr %33, align 4, !tbaa !123
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %27, i64 0, i32 15
  %39 = load i32, ptr %38, align 8, !tbaa !124
  %40 = and i32 %39, 1
  %41 = icmp ne i32 %40, 0
  %42 = and i32 %29, 32
  %43 = icmp eq i32 %42, 0
  %44 = and i1 %43, %41
  br i1 %44, label %48, label %55

45:                                               ; preds = %32, %26
  %46 = and i32 %29, 32
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %37, %45
  %49 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %50 = tail call ptr %49(i64 noundef 208, ptr noundef nonnull @.str.3) #19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %50, ptr noundef nonnull align 8 dereferenceable(208) %27, i64 208, i1 false), !tbaa.struct !125
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %50, i8 0, i64 16, i1 false)
  %51 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %52 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %50, i64 0, i32 10
  %53 = load ptr, ptr %52, align 8, !tbaa !38
  %54 = tail call ptr %51(ptr noundef %53) #19
  store ptr %54, ptr %52, align 8, !tbaa !38
  tail call void @BLI_addtail(ptr noundef nonnull @tracking_clipboard, ptr noundef nonnull %50) #19
  br label %55

55:                                               ; preds = %48, %45, %37
  %56 = load ptr, ptr %27, align 8, !tbaa !119
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %26, !llvm.loop !129

58:                                               ; preds = %55, %24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local nonnull ptr @BKE_tracking_object_get_tracks(ptr noundef readnone %0, ptr noundef readonly %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.MovieTrackingObject, ptr %1, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !82
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  %7 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %struct.MovieTrackingObject, ptr %1, i64 0, i32 5
  %9 = select i1 %6, ptr %8, ptr %7
  ret ptr %9
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @BKE_tracking_track_duplicate(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 208, ptr noundef nonnull @.str.3) #19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(208) %0, i64 208, i1 false), !tbaa.struct !125
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %4 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %3, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !38
  %7 = tail call ptr %4(ptr noundef %6) #19
  store ptr %7, ptr %5, align 8, !tbaa !38
  ret ptr %3
}

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @BKE_tracking_clipboard_has_tracks() local_unnamed_addr #7 {
  %1 = load ptr, ptr @tracking_clipboard, align 8, !tbaa !121
  %2 = icmp ne ptr %1, null
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_tracking_clipboard_paste_tracks(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.MovieTrackingObject, ptr %1, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !82
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  %7 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %struct.MovieTrackingObject, ptr %1, i64 0, i32 5
  %9 = select i1 %6, ptr %8, ptr %7
  %10 = load ptr, ptr @tracking_clipboard, align 8, !tbaa !34
  %11 = icmp eq ptr %10, null
  br i1 %11, label %29, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 6
  br label %14

14:                                               ; preds = %12, %26
  %15 = phi ptr [ %10, %12 ], [ %27, %26 ]
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %17 = tail call ptr %16(i64 noundef 208, ptr noundef nonnull @.str.3) #19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %17, ptr noundef nonnull align 8 dereferenceable(208) %15, i64 208, i1 false), !tbaa.struct !125
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false)
  %18 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %19 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %17, i64 0, i32 10
  %20 = load ptr, ptr %19, align 8, !tbaa !38
  %21 = tail call ptr %18(ptr noundef %20) #19
  store ptr %21, ptr %19, align 8, !tbaa !38
  %22 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %15, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !130
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %14
  store ptr %17, ptr %13, align 8, !tbaa !131
  br label %26

26:                                               ; preds = %25, %14
  tail call void @BLI_addtail(ptr noundef nonnull %9, ptr noundef nonnull %17) #19
  tail call void @BLI_uniquename(ptr noundef nonnull %9, ptr noundef nonnull %17, ptr noundef nonnull @.str.2, i8 noundef zeroext 46, i32 noundef 16, i32 noundef 64) #19
  %27 = load ptr, ptr %15, align 8, !tbaa !34
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %14, !llvm.loop !132

29:                                               ; preds = %26, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_tracking_track_unique_name(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @BLI_uniquename(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.2, i8 noundef zeroext 46, i32 noundef 16, i32 noundef 64) #19
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_tracking_track_add(ptr nocapture noundef readonly %0, ptr noundef %1, float noundef %2, float noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = alloca %struct.MovieTrackingMarker, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #19
  %9 = getelementptr inbounds %struct.MovieTrackingSettings, ptr %0, i64 0, i32 4
  %10 = load i16, ptr %9, align 4, !tbaa !133
  %11 = sitofp i16 %10 to float
  %12 = fmul float %11, 5.000000e-01
  %13 = getelementptr inbounds %struct.MovieTrackingSettings, ptr %0, i64 0, i32 5
  %14 = load i16, ptr %13, align 2, !tbaa !134
  %15 = sitofp i16 %14 to float
  %16 = fmul float %15, 5.000000e-01
  %17 = sitofp i32 %5 to float
  %18 = fdiv float %12, %17
  %19 = sitofp i32 %6 to float
  %20 = fdiv float %16, %17
  %21 = fdiv float %16, %19
  %22 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %23 = tail call ptr %22(i64 noundef 208, ptr noundef nonnull @.str.1) #19
  %24 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %23, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %24, ptr noundef nonnull align 1 dereferenceable(6) @.str.2, i64 6, i1 false) #19
  %25 = getelementptr inbounds %struct.MovieTrackingSettings, ptr %0, i64 0, i32 1
  %26 = load i16, ptr %25, align 4, !tbaa !135
  %27 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %23, i64 0, i32 20
  store i16 %26, ptr %27, align 2, !tbaa !136
  %28 = getelementptr inbounds %struct.MovieTrackingSettings, ptr %0, i64 0, i32 3
  %29 = load float, ptr %28, align 4, !tbaa !137
  %30 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %23, i64 0, i32 22
  store float %29, ptr %30, align 4, !tbaa !138
  %31 = getelementptr inbounds %struct.MovieTrackingSettings, ptr %0, i64 0, i32 7
  %32 = load i16, ptr %31, align 2, !tbaa !139
  %33 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %23, i64 0, i32 18
  store i16 %32, ptr %33, align 2, !tbaa !140
  %34 = getelementptr inbounds %struct.MovieTrackingSettings, ptr %0, i64 0, i32 8
  %35 = load i16, ptr %34, align 4, !tbaa !141
  %36 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %23, i64 0, i32 19
  store i16 %35, ptr %36, align 4, !tbaa !142
  %37 = getelementptr inbounds %struct.MovieTrackingSettings, ptr %0, i64 0, i32 6
  %38 = load i16, ptr %37, align 4, !tbaa !143
  %39 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %23, i64 0, i32 17
  store i16 %38, ptr %39, align 8, !tbaa !144
  %40 = getelementptr inbounds %struct.MovieTrackingSettings, ptr %0, i64 0, i32 9
  %41 = load i16, ptr %40, align 2, !tbaa !145
  %42 = sext i16 %41 to i32
  %43 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %23, i64 0, i32 13
  store i32 %42, ptr %43, align 8, !tbaa !122
  %44 = getelementptr inbounds %struct.MovieTrackingSettings, ptr %0, i64 0, i32 2
  %45 = load i16, ptr %44, align 2, !tbaa !146
  %46 = sext i16 %45 to i32
  %47 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %23, i64 0, i32 21
  store i32 %46, ptr %47, align 8, !tbaa !147
  %48 = getelementptr inbounds %struct.MovieTrackingSettings, ptr %0, i64 0, i32 10
  %49 = load float, ptr %48, align 4, !tbaa !148
  %50 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %23, i64 0, i32 24
  store float %49, ptr %50, align 8, !tbaa !149
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %8, i8 0, i64 64, i1 false)
  store float %2, ptr %8, align 4, !tbaa !111
  %51 = getelementptr inbounds [2 x float], ptr %8, i64 0, i64 1
  store float %3, ptr %51, align 4, !tbaa !111
  %52 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %8, i64 0, i32 4
  store i32 %4, ptr %52, align 4, !tbaa !150
  %53 = fneg float %18
  %54 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %8, i64 0, i32 1
  store float %53, ptr %54, align 4, !tbaa !111
  %55 = fneg float %12
  %56 = fdiv float %55, %19
  %57 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %8, i64 0, i32 1, i64 0, i64 1
  store float %56, ptr %57, align 4, !tbaa !111
  %58 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %8, i64 0, i32 1, i64 1
  store float %18, ptr %58, align 4, !tbaa !111
  %59 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %8, i64 0, i32 1, i64 1, i64 1
  store float %56, ptr %59, align 4, !tbaa !111
  %60 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %8, i64 0, i32 1, i64 2
  store float %18, ptr %60, align 4, !tbaa !111
  %61 = fneg float %56
  %62 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %8, i64 0, i32 1, i64 2, i64 1
  store float %61, ptr %62, align 4, !tbaa !111
  %63 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %8, i64 0, i32 1, i64 3
  store float %53, ptr %63, align 4, !tbaa !111
  %64 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %8, i64 0, i32 1, i64 3, i64 1
  store float %61, ptr %64, align 4, !tbaa !111
  %65 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %8, i64 0, i32 3
  store float %20, ptr %65, align 4, !tbaa !111
  %66 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %8, i64 0, i32 3, i64 1
  store float %21, ptr %66, align 4, !tbaa !111
  %67 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %8, i64 0, i32 2
  %68 = fneg float %20
  store float %68, ptr %67, align 4, !tbaa !111
  %69 = fneg float %21
  %70 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %8, i64 0, i32 2, i64 1
  store float %69, ptr %70, align 4, !tbaa !111
  %71 = call ptr @BKE_tracking_marker_insert(ptr noundef %23, ptr noundef nonnull %8)
  tail call void @BLI_addtail(ptr noundef %1, ptr noundef %23) #19
  tail call void @BLI_uniquename(ptr noundef %1, ptr noundef %23, ptr noundef nonnull @.str.2, i8 noundef zeroext 46, i32 noundef 16, i32 noundef 64) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #19
  ret ptr %23
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_tracking_marker_insert(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !152
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %73, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %1, i64 0, i32 4
  %8 = load i32, ptr %7, align 4, !tbaa !150
  %9 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 10
  %10 = load ptr, ptr %9, align 8, !tbaa !38
  %11 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %10, i64 0, i32 4
  %12 = load i32, ptr %11, align 4, !tbaa !150
  %13 = icmp sgt i32 %12, %8
  br i1 %13, label %67, label %14

14:                                               ; preds = %6
  %15 = add nsw i32 %4, -1
  %16 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 9
  %17 = load i32, ptr %16, align 4, !tbaa !153
  %18 = icmp slt i32 %17, %4
  %19 = select i1 %18, i32 %17, i32 %15
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %10, i64 %20, i32 4
  %22 = load i32, ptr %21, align 4, !tbaa !150
  %23 = icmp sgt i32 %22, %8
  br i1 %23, label %28, label %24

24:                                               ; preds = %14
  %25 = sext i32 %4 to i64
  %26 = add i32 %19, 1
  %27 = tail call i32 @llvm.smax.i32(i32 %4, i32 %26)
  br label %30

28:                                               ; preds = %14
  %29 = icmp sgt i32 %19, -1
  br i1 %29, label %50, label %63

30:                                               ; preds = %40, %24
  %31 = phi i64 [ %20, %24 ], [ %41, %40 ]
  %32 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %10, i64 %31, i32 4
  %33 = load i32, ptr %32, align 4, !tbaa !150
  %34 = icmp sgt i32 %33, %8
  br i1 %34, label %43, label %35

35:                                               ; preds = %30
  %36 = icmp eq i32 %33, %8
  br i1 %36, label %37, label %40

37:                                               ; preds = %35
  %38 = trunc i64 %31 to i32
  store i32 %38, ptr %16, align 4, !tbaa !153
  %39 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %10, i64 %31
  br label %67

40:                                               ; preds = %35
  %41 = add nsw i64 %31, 1
  %42 = icmp slt i64 %41, %25
  br i1 %42, label %30, label %45, !llvm.loop !154

43:                                               ; preds = %30
  %44 = trunc i64 %31 to i32
  br label %45

45:                                               ; preds = %40, %43
  %46 = phi i32 [ %44, %43 ], [ %27, %40 ]
  %47 = sext i32 %46 to i64
  %48 = getelementptr %struct.MovieTrackingMarker, ptr %10, i64 %47
  %49 = getelementptr %struct.MovieTrackingMarker, ptr %48, i64 -1
  br label %67

50:                                               ; preds = %28, %60
  %51 = phi i32 [ %61, %60 ], [ %19, %28 ]
  %52 = zext nneg i32 %51 to i64
  %53 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %10, i64 %52, i32 4
  %54 = load i32, ptr %53, align 4, !tbaa !150
  %55 = icmp slt i32 %54, %8
  br i1 %55, label %63, label %56

56:                                               ; preds = %50
  %57 = icmp eq i32 %54, %8
  br i1 %57, label %58, label %60

58:                                               ; preds = %56
  store i32 %51, ptr %16, align 4, !tbaa !153
  %59 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %10, i64 %52
  br label %67

60:                                               ; preds = %56
  %61 = add nsw i32 %51, -1
  %62 = icmp sgt i32 %51, 0
  br i1 %62, label %50, label %63, !llvm.loop !155

63:                                               ; preds = %60, %50, %28
  %64 = phi i32 [ %19, %28 ], [ %51, %50 ], [ -1, %60 ]
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %10, i64 %65
  br label %67

67:                                               ; preds = %6, %37, %45, %58, %63
  %68 = phi ptr [ %39, %37 ], [ %49, %45 ], [ %59, %58 ], [ %66, %63 ], [ %10, %6 ]
  %69 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %68, i64 0, i32 4
  %70 = load i32, ptr %69, align 4, !tbaa !150
  %71 = icmp eq i32 %70, %8
  %72 = select i1 %71, ptr %68, ptr null
  br label %73

73:                                               ; preds = %67, %2
  %74 = phi ptr [ %72, %67 ], [ null, %2 ]
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 10
  %78 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %1, i64 0, i32 4
  %79 = sext i32 %4 to i64
  br label %81

80:                                               ; preds = %73
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %74, ptr noundef nonnull align 4 dereferenceable(64) %1, i64 64, i1 false), !tbaa.struct !156
  br label %126

81:                                               ; preds = %76, %84
  %82 = phi i64 [ %79, %76 ], [ %85, %84 ]
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %93, label %84

84:                                               ; preds = %81
  %85 = add nsw i64 %82, -1
  %86 = load ptr, ptr %77, align 8, !tbaa !38
  %87 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %86, i64 %85, i32 4
  %88 = load i32, ptr %87, align 4, !tbaa !150
  %89 = load i32, ptr %78, align 4, !tbaa !150
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %81, !llvm.loop !157

91:                                               ; preds = %84
  %92 = trunc i64 %82 to i32
  br label %93

93:                                               ; preds = %81, %91
  %94 = phi i32 [ %92, %91 ], [ 0, %81 ]
  %95 = phi i64 [ %85, %91 ], [ -1, %81 ]
  %96 = add nsw i32 %4, 1
  store i32 %96, ptr %3, align 8, !tbaa !152
  %97 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 10
  %98 = load ptr, ptr %97, align 8, !tbaa !38
  %99 = icmp eq ptr %98, null
  br i1 %99, label %105, label %100

100:                                              ; preds = %93
  %101 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !34
  %102 = sext i32 %96 to i64
  %103 = shl nsw i64 %102, 6
  %104 = tail call ptr %101(ptr noundef nonnull %98, i64 noundef %103, ptr noundef nonnull @__func__.BKE_tracking_marker_insert) #19
  br label %108

105:                                              ; preds = %93
  %106 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %107 = tail call ptr %106(i64 noundef 64, ptr noundef nonnull @.str.8) #19
  br label %108

108:                                              ; preds = %105, %100
  %109 = phi ptr [ %107, %105 ], [ %104, %100 ]
  store ptr %109, ptr %97, align 8, !tbaa !38
  %110 = shl i64 %95, 32
  %111 = ashr exact i64 %110, 32
  %112 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %109, i64 %111
  %113 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %112, i64 2
  %114 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %112, i64 1
  %115 = load i32, ptr %3, align 8, !tbaa !152
  %116 = xor i32 %94, -1
  %117 = add i32 %115, %116
  %118 = sext i32 %117 to i64
  %119 = shl nsw i64 %118, 6
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %113, ptr nonnull align 4 %114, i64 %119, i1 false)
  %120 = load ptr, ptr %97, align 8, !tbaa !38
  %121 = sext i32 %94 to i64
  %122 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %120, i64 %121
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %122, ptr noundef nonnull align 4 dereferenceable(64) %1, i64 64, i1 false), !tbaa.struct !156
  %123 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 9
  store i32 %94, ptr %123, align 4, !tbaa !153
  %124 = load ptr, ptr %97, align 8, !tbaa !38
  %125 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %124, i64 %121
  br label %126

126:                                              ; preds = %108, %80
  %127 = phi ptr [ %74, %80 ], [ %125, %108 ]
  ret ptr %127
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

declare void @BLI_uniquename(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_tracking_track_flag_set(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 {
  %4 = icmp eq i32 %1, -1
  br i1 %4, label %26, label %5

5:                                                ; preds = %3
  %6 = and i32 %1, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 13
  %10 = load i32, ptr %9, align 8, !tbaa !122
  %11 = or i32 %10, %2
  store i32 %11, ptr %9, align 8, !tbaa !122
  br label %12

12:                                               ; preds = %8, %5
  %13 = and i32 %1, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 14
  %17 = load i32, ptr %16, align 4, !tbaa !123
  %18 = or i32 %17, %2
  store i32 %18, ptr %16, align 4, !tbaa !123
  br label %19

19:                                               ; preds = %15, %12
  %20 = and i32 %1, 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 15
  %24 = load i32, ptr %23, align 8, !tbaa !124
  %25 = or i32 %24, %2
  store i32 %25, ptr %23, align 8, !tbaa !124
  br label %26

26:                                               ; preds = %3, %22, %19
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_tracking_track_flag_clear(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 {
  %4 = icmp eq i32 %1, -1
  br i1 %4, label %29, label %5

5:                                                ; preds = %3
  %6 = and i32 %1, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %5
  %9 = xor i32 %2, -1
  %10 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 13
  %11 = load i32, ptr %10, align 8, !tbaa !122
  %12 = and i32 %11, %9
  store i32 %12, ptr %10, align 8, !tbaa !122
  br label %13

13:                                               ; preds = %8, %5
  %14 = and i32 %1, 2
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %13
  %17 = xor i32 %2, -1
  %18 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 14
  %19 = load i32, ptr %18, align 4, !tbaa !123
  %20 = and i32 %19, %17
  store i32 %20, ptr %18, align 4, !tbaa !123
  br label %21

21:                                               ; preds = %16, %13
  %22 = and i32 %1, 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %21
  %25 = xor i32 %2, -1
  %26 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 15
  %27 = load i32, ptr %26, align 8, !tbaa !124
  %28 = and i32 %27, %25
  store i32 %28, ptr %26, align 8, !tbaa !124
  br label %29

29:                                               ; preds = %3, %24, %21
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: write) uwtable
define dso_local zeroext i8 @BKE_tracking_track_has_marker_at_frame(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !152
  %5 = icmp ne i32 %4, 0
  tail call void @llvm.assume(i1 %5)
  %6 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !38
  %8 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %7, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !150
  %10 = icmp sgt i32 %9, %1
  br i1 %10, label %68, label %11

11:                                               ; preds = %2
  %12 = add nsw i32 %4, -1
  %13 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 9
  %14 = load i32, ptr %13, align 4, !tbaa !153
  %15 = icmp slt i32 %14, %4
  %16 = select i1 %15, i32 %14, i32 %12
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %7, i64 %17, i32 4
  %19 = load i32, ptr %18, align 4, !tbaa !150
  %20 = icmp sgt i32 %19, %1
  br i1 %20, label %25, label %21

21:                                               ; preds = %11
  %22 = sext i32 %4 to i64
  %23 = add i32 %16, 1
  %24 = tail call i32 @llvm.smax.i32(i32 %4, i32 %23)
  br label %29

25:                                               ; preds = %11
  %26 = icmp sgt i32 %16, -1
  br i1 %26, label %27, label %64

27:                                               ; preds = %25
  %28 = zext nneg i32 %16 to i64
  br label %49

29:                                               ; preds = %39, %21
  %30 = phi i64 [ %17, %21 ], [ %40, %39 ]
  %31 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %7, i64 %30, i32 4
  %32 = load i32, ptr %31, align 4, !tbaa !150
  %33 = icmp sgt i32 %32, %1
  br i1 %33, label %42, label %34

34:                                               ; preds = %29
  %35 = icmp eq i32 %32, %1
  br i1 %35, label %36, label %39

36:                                               ; preds = %34
  %37 = trunc i64 %30 to i32
  store i32 %37, ptr %13, align 4, !tbaa !153
  %38 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %7, i64 %30
  br label %68

39:                                               ; preds = %34
  %40 = add nsw i64 %30, 1
  %41 = icmp slt i64 %40, %22
  br i1 %41, label %29, label %44, !llvm.loop !154

42:                                               ; preds = %29
  %43 = trunc i64 %30 to i32
  br label %44

44:                                               ; preds = %39, %42
  %45 = phi i32 [ %43, %42 ], [ %24, %39 ]
  %46 = sext i32 %45 to i64
  %47 = getelementptr %struct.MovieTrackingMarker, ptr %7, i64 %46
  %48 = getelementptr %struct.MovieTrackingMarker, ptr %47, i64 -1
  br label %68

49:                                               ; preds = %27, %59
  %50 = phi i64 [ %28, %27 ], [ %60, %59 ]
  %51 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %7, i64 %50, i32 4
  %52 = load i32, ptr %51, align 4, !tbaa !150
  %53 = icmp slt i32 %52, %1
  br i1 %53, label %62, label %54

54:                                               ; preds = %49
  %55 = icmp eq i32 %52, %1
  br i1 %55, label %56, label %59

56:                                               ; preds = %54
  %57 = trunc i64 %50 to i32
  store i32 %57, ptr %13, align 4, !tbaa !153
  %58 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %7, i64 %50
  br label %68

59:                                               ; preds = %54
  %60 = add nsw i64 %50, -1
  %61 = icmp sgt i64 %50, 0
  br i1 %61, label %49, label %64, !llvm.loop !155

62:                                               ; preds = %49
  %63 = trunc i64 %50 to i32
  br label %64

64:                                               ; preds = %62, %59, %25
  %65 = phi i32 [ %16, %25 ], [ %63, %62 ], [ -1, %59 ]
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %7, i64 %66
  br label %68

68:                                               ; preds = %2, %36, %44, %56, %64
  %69 = phi ptr [ %38, %36 ], [ %48, %44 ], [ %58, %56 ], [ %67, %64 ], [ %7, %2 ]
  %70 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %69, i64 0, i32 4
  %71 = load i32, ptr %70, align 4, !tbaa !150
  %72 = icmp eq i32 %71, %1
  %73 = icmp ne ptr %69, null
  %74 = and i1 %73, %72
  %75 = zext i1 %74 to i8
  ret i8 %75
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: write) uwtable
define dso_local ptr @BKE_tracking_marker_get_exact(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !152
  %5 = icmp ne i32 %4, 0
  tail call void @llvm.assume(i1 %5)
  %6 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !38
  %8 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %7, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !150
  %10 = icmp sgt i32 %9, %1
  br i1 %10, label %68, label %11

11:                                               ; preds = %2
  %12 = add nsw i32 %4, -1
  %13 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 9
  %14 = load i32, ptr %13, align 4, !tbaa !153
  %15 = icmp slt i32 %14, %4
  %16 = select i1 %15, i32 %14, i32 %12
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %7, i64 %17, i32 4
  %19 = load i32, ptr %18, align 4, !tbaa !150
  %20 = icmp sgt i32 %19, %1
  br i1 %20, label %25, label %21

21:                                               ; preds = %11
  %22 = sext i32 %4 to i64
  %23 = add i32 %16, 1
  %24 = tail call i32 @llvm.smax.i32(i32 %4, i32 %23)
  br label %29

25:                                               ; preds = %11
  %26 = icmp sgt i32 %16, -1
  br i1 %26, label %27, label %64

27:                                               ; preds = %25
  %28 = zext nneg i32 %16 to i64
  br label %49

29:                                               ; preds = %39, %21
  %30 = phi i64 [ %17, %21 ], [ %40, %39 ]
  %31 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %7, i64 %30, i32 4
  %32 = load i32, ptr %31, align 4, !tbaa !150
  %33 = icmp sgt i32 %32, %1
  br i1 %33, label %42, label %34

34:                                               ; preds = %29
  %35 = icmp eq i32 %32, %1
  br i1 %35, label %36, label %39

36:                                               ; preds = %34
  %37 = trunc i64 %30 to i32
  store i32 %37, ptr %13, align 4, !tbaa !153
  %38 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %7, i64 %30
  br label %68

39:                                               ; preds = %34
  %40 = add nsw i64 %30, 1
  %41 = icmp slt i64 %40, %22
  br i1 %41, label %29, label %44, !llvm.loop !154

42:                                               ; preds = %29
  %43 = trunc i64 %30 to i32
  br label %44

44:                                               ; preds = %39, %42
  %45 = phi i32 [ %43, %42 ], [ %24, %39 ]
  %46 = sext i32 %45 to i64
  %47 = getelementptr %struct.MovieTrackingMarker, ptr %7, i64 %46
  %48 = getelementptr %struct.MovieTrackingMarker, ptr %47, i64 -1
  br label %68

49:                                               ; preds = %27, %59
  %50 = phi i64 [ %28, %27 ], [ %60, %59 ]
  %51 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %7, i64 %50, i32 4
  %52 = load i32, ptr %51, align 4, !tbaa !150
  %53 = icmp slt i32 %52, %1
  br i1 %53, label %62, label %54

54:                                               ; preds = %49
  %55 = icmp eq i32 %52, %1
  br i1 %55, label %56, label %59

56:                                               ; preds = %54
  %57 = trunc i64 %50 to i32
  store i32 %57, ptr %13, align 4, !tbaa !153
  %58 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %7, i64 %50
  br label %68

59:                                               ; preds = %54
  %60 = add nsw i64 %50, -1
  %61 = icmp sgt i64 %50, 0
  br i1 %61, label %49, label %64, !llvm.loop !155

62:                                               ; preds = %49
  %63 = trunc i64 %50 to i32
  br label %64

64:                                               ; preds = %62, %59, %25
  %65 = phi i32 [ %16, %25 ], [ %63, %62 ], [ -1, %59 ]
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %7, i64 %66
  br label %68

68:                                               ; preds = %2, %36, %44, %56, %64
  %69 = phi ptr [ %38, %36 ], [ %48, %44 ], [ %58, %56 ], [ %67, %64 ], [ %7, %2 ]
  %70 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %69, i64 0, i32 4
  %71 = load i32, ptr %70, align 4, !tbaa !150
  %72 = icmp eq i32 %71, %1
  %73 = select i1 %72, ptr %69, ptr null
  ret ptr %73
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: write) uwtable
define dso_local zeroext i8 @BKE_tracking_track_has_enabled_marker_at_frame(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !152
  %5 = icmp ne i32 %4, 0
  tail call void @llvm.assume(i1 %5)
  %6 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !38
  %8 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %7, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !150
  %10 = icmp sgt i32 %9, %1
  br i1 %10, label %68, label %11

11:                                               ; preds = %2
  %12 = add nsw i32 %4, -1
  %13 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 9
  %14 = load i32, ptr %13, align 4, !tbaa !153
  %15 = icmp slt i32 %14, %4
  %16 = select i1 %15, i32 %14, i32 %12
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %7, i64 %17, i32 4
  %19 = load i32, ptr %18, align 4, !tbaa !150
  %20 = icmp sgt i32 %19, %1
  br i1 %20, label %25, label %21

21:                                               ; preds = %11
  %22 = sext i32 %4 to i64
  %23 = add i32 %16, 1
  %24 = tail call i32 @llvm.smax.i32(i32 %4, i32 %23)
  br label %29

25:                                               ; preds = %11
  %26 = icmp sgt i32 %16, -1
  br i1 %26, label %27, label %64

27:                                               ; preds = %25
  %28 = zext nneg i32 %16 to i64
  br label %49

29:                                               ; preds = %39, %21
  %30 = phi i64 [ %17, %21 ], [ %40, %39 ]
  %31 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %7, i64 %30, i32 4
  %32 = load i32, ptr %31, align 4, !tbaa !150
  %33 = icmp sgt i32 %32, %1
  br i1 %33, label %42, label %34

34:                                               ; preds = %29
  %35 = icmp eq i32 %32, %1
  br i1 %35, label %36, label %39

36:                                               ; preds = %34
  %37 = trunc i64 %30 to i32
  store i32 %37, ptr %13, align 4, !tbaa !153
  %38 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %7, i64 %30
  br label %68

39:                                               ; preds = %34
  %40 = add nsw i64 %30, 1
  %41 = icmp slt i64 %40, %22
  br i1 %41, label %29, label %44, !llvm.loop !154

42:                                               ; preds = %29
  %43 = trunc i64 %30 to i32
  br label %44

44:                                               ; preds = %39, %42
  %45 = phi i32 [ %43, %42 ], [ %24, %39 ]
  %46 = sext i32 %45 to i64
  %47 = getelementptr %struct.MovieTrackingMarker, ptr %7, i64 %46
  %48 = getelementptr %struct.MovieTrackingMarker, ptr %47, i64 -1
  br label %68

49:                                               ; preds = %27, %59
  %50 = phi i64 [ %28, %27 ], [ %60, %59 ]
  %51 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %7, i64 %50, i32 4
  %52 = load i32, ptr %51, align 4, !tbaa !150
  %53 = icmp slt i32 %52, %1
  br i1 %53, label %62, label %54

54:                                               ; preds = %49
  %55 = icmp eq i32 %52, %1
  br i1 %55, label %56, label %59

56:                                               ; preds = %54
  %57 = trunc i64 %50 to i32
  store i32 %57, ptr %13, align 4, !tbaa !153
  %58 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %7, i64 %50
  br label %68

59:                                               ; preds = %54
  %60 = add nsw i64 %50, -1
  %61 = icmp sgt i64 %50, 0
  br i1 %61, label %49, label %64, !llvm.loop !155

62:                                               ; preds = %49
  %63 = trunc i64 %50 to i32
  br label %64

64:                                               ; preds = %62, %59, %25
  %65 = phi i32 [ %16, %25 ], [ %63, %62 ], [ -1, %59 ]
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %7, i64 %66
  br label %68

68:                                               ; preds = %2, %36, %44, %56, %64
  %69 = phi ptr [ %38, %36 ], [ %48, %44 ], [ %58, %56 ], [ %67, %64 ], [ %7, %2 ]
  %70 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %69, i64 0, i32 4
  %71 = load i32, ptr %70, align 4, !tbaa !150
  %72 = icmp ne i32 %71, %1
  %73 = icmp eq ptr %69, null
  %74 = or i1 %73, %72
  br i1 %74, label %81, label %75

75:                                               ; preds = %68
  %76 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %69, i64 0, i32 5
  %77 = load i32, ptr %76, align 4, !tbaa !158
  %78 = trunc i32 %77 to i8
  %79 = and i8 %78, 1
  %80 = xor i8 %79, 1
  br label %81

81:                                               ; preds = %75, %68
  %82 = phi i8 [ 0, %68 ], [ %80, %75 ]
  ret i8 %82
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_tracking_track_path_clear(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.MovieTrackingMarker, align 4
  switch i32 %2, label %148 [
    i32 1, label %5
    i32 0, label %40
    i32 2, label %76
  ]

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 8
  %7 = load i32, ptr %6, align 8, !tbaa !152
  %8 = icmp sgt i32 %7, 1
  br i1 %8, label %9, label %28

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !38
  %12 = zext nneg i32 %7 to i64
  br label %13

13:                                               ; preds = %9, %25
  %14 = phi i64 [ 1, %9 ], [ %26, %25 ]
  %15 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %11, i64 %14, i32 4
  %16 = load i32, ptr %15, align 4, !tbaa !150
  %17 = icmp sgt i32 %16, %1
  br i1 %17, label %18, label %25

18:                                               ; preds = %13
  %19 = trunc i64 %14 to i32
  %20 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 8
  %21 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 10
  store i32 %19, ptr %20, align 8, !tbaa !152
  %22 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !34
  %23 = shl nuw nsw i64 %14, 6
  %24 = tail call ptr %22(ptr noundef %11, i64 noundef %23, ptr noundef nonnull @__func__.BKE_tracking_track_path_clear) #19
  store ptr %24, ptr %21, align 8, !tbaa !38
  br label %30

25:                                               ; preds = %13
  %26 = add nuw nsw i64 %14, 1
  %27 = icmp eq i64 %26, %12
  br i1 %27, label %28, label %13, !llvm.loop !159

28:                                               ; preds = %25, %5
  %29 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 8
  br label %30

30:                                               ; preds = %28, %18
  %31 = phi ptr [ %29, %28 ], [ %20, %18 ]
  %32 = load i32, ptr %31, align 8, !tbaa !152
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %148, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 10
  %36 = load ptr, ptr %35, align 8, !tbaa !38
  %37 = sext i32 %32 to i64
  %38 = getelementptr %struct.MovieTrackingMarker, ptr %36, i64 %37
  %39 = getelementptr %struct.MovieTrackingMarker, ptr %38, i64 -1
  tail call void @tracking_marker_insert_disabled(ptr noundef %0, ptr noundef %39, i8 noundef zeroext 0, i8 noundef zeroext 1) #19
  br label %148

40:                                               ; preds = %3
  %41 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 8
  %42 = load i32, ptr %41, align 8, !tbaa !152
  %43 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 10
  %44 = zext i32 %42 to i64
  br label %45

45:                                               ; preds = %49, %40
  %46 = phi i64 [ %51, %49 ], [ %44, %40 ]
  %47 = trunc i64 %46 to i32
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %70

49:                                               ; preds = %45
  %50 = add nsw i64 %46, -1
  %51 = add nsw i64 %46, -1
  %52 = load ptr, ptr %43, align 8, !tbaa !38
  %53 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %52, i64 %50, i32 4
  %54 = load i32, ptr %53, align 4, !tbaa !150
  %55 = icmp sgt i32 %54, %1
  br i1 %55, label %45, label %56, !llvm.loop !160

56:                                               ; preds = %49
  %57 = trunc i64 %50 to i32
  %58 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 10
  %59 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %52, i64 %50
  %60 = sub nsw i32 %42, %57
  %61 = sext i32 %60 to i64
  %62 = shl nsw i64 %61, 6
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %52, ptr align 4 %59, i64 %62, i1 false)
  %63 = load i32, ptr %41, align 8, !tbaa !152
  %64 = sub nsw i32 %63, %57
  store i32 %64, ptr %41, align 8, !tbaa !152
  %65 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !34
  %66 = load ptr, ptr %58, align 8, !tbaa !38
  %67 = sext i32 %64 to i64
  %68 = shl nsw i64 %67, 6
  %69 = tail call ptr %65(ptr noundef %66, i64 noundef %68, ptr noundef nonnull @__func__.BKE_tracking_track_path_clear) #19
  store ptr %69, ptr %58, align 8, !tbaa !38
  br label %70

70:                                               ; preds = %45, %56
  %71 = load i32, ptr %41, align 8, !tbaa !152
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %148, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 10
  %75 = load ptr, ptr %74, align 8, !tbaa !38
  tail call void @tracking_marker_insert_disabled(ptr noundef %0, ptr noundef %75, i8 noundef zeroext 1, i8 noundef zeroext 1) #19
  br label %148

76:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #19
  %77 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 8
  %78 = load i32, ptr %77, align 8, !tbaa !152
  %79 = icmp ne i32 %78, 0
  tail call void @llvm.assume(i1 %79)
  %80 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 10
  %81 = load ptr, ptr %80, align 8, !tbaa !38
  %82 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %81, i64 0, i32 4
  %83 = load i32, ptr %82, align 4, !tbaa !150
  %84 = icmp sgt i32 %83, %1
  br i1 %84, label %142, label %85

85:                                               ; preds = %76
  %86 = add nsw i32 %78, -1
  %87 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 9
  %88 = load i32, ptr %87, align 4, !tbaa !153
  %89 = icmp slt i32 %88, %78
  %90 = select i1 %89, i32 %88, i32 %86
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %81, i64 %91, i32 4
  %93 = load i32, ptr %92, align 4, !tbaa !150
  %94 = icmp sgt i32 %93, %1
  br i1 %94, label %99, label %95

95:                                               ; preds = %85
  %96 = sext i32 %78 to i64
  %97 = add i32 %90, 1
  %98 = tail call i32 @llvm.smax.i32(i32 %78, i32 %97)
  br label %103

99:                                               ; preds = %85
  %100 = icmp sgt i32 %90, -1
  br i1 %100, label %101, label %138

101:                                              ; preds = %99
  %102 = zext nneg i32 %90 to i64
  br label %123

103:                                              ; preds = %113, %95
  %104 = phi i64 [ %91, %95 ], [ %114, %113 ]
  %105 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %81, i64 %104, i32 4
  %106 = load i32, ptr %105, align 4, !tbaa !150
  %107 = icmp sgt i32 %106, %1
  br i1 %107, label %116, label %108

108:                                              ; preds = %103
  %109 = icmp eq i32 %106, %1
  br i1 %109, label %110, label %113

110:                                              ; preds = %108
  %111 = trunc i64 %104 to i32
  store i32 %111, ptr %87, align 4, !tbaa !153
  %112 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %81, i64 %104
  br label %142

113:                                              ; preds = %108
  %114 = add nsw i64 %104, 1
  %115 = icmp slt i64 %114, %96
  br i1 %115, label %103, label %118, !llvm.loop !154

116:                                              ; preds = %103
  %117 = trunc i64 %104 to i32
  br label %118

118:                                              ; preds = %113, %116
  %119 = phi i32 [ %117, %116 ], [ %98, %113 ]
  %120 = sext i32 %119 to i64
  %121 = getelementptr %struct.MovieTrackingMarker, ptr %81, i64 %120
  %122 = getelementptr %struct.MovieTrackingMarker, ptr %121, i64 -1
  br label %142

123:                                              ; preds = %101, %133
  %124 = phi i64 [ %102, %101 ], [ %134, %133 ]
  %125 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %81, i64 %124, i32 4
  %126 = load i32, ptr %125, align 4, !tbaa !150
  %127 = icmp slt i32 %126, %1
  br i1 %127, label %136, label %128

128:                                              ; preds = %123
  %129 = icmp eq i32 %126, %1
  br i1 %129, label %130, label %133

130:                                              ; preds = %128
  %131 = trunc i64 %124 to i32
  store i32 %131, ptr %87, align 4, !tbaa !153
  %132 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %81, i64 %124
  br label %142

133:                                              ; preds = %128
  %134 = add nsw i64 %124, -1
  %135 = icmp sgt i64 %124, 0
  br i1 %135, label %123, label %138, !llvm.loop !155

136:                                              ; preds = %123
  %137 = trunc i64 %124 to i32
  br label %138

138:                                              ; preds = %136, %133, %99
  %139 = phi i32 [ %90, %99 ], [ %137, %136 ], [ -1, %133 ]
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %81, i64 %140
  br label %142

142:                                              ; preds = %76, %110, %118, %130, %138
  %143 = phi ptr [ %112, %110 ], [ %122, %118 ], [ %132, %130 ], [ %141, %138 ], [ %81, %76 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %4, ptr noundef nonnull align 4 dereferenceable(64) %143, i64 64, i1 false), !tbaa.struct !156
  %144 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %145 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 10
  %146 = load ptr, ptr %145, align 8, !tbaa !38
  tail call void %144(ptr noundef %146) #19
  store ptr null, ptr %145, align 8, !tbaa !38
  store i32 0, ptr %77, align 8, !tbaa !152
  %147 = call ptr @BKE_tracking_marker_insert(ptr noundef %0, ptr noundef nonnull %4)
  call void @tracking_marker_insert_disabled(ptr noundef %0, ptr noundef nonnull %4, i8 noundef zeroext 1, i8 noundef zeroext 1) #19
  call void @tracking_marker_insert_disabled(ptr noundef %0, ptr noundef nonnull %4, i8 noundef zeroext 0, i8 noundef zeroext 1) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #19
  br label %148

148:                                              ; preds = %3, %73, %70, %142, %30, %34
  ret void
}

declare void @tracking_marker_insert_disabled(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #9

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_tracking_marker_get(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #11 {
  %3 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !152
  %5 = add nsw i32 %4, -1
  %6 = icmp eq i32 %4, 0
  br i1 %6, label %66, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 10
  %9 = load ptr, ptr %8, align 8, !tbaa !38
  %10 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %9, i64 0, i32 4
  %11 = load i32, ptr %10, align 4, !tbaa !150
  %12 = icmp sgt i32 %11, %1
  br i1 %12, label %66, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 9
  %15 = load i32, ptr %14, align 4, !tbaa !153
  %16 = icmp slt i32 %15, %4
  %17 = select i1 %16, i32 %15, i32 %5
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %9, i64 %18, i32 4
  %20 = load i32, ptr %19, align 4, !tbaa !150
  %21 = icmp sgt i32 %20, %1
  br i1 %21, label %27, label %22

22:                                               ; preds = %13
  %23 = sext i32 %17 to i64
  %24 = sext i32 %4 to i64
  %25 = add i32 %17, 1
  %26 = tail call i32 @llvm.smax.i32(i32 %4, i32 %25)
  br label %29

27:                                               ; preds = %13
  %28 = icmp sgt i32 %17, -1
  br i1 %28, label %49, label %62

29:                                               ; preds = %22, %39
  %30 = phi i64 [ %23, %22 ], [ %40, %39 ]
  %31 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %9, i64 %30, i32 4
  %32 = load i32, ptr %31, align 4, !tbaa !150
  %33 = icmp sgt i32 %32, %1
  br i1 %33, label %42, label %34

34:                                               ; preds = %29
  %35 = icmp eq i32 %32, %1
  br i1 %35, label %36, label %39

36:                                               ; preds = %34
  %37 = trunc i64 %30 to i32
  store i32 %37, ptr %14, align 4, !tbaa !153
  %38 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %9, i64 %30
  br label %66

39:                                               ; preds = %34
  %40 = add nsw i64 %30, 1
  %41 = icmp slt i64 %40, %24
  br i1 %41, label %29, label %44, !llvm.loop !154

42:                                               ; preds = %29
  %43 = trunc i64 %30 to i32
  br label %44

44:                                               ; preds = %39, %42
  %45 = phi i32 [ %43, %42 ], [ %26, %39 ]
  %46 = sext i32 %45 to i64
  %47 = getelementptr %struct.MovieTrackingMarker, ptr %9, i64 %46
  %48 = getelementptr %struct.MovieTrackingMarker, ptr %47, i64 -1
  br label %66

49:                                               ; preds = %27, %59
  %50 = phi i32 [ %60, %59 ], [ %17, %27 ]
  %51 = zext nneg i32 %50 to i64
  %52 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %9, i64 %51, i32 4
  %53 = load i32, ptr %52, align 4, !tbaa !150
  %54 = icmp slt i32 %53, %1
  br i1 %54, label %62, label %55

55:                                               ; preds = %49
  %56 = icmp eq i32 %53, %1
  br i1 %56, label %57, label %59

57:                                               ; preds = %55
  store i32 %50, ptr %14, align 4, !tbaa !153
  %58 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %9, i64 %51
  br label %66

59:                                               ; preds = %55
  %60 = add nsw i32 %50, -1
  %61 = icmp sgt i32 %50, 0
  br i1 %61, label %49, label %62, !llvm.loop !155

62:                                               ; preds = %49, %59, %27
  %63 = phi i32 [ %17, %27 ], [ %50, %49 ], [ -1, %59 ]
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %9, i64 %64
  br label %66

66:                                               ; preds = %7, %2, %62, %57, %44, %36
  %67 = phi ptr [ %38, %36 ], [ %48, %44 ], [ %58, %57 ], [ %65, %62 ], [ null, %2 ], [ %9, %7 ]
  ret ptr %67
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_tracking_tracks_join(ptr nocapture noundef writeonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %1, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !152
  %6 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %2, i64 0, i32 8
  %7 = load i32, ptr %6, align 8, !tbaa !152
  %8 = add nsw i32 %7, %5
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %10 = sext i32 %8 to i64
  %11 = shl nsw i64 %10, 6
  %12 = tail call ptr %9(i64 noundef %11, ptr noundef nonnull @.str.4) #19
  %13 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %2, i64 0, i32 10
  %14 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %1, i64 0, i32 10
  %15 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %2, i64 0, i32 10
  %16 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %1, i64 0, i32 10
  br label %17

17:                                               ; preds = %180, %3
  %18 = phi i32 [ 0, %3 ], [ %181, %180 ]
  %19 = phi i32 [ 0, %3 ], [ %182, %180 ]
  %20 = phi i32 [ 0, %3 ], [ %184, %180 ]
  %21 = load i32, ptr %6, align 8, !tbaa !152
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = load i32, ptr %4, align 8, !tbaa !152
  %25 = icmp slt i32 %18, %24
  br i1 %25, label %26, label %185

26:                                               ; preds = %17, %23
  %27 = load i32, ptr %4, align 8, !tbaa !152
  %28 = icmp slt i32 %18, %27
  br i1 %28, label %36, label %29

29:                                               ; preds = %26
  %30 = sext i32 %20 to i64
  %31 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %12, i64 %30
  %32 = load ptr, ptr %13, align 8, !tbaa !38
  %33 = add nsw i32 %19, 1
  %34 = sext i32 %19 to i64
  %35 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %32, i64 %34
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %31, ptr noundef nonnull align 4 dereferenceable(64) %35, i64 64, i1 false), !tbaa.struct !156
  br label %180

36:                                               ; preds = %26
  br i1 %22, label %44, label %37

37:                                               ; preds = %36
  %38 = sext i32 %20 to i64
  %39 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %12, i64 %38
  %40 = load ptr, ptr %14, align 8, !tbaa !38
  %41 = add nsw i32 %18, 1
  %42 = sext i32 %18 to i64
  %43 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %40, i64 %42
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %39, ptr noundef nonnull align 4 dereferenceable(64) %43, i64 64, i1 false), !tbaa.struct !156
  br label %180

44:                                               ; preds = %36
  %45 = load ptr, ptr %15, align 8, !tbaa !38
  %46 = sext i32 %19 to i64
  %47 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %45, i64 %46
  %48 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %45, i64 %46, i32 4
  %49 = load i32, ptr %48, align 4, !tbaa !150
  %50 = load ptr, ptr %16, align 8, !tbaa !38
  %51 = sext i32 %18 to i64
  %52 = getelementptr %struct.MovieTrackingMarker, ptr %50, i64 %51
  %53 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %50, i64 %51, i32 4
  %54 = load i32, ptr %53, align 4, !tbaa !150
  %55 = icmp slt i32 %49, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %44
  %57 = sext i32 %20 to i64
  %58 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %12, i64 %57
  %59 = add nsw i32 %19, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %58, ptr noundef nonnull align 4 dereferenceable(64) %47, i64 64, i1 false), !tbaa.struct !156
  br label %180

60:                                               ; preds = %44
  %61 = icmp sgt i32 %49, %54
  br i1 %61, label %62, label %66

62:                                               ; preds = %60
  %63 = sext i32 %20 to i64
  %64 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %12, i64 %63
  %65 = add nsw i32 %18, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %64, ptr noundef nonnull align 4 dereferenceable(64) %52, i64 64, i1 false), !tbaa.struct !156
  br label %180

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %45, i64 %46, i32 5
  %68 = load i32, ptr %67, align 4, !tbaa !158
  %69 = and i32 %68, 1
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %171

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %50, i64 %51, i32 5
  %73 = load i32, ptr %72, align 4, !tbaa !158
  %74 = and i32 %73, 1
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %168

76:                                               ; preds = %71
  %77 = icmp eq i32 %18, 0
  br i1 %77, label %88, label %78

78:                                               ; preds = %76
  %79 = getelementptr %struct.MovieTrackingMarker, ptr %52, i64 -1, i32 5
  %80 = load i32, ptr %79, align 4, !tbaa !158
  %81 = and i32 %80, 1
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = getelementptr %struct.MovieTrackingMarker, ptr %52, i64 -1, i32 4
  %85 = load i32, ptr %84, align 4, !tbaa !150
  %86 = add nsw i32 %49, -1
  %87 = icmp ne i32 %85, %86
  br label %88

88:                                               ; preds = %83, %78, %76
  %89 = phi i1 [ true, %78 ], [ true, %76 ], [ %87, %83 ]
  %90 = icmp slt i32 %19, %21
  %91 = icmp slt i32 %18, %27
  %92 = select i1 %90, i1 %91, i1 false
  br i1 %92, label %93, label %127

93:                                               ; preds = %88
  %94 = sext i32 %21 to i64
  %95 = sext i32 %18 to i64
  %96 = sext i32 %27 to i64
  br label %97

97:                                               ; preds = %93, %119
  %98 = phi i64 [ %95, %93 ], [ %123, %119 ]
  %99 = phi i64 [ %46, %93 ], [ %122, %119 ]
  %100 = phi i32 [ %49, %93 ], [ %120, %119 ]
  %101 = phi i32 [ 0, %93 ], [ %121, %119 ]
  %102 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %45, i64 %99, i32 5
  %103 = load i32, ptr %102, align 4, !tbaa !158
  %104 = and i32 %103, 1
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %127

106:                                              ; preds = %97
  %107 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %50, i64 %98, i32 5
  %108 = load i32, ptr %107, align 4, !tbaa !158
  %109 = and i32 %108, 1
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %127

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %45, i64 %99, i32 4
  %113 = load i32, ptr %112, align 4, !tbaa !150
  %114 = icmp eq i32 %113, %100
  br i1 %114, label %115, label %127

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %50, i64 %98, i32 4
  %117 = load i32, ptr %116, align 4, !tbaa !150
  %118 = icmp eq i32 %117, %100
  br i1 %118, label %119, label %127

119:                                              ; preds = %115
  %120 = add nsw i32 %100, 1
  %121 = add nuw nsw i32 %101, 1
  %122 = add nsw i64 %99, 1
  %123 = add nsw i64 %98, 1
  %124 = icmp slt i64 %122, %94
  %125 = icmp slt i64 %123, %96
  %126 = select i1 %124, i1 %125, i1 false
  br i1 %126, label %97, label %127, !llvm.loop !161

127:                                              ; preds = %106, %97, %115, %111, %119, %88
  %128 = phi i32 [ 0, %88 ], [ %101, %106 ], [ %101, %97 ], [ %101, %115 ], [ %101, %111 ], [ %121, %119 ]
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %161, label %130

130:                                              ; preds = %127
  %131 = icmp eq i32 %128, 1
  %132 = add nsw i32 %128, -1
  %133 = sitofp i32 %132 to float
  %134 = fdiv float 1.000000e+00, %133
  %135 = sext i32 %20 to i64
  %136 = sext i32 %18 to i64
  br label %137

137:                                              ; preds = %130, %137
  %138 = phi i64 [ %136, %130 ], [ %153, %137 ]
  %139 = phi i64 [ %46, %130 ], [ %152, %137 ]
  %140 = phi i64 [ %135, %130 ], [ %154, %137 ]
  %141 = phi i32 [ 0, %130 ], [ %155, %137 ]
  %142 = sitofp i32 %141 to float
  %143 = fmul float %134, %142
  %144 = select i1 %131, float 5.000000e-01, float %143
  %145 = fsub float 1.000000e+00, %144
  %146 = select i1 %89, float %145, float %144
  %147 = load ptr, ptr %15, align 8, !tbaa !38
  %148 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %147, i64 %139
  %149 = load ptr, ptr %16, align 8, !tbaa !38
  %150 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %149, i64 %138
  %151 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %12, i64 %140
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %151, ptr noundef nonnull align 4 dereferenceable(64) %150, i64 64, i1 false), !tbaa.struct !156
  tail call void @interp_v2_v2v2(ptr noundef %151, ptr noundef %150, ptr noundef %148, float noundef %146) #19
  %152 = add nsw i64 %139, 1
  %153 = add nsw i64 %138, 1
  %154 = add nsw i64 %140, 1
  %155 = add nuw i32 %141, 1
  %156 = icmp eq i32 %155, %128
  br i1 %156, label %157, label %137, !llvm.loop !162

157:                                              ; preds = %137
  %158 = trunc i64 %153 to i32
  %159 = trunc i64 %152 to i32
  %160 = trunc i64 %154 to i32
  br label %161

161:                                              ; preds = %157, %127
  %162 = phi i32 [ %18, %127 ], [ %158, %157 ]
  %163 = phi i32 [ %19, %127 ], [ %159, %157 ]
  %164 = phi i32 [ %20, %127 ], [ %160, %157 ]
  %165 = add nsw i32 %163, -1
  %166 = add nsw i32 %162, -1
  %167 = add nsw i32 %164, -1
  br label %174

168:                                              ; preds = %71
  %169 = sext i32 %20 to i64
  %170 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %12, i64 %169
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %170, ptr noundef nonnull align 4 dereferenceable(64) %47, i64 64, i1 false), !tbaa.struct !156
  br label %174

171:                                              ; preds = %66
  %172 = sext i32 %20 to i64
  %173 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %12, i64 %172
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %173, ptr noundef nonnull align 4 dereferenceable(64) %52, i64 64, i1 false), !tbaa.struct !156
  br label %174

174:                                              ; preds = %161, %168, %171
  %175 = phi i32 [ %166, %161 ], [ %18, %168 ], [ %18, %171 ]
  %176 = phi i32 [ %165, %161 ], [ %19, %168 ], [ %19, %171 ]
  %177 = phi i32 [ %167, %161 ], [ %20, %168 ], [ %20, %171 ]
  %178 = add nsw i32 %176, 1
  %179 = add nsw i32 %175, 1
  br label %180

180:                                              ; preds = %37, %62, %174, %56, %29
  %181 = phi i32 [ %18, %29 ], [ %41, %37 ], [ %18, %56 ], [ %65, %62 ], [ %179, %174 ]
  %182 = phi i32 [ %33, %29 ], [ %19, %37 ], [ %59, %56 ], [ %19, %62 ], [ %178, %174 ]
  %183 = phi i32 [ %20, %29 ], [ %20, %37 ], [ %20, %56 ], [ %20, %62 ], [ %177, %174 ]
  %184 = add nsw i32 %183, 1
  br label %17, !llvm.loop !163

185:                                              ; preds = %23
  %186 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %187 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %1, i64 0, i32 10
  %188 = load ptr, ptr %187, align 8, !tbaa !38
  tail call void %186(ptr noundef %188) #19
  %189 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %190 = sext i32 %20 to i64
  %191 = shl nsw i64 %190, 6
  %192 = tail call ptr %189(i64 noundef %191, ptr noundef nonnull @.str.5) #19
  store ptr %192, ptr %187, align 8, !tbaa !38
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %192, ptr align 4 %12, i64 %191, i1 false)
  store i32 %20, ptr %4, align 8, !tbaa !152
  %193 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %193(ptr noundef %12) #19
  %194 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 12
  store i32 0, ptr %194, align 8, !tbaa !88
  ret void
}

declare void @interp_v2_v2v2(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @BKE_tracking_dopesheet_tag_update(ptr nocapture noundef writeonly %0) local_unnamed_addr #12 {
  %2 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 12
  store i32 0, ptr %2, align 8, !tbaa !88
  ret void
}

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_tracking_track_get_named(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #13 {
  %4 = getelementptr inbounds %struct.MovieTrackingObject, ptr %1, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !82
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  %8 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %struct.MovieTrackingObject, ptr %1, i64 0, i32 5
  %10 = select i1 %7, ptr %9, ptr %8
  br label %11

11:                                               ; preds = %15, %3
  %12 = phi ptr [ %10, %3 ], [ %13, %15 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %13, i64 0, i32 2
  %17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(1) %2) #20
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %11, !llvm.loop !164

19:                                               ; preds = %11, %15
  %20 = phi ptr [ %13, %15 ], [ null, %11 ]
  ret ptr %20
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_tracking_track_get_indexed(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #11 {
  %4 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !165
  %6 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 2
  br label %7

7:                                                ; preds = %42, %3
  %8 = phi ptr [ %5, %3 ], [ %45, %42 ]
  %9 = phi i32 [ 1, %3 ], [ %43, %42 ]
  %10 = phi ptr [ undef, %3 ], [ %46, %42 ]
  %11 = icmp eq ptr %8, null
  br i1 %11, label %47, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.MovieTrackingObject, ptr %8, i64 0, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !82
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  %17 = getelementptr inbounds %struct.MovieTrackingObject, ptr %8, i64 0, i32 5
  %18 = select i1 %16, ptr %17, ptr %6
  %19 = load ptr, ptr %18, align 8, !tbaa !34
  %20 = icmp eq ptr %19, null
  br i1 %20, label %38, label %21

21:                                               ; preds = %12, %34
  %22 = phi i1 [ %37, %34 ], [ %20, %12 ]
  %23 = phi ptr [ %36, %34 ], [ %19, %12 ]
  %24 = phi i32 [ %35, %34 ], [ %9, %12 ]
  %25 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %23, i64 0, i32 13
  %26 = load i32, ptr %25, align 8, !tbaa !122
  %27 = and i32 %26, 2
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %21
  %30 = icmp eq i32 %24, %1
  br i1 %30, label %31, label %32

31:                                               ; preds = %29
  store ptr %18, ptr %2, align 8, !tbaa !34
  br label %42

32:                                               ; preds = %29
  %33 = add nsw i32 %24, 1
  br label %34

34:                                               ; preds = %32, %21
  %35 = phi i32 [ %33, %32 ], [ %24, %21 ]
  %36 = load ptr, ptr %23, align 8, !tbaa !34
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %21, !llvm.loop !166

38:                                               ; preds = %34, %12
  %39 = phi i32 [ %9, %12 ], [ %35, %34 ]
  %40 = phi i1 [ %20, %12 ], [ %37, %34 ]
  %41 = load ptr, ptr %8, align 8, !tbaa !167
  br label %42

42:                                               ; preds = %38, %31
  %43 = phi i32 [ %24, %31 ], [ %39, %38 ]
  %44 = phi i1 [ %22, %31 ], [ %40, %38 ]
  %45 = phi ptr [ %8, %31 ], [ %41, %38 ]
  %46 = phi ptr [ %23, %31 ], [ %10, %38 ]
  br i1 %44, label %7, label %48, !llvm.loop !168

47:                                               ; preds = %7
  store ptr null, ptr %2, align 8, !tbaa !34
  br label %48

48:                                               ; preds = %42, %47
  %49 = phi ptr [ null, %47 ], [ %46, %42 ]
  ret ptr %49
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_tracking_track_get_active(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !131
  %4 = icmp eq ptr %3, null
  br i1 %4, label %27, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 8
  %7 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 9
  %8 = load i32, ptr %7, align 8, !tbaa !84
  %9 = tail call ptr @BLI_findlink(ptr noundef nonnull %6, i32 noundef %8) #19
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.MovieTrackingObject, ptr %9, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !82
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.MovieTrackingObject, ptr %9, i64 0, i32 5
  br label %20

18:                                               ; preds = %11, %5
  %19 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 2
  br label %20

20:                                               ; preds = %16, %18
  %21 = phi ptr [ %17, %16 ], [ %19, %18 ]
  %22 = load ptr, ptr %2, align 8, !tbaa !131
  %23 = tail call i32 @BLI_findindex(ptr noundef nonnull %21, ptr noundef %22) #19
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  %26 = load ptr, ptr %2, align 8, !tbaa !131
  br label %27

27:                                               ; preds = %20, %1, %25
  %28 = phi ptr [ %26, %25 ], [ null, %1 ], [ null, %20 ]
  ret ptr %28
}

declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_tracking_track_get_mask(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %2, i64 0, i32 23
  %6 = load ptr, ptr %5, align 8, !tbaa !169
  %7 = icmp eq ptr %6, null
  br i1 %7, label %35, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.bGPdata, ptr %6, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = icmp eq ptr %10, null
  br i1 %11, label %35, label %12

12:                                               ; preds = %8, %31
  %13 = phi ptr [ %33, %31 ], [ %10, %8 ]
  %14 = phi ptr [ %32, %31 ], [ undef, %8 ]
  %15 = getelementptr inbounds %struct.bGPDlayer, ptr %13, i64 0, i32 4
  %16 = load i32, ptr %15, align 8, !tbaa !170
  %17 = and i32 %16, 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.bGPDlayer, ptr %13, i64 0, i32 2
  br label %21

21:                                               ; preds = %25, %19
  %22 = phi ptr [ %20, %19 ], [ %23, %25 ]
  %23 = load ptr, ptr %22, align 8, !tbaa !34
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.bGPDframe, ptr %23, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !172
  %28 = icmp eq ptr %27, null
  br i1 %28, label %21, label %29, !llvm.loop !174

29:                                               ; preds = %25, %21
  %30 = phi ptr [ %13, %25 ], [ %14, %21 ]
  br i1 %24, label %31, label %35

31:                                               ; preds = %29, %12
  %32 = phi ptr [ %30, %29 ], [ %14, %12 ]
  %33 = load ptr, ptr %13, align 8, !tbaa !34
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %12, !llvm.loop !175

35:                                               ; preds = %29, %31, %8, %4
  %36 = phi ptr [ null, %4 ], [ null, %8 ], [ null, %31 ], [ %30, %29 ]
  %37 = icmp eq ptr %36, null
  br i1 %37, label %119, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %3, i64 0, i32 3, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !111
  %41 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %3, i64 0, i32 2, i64 1
  %42 = load float, ptr %41, align 4, !tbaa !111
  %43 = fsub float %40, %42
  %44 = sitofp i32 %1 to float
  %45 = fmul float %43, %44
  %46 = fptosi float %45 to i32
  %47 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %3, i64 0, i32 2
  %48 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %3, i64 0, i32 3
  %49 = load float, ptr %48, align 4, !tbaa !111
  %50 = load float, ptr %47, align 4, !tbaa !111
  %51 = fsub float %49, %50
  %52 = sitofp i32 %0 to float
  %53 = fmul float %51, %52
  %54 = fptosi float %53 to i32
  %55 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %56 = mul nsw i32 %54, %46
  %57 = sext i32 %56 to i64
  %58 = shl nsw i64 %57, 2
  %59 = tail call ptr %55(i64 noundef %58, ptr noundef nonnull @.str.6) #19
  %60 = getelementptr inbounds %struct.bGPDlayer, ptr %36, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !34
  %62 = icmp eq ptr %61, null
  br i1 %62, label %119, label %63

63:                                               ; preds = %38
  %64 = sitofp i32 %54 to float
  %65 = sitofp i32 %46 to float
  br label %69

66:                                               ; preds = %116, %69
  %67 = load ptr, ptr %70, align 8, !tbaa !34
  %68 = icmp eq ptr %67, null
  br i1 %68, label %119, label %69, !llvm.loop !176

69:                                               ; preds = %63, %66
  %70 = phi ptr [ %61, %63 ], [ %67, %66 ]
  %71 = getelementptr inbounds %struct.bGPDframe, ptr %70, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !34
  %73 = icmp eq ptr %72, null
  br i1 %73, label %66, label %74

74:                                               ; preds = %69, %116
  %75 = phi ptr [ %117, %116 ], [ %72, %69 ]
  %76 = getelementptr inbounds %struct.bGPDstroke, ptr %75, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !177
  %78 = getelementptr inbounds %struct.bGPDstroke, ptr %75, i64 0, i32 6
  %79 = load i16, ptr %78, align 2, !tbaa !180
  %80 = and i16 %79, 2
  %81 = icmp eq i16 %80, 0
  br i1 %81, label %116, label %82

82:                                               ; preds = %74
  %83 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %84 = getelementptr inbounds %struct.bGPDstroke, ptr %75, i64 0, i32 4
  %85 = load i32, ptr %84, align 8, !tbaa !181
  %86 = shl nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = shl nsw i64 %87, 2
  %89 = tail call ptr %83(i64 noundef %88, ptr noundef nonnull @.str.15) #19
  %90 = load i32, ptr %84, align 8, !tbaa !181
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %113

92:                                               ; preds = %82
  %93 = zext nneg i32 %90 to i64
  br label %94

94:                                               ; preds = %92, %94
  %95 = phi i64 [ 0, %92 ], [ %110, %94 ]
  %96 = phi ptr [ %89, %92 ], [ %111, %94 ]
  %97 = getelementptr inbounds %struct.bGPDspoint, ptr %77, i64 %95
  %98 = load float, ptr %97, align 4, !tbaa !182
  %99 = load float, ptr %47, align 4, !tbaa !111
  %100 = fsub float %98, %99
  %101 = fmul float %100, %52
  %102 = fdiv float %101, %64
  store float %102, ptr %96, align 4, !tbaa !111
  %103 = getelementptr inbounds %struct.bGPDspoint, ptr %77, i64 %95, i32 1
  %104 = load float, ptr %103, align 4, !tbaa !184
  %105 = load float, ptr %41, align 4, !tbaa !111
  %106 = fsub float %104, %105
  %107 = fmul float %106, %44
  %108 = fdiv float %107, %65
  %109 = getelementptr inbounds float, ptr %96, i64 1
  store float %108, ptr %109, align 4, !tbaa !111
  %110 = add nuw nsw i64 %95, 1
  %111 = getelementptr inbounds float, ptr %96, i64 2
  %112 = icmp eq i64 %110, %93
  br i1 %112, label %113, label %94, !llvm.loop !185

113:                                              ; preds = %94, %82
  %114 = tail call i32 @PLX_raskterize(ptr noundef %89, i32 noundef %90, ptr noundef %59, i32 noundef %54, i32 noundef %46) #19
  %115 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %115(ptr noundef %89) #19
  br label %116

116:                                              ; preds = %113, %74
  %117 = load ptr, ptr %75, align 8, !tbaa !34
  %118 = icmp eq ptr %117, null
  br i1 %118, label %66, label %74, !llvm.loop !186

119:                                              ; preds = %66, %38, %35
  %120 = phi ptr [ null, %35 ], [ %59, %38 ], [ %59, %66 ]
  ret ptr %120
}

; Function Attrs: nounwind uwtable
define dso_local float @BKE_tracking_track_get_weight_for_marker(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %1, i64 0, i32 24
  %5 = load float, ptr %4, align 8, !tbaa !149
  %6 = tail call ptr @id_data_find_fcurve(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @RNA_MovieTrackingTrack, ptr noundef nonnull @.str.7, i32 noundef 0, ptr noundef null) #19
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !150
  %11 = sitofp i32 %10 to float
  %12 = tail call float @BKE_movieclip_remap_clip_to_scene_frame(ptr noundef %0, float noundef %11) #19
  %13 = fptosi float %12 to i32
  %14 = sitofp i32 %13 to float
  %15 = tail call float @evaluate_fcurve(ptr noundef nonnull %6, float noundef %14) #19
  br label %16

16:                                               ; preds = %8, %3
  %17 = phi float [ %15, %8 ], [ %5, %3 ]
  ret float %17
}

declare ptr @id_data_find_fcurve(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare float @BKE_movieclip_remap_clip_to_scene_frame(ptr noundef, float noundef) local_unnamed_addr #3

declare float @evaluate_fcurve(ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_tracking_track_select(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3) local_unnamed_addr #6 {
  %5 = icmp eq i8 %3, 0
  br i1 %5, label %6, label %17

6:                                                ; preds = %4
  %7 = load ptr, ptr %0, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %68, label %9

9:                                                ; preds = %6
  %10 = icmp eq i32 %2, -1
  %11 = and i32 %2, 1
  %12 = icmp eq i32 %11, 0
  %13 = and i32 %2, 2
  %14 = icmp eq i32 %13, 0
  %15 = and i32 %2, 4
  %16 = icmp eq i32 %15, 0
  br label %40

17:                                               ; preds = %4
  %18 = icmp eq i32 %2, -1
  br i1 %18, label %68, label %19

19:                                               ; preds = %17
  %20 = and i32 %2, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %1, i64 0, i32 13
  %24 = load i32, ptr %23, align 8, !tbaa !122
  %25 = or i32 %24, 1
  store i32 %25, ptr %23, align 8, !tbaa !122
  br label %26

26:                                               ; preds = %22, %19
  %27 = and i32 %2, 2
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %1, i64 0, i32 14
  %31 = load i32, ptr %30, align 4, !tbaa !123
  %32 = or i32 %31, 1
  store i32 %32, ptr %30, align 4, !tbaa !123
  br label %33

33:                                               ; preds = %29, %26
  %34 = and i32 %2, 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %68, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %1, i64 0, i32 15
  %38 = load i32, ptr %37, align 8, !tbaa !124
  %39 = or i32 %38, 1
  store i32 %39, ptr %37, align 8, !tbaa !124
  br label %68

40:                                               ; preds = %9, %65
  %41 = phi ptr [ %7, %9 ], [ %66, %65 ]
  %42 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %41, i64 0, i32 13
  %43 = load i32, ptr %42, align 8, !tbaa !122
  %44 = and i32 %43, 32
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %65

46:                                               ; preds = %40
  %47 = icmp ne ptr %41, %1
  %48 = and i32 %43, -34
  store i32 %48, ptr %42, align 8, !tbaa !122
  %49 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %41, i64 0, i32 14
  %50 = load i32, ptr %49, align 4, !tbaa !123
  %51 = and i32 %50, -2
  store i32 %51, ptr %49, align 4, !tbaa !123
  %52 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %41, i64 0, i32 15
  %53 = load i32, ptr %52, align 8, !tbaa !124
  %54 = and i32 %53, -2
  store i32 %54, ptr %52, align 8, !tbaa !124
  %55 = or i1 %47, %10
  br i1 %55, label %65, label %56

56:                                               ; preds = %46
  br i1 %12, label %59, label %57

57:                                               ; preds = %56
  %58 = or i32 %43, 1
  store i32 %58, ptr %42, align 8, !tbaa !122
  br label %59

59:                                               ; preds = %57, %56
  br i1 %14, label %62, label %60

60:                                               ; preds = %59
  %61 = or i32 %50, 1
  store i32 %61, ptr %49, align 4, !tbaa !123
  br label %62

62:                                               ; preds = %60, %59
  br i1 %16, label %65, label %63

63:                                               ; preds = %62
  %64 = or i32 %53, 1
  store i32 %64, ptr %52, align 8, !tbaa !124
  br label %65

65:                                               ; preds = %46, %63, %62, %40
  %66 = load ptr, ptr %41, align 8, !tbaa !34
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %40, !llvm.loop !187

68:                                               ; preds = %65, %6, %36, %33, %17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_tracking_track_deselect(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq i32 %1, -1
  br i1 %3, label %25, label %4

4:                                                ; preds = %2
  %5 = and i32 %1, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 13
  %9 = load i32, ptr %8, align 8, !tbaa !122
  %10 = and i32 %9, -2
  store i32 %10, ptr %8, align 8, !tbaa !122
  br label %11

11:                                               ; preds = %7, %4
  %12 = and i32 %1, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 14
  %16 = load i32, ptr %15, align 4, !tbaa !123
  %17 = and i32 %16, -2
  store i32 %17, ptr %15, align 4, !tbaa !123
  br label %18

18:                                               ; preds = %14, %11
  %19 = and i32 %1, 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 15
  %23 = load i32, ptr %22, align 8, !tbaa !124
  %24 = and i32 %23, -2
  store i32 %24, ptr %22, align 8, !tbaa !124
  br label %25

25:                                               ; preds = %2, %18, %21
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_tracking_tracks_deselect_all(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  br i1 %3, label %21, label %4

4:                                                ; preds = %1, %18
  %5 = phi ptr [ %19, %18 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %5, i64 0, i32 13
  %7 = load i32, ptr %6, align 8, !tbaa !122
  %8 = and i32 %7, 32
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %4
  %11 = and i32 %7, -34
  store i32 %11, ptr %6, align 8, !tbaa !122
  %12 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %5, i64 0, i32 14
  %13 = load i32, ptr %12, align 4, !tbaa !123
  %14 = and i32 %13, -2
  store i32 %14, ptr %12, align 4, !tbaa !123
  %15 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %5, i64 0, i32 15
  %16 = load i32, ptr %15, align 8, !tbaa !124
  %17 = and i32 %16, -2
  store i32 %17, ptr %15, align 8, !tbaa !124
  br label %18

18:                                               ; preds = %4, %10
  %19 = load ptr, ptr %5, align 8, !tbaa !34
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %4, !llvm.loop !188

21:                                               ; preds = %18, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_tracking_marker_delete(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !152
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %39

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !38
  %9 = zext nneg i32 %4 to i64
  br label %10

10:                                               ; preds = %6, %36
  %11 = phi i64 [ 0, %6 ], [ %37, %36 ]
  %12 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %8, i64 %11, i32 4
  %13 = load i32, ptr %12, align 4, !tbaa !150
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %15, label %36

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 8
  %17 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 10
  %18 = icmp eq i32 %4, 1
  br i1 %18, label %34, label %19

19:                                               ; preds = %15
  %20 = trunc i64 %11 to i32
  %21 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %8, i64 %11
  %22 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %21, i64 1
  %23 = xor i32 %20, -1
  %24 = add nsw i32 %4, %23
  %25 = sext i32 %24 to i64
  %26 = shl nsw i64 %25, 6
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %21, ptr nonnull align 4 %22, i64 %26, i1 false)
  %27 = load i32, ptr %16, align 8, !tbaa !152
  %28 = add nsw i32 %27, -1
  store i32 %28, ptr %16, align 8, !tbaa !152
  %29 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !34
  %30 = load ptr, ptr %17, align 8, !tbaa !38
  %31 = sext i32 %28 to i64
  %32 = shl nsw i64 %31, 6
  %33 = tail call ptr %29(ptr noundef %30, i64 noundef %32, ptr noundef nonnull @__func__.BKE_tracking_marker_delete) #19
  store ptr %33, ptr %17, align 8, !tbaa !38
  br label %39

34:                                               ; preds = %15
  %35 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %35(ptr noundef %8) #19
  store ptr null, ptr %17, align 8, !tbaa !38
  store i32 0, ptr %16, align 8, !tbaa !152
  br label %39

36:                                               ; preds = %10
  %37 = add nuw nsw i64 %11, 1
  %38 = icmp eq i64 %37, %9
  br i1 %38, label %39, label %10, !llvm.loop !189

39:                                               ; preds = %36, %2, %19, %34
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_tracking_marker_clamp(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [2 x float], align 4
  %4 = alloca [2 x float], align 4
  %5 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  %6 = getelementptr inbounds float, ptr %3, i64 1
  store float 0x46293E5940000000, ptr %6, align 4, !tbaa !111
  store float 0x46293E5940000000, ptr %3, align 4, !tbaa !111
  %7 = getelementptr inbounds float, ptr %4, i64 1
  store float 0xC6293E5940000000, ptr %7, align 4, !tbaa !111
  store float 0xC6293E5940000000, ptr %4, align 4, !tbaa !111
  %8 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %0, i64 0, i32 1
  call void @minmax_v2v2_v2(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %8) #19
  %9 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %0, i64 0, i32 1, i64 1
  call void @minmax_v2v2_v2(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %9) #19
  %10 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %0, i64 0, i32 1, i64 2
  call void @minmax_v2v2_v2(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %10) #19
  %11 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %0, i64 0, i32 1, i64 3
  call void @minmax_v2v2_v2(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %11) #19
  switch i32 %1, label %116 [
    i32 1, label %12
    i32 2, label %28
    i32 3, label %62
    i32 4, label %78
  ]

12:                                               ; preds = %2, %12
  %13 = phi i64 [ %26, %12 ], [ 0, %2 ]
  %14 = getelementptr inbounds [2 x float], ptr %3, i64 0, i64 %13
  %15 = load float, ptr %14, align 4, !tbaa !111
  %16 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %0, i64 0, i32 2, i64 %13
  %17 = load float, ptr %16, align 4, !tbaa !111
  %18 = fcmp olt float %15, %17
  %19 = select i1 %18, float %15, float %17
  store float %19, ptr %16, align 4, !tbaa !111
  %20 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 %13
  %21 = load float, ptr %20, align 4, !tbaa !111
  %22 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %0, i64 0, i32 3, i64 %13
  %23 = load float, ptr %22, align 4, !tbaa !111
  %24 = fcmp ogt float %21, %23
  %25 = select i1 %24, float %21, float %23
  store float %25, ptr %22, align 4, !tbaa !111
  %26 = add nuw nsw i64 %13, 1
  %27 = icmp eq i64 %13, 0
  br i1 %27, label %12, label %116, !llvm.loop !190

28:                                               ; preds = %2, %59
  %29 = phi i64 [ %60, %59 ], [ 0, %2 ]
  %30 = getelementptr inbounds [2 x float], ptr %3, i64 0, i64 %29
  %31 = load float, ptr %30, align 4, !tbaa !111
  %32 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %0, i64 0, i32 2, i64 %29
  %33 = load float, ptr %32, align 4, !tbaa !111
  %34 = fcmp olt float %31, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %28, %35
  %36 = phi i64 [ %42, %35 ], [ 0, %28 ]
  %37 = load float, ptr %32, align 4, !tbaa !111
  %38 = fsub float %37, %31
  %39 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %0, i64 0, i32 1, i64 %36, i64 %29
  %40 = load float, ptr %39, align 4, !tbaa !111
  %41 = fadd float %40, %38
  store float %41, ptr %39, align 4, !tbaa !111
  %42 = add nuw nsw i64 %36, 1
  %43 = icmp eq i64 %42, 4
  br i1 %43, label %44, label %35, !llvm.loop !191

44:                                               ; preds = %35, %28
  %45 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 %29
  %46 = load float, ptr %45, align 4, !tbaa !111
  %47 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %0, i64 0, i32 3, i64 %29
  %48 = load float, ptr %47, align 4, !tbaa !111
  %49 = fcmp ogt float %46, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %44, %50
  %51 = phi i64 [ %57, %50 ], [ 0, %44 ]
  %52 = load float, ptr %47, align 4, !tbaa !111
  %53 = fsub float %46, %52
  %54 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %0, i64 0, i32 1, i64 %51, i64 %29
  %55 = load float, ptr %54, align 4, !tbaa !111
  %56 = fsub float %55, %53
  store float %56, ptr %54, align 4, !tbaa !111
  %57 = add nuw nsw i64 %51, 1
  %58 = icmp eq i64 %57, 4
  br i1 %58, label %59, label %50, !llvm.loop !192

59:                                               ; preds = %50, %44
  %60 = add nuw nsw i64 %29, 1
  %61 = icmp eq i64 %29, 0
  br i1 %61, label %28, label %116, !llvm.loop !193

62:                                               ; preds = %2, %62
  %63 = phi i64 [ %76, %62 ], [ 0, %2 ]
  %64 = getelementptr inbounds [2 x float], ptr %3, i64 0, i64 %63
  %65 = load float, ptr %64, align 4, !tbaa !111
  %66 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %0, i64 0, i32 2, i64 %63
  %67 = load float, ptr %66, align 4, !tbaa !111
  %68 = fcmp olt float %65, %67
  %69 = select i1 %68, float %65, float %67
  store float %69, ptr %66, align 4, !tbaa !111
  %70 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 %63
  %71 = load float, ptr %70, align 4, !tbaa !111
  %72 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %0, i64 0, i32 3, i64 %63
  %73 = load float, ptr %72, align 4, !tbaa !111
  %74 = fcmp ogt float %71, %73
  %75 = select i1 %74, float %71, float %73
  store float %75, ptr %72, align 4, !tbaa !111
  %76 = add nuw nsw i64 %63, 1
  %77 = icmp eq i64 %63, 0
  br i1 %77, label %62, label %116, !llvm.loop !194

78:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  %79 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %0, i64 0, i32 3
  %80 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %0, i64 0, i32 2
  %81 = load float, ptr %79, align 4, !tbaa !111
  %82 = load float, ptr %80, align 4, !tbaa !111
  %83 = fsub float %81, %82
  store float %83, ptr %5, align 4, !tbaa !111
  %84 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %0, i64 0, i32 3, i64 1
  %85 = load float, ptr %84, align 4, !tbaa !111
  %86 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %0, i64 0, i32 2, i64 1
  %87 = load float, ptr %86, align 4, !tbaa !111
  %88 = fsub float %85, %87
  %89 = getelementptr inbounds float, ptr %5, i64 1
  store float %88, ptr %89, align 4, !tbaa !111
  br label %90

90:                                               ; preds = %78, %112
  %91 = phi i64 [ 0, %78 ], [ %113, %112 ]
  %92 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %0, i64 0, i32 2, i64 %91
  %93 = load float, ptr %92, align 4, !tbaa !111
  %94 = getelementptr inbounds [2 x float], ptr %3, i64 0, i64 %91
  %95 = load float, ptr %94, align 4, !tbaa !111
  %96 = fcmp ogt float %93, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %90
  store float %95, ptr %92, align 4, !tbaa !111
  %98 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 %91
  %99 = load float, ptr %98, align 4, !tbaa !111
  %100 = fadd float %95, %99
  %101 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %0, i64 0, i32 3, i64 %91
  store float %100, ptr %101, align 4, !tbaa !111
  br label %102

102:                                              ; preds = %97, %90
  %103 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %0, i64 0, i32 3, i64 %91
  %104 = load float, ptr %103, align 4, !tbaa !111
  %105 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 %91
  %106 = load float, ptr %105, align 4, !tbaa !111
  %107 = fcmp olt float %104, %106
  br i1 %107, label %108, label %112

108:                                              ; preds = %102
  store float %106, ptr %103, align 4, !tbaa !111
  %109 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 %91
  %110 = load float, ptr %109, align 4, !tbaa !111
  %111 = fsub float %106, %110
  store float %111, ptr %92, align 4, !tbaa !111
  br label %112

112:                                              ; preds = %102, %108
  %113 = add nuw nsw i64 %91, 1
  %114 = icmp eq i64 %91, 0
  br i1 %114, label %90, label %115, !llvm.loop !195

115:                                              ; preds = %112
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  br label %116

116:                                              ; preds = %62, %59, %12, %2, %115
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_tracking_marker_pattern_minmax(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds float, ptr %1, i64 1
  store float 0x46293E5940000000, ptr %4, align 4, !tbaa !111
  store float 0x46293E5940000000, ptr %1, align 4, !tbaa !111
  %5 = getelementptr inbounds float, ptr %2, i64 1
  store float 0xC6293E5940000000, ptr %5, align 4, !tbaa !111
  store float 0xC6293E5940000000, ptr %2, align 4, !tbaa !111
  %6 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %0, i64 0, i32 1
  tail call void @minmax_v2v2_v2(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %6) #19
  %7 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %0, i64 0, i32 1, i64 1
  tail call void @minmax_v2v2_v2(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %7) #19
  %8 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %0, i64 0, i32 1, i64 2
  tail call void @minmax_v2v2_v2(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %8) #19
  %9 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %0, i64 0, i32 1, i64 3
  tail call void @minmax_v2v2_v2(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %9) #19
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_tracking_marker_ensure(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.MovieTrackingMarker, align 4
  %4 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !152
  %6 = icmp ne i32 %5, 0
  tail call void @llvm.assume(i1 %6)
  %7 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !38
  %9 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %8, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !150
  %11 = icmp sgt i32 %10, %1
  br i1 %11, label %69, label %12

12:                                               ; preds = %2
  %13 = add nsw i32 %5, -1
  %14 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 9
  %15 = load i32, ptr %14, align 4, !tbaa !153
  %16 = icmp slt i32 %15, %5
  %17 = select i1 %16, i32 %15, i32 %13
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %8, i64 %18, i32 4
  %20 = load i32, ptr %19, align 4, !tbaa !150
  %21 = icmp sgt i32 %20, %1
  br i1 %21, label %26, label %22

22:                                               ; preds = %12
  %23 = sext i32 %5 to i64
  %24 = add i32 %17, 1
  %25 = tail call i32 @llvm.smax.i32(i32 %5, i32 %24)
  br label %30

26:                                               ; preds = %12
  %27 = icmp sgt i32 %17, -1
  br i1 %27, label %28, label %65

28:                                               ; preds = %26
  %29 = zext nneg i32 %17 to i64
  br label %50

30:                                               ; preds = %40, %22
  %31 = phi i64 [ %18, %22 ], [ %41, %40 ]
  %32 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %8, i64 %31, i32 4
  %33 = load i32, ptr %32, align 4, !tbaa !150
  %34 = icmp sgt i32 %33, %1
  br i1 %34, label %43, label %35

35:                                               ; preds = %30
  %36 = icmp eq i32 %33, %1
  br i1 %36, label %37, label %40

37:                                               ; preds = %35
  %38 = trunc i64 %31 to i32
  store i32 %38, ptr %14, align 4, !tbaa !153
  %39 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %8, i64 %31
  br label %69

40:                                               ; preds = %35
  %41 = add nsw i64 %31, 1
  %42 = icmp slt i64 %41, %23
  br i1 %42, label %30, label %45, !llvm.loop !154

43:                                               ; preds = %30
  %44 = trunc i64 %31 to i32
  br label %45

45:                                               ; preds = %40, %43
  %46 = phi i32 [ %44, %43 ], [ %25, %40 ]
  %47 = sext i32 %46 to i64
  %48 = getelementptr %struct.MovieTrackingMarker, ptr %8, i64 %47
  %49 = getelementptr %struct.MovieTrackingMarker, ptr %48, i64 -1
  br label %69

50:                                               ; preds = %28, %60
  %51 = phi i64 [ %29, %28 ], [ %61, %60 ]
  %52 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %8, i64 %51, i32 4
  %53 = load i32, ptr %52, align 4, !tbaa !150
  %54 = icmp slt i32 %53, %1
  br i1 %54, label %63, label %55

55:                                               ; preds = %50
  %56 = icmp eq i32 %53, %1
  br i1 %56, label %57, label %60

57:                                               ; preds = %55
  %58 = trunc i64 %51 to i32
  store i32 %58, ptr %14, align 4, !tbaa !153
  %59 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %8, i64 %51
  br label %69

60:                                               ; preds = %55
  %61 = add nsw i64 %51, -1
  %62 = icmp sgt i64 %51, 0
  br i1 %62, label %50, label %65, !llvm.loop !155

63:                                               ; preds = %50
  %64 = trunc i64 %51 to i32
  br label %65

65:                                               ; preds = %63, %60, %26
  %66 = phi i32 [ %17, %26 ], [ %64, %63 ], [ -1, %60 ]
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %8, i64 %67
  br label %69

69:                                               ; preds = %2, %37, %45, %57, %65
  %70 = phi ptr [ %39, %37 ], [ %49, %45 ], [ %59, %57 ], [ %68, %65 ], [ %8, %2 ]
  %71 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %70, i64 0, i32 4
  %72 = load i32, ptr %71, align 4, !tbaa !150
  %73 = icmp eq i32 %72, %1
  br i1 %73, label %144, label %74

74:                                               ; preds = %69
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(64) %70, i64 64, i1 false), !tbaa.struct !156
  %75 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %3, i64 0, i32 4
  store i32 %1, ptr %75, align 4, !tbaa !150
  %76 = call ptr @BKE_tracking_marker_insert(ptr noundef %0, ptr noundef nonnull %3)
  %77 = load i32, ptr %4, align 8, !tbaa !152
  %78 = add nsw i32 %77, -1
  %79 = icmp eq i32 %77, 0
  br i1 %79, label %142, label %80

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 10
  %82 = load ptr, ptr %81, align 8, !tbaa !38
  %83 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %82, i64 0, i32 4
  %84 = load i32, ptr %83, align 4, !tbaa !150
  %85 = icmp sgt i32 %84, %1
  br i1 %85, label %142, label %86

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 9
  %88 = load i32, ptr %87, align 4, !tbaa !153
  %89 = icmp slt i32 %88, %77
  %90 = select i1 %89, i32 %88, i32 %78
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %82, i64 %91, i32 4
  %93 = load i32, ptr %92, align 4, !tbaa !150
  %94 = icmp sgt i32 %93, %1
  br i1 %94, label %99, label %95

95:                                               ; preds = %86
  %96 = sext i32 %77 to i64
  %97 = add i32 %90, 1
  %98 = tail call i32 @llvm.smax.i32(i32 %77, i32 %97)
  br label %103

99:                                               ; preds = %86
  %100 = icmp sgt i32 %90, -1
  br i1 %100, label %101, label %138

101:                                              ; preds = %99
  %102 = zext nneg i32 %90 to i64
  br label %123

103:                                              ; preds = %113, %95
  %104 = phi i64 [ %91, %95 ], [ %114, %113 ]
  %105 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %82, i64 %104, i32 4
  %106 = load i32, ptr %105, align 4, !tbaa !150
  %107 = icmp sgt i32 %106, %1
  br i1 %107, label %116, label %108

108:                                              ; preds = %103
  %109 = icmp eq i32 %106, %1
  br i1 %109, label %110, label %113

110:                                              ; preds = %108
  %111 = trunc i64 %104 to i32
  store i32 %111, ptr %87, align 4, !tbaa !153
  %112 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %82, i64 %104
  br label %142

113:                                              ; preds = %108
  %114 = add nsw i64 %104, 1
  %115 = icmp slt i64 %114, %96
  br i1 %115, label %103, label %118, !llvm.loop !154

116:                                              ; preds = %103
  %117 = trunc i64 %104 to i32
  br label %118

118:                                              ; preds = %113, %116
  %119 = phi i32 [ %117, %116 ], [ %98, %113 ]
  %120 = sext i32 %119 to i64
  %121 = getelementptr %struct.MovieTrackingMarker, ptr %82, i64 %120
  %122 = getelementptr %struct.MovieTrackingMarker, ptr %121, i64 -1
  br label %142

123:                                              ; preds = %101, %133
  %124 = phi i64 [ %102, %101 ], [ %134, %133 ]
  %125 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %82, i64 %124, i32 4
  %126 = load i32, ptr %125, align 4, !tbaa !150
  %127 = icmp slt i32 %126, %1
  br i1 %127, label %136, label %128

128:                                              ; preds = %123
  %129 = icmp eq i32 %126, %1
  br i1 %129, label %130, label %133

130:                                              ; preds = %128
  %131 = trunc i64 %124 to i32
  store i32 %131, ptr %87, align 4, !tbaa !153
  %132 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %82, i64 %124
  br label %142

133:                                              ; preds = %128
  %134 = add nsw i64 %124, -1
  %135 = icmp sgt i64 %124, 0
  br i1 %135, label %123, label %138, !llvm.loop !155

136:                                              ; preds = %123
  %137 = trunc i64 %124 to i32
  br label %138

138:                                              ; preds = %136, %133, %99
  %139 = phi i32 [ %90, %99 ], [ %137, %136 ], [ -1, %133 ]
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %82, i64 %140
  br label %142

142:                                              ; preds = %74, %80, %110, %118, %130, %138
  %143 = phi ptr [ %112, %110 ], [ %122, %118 ], [ %132, %130 ], [ %141, %138 ], [ null, %74 ], [ %82, %80 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #19
  br label %144

144:                                              ; preds = %142, %69
  %145 = phi ptr [ %143, %142 ], [ %70, %69 ]
  ret ptr %145
}

declare void @minmax_v2v2_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @BKE_tracking_marker_get_subframe_position(ptr nocapture noundef %0, float noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = fptosi float %1 to i32
  %5 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 8
  %6 = load i32, ptr %5, align 8, !tbaa !152
  %7 = add nsw i32 %6, -1
  %8 = icmp eq i32 %6, 0
  br i1 %8, label %67, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !38
  %12 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %11, i64 0, i32 4
  %13 = load i32, ptr %12, align 4, !tbaa !150
  %14 = icmp sgt i32 %13, %4
  br i1 %14, label %67, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 9
  %17 = load i32, ptr %16, align 4, !tbaa !153
  %18 = icmp slt i32 %17, %6
  %19 = select i1 %18, i32 %17, i32 %7
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %11, i64 %20, i32 4
  %22 = load i32, ptr %21, align 4, !tbaa !150
  %23 = icmp sgt i32 %22, %4
  br i1 %23, label %28, label %24

24:                                               ; preds = %15
  %25 = sext i32 %6 to i64
  %26 = add i32 %19, 1
  %27 = tail call i32 @llvm.smax.i32(i32 %6, i32 %26)
  br label %30

28:                                               ; preds = %15
  %29 = icmp sgt i32 %19, -1
  br i1 %29, label %50, label %63

30:                                               ; preds = %40, %24
  %31 = phi i64 [ %20, %24 ], [ %41, %40 ]
  %32 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %11, i64 %31, i32 4
  %33 = load i32, ptr %32, align 4, !tbaa !150
  %34 = icmp sgt i32 %33, %4
  br i1 %34, label %43, label %35

35:                                               ; preds = %30
  %36 = icmp eq i32 %33, %4
  br i1 %36, label %37, label %40

37:                                               ; preds = %35
  %38 = trunc i64 %31 to i32
  store i32 %38, ptr %16, align 4, !tbaa !153
  %39 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %11, i64 %31
  br label %67

40:                                               ; preds = %35
  %41 = add nsw i64 %31, 1
  %42 = icmp slt i64 %41, %25
  br i1 %42, label %30, label %45, !llvm.loop !154

43:                                               ; preds = %30
  %44 = trunc i64 %31 to i32
  br label %45

45:                                               ; preds = %40, %43
  %46 = phi i32 [ %44, %43 ], [ %27, %40 ]
  %47 = sext i32 %46 to i64
  %48 = getelementptr %struct.MovieTrackingMarker, ptr %11, i64 %47
  %49 = getelementptr %struct.MovieTrackingMarker, ptr %48, i64 -1
  br label %67

50:                                               ; preds = %28, %60
  %51 = phi i32 [ %61, %60 ], [ %19, %28 ]
  %52 = zext nneg i32 %51 to i64
  %53 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %11, i64 %52, i32 4
  %54 = load i32, ptr %53, align 4, !tbaa !150
  %55 = icmp slt i32 %54, %4
  br i1 %55, label %63, label %56

56:                                               ; preds = %50
  %57 = icmp eq i32 %54, %4
  br i1 %57, label %58, label %60

58:                                               ; preds = %56
  store i32 %51, ptr %16, align 4, !tbaa !153
  %59 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %11, i64 %52
  br label %67

60:                                               ; preds = %56
  %61 = add nsw i32 %51, -1
  %62 = icmp sgt i32 %51, 0
  br i1 %62, label %50, label %63, !llvm.loop !155

63:                                               ; preds = %60, %50, %28
  %64 = phi i32 [ %19, %28 ], [ %51, %50 ], [ -1, %60 ]
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %11, i64 %65
  br label %67

67:                                               ; preds = %3, %9, %37, %45, %58, %63
  %68 = phi ptr [ %39, %37 ], [ %49, %45 ], [ %59, %58 ], [ %66, %63 ], [ null, %3 ], [ %11, %9 ]
  %69 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 10
  %70 = load ptr, ptr %69, align 8, !tbaa !38
  %71 = sext i32 %6 to i64
  %72 = getelementptr %struct.MovieTrackingMarker, ptr %70, i64 %71
  %73 = getelementptr %struct.MovieTrackingMarker, ptr %72, i64 -1
  %74 = icmp eq ptr %68, %73
  br i1 %74, label %94, label %75

75:                                               ; preds = %67
  %76 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %68, i64 1, i32 4
  %77 = load i32, ptr %76, align 4, !tbaa !150
  %78 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %68, i64 0, i32 4
  %79 = load i32, ptr %78, align 4, !tbaa !150
  %80 = add nsw i32 %79, 1
  %81 = icmp eq i32 %77, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %75
  %83 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %68, i64 1
  %84 = sitofp i32 %4 to float
  %85 = fsub float %1, %84
  %86 = sub nsw i32 %77, %79
  %87 = sitofp i32 %86 to float
  %88 = fdiv float %85, %87
  tail call void @interp_v2_v2v2(ptr noundef %2, ptr noundef %68, ptr noundef nonnull %83, float noundef %88) #19
  br label %99

89:                                               ; preds = %75
  %90 = load float, ptr %68, align 4, !tbaa !111
  store float %90, ptr %2, align 4, !tbaa !111
  %91 = getelementptr inbounds float, ptr %68, i64 1
  %92 = load float, ptr %91, align 4, !tbaa !111
  %93 = getelementptr inbounds float, ptr %2, i64 1
  store float %92, ptr %93, align 4, !tbaa !111
  br label %99

94:                                               ; preds = %67
  %95 = load float, ptr %68, align 4, !tbaa !111
  store float %95, ptr %2, align 4, !tbaa !111
  %96 = getelementptr inbounds float, ptr %68, i64 1
  %97 = load float, ptr %96, align 4, !tbaa !111
  %98 = getelementptr inbounds float, ptr %2, i64 1
  store float %97, ptr %98, align 4, !tbaa !111
  br label %99

99:                                               ; preds = %82, %89, %94
  %100 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 7
  %101 = load float, ptr %100, align 4, !tbaa !111
  %102 = load float, ptr %2, align 4, !tbaa !111
  %103 = fadd float %101, %102
  store float %103, ptr %2, align 4, !tbaa !111
  %104 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 7, i64 1
  %105 = load float, ptr %104, align 4, !tbaa !111
  %106 = getelementptr inbounds float, ptr %2, i64 1
  %107 = load float, ptr %106, align 4, !tbaa !111
  %108 = fadd float %105, %107
  store float %108, ptr %106, align 4, !tbaa !111
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_tracking_plane_track_add(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.MovieTrackingPlaneMarker, align 4
  %6 = alloca [2 x float], align 4
  %7 = alloca [2 x float], align 4
  %8 = alloca [2 x float], align 4
  %9 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #19
  %10 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 1
  store float 0x46293E5940000000, ptr %10, align 4, !tbaa !111
  store float 0x46293E5940000000, ptr %6, align 4, !tbaa !111
  %11 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  store float 0xC6293E5940000000, ptr %11, align 4, !tbaa !111
  store float 0xC6293E5940000000, ptr %7, align 4, !tbaa !111
  %12 = load ptr, ptr %2, align 8, !tbaa !34
  %13 = icmp eq ptr %12, null
  br i1 %13, label %121, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds float, ptr %8, i64 1
  %16 = getelementptr inbounds float, ptr %9, i64 1
  br label %17

17:                                               ; preds = %14, %117
  %18 = phi ptr [ %12, %14 ], [ %119, %117 ]
  %19 = phi i32 [ 0, %14 ], [ %118, %117 ]
  %20 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %18, i64 0, i32 13
  %21 = load i32, ptr %20, align 8, !tbaa !122
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %18, i64 0, i32 14
  %26 = load i32, ptr %25, align 4, !tbaa !123
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %18, i64 0, i32 15
  %31 = load i32, ptr %30, align 8, !tbaa !124
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %117, label %34

34:                                               ; preds = %29, %24, %17
  %35 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %18, i64 0, i32 8
  %36 = load i32, ptr %35, align 8, !tbaa !152
  %37 = add nsw i32 %36, -1
  %38 = icmp eq i32 %36, 0
  br i1 %38, label %97, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %18, i64 0, i32 10
  %41 = load ptr, ptr %40, align 8, !tbaa !38
  %42 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %41, i64 0, i32 4
  %43 = load i32, ptr %42, align 4, !tbaa !150
  %44 = icmp sgt i32 %43, %3
  br i1 %44, label %97, label %45

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %18, i64 0, i32 9
  %47 = load i32, ptr %46, align 4, !tbaa !153
  %48 = icmp slt i32 %47, %36
  %49 = select i1 %48, i32 %47, i32 %37
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %41, i64 %50, i32 4
  %52 = load i32, ptr %51, align 4, !tbaa !150
  %53 = icmp sgt i32 %52, %3
  br i1 %53, label %58, label %54

54:                                               ; preds = %45
  %55 = sext i32 %36 to i64
  %56 = add i32 %49, 1
  %57 = call i32 @llvm.smax.i32(i32 %36, i32 %56)
  br label %60

58:                                               ; preds = %45
  %59 = icmp sgt i32 %49, -1
  br i1 %59, label %80, label %93

60:                                               ; preds = %70, %54
  %61 = phi i64 [ %50, %54 ], [ %71, %70 ]
  %62 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %41, i64 %61, i32 4
  %63 = load i32, ptr %62, align 4, !tbaa !150
  %64 = icmp sgt i32 %63, %3
  br i1 %64, label %73, label %65

65:                                               ; preds = %60
  %66 = icmp eq i32 %63, %3
  br i1 %66, label %67, label %70

67:                                               ; preds = %65
  %68 = trunc i64 %61 to i32
  store i32 %68, ptr %46, align 4, !tbaa !153
  %69 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %41, i64 %61
  br label %97

70:                                               ; preds = %65
  %71 = add nsw i64 %61, 1
  %72 = icmp slt i64 %71, %55
  br i1 %72, label %60, label %75, !llvm.loop !154

73:                                               ; preds = %60
  %74 = trunc i64 %61 to i32
  br label %75

75:                                               ; preds = %70, %73
  %76 = phi i32 [ %74, %73 ], [ %57, %70 ]
  %77 = sext i32 %76 to i64
  %78 = getelementptr %struct.MovieTrackingMarker, ptr %41, i64 %77
  %79 = getelementptr %struct.MovieTrackingMarker, ptr %78, i64 -1
  br label %97

80:                                               ; preds = %58, %90
  %81 = phi i32 [ %91, %90 ], [ %49, %58 ]
  %82 = zext nneg i32 %81 to i64
  %83 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %41, i64 %82, i32 4
  %84 = load i32, ptr %83, align 4, !tbaa !150
  %85 = icmp slt i32 %84, %3
  br i1 %85, label %93, label %86

86:                                               ; preds = %80
  %87 = icmp eq i32 %84, %3
  br i1 %87, label %88, label %90

88:                                               ; preds = %86
  store i32 %81, ptr %46, align 4, !tbaa !153
  %89 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %41, i64 %82
  br label %97

90:                                               ; preds = %86
  %91 = add nsw i32 %81, -1
  %92 = icmp sgt i32 %81, 0
  br i1 %92, label %80, label %93, !llvm.loop !155

93:                                               ; preds = %90, %80, %58
  %94 = phi i32 [ %49, %58 ], [ %81, %80 ], [ -1, %90 ]
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %41, i64 %95
  br label %97

97:                                               ; preds = %34, %39, %67, %75, %88, %93
  %98 = phi ptr [ %69, %67 ], [ %79, %75 ], [ %89, %88 ], [ %96, %93 ], [ null, %34 ], [ %41, %39 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #19
  store float 0x46293E5940000000, ptr %15, align 4, !tbaa !111
  store float 0x46293E5940000000, ptr %8, align 4, !tbaa !111
  store float 0xC6293E5940000000, ptr %16, align 4, !tbaa !111
  store float 0xC6293E5940000000, ptr %9, align 4, !tbaa !111
  %99 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %98, i64 0, i32 1
  call void @minmax_v2v2_v2(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %99) #19
  %100 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %98, i64 0, i32 1, i64 1
  call void @minmax_v2v2_v2(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %100) #19
  %101 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %98, i64 0, i32 1, i64 2
  call void @minmax_v2v2_v2(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %101) #19
  %102 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %98, i64 0, i32 1, i64 3
  call void @minmax_v2v2_v2(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %102) #19
  %103 = load float, ptr %98, align 4, !tbaa !111
  %104 = load float, ptr %8, align 4, !tbaa !111
  %105 = fadd float %103, %104
  store float %105, ptr %8, align 4, !tbaa !111
  %106 = getelementptr inbounds float, ptr %98, i64 1
  %107 = load float, ptr %106, align 4, !tbaa !111
  %108 = load float, ptr %15, align 4, !tbaa !111
  %109 = fadd float %107, %108
  store float %109, ptr %15, align 4, !tbaa !111
  %110 = load float, ptr %98, align 4, !tbaa !111
  %111 = load float, ptr %9, align 4, !tbaa !111
  %112 = fadd float %110, %111
  store float %112, ptr %9, align 4, !tbaa !111
  %113 = load float, ptr %106, align 4, !tbaa !111
  %114 = load float, ptr %16, align 4, !tbaa !111
  %115 = fadd float %113, %114
  store float %115, ptr %16, align 4, !tbaa !111
  call void @minmax_v2v2_v2(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8) #19
  call void @minmax_v2v2_v2(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %9) #19
  %116 = add nsw i32 %19, 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #19
  br label %117

117:                                              ; preds = %29, %97
  %118 = phi i32 [ %116, %97 ], [ %19, %29 ]
  %119 = load ptr, ptr %18, align 8, !tbaa !34
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %17, !llvm.loop !196

121:                                              ; preds = %117, %4
  %122 = phi i32 [ 0, %4 ], [ %118, %117 ]
  %123 = icmp slt i32 %122, 4
  br i1 %123, label %178, label %124

124:                                              ; preds = %121
  %125 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %126 = call ptr %125(i64 noundef 128, ptr noundef nonnull @.str.9) #19
  %127 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %126, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %127, ptr noundef nonnull align 1 dereferenceable(12) @.str.10, i64 12, i1 false) #19
  %128 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %126, i64 0, i32 10
  store float 1.000000e+00, ptr %128, align 8, !tbaa !197
  %129 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %130 = zext nneg i32 %122 to i64
  %131 = shl nuw nsw i64 %130, 3
  %132 = call ptr %129(i64 noundef %131, ptr noundef nonnull @.str.11) #19
  %133 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %126, i64 0, i32 3
  store ptr %132, ptr %133, align 8, !tbaa !48
  %134 = load ptr, ptr %2, align 8, !tbaa !34
  %135 = icmp eq ptr %134, null
  br i1 %135, label %162, label %136

136:                                              ; preds = %124, %158
  %137 = phi ptr [ %160, %158 ], [ %134, %124 ]
  %138 = phi i32 [ %159, %158 ], [ 0, %124 ]
  %139 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %137, i64 0, i32 13
  %140 = load i32, ptr %139, align 8, !tbaa !122
  %141 = and i32 %140, 1
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %153

143:                                              ; preds = %136
  %144 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %137, i64 0, i32 14
  %145 = load i32, ptr %144, align 4, !tbaa !123
  %146 = and i32 %145, 1
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %143
  %149 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %137, i64 0, i32 15
  %150 = load i32, ptr %149, align 8, !tbaa !124
  %151 = and i32 %150, 1
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %158, label %153

153:                                              ; preds = %148, %143, %136
  %154 = load ptr, ptr %133, align 8, !tbaa !48
  %155 = sext i32 %138 to i64
  %156 = getelementptr inbounds ptr, ptr %154, i64 %155
  store ptr %137, ptr %156, align 8, !tbaa !34
  %157 = add nsw i32 %138, 1
  br label %158

158:                                              ; preds = %148, %153
  %159 = phi i32 [ %157, %153 ], [ %138, %148 ]
  %160 = load ptr, ptr %137, align 8, !tbaa !34
  %161 = icmp eq ptr %160, null
  br i1 %161, label %162, label %136, !llvm.loop !198

162:                                              ; preds = %158, %124
  %163 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %126, i64 0, i32 4
  store i32 %122, ptr %163, align 8, !tbaa !199
  %164 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %5, i64 0, i32 1
  store i32 %3, ptr %164, align 4, !tbaa !200
  %165 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %5, i64 0, i32 2
  store i32 0, ptr %165, align 4, !tbaa !202
  %166 = load float, ptr %6, align 4, !tbaa !111
  store float %166, ptr %5, align 4, !tbaa !111
  %167 = load float, ptr %10, align 4, !tbaa !111
  %168 = getelementptr inbounds float, ptr %5, i64 1
  store float %167, ptr %168, align 4, !tbaa !111
  %169 = getelementptr inbounds [4 x [2 x float]], ptr %5, i64 0, i64 2
  %170 = load float, ptr %7, align 4, !tbaa !111
  store float %170, ptr %169, align 4, !tbaa !111
  %171 = load float, ptr %11, align 4, !tbaa !111
  %172 = getelementptr inbounds [4 x [2 x float]], ptr %5, i64 0, i64 2, i64 1
  store float %171, ptr %172, align 4, !tbaa !111
  %173 = getelementptr inbounds [4 x [2 x float]], ptr %5, i64 0, i64 1
  store float %170, ptr %173, align 4, !tbaa !111
  %174 = getelementptr inbounds [4 x [2 x float]], ptr %5, i64 0, i64 1, i64 1
  store float %167, ptr %174, align 4, !tbaa !111
  %175 = getelementptr inbounds [4 x [2 x float]], ptr %5, i64 0, i64 3
  store float %166, ptr %175, align 4, !tbaa !111
  %176 = getelementptr inbounds [4 x [2 x float]], ptr %5, i64 0, i64 3, i64 1
  store float %171, ptr %176, align 4, !tbaa !111
  %177 = call ptr @BKE_tracking_plane_marker_insert(ptr noundef %126, ptr noundef nonnull %5)
  call void @BLI_addtail(ptr noundef %1, ptr noundef %126) #19
  call void @BLI_uniquename(ptr noundef %1, ptr noundef %126, ptr noundef nonnull @.str.10, i8 noundef zeroext 46, i32 noundef 16, i32 noundef 64) #19
  br label %178

178:                                              ; preds = %121, %162
  %179 = phi ptr [ %126, %162 ], [ null, %121 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #19
  ret ptr %179
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_tracking_plane_marker_insert(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !203
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %73, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %1, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !200
  %9 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %0, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %10, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !200
  %13 = icmp sgt i32 %12, %8
  br i1 %13, label %67, label %14

14:                                               ; preds = %6
  %15 = add nsw i32 %4, -1
  %16 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %0, i64 0, i32 11
  %17 = load i32, ptr %16, align 4, !tbaa !204
  %18 = icmp slt i32 %17, %4
  %19 = select i1 %18, i32 %17, i32 %15
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %10, i64 %20, i32 1
  %22 = load i32, ptr %21, align 4, !tbaa !200
  %23 = icmp sgt i32 %22, %8
  br i1 %23, label %28, label %24

24:                                               ; preds = %14
  %25 = sext i32 %4 to i64
  %26 = add i32 %19, 1
  %27 = tail call i32 @llvm.smax.i32(i32 %4, i32 %26)
  br label %30

28:                                               ; preds = %14
  %29 = icmp sgt i32 %19, -1
  br i1 %29, label %50, label %63

30:                                               ; preds = %40, %24
  %31 = phi i64 [ %20, %24 ], [ %41, %40 ]
  %32 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %10, i64 %31, i32 1
  %33 = load i32, ptr %32, align 4, !tbaa !200
  %34 = icmp sgt i32 %33, %8
  br i1 %34, label %43, label %35

35:                                               ; preds = %30
  %36 = icmp eq i32 %33, %8
  br i1 %36, label %37, label %40

37:                                               ; preds = %35
  %38 = trunc i64 %31 to i32
  store i32 %38, ptr %16, align 4, !tbaa !204
  %39 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %10, i64 %31
  br label %67

40:                                               ; preds = %35
  %41 = add nsw i64 %31, 1
  %42 = icmp slt i64 %41, %25
  br i1 %42, label %30, label %45, !llvm.loop !205

43:                                               ; preds = %30
  %44 = trunc i64 %31 to i32
  br label %45

45:                                               ; preds = %40, %43
  %46 = phi i32 [ %44, %43 ], [ %27, %40 ]
  %47 = sext i32 %46 to i64
  %48 = getelementptr %struct.MovieTrackingPlaneMarker, ptr %10, i64 %47
  %49 = getelementptr %struct.MovieTrackingPlaneMarker, ptr %48, i64 -1
  br label %67

50:                                               ; preds = %28, %60
  %51 = phi i32 [ %61, %60 ], [ %19, %28 ]
  %52 = zext nneg i32 %51 to i64
  %53 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %10, i64 %52, i32 1
  %54 = load i32, ptr %53, align 4, !tbaa !200
  %55 = icmp slt i32 %54, %8
  br i1 %55, label %63, label %56

56:                                               ; preds = %50
  %57 = icmp eq i32 %54, %8
  br i1 %57, label %58, label %60

58:                                               ; preds = %56
  store i32 %51, ptr %16, align 4, !tbaa !204
  %59 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %10, i64 %52
  br label %67

60:                                               ; preds = %56
  %61 = add nsw i32 %51, -1
  %62 = icmp sgt i32 %51, 0
  br i1 %62, label %50, label %63, !llvm.loop !206

63:                                               ; preds = %60, %50, %28
  %64 = phi i32 [ %19, %28 ], [ %51, %50 ], [ -1, %60 ]
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %10, i64 %65
  br label %67

67:                                               ; preds = %6, %37, %45, %58, %63
  %68 = phi ptr [ %39, %37 ], [ %49, %45 ], [ %59, %58 ], [ %66, %63 ], [ %10, %6 ]
  %69 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %68, i64 0, i32 1
  %70 = load i32, ptr %69, align 4, !tbaa !200
  %71 = icmp eq i32 %70, %8
  %72 = select i1 %71, ptr %68, ptr null
  br label %73

73:                                               ; preds = %67, %2
  %74 = phi ptr [ %72, %67 ], [ null, %2 ]
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %0, i64 0, i32 6
  %78 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %1, i64 0, i32 1
  %79 = sext i32 %4 to i64
  br label %81

80:                                               ; preds = %73
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %74, ptr noundef nonnull align 4 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !207
  br label %119

81:                                               ; preds = %76, %84
  %82 = phi i64 [ %79, %76 ], [ %85, %84 ]
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %93, label %84

84:                                               ; preds = %81
  %85 = add nsw i64 %82, -1
  %86 = load ptr, ptr %77, align 8, !tbaa !46
  %87 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %86, i64 %85, i32 1
  %88 = load i32, ptr %87, align 4, !tbaa !200
  %89 = load i32, ptr %78, align 4, !tbaa !200
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %81, !llvm.loop !208

91:                                               ; preds = %84
  %92 = trunc i64 %82 to i32
  br label %93

93:                                               ; preds = %81, %91
  %94 = phi i32 [ %92, %91 ], [ 0, %81 ]
  %95 = phi i64 [ %85, %91 ], [ -1, %81 ]
  %96 = add nsw i32 %4, 1
  store i32 %96, ptr %3, align 8, !tbaa !203
  %97 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !34
  %98 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %0, i64 0, i32 6
  %99 = load ptr, ptr %98, align 8, !tbaa !46
  %100 = sext i32 %96 to i64
  %101 = mul nsw i64 %100, 40
  %102 = tail call ptr %97(ptr noundef %99, i64 noundef %101, ptr noundef nonnull @__func__.BKE_tracking_plane_marker_insert) #19
  store ptr %102, ptr %98, align 8, !tbaa !46
  %103 = shl i64 %95, 32
  %104 = ashr exact i64 %103, 32
  %105 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %102, i64 %104
  %106 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %105, i64 2
  %107 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %105, i64 1
  %108 = load i32, ptr %3, align 8, !tbaa !203
  %109 = xor i32 %94, -1
  %110 = add i32 %108, %109
  %111 = sext i32 %110 to i64
  %112 = mul nsw i64 %111, 40
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %106, ptr nonnull align 4 %107, i64 %112, i1 false)
  %113 = load ptr, ptr %98, align 8, !tbaa !46
  %114 = sext i32 %94 to i64
  %115 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %113, i64 %114
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %115, ptr noundef nonnull align 4 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !207
  %116 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %0, i64 0, i32 11
  store i32 %94, ptr %116, align 4, !tbaa !204
  %117 = load ptr, ptr %98, align 8, !tbaa !46
  %118 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %117, i64 %114
  br label %119

119:                                              ; preds = %93, %80
  %120 = phi ptr [ %74, %80 ], [ %118, %93 ]
  ret ptr %120
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_tracking_plane_track_unique_name(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @BLI_uniquename(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.10, i8 noundef zeroext 46, i32 noundef 16, i32 noundef 64) #19
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_tracking_plane_track_free(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %6(ptr noundef nonnull %3) #19
  br label %7

7:                                                ; preds = %5, %1
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !48
  tail call void %8(ptr noundef %10) #19
  ret void
}

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_tracking_plane_track_get_named(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #13 {
  %4 = getelementptr inbounds %struct.MovieTrackingObject, ptr %1, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !82
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  %8 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %struct.MovieTrackingObject, ptr %1, i64 0, i32 6
  %10 = select i1 %7, ptr %9, ptr %8
  br label %11

11:                                               ; preds = %15, %3
  %12 = phi ptr [ %10, %3 ], [ %13, %15 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %13, i64 0, i32 2
  %17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(1) %2) #20
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %11, !llvm.loop !209

19:                                               ; preds = %11, %15
  %20 = phi ptr [ %13, %15 ], [ null, %11 ]
  ret ptr %20
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local nonnull ptr @BKE_tracking_object_get_plane_tracks(ptr noundef readnone %0, ptr noundef readonly %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.MovieTrackingObject, ptr %1, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !82
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  %7 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 3
  %8 = getelementptr inbounds %struct.MovieTrackingObject, ptr %1, i64 0, i32 6
  %9 = select i1 %6, ptr %8, ptr %7
  ret ptr %9
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_tracking_plane_track_get_active(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !210
  %4 = icmp eq ptr %3, null
  br i1 %4, label %27, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 8
  %7 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 9
  %8 = load i32, ptr %7, align 8, !tbaa !84
  %9 = tail call ptr @BLI_findlink(ptr noundef nonnull %6, i32 noundef %8) #19
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.MovieTrackingObject, ptr %9, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !82
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.MovieTrackingObject, ptr %9, i64 0, i32 6
  br label %20

18:                                               ; preds = %11, %5
  %19 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 3
  br label %20

20:                                               ; preds = %16, %18
  %21 = phi ptr [ %17, %16 ], [ %19, %18 ]
  %22 = load ptr, ptr %2, align 8, !tbaa !210
  %23 = tail call i32 @BLI_findindex(ptr noundef nonnull %21, ptr noundef %22) #19
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  %26 = load ptr, ptr %2, align 8, !tbaa !210
  br label %27

27:                                               ; preds = %20, %1, %25
  %28 = phi ptr [ %26, %25 ], [ null, %1 ], [ null, %20 ]
  ret ptr %28
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_tracking_plane_tracks_deselect_all(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %9, %4 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %5, i64 0, i32 8
  %7 = load i32, ptr %6, align 4, !tbaa !211
  %8 = and i32 %7, -2
  store i32 %8, ptr %6, align 4, !tbaa !211
  %9 = load ptr, ptr %5, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %4, !llvm.loop !212

11:                                               ; preds = %4, %1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: write) uwtable
define dso_local ptr @BKE_tracking_plane_marker_get_exact(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !203
  %5 = icmp ne i32 %4, 0
  tail call void @llvm.assume(i1 %5)
  %6 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %7, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !200
  %10 = icmp sgt i32 %9, %1
  br i1 %10, label %68, label %11

11:                                               ; preds = %2
  %12 = add nsw i32 %4, -1
  %13 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %0, i64 0, i32 11
  %14 = load i32, ptr %13, align 4, !tbaa !204
  %15 = icmp slt i32 %14, %4
  %16 = select i1 %15, i32 %14, i32 %12
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %7, i64 %17, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !200
  %20 = icmp sgt i32 %19, %1
  br i1 %20, label %25, label %21

21:                                               ; preds = %11
  %22 = sext i32 %4 to i64
  %23 = add i32 %16, 1
  %24 = tail call i32 @llvm.smax.i32(i32 %4, i32 %23)
  br label %29

25:                                               ; preds = %11
  %26 = icmp sgt i32 %16, -1
  br i1 %26, label %27, label %64

27:                                               ; preds = %25
  %28 = zext nneg i32 %16 to i64
  br label %49

29:                                               ; preds = %39, %21
  %30 = phi i64 [ %17, %21 ], [ %40, %39 ]
  %31 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %7, i64 %30, i32 1
  %32 = load i32, ptr %31, align 4, !tbaa !200
  %33 = icmp sgt i32 %32, %1
  br i1 %33, label %42, label %34

34:                                               ; preds = %29
  %35 = icmp eq i32 %32, %1
  br i1 %35, label %36, label %39

36:                                               ; preds = %34
  %37 = trunc i64 %30 to i32
  store i32 %37, ptr %13, align 4, !tbaa !204
  %38 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %7, i64 %30
  br label %68

39:                                               ; preds = %34
  %40 = add nsw i64 %30, 1
  %41 = icmp slt i64 %40, %22
  br i1 %41, label %29, label %44, !llvm.loop !205

42:                                               ; preds = %29
  %43 = trunc i64 %30 to i32
  br label %44

44:                                               ; preds = %39, %42
  %45 = phi i32 [ %43, %42 ], [ %24, %39 ]
  %46 = sext i32 %45 to i64
  %47 = getelementptr %struct.MovieTrackingPlaneMarker, ptr %7, i64 %46
  %48 = getelementptr %struct.MovieTrackingPlaneMarker, ptr %47, i64 -1
  br label %68

49:                                               ; preds = %27, %59
  %50 = phi i64 [ %28, %27 ], [ %60, %59 ]
  %51 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %7, i64 %50, i32 1
  %52 = load i32, ptr %51, align 4, !tbaa !200
  %53 = icmp slt i32 %52, %1
  br i1 %53, label %62, label %54

54:                                               ; preds = %49
  %55 = icmp eq i32 %52, %1
  br i1 %55, label %56, label %59

56:                                               ; preds = %54
  %57 = trunc i64 %50 to i32
  store i32 %57, ptr %13, align 4, !tbaa !204
  %58 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %7, i64 %50
  br label %68

59:                                               ; preds = %54
  %60 = add nsw i64 %50, -1
  %61 = icmp sgt i64 %50, 0
  br i1 %61, label %49, label %64, !llvm.loop !206

62:                                               ; preds = %49
  %63 = trunc i64 %50 to i32
  br label %64

64:                                               ; preds = %62, %59, %25
  %65 = phi i32 [ %16, %25 ], [ %63, %62 ], [ -1, %59 ]
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %7, i64 %66
  br label %68

68:                                               ; preds = %2, %36, %44, %56, %64
  %69 = phi ptr [ %38, %36 ], [ %48, %44 ], [ %58, %56 ], [ %67, %64 ], [ %7, %2 ]
  %70 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %69, i64 0, i32 1
  %71 = load i32, ptr %70, align 4, !tbaa !200
  %72 = icmp eq i32 %71, %1
  %73 = select i1 %72, ptr %69, ptr null
  ret ptr %73
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_tracking_plane_marker_delete(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !203
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %39

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %0, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = zext nneg i32 %4 to i64
  br label %10

10:                                               ; preds = %6, %36
  %11 = phi i64 [ 0, %6 ], [ %37, %36 ]
  %12 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %8, i64 %11, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !200
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %15, label %36

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %0, i64 0, i32 7
  %17 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %0, i64 0, i32 6
  %18 = icmp eq i32 %4, 1
  br i1 %18, label %34, label %19

19:                                               ; preds = %15
  %20 = trunc i64 %11 to i32
  %21 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %8, i64 %11
  %22 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %21, i64 1
  %23 = xor i32 %20, -1
  %24 = add nsw i32 %4, %23
  %25 = sext i32 %24 to i64
  %26 = mul nsw i64 %25, 40
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %21, ptr nonnull align 4 %22, i64 %26, i1 false)
  %27 = load i32, ptr %16, align 8, !tbaa !203
  %28 = add nsw i32 %27, -1
  store i32 %28, ptr %16, align 8, !tbaa !203
  %29 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !34
  %30 = load ptr, ptr %17, align 8, !tbaa !46
  %31 = sext i32 %28 to i64
  %32 = shl nsw i64 %31, 6
  %33 = tail call ptr %29(ptr noundef %30, i64 noundef %32, ptr noundef nonnull @__func__.BKE_tracking_plane_marker_delete) #19
  store ptr %33, ptr %17, align 8, !tbaa !46
  br label %39

34:                                               ; preds = %15
  %35 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %35(ptr noundef %8) #19
  store ptr null, ptr %17, align 8, !tbaa !46
  store i32 0, ptr %16, align 8, !tbaa !203
  br label %39

36:                                               ; preds = %10
  %37 = add nuw nsw i64 %11, 1
  %38 = icmp eq i64 %37, %9
  br i1 %38, label %39, label %10, !llvm.loop !213

39:                                               ; preds = %36, %2, %19, %34
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_tracking_plane_marker_get(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #11 {
  %3 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !203
  %5 = add nsw i32 %4, -1
  %6 = icmp eq i32 %4, 0
  br i1 %6, label %66, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %9, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !200
  %12 = icmp sgt i32 %11, %1
  br i1 %12, label %66, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %0, i64 0, i32 11
  %15 = load i32, ptr %14, align 4, !tbaa !204
  %16 = icmp slt i32 %15, %4
  %17 = select i1 %16, i32 %15, i32 %5
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %9, i64 %18, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !200
  %21 = icmp sgt i32 %20, %1
  br i1 %21, label %27, label %22

22:                                               ; preds = %13
  %23 = sext i32 %17 to i64
  %24 = sext i32 %4 to i64
  %25 = add i32 %17, 1
  %26 = tail call i32 @llvm.smax.i32(i32 %4, i32 %25)
  br label %29

27:                                               ; preds = %13
  %28 = icmp sgt i32 %17, -1
  br i1 %28, label %49, label %62

29:                                               ; preds = %22, %39
  %30 = phi i64 [ %23, %22 ], [ %40, %39 ]
  %31 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %9, i64 %30, i32 1
  %32 = load i32, ptr %31, align 4, !tbaa !200
  %33 = icmp sgt i32 %32, %1
  br i1 %33, label %42, label %34

34:                                               ; preds = %29
  %35 = icmp eq i32 %32, %1
  br i1 %35, label %36, label %39

36:                                               ; preds = %34
  %37 = trunc i64 %30 to i32
  store i32 %37, ptr %14, align 4, !tbaa !204
  %38 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %9, i64 %30
  br label %66

39:                                               ; preds = %34
  %40 = add nsw i64 %30, 1
  %41 = icmp slt i64 %40, %24
  br i1 %41, label %29, label %44, !llvm.loop !205

42:                                               ; preds = %29
  %43 = trunc i64 %30 to i32
  br label %44

44:                                               ; preds = %39, %42
  %45 = phi i32 [ %43, %42 ], [ %26, %39 ]
  %46 = sext i32 %45 to i64
  %47 = getelementptr %struct.MovieTrackingPlaneMarker, ptr %9, i64 %46
  %48 = getelementptr %struct.MovieTrackingPlaneMarker, ptr %47, i64 -1
  br label %66

49:                                               ; preds = %27, %59
  %50 = phi i32 [ %60, %59 ], [ %17, %27 ]
  %51 = zext nneg i32 %50 to i64
  %52 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %9, i64 %51, i32 1
  %53 = load i32, ptr %52, align 4, !tbaa !200
  %54 = icmp slt i32 %53, %1
  br i1 %54, label %62, label %55

55:                                               ; preds = %49
  %56 = icmp eq i32 %53, %1
  br i1 %56, label %57, label %59

57:                                               ; preds = %55
  store i32 %50, ptr %14, align 4, !tbaa !204
  %58 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %9, i64 %51
  br label %66

59:                                               ; preds = %55
  %60 = add nsw i32 %50, -1
  %61 = icmp sgt i32 %50, 0
  br i1 %61, label %49, label %62, !llvm.loop !206

62:                                               ; preds = %49, %59, %27
  %63 = phi i32 [ %17, %27 ], [ %50, %49 ], [ -1, %59 ]
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %9, i64 %64
  br label %66

66:                                               ; preds = %7, %2, %62, %57, %44, %36
  %67 = phi ptr [ %38, %36 ], [ %48, %44 ], [ %58, %57 ], [ %65, %62 ], [ null, %2 ], [ %9, %7 ]
  ret ptr %67
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_tracking_plane_marker_ensure(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.MovieTrackingPlaneMarker, align 4
  %4 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %0, i64 0, i32 7
  %5 = load i32, ptr %4, align 8, !tbaa !203
  %6 = icmp ne i32 %5, 0
  tail call void @llvm.assume(i1 %6)
  %7 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %0, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %8, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !200
  %11 = icmp sgt i32 %10, %1
  br i1 %11, label %69, label %12

12:                                               ; preds = %2
  %13 = add nsw i32 %5, -1
  %14 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %0, i64 0, i32 11
  %15 = load i32, ptr %14, align 4, !tbaa !204
  %16 = icmp slt i32 %15, %5
  %17 = select i1 %16, i32 %15, i32 %13
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %8, i64 %18, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !200
  %21 = icmp sgt i32 %20, %1
  br i1 %21, label %26, label %22

22:                                               ; preds = %12
  %23 = sext i32 %5 to i64
  %24 = add i32 %17, 1
  %25 = tail call i32 @llvm.smax.i32(i32 %5, i32 %24)
  br label %30

26:                                               ; preds = %12
  %27 = icmp sgt i32 %17, -1
  br i1 %27, label %28, label %65

28:                                               ; preds = %26
  %29 = zext nneg i32 %17 to i64
  br label %50

30:                                               ; preds = %40, %22
  %31 = phi i64 [ %18, %22 ], [ %41, %40 ]
  %32 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %8, i64 %31, i32 1
  %33 = load i32, ptr %32, align 4, !tbaa !200
  %34 = icmp sgt i32 %33, %1
  br i1 %34, label %43, label %35

35:                                               ; preds = %30
  %36 = icmp eq i32 %33, %1
  br i1 %36, label %37, label %40

37:                                               ; preds = %35
  %38 = trunc i64 %31 to i32
  store i32 %38, ptr %14, align 4, !tbaa !204
  %39 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %8, i64 %31
  br label %69

40:                                               ; preds = %35
  %41 = add nsw i64 %31, 1
  %42 = icmp slt i64 %41, %23
  br i1 %42, label %30, label %45, !llvm.loop !205

43:                                               ; preds = %30
  %44 = trunc i64 %31 to i32
  br label %45

45:                                               ; preds = %40, %43
  %46 = phi i32 [ %44, %43 ], [ %25, %40 ]
  %47 = sext i32 %46 to i64
  %48 = getelementptr %struct.MovieTrackingPlaneMarker, ptr %8, i64 %47
  %49 = getelementptr %struct.MovieTrackingPlaneMarker, ptr %48, i64 -1
  br label %69

50:                                               ; preds = %28, %60
  %51 = phi i64 [ %29, %28 ], [ %61, %60 ]
  %52 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %8, i64 %51, i32 1
  %53 = load i32, ptr %52, align 4, !tbaa !200
  %54 = icmp slt i32 %53, %1
  br i1 %54, label %63, label %55

55:                                               ; preds = %50
  %56 = icmp eq i32 %53, %1
  br i1 %56, label %57, label %60

57:                                               ; preds = %55
  %58 = trunc i64 %51 to i32
  store i32 %58, ptr %14, align 4, !tbaa !204
  %59 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %8, i64 %51
  br label %69

60:                                               ; preds = %55
  %61 = add nsw i64 %51, -1
  %62 = icmp sgt i64 %51, 0
  br i1 %62, label %50, label %65, !llvm.loop !206

63:                                               ; preds = %50
  %64 = trunc i64 %51 to i32
  br label %65

65:                                               ; preds = %63, %60, %26
  %66 = phi i32 [ %17, %26 ], [ %64, %63 ], [ -1, %60 ]
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %8, i64 %67
  br label %69

69:                                               ; preds = %2, %37, %45, %57, %65
  %70 = phi ptr [ %39, %37 ], [ %49, %45 ], [ %59, %57 ], [ %68, %65 ], [ %8, %2 ]
  %71 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %70, i64 0, i32 1
  %72 = load i32, ptr %71, align 4, !tbaa !200
  %73 = icmp eq i32 %72, %1
  br i1 %73, label %77, label %74

74:                                               ; preds = %69
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %3, ptr noundef nonnull align 4 dereferenceable(40) %70, i64 40, i1 false), !tbaa.struct !207
  %75 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %3, i64 0, i32 1
  store i32 %1, ptr %75, align 4, !tbaa !200
  %76 = call ptr @BKE_tracking_plane_marker_insert(ptr noundef %0, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #19
  br label %77

77:                                               ; preds = %74, %69
  %78 = phi ptr [ %76, %74 ], [ %70, %69 ]
  ret ptr %78
}

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @BKE_tracking_object_unique_name(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 8
  tail call void @BLI_uniquename(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.13, i8 noundef zeroext 46, i32 noundef 16, i32 noundef 64) #19
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @BKE_tracking_object_delete(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 8
  %4 = tail call i32 @BLI_findindex(ptr noundef nonnull %3, ptr noundef %1) #19
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %70, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.MovieTrackingObject, ptr %1, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !82
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %70

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.MovieTrackingObject, ptr %1, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = icmp eq ptr %13, null
  br i1 %14, label %27, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !131
  br label %18

18:                                               ; preds = %15, %23
  %19 = phi ptr [ %17, %15 ], [ %24, %23 ]
  %20 = phi ptr [ %13, %15 ], [ %25, %23 ]
  %21 = icmp eq ptr %20, %19
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store ptr null, ptr %16, align 8, !tbaa !131
  br label %23

23:                                               ; preds = %22, %18
  %24 = phi ptr [ null, %22 ], [ %19, %18 ]
  %25 = load ptr, ptr %20, align 8, !tbaa !34
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %18, !llvm.loop !214

27:                                               ; preds = %23, %11
  %28 = load ptr, ptr %12, align 8, !tbaa !34
  %29 = icmp eq ptr %28, null
  br i1 %29, label %40, label %30

30:                                               ; preds = %27, %37
  %31 = phi ptr [ %38, %37 ], [ %28, %27 ]
  %32 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %31, i64 0, i32 10
  %33 = load ptr, ptr %32, align 8, !tbaa !38
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %30
  %36 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %36(ptr noundef nonnull %33) #19
  br label %37

37:                                               ; preds = %35, %30
  %38 = load ptr, ptr %31, align 8, !tbaa !34
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %30, !llvm.loop !43

40:                                               ; preds = %37, %27
  tail call void @BLI_freelistN(ptr noundef nonnull %12) #19
  %41 = getelementptr inbounds %struct.MovieTrackingObject, ptr %1, i64 0, i32 6
  %42 = load ptr, ptr %41, align 8, !tbaa !34
  %43 = icmp eq ptr %42, null
  br i1 %43, label %57, label %44

44:                                               ; preds = %40, %51
  %45 = phi ptr [ %55, %51 ], [ %42, %40 ]
  %46 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %45, i64 0, i32 6
  %47 = load ptr, ptr %46, align 8, !tbaa !46
  %48 = icmp eq ptr %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %44
  %50 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %50(ptr noundef nonnull %47) #19
  br label %51

51:                                               ; preds = %49, %44
  %52 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %53 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %45, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !48
  tail call void %52(ptr noundef %54) #19
  %55 = load ptr, ptr %45, align 8, !tbaa !34
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %44, !llvm.loop !49

57:                                               ; preds = %51, %40
  tail call void @BLI_freelistN(ptr noundef nonnull %41) #19
  %58 = getelementptr inbounds %struct.MovieTrackingObject, ptr %1, i64 0, i32 7, i32 4
  %59 = load ptr, ptr %58, align 8, !tbaa !50
  %60 = icmp eq ptr %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %57
  %62 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %62(ptr noundef nonnull %59) #19
  br label %63

63:                                               ; preds = %57, %61
  tail call void @BLI_freelinkN(ptr noundef nonnull %3, ptr noundef %1) #19
  %64 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 10
  %65 = load i32, ptr %64, align 4, !tbaa !81
  %66 = add nsw i32 %65, -1
  store i32 %66, ptr %64, align 4, !tbaa !81
  %67 = tail call i32 @llvm.usub.sat.i32(i32 %4, i32 1)
  %68 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 9
  store i32 %67, ptr %68, align 8, !tbaa !84
  %69 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 12
  store i32 0, ptr %69, align 8, !tbaa !88
  br label %70

70:                                               ; preds = %6, %2, %63
  %71 = phi i8 [ 1, %63 ], [ 0, %2 ], [ 0, %6 ]
  ret i8 %71
}

declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_tracking_object_get_named(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #13 {
  %3 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 8
  br label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ %3, %2 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.MovieTrackingObject, ptr %6, i64 0, i32 2
  %10 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %1) #20
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %4, !llvm.loop !215

12:                                               ; preds = %4, %8
  %13 = phi ptr [ %6, %8 ], [ null, %4 ]
  ret ptr %13
}

declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_tracking_object_get_camera(ptr nocapture noundef readonly %0) local_unnamed_addr #15 {
  %2 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 8
  br label %3

3:                                                ; preds = %7, %1
  %4 = phi ptr [ %2, %1 ], [ %5, %7 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.MovieTrackingObject, ptr %5, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !82
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %3, label %12, !llvm.loop !216

12:                                               ; preds = %3, %7
  %13 = phi ptr [ %5, %7 ], [ null, %3 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_tracking_camera_to_blender(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #4 {
  %6 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1, i32 5
  %7 = load float, ptr %6, align 4, !tbaa !110
  %8 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1, i32 3
  %9 = load float, ptr %8, align 4, !tbaa !65
  %10 = getelementptr inbounds %struct.Camera, ptr %2, i64 0, i32 11
  store float %9, ptr %10, align 4, !tbaa !217
  %11 = getelementptr inbounds %struct.Camera, ptr %2, i64 0, i32 18
  store i8 0, ptr %11, align 8, !tbaa !219
  %12 = fmul float %7, %9
  %13 = sitofp i32 %3 to float
  %14 = fdiv float %12, %13
  %15 = getelementptr inbounds %struct.Camera, ptr %2, i64 0, i32 8
  store float %14, ptr %15, align 8, !tbaa !220
  %16 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1, i32 4
  %17 = load float, ptr %16, align 8, !tbaa !66
  %18 = fmul float %17, %13
  %19 = fptosi float %18 to i32
  %20 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 33
  store i32 %19, ptr %20, align 4, !tbaa !221
  %21 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 34
  store i32 %4, ptr %21, align 8, !tbaa !222
  %22 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 63
  store float 1.000000e+00, ptr %22, align 4, !tbaa !223
  %23 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 64
  store float 1.000000e+00, ptr %23, align 8, !tbaa !224
  %24 = getelementptr inbounds %struct.Camera, ptr %2, i64 0, i32 13
  %25 = getelementptr inbounds %struct.Camera, ptr %2, i64 0, i32 14
  %26 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1, i32 8
  %27 = load float, ptr %26, align 4, !tbaa !111
  %28 = fneg float %27
  %29 = tail call float @llvm.fmuladd.f32(float %13, float 5.000000e-01, float %28)
  %30 = fdiv float %29, %13
  store float %30, ptr %24, align 4, !tbaa !111
  %31 = sitofp i32 %4 to float
  %32 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1, i32 8, i64 1
  %33 = load float, ptr %32, align 4, !tbaa !111
  %34 = fneg float %33
  %35 = tail call float @llvm.fmuladd.f32(float %31, float 5.000000e-01, float %34)
  %36 = fdiv float %35, %13
  store float %36, ptr %25, align 4, !tbaa !111
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_tracking_camera_get_reconstructed_interpolate(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [4 x [4 x float]], align 16
  %6 = getelementptr inbounds %struct.MovieTrackingObject, ptr %1, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !82
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 4
  %11 = getelementptr inbounds %struct.MovieTrackingObject, ptr %1, i64 0, i32 7
  %12 = select i1 %9, ptr %11, ptr %10
  %13 = getelementptr inbounds %struct.MovieTrackingReconstruction, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !50
  %15 = getelementptr inbounds %struct.MovieTrackingReconstruction, ptr %12, i64 0, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !112
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %63, label %18

18:                                               ; preds = %4
  %19 = load i32, ptr %14, align 4, !tbaa !113
  %20 = icmp sgt i32 %19, %2
  br i1 %20, label %63, label %21

21:                                               ; preds = %18
  %22 = add nsw i32 %16, -1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.MovieReconstructedCamera, ptr %14, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !113
  %26 = icmp slt i32 %25, %2
  br i1 %26, label %63, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.MovieTrackingReconstruction, ptr %12, i64 0, i32 2
  %29 = load i32, ptr %28, align 8, !tbaa !115
  %30 = icmp slt i32 %29, %16
  %31 = select i1 %30, i32 %29, i32 0
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.MovieReconstructedCamera, ptr %14, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !113
  %35 = icmp slt i32 %34, %2
  %36 = select i1 %35, i32 1, i32 -1
  br label %37

37:                                               ; preds = %59, %27
  %38 = phi i32 [ %31, %27 ], [ %60, %59 ]
  %39 = phi i32 [ undef, %27 ], [ %62, %59 ]
  %40 = icmp sgt i32 %38, -1
  %41 = icmp slt i32 %38, %16
  %42 = and i1 %40, %41
  br i1 %42, label %43, label %63

43:                                               ; preds = %37
  %44 = zext nneg i32 %38 to i64
  %45 = getelementptr inbounds %struct.MovieReconstructedCamera, ptr %14, i64 %44
  %46 = load i32, ptr %45, align 4, !tbaa !113
  %47 = icmp sgt i32 %46, %2
  %48 = select i1 %35, i1 %47, i1 false
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = add nsw i32 %38, -1
  br label %59

51:                                               ; preds = %43
  %52 = icmp sge i32 %46, %2
  %53 = select i1 %35, i1 true, i1 %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = icmp eq i32 %46, %2
  br i1 %55, label %56, label %57

56:                                               ; preds = %54
  store i32 %38, ptr %28, align 8, !tbaa !115
  br label %59

57:                                               ; preds = %54
  %58 = add nsw i32 %38, %36
  br label %59

59:                                               ; preds = %51, %57, %56, %49
  %60 = phi i32 [ %38, %56 ], [ %58, %57 ], [ %38, %49 ], [ %38, %51 ]
  %61 = phi i1 [ false, %56 ], [ true, %57 ], [ false, %49 ], [ false, %51 ]
  %62 = phi i32 [ %38, %56 ], [ %39, %57 ], [ %50, %49 ], [ %38, %51 ]
  br i1 %61, label %37, label %63

63:                                               ; preds = %37, %59, %21, %18, %4
  %64 = phi i32 [ -1, %4 ], [ 0, %18 ], [ %22, %21 ], [ %62, %59 ], [ -1, %37 ]
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  tail call void @unit_m4(ptr noundef %3) #19
  br label %98

67:                                               ; preds = %63
  %68 = sext i32 %64 to i64
  %69 = getelementptr inbounds %struct.MovieReconstructedCamera, ptr %14, i64 %68
  %70 = load i32, ptr %69, align 4, !tbaa !113
  %71 = icmp ne i32 %70, %2
  %72 = icmp sgt i32 %64, 0
  %73 = and i1 %72, %71
  %74 = add nsw i32 %16, -1
  %75 = icmp slt i32 %64, %74
  %76 = select i1 %73, i1 %75, i1 false
  br i1 %76, label %77, label %88

77:                                               ; preds = %67
  %78 = sitofp i32 %2 to float
  %79 = sitofp i32 %70 to float
  %80 = fsub float %78, %79
  %81 = getelementptr %struct.MovieReconstructedCamera, ptr %69, i64 1
  %82 = load i32, ptr %81, align 4, !tbaa !113
  %83 = sub nsw i32 %82, %70
  %84 = sitofp i32 %83 to float
  %85 = fdiv float %80, %84
  %86 = getelementptr inbounds %struct.MovieReconstructedCamera, ptr %14, i64 %68, i32 2
  %87 = getelementptr %struct.MovieReconstructedCamera, ptr %69, i64 1, i32 2
  tail call void @blend_m4_m4m4(ptr noundef %3, ptr noundef nonnull %86, ptr noundef %87, float noundef %85) #19
  br label %90

88:                                               ; preds = %67
  %89 = getelementptr inbounds %struct.MovieReconstructedCamera, ptr %14, i64 %68, i32 2
  tail call void @copy_m4_m4(ptr noundef %3, ptr noundef nonnull %89) #19
  br label %90

90:                                               ; preds = %88, %77
  %91 = load i32, ptr %6, align 8, !tbaa !82
  %92 = and i32 %91, 1
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #19
  %95 = getelementptr inbounds %struct.MovieTrackingObject, ptr %1, i64 0, i32 4
  %96 = load float, ptr %95, align 4, !tbaa !85
  %97 = fdiv float 1.000000e+00, %96
  call void @scale_m4_fl(ptr noundef nonnull %5, float noundef %97) #19
  call void @mul_m4_m4m4(ptr noundef %3, ptr noundef %3, ptr noundef nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #19
  br label %98

98:                                               ; preds = %94, %90, %66
  ret void
}

declare void @blend_m4_m4m4(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_tracking_distortion_new(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.libmv_CameraIntrinsicsOptions, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %4) #19
  call void @tracking_cameraIntrinscisOptionsFromTracking(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %4) #19
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %6 = call ptr %5(i64 noundef 8, ptr noundef nonnull @.str.14) #19
  %7 = call ptr @libmv_cameraIntrinsicsNew(ptr noundef nonnull %4) #19
  store ptr %7, ptr %6, align 8, !tbaa !60
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %4) #19
  ret ptr %6
}

declare void @tracking_cameraIntrinscisOptionsFromTracking(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @libmv_cameraIntrinsicsNew(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @BKE_tracking_distortion_update(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.libmv_CameraIntrinsicsOptions, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %5) #19
  call void @tracking_cameraIntrinscisOptionsFromTracking(ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %5) #19
  %6 = load ptr, ptr %0, align 8, !tbaa !60
  call void @libmv_cameraIntrinsicsUpdate(ptr noundef nonnull %5, ptr noundef %6) #19
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %5) #19
  ret void
}

declare void @libmv_cameraIntrinsicsUpdate(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @BKE_tracking_distortion_set_threads(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !60
  tail call void @libmv_cameraIntrinsicsSetThreads(ptr noundef %3, i32 noundef %1) #19
  ret void
}

declare void @libmv_cameraIntrinsicsSetThreads(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_tracking_distortion_copy(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 8, ptr noundef nonnull @.str.14) #19
  %4 = load ptr, ptr %0, align 8, !tbaa !60
  %5 = tail call ptr @libmv_cameraIntrinsicsCopy(ptr noundef %4) #19
  store ptr %5, ptr %3, align 8, !tbaa !60
  ret ptr %3
}

declare ptr @libmv_cameraIntrinsicsCopy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_tracking_distortion_exec(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5, i8 noundef zeroext %6) local_unnamed_addr #0 {
  %8 = alloca %struct.libmv_CameraIntrinsicsOptions, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %8) #19
  call void @tracking_cameraIntrinscisOptionsFromTracking(ptr noundef %1, i32 noundef %3, i32 noundef %4, ptr noundef nonnull %8) #19
  %9 = load ptr, ptr %0, align 8, !tbaa !60
  call void @libmv_cameraIntrinsicsUpdate(ptr noundef nonnull %8, ptr noundef %9) #19
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %8) #19
  %10 = call ptr @IMB_dupImBuf(ptr noundef %2) #19
  %11 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 9
  %12 = load ptr, ptr %11, align 8, !tbaa !225
  %13 = icmp eq ptr %12, null
  %14 = icmp eq i8 %6, 0
  %15 = load ptr, ptr %0, align 8, !tbaa !60
  br i1 %13, label %32, label %16

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !228
  %19 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 3
  %20 = load i32, ptr %19, align 4, !tbaa !229
  %21 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 5
  %22 = load i32, ptr %21, align 4, !tbaa !230
  %23 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 9
  %24 = load ptr, ptr %23, align 8, !tbaa !225
  br i1 %14, label %26, label %25

25:                                               ; preds = %16
  call void @libmv_cameraIntrinsicsUndistortFloat(ptr noundef %15, ptr noundef nonnull %12, i32 noundef %18, i32 noundef %20, float noundef %5, i32 noundef %22, ptr noundef %24) #19
  br label %27

26:                                               ; preds = %16
  call void @libmv_cameraIntrinsicsDistortFloat(ptr noundef %15, ptr noundef nonnull %12, i32 noundef %18, i32 noundef %20, float noundef %5, i32 noundef %22, ptr noundef %24) #19
  br label %27

27:                                               ; preds = %26, %25
  %28 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 8
  %29 = load ptr, ptr %28, align 8, !tbaa !231
  %30 = icmp eq ptr %29, null
  br i1 %30, label %45, label %31

31:                                               ; preds = %27
  call void @imb_freerectImBuf(ptr noundef %2) #19
  br label %45

32:                                               ; preds = %7
  %33 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 8
  %34 = load ptr, ptr %33, align 8, !tbaa !231
  %35 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 2
  %36 = load i32, ptr %35, align 8, !tbaa !228
  %37 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 3
  %38 = load i32, ptr %37, align 4, !tbaa !229
  %39 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 5
  %40 = load i32, ptr %39, align 4, !tbaa !230
  %41 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 8
  %42 = load ptr, ptr %41, align 8, !tbaa !231
  br i1 %14, label %44, label %43

43:                                               ; preds = %32
  call void @libmv_cameraIntrinsicsUndistortByte(ptr noundef %15, ptr noundef %34, i32 noundef %36, i32 noundef %38, float noundef %5, i32 noundef %40, ptr noundef %42) #19
  br label %45

44:                                               ; preds = %32
  call void @libmv_cameraIntrinsicsDistortByte(ptr noundef %15, ptr noundef %34, i32 noundef %36, i32 noundef %38, float noundef %5, i32 noundef %40, ptr noundef %42) #19
  br label %45

45:                                               ; preds = %43, %44, %27, %31
  ret ptr %10
}

declare ptr @IMB_dupImBuf(ptr noundef) local_unnamed_addr #3

declare void @libmv_cameraIntrinsicsUndistortFloat(ptr noundef, ptr noundef, i32 noundef, i32 noundef, float noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @libmv_cameraIntrinsicsDistortFloat(ptr noundef, ptr noundef, i32 noundef, i32 noundef, float noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @imb_freerectImBuf(ptr noundef) local_unnamed_addr #3

declare void @libmv_cameraIntrinsicsUndistortByte(ptr noundef, ptr noundef, i32 noundef, i32 noundef, float noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @libmv_cameraIntrinsicsDistortByte(ptr noundef, ptr noundef, i32 noundef, i32 noundef, float noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @libmv_cameraIntrinsicsDestroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @BKE_tracking_distort_v2(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct.libmv_CameraIntrinsicsOptions, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  %7 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1, i32 4
  %8 = load float, ptr %7, align 8, !tbaa !66
  %9 = fdiv float 1.000000e+00, %8
  call void @tracking_cameraIntrinscisOptionsFromTracking(ptr noundef %0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %4) #19
  %10 = load float, ptr %1, align 4, !tbaa !111
  %11 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1, i32 8
  %12 = load float, ptr %11, align 4, !tbaa !111
  %13 = fsub float %10, %12
  %14 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1, i32 5
  %15 = load float, ptr %14, align 4, !tbaa !232
  %16 = fdiv float %13, %15
  %17 = fpext float %16 to double
  store double %17, ptr %5, align 8, !tbaa !233
  %18 = getelementptr inbounds float, ptr %1, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !111
  %20 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1, i32 8, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !111
  %22 = fneg float %21
  %23 = call float @llvm.fmuladd.f32(float %22, float %9, float %19)
  %24 = fdiv float %23, %15
  %25 = fpext float %24 to double
  store double %25, ptr %6, align 8, !tbaa !233
  call void @libmv_cameraIntrinsicsApply(ptr noundef nonnull %4, double noundef %17, double noundef %25, ptr noundef nonnull %5, ptr noundef nonnull %6) #19
  %26 = load double, ptr %5, align 8, !tbaa !233
  %27 = fptrunc double %26 to float
  store float %27, ptr %2, align 4, !tbaa !111
  %28 = load double, ptr %6, align 8, !tbaa !233
  %29 = fptrunc double %28 to float
  %30 = getelementptr inbounds float, ptr %2, i64 1
  store float %29, ptr %30, align 4, !tbaa !111
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %4) #19
  ret void
}

declare void @libmv_cameraIntrinsicsApply(ptr noundef, double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @BKE_tracking_undistort_v2(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct.libmv_CameraIntrinsicsOptions, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  %7 = load float, ptr %1, align 4, !tbaa !111
  %8 = fpext float %7 to double
  store double %8, ptr %5, align 8, !tbaa !233
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  %9 = getelementptr inbounds float, ptr %1, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !111
  %11 = fpext float %10 to double
  store double %11, ptr %6, align 8, !tbaa !233
  %12 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1, i32 4
  %13 = load float, ptr %12, align 8, !tbaa !66
  %14 = fdiv float 1.000000e+00, %13
  call void @tracking_cameraIntrinscisOptionsFromTracking(ptr noundef %0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %4) #19
  %15 = load double, ptr %5, align 8, !tbaa !233
  %16 = load double, ptr %6, align 8, !tbaa !233
  call void @libmv_cameraIntrinsicsInvert(ptr noundef nonnull %4, double noundef %15, double noundef %16, ptr noundef nonnull %5, ptr noundef nonnull %6) #19
  %17 = load double, ptr %5, align 8, !tbaa !233
  %18 = fptrunc double %17 to float
  %19 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1, i32 5
  %20 = load float, ptr %19, align 4, !tbaa !232
  %21 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1, i32 8
  %22 = load float, ptr %21, align 4, !tbaa !111
  %23 = call float @llvm.fmuladd.f32(float %18, float %20, float %22)
  store float %23, ptr %2, align 4, !tbaa !111
  %24 = load double, ptr %6, align 8, !tbaa !233
  %25 = fptrunc double %24 to float
  %26 = load float, ptr %19, align 4, !tbaa !232
  %27 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1, i32 8, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !111
  %29 = fmul float %14, %28
  %30 = call float @llvm.fmuladd.f32(float %25, float %26, float %29)
  %31 = getelementptr inbounds float, ptr %2, i64 1
  store float %30, ptr %31, align 4, !tbaa !111
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %4) #19
  ret void
}

declare void @libmv_cameraIntrinsicsInvert(ptr noundef, double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_tracking_undistort_frame(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, float noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.libmv_CameraIntrinsicsOptions, align 8
  %7 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !234
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %6) #19
  call void @tracking_cameraIntrinscisOptionsFromTracking(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %6) #19
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %12 = call ptr %11(i64 noundef 8, ptr noundef nonnull @.str.14) #19
  %13 = call ptr @libmv_cameraIntrinsicsNew(ptr noundef nonnull %6) #19
  store ptr %13, ptr %12, align 8, !tbaa !60
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %6) #19
  store ptr %12, ptr %7, align 8, !tbaa !234
  br label %14

14:                                               ; preds = %10, %5
  %15 = load ptr, ptr %7, align 8, !tbaa !234
  %16 = call ptr @BKE_tracking_distortion_exec(ptr noundef %15, ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, float noundef %4, i8 noundef zeroext 1)
  ret ptr %16
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_tracking_distort_frame(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, float noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.libmv_CameraIntrinsicsOptions, align 8
  %7 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !234
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %6) #19
  call void @tracking_cameraIntrinscisOptionsFromTracking(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %6) #19
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %12 = call ptr %11(i64 noundef 8, ptr noundef nonnull @.str.14) #19
  %13 = call ptr @libmv_cameraIntrinsicsNew(ptr noundef nonnull %6) #19
  store ptr %13, ptr %12, align 8, !tbaa !60
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %6) #19
  store ptr %12, ptr %7, align 8, !tbaa !234
  br label %14

14:                                               ; preds = %10, %5
  %15 = load ptr, ptr %7, align 8, !tbaa !234
  %16 = call ptr @BKE_tracking_distortion_exec(ptr noundef %15, ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, float noundef %4, i8 noundef zeroext 0)
  ret ptr %16
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_tracking_max_distortion_delta_across_bound(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = alloca [2 x float], align 4
  %6 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  %7 = icmp eq i8 %2, 0
  %8 = select i1 %7, ptr @BKE_tracking_distort_v2, ptr @BKE_tracking_undistort_v2
  %9 = getelementptr inbounds float, ptr %3, i64 1
  store float 0xC7EFFFFFE0000000, ptr %9, align 4, !tbaa !111
  store float 0xC7EFFFFFE0000000, ptr %3, align 4, !tbaa !111
  %10 = load i32, ptr %1, align 4, !tbaa !235
  %11 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !236
  %13 = add nsw i32 %12, 5
  %14 = icmp sgt i32 %10, %13
  br i1 %14, label %63, label %15

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 2
  %17 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  %18 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 1
  %19 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 3
  br label %24

20:                                               ; preds = %24
  %21 = add nsw i32 %27, 5
  %22 = load i32, ptr %11, align 4, !tbaa !236
  %23 = icmp sgt i32 %27, %22
  br i1 %23, label %63, label %24, !llvm.loop !237

24:                                               ; preds = %15, %20
  %25 = phi i32 [ %12, %15 ], [ %22, %20 ]
  %26 = phi i32 [ %10, %15 ], [ %21, %20 ]
  %27 = call i32 @llvm.smin.i32(i32 %26, i32 %25)
  %28 = sitofp i32 %27 to float
  store float %28, ptr %5, align 4, !tbaa !111
  %29 = load i32, ptr %16, align 4, !tbaa !238
  %30 = sitofp i32 %29 to float
  store float %30, ptr %17, align 4, !tbaa !111
  call void %8(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6) #19, !callees !239
  %31 = load float, ptr %3, align 4, !tbaa !111
  %32 = load float, ptr %5, align 4, !tbaa !111
  %33 = load float, ptr %6, align 4, !tbaa !111
  %34 = fsub float %32, %33
  %35 = call float @llvm.fabs.f32(float %34)
  %36 = fcmp ogt float %31, %35
  %37 = select i1 %36, float %31, float %35
  store float %37, ptr %3, align 4, !tbaa !111
  %38 = load float, ptr %9, align 4, !tbaa !111
  %39 = load float, ptr %17, align 4, !tbaa !111
  %40 = load float, ptr %18, align 4, !tbaa !111
  %41 = fsub float %39, %40
  %42 = call float @llvm.fabs.f32(float %41)
  %43 = fcmp ogt float %38, %42
  %44 = select i1 %43, float %38, float %42
  store float %44, ptr %9, align 4, !tbaa !111
  store float %28, ptr %5, align 4, !tbaa !111
  %45 = load i32, ptr %19, align 4, !tbaa !240
  %46 = sitofp i32 %45 to float
  store float %46, ptr %17, align 4, !tbaa !111
  call void %8(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6) #19, !callees !239
  %47 = load float, ptr %3, align 4, !tbaa !111
  %48 = load float, ptr %5, align 4, !tbaa !111
  %49 = load float, ptr %6, align 4, !tbaa !111
  %50 = fsub float %48, %49
  %51 = call float @llvm.fabs.f32(float %50)
  %52 = fcmp ogt float %47, %51
  %53 = select i1 %52, float %47, float %51
  store float %53, ptr %3, align 4, !tbaa !111
  %54 = load float, ptr %9, align 4, !tbaa !111
  %55 = load float, ptr %17, align 4, !tbaa !111
  %56 = load float, ptr %18, align 4, !tbaa !111
  %57 = fsub float %55, %56
  %58 = call float @llvm.fabs.f32(float %57)
  %59 = fcmp ogt float %54, %58
  %60 = select i1 %59, float %54, float %58
  store float %60, ptr %9, align 4, !tbaa !111
  %61 = load i32, ptr %11, align 4, !tbaa !236
  %62 = icmp slt i32 %27, %61
  br i1 %62, label %20, label %63

63:                                               ; preds = %20, %24, %4
  %64 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 2
  %65 = load i32, ptr %64, align 4, !tbaa !238
  %66 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 3
  %67 = load i32, ptr %66, align 4, !tbaa !240
  %68 = add nsw i32 %67, 5
  %69 = icmp sgt i32 %65, %68
  br i1 %69, label %116, label %70

70:                                               ; preds = %63
  %71 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  %72 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 1
  br label %77

73:                                               ; preds = %77
  %74 = add nsw i32 %80, 5
  %75 = load i32, ptr %66, align 4, !tbaa !240
  %76 = icmp sgt i32 %80, %75
  br i1 %76, label %116, label %77, !llvm.loop !241

77:                                               ; preds = %70, %73
  %78 = phi i32 [ %67, %70 ], [ %75, %73 ]
  %79 = phi i32 [ %65, %70 ], [ %74, %73 ]
  %80 = call i32 @llvm.smin.i32(i32 %79, i32 %78)
  %81 = load i32, ptr %1, align 4, !tbaa !235
  %82 = sitofp i32 %81 to float
  store float %82, ptr %5, align 4, !tbaa !111
  %83 = sitofp i32 %80 to float
  store float %83, ptr %71, align 4, !tbaa !111
  call void %8(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6) #19, !callees !239
  %84 = load float, ptr %3, align 4, !tbaa !111
  %85 = load float, ptr %5, align 4, !tbaa !111
  %86 = load float, ptr %6, align 4, !tbaa !111
  %87 = fsub float %85, %86
  %88 = call float @llvm.fabs.f32(float %87)
  %89 = fcmp ogt float %84, %88
  %90 = select i1 %89, float %84, float %88
  store float %90, ptr %3, align 4, !tbaa !111
  %91 = load float, ptr %9, align 4, !tbaa !111
  %92 = load float, ptr %71, align 4, !tbaa !111
  %93 = load float, ptr %72, align 4, !tbaa !111
  %94 = fsub float %92, %93
  %95 = call float @llvm.fabs.f32(float %94)
  %96 = fcmp ogt float %91, %95
  %97 = select i1 %96, float %91, float %95
  store float %97, ptr %9, align 4, !tbaa !111
  %98 = load i32, ptr %11, align 4, !tbaa !236
  %99 = sitofp i32 %98 to float
  store float %99, ptr %5, align 4, !tbaa !111
  store float %83, ptr %71, align 4, !tbaa !111
  call void %8(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6) #19, !callees !239
  %100 = load float, ptr %3, align 4, !tbaa !111
  %101 = load float, ptr %5, align 4, !tbaa !111
  %102 = load float, ptr %6, align 4, !tbaa !111
  %103 = fsub float %101, %102
  %104 = call float @llvm.fabs.f32(float %103)
  %105 = fcmp ogt float %100, %104
  %106 = select i1 %105, float %100, float %104
  store float %106, ptr %3, align 4, !tbaa !111
  %107 = load float, ptr %9, align 4, !tbaa !111
  %108 = load float, ptr %71, align 4, !tbaa !111
  %109 = load float, ptr %72, align 4, !tbaa !111
  %110 = fsub float %108, %109
  %111 = call float @llvm.fabs.f32(float %110)
  %112 = fcmp ogt float %107, %111
  %113 = select i1 %112, float %107, float %111
  store float %113, ptr %9, align 4, !tbaa !111
  %114 = load i32, ptr %66, align 4, !tbaa !240
  %115 = icmp slt i32 %80, %114
  br i1 %115, label %73, label %116

116:                                              ; preds = %73, %77, %63
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #5

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_tracking_sample_pattern(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr noundef %4, i8 noundef zeroext %5, i8 noundef zeroext %6, i32 noundef %7, i32 noundef %8, ptr noundef writeonly %9) local_unnamed_addr #0 {
  %11 = alloca [5 x double], align 16
  %12 = alloca [5 x double], align 16
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %11) #19
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %12) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #19
  %15 = icmp slt i32 %7, 1
  %16 = icmp slt i32 %8, 1
  %17 = or i1 %15, %16
  br i1 %17, label %98, label %18

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 9
  %20 = load ptr, ptr %19, align 8, !tbaa !225
  %21 = icmp eq ptr %20, null
  %22 = select i1 %21, i32 1, i32 32
  %23 = tail call ptr @IMB_allocImBuf(i32 noundef %7, i32 noundef %8, i8 noundef zeroext 32, i32 noundef %22) #19
  call void @tracking_get_marker_coords_for_tracking(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %11, ptr noundef nonnull %12) #19
  %24 = icmp eq i8 %5, 0
  br i1 %24, label %62, label %25

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %3, i64 0, i32 7
  %27 = load float, ptr %26, align 8, !tbaa !111
  %28 = sitofp i32 %0 to float
  %29 = fmul float %27, %28
  %30 = fptosi float %29 to i32
  %31 = sitofp i32 %30 to float
  %32 = fneg float %31
  %33 = call float @llvm.fmuladd.f32(float %27, float %28, float %32)
  %34 = fpext float %33 to double
  %35 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %3, i64 0, i32 7, i64 1
  %36 = load float, ptr %35, align 4, !tbaa !111
  %37 = sitofp i32 %1 to float
  %38 = fmul float %36, %37
  %39 = fptosi float %38 to i32
  %40 = sitofp i32 %39 to float
  %41 = fneg float %40
  %42 = call float @llvm.fmuladd.f32(float %36, float %37, float %41)
  %43 = fpext float %42 to double
  %44 = fcmp olt float %27, 0.000000e+00
  %45 = fcmp olt float %36, 0.000000e+00
  br label %46

46:                                               ; preds = %25, %59
  %47 = phi i64 [ 0, %25 ], [ %60, %59 ]
  %48 = getelementptr inbounds [5 x double], ptr %11, i64 0, i64 %47
  %49 = load double, ptr %48, align 8, !tbaa !233
  %50 = fadd double %49, %34
  store double %50, ptr %48, align 8, !tbaa !233
  %51 = getelementptr inbounds [5 x double], ptr %12, i64 0, i64 %47
  %52 = load double, ptr %51, align 8, !tbaa !233
  %53 = fadd double %52, %43
  store double %53, ptr %51, align 8, !tbaa !233
  br i1 %44, label %54, label %56

54:                                               ; preds = %46
  %55 = fadd double %50, 1.000000e+00
  store double %55, ptr %48, align 8, !tbaa !233
  br label %56

56:                                               ; preds = %54, %46
  br i1 %45, label %57, label %59

57:                                               ; preds = %56
  %58 = fadd double %53, 1.000000e+00
  store double %58, ptr %51, align 8, !tbaa !233
  br label %59

59:                                               ; preds = %56, %57
  %60 = add nuw nsw i64 %47, 1
  %61 = icmp eq i64 %60, 5
  br i1 %61, label %62, label %46, !llvm.loop !242

62:                                               ; preds = %59, %18
  %63 = icmp eq i8 %6, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %62
  %65 = call ptr @BKE_tracking_track_get_mask(i32 noundef %0, i32 noundef %1, ptr noundef %3, ptr noundef %4)
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi ptr [ %65, %64 ], [ null, %62 ]
  %68 = load ptr, ptr %19, align 8, !tbaa !225
  %69 = icmp eq ptr %68, null
  br i1 %69, label %77, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 2
  %72 = load i32, ptr %71, align 8, !tbaa !228
  %73 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 3
  %74 = load i32, ptr %73, align 4, !tbaa !229
  %75 = getelementptr inbounds %struct.ImBuf, ptr %23, i64 0, i32 9
  %76 = load ptr, ptr %75, align 8, !tbaa !225
  call void @libmv_samplePlanarPatchFloat(ptr noundef nonnull %68, i32 noundef %72, i32 noundef %74, i32 noundef 4, ptr noundef nonnull %11, ptr noundef nonnull %12, i32 noundef %7, i32 noundef %8, ptr noundef %67, ptr noundef %76, ptr noundef nonnull %13, ptr noundef nonnull %14) #19
  br label %86

77:                                               ; preds = %66
  %78 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 8
  %79 = load ptr, ptr %78, align 8, !tbaa !231
  %80 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 2
  %81 = load i32, ptr %80, align 8, !tbaa !228
  %82 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 3
  %83 = load i32, ptr %82, align 4, !tbaa !229
  %84 = getelementptr inbounds %struct.ImBuf, ptr %23, i64 0, i32 8
  %85 = load ptr, ptr %84, align 8, !tbaa !231
  call void @libmv_samplePlanarPatchByte(ptr noundef %79, i32 noundef %81, i32 noundef %83, i32 noundef 4, ptr noundef nonnull %11, ptr noundef nonnull %12, i32 noundef %7, i32 noundef %8, ptr noundef %67, ptr noundef %85, ptr noundef nonnull %13, ptr noundef nonnull %14) #19
  br label %86

86:                                               ; preds = %77, %70
  %87 = icmp eq ptr %9, null
  br i1 %87, label %94, label %88

88:                                               ; preds = %86
  %89 = load double, ptr %13, align 8, !tbaa !233
  %90 = fptrunc double %89 to float
  store float %90, ptr %9, align 4, !tbaa !111
  %91 = load double, ptr %14, align 8, !tbaa !233
  %92 = fptrunc double %91 to float
  %93 = getelementptr inbounds float, ptr %9, i64 1
  store float %92, ptr %93, align 4, !tbaa !111
  br label %94

94:                                               ; preds = %88, %86
  %95 = icmp eq ptr %67, null
  br i1 %95, label %98, label %96

96:                                               ; preds = %94
  %97 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %97(ptr noundef nonnull %67) #19
  br label %98

98:                                               ; preds = %94, %96, %10
  %99 = phi ptr [ null, %10 ], [ %23, %96 ], [ %23, %94 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %11) #19
  ret ptr %99
}

declare ptr @IMB_allocImBuf(i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

declare void @tracking_get_marker_coords_for_tracking(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @libmv_samplePlanarPatchFloat(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @libmv_samplePlanarPatchByte(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_tracking_get_pattern_imbuf(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = alloca [2 x float], align 4
  %7 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #19
  %8 = getelementptr inbounds float, ptr %6, i64 1
  store float 0x46293E5940000000, ptr %8, align 4, !tbaa !111
  store float 0x46293E5940000000, ptr %6, align 4, !tbaa !111
  %9 = getelementptr inbounds float, ptr %7, i64 1
  store float 0xC6293E5940000000, ptr %9, align 4, !tbaa !111
  store float 0xC6293E5940000000, ptr %7, align 4, !tbaa !111
  %10 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 1
  call void @minmax_v2v2_v2(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %10) #19
  %11 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 1, i64 1
  call void @minmax_v2v2_v2(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %11) #19
  %12 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 1, i64 2
  call void @minmax_v2v2_v2(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %12) #19
  %13 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 1, i64 3
  call void @minmax_v2v2_v2(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %13) #19
  %14 = load float, ptr %7, align 4, !tbaa !111
  %15 = load float, ptr %6, align 4, !tbaa !111
  %16 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !228
  %18 = load float, ptr %9, align 4, !tbaa !111
  %19 = load float, ptr %8, align 4, !tbaa !111
  %20 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %21 = load i32, ptr %20, align 4, !tbaa !229
  %22 = call ptr @BKE_tracking_get_search_imbuf(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4)
  %23 = icmp eq ptr %22, null
  br i1 %23, label %36, label %24

24:                                               ; preds = %5
  %25 = fsub float %18, %19
  %26 = sitofp i32 %21 to float
  %27 = fmul float %25, %26
  %28 = fptosi float %27 to i32
  %29 = fsub float %14, %15
  %30 = sitofp i32 %17 to float
  %31 = fmul float %29, %30
  %32 = fptosi float %31 to i32
  %33 = load i32, ptr %16, align 8, !tbaa !228
  %34 = load i32, ptr %20, align 4, !tbaa !229
  %35 = call ptr @BKE_tracking_sample_pattern(i32 noundef %33, i32 noundef %34, ptr noundef nonnull %22, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext 0, i32 noundef %32, i32 noundef %28, ptr noundef null)
  call void @IMB_freeImBuf(ptr noundef nonnull %22) #19
  br label %36

36:                                               ; preds = %5, %24
  %37 = phi ptr [ %35, %24 ], [ null, %5 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  ret ptr %37
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @BKE_tracking_get_search_imbuf(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  %7 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !228
  %9 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !229
  call void @tracking_get_search_origin_frame_pixel(i32 noundef %8, i32 noundef %10, ptr noundef %2, ptr noundef nonnull %6) #19
  %11 = load float, ptr %6, align 4, !tbaa !111
  %12 = fptosi float %11 to i32
  %13 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !111
  %15 = fptosi float %14 to i32
  %16 = icmp eq i8 %3, 0
  br i1 %16, label %32, label %17

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %1, i64 0, i32 7
  %19 = load float, ptr %18, align 8, !tbaa !111
  %20 = load i32, ptr %7, align 8, !tbaa !228
  %21 = sitofp i32 %20 to float
  %22 = sitofp i32 %12 to float
  %23 = call float @llvm.fmuladd.f32(float %19, float %21, float %22)
  %24 = fptosi float %23 to i32
  %25 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %1, i64 0, i32 7, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !111
  %27 = load i32, ptr %9, align 4, !tbaa !229
  %28 = sitofp i32 %27 to float
  %29 = sitofp i32 %15 to float
  %30 = call float @llvm.fmuladd.f32(float %26, float %28, float %29)
  %31 = fptosi float %30 to i32
  br label %32

32:                                               ; preds = %17, %5
  %33 = phi i32 [ %31, %17 ], [ %15, %5 ]
  %34 = phi i32 [ %24, %17 ], [ %12, %5 ]
  %35 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 3
  %36 = load float, ptr %35, align 4, !tbaa !111
  %37 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 2
  %38 = load float, ptr %37, align 4, !tbaa !111
  %39 = fsub float %36, %38
  %40 = load i32, ptr %7, align 8, !tbaa !228
  %41 = sitofp i32 %40 to float
  %42 = fmul float %39, %41
  %43 = fptosi float %42 to i32
  %44 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 3, i64 1
  %45 = load float, ptr %44, align 4, !tbaa !111
  %46 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 2, i64 1
  %47 = load float, ptr %46, align 4, !tbaa !111
  %48 = fsub float %45, %47
  %49 = load i32, ptr %9, align 4, !tbaa !229
  %50 = sitofp i32 %49 to float
  %51 = fmul float %48, %50
  %52 = fptosi float %51 to i32
  %53 = icmp slt i32 %43, 1
  %54 = icmp slt i32 %52, 1
  %55 = select i1 %53, i1 true, i1 %54
  br i1 %55, label %73, label %56

56:                                               ; preds = %32
  %57 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %58 = load ptr, ptr %57, align 8, !tbaa !225
  %59 = icmp eq ptr %58, null
  %60 = select i1 %59, i32 1, i32 32
  %61 = call ptr @IMB_allocImBuf(i32 noundef %43, i32 noundef %52, i8 noundef zeroext 32, i32 noundef %60) #19
  call void @IMB_rectcpy(ptr noundef %61, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %34, i32 noundef %33, i32 noundef %43, i32 noundef %52) #19
  %62 = icmp eq i8 %4, 0
  br i1 %62, label %73, label %63

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %1, i64 0, i32 13
  %65 = load i32, ptr %64, align 8, !tbaa !122
  %66 = and i32 %65, 540
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %63
  %69 = trunc i32 %65 to i8
  %70 = and i8 %69, 4
  %71 = and i8 %69, 8
  %72 = and i8 %69, 16
  call void @BKE_tracking_disable_channels(ptr noundef %61, i8 noundef zeroext %70, i8 noundef zeroext %71, i8 noundef zeroext %72, i8 noundef zeroext 1)
  br label %73

73:                                               ; preds = %56, %68, %63, %32
  %74 = phi ptr [ null, %32 ], [ %61, %63 ], [ %61, %68 ], [ %61, %56 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  ret ptr %74
}

declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #3

declare void @tracking_get_search_origin_frame_pixel(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @IMB_rectcpy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_tracking_disable_channels(ptr nocapture noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #6 {
  %6 = or i8 %2, %1
  %7 = or i8 %6, %3
  %8 = icmp eq i8 %4, 0
  %9 = or i8 %7, %4
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %115, label %11

11:                                               ; preds = %5
  %12 = icmp eq i8 %1, 0
  %13 = select i1 %12, float 0x3FCB367A00000000, float 0.000000e+00
  %14 = icmp eq i8 %2, 0
  %15 = select i1 %14, float 0x3FE6E2EB20000000, float 0.000000e+00
  %16 = fadd float %13, %15
  %17 = icmp eq i8 %3, 0
  %18 = select i1 %17, float 0x3FB27BB300000000, float 0.000000e+00
  %19 = fadd float %16, %18
  %20 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %21 = load i32, ptr %20, align 4, !tbaa !229
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %107

23:                                               ; preds = %11
  %24 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %25 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %26 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  br label %27

27:                                               ; preds = %23, %103
  %28 = phi i32 [ 0, %23 ], [ %104, %103 ]
  %29 = load i32, ptr %24, align 8, !tbaa !228
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %103

31:                                               ; preds = %27, %99
  %32 = phi i32 [ %101, %99 ], [ %29, %27 ]
  %33 = phi i32 [ %100, %99 ], [ 0, %27 ]
  %34 = mul nsw i32 %32, %28
  %35 = add nsw i32 %34, %33
  %36 = load ptr, ptr %25, align 8, !tbaa !225
  %37 = icmp eq ptr %36, null
  br i1 %37, label %66, label %38

38:                                               ; preds = %31
  %39 = shl nsw i32 %35, 2
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds float, ptr %36, i64 %40
  br i1 %12, label %42, label %44

42:                                               ; preds = %38
  %43 = load float, ptr %41, align 4, !tbaa !111
  br label %44

44:                                               ; preds = %38, %42
  %45 = phi float [ %43, %42 ], [ 0.000000e+00, %38 ]
  br i1 %14, label %46, label %49

46:                                               ; preds = %44
  %47 = getelementptr inbounds float, ptr %41, i64 1
  %48 = load float, ptr %47, align 4, !tbaa !111
  br label %49

49:                                               ; preds = %44, %46
  %50 = phi float [ %48, %46 ], [ 0.000000e+00, %44 ]
  br i1 %17, label %51, label %54

51:                                               ; preds = %49
  %52 = getelementptr inbounds float, ptr %41, i64 2
  %53 = load float, ptr %52, align 4, !tbaa !111
  br label %54

54:                                               ; preds = %49, %51
  %55 = phi float [ %53, %51 ], [ 0.000000e+00, %49 ]
  br i1 %8, label %63, label %56

56:                                               ; preds = %54
  %57 = fmul float %50, 0x3FE6E2EB20000000
  %58 = tail call float @llvm.fmuladd.f32(float %45, float 0x3FCB367A00000000, float %57)
  %59 = tail call float @llvm.fmuladd.f32(float %55, float 0x3FB27BB300000000, float %58)
  %60 = fdiv float %59, %19
  %61 = getelementptr inbounds float, ptr %41, i64 2
  store float %60, ptr %61, align 4, !tbaa !111
  %62 = getelementptr inbounds float, ptr %41, i64 1
  store float %60, ptr %62, align 4, !tbaa !111
  store float %60, ptr %41, align 4, !tbaa !111
  br label %99

63:                                               ; preds = %54
  store float %45, ptr %41, align 4, !tbaa !111
  %64 = getelementptr inbounds float, ptr %41, i64 1
  store float %50, ptr %64, align 4, !tbaa !111
  %65 = getelementptr inbounds float, ptr %41, i64 2
  store float %55, ptr %65, align 4, !tbaa !111
  br label %99

66:                                               ; preds = %31
  %67 = load ptr, ptr %26, align 8, !tbaa !231
  %68 = shl nsw i32 %35, 2
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, ptr %67, i64 %69
  br i1 %12, label %71, label %73

71:                                               ; preds = %66
  %72 = load i8, ptr %70, align 1, !tbaa !126
  br label %73

73:                                               ; preds = %66, %71
  %74 = phi i8 [ %72, %71 ], [ 0, %66 ]
  br i1 %14, label %75, label %78

75:                                               ; preds = %73
  %76 = getelementptr inbounds i8, ptr %70, i64 1
  %77 = load i8, ptr %76, align 1, !tbaa !126
  br label %78

78:                                               ; preds = %73, %75
  %79 = phi i8 [ %77, %75 ], [ 0, %73 ]
  br i1 %17, label %80, label %83

80:                                               ; preds = %78
  %81 = getelementptr inbounds i8, ptr %70, i64 2
  %82 = load i8, ptr %81, align 1, !tbaa !126
  br label %83

83:                                               ; preds = %78, %80
  %84 = phi i8 [ %82, %80 ], [ 0, %78 ]
  br i1 %8, label %96, label %85

85:                                               ; preds = %83
  %86 = uitofp i8 %74 to float
  %87 = uitofp i8 %79 to float
  %88 = fmul float %87, 0x3FE6E2EB20000000
  %89 = tail call float @llvm.fmuladd.f32(float %86, float 0x3FCB367A00000000, float %88)
  %90 = uitofp i8 %84 to float
  %91 = tail call float @llvm.fmuladd.f32(float %90, float 0x3FB27BB300000000, float %89)
  %92 = fdiv float %91, %19
  %93 = fptoui float %92 to i8
  %94 = getelementptr inbounds i8, ptr %70, i64 2
  store i8 %93, ptr %94, align 1, !tbaa !126
  %95 = getelementptr inbounds i8, ptr %70, i64 1
  store i8 %93, ptr %95, align 1, !tbaa !126
  store i8 %93, ptr %70, align 1, !tbaa !126
  br label %99

96:                                               ; preds = %83
  store i8 %74, ptr %70, align 1, !tbaa !126
  %97 = getelementptr inbounds i8, ptr %70, i64 1
  store i8 %79, ptr %97, align 1, !tbaa !126
  %98 = getelementptr inbounds i8, ptr %70, i64 2
  store i8 %84, ptr %98, align 1, !tbaa !126
  br label %99

99:                                               ; preds = %85, %96, %56, %63
  %100 = add nuw nsw i32 %33, 1
  %101 = load i32, ptr %24, align 8, !tbaa !228
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %31, label %103, !llvm.loop !243

103:                                              ; preds = %99, %27
  %104 = add nuw nsw i32 %28, 1
  %105 = load i32, ptr %20, align 4, !tbaa !229
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %27, label %107, !llvm.loop !244

107:                                              ; preds = %103, %11
  %108 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %109 = load ptr, ptr %108, align 8, !tbaa !225
  %110 = icmp eq ptr %109, null
  br i1 %110, label %115, label %111

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 23
  %113 = load i32, ptr %112, align 4, !tbaa !245
  %114 = or i32 %113, 8
  store i32 %114, ptr %112, align 4, !tbaa !245
  br label %115

115:                                              ; preds = %107, %111, %5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_tracking_dopesheet_update(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 12
  %3 = load i32, ptr %2, align 8, !tbaa !88
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %353

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 12, i32 2
  %7 = load i16, ptr %6, align 2, !tbaa !246
  %8 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 12, i32 1
  %9 = load i16, ptr %8, align 4, !tbaa !247
  %10 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 12, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %23, label %13

13:                                               ; preds = %5, %20
  %14 = phi ptr [ %21, %20 ], [ %11, %5 ]
  %15 = getelementptr inbounds %struct.MovieTrackingDopesheetChannel, ptr %14, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !62
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %19(ptr noundef nonnull %16) #19
  br label %20

20:                                               ; preds = %18, %13
  %21 = load ptr, ptr %14, align 8, !tbaa !34
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %13, !llvm.loop !64

23:                                               ; preds = %20, %5
  tail call void @BLI_freelistN(ptr noundef nonnull %10) #19
  %24 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 12, i32 3
  tail call void @BLI_freelistN(ptr noundef nonnull %24) #19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %24, i8 0, i64 36, i1 false)
  %25 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 8
  %26 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 9
  %27 = load i32, ptr %26, align 8, !tbaa !84
  %28 = tail call ptr @BLI_findlink(ptr noundef nonnull %25, i32 noundef %27) #19
  %29 = getelementptr inbounds %struct.MovieTrackingObject, ptr %28, i64 0, i32 3
  %30 = load i32, ptr %29, align 8, !tbaa !82
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  %33 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 4
  %34 = getelementptr inbounds %struct.MovieTrackingObject, ptr %28, i64 0, i32 7
  %35 = select i1 %32, ptr %34, ptr %33
  %36 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 2
  %37 = getelementptr inbounds %struct.MovieTrackingObject, ptr %28, i64 0, i32 5
  %38 = select i1 %32, ptr %37, ptr %36
  %39 = load ptr, ptr %38, align 8, !tbaa !34
  %40 = icmp eq ptr %39, null
  br i1 %40, label %223, label %41

41:                                               ; preds = %23
  %42 = load i16, ptr %6, align 2, !tbaa !246
  %43 = and i16 %42, 4
  %44 = icmp eq i16 %43, 0
  %45 = and i16 %42, 2
  %46 = icmp eq i16 %45, 0
  %47 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 12, i32 4
  %48 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 12, i32 5
  br label %49

49:                                               ; preds = %41, %220
  %50 = phi ptr [ %39, %41 ], [ %221, %220 ]
  br i1 %44, label %51, label %56

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %50, i64 0, i32 13
  %53 = load i32, ptr %52, align 8, !tbaa !122
  %54 = and i32 %53, 32
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %220

56:                                               ; preds = %51, %49
  br i1 %46, label %72, label %57

57:                                               ; preds = %56
  %58 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %50, i64 0, i32 13
  %59 = load i32, ptr %58, align 8, !tbaa !122
  %60 = and i32 %59, 1
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %50, i64 0, i32 14
  %64 = load i32, ptr %63, align 4, !tbaa !123
  %65 = and i32 %64, 1
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %50, i64 0, i32 15
  %69 = load i32, ptr %68, align 8, !tbaa !124
  %70 = and i32 %69, 1
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %220, label %72

72:                                               ; preds = %67, %62, %57, %56
  %73 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %74 = tail call ptr %73(i64 noundef 112, ptr noundef nonnull @.str.16) #19
  %75 = getelementptr inbounds %struct.MovieTrackingDopesheetChannel, ptr %74, i64 0, i32 2
  store ptr %50, ptr %75, align 8, !tbaa !248
  %76 = load i32, ptr %35, align 8, !tbaa !249
  %77 = and i32 %76, 1
  %78 = icmp eq i32 %77, 0
  %79 = getelementptr inbounds %struct.MovieTrackingDopesheetChannel, ptr %74, i64 0, i32 4
  %80 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %50, i64 0, i32 2
  br i1 %78, label %86, label %81

81:                                               ; preds = %72
  %82 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %50, i64 0, i32 12
  %83 = load float, ptr %82, align 4, !tbaa !250
  %84 = fpext float %83 to double
  %85 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %79, i64 noundef 64, ptr noundef nonnull @.str.17, ptr noundef nonnull %80, double noundef %84) #19
  br label %88

86:                                               ; preds = %72
  %87 = tail call ptr @BLI_strncpy(ptr noundef nonnull %79, ptr noundef nonnull %80, i64 noundef 64) #19
  br label %88

88:                                               ; preds = %86, %81
  %89 = load ptr, ptr %75, align 8, !tbaa !248
  %90 = getelementptr inbounds %struct.MovieTrackingDopesheetChannel, ptr %74, i64 0, i32 5
  store i32 0, ptr %90, align 4, !tbaa !251
  %91 = getelementptr inbounds %struct.MovieTrackingDopesheetChannel, ptr %74, i64 0, i32 7
  store i32 0, ptr %91, align 8, !tbaa !252
  %92 = getelementptr inbounds %struct.MovieTrackingDopesheetChannel, ptr %74, i64 0, i32 8
  store i32 0, ptr %92, align 4, !tbaa !253
  %93 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %89, i64 0, i32 8
  %94 = load i32, ptr %93, align 8, !tbaa !152
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %140

96:                                               ; preds = %88
  %97 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %89, i64 0, i32 10
  %98 = load ptr, ptr %97, align 8, !tbaa !38
  %99 = zext nneg i32 %94 to i64
  br label %100

100:                                              ; preds = %96, %136
  %101 = phi i32 [ 0, %96 ], [ %138, %136 ]
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %98, i64 %102, i32 5
  %104 = load i32, ptr %103, align 4, !tbaa !158
  %105 = and i32 %104, 1
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %136

107:                                              ; preds = %100
  %108 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %98, i64 %102, i32 4
  %109 = load i32, ptr %108, align 4, !tbaa !150
  %110 = sext i32 %101 to i64
  %111 = add i32 %101, 1
  %112 = tail call i32 @llvm.smax.i32(i32 %94, i32 %111)
  br label %113

113:                                              ; preds = %123, %107
  %114 = phi i64 [ %116, %123 ], [ %110, %107 ]
  %115 = phi i32 [ %120, %123 ], [ %109, %107 ]
  %116 = add nsw i64 %114, 1
  %117 = icmp slt i64 %116, %99
  br i1 %117, label %118, label %132

118:                                              ; preds = %113
  %119 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %98, i64 %116, i32 4
  %120 = load i32, ptr %119, align 4, !tbaa !150
  %121 = add nsw i32 %115, 1
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %130

123:                                              ; preds = %118
  %124 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %98, i64 %116, i32 5
  %125 = load i32, ptr %124, align 4, !tbaa !158
  %126 = and i32 %125, 1
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %113, label %128, !llvm.loop !254

128:                                              ; preds = %123
  %129 = trunc i64 %116 to i32
  br label %132

130:                                              ; preds = %118
  %131 = trunc i64 %116 to i32
  br label %132

132:                                              ; preds = %113, %130, %128
  %133 = phi i32 [ %129, %128 ], [ %131, %130 ], [ %112, %113 ]
  %134 = load i32, ptr %90, align 4, !tbaa !251
  %135 = add nsw i32 %134, 1
  store i32 %135, ptr %90, align 4, !tbaa !251
  br label %136

136:                                              ; preds = %132, %100
  %137 = phi i32 [ %133, %132 ], [ %101, %100 ]
  %138 = add nsw i32 %137, 1
  %139 = icmp slt i32 %138, %94
  br i1 %139, label %100, label %140, !llvm.loop !255

140:                                              ; preds = %136, %88
  %141 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %89, i64 0, i32 8
  %142 = load i32, ptr %90, align 4, !tbaa !251
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %217, label %144

144:                                              ; preds = %140
  %145 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %146 = sext i32 %142 to i64
  %147 = shl nsw i64 %146, 3
  %148 = tail call ptr %145(i64 noundef %147, ptr noundef nonnull @.str.18) #19
  %149 = getelementptr inbounds %struct.MovieTrackingDopesheetChannel, ptr %74, i64 0, i32 6
  store ptr %148, ptr %149, align 8, !tbaa !62
  %150 = load i32, ptr %141, align 8, !tbaa !152
  %151 = icmp sgt i32 %150, 0
  br i1 %151, label %152, label %217

152:                                              ; preds = %144
  %153 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %89, i64 0, i32 10
  %154 = load ptr, ptr %153, align 8, !tbaa !38
  br label %155

155:                                              ; preds = %152, %211
  %156 = phi i32 [ %150, %152 ], [ %215, %211 ]
  %157 = phi i32 [ 0, %152 ], [ %214, %211 ]
  %158 = phi i32 [ 0, %152 ], [ %212, %211 ]
  %159 = sext i32 %157 to i64
  %160 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %154, i64 %159, i32 5
  %161 = load i32, ptr %160, align 4, !tbaa !158
  %162 = and i32 %161, 1
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %211

164:                                              ; preds = %155
  %165 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %154, i64 %159, i32 4
  %166 = load i32, ptr %165, align 4, !tbaa !150
  %167 = add nsw i32 %157, 1
  %168 = icmp slt i32 %167, %156
  br i1 %168, label %169, label %197

169:                                              ; preds = %164
  %170 = sext i32 %167 to i64
  %171 = sext i32 %156 to i64
  %172 = xor i32 %157, -1
  %173 = add i32 %156, %172
  br label %174

174:                                              ; preds = %169, %187
  %175 = phi i64 [ %170, %169 ], [ %191, %187 ]
  %176 = phi i32 [ 0, %169 ], [ %190, %187 ]
  %177 = phi i32 [ %166, %169 ], [ %179, %187 ]
  %178 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %154, i64 %175, i32 4
  %179 = load i32, ptr %178, align 4, !tbaa !150
  %180 = add nsw i32 %177, 1
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %195

182:                                              ; preds = %174
  %183 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %154, i64 %175, i32 5
  %184 = load i32, ptr %183, align 4, !tbaa !158
  %185 = and i32 %184, 1
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %193

187:                                              ; preds = %182
  %188 = load i32, ptr %92, align 4, !tbaa !253
  %189 = add nsw i32 %188, 1
  store i32 %189, ptr %92, align 4, !tbaa !253
  %190 = add nuw nsw i32 %176, 1
  %191 = add nsw i64 %175, 1
  %192 = icmp eq i64 %191, %171
  br i1 %192, label %197, label %174, !llvm.loop !256

193:                                              ; preds = %182
  %194 = trunc i64 %175 to i32
  br label %197

195:                                              ; preds = %174
  %196 = trunc i64 %175 to i32
  br label %197

197:                                              ; preds = %193, %195, %187, %164
  %198 = phi i32 [ 0, %164 ], [ %176, %193 ], [ %176, %195 ], [ %173, %187 ]
  %199 = phi i32 [ %167, %164 ], [ %194, %193 ], [ %196, %195 ], [ %156, %187 ]
  %200 = shl nsw i32 %158, 1
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, ptr %148, i64 %201
  store i32 %166, ptr %202, align 4, !tbaa !127
  %203 = load i32, ptr %165, align 4, !tbaa !150
  %204 = add nsw i32 %203, %198
  %205 = or disjoint i32 %200, 1
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, ptr %148, i64 %206
  store i32 %204, ptr %207, align 4, !tbaa !127
  %208 = load i32, ptr %91, align 8, !tbaa !252
  %209 = tail call i32 @llvm.smax.i32(i32 %198, i32 %208)
  store i32 %209, ptr %91, align 8, !tbaa !252
  %210 = add nsw i32 %158, 1
  br label %211

211:                                              ; preds = %197, %155
  %212 = phi i32 [ %210, %197 ], [ %158, %155 ]
  %213 = phi i32 [ %199, %197 ], [ %157, %155 ]
  %214 = add nsw i32 %213, 1
  %215 = load i32, ptr %141, align 8, !tbaa !152
  %216 = icmp slt i32 %214, %215
  br i1 %216, label %155, label %217, !llvm.loop !257

217:                                              ; preds = %211, %144, %140
  tail call void @BLI_addtail(ptr noundef nonnull %47, ptr noundef %74) #19
  %218 = load i32, ptr %48, align 8, !tbaa !258
  %219 = add nsw i32 %218, 1
  store i32 %219, ptr %48, align 8, !tbaa !258
  br label %220

220:                                              ; preds = %217, %67, %51
  %221 = load ptr, ptr %50, align 8, !tbaa !34
  %222 = icmp eq ptr %221, null
  br i1 %222, label %223, label %49, !llvm.loop !259

223:                                              ; preds = %220, %23
  %224 = icmp ult i16 %9, 4
  br i1 %224, label %225, label %233

225:                                              ; preds = %223
  %226 = and i16 %7, 1
  %227 = icmp eq i16 %226, 0
  %228 = select i1 %227, ptr @switch.table.BKE_tracking_dopesheet_update.21, ptr @switch.table.BKE_tracking_dopesheet_update
  %229 = zext nneg i16 %9 to i64
  %230 = getelementptr inbounds [4 x ptr], ptr %228, i64 0, i64 %229
  %231 = load ptr, ptr %230, align 8
  %232 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 12, i32 4
  tail call void @BLI_sortlist(ptr noundef nonnull %232, ptr noundef nonnull %231) #19
  br label %233

233:                                              ; preds = %223, %225
  %234 = load i32, ptr %26, align 8, !tbaa !84
  %235 = tail call ptr @BLI_findlink(ptr noundef nonnull %25, i32 noundef %234) #19
  %236 = getelementptr inbounds %struct.MovieTrackingObject, ptr %235, i64 0, i32 3
  %237 = load i32, ptr %236, align 8, !tbaa !82
  %238 = and i32 %237, 1
  %239 = icmp eq i32 %238, 0
  %240 = getelementptr inbounds %struct.MovieTrackingObject, ptr %235, i64 0, i32 5
  %241 = select i1 %239, ptr %240, ptr %36
  %242 = load ptr, ptr %241, align 8, !tbaa !34
  %243 = icmp eq ptr %242, null
  br i1 %243, label %262, label %244

244:                                              ; preds = %233, %244
  %245 = phi ptr [ %260, %244 ], [ %242, %233 ]
  %246 = phi i32 [ %252, %244 ], [ 2147483647, %233 ]
  %247 = phi i32 [ %259, %244 ], [ -2147483647, %233 ]
  %248 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %245, i64 0, i32 10
  %249 = load ptr, ptr %248, align 8, !tbaa !38
  %250 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %249, i64 0, i32 4
  %251 = load i32, ptr %250, align 4, !tbaa !150
  %252 = tail call i32 @llvm.smin.i32(i32 %246, i32 %251)
  %253 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %245, i64 0, i32 8
  %254 = load i32, ptr %253, align 8, !tbaa !152
  %255 = sext i32 %254 to i64
  %256 = getelementptr %struct.MovieTrackingMarker, ptr %249, i64 %255
  %257 = getelementptr %struct.MovieTrackingMarker, ptr %256, i64 -1, i32 4
  %258 = load i32, ptr %257, align 4, !tbaa !150
  %259 = tail call i32 @llvm.smax.i32(i32 %258, i32 %247)
  %260 = load ptr, ptr %245, align 8, !tbaa !34
  %261 = icmp eq ptr %260, null
  br i1 %261, label %262, label %244, !llvm.loop !260

262:                                              ; preds = %244, %233
  %263 = phi i32 [ -2147483647, %233 ], [ %259, %244 ]
  %264 = phi i32 [ 2147483647, %233 ], [ %252, %244 ]
  %265 = sub nsw i32 %263, %264
  %266 = add nsw i32 %265, 1
  %267 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %268 = sext i32 %266 to i64
  %269 = shl nsw i64 %268, 2
  %270 = tail call ptr %267(i64 noundef %269, ptr noundef nonnull @.str.19) #19
  %271 = load ptr, ptr %241, align 8, !tbaa !34
  %272 = icmp eq ptr %271, null
  br i1 %272, label %303, label %276

273:                                              ; preds = %298, %276
  %274 = load ptr, ptr %277, align 8, !tbaa !34
  %275 = icmp eq ptr %274, null
  br i1 %275, label %303, label %276, !llvm.loop !261

276:                                              ; preds = %262, %273
  %277 = phi ptr [ %274, %273 ], [ %271, %262 ]
  %278 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %277, i64 0, i32 8
  %279 = load i32, ptr %278, align 8, !tbaa !152
  %280 = icmp sgt i32 %279, 0
  br i1 %280, label %281, label %273

281:                                              ; preds = %276
  %282 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %277, i64 0, i32 10
  %283 = load ptr, ptr %282, align 8, !tbaa !38
  br label %284

284:                                              ; preds = %281, %298
  %285 = phi i64 [ 0, %281 ], [ %299, %298 ]
  %286 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %283, i64 %285, i32 5
  %287 = load i32, ptr %286, align 4, !tbaa !158
  %288 = and i32 %287, 1
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %290, label %298

290:                                              ; preds = %284
  %291 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %283, i64 %285, i32 4
  %292 = load i32, ptr %291, align 4, !tbaa !150
  %293 = sub nsw i32 %292, %264
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i32, ptr %270, i64 %294
  %296 = load i32, ptr %295, align 4, !tbaa !127
  %297 = add nsw i32 %296, 1
  store i32 %297, ptr %295, align 4, !tbaa !127
  br label %298

298:                                              ; preds = %290, %284
  %299 = add nuw nsw i64 %285, 1
  %300 = load i32, ptr %278, align 8, !tbaa !152
  %301 = sext i32 %300 to i64
  %302 = icmp slt i64 %299, %301
  br i1 %302, label %284, label %273, !llvm.loop !262

303:                                              ; preds = %273, %262
  %304 = icmp slt i32 %265, 1
  br i1 %304, label %351, label %305

305:                                              ; preds = %303
  %306 = load i32, ptr %270, align 4, !tbaa !127
  %307 = icmp eq i32 %306, 0
  %308 = icmp slt i32 %306, 8
  %309 = icmp slt i32 %306, 16
  %310 = select i1 %309, i32 1, i32 2
  %311 = select i1 %308, i32 0, i32 %310
  %312 = select i1 %307, i32 2, i32 %311
  %313 = add i32 %264, -1
  %314 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 12, i32 3
  %315 = zext nneg i32 %265 to i64
  %316 = add i32 %263, 1
  %317 = sub i32 %316, %264
  %318 = zext i32 %317 to i64
  br label %319

319:                                              ; preds = %305, %347
  %320 = phi i64 [ 1, %305 ], [ %349, %347 ]
  %321 = phi i32 [ %264, %305 ], [ %348, %347 ]
  %322 = phi i32 [ %312, %305 ], [ %332, %347 ]
  %323 = getelementptr inbounds i32, ptr %270, i64 %320
  %324 = load i32, ptr %323, align 4, !tbaa !127
  %325 = icmp slt i32 %324, 8
  %326 = icmp slt i32 %324, 16
  %327 = select i1 %326, i32 1, i32 2
  %328 = select i1 %325, i32 0, i32 %327
  %329 = icmp eq i64 %320, %315
  %330 = icmp eq i32 %324, 0
  %331 = select i1 %329, i1 %330, i1 false
  %332 = select i1 %331, i32 2, i32 %328
  %333 = icmp ne i32 %332, %322
  %334 = or i1 %329, %333
  br i1 %334, label %335, label %347

335:                                              ; preds = %319
  %336 = trunc i64 %320 to i32
  %337 = add i32 %313, %336
  %338 = icmp eq i32 %337, %321
  %339 = trunc i64 %320 to i32
  %340 = add i32 %264, %339
  %341 = select i1 %338, i32 %340, i32 %337
  %342 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %343 = tail call ptr %342(i64 noundef 32, ptr noundef nonnull @.str.20) #19
  %344 = getelementptr inbounds %struct.MovieTrackingDopesheetCoverageSegment, ptr %343, i64 0, i32 2
  store i32 %322, ptr %344, align 8, !tbaa !263
  %345 = getelementptr inbounds %struct.MovieTrackingDopesheetCoverageSegment, ptr %343, i64 0, i32 3
  store i32 %321, ptr %345, align 4, !tbaa !265
  %346 = getelementptr inbounds %struct.MovieTrackingDopesheetCoverageSegment, ptr %343, i64 0, i32 4
  store i32 %341, ptr %346, align 8, !tbaa !266
  tail call void @BLI_addtail(ptr noundef nonnull %314, ptr noundef %343) #19
  br label %347

347:                                              ; preds = %335, %319
  %348 = phi i32 [ %341, %335 ], [ %321, %319 ]
  %349 = add nuw nsw i64 %320, 1
  %350 = icmp eq i64 %349, %318
  br i1 %350, label %351, label %319, !llvm.loop !267

351:                                              ; preds = %347, %303
  %352 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %352(ptr noundef nonnull %270) #19
  store i32 1, ptr %2, align 8, !tbaa !88
  br label %353

353:                                              ; preds = %1, %351
  ret void
}

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #3

declare i32 @PLX_raskterize(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @scale_m4_fl(ptr noundef, float noundef) local_unnamed_addr #3

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @BLI_sortlist(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal i32 @channels_alpha_inverse_sort(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.MovieTrackingDopesheetChannel, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !248
  %5 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %4, i64 0, i32 2
  %6 = getelementptr inbounds %struct.MovieTrackingDopesheetChannel, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !248
  %8 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %7, i64 0, i32 2
  %9 = tail call i32 @BLI_strcasecmp(ptr noundef nonnull %5, ptr noundef nonnull %8) #19
  %10 = icmp slt i32 %9, 1
  %11 = zext i1 %10 to i32
  ret i32 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @channels_longest_segment_inverse_sort(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.MovieTrackingDopesheetChannel, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !252
  %5 = getelementptr inbounds %struct.MovieTrackingDopesheetChannel, ptr %1, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !252
  %7 = icmp sle i32 %4, %6
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @channels_total_track_inverse_sort(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.MovieTrackingDopesheetChannel, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 4, !tbaa !253
  %5 = getelementptr inbounds %struct.MovieTrackingDopesheetChannel, ptr %1, i64 0, i32 8
  %6 = load i32, ptr %5, align 4, !tbaa !253
  %7 = icmp sle i32 %4, %6
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @channels_average_error_inverse_sort(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #16 {
  %3 = getelementptr inbounds %struct.MovieTrackingDopesheetChannel, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !248
  %5 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %4, i64 0, i32 12
  %6 = load float, ptr %5, align 4, !tbaa !250
  %7 = getelementptr inbounds %struct.MovieTrackingDopesheetChannel, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !248
  %9 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %8, i64 0, i32 12
  %10 = load float, ptr %9, align 4, !tbaa !250
  %11 = fcmp olt float %6, %10
  %12 = zext i1 %11 to i32
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @channels_alpha_sort(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.MovieTrackingDopesheetChannel, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !248
  %5 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %4, i64 0, i32 2
  %6 = getelementptr inbounds %struct.MovieTrackingDopesheetChannel, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !248
  %8 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %7, i64 0, i32 2
  %9 = tail call i32 @BLI_strcasecmp(ptr noundef nonnull %5, ptr noundef nonnull %8) #19
  %10 = icmp sgt i32 %9, 0
  %11 = zext i1 %10 to i32
  ret i32 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @channels_longest_segment_sort(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.MovieTrackingDopesheetChannel, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !252
  %5 = getelementptr inbounds %struct.MovieTrackingDopesheetChannel, ptr %1, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !252
  %7 = icmp sgt i32 %4, %6
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @channels_total_track_sort(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.MovieTrackingDopesheetChannel, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 4, !tbaa !253
  %5 = getelementptr inbounds %struct.MovieTrackingDopesheetChannel, ptr %1, i64 0, i32 8
  %6 = load i32, ptr %5, align 4, !tbaa !253
  %7 = icmp sgt i32 %4, %6
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @channels_average_error_sort(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #16 {
  %3 = getelementptr inbounds %struct.MovieTrackingDopesheetChannel, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !248
  %5 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %4, i64 0, i32 12
  %6 = load float, ptr %5, align 4, !tbaa !250
  %7 = getelementptr inbounds %struct.MovieTrackingDopesheetChannel, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !248
  %9 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %8, i64 0, i32 12
  %10 = load float, ptr %9, align 4, !tbaa !250
  %11 = fcmp ogt float %6, %10
  %12 = zext i1 %11 to i32
  ret i32 %12
}

declare i32 @BLI_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #17

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nounwind }
attributes #20 = { nounwind willreturn memory(read) }

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
!38 = !{!39, !35, i64 128}
!39 = !{!"MovieTrackingTrack", !35, i64 0, !35, i64 8, !36, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !40, i64 120, !40, i64 124, !35, i64 128, !36, i64 136, !41, i64 148, !40, i64 152, !40, i64 156, !40, i64 160, !36, i64 164, !42, i64 176, !42, i64 178, !42, i64 180, !42, i64 182, !40, i64 184, !41, i64 188, !35, i64 192, !41, i64 200, !41, i64 204}
!40 = !{!"int", !36, i64 0}
!41 = !{!"float", !36, i64 0}
!42 = !{!"short", !36, i64 0}
!43 = distinct !{!43, !44, !45}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!"llvm.loop.unroll.disable"}
!46 = !{!47, !35, i64 96}
!47 = !{!"MovieTrackingPlaneTrack", !35, i64 0, !35, i64 8, !36, i64 16, !35, i64 80, !40, i64 88, !40, i64 92, !35, i64 96, !40, i64 104, !40, i64 108, !35, i64 112, !41, i64 120, !40, i64 124}
!48 = !{!47, !35, i64 80}
!49 = distinct !{!49, !44, !45}
!50 = !{!51, !35, i64 16}
!51 = !{!"MovieTrackingReconstruction", !40, i64 0, !41, i64 4, !40, i64 8, !40, i64 12, !35, i64 16}
!52 = distinct !{!52, !44, !45}
!53 = !{!54, !35, i64 72}
!54 = !{!"MovieTracking", !55, i64 0, !56, i64 72, !57, i64 128, !57, i64 144, !51, i64 160, !58, i64 184, !35, i64 232, !35, i64 240, !57, i64 248, !40, i64 264, !40, i64 268, !35, i64 272, !59, i64 280}
!55 = !{!"MovieTrackingSettings", !40, i64 0, !42, i64 4, !42, i64 6, !41, i64 8, !42, i64 12, !42, i64 14, !42, i64 16, !42, i64 18, !42, i64 20, !42, i64 22, !41, i64 24, !42, i64 28, !42, i64 30, !40, i64 32, !40, i64 36, !40, i64 40, !42, i64 44, !42, i64 46, !41, i64 48, !40, i64 52, !40, i64 56, !41, i64 60, !41, i64 64, !40, i64 68}
!56 = !{!"MovieTrackingCamera", !35, i64 0, !42, i64 8, !42, i64 10, !41, i64 12, !41, i64 16, !41, i64 20, !42, i64 24, !42, i64 26, !36, i64 28, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52}
!57 = !{!"ListBase", !35, i64 0, !35, i64 8}
!58 = !{!"MovieTrackingStabilization", !40, i64 0, !40, i64 4, !40, i64 8, !41, i64 12, !35, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !40, i64 36, !40, i64 40, !41, i64 44}
!59 = !{!"MovieTrackingDopesheet", !40, i64 0, !42, i64 4, !42, i64 6, !57, i64 8, !57, i64 24, !40, i64 40, !40, i64 44}
!60 = !{!61, !35, i64 0}
!61 = !{!"MovieDistortion", !35, i64 0}
!62 = !{!63, !35, i64 96}
!63 = !{!"MovieTrackingDopesheetChannel", !35, i64 0, !35, i64 8, !35, i64 16, !40, i64 24, !36, i64 28, !40, i64 92, !35, i64 96, !40, i64 104, !40, i64 108}
!64 = distinct !{!64, !44, !45}
!65 = !{!54, !41, i64 84}
!66 = !{!54, !41, i64 88}
!67 = !{!54, !42, i64 96}
!68 = !{!54, !42, i64 4}
!69 = !{!54, !41, i64 8}
!70 = !{!54, !42, i64 12}
!71 = !{!54, !42, i64 14}
!72 = !{!54, !42, i64 6}
!73 = !{!54, !41, i64 24}
!74 = !{!54, !41, i64 48}
!75 = !{!54, !41, i64 64}
!76 = !{!54, !41, i64 212}
!77 = !{!54, !41, i64 208}
!78 = !{!54, !41, i64 216}
!79 = !{!54, !41, i64 196}
!80 = !{!54, !40, i64 220}
!81 = !{!54, !40, i64 268}
!82 = !{!83, !40, i64 80}
!83 = !{!"MovieTrackingObject", !35, i64 0, !35, i64 8, !36, i64 16, !40, i64 80, !41, i64 84, !57, i64 88, !57, i64 104, !51, i64 120, !40, i64 144, !40, i64 148}
!84 = !{!54, !40, i64 264}
!85 = !{!83, !41, i64 84}
!86 = !{!83, !40, i64 144}
!87 = !{!83, !40, i64 148}
!88 = !{!59, !40, i64 0}
!89 = !{!90, !35, i64 128}
!90 = !{!"Scene", !91, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !57, i64 152, !35, i64 168, !35, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !40, i64 232, !40, i64 236, !40, i64 240, !42, i64 244, !36, i64 246, !36, i64 247, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !92, i64 280, !101, i64 4264, !57, i64 4296, !57, i64 4312, !35, i64 4328, !35, i64 4336, !35, i64 4344, !35, i64 4352, !35, i64 4360, !35, i64 4368, !42, i64 4376, !42, i64 4378, !40, i64 4380, !57, i64 4384, !102, i64 4400, !103, i64 4416, !106, i64 4600, !35, i64 4608, !107, i64 4616, !35, i64 4640, !108, i64 4648, !108, i64 4656, !94, i64 4664, !95, i64 4824, !109, i64 4888, !35, i64 4952}
!91 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !42, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !35, i64 112}
!92 = !{!"RenderData", !93, i64 0, !35, i64 248, !35, i64 256, !96, i64 264, !97, i64 328, !40, i64 400, !40, i64 404, !40, i64 408, !41, i64 412, !40, i64 416, !40, i64 420, !40, i64 424, !40, i64 428, !42, i64 432, !42, i64 434, !41, i64 436, !41, i64 440, !41, i64 444, !41, i64 448, !41, i64 452, !42, i64 456, !42, i64 458, !42, i64 460, !42, i64 462, !42, i64 464, !42, i64 466, !40, i64 468, !42, i64 472, !42, i64 474, !42, i64 476, !42, i64 478, !42, i64 480, !42, i64 482, !40, i64 484, !40, i64 488, !42, i64 492, !42, i64 494, !40, i64 496, !40, i64 500, !42, i64 504, !42, i64 506, !42, i64 508, !42, i64 510, !42, i64 512, !36, i64 514, !36, i64 515, !40, i64 516, !40, i64 520, !40, i64 524, !42, i64 528, !42, i64 530, !42, i64 532, !42, i64 534, !42, i64 536, !42, i64 538, !42, i64 540, !42, i64 542, !98, i64 544, !98, i64 560, !99, i64 576, !57, i64 592, !42, i64 608, !42, i64 610, !41, i64 612, !41, i64 616, !41, i64 620, !41, i64 624, !40, i64 628, !41, i64 632, !41, i64 636, !41, i64 640, !41, i64 644, !42, i64 648, !42, i64 650, !42, i64 652, !42, i64 654, !42, i64 656, !42, i64 658, !41, i64 660, !41, i64 664, !42, i64 668, !42, i64 670, !41, i64 672, !41, i64 676, !36, i64 680, !40, i64 1704, !42, i64 1708, !42, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !40, i64 2520, !42, i64 2524, !42, i64 2526, !41, i64 2528, !41, i64 2532, !42, i64 2536, !42, i64 2538, !41, i64 2540, !42, i64 2544, !42, i64 2546, !40, i64 2548, !42, i64 2552, !42, i64 2554, !42, i64 2556, !42, i64 2558, !41, i64 2560, !41, i64 2564, !35, i64 2568, !40, i64 2576, !41, i64 2580, !36, i64 2584, !100, i64 2616, !40, i64 3976, !40, i64 3980}
!93 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !42, i64 8, !42, i64 10, !41, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !94, i64 24, !95, i64 184}
!94 = !{!"ColorManagedViewSettings", !40, i64 0, !40, i64 4, !36, i64 8, !36, i64 72, !41, i64 136, !41, i64 140, !35, i64 144, !35, i64 152}
!95 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!96 = !{!"QuicktimeCodecSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !42, i64 48, !42, i64 50, !40, i64 52, !40, i64 56, !40, i64 60}
!97 = !{!"FFMpegCodecData", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !41, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !35, i64 64}
!98 = !{!"rctf", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!99 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!100 = !{!"BakeData", !93, i64 0, !36, i64 248, !42, i64 1272, !42, i64 1274, !42, i64 1276, !42, i64 1278, !41, i64 1280, !41, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!101 = !{!"AudioData", !40, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !42, i64 20, !42, i64 22, !41, i64 24, !41, i64 28}
!102 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!103 = !{!"GameData", !102, i64 0, !42, i64 16, !42, i64 18, !42, i64 20, !42, i64 22, !42, i64 24, !42, i64 26, !42, i64 28, !42, i64 30, !42, i64 32, !36, i64 34, !104, i64 40, !42, i64 64, !42, i64 66, !41, i64 68, !105, i64 72, !41, i64 128, !41, i64 132, !40, i64 136, !42, i64 140, !42, i64 142, !42, i64 144, !42, i64 146, !42, i64 148, !42, i64 150, !42, i64 152, !42, i64 154, !42, i64 156, !42, i64 158, !42, i64 160, !42, i64 162, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !41, i64 180}
!104 = !{!"GameDome", !42, i64 0, !42, i64 2, !42, i64 4, !42, i64 6, !41, i64 8, !41, i64 12, !35, i64 16}
!105 = !{!"RecastData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !40, i64 40, !41, i64 44, !41, i64 48, !42, i64 52, !42, i64 54}
!106 = !{!"UnitSettings", !41, i64 0, !36, i64 4, !36, i64 5, !42, i64 6}
!107 = !{!"PhysicsSettings", !36, i64 0, !40, i64 12, !40, i64 16, !40, i64 20}
!108 = !{!"long", !36, i64 0}
!109 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!110 = !{!54, !41, i64 92}
!111 = !{!41, !41, i64 0}
!112 = !{!51, !40, i64 12}
!113 = !{!114, !40, i64 0}
!114 = !{!"MovieReconstructedCamera", !40, i64 0, !41, i64 4, !36, i64 8}
!115 = !{!51, !40, i64 8}
!116 = distinct !{!116, !44, !45}
!117 = !{!118, !35, i64 0}
!118 = !{!"", !57, i64 0}
!119 = !{!39, !35, i64 0}
!120 = distinct !{!120, !44, !45}
!121 = !{!57, !35, i64 0}
!122 = !{!39, !40, i64 152}
!123 = !{!39, !40, i64 156}
!124 = !{!39, !40, i64 160}
!125 = !{i64 0, i64 8, !34, i64 8, i64 8, !34, i64 16, i64 64, !126, i64 80, i64 8, !126, i64 88, i64 8, !126, i64 96, i64 8, !126, i64 104, i64 8, !126, i64 112, i64 8, !126, i64 120, i64 4, !127, i64 124, i64 4, !127, i64 128, i64 8, !34, i64 136, i64 12, !126, i64 148, i64 4, !111, i64 152, i64 4, !127, i64 156, i64 4, !127, i64 160, i64 4, !127, i64 164, i64 12, !126, i64 176, i64 2, !128, i64 178, i64 2, !128, i64 180, i64 2, !128, i64 182, i64 2, !128, i64 184, i64 4, !127, i64 188, i64 4, !111, i64 192, i64 8, !34, i64 200, i64 4, !111, i64 204, i64 4, !111}
!126 = !{!36, !36, i64 0}
!127 = !{!40, !40, i64 0}
!128 = !{!42, !42, i64 0}
!129 = distinct !{!129, !44, !45}
!130 = !{!39, !35, i64 8}
!131 = !{!54, !35, i64 232}
!132 = distinct !{!132, !44, !45}
!133 = !{!55, !42, i64 12}
!134 = !{!55, !42, i64 14}
!135 = !{!55, !42, i64 4}
!136 = !{!39, !42, i64 182}
!137 = !{!55, !41, i64 8}
!138 = !{!39, !41, i64 188}
!139 = !{!55, !42, i64 18}
!140 = !{!39, !42, i64 178}
!141 = !{!55, !42, i64 20}
!142 = !{!39, !42, i64 180}
!143 = !{!55, !42, i64 16}
!144 = !{!39, !42, i64 176}
!145 = !{!55, !42, i64 22}
!146 = !{!55, !42, i64 6}
!147 = !{!39, !40, i64 184}
!148 = !{!55, !41, i64 24}
!149 = !{!39, !41, i64 200}
!150 = !{!151, !40, i64 56}
!151 = !{!"MovieTrackingMarker", !36, i64 0, !36, i64 8, !36, i64 40, !36, i64 48, !40, i64 56, !40, i64 60}
!152 = !{!39, !40, i64 120}
!153 = !{!39, !40, i64 124}
!154 = distinct !{!154, !44, !45}
!155 = distinct !{!155, !44, !45}
!156 = !{i64 0, i64 8, !126, i64 8, i64 32, !126, i64 40, i64 8, !126, i64 48, i64 8, !126, i64 56, i64 4, !127, i64 60, i64 4, !127}
!157 = distinct !{!157, !44, !45}
!158 = !{!151, !40, i64 60}
!159 = distinct !{!159, !44, !45}
!160 = distinct !{!160, !44, !45}
!161 = distinct !{!161, !44, !45}
!162 = distinct !{!162, !44, !45}
!163 = distinct !{!163, !44, !45}
!164 = distinct !{!164, !44, !45}
!165 = !{!54, !35, i64 248}
!166 = distinct !{!166, !44, !45}
!167 = !{!83, !35, i64 0}
!168 = distinct !{!168, !44, !45}
!169 = !{!39, !35, i64 192}
!170 = !{!171, !40, i64 40}
!171 = !{!"bGPDlayer", !35, i64 0, !35, i64 8, !57, i64 16, !35, i64 32, !40, i64 40, !42, i64 44, !42, i64 46, !36, i64 48, !36, i64 64}
!172 = !{!173, !35, i64 16}
!173 = !{!"bGPDframe", !35, i64 0, !35, i64 8, !57, i64 16, !40, i64 32, !40, i64 36}
!174 = distinct !{!174, !44, !45}
!175 = distinct !{!175, !44, !45}
!176 = distinct !{!176, !44, !45}
!177 = !{!178, !35, i64 16}
!178 = !{!"bGPDstroke", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !40, i64 32, !42, i64 36, !42, i64 38, !179, i64 40}
!179 = !{!"double", !36, i64 0}
!180 = !{!178, !42, i64 38}
!181 = !{!178, !40, i64 32}
!182 = !{!183, !41, i64 0}
!183 = !{!"bGPDspoint", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16}
!184 = !{!183, !41, i64 4}
!185 = distinct !{!185, !44, !45}
!186 = distinct !{!186, !44, !45}
!187 = distinct !{!187, !44, !45}
!188 = distinct !{!188, !44, !45}
!189 = distinct !{!189, !44, !45}
!190 = distinct !{!190, !44, !45}
!191 = distinct !{!191, !44, !45}
!192 = distinct !{!192, !44, !45}
!193 = distinct !{!193, !44, !45}
!194 = distinct !{!194, !44, !45}
!195 = distinct !{!195, !44, !45}
!196 = distinct !{!196, !44, !45}
!197 = !{!47, !41, i64 120}
!198 = distinct !{!198, !44, !45}
!199 = !{!47, !40, i64 88}
!200 = !{!201, !40, i64 32}
!201 = !{!"MovieTrackingPlaneMarker", !36, i64 0, !40, i64 32, !40, i64 36}
!202 = !{!201, !40, i64 36}
!203 = !{!47, !40, i64 104}
!204 = !{!47, !40, i64 124}
!205 = distinct !{!205, !44, !45}
!206 = distinct !{!206, !44, !45}
!207 = !{i64 0, i64 32, !126, i64 32, i64 4, !127, i64 36, i64 4, !127}
!208 = distinct !{!208, !44, !45}
!209 = distinct !{!209, !44, !45}
!210 = !{!54, !35, i64 240}
!211 = !{!47, !40, i64 108}
!212 = distinct !{!212, !44, !45}
!213 = distinct !{!213, !44, !45}
!214 = distinct !{!214, !44, !45}
!215 = distinct !{!215, !44, !45}
!216 = distinct !{!216, !44, !45}
!217 = !{!218, !41, i64 156}
!218 = !{!"Camera", !91, i64 0, !35, i64 120, !36, i64 128, !36, i64 129, !42, i64 130, !41, i64 132, !41, i64 136, !41, i64 140, !41, i64 144, !41, i64 148, !41, i64 152, !41, i64 156, !41, i64 160, !41, i64 164, !41, i64 168, !41, i64 172, !35, i64 176, !35, i64 184, !36, i64 192, !36, i64 193}
!219 = !{!218, !36, i64 192}
!220 = !{!218, !41, i64 144}
!221 = !{!90, !40, i64 764}
!222 = !{!90, !40, i64 768}
!223 = !{!90, !41, i64 892}
!224 = !{!90, !41, i64 896}
!225 = !{!226, !35, i64 48}
!226 = !{!"ImBuf", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 20, !36, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !35, i64 40, !35, i64 48, !36, i64 56, !40, i64 72, !40, i64 76, !40, i64 80, !40, i64 84, !35, i64 88, !35, i64 96, !35, i64 104, !41, i64 112, !36, i64 120, !40, i64 280, !40, i64 284, !40, i64 288, !40, i64 292, !35, i64 296, !35, i64 304, !40, i64 312, !36, i64 316, !36, i64 1340, !35, i64 2368, !40, i64 2376, !35, i64 2384, !40, i64 2392, !40, i64 2396, !35, i64 2400, !35, i64 2408, !35, i64 2416, !35, i64 2424, !40, i64 2432, !99, i64 2436, !227, i64 2456}
!227 = !{!"DDSData", !40, i64 0, !40, i64 4, !35, i64 8, !40, i64 16}
!228 = !{!226, !40, i64 16}
!229 = !{!226, !40, i64 20}
!230 = !{!226, !40, i64 28}
!231 = !{!226, !35, i64 40}
!232 = !{!56, !41, i64 20}
!233 = !{!179, !179, i64 0}
!234 = !{!56, !35, i64 0}
!235 = !{!99, !40, i64 0}
!236 = !{!99, !40, i64 4}
!237 = distinct !{!237, !44, !45}
!238 = !{!99, !40, i64 8}
!239 = !{ptr @BKE_tracking_distort_v2, ptr @BKE_tracking_undistort_v2}
!240 = !{!99, !40, i64 12}
!241 = distinct !{!241, !44, !45}
!242 = distinct !{!242, !44, !45}
!243 = distinct !{!243, !44, !45}
!244 = distinct !{!244, !44, !45}
!245 = !{!226, !40, i64 292}
!246 = !{!59, !42, i64 6}
!247 = !{!59, !42, i64 4}
!248 = !{!63, !35, i64 16}
!249 = !{!51, !40, i64 0}
!250 = !{!39, !41, i64 148}
!251 = !{!63, !40, i64 92}
!252 = !{!63, !40, i64 104}
!253 = !{!63, !40, i64 108}
!254 = distinct !{!254, !44, !45}
!255 = distinct !{!255, !44, !45}
!256 = distinct !{!256, !44, !45}
!257 = distinct !{!257, !44, !45}
!258 = !{!59, !40, i64 40}
!259 = distinct !{!259, !44, !45}
!260 = distinct !{!260, !44, !45}
!261 = distinct !{!261, !44, !45}
!262 = distinct !{!262, !44, !45}
!263 = !{!264, !40, i64 16}
!264 = !{!"MovieTrackingDopesheetCoverageSegment", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28}
!265 = !{!264, !40, i64 20}
!266 = !{!264, !40, i64 24}
!267 = distinct !{!267, !44, !45}
