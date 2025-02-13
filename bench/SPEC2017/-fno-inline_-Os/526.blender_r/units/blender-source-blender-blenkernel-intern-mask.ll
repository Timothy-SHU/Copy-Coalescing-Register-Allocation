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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_mask_layer_new(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %4 = tail call ptr %3(i64 noundef 144, ptr noundef nonnull @__func__.BKE_mask_layer_new) #24
  %5 = icmp eq ptr %1, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = load i8, ptr %1, align 1, !tbaa !46
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.MaskLayer, ptr %4, i64 0, i32 2
  %11 = tail call ptr @BLI_strncpy(ptr noundef nonnull %10, ptr noundef nonnull %1, i64 noundef 64) #24
  br label %14

12:                                               ; preds = %6, %2
  %13 = getelementptr inbounds %struct.MaskLayer, ptr %4, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %13, ptr noundef nonnull align 1 dereferenceable(10) @.str, i64 10, i1 false) #24
  br label %14

14:                                               ; preds = %12, %9
  %15 = getelementptr inbounds %struct.Mask, ptr %0, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %15, ptr noundef %4) #24
  tail call void @BKE_mask_layer_unique_name(ptr noundef %0, ptr noundef %4) #25
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

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mask_layer_unique_name(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.Mask, ptr %0, i64 0, i32 2
  tail call void @BLI_uniquename(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str, i8 noundef zeroext 46, i32 noundef 16, i32 noundef 64) #24
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_mask_layer_active(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.Mask, ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %struct.Mask, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !56
  %5 = tail call ptr @BLI_findlink(ptr noundef nonnull %2, i32 noundef %4) #24
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mask_layer_active_set(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.Mask, ptr %0, i64 0, i32 2
  %4 = tail call i32 @BLI_findindex(ptr noundef nonnull %3, ptr noundef %1) #24
  %5 = getelementptr inbounds %struct.Mask, ptr %0, i64 0, i32 3
  store i32 %4, ptr %5, align 8, !tbaa !56
  ret void
}

; Function Attrs: optsize
declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mask_layer_remove(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.Mask, ptr %0, i64 0, i32 2
  tail call void @BLI_remlink(ptr noundef nonnull %3, ptr noundef %1) #24
  tail call void @BKE_mask_layer_free(ptr noundef %1) #25
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

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mask_layer_free(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 3
  tail call void @BKE_mask_spline_free_list(ptr noundef nonnull %2) #25
  tail call void @BKE_mask_layer_free_shapes(ptr noundef %0) #25
  %3 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %3(ptr noundef %0) #24
  ret void
}

; Function Attrs: optsize
declare void @BLI_uniquename(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_mask_layer_copy(ptr noundef %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %3 = tail call ptr %2(i64 noundef 144, ptr noundef nonnull @.str.1) #24
  %4 = getelementptr inbounds %struct.MaskLayer, ptr %3, i64 0, i32 2
  %5 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 2
  %6 = tail call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef nonnull %5, i64 noundef 64) #24
  %7 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 7
  %8 = load float, ptr %7, align 8, !tbaa !54
  %9 = getelementptr inbounds %struct.MaskLayer, ptr %3, i64 0, i32 7
  store float %8, ptr %9, align 8, !tbaa !54
  %10 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 8
  %11 = load i8, ptr %10, align 4, !tbaa !51
  %12 = getelementptr inbounds %struct.MaskLayer, ptr %3, i64 0, i32 8
  store i8 %11, ptr %12, align 4, !tbaa !51
  %13 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 9
  %14 = load i8, ptr %13, align 1, !tbaa !57
  %15 = getelementptr inbounds %struct.MaskLayer, ptr %3, i64 0, i32 9
  store i8 %14, ptr %15, align 1, !tbaa !57
  %16 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 12
  %17 = load i8, ptr %16, align 2, !tbaa !55
  %18 = getelementptr inbounds %struct.MaskLayer, ptr %3, i64 0, i32 12
  store i8 %17, ptr %18, align 2, !tbaa !55
  %19 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 13
  %20 = load i8, ptr %19, align 1, !tbaa !58
  %21 = getelementptr inbounds %struct.MaskLayer, ptr %3, i64 0, i32 13
  store i8 %20, ptr %21, align 1, !tbaa !58
  %22 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !45
  %24 = icmp eq ptr %23, null
  br i1 %24, label %32, label %25

25:                                               ; preds = %1
  %26 = getelementptr inbounds %struct.MaskLayer, ptr %3, i64 0, i32 3
  br label %27

27:                                               ; preds = %25, %27
  %28 = phi ptr [ %23, %25 ], [ %30, %27 ]
  %29 = tail call ptr @BKE_mask_spline_copy(ptr noundef nonnull %28) #25
  tail call void @BLI_addtail(ptr noundef nonnull %26, ptr noundef %29) #24
  %30 = load ptr, ptr %28, align 8, !tbaa !45
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %27, !llvm.loop !59

32:                                               ; preds = %27, %1
  %33 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !61
  %35 = icmp eq ptr %34, null
  br i1 %35, label %58, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.MaskLayer, ptr %3, i64 0, i32 4
  br label %38

38:                                               ; preds = %36, %38
  %39 = phi ptr [ %34, %36 ], [ %56, %38 ]
  %40 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %41 = tail call ptr %40(i64 noundef 40, ptr noundef nonnull @.str.2) #24
  %42 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !45
  %43 = getelementptr inbounds %struct.MaskLayerShape, ptr %39, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !62
  %45 = tail call ptr %42(ptr noundef %44) #24
  %46 = getelementptr inbounds %struct.MaskLayerShape, ptr %41, i64 0, i32 2
  store ptr %45, ptr %46, align 8, !tbaa !62
  %47 = getelementptr inbounds %struct.MaskLayerShape, ptr %39, i64 0, i32 3
  %48 = load i32, ptr %47, align 8, !tbaa !64
  %49 = getelementptr inbounds %struct.MaskLayerShape, ptr %41, i64 0, i32 3
  store i32 %48, ptr %49, align 8, !tbaa !64
  %50 = getelementptr inbounds %struct.MaskLayerShape, ptr %39, i64 0, i32 5
  %51 = load i8, ptr %50, align 8, !tbaa !65
  %52 = getelementptr inbounds %struct.MaskLayerShape, ptr %41, i64 0, i32 5
  store i8 %51, ptr %52, align 8, !tbaa !65
  %53 = getelementptr inbounds %struct.MaskLayerShape, ptr %39, i64 0, i32 4
  %54 = load i32, ptr %53, align 4, !tbaa !66
  %55 = getelementptr inbounds %struct.MaskLayerShape, ptr %41, i64 0, i32 4
  store i32 %54, ptr %55, align 4, !tbaa !66
  tail call void @BLI_addtail(ptr noundef nonnull %37, ptr noundef %41) #24
  %56 = load ptr, ptr %39, align 8, !tbaa !67
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %38, !llvm.loop !68

58:                                               ; preds = %38, %32
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BKE_mask_spline_copy(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %3 = tail call ptr %2(i64 noundef 224, ptr noundef nonnull @.str.7) #24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %3, ptr noundef nonnull align 8 dereferenceable(224) %0, i64 216, i1 false), !tbaa.struct !69
  %4 = getelementptr inbounds %struct.MaskSpline, ptr %3, i64 0, i32 8
  store ptr null, ptr %4, align 8, !tbaa !43
  %5 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !44
  %7 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 5
  %8 = load i32, ptr %7, align 4, !tbaa !34
  %9 = tail call fastcc ptr @mask_spline_points_copy(ptr noundef %6, i32 noundef %8) #25
  %10 = getelementptr inbounds %struct.MaskSpline, ptr %3, i64 0, i32 6
  store ptr %9, ptr %10, align 8, !tbaa !44
  %11 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !43
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, ptr %7, align 4, !tbaa !34
  %16 = tail call fastcc ptr @mask_spline_points_copy(ptr noundef nonnull %12, i32 noundef %15) #25
  store ptr %16, ptr %4, align 8, !tbaa !43
  br label %17

17:                                               ; preds = %14, %1
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mask_layer_copy_list(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  %3 = load ptr, ptr %1, align 8, !tbaa !45
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2, %5
  %6 = phi ptr [ %8, %5 ], [ %3, %2 ]
  %7 = tail call ptr @BKE_mask_layer_copy(ptr noundef nonnull %6) #25
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef %7) #24
  %8 = load ptr, ptr %6, align 8, !tbaa !45
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %5, !llvm.loop !72

10:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BKE_mask_spline_add(ptr noundef %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %3 = tail call ptr %2(i64 noundef 224, ptr noundef nonnull @.str.3) #24
  %4 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 3
  tail call void @BLI_addtail(ptr noundef nonnull %4, ptr noundef %3) #24
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %6 = tail call ptr %5(i64 noundef 272, ptr noundef nonnull @.str.4) #24
  %7 = getelementptr inbounds %struct.MaskSpline, ptr %3, i64 0, i32 6
  store ptr %6, ptr %7, align 8, !tbaa !44
  %8 = getelementptr inbounds %struct.MaskSpline, ptr %3, i64 0, i32 5
  store i32 1, ptr %8, align 4, !tbaa !34
  %9 = getelementptr inbounds %struct.MaskSpline, ptr %3, i64 0, i32 4
  store i8 2, ptr %9, align 1, !tbaa !73
  %10 = getelementptr inbounds %struct.MaskSpline, ptr %3, i64 0, i32 7
  tail call void @BKE_mask_parent_init(ptr noundef nonnull %10) #25
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @BKE_mask_parent_init(ptr nocapture noundef writeonly %0) local_unnamed_addr #5 {
  store i32 17229, ptr %0, align 8, !tbaa !74
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BKE_mask_spline_remove(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 3
  %4 = tail call zeroext i8 @BLI_remlink_safe(ptr noundef nonnull %3, ptr noundef %1) #24
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @BKE_mask_spline_free(ptr noundef %1) #25
  br label %7

7:                                                ; preds = %2, %6
  %8 = phi i8 [ 1, %6 ], [ 0, %2 ]
  ret i8 %8
}

; Function Attrs: optsize
declare zeroext i8 @BLI_remlink_safe(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mask_spline_free(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 4, !tbaa !34
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %21

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 6
  %7 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 8
  br label %8

8:                                                ; preds = %5, %16
  %9 = phi i64 [ 0, %5 ], [ %17, %16 ]
  %10 = load ptr, ptr %6, align 8, !tbaa !44
  %11 = getelementptr inbounds %struct.MaskSplinePoint, ptr %10, i64 %9
  tail call void @BKE_mask_point_free(ptr noundef %11) #25
  %12 = load ptr, ptr %7, align 8, !tbaa !43
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.MaskSplinePoint, ptr %12, i64 %9
  tail call void @BKE_mask_point_free(ptr noundef nonnull %15) #25
  br label %16

16:                                               ; preds = %14, %8
  %17 = add nuw nsw i64 %9, 1
  %18 = load i32, ptr %2, align 4, !tbaa !34
  %19 = sext i32 %18 to i64
  %20 = icmp slt i64 %17, %19
  br i1 %20, label %8, label %21, !llvm.loop !75

21:                                               ; preds = %16, %1
  %22 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %23 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !44
  tail call void %22(ptr noundef %24) #24
  %25 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 8
  %26 = load ptr, ptr %25, align 8, !tbaa !43
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %21
  %29 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %29(ptr noundef nonnull %26) #24
  br label %30

30:                                               ; preds = %28, %21
  %31 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %31(ptr noundef nonnull %0) #24
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_mask_point_direction_switch(ptr nocapture noundef %0) local_unnamed_addr #6 {
  %2 = alloca [2 x float], align 4
  %3 = alloca %struct.MaskSplinePointUW, align 4
  %4 = getelementptr inbounds %struct.MaskSplinePoint, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !76
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #26
  call fastcc void @copy_v2_v2(ptr noundef nonnull %2, ptr noundef %0) #25
  %6 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 2
  tail call fastcc void @copy_v2_v2(ptr noundef %0, ptr noundef nonnull %6) #25
  call fastcc void @copy_v2_v2(ptr noundef nonnull %6, ptr noundef nonnull %2) #25
  %7 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 7
  %8 = load i8, ptr %7, align 1, !tbaa !79
  %9 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 9
  %10 = load i8, ptr %9, align 1, !tbaa !80
  store i8 %10, ptr %7, align 1, !tbaa !79
  store i8 %8, ptr %9, align 1, !tbaa !80
  %11 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 5
  %12 = load i8, ptr %11, align 1, !tbaa !81
  %13 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 6
  %14 = load i8, ptr %13, align 2, !tbaa !82
  store i8 %14, ptr %11, align 1, !tbaa !81
  store i8 %12, ptr %13, align 2, !tbaa !82
  %15 = icmp sgt i32 %5, 1
  br i1 %15, label %16, label %29

16:                                               ; preds = %1
  %17 = lshr i32 %5, 1
  %18 = getelementptr inbounds %struct.MaskSplinePoint, ptr %0, i64 0, i32 3
  %19 = zext nneg i32 %5 to i64
  %20 = zext nneg i32 %17 to i64
  br label %21

21:                                               ; preds = %16, %21
  %22 = phi i64 [ 0, %16 ], [ %25, %21 ]
  %23 = load ptr, ptr %18, align 8, !tbaa !83
  %24 = getelementptr inbounds %struct.MaskSplinePointUW, ptr %23, i64 %22
  %25 = add nuw nsw i64 %22, 1
  %26 = sub nsw i64 %19, %25
  %27 = getelementptr inbounds %struct.MaskSplinePointUW, ptr %23, i64 %26
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(12) %24, i64 12, i1 false), !tbaa.struct !84
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %24, ptr noundef nonnull align 4 dereferenceable(12) %27, i64 12, i1 false), !tbaa.struct !84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %27, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false), !tbaa.struct !84
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3)
  %28 = icmp eq i64 %25, %20
  br i1 %28, label %29, label %21, !llvm.loop !86

29:                                               ; preds = %21, %1
  %30 = icmp sgt i32 %5, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.MaskSplinePoint, ptr %0, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !83
  %34 = zext nneg i32 %5 to i64
  br label %35

35:                                               ; preds = %31, %35
  %36 = phi i64 [ 0, %31 ], [ %40, %35 ]
  %37 = getelementptr inbounds %struct.MaskSplinePointUW, ptr %33, i64 %36
  %38 = load float, ptr %37, align 4, !tbaa !87
  %39 = fsub float 1.000000e+00, %38
  store float %39, ptr %37, align 4, !tbaa !87
  %40 = add nuw nsw i64 %36, 1
  %41 = icmp eq i64 %40, %34
  br i1 %41, label %42, label %35, !llvm.loop !89

42:                                               ; preds = %35, %29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #26
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !90 {
  %3 = load float, ptr %1, align 4, !tbaa !85
  store float %3, ptr %0, align 4, !tbaa !85
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !85
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !85
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_mask_spline_direction_switch(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #6 {
  %3 = alloca %struct.MaskSplinePoint, align 8
  %4 = alloca [8 x float], align 4
  %5 = getelementptr inbounds %struct.MaskSpline, ptr %1, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !34
  %7 = sdiv i32 %6, 2
  %8 = icmp slt i32 %6, 2
  br i1 %8, label %73, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.MaskSpline, ptr %1, i64 0, i32 6
  %11 = zext nneg i32 %6 to i64
  %12 = zext nneg i32 %7 to i64
  br label %13

13:                                               ; preds = %9, %13
  %14 = phi i64 [ 0, %9 ], [ %17, %13 ]
  %15 = load ptr, ptr %10, align 8, !tbaa !44
  %16 = getelementptr inbounds %struct.MaskSplinePoint, ptr %15, i64 %14
  %17 = add nuw nsw i64 %14, 1
  %18 = sub nsw i64 %11, %17
  %19 = getelementptr inbounds %struct.MaskSplinePoint, ptr %15, i64 %18
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %3, ptr noundef nonnull align 8 dereferenceable(272) %16, i64 272, i1 false), !tbaa.struct !91
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %16, ptr noundef nonnull align 8 dereferenceable(272) %19, i64 272, i1 false), !tbaa.struct !91
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %19, ptr noundef nonnull align 8 dereferenceable(272) %3, i64 272, i1 false), !tbaa.struct !91
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %3)
  %20 = icmp eq i64 %17, %12
  br i1 %20, label %21, label %13, !llvm.loop !92

21:                                               ; preds = %13
  %22 = add nsw i32 %6, -1
  %23 = getelementptr inbounds %struct.MaskSpline, ptr %1, i64 0, i32 6
  %24 = tail call i32 @llvm.smax.i32(i32 %6, i32 1)
  %25 = zext nneg i32 %24 to i64
  %26 = load ptr, ptr %23, align 8, !tbaa !44
  br label %27

27:                                               ; preds = %21, %27
  %28 = phi ptr [ %26, %21 ], [ %32, %27 ]
  %29 = phi i64 [ 0, %21 ], [ %42, %27 ]
  %30 = phi i32 [ %22, %21 ], [ %43, %27 ]
  %31 = getelementptr inbounds %struct.MaskSplinePoint, ptr %28, i64 %29
  tail call void @BKE_mask_point_direction_switch(ptr noundef %31) #25
  %32 = load ptr, ptr %23, align 8, !tbaa !44
  %33 = getelementptr inbounds %struct.MaskSplinePoint, ptr %32, i64 %29, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !83
  %35 = sext i32 %30 to i64
  %36 = getelementptr inbounds %struct.MaskSplinePoint, ptr %32, i64 %35, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !83
  store ptr %37, ptr %33, align 8, !tbaa !83
  store ptr %34, ptr %36, align 8, !tbaa !83
  %38 = getelementptr inbounds %struct.MaskSplinePoint, ptr %32, i64 %29, i32 2
  %39 = load i32, ptr %38, align 4, !tbaa !76
  %40 = getelementptr inbounds %struct.MaskSplinePoint, ptr %32, i64 %35, i32 2
  %41 = load i32, ptr %40, align 4, !tbaa !76
  store i32 %41, ptr %38, align 4, !tbaa !76
  store i32 %39, ptr %40, align 4, !tbaa !76
  %42 = add nuw nsw i64 %29, 1
  %43 = trunc i64 %29 to i32
  %44 = icmp eq i64 %42, %25
  br i1 %44, label %45, label %27, !llvm.loop !93

45:                                               ; preds = %27
  %46 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 4
  %47 = load ptr, ptr %46, align 8, !tbaa !45
  %48 = icmp eq ptr %47, null
  br i1 %48, label %73, label %49

49:                                               ; preds = %45
  %50 = tail call i32 @BKE_mask_layer_shape_spline_to_index(ptr noundef nonnull %0, ptr noundef nonnull %1) #25
  %51 = add i32 %50, %6
  %52 = sext i32 %50 to i64
  %53 = tail call i32 @llvm.smax.i32(i32 %7, i32 1)
  %54 = zext nneg i32 %53 to i64
  br label %58

55:                                               ; preds = %63
  %56 = load ptr, ptr %59, align 8, !tbaa !45
  %57 = icmp eq ptr %56, null
  br i1 %57, label %73, label %58

58:                                               ; preds = %55, %49
  %59 = phi ptr [ %47, %49 ], [ %56, %55 ]
  %60 = getelementptr inbounds %struct.MaskLayerShape, ptr %59, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !62
  %62 = getelementptr %struct.MaskLayerShapeElem, ptr %61, i64 %52
  br label %63

63:                                               ; preds = %58, %63
  %64 = phi i64 [ 0, %58 ], [ %66, %63 ]
  %65 = getelementptr %struct.MaskLayerShapeElem, ptr %62, i64 %64
  %66 = add nuw nsw i64 %64, 1
  %67 = trunc i64 %64 to i32
  %68 = xor i32 %67, -1
  %69 = add i32 %51, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.MaskLayerShapeElem, ptr %61, i64 %70
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %4, ptr noundef nonnull align 4 dereferenceable(32) %65, i64 32, i1 false), !tbaa.struct !94
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %65, ptr noundef nonnull align 4 dereferenceable(32) %71, i64 32, i1 false), !tbaa.struct !94
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %71, ptr noundef nonnull align 4 dereferenceable(32) %4, i64 32, i1 false), !tbaa.struct !94
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4)
  %72 = icmp eq i64 %66, %54
  br i1 %72, label %55, label %63, !llvm.loop !95

