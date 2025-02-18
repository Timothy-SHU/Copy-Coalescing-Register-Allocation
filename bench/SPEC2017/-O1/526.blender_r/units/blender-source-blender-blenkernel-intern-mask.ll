; ModuleID = 'blender/source/blender/blenkernel/intern/mask.c'
source_filename = "blender/source/blender/blenkernel/intern/mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon = type { %struct.ListBase, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.MaskSpline = type { ptr, ptr, i16, i8, i8, i32, ptr, %struct.MaskParent, ptr }
%struct.MaskParent = type { i32, i32, ptr, [64 x i8], [64 x i8], [2 x float], [4 x [2 x float]] }
%struct.MaskSplinePoint = type { %struct.BezTriple, i32, i32, ptr, %struct.MaskParent }
%struct.BezTriple = type { [3 x [3 x float]], float, float, float, i8, i8, i8, i8, i8, i8, i8, i8, float, float, float, [4 x i8] }
%struct.MaskLayer = type { ptr, ptr, [64 x i8], %struct.ListBase, %struct.ListBase, ptr, ptr, float, i8, i8, i8, [7 x i8], i8, i8 }
%struct.Mask = type { %struct.ID, ptr, %struct.ListBase, i32, i32, i32, i32, i32, i32 }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.MaskLayerShape = type { ptr, ptr, ptr, i32, i32, i8, [7 x i8] }
%struct.MaskSplinePointUW = type { float, float, i32 }
%struct.MaskLayerShapeElem = type { [8 x float] }
%struct.SeqIterator = type { ptr, i32, i32, ptr, i32 }
%struct.NodeTreeIterStore = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.bScreen = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.SpaceLink = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16] }
%struct.SpaceClip = type { ptr, ptr, %struct.ListBase, i32, float, float, float, float, float, %struct.MovieClipUser, ptr, %struct.MovieClipScopes, i32, i16, i16, i32, [2 x float], float, float, i32, [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i32, i32, [2 x float], %struct.MaskSpaceInfo }
%struct.MovieClipUser = type { i32, i16, i16 }
%struct.MovieClipScopes = type { i16, i16, i32, i32, i32, %struct.MovieTrackingMarker, ptr, ptr, [2 x float], i16, i16, i32, ptr, ptr, [2 x float] }
%struct.MovieTrackingMarker = type { [2 x float], [4 x [2 x float]], [2 x float], [2 x float], i32, i32 }
%struct.MaskSpaceInfo = type { ptr, i8, i8, i8, [5 x i8] }
%struct.SpaceImage = type { ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.ImageUser, ptr, %struct.Scopes, %struct.Histogram, ptr, [2 x float], float, float, float, float, float, i8, i8, i16, i16, i16, i8, i8, i8, i8, %struct.MaskSpaceInfo }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.Scopes = type { i32, i32, i32, float, i32, float, float, i32, float, i32, [3 x [2 x float]], %struct.Histogram, ptr, ptr, ptr, ptr, i32, i32 }
%struct.Histogram = type { i32, i32, [256 x float], [256 x float], [256 x float], [256 x float], [256 x float], float, float, i16, i16, i32, [2 x [2 x float]] }
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
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
%struct.Sequence = type { ptr, ptr, ptr, ptr, [64 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, i16, i16, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, float, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, float, float, float, float, ptr, i32, i32, i32, float, i32, i8, [3 x i8], %struct.ListBase }
%struct.MovieClip = type { %struct.ID, ptr, [1024 x i8], i32, i32, [2 x i32], float, float, ptr, ptr, ptr, %struct.MovieTracking, ptr, %struct.MovieClipProxy, i32, i32, i32, i32, %struct.ColorManagedColorspaceSettings }
%struct.MovieTracking = type { %struct.MovieTrackingSettings, %struct.MovieTrackingCamera, %struct.ListBase, %struct.ListBase, %struct.MovieTrackingReconstruction, %struct.MovieTrackingStabilization, ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.MovieTrackingDopesheet }
%struct.MovieTrackingSettings = type { i32, i16, i16, float, i16, i16, i16, i16, i16, i16, float, i16, i16, i32, i32, i32, i16, i16, float, i32, i32, float, float, i32 }
%struct.MovieTrackingCamera = type { ptr, i16, i16, float, float, float, i16, i16, [2 x float], float, float, float, float, float }
%struct.MovieTrackingReconstruction = type { i32, float, i32, i32, ptr }
%struct.MovieTrackingStabilization = type { i32, i32, i32, float, ptr, float, float, float, i32, i32, float }
%struct.MovieTrackingDopesheet = type { i32, i16, i16, %struct.ListBase, %struct.ListBase, i32, i32 }
%struct.MovieClipProxy = type { [768 x i8], i16, i16, i16, i16 }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@__func__.BKE_mask_layer_new = private unnamed_addr constant [19 x i8] c"BKE_mask_layer_new\00", align 1
@.str = private unnamed_addr constant [10 x i8] c"MaskLayer\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"new mask layer\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"new mask layer shape\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"new mask spline\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"new mask spline point\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [14 x i8] c"mask point uw\00", align 1
@MEM_reallocN_id = external local_unnamed_addr global ptr, align 8
@__func__.BKE_mask_point_add_uw = private unnamed_addr constant [22 x i8] c"BKE_mask_point_add_uw\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"Mask\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [11 x i8] c"new spline\00", align 1
@__func__.BKE_mask_layer_shape_alloc = private unnamed_addr constant [27 x i8] c"BKE_mask_layer_shape_alloc\00", align 1
@MEM_allocN_len = external local_unnamed_addr global ptr, align 8
@__func__.BKE_mask_spline_ensure_deform = private unnamed_addr constant [30 x i8] c"BKE_mask_spline_ensure_deform\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"%s: vert mismatch %d != %d (frame %d)\0A\00", align 1
@__func__.BKE_mask_layer_shape_from_mask = private unnamed_addr constant [31 x i8] c"BKE_mask_layer_shape_from_mask\00", align 1
@__func__.BKE_mask_layer_shape_to_mask = private unnamed_addr constant [29 x i8] c"BKE_mask_layer_shape_to_mask\00", align 1
@.str.9 = private unnamed_addr constant [50 x i8] c"%s: vert mismatch %d != %d != %d (frame %d - %d)\0A\00", align 1
@__func__.BKE_mask_layer_shape_to_mask_interp = private unnamed_addr constant [36 x i8] c"BKE_mask_layer_shape_to_mask_interp\00", align 1
@__func__.BKE_mask_layer_shape_changed_add = private unnamed_addr constant [33 x i8] c"BKE_mask_layer_shape_changed_add\00", align 1
@__func__.BKE_mask_layer_shape_changed_remove = private unnamed_addr constant [36 x i8] c"BKE_mask_layer_shape_changed_remove\00", align 1
@mask_clipboard = internal global %struct.anon zeroinitializer, align 8
@.str.10 = private unnamed_addr constant [23 x i8] c"mask clipboard ID hash\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"mask clipboard ID name\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @BKE_mask_spline_point_next_bezt(ptr nocapture noundef readonly %0, ptr noundef readnone %1, ptr noundef readnone %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !34
  %6 = sext i32 %5 to i64
  %7 = getelementptr %struct.MaskSplinePoint, ptr %1, i64 %6
  %8 = getelementptr %struct.MaskSplinePoint, ptr %7, i64 -1
  %9 = icmp eq ptr %8, %2
  br i1 %9, label %10, label %16

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 2
  %12 = load i16, ptr %11, align 8, !tbaa !42
  %13 = and i16 %12, 2
  %14 = icmp eq i16 %13, 0
  %15 = select i1 %14, ptr null, ptr %1
  br label %18

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.MaskSplinePoint, ptr %2, i64 1
  br label %18

18:                                               ; preds = %10, %16
  %19 = phi ptr [ %17, %16 ], [ %15, %10 ]
  ret ptr %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @BKE_mask_spline_point_array(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !44
  br label %8

8:                                                ; preds = %1, %5
  %9 = phi ptr [ %7, %5 ], [ %3, %1 ]
  ret ptr %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @BKE_mask_spline_point_array_from_point(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !44
  %5 = icmp ugt ptr %4, %1
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 5
  %8 = load i32, ptr %7, align 4, !tbaa !34
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.MaskSplinePoint, ptr %4, i64 %9
  %11 = icmp ugt ptr %10, %1
  br i1 %11, label %23, label %12

12:                                               ; preds = %6, %2
  %13 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 8
  %14 = load ptr, ptr %13, align 8, !tbaa !43
  %15 = icmp ugt ptr %14, %1
  br i1 %15, label %22, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 5
  %18 = load i32, ptr %17, align 4, !tbaa !34
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.MaskSplinePoint, ptr %14, i64 %19
  %21 = icmp ugt ptr %20, %1
  br i1 %21, label %23, label %22

22:                                               ; preds = %16, %12
  br label %23

23:                                               ; preds = %16, %6, %22
  %24 = phi ptr [ null, %22 ], [ %4, %6 ], [ %14, %16 ]
  ret ptr %24
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_mask_layer_new(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %4 = tail call ptr %3(i64 noundef 144, ptr noundef nonnull @__func__.BKE_mask_layer_new) #21
  %5 = icmp eq ptr %1, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = load i8, ptr %1, align 1, !tbaa !46
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.MaskLayer, ptr %4, i64 0, i32 2
  %11 = tail call ptr @BLI_strncpy(ptr noundef nonnull %10, ptr noundef nonnull %1, i64 noundef 64) #21
  br label %14

12:                                               ; preds = %6, %2
  %13 = getelementptr inbounds %struct.MaskLayer, ptr %4, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %13, ptr noundef nonnull align 1 dereferenceable(10) @.str, i64 10, i1 false) #21
  br label %14

14:                                               ; preds = %12, %9
  %15 = getelementptr inbounds %struct.Mask, ptr %0, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %15, ptr noundef %4) #21
  tail call void @BLI_uniquename(ptr noundef nonnull %15, ptr noundef %4, ptr noundef nonnull @.str, i8 noundef zeroext 46, i32 noundef 16, i32 noundef 64) #21
  %16 = getelementptr inbounds %struct.Mask, ptr %0, i64 0, i32 4
  %17 = load i32, ptr %16, align 4, !tbaa !47
  %18 = add nsw i32 %17, 1
  store i32 %18, ptr %16, align 4, !tbaa !47
  %19 = getelementptr inbounds %struct.MaskLayer, ptr %4, i64 0, i32 8
  store i8 7, ptr %19, align 4, !tbaa !51
  %20 = getelementptr inbounds %struct.MaskLayer, ptr %4, i64 0, i32 7
  store float 1.000000e+00, ptr %20, align 8, !tbaa !54
  %21 = getelementptr inbounds %struct.MaskLayer, ptr %4, i64 0, i32 12
  store i8 -64, ptr %21, align 2, !tbaa !55
  ret ptr %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #4

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mask_layer_unique_name(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.Mask, ptr %0, i64 0, i32 2
  tail call void @BLI_uniquename(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str, i8 noundef zeroext 46, i32 noundef 16, i32 noundef 64) #21
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_mask_layer_active(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.Mask, ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %struct.Mask, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !56
  %5 = tail call ptr @BLI_findlink(ptr noundef nonnull %2, i32 noundef %4) #21
  ret ptr %5
}

declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mask_layer_active_set(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.Mask, ptr %0, i64 0, i32 2
  %4 = tail call i32 @BLI_findindex(ptr noundef nonnull %3, ptr noundef %1) #21
  %5 = getelementptr inbounds %struct.Mask, ptr %0, i64 0, i32 3
  store i32 %4, ptr %5, align 8, !tbaa !56
  ret void
}

declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mask_layer_remove(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.Mask, ptr %0, i64 0, i32 2
  tail call void @BLI_remlink(ptr noundef nonnull %3, ptr noundef %1) #21
  tail call void @BKE_mask_layer_free(ptr noundef %1)
  %4 = getelementptr inbounds %struct.Mask, ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !47
  %6 = add nsw i32 %5, -1
  store i32 %6, ptr %4, align 4, !tbaa !47
  %7 = getelementptr inbounds %struct.Mask, ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !56
  %9 = icmp slt i32 %8, %6
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = add nsw i32 %5, -2
  store i32 %11, ptr %7, align 8, !tbaa !56
  br label %12

12:                                               ; preds = %10, %2
  ret void
}

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mask_layer_free(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !57
  %4 = icmp eq ptr %3, null
  br i1 %4, label %48, label %5

5:                                                ; preds = %1, %45
  %6 = phi ptr [ %7, %45 ], [ %3, %1 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !58
  tail call void @BLI_remlink(ptr noundef nonnull %2, ptr noundef nonnull %6) #21
  %8 = getelementptr inbounds %struct.MaskSpline, ptr %6, i64 0, i32 5
  %9 = load i32, ptr %8, align 4, !tbaa !34
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %36

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.MaskSpline, ptr %6, i64 0, i32 6
  %13 = getelementptr inbounds %struct.MaskSpline, ptr %6, i64 0, i32 8
  br label %14

14:                                               ; preds = %31, %11
  %15 = phi i64 [ 0, %11 ], [ %32, %31 ]
  %16 = load ptr, ptr %12, align 8, !tbaa !44
  %17 = getelementptr inbounds %struct.MaskSplinePoint, ptr %16, i64 %15, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !59
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %14
  %21 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %21(ptr noundef nonnull %18) #21
  br label %22

22:                                               ; preds = %20, %14
  %23 = load ptr, ptr %13, align 8, !tbaa !43
  %24 = icmp eq ptr %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.MaskSplinePoint, ptr %23, i64 %15, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !59
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %30(ptr noundef nonnull %27) #21
  br label %31

31:                                               ; preds = %29, %25, %22
  %32 = add nuw nsw i64 %15, 1
  %33 = load i32, ptr %8, align 4, !tbaa !34
  %34 = sext i32 %33 to i64
  %35 = icmp slt i64 %32, %34
  br i1 %35, label %14, label %36, !llvm.loop !62

36:                                               ; preds = %31, %5
  %37 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %38 = getelementptr inbounds %struct.MaskSpline, ptr %6, i64 0, i32 6
  %39 = load ptr, ptr %38, align 8, !tbaa !44
  tail call void %37(ptr noundef %39) #21
  %40 = getelementptr inbounds %struct.MaskSpline, ptr %6, i64 0, i32 8
  %41 = load ptr, ptr %40, align 8, !tbaa !43
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %36
  %44 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %44(ptr noundef nonnull %41) #21
  br label %45

45:                                               ; preds = %36, %43
  %46 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %46(ptr noundef nonnull %6) #21
  %47 = icmp eq ptr %7, null
  br i1 %47, label %48, label %5, !llvm.loop !65

48:                                               ; preds = %45, %1
  %49 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 4
  %50 = load ptr, ptr %49, align 8, !tbaa !66
  %51 = icmp eq ptr %50, null
  br i1 %51, label %63, label %52

52:                                               ; preds = %48, %60
  %53 = phi ptr [ %54, %60 ], [ %50, %48 ]
  %54 = load ptr, ptr %53, align 8, !tbaa !67
  tail call void @BLI_remlink(ptr noundef nonnull %49, ptr noundef nonnull %53) #21
  %55 = getelementptr inbounds %struct.MaskLayerShape, ptr %53, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !69
  %57 = icmp eq ptr %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %52
  %59 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %59(ptr noundef nonnull %56) #21
  br label %60

60:                                               ; preds = %58, %52
  %61 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %61(ptr noundef nonnull %53) #21
  %62 = icmp eq ptr %54, null
  br i1 %62, label %63, label %52, !llvm.loop !70

63:                                               ; preds = %60, %48
  %64 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %64(ptr noundef %0) #21
  ret void
}

declare void @BLI_uniquename(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_mask_layer_copy(ptr noundef %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %3 = tail call ptr %2(i64 noundef 144, ptr noundef nonnull @.str.1) #21
  %4 = getelementptr inbounds %struct.MaskLayer, ptr %3, i64 0, i32 2
  %5 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 2
  %6 = tail call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef nonnull %5, i64 noundef 64) #21
  %7 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 7
  %8 = load float, ptr %7, align 8, !tbaa !54
  %9 = getelementptr inbounds %struct.MaskLayer, ptr %3, i64 0, i32 7
  store float %8, ptr %9, align 8, !tbaa !54
  %10 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 8
  %11 = load i8, ptr %10, align 4, !tbaa !51
  %12 = getelementptr inbounds %struct.MaskLayer, ptr %3, i64 0, i32 8
  store i8 %11, ptr %12, align 4, !tbaa !51
  %13 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 9
  %14 = load i8, ptr %13, align 1, !tbaa !71
  %15 = getelementptr inbounds %struct.MaskLayer, ptr %3, i64 0, i32 9
  store i8 %14, ptr %15, align 1, !tbaa !71
  %16 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 12
  %17 = load i8, ptr %16, align 2, !tbaa !55
  %18 = getelementptr inbounds %struct.MaskLayer, ptr %3, i64 0, i32 12
  store i8 %17, ptr %18, align 2, !tbaa !55
  %19 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 13
  %20 = load i8, ptr %19, align 1, !tbaa !72
  %21 = getelementptr inbounds %struct.MaskLayer, ptr %3, i64 0, i32 13
  store i8 %20, ptr %21, align 1, !tbaa !72
  %22 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !45
  %24 = icmp eq ptr %23, null
  br i1 %24, label %79, label %25

25:                                               ; preds = %1
  %26 = getelementptr inbounds %struct.MaskLayer, ptr %3, i64 0, i32 3
  br label %27

27:                                               ; preds = %25, %76
  %28 = phi ptr [ %23, %25 ], [ %77, %76 ]
  %29 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %30 = tail call ptr %29(i64 noundef 224, ptr noundef nonnull @.str.7) #21
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %30, ptr noundef nonnull align 8 dereferenceable(224) %28, i64 224, i1 false), !tbaa.struct !73
  %31 = getelementptr inbounds %struct.MaskSpline, ptr %30, i64 0, i32 8
  store ptr null, ptr %31, align 8, !tbaa !43
  %32 = getelementptr inbounds %struct.MaskSpline, ptr %28, i64 0, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !44
  %34 = getelementptr inbounds %struct.MaskSpline, ptr %28, i64 0, i32 5
  %35 = load i32, ptr %34, align 4, !tbaa !34
  %36 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !45
  %37 = tail call ptr %36(ptr noundef %33) #21
  %38 = icmp sgt i32 %35, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %27
  %40 = zext nneg i32 %35 to i64
  br label %41

41:                                               ; preds = %49, %39
  %42 = phi i64 [ 0, %39 ], [ %50, %49 ]
  %43 = getelementptr inbounds %struct.MaskSplinePoint, ptr %37, i64 %42, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !59
  %45 = icmp eq ptr %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  %47 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !45
  %48 = tail call ptr %47(ptr noundef nonnull %44) #21
  store ptr %48, ptr %43, align 8, !tbaa !59
  br label %49

49:                                               ; preds = %46, %41
  %50 = add nuw nsw i64 %42, 1
  %51 = icmp eq i64 %50, %40
  br i1 %51, label %52, label %41, !llvm.loop !76

52:                                               ; preds = %49, %27
  %53 = getelementptr inbounds %struct.MaskSpline, ptr %30, i64 0, i32 6
  store ptr %37, ptr %53, align 8, !tbaa !44
  %54 = getelementptr inbounds %struct.MaskSpline, ptr %28, i64 0, i32 8
  %55 = load ptr, ptr %54, align 8, !tbaa !43
  %56 = icmp eq ptr %55, null
  br i1 %56, label %76, label %57

57:                                               ; preds = %52
  %58 = load i32, ptr %34, align 4, !tbaa !34
  %59 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !45
  %60 = tail call ptr %59(ptr noundef nonnull %55) #21
  %61 = icmp sgt i32 %58, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %57
  %63 = zext nneg i32 %58 to i64
  br label %64

64:                                               ; preds = %72, %62
  %65 = phi i64 [ 0, %62 ], [ %73, %72 ]
  %66 = getelementptr inbounds %struct.MaskSplinePoint, ptr %60, i64 %65, i32 3
  %67 = load ptr, ptr %66, align 8, !tbaa !59
  %68 = icmp eq ptr %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %64
  %70 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !45
  %71 = tail call ptr %70(ptr noundef nonnull %67) #21
  store ptr %71, ptr %66, align 8, !tbaa !59
  br label %72

72:                                               ; preds = %69, %64
  %73 = add nuw nsw i64 %65, 1
  %74 = icmp eq i64 %73, %63
  br i1 %74, label %75, label %64, !llvm.loop !76

75:                                               ; preds = %72, %57
  store ptr %60, ptr %31, align 8, !tbaa !43
  br label %76

76:                                               ; preds = %52, %75
  tail call void @BLI_addtail(ptr noundef nonnull %26, ptr noundef %30) #21
  %77 = load ptr, ptr %28, align 8, !tbaa !45
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %27, !llvm.loop !77

79:                                               ; preds = %76, %1
  %80 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 4
  %81 = load ptr, ptr %80, align 8, !tbaa !66
  %82 = icmp eq ptr %81, null
  br i1 %82, label %105, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.MaskLayer, ptr %3, i64 0, i32 4
  br label %85

85:                                               ; preds = %83, %85
  %86 = phi ptr [ %81, %83 ], [ %103, %85 ]
  %87 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %88 = tail call ptr %87(i64 noundef 40, ptr noundef nonnull @.str.2) #21
  %89 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !45
  %90 = getelementptr inbounds %struct.MaskLayerShape, ptr %86, i64 0, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !69
  %92 = tail call ptr %89(ptr noundef %91) #21
  %93 = getelementptr inbounds %struct.MaskLayerShape, ptr %88, i64 0, i32 2
  store ptr %92, ptr %93, align 8, !tbaa !69
  %94 = getelementptr inbounds %struct.MaskLayerShape, ptr %86, i64 0, i32 3
  %95 = load i32, ptr %94, align 8, !tbaa !78
  %96 = getelementptr inbounds %struct.MaskLayerShape, ptr %88, i64 0, i32 3
  store i32 %95, ptr %96, align 8, !tbaa !78
  %97 = getelementptr inbounds %struct.MaskLayerShape, ptr %86, i64 0, i32 5
  %98 = load i8, ptr %97, align 8, !tbaa !79
  %99 = getelementptr inbounds %struct.MaskLayerShape, ptr %88, i64 0, i32 5
  store i8 %98, ptr %99, align 8, !tbaa !79
  %100 = getelementptr inbounds %struct.MaskLayerShape, ptr %86, i64 0, i32 4
  %101 = load i32, ptr %100, align 4, !tbaa !80
  %102 = getelementptr inbounds %struct.MaskLayerShape, ptr %88, i64 0, i32 4
  store i32 %101, ptr %102, align 4, !tbaa !80
  tail call void @BLI_addtail(ptr noundef nonnull %84, ptr noundef %88) #21
  %103 = load ptr, ptr %86, align 8, !tbaa !67
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %85, !llvm.loop !81

105:                                              ; preds = %85, %79
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @BKE_mask_spline_copy(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %3 = tail call ptr %2(i64 noundef 224, ptr noundef nonnull @.str.7) #21
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %3, ptr noundef nonnull align 8 dereferenceable(224) %0, i64 224, i1 false), !tbaa.struct !73
  %4 = getelementptr inbounds %struct.MaskSpline, ptr %3, i64 0, i32 8
  store ptr null, ptr %4, align 8, !tbaa !43
  %5 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !44
  %7 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 5
  %8 = load i32, ptr %7, align 4, !tbaa !34
  %9 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !45
  %10 = tail call ptr %9(ptr noundef %6) #21
  %11 = icmp sgt i32 %8, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %1
  %13 = zext nneg i32 %8 to i64
  br label %14

14:                                               ; preds = %12, %22
  %15 = phi i64 [ 0, %12 ], [ %23, %22 ]
  %16 = getelementptr inbounds %struct.MaskSplinePoint, ptr %10, i64 %15, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !59
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !45
  %21 = tail call ptr %20(ptr noundef nonnull %17) #21
  store ptr %21, ptr %16, align 8, !tbaa !59
  br label %22

22:                                               ; preds = %19, %14
  %23 = add nuw nsw i64 %15, 1
  %24 = icmp eq i64 %23, %13
  br i1 %24, label %25, label %14, !llvm.loop !76

25:                                               ; preds = %22, %1
  %26 = getelementptr inbounds %struct.MaskSpline, ptr %3, i64 0, i32 6
  store ptr %10, ptr %26, align 8, !tbaa !44
  %27 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 8
  %28 = load ptr, ptr %27, align 8, !tbaa !43
  %29 = icmp eq ptr %28, null
  br i1 %29, label %49, label %30

30:                                               ; preds = %25
  %31 = load i32, ptr %7, align 4, !tbaa !34
  %32 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !45
  %33 = tail call ptr %32(ptr noundef nonnull %28) #21
  %34 = icmp sgt i32 %31, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %30
  %36 = zext nneg i32 %31 to i64
  br label %37

37:                                               ; preds = %35, %45
  %38 = phi i64 [ 0, %35 ], [ %46, %45 ]
  %39 = getelementptr inbounds %struct.MaskSplinePoint, ptr %33, i64 %38, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !59
  %41 = icmp eq ptr %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !45
  %44 = tail call ptr %43(ptr noundef nonnull %40) #21
  store ptr %44, ptr %39, align 8, !tbaa !59
  br label %45

45:                                               ; preds = %42, %37
  %46 = add nuw nsw i64 %38, 1
  %47 = icmp eq i64 %46, %36
  br i1 %47, label %48, label %37, !llvm.loop !76

48:                                               ; preds = %45, %30
  store ptr %33, ptr %4, align 8, !tbaa !43
  br label %49

49:                                               ; preds = %48, %25
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mask_layer_copy_list(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  %3 = load ptr, ptr %1, align 8, !tbaa !45
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2, %5
  %6 = phi ptr [ %8, %5 ], [ %3, %2 ]
  %7 = tail call ptr @BKE_mask_layer_copy(ptr noundef nonnull %6)
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef %7) #21
  %8 = load ptr, ptr %6, align 8, !tbaa !45
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %5, !llvm.loop !82

10:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @BKE_mask_spline_add(ptr noundef %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %3 = tail call ptr %2(i64 noundef 224, ptr noundef nonnull @.str.3) #21
  %4 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 3
  tail call void @BLI_addtail(ptr noundef nonnull %4, ptr noundef %3) #21
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %6 = tail call ptr %5(i64 noundef 272, ptr noundef nonnull @.str.4) #21
  %7 = getelementptr inbounds %struct.MaskSpline, ptr %3, i64 0, i32 6
  store ptr %6, ptr %7, align 8, !tbaa !44
  %8 = getelementptr inbounds %struct.MaskSpline, ptr %3, i64 0, i32 5
  store i32 1, ptr %8, align 4, !tbaa !34
  %9 = getelementptr inbounds %struct.MaskSpline, ptr %3, i64 0, i32 4
  store i8 2, ptr %9, align 1, !tbaa !83
  %10 = getelementptr inbounds %struct.MaskSpline, ptr %3, i64 0, i32 7
  store i32 17229, ptr %10, align 8, !tbaa !84
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @BKE_mask_parent_init(ptr nocapture noundef writeonly %0) local_unnamed_addr #5 {
  store i32 17229, ptr %0, align 8, !tbaa !84
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @BKE_mask_spline_remove(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 3
  %4 = tail call zeroext i8 @BLI_remlink_safe(ptr noundef nonnull %3, ptr noundef %1) #21
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %46, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.MaskSpline, ptr %1, i64 0, i32 5
  %8 = load i32, ptr %7, align 4, !tbaa !34
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %35

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.MaskSpline, ptr %1, i64 0, i32 6
  %12 = getelementptr inbounds %struct.MaskSpline, ptr %1, i64 0, i32 8
  br label %13

13:                                               ; preds = %30, %10
  %14 = phi i64 [ 0, %10 ], [ %31, %30 ]
  %15 = load ptr, ptr %11, align 8, !tbaa !44
  %16 = getelementptr inbounds %struct.MaskSplinePoint, ptr %15, i64 %14, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !59
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %13
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %20(ptr noundef nonnull %17) #21
  br label %21

21:                                               ; preds = %19, %13
  %22 = load ptr, ptr %12, align 8, !tbaa !43
  %23 = icmp eq ptr %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.MaskSplinePoint, ptr %22, i64 %14, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !59
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %29(ptr noundef nonnull %26) #21
  br label %30

30:                                               ; preds = %28, %24, %21
  %31 = add nuw nsw i64 %14, 1
  %32 = load i32, ptr %7, align 4, !tbaa !34
  %33 = sext i32 %32 to i64
  %34 = icmp slt i64 %31, %33
  br i1 %34, label %13, label %35, !llvm.loop !62

35:                                               ; preds = %30, %6
  %36 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %37 = getelementptr inbounds %struct.MaskSpline, ptr %1, i64 0, i32 6
  %38 = load ptr, ptr %37, align 8, !tbaa !44
  tail call void %36(ptr noundef %38) #21
  %39 = getelementptr inbounds %struct.MaskSpline, ptr %1, i64 0, i32 8
  %40 = load ptr, ptr %39, align 8, !tbaa !43
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %35
  %43 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %43(ptr noundef nonnull %40) #21
  br label %44

44:                                               ; preds = %35, %42
  %45 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %45(ptr noundef %1) #21
  br label %46

46:                                               ; preds = %2, %44
  %47 = phi i8 [ 1, %44 ], [ 0, %2 ]
  ret i8 %47
}

declare zeroext i8 @BLI_remlink_safe(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mask_spline_free(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 4, !tbaa !34
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %30

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 6
  %7 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 8
  br label %8

8:                                                ; preds = %5, %25
  %9 = phi i64 [ 0, %5 ], [ %26, %25 ]
  %10 = load ptr, ptr %6, align 8, !tbaa !44
  %11 = getelementptr inbounds %struct.MaskSplinePoint, ptr %10, i64 %9, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !59
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %15(ptr noundef nonnull %12) #21
  br label %16

16:                                               ; preds = %8, %14
  %17 = load ptr, ptr %7, align 8, !tbaa !43
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.MaskSplinePoint, ptr %17, i64 %9, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !59
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %24(ptr noundef nonnull %21) #21
  br label %25

25:                                               ; preds = %23, %19, %16
  %26 = add nuw nsw i64 %9, 1
  %27 = load i32, ptr %2, align 4, !tbaa !34
  %28 = sext i32 %27 to i64
  %29 = icmp slt i64 %26, %28
  br i1 %29, label %8, label %30, !llvm.loop !62

30:                                               ; preds = %25, %1
  %31 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %32 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !44
  tail call void %31(ptr noundef %33) #21
  %34 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 8
  %35 = load ptr, ptr %34, align 8, !tbaa !43
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %30
  %38 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %38(ptr noundef nonnull %35) #21
  br label %39

39:                                               ; preds = %37, %30
  %40 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %40(ptr noundef %0) #21
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_mask_point_direction_switch(ptr nocapture noundef %0) local_unnamed_addr #6 {
  %2 = alloca %struct.MaskSplinePointUW, align 4
  %3 = getelementptr inbounds %struct.MaskSplinePoint, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !85
  %5 = load float, ptr %0, align 4, !tbaa !86
  %6 = getelementptr inbounds float, ptr %0, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !86
  %8 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !86
  store float %9, ptr %0, align 4, !tbaa !86
  %10 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !86
  store float %11, ptr %6, align 4, !tbaa !86
  store float %5, ptr %8, align 4, !tbaa !86
  store float %7, ptr %10, align 4, !tbaa !86
  %12 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 7
  %13 = load i8, ptr %12, align 1, !tbaa !87
  %14 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 9
  %15 = load i8, ptr %14, align 1, !tbaa !88
  store i8 %15, ptr %12, align 1, !tbaa !87
  store i8 %13, ptr %14, align 1, !tbaa !88
  %16 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 5
  %17 = load i8, ptr %16, align 1, !tbaa !89
  %18 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 6
  %19 = load i8, ptr %18, align 2, !tbaa !90
  store i8 %19, ptr %16, align 1, !tbaa !89
  store i8 %17, ptr %18, align 2, !tbaa !90
  %20 = icmp sgt i32 %4, 1
  br i1 %20, label %21, label %34

21:                                               ; preds = %1
  %22 = lshr i32 %4, 1
  %23 = getelementptr inbounds %struct.MaskSplinePoint, ptr %0, i64 0, i32 3
  %24 = zext nneg i32 %4 to i64
  %25 = zext nneg i32 %22 to i64
  br label %26

26:                                               ; preds = %21, %26
  %27 = phi i64 [ 0, %21 ], [ %30, %26 ]
  %28 = load ptr, ptr %23, align 8, !tbaa !59
  %29 = getelementptr inbounds %struct.MaskSplinePointUW, ptr %28, i64 %27
  %30 = add nuw nsw i64 %27, 1
  %31 = sub nsw i64 %24, %30
  %32 = getelementptr inbounds %struct.MaskSplinePointUW, ptr %28, i64 %31
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %29, i64 12, i1 false), !tbaa.struct !91
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %29, ptr noundef nonnull align 4 dereferenceable(12) %32, i64 12, i1 false), !tbaa.struct !91
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %32, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false), !tbaa.struct !91
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2)
  %33 = icmp eq i64 %30, %25
  br i1 %33, label %34, label %26, !llvm.loop !92

34:                                               ; preds = %26, %1
  %35 = icmp sgt i32 %4, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.MaskSplinePoint, ptr %0, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !59
  %39 = zext nneg i32 %4 to i64
  br label %40

40:                                               ; preds = %36, %40
  %41 = phi i64 [ 0, %36 ], [ %45, %40 ]
  %42 = getelementptr inbounds %struct.MaskSplinePointUW, ptr %38, i64 %41
  %43 = load float, ptr %42, align 4, !tbaa !93
  %44 = fsub float 1.000000e+00, %43
  store float %44, ptr %42, align 4, !tbaa !93
  %45 = add nuw nsw i64 %41, 1
  %46 = icmp eq i64 %45, %39
  br i1 %46, label %47, label %40, !llvm.loop !95

47:                                               ; preds = %40, %34
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_mask_spline_direction_switch(ptr nocapture noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #6 {
  %3 = alloca %struct.MaskSplinePointUW, align 4
  %4 = alloca %struct.MaskSplinePoint, align 8
  %5 = alloca [8 x float], align 4
  %6 = getelementptr inbounds %struct.MaskSpline, ptr %1, i64 0, i32 5
  %7 = load i32, ptr %6, align 4, !tbaa !34
  %8 = sdiv i32 %7, 2
  %9 = icmp slt i32 %7, 2
  br i1 %9, label %137, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.MaskSpline, ptr %1, i64 0, i32 6
  %12 = zext nneg i32 %7 to i64
  %13 = zext nneg i32 %8 to i64
  br label %14

14:                                               ; preds = %10, %14
  %15 = phi i64 [ 0, %10 ], [ %18, %14 ]
  %16 = load ptr, ptr %11, align 8, !tbaa !44
  %17 = getelementptr inbounds %struct.MaskSplinePoint, ptr %16, i64 %15
  %18 = add nuw nsw i64 %15, 1
  %19 = sub nsw i64 %12, %18
  %20 = getelementptr inbounds %struct.MaskSplinePoint, ptr %16, i64 %19
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %4, ptr noundef nonnull align 8 dereferenceable(272) %17, i64 272, i1 false), !tbaa.struct !96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %17, ptr noundef nonnull align 8 dereferenceable(272) %20, i64 272, i1 false), !tbaa.struct !96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %20, ptr noundef nonnull align 8 dereferenceable(272) %4, i64 272, i1 false), !tbaa.struct !96
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %4)
  %21 = icmp eq i64 %18, %13
  br i1 %21, label %22, label %14, !llvm.loop !97

22:                                               ; preds = %14
  %23 = add nsw i32 %7, -1
  %24 = getelementptr inbounds %struct.MaskSpline, ptr %1, i64 0, i32 6
  %25 = tail call i32 @llvm.smax.i32(i32 %7, i32 1)
  %26 = zext nneg i32 %25 to i64
  br label %27

27:                                               ; preds = %22, %76
  %28 = phi i64 [ 0, %22 ], [ %87, %76 ]
  %29 = phi i32 [ %23, %22 ], [ %88, %76 ]
  %30 = load ptr, ptr %24, align 8, !tbaa !44
  %31 = getelementptr inbounds %struct.MaskSplinePoint, ptr %30, i64 %28
  %32 = getelementptr inbounds %struct.MaskSplinePoint, ptr %30, i64 %28, i32 2
  %33 = load i32, ptr %32, align 4, !tbaa !85
  %34 = load float, ptr %31, align 4, !tbaa !86
  %35 = getelementptr inbounds float, ptr %31, i64 1
  %36 = load float, ptr %35, align 4, !tbaa !86
  %37 = getelementptr inbounds [3 x [3 x float]], ptr %31, i64 0, i64 2
  %38 = load float, ptr %37, align 4, !tbaa !86
  store float %38, ptr %31, align 4, !tbaa !86
  %39 = getelementptr inbounds [3 x [3 x float]], ptr %31, i64 0, i64 2, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !86
  store float %40, ptr %35, align 4, !tbaa !86
  store float %34, ptr %37, align 4, !tbaa !86
  store float %36, ptr %39, align 4, !tbaa !86
  %41 = getelementptr inbounds %struct.BezTriple, ptr %31, i64 0, i32 7
  %42 = load i8, ptr %41, align 1, !tbaa !87
  %43 = getelementptr inbounds %struct.BezTriple, ptr %31, i64 0, i32 9
  %44 = load i8, ptr %43, align 1, !tbaa !88
  store i8 %44, ptr %41, align 1, !tbaa !87
  store i8 %42, ptr %43, align 1, !tbaa !88
  %45 = getelementptr inbounds %struct.BezTriple, ptr %31, i64 0, i32 5
  %46 = load i8, ptr %45, align 1, !tbaa !89
  %47 = getelementptr inbounds %struct.BezTriple, ptr %31, i64 0, i32 6
  %48 = load i8, ptr %47, align 2, !tbaa !90
  store i8 %48, ptr %45, align 1, !tbaa !89
  store i8 %46, ptr %47, align 2, !tbaa !90
  %49 = icmp sgt i32 %33, 1
  br i1 %49, label %50, label %63

50:                                               ; preds = %27
  %51 = lshr i32 %33, 1
  %52 = getelementptr inbounds %struct.MaskSplinePoint, ptr %30, i64 %28, i32 3
  %53 = zext nneg i32 %33 to i64
  %54 = zext nneg i32 %51 to i64
  br label %55

55:                                               ; preds = %55, %50
  %56 = phi i64 [ 0, %50 ], [ %59, %55 ]
  %57 = load ptr, ptr %52, align 8, !tbaa !59
  %58 = getelementptr inbounds %struct.MaskSplinePointUW, ptr %57, i64 %56
  %59 = add nuw nsw i64 %56, 1
  %60 = sub nsw i64 %53, %59
  %61 = getelementptr inbounds %struct.MaskSplinePointUW, ptr %57, i64 %60
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(12) %58, i64 12, i1 false), !tbaa.struct !91
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %58, ptr noundef nonnull align 4 dereferenceable(12) %61, i64 12, i1 false), !tbaa.struct !91
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %61, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false), !tbaa.struct !91
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3)
  %62 = icmp eq i64 %59, %54
  br i1 %62, label %63, label %55, !llvm.loop !92

