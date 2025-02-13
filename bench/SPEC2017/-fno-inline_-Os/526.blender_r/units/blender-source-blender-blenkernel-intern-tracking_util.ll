; ModuleID = 'blender/source/blender/blenkernel/intern/tracking_util.c'
source_filename = "blender/source/blender/blenkernel/intern/tracking_util.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.TracksMap = type { [64 x i8], i8, i32, i32, ptr, ptr, ptr, i32, i32 }
%struct.MovieTrackingTrack = type { ptr, ptr, [64 x i8], [2 x float], [2 x float], [2 x float], [2 x float], [2 x float], i32, i32, ptr, [3 x float], float, i32, i32, i32, [3 x float], i16, i16, i16, i16, i32, float, ptr, float, float }
%struct.ListBase = type { ptr, ptr }
%struct.MovieTracking = type { %struct.MovieTrackingSettings, %struct.MovieTrackingCamera, %struct.ListBase, %struct.ListBase, %struct.MovieTrackingReconstruction, %struct.MovieTrackingStabilization, ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.MovieTrackingDopesheet }
%struct.MovieTrackingSettings = type { i32, i16, i16, float, i16, i16, i16, i16, i16, i16, float, i16, i16, i32, i32, i32, i16, i16, float, i32, i32, float, float, i32 }
%struct.MovieTrackingCamera = type { ptr, i16, i16, float, float, float, i16, i16, [2 x float], float, float, float, float, float }
%struct.MovieTrackingReconstruction = type { i32, float, i32, i32, ptr }
%struct.MovieTrackingStabilization = type { i32, i32, i32, float, ptr, float, float, float, i32, i32, float }
%struct.MovieTrackingDopesheet = type { i32, i16, i16, %struct.ListBase, %struct.ListBase, i32, i32 }
%struct.MovieTrackingObject = type { ptr, ptr, [64 x i8], i32, float, %struct.ListBase, %struct.ListBase, %struct.MovieTrackingReconstruction, i32, i32 }
%struct.MovieTrackingMarker = type { [2 x float], [4 x [2 x float]], [2 x float], [2 x float], i32, i32 }
%struct.libmv_CameraIntrinsicsOptions = type { i32, i32, i32, double, double, double, double, double, double, double, double, double, double }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [13 x i8] c"TrackingsMap\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"TrackingsMap tracks\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"TracksMap customdata\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"TracksMap hash\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"Track\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @tracks_map_new(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %6 = tail call ptr %5(i64 noundef 112, ptr noundef nonnull @.str) #8
  %7 = tail call ptr @BLI_strncpy(ptr noundef %6, ptr noundef %0, i64 noundef 64) #8
  %8 = getelementptr inbounds %struct.TracksMap, ptr %6, i64 0, i32 1
  store i8 %1, ptr %8, align 8, !tbaa !38
  %9 = getelementptr inbounds %struct.TracksMap, ptr %6, i64 0, i32 2
  store i32 %2, ptr %9, align 4, !tbaa !41
  %10 = getelementptr inbounds %struct.TracksMap, ptr %6, i64 0, i32 3
  store i32 %3, ptr %10, align 8, !tbaa !42
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %12 = sext i32 %2 to i64
  %13 = mul nsw i64 %12, 208
  %14 = tail call ptr %11(i64 noundef %13, ptr noundef nonnull @.str.1) #8
  %15 = getelementptr inbounds %struct.TracksMap, ptr %6, i64 0, i32 5
  store ptr %14, ptr %15, align 8, !tbaa !43
  %16 = icmp eq i32 %3, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %4
  %18 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %19 = mul nsw i32 %3, %2
  %20 = sext i32 %19 to i64
  %21 = tail call ptr %18(i64 noundef %20, ptr noundef nonnull @.str.2) #8
  %22 = getelementptr inbounds %struct.TracksMap, ptr %6, i64 0, i32 4
  store ptr %21, ptr %22, align 8, !tbaa !44
  br label %23