73:                                               ; preds = %55, %45, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BKE_mask_layer_shape_spline_to_index(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #9 {
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
  br i1 %17, label %8, label %18, !llvm.loop !96

18:                                               ; preds = %8, %2
  %19 = phi i32 [ 0, %2 ], [ %13, %8 ]
  ret i32 %19
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @BKE_mask_spline_project_co(ptr nocapture noundef readonly %0, ptr noundef %1, float noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) local_unnamed_addr #1 {
  %6 = alloca [2 x float], align 4
  %7 = alloca [2 x float], align 4
  %8 = alloca [2 x float], align 4
  %9 = alloca [2 x float], align 4
  %10 = alloca [2 x float], align 4
  %11 = alloca [2 x float], align 4
  %12 = fcmp ogt float %2, 0.000000e+00
  %13 = fcmp olt float %2, 1.000000e+00
  %14 = or i1 %12, %13
  br i1 %14, label %15, label %71

15:                                               ; preds = %5, %63
  %16 = phi float [ %65, %63 ], [ -1.000000e+00, %5 ]
  %17 = phi float [ %67, %63 ], [ %2, %5 ]
  %18 = phi float [ %66, %63 ], [ %2, %5 ]
  %19 = phi float [ %64, %63 ], [ -1.000000e+00, %5 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #26
  %20 = fcmp ult float %18, 0.000000e+00
  br i1 %20, label %40, label %21

21:                                               ; preds = %15
  call void @BKE_mask_point_segment_co(ptr noundef %0, ptr noundef %1, float noundef %18, ptr noundef nonnull %8) #25
  call void @BKE_mask_point_normal(ptr noundef %0, ptr noundef %1, float noundef %18, ptr noundef nonnull %6) #25
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %10, ptr noundef %3, ptr noundef nonnull %8) #25
  switch i32 %4, label %40 [
    i32 0, label %28
    i32 -1, label %22
    i32 1, label %25
  ]

22:                                               ; preds = %21
  %23 = call fastcc float @dot_v2v2(ptr noundef nonnull %10, ptr noundef nonnull %6) #25
  %24 = fcmp ugt float %23, 0.000000e+00
  br i1 %24, label %40, label %28

25:                                               ; preds = %21
  %26 = call fastcc float @dot_v2v2(ptr noundef nonnull %10, ptr noundef nonnull %6) #25
  %27 = fcmp ult float %26, 0.000000e+00
  br i1 %27, label %40, label %28

28:                                               ; preds = %21, %25, %22
  %29 = call fastcc float @len_squared_v2(ptr noundef nonnull %10) #25
  %30 = fcmp ogt float %29, 0x3EB0C6F7C0000000
  br i1 %30, label %31, label %61

31:                                               ; preds = %28
  %32 = call float @angle_v2v2(ptr noundef nonnull %10, ptr noundef nonnull %6) #24
  %33 = fcmp ogt float %32, 0x3FF921FB60000000
  %34 = fsub float 0x400921FB60000000, %32
  %35 = select i1 %33, float %34, float %32
  %36 = fcmp olt float %16, 0.000000e+00
  %37 = fcmp olt float %35, %16
  %38 = select i1 %36, i1 true, i1 %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %22, %31, %21, %25, %39, %15
  %41 = phi float [ %18, %39 ], [ %19, %25 ], [ %19, %15 ], [ %19, %21 ], [ %19, %31 ], [ %19, %22 ]
  %42 = phi float [ %35, %39 ], [ %16, %25 ], [ %16, %15 ], [ %16, %21 ], [ %16, %31 ], [ %16, %22 ]
  %43 = fcmp ugt float %17, 1.000000e+00
  br i1 %43, label %63, label %44

44:                                               ; preds = %40
  call void @BKE_mask_point_segment_co(ptr noundef %0, ptr noundef %1, float noundef %17, ptr noundef nonnull %9) #25
  call void @BKE_mask_point_normal(ptr noundef %0, ptr noundef %1, float noundef %17, ptr noundef nonnull %7) #25
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %11, ptr noundef %3, ptr noundef nonnull %9) #25
  switch i32 %4, label %63 [
    i32 0, label %51
    i32 -1, label %45
    i32 1, label %48
  ]

45:                                               ; preds = %44
  %46 = call fastcc float @dot_v2v2(ptr noundef nonnull %11, ptr noundef nonnull %7) #25
  %47 = fcmp ugt float %46, 0.000000e+00
  br i1 %47, label %63, label %51

48:                                               ; preds = %44
  %49 = call fastcc float @dot_v2v2(ptr noundef nonnull %11, ptr noundef nonnull %7) #25
  %50 = fcmp ult float %49, 0.000000e+00
  br i1 %50, label %63, label %51

51:                                               ; preds = %44, %48, %45
  %52 = call fastcc float @len_squared_v2(ptr noundef nonnull %11) #25
  %53 = fcmp ogt float %52, 0x3EB0C6F7C0000000
  br i1 %53, label %54, label %61

54:                                               ; preds = %51
  %55 = call float @angle_v2v2(ptr noundef nonnull %11, ptr noundef nonnull %7) #24
  %56 = fcmp ogt float %55, 0x3FF921FB60000000
  %57 = fsub float 0x400921FB60000000, %55
  %58 = select i1 %56, float %57, float %55
  %59 = fcmp olt float %58, %42
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  br label %63

61:                                               ; preds = %28, %51
  %62 = phi float [ %17, %51 ], [ %18, %28 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #26
  br label %71

63:                                               ; preds = %40, %60, %54, %48, %44, %45
  %64 = phi float [ %17, %60 ], [ %41, %54 ], [ %41, %48 ], [ %41, %40 ], [ %41, %44 ], [ %41, %45 ]
  %65 = phi float [ %58, %60 ], [ %42, %54 ], [ %42, %48 ], [ %42, %40 ], [ %42, %44 ], [ %42, %45 ]
  %66 = fadd float %18, 0xBF50624DE0000000
  %67 = fadd float %17, 0x3F50624DE0000000
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #26
  %68 = fcmp ogt float %66, 0.000000e+00
  %69 = fcmp olt float %67, 1.000000e+00
  %70 = select i1 %68, i1 true, i1 %69
  br i1 %70, label %15, label %71

71:                                               ; preds = %63, %5, %61
  %72 = phi float [ %62, %61 ], [ -1.000000e+00, %5 ], [ %64, %63 ]
  ret float %72
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mask_point_segment_co(ptr nocapture noundef readonly %0, ptr noundef %1, float noundef %2, ptr noundef %3) local_unnamed_addr #1 {
  %5 = alloca [2 x float], align 4
  %6 = alloca [2 x float], align 4
  %7 = alloca [2 x float], align 4
  %8 = alloca [2 x float], align 4
  %9 = alloca [2 x float], align 4
  %10 = tail call ptr @BKE_mask_spline_point_array_from_point(ptr noundef %0, ptr noundef %1) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #26
  %11 = tail call ptr @BKE_mask_spline_point_next_bezt(ptr noundef %0, ptr noundef %10, ptr noundef %1) #25
  %12 = icmp eq ptr %11, null
  %13 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  br i1 %12, label %14, label %15

14:                                               ; preds = %4
  tail call fastcc void @copy_v2_v2(ptr noundef %3, ptr noundef nonnull %13) #25
  br label %18

15:                                               ; preds = %4
  %16 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 2
  call void @interp_v2_v2v2(ptr noundef nonnull %5, ptr noundef nonnull %13, ptr noundef nonnull %16, float noundef %2) #24
  call void @interp_v2_v2v2(ptr noundef nonnull %6, ptr noundef nonnull %16, ptr noundef nonnull %11, float noundef %2) #24
  %17 = getelementptr inbounds [3 x [3 x float]], ptr %11, i64 0, i64 1
  call void @interp_v2_v2v2(ptr noundef nonnull %7, ptr noundef nonnull %11, ptr noundef nonnull %17, float noundef %2) #24
  call void @interp_v2_v2v2(ptr noundef nonnull %8, ptr noundef nonnull %5, ptr noundef nonnull %6, float noundef %2) #24
  call void @interp_v2_v2v2(ptr noundef nonnull %9, ptr noundef nonnull %6, ptr noundef nonnull %7, float noundef %2) #24
  call void @interp_v2_v2v2(ptr noundef %3, ptr noundef nonnull %8, ptr noundef nonnull %9, float noundef %2) #24
  br label %18

18:                                               ; preds = %15, %14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mask_point_normal(ptr nocapture noundef readonly %0, ptr noundef %1, float noundef %2, ptr nocapture noundef %3) local_unnamed_addr #1 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca [2 x float], align 4
  %8 = alloca [2 x float], align 4
  %9 = alloca [2 x float], align 4
  %10 = alloca [2 x float], align 4
  %11 = alloca [2 x float], align 4
  %12 = alloca [2 x float], align 4
  %13 = alloca [2 x float], align 4
  %14 = alloca [2 x float], align 4
  %15 = alloca [2 x float], align 4
  %16 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #26
  call void @BKE_mask_get_handle_point_adjacent(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %6) #25
  %17 = fadd float %2, 0xBFA99999A0000000
  %18 = fcmp olt float %17, 0.000000e+00
  %19 = load ptr, ptr %5, align 8
  %20 = icmp eq ptr %19, null
  %21 = select i1 %18, i1 %20, i1 false
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #26
  %23 = fadd float %2, 0x3FA99999A0000000
  call void @BKE_mask_point_segment_co(ptr noundef %0, ptr noundef %1, float noundef %23, ptr noundef nonnull %7) #25
  %24 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef nonnull %24) #25
  call fastcc void @orthogonal_direction_get(ptr noundef nonnull %8, ptr noundef %3) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #26
  br label %42

25:                                               ; preds = %4
  %26 = fadd float %2, 0x3FA99999A0000000
  %27 = fcmp ogt float %26, 1.000000e+00
  %28 = load ptr, ptr %6, align 8
  %29 = icmp eq ptr %28, null
  %30 = select i1 %27, i1 %29, i1 false
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #26
  call void @BKE_mask_point_segment_co(ptr noundef %0, ptr noundef %1, float noundef %17, ptr noundef nonnull %9) #25
  %32 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %10, ptr noundef nonnull %32, ptr noundef nonnull %9) #25
  call fastcc void @orthogonal_direction_get(ptr noundef nonnull %10, ptr noundef %3) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #26
  br label %42

33:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #26
  br i1 %18, label %34, label %36

34:                                               ; preds = %33
  %35 = fadd float %17, 1.000000e+00
  call void @BKE_mask_point_segment_co(ptr noundef %0, ptr noundef %19, float noundef %35, ptr noundef nonnull %11) #25
  br label %37

36:                                               ; preds = %33
  call void @BKE_mask_point_segment_co(ptr noundef %0, ptr noundef %1, float noundef %17, ptr noundef nonnull %11) #25
  br label %37

37:                                               ; preds = %36, %34
  call void @BKE_mask_point_segment_co(ptr noundef %0, ptr noundef %1, float noundef %2, ptr noundef nonnull %13) #25
  br i1 %27, label %38, label %40

38:                                               ; preds = %37
  %39 = fadd float %26, -1.000000e+00
  call void @BKE_mask_point_segment_co(ptr noundef %0, ptr noundef %28, float noundef %39, ptr noundef nonnull %12) #25
  br label %41

40:                                               ; preds = %37
  call void @BKE_mask_point_segment_co(ptr noundef %0, ptr noundef %1, float noundef %26, ptr noundef nonnull %12) #25
  br label %41

41:                                               ; preds = %40, %38
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %14, ptr noundef nonnull %13, ptr noundef nonnull %11) #25
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %15, ptr noundef nonnull %12, ptr noundef nonnull %13) #25
  call fastcc void @normalize_v2(ptr noundef nonnull %14) #25
  call fastcc void @normalize_v2(ptr noundef nonnull %15) #25
  call fastcc void @add_v2_v2v2(ptr noundef nonnull %16, ptr noundef nonnull %14, ptr noundef nonnull %15) #25
  call fastcc void @orthogonal_direction_get(ptr noundef nonnull %16, ptr noundef %3) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #26
  br label %42

42:                                               ; preds = %31, %41, %22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #26
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #7 !PGOFuncName !97 {
  %4 = load float, ptr %1, align 4, !tbaa !85
  %5 = load float, ptr %2, align 4, !tbaa !85
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !85
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !85
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !85
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !85
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !98 {
  %3 = load float, ptr %0, align 4, !tbaa !85
  %4 = load float, ptr %1, align 4, !tbaa !85
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !85
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !85
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  ret float %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_squared_v2(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !99 {
  %2 = load float, ptr %0, align 4, !tbaa !85
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !85
  %5 = fmul float %4, %4
  %6 = tail call float @llvm.fmuladd.f32(float %2, float %2, float %5)
  ret float %6
}

; Function Attrs: optsize
declare float @angle_v2v2(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @BKE_mask_point_handles_mode_get(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 5
  %3 = load i8, ptr %2, align 1, !tbaa !100
  %4 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 6
  %5 = load i8, ptr %4, align 2, !tbaa !101
  %6 = icmp eq i8 %3, 3
  %7 = icmp eq i8 %5, 3
  %8 = and i1 %6, %7
  %9 = select i1 %8, i32 1, i32 2
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_mask_point_handle(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #7 {
  %4 = alloca [2 x float], align 4
  switch i32 %1, label %19 [
    i32 1, label %5
    i32 2, label %16
    i32 3, label %17
  ]

5:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #26
  %6 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 1
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %4, ptr noundef %0, ptr noundef nonnull %6) #25
  %7 = load float, ptr %6, align 4, !tbaa !85
  %8 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !85
  %10 = fadd float %7, %9
  store float %10, ptr %2, align 4, !tbaa !85
  %11 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 1, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !85
  %13 = load float, ptr %4, align 4, !tbaa !85
  %14 = fsub float %12, %13
  %15 = getelementptr inbounds float, ptr %2, i64 1
  store float %14, ptr %15, align 4, !tbaa !85
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #26
  br label %19

16:                                               ; preds = %3
  tail call fastcc void @copy_v2_v2(ptr noundef %2, ptr noundef %0) #25
  br label %19

17:                                               ; preds = %3
  %18 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 2
  tail call fastcc void @copy_v2_v2(ptr noundef %2, ptr noundef nonnull %18) #25
  br label %19

19:                                               ; preds = %3, %16, %17, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mask_point_set_handle(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5) local_unnamed_addr #1 {
  %7 = alloca [2 x float], align 4
  %8 = alloca [2 x float], align 4
  %9 = alloca [2 x float], align 4
  switch i32 %1, label %37 [
    i32 1, label %10
    i32 2, label %34
    i32 3, label %35
  ]

10:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #26
  %11 = icmp eq i8 %3, 0
  br i1 %11, label %25, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds [3 x float], ptr %5, i64 1
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %7, ptr noundef %2, ptr noundef nonnull %13) #25
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %8, ptr noundef %4, ptr noundef nonnull %13) #25
  call void @project_v2_v2v2(ptr noundef nonnull %9, ptr noundef nonnull %7, ptr noundef nonnull %8) #24
  %14 = call fastcc float @dot_v2v2(ptr noundef nonnull %8, ptr noundef nonnull %9) #25
  %15 = fcmp ogt float %14, 0.000000e+00
  br i1 %15, label %16, label %22

16:                                               ; preds = %12
  %17 = call fastcc float @len_v2(ptr noundef nonnull %9) #25
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %7, ptr noundef %5, ptr noundef nonnull %13) #25
  %18 = call fastcc float @len_v2(ptr noundef nonnull %7) #25
  %19 = fdiv float %17, %18
  call fastcc void @mul_v2_fl(ptr noundef nonnull %7, float noundef %19) #25
  %20 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 1
  call fastcc void @add_v2_v2v2(ptr noundef %0, ptr noundef nonnull %20, ptr noundef nonnull %7) #25
  %21 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 2
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %21, ptr noundef nonnull %20, ptr noundef nonnull %7) #25
  br label %33

22:                                               ; preds = %12
  %23 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 1
  call fastcc void @copy_v3_v3(ptr noundef %0, ptr noundef nonnull %23) #25
  %24 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %24, ptr noundef nonnull %23) #25
  br label %33

25:                                               ; preds = %10
  %26 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 1
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %7, ptr noundef %2, ptr noundef nonnull %26) #25
  %27 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !85
  %29 = fneg float %28
  store float %29, ptr %8, align 4, !tbaa !85
  %30 = load float, ptr %7, align 4, !tbaa !85
  %31 = getelementptr inbounds [2 x float], ptr %8, i64 0, i64 1
  store float %30, ptr %31, align 4, !tbaa !85
  call fastcc void @add_v2_v2v2(ptr noundef %0, ptr noundef nonnull %26, ptr noundef nonnull %8) #25
  %32 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 2
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %32, ptr noundef nonnull %26, ptr noundef nonnull %8) #25
  br label %33

33:                                               ; preds = %16, %22, %25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #26
  br label %37

34:                                               ; preds = %6
  tail call fastcc void @copy_v2_v2(ptr noundef %0, ptr noundef %2) #25
  br label %37

35:                                               ; preds = %6
  %36 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 2
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %36, ptr noundef %2) #25
  br label %37

37:                                               ; preds = %6, %34, %35, %33
  ret void
}