63:                                               ; preds = %55, %27
  %64 = icmp sgt i32 %33, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %63
  %66 = getelementptr inbounds %struct.MaskSplinePoint, ptr %30, i64 %28, i32 3
  %67 = load ptr, ptr %66, align 8, !tbaa !59
  %68 = zext nneg i32 %33 to i64
  br label %69

69:                                               ; preds = %69, %65
  %70 = phi i64 [ 0, %65 ], [ %74, %69 ]
  %71 = getelementptr inbounds %struct.MaskSplinePointUW, ptr %67, i64 %70
  %72 = load float, ptr %71, align 4, !tbaa !93
  %73 = fsub float 1.000000e+00, %72
  store float %73, ptr %71, align 4, !tbaa !93
  %74 = add nuw nsw i64 %70, 1
  %75 = icmp eq i64 %74, %68
  br i1 %75, label %76, label %69, !llvm.loop !95

76:                                               ; preds = %69, %63
  %77 = load ptr, ptr %24, align 8, !tbaa !44
  %78 = getelementptr inbounds %struct.MaskSplinePoint, ptr %77, i64 %28, i32 3
  %79 = load ptr, ptr %78, align 8, !tbaa !59
  %80 = sext i32 %29 to i64
  %81 = getelementptr inbounds %struct.MaskSplinePoint, ptr %77, i64 %80, i32 3
  %82 = load ptr, ptr %81, align 8, !tbaa !59
  store ptr %82, ptr %78, align 8, !tbaa !59
  store ptr %79, ptr %81, align 8, !tbaa !59
  %83 = getelementptr inbounds %struct.MaskSplinePoint, ptr %77, i64 %28, i32 2
  %84 = load i32, ptr %83, align 4, !tbaa !85
  %85 = getelementptr inbounds %struct.MaskSplinePoint, ptr %77, i64 %80, i32 2
  %86 = load i32, ptr %85, align 4, !tbaa !85
  store i32 %86, ptr %83, align 4, !tbaa !85
  store i32 %84, ptr %85, align 4, !tbaa !85
  %87 = add nuw nsw i64 %28, 1
  %88 = trunc i64 %28 to i32
  %89 = icmp eq i64 %87, %26
  br i1 %89, label %90, label %27, !llvm.loop !98

90:                                               ; preds = %76
  %91 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 4
  %92 = load ptr, ptr %91, align 8, !tbaa !66
  %93 = icmp eq ptr %92, null
  br i1 %93, label %137, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 3
  %96 = load ptr, ptr %95, align 8, !tbaa !45
  %97 = icmp ne ptr %96, null
  %98 = icmp ne ptr %96, %1
  %99 = and i1 %97, %98
  br i1 %99, label %109, label %100

100:                                              ; preds = %109, %94
  %101 = phi i32 [ 0, %94 ], [ %114, %109 ]
  %102 = load ptr, ptr %91, align 8, !tbaa !45
  %103 = icmp eq ptr %102, null
  br i1 %103, label %137, label %104

104:                                              ; preds = %100
  %105 = add i32 %101, %7
  %106 = sext i32 %101 to i64
  %107 = tail call i32 @llvm.smax.i32(i32 %8, i32 1)
  %108 = zext nneg i32 %107 to i64
  br label %122

109:                                              ; preds = %94, %109
  %110 = phi ptr [ %115, %109 ], [ %96, %94 ]
  %111 = phi i32 [ %114, %109 ], [ 0, %94 ]
  %112 = getelementptr inbounds %struct.MaskSpline, ptr %110, i64 0, i32 5
  %113 = load i32, ptr %112, align 4, !tbaa !34
  %114 = add nsw i32 %113, %111
  %115 = load ptr, ptr %110, align 8, !tbaa !45
  %116 = icmp ne ptr %115, null
  %117 = icmp ne ptr %115, %1
  %118 = and i1 %116, %117
  br i1 %118, label %109, label %100, !llvm.loop !99

119:                                              ; preds = %127
  %120 = load ptr, ptr %123, align 8, !tbaa !45
  %121 = icmp eq ptr %120, null
  br i1 %121, label %137, label %122, !llvm.loop !100

122:                                              ; preds = %104, %119
  %123 = phi ptr [ %102, %104 ], [ %120, %119 ]
  %124 = getelementptr inbounds %struct.MaskLayerShape, ptr %123, i64 0, i32 2
  %125 = load ptr, ptr %124, align 8, !tbaa !69
  %126 = getelementptr %struct.MaskLayerShapeElem, ptr %125, i64 %106
  br label %127

127:                                              ; preds = %122, %127
  %128 = phi i64 [ 0, %122 ], [ %130, %127 ]
  %129 = getelementptr %struct.MaskLayerShapeElem, ptr %126, i64 %128
  %130 = add nuw nsw i64 %128, 1
  %131 = trunc i64 %128 to i32
  %132 = xor i32 %131, -1
  %133 = add i32 %105, %132
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.MaskLayerShapeElem, ptr %125, i64 %134
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %5, ptr noundef nonnull align 4 dereferenceable(32) %129, i64 32, i1 false), !tbaa.struct !101
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %129, ptr noundef nonnull align 4 dereferenceable(32) %135, i64 32, i1 false), !tbaa.struct !101
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %135, ptr noundef nonnull align 4 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !101
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5)
  %136 = icmp eq i64 %130, %108
  br i1 %136, label %119, label %127, !llvm.loop !102