23:                                               ; preds = %17, %4
  %24 = tail call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @.str.3) #8
  %25 = getelementptr inbounds %struct.TracksMap, ptr %6, i64 0, i32 6
  store ptr %24, ptr %25, align 8, !tbaa !45
  %26 = getelementptr inbounds %struct.TracksMap, ptr %6, i64 0, i32 8
  tail call void @BLI_spin_init(ptr noundef nonnull %26) #8
  ret ptr %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_ghash_ptr_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_spin_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @tracks_map_get_size(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.TracksMap, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !41
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @tracks_map_get_indexed_element(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #4 {
  %5 = getelementptr inbounds %struct.TracksMap, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !43
  %7 = sext i32 %1 to i64
  %8 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %6, i64 %7
  store ptr %8, ptr %2, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.TracksMap, ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !44
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.TracksMap, ptr %0, i64 0, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !42
  %15 = mul nsw i32 %14, %1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, ptr %10, i64 %16
  store ptr %17, ptr %3, align 8, !tbaa !34
  br label %18

18:                                               ; preds = %12, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @tracks_map_insert(ptr nocapture noundef %0, ptr noundef %1, ptr noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca { ptr, ptr, [64 x i8], [2 x float], [2 x float], [2 x float], [2 x float], [2 x float], i32, i32 }, align 8
  %5 = alloca { [3 x float], float, i32, i32, i32, [3 x float], i16, i16, i16, i16, i32, float, ptr, float, float }, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4)
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %4, ptr noundef nonnull align 8 dereferenceable(128) %1, i64 128, i1 false), !tbaa.struct !46
  %6 = getelementptr inbounds i8, ptr %1, i64 128
  %7 = load ptr, ptr %6, align 8, !tbaa.struct !53
  %8 = getelementptr inbounds i8, ptr %1, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %5, ptr noundef nonnull align 8 dereferenceable(72) %8, i64 72, i1 false), !tbaa.struct !54
  %9 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %10 = tail call ptr %9(ptr noundef %7) #8
  %11 = getelementptr inbounds %struct.TracksMap, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !43
  %13 = getelementptr inbounds %struct.TracksMap, ptr %0, i64 0, i32 7
  %14 = load i32, ptr %13, align 8, !tbaa !55
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %12, i64 %15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %16, ptr noundef nonnull align 8 dereferenceable(128) %4, i64 128, i1 false), !tbaa.struct !46
  %17 = getelementptr inbounds i8, ptr %16, i64 128
  store ptr %10, ptr %17, align 8, !tbaa.struct !53
  %18 = getelementptr inbounds i8, ptr %16, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %18, ptr noundef nonnull align 8 dereferenceable(72) %5, i64 72, i1 false), !tbaa.struct !54
  %19 = icmp eq ptr %2, null
  br i1 %19, label %30, label %20

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.TracksMap, ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !44
  %23 = load i32, ptr %13, align 8, !tbaa !55
  %24 = getelementptr inbounds %struct.TracksMap, ptr %0, i64 0, i32 3
  %25 = load i32, ptr %24, align 8, !tbaa !42
  %26 = mul nsw i32 %25, %23
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, ptr %22, i64 %27
  %29 = sext i32 %25 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %28, ptr nonnull align 1 %2, i64 %29, i1 false)
  br label %30

30:                                               ; preds = %20, %3
  %31 = getelementptr inbounds %struct.TracksMap, ptr %0, i64 0, i32 6
  %32 = load ptr, ptr %31, align 8, !tbaa !45
  %33 = load ptr, ptr %11, align 8, !tbaa !43
  %34 = load i32, ptr %13, align 8, !tbaa !55
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %33, i64 %35
  tail call void @BLI_ghash_insert(ptr noundef %32, ptr noundef %36, ptr noundef nonnull %1) #8
  %37 = load i32, ptr %13, align 8, !tbaa !55
  %38 = add nsw i32 %37, 1
  store i32 %38, ptr %13, align 8, !tbaa !55
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: optsize
declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @tracks_map_merge(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %5 = getelementptr inbounds %struct.TracksMap, ptr %0, i64 0, i32 1
  %6 = load i8, ptr %5, align 8, !tbaa !38
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.MovieTracking, ptr %1, i64 0, i32 2
  br label %18

10:                                               ; preds = %2
  %11 = tail call ptr @BKE_tracking_object_get_named(ptr noundef %1, ptr noundef nonnull %0) #8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = tail call ptr @BKE_tracking_object_add(ptr noundef %1, ptr noundef nonnull %0) #8
  br label %15

15:                                               ; preds = %13, %10
  %16 = phi ptr [ %11, %10 ], [ %14, %13 ]
  %17 = getelementptr inbounds %struct.MovieTrackingObject, ptr %16, i64 0, i32 5
  br label %18

18:                                               ; preds = %15, %8
  %19 = phi ptr [ %9, %8 ], [ %17, %15 ]
  %20 = getelementptr inbounds %struct.TracksMap, ptr %0, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !41
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %60

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.TracksMap, ptr %0, i64 0, i32 5
  %25 = getelementptr inbounds %struct.TracksMap, ptr %0, i64 0, i32 6
  %26 = getelementptr inbounds %struct.TracksMap, ptr %0, i64 0, i32 8
  br label %27

27:                                               ; preds = %23, %55
  %28 = phi i64 [ 0, %23 ], [ %56, %55 ]
  %29 = load ptr, ptr %24, align 8, !tbaa !43
  %30 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %29, i64 %28
  %31 = load ptr, ptr %25, align 8, !tbaa !45
  %32 = call ptr @BLI_ghash_lookup(ptr noundef %31, ptr noundef %30) #8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %50, label %34

34:                                               ; preds = %27
  %35 = call i32 @BLI_findindex(ptr noundef nonnull %19, ptr noundef nonnull %32) #8
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %50, label %37

37:                                               ; preds = %34
  call void @BLI_remlink(ptr noundef nonnull %19, ptr noundef nonnull %32) #8
  call void @BLI_spin_lock(ptr noundef nonnull %26) #8
  %38 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %32, i64 0, i32 13
  %39 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %29, i64 %28, i32 13
  %40 = load <2 x i32>, ptr %38, align 8, !tbaa !48
  store <2 x i32> %40, ptr %39, align 8, !tbaa !48
  %41 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %32, i64 0, i32 15
  %42 = load i32, ptr %41, align 8, !tbaa !56
  %43 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %29, i64 %28, i32 15
  store i32 %42, ptr %43, align 8, !tbaa !56
  %44 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %45 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %32, i64 0, i32 10
  %46 = load ptr, ptr %45, align 8, !tbaa !58
  call void %44(ptr noundef %46) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %32, ptr noundef nonnull align 8 dereferenceable(208) %30, i64 208, i1 false), !tbaa.struct !46
  %47 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %48 = load ptr, ptr %45, align 8, !tbaa !58
  %49 = call ptr %47(ptr noundef %48) #8
  store ptr %49, ptr %45, align 8, !tbaa !58
  call void @BLI_spin_unlock(ptr noundef nonnull %26) #8
  call void @BLI_addtail(ptr noundef nonnull %3, ptr noundef nonnull %32) #8
  br label %55