; Function Attrs: optsize
declare void @project_v2_v2v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_v2(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !102 {
  %2 = load float, ptr %0, align 4, !tbaa !85
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !85
  %5 = fmul float %4, %4
  %6 = tail call float @llvm.fmuladd.f32(float %2, float %2, float %5)
  %7 = tail call float @llvm.sqrt.f32(float %6)
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v2_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #7 !PGOFuncName !103 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !85
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !85
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #7 !PGOFuncName !104 {
  %4 = load float, ptr %1, align 4, !tbaa !85
  %5 = load float, ptr %2, align 4, !tbaa !85
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !85
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !85
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !85
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !85
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !105 {
  %3 = load float, ptr %1, align 4, !tbaa !85
  store float %3, ptr %0, align 4, !tbaa !85
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !85
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !85
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !85
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !85
  ret void
}

; Function Attrs: optsize
declare void @interp_v2_v2v2(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_mask_get_handle_point_adjacent(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #10 {
  %5 = tail call ptr @BKE_mask_spline_point_array_from_point(ptr noundef %0, ptr noundef %1) #25
  %6 = tail call fastcc ptr @mask_spline_point_prev(ptr noundef %0, ptr noundef %5, ptr noundef %1) #25
  store ptr %6, ptr %2, align 8, !tbaa !45
  %7 = tail call fastcc ptr @mask_spline_point_next(ptr noundef %0, ptr noundef %5, ptr noundef %1) #25
  store ptr %7, ptr %3, align 8, !tbaa !45
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @orthogonal_direction_get(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #11 !PGOFuncName !106 {
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !85
  %5 = fneg float %4
  store float %5, ptr %1, align 4, !tbaa !85
  %6 = load float, ptr %0, align 4, !tbaa !85
  %7 = getelementptr inbounds float, ptr %1, i64 1
  store float %6, ptr %7, align 4, !tbaa !85
  tail call fastcc void @normalize_v2(ptr noundef nonnull %1) #25
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v2(ptr nocapture noundef %0) unnamed_addr #11 !PGOFuncName !107 {
  tail call fastcc void @normalize_v2_v2(ptr noundef %0, ptr noundef %0) #25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @BKE_mask_point_weight_scalar(ptr nocapture noundef readonly %0, ptr noundef readonly %1, float noundef %2) local_unnamed_addr #12 {
  %4 = tail call ptr @BKE_mask_spline_point_array_from_point(ptr noundef %0, ptr noundef %1) #25
  %5 = tail call ptr @BKE_mask_spline_point_next_bezt(ptr noundef %0, ptr noundef %4, ptr noundef %1) #25
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 2
  %9 = load float, ptr %8, align 4, !tbaa !108
  br label %22

10:                                               ; preds = %3
  %11 = fcmp ugt float %2, 0.000000e+00
  br i1 %11, label %15, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 2
  %14 = load float, ptr %13, align 4, !tbaa !108
  br label %22

15:                                               ; preds = %10
  %16 = fcmp ult float %2, 1.000000e+00
  br i1 %16, label %20, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.BezTriple, ptr %5, i64 0, i32 2
  %19 = load float, ptr %18, align 4, !tbaa !108
  br label %22

20:                                               ; preds = %15
  %21 = tail call fastcc float @mask_point_interp_weight(ptr noundef %1, ptr noundef nonnull %5, float noundef %2) #25
  br label %22

22:                                               ; preds = %20, %17, %12, %7
  %23 = phi float [ %14, %12 ], [ %19, %17 ], [ %21, %20 ], [ %9, %7 ]
  ret float %23
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @mask_point_interp_weight(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #0 !PGOFuncName !109 {
  %4 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 2
  %5 = load float, ptr %4, align 4, !tbaa !108
  %6 = fsub float 1.000000e+00, %2
  %7 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 2
  %8 = load float, ptr %7, align 4, !tbaa !108
  %9 = fmul float %8, %2
  %10 = tail call float @llvm.fmuladd.f32(float %5, float %6, float %9)
  ret float %10
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local float @BKE_mask_point_weight(ptr nocapture noundef readonly %0, ptr noundef readonly %1, float noundef %2) local_unnamed_addr #9 {
  %4 = tail call ptr @BKE_mask_spline_point_array_from_point(ptr noundef %0, ptr noundef %1) #25
  %5 = tail call ptr @BKE_mask_spline_point_next_bezt(ptr noundef %0, ptr noundef %4, ptr noundef %1) #25
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 2
  %9 = load float, ptr %8, align 4, !tbaa !108
  br label %85

10:                                               ; preds = %3
  %11 = fcmp ugt float %2, 0.000000e+00
  br i1 %11, label %15, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 2
  %14 = load float, ptr %13, align 4, !tbaa !108
  br label %85

15:                                               ; preds = %10
  %16 = fcmp ult float %2, 1.000000e+00
  br i1 %16, label %17, label %26

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.MaskSplinePoint, ptr %1, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !76
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %58, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.MaskSplinePoint, ptr %1, i64 0, i32 3
  %23 = zext nneg i32 %19 to i64
  %24 = add nuw i32 %19, 1
  %25 = zext i32 %24 to i64
  br label %29

26:                                               ; preds = %15
  %27 = getelementptr inbounds %struct.BezTriple, ptr %5, i64 0, i32 2
  %28 = load float, ptr %27, align 4, !tbaa !108
  br label %85

29:                                               ; preds = %49, %21
  %30 = phi i64 [ 0, %21 ], [ %55, %49 ]
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %29
  %33 = load ptr, ptr %22, align 8, !tbaa !83
  %34 = getelementptr %struct.MaskSplinePointUW, ptr %33, i64 %30
  %35 = getelementptr %struct.MaskSplinePointUW, ptr %34, i64 -1
  %36 = load float, ptr %35, align 4, !tbaa !87
  %37 = getelementptr %struct.MaskSplinePointUW, ptr %34, i64 -1, i32 1
  %38 = load float, ptr %37, align 4, !tbaa !110
  br label %39

39:                                               ; preds = %29, %32
  %40 = phi float [ %36, %32 ], [ 0.000000e+00, %29 ]
  %41 = phi float [ %38, %32 ], [ 1.000000e+00, %29 ]
  %42 = icmp eq i64 %30, %23
  br i1 %42, label %49, label %43

43:                                               ; preds = %39
  %44 = load ptr, ptr %22, align 8, !tbaa !83
  %45 = getelementptr inbounds %struct.MaskSplinePointUW, ptr %44, i64 %30
  %46 = load float, ptr %45, align 4, !tbaa !87
  %47 = getelementptr inbounds %struct.MaskSplinePointUW, ptr %44, i64 %30, i32 1
  %48 = load float, ptr %47, align 4, !tbaa !110
  br label %49

49:                                               ; preds = %39, %43
  %50 = phi float [ %46, %43 ], [ 1.000000e+00, %39 ]
  %51 = phi float [ %48, %43 ], [ 1.000000e+00, %39 ]
  %52 = fcmp ole float %40, %2
  %53 = fcmp oge float %50, %2
  %54 = select i1 %52, i1 %53, i1 false
  %55 = add nuw nsw i64 %30, 1
  %56 = icmp eq i64 %55, %25
  %57 = select i1 %54, i1 true, i1 %56
  br i1 %57, label %58, label %29, !llvm.loop !111

58:                                               ; preds = %49, %17
  %59 = phi float [ 0.000000e+00, %17 ], [ %40, %49 ]
  %60 = phi float [ 0.000000e+00, %17 ], [ %41, %49 ]
  %61 = phi float [ 0.000000e+00, %17 ], [ %50, %49 ]
  %62 = phi float [ 0.000000e+00, %17 ], [ %51, %49 ]
  %63 = fsub float %2, %59
  %64 = fsub float %61, %59
  %65 = fdiv float %63, %64
  %66 = tail call fastcc float @mask_point_interp_weight(ptr noundef nonnull %1, ptr noundef nonnull %5, float noundef %59) #25
  %67 = fmul float %60, %66
  %68 = tail call fastcc float @mask_point_interp_weight(ptr noundef nonnull %1, ptr noundef nonnull %5, float noundef %61) #25
  %69 = fmul float %62, %68
  %70 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 4
  %71 = load i8, ptr %70, align 1, !tbaa !73
  %72 = icmp eq i8 %71, 2
  br i1 %72, label %73, label %81

73:                                               ; preds = %58
  %74 = fsub float %69, %67
  %75 = fmul float %65, 3.000000e+00
  %76 = fmul float %65, -2.000000e+00
  %77 = fmul float %65, %76
  %78 = fmul float %65, %77
  %79 = tail call float @llvm.fmuladd.f32(float %75, float %65, float %78)
  %80 = tail call float @llvm.fmuladd.f32(float %74, float %79, float %67)
  br label %85

81:                                               ; preds = %58
  %82 = fsub float 1.000000e+00, %65
  %83 = fmul float %65, %69
  %84 = tail call float @llvm.fmuladd.f32(float %82, float %67, float %83)
  br label %85

85:                                               ; preds = %73, %81, %26, %12, %7
  %86 = phi float [ %14, %12 ], [ %28, %26 ], [ %9, %7 ], [ %80, %73 ], [ %84, %81 ]
  ret float %86
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #13

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_mask_point_sort_uw(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #6 {
  %3 = alloca %struct.MaskSplinePointUW, align 4
  %4 = alloca %struct.MaskSplinePointUW, align 4
  %5 = getelementptr inbounds %struct.MaskSplinePoint, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !76
  %7 = icmp sgt i32 %6, 1
  br i1 %7, label %8, label %87

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.MaskSplinePoint, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !83
  %11 = ptrtoint ptr %1 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 12
  %15 = trunc i64 %14 to i32
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %47

17:                                               ; preds = %8
  %18 = add nsw i64 %14, 4294967295
  %19 = and i64 %18, 4294967295
  %20 = getelementptr inbounds %struct.MaskSplinePointUW, ptr %10, i64 %19
  %21 = load float, ptr %20, align 4, !tbaa !87
  %22 = load float, ptr %1, align 4, !tbaa !87
  %23 = fcmp ogt float %21, %22
  br i1 %23, label %24, label %47

24:                                               ; preds = %17
  %25 = and i64 %14, 4294967295
  br label %26

26:                                               ; preds = %24, %35
  %27 = phi i64 [ %25, %24 ], [ %29, %35 ]
  %28 = load ptr, ptr %9, align 8, !tbaa !83
  %29 = add nsw i64 %27, -1
  %30 = getelementptr inbounds %struct.MaskSplinePointUW, ptr %28, i64 %29
  %31 = load float, ptr %30, align 4, !tbaa !87
  %32 = getelementptr inbounds %struct.MaskSplinePointUW, ptr %28, i64 %27
  %33 = load float, ptr %32, align 4, !tbaa !87
  %34 = fcmp ogt float %31, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(12) %30, i64 12, i1 false), !tbaa.struct !84
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %30, ptr noundef nonnull align 4 dereferenceable(12) %32, i64 12, i1 false), !tbaa.struct !84
  %36 = load ptr, ptr %9, align 8, !tbaa !83
  %37 = getelementptr inbounds %struct.MaskSplinePointUW, ptr %36, i64 %27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %37, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false), !tbaa.struct !84
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3)
  %38 = icmp ugt i64 %27, 1
  br i1 %38, label %26, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr %9, align 8, !tbaa !83
  br label %43

41:                                               ; preds = %26
  %42 = trunc i64 %27 to i32
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi ptr [ %40, %39 ], [ %28, %41 ]
  %45 = phi i32 [ 0, %39 ], [ %42, %41 ]
  %46 = load i32, ptr %5, align 4, !tbaa !76
  br label %47

47:                                               ; preds = %43, %17, %8
  %48 = phi ptr [ %10, %17 ], [ %10, %8 ], [ %44, %43 ]
  %49 = phi i32 [ %6, %17 ], [ %6, %8 ], [ %46, %43 ]
  %50 = phi i32 [ %15, %17 ], [ %15, %8 ], [ %45, %43 ]
  %51 = add nsw i32 %49, -1
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %82

53:                                               ; preds = %47
  %54 = sext i32 %50 to i64
  %55 = getelementptr %struct.MaskSplinePointUW, ptr %48, i64 %54
  %56 = getelementptr %struct.MaskSplinePointUW, ptr %55, i64 1
  %57 = load float, ptr %56, align 4, !tbaa !87
  %58 = load float, ptr %1, align 4, !tbaa !87
  %59 = fcmp olt float %57, %58
  br i1 %59, label %60, label %82

60:                                               ; preds = %53, %69
  %61 = phi i64 [ %63, %69 ], [ %54, %53 ]
  %62 = load ptr, ptr %9, align 8, !tbaa !83
  %63 = add nsw i64 %61, 1
  %64 = getelementptr inbounds %struct.MaskSplinePointUW, ptr %62, i64 %63
  %65 = load float, ptr %64, align 4, !tbaa !87
  %66 = getelementptr inbounds %struct.MaskSplinePointUW, ptr %62, i64 %61
  %67 = load float, ptr %66, align 4, !tbaa !87
  %68 = fcmp olt float %65, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) %64, i64 12, i1 false), !tbaa.struct !84
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %64, ptr noundef nonnull align 4 dereferenceable(12) %66, i64 12, i1 false), !tbaa.struct !84
  %70 = load ptr, ptr %9, align 8, !tbaa !83
  %71 = getelementptr inbounds %struct.MaskSplinePointUW, ptr %70, i64 %61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %71, ptr noundef nonnull align 4 dereferenceable(12) %4, i64 12, i1 false), !tbaa.struct !84
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4)
  %72 = load i32, ptr %5, align 4, !tbaa !76
  %73 = add nsw i32 %72, -1
  %74 = sext i32 %73 to i64
  %75 = icmp slt i64 %63, %74
  br i1 %75, label %60, label %76, !llvm.loop !112

76:                                               ; preds = %69
  %77 = load ptr, ptr %9, align 8, !tbaa !83
  br label %78

78:                                               ; preds = %60, %76
  %79 = phi ptr [ %77, %76 ], [ %62, %60 ]
  %80 = phi i64 [ %63, %76 ], [ %61, %60 ]
  %81 = trunc i64 %80 to i32
  br label %82

82:                                               ; preds = %78, %53, %47
  %83 = phi ptr [ %48, %53 ], [ %48, %47 ], [ %79, %78 ]
  %84 = phi i32 [ %50, %53 ], [ %50, %47 ], [ %81, %78 ]
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.MaskSplinePointUW, ptr %83, i64 %85
  br label %87

