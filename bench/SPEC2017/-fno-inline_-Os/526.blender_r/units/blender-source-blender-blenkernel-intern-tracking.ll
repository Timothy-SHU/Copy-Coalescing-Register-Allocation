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
%struct.MovieTrackingDopesheetChannel = type { ptr, ptr, ptr, i32, [64 x i8], i32, ptr, i32, i32 }
%struct.MovieTrackingObject = type { ptr, ptr, [64 x i8], i32, float, %struct.ListBase, %struct.ListBase, %struct.MovieTrackingReconstruction, i32, i32 }
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
%struct.MovieTrackingTrack = type { ptr, ptr, [64 x i8], [2 x float], [2 x float], [2 x float], [2 x float], [2 x float], i32, i32, ptr, [3 x float], float, i32, i32, i32, [3 x float], i16, i16, i16, i16, i32, float, ptr, float, float }
%struct.MovieTrackingMarker = type { [2 x float], [4 x [2 x float]], [2 x float], [2 x float], i32, i32 }
%struct.bGPdata = type { %struct.ID, %struct.ListBase, i32, i16, i16, ptr }
%struct.bGPDlayer = type { ptr, ptr, %struct.ListBase, ptr, i32, i16, i16, [4 x float], [128 x i8] }
%struct.bGPDframe = type { ptr, ptr, %struct.ListBase, i32, i32 }
%struct.bGPDstroke = type { ptr, ptr, ptr, ptr, i32, i16, i16, double }
%struct.bGPDspoint = type { float, float, float, float, float }
%struct.MovieTrackingPlaneMarker = type { [4 x [2 x float]], i32, i32 }
%struct.MovieTrackingPlaneTrack = type { ptr, ptr, [64 x i8], ptr, i32, i32, ptr, i32, i32, ptr, float, i32 }
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
@switch.table.tracking_dopesheet_channels_sort = private unnamed_addr constant [4 x ptr] [ptr @channels_alpha_inverse_sort, ptr @channels_longest_segment_inverse_sort, ptr @channels_total_track_inverse_sort, ptr @channels_average_error_inverse_sort], align 8
@switch.table.tracking_dopesheet_channels_sort.21 = private unnamed_addr constant [4 x ptr] [ptr @channels_alpha_sort, ptr @channels_longest_segment_sort, ptr @channels_total_track_sort, ptr @channels_average_error_sort], align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_tracking_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 2
  tail call fastcc void @tracking_tracks_free(ptr noundef nonnull %2) #18
  %3 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 3
  tail call fastcc void @tracking_plane_tracks_free(ptr noundef nonnull %3) #18
  %4 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 4
  tail call fastcc void @tracking_reconstruction_free(ptr noundef nonnull %4) #18
  %5 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 8
  tail call fastcc void @tracking_objects_free(ptr noundef nonnull %5) #18
  %6 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void @BKE_tracking_distortion_free(ptr noundef nonnull %7) #18
  br label %10

10:                                               ; preds = %9, %1
  %11 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 12
  tail call fastcc void @tracking_dopesheet_free(ptr noundef nonnull %11) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @tracking_tracks_free(ptr noundef %0) unnamed_addr #0 !PGOFuncName !48 {
  %2 = load ptr, ptr %0, align 8, !tbaa !49
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %6, %4 ], [ %2, %1 ]
  tail call void @BKE_tracking_track_free(ptr noundef nonnull %5) #18
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %4, !llvm.loop !50

8:                                                ; preds = %4, %1
  tail call void @BLI_freelistN(ptr noundef nonnull %0) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @tracking_plane_tracks_free(ptr noundef %0) unnamed_addr #0 !PGOFuncName !52 {
  %2 = load ptr, ptr %0, align 8, !tbaa !49
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %6, %4 ], [ %2, %1 ]
  tail call void @BKE_tracking_plane_track_free(ptr noundef nonnull %5) #18
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %4, !llvm.loop !53