50:                                               ; preds = %27, %34
  %51 = call ptr @BKE_tracking_track_duplicate(ptr noundef %30) #8
  %52 = load ptr, ptr %25, align 8, !tbaa !45
  %53 = call zeroext i8 @BLI_ghash_remove(ptr noundef %52, ptr noundef %30, ptr noundef null, ptr noundef null) #8
  %54 = load ptr, ptr %25, align 8, !tbaa !45
  call void @BLI_ghash_insert(ptr noundef %54, ptr noundef %30, ptr noundef %51) #8
  call void @BLI_addtail(ptr noundef nonnull %3, ptr noundef %51) #8
  br label %55

55:                                               ; preds = %37, %50
  %56 = add nuw nsw i64 %28, 1
  %57 = load i32, ptr %20, align 4, !tbaa !41
  %58 = sext i32 %57 to i64
  %59 = icmp slt i64 %56, %58
  br i1 %59, label %27, label %60, !llvm.loop !59

60:                                               ; preds = %55, %18
  %61 = load ptr, ptr %19, align 8, !tbaa !61
  %62 = icmp eq ptr %61, null
  br i1 %62, label %67, label %63

63:                                               ; preds = %60, %63
  %64 = phi ptr [ %65, %63 ], [ %61, %60 ]
  %65 = load ptr, ptr %64, align 8, !tbaa !63
  call void @BLI_addtail(ptr noundef nonnull %4, ptr noundef nonnull %64) #8
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %63, !llvm.loop !64

67:                                               ; preds = %63, %60
  %68 = load ptr, ptr %3, align 8, !tbaa !61
  %69 = icmp eq ptr %68, null
  br i1 %69, label %74, label %70

70:                                               ; preds = %67, %70
  %71 = phi ptr [ %72, %70 ], [ %68, %67 ]
  %72 = load ptr, ptr %71, align 8, !tbaa !63
  call void @BLI_remlink(ptr noundef nonnull %3, ptr noundef nonnull %71) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %71, i8 0, i64 16, i1 false)
  call void @BLI_addtail(ptr noundef nonnull %4, ptr noundef nonnull %71) #8
  call void @BLI_uniquename(ptr noundef nonnull %4, ptr noundef nonnull %71, ptr noundef nonnull @.str.4, i8 noundef zeroext 46, i32 noundef 16, i32 noundef 64) #8
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %70, !llvm.loop !65