137:                                              ; preds = %119, %100, %90, %2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BKE_mask_layer_shape_spline_to_index(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp ne ptr %4, null
  %6 = icmp ne ptr %4, %1
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %18

8:                                                ; preds = %2, %8
  %9 = phi ptr [ %14, %8 ], [ %4, %2 ]
  %10 = phi i32 [ %13, %8 ], [ 0, %2 ]
  %11 = getelementptr inbounds %struct.MaskSpline, ptr %9, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !34
  %13 = add nsw i32 %12, %10
  %14 = load ptr, ptr %9, align 8, !tbaa !45
  %15 = icmp ne ptr %14, null
  %16 = icmp ne ptr %14, %1
  %17 = and i1 %15, %16
  br i1 %17, label %8, label %18, !llvm.loop !99

18:                                               ; preds = %8, %2
  %19 = phi i32 [ 0, %2 ], [ %13, %8 ]
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define dso_local float @BKE_mask_spline_project_co(ptr nocapture noundef readonly %0, ptr noundef %1, float noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) local_unnamed_addr #1 {
  %6 = alloca [2 x float], align 4
  %7 = alloca [2 x float], align 4
  %8 = alloca [2 x float], align 4
  %9 = alloca [2 x float], align 4
  %10 = alloca [2 x float], align 4
  %11 = alloca [2 x float], align 4
  %12 = getelementptr inbounds float, ptr %3, i64 1
  %13 = getelementptr inbounds float, ptr %8, i64 1
  %14 = getelementptr inbounds float, ptr %10, i64 1
  %15 = getelementptr inbounds float, ptr %6, i64 1
  %16 = icmp eq i32 %4, 1
  %17 = getelementptr inbounds float, ptr %6, i64 1
  %18 = getelementptr inbounds float, ptr %3, i64 1
  %19 = getelementptr inbounds float, ptr %9, i64 1
  %20 = getelementptr inbounds float, ptr %11, i64 1
  %21 = getelementptr inbounds float, ptr %7, i64 1
  %22 = icmp eq i32 %4, 1
  %23 = getelementptr inbounds float, ptr %7, i64 1
  br label %24

24:                                               ; preds = %107, %5
  %25 = phi float [ -1.000000e+00, %5 ], [ %108, %107 ]
  %26 = phi float [ %2, %5 ], [ %109, %107 ]
  %27 = phi float [ %2, %5 ], [ %110, %107 ]
  %28 = phi float [ -1.000000e+00, %5 ], [ %111, %107 ]
  %29 = fcmp ogt float %26, 0.000000e+00
  %30 = fcmp olt float %27, 1.000000e+00
  %31 = select i1 %29, i1 true, i1 %30
  br i1 %31, label %32, label %113

32:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #21
  %33 = fcmp ult float %26, 0.000000e+00
  br i1 %33, label %67, label %34

34:                                               ; preds = %32
  call void @BKE_mask_point_segment_co(ptr noundef %0, ptr noundef %1, float noundef %26, ptr noundef nonnull %8)
  call void @BKE_mask_point_normal(ptr noundef %0, ptr noundef %1, float noundef %26, ptr noundef nonnull %6)
  %35 = load float, ptr %3, align 4, !tbaa !86
  %36 = load float, ptr %8, align 4, !tbaa !86
  %37 = fsub float %35, %36
  store float %37, ptr %10, align 4, !tbaa !86
  %38 = load float, ptr %12, align 4, !tbaa !86
  %39 = load float, ptr %13, align 4, !tbaa !86
  %40 = fsub float %38, %39
  store float %40, ptr %14, align 4, !tbaa !86
  switch i32 %4, label %67 [
    i32 0, label %54
    i32 -1, label %41
    i32 1, label %48
  ]

41:                                               ; preds = %34
  %42 = load float, ptr %6, align 4, !tbaa !86
  %43 = load float, ptr %15, align 4, !tbaa !86
  %44 = fmul float %40, %43
  %45 = call float @llvm.fmuladd.f32(float %37, float %42, float %44)
  %46 = fcmp ugt float %45, 0.000000e+00
  br i1 %46, label %47, label %54

47:                                               ; preds = %41
  br i1 %16, label %48, label %67

48:                                               ; preds = %34, %47
  %49 = load float, ptr %6, align 4, !tbaa !86
  %50 = load float, ptr %17, align 4, !tbaa !86
  %51 = fmul float %40, %50
  %52 = call float @llvm.fmuladd.f32(float %37, float %49, float %51)
  %53 = fcmp ult float %52, 0.000000e+00
  br i1 %53, label %67, label %54

54:                                               ; preds = %34, %48, %41
  %55 = fmul float %40, %40
  %56 = call float @llvm.fmuladd.f32(float %37, float %37, float %55)
  %57 = fcmp ogt float %56, 0x3EB0C6F7C0000000
  br i1 %57, label %58, label %107

58:                                               ; preds = %54
  %59 = call float @angle_v2v2(ptr noundef nonnull %10, ptr noundef nonnull %6) #21
  %60 = fcmp ogt float %59, 0x3FF921FB60000000
  %61 = fsub float 0x400921FB60000000, %59
  %62 = select i1 %60, float %61, float %59
  %63 = fcmp olt float %28, 0.000000e+00
  %64 = fcmp olt float %62, %28
  %65 = select i1 %63, i1 true, i1 %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  br label %67

67:                                               ; preds = %58, %34, %47, %48, %66, %32
  %68 = phi float [ %26, %66 ], [ %25, %48 ], [ %25, %47 ], [ %25, %32 ], [ %25, %34 ], [ %25, %58 ]
  %69 = phi float [ %62, %66 ], [ %28, %48 ], [ %28, %47 ], [ %28, %32 ], [ %28, %34 ], [ %28, %58 ]
  %70 = fcmp ugt float %27, 1.000000e+00
  br i1 %70, label %102, label %71

71:                                               ; preds = %67
  call void @BKE_mask_point_segment_co(ptr noundef %0, ptr noundef %1, float noundef %27, ptr noundef nonnull %9)
  call void @BKE_mask_point_normal(ptr noundef %0, ptr noundef %1, float noundef %27, ptr noundef nonnull %7)
  %72 = load float, ptr %3, align 4, !tbaa !86
  %73 = load float, ptr %9, align 4, !tbaa !86
  %74 = fsub float %72, %73
  store float %74, ptr %11, align 4, !tbaa !86
  %75 = load float, ptr %18, align 4, !tbaa !86
  %76 = load float, ptr %19, align 4, !tbaa !86
  %77 = fsub float %75, %76
  store float %77, ptr %20, align 4, !tbaa !86
  switch i32 %4, label %102 [
    i32 0, label %91
    i32 -1, label %78
    i32 1, label %85
  ]

78:                                               ; preds = %71
  %79 = load float, ptr %7, align 4, !tbaa !86
  %80 = load float, ptr %21, align 4, !tbaa !86
  %81 = fmul float %77, %80
  %82 = call float @llvm.fmuladd.f32(float %74, float %79, float %81)
  %83 = fcmp ugt float %82, 0.000000e+00
  br i1 %83, label %84, label %91

84:                                               ; preds = %78
  br i1 %22, label %85, label %102

85:                                               ; preds = %71, %84
  %86 = load float, ptr %7, align 4, !tbaa !86
  %87 = load float, ptr %23, align 4, !tbaa !86
  %88 = fmul float %77, %87
  %89 = call float @llvm.fmuladd.f32(float %74, float %86, float %88)
  %90 = fcmp ult float %89, 0.000000e+00
  br i1 %90, label %102, label %91

91:                                               ; preds = %71, %85, %78
  %92 = fmul float %77, %77
  %93 = call float @llvm.fmuladd.f32(float %74, float %74, float %92)
  %94 = fcmp ogt float %93, 0x3EB0C6F7C0000000
  br i1 %94, label %95, label %107

95:                                               ; preds = %91
  %96 = call float @angle_v2v2(ptr noundef nonnull %11, ptr noundef nonnull %7) #21
  %97 = fcmp ogt float %96, 0x3FF921FB60000000
  %98 = fsub float 0x400921FB60000000, %96
  %99 = select i1 %97, float %98, float %96
  %100 = fcmp olt float %99, %69
  br i1 %100, label %101, label %102

101:                                              ; preds = %95
  br label %102

102:                                              ; preds = %71, %84, %85, %95, %101, %67
  %103 = phi float [ %27, %101 ], [ %68, %95 ], [ %68, %85 ], [ %68, %84 ], [ %68, %67 ], [ %68, %71 ]
  %104 = phi float [ %99, %101 ], [ %69, %95 ], [ %69, %85 ], [ %69, %84 ], [ %69, %67 ], [ %69, %71 ]
  %105 = fadd float %26, 0xBF50624DE0000000
  %106 = fadd float %27, 0x3F50624DE0000000
  br label %107

107:                                              ; preds = %91, %54, %102
  %108 = phi float [ %103, %102 ], [ %26, %54 ], [ %27, %91 ]
  %109 = phi float [ %105, %102 ], [ %26, %54 ], [ %26, %91 ]
  %110 = phi float [ %106, %102 ], [ %27, %54 ], [ %27, %91 ]
  %111 = phi float [ %104, %102 ], [ %28, %54 ], [ %69, %91 ]
  %112 = phi i1 [ true, %102 ], [ false, %54 ], [ false, %91 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  br i1 %112, label %24, label %113

113:                                              ; preds = %107, %24
  %114 = phi float [ %108, %107 ], [ %25, %24 ]
  ret float %114
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mask_point_segment_co(ptr nocapture noundef readonly %0, ptr noundef %1, float noundef %2, ptr noundef %3) local_unnamed_addr #1 {
  %5 = alloca [2 x float], align 4
  %6 = alloca [2 x float], align 4
  %7 = alloca [2 x float], align 4
  %8 = alloca [2 x float], align 4
  %9 = alloca [2 x float], align 4
  %10 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !44
  %12 = icmp ugt ptr %11, %1
  br i1 %12, label %19, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 5
  %15 = load i32, ptr %14, align 4, !tbaa !34
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.MaskSplinePoint, ptr %11, i64 %16
  %18 = icmp ugt ptr %17, %1
  br i1 %18, label %30, label %19

19:                                               ; preds = %13, %4
  %20 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 8
  %21 = load ptr, ptr %20, align 8, !tbaa !43
  %22 = icmp ugt ptr %21, %1
  br i1 %22, label %29, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 5
  %25 = load i32, ptr %24, align 4, !tbaa !34
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.MaskSplinePoint, ptr %21, i64 %26
  %28 = icmp ugt ptr %27, %1
  br i1 %28, label %30, label %29

29:                                               ; preds = %23, %19
  br label %30

30:                                               ; preds = %13, %23, %29
  %31 = phi ptr [ null, %29 ], [ %11, %13 ], [ %21, %23 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #21
  %32 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 5
  %33 = load i32, ptr %32, align 4, !tbaa !34
  %34 = sext i32 %33 to i64
  %35 = getelementptr %struct.MaskSplinePoint, ptr %31, i64 %34
  %36 = getelementptr %struct.MaskSplinePoint, ptr %35, i64 -1
  %37 = icmp eq ptr %36, %1
  br i1 %37, label %38, label %44

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 2
  %40 = load i16, ptr %39, align 8, !tbaa !42
  %41 = and i16 %40, 2
  %42 = icmp eq i16 %41, 0
  %43 = select i1 %42, ptr null, ptr %31
  br label %46

44:                                               ; preds = %30
  %45 = getelementptr inbounds %struct.MaskSplinePoint, ptr %1, i64 1
  br label %46

46:                                               ; preds = %38, %44
  %47 = phi ptr [ %45, %44 ], [ %43, %38 ]
  %48 = icmp eq ptr %47, null
  %49 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  br i1 %48, label %50, label %55

50:                                               ; preds = %46
  %51 = load float, ptr %49, align 4, !tbaa !86
  store float %51, ptr %3, align 4, !tbaa !86
  %52 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1, i64 1
  %53 = load float, ptr %52, align 4, !tbaa !86
  %54 = getelementptr inbounds float, ptr %3, i64 1
  store float %53, ptr %54, align 4, !tbaa !86
  br label %58

55:                                               ; preds = %46
  %56 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 2
  call void @interp_v2_v2v2(ptr noundef nonnull %5, ptr noundef nonnull %49, ptr noundef nonnull %56, float noundef %2) #21
  call void @interp_v2_v2v2(ptr noundef nonnull %6, ptr noundef nonnull %56, ptr noundef nonnull %47, float noundef %2) #21
  %57 = getelementptr inbounds [3 x [3 x float]], ptr %47, i64 0, i64 1
  call void @interp_v2_v2v2(ptr noundef nonnull %7, ptr noundef nonnull %47, ptr noundef nonnull %57, float noundef %2) #21
  call void @interp_v2_v2v2(ptr noundef nonnull %8, ptr noundef nonnull %5, ptr noundef nonnull %6, float noundef %2) #21
  call void @interp_v2_v2v2(ptr noundef nonnull %9, ptr noundef nonnull %6, ptr noundef nonnull %7, float noundef %2) #21
  call void @interp_v2_v2v2(ptr noundef %3, ptr noundef nonnull %8, ptr noundef nonnull %9, float noundef %2) #21
  br label %58

58:                                               ; preds = %55, %50
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mask_point_normal(ptr nocapture noundef readonly %0, ptr noundef %1, float noundef %2, ptr nocapture noundef %3) local_unnamed_addr #1 {
  %5 = alloca [2 x float], align 4
  %6 = alloca [2 x float], align 4
  %7 = alloca [2 x float], align 4
  %8 = alloca [2 x float], align 4
  %9 = alloca [2 x float], align 4
  %10 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !44
  %12 = icmp ugt ptr %11, %1
  br i1 %12, label %19, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 5
  %15 = load i32, ptr %14, align 4, !tbaa !34
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.MaskSplinePoint, ptr %11, i64 %16
  %18 = icmp ugt ptr %17, %1
  br i1 %18, label %30, label %19

19:                                               ; preds = %13, %4
  %20 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 8
  %21 = load ptr, ptr %20, align 8, !tbaa !43
  %22 = icmp ugt ptr %21, %1
  br i1 %22, label %29, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 5
  %25 = load i32, ptr %24, align 4, !tbaa !34
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.MaskSplinePoint, ptr %21, i64 %26
  %28 = icmp ugt ptr %27, %1
  br i1 %28, label %30, label %29

29:                                               ; preds = %23, %19
  br label %30

30:                                               ; preds = %29, %23, %13
  %31 = phi ptr [ null, %29 ], [ %11, %13 ], [ %21, %23 ]
  %32 = icmp eq ptr %31, %1
  br i1 %32, label %33, label %44

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 2
  %35 = load i16, ptr %34, align 8, !tbaa !42
  %36 = and i16 %35, 2
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 5
  %40 = load i32, ptr %39, align 4, !tbaa !34
  %41 = sext i32 %40 to i64
  %42 = getelementptr %struct.MaskSplinePoint, ptr %31, i64 %41
  %43 = getelementptr %struct.MaskSplinePoint, ptr %42, i64 -1
  br label %46

44:                                               ; preds = %30
  %45 = getelementptr inbounds %struct.MaskSplinePoint, ptr %1, i64 -1
  br label %46

46:                                               ; preds = %44, %38, %33
  %47 = phi ptr [ %43, %38 ], [ %45, %44 ], [ null, %33 ]
  %48 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 5
  %49 = load i32, ptr %48, align 4, !tbaa !34
  %50 = sext i32 %49 to i64
  %51 = getelementptr %struct.MaskSplinePoint, ptr %31, i64 %50
  %52 = getelementptr %struct.MaskSplinePoint, ptr %51, i64 -1
  %53 = icmp eq ptr %52, %1
  br i1 %53, label %54, label %60

54:                                               ; preds = %46
  %55 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 2
  %56 = load i16, ptr %55, align 8, !tbaa !42
  %57 = and i16 %56, 2
  %58 = icmp eq i16 %57, 0
  %59 = select i1 %58, ptr null, ptr %31
  br label %62

60:                                               ; preds = %46
  %61 = getelementptr inbounds %struct.MaskSplinePoint, ptr %1, i64 1
  br label %62

62:                                               ; preds = %54, %60
  %63 = phi ptr [ %61, %60 ], [ %59, %54 ]
  %64 = fadd float %2, 0xBFA99999A0000000
  %65 = fcmp olt float %64, 0.000000e+00
  %66 = icmp eq ptr %47, null
  %67 = select i1 %65, i1 %66, i1 false
  br i1 %67, label %68, label %94

68:                                               ; preds = %62
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  %69 = fadd float %2, 0x3FA99999A0000000
  call void @BKE_mask_point_segment_co(ptr noundef %0, ptr noundef %1, float noundef %69, ptr noundef nonnull %5)
  %70 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  %71 = load float, ptr %5, align 4, !tbaa !86
  %72 = load float, ptr %70, align 4, !tbaa !86
  %73 = fsub float %71, %72
  %74 = getelementptr inbounds float, ptr %5, i64 1
  %75 = load float, ptr %74, align 4, !tbaa !86
  %76 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1, i64 1
  %77 = load float, ptr %76, align 4, !tbaa !86
  %78 = fsub float %75, %77
  %79 = fneg float %78
  store float %79, ptr %3, align 4, !tbaa !86
  %80 = getelementptr inbounds float, ptr %3, i64 1
  store float %73, ptr %80, align 4, !tbaa !86
  %81 = fmul float %73, %73
  %82 = call float @llvm.fmuladd.f32(float %78, float %78, float %81)
  %83 = fcmp ogt float %82, 0x38AA95A5C0000000
  br i1 %83, label %84, label %91

84:                                               ; preds = %68
  %85 = call float @sqrtf(float noundef %82) #21
  %86 = fdiv float 1.000000e+00, %85
  %87 = load float, ptr %3, align 4, !tbaa !86
  %88 = fmul float %87, %86
  store float %88, ptr %3, align 4, !tbaa !86
  %89 = load float, ptr %80, align 4, !tbaa !86
  %90 = fmul float %86, %89
  br label %92

91:                                               ; preds = %68
  store float 0.000000e+00, ptr %3, align 4, !tbaa !86
  br label %92

92:                                               ; preds = %84, %91
  %93 = phi float [ 0.000000e+00, %91 ], [ %90, %84 ]
  store float %93, ptr %80, align 4, !tbaa !86
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  br label %185

94:                                               ; preds = %62
  %95 = fadd float %2, 0x3FA99999A0000000
  %96 = fcmp ogt float %95, 1.000000e+00
  %97 = icmp eq ptr %63, null
  %98 = select i1 %96, i1 %97, i1 false
  br i1 %98, label %99, label %124

99:                                               ; preds = %94
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  call void @BKE_mask_point_segment_co(ptr noundef %0, ptr noundef %1, float noundef %64, ptr noundef nonnull %6)
  %100 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  %101 = load float, ptr %100, align 4, !tbaa !86
  %102 = load float, ptr %6, align 4, !tbaa !86
  %103 = fsub float %101, %102
  %104 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1, i64 1
  %105 = load float, ptr %104, align 4, !tbaa !86
  %106 = getelementptr inbounds float, ptr %6, i64 1
  %107 = load float, ptr %106, align 4, !tbaa !86
  %108 = fsub float %105, %107
  %109 = fneg float %108
  store float %109, ptr %3, align 4, !tbaa !86
  %110 = getelementptr inbounds float, ptr %3, i64 1
  store float %103, ptr %110, align 4, !tbaa !86
  %111 = fmul float %103, %103
  %112 = call float @llvm.fmuladd.f32(float %108, float %108, float %111)
  %113 = fcmp ogt float %112, 0x38AA95A5C0000000
  br i1 %113, label %114, label %121

114:                                              ; preds = %99
  %115 = call float @sqrtf(float noundef %112) #21
  %116 = fdiv float 1.000000e+00, %115
  %117 = load float, ptr %3, align 4, !tbaa !86
  %118 = fmul float %117, %116
  store float %118, ptr %3, align 4, !tbaa !86
  %119 = load float, ptr %110, align 4, !tbaa !86
  %120 = fmul float %116, %119
  br label %122

121:                                              ; preds = %99
  store float 0.000000e+00, ptr %3, align 4, !tbaa !86
  br label %122

122:                                              ; preds = %114, %121
  %123 = phi float [ 0.000000e+00, %121 ], [ %120, %114 ]
  store float %123, ptr %110, align 4, !tbaa !86
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  br label %185

124:                                              ; preds = %94
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #21
  br i1 %65, label %125, label %127

125:                                              ; preds = %124
  %126 = fadd float %64, 1.000000e+00
  call void @BKE_mask_point_segment_co(ptr noundef %0, ptr noundef %47, float noundef %126, ptr noundef nonnull %7)
  br label %128

127:                                              ; preds = %124
  call void @BKE_mask_point_segment_co(ptr noundef %0, ptr noundef %1, float noundef %64, ptr noundef nonnull %7)
  br label %128

128:                                              ; preds = %127, %125
  call void @BKE_mask_point_segment_co(ptr noundef %0, ptr noundef %1, float noundef %2, ptr noundef nonnull %9)
  br i1 %96, label %129, label %131

129:                                              ; preds = %128
  %130 = fadd float %95, -1.000000e+00
  call void @BKE_mask_point_segment_co(ptr noundef %0, ptr noundef %63, float noundef %130, ptr noundef nonnull %8)
  br label %132

131:                                              ; preds = %128
  call void @BKE_mask_point_segment_co(ptr noundef %0, ptr noundef %1, float noundef %95, ptr noundef nonnull %8)
  br label %132

132:                                              ; preds = %131, %129
  %133 = load float, ptr %9, align 4, !tbaa !86
  %134 = load float, ptr %7, align 4, !tbaa !86
  %135 = fsub float %133, %134
  %136 = getelementptr inbounds float, ptr %9, i64 1
  %137 = load float, ptr %136, align 4, !tbaa !86
  %138 = getelementptr inbounds float, ptr %7, i64 1
  %139 = load float, ptr %138, align 4, !tbaa !86
  %140 = fsub float %137, %139
  %141 = load float, ptr %8, align 4, !tbaa !86
  %142 = fsub float %141, %133
  %143 = getelementptr inbounds float, ptr %8, i64 1
  %144 = load float, ptr %143, align 4, !tbaa !86
  %145 = fsub float %144, %137
  %146 = fmul float %140, %140
  %147 = call float @llvm.fmuladd.f32(float %135, float %135, float %146)
  %148 = fcmp ogt float %147, 0x38AA95A5C0000000
  br i1 %148, label %149, label %154

149:                                              ; preds = %132
  %150 = call float @sqrtf(float noundef %147) #21
  %151 = fdiv float 1.000000e+00, %150
  %152 = fmul float %135, %151
  %153 = fmul float %140, %151
  br label %154

154:                                              ; preds = %132, %149
  %155 = phi float [ %152, %149 ], [ 0.000000e+00, %132 ]
  %156 = phi float [ %153, %149 ], [ 0.000000e+00, %132 ]
  %157 = fmul float %145, %145
  %158 = call float @llvm.fmuladd.f32(float %142, float %142, float %157)
  %159 = fcmp ogt float %158, 0x38AA95A5C0000000
  br i1 %159, label %160, label %165

160:                                              ; preds = %154
  %161 = call float @sqrtf(float noundef %158) #21
  %162 = fdiv float 1.000000e+00, %161
  %163 = fmul float %142, %162
  %164 = fmul float %145, %162
  br label %165

165:                                              ; preds = %154, %160
  %166 = phi float [ %163, %160 ], [ 0.000000e+00, %154 ]
  %167 = phi float [ %164, %160 ], [ 0.000000e+00, %154 ]
  %168 = fadd float %155, %166
  %169 = fadd float %156, %167
  %170 = fneg float %169
  store float %170, ptr %3, align 4, !tbaa !86
  %171 = getelementptr inbounds float, ptr %3, i64 1
  store float %168, ptr %171, align 4, !tbaa !86
  %172 = fmul float %168, %168
  %173 = call float @llvm.fmuladd.f32(float %169, float %169, float %172)
  %174 = fcmp ogt float %173, 0x38AA95A5C0000000
  br i1 %174, label %175, label %182

175:                                              ; preds = %165
  %176 = call float @sqrtf(float noundef %173) #21
  %177 = fdiv float 1.000000e+00, %176
  %178 = load float, ptr %3, align 4, !tbaa !86
  %179 = fmul float %178, %177
  store float %179, ptr %3, align 4, !tbaa !86
  %180 = load float, ptr %171, align 4, !tbaa !86
  %181 = fmul float %177, %180
  br label %183

182:                                              ; preds = %165
  store float 0.000000e+00, ptr %3, align 4, !tbaa !86
  br label %183

183:                                              ; preds = %175, %182
  %184 = phi float [ 0.000000e+00, %182 ], [ %181, %175 ]
  store float %184, ptr %171, align 4, !tbaa !86
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #21
  br label %185

185:                                              ; preds = %122, %183, %92
  ret void
}

declare float @angle_v2v2(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @BKE_mask_point_handles_mode_get(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 5
  %3 = load i8, ptr %2, align 1, !tbaa !103
  %4 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 6
  %5 = load i8, ptr %4, align 2, !tbaa !104
  %6 = icmp eq i8 %3, 3
  %7 = icmp eq i8 %5, 3
  %8 = and i1 %6, %7
  %9 = select i1 %8, i32 1, i32 2
  ret i32 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_mask_point_handle(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #9 {
  switch i32 %1, label %29 [
    i32 1, label %4
    i32 2, label %17
    i32 3, label %21
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 1
  %6 = load float, ptr %0, align 4, !tbaa !86
  %7 = load float, ptr %5, align 4, !tbaa !86
  %8 = fsub float %6, %7
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !86
  %11 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 1, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !86
  %13 = fsub float %10, %12
  %14 = fadd float %7, %13
  store float %14, ptr %2, align 4, !tbaa !86
  %15 = load float, ptr %11, align 4, !tbaa !86
  %16 = fsub float %15, %8
  br label %26

17:                                               ; preds = %3
  %18 = load float, ptr %0, align 4, !tbaa !86
  store float %18, ptr %2, align 4, !tbaa !86
  %19 = getelementptr inbounds float, ptr %0, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !86
  br label %26

21:                                               ; preds = %3
  %22 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 2
  %23 = load float, ptr %22, align 4, !tbaa !86
  store float %23, ptr %2, align 4, !tbaa !86
  %24 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 2, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !86
  br label %26

26:                                               ; preds = %4, %21, %17
  %27 = phi float [ %20, %17 ], [ %25, %21 ], [ %16, %4 ]
  %28 = getelementptr inbounds float, ptr %2, i64 1
  store float %27, ptr %28, align 4, !tbaa !86
  br label %29

29:                                               ; preds = %26, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mask_point_set_handle(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5) local_unnamed_addr #1 {
  %7 = alloca [2 x float], align 4
  %8 = alloca [2 x float], align 4
  %9 = alloca [2 x float], align 4
  switch i32 %1, label %108 [
    i32 1, label %10
    i32 2, label %97
    i32 3, label %102
  ]

10:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #21
  %11 = icmp eq i8 %3, 0
  %12 = load float, ptr %2, align 4, !tbaa !86
  %13 = getelementptr inbounds float, ptr %2, i64 1
  %14 = getelementptr inbounds float, ptr %7, i64 1
  br i1 %11, label %77, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds [3 x float], ptr %5, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !86
  %18 = fsub float %12, %17
  store float %18, ptr %7, align 4, !tbaa !86
  %19 = load float, ptr %13, align 4, !tbaa !86
  %20 = getelementptr inbounds [3 x float], ptr %5, i64 1, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !86
  %22 = fsub float %19, %21
  store float %22, ptr %14, align 4, !tbaa !86
  %23 = load float, ptr %4, align 4, !tbaa !86
  %24 = fsub float %23, %17
  store float %24, ptr %8, align 4, !tbaa !86
  %25 = getelementptr inbounds float, ptr %4, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !86
  %27 = fsub float %26, %21
  %28 = getelementptr inbounds float, ptr %8, i64 1
  store float %27, ptr %28, align 4, !tbaa !86
  call void @project_v2_v2v2(ptr noundef nonnull %9, ptr noundef nonnull %7, ptr noundef nonnull %8) #21
  %29 = load float, ptr %8, align 4, !tbaa !86
  %30 = load float, ptr %9, align 4, !tbaa !86
  %31 = load float, ptr %28, align 4, !tbaa !86
  %32 = getelementptr inbounds float, ptr %9, i64 1
  %33 = load float, ptr %32, align 4, !tbaa !86
  %34 = fmul float %31, %33
  %35 = call float @llvm.fmuladd.f32(float %29, float %30, float %34)
  %36 = fcmp ogt float %35, 0.000000e+00
  br i1 %36, label %37, label %66

37:                                               ; preds = %15
  %38 = fmul float %33, %33
  %39 = call float @llvm.fmuladd.f32(float %30, float %30, float %38)
  %40 = call float @sqrtf(float noundef %39) #21
  %41 = load float, ptr %5, align 4, !tbaa !86
  %42 = load float, ptr %16, align 4, !tbaa !86
  %43 = fsub float %41, %42
  store float %43, ptr %7, align 4, !tbaa !86
  %44 = getelementptr inbounds float, ptr %5, i64 1
  %45 = load float, ptr %44, align 4, !tbaa !86
  %46 = load float, ptr %20, align 4, !tbaa !86
  %47 = fsub float %45, %46
  store float %47, ptr %14, align 4, !tbaa !86
  %48 = fmul float %47, %47
  %49 = call float @llvm.fmuladd.f32(float %43, float %43, float %48)
  %50 = call float @sqrtf(float noundef %49) #21
  %51 = fdiv float %40, %50
  %52 = load float, ptr %7, align 4, !tbaa !86
  %53 = fmul float %52, %51
  store float %53, ptr %7, align 4, !tbaa !86
  %54 = load float, ptr %14, align 4, !tbaa !86
  %55 = fmul float %51, %54
  store float %55, ptr %14, align 4, !tbaa !86
  %56 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 1
  %57 = load float, ptr %56, align 4, !tbaa !86
  %58 = fadd float %53, %57
  store float %58, ptr %0, align 4, !tbaa !86
  %59 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 1, i64 1
  %60 = load float, ptr %59, align 4, !tbaa !86
  %61 = fadd float %55, %60
  %62 = getelementptr inbounds float, ptr %0, i64 1
  store float %61, ptr %62, align 4, !tbaa !86
  %63 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 2
  %64 = fsub float %57, %53
  store float %64, ptr %63, align 4, !tbaa !86
  %65 = fsub float %60, %55
  br label %93

66:                                               ; preds = %15
  %67 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 1
  %68 = load float, ptr %67, align 4, !tbaa !86
  store float %68, ptr %0, align 4, !tbaa !86
  %69 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 1, i64 1
  %70 = load float, ptr %69, align 4, !tbaa !86
  %71 = getelementptr inbounds float, ptr %0, i64 1
  store float %70, ptr %71, align 4, !tbaa !86
  %72 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 1, i64 2
  %73 = load float, ptr %72, align 4, !tbaa !86
  %74 = getelementptr inbounds float, ptr %0, i64 2
  store float %73, ptr %74, align 4, !tbaa !86
  %75 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 2
  store float %68, ptr %75, align 4, !tbaa !86
  %76 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 2, i64 1
  store float %70, ptr %76, align 4, !tbaa !86
  br label %93

77:                                               ; preds = %10
  %78 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 1
  %79 = load float, ptr %78, align 4, !tbaa !86
  %80 = fsub float %12, %79
  store float %80, ptr %7, align 4, !tbaa !86
  %81 = load float, ptr %13, align 4, !tbaa !86
  %82 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 1, i64 1
  %83 = load float, ptr %82, align 4, !tbaa !86
  %84 = fsub float %81, %83
  store float %84, ptr %14, align 4, !tbaa !86
  %85 = fneg float %84
  store float %85, ptr %8, align 4, !tbaa !86
  %86 = getelementptr inbounds [2 x float], ptr %8, i64 0, i64 1
  store float %80, ptr %86, align 4, !tbaa !86
  %87 = fsub float %79, %84
  store float %87, ptr %0, align 4, !tbaa !86
  %88 = fadd float %80, %83
  %89 = getelementptr inbounds float, ptr %0, i64 1
  store float %88, ptr %89, align 4, !tbaa !86
  %90 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 2
  %91 = fadd float %79, %84
  store float %91, ptr %90, align 4, !tbaa !86
  %92 = fsub float %83, %80
  br label %93

93:                                               ; preds = %37, %66, %77
  %94 = phi i64 [ 1, %37 ], [ 2, %66 ], [ 1, %77 ]
  %95 = phi float [ %65, %37 ], [ %73, %66 ], [ %92, %77 ]
  %96 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 2, i64 %94
  store float %95, ptr %96, align 4, !tbaa !86
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #21
  br label %108

97:                                               ; preds = %6
  %98 = load float, ptr %2, align 4, !tbaa !86
  store float %98, ptr %0, align 4, !tbaa !86
  %99 = getelementptr inbounds float, ptr %2, i64 1
  %100 = load float, ptr %99, align 4, !tbaa !86
  %101 = getelementptr inbounds float, ptr %0, i64 1
  store float %100, ptr %101, align 4, !tbaa !86
  br label %108

102:                                              ; preds = %6
  %103 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 2
  %104 = load float, ptr %2, align 4, !tbaa !86
  store float %104, ptr %103, align 4, !tbaa !86
  %105 = getelementptr inbounds float, ptr %2, i64 1
  %106 = load float, ptr %105, align 4, !tbaa !86
  %107 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 2, i64 1
  store float %106, ptr %107, align 4, !tbaa !86
  br label %108

108:                                              ; preds = %6, %97, %102, %93
  ret void
}

declare void @project_v2_v2v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @interp_v2_v2v2(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_mask_get_handle_point_adjacent(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #9 {
  %5 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !44
  %7 = icmp ugt ptr %6, %1
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 5
  %10 = load i32, ptr %9, align 4, !tbaa !34
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.MaskSplinePoint, ptr %6, i64 %11
  %13 = icmp ugt ptr %12, %1
  br i1 %13, label %25, label %14

14:                                               ; preds = %8, %4
  %15 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !43
  %17 = icmp ugt ptr %16, %1
  br i1 %17, label %24, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 5
  %20 = load i32, ptr %19, align 4, !tbaa !34
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.MaskSplinePoint, ptr %16, i64 %21
  %23 = icmp ugt ptr %22, %1
  br i1 %23, label %25, label %24

24:                                               ; preds = %18, %14
  br label %25

25:                                               ; preds = %8, %18, %24
  %26 = phi ptr [ null, %24 ], [ %6, %8 ], [ %16, %18 ]
  %27 = icmp eq ptr %26, %1
  br i1 %27, label %28, label %39

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 2
  %30 = load i16, ptr %29, align 8, !tbaa !42
  %31 = and i16 %30, 2
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 5
  %35 = load i32, ptr %34, align 4, !tbaa !34
  %36 = sext i32 %35 to i64
  %37 = getelementptr %struct.MaskSplinePoint, ptr %26, i64 %36
  %38 = getelementptr %struct.MaskSplinePoint, ptr %37, i64 -1
  br label %41

39:                                               ; preds = %25
  %40 = getelementptr inbounds %struct.MaskSplinePoint, ptr %1, i64 -1
  br label %41

41:                                               ; preds = %28, %33, %39
  %42 = phi ptr [ %38, %33 ], [ %40, %39 ], [ null, %28 ]
  store ptr %42, ptr %2, align 8, !tbaa !45
  %43 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 5
  %44 = load i32, ptr %43, align 4, !tbaa !34
  %45 = sext i32 %44 to i64
  %46 = getelementptr %struct.MaskSplinePoint, ptr %26, i64 %45
  %47 = getelementptr %struct.MaskSplinePoint, ptr %46, i64 -1
  %48 = icmp eq ptr %47, %1
  br i1 %48, label %49, label %55

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 2
  %51 = load i16, ptr %50, align 8, !tbaa !42
  %52 = and i16 %51, 2
  %53 = icmp eq i16 %52, 0
  %54 = select i1 %53, ptr null, ptr %26
  br label %57

55:                                               ; preds = %41
  %56 = getelementptr inbounds %struct.MaskSplinePoint, ptr %1, i64 1
  br label %57

57:                                               ; preds = %49, %55
  %58 = phi ptr [ %56, %55 ], [ %54, %49 ]
  store ptr %58, ptr %3, align 8, !tbaa !45
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @BKE_mask_point_weight_scalar(ptr nocapture noundef readonly %0, ptr noundef readonly %1, float noundef %2) local_unnamed_addr #10 {
  %4 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ugt ptr %5, %1
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 5
  %9 = load i32, ptr %8, align 4, !tbaa !34
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.MaskSplinePoint, ptr %5, i64 %10
  %12 = icmp ugt ptr %11, %1
  br i1 %12, label %24, label %13

13:                                               ; preds = %7, %3
  %14 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !43
  %16 = icmp ugt ptr %15, %1
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 5
  %19 = load i32, ptr %18, align 4, !tbaa !34
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.MaskSplinePoint, ptr %15, i64 %20
  %22 = icmp ugt ptr %21, %1
  br i1 %22, label %24, label %23

23:                                               ; preds = %17, %13
  br label %24

24:                                               ; preds = %7, %17, %23
  %25 = phi ptr [ null, %23 ], [ %5, %7 ], [ %15, %17 ]
  %26 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 5
  %27 = load i32, ptr %26, align 4, !tbaa !34
  %28 = sext i32 %27 to i64
  %29 = getelementptr %struct.MaskSplinePoint, ptr %25, i64 %28
  %30 = getelementptr %struct.MaskSplinePoint, ptr %29, i64 -1
  %31 = icmp eq ptr %30, %1
  br i1 %31, label %32, label %38

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 2
  %34 = load i16, ptr %33, align 8, !tbaa !42
  %35 = and i16 %34, 2
  %36 = icmp eq i16 %35, 0
  %37 = select i1 %36, ptr null, ptr %25
  br label %40

38:                                               ; preds = %24
  %39 = getelementptr inbounds %struct.MaskSplinePoint, ptr %1, i64 1
  br label %40

40:                                               ; preds = %32, %38
  %41 = phi ptr [ %39, %38 ], [ %37, %32 ]
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 2
  %45 = load float, ptr %44, align 4, !tbaa !105
  br label %64

46:                                               ; preds = %40
  %47 = fcmp ugt float %2, 0.000000e+00
  br i1 %47, label %51, label %48

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 2
  %50 = load float, ptr %49, align 4, !tbaa !105
  br label %64

51:                                               ; preds = %46
  %52 = fcmp ult float %2, 1.000000e+00
  br i1 %52, label %56, label %53

53:                                               ; preds = %51
  %54 = getelementptr inbounds %struct.BezTriple, ptr %41, i64 0, i32 2
  %55 = load float, ptr %54, align 4, !tbaa !105
  br label %64

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 2
  %58 = load float, ptr %57, align 4, !tbaa !105
  %59 = fsub float 1.000000e+00, %2
  %60 = getelementptr inbounds %struct.BezTriple, ptr %41, i64 0, i32 2
  %61 = load float, ptr %60, align 4, !tbaa !105
  %62 = fmul float %61, %2
  %63 = tail call float @llvm.fmuladd.f32(float %58, float %59, float %62)
  br label %64

64:                                               ; preds = %56, %53, %48, %43
  %65 = phi float [ %50, %48 ], [ %55, %53 ], [ %63, %56 ], [ %45, %43 ]
  ret float %65
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local float @BKE_mask_point_weight(ptr nocapture noundef readonly %0, ptr noundef readonly %1, float noundef %2) local_unnamed_addr #8 {
  %4 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ugt ptr %5, %1
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 5
  %9 = load i32, ptr %8, align 4, !tbaa !34
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.MaskSplinePoint, ptr %5, i64 %10
  %12 = icmp ugt ptr %11, %1
  br i1 %12, label %24, label %13

13:                                               ; preds = %7, %3
  %14 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !43
  %16 = icmp ugt ptr %15, %1
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 5
  %19 = load i32, ptr %18, align 4, !tbaa !34
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.MaskSplinePoint, ptr %15, i64 %20
  %22 = icmp ugt ptr %21, %1
  br i1 %22, label %24, label %23

23:                                               ; preds = %17, %13
  br label %24

24:                                               ; preds = %7, %17, %23
  %25 = phi ptr [ null, %23 ], [ %5, %7 ], [ %15, %17 ]
  %26 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 5
  %27 = load i32, ptr %26, align 4, !tbaa !34
  %28 = sext i32 %27 to i64
  %29 = getelementptr %struct.MaskSplinePoint, ptr %25, i64 %28
  %30 = getelementptr %struct.MaskSplinePoint, ptr %29, i64 -1
  %31 = icmp eq ptr %30, %1
  br i1 %31, label %32, label %38

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 2
  %34 = load i16, ptr %33, align 8, !tbaa !42
  %35 = and i16 %34, 2
  %36 = icmp eq i16 %35, 0
  %37 = select i1 %36, ptr null, ptr %25
  br label %40

38:                                               ; preds = %24
  %39 = getelementptr inbounds %struct.MaskSplinePoint, ptr %1, i64 1
  br label %40

40:                                               ; preds = %32, %38
  %41 = phi ptr [ %39, %38 ], [ %37, %32 ]
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 2
  %45 = load float, ptr %44, align 4, !tbaa !105
  br label %130

46:                                               ; preds = %40
  %47 = fcmp ugt float %2, 0.000000e+00
  br i1 %47, label %51, label %48

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 2
  %50 = load float, ptr %49, align 4, !tbaa !105
  br label %130

51:                                               ; preds = %46
  %52 = fcmp ult float %2, 1.000000e+00
  br i1 %52, label %53, label %63

53:                                               ; preds = %51
  %54 = getelementptr inbounds %struct.MaskSplinePoint, ptr %1, i64 0, i32 2
  %55 = load i32, ptr %54, align 4, !tbaa !85
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %95, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.MaskSplinePoint, ptr %1, i64 0, i32 3
  %59 = getelementptr inbounds %struct.MaskSplinePoint, ptr %1, i64 0, i32 3
  %60 = zext nneg i32 %55 to i64
  %61 = add nuw i32 %55, 1
  %62 = zext i32 %61 to i64
  br label %66

63:                                               ; preds = %51
  %64 = getelementptr inbounds %struct.BezTriple, ptr %41, i64 0, i32 2
  %65 = load float, ptr %64, align 4, !tbaa !105
  br label %130

66:                                               ; preds = %86, %57
  %67 = phi i64 [ 0, %57 ], [ %92, %86 ]
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %66
  %70 = load ptr, ptr %58, align 8, !tbaa !59
  %71 = getelementptr %struct.MaskSplinePointUW, ptr %70, i64 %67
  %72 = getelementptr %struct.MaskSplinePointUW, ptr %71, i64 -1
  %73 = load float, ptr %72, align 4, !tbaa !93
  %74 = getelementptr %struct.MaskSplinePointUW, ptr %71, i64 -1, i32 1
  %75 = load float, ptr %74, align 4, !tbaa !106
  br label %76

76:                                               ; preds = %66, %69
  %77 = phi float [ %73, %69 ], [ 0.000000e+00, %66 ]
  %78 = phi float [ %75, %69 ], [ 1.000000e+00, %66 ]
  %79 = icmp eq i64 %67, %60
  br i1 %79, label %86, label %80

80:                                               ; preds = %76
  %81 = load ptr, ptr %59, align 8, !tbaa !59
  %82 = getelementptr inbounds %struct.MaskSplinePointUW, ptr %81, i64 %67
  %83 = load float, ptr %82, align 4, !tbaa !93
  %84 = getelementptr inbounds %struct.MaskSplinePointUW, ptr %81, i64 %67, i32 1
  %85 = load float, ptr %84, align 4, !tbaa !106
  br label %86

86:                                               ; preds = %76, %80
  %87 = phi float [ %83, %80 ], [ 1.000000e+00, %76 ]
  %88 = phi float [ %85, %80 ], [ 1.000000e+00, %76 ]
  %89 = fcmp ole float %77, %2
  %90 = fcmp oge float %87, %2
  %91 = select i1 %89, i1 %90, i1 false
  %92 = add nuw nsw i64 %67, 1
  %93 = icmp eq i64 %92, %62
  %94 = select i1 %91, i1 true, i1 %93
  br i1 %94, label %95, label %66, !llvm.loop !107

95:                                               ; preds = %86, %53
  %96 = phi float [ 0.000000e+00, %53 ], [ %77, %86 ]
  %97 = phi float [ 0.000000e+00, %53 ], [ %78, %86 ]
  %98 = phi float [ 0.000000e+00, %53 ], [ %87, %86 ]
  %99 = phi float [ 0.000000e+00, %53 ], [ %88, %86 ]
  %100 = fsub float %2, %96
  %101 = fsub float %98, %96
  %102 = fdiv float %100, %101
  %103 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 2
  %104 = load float, ptr %103, align 4, !tbaa !105
  %105 = fsub float 1.000000e+00, %96
  %106 = getelementptr inbounds %struct.BezTriple, ptr %41, i64 0, i32 2
  %107 = load float, ptr %106, align 4, !tbaa !105
  %108 = fmul float %96, %107
  %109 = tail call float @llvm.fmuladd.f32(float %104, float %105, float %108)
  %110 = fmul float %97, %109
  %111 = fsub float 1.000000e+00, %98
  %112 = fmul float %98, %107
  %113 = tail call float @llvm.fmuladd.f32(float %104, float %111, float %112)
  %114 = fmul float %99, %113
  %115 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 4
  %116 = load i8, ptr %115, align 1, !tbaa !83
  %117 = icmp eq i8 %116, 2
  br i1 %117, label %118, label %126

118:                                              ; preds = %95
  %119 = fsub float %114, %110
  %120 = fmul float %102, 3.000000e+00
  %121 = fmul float %102, -2.000000e+00
  %122 = fmul float %102, %121
  %123 = fmul float %102, %122
  %124 = tail call float @llvm.fmuladd.f32(float %120, float %102, float %123)
  %125 = tail call float @llvm.fmuladd.f32(float %119, float %124, float %110)
  br label %130

126:                                              ; preds = %95
  %127 = fsub float 1.000000e+00, %102
  %128 = fmul float %102, %114
  %129 = tail call float @llvm.fmuladd.f32(float %127, float %110, float %128)
  br label %130

130:                                              ; preds = %118, %126, %63, %48, %43
  %131 = phi float [ %50, %48 ], [ %65, %63 ], [ %45, %43 ], [ %125, %118 ], [ %129, %126 ]
  ret float %131
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #11

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_mask_point_sort_uw(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #6 {
  %3 = alloca %struct.MaskSplinePointUW, align 4
  %4 = alloca %struct.MaskSplinePointUW, align 4
  %5 = getelementptr inbounds %struct.MaskSplinePoint, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !85
  %7 = icmp sgt i32 %6, 1
  br i1 %7, label %8, label %84

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.MaskSplinePoint, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !59
  %11 = ptrtoint ptr %1 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 12
  %15 = trunc i64 %14 to i32
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %41

17:                                               ; preds = %8
  %18 = add nsw i64 %14, 4294967295
  %19 = and i64 %18, 4294967295
  %20 = getelementptr inbounds %struct.MaskSplinePointUW, ptr %10, i64 %19
  %21 = load float, ptr %20, align 4, !tbaa !93
  %22 = load float, ptr %1, align 4, !tbaa !93
  %23 = fcmp ogt float %21, %22
  br i1 %23, label %24, label %41

24:                                               ; preds = %17
  %25 = and i64 %14, 4294967295
  br label %26

26:                                               ; preds = %24, %35
  %27 = phi i64 [ %25, %24 ], [ %29, %35 ]
  %28 = load ptr, ptr %9, align 8, !tbaa !59
  %29 = add nsw i64 %27, -1
  %30 = getelementptr inbounds %struct.MaskSplinePointUW, ptr %28, i64 %29
  %31 = load float, ptr %30, align 4, !tbaa !93
  %32 = getelementptr inbounds %struct.MaskSplinePointUW, ptr %28, i64 %27
  %33 = load float, ptr %32, align 4, !tbaa !93
  %34 = fcmp ogt float %31, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(12) %30, i64 12, i1 false), !tbaa.struct !91
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %30, ptr noundef nonnull align 4 dereferenceable(12) %32, i64 12, i1 false), !tbaa.struct !91
  %36 = load ptr, ptr %9, align 8, !tbaa !59
  %37 = getelementptr inbounds %struct.MaskSplinePointUW, ptr %36, i64 %27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %37, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false), !tbaa.struct !91
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3)
  %38 = icmp sgt i64 %27, 1
  br i1 %38, label %26, label %41

39:                                               ; preds = %26
  %40 = trunc i64 %27 to i32
  br label %41

41:                                               ; preds = %39, %35, %17, %8
  %42 = phi i32 [ %15, %17 ], [ %15, %8 ], [ %40, %39 ], [ 0, %35 ]
  %43 = load i32, ptr %5, align 4, !tbaa !85
  %44 = add nsw i32 %43, -1
  %45 = icmp slt i32 %42, %44
  br i1 %45, label %46, label %79

46:                                               ; preds = %41
  %47 = load ptr, ptr %9, align 8, !tbaa !59
  %48 = sext i32 %42 to i64
  %49 = getelementptr %struct.MaskSplinePointUW, ptr %47, i64 %48
  %50 = getelementptr %struct.MaskSplinePointUW, ptr %49, i64 1
  %51 = load float, ptr %50, align 4, !tbaa !93
  %52 = load float, ptr %1, align 4, !tbaa !93
  %53 = fcmp olt float %51, %52
  br i1 %53, label %54, label %79

54:                                               ; preds = %46
  %55 = load i32, ptr %5, align 4, !tbaa !85
  %56 = add nsw i32 %55, -1
  %57 = icmp slt i32 %42, %56
  br i1 %57, label %58, label %79

58:                                               ; preds = %54
  %59 = sext i32 %42 to i64
  br label %60

60:                                               ; preds = %58, %69
  %61 = phi i64 [ %59, %58 ], [ %63, %69 ]
  %62 = load ptr, ptr %9, align 8, !tbaa !59
  %63 = add nsw i64 %61, 1
  %64 = getelementptr inbounds %struct.MaskSplinePointUW, ptr %62, i64 %63
  %65 = load float, ptr %64, align 4, !tbaa !93
  %66 = getelementptr inbounds %struct.MaskSplinePointUW, ptr %62, i64 %61
  %67 = load float, ptr %66, align 4, !tbaa !93
  %68 = fcmp olt float %65, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) %64, i64 12, i1 false), !tbaa.struct !91
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %64, ptr noundef nonnull align 4 dereferenceable(12) %66, i64 12, i1 false), !tbaa.struct !91
  %70 = load ptr, ptr %9, align 8, !tbaa !59
  %71 = getelementptr inbounds %struct.MaskSplinePointUW, ptr %70, i64 %61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %71, ptr noundef nonnull align 4 dereferenceable(12) %4, i64 12, i1 false), !tbaa.struct !91
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4)
  %72 = load i32, ptr %5, align 4, !tbaa !85
  %73 = add nsw i32 %72, -1
  %74 = sext i32 %73 to i64
  %75 = icmp slt i64 %63, %74
  br i1 %75, label %60, label %76, !llvm.loop !108

76:                                               ; preds = %60, %69
  %77 = phi i64 [ %61, %60 ], [ %63, %69 ]
  %78 = trunc i64 %77 to i32
  br label %79

79:                                               ; preds = %76, %54, %46, %41
  %80 = phi i32 [ %42, %46 ], [ %42, %41 ], [ %42, %54 ], [ %78, %76 ]
  %81 = load ptr, ptr %9, align 8, !tbaa !59
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds %struct.MaskSplinePointUW, ptr %81, i64 %82
  br label %84