8:                                                ; preds = %4, %1
  tail call void @BLI_freelistN(ptr noundef nonnull %0) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @tracking_reconstruction_free(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !54 {
  %2 = getelementptr inbounds %struct.MovieTrackingReconstruction, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %6(ptr noundef nonnull %3) #19
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @tracking_objects_free(ptr noundef %0) unnamed_addr #0 !PGOFuncName !56 {
  %2 = load ptr, ptr %0, align 8, !tbaa !49
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %6, %4 ], [ %2, %1 ]
  tail call fastcc void @tracking_object_free(ptr noundef nonnull %5) #18
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %4, !llvm.loop !57

8:                                                ; preds = %4, %1
  tail call void @BLI_freelistN(ptr noundef nonnull %0) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_tracking_distortion_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !58
  tail call void @libmv_cameraIntrinsicsDestroy(ptr noundef %2) #19
  %3 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %3(ptr noundef nonnull %0) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @tracking_dopesheet_free(ptr noundef %0) unnamed_addr #0 !PGOFuncName !60 {
  %2 = getelementptr inbounds %struct.MovieTrackingDopesheet, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %1, %12
  %6 = phi ptr [ %13, %12 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.MovieTrackingDopesheetChannel, ptr %6, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !61
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %11(ptr noundef nonnull %8) #19
  br label %12

12:                                               ; preds = %10, %5
  %13 = load ptr, ptr %6, align 8, !tbaa !49
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %5, !llvm.loop !63

15:                                               ; preds = %12, %1
  tail call void @BLI_freelistN(ptr noundef nonnull %2) #19
  %16 = getelementptr inbounds %struct.MovieTrackingDopesheet, ptr %0, i64 0, i32 3
  tail call void @BLI_freelistN(ptr noundef nonnull %16) #19
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %2) #18
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %16) #18
  %17 = getelementptr inbounds %struct.MovieTrackingDopesheet, ptr %0, i64 0, i32 5
  store i32 0, ptr %17, align 8, !tbaa !64
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_tracking_settings_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1, i32 3
  store <2 x float> <float 3.500000e+01, float 1.000000e+00>, ptr %2, align 4, !tbaa !65
  %3 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1, i32 6
  store i16 1, ptr %3, align 8, !tbaa !66
  %4 = getelementptr inbounds %struct.MovieTrackingSettings, ptr %0, i64 0, i32 1
  store i16 0, ptr %4, align 4, !tbaa !67
  %5 = getelementptr inbounds %struct.MovieTrackingSettings, ptr %0, i64 0, i32 3
  store float 7.500000e-01, ptr %5, align 8, !tbaa !68
  %6 = getelementptr inbounds %struct.MovieTrackingSettings, ptr %0, i64 0, i32 4
  store i16 21, ptr %6, align 4, !tbaa !69
  %7 = getelementptr inbounds %struct.MovieTrackingSettings, ptr %0, i64 0, i32 5
  store i16 71, ptr %7, align 2, !tbaa !70
  %8 = getelementptr inbounds %struct.MovieTrackingSettings, ptr %0, i64 0, i32 2
  %9 = load i16, ptr %8, align 2, !tbaa !71
  %10 = or i16 %9, 1
  store i16 %10, ptr %8, align 2, !tbaa !71
  %11 = getelementptr inbounds %struct.MovieTrackingSettings, ptr %0, i64 0, i32 10
  store float 1.000000e+00, ptr %11, align 8, !tbaa !72
  %12 = getelementptr inbounds %struct.MovieTrackingSettings, ptr %0, i64 0, i32 18
  store float 1.000000e+00, ptr %12, align 8, !tbaa !73
  %13 = getelementptr inbounds %struct.MovieTrackingSettings, ptr %0, i64 0, i32 22
  store float 1.000000e+00, ptr %13, align 8, !tbaa !74
  %14 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 5, i32 5
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %14, align 8, !tbaa !65
  %15 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 5, i32 7
  store float 1.000000e+00, ptr %15, align 8, !tbaa !75
  %16 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 5, i32 3
  store float 2.000000e+00, ptr %16, align 4, !tbaa !76
  %17 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 5, i32 8
  store i32 1, ptr %17, align 4, !tbaa !77
  %18 = tail call ptr @BKE_tracking_object_add(ptr noundef %0, ptr noundef nonnull @.str) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_tracking_object_add(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %4 = tail call ptr %3(i64 noundef 152, ptr noundef nonnull @.str.12) #19
  %5 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 10
  %6 = load i32, ptr %5, align 4, !tbaa !78
  %7 = icmp eq i32 %6, 0
  %8 = getelementptr inbounds %struct.MovieTrackingObject, ptr %4, i64 0, i32 2
  br i1 %7, label %9, label %14

9:                                                ; preds = %2
  %10 = tail call ptr @BLI_strncpy(ptr noundef nonnull %8, ptr noundef nonnull @.str, i64 noundef 64) #19
  %11 = getelementptr inbounds %struct.MovieTrackingObject, ptr %4, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !79
  %13 = or i32 %12, 1
  store i32 %13, ptr %11, align 8, !tbaa !79
  br label %16

14:                                               ; preds = %2
  %15 = tail call ptr @BLI_strncpy(ptr noundef nonnull %8, ptr noundef %1, i64 noundef 64) #19
  br label %16

16:                                               ; preds = %14, %9
  %17 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 8
  tail call void @BLI_addtail(ptr noundef nonnull %17, ptr noundef %4) #19
  %18 = load i32, ptr %5, align 4, !tbaa !78
  %19 = add nsw i32 %18, 1
  store i32 %19, ptr %5, align 4, !tbaa !78
  %20 = tail call i32 @BLI_countlist(ptr noundef nonnull %17) #19
  %21 = add nsw i32 %20, -1
  %22 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 9
  store i32 %21, ptr %22, align 8, !tbaa !81
  %23 = getelementptr inbounds %struct.MovieTrackingObject, ptr %4, i64 0, i32 4
  store float 1.000000e+00, ptr %23, align 4, !tbaa !82
  %24 = getelementptr inbounds %struct.MovieTrackingObject, ptr %4, i64 0, i32 8
  store i32 1, ptr %24, align 8, !tbaa !83
  %25 = getelementptr inbounds %struct.MovieTrackingObject, ptr %4, i64 0, i32 9
  store i32 30, ptr %25, align 4, !tbaa !84
  tail call void @BKE_tracking_object_unique_name(ptr noundef nonnull %0, ptr noundef %4) #18
  tail call void @BKE_tracking_dopesheet_tag_update(ptr noundef nonnull %0) #18
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local nonnull ptr @BKE_tracking_get_active_tracks(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BKE_tracking_object_get_active(ptr noundef %0) #18
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.MovieTrackingObject, ptr %2, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !79
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.MovieTrackingObject, ptr %2, i64 0, i32 5
  br label %13

11:                                               ; preds = %4, %1
  %12 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 2
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi ptr [ %10, %9 ], [ %12, %11 ]
  ret ptr %14
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_tracking_object_get_active(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 8
  %3 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !81
  %5 = tail call ptr @BLI_findlink(ptr noundef nonnull %2, i32 noundef %4) #19
  ret ptr %5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local nonnull ptr @BKE_tracking_get_active_plane_tracks(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BKE_tracking_object_get_active(ptr noundef %0) #18
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.MovieTrackingObject, ptr %2, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !79
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.MovieTrackingObject, ptr %2, i64 0, i32 6
  br label %13

11:                                               ; preds = %4, %1
  %12 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 3
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi ptr [ %10, %9 ], [ %12, %11 ]
  ret ptr %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local nonnull ptr @BKE_tracking_get_active_reconstruction(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BKE_tracking_object_get_active(ptr noundef %0) #18
  %3 = tail call ptr @BKE_tracking_object_get_reconstruction(ptr noundef %0, ptr noundef %2) #18
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local nonnull ptr @BKE_tracking_object_get_reconstruction(ptr noundef readnone %0, ptr noundef readonly %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.MovieTrackingObject, ptr %1, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !79
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  %7 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 4
  %8 = getelementptr inbounds %struct.MovieTrackingObject, ptr %1, i64 0, i32 7
  %9 = select i1 %6, ptr %8, ptr %7
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_tracking_get_camera_object_matrix(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %12

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !85
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = tail call ptr @BKE_scene_camera_find(ptr noundef nonnull %0) #19
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %5, %3, %9
  %13 = phi ptr [ %10, %9 ], [ %7, %5 ], [ %1, %3 ]
  tail call void @BKE_object_where_is_calc_mat4(ptr noundef %0, ptr noundef nonnull %13, ptr noundef %2) #19
  br label %15

14:                                               ; preds = %9
  tail call void @unit_m4(ptr noundef %2) #19
  br label %15

15:                                               ; preds = %14, %12
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_scene_camera_find(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_object_where_is_calc_mat4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @unit_m4(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_tracking_get_projection_matrix(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca [4 x [4 x float]], align 16
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca [4 x [4 x float]], align 16
  %11 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1, i32 5
  %12 = load float, ptr %11, align 4, !tbaa !106
  %13 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1, i32 3
  %14 = load float, ptr %13, align 4, !tbaa !107
  %15 = fmul float %12, %14
  %16 = sitofp i32 %3 to float
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #20
  %17 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1, i32 4
  %18 = load float, ptr %17, align 8, !tbaa !108
  %19 = insertelement <2 x float> <float poison, float 1.000000e+00>, float %15, i64 0
  %20 = insertelement <2 x float> poison, float %16, i64 0
  %21 = insertelement <2 x float> %20, float %18, i64 1
  %22 = fdiv <2 x float> %19, %21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #20
  %23 = tail call fastcc i32 @min_ii(i32 noundef %3, i32 noundef %4) #18
  %24 = sitofp i32 %23 to float
  call void @BKE_tracking_camera_shift_get(ptr noundef %0, i32 noundef %3, i32 noundef %4, ptr noundef nonnull %8, ptr noundef nonnull %9) #18
  %25 = icmp slt i32 %3, %4
  %26 = extractelement <2 x float> %22, i64 0
  %27 = fmul float %26, %16
  %28 = extractelement <2 x float> %22, i64 1
  %29 = fmul float %26, %28
  %30 = sitofp i32 %4 to float
  %31 = fmul float %29, %30
  %32 = select i1 %25, float %31, float %27
  %33 = fdiv float %32, %14
  %34 = fdiv float 0x3FB99999A0000000, %33
  %35 = load float, ptr %8, align 4, !tbaa !65
  %36 = fmul float %35, %24
  %37 = tail call float @llvm.fmuladd.f32(float %16, float -5.000000e-01, float %36)
  %38 = fmul float %28, -5.000000e-01
  %39 = load float, ptr %9, align 4, !tbaa !65
  %40 = fmul float %39, %24
  %41 = tail call float @llvm.fmuladd.f32(float %38, float %30, float %40)
  %42 = tail call float @llvm.fmuladd.f32(float %16, float 5.000000e-01, float %36)
  %43 = fmul float %28, 5.000000e-01
  %44 = tail call float @llvm.fmuladd.f32(float %43, float %30, float %40)
  %45 = fmul float %34, %37
  %46 = fmul float %34, %42
  %47 = fmul float %34, %41
  %48 = fmul float %34, %44
  call void @perspective_m4(ptr noundef nonnull %7, float noundef %45, float noundef %46, float noundef %47, float noundef %48, float noundef 0x3FB99999A0000000, float noundef 1.000000e+03) #19
  %49 = call ptr @BKE_tracking_camera_get_reconstructed(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) #18
  %50 = icmp eq ptr %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #20
  %52 = getelementptr inbounds %struct.MovieReconstructedCamera, ptr %49, i64 0, i32 2
  %53 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %10, ptr noundef nonnull %52) #19
  call void @mul_m4_m4m4(ptr noundef %5, ptr noundef nonnull %7, ptr noundef nonnull %10) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #20
  br label %55

54:                                               ; preds = %6
  call void @copy_m4_m4(ptr noundef %5, ptr noundef nonnull %7) #19
  br label %55

55:                                               ; preds = %54, %51
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @min_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #4 !PGOFuncName !109 {
  %3 = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_tracking_camera_shift_get(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #5 {
  %6 = sitofp i32 %1 to float
  %7 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1, i32 8
  %8 = load float, ptr %7, align 4, !tbaa !65
  %9 = fneg float %8
  %10 = tail call float @llvm.fmuladd.f32(float %6, float 5.000000e-01, float %9)
  %11 = fdiv float %10, %6
  store float %11, ptr %3, align 4, !tbaa !65
  %12 = sitofp i32 %2 to float
  %13 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1, i32 8, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !65
  %15 = fneg float %14
  %16 = tail call float @llvm.fmuladd.f32(float %12, float 5.000000e-01, float %15)
  %17 = fdiv float %16, %6
  store float %17, ptr %4, align 4, !tbaa !65
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: optsize
declare void @perspective_m4(ptr noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_tracking_camera_get_reconstructed(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #7 {
  %4 = tail call ptr @BKE_tracking_object_get_reconstruction(ptr noundef %0, ptr noundef %1) #18
  %5 = tail call fastcc i32 @reconstructed_camera_index_get(ptr noundef nonnull %4, i32 noundef %2, i8 noundef zeroext 0) #18
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.MovieTrackingReconstruction, ptr %4, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !55
  %10 = sext i32 %5 to i64
  %11 = getelementptr inbounds %struct.MovieReconstructedCamera, ptr %9, i64 %10
  br label %12

12:                                               ; preds = %3, %7
  %13 = phi ptr [ %11, %7 ], [ null, %3 ]
  ret ptr %13
}

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_tracking_clipboard_free() local_unnamed_addr #0 {
  %1 = load ptr, ptr @tracking_clipboard, align 8, !tbaa !110
  %2 = icmp eq ptr %1, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %0, %3
  %4 = phi ptr [ %5, %3 ], [ %1, %0 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !112
  tail call void @BKE_tracking_track_free(ptr noundef nonnull %4) #18
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %6(ptr noundef nonnull %4) #19
  %7 = icmp eq ptr %5, null
  br i1 %7, label %8, label %3, !llvm.loop !114

8:                                                ; preds = %3, %0
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull @tracking_clipboard) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_tracking_track_free(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !115
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %6(ptr noundef nonnull %3) #19
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @BLI_listbase_clear(ptr nocapture noundef writeonly %0) unnamed_addr #8 !PGOFuncName !116 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_tracking_clipboard_copy_tracks(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BKE_tracking_object_get_tracks(ptr noundef %0, ptr noundef %1) #18
  %4 = load ptr, ptr %3, align 8, !tbaa !117
  tail call void @BKE_tracking_clipboard_free() #18
  %5 = icmp eq ptr %4, null
  br i1 %5, label %33, label %6

6:                                                ; preds = %2, %30
  %7 = phi ptr [ %31, %30 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %7, i64 0, i32 13
  %9 = load i32, ptr %8, align 8, !tbaa !118
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %7, i64 0, i32 14
  %14 = load i32, ptr %13, align 4, !tbaa !119
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %7, i64 0, i32 15
  %19 = load i32, ptr %18, align 8, !tbaa !120
  %20 = and i32 %19, 1
  %21 = icmp ne i32 %20, 0
  %22 = and i32 %9, 32
  %23 = icmp eq i32 %22, 0
  %24 = and i1 %23, %21
  br i1 %24, label %28, label %30

25:                                               ; preds = %12, %6
  %26 = and i32 %9, 32
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %17, %25
  %29 = tail call ptr @BKE_tracking_track_duplicate(ptr noundef nonnull %7) #18
  tail call void @BLI_addtail(ptr noundef nonnull @tracking_clipboard, ptr noundef %29) #19
  br label %30

30:                                               ; preds = %28, %25, %17
  %31 = load ptr, ptr %7, align 8, !tbaa !112
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %6, !llvm.loop !121

33:                                               ; preds = %30, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local nonnull ptr @BKE_tracking_object_get_tracks(ptr noundef readnone %0, ptr noundef readonly %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.MovieTrackingObject, ptr %1, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !79
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  %7 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %struct.MovieTrackingObject, ptr %1, i64 0, i32 5
  %9 = select i1 %6, ptr %8, ptr %7
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BKE_tracking_track_duplicate(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %3 = tail call ptr %2(i64 noundef 208, ptr noundef nonnull @.str.3) #19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(208) %0, i64 208, i1 false), !tbaa.struct !122
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %4 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !49
  %5 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %3, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !115
  %7 = tail call ptr %4(ptr noundef %6) #19
  store ptr %7, ptr %5, align 8, !tbaa !115
  ret ptr %3
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @BKE_tracking_clipboard_has_tracks() local_unnamed_addr #9 {
  %1 = tail call fastcc zeroext i8 @BLI_listbase_is_empty() #18
  %2 = xor i8 %1, 1
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty() unnamed_addr #10 !PGOFuncName !126 {
  %1 = load ptr, ptr @tracking_clipboard, align 8, !tbaa !117
  %2 = icmp eq ptr %1, null
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_tracking_clipboard_paste_tracks(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BKE_tracking_object_get_tracks(ptr noundef %0, ptr noundef %1) #18
  %4 = load ptr, ptr @tracking_clipboard, align 8, !tbaa !49
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 6
  br label %8

8:                                                ; preds = %6, %15
  %9 = phi ptr [ %4, %6 ], [ %16, %15 ]
  %10 = tail call ptr @BKE_tracking_track_duplicate(ptr noundef nonnull %9) #18
  %11 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %9, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !127
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  store ptr %10, ptr %7, align 8, !tbaa !128
  br label %15

15:                                               ; preds = %14, %8
  tail call void @BLI_addtail(ptr noundef nonnull %3, ptr noundef %10) #19
  tail call void @BKE_tracking_track_unique_name(ptr noundef nonnull %3, ptr noundef %10) #18
  %16 = load ptr, ptr %9, align 8, !tbaa !49
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %8, !llvm.loop !129

18:                                               ; preds = %15, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_tracking_track_unique_name(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @BLI_uniquename(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.2, i8 noundef zeroext 46, i32 noundef 16, i32 noundef 64) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_tracking_track_add(ptr nocapture noundef readonly %0, ptr noundef %1, float noundef %2, float noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = alloca %struct.MovieTrackingMarker, align 4
  %9 = alloca [2 x float], align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #20
  %10 = getelementptr inbounds %struct.MovieTrackingSettings, ptr %0, i64 0, i32 4
  %11 = load i16, ptr %10, align 4, !tbaa !130
  %12 = sitofp i16 %11 to float
  %13 = fmul float %12, 5.000000e-01
  %14 = getelementptr inbounds %struct.MovieTrackingSettings, ptr %0, i64 0, i32 5
  %15 = load i16, ptr %14, align 2, !tbaa !131
  %16 = sitofp i16 %15 to float
  %17 = fmul float %16, 5.000000e-01
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #20
  %18 = insertelement <2 x i32> poison, i32 %5, i64 0
  %19 = insertelement <2 x i32> %18, i32 %6, i64 1
  %20 = sitofp <2 x i32> %19 to <2 x float>
  %21 = insertelement <2 x float> poison, float %17, i64 0
  %22 = shufflevector <2 x float> %21, <2 x float> poison, <2 x i32> zeroinitializer
  %23 = fdiv <2 x float> %22, %20
  store <2 x float> %23, ptr %9, align 8, !tbaa !65
  %24 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %25 = tail call ptr %24(i64 noundef 208, ptr noundef nonnull @.str.1) #19
  %26 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %25, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %26, ptr noundef nonnull align 1 dereferenceable(6) @.str.2, i64 6, i1 false) #19
  %27 = getelementptr inbounds %struct.MovieTrackingSettings, ptr %0, i64 0, i32 1
  %28 = load i16, ptr %27, align 4, !tbaa !132
  %29 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %25, i64 0, i32 20
  store i16 %28, ptr %29, align 2, !tbaa !133
  %30 = getelementptr inbounds %struct.MovieTrackingSettings, ptr %0, i64 0, i32 3
  %31 = load float, ptr %30, align 4, !tbaa !134
  %32 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %25, i64 0, i32 22
  store float %31, ptr %32, align 4, !tbaa !135
  %33 = getelementptr inbounds %struct.MovieTrackingSettings, ptr %0, i64 0, i32 8
  %34 = load i16, ptr %33, align 4, !tbaa !136
  %35 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %25, i64 0, i32 19
  store i16 %34, ptr %35, align 4, !tbaa !137
  %36 = getelementptr inbounds %struct.MovieTrackingSettings, ptr %0, i64 0, i32 6
  %37 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %25, i64 0, i32 17
  %38 = load <2 x i16>, ptr %36, align 4, !tbaa !125
  store <2 x i16> %38, ptr %37, align 8, !tbaa !125
  %39 = getelementptr inbounds %struct.MovieTrackingSettings, ptr %0, i64 0, i32 9
  %40 = load i16, ptr %39, align 2, !tbaa !138
  %41 = sext i16 %40 to i32
  %42 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %25, i64 0, i32 13
  store i32 %41, ptr %42, align 8, !tbaa !118
  %43 = getelementptr inbounds %struct.MovieTrackingSettings, ptr %0, i64 0, i32 2
  %44 = load i16, ptr %43, align 2, !tbaa !139
  %45 = sext i16 %44 to i32
  %46 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %25, i64 0, i32 21
  store i32 %45, ptr %46, align 8, !tbaa !140
  %47 = getelementptr inbounds %struct.MovieTrackingSettings, ptr %0, i64 0, i32 10
  %48 = load float, ptr %47, align 4, !tbaa !141
  %49 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %25, i64 0, i32 24
  store float %48, ptr %49, align 8, !tbaa !142
  %50 = getelementptr inbounds i8, ptr %8, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %50, i8 0, i64 40, i1 false)
  store float %2, ptr %8, align 4, !tbaa !65
  %51 = getelementptr inbounds [2 x float], ptr %8, i64 0, i64 1
  store float %3, ptr %51, align 4, !tbaa !65
  %52 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %8, i64 0, i32 4
  store i32 %4, ptr %52, align 4, !tbaa !143
  %53 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %8, i64 0, i32 1
  %54 = fneg float %13
  %55 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %8, i64 0, i32 1, i64 0, i64 1
  %56 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %8, i64 0, i32 1, i64 1
  %57 = insertelement <2 x float> poison, float %13, i64 0
  %58 = insertelement <2 x float> %57, float %54, i64 1
  %59 = fdiv <2 x float> %58, %20
  %60 = extractelement <2 x float> %59, i64 0
  %61 = fneg float %60
  store float %61, ptr %53, align 4, !tbaa !65
  %62 = shufflevector <2 x float> %59, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %62, ptr %55, align 4, !tbaa !65
  %63 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %8, i64 0, i32 1, i64 1, i64 1
  %64 = extractelement <2 x float> %59, i64 1
  store float %64, ptr %63, align 4, !tbaa !65
  %65 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %8, i64 0, i32 1, i64 2
  call fastcc void @negate_v2_v2(ptr noundef nonnull %65, ptr noundef nonnull %53) #18
  %66 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %8, i64 0, i32 1, i64 3
  call fastcc void @negate_v2_v2(ptr noundef nonnull %66, ptr noundef nonnull %56) #18
  %67 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %8, i64 0, i32 3
  call fastcc void @copy_v2_v2(ptr noundef nonnull %67, ptr noundef nonnull %9) #18
  %68 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %8, i64 0, i32 2
  call fastcc void @negate_v2_v2(ptr noundef nonnull %68, ptr noundef nonnull %9) #18
  %69 = call ptr @BKE_tracking_marker_insert(ptr noundef %25, ptr noundef nonnull %8) #18
  tail call void @BLI_addtail(ptr noundef %1, ptr noundef %25) #19
  tail call void @BKE_tracking_track_unique_name(ptr noundef %1, ptr noundef %25) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #20
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !145 {
  %3 = load float, ptr %1, align 4, !tbaa !65
  %4 = fneg float %3
  store float %4, ptr %0, align 4, !tbaa !65
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !65
  %7 = fneg float %6
  %8 = getelementptr inbounds float, ptr %0, i64 1
  store float %7, ptr %8, align 4, !tbaa !65
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !146 {
  %3 = load float, ptr %1, align 4, !tbaa !65
  store float %3, ptr %0, align 4, !tbaa !65
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !65
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !65
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_tracking_marker_insert(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !147
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %1, i64 0, i32 4
  %8 = load i32, ptr %7, align 4, !tbaa !143
  %9 = tail call ptr @BKE_tracking_marker_get_exact(ptr noundef nonnull %0, i32 noundef %8) #18
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = load i32, ptr %3, align 8, !tbaa !147
  br label %14

13:                                               ; preds = %6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %9, ptr noundef nonnull align 4 dereferenceable(64) %1, i64 64, i1 false), !tbaa.struct !148
  br label %66

14:                                               ; preds = %11, %2
  %15 = phi i32 [ %12, %11 ], [ 0, %2 ]
  %16 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 10
  %17 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %1, i64 0, i32 4
  %18 = sext i32 %15 to i64
  %19 = load ptr, ptr %16, align 8, !tbaa !115
  br label %20

20:                                               ; preds = %23, %14
  %21 = phi i64 [ %24, %23 ], [ %18, %14 ]
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %20
  %24 = add nsw i64 %21, -1
  %25 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %19, i64 %24, i32 4
  %26 = load i32, ptr %25, align 4, !tbaa !143
  %27 = load i32, ptr %17, align 4, !tbaa !143
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %20, !llvm.loop !149

29:                                               ; preds = %23
  %30 = trunc i64 %21 to i32
  %31 = add nsw i32 %15, 1
  store i32 %31, ptr %3, align 8, !tbaa !147
  %32 = shl i64 %24, 32
  %33 = ashr exact i64 %32, 32
  br label %37

34:                                               ; preds = %20
  %35 = add nsw i32 %15, 1
  store i32 %35, ptr %3, align 8, !tbaa !147
  %36 = icmp eq ptr %19, null
  br i1 %36, label %45, label %37

37:                                               ; preds = %29, %34
  %38 = phi i32 [ %31, %29 ], [ %35, %34 ]
  %39 = phi i64 [ %33, %29 ], [ -1, %34 ]
  %40 = phi i32 [ %30, %29 ], [ 0, %34 ]
  %41 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !49
  %42 = sext i32 %38 to i64
  %43 = shl nsw i64 %42, 6
  %44 = tail call ptr %41(ptr noundef nonnull %19, i64 noundef %43, ptr noundef nonnull @__func__.BKE_tracking_marker_insert) #19
  br label %48

45:                                               ; preds = %34
  %46 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %47 = tail call ptr %46(i64 noundef 64, ptr noundef nonnull @.str.8) #19
  br label %48

48:                                               ; preds = %45, %37
  %49 = phi i64 [ -1, %45 ], [ %39, %37 ]
  %50 = phi i32 [ 0, %45 ], [ %40, %37 ]
  %51 = phi ptr [ %47, %45 ], [ %44, %37 ]
  store ptr %51, ptr %16, align 8, !tbaa !115
  %52 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %51, i64 %49
  %53 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %52, i64 2
  %54 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %52, i64 1
  %55 = load i32, ptr %3, align 8, !tbaa !147
  %56 = xor i32 %50, -1
  %57 = add i32 %55, %56
  %58 = sext i32 %57 to i64
  %59 = shl nsw i64 %58, 6
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %53, ptr nonnull align 4 %54, i64 %59, i1 false)
  %60 = load ptr, ptr %16, align 8, !tbaa !115
  %61 = sext i32 %50 to i64
  %62 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %60, i64 %61
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %62, ptr noundef nonnull align 4 dereferenceable(64) %1, i64 64, i1 false), !tbaa.struct !148
  %63 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 9
  store i32 %50, ptr %63, align 4, !tbaa !150
  %64 = load ptr, ptr %16, align 8, !tbaa !115
  %65 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %64, i64 %61
  br label %66

66:                                               ; preds = %48, %13
  %67 = phi ptr [ %9, %13 ], [ %65, %48 ]
  ret ptr %67
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: optsize
declare void @BLI_uniquename(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_tracking_track_flag_set(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 {
  %4 = icmp eq i32 %1, -1
  br i1 %4, label %26, label %5

5:                                                ; preds = %3
  %6 = and i32 %1, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 13
  %10 = load i32, ptr %9, align 8, !tbaa !118
  %11 = or i32 %10, %2
  store i32 %11, ptr %9, align 8, !tbaa !118
  br label %12

12:                                               ; preds = %8, %5
  %13 = and i32 %1, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 14
  %17 = load i32, ptr %16, align 4, !tbaa !119
  %18 = or i32 %17, %2
  store i32 %18, ptr %16, align 4, !tbaa !119
  br label %19

19:                                               ; preds = %15, %12
  %20 = and i32 %1, 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 15
  %24 = load i32, ptr %23, align 8, !tbaa !120
  %25 = or i32 %24, %2
  store i32 %25, ptr %23, align 8, !tbaa !120
  br label %26

26:                                               ; preds = %3, %22, %19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_tracking_track_flag_clear(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 {
  %4 = icmp eq i32 %1, -1
  br i1 %4, label %29, label %5

5:                                                ; preds = %3
  %6 = and i32 %1, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %5
  %9 = xor i32 %2, -1
  %10 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 13
  %11 = load i32, ptr %10, align 8, !tbaa !118
  %12 = and i32 %11, %9
  store i32 %12, ptr %10, align 8, !tbaa !118
  br label %13

13:                                               ; preds = %8, %5
  %14 = and i32 %1, 2
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %13
  %17 = xor i32 %2, -1
  %18 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 14
  %19 = load i32, ptr %18, align 4, !tbaa !119
  %20 = and i32 %19, %17
  store i32 %20, ptr %18, align 4, !tbaa !119
  br label %21

21:                                               ; preds = %16, %13
  %22 = and i32 %1, 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %21
  %25 = xor i32 %2, -1
  %26 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 15
  %27 = load i32, ptr %26, align 8, !tbaa !120
  %28 = and i32 %27, %25
  store i32 %28, ptr %26, align 8, !tbaa !120
  br label %29

29:                                               ; preds = %3, %24, %21
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @BKE_tracking_track_has_marker_at_frame(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #13 {
  %3 = tail call ptr @BKE_tracking_marker_get_exact(ptr noundef %0, i32 noundef %1) #18
  %4 = icmp ne ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_tracking_marker_get_exact(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #13 {
  %3 = tail call ptr @BKE_tracking_marker_get(ptr noundef %0, i32 noundef %1) #18
  %4 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !143
  %6 = icmp eq i32 %5, %1
  %7 = select i1 %6, ptr %3, ptr null
  ret ptr %7
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @BKE_tracking_track_has_enabled_marker_at_frame(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #13 {
  %3 = tail call ptr @BKE_tracking_marker_get_exact(ptr noundef %0, i32 noundef %1) #18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %3, i64 0, i32 5
  %7 = load i32, ptr %6, align 4, !tbaa !151
  %8 = trunc i32 %7 to i8
  %9 = and i8 %8, 1
  %10 = xor i8 %9, 1
  br label %11

11:                                               ; preds = %5, %2
  %12 = phi i8 [ 0, %2 ], [ %10, %5 ]
  ret i8 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_tracking_track_path_clear(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.MovieTrackingMarker, align 4
  switch i32 %2, label %77 [
    i32 1, label %5
    i32 0, label %36
    i32 2, label %70
  ]

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 8
  %7 = load i32, ptr %6, align 8, !tbaa !147
  %8 = icmp sgt i32 %7, 1
  br i1 %8, label %9, label %27

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !115
  %12 = zext nneg i32 %7 to i64
  br label %13

13:                                               ; preds = %9, %24
  %14 = phi i64 [ 1, %9 ], [ %25, %24 ]
  %15 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %11, i64 %14, i32 4
  %16 = load i32, ptr %15, align 4, !tbaa !143
  %17 = icmp sgt i32 %16, %1
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = trunc i64 %14 to i32
  store i32 %19, ptr %6, align 8, !tbaa !147
  %20 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !49
  %21 = shl nuw nsw i64 %14, 6
  %22 = tail call ptr %20(ptr noundef nonnull %11, i64 noundef %21, ptr noundef nonnull @__func__.BKE_tracking_track_path_clear) #19
  store ptr %22, ptr %10, align 8, !tbaa !115
  %23 = load i32, ptr %6, align 8, !tbaa !147
  br label %27

24:                                               ; preds = %13
  %25 = add nuw nsw i64 %14, 1
  %26 = icmp eq i64 %25, %12
  br i1 %26, label %27, label %13, !llvm.loop !152

27:                                               ; preds = %24, %5, %18
  %28 = phi i32 [ %23, %18 ], [ %7, %5 ], [ %7, %24 ]
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %77, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 10
  %32 = load ptr, ptr %31, align 8, !tbaa !115
  %33 = sext i32 %28 to i64
  %34 = getelementptr %struct.MovieTrackingMarker, ptr %32, i64 %33
  %35 = getelementptr %struct.MovieTrackingMarker, ptr %34, i64 -1
  tail call void @tracking_marker_insert_disabled(ptr noundef nonnull %0, ptr noundef %35, i8 noundef zeroext 0, i8 noundef zeroext 1) #19
  br label %77

36:                                               ; preds = %3
  %37 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 8
  %38 = load i32, ptr %37, align 8, !tbaa !147
  %39 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 10
  %40 = zext i32 %38 to i64
  br label %41

41:                                               ; preds = %45, %36
  %42 = phi i64 [ %46, %45 ], [ %40, %36 ]
  %43 = trunc i64 %42 to i32
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %65

45:                                               ; preds = %41
  %46 = add nsw i64 %42, -1
  %47 = load ptr, ptr %39, align 8, !tbaa !115
  %48 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %47, i64 %46, i32 4
  %49 = load i32, ptr %48, align 4, !tbaa !143
  %50 = icmp sgt i32 %49, %1
  br i1 %50, label %41, label %51, !llvm.loop !153

51:                                               ; preds = %45
  %52 = trunc i64 %46 to i32
  %53 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %47, i64 %46
  %54 = sub nsw i32 %38, %52
  %55 = sext i32 %54 to i64
  %56 = shl nsw i64 %55, 6
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %47, ptr align 4 %53, i64 %56, i1 false)
  %57 = load i32, ptr %37, align 8, !tbaa !147
  %58 = sub nsw i32 %57, %52
  store i32 %58, ptr %37, align 8, !tbaa !147
  %59 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !49
  %60 = load ptr, ptr %39, align 8, !tbaa !115
  %61 = sext i32 %58 to i64
  %62 = shl nsw i64 %61, 6
  %63 = tail call ptr %59(ptr noundef %60, i64 noundef %62, ptr noundef nonnull @__func__.BKE_tracking_track_path_clear) #19
  store ptr %63, ptr %39, align 8, !tbaa !115
  %64 = load i32, ptr %37, align 8, !tbaa !147
  br label %65

65:                                               ; preds = %41, %51
  %66 = phi i32 [ %64, %51 ], [ %38, %41 ]
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %77, label %68

68:                                               ; preds = %65
  %69 = load ptr, ptr %39, align 8, !tbaa !115
  tail call void @tracking_marker_insert_disabled(ptr noundef nonnull %0, ptr noundef %69, i8 noundef zeroext 1, i8 noundef zeroext 1) #19
  br label %77

70:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #20
  %71 = tail call ptr @BKE_tracking_marker_get(ptr noundef %0, i32 noundef %1) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %4, ptr noundef nonnull align 4 dereferenceable(64) %71, i64 64, i1 false), !tbaa.struct !148
  %72 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  %73 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 10
  %74 = load ptr, ptr %73, align 8, !tbaa !115
  tail call void %72(ptr noundef %74) #19
  store ptr null, ptr %73, align 8, !tbaa !115
  %75 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 8
  store i32 0, ptr %75, align 8, !tbaa !147
  %76 = call ptr @BKE_tracking_marker_insert(ptr noundef %0, ptr noundef nonnull %4) #18
  call void @tracking_marker_insert_disabled(ptr noundef %0, ptr noundef nonnull %4, i8 noundef zeroext 1, i8 noundef zeroext 1) #19
  call void @tracking_marker_insert_disabled(ptr noundef %0, ptr noundef nonnull %4, i8 noundef zeroext 0, i8 noundef zeroext 1) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #20
  br label %77

77:                                               ; preds = %3, %68, %65, %70, %27, %30
  ret void
}

; Function Attrs: optsize
declare void @tracking_marker_insert_disabled(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #12

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_tracking_marker_get(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #13 {
  %3 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !147
  %5 = add nsw i32 %4, -1
  %6 = icmp eq i32 %4, 0
  br i1 %6, label %67, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 10
  %9 = load ptr, ptr %8, align 8, !tbaa !115
  %10 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %9, i64 0, i32 4
  %11 = load i32, ptr %10, align 4, !tbaa !143
  %12 = icmp sgt i32 %11, %1
  br i1 %12, label %67, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 9
  %15 = load i32, ptr %14, align 4, !tbaa !150
  %16 = icmp slt i32 %15, %4
  %17 = select i1 %16, i32 %15, i32 %5
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %9, i64 %18, i32 4
  %20 = load i32, ptr %19, align 4, !tbaa !143
  %21 = icmp sgt i32 %20, %1
  br i1 %21, label %26, label %22

22:                                               ; preds = %13
  %23 = sext i32 %4 to i64
  %24 = add i32 %17, 1
  %25 = tail call i32 @llvm.smax.i32(i32 %4, i32 %24)
  br label %28

26:                                               ; preds = %13
  %27 = icmp sgt i32 %17, -1
  br i1 %27, label %48, label %64

28:                                               ; preds = %22, %38
  %29 = phi i64 [ %18, %22 ], [ %39, %38 ]
  %30 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %9, i64 %29, i32 4
  %31 = load i32, ptr %30, align 4, !tbaa !143
  %32 = icmp sgt i32 %31, %1
  br i1 %32, label %41, label %33

33:                                               ; preds = %28
  %34 = icmp eq i32 %31, %1
  br i1 %34, label %35, label %38

35:                                               ; preds = %33
  %36 = trunc i64 %29 to i32
  store i32 %36, ptr %14, align 4, !tbaa !150
  %37 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %9, i64 %29
  br label %67

38:                                               ; preds = %33
  %39 = add nsw i64 %29, 1
  %40 = icmp slt i64 %39, %23
  br i1 %40, label %28, label %43, !llvm.loop !154

41:                                               ; preds = %28
  %42 = trunc i64 %29 to i32
  br label %43

43:                                               ; preds = %38, %41
  %44 = phi i32 [ %42, %41 ], [ %25, %38 ]
  %45 = sext i32 %44 to i64
  %46 = getelementptr %struct.MovieTrackingMarker, ptr %9, i64 %45
  %47 = getelementptr %struct.MovieTrackingMarker, ptr %46, i64 -1
  br label %67

48:                                               ; preds = %26, %58
  %49 = phi i32 [ %59, %58 ], [ %17, %26 ]
  %50 = zext nneg i32 %49 to i64
  %51 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %9, i64 %50, i32 4
  %52 = load i32, ptr %51, align 4, !tbaa !143
  %53 = icmp slt i32 %52, %1
  br i1 %53, label %61, label %54

54:                                               ; preds = %48
  %55 = icmp eq i32 %52, %1
  br i1 %55, label %56, label %58

56:                                               ; preds = %54
  store i32 %49, ptr %14, align 4, !tbaa !150
  %57 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %9, i64 %50
  br label %67

58:                                               ; preds = %54
  %59 = add nsw i32 %49, -1
  %60 = icmp sgt i32 %49, 0
  br i1 %60, label %48, label %61, !llvm.loop !155

61:                                               ; preds = %58, %48
  %62 = phi i32 [ %49, %48 ], [ -1, %58 ]
  %63 = sext i32 %62 to i64
  br label %64

64:                                               ; preds = %61, %26
  %65 = phi i64 [ %63, %61 ], [ %18, %26 ]
  %66 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %9, i64 %65
  br label %67

67:                                               ; preds = %7, %2, %64, %56, %43, %35
  %68 = phi ptr [ %37, %35 ], [ %47, %43 ], [ %57, %56 ], [ %66, %64 ], [ null, %2 ], [ %9, %7 ]
  ret ptr %68
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_tracking_tracks_join(ptr nocapture noundef writeonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %1, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !147
  %6 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %2, i64 0, i32 8
  %7 = load i32, ptr %6, align 8, !tbaa !147
  %8 = add nsw i32 %7, %5
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %10 = sext i32 %8 to i64
  %11 = shl nsw i64 %10, 6
  %12 = tail call ptr %9(i64 noundef %11, ptr noundef nonnull @.str.4) #19
  %13 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %1, i64 0, i32 10
  %14 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %2, i64 0, i32 10
  br label %15

15:                                               ; preds = %168, %3
  %16 = phi i32 [ 0, %3 ], [ %169, %168 ]
  %17 = phi i32 [ 0, %3 ], [ %170, %168 ]
  %18 = phi i32 [ 0, %3 ], [ %172, %168 ]
  %19 = load i32, ptr %6, align 8, !tbaa !147
  %20 = icmp slt i32 %17, %19
  %21 = load i32, ptr %4, align 8, !tbaa !147
  %22 = icmp slt i32 %16, %21
  br i1 %20, label %24, label %23

23:                                               ; preds = %15
  br i1 %22, label %32, label %173

24:                                               ; preds = %15
  %25 = load ptr, ptr %14, align 8, !tbaa !115
  br i1 %22, label %39, label %26

26:                                               ; preds = %24
  %27 = sext i32 %18 to i64
  %28 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %12, i64 %27
  %29 = add nsw i32 %17, 1
  %30 = sext i32 %17 to i64
  %31 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %25, i64 %30
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %28, ptr noundef nonnull align 4 dereferenceable(64) %31, i64 64, i1 false), !tbaa.struct !148
  br label %168

32:                                               ; preds = %23
  %33 = sext i32 %18 to i64
  %34 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %12, i64 %33
  %35 = load ptr, ptr %13, align 8, !tbaa !115
  %36 = add nsw i32 %16, 1
  %37 = sext i32 %16 to i64
  %38 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %35, i64 %37
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %34, ptr noundef nonnull align 4 dereferenceable(64) %38, i64 64, i1 false), !tbaa.struct !148
  br label %168

39:                                               ; preds = %24
  %40 = sext i32 %17 to i64
  %41 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %25, i64 %40
  %42 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %25, i64 %40, i32 4
  %43 = load i32, ptr %42, align 4, !tbaa !143
  %44 = load ptr, ptr %13, align 8, !tbaa !115
  %45 = sext i32 %16 to i64
  %46 = getelementptr %struct.MovieTrackingMarker, ptr %44, i64 %45
  %47 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %44, i64 %45, i32 4
  %48 = load i32, ptr %47, align 4, !tbaa !143
  %49 = icmp slt i32 %43, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %39
  %51 = sext i32 %18 to i64
  %52 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %12, i64 %51
  %53 = add nsw i32 %17, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %52, ptr noundef nonnull align 4 dereferenceable(64) %41, i64 64, i1 false), !tbaa.struct !148
  br label %168

54:                                               ; preds = %39
  %55 = icmp sgt i32 %43, %48
  br i1 %55, label %56, label %60

56:                                               ; preds = %54
  %57 = sext i32 %18 to i64
  %58 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %12, i64 %57
  %59 = add nsw i32 %16, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %58, ptr noundef nonnull align 4 dereferenceable(64) %46, i64 64, i1 false), !tbaa.struct !148
  br label %168

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %25, i64 %40, i32 5
  %62 = load i32, ptr %61, align 4, !tbaa !151
  %63 = and i32 %62, 1
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %159

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %44, i64 %45, i32 5
  %67 = load i32, ptr %66, align 4, !tbaa !151
  %68 = and i32 %67, 1
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %156

70:                                               ; preds = %65
  %71 = icmp eq i32 %16, 0
  br i1 %71, label %82, label %72

72:                                               ; preds = %70
  %73 = getelementptr %struct.MovieTrackingMarker, ptr %46, i64 -1, i32 5
  %74 = load i32, ptr %73, align 4, !tbaa !151
  %75 = and i32 %74, 1
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = getelementptr %struct.MovieTrackingMarker, ptr %46, i64 -1, i32 4
  %79 = load i32, ptr %78, align 4, !tbaa !143
  %80 = add nsw i32 %43, -1
  %81 = icmp ne i32 %79, %80
  br label %82

82:                                               ; preds = %70, %72, %77
  %83 = phi i1 [ true, %72 ], [ true, %70 ], [ %81, %77 ]
  %84 = sext i32 %19 to i64
  %85 = sext i32 %21 to i64
  br label %86

86:                                               ; preds = %82, %108
  %87 = phi i64 [ %45, %82 ], [ %112, %108 ]
  %88 = phi i64 [ %40, %82 ], [ %111, %108 ]
  %89 = phi i32 [ %43, %82 ], [ %109, %108 ]
  %90 = phi i32 [ 0, %82 ], [ %110, %108 ]
  %91 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %25, i64 %88, i32 5
  %92 = load i32, ptr %91, align 4, !tbaa !151
  %93 = and i32 %92, 1
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %116

95:                                               ; preds = %86
  %96 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %44, i64 %87, i32 5
  %97 = load i32, ptr %96, align 4, !tbaa !151
  %98 = and i32 %97, 1
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %116

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %25, i64 %88, i32 4
  %102 = load i32, ptr %101, align 4, !tbaa !143
  %103 = icmp eq i32 %102, %89
  br i1 %103, label %104, label %116

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %44, i64 %87, i32 4
  %106 = load i32, ptr %105, align 4, !tbaa !143
  %107 = icmp eq i32 %106, %89
  br i1 %107, label %108, label %116

108:                                              ; preds = %104
  %109 = add nsw i32 %89, 1
  %110 = add nuw nsw i32 %90, 1
  %111 = add nsw i64 %88, 1
  %112 = add nsw i64 %87, 1
  %113 = icmp slt i64 %111, %84
  %114 = icmp slt i64 %112, %85
  %115 = select i1 %113, i1 %114, i1 false
  br i1 %115, label %86, label %118, !llvm.loop !156

116:                                              ; preds = %95, %86, %104, %100
  %117 = icmp eq i32 %90, 0
  br i1 %117, label %149, label %118

118:                                              ; preds = %108, %116
  %119 = phi i32 [ %90, %116 ], [ %110, %108 ]
  %120 = icmp eq i32 %119, 1
  %121 = add nsw i32 %119, -1
  %122 = sitofp i32 %121 to float
  %123 = fdiv float 1.000000e+00, %122
  %124 = sext i32 %18 to i64
  br label %125

125:                                              ; preds = %118, %125
  %126 = phi i64 [ %45, %118 ], [ %141, %125 ]
  %127 = phi i64 [ %40, %118 ], [ %140, %125 ]
  %128 = phi i64 [ %124, %118 ], [ %142, %125 ]
  %129 = phi i32 [ 0, %118 ], [ %143, %125 ]
  %130 = sitofp i32 %129 to float
  %131 = fmul float %123, %130
  %132 = select i1 %120, float 5.000000e-01, float %131
  %133 = fsub float 1.000000e+00, %132
  %134 = select i1 %83, float %133, float %132
  %135 = load ptr, ptr %14, align 8, !tbaa !115
  %136 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %135, i64 %127
  %137 = load ptr, ptr %13, align 8, !tbaa !115
  %138 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %137, i64 %126
  %139 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %12, i64 %128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %139, ptr noundef nonnull align 4 dereferenceable(64) %138, i64 64, i1 false), !tbaa.struct !148
  tail call void @interp_v2_v2v2(ptr noundef %139, ptr noundef %138, ptr noundef %136, float noundef %134) #19
  %140 = add nsw i64 %127, 1
  %141 = add nsw i64 %126, 1
  %142 = add nsw i64 %128, 1
  %143 = add nuw i32 %129, 1
  %144 = icmp eq i32 %143, %119
  br i1 %144, label %145, label %125, !llvm.loop !157

145:                                              ; preds = %125
  %146 = trunc i64 %141 to i32
  %147 = trunc i64 %140 to i32
  %148 = trunc i64 %142 to i32
  br label %149

149:                                              ; preds = %145, %116
  %150 = phi i32 [ %16, %116 ], [ %146, %145 ]
  %151 = phi i32 [ %17, %116 ], [ %147, %145 ]
  %152 = phi i32 [ %18, %116 ], [ %148, %145 ]
  %153 = add nsw i32 %151, -1
  %154 = add nsw i32 %150, -1
  %155 = add nsw i32 %152, -1
  br label %162

156:                                              ; preds = %65
  %157 = sext i32 %18 to i64
  %158 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %12, i64 %157
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %158, ptr noundef nonnull align 4 dereferenceable(64) %41, i64 64, i1 false), !tbaa.struct !148
  br label %162

159:                                              ; preds = %60
  %160 = sext i32 %18 to i64
  %161 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %12, i64 %160
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %161, ptr noundef nonnull align 4 dereferenceable(64) %46, i64 64, i1 false), !tbaa.struct !148
  br label %162

162:                                              ; preds = %149, %156, %159
  %163 = phi i32 [ %154, %149 ], [ %16, %156 ], [ %16, %159 ]
  %164 = phi i32 [ %153, %149 ], [ %17, %156 ], [ %17, %159 ]
  %165 = phi i32 [ %155, %149 ], [ %18, %156 ], [ %18, %159 ]
  %166 = add nsw i32 %164, 1
  %167 = add nsw i32 %163, 1
  br label %168

168:                                              ; preds = %32, %56, %162, %50, %26
  %169 = phi i32 [ %16, %26 ], [ %36, %32 ], [ %16, %50 ], [ %59, %56 ], [ %167, %162 ]
  %170 = phi i32 [ %29, %26 ], [ %17, %32 ], [ %53, %50 ], [ %17, %56 ], [ %166, %162 ]
  %171 = phi i32 [ %18, %26 ], [ %18, %32 ], [ %18, %50 ], [ %18, %56 ], [ %165, %162 ]
  %172 = add nsw i32 %171, 1
  br label %15, !llvm.loop !158

173:                                              ; preds = %23
  %174 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  %175 = load ptr, ptr %13, align 8, !tbaa !115
  tail call void %174(ptr noundef %175) #19
  %176 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %177 = sext i32 %18 to i64
  %178 = shl nsw i64 %177, 6
  %179 = tail call ptr %176(i64 noundef %178, ptr noundef nonnull @.str.5) #19
  store ptr %179, ptr %13, align 8, !tbaa !115
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %179, ptr align 4 %12, i64 %178, i1 false)
  store i32 %18, ptr %4, align 8, !tbaa !147
  %180 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %180(ptr noundef %12) #19
  tail call void @BKE_tracking_dopesheet_tag_update(ptr noundef %0) #18
  ret void
}

; Function Attrs: optsize
declare void @interp_v2_v2v2(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @BKE_tracking_dopesheet_tag_update(ptr nocapture noundef writeonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 12
  store i32 0, ptr %2, align 8, !tbaa !159
  ret void
}

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_tracking_track_get_named(ptr noundef readonly %0, ptr noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #14 {
  %4 = tail call ptr @BKE_tracking_object_get_tracks(ptr noundef %0, ptr noundef %1) #18
  br label %5

5:                                                ; preds = %9, %3
  %6 = phi ptr [ %4, %3 ], [ %7, %9 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %7, i64 0, i32 2
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) %2) #21
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %5, !llvm.loop !160

13:                                               ; preds = %5, %9
  ret ptr %7
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_tracking_track_get_indexed(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #13 {
  %4 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !49
  %6 = icmp eq ptr %5, null
  br i1 %6, label %32, label %11

7:                                                ; preds = %28, %11
  %8 = phi i32 [ %13, %11 ], [ %29, %28 ]
  %9 = load ptr, ptr %12, align 8, !tbaa !49
  %10 = icmp eq ptr %9, null
  br i1 %10, label %32, label %11, !llvm.loop !161

11:                                               ; preds = %3, %7
  %12 = phi ptr [ %9, %7 ], [ %5, %3 ]
  %13 = phi i32 [ %8, %7 ], [ 1, %3 ]
  %14 = tail call ptr @BKE_tracking_object_get_tracks(ptr noundef %0, ptr noundef nonnull %12) #18
  %15 = load ptr, ptr %14, align 8, !tbaa !49
  %16 = icmp eq ptr %15, null
  br i1 %16, label %7, label %17

17:                                               ; preds = %11, %28
  %18 = phi ptr [ %30, %28 ], [ %15, %11 ]
  %19 = phi i32 [ %29, %28 ], [ %13, %11 ]
  %20 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %18, i64 0, i32 13
  %21 = load i32, ptr %20, align 8, !tbaa !118
  %22 = and i32 %21, 2
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %17
  %25 = icmp eq i32 %19, %1
  br i1 %25, label %32, label %26

26:                                               ; preds = %24
  %27 = add nsw i32 %19, 1
  br label %28

28:                                               ; preds = %26, %17
  %29 = phi i32 [ %27, %26 ], [ %19, %17 ]
  %30 = load ptr, ptr %18, align 8, !tbaa !49
  %31 = icmp eq ptr %30, null
  br i1 %31, label %7, label %17, !llvm.loop !162

32:                                               ; preds = %7, %24, %3
  %33 = phi ptr [ null, %3 ], [ %14, %24 ], [ null, %7 ]
  %34 = phi ptr [ null, %3 ], [ %18, %24 ], [ null, %7 ]
  store ptr %33, ptr %2, align 8, !tbaa !49
  ret ptr %34
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_tracking_track_get_active(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !128
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @BKE_tracking_get_active_tracks(ptr noundef nonnull %0) #18
  %7 = load ptr, ptr %2, align 8, !tbaa !128
  %8 = tail call i32 @BLI_findindex(ptr noundef nonnull %6, ptr noundef %7) #19
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr %2, align 8, !tbaa !128
  br label %12

12:                                               ; preds = %5, %1, %10
  %13 = phi ptr [ %11, %10 ], [ null, %1 ], [ null, %5 ]
  ret ptr %13
}

; Function Attrs: optsize
declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BKE_tracking_track_get_mask(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = tail call fastcc ptr @track_mask_gpencil_layer_get(ptr noundef %2) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %25, label %7

7:                                                ; preds = %4
  %8 = insertelement <2 x i32> poison, i32 %0, i64 0
  %9 = insertelement <2 x i32> %8, i32 %1, i64 1
  %10 = sitofp <2 x i32> %9 to <2 x float>
  %11 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %3, i64 0, i32 2
  %12 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %3, i64 0, i32 3
  %13 = load <2 x float>, ptr %12, align 4, !tbaa !65
  %14 = load <2 x float>, ptr %11, align 4, !tbaa !65
  %15 = fsub <2 x float> %13, %14
  %16 = fmul <2 x float> %15, %10
  %17 = fptosi <2 x float> %16 to <2 x i32>
  %18 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %19 = extractelement <2 x i32> %17, i64 0
  %20 = extractelement <2 x i32> %17, i64 1
  %21 = mul nsw i32 %19, %20
  %22 = sext i32 %21 to i64
  %23 = shl nsw i64 %22, 2
  %24 = tail call ptr %18(i64 noundef %23, ptr noundef nonnull @.str.6) #19
  tail call fastcc void @track_mask_gpencil_layer_rasterize(i32 noundef %0, i32 noundef %1, ptr noundef %3, ptr noundef nonnull %5, ptr noundef %24, i32 noundef %19, i32 noundef %20) #18
  br label %25

25:                                               ; preds = %7, %4
  %26 = phi ptr [ %24, %7 ], [ null, %4 ]
  ret ptr %26
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @track_mask_gpencil_layer_get(ptr nocapture noundef readonly %0) unnamed_addr #16 !PGOFuncName !163 {
  %2 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 23
  %3 = load ptr, ptr %2, align 8, !tbaa !164
  %4 = icmp eq ptr %3, null
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.bGPdata, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = icmp eq ptr %7, null
  br i1 %8, label %28, label %9

9:                                                ; preds = %5, %25
  %10 = phi ptr [ %26, %25 ], [ %7, %5 ]
  %11 = getelementptr inbounds %struct.bGPDlayer, ptr %10, i64 0, i32 4
  %12 = load i32, ptr %11, align 8, !tbaa !165
  %13 = and i32 %12, 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.bGPDlayer, ptr %10, i64 0, i32 2
  br label %17

17:                                               ; preds = %21, %15
  %18 = phi ptr [ %16, %15 ], [ %19, %21 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !49
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.bGPDframe, ptr %19, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !167
  %24 = icmp eq ptr %23, null
  br i1 %24, label %17, label %28, !llvm.loop !169

25:                                               ; preds = %17, %9
  %26 = load ptr, ptr %10, align 8, !tbaa !49
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %9, !llvm.loop !170

28:                                               ; preds = %25, %21, %5, %1
  %29 = phi ptr [ null, %1 ], [ null, %5 ], [ %10, %21 ], [ null, %25 ]
  ret ptr %29
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @track_mask_gpencil_layer_rasterize(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 !PGOFuncName !171 {
  %8 = getelementptr inbounds %struct.bGPDlayer, ptr %3, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  %10 = icmp eq ptr %9, null
  br i1 %10, label %71, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 2
  %13 = sitofp i32 %0 to float
  %14 = sitofp i32 %5 to float
  %15 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 2, i64 1
  %16 = sitofp i32 %1 to float
  %17 = sitofp i32 %6 to float
  br label %21

18:                                               ; preds = %68, %21
  %19 = load ptr, ptr %22, align 8, !tbaa !49
  %20 = icmp eq ptr %19, null
  br i1 %20, label %71, label %21, !llvm.loop !172

21:                                               ; preds = %11, %18
  %22 = phi ptr [ %9, %11 ], [ %19, %18 ]
  %23 = getelementptr inbounds %struct.bGPDframe, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !49
  %25 = icmp eq ptr %24, null
  br i1 %25, label %18, label %26

26:                                               ; preds = %21, %68
  %27 = phi ptr [ %69, %68 ], [ %24, %21 ]
  %28 = getelementptr inbounds %struct.bGPDstroke, ptr %27, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !173
  %30 = getelementptr inbounds %struct.bGPDstroke, ptr %27, i64 0, i32 6
  %31 = load i16, ptr %30, align 2, !tbaa !176
  %32 = and i16 %31, 2
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %68, label %34

34:                                               ; preds = %26
  %35 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %36 = getelementptr inbounds %struct.bGPDstroke, ptr %27, i64 0, i32 4
  %37 = load i32, ptr %36, align 8, !tbaa !177
  %38 = shl nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = shl nsw i64 %39, 2
  %41 = tail call ptr %35(i64 noundef %40, ptr noundef nonnull @.str.15) #19
  %42 = load i32, ptr %36, align 8, !tbaa !177
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %65

44:                                               ; preds = %34
  %45 = zext nneg i32 %42 to i64
  br label %46

46:                                               ; preds = %44, %46
  %47 = phi i64 [ 0, %44 ], [ %62, %46 ]
  %48 = phi ptr [ %41, %44 ], [ %63, %46 ]
  %49 = getelementptr inbounds %struct.bGPDspoint, ptr %29, i64 %47
  %50 = load float, ptr %49, align 4, !tbaa !178
  %51 = load float, ptr %12, align 4, !tbaa !65
  %52 = fsub float %50, %51
  %53 = fmul float %52, %13
  %54 = fdiv float %53, %14
  store float %54, ptr %48, align 4, !tbaa !65
  %55 = getelementptr inbounds %struct.bGPDspoint, ptr %29, i64 %47, i32 1
  %56 = load float, ptr %55, align 4, !tbaa !180
  %57 = load float, ptr %15, align 4, !tbaa !65
  %58 = fsub float %56, %57
  %59 = fmul float %58, %16
  %60 = fdiv float %59, %17
  %61 = getelementptr inbounds float, ptr %48, i64 1
  store float %60, ptr %61, align 4, !tbaa !65
  %62 = add nuw nsw i64 %47, 1
  %63 = getelementptr inbounds float, ptr %48, i64 2
  %64 = icmp eq i64 %62, %45
  br i1 %64, label %65, label %46, !llvm.loop !181

65:                                               ; preds = %46, %34
  %66 = tail call i32 @PLX_raskterize(ptr noundef %41, i32 noundef %42, ptr noundef %4, i32 noundef %5, i32 noundef %6) #19
  %67 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %67(ptr noundef %41) #19
  br label %68

68:                                               ; preds = %65, %26
  %69 = load ptr, ptr %27, align 8, !tbaa !49
  %70 = icmp eq ptr %69, null
  br i1 %70, label %18, label %26, !llvm.loop !182

71:                                               ; preds = %18, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @BKE_tracking_track_get_weight_for_marker(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %1, i64 0, i32 24
  %5 = load float, ptr %4, align 8, !tbaa !142
  %6 = tail call ptr @id_data_find_fcurve(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @RNA_MovieTrackingTrack, ptr noundef nonnull @.str.7, i32 noundef 0, ptr noundef null) #19
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !143
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

; Function Attrs: optsize
declare ptr @id_data_find_fcurve(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare float @BKE_movieclip_remap_clip_to_scene_frame(ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare float @evaluate_fcurve(ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_tracking_track_select(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3) local_unnamed_addr #7 {
  %5 = icmp eq i8 %3, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  %7 = load ptr, ptr %0, align 8, !tbaa !49
  %8 = icmp eq ptr %7, null
  br i1 %8, label %23, label %10

9:                                                ; preds = %4
  tail call void @BKE_tracking_track_flag_set(ptr noundef %1, i32 noundef %2, i32 noundef 1) #18
  br label %23

10:                                               ; preds = %6, %20
  %11 = phi ptr [ %21, %20 ], [ %7, %6 ]
  %12 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %11, i64 0, i32 13
  %13 = load i32, ptr %12, align 8, !tbaa !118
  %14 = and i32 %13, 32
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = icmp eq ptr %11, %1
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  tail call void @BKE_tracking_track_flag_clear(ptr noundef nonnull %1, i32 noundef 7, i32 noundef 1) #18
  tail call void @BKE_tracking_track_flag_set(ptr noundef nonnull %1, i32 noundef %2, i32 noundef 1) #18
  br label %20

19:                                               ; preds = %16
  tail call void @BKE_tracking_track_flag_clear(ptr noundef nonnull %11, i32 noundef 7, i32 noundef 1) #18
  br label %20

20:                                               ; preds = %18, %19, %10
  %21 = load ptr, ptr %11, align 8, !tbaa !49
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %10, !llvm.loop !183

23:                                               ; preds = %20, %6, %9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_tracking_track_deselect(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #5 {
  tail call void @BKE_tracking_track_flag_clear(ptr noundef %0, i32 noundef %1, i32 noundef 1) #18
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_tracking_tracks_deselect_all(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = load ptr, ptr %0, align 8, !tbaa !49
  %3 = icmp eq ptr %2, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %1, %11
  %5 = phi ptr [ %12, %11 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %5, i64 0, i32 13
  %7 = load i32, ptr %6, align 8, !tbaa !118
  %8 = and i32 %7, 32
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %4
  tail call void @BKE_tracking_track_flag_clear(ptr noundef nonnull %5, i32 noundef 7, i32 noundef 1) #18
  br label %11

11:                                               ; preds = %4, %10
  %12 = load ptr, ptr %5, align 8, !tbaa !49
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %4, !llvm.loop !184

14:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_tracking_marker_delete(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !147
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %37

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !115
  %9 = zext nneg i32 %4 to i64
  br label %10

10:                                               ; preds = %6, %34
  %11 = phi i64 [ 0, %6 ], [ %35, %34 ]
  %12 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %8, i64 %11, i32 4
  %13 = load i32, ptr %12, align 4, !tbaa !143
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %15, label %34

15:                                               ; preds = %10
  %16 = icmp eq i32 %4, 1
  br i1 %16, label %32, label %17

17:                                               ; preds = %15
  %18 = trunc i64 %11 to i32
  %19 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %8, i64 %11
  %20 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %19, i64 1
  %21 = xor i32 %18, -1
  %22 = add nsw i32 %4, %21
  %23 = sext i32 %22 to i64
  %24 = shl nsw i64 %23, 6
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %19, ptr nonnull align 4 %20, i64 %24, i1 false)
  %25 = load i32, ptr %3, align 8, !tbaa !147
  %26 = add nsw i32 %25, -1
  store i32 %26, ptr %3, align 8, !tbaa !147
  %27 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !49
  %28 = load ptr, ptr %7, align 8, !tbaa !115
  %29 = sext i32 %26 to i64
  %30 = shl nsw i64 %29, 6
  %31 = tail call ptr %27(ptr noundef %28, i64 noundef %30, ptr noundef nonnull @__func__.BKE_tracking_marker_delete) #19
  store ptr %31, ptr %7, align 8, !tbaa !115
  br label %37

32:                                               ; preds = %15
  %33 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %33(ptr noundef nonnull %8) #19
  store ptr null, ptr %7, align 8, !tbaa !115
  store i32 0, ptr %3, align 8, !tbaa !147
  br label %37

34:                                               ; preds = %10
  %35 = add nuw nsw i64 %11, 1
  %36 = icmp eq i64 %35, %9
  br i1 %36, label %37, label %10, !llvm.loop !185

37:                                               ; preds = %34, %2, %17, %32
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_tracking_marker_clamp(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [2 x float], align 4
  %4 = alloca [2 x float], align 4
  %5 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  call void @BKE_tracking_marker_pattern_minmax(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #18
  switch i32 %1, label %96 [
    i32 1, label %6
    i32 2, label %19
    i32 3, label %52
    i32 4, label %65
  ]

6:                                                ; preds = %2, %6
  %7 = phi i1 [ false, %6 ], [ true, %2 ]
  %8 = phi i64 [ 1, %6 ], [ 0, %2 ]
  %9 = getelementptr inbounds [2 x float], ptr %3, i64 0, i64 %8
  %10 = load float, ptr %9, align 4, !tbaa !65
  %11 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %0, i64 0, i32 2, i64 %8
  %12 = load float, ptr %11, align 4, !tbaa !65
  %13 = call fastcc float @min_ff(float noundef %10, float noundef %12) #18
  store float %13, ptr %11, align 4, !tbaa !65
  %14 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 %8
  %15 = load float, ptr %14, align 4, !tbaa !65
  %16 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %0, i64 0, i32 3, i64 %8
  %17 = load float, ptr %16, align 4, !tbaa !65
  %18 = call fastcc float @max_ff(float noundef %15, float noundef %17) #18
  store float %18, ptr %16, align 4, !tbaa !65
  br i1 %7, label %6, label %96, !llvm.loop !186

19:                                               ; preds = %2, %51
  %20 = phi i1 [ false, %51 ], [ true, %2 ]
  %21 = phi i64 [ 1, %51 ], [ 0, %2 ]
  %22 = getelementptr inbounds [2 x float], ptr %3, i64 0, i64 %21
  %23 = load float, ptr %22, align 4, !tbaa !65
  %24 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %0, i64 0, i32 2, i64 %21
  %25 = load float, ptr %24, align 4, !tbaa !65
  %26 = fcmp olt float %23, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %19, %27
  %28 = phi i64 [ %34, %27 ], [ 0, %19 ]
  %29 = load float, ptr %24, align 4, !tbaa !65
  %30 = fsub float %29, %23
  %31 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %0, i64 0, i32 1, i64 %28, i64 %21
  %32 = load float, ptr %31, align 4, !tbaa !65
  %33 = fadd float %32, %30
  store float %33, ptr %31, align 4, !tbaa !65
  %34 = add nuw nsw i64 %28, 1
  %35 = icmp eq i64 %34, 4
  br i1 %35, label %36, label %27, !llvm.loop !187

36:                                               ; preds = %27, %19
  %37 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 %21
  %38 = load float, ptr %37, align 4, !tbaa !65
  %39 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %0, i64 0, i32 3, i64 %21
  %40 = load float, ptr %39, align 4, !tbaa !65
  %41 = fcmp ogt float %38, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %36, %42
  %43 = phi i64 [ %49, %42 ], [ 0, %36 ]
  %44 = load float, ptr %39, align 4, !tbaa !65
  %45 = fsub float %38, %44
  %46 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %0, i64 0, i32 1, i64 %43, i64 %21
  %47 = load float, ptr %46, align 4, !tbaa !65
  %48 = fsub float %47, %45
  store float %48, ptr %46, align 4, !tbaa !65
  %49 = add nuw nsw i64 %43, 1
  %50 = icmp eq i64 %49, 4
  br i1 %50, label %51, label %42, !llvm.loop !188

51:                                               ; preds = %42, %36
  br i1 %20, label %19, label %96, !llvm.loop !189

52:                                               ; preds = %2, %52
  %53 = phi i1 [ false, %52 ], [ true, %2 ]
  %54 = phi i64 [ 1, %52 ], [ 0, %2 ]
  %55 = getelementptr inbounds [2 x float], ptr %3, i64 0, i64 %54
  %56 = load float, ptr %55, align 4, !tbaa !65
  %57 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %0, i64 0, i32 2, i64 %54
  %58 = load float, ptr %57, align 4, !tbaa !65
  %59 = call fastcc float @min_ff(float noundef %56, float noundef %58) #18
  store float %59, ptr %57, align 4, !tbaa !65
  %60 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 %54
  %61 = load float, ptr %60, align 4, !tbaa !65
  %62 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %0, i64 0, i32 3, i64 %54
  %63 = load float, ptr %62, align 4, !tbaa !65
  %64 = call fastcc float @max_ff(float noundef %61, float noundef %63) #18
  store float %64, ptr %62, align 4, !tbaa !65
  br i1 %53, label %52, label %96, !llvm.loop !190

65:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  %66 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %0, i64 0, i32 3
  %67 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %0, i64 0, i32 2
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %5, ptr noundef nonnull %66, ptr noundef nonnull %67) #18
  br label %68

68:                                               ; preds = %65, %94
  %69 = phi i1 [ true, %65 ], [ false, %94 ]
  %70 = phi i64 [ 0, %65 ], [ 1, %94 ]
  %71 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %0, i64 0, i32 2, i64 %70
  %72 = load float, ptr %71, align 4, !tbaa !65
  %73 = getelementptr inbounds [2 x float], ptr %3, i64 0, i64 %70
  %74 = load float, ptr %73, align 4, !tbaa !65
  %75 = fcmp ogt float %72, %74
  br i1 %75, label %79, label %76

76:                                               ; preds = %68
  %77 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %0, i64 0, i32 3, i64 %70
  %78 = load float, ptr %77, align 4, !tbaa !65
  br label %84

79:                                               ; preds = %68
  store float %74, ptr %71, align 4, !tbaa !65
  %80 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 %70
  %81 = load float, ptr %80, align 4, !tbaa !65
  %82 = fadd float %74, %81
  %83 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %0, i64 0, i32 3, i64 %70
  store float %82, ptr %83, align 4, !tbaa !65
  br label %84

84:                                               ; preds = %76, %79
  %85 = phi float [ %78, %76 ], [ %82, %79 ]
  %86 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 %70
  %87 = load float, ptr %86, align 4, !tbaa !65
  %88 = fcmp olt float %85, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %0, i64 0, i32 3, i64 %70
  store float %87, ptr %90, align 4, !tbaa !65
  %91 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 %70
  %92 = load float, ptr %91, align 4, !tbaa !65
  %93 = fsub float %87, %92
  store float %93, ptr %71, align 4, !tbaa !65
  br label %94

94:                                               ; preds = %84, %89
  br i1 %69, label %68, label %95, !llvm.loop !191

95:                                               ; preds = %94
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  br label %96

96:                                               ; preds = %52, %51, %6, %2, %95
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_tracking_marker_pattern_minmax(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  store <2 x float> <float 0x46293E5940000000, float 0x46293E5940000000>, ptr %1, align 4, !tbaa !65
  store <2 x float> <float 0xC6293E5940000000, float 0xC6293E5940000000>, ptr %2, align 4, !tbaa !65
  %4 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %0, i64 0, i32 1
  tail call void @minmax_v2v2_v2(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %4) #19
  %5 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %0, i64 0, i32 1, i64 1
  tail call void @minmax_v2v2_v2(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %5) #19
  %6 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %0, i64 0, i32 1, i64 2
  tail call void @minmax_v2v2_v2(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %6) #19
  %7 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %0, i64 0, i32 1, i64 3
  tail call void @minmax_v2v2_v2(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %7) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0, float noundef %1) unnamed_addr #4 !PGOFuncName !192 {
  %3 = fcmp olt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ff(float noundef %0, float noundef %1) unnamed_addr #4 !PGOFuncName !193 {
  %3 = fcmp ogt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #5 !PGOFuncName !194 {
  %4 = load float, ptr %1, align 4, !tbaa !65
  %5 = load float, ptr %2, align 4, !tbaa !65
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !65
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !65
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !65
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !65
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_tracking_marker_ensure(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.MovieTrackingMarker, align 4
  %4 = tail call ptr @BKE_tracking_marker_get(ptr noundef %0, i32 noundef %1) #18
  %5 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %4, i64 0, i32 4
  %6 = load i32, ptr %5, align 4, !tbaa !143
  %7 = icmp eq i32 %6, %1
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(64) %4, i64 64, i1 false), !tbaa.struct !148
  %9 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %3, i64 0, i32 4
  store i32 %1, ptr %9, align 4, !tbaa !143
  %10 = call ptr @BKE_tracking_marker_insert(ptr noundef %0, ptr noundef nonnull %3) #18
  %11 = tail call ptr @BKE_tracking_marker_get(ptr noundef %0, i32 noundef %1) #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #20
  br label %12

12:                                               ; preds = %8, %2
  %13 = phi ptr [ %11, %8 ], [ %4, %2 ]
  ret ptr %13
}

; Function Attrs: optsize
declare void @minmax_v2v2_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_tracking_marker_get_subframe_position(ptr nocapture noundef %0, float noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = fptosi float %1 to i32
  %5 = tail call ptr @BKE_tracking_marker_get(ptr noundef %0, i32 noundef %4) #18
  %6 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !115
  %8 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 8
  %9 = load i32, ptr %8, align 8, !tbaa !147
  %10 = sext i32 %9 to i64
  %11 = getelementptr %struct.MovieTrackingMarker, ptr %7, i64 %10
  %12 = getelementptr %struct.MovieTrackingMarker, ptr %11, i64 -1
  %13 = icmp eq ptr %5, %12
  br i1 %13, label %29, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %5, i64 1, i32 4
  %16 = load i32, ptr %15, align 4, !tbaa !143
  %17 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %5, i64 0, i32 4
  %18 = load i32, ptr %17, align 4, !tbaa !143
  %19 = add nsw i32 %18, 1
  %20 = icmp eq i32 %16, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %5, i64 1
  %23 = sitofp i32 %4 to float
  %24 = fsub float %1, %23
  %25 = sub nsw i32 %16, %18
  %26 = sitofp i32 %25 to float
  %27 = fdiv float %24, %26
  tail call void @interp_v2_v2v2(ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %22, float noundef %27) #19
  br label %30

28:                                               ; preds = %14
  tail call fastcc void @copy_v2_v2(ptr noundef %2, ptr noundef nonnull %5) #18
  br label %30

29:                                               ; preds = %3
  tail call fastcc void @copy_v2_v2(ptr noundef %2, ptr noundef %5) #18
  br label %30

30:                                               ; preds = %21, %28, %29
  %31 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 7
  tail call fastcc void @add_v2_v2(ptr noundef %2, ptr noundef nonnull %31) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v2_v2(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !195 {
  %3 = load float, ptr %1, align 4, !tbaa !65
  %4 = load float, ptr %0, align 4, !tbaa !65
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !65
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !65
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !65
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !65
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_tracking_plane_track_add(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.MovieTrackingPlaneMarker, align 4
  %6 = alloca [2 x float], align 8
  %7 = alloca [2 x float], align 8
  %8 = alloca [2 x float], align 4
  %9 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #20
  %10 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 1
  store <2 x float> <float 0x46293E5940000000, float 0x46293E5940000000>, ptr %6, align 8, !tbaa !65
  %11 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  store <2 x float> <float 0xC6293E5940000000, float 0xC6293E5940000000>, ptr %7, align 8, !tbaa !65
  %12 = load ptr, ptr %2, align 8, !tbaa !49
  %13 = icmp eq ptr %12, null
  br i1 %13, label %92, label %14

14:                                               ; preds = %4, %34
  %15 = phi ptr [ %36, %34 ], [ %12, %4 ]
  %16 = phi i32 [ %35, %34 ], [ 0, %4 ]
  %17 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %15, i64 0, i32 13
  %18 = load i32, ptr %17, align 8, !tbaa !118
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %15, i64 0, i32 14
  %23 = load i32, ptr %22, align 4, !tbaa !119
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %15, i64 0, i32 15
  %28 = load i32, ptr %27, align 8, !tbaa !120
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %26, %21, %14
  %32 = call ptr @BKE_tracking_marker_get(ptr noundef nonnull %15, i32 noundef %3) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #20
  call void @BKE_tracking_marker_pattern_minmax(ptr noundef %32, ptr noundef nonnull %8, ptr noundef nonnull %9) #18
  call fastcc void @add_v2_v2(ptr noundef nonnull %8, ptr noundef %32) #18
  call fastcc void @add_v2_v2(ptr noundef nonnull %9, ptr noundef %32) #18
  call void @minmax_v2v2_v2(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8) #19
  call void @minmax_v2v2_v2(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %9) #19
  %33 = add nsw i32 %16, 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #20
  br label %34

34:                                               ; preds = %26, %31
  %35 = phi i32 [ %33, %31 ], [ %16, %26 ]
  %36 = load ptr, ptr %15, align 8, !tbaa !49
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %14, !llvm.loop !196

38:                                               ; preds = %34
  %39 = icmp slt i32 %35, 4
  br i1 %39, label %92, label %40

40:                                               ; preds = %38
  %41 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %42 = call ptr %41(i64 noundef 128, ptr noundef nonnull @.str.9) #19
  %43 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %42, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %43, ptr noundef nonnull align 1 dereferenceable(12) @.str.10, i64 12, i1 false) #19
  %44 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %42, i64 0, i32 10
  store float 1.000000e+00, ptr %44, align 8, !tbaa !197
  %45 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !49
  %46 = zext nneg i32 %35 to i64
  %47 = shl nuw nsw i64 %46, 3
  %48 = call ptr %45(i64 noundef %47, ptr noundef nonnull @.str.11) #19
  %49 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %42, i64 0, i32 3
  store ptr %48, ptr %49, align 8, !tbaa !199
  %50 = load ptr, ptr %2, align 8, !tbaa !49
  %51 = icmp eq ptr %50, null
  br i1 %51, label %78, label %52

52:                                               ; preds = %40, %74
  %53 = phi ptr [ %76, %74 ], [ %50, %40 ]
  %54 = phi i32 [ %75, %74 ], [ 0, %40 ]
  %55 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %53, i64 0, i32 13
  %56 = load i32, ptr %55, align 8, !tbaa !118
  %57 = and i32 %56, 1
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %53, i64 0, i32 14
  %61 = load i32, ptr %60, align 4, !tbaa !119
  %62 = and i32 %61, 1
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %53, i64 0, i32 15
  %66 = load i32, ptr %65, align 8, !tbaa !120
  %67 = and i32 %66, 1
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %64, %59, %52
  %70 = load ptr, ptr %49, align 8, !tbaa !199
  %71 = sext i32 %54 to i64
  %72 = getelementptr inbounds ptr, ptr %70, i64 %71
  store ptr %53, ptr %72, align 8, !tbaa !49
  %73 = add nsw i32 %54, 1
  br label %74

74:                                               ; preds = %64, %69
  %75 = phi i32 [ %73, %69 ], [ %54, %64 ]
  %76 = load ptr, ptr %53, align 8, !tbaa !49
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %52, !llvm.loop !200

78:                                               ; preds = %74, %40
  %79 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %42, i64 0, i32 4
  store i32 %35, ptr %79, align 8, !tbaa !201
  %80 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %5, i64 0, i32 1
  store i32 %3, ptr %80, align 4, !tbaa !202
  %81 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %5, i64 0, i32 2
  store i32 0, ptr %81, align 4, !tbaa !204
  call fastcc void @copy_v2_v2(ptr noundef nonnull %5, ptr noundef nonnull %6) #18
  %82 = getelementptr inbounds [4 x [2 x float]], ptr %5, i64 0, i64 2
  call fastcc void @copy_v2_v2(ptr noundef nonnull %82, ptr noundef nonnull %7) #18
  %83 = load float, ptr %7, align 8, !tbaa !65
  %84 = getelementptr inbounds [4 x [2 x float]], ptr %5, i64 0, i64 1
  store float %83, ptr %84, align 4, !tbaa !65
  %85 = load float, ptr %10, align 4, !tbaa !65
  %86 = getelementptr inbounds [4 x [2 x float]], ptr %5, i64 0, i64 1, i64 1
  store float %85, ptr %86, align 4, !tbaa !65
  %87 = load float, ptr %6, align 8, !tbaa !65
  %88 = getelementptr inbounds [4 x [2 x float]], ptr %5, i64 0, i64 3
  store float %87, ptr %88, align 4, !tbaa !65
  %89 = load float, ptr %11, align 4, !tbaa !65
  %90 = getelementptr inbounds [4 x [2 x float]], ptr %5, i64 0, i64 3, i64 1
  store float %89, ptr %90, align 4, !tbaa !65
  %91 = call ptr @BKE_tracking_plane_marker_insert(ptr noundef %42, ptr noundef nonnull %5) #18
  call void @BLI_addtail(ptr noundef %1, ptr noundef %42) #19
  call void @BKE_tracking_plane_track_unique_name(ptr noundef %1, ptr noundef %42) #18
  br label %92

92:                                               ; preds = %4, %38, %78
  %93 = phi ptr [ %42, %78 ], [ null, %38 ], [ null, %4 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #20
  ret ptr %93
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_tracking_plane_marker_insert(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !205
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %1, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !202
  %9 = tail call ptr @BKE_tracking_plane_marker_get_exact(ptr noundef nonnull %0, i32 noundef %8) #18
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = load i32, ptr %3, align 8, !tbaa !205
  br label %14

13:                                               ; preds = %6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %9, ptr noundef nonnull align 4 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !206
  br label %55

14:                                               ; preds = %11, %2
  %15 = phi i32 [ %12, %11 ], [ 0, %2 ]
  %16 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %0, i64 0, i32 6
  %17 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %1, i64 0, i32 1
  %18 = sext i32 %15 to i64
  %19 = load ptr, ptr %16, align 8, !tbaa !207
  br label %20

20:                                               ; preds = %23, %14
  %21 = phi i64 [ %24, %23 ], [ %18, %14 ]
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %20
  %24 = add nsw i64 %21, -1
  %25 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %19, i64 %24, i32 1
  %26 = load i32, ptr %25, align 4, !tbaa !202
  %27 = load i32, ptr %17, align 4, !tbaa !202
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %20, !llvm.loop !208

29:                                               ; preds = %23
  %30 = trunc i64 %21 to i32
  %31 = shl i64 %24, 32
  %32 = ashr exact i64 %31, 32
  br label %33

33:                                               ; preds = %20, %29
  %34 = phi i32 [ %30, %29 ], [ 0, %20 ]
  %35 = phi i64 [ %32, %29 ], [ -1, %20 ]
  %36 = add nsw i32 %15, 1
  store i32 %36, ptr %3, align 8, !tbaa !205
  %37 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !49
  %38 = sext i32 %36 to i64
  %39 = mul nsw i64 %38, 40
  %40 = tail call ptr %37(ptr noundef %19, i64 noundef %39, ptr noundef nonnull @__func__.BKE_tracking_plane_marker_insert) #19
  store ptr %40, ptr %16, align 8, !tbaa !207
  %41 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %40, i64 %35
  %42 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %41, i64 2
  %43 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %41, i64 1
  %44 = load i32, ptr %3, align 8, !tbaa !205
  %45 = xor i32 %34, -1
  %46 = add i32 %44, %45
  %47 = sext i32 %46 to i64
  %48 = mul nsw i64 %47, 40
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %42, ptr nonnull align 4 %43, i64 %48, i1 false)
  %49 = load ptr, ptr %16, align 8, !tbaa !207
  %50 = sext i32 %34 to i64
  %51 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %49, i64 %50
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %51, ptr noundef nonnull align 4 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !206
  %52 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %0, i64 0, i32 11
  store i32 %34, ptr %52, align 4, !tbaa !209
  %53 = load ptr, ptr %16, align 8, !tbaa !207
  %54 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %53, i64 %50
  br label %55

55:                                               ; preds = %33, %13
  %56 = phi ptr [ %9, %13 ], [ %54, %33 ]
  ret ptr %56
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_tracking_plane_track_unique_name(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @BLI_uniquename(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.10, i8 noundef zeroext 46, i32 noundef 16, i32 noundef 64) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_tracking_plane_track_free(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !207
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %6(ptr noundef nonnull %3) #19
  br label %7

7:                                                ; preds = %5, %1
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  %9 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !199
  tail call void %8(ptr noundef %10) #19
  ret void
}

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_tracking_plane_track_get_named(ptr noundef readonly %0, ptr noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #14 {
  %4 = tail call ptr @BKE_tracking_object_get_plane_tracks(ptr noundef %0, ptr noundef %1) #18
  br label %5

5:                                                ; preds = %9, %3
  %6 = phi ptr [ %4, %3 ], [ %7, %9 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %7, i64 0, i32 2
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) %2) #21
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %5, !llvm.loop !210

13:                                               ; preds = %5, %9
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local nonnull ptr @BKE_tracking_object_get_plane_tracks(ptr noundef readnone %0, ptr noundef readonly %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.MovieTrackingObject, ptr %1, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !79
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  %7 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 3
  %8 = getelementptr inbounds %struct.MovieTrackingObject, ptr %1, i64 0, i32 6
  %9 = select i1 %6, ptr %8, ptr %7
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_tracking_plane_track_get_active(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !211
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @BKE_tracking_get_active_plane_tracks(ptr noundef nonnull %0) #18
  %7 = load ptr, ptr %2, align 8, !tbaa !211
  %8 = tail call i32 @BLI_findindex(ptr noundef nonnull %6, ptr noundef %7) #19
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr %2, align 8, !tbaa !211
  br label %12

12:                                               ; preds = %5, %1, %10
  %13 = phi ptr [ %11, %10 ], [ null, %1 ], [ null, %5 ]
  ret ptr %13
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_tracking_plane_tracks_deselect_all(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = load ptr, ptr %0, align 8, !tbaa !49
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %9, %4 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %5, i64 0, i32 8
  %7 = load i32, ptr %6, align 4, !tbaa !212
  %8 = and i32 %7, -2
  store i32 %8, ptr %6, align 4, !tbaa !212
  %9 = load ptr, ptr %5, align 8, !tbaa !49
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %4, !llvm.loop !213

11:                                               ; preds = %4, %1
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_tracking_plane_marker_get_exact(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #13 {
  %3 = tail call ptr @BKE_tracking_plane_marker_get(ptr noundef %0, i32 noundef %1) #18
  %4 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %3, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !202
  %6 = icmp eq i32 %5, %1
  %7 = select i1 %6, ptr %3, ptr null
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_tracking_plane_marker_delete(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !205
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %37

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %0, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !207
  %9 = zext nneg i32 %4 to i64
  br label %10

10:                                               ; preds = %6, %34
  %11 = phi i64 [ 0, %6 ], [ %35, %34 ]
  %12 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %8, i64 %11, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !202
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %15, label %34

15:                                               ; preds = %10
  %16 = icmp eq i32 %4, 1
  br i1 %16, label %32, label %17

17:                                               ; preds = %15
  %18 = trunc i64 %11 to i32
  %19 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %8, i64 %11
  %20 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %19, i64 1
  %21 = xor i32 %18, -1
  %22 = add nsw i32 %4, %21
  %23 = sext i32 %22 to i64
  %24 = mul nsw i64 %23, 40
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %19, ptr nonnull align 4 %20, i64 %24, i1 false)
  %25 = load i32, ptr %3, align 8, !tbaa !205
  %26 = add nsw i32 %25, -1
  store i32 %26, ptr %3, align 8, !tbaa !205
  %27 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !49
  %28 = load ptr, ptr %7, align 8, !tbaa !207
  %29 = sext i32 %26 to i64
  %30 = shl nsw i64 %29, 6
  %31 = tail call ptr %27(ptr noundef %28, i64 noundef %30, ptr noundef nonnull @__func__.BKE_tracking_plane_marker_delete) #19
  store ptr %31, ptr %7, align 8, !tbaa !207
  br label %37

32:                                               ; preds = %15
  %33 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %33(ptr noundef nonnull %8) #19
  store ptr null, ptr %7, align 8, !tbaa !207
  store i32 0, ptr %3, align 8, !tbaa !205
  br label %37

34:                                               ; preds = %10
  %35 = add nuw nsw i64 %11, 1
  %36 = icmp eq i64 %35, %9
  br i1 %36, label %37, label %10, !llvm.loop !214

37:                                               ; preds = %34, %2, %17, %32
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_tracking_plane_marker_get(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #13 {
  %3 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !205
  %5 = add nsw i32 %4, -1
  %6 = icmp eq i32 %4, 0
  br i1 %6, label %67, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !207
  %10 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %9, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !202
  %12 = icmp sgt i32 %11, %1
  br i1 %12, label %67, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %0, i64 0, i32 11
  %15 = load i32, ptr %14, align 4, !tbaa !209
  %16 = icmp slt i32 %15, %4
  %17 = select i1 %16, i32 %15, i32 %5
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %9, i64 %18, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !202
  %21 = icmp sgt i32 %20, %1
  br i1 %21, label %26, label %22

22:                                               ; preds = %13
  %23 = sext i32 %4 to i64
  %24 = add i32 %17, 1
  %25 = tail call i32 @llvm.smax.i32(i32 %4, i32 %24)
  br label %28

26:                                               ; preds = %13
  %27 = icmp sgt i32 %17, -1
  br i1 %27, label %48, label %64

28:                                               ; preds = %22, %38
  %29 = phi i64 [ %18, %22 ], [ %39, %38 ]
  %30 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %9, i64 %29, i32 1
  %31 = load i32, ptr %30, align 4, !tbaa !202
  %32 = icmp sgt i32 %31, %1
  br i1 %32, label %41, label %33

33:                                               ; preds = %28
  %34 = icmp eq i32 %31, %1
  br i1 %34, label %35, label %38

35:                                               ; preds = %33
  %36 = trunc i64 %29 to i32
  store i32 %36, ptr %14, align 4, !tbaa !209
  %37 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %9, i64 %29
  br label %67

38:                                               ; preds = %33
  %39 = add nsw i64 %29, 1
  %40 = icmp slt i64 %39, %23
  br i1 %40, label %28, label %43, !llvm.loop !215

41:                                               ; preds = %28
  %42 = trunc i64 %29 to i32
  br label %43

43:                                               ; preds = %38, %41
  %44 = phi i32 [ %42, %41 ], [ %25, %38 ]
  %45 = sext i32 %44 to i64
  %46 = getelementptr %struct.MovieTrackingPlaneMarker, ptr %9, i64 %45
  %47 = getelementptr %struct.MovieTrackingPlaneMarker, ptr %46, i64 -1
  br label %67

48:                                               ; preds = %26, %58
  %49 = phi i32 [ %59, %58 ], [ %17, %26 ]
  %50 = zext nneg i32 %49 to i64
  %51 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %9, i64 %50, i32 1
  %52 = load i32, ptr %51, align 4, !tbaa !202
  %53 = icmp slt i32 %52, %1
  br i1 %53, label %61, label %54

54:                                               ; preds = %48
  %55 = icmp eq i32 %52, %1
  br i1 %55, label %56, label %58

56:                                               ; preds = %54
  store i32 %49, ptr %14, align 4, !tbaa !209
  %57 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %9, i64 %50
  br label %67

58:                                               ; preds = %54
  %59 = add nsw i32 %49, -1
  %60 = icmp sgt i32 %49, 0
  br i1 %60, label %48, label %61, !llvm.loop !216

61:                                               ; preds = %58, %48
  %62 = phi i32 [ %49, %48 ], [ -1, %58 ]
  %63 = sext i32 %62 to i64
  br label %64

64:                                               ; preds = %61, %26
  %65 = phi i64 [ %63, %61 ], [ %18, %26 ]
  %66 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %9, i64 %65
  br label %67

67:                                               ; preds = %7, %2, %64, %56, %43, %35
  %68 = phi ptr [ %37, %35 ], [ %47, %43 ], [ %57, %56 ], [ %66, %64 ], [ null, %2 ], [ %9, %7 ]
  ret ptr %68
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_tracking_plane_marker_ensure(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.MovieTrackingPlaneMarker, align 4
  %4 = tail call ptr @BKE_tracking_plane_marker_get(ptr noundef %0, i32 noundef %1) #18
  %5 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %4, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !202
  %7 = icmp eq i32 %6, %1
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %3, ptr noundef nonnull align 4 dereferenceable(40) %4, i64 40, i1 false), !tbaa.struct !206
  %9 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %3, i64 0, i32 1
  store i32 %1, ptr %9, align 4, !tbaa !202
  %10 = call ptr @BKE_tracking_plane_marker_insert(ptr noundef %0, ptr noundef nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #20
  br label %11

11:                                               ; preds = %8, %2
  %12 = phi ptr [ %10, %8 ], [ %4, %2 ]
  ret ptr %12
}

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_tracking_object_unique_name(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 8
  tail call void @BLI_uniquename(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.13, i8 noundef zeroext 46, i32 noundef 16, i32 noundef 64) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BKE_tracking_object_delete(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 8
  %4 = tail call i32 @BLI_findindex(ptr noundef nonnull %3, ptr noundef %1) #19
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %33, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.MovieTrackingObject, ptr %1, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !79
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %33

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.MovieTrackingObject, ptr %1, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !49
  %14 = icmp eq ptr %13, null
  br i1 %14, label %27, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !128
  br label %18

18:                                               ; preds = %15, %23
  %19 = phi ptr [ %17, %15 ], [ %24, %23 ]
  %20 = phi ptr [ %13, %15 ], [ %25, %23 ]
  %21 = icmp eq ptr %20, %19
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store ptr null, ptr %16, align 8, !tbaa !128
  br label %23

23:                                               ; preds = %22, %18
  %24 = phi ptr [ null, %22 ], [ %19, %18 ]
  %25 = load ptr, ptr %20, align 8, !tbaa !49
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %18, !llvm.loop !217

27:                                               ; preds = %23, %11
  tail call fastcc void @tracking_object_free(ptr noundef %1) #18
  tail call void @BLI_freelinkN(ptr noundef nonnull %3, ptr noundef %1) #19
  %28 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 10
  %29 = load i32, ptr %28, align 4, !tbaa !78
  %30 = add nsw i32 %29, -1
  store i32 %30, ptr %28, align 4, !tbaa !78
  %31 = tail call i32 @llvm.usub.sat.i32(i32 %4, i32 1)
  %32 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 9
  store i32 %31, ptr %32, align 8
  tail call void @BKE_tracking_dopesheet_tag_update(ptr noundef nonnull %0) #18
  br label %33

33:                                               ; preds = %6, %2, %27
  %34 = phi i8 [ 1, %27 ], [ 0, %2 ], [ 0, %6 ]
  ret i8 %34
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @tracking_object_free(ptr noundef %0) unnamed_addr #0 !PGOFuncName !218 {
  %2 = getelementptr inbounds %struct.MovieTrackingObject, ptr %0, i64 0, i32 5
  tail call fastcc void @tracking_tracks_free(ptr noundef nonnull %2) #18
  %3 = getelementptr inbounds %struct.MovieTrackingObject, ptr %0, i64 0, i32 6
  tail call fastcc void @tracking_plane_tracks_free(ptr noundef nonnull %3) #18
  %4 = getelementptr inbounds %struct.MovieTrackingObject, ptr %0, i64 0, i32 7
  tail call fastcc void @tracking_reconstruction_free(ptr noundef nonnull %4) #18
  ret void
}

; Function Attrs: optsize
declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_tracking_object_get_named(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #14 {
  %3 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 8
  br label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ %3, %2 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.MovieTrackingObject, ptr %6, i64 0, i32 2
  %10 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %1) #21
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %4, !llvm.loop !219

12:                                               ; preds = %4, %8
  ret ptr %6
}

; Function Attrs: optsize
declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_tracking_object_get_camera(ptr nocapture noundef readonly %0) local_unnamed_addr #16 {
  %2 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 8
  br label %3

3:                                                ; preds = %7, %1
  %4 = phi ptr [ %2, %1 ], [ %5, %7 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !49
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.MovieTrackingObject, ptr %5, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !79
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %3, label %12, !llvm.loop !220

12:                                               ; preds = %3, %7
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_tracking_camera_to_blender(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #5 {
  %6 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1, i32 5
  %7 = load float, ptr %6, align 4, !tbaa !106
  %8 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1, i32 3
  %9 = load float, ptr %8, align 4, !tbaa !107
  %10 = getelementptr inbounds %struct.Camera, ptr %2, i64 0, i32 11
  store float %9, ptr %10, align 4, !tbaa !221
  %11 = getelementptr inbounds %struct.Camera, ptr %2, i64 0, i32 18
  store i8 0, ptr %11, align 8, !tbaa !223
  %12 = fmul float %7, %9
  %13 = sitofp i32 %3 to float
  %14 = fdiv float %12, %13
  %15 = getelementptr inbounds %struct.Camera, ptr %2, i64 0, i32 8
  store float %14, ptr %15, align 8, !tbaa !224
  %16 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1, i32 4
  %17 = load float, ptr %16, align 8, !tbaa !108
  %18 = fmul float %17, %13
  %19 = fptosi float %18 to i32
  %20 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 33
  store i32 %19, ptr %20, align 4, !tbaa !225
  %21 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 34
  store i32 %4, ptr %21, align 8, !tbaa !226
  %22 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 63
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %22, align 4, !tbaa !65
  %23 = getelementptr inbounds %struct.Camera, ptr %2, i64 0, i32 13
  %24 = getelementptr inbounds %struct.Camera, ptr %2, i64 0, i32 14
  tail call void @BKE_tracking_camera_shift_get(ptr noundef %0, i32 noundef %3, i32 noundef %4, ptr noundef nonnull %23, ptr noundef nonnull %24) #18
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @reconstructed_camera_index_get(ptr nocapture noundef %0, i32 noundef %1, i8 noundef zeroext %2) unnamed_addr #13 !PGOFuncName !227 {
  %4 = getelementptr inbounds %struct.MovieTrackingReconstruction, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !55
  %6 = getelementptr inbounds %struct.MovieTrackingReconstruction, ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 4, !tbaa !228
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %61, label %9

9:                                                ; preds = %3
  %10 = load i32, ptr %5, align 4, !tbaa !229
  %11 = icmp sgt i32 %10, %1
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = icmp eq i8 %2, 0
  %14 = sext i1 %13 to i32
  br label %61

15:                                               ; preds = %9
  %16 = add nsw i32 %7, -1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.MovieReconstructedCamera, ptr %5, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !229
  %20 = icmp slt i32 %19, %1
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = icmp eq i8 %2, 0
  %23 = select i1 %22, i32 -1, i32 %16
  br label %61

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.MovieTrackingReconstruction, ptr %0, i64 0, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !231
  %27 = icmp slt i32 %26, %7
  %28 = select i1 %27, i32 %26, i32 0
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.MovieReconstructedCamera, ptr %5, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !229
  %32 = icmp slt i32 %31, %1
  %33 = select i1 %32, i32 1, i32 -1
  %34 = icmp sgt i32 %28, -1
  %35 = icmp slt i32 %28, %7
  %36 = and i1 %34, %35
  br i1 %36, label %37, label %61

37:                                               ; preds = %24, %56
  %38 = phi i32 [ %57, %56 ], [ %28, %24 ]
  %39 = zext nneg i32 %38 to i64
  %40 = getelementptr inbounds %struct.MovieReconstructedCamera, ptr %5, i64 %39
  %41 = load i32, ptr %40, align 4, !tbaa !229
  %42 = icmp sgt i32 %41, %1
  %43 = select i1 %32, i1 %42, i1 false
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = icmp eq i8 %2, 0
  %46 = add nsw i32 %38, -1
  br i1 %45, label %55, label %61

47:                                               ; preds = %37
  %48 = icmp sge i32 %41, %1
  %49 = select i1 %32, i1 true, i1 %48
  br i1 %49, label %52, label %50

50:                                               ; preds = %47
  %51 = icmp eq i8 %2, 0
  br i1 %51, label %55, label %61

52:                                               ; preds = %47
  %53 = icmp eq i32 %41, %1
  br i1 %53, label %54, label %56

54:                                               ; preds = %52
  store i32 %38, ptr %25, align 8, !tbaa !231
  br label %61

55:                                               ; preds = %50, %44
  br label %61

56:                                               ; preds = %52
  %57 = add nsw i32 %38, %33
  %58 = icmp sgt i32 %57, -1
  %59 = icmp slt i32 %57, %7
  %60 = and i1 %58, %59
  br i1 %60, label %37, label %61

61:                                               ; preds = %56, %24, %44, %50, %54, %55, %21, %12, %3
  %62 = phi i32 [ -1, %3 ], [ %14, %12 ], [ %23, %21 ], [ -1, %55 ], [ %46, %44 ], [ %38, %50 ], [ %38, %54 ], [ -1, %24 ], [ -1, %56 ]
  ret i32 %62
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_tracking_camera_get_reconstructed_interpolate(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call ptr @BKE_tracking_object_get_reconstruction(ptr noundef %0, ptr noundef %1) #18
  %6 = getelementptr inbounds %struct.MovieTrackingReconstruction, ptr %5, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !55
  %8 = tail call fastcc i32 @reconstructed_camera_index_get(ptr noundef nonnull %5, i32 noundef %2, i8 noundef zeroext 1) #18
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %11

10:                                               ; preds = %4
  tail call void @unit_m4(ptr noundef %3) #19
  br label %37

11:                                               ; preds = %4
  %12 = sext i32 %8 to i64
  %13 = getelementptr inbounds %struct.MovieReconstructedCamera, ptr %7, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !229
  %15 = icmp ne i32 %14, %2
  %16 = icmp sgt i32 %8, 0
  %17 = and i1 %16, %15
  br i1 %17, label %18, label %34

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.MovieTrackingReconstruction, ptr %5, i64 0, i32 3
  %20 = load i32, ptr %19, align 4, !tbaa !228
  %21 = add nsw i32 %20, -1
  %22 = icmp slt i32 %8, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %18
  %24 = sitofp i32 %2 to float
  %25 = sitofp i32 %14 to float
  %26 = fsub float %24, %25
  %27 = getelementptr %struct.MovieReconstructedCamera, ptr %13, i64 1
  %28 = load i32, ptr %27, align 4, !tbaa !229
  %29 = sub nsw i32 %28, %14
  %30 = sitofp i32 %29 to float
  %31 = fdiv float %26, %30
  %32 = getelementptr inbounds %struct.MovieReconstructedCamera, ptr %7, i64 %12, i32 2
  %33 = getelementptr %struct.MovieReconstructedCamera, ptr %13, i64 1, i32 2
  tail call void @blend_m4_m4m4(ptr noundef %3, ptr noundef nonnull %32, ptr noundef %33, float noundef %31) #19
  br label %36

34:                                               ; preds = %18, %11
  %35 = getelementptr inbounds %struct.MovieReconstructedCamera, ptr %7, i64 %12, i32 2
  tail call void @copy_m4_m4(ptr noundef %3, ptr noundef nonnull %35) #19
  br label %36

36:                                               ; preds = %34, %23
  tail call fastcc void @reconstructed_camera_scale_set(ptr noundef %1, ptr noundef %3) #18
  br label %37

37:                                               ; preds = %36, %10
  ret void
}

; Function Attrs: optsize
declare void @blend_m4_m4m4(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @reconstructed_camera_scale_set(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !232 {
  %3 = alloca [4 x [4 x float]], align 16
  %4 = getelementptr inbounds %struct.MovieTrackingObject, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !79
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #20
  %9 = getelementptr inbounds %struct.MovieTrackingObject, ptr %0, i64 0, i32 4
  %10 = load float, ptr %9, align 4, !tbaa !82
  %11 = fdiv float 1.000000e+00, %10
  call void @scale_m4_fl(ptr noundef nonnull %3, float noundef %11) #19
  call void @mul_m4_m4m4(ptr noundef %1, ptr noundef %1, ptr noundef nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #20
  br label %12

12:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_tracking_distortion_new(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.libmv_CameraIntrinsicsOptions, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %4) #20
  call void @tracking_cameraIntrinscisOptionsFromTracking(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %4) #19
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %6 = call ptr %5(i64 noundef 8, ptr noundef nonnull @.str.14) #19
  %7 = call ptr @libmv_cameraIntrinsicsNew(ptr noundef nonnull %4) #19
  store ptr %7, ptr %6, align 8, !tbaa !58
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %4) #20
  ret ptr %6
}

; Function Attrs: optsize
declare void @tracking_cameraIntrinscisOptionsFromTracking(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @libmv_cameraIntrinsicsNew(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_tracking_distortion_update(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.libmv_CameraIntrinsicsOptions, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %5) #20
  call void @tracking_cameraIntrinscisOptionsFromTracking(ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %5) #19
  %6 = load ptr, ptr %0, align 8, !tbaa !58
  call void @libmv_cameraIntrinsicsUpdate(ptr noundef nonnull %5, ptr noundef %6) #19
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %5) #20
  ret void
}

; Function Attrs: optsize
declare void @libmv_cameraIntrinsicsUpdate(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_tracking_distortion_set_threads(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !58
  tail call void @libmv_cameraIntrinsicsSetThreads(ptr noundef %3, i32 noundef %1) #19
  ret void
}

; Function Attrs: optsize
declare void @libmv_cameraIntrinsicsSetThreads(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_tracking_distortion_copy(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %3 = tail call ptr %2(i64 noundef 8, ptr noundef nonnull @.str.14) #19
  %4 = load ptr, ptr %0, align 8, !tbaa !58
  %5 = tail call ptr @libmv_cameraIntrinsicsCopy(ptr noundef %4) #19
  store ptr %5, ptr %3, align 8, !tbaa !58
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @libmv_cameraIntrinsicsCopy(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_tracking_distortion_exec(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5, i8 noundef zeroext %6) local_unnamed_addr #0 {
  tail call void @BKE_tracking_distortion_update(ptr noundef %0, ptr noundef %1, i32 noundef %3, i32 noundef %4) #18
  %8 = tail call ptr @IMB_dupImBuf(ptr noundef %2) #19
  %9 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !233
  %11 = icmp eq ptr %10, null
  %12 = icmp eq i8 %6, 0
  %13 = load ptr, ptr %0, align 8, !tbaa !58
  br i1 %11, label %30, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !236
  %17 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 3
  %18 = load i32, ptr %17, align 4, !tbaa !237
  %19 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 5
  %20 = load i32, ptr %19, align 4, !tbaa !238
  %21 = getelementptr inbounds %struct.ImBuf, ptr %8, i64 0, i32 9
  %22 = load ptr, ptr %21, align 8, !tbaa !233
  br i1 %12, label %24, label %23

23:                                               ; preds = %14
  tail call void @libmv_cameraIntrinsicsUndistortFloat(ptr noundef %13, ptr noundef nonnull %10, i32 noundef %16, i32 noundef %18, float noundef %5, i32 noundef %20, ptr noundef %22) #19
  br label %25

24:                                               ; preds = %14
  tail call void @libmv_cameraIntrinsicsDistortFloat(ptr noundef %13, ptr noundef nonnull %10, i32 noundef %16, i32 noundef %18, float noundef %5, i32 noundef %20, ptr noundef %22) #19
  br label %25

25:                                               ; preds = %24, %23
  %26 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 8
  %27 = load ptr, ptr %26, align 8, !tbaa !239
  %28 = icmp eq ptr %27, null
  br i1 %28, label %43, label %29

29:                                               ; preds = %25
  tail call void @imb_freerectImBuf(ptr noundef nonnull %2) #19
  br label %43

30:                                               ; preds = %7
  %31 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 8
  %32 = load ptr, ptr %31, align 8, !tbaa !239
  %33 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 2
  %34 = load i32, ptr %33, align 8, !tbaa !236
  %35 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 3
  %36 = load i32, ptr %35, align 4, !tbaa !237
  %37 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 5
  %38 = load i32, ptr %37, align 4, !tbaa !238
  %39 = getelementptr inbounds %struct.ImBuf, ptr %8, i64 0, i32 8
  %40 = load ptr, ptr %39, align 8, !tbaa !239
  br i1 %12, label %42, label %41

41:                                               ; preds = %30
  tail call void @libmv_cameraIntrinsicsUndistortByte(ptr noundef %13, ptr noundef %32, i32 noundef %34, i32 noundef %36, float noundef %5, i32 noundef %38, ptr noundef %40) #19
  br label %43

42:                                               ; preds = %30
  tail call void @libmv_cameraIntrinsicsDistortByte(ptr noundef %13, ptr noundef %32, i32 noundef %34, i32 noundef %36, float noundef %5, i32 noundef %38, ptr noundef %40) #19
  br label %43

43:                                               ; preds = %41, %42, %25, %29
  ret ptr %8
}

; Function Attrs: optsize
declare ptr @IMB_dupImBuf(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @libmv_cameraIntrinsicsUndistortFloat(ptr noundef, ptr noundef, i32 noundef, i32 noundef, float noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @libmv_cameraIntrinsicsDistortFloat(ptr noundef, ptr noundef, i32 noundef, i32 noundef, float noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @imb_freerectImBuf(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @libmv_cameraIntrinsicsUndistortByte(ptr noundef, ptr noundef, i32 noundef, i32 noundef, float noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @libmv_cameraIntrinsicsDistortByte(ptr noundef, ptr noundef, i32 noundef, i32 noundef, float noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @libmv_cameraIntrinsicsDestroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_tracking_distort_v2(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct.libmv_CameraIntrinsicsOptions, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #20
  %7 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1, i32 4
  %8 = load float, ptr %7, align 8, !tbaa !108
  %9 = fdiv float 1.000000e+00, %8
  call void @tracking_cameraIntrinscisOptionsFromTracking(ptr noundef %0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %4) #19
  %10 = load float, ptr %1, align 4, !tbaa !65
  %11 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1, i32 8
  %12 = load float, ptr %11, align 4, !tbaa !65
  %13 = fsub float %10, %12
  %14 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1, i32 5
  %15 = load float, ptr %14, align 4, !tbaa !240
  %16 = fdiv float %13, %15
  %17 = fpext float %16 to double
  store double %17, ptr %5, align 8, !tbaa !241
  %18 = getelementptr inbounds float, ptr %1, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !65
  %20 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1, i32 8, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !65
  %22 = fneg float %21
  %23 = call float @llvm.fmuladd.f32(float %22, float %9, float %19)
  %24 = fdiv float %23, %15
  %25 = fpext float %24 to double
  store double %25, ptr %6, align 8, !tbaa !241
  call void @libmv_cameraIntrinsicsApply(ptr noundef nonnull %4, double noundef %17, double noundef %25, ptr noundef nonnull %5, ptr noundef nonnull %6) #19
  %26 = load double, ptr %5, align 8, !tbaa !241
  %27 = load double, ptr %6, align 8, !tbaa !241
  %28 = insertelement <2 x double> poison, double %26, i64 0
  %29 = insertelement <2 x double> %28, double %27, i64 1
  %30 = fptrunc <2 x double> %29 to <2 x float>
  store <2 x float> %30, ptr %2, align 4, !tbaa !65
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %4) #20
  ret void
}

; Function Attrs: optsize
declare void @libmv_cameraIntrinsicsApply(ptr noundef, double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_tracking_undistort_v2(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct.libmv_CameraIntrinsicsOptions, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  %7 = load float, ptr %1, align 4, !tbaa !65
  %8 = fpext float %7 to double
  store double %8, ptr %5, align 8, !tbaa !241
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #20
  %9 = getelementptr inbounds float, ptr %1, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !65
  %11 = fpext float %10 to double
  store double %11, ptr %6, align 8, !tbaa !241
  %12 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1, i32 4
  %13 = load float, ptr %12, align 8, !tbaa !108
  %14 = fdiv float 1.000000e+00, %13
  call void @tracking_cameraIntrinscisOptionsFromTracking(ptr noundef %0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %4) #19
  call void @libmv_cameraIntrinsicsInvert(ptr noundef nonnull %4, double noundef %8, double noundef %11, ptr noundef nonnull %5, ptr noundef nonnull %6) #19
  %15 = load double, ptr %5, align 8, !tbaa !241
  %16 = fptrunc double %15 to float
  %17 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1, i32 5
  %18 = load float, ptr %17, align 4, !tbaa !240
  %19 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1, i32 8
  %20 = load float, ptr %19, align 4, !tbaa !65
  %21 = call float @llvm.fmuladd.f32(float %16, float %18, float %20)
  store float %21, ptr %2, align 4, !tbaa !65
  %22 = load double, ptr %6, align 8, !tbaa !241
  %23 = fptrunc double %22 to float
  %24 = load float, ptr %17, align 4, !tbaa !240
  %25 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1, i32 8, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !65
  %27 = fmul float %14, %26
  %28 = call float @llvm.fmuladd.f32(float %23, float %24, float %27)
  %29 = getelementptr inbounds float, ptr %2, i64 1
  store float %28, ptr %29, align 4, !tbaa !65
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %4) #20
  ret void
}

; Function Attrs: optsize
declare void @libmv_cameraIntrinsicsInvert(ptr noundef, double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_tracking_undistort_frame(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, float noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !242
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = tail call ptr @BKE_tracking_distortion_new(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %3) #18
  store ptr %10, ptr %6, align 8, !tbaa !242
  br label %11

11:                                               ; preds = %9, %5
  %12 = phi ptr [ %10, %9 ], [ %7, %5 ]
  %13 = tail call ptr @BKE_tracking_distortion_exec(ptr noundef %12, ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, float noundef %4, i8 noundef zeroext 1) #18
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_tracking_distort_frame(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, float noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !242
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = tail call ptr @BKE_tracking_distortion_new(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %3) #18
  store ptr %10, ptr %6, align 8, !tbaa !242
  br label %11

11:                                               ; preds = %9, %5
  %12 = phi ptr [ %10, %9 ], [ %7, %5 ]
  %13 = tail call ptr @BKE_tracking_distortion_exec(ptr noundef %12, ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, float noundef %4, i8 noundef zeroext 0) #18
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_tracking_max_distortion_delta_across_bound(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = alloca [2 x float], align 8
  %6 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #20
  %7 = icmp eq i8 %2, 0
  %8 = select i1 %7, ptr @BKE_tracking_distort_v2, ptr @BKE_tracking_undistort_v2
  %9 = getelementptr inbounds float, ptr %3, i64 1
  store <2 x float> <float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000>, ptr %3, align 4, !tbaa !65
  %10 = load i32, ptr %1, align 4, !tbaa !243
  %11 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !244
  %13 = add nsw i32 %12, 5
  %14 = icmp sgt i32 %10, %13
  br i1 %14, label %58, label %15

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 2
  %17 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  %18 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 1
  %19 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 3
  br label %20

20:                                               ; preds = %20, %15
  %21 = phi i32 [ %12, %15 ], [ %55, %20 ]
  %22 = phi i32 [ %10, %15 ], [ %57, %20 ]
  %23 = call i32 @llvm.smin.i32(i32 %22, i32 %21)
  %24 = load i32, ptr %16, align 4, !tbaa !245
  %25 = insertelement <2 x i32> poison, i32 %23, i64 0
  %26 = insertelement <2 x i32> %25, i32 %24, i64 1
  %27 = sitofp <2 x i32> %26 to <2 x float>
  store <2 x float> %27, ptr %5, align 8, !tbaa !65
  call void %8(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6) #19, !callees !246
  %28 = load float, ptr %3, align 4, !tbaa !65
  %29 = load float, ptr %5, align 8, !tbaa !65
  %30 = load float, ptr %6, align 4, !tbaa !65
  %31 = fsub float %29, %30
  %32 = call float @llvm.fabs.f32(float %31)
  %33 = call fastcc float @max_ff(float noundef %28, float noundef %32) #18
  store float %33, ptr %3, align 4, !tbaa !65
  %34 = load float, ptr %9, align 4, !tbaa !65
  %35 = load float, ptr %17, align 4, !tbaa !65
  %36 = load float, ptr %18, align 4, !tbaa !65
  %37 = fsub float %35, %36
  %38 = call float @llvm.fabs.f32(float %37)
  %39 = call fastcc float @max_ff(float noundef %34, float noundef %38) #18
  store float %39, ptr %9, align 4, !tbaa !65
  %40 = extractelement <2 x float> %27, i64 0
  store float %40, ptr %5, align 8, !tbaa !65
  %41 = load i32, ptr %19, align 4, !tbaa !247
  %42 = sitofp i32 %41 to float
  store float %42, ptr %17, align 4, !tbaa !65
  call void %8(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6) #19, !callees !246
  %43 = load float, ptr %3, align 4, !tbaa !65
  %44 = load float, ptr %5, align 8, !tbaa !65
  %45 = load float, ptr %6, align 4, !tbaa !65
  %46 = fsub float %44, %45
  %47 = call float @llvm.fabs.f32(float %46)
  %48 = call fastcc float @max_ff(float noundef %43, float noundef %47) #18
  store float %48, ptr %3, align 4, !tbaa !65
  %49 = load float, ptr %9, align 4, !tbaa !65
  %50 = load float, ptr %17, align 4, !tbaa !65
  %51 = load float, ptr %18, align 4, !tbaa !65
  %52 = fsub float %50, %51
  %53 = call float @llvm.fabs.f32(float %52)
  %54 = call fastcc float @max_ff(float noundef %49, float noundef %53) #18
  store float %54, ptr %9, align 4, !tbaa !65
  %55 = load i32, ptr %11, align 4, !tbaa !244
  %56 = icmp slt i32 %23, %55
  %57 = add nsw i32 %23, 5
  br i1 %56, label %20, label %58

58:                                               ; preds = %20, %4
  %59 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 2
  %60 = load i32, ptr %59, align 4, !tbaa !245
  %61 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 3
  %62 = load i32, ptr %61, align 4, !tbaa !247
  %63 = add nsw i32 %62, 5
  %64 = icmp sgt i32 %60, %63
  br i1 %64, label %104, label %65

65:                                               ; preds = %58
  %66 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  %67 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 1
  br label %68

68:                                               ; preds = %68, %65
  %69 = phi i32 [ %62, %65 ], [ %101, %68 ]
  %70 = phi i32 [ %60, %65 ], [ %103, %68 ]
  %71 = call i32 @llvm.smin.i32(i32 %70, i32 %69)
  %72 = load i32, ptr %1, align 4, !tbaa !243
  %73 = sitofp i32 %72 to float
  store float %73, ptr %5, align 8, !tbaa !65
  %74 = sitofp i32 %71 to float
  store float %74, ptr %66, align 4, !tbaa !65
  call void %8(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6) #19, !callees !246
  %75 = load float, ptr %3, align 4, !tbaa !65
  %76 = load float, ptr %5, align 8, !tbaa !65
  %77 = load float, ptr %6, align 4, !tbaa !65
  %78 = fsub float %76, %77
  %79 = call float @llvm.fabs.f32(float %78)
  %80 = call fastcc float @max_ff(float noundef %75, float noundef %79) #18
  store float %80, ptr %3, align 4, !tbaa !65
  %81 = load float, ptr %9, align 4, !tbaa !65
  %82 = load float, ptr %66, align 4, !tbaa !65
  %83 = load float, ptr %67, align 4, !tbaa !65
  %84 = fsub float %82, %83
  %85 = call float @llvm.fabs.f32(float %84)
  %86 = call fastcc float @max_ff(float noundef %81, float noundef %85) #18
  store float %86, ptr %9, align 4, !tbaa !65
  %87 = load i32, ptr %11, align 4, !tbaa !244
  %88 = sitofp i32 %87 to float
  store float %88, ptr %5, align 8, !tbaa !65
  store float %74, ptr %66, align 4, !tbaa !65
  call void %8(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6) #19, !callees !246
  %89 = load float, ptr %3, align 4, !tbaa !65
  %90 = load float, ptr %5, align 8, !tbaa !65
  %91 = load float, ptr %6, align 4, !tbaa !65
  %92 = fsub float %90, %91
  %93 = call float @llvm.fabs.f32(float %92)
  %94 = call fastcc float @max_ff(float noundef %89, float noundef %93) #18
  store float %94, ptr %3, align 4, !tbaa !65
  %95 = load float, ptr %9, align 4, !tbaa !65
  %96 = load float, ptr %66, align 4, !tbaa !65
  %97 = load float, ptr %67, align 4, !tbaa !65
  %98 = fsub float %96, %97
  %99 = call float @llvm.fabs.f32(float %98)
  %100 = call fastcc float @max_ff(float noundef %95, float noundef %99) #18
  store float %100, ptr %9, align 4, !tbaa !65
  %101 = load i32, ptr %61, align 4, !tbaa !247
  %102 = icmp slt i32 %71, %101
  %103 = add nsw i32 %71, 5
  br i1 %102, label %68, label %104

104:                                              ; preds = %68, %58
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_tracking_sample_pattern(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr noundef %4, i8 noundef zeroext %5, i8 noundef zeroext %6, i32 noundef %7, i32 noundef %8, ptr noundef writeonly %9) local_unnamed_addr #0 {
  %11 = alloca [5 x double], align 16
  %12 = alloca [5 x double], align 16
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %11) #20
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %12) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #20
  %15 = icmp slt i32 %7, 1
  %16 = icmp slt i32 %8, 1
  %17 = or i1 %15, %16
  br i1 %17, label %98, label %18

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 9
  %20 = load ptr, ptr %19, align 8, !tbaa !233
  %21 = icmp eq ptr %20, null
  %22 = select i1 %21, i32 1, i32 32
  %23 = tail call ptr @IMB_allocImBuf(i32 noundef %7, i32 noundef %8, i8 noundef zeroext 32, i32 noundef %22) #19
  call void @tracking_get_marker_coords_for_tracking(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %11, ptr noundef nonnull %12) #19
  %24 = icmp eq i8 %5, 0
  br i1 %24, label %62, label %25

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %3, i64 0, i32 7
  %27 = load float, ptr %26, align 8, !tbaa !65
  %28 = sitofp i32 %0 to float
  %29 = fmul float %27, %28
  %30 = fptosi float %29 to i32
  %31 = sitofp i32 %30 to float
  %32 = fneg float %31
  %33 = call float @llvm.fmuladd.f32(float %27, float %28, float %32)
  %34 = fpext float %33 to double
  %35 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %3, i64 0, i32 7, i64 1
  %36 = load float, ptr %35, align 4, !tbaa !65
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
  %49 = load double, ptr %48, align 8, !tbaa !241
  %50 = fadd double %49, %34
  store double %50, ptr %48, align 8, !tbaa !241
  %51 = getelementptr inbounds [5 x double], ptr %12, i64 0, i64 %47
  %52 = load double, ptr %51, align 8, !tbaa !241
  %53 = fadd double %52, %43
  store double %53, ptr %51, align 8, !tbaa !241
  br i1 %44, label %54, label %56

54:                                               ; preds = %46
  %55 = fadd double %50, 1.000000e+00
  store double %55, ptr %48, align 8, !tbaa !241
  br label %56

56:                                               ; preds = %54, %46
  br i1 %45, label %57, label %59

57:                                               ; preds = %56
  %58 = fadd double %53, 1.000000e+00
  store double %58, ptr %51, align 8, !tbaa !241
  br label %59

59:                                               ; preds = %56, %57
  %60 = add nuw nsw i64 %47, 1
  %61 = icmp eq i64 %60, 5
  br i1 %61, label %62, label %46, !llvm.loop !248

62:                                               ; preds = %59, %18
  %63 = icmp eq i8 %6, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %62
  %65 = call ptr @BKE_tracking_track_get_mask(i32 noundef %0, i32 noundef %1, ptr noundef %3, ptr noundef %4) #18
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi ptr [ %65, %64 ], [ null, %62 ]
  %68 = load ptr, ptr %19, align 8, !tbaa !233
  %69 = icmp eq ptr %68, null
  br i1 %69, label %77, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 2
  %72 = load i32, ptr %71, align 8, !tbaa !236
  %73 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 3
  %74 = load i32, ptr %73, align 4, !tbaa !237
  %75 = getelementptr inbounds %struct.ImBuf, ptr %23, i64 0, i32 9
  %76 = load ptr, ptr %75, align 8, !tbaa !233
  call void @libmv_samplePlanarPatchFloat(ptr noundef nonnull %68, i32 noundef %72, i32 noundef %74, i32 noundef 4, ptr noundef nonnull %11, ptr noundef nonnull %12, i32 noundef %7, i32 noundef %8, ptr noundef %67, ptr noundef %76, ptr noundef nonnull %13, ptr noundef nonnull %14) #19
  br label %86

77:                                               ; preds = %66
  %78 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 8
  %79 = load ptr, ptr %78, align 8, !tbaa !239
  %80 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 2
  %81 = load i32, ptr %80, align 8, !tbaa !236
  %82 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 3
  %83 = load i32, ptr %82, align 4, !tbaa !237
  %84 = getelementptr inbounds %struct.ImBuf, ptr %23, i64 0, i32 8
  %85 = load ptr, ptr %84, align 8, !tbaa !239
  call void @libmv_samplePlanarPatchByte(ptr noundef %79, i32 noundef %81, i32 noundef %83, i32 noundef 4, ptr noundef nonnull %11, ptr noundef nonnull %12, i32 noundef %7, i32 noundef %8, ptr noundef %67, ptr noundef %85, ptr noundef nonnull %13, ptr noundef nonnull %14) #19
  br label %86

86:                                               ; preds = %77, %70
  %87 = icmp eq ptr %9, null
  br i1 %87, label %94, label %88

88:                                               ; preds = %86
  %89 = load double, ptr %13, align 8, !tbaa !241
  %90 = load double, ptr %14, align 8, !tbaa !241
  %91 = insertelement <2 x double> poison, double %89, i64 0
  %92 = insertelement <2 x double> %91, double %90, i64 1
  %93 = fptrunc <2 x double> %92 to <2 x float>
  store <2 x float> %93, ptr %9, align 4, !tbaa !65
  br label %94

94:                                               ; preds = %88, %86
  %95 = icmp eq ptr %67, null
  br i1 %95, label %98, label %96

96:                                               ; preds = %94
  %97 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  call void %97(ptr noundef nonnull %67) #19
  br label %98

98:                                               ; preds = %94, %96, %10
  %99 = phi ptr [ null, %10 ], [ %23, %96 ], [ %23, %94 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #20
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %11) #20
  ret ptr %99
}

; Function Attrs: optsize
declare ptr @IMB_allocImBuf(i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @tracking_get_marker_coords_for_tracking(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @libmv_samplePlanarPatchFloat(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @libmv_samplePlanarPatchByte(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_tracking_get_pattern_imbuf(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = alloca [2 x float], align 4
  %7 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #20
  call void @BKE_tracking_marker_pattern_minmax(ptr noundef %2, ptr noundef nonnull %6, ptr noundef nonnull %7) #18
  %8 = load float, ptr %7, align 4, !tbaa !65
  %9 = load float, ptr %6, align 4, !tbaa !65
  %10 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !236
  %12 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !65
  %14 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !65
  %16 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %17 = load i32, ptr %16, align 4, !tbaa !237
  %18 = call ptr @BKE_tracking_get_search_imbuf(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) #18
  %19 = icmp eq ptr %18, null
  br i1 %19, label %32, label %20

20:                                               ; preds = %5
  %21 = fsub float %13, %15
  %22 = sitofp i32 %17 to float
  %23 = fmul float %21, %22
  %24 = fptosi float %23 to i32
  %25 = fsub float %8, %9
  %26 = sitofp i32 %11 to float
  %27 = fmul float %25, %26
  %28 = fptosi float %27 to i32
  %29 = load i32, ptr %10, align 8, !tbaa !236
  %30 = load i32, ptr %16, align 4, !tbaa !237
  %31 = call ptr @BKE_tracking_sample_pattern(i32 noundef %29, i32 noundef %30, ptr noundef nonnull %18, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext 0, i32 noundef %28, i32 noundef %24, ptr noundef null) #18
  call void @IMB_freeImBuf(ptr noundef nonnull %18) #19
  br label %32

32:                                               ; preds = %5, %20
  %33 = phi ptr [ %31, %20 ], [ null, %5 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #20
  ret ptr %33
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BKE_tracking_get_search_imbuf(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = alloca [2 x float], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #20
  %7 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !236
  %9 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !237
  call void @tracking_get_search_origin_frame_pixel(i32 noundef %8, i32 noundef %10, ptr noundef %2, ptr noundef nonnull %6) #19
  %11 = load <2 x float>, ptr %6, align 8, !tbaa !65
  %12 = fptosi <2 x float> %11 to <2 x i32>
  %13 = icmp eq i8 %3, 0
  %14 = load <2 x i32>, ptr %7, align 8, !tbaa !124
  br i1 %13, label %15, label %17

15:                                               ; preds = %5
  %16 = sitofp <2 x i32> %14 to <2 x float>
  br label %24

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %1, i64 0, i32 7
  %19 = sitofp <2 x i32> %14 to <2 x float>
  %20 = sitofp <2 x i32> %12 to <2 x float>
  %21 = load <2 x float>, ptr %18, align 8, !tbaa !65
  %22 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %21, <2 x float> %19, <2 x float> %20)
  %23 = fptosi <2 x float> %22 to <2 x i32>
  br label %24

24:                                               ; preds = %15, %17
  %25 = phi <2 x float> [ %16, %15 ], [ %19, %17 ]
  %26 = phi <2 x i32> [ %12, %15 ], [ %23, %17 ]
  %27 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 3
  %28 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 2
  %29 = load <2 x float>, ptr %27, align 4, !tbaa !65
  %30 = load <2 x float>, ptr %28, align 4, !tbaa !65
  %31 = fsub <2 x float> %29, %30
  %32 = fmul <2 x float> %31, %25
  %33 = fptosi <2 x float> %32 to <2 x i32>
  %34 = icmp slt <2 x i32> %33, <i32 1, i32 1>
  %35 = extractelement <2 x i1> %34, i64 0
  %36 = extractelement <2 x i1> %34, i64 1
  %37 = select i1 %35, i1 true, i1 %36
  br i1 %37, label %55, label %38

38:                                               ; preds = %24
  %39 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %40 = load ptr, ptr %39, align 8, !tbaa !233
  %41 = icmp eq ptr %40, null
  %42 = select i1 %41, i32 1, i32 32
  %43 = extractelement <2 x i32> %33, i64 0
  %44 = extractelement <2 x i32> %33, i64 1
  %45 = call ptr @IMB_allocImBuf(i32 noundef %43, i32 noundef %44, i8 noundef zeroext 32, i32 noundef %42) #19
  %46 = extractelement <2 x i32> %26, i64 0
  %47 = extractelement <2 x i32> %26, i64 1
  call void @IMB_rectcpy(ptr noundef %45, ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, i32 noundef %46, i32 noundef %47, i32 noundef %43, i32 noundef %44) #19
  %48 = icmp eq i8 %4, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %38
  %50 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %1, i64 0, i32 13
  %51 = load i32, ptr %50, align 8, !tbaa !118
  %52 = and i32 %51, 540
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %49
  call fastcc void @disable_imbuf_channels(ptr noundef %45, ptr noundef nonnull %1) #18
  br label %55

55:                                               ; preds = %38, %54, %49, %24
  %56 = phi ptr [ null, %24 ], [ %45, %49 ], [ %45, %54 ], [ %45, %38 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #20
  ret ptr %56
}

; Function Attrs: optsize
declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @tracking_get_search_origin_frame_pixel(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @IMB_rectcpy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @disable_imbuf_channels(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !249 {
  %3 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %1, i64 0, i32 13
  %4 = load i32, ptr %3, align 8, !tbaa !118
  %5 = trunc i32 %4 to i8
  %6 = and i8 %5, 4
  %7 = and i8 %5, 8
  %8 = and i8 %5, 16
  tail call void @BKE_tracking_disable_channels(ptr noundef %0, i8 noundef zeroext %6, i8 noundef zeroext %7, i8 noundef zeroext %8, i8 noundef zeroext 1) #18
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_tracking_disable_channels(ptr nocapture noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #7 {
  %6 = or i8 %2, %1
  %7 = or i8 %6, %3
  %8 = icmp eq i8 %4, 0
  %9 = or i8 %7, %4
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %120, label %11

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
  %21 = load i32, ptr %20, align 4, !tbaa !237
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %112

23:                                               ; preds = %11
  %24 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %25 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %26 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %27 = load i32, ptr %24, align 8, !tbaa !236
  br label %28

28:                                               ; preds = %23, %107
  %29 = phi i32 [ %21, %23 ], [ %108, %107 ]
  %30 = phi i32 [ %27, %23 ], [ %109, %107 ]
  %31 = phi i32 [ 0, %23 ], [ %110, %107 ]
  %32 = icmp sgt i32 %30, 0
  br i1 %32, label %33, label %107

33:                                               ; preds = %28, %101
  %34 = phi i32 [ %103, %101 ], [ %30, %28 ]
  %35 = phi i32 [ %102, %101 ], [ 0, %28 ]
  %36 = mul nsw i32 %34, %31
  %37 = add nsw i32 %36, %35
  %38 = load ptr, ptr %25, align 8, !tbaa !233
  %39 = icmp eq ptr %38, null
  br i1 %39, label %68, label %40

40:                                               ; preds = %33
  %41 = shl nsw i32 %37, 2
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds float, ptr %38, i64 %42
  br i1 %12, label %44, label %46

44:                                               ; preds = %40
  %45 = load float, ptr %43, align 4, !tbaa !65
  br label %46

46:                                               ; preds = %40, %44
  %47 = phi float [ %45, %44 ], [ 0.000000e+00, %40 ]
  br i1 %14, label %48, label %51

48:                                               ; preds = %46
  %49 = getelementptr inbounds float, ptr %43, i64 1
  %50 = load float, ptr %49, align 4, !tbaa !65
  br label %51

51:                                               ; preds = %46, %48
  %52 = phi float [ %50, %48 ], [ 0.000000e+00, %46 ]
  br i1 %17, label %53, label %56

53:                                               ; preds = %51
  %54 = getelementptr inbounds float, ptr %43, i64 2
  %55 = load float, ptr %54, align 4, !tbaa !65
  br label %56

56:                                               ; preds = %51, %53
  %57 = phi float [ %55, %53 ], [ 0.000000e+00, %51 ]
  br i1 %8, label %65, label %58

58:                                               ; preds = %56
  %59 = fmul float %52, 0x3FE6E2EB20000000
  %60 = tail call float @llvm.fmuladd.f32(float %47, float 0x3FCB367A00000000, float %59)
  %61 = tail call float @llvm.fmuladd.f32(float %57, float 0x3FB27BB300000000, float %60)
  %62 = fdiv float %61, %19
  %63 = getelementptr inbounds float, ptr %43, i64 2
  store float %62, ptr %63, align 4, !tbaa !65
  %64 = getelementptr inbounds float, ptr %43, i64 1
  store float %62, ptr %64, align 4, !tbaa !65
  store float %62, ptr %43, align 4, !tbaa !65
  br label %101

65:                                               ; preds = %56
  store float %47, ptr %43, align 4, !tbaa !65
  %66 = getelementptr inbounds float, ptr %43, i64 1
  store float %52, ptr %66, align 4, !tbaa !65
  %67 = getelementptr inbounds float, ptr %43, i64 2
  store float %57, ptr %67, align 4, !tbaa !65
  br label %101

68:                                               ; preds = %33
  %69 = load ptr, ptr %26, align 8, !tbaa !239
  %70 = shl nsw i32 %37, 2
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, ptr %69, i64 %71
  br i1 %12, label %73, label %75

73:                                               ; preds = %68
  %74 = load i8, ptr %72, align 1, !tbaa !123
  br label %75

75:                                               ; preds = %68, %73
  %76 = phi i8 [ %74, %73 ], [ 0, %68 ]
  br i1 %14, label %77, label %80

77:                                               ; preds = %75
  %78 = getelementptr inbounds i8, ptr %72, i64 1
  %79 = load i8, ptr %78, align 1, !tbaa !123
  br label %80

80:                                               ; preds = %75, %77
  %81 = phi i8 [ %79, %77 ], [ 0, %75 ]
  br i1 %17, label %82, label %85

82:                                               ; preds = %80
  %83 = getelementptr inbounds i8, ptr %72, i64 2
  %84 = load i8, ptr %83, align 1, !tbaa !123
  br label %85

85:                                               ; preds = %80, %82
  %86 = phi i8 [ %84, %82 ], [ 0, %80 ]
  br i1 %8, label %98, label %87

87:                                               ; preds = %85
  %88 = uitofp i8 %76 to float
  %89 = uitofp i8 %81 to float
  %90 = fmul float %89, 0x3FE6E2EB20000000
  %91 = tail call float @llvm.fmuladd.f32(float %88, float 0x3FCB367A00000000, float %90)
  %92 = uitofp i8 %86 to float
  %93 = tail call float @llvm.fmuladd.f32(float %92, float 0x3FB27BB300000000, float %91)
  %94 = fdiv float %93, %19
  %95 = fptoui float %94 to i8
  %96 = getelementptr inbounds i8, ptr %72, i64 2
  store i8 %95, ptr %96, align 1, !tbaa !123
  %97 = getelementptr inbounds i8, ptr %72, i64 1
  store i8 %95, ptr %97, align 1, !tbaa !123
  store i8 %95, ptr %72, align 1, !tbaa !123
  br label %101

98:                                               ; preds = %85
  store i8 %76, ptr %72, align 1, !tbaa !123
  %99 = getelementptr inbounds i8, ptr %72, i64 1
  store i8 %81, ptr %99, align 1, !tbaa !123
  %100 = getelementptr inbounds i8, ptr %72, i64 2
  store i8 %86, ptr %100, align 1, !tbaa !123
  br label %101

101:                                              ; preds = %87, %98, %58, %65
  %102 = add nuw nsw i32 %35, 1
  %103 = load i32, ptr %24, align 8, !tbaa !236
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %33, label %105, !llvm.loop !250

105:                                              ; preds = %101
  %106 = load i32, ptr %20, align 4, !tbaa !237
  br label %107

107:                                              ; preds = %105, %28
  %108 = phi i32 [ %106, %105 ], [ %29, %28 ]
  %109 = phi i32 [ %103, %105 ], [ %30, %28 ]
  %110 = add nuw nsw i32 %31, 1
  %111 = icmp slt i32 %110, %108
  br i1 %111, label %28, label %112, !llvm.loop !251

112:                                              ; preds = %107, %11
  %113 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %114 = load ptr, ptr %113, align 8, !tbaa !233
  %115 = icmp eq ptr %114, null
  br i1 %115, label %120, label %116

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 23
  %118 = load i32, ptr %117, align 4, !tbaa !252
  %119 = or i32 %118, 8
  store i32 %119, ptr %117, align 4, !tbaa !252
  br label %120

120:                                              ; preds = %112, %116, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_tracking_dopesheet_update(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 12
  %3 = load i32, ptr %2, align 8, !tbaa !159
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 12, i32 2
  %7 = load i16, ptr %6, align 2, !tbaa !253
  %8 = trunc i16 %7 to i8
  %9 = and i8 %8, 1
  %10 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 12, i32 1
  %11 = load i16, ptr %10, align 4, !tbaa !254
  tail call fastcc void @tracking_dopesheet_free(ptr noundef nonnull %2) #18
  tail call fastcc void @tracking_dopesheet_channels_calc(ptr noundef nonnull %0) #18
  %12 = sext i16 %11 to i32
  tail call fastcc void @tracking_dopesheet_channels_sort(ptr noundef nonnull %0, i32 noundef %12, i8 noundef zeroext %9) #18
  tail call fastcc void @tracking_dopesheet_calc_coverage(ptr noundef nonnull %0) #18
  store i32 1, ptr %2, align 8, !tbaa !159
  br label %13

13:                                               ; preds = %1, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @tracking_dopesheet_channels_calc(ptr noundef %0) unnamed_addr #0 !PGOFuncName !255 {
  %2 = tail call ptr @BKE_tracking_object_get_active(ptr noundef %0) #18
  %3 = tail call ptr @BKE_tracking_object_get_reconstruction(ptr noundef %0, ptr noundef %2) #18
  %4 = tail call ptr @BKE_tracking_object_get_tracks(ptr noundef %0, ptr noundef %2) #18
  %5 = load ptr, ptr %4, align 8, !tbaa !49
  %6 = icmp eq ptr %5, null
  br i1 %6, label %61, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 12, i32 2
  %9 = load i16, ptr %8, align 2, !tbaa !253
  %10 = and i16 %9, 4
  %11 = icmp eq i16 %10, 0
  %12 = and i16 %9, 2
  %13 = icmp eq i16 %12, 0
  %14 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 12, i32 4
  %15 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 12, i32 5
  br label %16

16:                                               ; preds = %7, %58
  %17 = phi ptr [ %5, %7 ], [ %59, %58 ]
  br i1 %11, label %18, label %23

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %17, i64 0, i32 13
  %20 = load i32, ptr %19, align 8, !tbaa !118
  %21 = and i32 %20, 32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %58

23:                                               ; preds = %18, %16
  br i1 %13, label %39, label %24

24:                                               ; preds = %23
  %25 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %17, i64 0, i32 13
  %26 = load i32, ptr %25, align 8, !tbaa !118
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %17, i64 0, i32 14
  %31 = load i32, ptr %30, align 4, !tbaa !119
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %17, i64 0, i32 15
  %36 = load i32, ptr %35, align 8, !tbaa !120
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %58, label %39

39:                                               ; preds = %34, %29, %24, %23
  %40 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %41 = tail call ptr %40(i64 noundef 112, ptr noundef nonnull @.str.16) #19
  %42 = getelementptr inbounds %struct.MovieTrackingDopesheetChannel, ptr %41, i64 0, i32 2
  store ptr %17, ptr %42, align 8, !tbaa !256
  %43 = load i32, ptr %3, align 8, !tbaa !257
  %44 = and i32 %43, 1
  %45 = icmp eq i32 %44, 0
  %46 = getelementptr inbounds %struct.MovieTrackingDopesheetChannel, ptr %41, i64 0, i32 4
  %47 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %17, i64 0, i32 2
  br i1 %45, label %53, label %48

48:                                               ; preds = %39
  %49 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %17, i64 0, i32 12
  %50 = load float, ptr %49, align 4, !tbaa !258
  %51 = fpext float %50 to double
  %52 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %46, i64 noundef 64, ptr noundef nonnull @.str.17, ptr noundef nonnull %47, double noundef %51) #19
  br label %55

53:                                               ; preds = %39
  %54 = tail call ptr @BLI_strncpy(ptr noundef nonnull %46, ptr noundef nonnull %47, i64 noundef 64) #19
  br label %55

55:                                               ; preds = %53, %48
  tail call fastcc void @tracking_dopesheet_channels_segments_calc(ptr noundef nonnull %41) #18
  tail call void @BLI_addtail(ptr noundef nonnull %14, ptr noundef nonnull %41) #19
  %56 = load i32, ptr %15, align 8, !tbaa !64
  %57 = add nsw i32 %56, 1
  store i32 %57, ptr %15, align 8, !tbaa !64
  br label %58

58:                                               ; preds = %34, %18, %55
  %59 = load ptr, ptr %17, align 8, !tbaa !49
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %16, !llvm.loop !259

61:                                               ; preds = %58, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @tracking_dopesheet_channels_sort(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2) unnamed_addr #0 !PGOFuncName !260 {
  %4 = icmp ult i32 %1, 4
  br i1 %4, label %5, label %12

5:                                                ; preds = %3
  %6 = icmp eq i8 %2, 0
  %7 = select i1 %6, ptr @switch.table.tracking_dopesheet_channels_sort.21, ptr @switch.table.tracking_dopesheet_channels_sort
  %8 = zext nneg i32 %1 to i64
  %9 = getelementptr inbounds [4 x ptr], ptr %7, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 12, i32 4
  tail call void @BLI_sortlist(ptr noundef nonnull %11, ptr noundef nonnull %10) #19
  br label %12

12:                                               ; preds = %3, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @tracking_dopesheet_calc_coverage(ptr noundef %0) unnamed_addr #0 !PGOFuncName !261 {
  %2 = tail call ptr @BKE_tracking_object_get_active(ptr noundef %0) #18
  %3 = tail call ptr @BKE_tracking_object_get_tracks(ptr noundef %0, ptr noundef %2) #18
  %4 = load ptr, ptr %3, align 8, !tbaa !49
  %5 = icmp eq ptr %4, null
  br i1 %5, label %24, label %6

6:                                                ; preds = %1, %6
  %7 = phi ptr [ %22, %6 ], [ %4, %1 ]
  %8 = phi i32 [ %14, %6 ], [ 2147483647, %1 ]
  %9 = phi i32 [ %21, %6 ], [ -2147483647, %1 ]
  %10 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %7, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !115
  %12 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %11, i64 0, i32 4
  %13 = load i32, ptr %12, align 4, !tbaa !143
  %14 = tail call fastcc i32 @min_ii(i32 noundef %8, i32 noundef %13) #18
  %15 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %7, i64 0, i32 8
  %16 = load i32, ptr %15, align 8, !tbaa !147
  %17 = sext i32 %16 to i64
  %18 = getelementptr %struct.MovieTrackingMarker, ptr %11, i64 %17
  %19 = getelementptr %struct.MovieTrackingMarker, ptr %18, i64 -1, i32 4
  %20 = load i32, ptr %19, align 4, !tbaa !143
  %21 = tail call fastcc i32 @max_ii(i32 noundef %9, i32 noundef %20) #18
  %22 = load ptr, ptr %7, align 8, !tbaa !49
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %6, !llvm.loop !262

24:                                               ; preds = %6, %1
  %25 = phi i32 [ -2147483647, %1 ], [ %21, %6 ]
  %26 = phi i32 [ 2147483647, %1 ], [ %14, %6 ]
  %27 = sub nsw i32 %25, %26
  %28 = add nsw i32 %27, 1
  %29 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %30 = sext i32 %28 to i64
  %31 = shl nsw i64 %30, 2
  %32 = tail call ptr %29(i64 noundef %31, ptr noundef nonnull @.str.19) #19
  %33 = load ptr, ptr %3, align 8, !tbaa !49
  %34 = icmp eq ptr %33, null
  br i1 %34, label %67, label %38

35:                                               ; preds = %62, %38
  %36 = load ptr, ptr %39, align 8, !tbaa !49
  %37 = icmp eq ptr %36, null
  br i1 %37, label %67, label %38, !llvm.loop !263

38:                                               ; preds = %24, %35
  %39 = phi ptr [ %36, %35 ], [ %33, %24 ]
  %40 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %39, i64 0, i32 8
  %41 = load i32, ptr %40, align 8, !tbaa !147
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %35

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %39, i64 0, i32 10
  %45 = load ptr, ptr %44, align 8, !tbaa !115
  br label %46

46:                                               ; preds = %43, %62
  %47 = phi i32 [ %41, %43 ], [ %63, %62 ]
  %48 = phi i64 [ 0, %43 ], [ %64, %62 ]
  %49 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %45, i64 %48, i32 5
  %50 = load i32, ptr %49, align 4, !tbaa !151
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %45, i64 %48, i32 4
  %55 = load i32, ptr %54, align 4, !tbaa !143
  %56 = sub nsw i32 %55, %26
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, ptr %32, i64 %57
  %59 = load i32, ptr %58, align 4, !tbaa !124
  %60 = add nsw i32 %59, 1
  store i32 %60, ptr %58, align 4, !tbaa !124
  %61 = load i32, ptr %40, align 8, !tbaa !147
  br label %62

62:                                               ; preds = %53, %46
  %63 = phi i32 [ %61, %53 ], [ %47, %46 ]
  %64 = add nuw nsw i64 %48, 1
  %65 = sext i32 %63 to i64
  %66 = icmp slt i64 %64, %65
  br i1 %66, label %46, label %35, !llvm.loop !264

67:                                               ; preds = %35, %24
  %68 = icmp slt i32 %27, 1
  br i1 %68, label %110, label %69

69:                                               ; preds = %67
  %70 = load i32, ptr %32, align 4, !tbaa !124
  %71 = icmp eq i32 %70, 0
  %72 = tail call fastcc i32 @coverage_from_count(i32 noundef %70) #18, !range !265
  %73 = select i1 %71, i32 2, i32 %72
  %74 = add i32 %26, -1
  %75 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 12, i32 3
  %76 = zext nneg i32 %27 to i64
  %77 = add i32 %25, 1
  %78 = sub i32 %77, %26
  %79 = zext i32 %78 to i64
  br label %80

80:                                               ; preds = %69, %105
  %81 = phi i64 [ 1, %69 ], [ %108, %105 ]
  %82 = phi i32 [ %26, %69 ], [ %107, %105 ]
  %83 = phi i32 [ %73, %69 ], [ %106, %105 ]
  %84 = getelementptr inbounds i32, ptr %32, i64 %81
  %85 = load i32, ptr %84, align 4, !tbaa !124
  %86 = tail call fastcc i32 @coverage_from_count(i32 noundef %85) #18, !range !265
  %87 = icmp eq i64 %81, %76
  br i1 %87, label %88, label %91

88:                                               ; preds = %80
  %89 = icmp eq i32 %85, 0
  %90 = select i1 %89, i32 2, i32 %86
  br label %93

91:                                               ; preds = %80
  %92 = icmp eq i32 %86, %83
  br i1 %92, label %105, label %93

93:                                               ; preds = %88, %91
  %94 = phi i32 [ %90, %88 ], [ %86, %91 ]
  %95 = trunc i64 %81 to i32
  %96 = add i32 %74, %95
  %97 = icmp eq i32 %96, %82
  %98 = add i32 %26, %95
  %99 = select i1 %97, i32 %98, i32 %96
  %100 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %101 = tail call ptr %100(i64 noundef 32, ptr noundef nonnull @.str.20) #19
  %102 = getelementptr inbounds %struct.MovieTrackingDopesheetCoverageSegment, ptr %101, i64 0, i32 2
  store i32 %83, ptr %102, align 8, !tbaa !266
  %103 = getelementptr inbounds %struct.MovieTrackingDopesheetCoverageSegment, ptr %101, i64 0, i32 3
  store i32 %82, ptr %103, align 4, !tbaa !268
  %104 = getelementptr inbounds %struct.MovieTrackingDopesheetCoverageSegment, ptr %101, i64 0, i32 4
  store i32 %99, ptr %104, align 8, !tbaa !269
  tail call void @BLI_addtail(ptr noundef nonnull %75, ptr noundef %101) #19
  br label %105

105:                                              ; preds = %91, %93
  %106 = phi i32 [ %94, %93 ], [ %83, %91 ]
  %107 = phi i32 [ %99, %93 ], [ %82, %91 ]
  %108 = add nuw nsw i64 %81, 1
  %109 = icmp eq i64 %108, %79
  br i1 %109, label %110, label %80, !llvm.loop !270

110:                                              ; preds = %105, %67
  %111 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %111(ptr noundef nonnull %32) #19
  ret void
}

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @PLX_raskterize(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @scale_m4_fl(ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @tracking_dopesheet_channels_segments_calc(ptr nocapture noundef %0) unnamed_addr #0 !PGOFuncName !271 {
  %2 = getelementptr inbounds %struct.MovieTrackingDopesheetChannel, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !256
  %4 = getelementptr inbounds %struct.MovieTrackingDopesheetChannel, ptr %0, i64 0, i32 5
  store i32 0, ptr %4, align 4, !tbaa !272
  %5 = getelementptr inbounds %struct.MovieTrackingDopesheetChannel, ptr %0, i64 0, i32 7
  store i32 0, ptr %5, align 8, !tbaa !273
  %6 = getelementptr inbounds %struct.MovieTrackingDopesheetChannel, ptr %0, i64 0, i32 8
  store i32 0, ptr %6, align 4, !tbaa !274
  %7 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %3, i64 0, i32 8
  %8 = load i32, ptr %7, align 8, !tbaa !147
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %130

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %3, i64 0, i32 10
  %12 = load ptr, ptr %11, align 8, !tbaa !115
  %13 = zext nneg i32 %8 to i64
  br label %14

14:                                               ; preds = %10, %49
  %15 = phi i32 [ 0, %10 ], [ %50, %49 ]
  %16 = phi i32 [ 0, %10 ], [ %52, %49 ]
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %12, i64 %17, i32 5
  %19 = load i32, ptr %18, align 4, !tbaa !151
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %49

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %12, i64 %17, i32 4
  %24 = load i32, ptr %23, align 4, !tbaa !143
  %25 = add nsw i32 %16, 1
  %26 = tail call i32 @llvm.smax.i32(i32 %8, i32 %25)
  br label %27

27:                                               ; preds = %37, %22
  %28 = phi i64 [ %30, %37 ], [ %17, %22 ]
  %29 = phi i32 [ %34, %37 ], [ %24, %22 ]
  %30 = add nsw i64 %28, 1
  %31 = icmp slt i64 %30, %13
  br i1 %31, label %32, label %46

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %12, i64 %30, i32 4
  %34 = load i32, ptr %33, align 4, !tbaa !143
  %35 = add nsw i32 %29, 1
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %12, i64 %30, i32 5
  %39 = load i32, ptr %38, align 4, !tbaa !151
  %40 = and i32 %39, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %27, label %42, !llvm.loop !275

42:                                               ; preds = %37
  %43 = trunc i64 %30 to i32
  br label %46

44:                                               ; preds = %32
  %45 = trunc i64 %30 to i32
  br label %46

46:                                               ; preds = %27, %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ], [ %26, %27 ]
  %48 = add nsw i32 %15, 1
  store i32 %48, ptr %4, align 4, !tbaa !272
  br label %49

49:                                               ; preds = %46, %14
  %50 = phi i32 [ %48, %46 ], [ %15, %14 ]
  %51 = phi i32 [ %47, %46 ], [ %16, %14 ]
  %52 = add nsw i32 %51, 1
  %53 = icmp slt i32 %52, %8
  br i1 %53, label %14, label %54, !llvm.loop !276

54:                                               ; preds = %49
  %55 = icmp eq i32 %50, 0
  br i1 %55, label %130, label %56

56:                                               ; preds = %54
  %57 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %58 = sext i32 %50 to i64
  %59 = shl nsw i64 %58, 3
  %60 = tail call ptr %57(i64 noundef %59, ptr noundef nonnull @.str.18) #19
  %61 = getelementptr inbounds %struct.MovieTrackingDopesheetChannel, ptr %0, i64 0, i32 6
  store ptr %60, ptr %61, align 8, !tbaa !61
  %62 = load i32, ptr %7, align 8, !tbaa !147
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %130

64:                                               ; preds = %56
  %65 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %3, i64 0, i32 10
  %66 = load ptr, ptr %65, align 8, !tbaa !115
  br label %67

67:                                               ; preds = %64, %124
  %68 = phi i32 [ %62, %64 ], [ %125, %124 ]
  %69 = phi i32 [ 0, %64 ], [ %128, %124 ]
  %70 = phi i32 [ 0, %64 ], [ %126, %124 ]
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %66, i64 %71, i32 5
  %73 = load i32, ptr %72, align 4, !tbaa !151
  %74 = and i32 %73, 1
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %124

76:                                               ; preds = %67
  %77 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %66, i64 %71, i32 4
  %78 = load i32, ptr %77, align 4, !tbaa !143
  %79 = add nsw i32 %69, 1
  %80 = icmp slt i32 %79, %68
  br i1 %80, label %81, label %109

81:                                               ; preds = %76
  %82 = sext i32 %79 to i64
  %83 = sext i32 %68 to i64
  %84 = xor i32 %69, -1
  %85 = add i32 %68, %84
  br label %86

86:                                               ; preds = %81, %99
  %87 = phi i64 [ %82, %81 ], [ %103, %99 ]
  %88 = phi i32 [ 0, %81 ], [ %102, %99 ]
  %89 = phi i32 [ %78, %81 ], [ %91, %99 ]
  %90 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %66, i64 %87, i32 4
  %91 = load i32, ptr %90, align 4, !tbaa !143
  %92 = add nsw i32 %89, 1
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %107

94:                                               ; preds = %86
  %95 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %66, i64 %87, i32 5
  %96 = load i32, ptr %95, align 4, !tbaa !151
  %97 = and i32 %96, 1
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %94
  %100 = load i32, ptr %6, align 4, !tbaa !274
  %101 = add nsw i32 %100, 1
  store i32 %101, ptr %6, align 4, !tbaa !274
  %102 = add nuw nsw i32 %88, 1
  %103 = add nsw i64 %87, 1
  %104 = icmp eq i64 %103, %83
  br i1 %104, label %109, label %86, !llvm.loop !277

105:                                              ; preds = %94
  %106 = trunc i64 %87 to i32
  br label %109

107:                                              ; preds = %86
  %108 = trunc i64 %87 to i32
  br label %109

109:                                              ; preds = %99, %105, %107, %76
  %110 = phi i32 [ 0, %76 ], [ %88, %105 ], [ %88, %107 ], [ %85, %99 ]
  %111 = phi i32 [ %79, %76 ], [ %106, %105 ], [ %108, %107 ], [ %68, %99 ]
  %112 = shl nsw i32 %70, 1
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, ptr %60, i64 %113
  store i32 %78, ptr %114, align 4, !tbaa !124
  %115 = load i32, ptr %77, align 4, !tbaa !143
  %116 = add nsw i32 %115, %110
  %117 = or disjoint i32 %112, 1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, ptr %60, i64 %118
  store i32 %116, ptr %119, align 4, !tbaa !124
  %120 = load i32, ptr %5, align 8, !tbaa !273
  %121 = tail call fastcc i32 @max_ii(i32 noundef %120, i32 noundef %110) #18
  store i32 %121, ptr %5, align 8, !tbaa !273
  %122 = add nsw i32 %70, 1
  %123 = load i32, ptr %7, align 8, !tbaa !147
  br label %124

124:                                              ; preds = %109, %67
  %125 = phi i32 [ %123, %109 ], [ %68, %67 ]
  %126 = phi i32 [ %122, %109 ], [ %70, %67 ]
  %127 = phi i32 [ %111, %109 ], [ %69, %67 ]
  %128 = add nsw i32 %127, 1
  %129 = icmp slt i32 %128, %125
  br i1 %129, label %67, label %130, !llvm.loop !278

130:                                              ; preds = %124, %1, %56, %54
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @max_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #4 !PGOFuncName !279 {
  %3 = tail call i32 @llvm.smax.i32(i32 %1, i32 %0)
  ret i32 %3
}

; Function Attrs: optsize
declare void @BLI_sortlist(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @channels_alpha_inverse_sort(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !280 {
  %3 = tail call i32 @channels_alpha_sort(ptr noundef %0, ptr noundef %1) #18, !range !281
  %4 = xor i32 %3, 1
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @channels_longest_segment_inverse_sort(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 !PGOFuncName !282 {
  %3 = tail call i32 @channels_longest_segment_sort(ptr noundef %0, ptr noundef %1) #18, !range !281
  %4 = xor i32 %3, 1
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @channels_total_track_inverse_sort(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 !PGOFuncName !283 {
  %3 = tail call i32 @channels_total_track_sort(ptr noundef %0, ptr noundef %1) #18, !range !281
  %4 = xor i32 %3, 1
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @channels_average_error_inverse_sort(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #9 !PGOFuncName !284 {
  %3 = getelementptr inbounds %struct.MovieTrackingDopesheetChannel, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !256
  %5 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %4, i64 0, i32 12
  %6 = load float, ptr %5, align 4, !tbaa !258
  %7 = getelementptr inbounds %struct.MovieTrackingDopesheetChannel, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !256
  %9 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %8, i64 0, i32 12
  %10 = load float, ptr %9, align 4, !tbaa !258
  %11 = fcmp olt float %6, %10
  %12 = zext i1 %11 to i32
  ret i32 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @channels_alpha_sort(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !285 {
  %3 = getelementptr inbounds %struct.MovieTrackingDopesheetChannel, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !256
  %5 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %4, i64 0, i32 2
  %6 = getelementptr inbounds %struct.MovieTrackingDopesheetChannel, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !256
  %8 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %7, i64 0, i32 2
  %9 = tail call i32 @BLI_strcasecmp(ptr noundef nonnull %5, ptr noundef nonnull %8) #19
  %10 = icmp sgt i32 %9, 0
  %11 = zext i1 %10 to i32
  ret i32 %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @channels_longest_segment_sort(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 !PGOFuncName !286 {
  %3 = getelementptr inbounds %struct.MovieTrackingDopesheetChannel, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !273
  %5 = getelementptr inbounds %struct.MovieTrackingDopesheetChannel, ptr %1, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !273
  %7 = icmp sgt i32 %4, %6
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @channels_total_track_sort(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 !PGOFuncName !287 {
  %3 = getelementptr inbounds %struct.MovieTrackingDopesheetChannel, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 4, !tbaa !274
  %5 = getelementptr inbounds %struct.MovieTrackingDopesheetChannel, ptr %1, i64 0, i32 8
  %6 = load i32, ptr %5, align 4, !tbaa !274
  %7 = icmp sgt i32 %4, %6
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @channels_average_error_sort(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #9 !PGOFuncName !288 {
  %3 = getelementptr inbounds %struct.MovieTrackingDopesheetChannel, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !256
  %5 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %4, i64 0, i32 12
  %6 = load float, ptr %5, align 4, !tbaa !258
  %7 = getelementptr inbounds %struct.MovieTrackingDopesheetChannel, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !256
  %9 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %8, i64 0, i32 12
  %10 = load float, ptr %9, align 4, !tbaa !258
  %11 = fcmp ogt float %6, %10
  %12 = zext i1 %11 to i32
  ret i32 %12
}

; Function Attrs: optsize
declare i32 @BLI_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @coverage_from_count(i32 noundef %0) unnamed_addr #4 !PGOFuncName !289 {
  %2 = icmp slt i32 %0, 8
  %3 = icmp ult i32 %0, 16
  %4 = select i1 %3, i32 1, i32 2
  %5 = select i1 %2, i32 0, i32 %4
  ret i32 %5
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #17

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { optsize }
attributes #19 = { nounwind optsize }
attributes #20 = { nounwind }
attributes #21 = { nounwind optsize willreturn memory(read) }

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
!34 = !{!35, !43, i64 72}
!35 = !{!"MovieTracking", !36, i64 0, !42, i64 72, !44, i64 128, !44, i64 144, !45, i64 160, !46, i64 184, !43, i64 232, !43, i64 240, !44, i64 248, !37, i64 264, !37, i64 268, !43, i64 272, !47, i64 280}
!36 = !{!"MovieTrackingSettings", !37, i64 0, !40, i64 4, !40, i64 6, !41, i64 8, !40, i64 12, !40, i64 14, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !41, i64 24, !40, i64 28, !40, i64 30, !37, i64 32, !37, i64 36, !37, i64 40, !40, i64 44, !40, i64 46, !41, i64 48, !37, i64 52, !37, i64 56, !41, i64 60, !41, i64 64, !37, i64 68}
!37 = !{!"int", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"short", !38, i64 0}
!41 = !{!"float", !38, i64 0}
!42 = !{!"MovieTrackingCamera", !43, i64 0, !40, i64 8, !40, i64 10, !41, i64 12, !41, i64 16, !41, i64 20, !40, i64 24, !40, i64 26, !38, i64 28, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52}
!43 = !{!"any pointer", !38, i64 0}
!44 = !{!"ListBase", !43, i64 0, !43, i64 8}
!45 = !{!"MovieTrackingReconstruction", !37, i64 0, !41, i64 4, !37, i64 8, !37, i64 12, !43, i64 16}
!46 = !{!"MovieTrackingStabilization", !37, i64 0, !37, i64 4, !37, i64 8, !41, i64 12, !43, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !37, i64 36, !37, i64 40, !41, i64 44}
!47 = !{!"MovieTrackingDopesheet", !37, i64 0, !40, i64 4, !40, i64 6, !44, i64 8, !44, i64 24, !37, i64 40, !37, i64 44}
!48 = !{!"tracking.c:tracking_tracks_free"}
!49 = !{!43, !43, i64 0}
!50 = distinct !{!50, !51}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!"tracking.c:tracking_plane_tracks_free"}
!53 = distinct !{!53, !51}
!54 = !{!"tracking.c:tracking_reconstruction_free"}
!55 = !{!45, !43, i64 16}
!56 = !{!"tracking.c:tracking_objects_free"}
!57 = distinct !{!57, !51}
!58 = !{!59, !43, i64 0}
!59 = !{!"MovieDistortion", !43, i64 0}
!60 = !{!"tracking.c:tracking_dopesheet_free"}
!61 = !{!62, !43, i64 96}
!62 = !{!"MovieTrackingDopesheetChannel", !43, i64 0, !43, i64 8, !43, i64 16, !37, i64 24, !38, i64 28, !37, i64 92, !43, i64 96, !37, i64 104, !37, i64 108}
!63 = distinct !{!63, !51}
!64 = !{!47, !37, i64 40}
!65 = !{!41, !41, i64 0}
!66 = !{!35, !40, i64 96}
!67 = !{!35, !40, i64 4}
!68 = !{!35, !41, i64 8}
!69 = !{!35, !40, i64 12}
!70 = !{!35, !40, i64 14}
!71 = !{!35, !40, i64 6}
!72 = !{!35, !41, i64 24}
!73 = !{!35, !41, i64 48}
!74 = !{!35, !41, i64 64}
!75 = !{!35, !41, i64 216}
!76 = !{!35, !41, i64 196}
!77 = !{!35, !37, i64 220}
!78 = !{!35, !37, i64 268}
!79 = !{!80, !37, i64 80}
!80 = !{!"MovieTrackingObject", !43, i64 0, !43, i64 8, !38, i64 16, !37, i64 80, !41, i64 84, !44, i64 88, !44, i64 104, !45, i64 120, !37, i64 144, !37, i64 148}
!81 = !{!35, !37, i64 264}
!82 = !{!80, !41, i64 84}
!83 = !{!80, !37, i64 144}
!84 = !{!80, !37, i64 148}
!85 = !{!86, !43, i64 128}
!86 = !{!"Scene", !87, i64 0, !43, i64 120, !43, i64 128, !43, i64 136, !43, i64 144, !44, i64 152, !43, i64 168, !43, i64 176, !38, i64 184, !38, i64 196, !38, i64 208, !38, i64 220, !37, i64 232, !37, i64 236, !37, i64 240, !40, i64 244, !38, i64 246, !38, i64 247, !43, i64 248, !43, i64 256, !43, i64 264, !43, i64 272, !88, i64 280, !97, i64 4264, !44, i64 4296, !44, i64 4312, !43, i64 4328, !43, i64 4336, !43, i64 4344, !43, i64 4352, !43, i64 4360, !43, i64 4368, !40, i64 4376, !40, i64 4378, !37, i64 4380, !44, i64 4384, !98, i64 4400, !99, i64 4416, !102, i64 4600, !43, i64 4608, !103, i64 4616, !43, i64 4640, !104, i64 4648, !104, i64 4656, !90, i64 4664, !91, i64 4824, !105, i64 4888, !43, i64 4952}
!87 = !{!"ID", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !38, i64 32, !40, i64 98, !37, i64 100, !37, i64 104, !37, i64 108, !43, i64 112}
!88 = !{!"RenderData", !89, i64 0, !43, i64 248, !43, i64 256, !92, i64 264, !93, i64 328, !37, i64 400, !37, i64 404, !37, i64 408, !41, i64 412, !37, i64 416, !37, i64 420, !37, i64 424, !37, i64 428, !40, i64 432, !40, i64 434, !41, i64 436, !41, i64 440, !41, i64 444, !41, i64 448, !41, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !37, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !37, i64 484, !37, i64 488, !40, i64 492, !40, i64 494, !37, i64 496, !37, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !38, i64 514, !38, i64 515, !37, i64 516, !37, i64 520, !37, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !94, i64 544, !94, i64 560, !95, i64 576, !44, i64 592, !40, i64 608, !40, i64 610, !41, i64 612, !41, i64 616, !41, i64 620, !41, i64 624, !37, i64 628, !41, i64 632, !41, i64 636, !41, i64 640, !41, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !41, i64 660, !41, i64 664, !40, i64 668, !40, i64 670, !41, i64 672, !41, i64 676, !38, i64 680, !37, i64 1704, !40, i64 1708, !40, i64 1710, !38, i64 1712, !38, i64 2480, !38, i64 2496, !38, i64 2512, !38, i64 2513, !38, i64 2514, !38, i64 2515, !37, i64 2520, !40, i64 2524, !40, i64 2526, !41, i64 2528, !41, i64 2532, !40, i64 2536, !40, i64 2538, !41, i64 2540, !40, i64 2544, !40, i64 2546, !37, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !41, i64 2560, !41, i64 2564, !43, i64 2568, !37, i64 2576, !41, i64 2580, !38, i64 2584, !96, i64 2616, !37, i64 3976, !37, i64 3980}
!89 = !{!"ImageFormatData", !38, i64 0, !38, i64 1, !38, i64 2, !38, i64 3, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !40, i64 8, !40, i64 10, !41, i64 12, !38, i64 16, !38, i64 17, !38, i64 18, !90, i64 24, !91, i64 184}
!90 = !{!"ColorManagedViewSettings", !37, i64 0, !37, i64 4, !38, i64 8, !38, i64 72, !41, i64 136, !41, i64 140, !43, i64 144, !43, i64 152}
!91 = !{!"ColorManagedDisplaySettings", !38, i64 0}
!92 = !{!"QuicktimeCodecSettings", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12, !37, i64 16, !37, i64 20, !37, i64 24, !37, i64 28, !37, i64 32, !37, i64 36, !37, i64 40, !37, i64 44, !40, i64 48, !40, i64 50, !37, i64 52, !37, i64 56, !37, i64 60}
!93 = !{!"FFMpegCodecData", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12, !37, i64 16, !37, i64 20, !37, i64 24, !37, i64 28, !41, i64 32, !37, i64 36, !37, i64 40, !37, i64 44, !37, i64 48, !37, i64 52, !37, i64 56, !37, i64 60, !43, i64 64}
!94 = !{!"rctf", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!95 = !{!"rcti", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12}
!96 = !{!"BakeData", !89, i64 0, !38, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !41, i64 1280, !41, i64 1284, !38, i64 1288, !38, i64 1291, !38, i64 1292, !38, i64 1293, !38, i64 1296}
!97 = !{!"AudioData", !37, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !37, i64 16, !40, i64 20, !40, i64 22, !41, i64 24, !41, i64 28}
!98 = !{!"GameFraming", !38, i64 0, !38, i64 12, !38, i64 13, !38, i64 14, !38, i64 15}
!99 = !{!"GameData", !98, i64 0, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !40, i64 32, !38, i64 34, !100, i64 40, !40, i64 64, !40, i64 66, !41, i64 68, !101, i64 72, !41, i64 128, !41, i64 132, !37, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !40, i64 148, !40, i64 150, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !40, i64 160, !40, i64 162, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !41, i64 180}
!100 = !{!"GameDome", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !41, i64 8, !41, i64 12, !43, i64 16}
!101 = !{!"RecastData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !37, i64 40, !41, i64 44, !41, i64 48, !40, i64 52, !40, i64 54}
!102 = !{!"UnitSettings", !41, i64 0, !38, i64 4, !38, i64 5, !40, i64 6}
!103 = !{!"PhysicsSettings", !38, i64 0, !37, i64 12, !37, i64 16, !37, i64 20}
!104 = !{!"long", !38, i64 0}
!105 = !{!"ColorManagedColorspaceSettings", !38, i64 0}
!106 = !{!35, !41, i64 92}
!107 = !{!35, !41, i64 84}
!108 = !{!35, !41, i64 88}
!109 = !{!"tracking.c:min_ii"}
!110 = !{!111, !43, i64 0}
!111 = !{!"", !44, i64 0}
!112 = !{!113, !43, i64 0}
!113 = !{!"MovieTrackingTrack", !43, i64 0, !43, i64 8, !38, i64 16, !38, i64 80, !38, i64 88, !38, i64 96, !38, i64 104, !38, i64 112, !37, i64 120, !37, i64 124, !43, i64 128, !38, i64 136, !41, i64 148, !37, i64 152, !37, i64 156, !37, i64 160, !38, i64 164, !40, i64 176, !40, i64 178, !40, i64 180, !40, i64 182, !37, i64 184, !41, i64 188, !43, i64 192, !41, i64 200, !41, i64 204}
!114 = distinct !{!114, !51}
!115 = !{!113, !43, i64 128}
!116 = !{!"tracking.c:BLI_listbase_clear"}
!117 = !{!44, !43, i64 0}
!118 = !{!113, !37, i64 152}
!119 = !{!113, !37, i64 156}
!120 = !{!113, !37, i64 160}
!121 = distinct !{!121, !51}
!122 = !{i64 0, i64 8, !49, i64 8, i64 8, !49, i64 16, i64 64, !123, i64 80, i64 8, !123, i64 88, i64 8, !123, i64 96, i64 8, !123, i64 104, i64 8, !123, i64 112, i64 8, !123, i64 120, i64 4, !124, i64 124, i64 4, !124, i64 128, i64 8, !49, i64 136, i64 12, !123, i64 148, i64 4, !65, i64 152, i64 4, !124, i64 156, i64 4, !124, i64 160, i64 4, !124, i64 164, i64 12, !123, i64 176, i64 2, !125, i64 178, i64 2, !125, i64 180, i64 2, !125, i64 182, i64 2, !125, i64 184, i64 4, !124, i64 188, i64 4, !65, i64 192, i64 8, !49, i64 200, i64 4, !65, i64 204, i64 4, !65}
!123 = !{!38, !38, i64 0}
!124 = !{!37, !37, i64 0}
!125 = !{!40, !40, i64 0}
!126 = !{!"tracking.c:BLI_listbase_is_empty"}
!127 = !{!113, !43, i64 8}
!128 = !{!35, !43, i64 232}
!129 = distinct !{!129, !51}
!130 = !{!36, !40, i64 12}
!131 = !{!36, !40, i64 14}
!132 = !{!36, !40, i64 4}
!133 = !{!113, !40, i64 182}
!134 = !{!36, !41, i64 8}
!135 = !{!113, !41, i64 188}
!136 = !{!36, !40, i64 20}
!137 = !{!113, !40, i64 180}
!138 = !{!36, !40, i64 22}
!139 = !{!36, !40, i64 6}
!140 = !{!113, !37, i64 184}
!141 = !{!36, !41, i64 24}
!142 = !{!113, !41, i64 200}
!143 = !{!144, !37, i64 56}
!144 = !{!"MovieTrackingMarker", !38, i64 0, !38, i64 8, !38, i64 40, !38, i64 48, !37, i64 56, !37, i64 60}
!145 = !{!"tracking.c:negate_v2_v2"}
!146 = !{!"tracking.c:copy_v2_v2"}
!147 = !{!113, !37, i64 120}
!148 = !{i64 0, i64 8, !123, i64 8, i64 32, !123, i64 40, i64 8, !123, i64 48, i64 8, !123, i64 56, i64 4, !124, i64 60, i64 4, !124}
!149 = distinct !{!149, !51}
!150 = !{!113, !37, i64 124}
!151 = !{!144, !37, i64 60}
!152 = distinct !{!152, !51}
!153 = distinct !{!153, !51}
!154 = distinct !{!154, !51}
!155 = distinct !{!155, !51}
!156 = distinct !{!156, !51}
!157 = distinct !{!157, !51}
!158 = distinct !{!158, !51}
!159 = !{!47, !37, i64 0}
!160 = distinct !{!160, !51}
!161 = distinct !{!161, !51}
!162 = distinct !{!162, !51}
!163 = !{!"tracking.c:track_mask_gpencil_layer_get"}
!164 = !{!113, !43, i64 192}
!165 = !{!166, !37, i64 40}
!166 = !{!"bGPDlayer", !43, i64 0, !43, i64 8, !44, i64 16, !43, i64 32, !37, i64 40, !40, i64 44, !40, i64 46, !38, i64 48, !38, i64 64}
!167 = !{!168, !43, i64 16}
!168 = !{!"bGPDframe", !43, i64 0, !43, i64 8, !44, i64 16, !37, i64 32, !37, i64 36}
!169 = distinct !{!169, !51}
!170 = distinct !{!170, !51}
!171 = !{!"tracking.c:track_mask_gpencil_layer_rasterize"}
!172 = distinct !{!172, !51}
!173 = !{!174, !43, i64 16}
!174 = !{!"bGPDstroke", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !37, i64 32, !40, i64 36, !40, i64 38, !175, i64 40}
!175 = !{!"double", !38, i64 0}
!176 = !{!174, !40, i64 38}
!177 = !{!174, !37, i64 32}
!178 = !{!179, !41, i64 0}
!179 = !{!"bGPDspoint", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16}
!180 = !{!179, !41, i64 4}
!181 = distinct !{!181, !51}
!182 = distinct !{!182, !51}
!183 = distinct !{!183, !51}
!184 = distinct !{!184, !51}
!185 = distinct !{!185, !51}
!186 = distinct !{!186, !51}
!187 = distinct !{!187, !51}
!188 = distinct !{!188, !51}
!189 = distinct !{!189, !51}
!190 = distinct !{!190, !51}
!191 = distinct !{!191, !51}
!192 = !{!"tracking.c:min_ff"}
!193 = !{!"tracking.c:max_ff"}
!194 = !{!"tracking.c:sub_v2_v2v2"}
!195 = !{!"tracking.c:add_v2_v2"}
!196 = distinct !{!196, !51}
!197 = !{!198, !41, i64 120}
!198 = !{!"MovieTrackingPlaneTrack", !43, i64 0, !43, i64 8, !38, i64 16, !43, i64 80, !37, i64 88, !37, i64 92, !43, i64 96, !37, i64 104, !37, i64 108, !43, i64 112, !41, i64 120, !37, i64 124}
!199 = !{!198, !43, i64 80}
!200 = distinct !{!200, !51}
!201 = !{!198, !37, i64 88}
!202 = !{!203, !37, i64 32}
!203 = !{!"MovieTrackingPlaneMarker", !38, i64 0, !37, i64 32, !37, i64 36}
!204 = !{!203, !37, i64 36}
!205 = !{!198, !37, i64 104}
!206 = !{i64 0, i64 32, !123, i64 32, i64 4, !124, i64 36, i64 4, !124}
!207 = !{!198, !43, i64 96}
!208 = distinct !{!208, !51}
!209 = !{!198, !37, i64 124}
!210 = distinct !{!210, !51}
!211 = !{!35, !43, i64 240}
!212 = !{!198, !37, i64 108}
!213 = distinct !{!213, !51}
!214 = distinct !{!214, !51}
!215 = distinct !{!215, !51}
!216 = distinct !{!216, !51}
!217 = distinct !{!217, !51}
!218 = !{!"tracking.c:tracking_object_free"}
!219 = distinct !{!219, !51}
!220 = distinct !{!220, !51}
!221 = !{!222, !41, i64 156}
!222 = !{!"Camera", !87, i64 0, !43, i64 120, !38, i64 128, !38, i64 129, !40, i64 130, !41, i64 132, !41, i64 136, !41, i64 140, !41, i64 144, !41, i64 148, !41, i64 152, !41, i64 156, !41, i64 160, !41, i64 164, !41, i64 168, !41, i64 172, !43, i64 176, !43, i64 184, !38, i64 192, !38, i64 193}
!223 = !{!222, !38, i64 192}
!224 = !{!222, !41, i64 144}
!225 = !{!86, !37, i64 764}
!226 = !{!86, !37, i64 768}
!227 = !{!"tracking.c:reconstructed_camera_index_get"}
!228 = !{!45, !37, i64 12}
!229 = !{!230, !37, i64 0}
!230 = !{!"MovieReconstructedCamera", !37, i64 0, !41, i64 4, !38, i64 8}
!231 = !{!45, !37, i64 8}
!232 = !{!"tracking.c:reconstructed_camera_scale_set"}
!233 = !{!234, !43, i64 48}
!234 = !{!"ImBuf", !43, i64 0, !43, i64 8, !37, i64 16, !37, i64 20, !38, i64 24, !37, i64 28, !37, i64 32, !37, i64 36, !43, i64 40, !43, i64 48, !38, i64 56, !37, i64 72, !37, i64 76, !37, i64 80, !37, i64 84, !43, i64 88, !43, i64 96, !43, i64 104, !41, i64 112, !38, i64 120, !37, i64 280, !37, i64 284, !37, i64 288, !37, i64 292, !43, i64 296, !43, i64 304, !37, i64 312, !38, i64 316, !38, i64 1340, !43, i64 2368, !37, i64 2376, !43, i64 2384, !37, i64 2392, !37, i64 2396, !43, i64 2400, !43, i64 2408, !43, i64 2416, !43, i64 2424, !37, i64 2432, !95, i64 2436, !235, i64 2456}
!235 = !{!"DDSData", !37, i64 0, !37, i64 4, !43, i64 8, !37, i64 16}
!236 = !{!234, !37, i64 16}
!237 = !{!234, !37, i64 20}
!238 = !{!234, !37, i64 28}
!239 = !{!234, !43, i64 40}
!240 = !{!42, !41, i64 20}
!241 = !{!175, !175, i64 0}
!242 = !{!42, !43, i64 0}
!243 = !{!95, !37, i64 0}
!244 = !{!95, !37, i64 4}
!245 = !{!95, !37, i64 8}
!246 = !{ptr @BKE_tracking_distort_v2, ptr @BKE_tracking_undistort_v2}
!247 = !{!95, !37, i64 12}
!248 = distinct !{!248, !51}
!249 = !{!"tracking.c:disable_imbuf_channels"}
!250 = distinct !{!250, !51}
!251 = distinct !{!251, !51}
!252 = !{!234, !37, i64 292}
!253 = !{!47, !40, i64 6}
!254 = !{!47, !40, i64 4}
!255 = !{!"tracking.c:tracking_dopesheet_channels_calc"}
!256 = !{!62, !43, i64 16}
!257 = !{!45, !37, i64 0}
!258 = !{!113, !41, i64 148}
!259 = distinct !{!259, !51}
!260 = !{!"tracking.c:tracking_dopesheet_channels_sort"}
!261 = !{!"tracking.c:tracking_dopesheet_calc_coverage"}
!262 = distinct !{!262, !51}
!263 = distinct !{!263, !51}
!264 = distinct !{!264, !51}
!265 = !{i32 0, i32 3}
!266 = !{!267, !37, i64 16}
!267 = !{!"MovieTrackingDopesheetCoverageSegment", !43, i64 0, !43, i64 8, !37, i64 16, !37, i64 20, !37, i64 24, !37, i64 28}
!268 = !{!267, !37, i64 20}
!269 = !{!267, !37, i64 24}
!270 = distinct !{!270, !51}
!271 = !{!"tracking.c:tracking_dopesheet_channels_segments_calc"}
!272 = !{!62, !37, i64 92}
!273 = !{!62, !37, i64 104}
!274 = !{!62, !37, i64 108}
!275 = distinct !{!275, !51}
!276 = distinct !{!276, !51}
!277 = distinct !{!277, !51}
!278 = distinct !{!278, !51}
!279 = !{!"tracking.c:max_ii"}
!280 = !{!"tracking.c:channels_alpha_inverse_sort"}
!281 = !{i32 0, i32 2}
!282 = !{!"tracking.c:channels_longest_segment_inverse_sort"}
!283 = !{!"tracking.c:channels_total_track_inverse_sort"}
!284 = !{!"tracking.c:channels_average_error_inverse_sort"}
!285 = !{!"tracking.c:channels_alpha_sort"}
!286 = !{!"tracking.c:channels_longest_segment_sort"}
!287 = !{!"tracking.c:channels_total_track_sort"}
!288 = !{!"tracking.c:channels_average_error_sort"}
!289 = !{!"tracking.c:coverage_from_count"}