74:                                               ; preds = %70, %67
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !66
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: optsize
declare ptr @BKE_tracking_object_get_named(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_tracking_object_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_spin_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_spin_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_tracking_track_duplicate(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BLI_ghash_remove(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_uniquename(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @tracks_map_free(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.TracksMap, ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  tail call void @BLI_ghash_free(ptr noundef %4, ptr noundef null, ptr noundef null) #8
  %5 = getelementptr inbounds %struct.TracksMap, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !41
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %31

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.TracksMap, ptr %0, i64 0, i32 4
  %10 = icmp ne ptr %1, null
  %11 = getelementptr inbounds %struct.TracksMap, ptr %0, i64 0, i32 3
  %12 = getelementptr inbounds %struct.TracksMap, ptr %0, i64 0, i32 5
  br label %13

13:                                               ; preds = %8, %24
  %14 = phi i64 [ 0, %8 ], [ %27, %24 ]
  %15 = load ptr, ptr %9, align 8, !tbaa !44
  %16 = icmp ne ptr %15, null
  %17 = and i1 %10, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load i32, ptr %11, align 8, !tbaa !42
  %20 = trunc i64 %14 to i32
  %21 = mul nsw i32 %19, %20
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, ptr %15, i64 %22
  tail call void %1(ptr noundef nonnull %23) #8
  br label %24

24:                                               ; preds = %18, %13
  %25 = load ptr, ptr %12, align 8, !tbaa !43
  %26 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %25, i64 %14
  tail call void @BKE_tracking_track_free(ptr noundef %26) #8
  %27 = add nuw nsw i64 %14, 1
  %28 = load i32, ptr %5, align 4, !tbaa !41
  %29 = sext i32 %28 to i64
  %30 = icmp slt i64 %27, %29
  br i1 %30, label %13, label %31, !llvm.loop !67

31:                                               ; preds = %24, %2
  %32 = getelementptr inbounds %struct.TracksMap, ptr %0, i64 0, i32 4
  %33 = load ptr, ptr %32, align 8, !tbaa !44
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %36(ptr noundef nonnull %33) #8
  br label %37

37:                                               ; preds = %35, %31
  %38 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %39 = getelementptr inbounds %struct.TracksMap, ptr %0, i64 0, i32 5
  %40 = load ptr, ptr %39, align 8, !tbaa !43
  tail call void %38(ptr noundef %40) #8
  %41 = getelementptr inbounds %struct.TracksMap, ptr %0, i64 0, i32 8
  tail call void @BLI_spin_end(ptr noundef nonnull %41) #8
  %42 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %42(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: optsize
declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_tracking_track_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_spin_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @tracking_get_search_origin_frame_pixel(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3) local_unnamed_addr #4 {
  %5 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 2
  tail call fastcc void @marker_unified_to_frame_pixel_coordinates(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5, ptr noundef %3) #10
  %6 = load <2 x float>, ptr %3, align 4, !tbaa !49
  %7 = fptosi <2 x float> %6 to <2 x i32>
  %8 = sitofp <2 x i32> %7 to <2 x float>
  store <2 x float> %8, ptr %3, align 4, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @marker_unified_to_frame_pixel_coordinates(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef %4) unnamed_addr #4 !PGOFuncName !68 {
  tail call fastcc void @marker_to_frame_unified(ptr noundef %2, ptr noundef %3, ptr noundef %4) #10
  tail call fastcc void @unified_to_pixel(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %4) #10
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local void @tracking_get_marker_coords_for_tracking(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #7 {
  %6 = alloca [2 x float], align 8
  %7 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #9
  %8 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  br label %9

9:                                                ; preds = %5, %9
  %10 = phi i64 [ 0, %5 ], [ %20, %9 ]
  %11 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 1, i64 %10
  call fastcc void @marker_unified_to_search_pixel(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %11, ptr noundef nonnull %7) #10
  %12 = load float, ptr %7, align 4, !tbaa !49
  %13 = fadd float %12, -5.000000e-01
  %14 = fpext float %13 to double
  %15 = getelementptr inbounds double, ptr %3, i64 %10
  store double %14, ptr %15, align 8, !tbaa !69
  %16 = load float, ptr %8, align 4, !tbaa !49
  %17 = fadd float %16, -5.000000e-01
  %18 = fpext float %17 to double
  %19 = getelementptr inbounds double, ptr %4, i64 %10
  store double %18, ptr %19, align 8, !tbaa !69
  %20 = add nuw nsw i64 %10, 1
  %21 = icmp eq i64 %20, 4
  br i1 %21, label %22, label %9, !llvm.loop !71

22:                                               ; preds = %9
  store <2 x float> zeroinitializer, ptr %6, align 8, !tbaa !49
  call fastcc void @marker_unified_to_search_pixel(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %6, ptr noundef nonnull %7) #10
  %23 = load float, ptr %7, align 4, !tbaa !49
  %24 = fadd float %23, -5.000000e-01
  %25 = fpext float %24 to double
  %26 = getelementptr inbounds double, ptr %3, i64 4
  store double %25, ptr %26, align 8, !tbaa !69
  %27 = load float, ptr %8, align 4, !tbaa !49
  %28 = fadd float %27, -5.000000e-01
  %29 = fpext float %28 to double
  %30 = getelementptr inbounds double, ptr %4, i64 4
  store double %29, ptr %30, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @marker_unified_to_search_pixel(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef writeonly %4) unnamed_addr #4 !PGOFuncName !72 {
  %6 = alloca [2 x float], align 4
  %7 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #9
  call fastcc void @marker_unified_to_frame_pixel_coordinates(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6) #10
  call void @tracking_get_search_origin_frame_pixel(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %7) #10
  call fastcc void @sub_v2_v2v2(ptr noundef %4, ptr noundef nonnull %6, ptr noundef nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local void @tracking_set_marker_coords_from_tracking(i32 noundef %0, i32 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) local_unnamed_addr #7 {
  %6 = alloca [2 x float], align 8
  %7 = alloca [2 x float], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #9
  br label %8

8:                                                ; preds = %5, %8
  %9 = phi i64 [ 0, %5 ], [ %19, %8 ]
  %10 = getelementptr inbounds double, ptr %3, i64 %9
  %11 = load double, ptr %10, align 8, !tbaa !69
  %12 = getelementptr inbounds double, ptr %4, i64 %9
  %13 = load double, ptr %12, align 8, !tbaa !69
  %14 = insertelement <2 x double> poison, double %11, i64 0
  %15 = insertelement <2 x double> %14, double %13, i64 1
  %16 = fadd <2 x double> %15, <double 5.000000e-01, double 5.000000e-01>
  %17 = fptrunc <2 x double> %16 to <2 x float>
  store <2 x float> %17, ptr %7, align 8, !tbaa !49
  %18 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 1, i64 %9
  call fastcc void @search_pixel_to_marker_unified(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %7, ptr noundef nonnull %18) #10
  %19 = add nuw nsw i64 %9, 1
  %20 = icmp eq i64 %19, 4
  br i1 %20, label %21, label %8, !llvm.loop !73

21:                                               ; preds = %8
  %22 = getelementptr inbounds double, ptr %3, i64 4
  %23 = load double, ptr %22, align 8, !tbaa !69
  %24 = getelementptr inbounds double, ptr %4, i64 4
  %25 = load double, ptr %24, align 8, !tbaa !69
  %26 = insertelement <2 x double> poison, double %23, i64 0
  %27 = insertelement <2 x double> %26, double %25, i64 1
  %28 = fadd <2 x double> %27, <double 5.000000e-01, double 5.000000e-01>
  %29 = fptrunc <2 x double> %28 to <2 x float>
  store <2 x float> %29, ptr %7, align 8, !tbaa !49
  call fastcc void @search_pixel_to_marker_unified(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %7, ptr noundef nonnull %6) #10
  %30 = load <2 x float>, ptr %6, align 8, !tbaa !49
  %31 = shufflevector <2 x float> %30, <2 x float> poison, <2 x i32> zeroinitializer
  %32 = shufflevector <2 x float> %30, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  br label %33

33:                                               ; preds = %33, %21
  %34 = phi i64 [ 0, %21 ], [ %43, %33 ]
  %35 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 1, i64 %34
  %36 = load <4 x float>, ptr %35, align 4, !tbaa !49
  %37 = shufflevector <4 x float> %36, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %38 = shufflevector <4 x float> %36, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %39 = fsub <2 x float> %37, %31
  %40 = fsub <2 x float> %38, %32
  %41 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 1, i64 %34
  %42 = shufflevector <2 x float> %39, <2 x float> %40, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %42, ptr %41, align 4, !tbaa !49
  %43 = add nuw i64 %34, 2
  %44 = icmp eq i64 %43, 4
  br i1 %44, label %45, label %33, !llvm.loop !74

45:                                               ; preds = %33
  %46 = load <2 x float>, ptr %2, align 4, !tbaa !49
  %47 = fadd <2 x float> %30, %46
  store <2 x float> %47, ptr %2, align 4, !tbaa !49
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @search_pixel_to_marker_unified(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef writeonly %4) unnamed_addr #4 !PGOFuncName !77 {
  %6 = alloca [2 x float], align 4
  %7 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #9
  call void @tracking_get_search_origin_frame_pixel(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %7) #10
  call fastcc void @add_v2_v2v2(ptr noundef nonnull %6, ptr noundef %3, ptr noundef nonnull %7) #10
  call fastcc void @pixel_to_unified(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %6, ptr noundef nonnull %6) #10
  call fastcc void @sub_v2_v2v2(ptr noundef %4, ptr noundef nonnull %6, ptr noundef %2) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @tracking_marker_insert_disabled(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca %struct.MovieTrackingMarker, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %5, ptr noundef nonnull align 4 dereferenceable(64) %1, i64 64, i1 false), !tbaa.struct !78
  %6 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %5, i64 0, i32 5
  %7 = load i32, ptr %6, align 4, !tbaa !79
  %8 = and i32 %7, -4
  %9 = or disjoint i32 %8, 1
  store i32 %9, ptr %6, align 4, !tbaa !79
  %10 = icmp eq i8 %2, 0
  %11 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %5, i64 0, i32 4
  %12 = load i32, ptr %11, align 4, !tbaa !81
  %13 = select i1 %10, i32 1, i32 -1
  %14 = add nsw i32 %12, %13
  store i32 %14, ptr %11, align 4, !tbaa !81
  %15 = icmp eq i8 %3, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = tail call zeroext i8 @BKE_tracking_track_has_marker_at_frame(ptr noundef %0, i32 noundef %14) #8
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16, %4
  %20 = call ptr @BKE_tracking_marker_insert(ptr noundef %0, ptr noundef nonnull %5) #8
  br label %21

21:                                               ; preds = %19, %16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #9
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BKE_tracking_track_has_marker_at_frame(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_tracking_marker_insert(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @tracking_cameraIntrinscisOptionsFromTracking(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #4 {
  %5 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1, i32 4
  %6 = load float, ptr %5, align 8, !tbaa !82
  %7 = fdiv float 1.000000e+00, %6
  %8 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1, i32 5
  %9 = load float, ptr %8, align 4, !tbaa !89
  %10 = getelementptr inbounds %struct.libmv_CameraIntrinsicsOptions, ptr %3, i64 0, i32 3
  %11 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1, i32 8
  %12 = load float, ptr %11, align 4, !tbaa !49
  %13 = insertelement <2 x float> poison, float %9, i64 0
  %14 = insertelement <2 x float> %13, float %12, i64 1
  %15 = fpext <2 x float> %14 to <2 x double>
  store <2 x double> %15, ptr %10, align 8, !tbaa !69
  %16 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1, i32 8, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !49
  %18 = fmul float %7, %17
  %19 = fpext float %18 to double
  %20 = getelementptr inbounds %struct.libmv_CameraIntrinsicsOptions, ptr %3, i64 0, i32 5
  store double %19, ptr %20, align 8, !tbaa !90
  %21 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1, i32 1
  %22 = load i16, ptr %21, align 8, !tbaa !92
  switch i16 %22, label %38 [
    i16 0, label %23
    i16 1, label %33
  ]

23:                                               ; preds = %4
  store i32 0, ptr %3, align 8, !tbaa !93
  %24 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1, i32 9
  %25 = getelementptr inbounds %struct.libmv_CameraIntrinsicsOptions, ptr %3, i64 0, i32 6
  %26 = load <2 x float>, ptr %24, align 4, !tbaa !49
  %27 = fpext <2 x float> %26 to <2 x double>
  store <2 x double> %27, ptr %25, align 8, !tbaa !69
  %28 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1, i32 11
  %29 = load float, ptr %28, align 4, !tbaa !94
  %30 = fpext float %29 to double
  %31 = getelementptr inbounds %struct.libmv_CameraIntrinsicsOptions, ptr %3, i64 0, i32 8
  store double %30, ptr %31, align 8, !tbaa !95
  %32 = getelementptr inbounds %struct.libmv_CameraIntrinsicsOptions, ptr %3, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %32, i8 0, i64 16, i1 false)
  br label %38

33:                                               ; preds = %4
  store i32 1, ptr %3, align 8, !tbaa !93
  %34 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1, i32 12
  %35 = getelementptr inbounds %struct.libmv_CameraIntrinsicsOptions, ptr %3, i64 0, i32 11
  %36 = load <2 x float>, ptr %34, align 8, !tbaa !49
  %37 = fpext <2 x float> %36 to <2 x double>
  store <2 x double> %37, ptr %35, align 8, !tbaa !69
  br label %38

38:                                               ; preds = %4, %33, %23
  %39 = getelementptr inbounds %struct.libmv_CameraIntrinsicsOptions, ptr %3, i64 0, i32 1
  store i32 %1, ptr %39, align 4, !tbaa !96
  %40 = sitofp i32 %2 to float
  %41 = fmul float %7, %40
  %42 = fptosi float %41 to i32
  %43 = getelementptr inbounds %struct.libmv_CameraIntrinsicsOptions, ptr %3, i64 0, i32 2
  store i32 %42, ptr %43, align 8, !tbaa !97
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @tracking_trackingCameraFromIntrinscisOptions(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1, i32 4
  %4 = load float, ptr %3, align 8, !tbaa !82
  %5 = fdiv float 1.000000e+00, %4
  %6 = getelementptr inbounds %struct.libmv_CameraIntrinsicsOptions, ptr %1, i64 0, i32 3
  %7 = load double, ptr %6, align 8, !tbaa !98
  %8 = fptrunc double %7 to float
  %9 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1, i32 5
  store float %8, ptr %9, align 4, !tbaa !89
  %10 = getelementptr inbounds %struct.libmv_CameraIntrinsicsOptions, ptr %1, i64 0, i32 4
  %11 = load double, ptr %10, align 8, !tbaa !99
  %12 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1, i32 8
  %13 = getelementptr inbounds %struct.libmv_CameraIntrinsicsOptions, ptr %1, i64 0, i32 5
  %14 = load double, ptr %13, align 8, !tbaa !90
  %15 = fpext float %5 to double
  %16 = fdiv double %14, %15
  %17 = insertelement <2 x double> poison, double %11, i64 0
  %18 = insertelement <2 x double> %17, double %16, i64 1
  %19 = fptrunc <2 x double> %18 to <2 x float>
  store <2 x float> %19, ptr %12, align 4, !tbaa !49
  %20 = load i32, ptr %1, align 8, !tbaa !93
  switch i32 %20, label %37 [
    i32 0, label %21
    i32 1, label %31
  ]

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1, i32 1
  store i16 0, ptr %22, align 8, !tbaa !92
  %23 = getelementptr inbounds %struct.libmv_CameraIntrinsicsOptions, ptr %1, i64 0, i32 6
  %24 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1, i32 9
  %25 = load <2 x double>, ptr %23, align 8, !tbaa !69
  %26 = fptrunc <2 x double> %25 to <2 x float>
  store <2 x float> %26, ptr %24, align 4, !tbaa !49
  %27 = getelementptr inbounds %struct.libmv_CameraIntrinsicsOptions, ptr %1, i64 0, i32 8
  %28 = load double, ptr %27, align 8, !tbaa !95
  %29 = fptrunc double %28 to float
  %30 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1, i32 11
  store float %29, ptr %30, align 4, !tbaa !94
  br label %37

31:                                               ; preds = %2
  %32 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1, i32 1
  store i16 1, ptr %32, align 8, !tbaa !92
  %33 = getelementptr inbounds %struct.libmv_CameraIntrinsicsOptions, ptr %1, i64 0, i32 11
  %34 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1, i32 12
  %35 = load <2 x double>, ptr %33, align 8, !tbaa !69
  %36 = fptrunc <2 x double> %35 to <2 x float>
  store <2 x float> %36, ptr %34, align 8, !tbaa !49
  br label %37

37:                                               ; preds = %2, %31, %21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @marker_to_frame_unified(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #4 !PGOFuncName !100 {
  %4 = load float, ptr %1, align 4, !tbaa !49
  %5 = load float, ptr %0, align 4, !tbaa !49
  %6 = fadd float %4, %5
  store float %6, ptr %2, align 4, !tbaa !49
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !49
  %9 = getelementptr inbounds [2 x float], ptr %0, i64 0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !49
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %2, i64 1
  store float %11, ptr %12, align 4, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @unified_to_pixel(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #4 !PGOFuncName !101 {
  %5 = load float, ptr %2, align 4, !tbaa !49
  %6 = sitofp i32 %0 to float
  %7 = fmul float %5, %6
  store float %7, ptr %3, align 4, !tbaa !49
  %8 = getelementptr inbounds float, ptr %2, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !49
  %10 = sitofp i32 %1 to float
  %11 = fmul float %9, %10
  %12 = getelementptr inbounds float, ptr %3, i64 1
  store float %11, ptr %12, align 4, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #4 !PGOFuncName !102 {
  %4 = load float, ptr %1, align 4, !tbaa !49
  %5 = load float, ptr %2, align 4, !tbaa !49
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !49
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !49
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !49
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #4 !PGOFuncName !103 {
  %4 = load float, ptr %1, align 4, !tbaa !49
  %5 = load float, ptr %2, align 4, !tbaa !49
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !49
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !49
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !49
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @pixel_to_unified(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #4 !PGOFuncName !104 {
  %5 = load float, ptr %2, align 4, !tbaa !49
  %6 = sitofp i32 %0 to float
  %7 = fdiv float %5, %6
  store float %7, ptr %3, align 4, !tbaa !49
  %8 = getelementptr inbounds float, ptr %2, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !49
  %10 = sitofp i32 %1 to float
  %11 = fdiv float %9, %10
  %12 = getelementptr inbounds float, ptr %3, i64 1
  store float %11, ptr %12, align 4, !tbaa !49
  ret void
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind optsize }
attributes #9 = { nounwind }
attributes #10 = { optsize }

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
!38 = !{!39, !36, i64 64}
!39 = !{!"TracksMap", !36, i64 0, !36, i64 64, !40, i64 68, !40, i64 72, !35, i64 80, !35, i64 88, !35, i64 96, !40, i64 104, !40, i64 108}
!40 = !{!"int", !36, i64 0}
!41 = !{!39, !40, i64 68}
!42 = !{!39, !40, i64 72}
!43 = !{!39, !35, i64 88}
!44 = !{!39, !35, i64 80}
!45 = !{!39, !35, i64 96}
!46 = !{i64 0, i64 8, !34, i64 8, i64 8, !34, i64 16, i64 64, !47, i64 80, i64 8, !47, i64 88, i64 8, !47, i64 96, i64 8, !47, i64 104, i64 8, !47, i64 112, i64 8, !47, i64 120, i64 4, !48, i64 124, i64 4, !48, i64 128, i64 8, !34, i64 136, i64 12, !47, i64 148, i64 4, !49, i64 152, i64 4, !48, i64 156, i64 4, !48, i64 160, i64 4, !48, i64 164, i64 12, !47, i64 176, i64 2, !51, i64 178, i64 2, !51, i64 180, i64 2, !51, i64 182, i64 2, !51, i64 184, i64 4, !48, i64 188, i64 4, !49, i64 192, i64 8, !34, i64 200, i64 4, !49, i64 204, i64 4, !49}
!47 = !{!36, !36, i64 0}
!48 = !{!40, !40, i64 0}
!49 = !{!50, !50, i64 0}
!50 = !{!"float", !36, i64 0}
!51 = !{!52, !52, i64 0}
!52 = !{!"short", !36, i64 0}
!53 = !{i64 0, i64 8, !34, i64 8, i64 12, !47, i64 20, i64 4, !49, i64 24, i64 4, !48, i64 28, i64 4, !48, i64 32, i64 4, !48, i64 36, i64 12, !47, i64 48, i64 2, !51, i64 50, i64 2, !51, i64 52, i64 2, !51, i64 54, i64 2, !51, i64 56, i64 4, !48, i64 60, i64 4, !49, i64 64, i64 8, !34, i64 72, i64 4, !49, i64 76, i64 4, !49}
!54 = !{i64 0, i64 12, !47, i64 12, i64 4, !49, i64 16, i64 4, !48, i64 20, i64 4, !48, i64 24, i64 4, !48, i64 28, i64 12, !47, i64 40, i64 2, !51, i64 42, i64 2, !51, i64 44, i64 2, !51, i64 46, i64 2, !51, i64 48, i64 4, !48, i64 52, i64 4, !49, i64 56, i64 8, !34, i64 64, i64 4, !49, i64 68, i64 4, !49}
!55 = !{!39, !40, i64 104}
!56 = !{!57, !40, i64 160}
!57 = !{!"MovieTrackingTrack", !35, i64 0, !35, i64 8, !36, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !40, i64 120, !40, i64 124, !35, i64 128, !36, i64 136, !50, i64 148, !40, i64 152, !40, i64 156, !40, i64 160, !36, i64 164, !52, i64 176, !52, i64 178, !52, i64 180, !52, i64 182, !40, i64 184, !50, i64 188, !35, i64 192, !50, i64 200, !50, i64 204}
!58 = !{!57, !35, i64 128}
!59 = distinct !{!59, !60}
!60 = !{!"llvm.loop.mustprogress"}
!61 = !{!62, !35, i64 0}
!62 = !{!"ListBase", !35, i64 0, !35, i64 8}
!63 = !{!57, !35, i64 0}
!64 = distinct !{!64, !60}
!65 = distinct !{!65, !60}
!66 = !{i64 0, i64 8, !34, i64 8, i64 8, !34}
!67 = distinct !{!67, !60}
!68 = !{!"tracking_util.c:marker_unified_to_frame_pixel_coordinates"}
!69 = !{!70, !70, i64 0}
!70 = !{!"double", !36, i64 0}
!71 = distinct !{!71, !60}
!72 = !{!"tracking_util.c:marker_unified_to_search_pixel"}
!73 = distinct !{!73, !60}
!74 = distinct !{!74, !60, !75, !76}
!75 = !{!"llvm.loop.isvectorized", i32 1}
!76 = !{!"llvm.loop.unroll.runtime.disable"}
!77 = !{!"tracking_util.c:search_pixel_to_marker_unified"}
!78 = !{i64 0, i64 8, !47, i64 8, i64 32, !47, i64 40, i64 8, !47, i64 48, i64 8, !47, i64 56, i64 4, !48, i64 60, i64 4, !48}
!79 = !{!80, !40, i64 60}
!80 = !{!"MovieTrackingMarker", !36, i64 0, !36, i64 8, !36, i64 40, !36, i64 48, !40, i64 56, !40, i64 60}
!81 = !{!80, !40, i64 56}
!82 = !{!83, !50, i64 88}
!83 = !{!"MovieTracking", !84, i64 0, !85, i64 72, !62, i64 128, !62, i64 144, !86, i64 160, !87, i64 184, !35, i64 232, !35, i64 240, !62, i64 248, !40, i64 264, !40, i64 268, !35, i64 272, !88, i64 280}
!84 = !{!"MovieTrackingSettings", !40, i64 0, !52, i64 4, !52, i64 6, !50, i64 8, !52, i64 12, !52, i64 14, !52, i64 16, !52, i64 18, !52, i64 20, !52, i64 22, !50, i64 24, !52, i64 28, !52, i64 30, !40, i64 32, !40, i64 36, !40, i64 40, !52, i64 44, !52, i64 46, !50, i64 48, !40, i64 52, !40, i64 56, !50, i64 60, !50, i64 64, !40, i64 68}
!85 = !{!"MovieTrackingCamera", !35, i64 0, !52, i64 8, !52, i64 10, !50, i64 12, !50, i64 16, !50, i64 20, !52, i64 24, !52, i64 26, !36, i64 28, !50, i64 36, !50, i64 40, !50, i64 44, !50, i64 48, !50, i64 52}
!86 = !{!"MovieTrackingReconstruction", !40, i64 0, !50, i64 4, !40, i64 8, !40, i64 12, !35, i64 16}
!87 = !{!"MovieTrackingStabilization", !40, i64 0, !40, i64 4, !40, i64 8, !50, i64 12, !35, i64 16, !50, i64 24, !50, i64 28, !50, i64 32, !40, i64 36, !40, i64 40, !50, i64 44}
!88 = !{!"MovieTrackingDopesheet", !40, i64 0, !52, i64 4, !52, i64 6, !62, i64 8, !62, i64 24, !40, i64 40, !40, i64 44}
!89 = !{!85, !50, i64 20}
!90 = !{!91, !70, i64 32}
!91 = !{!"libmv_CameraIntrinsicsOptions", !40, i64 0, !40, i64 4, !40, i64 8, !70, i64 16, !70, i64 24, !70, i64 32, !70, i64 40, !70, i64 48, !70, i64 56, !70, i64 64, !70, i64 72, !70, i64 80, !70, i64 88}
!92 = !{!85, !52, i64 8}
!93 = !{!91, !40, i64 0}
!94 = !{!85, !50, i64 44}
!95 = !{!91, !70, i64 56}
!96 = !{!91, !40, i64 4}
!97 = !{!91, !40, i64 8}
!98 = !{!91, !70, i64 16}
!99 = !{!91, !70, i64 24}
!100 = !{!"tracking_util.c:marker_to_frame_unified"}
!101 = !{!"tracking_util.c:unified_to_pixel"}
!102 = !{!"tracking_util.c:sub_v2_v2v2"}
!103 = !{!"tracking_util.c:add_v2_v2v2"}
!104 = !{!"tracking_util.c:pixel_to_unified"}