84:                                               ; preds = %2, %79
  %85 = phi ptr [ %83, %79 ], [ %1, %2 ]
  ret ptr %85
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mask_point_add_uw(ptr nocapture noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.MaskSplinePoint, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !59
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %9 = tail call ptr %8(i64 noundef 12, ptr noundef nonnull @.str.5) #21
  br label %18

10:                                               ; preds = %3
  %11 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !45
  %12 = getelementptr inbounds %struct.MaskSplinePoint, ptr %0, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !85
  %14 = add nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = mul nsw i64 %15, 12
  %17 = tail call ptr %11(ptr noundef nonnull %5, i64 noundef %16, ptr noundef nonnull @__func__.BKE_mask_point_add_uw) #21
  br label %18

18:                                               ; preds = %10, %7
  %19 = phi ptr [ %9, %7 ], [ %17, %10 ]
  store ptr %19, ptr %4, align 8, !tbaa !59
  %20 = getelementptr inbounds %struct.MaskSplinePoint, ptr %0, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !85
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.MaskSplinePointUW, ptr %19, i64 %22
  store float %1, ptr %23, align 4, !tbaa !93
  %24 = getelementptr inbounds %struct.MaskSplinePointUW, ptr %19, i64 %22, i32 1
  store float %2, ptr %24, align 4, !tbaa !106
  %25 = getelementptr inbounds %struct.MaskSplinePointUW, ptr %19, i64 %22, i32 2
  store i32 0, ptr %25, align 4, !tbaa !109
  %26 = add nsw i32 %21, 1
  store i32 %26, ptr %20, align 4, !tbaa !85
  %27 = tail call ptr @BKE_mask_point_sort_uw(ptr noundef %0, ptr noundef nonnull %23)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_mask_point_select_set(ptr nocapture noundef %0, i8 noundef zeroext %1) local_unnamed_addr #6 {
  %3 = icmp eq i8 %1, 0
  %4 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 7
  %5 = load i8, ptr %4, align 1, !tbaa !87
  %6 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 8
  %7 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 9
  br i1 %3, label %14, label %8

8:                                                ; preds = %2
  %9 = or i8 %5, 1
  store i8 %9, ptr %4, align 1, !tbaa !87
  %10 = load i8, ptr %6, align 4, !tbaa !110
  %11 = or i8 %10, 1
  store i8 %11, ptr %6, align 4, !tbaa !110
  %12 = load i8, ptr %7, align 1, !tbaa !88
  %13 = or i8 %12, 1
  br label %20

14:                                               ; preds = %2
  %15 = and i8 %5, -2
  store i8 %15, ptr %4, align 1, !tbaa !87
  %16 = load i8, ptr %6, align 4, !tbaa !110
  %17 = and i8 %16, -2
  store i8 %17, ptr %6, align 4, !tbaa !110
  %18 = load i8, ptr %7, align 1, !tbaa !88
  %19 = and i8 %18, -2
  br label %20

20:                                               ; preds = %14, %8
  %21 = phi i8 [ %19, %14 ], [ %13, %8 ]
  store i8 %21, ptr %7, align 1, !tbaa !88
  %22 = getelementptr inbounds %struct.MaskSplinePoint, ptr %0, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !85
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %44

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.MaskSplinePoint, ptr %0, i64 0, i32 3
  %27 = getelementptr inbounds %struct.MaskSplinePoint, ptr %0, i64 0, i32 3
  %28 = zext nneg i32 %23 to i64
  br label %29

29:                                               ; preds = %25, %41
  %30 = phi i64 [ 0, %25 ], [ %42, %41 ]
  br i1 %3, label %36, label %31

31:                                               ; preds = %29
  %32 = load ptr, ptr %26, align 8, !tbaa !59
  %33 = getelementptr inbounds %struct.MaskSplinePointUW, ptr %32, i64 %30, i32 2
  %34 = load i32, ptr %33, align 4, !tbaa !109
  %35 = or i32 %34, 1
  store i32 %35, ptr %33, align 4, !tbaa !109
  br label %41

36:                                               ; preds = %29
  %37 = load ptr, ptr %27, align 8, !tbaa !59
  %38 = getelementptr inbounds %struct.MaskSplinePointUW, ptr %37, i64 %30, i32 2
  %39 = load i32, ptr %38, align 4, !tbaa !109
  %40 = and i32 %39, -2
  store i32 %40, ptr %38, align 4, !tbaa !109
  br label %41

41:                                               ; preds = %31, %36
  %42 = add nuw nsw i64 %30, 1
  %43 = icmp eq i64 %42, %28
  br i1 %43, label %44, label %29, !llvm.loop !111

44:                                               ; preds = %41, %20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_mask_point_select_set_handle(ptr nocapture noundef %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #9 {
  %4 = icmp eq i8 %2, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %3
  switch i32 %1, label %37 [
    i32 4, label %6
    i32 1, label %6
    i32 2, label %13
    i32 3, label %17
  ]

6:                                                ; preds = %5, %5
  %7 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 7
  %8 = load i8, ptr %7, align 1, !tbaa !87
  %9 = or i8 %8, 1
  store i8 %9, ptr %7, align 1, !tbaa !87
  %10 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 9
  %11 = load i8, ptr %10, align 1, !tbaa !88
  %12 = or i8 %11, 1
  store i8 %12, ptr %10, align 1, !tbaa !88
  br label %37

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 7
  %15 = load i8, ptr %14, align 1, !tbaa !87
  %16 = or i8 %15, 1
  store i8 %16, ptr %14, align 1, !tbaa !87
  br label %37

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 9
  %19 = load i8, ptr %18, align 1, !tbaa !88
  %20 = or i8 %19, 1
  store i8 %20, ptr %18, align 1, !tbaa !88
  br label %37

21:                                               ; preds = %3
  switch i32 %1, label %37 [
    i32 4, label %22
    i32 1, label %22
    i32 2, label %29
    i32 3, label %33
  ]

22:                                               ; preds = %21, %21
  %23 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 7
  %24 = load i8, ptr %23, align 1, !tbaa !87
  %25 = and i8 %24, -2
  store i8 %25, ptr %23, align 1, !tbaa !87
  %26 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 9
  %27 = load i8, ptr %26, align 1, !tbaa !88
  %28 = and i8 %27, -2
  store i8 %28, ptr %26, align 1, !tbaa !88
  br label %37

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 7
  %31 = load i8, ptr %30, align 1, !tbaa !87
  %32 = and i8 %31, -2
  store i8 %32, ptr %30, align 1, !tbaa !87
  br label %37

33:                                               ; preds = %21
  %34 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 9
  %35 = load i8, ptr %34, align 1, !tbaa !88
  %36 = and i8 %35, -2
  store i8 %36, ptr %34, align 1, !tbaa !88
  br label %37

37:                                               ; preds = %21, %5, %22, %33, %29, %6, %17, %13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_mask_new(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #21
  %4 = icmp eq ptr %1, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = load i8, ptr %1, align 1, !tbaa !46
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = call ptr @BLI_strncpy(ptr noundef nonnull %3, ptr noundef nonnull %1, i64 noundef 64) #21
  br label %11

10:                                               ; preds = %5, %2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(5) %3, ptr noundef nonnull align 1 dereferenceable(5) @.str.6, i64 5, i1 false) #21
  br label %11

11:                                               ; preds = %10, %8
  %12 = call ptr @BKE_libblock_alloc(ptr noundef %0, i16 noundef signext 21325, ptr noundef nonnull %3) #21
  %13 = getelementptr inbounds %struct.ID, ptr %12, i64 0, i32 5
  %14 = load i16, ptr %13, align 2, !tbaa !112
  %15 = or i16 %14, 512
  store i16 %15, ptr %13, align 2, !tbaa !112
  %16 = getelementptr inbounds %struct.Mask, ptr %12, i64 0, i32 5
  store i32 1, ptr %16, align 8, !tbaa !113
  %17 = getelementptr inbounds %struct.Mask, ptr %12, i64 0, i32 6
  store i32 100, ptr %17, align 4, !tbaa !114
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #21
  ret ptr %12
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_mask_copy_nolib(ptr noundef %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !45
  %3 = tail call ptr %2(ptr noundef %0) #21
  %4 = getelementptr inbounds %struct.Mask, ptr %3, i64 0, i32 1
  %5 = getelementptr inbounds %struct.Mask, ptr %3, i64 0, i32 2
  %6 = getelementptr inbounds %struct.Mask, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %1, %9
  %10 = phi ptr [ %12, %9 ], [ %7, %1 ]
  %11 = tail call ptr @BKE_mask_layer_copy(ptr noundef nonnull %10)
  tail call void @BLI_addtail(ptr noundef nonnull %5, ptr noundef %11) #21
  %12 = load ptr, ptr %10, align 8, !tbaa !45
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %9, !llvm.loop !82

14:                                               ; preds = %9, %1
  %15 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 5
  %16 = load i16, ptr %15, align 2, !tbaa !112
  %17 = and i16 %16, 512
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = or disjoint i16 %16, 512
  store i16 %20, ptr %15, align 2, !tbaa !112
  %21 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 6
  %22 = load i32, ptr %21, align 4, !tbaa !115
  %23 = add nsw i32 %22, 1
  store i32 %23, ptr %21, align 4, !tbaa !115
  br label %24

24:                                               ; preds = %19, %14
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_mask_copy(ptr noundef %0) local_unnamed_addr #1 {
  %2 = tail call ptr @BKE_libblock_copy(ptr noundef %0) #21
  %3 = getelementptr inbounds %struct.Mask, ptr %2, i64 0, i32 2
  %4 = getelementptr inbounds %struct.Mask, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %1, %7
  %8 = phi ptr [ %10, %7 ], [ %5, %1 ]
  %9 = tail call ptr @BKE_mask_layer_copy(ptr noundef nonnull %8)
  tail call void @BLI_addtail(ptr noundef nonnull %3, ptr noundef %9) #21
  %10 = load ptr, ptr %8, align 8, !tbaa !45
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %7, !llvm.loop !82

12:                                               ; preds = %7, %1
  %13 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 5
  %14 = load i16, ptr %13, align 2, !tbaa !112
  %15 = and i16 %14, 512
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = or disjoint i16 %14, 512
  store i16 %18, ptr %13, align 2, !tbaa !112
  %19 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 6
  %20 = load i32, ptr %19, align 4, !tbaa !115
  %21 = add nsw i32 %20, 1
  store i32 %21, ptr %19, align 4, !tbaa !115
  br label %22

22:                                               ; preds = %17, %12
  ret ptr %2
}

declare ptr @BKE_libblock_copy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mask_point_free(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.MaskSplinePoint, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !59
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %6(ptr noundef nonnull %3) #21
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mask_spline_free_list(ptr noundef %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 8, !tbaa !57
  %3 = icmp eq ptr %2, null
  br i1 %3, label %47, label %4

4:                                                ; preds = %1, %44
  %5 = phi ptr [ %6, %44 ], [ %2, %1 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !58
  tail call void @BLI_remlink(ptr noundef nonnull %0, ptr noundef nonnull %5) #21
  %7 = getelementptr inbounds %struct.MaskSpline, ptr %5, i64 0, i32 5
  %8 = load i32, ptr %7, align 4, !tbaa !34
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %35

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.MaskSpline, ptr %5, i64 0, i32 6
  %12 = getelementptr inbounds %struct.MaskSpline, ptr %5, i64 0, i32 8
  br label %13

13:                                               ; preds = %30, %10
  %14 = phi i64 [ 0, %10 ], [ %31, %30 ]
  %15 = load ptr, ptr %11, align 8, !tbaa !44
  %16 = getelementptr inbounds %struct.MaskSplinePoint, ptr %15, i64 %14, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !59
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %13
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %20(ptr noundef nonnull %17) #21
  br label %21

21:                                               ; preds = %19, %13
  %22 = load ptr, ptr %12, align 8, !tbaa !43
  %23 = icmp eq ptr %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.MaskSplinePoint, ptr %22, i64 %14, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !59
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %29(ptr noundef nonnull %26) #21
  br label %30

30:                                               ; preds = %28, %24, %21
  %31 = add nuw nsw i64 %14, 1
  %32 = load i32, ptr %7, align 4, !tbaa !34
  %33 = sext i32 %32 to i64
  %34 = icmp slt i64 %31, %33
  br i1 %34, label %13, label %35, !llvm.loop !62

35:                                               ; preds = %30, %4
  %36 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %37 = getelementptr inbounds %struct.MaskSpline, ptr %5, i64 0, i32 6
  %38 = load ptr, ptr %37, align 8, !tbaa !44
  tail call void %36(ptr noundef %38) #21
  %39 = getelementptr inbounds %struct.MaskSpline, ptr %5, i64 0, i32 8
  %40 = load ptr, ptr %39, align 8, !tbaa !43
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %35
  %43 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %43(ptr noundef nonnull %40) #21
  br label %44

44:                                               ; preds = %35, %42
  %45 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %45(ptr noundef nonnull %5) #21
  %46 = icmp eq ptr %6, null
  br i1 %46, label %47, label %4, !llvm.loop !65

47:                                               ; preds = %44, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_mask_layer_shape_alloc(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %12, %6 ], [ %4, %2 ]
  %8 = phi i32 [ %11, %6 ], [ 0, %2 ]
  %9 = getelementptr inbounds %struct.MaskSpline, ptr %7, i64 0, i32 5
  %10 = load i32, ptr %9, align 4, !tbaa !34
  %11 = add nsw i32 %10, %8
  %12 = load ptr, ptr %7, align 8, !tbaa !45
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6, !llvm.loop !116

14:                                               ; preds = %6, %2
  %15 = phi i32 [ 0, %2 ], [ %11, %6 ]
  %16 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %17 = tail call ptr %16(i64 noundef 40, ptr noundef nonnull @__func__.BKE_mask_layer_shape_alloc) #21
  %18 = getelementptr inbounds %struct.MaskLayerShape, ptr %17, i64 0, i32 4
  store i32 %1, ptr %18, align 4, !tbaa !80
  %19 = getelementptr inbounds %struct.MaskLayerShape, ptr %17, i64 0, i32 3
  store i32 %15, ptr %19, align 8, !tbaa !78
  %20 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %21 = sext i32 %15 to i64
  %22 = shl nsw i64 %21, 5
  %23 = tail call ptr %20(i64 noundef %22, ptr noundef nonnull @__func__.BKE_mask_layer_shape_alloc) #21
  %24 = getelementptr inbounds %struct.MaskLayerShape, ptr %17, i64 0, i32 2
  store ptr %23, ptr %24, align 8, !tbaa !69
  ret ptr %17
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BKE_mask_layer_shape_totvert(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %11, %5 ], [ %3, %1 ]
  %7 = phi i32 [ %10, %5 ], [ 0, %1 ]
  %8 = getelementptr inbounds %struct.MaskSpline, ptr %6, i64 0, i32 5
  %9 = load i32, ptr %8, align 4, !tbaa !34
  %10 = add nsw i32 %9, %7
  %11 = load ptr, ptr %6, align 8, !tbaa !45
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5, !llvm.loop !116

13:                                               ; preds = %5, %1
  %14 = phi i32 [ 0, %1 ], [ %10, %5 ]
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mask_layer_shape_free(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.MaskLayerShape, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !69
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %6(ptr noundef nonnull %3) #21
  br label %7

7:                                                ; preds = %5, %1
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %8(ptr noundef %0) #21
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mask_layer_free_shapes(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !66
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %1, %13
  %6 = phi ptr [ %7, %13 ], [ %3, %1 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !67
  tail call void @BLI_remlink(ptr noundef nonnull %2, ptr noundef nonnull %6) #21
  %8 = getelementptr inbounds %struct.MaskLayerShape, ptr %6, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !69
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %5
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %12(ptr noundef nonnull %9) #21
  br label %13

13:                                               ; preds = %5, %11
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %14(ptr noundef nonnull %6) #21
  %15 = icmp eq ptr %7, null
  br i1 %15, label %16, label %5, !llvm.loop !70

16:                                               ; preds = %13, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mask_layer_free_list(ptr noundef %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 8, !tbaa !57
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %6, %4 ], [ %2, %1 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !117
  tail call void @BLI_remlink(ptr noundef nonnull %0, ptr noundef nonnull %5) #21
  tail call void @BKE_mask_layer_free(ptr noundef nonnull %5)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %4, !llvm.loop !118

8:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mask_free_nolib(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.Mask, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !57
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %7, %5 ], [ %3, %1 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !117
  tail call void @BLI_remlink(ptr noundef nonnull %2, ptr noundef nonnull %6) #21
  tail call void @BKE_mask_layer_free(ptr noundef nonnull %6)
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %5, !llvm.loop !118

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mask_free(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = alloca %struct.SeqIterator, align 8
  %4 = alloca %struct.NodeTreeIterStore, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 26
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = icmp eq ptr %8, null
  br i1 %9, label %43, label %13

10:                                               ; preds = %18, %13
  %11 = load ptr, ptr %14, align 8, !tbaa !45
  %12 = icmp eq ptr %11, null
  br i1 %12, label %43, label %13, !llvm.loop !119

13:                                               ; preds = %2, %10
  %14 = phi ptr [ %11, %10 ], [ %8, %2 ]
  %15 = getelementptr inbounds %struct.bScreen, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !45
  %17 = icmp eq ptr %16, null
  br i1 %17, label %10, label %21

18:                                               ; preds = %40, %21
  %19 = load ptr, ptr %22, align 8, !tbaa !45
  %20 = icmp eq ptr %19, null
  br i1 %20, label %10, label %21, !llvm.loop !120

21:                                               ; preds = %13, %18
  %22 = phi ptr [ %19, %18 ], [ %16, %13 ]
  %23 = getelementptr inbounds %struct.ScrArea, ptr %22, i64 0, i32 19
  %24 = load ptr, ptr %23, align 8, !tbaa !45
  %25 = icmp eq ptr %24, null
  br i1 %25, label %18, label %26

26:                                               ; preds = %21, %40
  %27 = phi ptr [ %41, %40 ], [ %24, %21 ]
  %28 = getelementptr inbounds %struct.SpaceLink, ptr %27, i64 0, i32 3
  %29 = load i32, ptr %28, align 8, !tbaa !121
  switch i32 %29, label %40 [
    i32 20, label %30
    i32 6, label %34
  ]

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.SpaceClip, ptr %27, i64 0, i32 28
  %32 = load ptr, ptr %31, align 8, !tbaa !123
  %33 = icmp eq ptr %32, %1
  br i1 %33, label %38, label %40

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.SpaceImage, ptr %27, i64 0, i32 26
  %36 = load ptr, ptr %35, align 8, !tbaa !129
  %37 = icmp eq ptr %36, %1
  br i1 %37, label %38, label %40

38:                                               ; preds = %34, %30
  %39 = phi ptr [ %31, %30 ], [ %35, %34 ]
  store ptr null, ptr %39, align 8, !tbaa !45
  br label %40

40:                                               ; preds = %38, %34, %30, %26
  %41 = load ptr, ptr %27, align 8, !tbaa !45
  %42 = icmp eq ptr %41, null
  br i1 %42, label %18, label %26, !llvm.loop !134

43:                                               ; preds = %10, %2
  %44 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 11
  %45 = load ptr, ptr %44, align 8, !tbaa !45
  %46 = icmp eq ptr %45, null
  br i1 %46, label %71, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.SeqIterator, ptr %3, i64 0, i32 4
  %49 = getelementptr inbounds %struct.SeqIterator, ptr %3, i64 0, i32 3
  br label %50

50:                                               ; preds = %47, %68
  %51 = phi ptr [ %45, %47 ], [ %69, %68 ]
  %52 = getelementptr inbounds %struct.Scene, ptr %51, i64 0, i32 19
  %53 = load ptr, ptr %52, align 8, !tbaa !135
  %54 = icmp eq ptr %53, null
  br i1 %54, label %68, label %55

55:                                               ; preds = %50
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  call void @BKE_sequence_iterator_begin(ptr noundef nonnull %53, ptr noundef nonnull %3, i8 noundef zeroext 0) #21
  %56 = load i32, ptr %48, align 8, !tbaa !155
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %67, label %58

58:                                               ; preds = %55, %64
  %59 = load ptr, ptr %49, align 8, !tbaa !157
  %60 = getelementptr inbounds %struct.Sequence, ptr %59, i64 0, i32 29
  %61 = load ptr, ptr %60, align 8, !tbaa !158
  %62 = icmp eq ptr %61, %1
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  store ptr null, ptr %60, align 8, !tbaa !158
  br label %64

64:                                               ; preds = %58, %63
  call void @BKE_sequence_iterator_next(ptr noundef nonnull %3) #21
  %65 = load i32, ptr %48, align 8, !tbaa !155
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %58, !llvm.loop !160

67:                                               ; preds = %64, %55
  call void @BKE_sequence_iterator_end(ptr noundef nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  br label %68

68:                                               ; preds = %50, %67
  %69 = load ptr, ptr %51, align 8, !tbaa !45
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %50, !llvm.loop !161

71:                                               ; preds = %68, %43
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  call void @BKE_node_tree_iter_init(ptr noundef nonnull %4, ptr noundef %0) #21
  %72 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #21
  %73 = icmp eq i8 %72, 1
  br i1 %73, label %74, label %81

74:                                               ; preds = %71, %78
  %75 = load ptr, ptr %5, align 8, !tbaa !45
  %76 = icmp eq ptr %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %74
  call void @BKE_node_tree_unlink_id(ptr noundef %1, ptr noundef nonnull %75) #21
  br label %78

78:                                               ; preds = %77, %74
  %79 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #21
  %80 = icmp eq i8 %79, 1
  br i1 %80, label %74, label %81, !llvm.loop !162

81:                                               ; preds = %78, %71
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #21
  %82 = getelementptr inbounds %struct.Mask, ptr %1, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !57
  %84 = icmp eq ptr %83, null
  br i1 %84, label %89, label %85

85:                                               ; preds = %81, %85
  %86 = phi ptr [ %87, %85 ], [ %83, %81 ]
  %87 = load ptr, ptr %86, align 8, !tbaa !117
  call void @BLI_remlink(ptr noundef nonnull %82, ptr noundef nonnull %86) #21
  call void @BKE_mask_layer_free(ptr noundef nonnull %86)
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %85, !llvm.loop !118

89:                                               ; preds = %85, %81
  ret void
}

declare void @BKE_sequence_iterator_begin(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @BKE_sequence_iterator_next(ptr noundef) local_unnamed_addr #3

declare void @BKE_sequence_iterator_end(ptr noundef) local_unnamed_addr #3

declare void @BKE_node_tree_iter_init(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @BKE_node_tree_iter_step(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BKE_node_tree_unlink_id(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_mask_coord_from_frame(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #9 {
  %4 = load float, ptr %2, align 4, !tbaa !86
  %5 = getelementptr inbounds float, ptr %2, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !86
  %7 = fcmp oeq float %4, %6
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = load float, ptr %1, align 4, !tbaa !86
  store float %9, ptr %0, align 4, !tbaa !86
  %10 = getelementptr inbounds float, ptr %1, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !86
  br label %29

12:                                               ; preds = %3
  %13 = fcmp olt float %4, %6
  %14 = load float, ptr %1, align 4, !tbaa !86
  br i1 %13, label %15, label %21

15:                                               ; preds = %12
  %16 = fadd float %14, -5.000000e-01
  %17 = fdiv float %4, %6
  %18 = tail call float @llvm.fmuladd.f32(float %16, float %17, float 5.000000e-01)
  store float %18, ptr %0, align 4, !tbaa !86
  %19 = getelementptr inbounds float, ptr %1, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !86
  br label %29

21:                                               ; preds = %12
  store float %14, ptr %0, align 4, !tbaa !86
  %22 = getelementptr inbounds float, ptr %1, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !86
  %24 = fadd float %23, -5.000000e-01
  %25 = load float, ptr %5, align 4, !tbaa !86
  %26 = load float, ptr %2, align 4, !tbaa !86
  %27 = fdiv float %25, %26
  %28 = tail call float @llvm.fmuladd.f32(float %24, float %27, float 5.000000e-01)
  br label %29

29:                                               ; preds = %15, %21, %8
  %30 = phi float [ %20, %15 ], [ %28, %21 ], [ %11, %8 ]
  %31 = getelementptr inbounds float, ptr %0, i64 1
  store float %30, ptr %31, align 4, !tbaa !86
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mask_coord_from_movieclip(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #1 {
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #21
  call void @BKE_movieclip_get_size_fl(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %7) #21
  call void @BKE_movieclip_get_aspect(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6) #21
  %8 = load float, ptr %6, align 4, !tbaa !86
  %9 = load float, ptr %5, align 4, !tbaa !86
  %10 = fdiv float %8, %9
  %11 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !86
  %13 = fmul float %12, %10
  store float %13, ptr %11, align 4, !tbaa !86
  %14 = load float, ptr %7, align 4, !tbaa !86
  %15 = fcmp oeq float %14, %13
  br i1 %15, label %16, label %21

16:                                               ; preds = %4
  %17 = load float, ptr %3, align 4, !tbaa !86
  store float %17, ptr %2, align 4, !tbaa !86
  %18 = getelementptr inbounds float, ptr %3, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !86
  %20 = getelementptr inbounds float, ptr %2, i64 1
  store float %19, ptr %20, align 4, !tbaa !86
  br label %37

21:                                               ; preds = %4
  %22 = fcmp olt float %14, %13
  %23 = load float, ptr %3, align 4, !tbaa !86
  %24 = getelementptr inbounds float, ptr %2, i64 1
  br i1 %22, label %25, label %31

25:                                               ; preds = %21
  %26 = fadd float %23, -5.000000e-01
  %27 = fdiv float %14, %13
  %28 = call float @llvm.fmuladd.f32(float %26, float %27, float 5.000000e-01)
  store float %28, ptr %2, align 4, !tbaa !86
  %29 = getelementptr inbounds float, ptr %3, i64 1
  %30 = load float, ptr %29, align 4, !tbaa !86
  store float %30, ptr %24, align 4, !tbaa !86
  br label %37

31:                                               ; preds = %21
  store float %23, ptr %2, align 4, !tbaa !86
  %32 = getelementptr inbounds float, ptr %3, i64 1
  %33 = load float, ptr %32, align 4, !tbaa !86
  %34 = fadd float %33, -5.000000e-01
  %35 = fdiv float %13, %14
  %36 = call float @llvm.fmuladd.f32(float %34, float %35, float 5.000000e-01)
  store float %36, ptr %24, align 4, !tbaa !86
  br label %37

37:                                               ; preds = %16, %25, %31
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  ret void
}

declare void @BKE_movieclip_get_size_fl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BKE_movieclip_get_aspect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mask_coord_from_image(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #1 {
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #21
  call void @BKE_image_get_size_fl(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %7) #21
  call void @BKE_image_get_aspect(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6) #21
  %8 = load float, ptr %6, align 4, !tbaa !86
  %9 = load float, ptr %5, align 4, !tbaa !86
  %10 = fdiv float %8, %9
  %11 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !86
  %13 = fmul float %12, %10
  store float %13, ptr %11, align 4, !tbaa !86
  %14 = load float, ptr %7, align 4, !tbaa !86
  %15 = fcmp oeq float %14, %13
  br i1 %15, label %16, label %21

16:                                               ; preds = %4
  %17 = load float, ptr %3, align 4, !tbaa !86
  store float %17, ptr %2, align 4, !tbaa !86
  %18 = getelementptr inbounds float, ptr %3, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !86
  %20 = getelementptr inbounds float, ptr %2, i64 1
  store float %19, ptr %20, align 4, !tbaa !86
  br label %37

21:                                               ; preds = %4
  %22 = fcmp olt float %14, %13
  %23 = load float, ptr %3, align 4, !tbaa !86
  %24 = getelementptr inbounds float, ptr %2, i64 1
  br i1 %22, label %25, label %31

25:                                               ; preds = %21
  %26 = fadd float %23, -5.000000e-01
  %27 = fdiv float %14, %13
  %28 = call float @llvm.fmuladd.f32(float %26, float %27, float 5.000000e-01)
  store float %28, ptr %2, align 4, !tbaa !86
  %29 = getelementptr inbounds float, ptr %3, i64 1
  %30 = load float, ptr %29, align 4, !tbaa !86
  store float %30, ptr %24, align 4, !tbaa !86
  br label %37

31:                                               ; preds = %21
  store float %23, ptr %2, align 4, !tbaa !86
  %32 = getelementptr inbounds float, ptr %3, i64 1
  %33 = load float, ptr %32, align 4, !tbaa !86
  %34 = fadd float %33, -5.000000e-01
  %35 = fdiv float %13, %14
  %36 = call float @llvm.fmuladd.f32(float %34, float %35, float 5.000000e-01)
  store float %36, ptr %24, align 4, !tbaa !86
  br label %37

37:                                               ; preds = %16, %25, %31
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  ret void
}

declare void @BKE_image_get_size_fl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BKE_image_get_aspect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_mask_coord_to_frame(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #9 {
  %4 = load float, ptr %2, align 4, !tbaa !86
  %5 = getelementptr inbounds float, ptr %2, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !86
  %7 = fcmp oeq float %4, %6
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = load float, ptr %1, align 4, !tbaa !86
  store float %9, ptr %0, align 4, !tbaa !86
  %10 = getelementptr inbounds float, ptr %1, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !86
  br label %31

12:                                               ; preds = %3
  %13 = fcmp olt float %4, %6
  %14 = load float, ptr %1, align 4, !tbaa !86
  br i1 %13, label %15, label %22

15:                                               ; preds = %12
  %16 = fadd float %14, -5.000000e-01
  %17 = fdiv float %4, %6
  %18 = fdiv float %16, %17
  %19 = fadd float %18, 5.000000e-01
  store float %19, ptr %0, align 4, !tbaa !86
  %20 = getelementptr inbounds float, ptr %1, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !86
  br label %31

22:                                               ; preds = %12
  store float %14, ptr %0, align 4, !tbaa !86
  %23 = getelementptr inbounds float, ptr %1, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !86
  %25 = fadd float %24, -5.000000e-01
  %26 = load float, ptr %5, align 4, !tbaa !86
  %27 = load float, ptr %2, align 4, !tbaa !86
  %28 = fdiv float %26, %27
  %29 = fdiv float %25, %28
  %30 = fadd float %29, 5.000000e-01
  br label %31

31:                                               ; preds = %15, %22, %8
  %32 = phi float [ %21, %15 ], [ %30, %22 ], [ %11, %8 ]
  %33 = getelementptr inbounds float, ptr %0, i64 1
  store float %32, ptr %33, align 4, !tbaa !86
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mask_coord_to_movieclip(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #1 {
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #21
  call void @BKE_movieclip_get_size_fl(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %7) #21
  call void @BKE_movieclip_get_aspect(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6) #21
  %8 = load float, ptr %6, align 4, !tbaa !86
  %9 = load float, ptr %5, align 4, !tbaa !86
  %10 = fdiv float %8, %9
  %11 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !86
  %13 = fmul float %12, %10
  store float %13, ptr %11, align 4, !tbaa !86
  %14 = load float, ptr %7, align 4, !tbaa !86
  %15 = fcmp oeq float %14, %13
  br i1 %15, label %16, label %21

16:                                               ; preds = %4
  %17 = load float, ptr %3, align 4, !tbaa !86
  store float %17, ptr %2, align 4, !tbaa !86
  %18 = getelementptr inbounds float, ptr %3, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !86
  %20 = getelementptr inbounds float, ptr %2, i64 1
  store float %19, ptr %20, align 4, !tbaa !86
  br label %39

21:                                               ; preds = %4
  %22 = fcmp olt float %14, %13
  %23 = load float, ptr %3, align 4, !tbaa !86
  %24 = getelementptr inbounds float, ptr %2, i64 1
  br i1 %22, label %25, label %32

25:                                               ; preds = %21
  %26 = fadd float %23, -5.000000e-01
  %27 = fdiv float %14, %13
  %28 = fdiv float %26, %27
  %29 = fadd float %28, 5.000000e-01
  store float %29, ptr %2, align 4, !tbaa !86
  %30 = getelementptr inbounds float, ptr %3, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !86
  store float %31, ptr %24, align 4, !tbaa !86
  br label %39

32:                                               ; preds = %21
  store float %23, ptr %2, align 4, !tbaa !86
  %33 = getelementptr inbounds float, ptr %3, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !86
  %35 = fadd float %34, -5.000000e-01
  %36 = fdiv float %13, %14
  %37 = fdiv float %35, %36
  %38 = fadd float %37, 5.000000e-01
  store float %38, ptr %24, align 4, !tbaa !86
  br label %39

39:                                               ; preds = %16, %25, %32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mask_coord_to_image(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #1 {
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #21
  call void @BKE_image_get_size_fl(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %7) #21
  call void @BKE_image_get_aspect(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6) #21
  %8 = load float, ptr %6, align 4, !tbaa !86
  %9 = load float, ptr %5, align 4, !tbaa !86
  %10 = fdiv float %8, %9
  %11 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !86
  %13 = fmul float %12, %10
  store float %13, ptr %11, align 4, !tbaa !86
  %14 = load float, ptr %7, align 4, !tbaa !86
  %15 = fcmp oeq float %14, %13
  br i1 %15, label %16, label %21

16:                                               ; preds = %4
  %17 = load float, ptr %3, align 4, !tbaa !86
  store float %17, ptr %2, align 4, !tbaa !86
  %18 = getelementptr inbounds float, ptr %3, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !86
  %20 = getelementptr inbounds float, ptr %2, i64 1
  store float %19, ptr %20, align 4, !tbaa !86
  br label %39

21:                                               ; preds = %4
  %22 = fcmp olt float %14, %13
  %23 = load float, ptr %3, align 4, !tbaa !86
  %24 = getelementptr inbounds float, ptr %2, i64 1
  br i1 %22, label %25, label %32

25:                                               ; preds = %21
  %26 = fadd float %23, -5.000000e-01
  %27 = fdiv float %14, %13
  %28 = fdiv float %26, %27
  %29 = fadd float %28, 5.000000e-01
  store float %29, ptr %2, align 4, !tbaa !86
  %30 = getelementptr inbounds float, ptr %3, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !86
  store float %31, ptr %24, align 4, !tbaa !86
  br label %39

32:                                               ; preds = %21
  store float %23, ptr %2, align 4, !tbaa !86
  %33 = getelementptr inbounds float, ptr %3, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !86
  %35 = fadd float %34, -5.000000e-01
  %36 = fdiv float %13, %14
  %37 = fdiv float %35, %36
  %38 = fadd float %37, 5.000000e-01
  store float %38, ptr %24, align 4, !tbaa !86
  br label %39

39:                                               ; preds = %16, %25, %32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mask_point_parent_matrix_get(ptr noundef %0, float noundef %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca [2 x float], align 4
  %7 = alloca %struct.MovieClipUser, align 8
  %8 = alloca [2 x float], align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca [2 x float], align 4
  %12 = alloca [3 x [3 x float]], align 16
  %13 = alloca [3 x [3 x float]], align 16
  %14 = alloca [3 x [3 x float]], align 16
  tail call void @unit_m3(ptr noundef %2) #21
  %15 = getelementptr inbounds %struct.MaskSplinePoint, ptr %0, i64 0, i32 4
  %16 = load i32, ptr %15, align 8, !tbaa !84
  %17 = icmp eq i32 %16, 17229
  br i1 %17, label %18, label %104

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.MaskSplinePoint, ptr %0, i64 0, i32 4, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !163
  %21 = icmp eq ptr %20, null
  br i1 %21, label %104, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.MovieClip, ptr %20, i64 0, i32 11
  %24 = getelementptr inbounds %struct.MaskSplinePoint, ptr %0, i64 0, i32 4, i32 3
  %25 = tail call ptr @BKE_tracking_object_get_named(ptr noundef nonnull %23, ptr noundef nonnull %24) #21
  %26 = icmp eq ptr %25, null
  br i1 %26, label %104, label %27

27:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #21
  store i64 0, ptr %7, align 8
  %28 = tail call float @BKE_movieclip_remap_scene_to_clip_frame(ptr noundef nonnull %20, float noundef %1) #21
  %29 = fptosi float %1 to i32
  call void @BKE_movieclip_user_set_frame(ptr noundef nonnull %7, i32 noundef %29) #21
  %30 = getelementptr inbounds %struct.MaskSplinePoint, ptr %0, i64 0, i32 4, i32 1
  %31 = load i32, ptr %30, align 4, !tbaa !164
  %32 = icmp eq i32 %31, 0
  %33 = getelementptr inbounds %struct.MaskSplinePoint, ptr %0, i64 0, i32 4, i32 4
  br i1 %32, label %34, label %76

34:                                               ; preds = %27
  %35 = call ptr @BKE_tracking_track_get_named(ptr noundef nonnull %23, ptr noundef nonnull %25, ptr noundef nonnull %33) #21
  %36 = icmp eq ptr %35, null
  br i1 %36, label %103, label %37

37:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #21
  call void @BKE_tracking_marker_get_subframe_position(ptr noundef nonnull %35, float noundef %28, ptr noundef nonnull %8) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  call void @BKE_movieclip_get_size_fl(ptr noundef nonnull %20, ptr noundef nonnull %7, ptr noundef nonnull %6) #21
  call void @BKE_movieclip_get_aspect(ptr noundef nonnull %20, ptr noundef nonnull %4, ptr noundef nonnull %5) #21
  %38 = load float, ptr %5, align 4, !tbaa !86
  %39 = load float, ptr %4, align 4, !tbaa !86
  %40 = fdiv float %38, %39
  %41 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 1
  %42 = load float, ptr %41, align 4, !tbaa !86
  %43 = fmul float %42, %40
  store float %43, ptr %41, align 4, !tbaa !86
  %44 = load float, ptr %6, align 4, !tbaa !86
  %45 = fcmp oeq float %44, %43
  br i1 %45, label %46, label %50

46:                                               ; preds = %37
  %47 = load float, ptr %8, align 4, !tbaa !86
  %48 = getelementptr inbounds float, ptr %8, i64 1
  %49 = load float, ptr %48, align 4, !tbaa !86
  br label %65

50:                                               ; preds = %37
  %51 = fcmp olt float %44, %43
  %52 = load float, ptr %8, align 4, !tbaa !86
  br i1 %51, label %53, label %59

53:                                               ; preds = %50
  %54 = fadd float %52, -5.000000e-01
  %55 = fdiv float %44, %43
  %56 = call float @llvm.fmuladd.f32(float %54, float %55, float 5.000000e-01)
  %57 = getelementptr inbounds float, ptr %8, i64 1
  %58 = load float, ptr %57, align 4, !tbaa !86
  br label %65

59:                                               ; preds = %50
  %60 = getelementptr inbounds float, ptr %8, i64 1
  %61 = load float, ptr %60, align 4, !tbaa !86
  %62 = fadd float %61, -5.000000e-01
  %63 = fdiv float %43, %44
  %64 = call float @llvm.fmuladd.f32(float %62, float %63, float 5.000000e-01)
  br label %65

65:                                               ; preds = %46, %53, %59
  %66 = phi float [ %49, %46 ], [ %58, %53 ], [ %64, %59 ]
  %67 = phi float [ %47, %46 ], [ %56, %53 ], [ %52, %59 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #21
  %68 = getelementptr inbounds [3 x float], ptr %2, i64 2
  %69 = getelementptr inbounds %struct.MaskSplinePoint, ptr %0, i64 0, i32 4, i32 5
  %70 = load float, ptr %69, align 4, !tbaa !86
  %71 = fsub float %67, %70
  store float %71, ptr %68, align 4, !tbaa !86
  %72 = getelementptr inbounds %struct.MaskSplinePoint, ptr %0, i64 0, i32 4, i32 5, i64 1
  %73 = load float, ptr %72, align 4, !tbaa !86
  %74 = fsub float %66, %73
  %75 = getelementptr inbounds [3 x float], ptr %2, i64 2, i64 1
  store float %74, ptr %75, align 4, !tbaa !86
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #21
  br label %103

76:                                               ; preds = %27
  %77 = call ptr @BKE_tracking_plane_track_get_named(ptr noundef nonnull %23, ptr noundef nonnull %25, ptr noundef nonnull %33) #21
  %78 = icmp eq ptr %77, null
  br i1 %78, label %103, label %79

79:                                               ; preds = %76
  %80 = fptosi float %28 to i32
  %81 = call ptr @BKE_tracking_plane_marker_get(ptr noundef nonnull %77, i32 noundef %80) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #21
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %12) #21
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %13) #21
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %14) #21
  %82 = getelementptr inbounds %struct.MaskSplinePoint, ptr %0, i64 0, i32 4, i32 6
  call void @BKE_tracking_homography_between_two_quads(ptr noundef nonnull %82, ptr noundef %81, ptr noundef nonnull %12) #21
  call void @unit_m3(ptr noundef nonnull %13) #21
  call void @BKE_movieclip_get_size_fl(ptr noundef nonnull %20, ptr noundef nonnull %7, ptr noundef nonnull %11) #21
  call void @BKE_movieclip_get_aspect(ptr noundef nonnull %20, ptr noundef nonnull %9, ptr noundef nonnull %10) #21
  %83 = load float, ptr %10, align 4, !tbaa !86
  %84 = load float, ptr %9, align 4, !tbaa !86
  %85 = fdiv float %83, %84
  %86 = getelementptr inbounds [2 x float], ptr %11, i64 0, i64 1
  %87 = load float, ptr %86, align 4, !tbaa !86
  %88 = fmul float %87, %85
  store float %88, ptr %86, align 4, !tbaa !86
  %89 = load float, ptr %11, align 4, !tbaa !86
  %90 = fcmp oeq float %89, %88
  br i1 %90, label %101, label %91

91:                                               ; preds = %79
  %92 = fcmp olt float %89, %88
  %93 = fdiv float %88, %89
  br i1 %92, label %94, label %97

94:                                               ; preds = %91
  store float %93, ptr %13, align 16, !tbaa !86
  %95 = call float @llvm.fmuladd.f32(float %93, float -5.000000e-01, float 5.000000e-01)
  %96 = getelementptr inbounds [3 x [3 x float]], ptr %13, i64 0, i64 2
  store float %95, ptr %96, align 8, !tbaa !86
  br label %101

97:                                               ; preds = %91
  %98 = getelementptr inbounds [3 x [3 x float]], ptr %13, i64 0, i64 1, i64 1
  store float %93, ptr %98, align 16, !tbaa !86
  %99 = call float @llvm.fmuladd.f32(float %93, float -5.000000e-01, float 5.000000e-01)
  %100 = getelementptr inbounds [3 x [3 x float]], ptr %13, i64 0, i64 2, i64 1
  store float %99, ptr %100, align 4, !tbaa !86
  br label %101

101:                                              ; preds = %94, %97, %79
  %102 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %14, ptr noundef nonnull %13) #21
  call void @_va_mul_m3_series_4(ptr noundef %2, ptr noundef nonnull %13, ptr noundef nonnull %12, ptr noundef nonnull %14) #21
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %14) #21
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %13) #21
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #21
  br label %103

103:                                              ; preds = %76, %101, %34, %65
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #21
  br label %104

104:                                              ; preds = %3, %18, %103, %22
  ret void
}

declare void @unit_m3(ptr noundef) local_unnamed_addr #3

declare ptr @BKE_tracking_object_get_named(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

declare float @BKE_movieclip_remap_scene_to_clip_frame(ptr noundef, float noundef) local_unnamed_addr #3

declare void @BKE_movieclip_user_set_frame(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @BKE_tracking_track_get_named(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BKE_tracking_marker_get_subframe_position(ptr noundef, float noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BKE_tracking_plane_track_get_named(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BKE_tracking_plane_marker_get(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @BKE_tracking_homography_between_two_quads(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @invert_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_va_mul_m3_series_4(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @BKE_mask_calc_tangent_polyline(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr nocapture noundef %2) local_unnamed_addr #13 {
  %4 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ugt ptr %5, %1
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 5
  %9 = load i32, ptr %8, align 4, !tbaa !34
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.MaskSplinePoint, ptr %5, i64 %10
  %12 = icmp ugt ptr %11, %1
  br i1 %12, label %24, label %13

13:                                               ; preds = %7, %3
  %14 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !43
  %16 = icmp ugt ptr %15, %1
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 5
  %19 = load i32, ptr %18, align 4, !tbaa !34
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.MaskSplinePoint, ptr %15, i64 %20
  %22 = icmp ugt ptr %21, %1
  br i1 %22, label %24, label %23

23:                                               ; preds = %17, %13
  br label %24

24:                                               ; preds = %23, %17, %7
  %25 = phi ptr [ null, %23 ], [ %5, %7 ], [ %15, %17 ]
  %26 = icmp eq ptr %25, %1
  br i1 %26, label %27, label %38

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 2
  %29 = load i16, ptr %28, align 8, !tbaa !42
  %30 = and i16 %29, 2
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 5
  %34 = load i32, ptr %33, align 4, !tbaa !34
  %35 = sext i32 %34 to i64
  %36 = getelementptr %struct.MaskSplinePoint, ptr %25, i64 %35
  %37 = getelementptr %struct.MaskSplinePoint, ptr %36, i64 -1
  br label %40

38:                                               ; preds = %24
  %39 = getelementptr inbounds %struct.MaskSplinePoint, ptr %1, i64 -1
  br label %40

40:                                               ; preds = %38, %32, %27
  %41 = phi ptr [ %37, %32 ], [ %39, %38 ], [ null, %27 ]
  %42 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 5
  %43 = load i32, ptr %42, align 4, !tbaa !34
  %44 = sext i32 %43 to i64
  %45 = getelementptr %struct.MaskSplinePoint, ptr %25, i64 %44
  %46 = getelementptr %struct.MaskSplinePoint, ptr %45, i64 -1
  %47 = icmp eq ptr %46, %1
  br i1 %47, label %48, label %54

48:                                               ; preds = %40
  %49 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 2
  %50 = load i16, ptr %49, align 8, !tbaa !42
  %51 = and i16 %50, 2
  %52 = icmp eq i16 %51, 0
  %53 = select i1 %52, ptr null, ptr %25
  br label %56

54:                                               ; preds = %40
  %55 = getelementptr inbounds %struct.MaskSplinePoint, ptr %1, i64 1
  br label %56

56:                                               ; preds = %48, %54
  %57 = phi ptr [ %55, %54 ], [ %53, %48 ]
  %58 = icmp eq ptr %41, null
  br i1 %58, label %78, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  %61 = getelementptr inbounds [3 x [3 x float]], ptr %41, i64 0, i64 1
  %62 = load float, ptr %60, align 4, !tbaa !86
  %63 = load float, ptr %61, align 4, !tbaa !86
  %64 = fsub float %62, %63
  %65 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1, i64 1
  %66 = load float, ptr %65, align 4, !tbaa !86
  %67 = getelementptr inbounds [3 x [3 x float]], ptr %41, i64 0, i64 1, i64 1
  %68 = load float, ptr %67, align 4, !tbaa !86
  %69 = fsub float %66, %68
  %70 = fmul float %69, %69
  %71 = tail call float @llvm.fmuladd.f32(float %64, float %64, float %70)
  %72 = fcmp ogt float %71, 0x38AA95A5C0000000
  br i1 %72, label %73, label %78

73:                                               ; preds = %59
  %74 = tail call float @sqrtf(float noundef %71) #21
  %75 = fdiv float 1.000000e+00, %74
  %76 = fmul float %64, %75
  %77 = fmul float %69, %75
  br label %78

78:                                               ; preds = %56, %73, %59
  %79 = phi float [ %77, %73 ], [ 0.000000e+00, %59 ], [ 0.000000e+00, %56 ]
  %80 = phi float [ %76, %73 ], [ 0.000000e+00, %59 ], [ 0.000000e+00, %56 ]
  %81 = icmp eq ptr %57, null
  br i1 %81, label %101, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds [3 x [3 x float]], ptr %57, i64 0, i64 1
  %84 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  %85 = load float, ptr %83, align 4, !tbaa !86
  %86 = load float, ptr %84, align 4, !tbaa !86
  %87 = fsub float %85, %86
  %88 = getelementptr inbounds [3 x [3 x float]], ptr %57, i64 0, i64 1, i64 1
  %89 = load float, ptr %88, align 4, !tbaa !86
  %90 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1, i64 1
  %91 = load float, ptr %90, align 4, !tbaa !86
  %92 = fsub float %89, %91
  %93 = fmul float %92, %92
  %94 = tail call float @llvm.fmuladd.f32(float %87, float %87, float %93)
  %95 = fcmp ogt float %94, 0x38AA95A5C0000000
  br i1 %95, label %96, label %101

96:                                               ; preds = %82
  %97 = tail call float @sqrtf(float noundef %94) #21
  %98 = fdiv float 1.000000e+00, %97
  %99 = fmul float %87, %98
  %100 = fmul float %92, %98
  br label %101

101:                                              ; preds = %78, %96, %82
  %102 = phi float [ %100, %96 ], [ 0.000000e+00, %82 ], [ 0.000000e+00, %78 ]
  %103 = phi float [ %99, %96 ], [ 0.000000e+00, %82 ], [ 0.000000e+00, %78 ]
  %104 = fadd float %80, %103
  store float %104, ptr %2, align 4, !tbaa !86
  %105 = fadd float %79, %102
  %106 = getelementptr inbounds float, ptr %2, i64 1
  store float %105, ptr %106, align 4, !tbaa !86
  %107 = fmul float %105, %105
  %108 = tail call float @llvm.fmuladd.f32(float %104, float %104, float %107)
  %109 = fcmp ogt float %108, 0x38AA95A5C0000000
  br i1 %109, label %110, label %117

110:                                              ; preds = %101
  %111 = tail call float @sqrtf(float noundef %108) #21
  %112 = fdiv float 1.000000e+00, %111
  %113 = load float, ptr %2, align 4, !tbaa !86
  %114 = fmul float %113, %112
  store float %114, ptr %2, align 4, !tbaa !86
  %115 = load float, ptr %106, align 4, !tbaa !86
  %116 = fmul float %112, %115
  br label %118

117:                                              ; preds = %101
  store float 0.000000e+00, ptr %2, align 4, !tbaa !86
  br label %118

118:                                              ; preds = %110, %117
  %119 = phi float [ 0.000000e+00, %117 ], [ %116, %110 ]
  store float %119, ptr %106, align 4, !tbaa !86
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mask_calc_handle_point(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !44
  %5 = icmp ugt ptr %4, %1
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 5
  %8 = load i32, ptr %7, align 4, !tbaa !34
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.MaskSplinePoint, ptr %4, i64 %9
  %11 = icmp ugt ptr %10, %1
  br i1 %11, label %23, label %12

12:                                               ; preds = %6, %2
  %13 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 8
  %14 = load ptr, ptr %13, align 8, !tbaa !43
  %15 = icmp ugt ptr %14, %1
  br i1 %15, label %22, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 5
  %18 = load i32, ptr %17, align 4, !tbaa !34
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.MaskSplinePoint, ptr %14, i64 %19
  %21 = icmp ugt ptr %20, %1
  br i1 %21, label %23, label %22

22:                                               ; preds = %16, %12
  br label %23

23:                                               ; preds = %22, %16, %6
  %24 = phi ptr [ null, %22 ], [ %4, %6 ], [ %14, %16 ]
  %25 = icmp eq ptr %24, %1
  br i1 %25, label %26, label %37

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 2
  %28 = load i16, ptr %27, align 8, !tbaa !42
  %29 = and i16 %28, 2
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 5
  %33 = load i32, ptr %32, align 4, !tbaa !34
  %34 = sext i32 %33 to i64
  %35 = getelementptr %struct.MaskSplinePoint, ptr %24, i64 %34
  %36 = getelementptr %struct.MaskSplinePoint, ptr %35, i64 -1
  br label %39

37:                                               ; preds = %23
  %38 = getelementptr inbounds %struct.MaskSplinePoint, ptr %1, i64 -1
  br label %39

39:                                               ; preds = %37, %31, %26
  %40 = phi ptr [ %36, %31 ], [ %38, %37 ], [ null, %26 ]
  %41 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 5
  %42 = load i32, ptr %41, align 4, !tbaa !34
  %43 = sext i32 %42 to i64
  %44 = getelementptr %struct.MaskSplinePoint, ptr %24, i64 %43
  %45 = getelementptr %struct.MaskSplinePoint, ptr %44, i64 -1
  %46 = icmp eq ptr %45, %1
  br i1 %46, label %47, label %53

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 2
  %49 = load i16, ptr %48, align 8, !tbaa !42
  %50 = and i16 %49, 2
  %51 = icmp eq i16 %50, 0
  %52 = select i1 %51, ptr null, ptr %24
  br label %55

53:                                               ; preds = %39
  %54 = getelementptr inbounds %struct.MaskSplinePoint, ptr %1, i64 1
  br label %55

55:                                               ; preds = %47, %53
  %56 = phi ptr [ %54, %53 ], [ %52, %47 ]
  %57 = icmp ne ptr %40, null
  %58 = icmp ne ptr %56, null
  %59 = or i1 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  tail call void @BKE_nurb_handle_calc(ptr noundef %1, ptr noundef %40, ptr noundef %56, i8 noundef zeroext 0) #21
  br label %61

61:                                               ; preds = %55, %60
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mask_calc_handle_adjacent_interp(ptr nocapture noundef readonly %0, ptr noundef %1, float noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ugt ptr %5, %1
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 5
  %9 = load i32, ptr %8, align 4, !tbaa !34
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.MaskSplinePoint, ptr %5, i64 %10
  %12 = icmp ugt ptr %11, %1
  br i1 %12, label %24, label %13

13:                                               ; preds = %7, %3
  %14 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !43
  %16 = icmp ugt ptr %15, %1
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 5
  %19 = load i32, ptr %18, align 4, !tbaa !34
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.MaskSplinePoint, ptr %15, i64 %20
  %22 = icmp ugt ptr %21, %1
  br i1 %22, label %24, label %23

23:                                               ; preds = %17, %13
  br label %24

24:                                               ; preds = %23, %17, %7
  %25 = phi ptr [ null, %23 ], [ %5, %7 ], [ %15, %17 ]
  %26 = icmp eq ptr %25, %1
  br i1 %26, label %27, label %38

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 2
  %29 = load i16, ptr %28, align 8, !tbaa !42
  %30 = and i16 %29, 2
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 5
  %34 = load i32, ptr %33, align 4, !tbaa !34
  %35 = sext i32 %34 to i64
  %36 = getelementptr %struct.MaskSplinePoint, ptr %25, i64 %35
  %37 = getelementptr %struct.MaskSplinePoint, ptr %36, i64 -1
  br label %40

38:                                               ; preds = %24
  %39 = getelementptr inbounds %struct.MaskSplinePoint, ptr %1, i64 -1
  br label %40

40:                                               ; preds = %38, %32, %27
  %41 = phi ptr [ %37, %32 ], [ %39, %38 ], [ null, %27 ]
  %42 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 5
  %43 = load i32, ptr %42, align 4, !tbaa !34
  %44 = sext i32 %43 to i64
  %45 = getelementptr %struct.MaskSplinePoint, ptr %25, i64 %44
  %46 = getelementptr %struct.MaskSplinePoint, ptr %45, i64 -1
  %47 = icmp eq ptr %46, %1
  br i1 %47, label %48, label %54

48:                                               ; preds = %40
  %49 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 2
  %50 = load i16, ptr %49, align 8, !tbaa !42
  %51 = and i16 %50, 2
  %52 = icmp eq i16 %51, 0
  %53 = select i1 %52, ptr null, ptr %25
  br label %56

54:                                               ; preds = %40
  %55 = getelementptr inbounds %struct.MaskSplinePoint, ptr %1, i64 1
  br label %56

56:                                               ; preds = %48, %54
  %57 = phi ptr [ %55, %54 ], [ %53, %48 ]
  %58 = icmp ne ptr %41, null
  %59 = icmp ne ptr %57, null
  %60 = select i1 %58, i1 %59, i1 false
  br i1 %60, label %61, label %96

61:                                               ; preds = %56
  %62 = getelementptr inbounds [3 x [3 x float]], ptr %41, i64 0, i64 1
  %63 = load float, ptr %41, align 4, !tbaa !86
  %64 = load float, ptr %62, align 4, !tbaa !86
  %65 = fsub float %63, %64
  %66 = getelementptr inbounds float, ptr %41, i64 1
  %67 = load float, ptr %66, align 4, !tbaa !86
  %68 = getelementptr inbounds [3 x [3 x float]], ptr %41, i64 0, i64 1, i64 1
  %69 = load float, ptr %68, align 4, !tbaa !86
  %70 = fsub float %67, %69
  %71 = fmul float %70, %70
  %72 = tail call float @llvm.fmuladd.f32(float %65, float %65, float %71)
  %73 = tail call float @sqrtf(float noundef %72) #21
  %74 = fsub float 1.000000e+00, %2
  %75 = getelementptr inbounds [3 x [3 x float]], ptr %57, i64 0, i64 2
  %76 = getelementptr inbounds [3 x [3 x float]], ptr %57, i64 0, i64 1
  %77 = load float, ptr %75, align 4, !tbaa !86
  %78 = load float, ptr %76, align 4, !tbaa !86
  %79 = fsub float %77, %78
  %80 = getelementptr inbounds [3 x [3 x float]], ptr %57, i64 0, i64 2, i64 1
  %81 = load float, ptr %80, align 4, !tbaa !86
  %82 = getelementptr inbounds [3 x [3 x float]], ptr %57, i64 0, i64 1, i64 1
  %83 = load float, ptr %82, align 4, !tbaa !86
  %84 = fsub float %81, %83
  %85 = fmul float %84, %84
  %86 = tail call float @llvm.fmuladd.f32(float %79, float %79, float %85)
  %87 = tail call float @sqrtf(float noundef %86) #21
  %88 = fmul float %87, %2
  %89 = tail call float @llvm.fmuladd.f32(float %73, float %74, float %88)
  %90 = getelementptr inbounds %struct.BezTriple, ptr %41, i64 0, i32 2
  %91 = load float, ptr %90, align 8, !tbaa !165
  %92 = getelementptr inbounds %struct.BezTriple, ptr %57, i64 0, i32 2
  %93 = load float, ptr %92, align 8, !tbaa !165
  %94 = fmul float %93, %2
  %95 = tail call float @llvm.fmuladd.f32(float %91, float %74, float %94)
  br label %138

96:                                               ; preds = %56
  br i1 %58, label %97, label %114

97:                                               ; preds = %96
  %98 = getelementptr inbounds [3 x [3 x float]], ptr %41, i64 0, i64 1
  %99 = load float, ptr %41, align 4, !tbaa !86
  %100 = load float, ptr %98, align 4, !tbaa !86
  %101 = fsub float %99, %100
  %102 = getelementptr inbounds float, ptr %41, i64 1
  %103 = load float, ptr %102, align 4, !tbaa !86
  %104 = getelementptr inbounds [3 x [3 x float]], ptr %41, i64 0, i64 1, i64 1
  %105 = load float, ptr %104, align 4, !tbaa !86
  %106 = fsub float %103, %105
  %107 = fmul float %106, %106
  %108 = tail call float @llvm.fmuladd.f32(float %101, float %101, float %107)
  %109 = tail call float @sqrtf(float noundef %108) #21
  %110 = fadd float %109, 0.000000e+00
  %111 = getelementptr inbounds %struct.BezTriple, ptr %41, i64 0, i32 2
  %112 = load float, ptr %111, align 8, !tbaa !165
  %113 = fadd float %112, 0.000000e+00
  br label %114

114:                                              ; preds = %97, %96
  %115 = phi i32 [ 1, %97 ], [ 0, %96 ]
  %116 = phi float [ %110, %97 ], [ 0.000000e+00, %96 ]
  %117 = phi float [ %113, %97 ], [ 0.000000e+00, %96 ]
  %118 = icmp eq ptr %57, null
  br i1 %118, label %138, label %119

119:                                              ; preds = %114
  %120 = getelementptr inbounds [3 x [3 x float]], ptr %57, i64 0, i64 2
  %121 = getelementptr inbounds [3 x [3 x float]], ptr %57, i64 0, i64 1
  %122 = load float, ptr %120, align 4, !tbaa !86
  %123 = load float, ptr %121, align 4, !tbaa !86
  %124 = fsub float %122, %123
  %125 = getelementptr inbounds [3 x [3 x float]], ptr %57, i64 0, i64 2, i64 1
  %126 = load float, ptr %125, align 4, !tbaa !86
  %127 = getelementptr inbounds [3 x [3 x float]], ptr %57, i64 0, i64 1, i64 1
  %128 = load float, ptr %127, align 4, !tbaa !86
  %129 = fsub float %126, %128
  %130 = fmul float %129, %129
  %131 = tail call float @llvm.fmuladd.f32(float %124, float %124, float %130)
  %132 = tail call float @sqrtf(float noundef %131) #21
  %133 = fadd float %116, %132
  %134 = getelementptr inbounds %struct.BezTriple, ptr %57, i64 0, i32 2
  %135 = load float, ptr %134, align 8, !tbaa !165
  %136 = fadd float %117, %135
  %137 = add nuw nsw i32 %115, 1
  br label %138

138:                                              ; preds = %114, %119, %61
  %139 = phi i32 [ 1, %61 ], [ %137, %119 ], [ %115, %114 ]
  %140 = phi float [ %89, %61 ], [ %133, %119 ], [ %116, %114 ]
  %141 = phi float [ %95, %61 ], [ %136, %119 ], [ %117, %114 ]
  %142 = icmp eq i32 %139, 0
  br i1 %142, label %150, label %143

143:                                              ; preds = %138
  %144 = sitofp i32 %139 to float
  %145 = fdiv float %140, %144
  %146 = fdiv float %141, %144
  %147 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  tail call void @dist_ensure_v2_v2fl(ptr noundef %1, ptr noundef nonnull %147, float noundef %145) #21
  %148 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 2
  tail call void @dist_ensure_v2_v2fl(ptr noundef nonnull %148, ptr noundef nonnull %147, float noundef %145) #21
  %149 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 2
  store float %146, ptr %149, align 8, !tbaa !165
  br label %150

150:                                              ; preds = %143, %138
  ret void
}

declare void @dist_ensure_v2_v2fl(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mask_calc_handle_point_auto(ptr nocapture noundef readonly %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 5
  %5 = load i8, ptr %4, align 1, !tbaa !89
  %6 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 6
  %7 = load i8, ptr %6, align 2, !tbaa !90
  %8 = icmp eq i8 %2, 0
  br i1 %8, label %9, label %46

9:                                                ; preds = %3
  %10 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !86
  %12 = load float, ptr %1, align 4, !tbaa !86
  %13 = fsub float %11, %12
  %14 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !86
  %16 = getelementptr inbounds float, ptr %1, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !86
  %18 = fsub float %15, %17
  %19 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !86
  %21 = getelementptr inbounds float, ptr %1, i64 2
  %22 = load float, ptr %21, align 4, !tbaa !86
  %23 = fsub float %20, %22
  %24 = fmul float %18, %18
  %25 = tail call float @llvm.fmuladd.f32(float %13, float %13, float %24)
  %26 = tail call float @llvm.fmuladd.f32(float %23, float %23, float %25)
  %27 = tail call float @sqrtf(float noundef %26) #21
  %28 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 2
  %29 = load float, ptr %28, align 4, !tbaa !86
  %30 = load float, ptr %10, align 4, !tbaa !86
  %31 = fsub float %29, %30
  %32 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 2, i64 1
  %33 = load float, ptr %32, align 4, !tbaa !86
  %34 = load float, ptr %14, align 4, !tbaa !86
  %35 = fsub float %33, %34
  %36 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 2, i64 2
  %37 = load float, ptr %36, align 4, !tbaa !86
  %38 = load float, ptr %19, align 4, !tbaa !86
  %39 = fsub float %37, %38
  %40 = fmul float %35, %35
  %41 = tail call float @llvm.fmuladd.f32(float %31, float %31, float %40)
  %42 = tail call float @llvm.fmuladd.f32(float %39, float %39, float %41)
  %43 = tail call float @sqrtf(float noundef %42) #21
  %44 = fadd float %27, %43
  %45 = fmul float %44, 5.000000e-01
  br label %46

46:                                               ; preds = %3, %9
  %47 = phi float [ %45, %9 ], [ 0.000000e+00, %3 ]
  %48 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 6
  %49 = load ptr, ptr %48, align 8, !tbaa !44
  %50 = icmp ugt ptr %49, %1
  br i1 %50, label %57, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 5
  %53 = load i32, ptr %52, align 4, !tbaa !34
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.MaskSplinePoint, ptr %49, i64 %54
  %56 = icmp ugt ptr %55, %1
  br i1 %56, label %68, label %57

57:                                               ; preds = %51, %46
  %58 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 8
  %59 = load ptr, ptr %58, align 8, !tbaa !43
  %60 = icmp ugt ptr %59, %1
  br i1 %60, label %67, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 5
  %63 = load i32, ptr %62, align 4, !tbaa !34
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.MaskSplinePoint, ptr %59, i64 %64
  %66 = icmp ugt ptr %65, %1
  br i1 %66, label %68, label %67

67:                                               ; preds = %61, %57
  br label %68

68:                                               ; preds = %67, %61, %51
  %69 = phi ptr [ null, %67 ], [ %49, %51 ], [ %59, %61 ]
  %70 = icmp eq ptr %69, %1
  br i1 %70, label %71, label %82

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 2
  %73 = load i16, ptr %72, align 8, !tbaa !42
  %74 = and i16 %73, 2
  %75 = icmp eq i16 %74, 0
  br i1 %75, label %84, label %76

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 5
  %78 = load i32, ptr %77, align 4, !tbaa !34
  %79 = sext i32 %78 to i64
  %80 = getelementptr %struct.MaskSplinePoint, ptr %69, i64 %79
  %81 = getelementptr %struct.MaskSplinePoint, ptr %80, i64 -1
  br label %84

82:                                               ; preds = %68
  %83 = getelementptr inbounds %struct.MaskSplinePoint, ptr %1, i64 -1
  br label %84

84:                                               ; preds = %82, %76, %71
  %85 = phi ptr [ %81, %76 ], [ %83, %82 ], [ null, %71 ]
  %86 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 5
  %87 = load i32, ptr %86, align 4, !tbaa !34
  %88 = sext i32 %87 to i64
  %89 = getelementptr %struct.MaskSplinePoint, ptr %69, i64 %88
  %90 = getelementptr %struct.MaskSplinePoint, ptr %89, i64 -1
  %91 = icmp eq ptr %90, %1
  br i1 %91, label %92, label %98

92:                                               ; preds = %84
  %93 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 2
  %94 = load i16, ptr %93, align 8, !tbaa !42
  %95 = and i16 %94, 2
  %96 = icmp eq i16 %95, 0
  %97 = select i1 %96, ptr null, ptr %69
  br label %100

98:                                               ; preds = %84
  %99 = getelementptr inbounds %struct.MaskSplinePoint, ptr %1, i64 1
  br label %100

100:                                              ; preds = %92, %98
  %101 = phi ptr [ %99, %98 ], [ %97, %92 ]
  store i8 1, ptr %4, align 1, !tbaa !89
  store i8 1, ptr %6, align 2, !tbaa !90
  %102 = icmp ne ptr %85, null
  %103 = icmp ne ptr %101, null
  %104 = or i1 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  tail call void @BKE_nurb_handle_calc(ptr noundef %1, ptr noundef %85, ptr noundef %101, i8 noundef zeroext 0) #21
  br label %106

106:                                              ; preds = %100, %105
  store i8 %5, ptr %4, align 1, !tbaa !89
  store i8 %7, ptr %6, align 2, !tbaa !90
  br i1 %8, label %107, label %110

107:                                              ; preds = %106
  %108 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  tail call void @dist_ensure_v2_v2fl(ptr noundef %1, ptr noundef nonnull %108, float noundef %47) #21
  %109 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 2
  tail call void @dist_ensure_v2_v2fl(ptr noundef nonnull %109, ptr noundef nonnull %108, float noundef %47) #21
  br label %110

110:                                              ; preds = %107, %106
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mask_layer_calc_handles(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = icmp eq ptr %3, null
  br i1 %4, label %57, label %8

5:                                                ; preds = %52, %8
  %6 = load ptr, ptr %9, align 8, !tbaa !45
  %7 = icmp eq ptr %6, null
  br i1 %7, label %57, label %8, !llvm.loop !166

8:                                                ; preds = %1, %5
  %9 = phi ptr [ %6, %5 ], [ %3, %1 ]
  %10 = getelementptr inbounds %struct.MaskSpline, ptr %9, i64 0, i32 5
  %11 = load i32, ptr %10, align 4, !tbaa !34
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %5

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.MaskSpline, ptr %9, i64 0, i32 6
  %15 = getelementptr inbounds %struct.MaskSpline, ptr %9, i64 0, i32 2
  %16 = getelementptr inbounds %struct.MaskSpline, ptr %9, i64 0, i32 2
  br label %17

17:                                               ; preds = %13, %52
  %18 = phi i64 [ 0, %13 ], [ %53, %52 ]
  %19 = phi i32 [ %11, %13 ], [ %54, %52 ]
  %20 = load ptr, ptr %14, align 8, !tbaa !44
  %21 = getelementptr inbounds %struct.MaskSplinePoint, ptr %20, i64 %18
  %22 = icmp eq i64 %18, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = load i16, ptr %15, align 8, !tbaa !42
  %25 = and i16 %24, 2
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %23
  %28 = sext i32 %19 to i64
  %29 = getelementptr %struct.MaskSplinePoint, ptr %20, i64 %28
  %30 = getelementptr %struct.MaskSplinePoint, ptr %29, i64 -1
  br label %33

31:                                               ; preds = %17
  %32 = getelementptr inbounds %struct.MaskSplinePoint, ptr %21, i64 -1
  br label %33

33:                                               ; preds = %31, %27, %23
  %34 = phi ptr [ %30, %27 ], [ %32, %31 ], [ null, %23 ]
  %35 = sext i32 %19 to i64
  %36 = getelementptr %struct.MaskSplinePoint, ptr %20, i64 %35
  %37 = getelementptr %struct.MaskSplinePoint, ptr %36, i64 -1
  %38 = icmp eq ptr %37, %21
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = load i16, ptr %16, align 8, !tbaa !42
  %41 = and i16 %40, 2
  %42 = icmp eq i16 %41, 0
  %43 = select i1 %42, ptr null, ptr %20
  br label %46

44:                                               ; preds = %33
  %45 = getelementptr inbounds %struct.MaskSplinePoint, ptr %21, i64 1
  br label %46

46:                                               ; preds = %44, %39
  %47 = phi ptr [ %45, %44 ], [ %43, %39 ]
  %48 = icmp ne ptr %34, null
  %49 = icmp ne ptr %47, null
  %50 = or i1 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  tail call void @BKE_nurb_handle_calc(ptr noundef %21, ptr noundef %34, ptr noundef %47, i8 noundef zeroext 0) #21
  br label %52

52:                                               ; preds = %46, %51
  %53 = add nuw nsw i64 %18, 1
  %54 = load i32, ptr %10, align 4, !tbaa !34
  %55 = sext i32 %54 to i64
  %56 = icmp slt i64 %53, %55
  br i1 %56, label %17, label %5, !llvm.loop !167

57:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mask_spline_ensure_deform(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !45
  %3 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !43
  %5 = tail call i64 %2(ptr noundef %4) #21
  %6 = udiv i64 %5, 272
  %7 = trunc i64 %6 to i32
  %8 = load ptr, ptr %3, align 8, !tbaa !43
  %9 = icmp eq ptr %8, null
  br i1 %9, label %33, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !34
  %13 = icmp eq i32 %12, %7
  br i1 %13, label %40, label %14

14:                                               ; preds = %10
  br i1 %9, label %33, label %15

15:                                               ; preds = %14
  %16 = icmp sgt i32 %7, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %15
  %18 = and i64 %6, 4294967295
  br label %19

19:                                               ; preds = %17, %27
  %20 = phi i64 [ 0, %17 ], [ %28, %27 ]
  %21 = load ptr, ptr %3, align 8, !tbaa !43
  %22 = getelementptr inbounds %struct.MaskSplinePoint, ptr %21, i64 %20, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !59
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %26(ptr noundef nonnull %23) #21
  br label %27

27:                                               ; preds = %19, %25
  %28 = add nuw nsw i64 %20, 1
  %29 = icmp eq i64 %28, %18
  br i1 %29, label %30, label %19, !llvm.loop !168

30:                                               ; preds = %27, %15
  %31 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %32 = load ptr, ptr %3, align 8, !tbaa !43
  tail call void %31(ptr noundef %32) #21
  br label %33

33:                                               ; preds = %1, %30, %14
  %34 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %35 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 5
  %36 = load i32, ptr %35, align 4, !tbaa !34
  %37 = sext i32 %36 to i64
  %38 = mul nsw i64 %37, 272
  %39 = tail call ptr %34(i64 noundef %38, ptr noundef nonnull @__func__.BKE_mask_spline_ensure_deform) #21
  store ptr %39, ptr %3, align 8, !tbaa !43
  br label %40

40:                                               ; preds = %10, %33
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mask_layer_evaluate(ptr nocapture noundef readonly %0, float noundef %1, i8 noundef zeroext %2) local_unnamed_addr #1 {
  %4 = alloca [3 x [3 x float]], align 16
  %5 = icmp eq i8 %2, 0
  br i1 %5, label %46, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 4
  br label %8

8:                                                ; preds = %17, %6
  %9 = phi ptr [ %7, %6 ], [ %10, %17 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !45
  %11 = icmp eq ptr %10, null
  br i1 %11, label %26, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.MaskLayerShape, ptr %10, i64 0, i32 4
  %14 = load i32, ptr %13, align 4, !tbaa !80
  %15 = sitofp i32 %14 to float
  %16 = fcmp oeq float %15, %1
  br i1 %16, label %31, label %17

17:                                               ; preds = %12
  %18 = fcmp ogt float %15, %1
  br i1 %18, label %19, label %8, !llvm.loop !169

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.MaskLayerShape, ptr %10, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !170
  %22 = icmp eq ptr %21, null
  %23 = select i1 %22, ptr %10, ptr %21
  %24 = select i1 %22, ptr null, ptr %10
  %25 = select i1 %22, i32 1, i32 2
  br label %31

26:                                               ; preds = %8
  %27 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 4, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !171
  %29 = icmp ne ptr %28, null
  %30 = zext i1 %29 to i32
  br label %31

31:                                               ; preds = %12, %26, %19
  %32 = phi ptr [ %23, %19 ], [ %28, %26 ], [ %10, %12 ]
  %33 = phi ptr [ %24, %19 ], [ null, %26 ], [ null, %12 ]
  %34 = phi i32 [ %25, %19 ], [ %30, %26 ], [ 1, %12 ]
  switch i32 %34, label %46 [
    i32 2, label %36
    i32 1, label %35
  ]

35:                                               ; preds = %31
  tail call void @BKE_mask_layer_shape_to_mask(ptr noundef %0, ptr noundef %32)
  br label %46

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.MaskLayerShape, ptr %33, i64 0, i32 4
  %38 = load i32, ptr %37, align 4, !tbaa !80
  %39 = getelementptr inbounds %struct.MaskLayerShape, ptr %32, i64 0, i32 4
  %40 = load i32, ptr %39, align 4, !tbaa !80
  %41 = sub nsw i32 %38, %40
  %42 = sitofp i32 %41 to float
  %43 = sitofp i32 %40 to float
  %44 = fsub float %1, %43
  %45 = fdiv float %44, %42
  tail call void @BKE_mask_layer_shape_to_mask_interp(ptr noundef %0, ptr noundef %32, ptr noundef %33, float noundef %45)
  br label %46

46:                                               ; preds = %36, %35, %31, %3
  %47 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !45
  %49 = icmp eq ptr %48, null
  br i1 %49, label %62, label %53

50:                                               ; preds = %100, %53
  %51 = load ptr, ptr %54, align 8, !tbaa !45
  %52 = icmp eq ptr %51, null
  br i1 %52, label %62, label %53, !llvm.loop !166

53:                                               ; preds = %46, %50
  %54 = phi ptr [ %51, %50 ], [ %48, %46 ]
  %55 = getelementptr inbounds %struct.MaskSpline, ptr %54, i64 0, i32 5
  %56 = load i32, ptr %55, align 4, !tbaa !34
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %50

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.MaskSpline, ptr %54, i64 0, i32 6
  %60 = getelementptr inbounds %struct.MaskSpline, ptr %54, i64 0, i32 2
  %61 = getelementptr inbounds %struct.MaskSpline, ptr %54, i64 0, i32 2
  br label %65

62:                                               ; preds = %50, %46
  %63 = load ptr, ptr %47, align 8, !tbaa !45
  %64 = icmp eq ptr %63, null
  br i1 %64, label %251, label %105

65:                                               ; preds = %58, %100
  %66 = phi i64 [ 0, %58 ], [ %101, %100 ]
  %67 = phi i32 [ %56, %58 ], [ %102, %100 ]
  %68 = load ptr, ptr %59, align 8, !tbaa !44
  %69 = getelementptr inbounds %struct.MaskSplinePoint, ptr %68, i64 %66
  %70 = icmp eq i64 %66, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %65
  %72 = load i16, ptr %60, align 8, !tbaa !42
  %73 = and i16 %72, 2
  %74 = icmp eq i16 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %71
  %76 = sext i32 %67 to i64
  %77 = getelementptr %struct.MaskSplinePoint, ptr %68, i64 %76
  %78 = getelementptr %struct.MaskSplinePoint, ptr %77, i64 -1
  br label %81

79:                                               ; preds = %65
  %80 = getelementptr inbounds %struct.MaskSplinePoint, ptr %69, i64 -1
  br label %81

81:                                               ; preds = %79, %75, %71
  %82 = phi ptr [ %78, %75 ], [ %80, %79 ], [ null, %71 ]
  %83 = sext i32 %67 to i64
  %84 = getelementptr %struct.MaskSplinePoint, ptr %68, i64 %83
  %85 = getelementptr %struct.MaskSplinePoint, ptr %84, i64 -1
  %86 = icmp eq ptr %85, %69
  br i1 %86, label %87, label %92

87:                                               ; preds = %81
  %88 = load i16, ptr %61, align 8, !tbaa !42
  %89 = and i16 %88, 2
  %90 = icmp eq i16 %89, 0
  %91 = select i1 %90, ptr null, ptr %68
  br label %94

92:                                               ; preds = %81
  %93 = getelementptr inbounds %struct.MaskSplinePoint, ptr %69, i64 1
  br label %94

94:                                               ; preds = %92, %87
  %95 = phi ptr [ %93, %92 ], [ %91, %87 ]
  %96 = icmp ne ptr %82, null
  %97 = icmp ne ptr %95, null
  %98 = or i1 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  tail call void @BKE_nurb_handle_calc(ptr noundef %69, ptr noundef %82, ptr noundef %95, i8 noundef zeroext 0) #21
  br label %100

100:                                              ; preds = %94, %99
  %101 = add nuw nsw i64 %66, 1
  %102 = load i32, ptr %55, align 4, !tbaa !34
  %103 = sext i32 %102 to i64
  %104 = icmp slt i64 %101, %103
  br i1 %104, label %65, label %50, !llvm.loop !167

105:                                              ; preds = %62, %248
  %106 = phi ptr [ %249, %248 ], [ %63, %62 ]
  %107 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !45
  %108 = getelementptr inbounds %struct.MaskSpline, ptr %106, i64 0, i32 8
  %109 = load ptr, ptr %108, align 8, !tbaa !43
  %110 = call i64 %107(ptr noundef %109) #21
  %111 = udiv i64 %110, 272
  %112 = trunc i64 %111 to i32
  %113 = load ptr, ptr %108, align 8, !tbaa !43
  %114 = icmp eq ptr %113, null
  br i1 %114, label %137, label %115

115:                                              ; preds = %105
  %116 = getelementptr inbounds %struct.MaskSpline, ptr %106, i64 0, i32 5
  %117 = load i32, ptr %116, align 4, !tbaa !34
  %118 = icmp eq i32 %117, %112
  br i1 %118, label %144, label %119

119:                                              ; preds = %115
  %120 = icmp sgt i32 %112, 0
  br i1 %120, label %121, label %134

121:                                              ; preds = %119
  %122 = and i64 %111, 4294967295
  br label %123

123:                                              ; preds = %131, %121
  %124 = phi i64 [ 0, %121 ], [ %132, %131 ]
  %125 = load ptr, ptr %108, align 8, !tbaa !43
  %126 = getelementptr inbounds %struct.MaskSplinePoint, ptr %125, i64 %124, i32 3
  %127 = load ptr, ptr %126, align 8, !tbaa !59
  %128 = icmp eq ptr %127, null
  br i1 %128, label %131, label %129

129:                                              ; preds = %123
  %130 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  call void %130(ptr noundef nonnull %127) #21
  br label %131

131:                                              ; preds = %129, %123
  %132 = add nuw nsw i64 %124, 1
  %133 = icmp eq i64 %132, %122
  br i1 %133, label %134, label %123, !llvm.loop !168

134:                                              ; preds = %131, %119
  %135 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %136 = load ptr, ptr %108, align 8, !tbaa !43
  call void %135(ptr noundef %136) #21
  br label %137

137:                                              ; preds = %134, %105
  %138 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %139 = getelementptr inbounds %struct.MaskSpline, ptr %106, i64 0, i32 5
  %140 = load i32, ptr %139, align 4, !tbaa !34
  %141 = sext i32 %140 to i64
  %142 = mul nsw i64 %141, 272
  %143 = call ptr %138(i64 noundef %142, ptr noundef nonnull @__func__.BKE_mask_spline_ensure_deform) #21
  store ptr %143, ptr %108, align 8, !tbaa !43
  br label %144

144:                                              ; preds = %115, %137
  %145 = getelementptr inbounds %struct.MaskSpline, ptr %106, i64 0, i32 5
  %146 = load i32, ptr %145, align 4, !tbaa !34
  %147 = icmp sgt i32 %146, 0
  br i1 %147, label %148, label %182

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.MaskSpline, ptr %106, i64 0, i32 6
  br label %150

150:                                              ; preds = %148, %169
  %151 = phi i64 [ 0, %148 ], [ %178, %169 ]
  %152 = phi i8 [ 0, %148 ], [ %177, %169 ]
  %153 = load ptr, ptr %149, align 8, !tbaa !44
  %154 = getelementptr inbounds %struct.MaskSplinePoint, ptr %153, i64 %151
  %155 = load ptr, ptr %108, align 8, !tbaa !43
  %156 = getelementptr inbounds %struct.MaskSplinePoint, ptr %155, i64 %151
  %157 = getelementptr inbounds %struct.MaskSplinePoint, ptr %155, i64 %151, i32 3
  %158 = load ptr, ptr %157, align 8, !tbaa !59
  %159 = icmp eq ptr %158, null
  br i1 %159, label %162, label %160

160:                                              ; preds = %150
  %161 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  call void %161(ptr noundef nonnull %158) #21
  br label %162

162:                                              ; preds = %150, %160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %156, ptr noundef nonnull align 8 dereferenceable(272) %154, i64 272, i1 false), !tbaa.struct !96
  %163 = getelementptr inbounds %struct.MaskSplinePoint, ptr %153, i64 %151, i32 3
  %164 = load ptr, ptr %163, align 8, !tbaa !59
  %165 = icmp eq ptr %164, null
  br i1 %165, label %169, label %166

166:                                              ; preds = %162
  %167 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !45
  %168 = call ptr %167(ptr noundef nonnull %164) #21
  br label %169

169:                                              ; preds = %162, %166
  %170 = phi ptr [ %168, %166 ], [ null, %162 ]
  store ptr %170, ptr %157, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #21
  call void @BKE_mask_point_parent_matrix_get(ptr noundef %156, float noundef %1, ptr noundef nonnull %4)
  call void @mul_m3_v2(ptr noundef nonnull %4, ptr noundef %156) #21
  %171 = getelementptr inbounds [3 x [3 x float]], ptr %156, i64 0, i64 1
  call void @mul_m3_v2(ptr noundef nonnull %4, ptr noundef nonnull %171) #21
  %172 = getelementptr inbounds [3 x [3 x float]], ptr %156, i64 0, i64 2
  call void @mul_m3_v2(ptr noundef nonnull %4, ptr noundef nonnull %172) #21
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #21
  %173 = getelementptr inbounds %struct.BezTriple, ptr %154, i64 0, i32 5
  %174 = load i8, ptr %173, align 1, !tbaa !89
  %175 = add i8 %174, -1
  %176 = icmp ult i8 %175, 2
  %177 = select i1 %176, i8 1, i8 %152
  %178 = add nuw nsw i64 %151, 1
  %179 = load i32, ptr %145, align 4, !tbaa !34
  %180 = sext i32 %179 to i64
  %181 = icmp slt i64 %178, %180
  br i1 %181, label %150, label %182, !llvm.loop !172

182:                                              ; preds = %169, %144
  %183 = phi i8 [ 0, %144 ], [ %177, %169 ]
  %184 = getelementptr inbounds %struct.MaskSpline, ptr %106, i64 0, i32 5
  %185 = icmp eq i8 %183, 0
  br i1 %185, label %248, label %186

186:                                              ; preds = %182
  %187 = load i32, ptr %184, align 4, !tbaa !34
  %188 = icmp sgt i32 %187, 0
  br i1 %188, label %189, label %248

189:                                              ; preds = %186
  %190 = getelementptr inbounds %struct.MaskSpline, ptr %106, i64 0, i32 6
  %191 = getelementptr inbounds %struct.MaskSpline, ptr %106, i64 0, i32 2
  %192 = getelementptr inbounds %struct.MaskSpline, ptr %106, i64 0, i32 2
  br label %193

193:                                              ; preds = %189, %243
  %194 = phi i64 [ 0, %189 ], [ %244, %243 ]
  %195 = phi i32 [ %187, %189 ], [ %245, %243 ]
  %196 = load ptr, ptr %108, align 8, !tbaa !43
  %197 = getelementptr inbounds %struct.MaskSplinePoint, ptr %196, i64 %194
  %198 = getelementptr inbounds %struct.BezTriple, ptr %197, i64 0, i32 5
  %199 = load i8, ptr %198, align 1, !tbaa !89
  %200 = add i8 %199, -1
  %201 = icmp ult i8 %200, 2
  br i1 %201, label %202, label %243

202:                                              ; preds = %193
  %203 = load ptr, ptr %190, align 8, !tbaa !44
  %204 = icmp ule ptr %203, %197
  %205 = sext i32 %195 to i64
  %206 = getelementptr inbounds %struct.MaskSplinePoint, ptr %203, i64 %205
  %207 = icmp ugt ptr %206, %197
  %208 = select i1 %204, i1 %207, i1 false
  %209 = sext i32 %195 to i64
  %210 = icmp slt i64 %194, %209
  %211 = select i1 %210, ptr %196, ptr null
  %212 = select i1 %208, ptr %203, ptr %211
  %213 = icmp eq ptr %212, %197
  br i1 %213, label %214, label %222

214:                                              ; preds = %202
  %215 = load i16, ptr %191, align 8, !tbaa !42
  %216 = and i16 %215, 2
  %217 = icmp eq i16 %216, 0
  br i1 %217, label %224, label %218

218:                                              ; preds = %214
  %219 = sext i32 %195 to i64
  %220 = getelementptr %struct.MaskSplinePoint, ptr %212, i64 %219
  %221 = getelementptr %struct.MaskSplinePoint, ptr %220, i64 -1
  br label %224

222:                                              ; preds = %202
  %223 = getelementptr inbounds %struct.MaskSplinePoint, ptr %197, i64 -1
  br label %224

224:                                              ; preds = %222, %218, %214
  %225 = phi ptr [ %221, %218 ], [ %223, %222 ], [ null, %214 ]
  %226 = sext i32 %195 to i64
  %227 = getelementptr %struct.MaskSplinePoint, ptr %212, i64 %226
  %228 = getelementptr %struct.MaskSplinePoint, ptr %227, i64 -1
  %229 = icmp eq ptr %228, %197
  br i1 %229, label %230, label %235

230:                                              ; preds = %224
  %231 = load i16, ptr %192, align 8, !tbaa !42
  %232 = and i16 %231, 2
  %233 = icmp eq i16 %232, 0
  %234 = select i1 %233, ptr null, ptr %212
  br label %237

235:                                              ; preds = %224
  %236 = getelementptr inbounds %struct.MaskSplinePoint, ptr %197, i64 1
  br label %237

237:                                              ; preds = %235, %230
  %238 = phi ptr [ %236, %235 ], [ %234, %230 ]
  %239 = icmp ne ptr %225, null
  %240 = icmp ne ptr %238, null
  %241 = or i1 %239, %240
  br i1 %241, label %242, label %243

242:                                              ; preds = %237
  call void @BKE_nurb_handle_calc(ptr noundef %197, ptr noundef %225, ptr noundef %238, i8 noundef zeroext 0) #21
  br label %243

243:                                              ; preds = %242, %237, %193
  %244 = add nuw nsw i64 %194, 1
  %245 = load i32, ptr %184, align 4, !tbaa !34
  %246 = sext i32 %245 to i64
  %247 = icmp slt i64 %244, %246
  br i1 %247, label %193, label %248, !llvm.loop !173

248:                                              ; preds = %243, %186, %182
  %249 = load ptr, ptr %106, align 8, !tbaa !45
  %250 = icmp eq ptr %249, null
  br i1 %250, label %251, label %105, !llvm.loop !174

251:                                              ; preds = %248, %62
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @BKE_mask_layer_shape_find_frame_range(ptr nocapture noundef readonly %0, float noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #14 {
  %5 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 4
  br label %6

6:                                                ; preds = %15, %4
  %7 = phi ptr [ %5, %4 ], [ %8, %15 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = icmp eq ptr %8, null
  br i1 %9, label %24, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.MaskLayerShape, ptr %8, i64 0, i32 4
  %12 = load i32, ptr %11, align 4, !tbaa !80
  %13 = sitofp i32 %12 to float
  %14 = fcmp oeq float %13, %1
  br i1 %14, label %29, label %15

15:                                               ; preds = %10
  %16 = fcmp ogt float %13, %1
  br i1 %16, label %17, label %6, !llvm.loop !169

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.MaskLayerShape, ptr %8, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !170
  %20 = icmp eq ptr %19, null
  %21 = select i1 %20, ptr %8, ptr %19
  %22 = select i1 %20, ptr null, ptr %8
  %23 = select i1 %20, i32 1, i32 2
  br label %29

24:                                               ; preds = %6
  %25 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 4, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !171
  %27 = icmp ne ptr %26, null
  %28 = zext i1 %27 to i32
  br label %29

29:                                               ; preds = %10, %24, %17
  %30 = phi ptr [ %21, %17 ], [ %26, %24 ], [ %8, %10 ]
  %31 = phi ptr [ %22, %17 ], [ null, %24 ], [ null, %10 ]
  %32 = phi i32 [ %23, %17 ], [ %28, %24 ], [ 1, %10 ]
  store ptr %30, ptr %2, align 8, !tbaa !45
  store ptr %31, ptr %3, align 8, !tbaa !45
  ret i32 %32
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @BKE_mask_layer_shape_to_mask(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #15 {
  %3 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %12, %6 ], [ %4, %2 ]
  %8 = phi i32 [ %11, %6 ], [ 0, %2 ]
  %9 = getelementptr inbounds %struct.MaskSpline, ptr %7, i64 0, i32 5
  %10 = load i32, ptr %9, align 4, !tbaa !34
  %11 = add nsw i32 %10, %8
  %12 = load ptr, ptr %7, align 8, !tbaa !45
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6, !llvm.loop !116

14:                                               ; preds = %6, %2
  %15 = phi i32 [ 0, %2 ], [ %11, %6 ]
  %16 = getelementptr inbounds %struct.MaskLayerShape, ptr %1, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !78
  %18 = icmp eq i32 %17, %15
  br i1 %18, label %19, label %68

19:                                               ; preds = %14
  %20 = load ptr, ptr %3, align 8, !tbaa !45
  %21 = icmp eq ptr %20, null
  br i1 %21, label %72, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.MaskLayerShape, ptr %1, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !69
  br label %29

25:                                               ; preds = %39, %29
  %26 = phi ptr [ %31, %29 ], [ %65, %39 ]
  %27 = load ptr, ptr %30, align 8, !tbaa !45
  %28 = icmp eq ptr %27, null
  br i1 %28, label %72, label %29, !llvm.loop !175

29:                                               ; preds = %22, %25
  %30 = phi ptr [ %27, %25 ], [ %20, %22 ]
  %31 = phi ptr [ %26, %25 ], [ %24, %22 ]
  %32 = getelementptr inbounds %struct.MaskSpline, ptr %30, i64 0, i32 5
  %33 = load i32, ptr %32, align 4, !tbaa !34
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %25

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.MaskSpline, ptr %30, i64 0, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !44
  %38 = zext nneg i32 %33 to i64
  br label %39

39:                                               ; preds = %35, %39
  %40 = phi i64 [ 0, %35 ], [ %66, %39 ]
  %41 = phi ptr [ %31, %35 ], [ %65, %39 ]
  %42 = getelementptr inbounds %struct.MaskSplinePoint, ptr %37, i64 %40
  %43 = load float, ptr %41, align 4, !tbaa !86
  store float %43, ptr %42, align 4, !tbaa !86
  %44 = getelementptr inbounds float, ptr %41, i64 1
  %45 = load float, ptr %44, align 4, !tbaa !86
  %46 = getelementptr inbounds float, ptr %42, i64 1
  store float %45, ptr %46, align 4, !tbaa !86
  %47 = getelementptr inbounds [3 x [3 x float]], ptr %42, i64 0, i64 1
  %48 = getelementptr inbounds float, ptr %41, i64 2
  %49 = load float, ptr %48, align 4, !tbaa !86
  store float %49, ptr %47, align 4, !tbaa !86
  %50 = getelementptr inbounds float, ptr %41, i64 3
  %51 = load float, ptr %50, align 4, !tbaa !86
  %52 = getelementptr inbounds [3 x [3 x float]], ptr %42, i64 0, i64 1, i64 1
  store float %51, ptr %52, align 4, !tbaa !86
  %53 = getelementptr inbounds [3 x [3 x float]], ptr %42, i64 0, i64 2
  %54 = getelementptr inbounds float, ptr %41, i64 4
  %55 = load float, ptr %54, align 4, !tbaa !86
  store float %55, ptr %53, align 4, !tbaa !86
  %56 = getelementptr inbounds float, ptr %41, i64 5
  %57 = load float, ptr %56, align 4, !tbaa !86
  %58 = getelementptr inbounds [3 x [3 x float]], ptr %42, i64 0, i64 2, i64 1
  store float %57, ptr %58, align 4, !tbaa !86
  %59 = getelementptr inbounds float, ptr %41, i64 6
  %60 = load float, ptr %59, align 4, !tbaa !86
  %61 = getelementptr inbounds %struct.BezTriple, ptr %42, i64 0, i32 2
  store float %60, ptr %61, align 4, !tbaa !105
  %62 = getelementptr inbounds float, ptr %41, i64 7
  %63 = load float, ptr %62, align 4, !tbaa !86
  %64 = getelementptr inbounds %struct.BezTriple, ptr %42, i64 0, i32 3
  store float %63, ptr %64, align 4, !tbaa !176
  %65 = getelementptr inbounds float, ptr %41, i64 8
  %66 = add nuw nsw i64 %40, 1
  %67 = icmp eq i64 %66, %38
  br i1 %67, label %25, label %39, !llvm.loop !177

68:                                               ; preds = %14
  %69 = getelementptr inbounds %struct.MaskLayerShape, ptr %1, i64 0, i32 4
  %70 = load i32, ptr %69, align 4, !tbaa !80
  %71 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef nonnull @__func__.BKE_mask_layer_shape_to_mask, i32 noundef %17, i32 noundef %15, i32 noundef %70)
  br label %72

72:                                               ; preds = %25, %19, %68
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @BKE_mask_layer_shape_to_mask_interp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) local_unnamed_addr #15 {
  %5 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %4, %8
  %9 = phi ptr [ %14, %8 ], [ %6, %4 ]
  %10 = phi i32 [ %13, %8 ], [ 0, %4 ]
  %11 = getelementptr inbounds %struct.MaskSpline, ptr %9, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !34
  %13 = add nsw i32 %12, %10
  %14 = load ptr, ptr %9, align 8, !tbaa !45
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %8, !llvm.loop !116

16:                                               ; preds = %8, %4
  %17 = phi i32 [ 0, %4 ], [ %13, %8 ]
  %18 = getelementptr inbounds %struct.MaskLayerShape, ptr %1, i64 0, i32 3
  %19 = load i32, ptr %18, align 8, !tbaa !78
  %20 = icmp eq i32 %19, %17
  br i1 %20, label %21, label %112

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.MaskLayerShape, ptr %2, i64 0, i32 3
  %23 = load i32, ptr %22, align 8, !tbaa !78
  %24 = icmp eq i32 %23, %17
  br i1 %24, label %25, label %112

25:                                               ; preds = %21
  %26 = fsub float 1.000000e+00, %3
  %27 = load ptr, ptr %5, align 8, !tbaa !45
  %28 = icmp eq ptr %27, null
  br i1 %28, label %120, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.MaskLayerShape, ptr %2, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !69
  %32 = getelementptr inbounds %struct.MaskLayerShape, ptr %1, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !69
  br label %39

34:                                               ; preds = %50, %39
  %35 = phi ptr [ %42, %39 ], [ %109, %50 ]
  %36 = phi ptr [ %41, %39 ], [ %108, %50 ]
  %37 = load ptr, ptr %40, align 8, !tbaa !45
  %38 = icmp eq ptr %37, null
  br i1 %38, label %120, label %39, !llvm.loop !178

39:                                               ; preds = %29, %34
  %40 = phi ptr [ %37, %34 ], [ %27, %29 ]
  %41 = phi ptr [ %36, %34 ], [ %33, %29 ]
  %42 = phi ptr [ %35, %34 ], [ %31, %29 ]
  %43 = getelementptr inbounds %struct.MaskSpline, ptr %40, i64 0, i32 5
  %44 = load i32, ptr %43, align 4, !tbaa !34
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %34

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.MaskSpline, ptr %40, i64 0, i32 6
  %48 = load ptr, ptr %47, align 8, !tbaa !44
  %49 = zext nneg i32 %44 to i64
  br label %50

50:                                               ; preds = %46, %50
  %51 = phi i64 [ 0, %46 ], [ %110, %50 ]
  %52 = phi ptr [ %41, %46 ], [ %108, %50 ]
  %53 = phi ptr [ %42, %46 ], [ %109, %50 ]
  %54 = getelementptr inbounds %struct.MaskSplinePoint, ptr %48, i64 %51
  %55 = load float, ptr %52, align 4, !tbaa !86
  %56 = load float, ptr %53, align 4, !tbaa !86
  %57 = fmul float %56, %3
  %58 = tail call float @llvm.fmuladd.f32(float %26, float %55, float %57)
  store float %58, ptr %54, align 4, !tbaa !86
  %59 = getelementptr inbounds float, ptr %52, i64 1
  %60 = load float, ptr %59, align 4, !tbaa !86
  %61 = getelementptr inbounds float, ptr %53, i64 1
  %62 = load float, ptr %61, align 4, !tbaa !86
  %63 = fmul float %62, %3
  %64 = tail call float @llvm.fmuladd.f32(float %26, float %60, float %63)
  %65 = getelementptr inbounds float, ptr %54, i64 1
  store float %64, ptr %65, align 4, !tbaa !86
  %66 = getelementptr inbounds float, ptr %52, i64 2
  %67 = getelementptr inbounds float, ptr %53, i64 2
  %68 = getelementptr inbounds [3 x [3 x float]], ptr %54, i64 0, i64 1
  %69 = load float, ptr %66, align 4, !tbaa !86
  %70 = load float, ptr %67, align 4, !tbaa !86
  %71 = fmul float %70, %3
  %72 = tail call float @llvm.fmuladd.f32(float %26, float %69, float %71)
  store float %72, ptr %68, align 4, !tbaa !86
  %73 = getelementptr inbounds float, ptr %52, i64 3
  %74 = load float, ptr %73, align 4, !tbaa !86
  %75 = getelementptr inbounds float, ptr %53, i64 3
  %76 = load float, ptr %75, align 4, !tbaa !86
  %77 = fmul float %76, %3
  %78 = tail call float @llvm.fmuladd.f32(float %26, float %74, float %77)
  %79 = getelementptr inbounds [3 x [3 x float]], ptr %54, i64 0, i64 1, i64 1
  store float %78, ptr %79, align 4, !tbaa !86
  %80 = getelementptr inbounds float, ptr %52, i64 4
  %81 = getelementptr inbounds float, ptr %53, i64 4
  %82 = getelementptr inbounds [3 x [3 x float]], ptr %54, i64 0, i64 2
  %83 = load float, ptr %80, align 4, !tbaa !86
  %84 = load float, ptr %81, align 4, !tbaa !86
  %85 = fmul float %84, %3
  %86 = tail call float @llvm.fmuladd.f32(float %26, float %83, float %85)
  store float %86, ptr %82, align 4, !tbaa !86
  %87 = getelementptr inbounds float, ptr %52, i64 5
  %88 = load float, ptr %87, align 4, !tbaa !86
  %89 = getelementptr inbounds float, ptr %53, i64 5
  %90 = load float, ptr %89, align 4, !tbaa !86
  %91 = fmul float %90, %3
  %92 = tail call float @llvm.fmuladd.f32(float %26, float %88, float %91)
  %93 = getelementptr inbounds [3 x [3 x float]], ptr %54, i64 0, i64 2, i64 1
  store float %92, ptr %93, align 4, !tbaa !86
  %94 = getelementptr inbounds float, ptr %52, i64 6
  %95 = getelementptr inbounds float, ptr %53, i64 6
  %96 = load float, ptr %94, align 4, !tbaa !86
  %97 = load float, ptr %95, align 4, !tbaa !86
  %98 = fmul float %97, %3
  %99 = tail call float @llvm.fmuladd.f32(float %96, float %26, float %98)
  %100 = getelementptr inbounds %struct.BezTriple, ptr %54, i64 0, i32 2
  store float %99, ptr %100, align 4, !tbaa !105
  %101 = getelementptr inbounds float, ptr %52, i64 7
  %102 = load float, ptr %101, align 4, !tbaa !86
  %103 = getelementptr inbounds float, ptr %53, i64 7
  %104 = load float, ptr %103, align 4, !tbaa !86
  %105 = fmul float %104, %3
  %106 = tail call float @llvm.fmuladd.f32(float %102, float %26, float %105)
  %107 = getelementptr inbounds %struct.BezTriple, ptr %54, i64 0, i32 3
  store float %106, ptr %107, align 4, !tbaa !176
  %108 = getelementptr inbounds float, ptr %52, i64 8
  %109 = getelementptr inbounds float, ptr %53, i64 8
  %110 = add nuw nsw i64 %51, 1
  %111 = icmp eq i64 %110, %49
  br i1 %111, label %34, label %50, !llvm.loop !179

112:                                              ; preds = %21, %16
  %113 = getelementptr inbounds %struct.MaskLayerShape, ptr %2, i64 0, i32 3
  %114 = load i32, ptr %113, align 8, !tbaa !78
  %115 = getelementptr inbounds %struct.MaskLayerShape, ptr %1, i64 0, i32 4
  %116 = load i32, ptr %115, align 4, !tbaa !80
  %117 = getelementptr inbounds %struct.MaskLayerShape, ptr %2, i64 0, i32 4
  %118 = load i32, ptr %117, align 4, !tbaa !80
  %119 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef nonnull @__func__.BKE_mask_layer_shape_to_mask_interp, i32 noundef %19, i32 noundef %114, i32 noundef %17, i32 noundef %116, i32 noundef %118)
  br label %120

120:                                              ; preds = %34, %25, %112
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mask_evaluate(ptr nocapture noundef readonly %0, float noundef %1, i8 noundef zeroext %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.Mask, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3, %7
  %8 = phi ptr [ %9, %7 ], [ %5, %3 ]
  tail call void @BKE_mask_layer_evaluate(ptr noundef nonnull %8, float noundef %1, i8 noundef zeroext %2)
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %7, !llvm.loop !180

11:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mask_update_display(ptr nocapture noundef readonly %0, float noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.Mask, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %8, %6 ], [ %4, %2 ]
  tail call void @BKE_mask_layer_evaluate(ptr noundef nonnull %7, float noundef %1, i8 noundef zeroext 0)
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %6, !llvm.loop !180

10:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mask_evaluate_all_masks(ptr nocapture noundef readonly %0, float noundef %1, i8 noundef zeroext %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 43
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %10

7:                                                ; preds = %15, %10
  %8 = load ptr, ptr %11, align 8, !tbaa !45
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10, !llvm.loop !181

10:                                               ; preds = %3, %7
  %11 = phi ptr [ %8, %7 ], [ %5, %3 ]
  %12 = getelementptr inbounds %struct.Mask, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !45
  %14 = icmp eq ptr %13, null
  br i1 %14, label %7, label %15

15:                                               ; preds = %10, %15
  %16 = phi ptr [ %17, %15 ], [ %13, %10 ]
  tail call void @BKE_mask_layer_evaluate(ptr noundef nonnull %16, float noundef %1, i8 noundef zeroext %2)
  %17 = load ptr, ptr %16, align 8, !tbaa !45
  %18 = icmp eq ptr %17, null
  br i1 %18, label %7, label %15, !llvm.loop !180

19:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mask_update_scene(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 43
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq ptr %4, null
  br i1 %5, label %37, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 5
  br label %8

8:                                                ; preds = %6, %34
  %9 = phi ptr [ %4, %6 ], [ %35, %34 ]
  %10 = getelementptr inbounds %struct.ID, ptr %9, i64 0, i32 5
  %11 = load i16, ptr %10, align 2, !tbaa !112
  %12 = and i16 %11, 12288
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %34, label %14

14:                                               ; preds = %8
  %15 = lshr i16 %11, 13
  %16 = trunc i16 %15 to i8
  %17 = and i8 %16, 1
  %18 = load i32, ptr %7, align 8, !tbaa !182
  %19 = sitofp i32 %18 to float
  %20 = load ptr, ptr %3, align 8, !tbaa !45
  %21 = icmp eq ptr %20, null
  br i1 %21, label %34, label %25

22:                                               ; preds = %30, %25
  %23 = load ptr, ptr %26, align 8, !tbaa !45
  %24 = icmp eq ptr %23, null
  br i1 %24, label %34, label %25, !llvm.loop !181

25:                                               ; preds = %14, %22
  %26 = phi ptr [ %23, %22 ], [ %20, %14 ]
  %27 = getelementptr inbounds %struct.Mask, ptr %26, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !45
  %29 = icmp eq ptr %28, null
  br i1 %29, label %22, label %30

30:                                               ; preds = %25, %30
  %31 = phi ptr [ %32, %30 ], [ %28, %25 ]
  tail call void @BKE_mask_layer_evaluate(ptr noundef nonnull %31, float noundef %19, i8 noundef zeroext %17)
  %32 = load ptr, ptr %31, align 8, !tbaa !45
  %33 = icmp eq ptr %32, null
  br i1 %33, label %22, label %30, !llvm.loop !180

34:                                               ; preds = %22, %14, %8
  %35 = load ptr, ptr %9, align 8, !tbaa !45
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %8, !llvm.loop !183

37:                                               ; preds = %34, %2
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @BKE_mask_layer_shape_from_mask(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #15 {
  %3 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %12, %6 ], [ %4, %2 ]
  %8 = phi i32 [ %11, %6 ], [ 0, %2 ]
  %9 = getelementptr inbounds %struct.MaskSpline, ptr %7, i64 0, i32 5
  %10 = load i32, ptr %9, align 4, !tbaa !34
  %11 = add nsw i32 %10, %8
  %12 = load ptr, ptr %7, align 8, !tbaa !45
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6, !llvm.loop !116

14:                                               ; preds = %6, %2
  %15 = phi i32 [ 0, %2 ], [ %11, %6 ]
  %16 = getelementptr inbounds %struct.MaskLayerShape, ptr %1, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !78
  %18 = icmp eq i32 %17, %15
  br i1 %18, label %19, label %68

19:                                               ; preds = %14
  %20 = load ptr, ptr %3, align 8, !tbaa !45
  %21 = icmp eq ptr %20, null
  br i1 %21, label %72, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.MaskLayerShape, ptr %1, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !69
  br label %29

25:                                               ; preds = %39, %29
  %26 = phi ptr [ %31, %29 ], [ %65, %39 ]
  %27 = load ptr, ptr %30, align 8, !tbaa !45
  %28 = icmp eq ptr %27, null
  br i1 %28, label %72, label %29, !llvm.loop !184

29:                                               ; preds = %22, %25
  %30 = phi ptr [ %27, %25 ], [ %20, %22 ]
  %31 = phi ptr [ %26, %25 ], [ %24, %22 ]
  %32 = getelementptr inbounds %struct.MaskSpline, ptr %30, i64 0, i32 5
  %33 = load i32, ptr %32, align 4, !tbaa !34
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %25

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.MaskSpline, ptr %30, i64 0, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !44
  %38 = zext nneg i32 %33 to i64
  br label %39

39:                                               ; preds = %35, %39
  %40 = phi i64 [ 0, %35 ], [ %66, %39 ]
  %41 = phi ptr [ %31, %35 ], [ %65, %39 ]
  %42 = getelementptr inbounds %struct.MaskSplinePoint, ptr %37, i64 %40
  %43 = load float, ptr %42, align 4, !tbaa !86
  store float %43, ptr %41, align 4, !tbaa !86
  %44 = getelementptr inbounds float, ptr %42, i64 1
  %45 = load float, ptr %44, align 4, !tbaa !86
  %46 = getelementptr inbounds float, ptr %41, i64 1
  store float %45, ptr %46, align 4, !tbaa !86
  %47 = getelementptr inbounds float, ptr %41, i64 2
  %48 = getelementptr inbounds [3 x [3 x float]], ptr %42, i64 0, i64 1
  %49 = load float, ptr %48, align 4, !tbaa !86
  store float %49, ptr %47, align 4, !tbaa !86
  %50 = getelementptr inbounds [3 x [3 x float]], ptr %42, i64 0, i64 1, i64 1
  %51 = load float, ptr %50, align 4, !tbaa !86
  %52 = getelementptr inbounds float, ptr %41, i64 3
  store float %51, ptr %52, align 4, !tbaa !86
  %53 = getelementptr inbounds float, ptr %41, i64 4
  %54 = getelementptr inbounds [3 x [3 x float]], ptr %42, i64 0, i64 2
  %55 = load float, ptr %54, align 4, !tbaa !86
  store float %55, ptr %53, align 4, !tbaa !86
  %56 = getelementptr inbounds [3 x [3 x float]], ptr %42, i64 0, i64 2, i64 1
  %57 = load float, ptr %56, align 4, !tbaa !86
  %58 = getelementptr inbounds float, ptr %41, i64 5
  store float %57, ptr %58, align 4, !tbaa !86
  %59 = getelementptr inbounds %struct.BezTriple, ptr %42, i64 0, i32 2
  %60 = load float, ptr %59, align 4, !tbaa !105
  %61 = getelementptr inbounds float, ptr %41, i64 6
  store float %60, ptr %61, align 4, !tbaa !86
  %62 = getelementptr inbounds %struct.BezTriple, ptr %42, i64 0, i32 3
  %63 = load float, ptr %62, align 4, !tbaa !176
  %64 = getelementptr inbounds float, ptr %41, i64 7
  store float %63, ptr %64, align 4, !tbaa !86
  %65 = getelementptr inbounds float, ptr %41, i64 8
  %66 = add nuw nsw i64 %40, 1
  %67 = icmp eq i64 %66, %38
  br i1 %67, label %25, label %39, !llvm.loop !185

68:                                               ; preds = %14
  %69 = getelementptr inbounds %struct.MaskLayerShape, ptr %1, i64 0, i32 4
  %70 = load i32, ptr %69, align 4, !tbaa !80
  %71 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef nonnull @__func__.BKE_mask_layer_shape_from_mask, i32 noundef %17, i32 noundef %15, i32 noundef %70)
  br label %72

72:                                               ; preds = %25, %19, %68
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #16

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_mask_layer_shape_find_frame(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 4
  br label %4

4:                                                ; preds = %12, %2
  %5 = phi ptr [ %3, %2 ], [ %6, %12 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.MaskLayerShape, ptr %6, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !80
  %11 = icmp eq i32 %10, %1
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = icmp sgt i32 %10, %1
  br i1 %13, label %14, label %4, !llvm.loop !186

14:                                               ; preds = %4, %12, %8
  %15 = phi ptr [ %6, %8 ], [ null, %12 ], [ null, %4 ]
  ret ptr %15
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_mask_layer_shape_verify_frame(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 4
  br label %4

4:                                                ; preds = %12, %2
  %5 = phi ptr [ %3, %2 ], [ %6, %12 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.MaskLayerShape, ptr %6, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !80
  %11 = icmp eq i32 %10, %1
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = icmp sgt i32 %10, %1
  br i1 %13, label %14, label %4, !llvm.loop !186

14:                                               ; preds = %4, %8, %12
  %15 = phi ptr [ %6, %8 ], [ null, %12 ], [ null, %4 ]
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %40

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !45
  %20 = icmp eq ptr %19, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %17, %21
  %22 = phi ptr [ %27, %21 ], [ %19, %17 ]
  %23 = phi i32 [ %26, %21 ], [ 0, %17 ]
  %24 = getelementptr inbounds %struct.MaskSpline, ptr %22, i64 0, i32 5
  %25 = load i32, ptr %24, align 4, !tbaa !34
  %26 = add nsw i32 %25, %23
  %27 = load ptr, ptr %22, align 8, !tbaa !45
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %21, !llvm.loop !116

29:                                               ; preds = %21, %17
  %30 = phi i32 [ 0, %17 ], [ %26, %21 ]
  %31 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %32 = tail call ptr %31(i64 noundef 40, ptr noundef nonnull @__func__.BKE_mask_layer_shape_alloc) #21
  %33 = getelementptr inbounds %struct.MaskLayerShape, ptr %32, i64 0, i32 4
  store i32 %1, ptr %33, align 4, !tbaa !80
  %34 = getelementptr inbounds %struct.MaskLayerShape, ptr %32, i64 0, i32 3
  store i32 %30, ptr %34, align 8, !tbaa !78
  %35 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %36 = sext i32 %30 to i64
  %37 = shl nsw i64 %36, 5
  %38 = tail call ptr %35(i64 noundef %37, ptr noundef nonnull @__func__.BKE_mask_layer_shape_alloc) #21
  %39 = getelementptr inbounds %struct.MaskLayerShape, ptr %32, i64 0, i32 2
  store ptr %38, ptr %39, align 8, !tbaa !69
  tail call void @BLI_addtail(ptr noundef nonnull %3, ptr noundef %32) #21
  tail call void @BLI_sortlist(ptr noundef nonnull %3, ptr noundef nonnull @mask_layer_shape_sort_cb) #21
  br label %40

40:                                               ; preds = %29, %14
  %41 = phi ptr [ %32, %29 ], [ %15, %14 ]
  ret ptr %41
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mask_layer_shape_sort(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 4
  tail call void @BLI_sortlist(ptr noundef nonnull %2, ptr noundef nonnull @mask_layer_shape_sort_cb) #21
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_mask_layer_shape_duplicate(ptr noundef %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !45
  %3 = tail call ptr %2(ptr noundef %0) #21
  %4 = getelementptr inbounds %struct.MaskLayerShape, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !69
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !45
  %9 = tail call ptr %8(ptr noundef nonnull %5) #21
  store ptr %9, ptr %4, align 8, !tbaa !69
  br label %10

10:                                               ; preds = %7, %1
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mask_layer_shape_unlink(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 4
  tail call void @BLI_remlink(ptr noundef nonnull %3, ptr noundef %1) #21
  %4 = getelementptr inbounds %struct.MaskLayerShape, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !69
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %8(ptr noundef nonnull %5) #21
  br label %9

9:                                                ; preds = %2, %7
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %10(ptr noundef %1) #21
  ret void
}

declare void @BLI_sortlist(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @mask_layer_shape_sort_cb(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.MaskLayerShape, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 4, !tbaa !80
  %5 = getelementptr inbounds %struct.MaskLayerShape, ptr %1, i64 0, i32 4
  %6 = load i32, ptr %5, align 4, !tbaa !80
  %7 = icmp slt i32 %4, %6
  %8 = icmp sgt i32 %4, %6
  %9 = zext i1 %8 to i32
  %10 = select i1 %7, i32 -1, i32 %9
  ret i32 %10
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @BKE_mask_layer_shape_spline_from_index(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #14 {
  %5 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = icmp eq ptr %6, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %4, %15
  %9 = phi ptr [ %17, %15 ], [ %6, %4 ]
  %10 = phi i32 [ %16, %15 ], [ %1, %4 ]
  %11 = getelementptr inbounds %struct.MaskSpline, ptr %9, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !34
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  store ptr %9, ptr %2, align 8, !tbaa !45
  store i32 %10, ptr %3, align 4, !tbaa !75
  br label %19

15:                                               ; preds = %8
  %16 = sub nsw i32 %10, %12
  %17 = load ptr, ptr %9, align 8, !tbaa !45
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %8, !llvm.loop !187

19:                                               ; preds = %15, %4, %14
  %20 = phi i8 [ 1, %14 ], [ 0, %4 ], [ 0, %15 ]
  ret i8 %20
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mask_layer_shape_changed_add(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #1 {
  %5 = alloca [2 x float], align 4
  %6 = alloca [3 x [2 x float]], align 16
  %7 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = icmp eq ptr %8, null
  br i1 %9, label %236, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.MaskSpline, ptr %8, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !34
  %13 = icmp sgt i32 %12, %1
  br i1 %13, label %25, label %19

14:                                               ; preds = %19
  %15 = sub nsw i32 %21, %20
  %16 = getelementptr inbounds %struct.MaskSpline, ptr %23, i64 0, i32 5
  %17 = load i32, ptr %16, align 4, !tbaa !34
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %25, label %19, !llvm.loop !187

19:                                               ; preds = %10, %14
  %20 = phi i32 [ %17, %14 ], [ %12, %10 ]
  %21 = phi i32 [ %15, %14 ], [ %1, %10 ]
  %22 = phi ptr [ %23, %14 ], [ %8, %10 ]
  %23 = load ptr, ptr %22, align 8, !tbaa !45
  %24 = icmp eq ptr %23, null
  br i1 %24, label %236, label %14, !llvm.loop !187

25:                                               ; preds = %14, %10
  %26 = phi i1 [ %9, %10 ], [ %24, %14 ]
  %27 = phi ptr [ %8, %10 ], [ %23, %14 ]
  %28 = phi i32 [ %1, %10 ], [ %15, %14 ]
  br i1 %26, label %236, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %7, align 8, !tbaa !45
  %31 = icmp eq ptr %30, null
  br i1 %31, label %42, label %32

32:                                               ; preds = %29, %32
  %33 = phi ptr [ %38, %32 ], [ %30, %29 ]
  %34 = phi i32 [ %37, %32 ], [ 0, %29 ]
  %35 = getelementptr inbounds %struct.MaskSpline, ptr %33, i64 0, i32 5
  %36 = load i32, ptr %35, align 4, !tbaa !34
  %37 = add nsw i32 %36, %34
  %38 = load ptr, ptr %33, align 8, !tbaa !45
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %32, !llvm.loop !116

40:                                               ; preds = %32
  %41 = add nsw i32 %37, -1
  br label %42

42:                                               ; preds = %40, %29
  %43 = phi i32 [ -1, %29 ], [ %41, %40 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #21
  %44 = add nsw i32 %28, -1
  %45 = getelementptr inbounds %struct.MaskSpline, ptr %27, i64 0, i32 5
  %46 = load i32, ptr %45, align 4, !tbaa !34
  %47 = add nsw i32 %44, %46
  %48 = srem i32 %47, %46
  %49 = add nsw i32 %28, 1
  %50 = srem i32 %49, %46
  %51 = sub nsw i32 %1, %28
  %52 = add nsw i32 %48, %51
  %53 = add nsw i32 %50, %51
  %54 = icmp eq i8 %3, 0
  br i1 %54, label %113, label %55

55:                                               ; preds = %42
  %56 = getelementptr inbounds %struct.MaskSpline, ptr %27, i64 0, i32 6
  %57 = sext i32 %28 to i64
  %58 = sext i32 %48 to i64
  %59 = sext i32 %50 to i64
  %60 = getelementptr inbounds float, ptr %5, i64 1
  br label %61

61:                                               ; preds = %55, %61
  %62 = phi i64 [ 0, %55 ], [ %111, %61 ]
  %63 = getelementptr inbounds [3 x [2 x float]], ptr %6, i64 0, i64 %62
  %64 = load ptr, ptr %56, align 8, !tbaa !44
  %65 = getelementptr inbounds %struct.MaskSplinePoint, ptr %64, i64 %57
  %66 = getelementptr inbounds [3 x [3 x float]], ptr %65, i64 0, i64 %62
  %67 = getelementptr inbounds %struct.MaskSplinePoint, ptr %64, i64 %58
  %68 = getelementptr inbounds [3 x [3 x float]], ptr %67, i64 0, i64 %62
  %69 = getelementptr inbounds %struct.MaskSplinePoint, ptr %64, i64 %59
  %70 = getelementptr inbounds [3 x [3 x float]], ptr %69, i64 0, i64 %62
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  %71 = call float @closest_to_line_v2(ptr noundef nonnull %5, ptr noundef %66, ptr noundef %68, ptr noundef %70) #21
  store float %71, ptr %63, align 8, !tbaa !86
  %72 = load float, ptr %5, align 4, !tbaa !86
  %73 = load float, ptr %66, align 4, !tbaa !86
  %74 = fsub float %72, %73
  %75 = load float, ptr %60, align 4, !tbaa !86
  %76 = getelementptr inbounds float, ptr %66, i64 1
  %77 = load float, ptr %76, align 4, !tbaa !86
  %78 = fsub float %75, %77
  %79 = fmul float %78, %78
  %80 = call float @llvm.fmuladd.f32(float %74, float %74, float %79)
  %81 = call float @sqrtf(float noundef %80) #21
  %82 = load float, ptr %68, align 4, !tbaa !86
  %83 = load float, ptr %70, align 4, !tbaa !86
  %84 = fsub float %82, %83
  %85 = getelementptr inbounds float, ptr %68, i64 1
  %86 = load float, ptr %85, align 4, !tbaa !86
  %87 = getelementptr inbounds float, ptr %70, i64 1
  %88 = load float, ptr %87, align 4, !tbaa !86
  %89 = fsub float %86, %88
  %90 = fmul float %89, %89
  %91 = call float @llvm.fmuladd.f32(float %84, float %84, float %90)
  %92 = call float @sqrtf(float noundef %91) #21
  %93 = fdiv float %81, %92
  %94 = load float, ptr %68, align 4, !tbaa !86
  %95 = load float, ptr %66, align 4, !tbaa !86
  %96 = fsub float %94, %95
  %97 = load float, ptr %87, align 4, !tbaa !86
  %98 = load float, ptr %76, align 4, !tbaa !86
  %99 = fsub float %97, %98
  %100 = load float, ptr %70, align 4, !tbaa !86
  %101 = fsub float %100, %95
  %102 = load float, ptr %85, align 4, !tbaa !86
  %103 = fsub float %102, %98
  %104 = fneg float %101
  %105 = fmul float %103, %104
  %106 = call float @llvm.fmuladd.f32(float %96, float %99, float %105)
  %107 = fcmp olt float %106, 0.000000e+00
  %108 = fneg float %93
  %109 = select i1 %107, float %108, float %93
  %110 = getelementptr inbounds float, ptr %63, i64 1
  store float %109, ptr %110, align 4, !tbaa !86
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  %111 = add nuw nsw i64 %62, 1
  %112 = icmp eq i64 %111, 3
  br i1 %112, label %113, label %61, !llvm.loop !188

113:                                              ; preds = %61, %42
  %114 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 4
  %115 = load ptr, ptr %114, align 8, !tbaa !45
  %116 = icmp eq ptr %115, null
  br i1 %116, label %235, label %117

117:                                              ; preds = %113
  %118 = icmp sgt i32 %1, 0
  %119 = zext nneg i32 %1 to i64
  %120 = shl nuw nsw i64 %119, 5
  %121 = add nsw i32 %1, 1
  %122 = shl nsw i32 %121, 3
  %123 = sext i32 %122 to i64
  %124 = shl nsw i32 %1, 3
  %125 = sext i32 %124 to i64
  %126 = icmp eq i8 %2, 0
  %127 = shl nsw i32 %1, 3
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.MaskSpline, ptr %27, i64 0, i32 6
  %130 = sext i32 %28 to i64
  %131 = shl nsw i32 %52, 3
  %132 = shl nsw i32 %53, 3
  %133 = shl nsw i32 %1, 3
  %134 = sext i32 %133 to i64
  %135 = sext i32 %131 to i64
  %136 = sext i32 %132 to i64
  br label %137

137:                                              ; preds = %117, %232
  %138 = phi ptr [ %115, %117 ], [ %233, %232 ]
  %139 = getelementptr inbounds %struct.MaskLayerShape, ptr %138, i64 0, i32 3
  %140 = load i32, ptr %139, align 8, !tbaa !78
  %141 = icmp eq i32 %43, %140
  br i1 %141, label %142, label %228

142:                                              ; preds = %137
  %143 = add nsw i32 %140, 1
  store i32 %143, ptr %139, align 8, !tbaa !78
  %144 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %145 = sext i32 %143 to i64
  %146 = shl nsw i64 %145, 5
  %147 = call ptr %144(i64 noundef %146, ptr noundef nonnull @__func__.BKE_mask_layer_shape_changed_add) #21
  br i1 %118, label %148, label %151

148:                                              ; preds = %142
  %149 = getelementptr inbounds %struct.MaskLayerShape, ptr %138, i64 0, i32 2
  %150 = load ptr, ptr %149, align 8, !tbaa !69
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %147, ptr align 4 %150, i64 %120, i1 false)
  br label %151

151:                                              ; preds = %148, %142
  %152 = load i32, ptr %139, align 8, !tbaa !78
  %153 = add nsw i32 %152, -1
  %154 = icmp eq i32 %153, %1
  br i1 %154, label %163, label %155

155:                                              ; preds = %151
  %156 = getelementptr inbounds float, ptr %147, i64 %123
  %157 = getelementptr inbounds %struct.MaskLayerShape, ptr %138, i64 0, i32 2
  %158 = load ptr, ptr %157, align 8, !tbaa !69
  %159 = getelementptr inbounds float, ptr %158, i64 %125
  %160 = sub nsw i32 %152, %121
  %161 = sext i32 %160 to i64
  %162 = shl nsw i64 %161, 5
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %156, ptr align 4 %159, i64 %162, i1 false)
  br label %163

163:                                              ; preds = %155, %151
  br i1 %126, label %222, label %164

164:                                              ; preds = %163
  %165 = getelementptr inbounds float, ptr %147, i64 %128
  %166 = load ptr, ptr %129, align 8, !tbaa !44
  %167 = getelementptr inbounds %struct.MaskSplinePoint, ptr %166, i64 %130
  %168 = load float, ptr %167, align 4, !tbaa !86
  store float %168, ptr %165, align 4, !tbaa !86
  %169 = getelementptr inbounds float, ptr %167, i64 1
  %170 = load float, ptr %169, align 4, !tbaa !86
  %171 = getelementptr inbounds float, ptr %165, i64 1
  store float %170, ptr %171, align 4, !tbaa !86
  %172 = getelementptr inbounds float, ptr %165, i64 2
  %173 = getelementptr inbounds [3 x [3 x float]], ptr %167, i64 0, i64 1
  %174 = load float, ptr %173, align 4, !tbaa !86
  store float %174, ptr %172, align 4, !tbaa !86
  %175 = getelementptr inbounds [3 x [3 x float]], ptr %167, i64 0, i64 1, i64 1
  %176 = load float, ptr %175, align 4, !tbaa !86
  %177 = getelementptr inbounds float, ptr %165, i64 3
  store float %176, ptr %177, align 4, !tbaa !86
  %178 = getelementptr inbounds float, ptr %165, i64 4
  %179 = getelementptr inbounds [3 x [3 x float]], ptr %167, i64 0, i64 2
  %180 = load float, ptr %179, align 4, !tbaa !86
  store float %180, ptr %178, align 4, !tbaa !86
  %181 = getelementptr inbounds [3 x [3 x float]], ptr %167, i64 0, i64 2, i64 1
  %182 = load float, ptr %181, align 4, !tbaa !86
  %183 = getelementptr inbounds float, ptr %165, i64 5
  store float %182, ptr %183, align 4, !tbaa !86
  %184 = getelementptr inbounds %struct.BezTriple, ptr %167, i64 0, i32 2
  %185 = load float, ptr %184, align 4, !tbaa !105
  %186 = getelementptr inbounds float, ptr %165, i64 6
  store float %185, ptr %186, align 4, !tbaa !86
  %187 = getelementptr inbounds %struct.BezTriple, ptr %167, i64 0, i32 3
  %188 = load float, ptr %187, align 4, !tbaa !176
  %189 = getelementptr inbounds float, ptr %165, i64 7
  store float %188, ptr %189, align 4, !tbaa !86
  br i1 %54, label %224, label %190

190:                                              ; preds = %164
  %191 = load i32, ptr %45, align 4, !tbaa !34
  %192 = icmp sgt i32 %191, 2
  br i1 %192, label %193, label %224

193:                                              ; preds = %190
  %194 = getelementptr float, ptr %147, i64 %135
  %195 = getelementptr float, ptr %147, i64 %136
  br label %196

196:                                              ; preds = %193, %196
  %197 = phi i64 [ %220, %196 ], [ 0, %193 ]
  %198 = getelementptr inbounds [3 x [2 x float]], ptr %6, i64 0, i64 %197
  %199 = shl nuw nsw i64 %197, 1
  %200 = getelementptr inbounds float, ptr %165, i64 %199
  %201 = getelementptr float, ptr %194, i64 %199
  %202 = getelementptr float, ptr %195, i64 %199
  %203 = load float, ptr %202, align 4, !tbaa !86
  %204 = load float, ptr %201, align 4, !tbaa !86
  %205 = fsub float %203, %204
  %206 = getelementptr inbounds float, ptr %202, i64 1
  %207 = load float, ptr %206, align 4, !tbaa !86
  %208 = getelementptr inbounds float, ptr %201, i64 1
  %209 = load float, ptr %208, align 4, !tbaa !86
  %210 = fsub float %207, %209
  %211 = load float, ptr %198, align 8, !tbaa !86
  %212 = call float @llvm.fmuladd.f32(float %205, float %211, float %204)
  store float %212, ptr %200, align 4, !tbaa !86
  %213 = call float @llvm.fmuladd.f32(float %210, float %211, float %209)
  %214 = getelementptr inbounds float, ptr %200, i64 1
  store float %213, ptr %214, align 4, !tbaa !86
  %215 = fneg float %210
  %216 = getelementptr inbounds float, ptr %198, i64 1
  %217 = load float, ptr %216, align 4, !tbaa !86
  %218 = call float @llvm.fmuladd.f32(float %215, float %217, float %212)
  store float %218, ptr %200, align 4, !tbaa !86
  %219 = call float @llvm.fmuladd.f32(float %205, float %217, float %213)
  store float %219, ptr %214, align 4, !tbaa !86
  %220 = add nuw nsw i64 %197, 1
  %221 = icmp eq i64 %220, 3
  br i1 %221, label %224, label %196, !llvm.loop !189

222:                                              ; preds = %163
  %223 = getelementptr inbounds float, ptr %147, i64 %134
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %223, i8 0, i64 32, i1 false)
  br label %224

224:                                              ; preds = %196, %164, %190, %222
  %225 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %226 = getelementptr inbounds %struct.MaskLayerShape, ptr %138, i64 0, i32 2
  %227 = load ptr, ptr %226, align 8, !tbaa !69
  call void %225(ptr noundef %227) #21
  store ptr %147, ptr %226, align 8, !tbaa !69
  br label %232

228:                                              ; preds = %137
  %229 = getelementptr inbounds %struct.MaskLayerShape, ptr %138, i64 0, i32 4
  %230 = load i32, ptr %229, align 4, !tbaa !80
  %231 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef nonnull @__func__.BKE_mask_layer_shape_changed_add, i32 noundef %140, i32 noundef %43, i32 noundef %230)
  br label %232

232:                                              ; preds = %224, %228
  %233 = load ptr, ptr %138, align 8, !tbaa !45
  %234 = icmp eq ptr %233, null
  br i1 %234, label %235, label %137, !llvm.loop !190

235:                                              ; preds = %232, %113
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #21
  br label %236

236:                                              ; preds = %19, %4, %235, %25
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mask_layer_shape_changed_remove(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %3, %7
  %8 = phi ptr [ %13, %7 ], [ %5, %3 ]
  %9 = phi i32 [ %12, %7 ], [ 0, %3 ]
  %10 = getelementptr inbounds %struct.MaskSpline, ptr %8, i64 0, i32 5
  %11 = load i32, ptr %10, align 4, !tbaa !34
  %12 = add nsw i32 %11, %9
  %13 = load ptr, ptr %8, align 8, !tbaa !45
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7, !llvm.loop !116

15:                                               ; preds = %7, %3
  %16 = phi i32 [ 0, %3 ], [ %12, %7 ]
  %17 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !45
  %19 = icmp eq ptr %18, null
  br i1 %19, label %65, label %20

20:                                               ; preds = %15
  %21 = icmp sgt i32 %1, 0
  %22 = zext nneg i32 %1 to i64
  %23 = shl nuw nsw i64 %22, 5
  %24 = shl nsw i32 %1, 3
  %25 = sext i32 %24 to i64
  %26 = add nsw i32 %2, %1
  %27 = shl nsw i32 %26, 3
  %28 = sext i32 %27 to i64
  br label %29

29:                                               ; preds = %20, %62
  %30 = phi ptr [ %18, %20 ], [ %63, %62 ]
  %31 = getelementptr inbounds %struct.MaskLayerShape, ptr %30, i64 0, i32 3
  %32 = load i32, ptr %31, align 8, !tbaa !78
  %33 = sub nsw i32 %32, %2
  %34 = icmp eq i32 %16, %33
  br i1 %34, label %35, label %58

35:                                               ; preds = %29
  store i32 %33, ptr %31, align 8, !tbaa !78
  %36 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %37 = sext i32 %33 to i64
  %38 = shl nsw i64 %37, 5
  %39 = tail call ptr %36(i64 noundef %38, ptr noundef nonnull @__func__.BKE_mask_layer_shape_changed_remove) #21
  br i1 %21, label %40, label %43

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.MaskLayerShape, ptr %30, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !69
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %39, ptr align 4 %42, i64 %23, i1 false)
  br label %43

43:                                               ; preds = %40, %35
  %44 = load i32, ptr %31, align 8, !tbaa !78
  %45 = icmp eq i32 %44, %1
  br i1 %45, label %54, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds float, ptr %39, i64 %25
  %48 = getelementptr inbounds %struct.MaskLayerShape, ptr %30, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !69
  %50 = getelementptr inbounds float, ptr %49, i64 %28
  %51 = sub nsw i32 %44, %1
  %52 = sext i32 %51 to i64
  %53 = shl nsw i64 %52, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %47, ptr align 4 %50, i64 %53, i1 false)
  br label %54

54:                                               ; preds = %46, %43
  %55 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %56 = getelementptr inbounds %struct.MaskLayerShape, ptr %30, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !69
  tail call void %55(ptr noundef %57) #21
  store ptr %39, ptr %56, align 8, !tbaa !69
  br label %62

58:                                               ; preds = %29
  %59 = getelementptr inbounds %struct.MaskLayerShape, ptr %30, i64 0, i32 4
  %60 = load i32, ptr %59, align 4, !tbaa !80
  %61 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef nonnull @__func__.BKE_mask_layer_shape_changed_remove, i32 noundef %33, i32 noundef %16, i32 noundef %60)
  br label %62

62:                                               ; preds = %54, %58
  %63 = load ptr, ptr %30, align 8, !tbaa !45
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %29, !llvm.loop !191

65:                                               ; preds = %62, %15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @BKE_mask_get_duration(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Mask, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 4, !tbaa !114
  %4 = getelementptr inbounds %struct.Mask, ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !113
  %6 = sub nsw i32 %3, %5
  %7 = tail call i32 @llvm.smax.i32(i32 %6, i32 1)
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mask_clipboard_free() local_unnamed_addr #1 {
  %1 = load ptr, ptr @mask_clipboard, align 8, !tbaa !57
  %2 = icmp eq ptr %1, null
  br i1 %2, label %46, label %3

3:                                                ; preds = %0, %43
  %4 = phi ptr [ %5, %43 ], [ %1, %0 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !58
  tail call void @BLI_remlink(ptr noundef nonnull @mask_clipboard, ptr noundef nonnull %4) #21
  %6 = getelementptr inbounds %struct.MaskSpline, ptr %4, i64 0, i32 5
  %7 = load i32, ptr %6, align 4, !tbaa !34
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %34

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.MaskSpline, ptr %4, i64 0, i32 6
  %11 = getelementptr inbounds %struct.MaskSpline, ptr %4, i64 0, i32 8
  br label %12

12:                                               ; preds = %29, %9
  %13 = phi i64 [ 0, %9 ], [ %30, %29 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !44
  %15 = getelementptr inbounds %struct.MaskSplinePoint, ptr %14, i64 %13, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !59
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %12
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %19(ptr noundef nonnull %16) #21
  br label %20

20:                                               ; preds = %18, %12
  %21 = load ptr, ptr %11, align 8, !tbaa !43
  %22 = icmp eq ptr %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.MaskSplinePoint, ptr %21, i64 %13, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !59
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %28(ptr noundef nonnull %25) #21
  br label %29

29:                                               ; preds = %27, %23, %20
  %30 = add nuw nsw i64 %13, 1
  %31 = load i32, ptr %6, align 4, !tbaa !34
  %32 = sext i32 %31 to i64
  %33 = icmp slt i64 %30, %32
  br i1 %33, label %12, label %34, !llvm.loop !62

34:                                               ; preds = %29, %3
  %35 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %36 = getelementptr inbounds %struct.MaskSpline, ptr %4, i64 0, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !44
  tail call void %35(ptr noundef %37) #21
  %38 = getelementptr inbounds %struct.MaskSpline, ptr %4, i64 0, i32 8
  %39 = load ptr, ptr %38, align 8, !tbaa !43
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %34
  %42 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %42(ptr noundef nonnull %39) #21
  br label %43

43:                                               ; preds = %34, %41
  %44 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %44(ptr noundef nonnull %4) #21
  %45 = icmp eq ptr %5, null
  br i1 %45, label %46, label %3, !llvm.loop !65

46:                                               ; preds = %43, %0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @mask_clipboard, i8 0, i64 16, i1 false)
  %47 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @mask_clipboard, i64 0, i32 1), align 8, !tbaa !192
  %48 = icmp eq ptr %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %46
  %50 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void @BLI_ghash_free(ptr noundef nonnull %47, ptr noundef null, ptr noundef %50) #21
  br label %51

51:                                               ; preds = %46, %49
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mask_clipboard_copy_from_layer(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 13
  %3 = load i8, ptr %2, align 1, !tbaa !72
  %4 = and i8 %3, 2
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %157

6:                                                ; preds = %1
  %7 = load ptr, ptr @mask_clipboard, align 8, !tbaa !57
  %8 = icmp eq ptr %7, null
  br i1 %8, label %52, label %9

9:                                                ; preds = %6, %49
  %10 = phi ptr [ %11, %49 ], [ %7, %6 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !58
  tail call void @BLI_remlink(ptr noundef nonnull @mask_clipboard, ptr noundef nonnull %10) #21
  %12 = getelementptr inbounds %struct.MaskSpline, ptr %10, i64 0, i32 5
  %13 = load i32, ptr %12, align 4, !tbaa !34
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %40

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.MaskSpline, ptr %10, i64 0, i32 6
  %17 = getelementptr inbounds %struct.MaskSpline, ptr %10, i64 0, i32 8
  br label %18

18:                                               ; preds = %35, %15
  %19 = phi i64 [ 0, %15 ], [ %36, %35 ]
  %20 = load ptr, ptr %16, align 8, !tbaa !44
  %21 = getelementptr inbounds %struct.MaskSplinePoint, ptr %20, i64 %19, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !59
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %18
  %25 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %25(ptr noundef nonnull %22) #21
  br label %26

26:                                               ; preds = %24, %18
  %27 = load ptr, ptr %17, align 8, !tbaa !43
  %28 = icmp eq ptr %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.MaskSplinePoint, ptr %27, i64 %19, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !59
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %34(ptr noundef nonnull %31) #21
  br label %35

35:                                               ; preds = %33, %29, %26
  %36 = add nuw nsw i64 %19, 1
  %37 = load i32, ptr %12, align 4, !tbaa !34
  %38 = sext i32 %37 to i64
  %39 = icmp slt i64 %36, %38
  br i1 %39, label %18, label %40, !llvm.loop !62

40:                                               ; preds = %35, %9
  %41 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %42 = getelementptr inbounds %struct.MaskSpline, ptr %10, i64 0, i32 6
  %43 = load ptr, ptr %42, align 8, !tbaa !44
  tail call void %41(ptr noundef %43) #21
  %44 = getelementptr inbounds %struct.MaskSpline, ptr %10, i64 0, i32 8
  %45 = load ptr, ptr %44, align 8, !tbaa !43
  %46 = icmp eq ptr %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %40
  %48 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %48(ptr noundef nonnull %45) #21
  br label %49

49:                                               ; preds = %40, %47
  %50 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %50(ptr noundef nonnull %10) #21
  %51 = icmp eq ptr %11, null
  br i1 %51, label %52, label %9, !llvm.loop !65

52:                                               ; preds = %49, %6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @mask_clipboard, i8 0, i64 16, i1 false)
  %53 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @mask_clipboard, i64 0, i32 1), align 8, !tbaa !192
  %54 = icmp eq ptr %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %52
  %56 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void @BLI_ghash_clear(ptr noundef nonnull %53, ptr noundef null, ptr noundef %56) #21
  br label %57

57:                                               ; preds = %52, %55
  %58 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @mask_clipboard, i64 0, i32 1), align 8, !tbaa !192
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = tail call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @.str.10) #21
  store ptr %61, ptr getelementptr inbounds (%struct.anon, ptr @mask_clipboard, i64 0, i32 1), align 8, !tbaa !192
  br label %62

62:                                               ; preds = %60, %57
  %63 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !45
  %65 = icmp eq ptr %64, null
  br i1 %65, label %157, label %66

66:                                               ; preds = %62, %154
  %67 = phi ptr [ %155, %154 ], [ %64, %62 ]
  %68 = getelementptr inbounds %struct.MaskSpline, ptr %67, i64 0, i32 2
  %69 = load i16, ptr %68, align 8, !tbaa !42
  %70 = and i16 %69, 1
  %71 = icmp eq i16 %70, 0
  br i1 %71, label %154, label %72

72:                                               ; preds = %66
  %73 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %74 = tail call ptr %73(i64 noundef 224, ptr noundef nonnull @.str.7) #21
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %74, ptr noundef nonnull align 8 dereferenceable(224) %67, i64 224, i1 false), !tbaa.struct !73
  %75 = getelementptr inbounds %struct.MaskSpline, ptr %74, i64 0, i32 8
  store ptr null, ptr %75, align 8, !tbaa !43
  %76 = getelementptr inbounds %struct.MaskSpline, ptr %67, i64 0, i32 6
  %77 = load ptr, ptr %76, align 8, !tbaa !44
  %78 = getelementptr inbounds %struct.MaskSpline, ptr %67, i64 0, i32 5
  %79 = load i32, ptr %78, align 4, !tbaa !34
  %80 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !45
  %81 = tail call ptr %80(ptr noundef %77) #21
  %82 = icmp sgt i32 %79, 0
  br i1 %82, label %83, label %96

83:                                               ; preds = %72
  %84 = zext nneg i32 %79 to i64
  br label %85

85:                                               ; preds = %93, %83
  %86 = phi i64 [ 0, %83 ], [ %94, %93 ]
  %87 = getelementptr inbounds %struct.MaskSplinePoint, ptr %81, i64 %86, i32 3
  %88 = load ptr, ptr %87, align 8, !tbaa !59
  %89 = icmp eq ptr %88, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %85
  %91 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !45
  %92 = tail call ptr %91(ptr noundef nonnull %88) #21
  store ptr %92, ptr %87, align 8, !tbaa !59
  br label %93

93:                                               ; preds = %90, %85
  %94 = add nuw nsw i64 %86, 1
  %95 = icmp eq i64 %94, %84
  br i1 %95, label %96, label %85, !llvm.loop !76

96:                                               ; preds = %93, %72
  %97 = getelementptr inbounds %struct.MaskSpline, ptr %74, i64 0, i32 6
  store ptr %81, ptr %97, align 8, !tbaa !44
  %98 = getelementptr inbounds %struct.MaskSpline, ptr %67, i64 0, i32 8
  %99 = load ptr, ptr %98, align 8, !tbaa !43
  %100 = icmp eq ptr %99, null
  br i1 %100, label %120, label %101

101:                                              ; preds = %96
  %102 = load i32, ptr %78, align 4, !tbaa !34
  %103 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !45
  %104 = tail call ptr %103(ptr noundef nonnull %99) #21
  %105 = icmp sgt i32 %102, 0
  br i1 %105, label %106, label %119

106:                                              ; preds = %101
  %107 = zext nneg i32 %102 to i64
  br label %108

108:                                              ; preds = %116, %106
  %109 = phi i64 [ 0, %106 ], [ %117, %116 ]
  %110 = getelementptr inbounds %struct.MaskSplinePoint, ptr %104, i64 %109, i32 3
  %111 = load ptr, ptr %110, align 8, !tbaa !59
  %112 = icmp eq ptr %111, null
  br i1 %112, label %116, label %113

113:                                              ; preds = %108
  %114 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !45
  %115 = tail call ptr %114(ptr noundef nonnull %111) #21
  store ptr %115, ptr %110, align 8, !tbaa !59
  br label %116

116:                                              ; preds = %113, %108
  %117 = add nuw nsw i64 %109, 1
  %118 = icmp eq i64 %117, %107
  br i1 %118, label %119, label %108, !llvm.loop !76

119:                                              ; preds = %116, %101
  store ptr %104, ptr %75, align 8, !tbaa !43
  br label %120

120:                                              ; preds = %96, %119
  %121 = getelementptr inbounds %struct.MaskSpline, ptr %74, i64 0, i32 5
  %122 = load i32, ptr %121, align 4, !tbaa !34
  %123 = icmp sgt i32 %122, 0
  br i1 %123, label %124, label %153

124:                                              ; preds = %120, %148
  %125 = phi i64 [ %149, %148 ], [ 0, %120 ]
  %126 = load ptr, ptr %97, align 8, !tbaa !44
  %127 = getelementptr inbounds %struct.MaskSplinePoint, ptr %126, i64 %125, i32 4, i32 2
  %128 = load ptr, ptr %127, align 8, !tbaa !194
  %129 = icmp eq ptr %128, null
  br i1 %129, label %148, label %130

130:                                              ; preds = %124
  %131 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @mask_clipboard, i64 0, i32 1), align 8, !tbaa !192
  %132 = tail call ptr @BLI_ghash_lookup(ptr noundef %131, ptr noundef nonnull %128) #21
  %133 = icmp eq ptr %132, null
  br i1 %133, label %134, label %148

134:                                              ; preds = %130
  %135 = load ptr, ptr %127, align 8, !tbaa !194
  %136 = getelementptr inbounds %struct.ID, ptr %135, i64 0, i32 4
  %137 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %136) #22
  %138 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %139 = shl i64 %137, 32
  %140 = add i64 %139, 4294967296
  %141 = ashr exact i64 %140, 32
  %142 = tail call ptr %138(i64 noundef %141, ptr noundef nonnull @.str.11) #21
  %143 = load ptr, ptr %127, align 8, !tbaa !194
  %144 = getelementptr inbounds %struct.ID, ptr %143, i64 0, i32 4
  %145 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %142, ptr noundef nonnull dereferenceable(1) %144) #21
  %146 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @mask_clipboard, i64 0, i32 1), align 8, !tbaa !192
  %147 = load ptr, ptr %127, align 8, !tbaa !194
  tail call void @BLI_ghash_insert(ptr noundef %146, ptr noundef %147, ptr noundef %142) #21
  br label %148

148:                                              ; preds = %130, %134, %124
  %149 = add nuw nsw i64 %125, 1
  %150 = load i32, ptr %121, align 4, !tbaa !34
  %151 = sext i32 %150 to i64
  %152 = icmp slt i64 %149, %151
  br i1 %152, label %124, label %153, !llvm.loop !195

153:                                              ; preds = %148, %120
  tail call void @BLI_addtail(ptr noundef nonnull @mask_clipboard, ptr noundef %74) #21
  br label %154

154:                                              ; preds = %66, %153
  %155 = load ptr, ptr %67, align 8, !tbaa !45
  %156 = icmp eq ptr %155, null
  br i1 %156, label %157, label %66, !llvm.loop !196

157:                                              ; preds = %154, %62, %1
  ret void
}

declare ptr @BLI_ghash_ptr_new(ptr noundef) local_unnamed_addr #3

declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #17

declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @BKE_mask_clipboard_is_empty() local_unnamed_addr #18 {
  %1 = load ptr, ptr @mask_clipboard, align 8, !tbaa !57
  %2 = icmp eq ptr %1, null
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mask_clipboard_paste_to_layer(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = load ptr, ptr @mask_clipboard, align 8, !tbaa !45
  %4 = icmp eq ptr %3, null
  br i1 %4, label %81, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.MaskLayer, ptr %1, i64 0, i32 3
  br label %7

7:                                                ; preds = %5, %78
  %8 = phi ptr [ %3, %5 ], [ %79, %78 ]
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %10 = tail call ptr %9(i64 noundef 224, ptr noundef nonnull @.str.7) #21
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %10, ptr noundef nonnull align 8 dereferenceable(224) %8, i64 224, i1 false), !tbaa.struct !73
  %11 = getelementptr inbounds %struct.MaskSpline, ptr %10, i64 0, i32 8
  store ptr null, ptr %11, align 8, !tbaa !43
  %12 = getelementptr inbounds %struct.MaskSpline, ptr %8, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !44
  %14 = getelementptr inbounds %struct.MaskSpline, ptr %8, i64 0, i32 5
  %15 = load i32, ptr %14, align 4, !tbaa !34
  %16 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !45
  %17 = tail call ptr %16(ptr noundef %13) #21
  %18 = icmp sgt i32 %15, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %7
  %20 = zext nneg i32 %15 to i64
  br label %21

21:                                               ; preds = %29, %19
  %22 = phi i64 [ 0, %19 ], [ %30, %29 ]
  %23 = getelementptr inbounds %struct.MaskSplinePoint, ptr %17, i64 %22, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !59
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !45
  %28 = tail call ptr %27(ptr noundef nonnull %24) #21
  store ptr %28, ptr %23, align 8, !tbaa !59
  br label %29

29:                                               ; preds = %26, %21
  %30 = add nuw nsw i64 %22, 1
  %31 = icmp eq i64 %30, %20
  br i1 %31, label %32, label %21, !llvm.loop !76

32:                                               ; preds = %29, %7
  %33 = getelementptr inbounds %struct.MaskSpline, ptr %10, i64 0, i32 6
  store ptr %17, ptr %33, align 8, !tbaa !44
  %34 = getelementptr inbounds %struct.MaskSpline, ptr %8, i64 0, i32 8
  %35 = load ptr, ptr %34, align 8, !tbaa !43
  %36 = icmp eq ptr %35, null
  br i1 %36, label %56, label %37

37:                                               ; preds = %32
  %38 = load i32, ptr %14, align 4, !tbaa !34
  %39 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !45
  %40 = tail call ptr %39(ptr noundef nonnull %35) #21
  %41 = icmp sgt i32 %38, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %37
  %43 = zext nneg i32 %38 to i64
  br label %44

44:                                               ; preds = %52, %42
  %45 = phi i64 [ 0, %42 ], [ %53, %52 ]
  %46 = getelementptr inbounds %struct.MaskSplinePoint, ptr %40, i64 %45, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !59
  %48 = icmp eq ptr %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  %50 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !45
  %51 = tail call ptr %50(ptr noundef nonnull %47) #21
  store ptr %51, ptr %46, align 8, !tbaa !59
  br label %52

52:                                               ; preds = %49, %44
  %53 = add nuw nsw i64 %45, 1
  %54 = icmp eq i64 %53, %43
  br i1 %54, label %55, label %44, !llvm.loop !76

55:                                               ; preds = %52, %37
  store ptr %40, ptr %11, align 8, !tbaa !43
  br label %56

56:                                               ; preds = %32, %55
  %57 = getelementptr inbounds %struct.MaskSpline, ptr %10, i64 0, i32 5
  %58 = load i32, ptr %57, align 4, !tbaa !34
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %78

60:                                               ; preds = %56, %73
  %61 = phi i64 [ %74, %73 ], [ 0, %56 ]
  %62 = load ptr, ptr %33, align 8, !tbaa !44
  %63 = getelementptr inbounds %struct.MaskSplinePoint, ptr %62, i64 %61, i32 4, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !194
  %65 = icmp eq ptr %64, null
  br i1 %65, label %73, label %66

66:                                               ; preds = %60
  %67 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @mask_clipboard, i64 0, i32 1), align 8, !tbaa !192
  %68 = tail call ptr @BLI_ghash_lookup(ptr noundef %67, ptr noundef nonnull %64) #21
  %69 = load i16, ptr %68, align 2, !tbaa !74
  %70 = tail call ptr @which_libbase(ptr noundef %0, i16 noundef signext %69) #21
  %71 = getelementptr inbounds i8, ptr %68, i64 2
  %72 = tail call ptr @BLI_findstring(ptr noundef %70, ptr noundef nonnull %71, i32 noundef 34) #21
  store ptr %72, ptr %63, align 8, !tbaa !194
  br label %73

73:                                               ; preds = %66, %60
  %74 = add nuw nsw i64 %61, 1
  %75 = load i32, ptr %57, align 4, !tbaa !34
  %76 = sext i32 %75 to i64
  %77 = icmp slt i64 %74, %76
  br i1 %77, label %60, label %78, !llvm.loop !197

78:                                               ; preds = %73, %56
  tail call void @BLI_addtail(ptr noundef nonnull %6, ptr noundef %10) #21
  %79 = load ptr, ptr %8, align 8, !tbaa !45
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %7, !llvm.loop !198

81:                                               ; preds = %78, %2
  ret void
}

declare ptr @which_libbase(ptr noundef, i16 noundef signext) local_unnamed_addr #3

declare ptr @BLI_findstring(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #19

declare ptr @BKE_libblock_alloc(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #3

declare void @BKE_nurb_handle_calc(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @mul_m3_v2(ptr noundef, ptr noundef) local_unnamed_addr #3

declare float @closest_to_line_v2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BLI_ghash_clear(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #20

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nounwind }
attributes #22 = { nounwind willreturn memory(read) }

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
!34 = !{!35, !40, i64 20}
!35 = !{!"MaskSpline", !36, i64 0, !36, i64 8, !39, i64 16, !37, i64 18, !37, i64 19, !40, i64 20, !36, i64 24, !41, i64 32, !36, i64 216}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"short", !37, i64 0}
!40 = !{!"int", !37, i64 0}
!41 = !{!"MaskParent", !40, i64 0, !40, i64 4, !36, i64 8, !37, i64 16, !37, i64 80, !37, i64 144, !37, i64 152}
!42 = !{!35, !39, i64 16}
!43 = !{!35, !36, i64 216}
!44 = !{!35, !36, i64 24}
!45 = !{!36, !36, i64 0}
!46 = !{!37, !37, i64 0}
!47 = !{!48, !40, i64 148}
!48 = !{!"Mask", !49, i64 0, !36, i64 120, !50, i64 128, !40, i64 144, !40, i64 148, !40, i64 152, !40, i64 156, !40, i64 160, !40, i64 164}
!49 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !39, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !36, i64 112}
!50 = !{!"ListBase", !36, i64 0, !36, i64 8}
!51 = !{!52, !37, i64 132}
!52 = !{!"MaskLayer", !36, i64 0, !36, i64 8, !37, i64 16, !50, i64 80, !50, i64 96, !36, i64 112, !36, i64 120, !53, i64 128, !37, i64 132, !37, i64 133, !37, i64 134, !37, i64 135, !37, i64 142, !37, i64 143}
!53 = !{!"float", !37, i64 0}
!54 = !{!52, !53, i64 128}
!55 = !{!52, !37, i64 142}
!56 = !{!48, !40, i64 144}
!57 = !{!50, !36, i64 0}
!58 = !{!35, !36, i64 0}
!59 = !{!60, !36, i64 80}
!60 = !{!"MaskSplinePoint", !61, i64 0, !40, i64 72, !40, i64 76, !36, i64 80, !41, i64 88}
!61 = !{!"BezTriple", !37, i64 0, !53, i64 36, !53, i64 40, !53, i64 44, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !37, i64 52, !37, i64 53, !37, i64 54, !37, i64 55, !53, i64 56, !53, i64 60, !53, i64 64, !37, i64 68}
!62 = distinct !{!62, !63, !64}
!63 = !{!"llvm.loop.mustprogress"}
!64 = !{!"llvm.loop.unroll.disable"}
!65 = distinct !{!65, !63, !64}
!66 = !{!52, !36, i64 96}
!67 = !{!68, !36, i64 0}
!68 = !{!"MaskLayerShape", !36, i64 0, !36, i64 8, !36, i64 16, !40, i64 24, !40, i64 28, !37, i64 32, !37, i64 33}
!69 = !{!68, !36, i64 16}
!70 = distinct !{!70, !63, !64}
!71 = !{!52, !37, i64 133}
!72 = !{!52, !37, i64 143}
!73 = !{i64 0, i64 8, !45, i64 8, i64 8, !45, i64 16, i64 2, !74, i64 18, i64 1, !46, i64 19, i64 1, !46, i64 20, i64 4, !75, i64 24, i64 8, !45, i64 32, i64 4, !75, i64 36, i64 4, !75, i64 40, i64 8, !45, i64 48, i64 64, !46, i64 112, i64 64, !46, i64 176, i64 8, !46, i64 184, i64 32, !46, i64 216, i64 8, !45}
!74 = !{!39, !39, i64 0}
!75 = !{!40, !40, i64 0}
!76 = distinct !{!76, !63, !64}
!77 = distinct !{!77, !63, !64}
!78 = !{!68, !40, i64 24}
!79 = !{!68, !37, i64 32}
!80 = !{!68, !40, i64 28}
!81 = distinct !{!81, !63, !64}
!82 = distinct !{!82, !63, !64}
!83 = !{!35, !37, i64 19}
!84 = !{!41, !40, i64 0}
!85 = !{!60, !40, i64 76}
!86 = !{!53, !53, i64 0}
!87 = !{!60, !37, i64 51}
!88 = !{!60, !37, i64 53}
!89 = !{!60, !37, i64 49}
!90 = !{!60, !37, i64 50}
!91 = !{i64 0, i64 4, !86, i64 4, i64 4, !86, i64 8, i64 4, !75}
!92 = distinct !{!92, !63, !64}
!93 = !{!94, !53, i64 0}
!94 = !{!"MaskSplinePointUW", !53, i64 0, !53, i64 4, !40, i64 8}
!95 = distinct !{!95, !63, !64}
!96 = !{i64 0, i64 36, !46, i64 36, i64 4, !86, i64 40, i64 4, !86, i64 44, i64 4, !86, i64 48, i64 1, !46, i64 49, i64 1, !46, i64 50, i64 1, !46, i64 51, i64 1, !46, i64 52, i64 1, !46, i64 53, i64 1, !46, i64 54, i64 1, !46, i64 55, i64 1, !46, i64 56, i64 4, !86, i64 60, i64 4, !86, i64 64, i64 4, !86, i64 68, i64 4, !46, i64 72, i64 4, !75, i64 76, i64 4, !75, i64 80, i64 8, !45, i64 88, i64 4, !75, i64 92, i64 4, !75, i64 96, i64 8, !45, i64 104, i64 64, !46, i64 168, i64 64, !46, i64 232, i64 8, !46, i64 240, i64 32, !46}
!97 = distinct !{!97, !63, !64}
!98 = distinct !{!98, !63, !64}
!99 = distinct !{!99, !63, !64}
!100 = distinct !{!100, !63, !64}
!101 = !{i64 0, i64 32, !46}
!102 = distinct !{!102, !63, !64}
!103 = !{!61, !37, i64 49}
!104 = !{!61, !37, i64 50}
!105 = !{!61, !53, i64 40}
!106 = !{!94, !53, i64 4}
!107 = distinct !{!107, !63, !64}
!108 = distinct !{!108, !63, !64}
!109 = !{!94, !40, i64 8}
!110 = !{!60, !37, i64 52}
!111 = distinct !{!111, !63, !64}
!112 = !{!48, !39, i64 98}
!113 = !{!48, !40, i64 152}
!114 = !{!48, !40, i64 156}
!115 = !{!48, !40, i64 100}
!116 = distinct !{!116, !63, !64}
!117 = !{!52, !36, i64 0}
!118 = distinct !{!118, !63, !64}
!119 = distinct !{!119, !63, !64}
!120 = distinct !{!120, !63, !64}
!121 = !{!122, !40, i64 32}
!122 = !{!"SpaceLink", !36, i64 0, !36, i64 8, !50, i64 16, !40, i64 32, !53, i64 36, !37, i64 40}
!123 = !{!124, !36, i64 392}
!124 = !{!"SpaceClip", !36, i64 0, !36, i64 8, !50, i64 16, !40, i64 32, !53, i64 36, !53, i64 40, !53, i64 44, !53, i64 48, !53, i64 52, !125, i64 56, !36, i64 64, !126, i64 72, !40, i64 208, !39, i64 212, !39, i64 214, !40, i64 216, !37, i64 220, !53, i64 228, !53, i64 232, !40, i64 236, !37, i64 240, !37, i64 304, !40, i64 368, !39, i64 372, !39, i64 374, !40, i64 376, !40, i64 380, !37, i64 384, !128, i64 392}
!125 = !{!"MovieClipUser", !40, i64 0, !39, i64 4, !39, i64 6}
!126 = !{!"MovieClipScopes", !39, i64 0, !39, i64 2, !40, i64 4, !40, i64 8, !40, i64 12, !127, i64 16, !36, i64 80, !36, i64 88, !37, i64 96, !39, i64 104, !39, i64 106, !40, i64 108, !36, i64 112, !36, i64 120, !37, i64 128}
!127 = !{!"MovieTrackingMarker", !37, i64 0, !37, i64 8, !37, i64 40, !37, i64 48, !40, i64 56, !40, i64 60}
!128 = !{!"MaskSpaceInfo", !36, i64 0, !37, i64 8, !37, i64 9, !37, i64 10, !37, i64 11}
!129 = !{!130, !36, i64 10568}
!130 = !{!"SpaceImage", !36, i64 0, !36, i64 8, !50, i64 16, !40, i64 32, !40, i64 36, !36, i64 40, !131, i64 48, !36, i64 88, !132, i64 96, !133, i64 5360, !36, i64 10520, !37, i64 10528, !53, i64 10536, !53, i64 10540, !53, i64 10544, !53, i64 10548, !53, i64 10552, !37, i64 10556, !37, i64 10557, !39, i64 10558, !39, i64 10560, !39, i64 10562, !37, i64 10564, !37, i64 10565, !37, i64 10566, !37, i64 10567, !128, i64 10568}
!131 = !{!"ImageUser", !36, i64 0, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !37, i64 24, !37, i64 25, !37, i64 26, !37, i64 27, !39, i64 28, !39, i64 30, !39, i64 32, !39, i64 34, !40, i64 36}
!132 = !{!"Scopes", !40, i64 0, !40, i64 4, !40, i64 8, !53, i64 12, !40, i64 16, !53, i64 20, !53, i64 24, !40, i64 28, !53, i64 32, !40, i64 36, !37, i64 40, !133, i64 64, !36, i64 5224, !36, i64 5232, !36, i64 5240, !36, i64 5248, !40, i64 5256, !40, i64 5260}
!133 = !{!"Histogram", !40, i64 0, !40, i64 4, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 3080, !37, i64 4104, !53, i64 5128, !53, i64 5132, !39, i64 5136, !39, i64 5138, !40, i64 5140, !37, i64 5144}
!134 = distinct !{!134, !63, !64}
!135 = !{!136, !36, i64 256}
!136 = !{!"Scene", !49, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !50, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !40, i64 232, !40, i64 236, !40, i64 240, !39, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !137, i64 280, !146, i64 4264, !50, i64 4296, !50, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !39, i64 4376, !39, i64 4378, !40, i64 4380, !50, i64 4384, !147, i64 4400, !148, i64 4416, !151, i64 4600, !36, i64 4608, !152, i64 4616, !36, i64 4640, !153, i64 4648, !153, i64 4656, !139, i64 4664, !140, i64 4824, !154, i64 4888, !36, i64 4952}
!137 = !{!"RenderData", !138, i64 0, !36, i64 248, !36, i64 256, !141, i64 264, !142, i64 328, !40, i64 400, !40, i64 404, !40, i64 408, !53, i64 412, !40, i64 416, !40, i64 420, !40, i64 424, !40, i64 428, !39, i64 432, !39, i64 434, !53, i64 436, !53, i64 440, !53, i64 444, !53, i64 448, !53, i64 452, !39, i64 456, !39, i64 458, !39, i64 460, !39, i64 462, !39, i64 464, !39, i64 466, !40, i64 468, !39, i64 472, !39, i64 474, !39, i64 476, !39, i64 478, !39, i64 480, !39, i64 482, !40, i64 484, !40, i64 488, !39, i64 492, !39, i64 494, !40, i64 496, !40, i64 500, !39, i64 504, !39, i64 506, !39, i64 508, !39, i64 510, !39, i64 512, !37, i64 514, !37, i64 515, !40, i64 516, !40, i64 520, !40, i64 524, !39, i64 528, !39, i64 530, !39, i64 532, !39, i64 534, !39, i64 536, !39, i64 538, !39, i64 540, !39, i64 542, !143, i64 544, !143, i64 560, !144, i64 576, !50, i64 592, !39, i64 608, !39, i64 610, !53, i64 612, !53, i64 616, !53, i64 620, !53, i64 624, !40, i64 628, !53, i64 632, !53, i64 636, !53, i64 640, !53, i64 644, !39, i64 648, !39, i64 650, !39, i64 652, !39, i64 654, !39, i64 656, !39, i64 658, !53, i64 660, !53, i64 664, !39, i64 668, !39, i64 670, !53, i64 672, !53, i64 676, !37, i64 680, !40, i64 1704, !39, i64 1708, !39, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !40, i64 2520, !39, i64 2524, !39, i64 2526, !53, i64 2528, !53, i64 2532, !39, i64 2536, !39, i64 2538, !53, i64 2540, !39, i64 2544, !39, i64 2546, !40, i64 2548, !39, i64 2552, !39, i64 2554, !39, i64 2556, !39, i64 2558, !53, i64 2560, !53, i64 2564, !36, i64 2568, !40, i64 2576, !53, i64 2580, !37, i64 2584, !145, i64 2616, !40, i64 3976, !40, i64 3980}
!138 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !39, i64 8, !39, i64 10, !53, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !139, i64 24, !140, i64 184}
!139 = !{!"ColorManagedViewSettings", !40, i64 0, !40, i64 4, !37, i64 8, !37, i64 72, !53, i64 136, !53, i64 140, !36, i64 144, !36, i64 152}
!140 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!141 = !{!"QuicktimeCodecSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !39, i64 48, !39, i64 50, !40, i64 52, !40, i64 56, !40, i64 60}
!142 = !{!"FFMpegCodecData", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !53, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !36, i64 64}
!143 = !{!"rctf", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12}
!144 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!145 = !{!"BakeData", !138, i64 0, !37, i64 248, !39, i64 1272, !39, i64 1274, !39, i64 1276, !39, i64 1278, !53, i64 1280, !53, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!146 = !{!"AudioData", !40, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !40, i64 16, !39, i64 20, !39, i64 22, !53, i64 24, !53, i64 28}
!147 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!148 = !{!"GameData", !147, i64 0, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !39, i64 32, !37, i64 34, !149, i64 40, !39, i64 64, !39, i64 66, !53, i64 68, !150, i64 72, !53, i64 128, !53, i64 132, !40, i64 136, !39, i64 140, !39, i64 142, !39, i64 144, !39, i64 146, !39, i64 148, !39, i64 150, !39, i64 152, !39, i64 154, !39, i64 156, !39, i64 158, !39, i64 160, !39, i64 162, !53, i64 164, !53, i64 168, !53, i64 172, !53, i64 176, !53, i64 180}
!149 = !{!"GameDome", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !53, i64 8, !53, i64 12, !36, i64 16}
!150 = !{!"RecastData", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !53, i64 16, !53, i64 20, !53, i64 24, !53, i64 28, !53, i64 32, !53, i64 36, !40, i64 40, !53, i64 44, !53, i64 48, !39, i64 52, !39, i64 54}
!151 = !{!"UnitSettings", !53, i64 0, !37, i64 4, !37, i64 5, !39, i64 6}
!152 = !{!"PhysicsSettings", !37, i64 0, !40, i64 12, !40, i64 16, !40, i64 20}
!153 = !{!"long", !37, i64 0}
!154 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!155 = !{!156, !40, i64 24}
!156 = !{!"SeqIterator", !36, i64 0, !40, i64 8, !40, i64 12, !36, i64 16, !40, i64 24}
!157 = !{!156, !36, i64 16}
!158 = !{!159, !36, i64 208}
!159 = !{!"Sequence", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !40, i64 96, !40, i64 100, !40, i64 104, !40, i64 108, !40, i64 112, !40, i64 116, !40, i64 120, !40, i64 124, !40, i64 128, !40, i64 132, !40, i64 136, !40, i64 140, !53, i64 144, !53, i64 148, !53, i64 152, !39, i64 156, !39, i64 158, !40, i64 160, !40, i64 164, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !53, i64 224, !53, i64 228, !36, i64 232, !36, i64 240, !36, i64 248, !50, i64 256, !36, i64 272, !36, i64 280, !53, i64 288, !53, i64 292, !53, i64 296, !53, i64 300, !36, i64 304, !40, i64 312, !40, i64 316, !40, i64 320, !53, i64 324, !40, i64 328, !37, i64 332, !37, i64 333, !50, i64 336}
!160 = distinct !{!160, !63, !64}
!161 = distinct !{!161, !63, !64}
!162 = distinct !{!162, !63, !64}
!163 = !{!41, !36, i64 8}
!164 = !{!41, !40, i64 4}
!165 = !{!60, !53, i64 40}
!166 = distinct !{!166, !63, !64}
!167 = distinct !{!167, !63, !64}
!168 = distinct !{!168, !63, !64}
!169 = distinct !{!169, !63, !64}
!170 = !{!68, !36, i64 8}
!171 = !{!52, !36, i64 104}
!172 = distinct !{!172, !63, !64}
!173 = distinct !{!173, !63, !64}
!174 = distinct !{!174, !63, !64}
!175 = distinct !{!175, !63, !64}
!176 = !{!61, !53, i64 44}
!177 = distinct !{!177, !63, !64}
!178 = distinct !{!178, !63, !64}
!179 = distinct !{!179, !63, !64}
!180 = distinct !{!180, !63, !64}
!181 = distinct !{!181, !63, !64}
!182 = !{!136, !40, i64 680}
!183 = distinct !{!183, !63, !64}
!184 = distinct !{!184, !63, !64}
!185 = distinct !{!185, !63, !64}
!186 = distinct !{!186, !63, !64}
!187 = distinct !{!187, !63, !64}
!188 = distinct !{!188, !63, !64}
!189 = distinct !{!189, !63, !64}
!190 = distinct !{!190, !63, !64}
!191 = distinct !{!191, !63, !64}
!192 = !{!193, !36, i64 16}
!193 = !{!"", !50, i64 0, !36, i64 16}
!194 = !{!60, !36, i64 96}
!195 = distinct !{!195, !63, !64}
!196 = distinct !{!196, !63, !64}
!197 = distinct !{!197, !63, !64}
!198 = distinct !{!198, !63, !64}