87:                                               ; preds = %2, %82
  %88 = phi ptr [ %86, %82 ], [ %1, %2 ]
  ret ptr %88
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mask_point_add_uw(ptr nocapture noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.MaskSplinePoint, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !83
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %9 = tail call ptr %8(i64 noundef 12, ptr noundef nonnull @.str.5) #24
  br label %18

10:                                               ; preds = %3
  %11 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !45
  %12 = getelementptr inbounds %struct.MaskSplinePoint, ptr %0, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !76
  %14 = add nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = mul nsw i64 %15, 12
  %17 = tail call ptr %11(ptr noundef nonnull %5, i64 noundef %16, ptr noundef nonnull @__func__.BKE_mask_point_add_uw) #24
  br label %18

18:                                               ; preds = %10, %7
  %19 = phi ptr [ %9, %7 ], [ %17, %10 ]
  store ptr %19, ptr %4, align 8, !tbaa !83
  %20 = getelementptr inbounds %struct.MaskSplinePoint, ptr %0, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !76
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.MaskSplinePointUW, ptr %19, i64 %22
  store float %1, ptr %23, align 4, !tbaa !87
  %24 = getelementptr inbounds %struct.MaskSplinePointUW, ptr %19, i64 %22, i32 1
  store float %2, ptr %24, align 4, !tbaa !110
  %25 = getelementptr inbounds %struct.MaskSplinePointUW, ptr %19, i64 %22, i32 2
  store i32 0, ptr %25, align 4, !tbaa !113
  %26 = add nsw i32 %21, 1
  store i32 %26, ptr %20, align 4, !tbaa !76
  %27 = tail call ptr @BKE_mask_point_sort_uw(ptr noundef nonnull %0, ptr noundef nonnull %23) #25
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_mask_point_select_set(ptr nocapture noundef %0, i8 noundef zeroext %1) local_unnamed_addr #6 {
  %3 = icmp ne i8 %1, 0
  %4 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 7
  %5 = load i8, ptr %4, align 1, !tbaa !79
  %6 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 8
  %7 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 9
  br i1 %3, label %8, label %14

8:                                                ; preds = %2
  %9 = or i8 %5, 1
  store i8 %9, ptr %4, align 1, !tbaa !79
  %10 = load i8, ptr %6, align 4, !tbaa !114
  %11 = or i8 %10, 1
  store i8 %11, ptr %6, align 4, !tbaa !114
  %12 = load i8, ptr %7, align 1, !tbaa !80
  %13 = or i8 %12, 1
  br label %20

14:                                               ; preds = %2
  %15 = and i8 %5, -2
  store i8 %15, ptr %4, align 1, !tbaa !79
  %16 = load i8, ptr %6, align 4, !tbaa !114
  %17 = and i8 %16, -2
  store i8 %17, ptr %6, align 4, !tbaa !114
  %18 = load i8, ptr %7, align 1, !tbaa !80
  %19 = and i8 %18, -2
  br label %20

20:                                               ; preds = %14, %8
  %21 = phi i8 [ %19, %14 ], [ %13, %8 ]
  store i8 %21, ptr %7, align 1, !tbaa !80
  %22 = getelementptr inbounds %struct.MaskSplinePoint, ptr %0, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !76
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.MaskSplinePoint, ptr %0, i64 0, i32 3
  %27 = zext nneg i32 %23 to i64
  %28 = load ptr, ptr %26, align 8, !tbaa !83
  %29 = zext i1 %3 to i32
  br label %30

30:                                               ; preds = %25, %30
  %31 = phi i64 [ 0, %25 ], [ %36, %30 ]
  %32 = getelementptr inbounds %struct.MaskSplinePointUW, ptr %28, i64 %31, i32 2
  %33 = load i32, ptr %32, align 4, !tbaa !113
  %34 = and i32 %33, -2
  %35 = or disjoint i32 %34, %29
  store i32 %35, ptr %32, align 4, !tbaa !113
  %36 = add nuw nsw i64 %31, 1
  %37 = icmp eq i64 %36, %27
  br i1 %37, label %38, label %30, !llvm.loop !115

38:                                               ; preds = %30, %20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_mask_point_select_set_handle(ptr nocapture noundef %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #7 {
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
  %8 = load i8, ptr %7, align 1, !tbaa !79
  %9 = or i8 %8, 1
  store i8 %9, ptr %7, align 1, !tbaa !79
  %10 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 9
  %11 = load i8, ptr %10, align 1, !tbaa !80
  %12 = or i8 %11, 1
  store i8 %12, ptr %10, align 1, !tbaa !80
  br label %37

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 7
  %15 = load i8, ptr %14, align 1, !tbaa !79
  %16 = or i8 %15, 1
  store i8 %16, ptr %14, align 1, !tbaa !79
  br label %37

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 9
  %19 = load i8, ptr %18, align 1, !tbaa !80
  %20 = or i8 %19, 1
  store i8 %20, ptr %18, align 1, !tbaa !80
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
  %24 = load i8, ptr %23, align 1, !tbaa !79
  %25 = and i8 %24, -2
  store i8 %25, ptr %23, align 1, !tbaa !79
  %26 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 9
  %27 = load i8, ptr %26, align 1, !tbaa !80
  %28 = and i8 %27, -2
  store i8 %28, ptr %26, align 1, !tbaa !80
  br label %37

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 7
  %31 = load i8, ptr %30, align 1, !tbaa !79
  %32 = and i8 %31, -2
  store i8 %32, ptr %30, align 1, !tbaa !79
  br label %37

33:                                               ; preds = %21
  %34 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 9
  %35 = load i8, ptr %34, align 1, !tbaa !80
  %36 = and i8 %35, -2
  store i8 %36, ptr %34, align 1, !tbaa !80
  br label %37

37:                                               ; preds = %21, %5, %22, %33, %29, %6, %17, %13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_mask_new(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #26
  %4 = icmp eq ptr %1, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = load i8, ptr %1, align 1, !tbaa !46
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = call ptr @BLI_strncpy(ptr noundef nonnull %3, ptr noundef nonnull %1, i64 noundef 64) #24
  br label %11

10:                                               ; preds = %5, %2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(5) %3, ptr noundef nonnull align 1 dereferenceable(5) @.str.6, i64 5, i1 false) #24
  br label %11

11:                                               ; preds = %10, %8
  %12 = call fastcc ptr @mask_alloc(ptr noundef %0, ptr noundef nonnull %3) #25
  %13 = getelementptr inbounds %struct.Mask, ptr %12, i64 0, i32 5
  store i32 1, ptr %13, align 8, !tbaa !116
  %14 = getelementptr inbounds %struct.Mask, ptr %12, i64 0, i32 6
  store i32 100, ptr %14, align 4, !tbaa !117
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #26
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @mask_alloc(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !PGOFuncName !118 {
  %3 = tail call ptr @BKE_libblock_alloc(ptr noundef %0, i16 noundef signext 21325, ptr noundef %1) #24
  %4 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 5
  %5 = load i16, ptr %4, align 2, !tbaa !119
  %6 = or i16 %5, 512
  store i16 %6, ptr %4, align 2, !tbaa !119
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_mask_copy_nolib(ptr noundef %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !45
  %3 = tail call ptr %2(ptr noundef %0) #24
  %4 = getelementptr inbounds %struct.Mask, ptr %3, i64 0, i32 1
  store ptr null, ptr %4, align 8, !tbaa !120
  %5 = getelementptr inbounds %struct.Mask, ptr %3, i64 0, i32 2
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %5) #25
  %6 = getelementptr inbounds %struct.Mask, ptr %0, i64 0, i32 2
  tail call void @BKE_mask_layer_copy_list(ptr noundef nonnull %5, ptr noundef nonnull %6) #25
  %7 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 5
  %8 = load i16, ptr %7, align 2, !tbaa !119
  %9 = and i16 %8, 512
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = or disjoint i16 %8, 512
  store i16 %12, ptr %7, align 2, !tbaa !119
  %13 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 6
  %14 = load i32, ptr %13, align 4, !tbaa !121
  %15 = add nsw i32 %14, 1
  store i32 %15, ptr %13, align 4, !tbaa !121
  br label %16

16:                                               ; preds = %11, %1
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @BLI_listbase_clear(ptr nocapture noundef writeonly %0) unnamed_addr #5 !PGOFuncName !122 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_mask_copy(ptr noundef %0) local_unnamed_addr #1 {
  %2 = tail call ptr @BKE_libblock_copy(ptr noundef %0) #24
  %3 = getelementptr inbounds %struct.Mask, ptr %2, i64 0, i32 2
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %3) #25
  %4 = getelementptr inbounds %struct.Mask, ptr %0, i64 0, i32 2
  tail call void @BKE_mask_layer_copy_list(ptr noundef nonnull %3, ptr noundef nonnull %4) #25
  %5 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 5
  %6 = load i16, ptr %5, align 2, !tbaa !119
  %7 = and i16 %6, 512
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = or disjoint i16 %6, 512
  store i16 %10, ptr %5, align 2, !tbaa !119
  %11 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 6
  %12 = load i32, ptr %11, align 4, !tbaa !121
  %13 = add nsw i32 %12, 1
  store i32 %13, ptr %11, align 4, !tbaa !121
  br label %14

14:                                               ; preds = %9, %1
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @BKE_libblock_copy(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mask_point_free(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.MaskSplinePoint, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !83
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %6(ptr noundef nonnull %3) #24
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mask_spline_free_list(ptr noundef %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 8, !tbaa !123
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %6, %4 ], [ %2, %1 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !124
  tail call void @BLI_remlink(ptr noundef nonnull %0, ptr noundef nonnull %5) #24
  tail call void @BKE_mask_spline_free(ptr noundef nonnull %5) #25
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %4, !llvm.loop !125

8:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @mask_spline_points_copy(ptr noundef %0, i32 noundef %1) unnamed_addr #1 !PGOFuncName !126 {
  %3 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !45
  %4 = tail call ptr %3(ptr noundef %0) #24
  %5 = icmp sgt i32 %1, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %2
  %7 = zext nneg i32 %1 to i64
  br label %8

8:                                                ; preds = %6, %16
  %9 = phi i64 [ 0, %6 ], [ %17, %16 ]
  %10 = getelementptr inbounds %struct.MaskSplinePoint, ptr %4, i64 %9, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !83
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  %14 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !45
  %15 = tail call ptr %14(ptr noundef nonnull %11) #24
  store ptr %15, ptr %10, align 8, !tbaa !83
  br label %16

16:                                               ; preds = %13, %8
  %17 = add nuw nsw i64 %9, 1
  %18 = icmp eq i64 %17, %7
  br i1 %18, label %19, label %8, !llvm.loop !127

19:                                               ; preds = %16, %2
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_mask_layer_shape_alloc(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = tail call i32 @BKE_mask_layer_shape_totvert(ptr noundef %0) #25
  %4 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %5 = tail call ptr %4(i64 noundef 40, ptr noundef nonnull @__func__.BKE_mask_layer_shape_alloc) #24
  %6 = getelementptr inbounds %struct.MaskLayerShape, ptr %5, i64 0, i32 4
  store i32 %1, ptr %6, align 4, !tbaa !66
  %7 = getelementptr inbounds %struct.MaskLayerShape, ptr %5, i64 0, i32 3
  store i32 %3, ptr %7, align 8, !tbaa !64
  %8 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %9 = sext i32 %3 to i64
  %10 = shl nsw i64 %9, 5
  %11 = tail call ptr %8(i64 noundef %10, ptr noundef nonnull @__func__.BKE_mask_layer_shape_alloc) #24
  %12 = getelementptr inbounds %struct.MaskLayerShape, ptr %5, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !62
  ret ptr %5
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BKE_mask_layer_shape_totvert(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
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
  br i1 %12, label %13, label %5, !llvm.loop !128

13:                                               ; preds = %5, %1
  %14 = phi i32 [ 0, %1 ], [ %10, %5 ]
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mask_layer_shape_free(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.MaskLayerShape, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !62
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %6(ptr noundef nonnull %3) #24
  br label %7

7:                                                ; preds = %5, %1
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %8(ptr noundef nonnull %0) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mask_layer_free_shapes(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %7, %5 ], [ %3, %1 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !67
  tail call void @BLI_remlink(ptr noundef nonnull %2, ptr noundef nonnull %6) #24
  tail call void @BKE_mask_layer_shape_free(ptr noundef nonnull %6) #25
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %5, !llvm.loop !129

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mask_layer_free_list(ptr noundef %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 8, !tbaa !123
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %6, %4 ], [ %2, %1 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !130
  tail call void @BLI_remlink(ptr noundef nonnull %0, ptr noundef nonnull %5) #24
  tail call void @BKE_mask_layer_free(ptr noundef nonnull %5) #25
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %4, !llvm.loop !131

8:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mask_free_nolib(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.Mask, ptr %0, i64 0, i32 2
  tail call void @BKE_mask_layer_free_list(ptr noundef nonnull %2) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
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
  br i1 %12, label %43, label %13, !llvm.loop !132

13:                                               ; preds = %2, %10
  %14 = phi ptr [ %11, %10 ], [ %8, %2 ]
  %15 = getelementptr inbounds %struct.bScreen, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !45
  %17 = icmp eq ptr %16, null
  br i1 %17, label %10, label %21

18:                                               ; preds = %40, %21
  %19 = load ptr, ptr %22, align 8, !tbaa !45
  %20 = icmp eq ptr %19, null
  br i1 %20, label %10, label %21, !llvm.loop !133

21:                                               ; preds = %13, %18
  %22 = phi ptr [ %19, %18 ], [ %16, %13 ]
  %23 = getelementptr inbounds %struct.ScrArea, ptr %22, i64 0, i32 19
  %24 = load ptr, ptr %23, align 8, !tbaa !45
  %25 = icmp eq ptr %24, null
  br i1 %25, label %18, label %26

26:                                               ; preds = %21, %40
  %27 = phi ptr [ %41, %40 ], [ %24, %21 ]
  %28 = getelementptr inbounds %struct.SpaceLink, ptr %27, i64 0, i32 3
  %29 = load i32, ptr %28, align 8, !tbaa !134
  switch i32 %29, label %40 [
    i32 20, label %30
    i32 6, label %34
  ]

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.SpaceClip, ptr %27, i64 0, i32 28
  %32 = load ptr, ptr %31, align 8, !tbaa !136
  %33 = icmp eq ptr %32, %1
  br i1 %33, label %38, label %40

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.SpaceImage, ptr %27, i64 0, i32 26
  %36 = load ptr, ptr %35, align 8, !tbaa !142
  %37 = icmp eq ptr %36, %1
  br i1 %37, label %38, label %40

38:                                               ; preds = %34, %30
  %39 = phi ptr [ %31, %30 ], [ %35, %34 ]
  store ptr null, ptr %39, align 8, !tbaa !45
  br label %40

40:                                               ; preds = %38, %34, %30, %26
  %41 = load ptr, ptr %27, align 8, !tbaa !45
  %42 = icmp eq ptr %41, null
  br i1 %42, label %18, label %26, !llvm.loop !147

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
  %53 = load ptr, ptr %52, align 8, !tbaa !148
  %54 = icmp eq ptr %53, null
  br i1 %54, label %68, label %55

55:                                               ; preds = %50
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #26
  call void @BKE_sequence_iterator_begin(ptr noundef nonnull %53, ptr noundef nonnull %3, i8 noundef zeroext 0) #24
  %56 = load i32, ptr %48, align 8, !tbaa !168
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %67, label %58

58:                                               ; preds = %55, %64
  %59 = load ptr, ptr %49, align 8, !tbaa !170
  %60 = getelementptr inbounds %struct.Sequence, ptr %59, i64 0, i32 29
  %61 = load ptr, ptr %60, align 8, !tbaa !171
  %62 = icmp eq ptr %61, %1
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  store ptr null, ptr %60, align 8, !tbaa !171
  br label %64

64:                                               ; preds = %58, %63
  call void @BKE_sequence_iterator_next(ptr noundef nonnull %3) #24
  %65 = load i32, ptr %48, align 8, !tbaa !168
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %58, !llvm.loop !173

67:                                               ; preds = %64, %55
  call void @BKE_sequence_iterator_end(ptr noundef nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #26
  br label %68

68:                                               ; preds = %50, %67
  %69 = load ptr, ptr %51, align 8, !tbaa !45
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %50, !llvm.loop !174

71:                                               ; preds = %68, %43
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #26
  call void @BKE_node_tree_iter_init(ptr noundef nonnull %4, ptr noundef %0) #24
  %72 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #24
  %73 = icmp eq i8 %72, 1
  br i1 %73, label %74, label %81

74:                                               ; preds = %71, %78
  %75 = load ptr, ptr %5, align 8, !tbaa !45
  %76 = icmp eq ptr %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %74
  call void @BKE_node_tree_unlink_id(ptr noundef %1, ptr noundef nonnull %75) #24
  br label %78

78:                                               ; preds = %77, %74
  %79 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #24
  %80 = icmp eq i8 %79, 1
  br i1 %80, label %74, label %81, !llvm.loop !175

81:                                               ; preds = %78, %71
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #26
  %82 = getelementptr inbounds %struct.Mask, ptr %1, i64 0, i32 2
  call void @BKE_mask_layer_free_list(ptr noundef nonnull %82) #25
  ret void
}

; Function Attrs: optsize
declare void @BKE_sequence_iterator_begin(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_sequence_iterator_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_sequence_iterator_end(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_node_tree_iter_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @BKE_node_tree_iter_step(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_node_tree_unlink_id(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_mask_coord_from_frame(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #7 {
  %4 = load float, ptr %2, align 4, !tbaa !85
  %5 = getelementptr inbounds float, ptr %2, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !85
  %7 = fcmp oeq float %4, %6
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = load float, ptr %1, align 4, !tbaa !85
  store float %9, ptr %0, align 4, !tbaa !85
  %10 = getelementptr inbounds float, ptr %1, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !85
  br label %29

12:                                               ; preds = %3
  %13 = fcmp olt float %4, %6
  %14 = load float, ptr %1, align 4, !tbaa !85
  br i1 %13, label %15, label %21

15:                                               ; preds = %12
  %16 = fadd float %14, -5.000000e-01
  %17 = fdiv float %4, %6
  %18 = tail call float @llvm.fmuladd.f32(float %16, float %17, float 5.000000e-01)
  store float %18, ptr %0, align 4, !tbaa !85
  %19 = getelementptr inbounds float, ptr %1, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !85
  br label %29

21:                                               ; preds = %12
  store float %14, ptr %0, align 4, !tbaa !85
  %22 = getelementptr inbounds float, ptr %1, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !85
  %24 = fadd float %23, -5.000000e-01
  %25 = load float, ptr %5, align 4, !tbaa !85
  %26 = load float, ptr %2, align 4, !tbaa !85
  %27 = fdiv float %25, %26
  %28 = tail call float @llvm.fmuladd.f32(float %24, float %27, float 5.000000e-01)
  br label %29

29:                                               ; preds = %15, %21, %8
  %30 = phi float [ %20, %15 ], [ %28, %21 ], [ %11, %8 ]
  %31 = getelementptr inbounds float, ptr %0, i64 1
  store float %30, ptr %31, align 4, !tbaa !85
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mask_coord_from_movieclip(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #1 {
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #26
  call void @BKE_movieclip_get_size_fl(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %7) #24
  call void @BKE_movieclip_get_aspect(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6) #24
  %8 = load float, ptr %6, align 4, !tbaa !85
  %9 = load float, ptr %5, align 4, !tbaa !85
  %10 = fdiv float %8, %9
  %11 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !85
  %13 = fmul float %12, %10
  store float %13, ptr %11, align 4, !tbaa !85
  call void @BKE_mask_coord_from_frame(ptr noundef %2, ptr noundef %3, ptr noundef nonnull %7) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #26
  ret void
}

; Function Attrs: optsize
declare void @BKE_movieclip_get_size_fl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_movieclip_get_aspect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mask_coord_from_image(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #1 {
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #26
  call void @BKE_image_get_size_fl(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %7) #24
  call void @BKE_image_get_aspect(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6) #24
  %8 = load float, ptr %6, align 4, !tbaa !85
  %9 = load float, ptr %5, align 4, !tbaa !85
  %10 = fdiv float %8, %9
  %11 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !85
  %13 = fmul float %12, %10
  store float %13, ptr %11, align 4, !tbaa !85
  call void @BKE_mask_coord_from_frame(ptr noundef %2, ptr noundef %3, ptr noundef nonnull %7) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #26
  ret void
}

; Function Attrs: optsize
declare void @BKE_image_get_size_fl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_image_get_aspect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_mask_coord_to_frame(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #7 {
  %4 = load float, ptr %2, align 4, !tbaa !85
  %5 = getelementptr inbounds float, ptr %2, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !85
  %7 = fcmp oeq float %4, %6
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = load float, ptr %1, align 4, !tbaa !85
  store float %9, ptr %0, align 4, !tbaa !85
  %10 = getelementptr inbounds float, ptr %1, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !85
  br label %31

12:                                               ; preds = %3
  %13 = fcmp olt float %4, %6
  %14 = load float, ptr %1, align 4, !tbaa !85
  br i1 %13, label %15, label %22

15:                                               ; preds = %12
  %16 = fadd float %14, -5.000000e-01
  %17 = fdiv float %4, %6
  %18 = fdiv float %16, %17
  %19 = fadd float %18, 5.000000e-01
  store float %19, ptr %0, align 4, !tbaa !85
  %20 = getelementptr inbounds float, ptr %1, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !85
  br label %31

22:                                               ; preds = %12
  store float %14, ptr %0, align 4, !tbaa !85
  %23 = getelementptr inbounds float, ptr %1, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !85
  %25 = fadd float %24, -5.000000e-01
  %26 = load float, ptr %5, align 4, !tbaa !85
  %27 = load float, ptr %2, align 4, !tbaa !85
  %28 = fdiv float %26, %27
  %29 = fdiv float %25, %28
  %30 = fadd float %29, 5.000000e-01
  br label %31

31:                                               ; preds = %15, %22, %8
  %32 = phi float [ %21, %15 ], [ %30, %22 ], [ %11, %8 ]
  %33 = getelementptr inbounds float, ptr %0, i64 1
  store float %32, ptr %33, align 4, !tbaa !85
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mask_coord_to_movieclip(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #1 {
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #26
  call void @BKE_movieclip_get_size_fl(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %7) #24
  call void @BKE_movieclip_get_aspect(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6) #24
  %8 = load float, ptr %6, align 4, !tbaa !85
  %9 = load float, ptr %5, align 4, !tbaa !85
  %10 = fdiv float %8, %9
  %11 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !85
  %13 = fmul float %12, %10
  store float %13, ptr %11, align 4, !tbaa !85
  call void @BKE_mask_coord_to_frame(ptr noundef %2, ptr noundef %3, ptr noundef nonnull %7) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mask_coord_to_image(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #1 {
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #26
  call void @BKE_image_get_size_fl(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %7) #24
  call void @BKE_image_get_aspect(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6) #24
  %8 = load float, ptr %6, align 4, !tbaa !85
  %9 = load float, ptr %5, align 4, !tbaa !85
  %10 = fdiv float %8, %9
  %11 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !85
  %13 = fmul float %12, %10
  store float %13, ptr %11, align 4, !tbaa !85
  call void @BKE_mask_coord_to_frame(ptr noundef %2, ptr noundef %3, ptr noundef nonnull %7) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mask_point_parent_matrix_get(ptr noundef %0, float noundef %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = alloca %struct.MovieClipUser, align 8
  %5 = alloca [2 x float], align 4
  %6 = alloca [2 x float], align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca [2 x float], align 4
  %10 = alloca [3 x [3 x float]], align 16
  %11 = alloca [3 x [3 x float]], align 16
  %12 = alloca [3 x [3 x float]], align 16
  tail call void @unit_m3(ptr noundef %2) #24
  %13 = getelementptr inbounds %struct.MaskSplinePoint, ptr %0, i64 0, i32 4
  %14 = load i32, ptr %13, align 8, !tbaa !74
  %15 = icmp eq i32 %14, 17229
  br i1 %15, label %16, label %66

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.MaskSplinePoint, ptr %0, i64 0, i32 4, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !176
  %19 = icmp eq ptr %18, null
  br i1 %19, label %66, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.MovieClip, ptr %18, i64 0, i32 11
  %22 = getelementptr inbounds %struct.MaskSplinePoint, ptr %0, i64 0, i32 4, i32 3
  %23 = tail call ptr @BKE_tracking_object_get_named(ptr noundef nonnull %21, ptr noundef nonnull %22) #24
  %24 = icmp eq ptr %23, null
  br i1 %24, label %66, label %25

25:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #26
  store i64 0, ptr %4, align 8
  %26 = tail call float @BKE_movieclip_remap_scene_to_clip_frame(ptr noundef nonnull %18, float noundef %1) #24
  %27 = fptosi float %1 to i32
  call void @BKE_movieclip_user_set_frame(ptr noundef nonnull %4, i32 noundef %27) #24
  %28 = getelementptr inbounds %struct.MaskSplinePoint, ptr %0, i64 0, i32 4, i32 1
  %29 = load i32, ptr %28, align 4, !tbaa !177
  %30 = icmp eq i32 %29, 0
  %31 = getelementptr inbounds %struct.MaskSplinePoint, ptr %0, i64 0, i32 4, i32 4
  br i1 %30, label %32, label %38

32:                                               ; preds = %25
  %33 = call ptr @BKE_tracking_track_get_named(ptr noundef nonnull %21, ptr noundef nonnull %23, ptr noundef nonnull %31) #24
  %34 = icmp eq ptr %33, null
  br i1 %34, label %65, label %35

35:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #26
  call void @BKE_tracking_marker_get_subframe_position(ptr noundef nonnull %33, float noundef %26, ptr noundef nonnull %5) #24
  call void @BKE_mask_coord_from_movieclip(ptr noundef nonnull %18, ptr noundef nonnull %4, ptr noundef nonnull %6, ptr noundef nonnull %5) #25
  %36 = getelementptr inbounds [3 x float], ptr %2, i64 2
  %37 = getelementptr inbounds %struct.MaskSplinePoint, ptr %0, i64 0, i32 4, i32 5
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %36, ptr noundef nonnull %6, ptr noundef nonnull %37) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #26
  br label %65

38:                                               ; preds = %25
  %39 = call ptr @BKE_tracking_plane_track_get_named(ptr noundef nonnull %21, ptr noundef nonnull %23, ptr noundef nonnull %31) #24
  %40 = icmp eq ptr %39, null
  br i1 %40, label %65, label %41

41:                                               ; preds = %38
  %42 = fptosi float %26 to i32
  %43 = call ptr @BKE_tracking_plane_marker_get(ptr noundef nonnull %39, i32 noundef %42) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #26
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %10) #26
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %11) #26
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %12) #26
  %44 = getelementptr inbounds %struct.MaskSplinePoint, ptr %0, i64 0, i32 4, i32 6
  call void @BKE_tracking_homography_between_two_quads(ptr noundef nonnull %44, ptr noundef %43, ptr noundef nonnull %10) #24
  call void @unit_m3(ptr noundef nonnull %11) #24
  call void @BKE_movieclip_get_size_fl(ptr noundef nonnull %18, ptr noundef nonnull %4, ptr noundef nonnull %9) #24
  call void @BKE_movieclip_get_aspect(ptr noundef nonnull %18, ptr noundef nonnull %7, ptr noundef nonnull %8) #24
  %45 = load float, ptr %8, align 4, !tbaa !85
  %46 = load float, ptr %7, align 4, !tbaa !85
  %47 = fdiv float %45, %46
  %48 = getelementptr inbounds [2 x float], ptr %9, i64 0, i64 1
  %49 = load float, ptr %48, align 4, !tbaa !85
  %50 = fmul float %49, %47
  store float %50, ptr %48, align 4, !tbaa !85
  %51 = load float, ptr %9, align 4, !tbaa !85
  %52 = fcmp oeq float %51, %50
  br i1 %52, label %63, label %53

53:                                               ; preds = %41
  %54 = fcmp olt float %51, %50
  %55 = fdiv float %50, %51
  br i1 %54, label %56, label %59

56:                                               ; preds = %53
  store float %55, ptr %11, align 16, !tbaa !85
  %57 = call float @llvm.fmuladd.f32(float %55, float -5.000000e-01, float 5.000000e-01)
  %58 = getelementptr inbounds [3 x [3 x float]], ptr %11, i64 0, i64 2
  store float %57, ptr %58, align 8, !tbaa !85
  br label %63

59:                                               ; preds = %53
  %60 = getelementptr inbounds [3 x [3 x float]], ptr %11, i64 0, i64 1, i64 1
  store float %55, ptr %60, align 16, !tbaa !85
  %61 = call float @llvm.fmuladd.f32(float %55, float -5.000000e-01, float 5.000000e-01)
  %62 = getelementptr inbounds [3 x [3 x float]], ptr %11, i64 0, i64 2, i64 1
  store float %61, ptr %62, align 4, !tbaa !85
  br label %63

63:                                               ; preds = %56, %59, %41
  %64 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %12, ptr noundef nonnull %11) #24
  call void @_va_mul_m3_series_4(ptr noundef %2, ptr noundef nonnull %11, ptr noundef nonnull %10, ptr noundef nonnull %12) #24
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %12) #26
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #26
  br label %65

65:                                               ; preds = %38, %63, %32, %35
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #26
  br label %66

66:                                               ; preds = %3, %16, %65, %20
  ret void
}

; Function Attrs: optsize
declare void @unit_m3(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_tracking_object_get_named(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

; Function Attrs: optsize
declare float @BKE_movieclip_remap_scene_to_clip_frame(ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_movieclip_user_set_frame(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_tracking_track_get_named(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_tracking_marker_get_subframe_position(ptr noundef, float noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_tracking_plane_track_get_named(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_tracking_plane_marker_get(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_tracking_homography_between_two_quads(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @invert_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_va_mul_m3_series_4(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @mask_spline_point_prev(ptr nocapture noundef readonly %0, ptr noundef readnone %1, ptr noundef readnone %2) unnamed_addr #0 !PGOFuncName !178 {
  %4 = icmp eq ptr %2, %1
  br i1 %4, label %5, label %16

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 2
  %7 = load i16, ptr %6, align 8, !tbaa !42
  %8 = and i16 %7, 2
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !34
  %13 = sext i32 %12 to i64
  %14 = getelementptr %struct.MaskSplinePoint, ptr %2, i64 %13
  %15 = getelementptr %struct.MaskSplinePoint, ptr %14, i64 -1
  br label %18

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.MaskSplinePoint, ptr %2, i64 -1
  br label %18

18:                                               ; preds = %5, %16, %10
  %19 = phi ptr [ %15, %10 ], [ %17, %16 ], [ null, %5 ]
  ret ptr %19
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @mask_spline_point_next(ptr nocapture noundef readonly %0, ptr noundef readnone %1, ptr noundef readnone %2) unnamed_addr #0 !PGOFuncName !179 {
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

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @BKE_mask_calc_tangent_polyline(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #15 {
  %4 = alloca [2 x float], align 4
  %5 = alloca [2 x float], align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #26
  call void @BKE_mask_get_handle_point_adjacent(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6, ptr noundef nonnull %7) #25
  %8 = load ptr, ptr %6, align 8, !tbaa !45
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  %12 = getelementptr inbounds [3 x [3 x float]], ptr %8, i64 0, i64 1
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %4, ptr noundef nonnull %11, ptr noundef nonnull %12) #25
  call fastcc void @normalize_v2(ptr noundef nonnull %4) #25
  br label %14

13:                                               ; preds = %3
  call fastcc void @zero_v2(ptr noundef nonnull %4) #25
  br label %14

14:                                               ; preds = %13, %10
  %15 = load ptr, ptr %7, align 8, !tbaa !45
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds [3 x [3 x float]], ptr %15, i64 0, i64 1
  %19 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %5, ptr noundef nonnull %18, ptr noundef nonnull %19) #25
  call fastcc void @normalize_v2(ptr noundef nonnull %5) #25
  br label %21

20:                                               ; preds = %14
  call fastcc void @zero_v2(ptr noundef nonnull %5) #25
  br label %21

21:                                               ; preds = %20, %17
  call fastcc void @add_v2_v2v2(ptr noundef %2, ptr noundef nonnull %4, ptr noundef nonnull %5) #25
  tail call fastcc void @normalize_v2(ptr noundef %2) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #26
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v2(ptr nocapture noundef writeonly %0) unnamed_addr #5 !PGOFuncName !180 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !85
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mask_calc_handle_point(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #26
  call void @BKE_mask_get_handle_point_adjacent(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #25
  %5 = load ptr, ptr %3, align 8, !tbaa !45
  %6 = load ptr, ptr %4, align 8, !tbaa !45
  tail call fastcc void @mask_calc_point_handle(ptr noundef %1, ptr noundef %5, ptr noundef %6) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mask_calc_point_handle(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 !PGOFuncName !181 {
  %4 = icmp ne ptr %1, null
  %5 = icmp ne ptr %2, null
  %6 = or i1 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @BKE_nurb_handle_calc(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext 0) #24
  br label %8

8:                                                ; preds = %3, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mask_calc_handle_adjacent_interp(ptr nocapture noundef readonly %0, ptr noundef %1, float noundef %2) local_unnamed_addr #1 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #26
  call void @BKE_mask_get_handle_point_adjacent(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5) #25
  %6 = load ptr, ptr %4, align 8, !tbaa !45
  %7 = icmp ne ptr %6, null
  %8 = load ptr, ptr %5, align 8
  %9 = icmp ne ptr %8, null
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %32

11:                                               ; preds = %3
  %12 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1
  %13 = tail call fastcc float @len_v2v2(ptr noundef nonnull %6, ptr noundef nonnull %12) #25
  %14 = fsub float 1.000000e+00, %2
  %15 = getelementptr inbounds [3 x [3 x float]], ptr %8, i64 0, i64 2
  %16 = getelementptr inbounds [3 x [3 x float]], ptr %8, i64 0, i64 1
  %17 = tail call fastcc float @len_v2v2(ptr noundef nonnull %15, ptr noundef nonnull %16) #25
  %18 = getelementptr inbounds %struct.BezTriple, ptr %6, i64 0, i32 2
  %19 = load float, ptr %18, align 8, !tbaa !182
  %20 = getelementptr inbounds %struct.BezTriple, ptr %8, i64 0, i32 2
  %21 = load float, ptr %20, align 8, !tbaa !182
  %22 = insertelement <2 x float> poison, float %21, i64 0
  %23 = insertelement <2 x float> %22, float %17, i64 1
  %24 = insertelement <2 x float> poison, float %2, i64 0
  %25 = shufflevector <2 x float> %24, <2 x float> poison, <2 x i32> zeroinitializer
  %26 = fmul <2 x float> %23, %25
  %27 = insertelement <2 x float> poison, float %19, i64 0
  %28 = insertelement <2 x float> %27, float %13, i64 1
  %29 = insertelement <2 x float> poison, float %14, i64 0
  %30 = shufflevector <2 x float> %29, <2 x float> poison, <2 x i32> zeroinitializer
  %31 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %28, <2 x float> %30, <2 x float> %26)
  br label %55

32:                                               ; preds = %3
  br i1 %7, label %33, label %42

33:                                               ; preds = %32
  %34 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1
  %35 = tail call fastcc float @len_v2v2(ptr noundef nonnull %6, ptr noundef nonnull %34) #25
  %36 = getelementptr inbounds %struct.BezTriple, ptr %6, i64 0, i32 2
  %37 = load float, ptr %36, align 8, !tbaa !182
  %38 = insertelement <2 x float> poison, float %37, i64 0
  %39 = insertelement <2 x float> %38, float %35, i64 1
  %40 = fadd <2 x float> %39, zeroinitializer
  %41 = icmp eq ptr %8, null
  br i1 %41, label %55, label %44

42:                                               ; preds = %32
  %43 = icmp eq ptr %8, null
  br i1 %43, label %65, label %44

44:                                               ; preds = %42, %33
  %45 = phi float [ 1.000000e+00, %42 ], [ 2.000000e+00, %33 ]
  %46 = phi <2 x float> [ zeroinitializer, %42 ], [ %40, %33 ]
  %47 = getelementptr inbounds [3 x [3 x float]], ptr %8, i64 0, i64 2
  %48 = getelementptr inbounds [3 x [3 x float]], ptr %8, i64 0, i64 1
  %49 = tail call fastcc float @len_v2v2(ptr noundef nonnull %47, ptr noundef nonnull %48) #25
  %50 = getelementptr inbounds %struct.BezTriple, ptr %8, i64 0, i32 2
  %51 = load float, ptr %50, align 8, !tbaa !182
  %52 = insertelement <2 x float> poison, float %51, i64 0
  %53 = insertelement <2 x float> %52, float %49, i64 1
  %54 = fadd <2 x float> %46, %53
  br label %55

55:                                               ; preds = %33, %44, %11
  %56 = phi float [ %45, %44 ], [ 1.000000e+00, %11 ], [ 1.000000e+00, %33 ]
  %57 = phi <2 x float> [ %54, %44 ], [ %31, %11 ], [ %40, %33 ]
  %58 = extractelement <2 x float> %57, i64 1
  %59 = fdiv float %58, %56
  %60 = extractelement <2 x float> %57, i64 0
  %61 = fdiv float %60, %56
  %62 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  tail call void @dist_ensure_v2_v2fl(ptr noundef %1, ptr noundef nonnull %62, float noundef %59) #24
  %63 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 2
  tail call void @dist_ensure_v2_v2fl(ptr noundef nonnull %63, ptr noundef nonnull %62, float noundef %59) #24
  %64 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 2
  store float %61, ptr %64, align 8, !tbaa !182
  br label %65

65:                                               ; preds = %42, %55
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #26
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !183 {
  %3 = load float, ptr %0, align 4, !tbaa !85
  %4 = load float, ptr %1, align 4, !tbaa !85
  %5 = fsub float %3, %4
  %6 = getelementptr inbounds float, ptr %0, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !85
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !85
  %10 = fsub float %7, %9
  %11 = fmul float %10, %10
  %12 = tail call float @llvm.fmuladd.f32(float %5, float %5, float %11)
  %13 = tail call float @llvm.sqrt.f32(float %12)
  ret float %13
}

; Function Attrs: optsize
declare void @dist_ensure_v2_v2fl(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mask_calc_handle_point_auto(ptr nocapture noundef readonly %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #1 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #26
  %6 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 5
  %7 = load i8, ptr %6, align 1, !tbaa !81
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 6
  %9 = load i8, ptr %8, align 2, !tbaa !82
  %10 = icmp eq i8 %2, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %3
  %12 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  %13 = tail call fastcc float @len_v3v3(ptr noundef nonnull %1, ptr noundef nonnull %12) #25
  %14 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 2
  %15 = tail call fastcc float @len_v3v3(ptr noundef nonnull %12, ptr noundef nonnull %14) #25
  %16 = fadd float %13, %15
  %17 = fmul float %16, 5.000000e-01
  br label %18

18:                                               ; preds = %3, %11
  %19 = phi float [ %17, %11 ], [ 0.000000e+00, %3 ]
  call void @BKE_mask_get_handle_point_adjacent(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %4, ptr noundef nonnull %5) #25
  store i8 1, ptr %6, align 1, !tbaa !81
  store i8 1, ptr %8, align 2, !tbaa !82
  %20 = load ptr, ptr %4, align 8, !tbaa !45
  %21 = load ptr, ptr %5, align 8, !tbaa !45
  tail call fastcc void @mask_calc_point_handle(ptr noundef nonnull %1, ptr noundef %20, ptr noundef %21) #25
  store i8 %7, ptr %6, align 1, !tbaa !81
  store i8 %9, ptr %8, align 2, !tbaa !82
  br i1 %10, label %22, label %25

22:                                               ; preds = %18
  %23 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  tail call void @dist_ensure_v2_v2fl(ptr noundef nonnull %1, ptr noundef nonnull %23, float noundef %19) #24
  %24 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 2
  tail call void @dist_ensure_v2_v2fl(ptr noundef nonnull %24, ptr noundef nonnull %23, float noundef %19) #24
  br label %25

25:                                               ; preds = %22, %18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #26
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #11 !PGOFuncName !184 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #26
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #25
  %4 = call fastcc float @len_v3(ptr noundef nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #26
  ret float %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mask_layer_calc_handles(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = icmp eq ptr %3, null
  br i1 %4, label %23, label %8

5:                                                ; preds = %15, %8
  %6 = load ptr, ptr %9, align 8, !tbaa !45
  %7 = icmp eq ptr %6, null
  br i1 %7, label %23, label %8, !llvm.loop !185

8:                                                ; preds = %1, %5
  %9 = phi ptr [ %6, %5 ], [ %3, %1 ]
  %10 = getelementptr inbounds %struct.MaskSpline, ptr %9, i64 0, i32 5
  %11 = load i32, ptr %10, align 4, !tbaa !34
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %5

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.MaskSpline, ptr %9, i64 0, i32 6
  br label %15

15:                                               ; preds = %13, %15
  %16 = phi i64 [ 0, %13 ], [ %19, %15 ]
  %17 = load ptr, ptr %14, align 8, !tbaa !44
  %18 = getelementptr inbounds %struct.MaskSplinePoint, ptr %17, i64 %16
  tail call void @BKE_mask_calc_handle_point(ptr noundef nonnull %9, ptr noundef %18) #25
  %19 = add nuw nsw i64 %16, 1
  %20 = load i32, ptr %10, align 4, !tbaa !34
  %21 = sext i32 %20 to i64
  %22 = icmp slt i64 %19, %21
  br i1 %22, label %15, label %5, !llvm.loop !186

23:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mask_spline_ensure_deform(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !45
  %3 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !43
  %5 = tail call i64 %2(ptr noundef %4) #24
  %6 = udiv i64 %5, 272
  %7 = trunc i64 %6 to i32
  %8 = load ptr, ptr %3, align 8, !tbaa !43
  %9 = icmp eq ptr %8, null
  br i1 %9, label %29, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !34
  %13 = icmp eq i32 %12, %7
  br i1 %13, label %36, label %14

14:                                               ; preds = %10
  %15 = icmp sgt i32 %7, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %14
  %17 = and i64 %6, 4294967295
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi i64 [ 0, %16 ], [ %22, %18 ]
  %20 = load ptr, ptr %3, align 8, !tbaa !43
  %21 = getelementptr inbounds %struct.MaskSplinePoint, ptr %20, i64 %19
  tail call void @BKE_mask_point_free(ptr noundef %21) #25
  %22 = add nuw nsw i64 %19, 1
  %23 = icmp eq i64 %22, %17
  br i1 %23, label %24, label %18, !llvm.loop !187

24:                                               ; preds = %18
  %25 = load ptr, ptr %3, align 8, !tbaa !43
  br label %26

26:                                               ; preds = %24, %14
  %27 = phi ptr [ %25, %24 ], [ %8, %14 ]
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %28(ptr noundef %27) #24
  br label %29

29:                                               ; preds = %1, %26
  %30 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %31 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 5
  %32 = load i32, ptr %31, align 4, !tbaa !34
  %33 = sext i32 %32 to i64
  %34 = mul nsw i64 %33, 272
  %35 = tail call ptr %30(i64 noundef %34, ptr noundef nonnull @__func__.BKE_mask_spline_ensure_deform) #24
  store ptr %35, ptr %3, align 8, !tbaa !43
  br label %36

36:                                               ; preds = %10, %29
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mask_layer_evaluate(ptr nocapture noundef readonly %0, float noundef %1, i8 noundef zeroext %2) local_unnamed_addr #1 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = icmp eq i8 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #26
  %8 = call i32 @BKE_mask_layer_shape_find_frame_range(ptr noundef %0, float noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5) #25, !range !188
  switch i32 %8, label %23 [
    i32 2, label %11
    i32 1, label %9
  ]

9:                                                ; preds = %7
  %10 = load ptr, ptr %4, align 8, !tbaa !45
  tail call void @BKE_mask_layer_shape_to_mask(ptr noundef %0, ptr noundef %10) #25
  br label %23

11:                                               ; preds = %7
  %12 = load ptr, ptr %5, align 8, !tbaa !45
  %13 = getelementptr inbounds %struct.MaskLayerShape, ptr %12, i64 0, i32 4
  %14 = load i32, ptr %13, align 4, !tbaa !66
  %15 = load ptr, ptr %4, align 8, !tbaa !45
  %16 = getelementptr inbounds %struct.MaskLayerShape, ptr %15, i64 0, i32 4
  %17 = load i32, ptr %16, align 4, !tbaa !66
  %18 = sub nsw i32 %14, %17
  %19 = sitofp i32 %18 to float
  %20 = sitofp i32 %17 to float
  %21 = fsub float %1, %20
  %22 = fdiv float %21, %19
  tail call void @BKE_mask_layer_shape_to_mask_interp(ptr noundef %0, ptr noundef %15, ptr noundef %12, float noundef %22) #25
  br label %23

23:                                               ; preds = %7, %9, %11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #26
  br label %24

24:                                               ; preds = %23, %3
  tail call void @BKE_mask_layer_calc_handles(ptr noundef %0) #25
  %25 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !45
  %27 = icmp eq ptr %26, null
  br i1 %27, label %86, label %28

28:                                               ; preds = %24, %83
  %29 = phi ptr [ %84, %83 ], [ %26, %24 ]
  tail call void @BKE_mask_spline_ensure_deform(ptr noundef nonnull %29) #25
  %30 = getelementptr inbounds %struct.MaskSpline, ptr %29, i64 0, i32 5
  %31 = load i32, ptr %30, align 4, !tbaa !34
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %83

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.MaskSpline, ptr %29, i64 0, i32 6
  %35 = getelementptr inbounds %struct.MaskSpline, ptr %29, i64 0, i32 8
  br label %36

36:                                               ; preds = %33, %49
  %37 = phi i64 [ 0, %33 ], [ %57, %49 ]
  %38 = phi i8 [ 0, %33 ], [ %56, %49 ]
  %39 = load ptr, ptr %34, align 8, !tbaa !44
  %40 = getelementptr inbounds %struct.MaskSplinePoint, ptr %39, i64 %37
  %41 = load ptr, ptr %35, align 8, !tbaa !43
  %42 = getelementptr inbounds %struct.MaskSplinePoint, ptr %41, i64 %37
  tail call void @BKE_mask_point_free(ptr noundef %42) #25
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %42, ptr noundef nonnull align 8 dereferenceable(272) %40, i64 272, i1 false), !tbaa.struct !91
  %43 = getelementptr inbounds %struct.MaskSplinePoint, ptr %39, i64 %37, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !83
  %45 = icmp eq ptr %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %36
  %47 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !45
  %48 = tail call ptr %47(ptr noundef nonnull %44) #24
  br label %49

49:                                               ; preds = %36, %46
  %50 = phi ptr [ %48, %46 ], [ null, %36 ]
  %51 = getelementptr inbounds %struct.MaskSplinePoint, ptr %41, i64 %37, i32 3
  store ptr %50, ptr %51, align 8, !tbaa !83
  tail call fastcc void @mask_evaluate_apply_point_parent(ptr noundef nonnull %42, float noundef %1) #25
  %52 = getelementptr inbounds %struct.BezTriple, ptr %40, i64 0, i32 5
  %53 = load i8, ptr %52, align 1, !tbaa !81
  %54 = add i8 %53, -1
  %55 = icmp ult i8 %54, 2
  %56 = select i1 %55, i8 1, i8 %38
  %57 = add nuw nsw i64 %37, 1
  %58 = load i32, ptr %30, align 4, !tbaa !34
  %59 = sext i32 %58 to i64
  %60 = icmp slt i64 %57, %59
  br i1 %60, label %36, label %61, !llvm.loop !189

61:                                               ; preds = %49
  %62 = icmp ne i8 %56, 0
  %63 = icmp sgt i32 %58, 0
  %64 = and i1 %62, %63
  br i1 %64, label %65, label %83

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.MaskSpline, ptr %29, i64 0, i32 8
  br label %67

67:                                               ; preds = %65, %78
  %68 = phi i32 [ %58, %65 ], [ %79, %78 ]
  %69 = phi i64 [ 0, %65 ], [ %80, %78 ]
  %70 = load ptr, ptr %66, align 8, !tbaa !43
  %71 = getelementptr inbounds %struct.MaskSplinePoint, ptr %70, i64 %69
  %72 = getelementptr inbounds %struct.BezTriple, ptr %71, i64 0, i32 5
  %73 = load i8, ptr %72, align 1, !tbaa !81
  %74 = add i8 %73, -1
  %75 = icmp ult i8 %74, 2
  br i1 %75, label %76, label %78

76:                                               ; preds = %67
  tail call void @BKE_mask_calc_handle_point(ptr noundef nonnull %29, ptr noundef nonnull %71) #25
  %77 = load i32, ptr %30, align 4, !tbaa !34
  br label %78

78:                                               ; preds = %67, %76
  %79 = phi i32 [ %68, %67 ], [ %77, %76 ]
  %80 = add nuw nsw i64 %69, 1
  %81 = sext i32 %79 to i64
  %82 = icmp slt i64 %80, %81
  br i1 %82, label %67, label %83, !llvm.loop !190

83:                                               ; preds = %78, %28, %61
  %84 = load ptr, ptr %29, align 8, !tbaa !45
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %28, !llvm.loop !191

86:                                               ; preds = %83, %24
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @BKE_mask_layer_shape_find_frame_range(ptr nocapture noundef readonly %0, float noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #16 {
  %5 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 4
  br label %6

6:                                                ; preds = %15, %4
  %7 = phi ptr [ %5, %4 ], [ %8, %15 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = icmp eq ptr %8, null
  br i1 %9, label %24, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.MaskLayerShape, ptr %8, i64 0, i32 4
  %12 = load i32, ptr %11, align 4, !tbaa !66
  %13 = sitofp i32 %12 to float
  %14 = fcmp oeq float %13, %1
  br i1 %14, label %29, label %15

15:                                               ; preds = %10
  %16 = fcmp ogt float %13, %1
  br i1 %16, label %17, label %6, !llvm.loop !192

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.MaskLayerShape, ptr %8, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !193
  %20 = icmp eq ptr %19, null
  %21 = select i1 %20, ptr %8, ptr %19
  %22 = select i1 %20, ptr null, ptr %8
  %23 = select i1 %20, i32 1, i32 2
  br label %29

24:                                               ; preds = %6
  %25 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 4, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !194
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

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @BKE_mask_layer_shape_to_mask(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #17 {
  %3 = tail call i32 @BKE_mask_layer_shape_totvert(ptr noundef %0) #25
  %4 = getelementptr inbounds %struct.MaskLayerShape, ptr %1, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !64
  %6 = icmp eq i32 %5, %3
  br i1 %6, label %7, label %36

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = icmp eq ptr %9, null
  br i1 %10, label %40, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.MaskLayerShape, ptr %1, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !62
  br label %18

14:                                               ; preds = %26, %18
  %15 = phi ptr [ %20, %18 ], [ %31, %26 ]
  %16 = load ptr, ptr %19, align 8, !tbaa !45
  %17 = icmp eq ptr %16, null
  br i1 %17, label %40, label %18, !llvm.loop !195

18:                                               ; preds = %11, %14
  %19 = phi ptr [ %16, %14 ], [ %9, %11 ]
  %20 = phi ptr [ %15, %14 ], [ %13, %11 ]
  %21 = getelementptr inbounds %struct.MaskSpline, ptr %19, i64 0, i32 5
  %22 = load i32, ptr %21, align 4, !tbaa !34
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %14

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.MaskSpline, ptr %19, i64 0, i32 6
  br label %26

26:                                               ; preds = %24, %26
  %27 = phi i64 [ 0, %24 ], [ %32, %26 ]
  %28 = phi ptr [ %20, %24 ], [ %31, %26 ]
  %29 = load ptr, ptr %25, align 8, !tbaa !44
  %30 = getelementptr inbounds %struct.MaskSplinePoint, ptr %29, i64 %27
  tail call fastcc void @mask_layer_shape_to_mask_point(ptr noundef %30, ptr noundef %28) #25
  %31 = getelementptr inbounds float, ptr %28, i64 8
  %32 = add nuw nsw i64 %27, 1
  %33 = load i32, ptr %21, align 4, !tbaa !34
  %34 = sext i32 %33 to i64
  %35 = icmp slt i64 %32, %34
  br i1 %35, label %26, label %14, !llvm.loop !196

36:                                               ; preds = %2
  %37 = getelementptr inbounds %struct.MaskLayerShape, ptr %1, i64 0, i32 4
  %38 = load i32, ptr %37, align 4, !tbaa !66
  %39 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef nonnull @__func__.BKE_mask_layer_shape_to_mask, i32 noundef %5, i32 noundef %3, i32 noundef %38) #25
  br label %40

40:                                               ; preds = %14, %7, %36
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @BKE_mask_layer_shape_to_mask_interp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) local_unnamed_addr #17 {
  %5 = tail call i32 @BKE_mask_layer_shape_totvert(ptr noundef %0) #25
  %6 = getelementptr inbounds %struct.MaskLayerShape, ptr %1, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !64
  %8 = icmp eq i32 %7, %5
  %9 = getelementptr inbounds %struct.MaskLayerShape, ptr %2, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !64
  %11 = icmp eq i32 %10, %5
  %12 = select i1 %8, i1 %11, i1 false
  br i1 %12, label %13, label %69

13:                                               ; preds = %4
  %14 = fsub float 1.000000e+00, %3
  %15 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !45
  %17 = icmp eq ptr %16, null
  br i1 %17, label %75, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.MaskLayerShape, ptr %2, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !62
  %21 = getelementptr inbounds %struct.MaskLayerShape, ptr %1, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !62
  br label %28

23:                                               ; preds = %37, %28
  %24 = phi ptr [ %31, %28 ], [ %64, %37 ]
  %25 = phi ptr [ %30, %28 ], [ %63, %37 ]
  %26 = load ptr, ptr %29, align 8, !tbaa !45
  %27 = icmp eq ptr %26, null
  br i1 %27, label %75, label %28, !llvm.loop !197

28:                                               ; preds = %18, %23
  %29 = phi ptr [ %26, %23 ], [ %16, %18 ]
  %30 = phi ptr [ %25, %23 ], [ %22, %18 ]
  %31 = phi ptr [ %24, %23 ], [ %20, %18 ]
  %32 = getelementptr inbounds %struct.MaskSpline, ptr %29, i64 0, i32 5
  %33 = load i32, ptr %32, align 4, !tbaa !34
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %23

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.MaskSpline, ptr %29, i64 0, i32 6
  br label %37

37:                                               ; preds = %35, %37
  %38 = phi i64 [ 0, %35 ], [ %65, %37 ]
  %39 = phi ptr [ %30, %35 ], [ %63, %37 ]
  %40 = phi ptr [ %31, %35 ], [ %64, %37 ]
  %41 = load ptr, ptr %36, align 8, !tbaa !44
  %42 = getelementptr inbounds %struct.MaskSplinePoint, ptr %41, i64 %38
  tail call fastcc void @interp_v2_v2v2_flfl(ptr noundef %42, ptr noundef %39, ptr noundef %40, float noundef %3, float noundef %14) #25
  %43 = getelementptr inbounds float, ptr %39, i64 2
  %44 = getelementptr inbounds float, ptr %40, i64 2
  %45 = getelementptr inbounds [3 x [3 x float]], ptr %42, i64 0, i64 1
  tail call fastcc void @interp_v2_v2v2_flfl(ptr noundef nonnull %45, ptr noundef nonnull %43, ptr noundef nonnull %44, float noundef %3, float noundef %14) #25
  %46 = getelementptr inbounds float, ptr %39, i64 4
  %47 = getelementptr inbounds float, ptr %40, i64 4
  %48 = getelementptr inbounds [3 x [3 x float]], ptr %42, i64 0, i64 2
  tail call fastcc void @interp_v2_v2v2_flfl(ptr noundef nonnull %48, ptr noundef nonnull %46, ptr noundef nonnull %47, float noundef %3, float noundef %14) #25
  %49 = getelementptr inbounds float, ptr %39, i64 6
  %50 = getelementptr inbounds float, ptr %40, i64 6
  %51 = load float, ptr %49, align 4, !tbaa !85
  %52 = load float, ptr %50, align 4, !tbaa !85
  %53 = fmul float %52, %3
  %54 = tail call float @llvm.fmuladd.f32(float %51, float %14, float %53)
  %55 = getelementptr inbounds %struct.BezTriple, ptr %42, i64 0, i32 2
  store float %54, ptr %55, align 4, !tbaa !108
  %56 = getelementptr inbounds float, ptr %39, i64 7
  %57 = load float, ptr %56, align 4, !tbaa !85
  %58 = getelementptr inbounds float, ptr %40, i64 7
  %59 = load float, ptr %58, align 4, !tbaa !85
  %60 = fmul float %59, %3
  %61 = tail call float @llvm.fmuladd.f32(float %57, float %14, float %60)
  %62 = getelementptr inbounds %struct.BezTriple, ptr %42, i64 0, i32 3
  store float %61, ptr %62, align 4, !tbaa !198
  %63 = getelementptr inbounds float, ptr %39, i64 8
  %64 = getelementptr inbounds float, ptr %40, i64 8
  %65 = add nuw nsw i64 %38, 1
  %66 = load i32, ptr %32, align 4, !tbaa !34
  %67 = sext i32 %66 to i64
  %68 = icmp slt i64 %65, %67
  br i1 %68, label %37, label %23, !llvm.loop !199

69:                                               ; preds = %4
  %70 = getelementptr inbounds %struct.MaskLayerShape, ptr %1, i64 0, i32 4
  %71 = load i32, ptr %70, align 4, !tbaa !66
  %72 = getelementptr inbounds %struct.MaskLayerShape, ptr %2, i64 0, i32 4
  %73 = load i32, ptr %72, align 4, !tbaa !66
  %74 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef nonnull @__func__.BKE_mask_layer_shape_to_mask_interp, i32 noundef %7, i32 noundef %10, i32 noundef %5, i32 noundef %71, i32 noundef %73) #25
  br label %75

75:                                               ; preds = %23, %13, %69
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mask_evaluate_apply_point_parent(ptr noundef %0, float noundef %1) unnamed_addr #1 !PGOFuncName !200 {
  %3 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #26
  call void @BKE_mask_point_parent_matrix_get(ptr noundef %0, float noundef %1, ptr noundef nonnull %3) #25
  call void @mul_m3_v2(ptr noundef nonnull %3, ptr noundef %0) #24
  %4 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 1
  call void @mul_m3_v2(ptr noundef nonnull %3, ptr noundef nonnull %4) #24
  %5 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 2
  call void @mul_m3_v2(ptr noundef nonnull %3, ptr noundef nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mask_evaluate(ptr nocapture noundef readonly %0, float noundef %1, i8 noundef zeroext %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.Mask, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3, %7
  %8 = phi ptr [ %9, %7 ], [ %5, %3 ]
  tail call void @BKE_mask_layer_evaluate(ptr noundef nonnull %8, float noundef %1, i8 noundef zeroext %2) #25
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %7, !llvm.loop !201

11:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mask_update_display(ptr nocapture noundef readonly %0, float noundef %1) local_unnamed_addr #1 {
  tail call void @BKE_mask_evaluate(ptr noundef %0, float noundef %1, i8 noundef zeroext 0) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mask_evaluate_all_masks(ptr nocapture noundef readonly %0, float noundef %1, i8 noundef zeroext %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 43
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3, %7
  %8 = phi ptr [ %9, %7 ], [ %5, %3 ]
  tail call void @BKE_mask_evaluate(ptr noundef nonnull %8, float noundef %1, i8 noundef zeroext %2) #25
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %7, !llvm.loop !202

11:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mask_update_scene(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 43
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq ptr %4, null
  br i1 %5, label %23, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 5
  br label %8

8:                                                ; preds = %6, %20
  %9 = phi ptr [ %4, %6 ], [ %21, %20 ]
  %10 = getelementptr inbounds %struct.ID, ptr %9, i64 0, i32 5
  %11 = load i16, ptr %10, align 2, !tbaa !119
  %12 = and i16 %11, 12288
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %8
  %15 = lshr i16 %11, 13
  %16 = trunc i16 %15 to i8
  %17 = and i8 %16, 1
  %18 = load i32, ptr %7, align 8, !tbaa !203
  %19 = sitofp i32 %18 to float
  tail call void @BKE_mask_evaluate_all_masks(ptr noundef %0, float noundef %19, i8 noundef zeroext %17) #25
  br label %20

20:                                               ; preds = %8, %14
  %21 = load ptr, ptr %9, align 8, !tbaa !45
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %8, !llvm.loop !204

23:                                               ; preds = %20, %2
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @BKE_mask_layer_shape_from_mask(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #17 {
  %3 = tail call i32 @BKE_mask_layer_shape_totvert(ptr noundef %0) #25
  %4 = getelementptr inbounds %struct.MaskLayerShape, ptr %1, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !64
  %6 = icmp eq i32 %5, %3
  br i1 %6, label %7, label %36

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = icmp eq ptr %9, null
  br i1 %10, label %40, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.MaskLayerShape, ptr %1, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !62
  br label %18

14:                                               ; preds = %26, %18
  %15 = phi ptr [ %20, %18 ], [ %31, %26 ]
  %16 = load ptr, ptr %19, align 8, !tbaa !45
  %17 = icmp eq ptr %16, null
  br i1 %17, label %40, label %18, !llvm.loop !205

18:                                               ; preds = %11, %14
  %19 = phi ptr [ %16, %14 ], [ %9, %11 ]
  %20 = phi ptr [ %15, %14 ], [ %13, %11 ]
  %21 = getelementptr inbounds %struct.MaskSpline, ptr %19, i64 0, i32 5
  %22 = load i32, ptr %21, align 4, !tbaa !34
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %14

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.MaskSpline, ptr %19, i64 0, i32 6
  br label %26

26:                                               ; preds = %24, %26
  %27 = phi i64 [ 0, %24 ], [ %32, %26 ]
  %28 = phi ptr [ %20, %24 ], [ %31, %26 ]
  %29 = load ptr, ptr %25, align 8, !tbaa !44
  %30 = getelementptr inbounds %struct.MaskSplinePoint, ptr %29, i64 %27
  tail call fastcc void @mask_layer_shape_from_mask_point(ptr noundef %30, ptr noundef %28) #25
  %31 = getelementptr inbounds float, ptr %28, i64 8
  %32 = add nuw nsw i64 %27, 1
  %33 = load i32, ptr %21, align 4, !tbaa !34
  %34 = sext i32 %33 to i64
  %35 = icmp slt i64 %32, %34
  br i1 %35, label %26, label %14, !llvm.loop !206

36:                                               ; preds = %2
  %37 = getelementptr inbounds %struct.MaskLayerShape, ptr %1, i64 0, i32 4
  %38 = load i32, ptr %37, align 4, !tbaa !66
  %39 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef nonnull @__func__.BKE_mask_layer_shape_from_mask, i32 noundef %5, i32 noundef %3, i32 noundef %38) #25
  br label %40

40:                                               ; preds = %14, %7, %36
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mask_layer_shape_from_mask_point(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #7 !PGOFuncName !207 {
  tail call fastcc void @copy_v2_v2(ptr noundef %1, ptr noundef %0) #25
  %3 = getelementptr inbounds float, ptr %1, i64 2
  %4 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 1
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %3, ptr noundef nonnull %4) #25
  %5 = getelementptr inbounds float, ptr %1, i64 4
  %6 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 2
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %5, ptr noundef nonnull %6) #25
  %7 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 2
  %8 = load float, ptr %7, align 4, !tbaa !108
  %9 = getelementptr inbounds float, ptr %1, i64 6
  store float %8, ptr %9, align 4, !tbaa !85
  %10 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 3
  %11 = load float, ptr %10, align 4, !tbaa !198
  %12 = getelementptr inbounds float, ptr %1, i64 7
  store float %11, ptr %12, align 4, !tbaa !85
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #18

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mask_layer_shape_to_mask_point(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !208 {
  tail call fastcc void @copy_v2_v2(ptr noundef %0, ptr noundef %1) #25
  %3 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 1
  %4 = getelementptr inbounds float, ptr %1, i64 2
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %3, ptr noundef nonnull %4) #25
  %5 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 2
  %6 = getelementptr inbounds float, ptr %1, i64 4
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %5, ptr noundef nonnull %6) #25
  %7 = getelementptr inbounds float, ptr %1, i64 6
  %8 = load float, ptr %7, align 4, !tbaa !85
  %9 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 2
  store float %8, ptr %9, align 4, !tbaa !108
  %10 = getelementptr inbounds float, ptr %1, i64 7
  %11 = load float, ptr %10, align 4, !tbaa !85
  %12 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 3
  store float %11, ptr %12, align 4, !tbaa !198
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @interp_v2_v2v2_flfl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3, float noundef %4) unnamed_addr #7 !PGOFuncName !209 {
  %6 = load float, ptr %1, align 4, !tbaa !85
  %7 = load float, ptr %2, align 4, !tbaa !85
  %8 = fmul float %7, %3
  %9 = tail call float @llvm.fmuladd.f32(float %4, float %6, float %8)
  store float %9, ptr %0, align 4, !tbaa !85
  %10 = getelementptr inbounds float, ptr %1, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !85
  %12 = getelementptr inbounds float, ptr %2, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !85
  %14 = fmul float %13, %3
  %15 = tail call float @llvm.fmuladd.f32(float %4, float %11, float %14)
  %16 = getelementptr inbounds float, ptr %0, i64 1
  store float %15, ptr %16, align 4, !tbaa !85
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_mask_layer_shape_find_frame(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 4
  br label %4

4:                                                ; preds = %12, %2
  %5 = phi ptr [ %3, %2 ], [ %6, %12 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.MaskLayerShape, ptr %6, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !66
  %11 = icmp eq i32 %10, %1
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = icmp sgt i32 %10, %1
  br i1 %13, label %14, label %4, !llvm.loop !210

14:                                               ; preds = %4, %12, %8
  %15 = phi ptr [ %6, %8 ], [ null, %12 ], [ null, %4 ]
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_mask_layer_shape_verify_frame(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = tail call ptr @BKE_mask_layer_shape_find_frame(ptr noundef %0, i32 noundef %1) #25
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call ptr @BKE_mask_layer_shape_alloc(ptr noundef %0, i32 noundef %1) #25
  %7 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 4
  tail call void @BLI_addtail(ptr noundef nonnull %7, ptr noundef %6) #24
  tail call void @BKE_mask_layer_shape_sort(ptr noundef %0) #25
  br label %8

8:                                                ; preds = %5, %2
  %9 = phi ptr [ %6, %5 ], [ %3, %2 ]
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mask_layer_shape_sort(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 4
  tail call void @BLI_sortlist(ptr noundef nonnull %2, ptr noundef nonnull @mask_layer_shape_sort_cb) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_mask_layer_shape_duplicate(ptr noundef %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !45
  %3 = tail call ptr %2(ptr noundef %0) #24
  %4 = getelementptr inbounds %struct.MaskLayerShape, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !45
  %9 = tail call ptr %8(ptr noundef nonnull %5) #24
  store ptr %9, ptr %4, align 8, !tbaa !62
  br label %10

10:                                               ; preds = %7, %1
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mask_layer_shape_unlink(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 4
  tail call void @BLI_remlink(ptr noundef nonnull %3, ptr noundef %1) #24
  tail call void @BKE_mask_layer_shape_free(ptr noundef %1) #25
  ret void
}

; Function Attrs: optsize
declare void @BLI_sortlist(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @mask_layer_shape_sort_cb(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !211 {
  %3 = getelementptr inbounds %struct.MaskLayerShape, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 4, !tbaa !66
  %5 = getelementptr inbounds %struct.MaskLayerShape, ptr %1, i64 0, i32 4
  %6 = load i32, ptr %5, align 4, !tbaa !66
  %7 = icmp slt i32 %4, %6
  %8 = icmp sgt i32 %4, %6
  %9 = zext i1 %8 to i32
  %10 = select i1 %7, i32 -1, i32 %9
  ret i32 %10
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @BKE_mask_layer_shape_spline_from_index(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #16 {
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
  store i32 %10, ptr %3, align 4, !tbaa !71
  br label %19

15:                                               ; preds = %8
  %16 = sub nsw i32 %10, %12
  %17 = load ptr, ptr %9, align 8, !tbaa !45
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %8, !llvm.loop !212

19:                                               ; preds = %15, %4, %14
  %20 = phi i8 [ 1, %14 ], [ 0, %4 ], [ 0, %15 ]
  ret i8 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mask_layer_shape_changed_add(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #1 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca [3 x [2 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #26
  %8 = call zeroext i8 @BKE_mask_layer_shape_spline_from_index(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %6) #25, !range !213
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %121, label %10

10:                                               ; preds = %4
  %11 = tail call i32 @BKE_mask_layer_shape_totvert(ptr noundef %0) #25
  %12 = add nsw i32 %11, -1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #26
  %13 = load i32, ptr %6, align 4, !tbaa !71
  %14 = add nsw i32 %13, -1
  %15 = load ptr, ptr %5, align 8, !tbaa !45
  %16 = getelementptr inbounds %struct.MaskSpline, ptr %15, i64 0, i32 5
  %17 = load i32, ptr %16, align 4, !tbaa !34
  %18 = add nsw i32 %14, %17
  %19 = srem i32 %18, %17
  %20 = add nsw i32 %13, 1
  %21 = srem i32 %20, %17
  %22 = sub nsw i32 %1, %13
  %23 = add nsw i32 %19, %22
  %24 = add nsw i32 %21, %22
  %25 = icmp eq i8 %3, 0
  br i1 %25, label %43, label %26

26:                                               ; preds = %10
  %27 = getelementptr inbounds %struct.MaskSpline, ptr %15, i64 0, i32 6
  %28 = sext i32 %13 to i64
  %29 = sext i32 %19 to i64
  %30 = sext i32 %21 to i64
  br label %31

31:                                               ; preds = %26, %31
  %32 = phi i64 [ 0, %26 ], [ %41, %31 ]
  %33 = getelementptr inbounds [3 x [2 x float]], ptr %7, i64 0, i64 %32
  %34 = load ptr, ptr %27, align 8, !tbaa !44
  %35 = getelementptr inbounds %struct.MaskSplinePoint, ptr %34, i64 %28
  %36 = getelementptr inbounds [3 x [3 x float]], ptr %35, i64 0, i64 %32
  %37 = getelementptr inbounds %struct.MaskSplinePoint, ptr %34, i64 %29
  %38 = getelementptr inbounds [3 x [3 x float]], ptr %37, i64 0, i64 %32
  %39 = getelementptr inbounds %struct.MaskSplinePoint, ptr %34, i64 %30
  %40 = getelementptr inbounds [3 x [3 x float]], ptr %39, i64 0, i64 %32
  call fastcc void @interp_weights_uv_v2_calc(ptr noundef nonnull %33, ptr noundef %36, ptr noundef %38, ptr noundef %40) #25
  %41 = add nuw nsw i64 %32, 1
  %42 = icmp eq i64 %41, 3
  br i1 %42, label %43, label %31, !llvm.loop !214

43:                                               ; preds = %31, %10
  %44 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 4
  %45 = load ptr, ptr %44, align 8, !tbaa !45
  %46 = icmp eq ptr %45, null
  br i1 %46, label %120, label %47

47:                                               ; preds = %43
  %48 = icmp sgt i32 %1, 0
  %49 = zext nneg i32 %1 to i64
  %50 = shl nuw nsw i64 %49, 5
  %51 = add nsw i32 %1, 1
  %52 = shl nsw i32 %51, 3
  %53 = sext i32 %52 to i64
  %54 = shl nsw i32 %1, 3
  %55 = sext i32 %54 to i64
  %56 = icmp eq i8 %2, 0
  %57 = getelementptr inbounds %struct.MaskSpline, ptr %15, i64 0, i32 6
  %58 = sext i32 %13 to i64
  %59 = shl nsw i32 %23, 3
  %60 = shl nsw i32 %24, 3
  %61 = sext i32 %59 to i64
  %62 = sext i32 %60 to i64
  %63 = sext i32 %11 to i64
  %64 = shl nsw i64 %63, 5
  br label %65

65:                                               ; preds = %47, %117
  %66 = phi ptr [ %45, %47 ], [ %118, %117 ]
  %67 = getelementptr inbounds %struct.MaskLayerShape, ptr %66, i64 0, i32 3
  %68 = load i32, ptr %67, align 8, !tbaa !64
  %69 = icmp eq i32 %12, %68
  br i1 %69, label %70, label %113

70:                                               ; preds = %65
  store i32 %11, ptr %67, align 8, !tbaa !64
  %71 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %72 = tail call ptr %71(i64 noundef %64, ptr noundef nonnull @__func__.BKE_mask_layer_shape_changed_add) #24
  br i1 %48, label %73, label %76

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.MaskLayerShape, ptr %66, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !62
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %72, ptr align 4 %75, i64 %50, i1 false)
  br label %76

76:                                               ; preds = %73, %70
  %77 = load i32, ptr %67, align 8, !tbaa !64
  %78 = add nsw i32 %77, -1
  %79 = icmp eq i32 %78, %1
  br i1 %79, label %88, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds float, ptr %72, i64 %53
  %82 = getelementptr inbounds %struct.MaskLayerShape, ptr %66, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !62
  %84 = getelementptr inbounds float, ptr %83, i64 %55
  %85 = sub nsw i32 %77, %51
  %86 = sext i32 %85 to i64
  %87 = shl nsw i64 %86, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %81, ptr align 4 %84, i64 %87, i1 false)
  br label %88

88:                                               ; preds = %80, %76
  %89 = getelementptr inbounds float, ptr %72, i64 %55
  br i1 %56, label %108, label %90

90:                                               ; preds = %88
  %91 = load ptr, ptr %57, align 8, !tbaa !44
  %92 = getelementptr inbounds %struct.MaskSplinePoint, ptr %91, i64 %58
  tail call fastcc void @mask_layer_shape_from_mask_point(ptr noundef %92, ptr noundef %89) #25
  br i1 %25, label %109, label %93

93:                                               ; preds = %90
  %94 = load i32, ptr %16, align 4, !tbaa !34
  %95 = icmp sgt i32 %94, 2
  br i1 %95, label %96, label %109

96:                                               ; preds = %93
  %97 = getelementptr float, ptr %72, i64 %61
  %98 = getelementptr float, ptr %72, i64 %62
  br label %99

99:                                               ; preds = %96, %99
  %100 = phi i64 [ 0, %96 ], [ %106, %99 ]
  %101 = getelementptr inbounds [3 x [2 x float]], ptr %7, i64 0, i64 %100
  %102 = shl nuw nsw i64 %100, 1
  %103 = getelementptr inbounds float, ptr %89, i64 %102
  %104 = getelementptr float, ptr %97, i64 %102
  %105 = getelementptr float, ptr %98, i64 %102
  call fastcc void @interp_weights_uv_v2_apply(ptr noundef nonnull %101, ptr noundef %103, ptr noundef %104, ptr noundef %105) #25
  %106 = add nuw nsw i64 %100, 1
  %107 = icmp eq i64 %106, 3
  br i1 %107, label %109, label %99, !llvm.loop !215

108:                                              ; preds = %88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %89, i8 0, i64 32, i1 false)
  br label %109

109:                                              ; preds = %99, %90, %93, %108
  %110 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %111 = getelementptr inbounds %struct.MaskLayerShape, ptr %66, i64 0, i32 2
  %112 = load ptr, ptr %111, align 8, !tbaa !62
  tail call void %110(ptr noundef %112) #24
  store ptr %72, ptr %111, align 8, !tbaa !62
  br label %117

113:                                              ; preds = %65
  %114 = getelementptr inbounds %struct.MaskLayerShape, ptr %66, i64 0, i32 4
  %115 = load i32, ptr %114, align 4, !tbaa !66
  %116 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef nonnull @__func__.BKE_mask_layer_shape_changed_add, i32 noundef %68, i32 noundef %12, i32 noundef %115) #25
  br label %117

117:                                              ; preds = %109, %113
  %118 = load ptr, ptr %66, align 8, !tbaa !45
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %65, !llvm.loop !216

120:                                              ; preds = %117, %43
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #26
  br label %121

121:                                              ; preds = %120, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @interp_weights_uv_v2_calc(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 !PGOFuncName !217 {
  %5 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #26
  %6 = call float @closest_to_line_v2(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2, ptr noundef %3) #24
  store float %6, ptr %0, align 4, !tbaa !85
  %7 = call fastcc float @len_v2v2(ptr noundef nonnull %5, ptr noundef %1) #25
  %8 = call fastcc float @len_v2v2(ptr noundef %2, ptr noundef %3) #25
  %9 = fdiv float %7, %8
  %10 = call fastcc float @line_point_side_v2(ptr noundef %2, ptr noundef %3, ptr noundef %1) #25
  %11 = fcmp olt float %10, 0.000000e+00
  %12 = fneg float %9
  %13 = select i1 %11, float %12, float %9
  %14 = getelementptr inbounds float, ptr %0, i64 1
  store float %13, ptr %14, align 4, !tbaa !85
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #26
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @interp_weights_uv_v2_apply(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #7 !PGOFuncName !218 {
  %5 = alloca [2 x float], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #26
  %6 = load <2 x float>, ptr %3, align 4, !tbaa !85
  %7 = load <2 x float>, ptr %2, align 4, !tbaa !85
  %8 = fsub <2 x float> %6, %7
  store <2 x float> %8, ptr %5, align 8, !tbaa !85
  %9 = load float, ptr %0, align 4, !tbaa !85
  call fastcc void @madd_v2_v2v2fl(ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %5, float noundef %9) #25
  %10 = extractelement <2 x float> %8, i64 1
  %11 = fneg float %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !85
  %14 = load float, ptr %1, align 4, !tbaa !85
  %15 = tail call float @llvm.fmuladd.f32(float %11, float %13, float %14)
  store float %15, ptr %1, align 4, !tbaa !85
  %16 = load float, ptr %12, align 4, !tbaa !85
  %17 = getelementptr inbounds float, ptr %1, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !85
  %19 = extractelement <2 x float> %8, i64 0
  %20 = tail call float @llvm.fmuladd.f32(float %19, float %16, float %18)
  store float %20, ptr %17, align 4, !tbaa !85
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mask_layer_shape_changed_remove(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = tail call i32 @BKE_mask_layer_shape_totvert(ptr noundef %0) #25
  %5 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = icmp eq ptr %6, null
  br i1 %7, label %53, label %8

8:                                                ; preds = %3
  %9 = icmp sgt i32 %1, 0
  %10 = zext nneg i32 %1 to i64
  %11 = shl nuw nsw i64 %10, 5
  %12 = shl nsw i32 %1, 3
  %13 = sext i32 %12 to i64
  %14 = add nsw i32 %2, %1
  %15 = shl nsw i32 %14, 3
  %16 = sext i32 %15 to i64
  %17 = sext i32 %4 to i64
  %18 = shl nsw i64 %17, 5
  br label %19

19:                                               ; preds = %8, %50
  %20 = phi ptr [ %6, %8 ], [ %51, %50 ]
  %21 = getelementptr inbounds %struct.MaskLayerShape, ptr %20, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !64
  %23 = sub nsw i32 %22, %2
  %24 = icmp eq i32 %4, %23
  br i1 %24, label %25, label %46

25:                                               ; preds = %19
  store i32 %4, ptr %21, align 8, !tbaa !64
  %26 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %27 = tail call ptr %26(i64 noundef %18, ptr noundef nonnull @__func__.BKE_mask_layer_shape_changed_remove) #24
  br i1 %9, label %28, label %31

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.MaskLayerShape, ptr %20, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !62
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %27, ptr align 4 %30, i64 %11, i1 false)
  br label %31

31:                                               ; preds = %28, %25
  %32 = load i32, ptr %21, align 8, !tbaa !64
  %33 = icmp eq i32 %32, %1
  br i1 %33, label %42, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds float, ptr %27, i64 %13
  %36 = getelementptr inbounds %struct.MaskLayerShape, ptr %20, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !62
  %38 = getelementptr inbounds float, ptr %37, i64 %16
  %39 = sub nsw i32 %32, %1
  %40 = sext i32 %39 to i64
  %41 = shl nsw i64 %40, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %35, ptr align 4 %38, i64 %41, i1 false)
  br label %42

42:                                               ; preds = %34, %31
  %43 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %44 = getelementptr inbounds %struct.MaskLayerShape, ptr %20, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !62
  tail call void %43(ptr noundef %45) #24
  store ptr %27, ptr %44, align 8, !tbaa !62
  br label %50

46:                                               ; preds = %19
  %47 = getelementptr inbounds %struct.MaskLayerShape, ptr %20, i64 0, i32 4
  %48 = load i32, ptr %47, align 4, !tbaa !66
  %49 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef nonnull @__func__.BKE_mask_layer_shape_changed_remove, i32 noundef %23, i32 noundef %4, i32 noundef %48) #25
  br label %50

50:                                               ; preds = %42, %46
  %51 = load ptr, ptr %20, align 8, !tbaa !45
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %19, !llvm.loop !219

53:                                               ; preds = %50, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @BKE_mask_get_duration(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Mask, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 4, !tbaa !117
  %4 = getelementptr inbounds %struct.Mask, ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !116
  %6 = sub nsw i32 %3, %5
  %7 = tail call fastcc i32 @max_ii(i32 noundef %6) #25
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @max_ii(i32 noundef %0) unnamed_addr #19 !PGOFuncName !220 {
  %2 = tail call i32 @llvm.smax.i32(i32 %0, i32 1)
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mask_clipboard_free() local_unnamed_addr #1 {
  tail call fastcc void @mask_clipboard_free_ex(i8 noundef zeroext 1) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mask_clipboard_free_ex(i8 noundef zeroext %0) unnamed_addr #1 !PGOFuncName !221 {
  tail call void @BKE_mask_spline_free_list(ptr noundef nonnull @mask_clipboard) #25
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull @mask_clipboard) #25
  %2 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @mask_clipboard, i64 0, i32 1), align 8, !tbaa !222
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = icmp eq i8 %0, 0
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  br i1 %5, label %8, label %7

7:                                                ; preds = %4
  tail call void @BLI_ghash_free(ptr noundef nonnull %2, ptr noundef null, ptr noundef %6) #24
  br label %9

8:                                                ; preds = %4
  tail call void @BLI_ghash_clear(ptr noundef nonnull %2, ptr noundef null, ptr noundef %6) #24
  br label %9

9:                                                ; preds = %7, %8, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mask_clipboard_copy_from_layer(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 13
  %3 = load i8, ptr %2, align 1, !tbaa !58
  %4 = and i8 %3, 2
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %61

6:                                                ; preds = %1
  tail call fastcc void @mask_clipboard_free_ex(i8 noundef zeroext 0) #25
  %7 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @mask_clipboard, i64 0, i32 1), align 8, !tbaa !222
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = tail call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @.str.10) #24
  store ptr %10, ptr getelementptr inbounds (%struct.anon, ptr @mask_clipboard, i64 0, i32 1), align 8, !tbaa !222
  br label %11

11:                                               ; preds = %9, %6
  %12 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !45
  %14 = icmp eq ptr %13, null
  br i1 %14, label %61, label %15

15:                                               ; preds = %11, %58
  %16 = phi ptr [ %59, %58 ], [ %13, %11 ]
  %17 = getelementptr inbounds %struct.MaskSpline, ptr %16, i64 0, i32 2
  %18 = load i16, ptr %17, align 8, !tbaa !42
  %19 = and i16 %18, 1
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %58, label %21

21:                                               ; preds = %15
  %22 = tail call ptr @BKE_mask_spline_copy(ptr noundef nonnull %16) #25
  %23 = getelementptr inbounds %struct.MaskSpline, ptr %22, i64 0, i32 5
  %24 = load i32, ptr %23, align 4, !tbaa !34
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %57

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.MaskSpline, ptr %22, i64 0, i32 6
  br label %28

28:                                               ; preds = %26, %52
  %29 = phi i64 [ 0, %26 ], [ %53, %52 ]
  %30 = load ptr, ptr %27, align 8, !tbaa !44
  %31 = getelementptr inbounds %struct.MaskSplinePoint, ptr %30, i64 %29, i32 4, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !224
  %33 = icmp eq ptr %32, null
  br i1 %33, label %52, label %34

34:                                               ; preds = %28
  %35 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @mask_clipboard, i64 0, i32 1), align 8, !tbaa !222
  %36 = tail call ptr @BLI_ghash_lookup(ptr noundef %35, ptr noundef nonnull %32) #24
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %52

38:                                               ; preds = %34
  %39 = load ptr, ptr %31, align 8, !tbaa !224
  %40 = getelementptr inbounds %struct.ID, ptr %39, i64 0, i32 4
  %41 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %40) #27
  %42 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %43 = shl i64 %41, 32
  %44 = add i64 %43, 4294967296
  %45 = ashr exact i64 %44, 32
  %46 = tail call ptr %42(i64 noundef %45, ptr noundef nonnull @.str.11) #24
  %47 = load ptr, ptr %31, align 8, !tbaa !224
  %48 = getelementptr inbounds %struct.ID, ptr %47, i64 0, i32 4
  %49 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %46, ptr noundef nonnull dereferenceable(1) %48) #24
  %50 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @mask_clipboard, i64 0, i32 1), align 8, !tbaa !222
  %51 = load ptr, ptr %31, align 8, !tbaa !224
  tail call void @BLI_ghash_insert(ptr noundef %50, ptr noundef %51, ptr noundef %46) #24
  br label %52

52:                                               ; preds = %34, %38, %28
  %53 = add nuw nsw i64 %29, 1
  %54 = load i32, ptr %23, align 4, !tbaa !34
  %55 = sext i32 %54 to i64
  %56 = icmp slt i64 %53, %55
  br i1 %56, label %28, label %57, !llvm.loop !225

57:                                               ; preds = %52, %21
  tail call void @BLI_addtail(ptr noundef nonnull @mask_clipboard, ptr noundef nonnull %22) #24
  br label %58

58:                                               ; preds = %15, %57
  %59 = load ptr, ptr %16, align 8, !tbaa !45
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %15, !llvm.loop !226

61:                                               ; preds = %58, %11, %1
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_ghash_ptr_new(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #20

; Function Attrs: optsize
declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @BKE_mask_clipboard_is_empty() local_unnamed_addr #12 {
  %1 = tail call fastcc zeroext i8 @BLI_listbase_is_empty() #25
  ret i8 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty() unnamed_addr #21 !PGOFuncName !227 {
  %1 = load ptr, ptr @mask_clipboard, align 8, !tbaa !123
  %2 = icmp eq ptr %1, null
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mask_clipboard_paste_to_layer(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = load ptr, ptr @mask_clipboard, align 8, !tbaa !45
  %4 = icmp eq ptr %3, null
  br i1 %4, label %38, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.MaskLayer, ptr %1, i64 0, i32 3
  br label %7

7:                                                ; preds = %5, %35
  %8 = phi ptr [ %3, %5 ], [ %36, %35 ]
  %9 = tail call ptr @BKE_mask_spline_copy(ptr noundef nonnull %8) #25
  %10 = getelementptr inbounds %struct.MaskSpline, ptr %9, i64 0, i32 5
  %11 = load i32, ptr %10, align 4, !tbaa !34
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %35

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.MaskSpline, ptr %9, i64 0, i32 6
  br label %15

15:                                               ; preds = %13, %30
  %16 = phi i32 [ %11, %13 ], [ %31, %30 ]
  %17 = phi i64 [ 0, %13 ], [ %32, %30 ]
  %18 = load ptr, ptr %14, align 8, !tbaa !44
  %19 = getelementptr inbounds %struct.MaskSplinePoint, ptr %18, i64 %17, i32 4, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !224
  %21 = icmp eq ptr %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %15
  %23 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @mask_clipboard, i64 0, i32 1), align 8, !tbaa !222
  %24 = tail call ptr @BLI_ghash_lookup(ptr noundef %23, ptr noundef nonnull %20) #24
  %25 = load i16, ptr %24, align 2, !tbaa !70
  %26 = tail call ptr @which_libbase(ptr noundef %0, i16 noundef signext %25) #24
  %27 = getelementptr inbounds i8, ptr %24, i64 2
  %28 = tail call ptr @BLI_findstring(ptr noundef %26, ptr noundef nonnull %27, i32 noundef 34) #24
  store ptr %28, ptr %19, align 8, !tbaa !224
  %29 = load i32, ptr %10, align 4, !tbaa !34
  br label %30

30:                                               ; preds = %22, %15
  %31 = phi i32 [ %29, %22 ], [ %16, %15 ]
  %32 = add nuw nsw i64 %17, 1
  %33 = sext i32 %31 to i64
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %15, label %35, !llvm.loop !228

35:                                               ; preds = %30, %7
  tail call void @BLI_addtail(ptr noundef nonnull %6, ptr noundef nonnull %9) #24
  %36 = load ptr, ptr %8, align 8, !tbaa !45
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %7, !llvm.loop !229

38:                                               ; preds = %35, %2
  ret void
}

; Function Attrs: optsize
declare ptr @which_libbase(ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_findstring(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #22

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #11 !PGOFuncName !230 {
  %3 = tail call fastcc float @dot_v2v2(ptr noundef %1, ptr noundef %1) #25
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #24
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v2_v2fl(ptr noundef %0, ptr noundef %1, float noundef %7) #25
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v2(ptr noundef %0) #25
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v2_v2fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #7 !PGOFuncName !231 {
  %4 = load float, ptr %1, align 4, !tbaa !85
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !85
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !85
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !85
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_libblock_alloc(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_nurb_handle_calc(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #7 !PGOFuncName !232 {
  %4 = load float, ptr %1, align 4, !tbaa !85
  %5 = load float, ptr %2, align 4, !tbaa !85
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !85
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !85
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !85
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !85
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !85
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !85
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !85
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3(ptr nocapture noundef readonly %0) unnamed_addr #11 !PGOFuncName !233 {
  %2 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %0) #25
  %3 = tail call float @sqrtf(float noundef %2) #24
  ret float %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !234 {
  %3 = load float, ptr %0, align 4, !tbaa !85
  %4 = load float, ptr %1, align 4, !tbaa !85
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !85
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !85
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !85
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !85
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: optsize
declare void @mul_m3_v2(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare float @closest_to_line_v2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @line_point_side_v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !235 {
  %4 = load float, ptr %0, align 4, !tbaa !85
  %5 = load float, ptr %2, align 4, !tbaa !85
  %6 = fsub float %4, %5
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !85
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !85
  %11 = fsub float %8, %10
  %12 = load float, ptr %1, align 4, !tbaa !85
  %13 = fsub float %12, %5
  %14 = getelementptr inbounds float, ptr %0, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !85
  %16 = fsub float %15, %10
  %17 = fneg float %13
  %18 = fmul float %16, %17
  %19 = tail call float @llvm.fmuladd.f32(float %6, float %11, float %18)
  ret float %19
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v2_v2v2fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) unnamed_addr #7 !PGOFuncName !236 {
  %5 = load float, ptr %1, align 4, !tbaa !85
  %6 = load float, ptr %2, align 4, !tbaa !85
  %7 = tail call float @llvm.fmuladd.f32(float %6, float %3, float %5)
  store float %7, ptr %0, align 4, !tbaa !85
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !85
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !85
  %12 = tail call float @llvm.fmuladd.f32(float %11, float %3, float %9)
  %13 = getelementptr inbounds float, ptr %0, i64 1
  store float %12, ptr %13, align 4, !tbaa !85
  ret void
}

; Function Attrs: optsize
declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_ghash_clear(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #23

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nounwind optsize }
attributes #25 = { optsize }
attributes #26 = { nounwind }
attributes #27 = { nounwind optsize willreturn memory(read) }

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
!57 = !{!52, !37, i64 133}
!58 = !{!52, !37, i64 143}
!59 = distinct !{!59, !60}
!60 = !{!"llvm.loop.mustprogress"}
!61 = !{!52, !36, i64 96}
!62 = !{!63, !36, i64 16}
!63 = !{!"MaskLayerShape", !36, i64 0, !36, i64 8, !36, i64 16, !40, i64 24, !40, i64 28, !37, i64 32, !37, i64 33}
!64 = !{!63, !40, i64 24}
!65 = !{!63, !37, i64 32}
!66 = !{!63, !40, i64 28}
!67 = !{!63, !36, i64 0}
!68 = distinct !{!68, !60}
!69 = !{i64 0, i64 8, !45, i64 8, i64 8, !45, i64 16, i64 2, !70, i64 18, i64 1, !46, i64 19, i64 1, !46, i64 20, i64 4, !71, i64 24, i64 8, !45, i64 32, i64 4, !71, i64 36, i64 4, !71, i64 40, i64 8, !45, i64 48, i64 64, !46, i64 112, i64 64, !46, i64 176, i64 8, !46, i64 184, i64 32, !46, i64 216, i64 8, !45}
!70 = !{!39, !39, i64 0}
!71 = !{!40, !40, i64 0}
!72 = distinct !{!72, !60}
!73 = !{!35, !37, i64 19}
!74 = !{!41, !40, i64 0}
!75 = distinct !{!75, !60}
!76 = !{!77, !40, i64 76}
!77 = !{!"MaskSplinePoint", !78, i64 0, !40, i64 72, !40, i64 76, !36, i64 80, !41, i64 88}
!78 = !{!"BezTriple", !37, i64 0, !53, i64 36, !53, i64 40, !53, i64 44, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !37, i64 52, !37, i64 53, !37, i64 54, !37, i64 55, !53, i64 56, !53, i64 60, !53, i64 64, !37, i64 68}
!79 = !{!77, !37, i64 51}
!80 = !{!77, !37, i64 53}
!81 = !{!77, !37, i64 49}
!82 = !{!77, !37, i64 50}
!83 = !{!77, !36, i64 80}
!84 = !{i64 0, i64 4, !85, i64 4, i64 4, !85, i64 8, i64 4, !71}
!85 = !{!53, !53, i64 0}
!86 = distinct !{!86, !60}
!87 = !{!88, !53, i64 0}
!88 = !{!"MaskSplinePointUW", !53, i64 0, !53, i64 4, !40, i64 8}
!89 = distinct !{!89, !60}
!90 = !{!"mask.c:copy_v2_v2"}
!91 = !{i64 0, i64 36, !46, i64 36, i64 4, !85, i64 40, i64 4, !85, i64 44, i64 4, !85, i64 48, i64 1, !46, i64 49, i64 1, !46, i64 50, i64 1, !46, i64 51, i64 1, !46, i64 52, i64 1, !46, i64 53, i64 1, !46, i64 54, i64 1, !46, i64 55, i64 1, !46, i64 56, i64 4, !85, i64 60, i64 4, !85, i64 64, i64 4, !85, i64 68, i64 4, !46, i64 72, i64 4, !71, i64 76, i64 4, !71, i64 80, i64 8, !45, i64 88, i64 4, !71, i64 92, i64 4, !71, i64 96, i64 8, !45, i64 104, i64 64, !46, i64 168, i64 64, !46, i64 232, i64 8, !46, i64 240, i64 32, !46}
!92 = distinct !{!92, !60}
!93 = distinct !{!93, !60}
!94 = !{i64 0, i64 32, !46}
!95 = distinct !{!95, !60}
!96 = distinct !{!96, !60}
!97 = !{!"mask.c:sub_v2_v2v2"}
!98 = !{!"mask.c:dot_v2v2"}
!99 = !{!"mask.c:len_squared_v2"}
!100 = !{!78, !37, i64 49}
!101 = !{!78, !37, i64 50}
!102 = !{!"mask.c:len_v2"}
!103 = !{!"mask.c:mul_v2_fl"}
!104 = !{!"mask.c:add_v2_v2v2"}
!105 = !{!"mask.c:copy_v3_v3"}
!106 = !{!"mask.c:orthogonal_direction_get"}
!107 = !{!"mask.c:normalize_v2"}
!108 = !{!78, !53, i64 40}
!109 = !{!"mask.c:mask_point_interp_weight"}
!110 = !{!88, !53, i64 4}
!111 = distinct !{!111, !60}
!112 = distinct !{!112, !60}
!113 = !{!88, !40, i64 8}
!114 = !{!77, !37, i64 52}
!115 = distinct !{!115, !60}
!116 = !{!48, !40, i64 152}
!117 = !{!48, !40, i64 156}
!118 = !{!"mask.c:mask_alloc"}
!119 = !{!48, !39, i64 98}
!120 = !{!48, !36, i64 120}
!121 = !{!48, !40, i64 100}
!122 = !{!"mask.c:BLI_listbase_clear"}
!123 = !{!50, !36, i64 0}
!124 = !{!35, !36, i64 0}
!125 = distinct !{!125, !60}
!126 = !{!"mask.c:mask_spline_points_copy"}
!127 = distinct !{!127, !60}
!128 = distinct !{!128, !60}
!129 = distinct !{!129, !60}
!130 = !{!52, !36, i64 0}
!131 = distinct !{!131, !60}
!132 = distinct !{!132, !60}
!133 = distinct !{!133, !60}
!134 = !{!135, !40, i64 32}
!135 = !{!"SpaceLink", !36, i64 0, !36, i64 8, !50, i64 16, !40, i64 32, !53, i64 36, !37, i64 40}
!136 = !{!137, !36, i64 392}
!137 = !{!"SpaceClip", !36, i64 0, !36, i64 8, !50, i64 16, !40, i64 32, !53, i64 36, !53, i64 40, !53, i64 44, !53, i64 48, !53, i64 52, !138, i64 56, !36, i64 64, !139, i64 72, !40, i64 208, !39, i64 212, !39, i64 214, !40, i64 216, !37, i64 220, !53, i64 228, !53, i64 232, !40, i64 236, !37, i64 240, !37, i64 304, !40, i64 368, !39, i64 372, !39, i64 374, !40, i64 376, !40, i64 380, !37, i64 384, !141, i64 392}
!138 = !{!"MovieClipUser", !40, i64 0, !39, i64 4, !39, i64 6}
!139 = !{!"MovieClipScopes", !39, i64 0, !39, i64 2, !40, i64 4, !40, i64 8, !40, i64 12, !140, i64 16, !36, i64 80, !36, i64 88, !37, i64 96, !39, i64 104, !39, i64 106, !40, i64 108, !36, i64 112, !36, i64 120, !37, i64 128}
!140 = !{!"MovieTrackingMarker", !37, i64 0, !37, i64 8, !37, i64 40, !37, i64 48, !40, i64 56, !40, i64 60}
!141 = !{!"MaskSpaceInfo", !36, i64 0, !37, i64 8, !37, i64 9, !37, i64 10, !37, i64 11}
!142 = !{!143, !36, i64 10568}
!143 = !{!"SpaceImage", !36, i64 0, !36, i64 8, !50, i64 16, !40, i64 32, !40, i64 36, !36, i64 40, !144, i64 48, !36, i64 88, !145, i64 96, !146, i64 5360, !36, i64 10520, !37, i64 10528, !53, i64 10536, !53, i64 10540, !53, i64 10544, !53, i64 10548, !53, i64 10552, !37, i64 10556, !37, i64 10557, !39, i64 10558, !39, i64 10560, !39, i64 10562, !37, i64 10564, !37, i64 10565, !37, i64 10566, !37, i64 10567, !141, i64 10568}
!144 = !{!"ImageUser", !36, i64 0, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !37, i64 24, !37, i64 25, !37, i64 26, !37, i64 27, !39, i64 28, !39, i64 30, !39, i64 32, !39, i64 34, !40, i64 36}
!145 = !{!"Scopes", !40, i64 0, !40, i64 4, !40, i64 8, !53, i64 12, !40, i64 16, !53, i64 20, !53, i64 24, !40, i64 28, !53, i64 32, !40, i64 36, !37, i64 40, !146, i64 64, !36, i64 5224, !36, i64 5232, !36, i64 5240, !36, i64 5248, !40, i64 5256, !40, i64 5260}
!146 = !{!"Histogram", !40, i64 0, !40, i64 4, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 3080, !37, i64 4104, !53, i64 5128, !53, i64 5132, !39, i64 5136, !39, i64 5138, !40, i64 5140, !37, i64 5144}
!147 = distinct !{!147, !60}
!148 = !{!149, !36, i64 256}
!149 = !{!"Scene", !49, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !50, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !40, i64 232, !40, i64 236, !40, i64 240, !39, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !150, i64 280, !159, i64 4264, !50, i64 4296, !50, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !39, i64 4376, !39, i64 4378, !40, i64 4380, !50, i64 4384, !160, i64 4400, !161, i64 4416, !164, i64 4600, !36, i64 4608, !165, i64 4616, !36, i64 4640, !166, i64 4648, !166, i64 4656, !152, i64 4664, !153, i64 4824, !167, i64 4888, !36, i64 4952}
!150 = !{!"RenderData", !151, i64 0, !36, i64 248, !36, i64 256, !154, i64 264, !155, i64 328, !40, i64 400, !40, i64 404, !40, i64 408, !53, i64 412, !40, i64 416, !40, i64 420, !40, i64 424, !40, i64 428, !39, i64 432, !39, i64 434, !53, i64 436, !53, i64 440, !53, i64 444, !53, i64 448, !53, i64 452, !39, i64 456, !39, i64 458, !39, i64 460, !39, i64 462, !39, i64 464, !39, i64 466, !40, i64 468, !39, i64 472, !39, i64 474, !39, i64 476, !39, i64 478, !39, i64 480, !39, i64 482, !40, i64 484, !40, i64 488, !39, i64 492, !39, i64 494, !40, i64 496, !40, i64 500, !39, i64 504, !39, i64 506, !39, i64 508, !39, i64 510, !39, i64 512, !37, i64 514, !37, i64 515, !40, i64 516, !40, i64 520, !40, i64 524, !39, i64 528, !39, i64 530, !39, i64 532, !39, i64 534, !39, i64 536, !39, i64 538, !39, i64 540, !39, i64 542, !156, i64 544, !156, i64 560, !157, i64 576, !50, i64 592, !39, i64 608, !39, i64 610, !53, i64 612, !53, i64 616, !53, i64 620, !53, i64 624, !40, i64 628, !53, i64 632, !53, i64 636, !53, i64 640, !53, i64 644, !39, i64 648, !39, i64 650, !39, i64 652, !39, i64 654, !39, i64 656, !39, i64 658, !53, i64 660, !53, i64 664, !39, i64 668, !39, i64 670, !53, i64 672, !53, i64 676, !37, i64 680, !40, i64 1704, !39, i64 1708, !39, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !40, i64 2520, !39, i64 2524, !39, i64 2526, !53, i64 2528, !53, i64 2532, !39, i64 2536, !39, i64 2538, !53, i64 2540, !39, i64 2544, !39, i64 2546, !40, i64 2548, !39, i64 2552, !39, i64 2554, !39, i64 2556, !39, i64 2558, !53, i64 2560, !53, i64 2564, !36, i64 2568, !40, i64 2576, !53, i64 2580, !37, i64 2584, !158, i64 2616, !40, i64 3976, !40, i64 3980}
!151 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !39, i64 8, !39, i64 10, !53, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !152, i64 24, !153, i64 184}
!152 = !{!"ColorManagedViewSettings", !40, i64 0, !40, i64 4, !37, i64 8, !37, i64 72, !53, i64 136, !53, i64 140, !36, i64 144, !36, i64 152}
!153 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!154 = !{!"QuicktimeCodecSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !39, i64 48, !39, i64 50, !40, i64 52, !40, i64 56, !40, i64 60}
!155 = !{!"FFMpegCodecData", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !53, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !36, i64 64}
!156 = !{!"rctf", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12}
!157 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!158 = !{!"BakeData", !151, i64 0, !37, i64 248, !39, i64 1272, !39, i64 1274, !39, i64 1276, !39, i64 1278, !53, i64 1280, !53, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!159 = !{!"AudioData", !40, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !40, i64 16, !39, i64 20, !39, i64 22, !53, i64 24, !53, i64 28}
!160 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!161 = !{!"GameData", !160, i64 0, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !39, i64 32, !37, i64 34, !162, i64 40, !39, i64 64, !39, i64 66, !53, i64 68, !163, i64 72, !53, i64 128, !53, i64 132, !40, i64 136, !39, i64 140, !39, i64 142, !39, i64 144, !39, i64 146, !39, i64 148, !39, i64 150, !39, i64 152, !39, i64 154, !39, i64 156, !39, i64 158, !39, i64 160, !39, i64 162, !53, i64 164, !53, i64 168, !53, i64 172, !53, i64 176, !53, i64 180}
!162 = !{!"GameDome", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !53, i64 8, !53, i64 12, !36, i64 16}
!163 = !{!"RecastData", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !53, i64 16, !53, i64 20, !53, i64 24, !53, i64 28, !53, i64 32, !53, i64 36, !40, i64 40, !53, i64 44, !53, i64 48, !39, i64 52, !39, i64 54}
!164 = !{!"UnitSettings", !53, i64 0, !37, i64 4, !37, i64 5, !39, i64 6}
!165 = !{!"PhysicsSettings", !37, i64 0, !40, i64 12, !40, i64 16, !40, i64 20}
!166 = !{!"long", !37, i64 0}
!167 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!168 = !{!169, !40, i64 24}
!169 = !{!"SeqIterator", !36, i64 0, !40, i64 8, !40, i64 12, !36, i64 16, !40, i64 24}
!170 = !{!169, !36, i64 16}
!171 = !{!172, !36, i64 208}
!172 = !{!"Sequence", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !40, i64 96, !40, i64 100, !40, i64 104, !40, i64 108, !40, i64 112, !40, i64 116, !40, i64 120, !40, i64 124, !40, i64 128, !40, i64 132, !40, i64 136, !40, i64 140, !53, i64 144, !53, i64 148, !53, i64 152, !39, i64 156, !39, i64 158, !40, i64 160, !40, i64 164, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !53, i64 224, !53, i64 228, !36, i64 232, !36, i64 240, !36, i64 248, !50, i64 256, !36, i64 272, !36, i64 280, !53, i64 288, !53, i64 292, !53, i64 296, !53, i64 300, !36, i64 304, !40, i64 312, !40, i64 316, !40, i64 320, !53, i64 324, !40, i64 328, !37, i64 332, !37, i64 333, !50, i64 336}
!173 = distinct !{!173, !60}
!174 = distinct !{!174, !60}
!175 = distinct !{!175, !60}
!176 = !{!41, !36, i64 8}
!177 = !{!41, !40, i64 4}
!178 = !{!"mask.c:mask_spline_point_prev"}
!179 = !{!"mask.c:mask_spline_point_next"}
!180 = !{!"mask.c:zero_v2"}
!181 = !{!"mask.c:mask_calc_point_handle"}
!182 = !{!77, !53, i64 40}
!183 = !{!"mask.c:len_v2v2"}
!184 = !{!"mask.c:len_v3v3"}
!185 = distinct !{!185, !60}
!186 = distinct !{!186, !60}
!187 = distinct !{!187, !60}
!188 = !{i32 0, i32 3}
!189 = distinct !{!189, !60}
!190 = distinct !{!190, !60}
!191 = distinct !{!191, !60}
!192 = distinct !{!192, !60}
!193 = !{!63, !36, i64 8}
!194 = !{!52, !36, i64 104}
!195 = distinct !{!195, !60}
!196 = distinct !{!196, !60}
!197 = distinct !{!197, !60}
!198 = !{!78, !53, i64 44}
!199 = distinct !{!199, !60}
!200 = !{!"mask.c:mask_evaluate_apply_point_parent"}
!201 = distinct !{!201, !60}
!202 = distinct !{!202, !60}
!203 = !{!149, !40, i64 680}
!204 = distinct !{!204, !60}
!205 = distinct !{!205, !60}
!206 = distinct !{!206, !60}
!207 = !{!"mask.c:mask_layer_shape_from_mask_point"}
!208 = !{!"mask.c:mask_layer_shape_to_mask_point"}
!209 = !{!"mask.c:interp_v2_v2v2_flfl"}
!210 = distinct !{!210, !60}
!211 = !{!"mask.c:mask_layer_shape_sort_cb"}
!212 = distinct !{!212, !60}
!213 = !{i8 0, i8 2}
!214 = distinct !{!214, !60}
!215 = distinct !{!215, !60}
!216 = distinct !{!216, !60}
!217 = !{!"mask.c:interp_weights_uv_v2_calc"}
!218 = !{!"mask.c:interp_weights_uv_v2_apply"}
!219 = distinct !{!219, !60}
!220 = !{!"mask.c:max_ii"}
!221 = !{!"mask.c:mask_clipboard_free_ex"}
!222 = !{!223, !36, i64 16}
!223 = !{!"", !50, i64 0, !36, i64 16}
!224 = !{!77, !36, i64 96}
!225 = distinct !{!225, !60}
!226 = distinct !{!226, !60}
!227 = !{!"mask.c:BLI_listbase_is_empty"}
!228 = distinct !{!228, !60}
!229 = distinct !{!229, !60}
!230 = !{!"mask.c:normalize_v2_v2"}
!231 = !{!"mask.c:mul_v2_v2fl"}
!232 = !{!"mask.c:sub_v3_v3v3"}
!233 = !{!"mask.c:len_v3"}
!234 = !{!"mask.c:dot_v3v3"}
!235 = !{!"mask.c:line_point_side_v2"}
!236 = !{!"mask.c:madd_v2_v2v2fl"}
