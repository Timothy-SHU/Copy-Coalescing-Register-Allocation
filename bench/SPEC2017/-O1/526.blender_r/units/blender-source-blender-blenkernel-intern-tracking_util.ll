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

; Function Attrs: nounwind uwtable
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

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @BLI_ghash_ptr_new(ptr noundef) local_unnamed_addr #2

declare void @BLI_spin_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @tracks_map_get_size(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.TracksMap, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !41
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
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

; Function Attrs: nounwind uwtable
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
  tail call void @BLI_ghash_insert(ptr noundef %32, ptr noundef %36, ptr noundef %1) #8
  %37 = load i32, ptr %13, align 8, !tbaa !55
  %38 = add nsw i32 %37, 1
  store i32 %38, ptr %13, align 8, !tbaa !55
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @tracks_map_merge(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %5 = getelementptr inbounds %struct.TracksMap, ptr %0, i64 0, i32 1
  %6 = load i8, ptr %5, align 8, !tbaa !38
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.MovieTracking, ptr %1, i64 0, i32 2
  br label %18

10:                                               ; preds = %2
  %11 = tail call ptr @BKE_tracking_object_get_named(ptr noundef %1, ptr noundef %0) #8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = tail call ptr @BKE_tracking_object_add(ptr noundef %1, ptr noundef %0) #8
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
  br i1 %22, label %23, label %63

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.TracksMap, ptr %0, i64 0, i32 5
  %25 = getelementptr inbounds %struct.TracksMap, ptr %0, i64 0, i32 6
  %26 = getelementptr inbounds %struct.TracksMap, ptr %0, i64 0, i32 8
  br label %27

27:                                               ; preds = %23, %58
  %28 = phi i64 [ 0, %23 ], [ %59, %58 ]
  %29 = load ptr, ptr %24, align 8, !tbaa !43
  %30 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %29, i64 %28
  %31 = load ptr, ptr %25, align 8, !tbaa !45
  %32 = call ptr @BLI_ghash_lookup(ptr noundef %31, ptr noundef %30) #8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %53, label %34

34:                                               ; preds = %27
  %35 = call i32 @BLI_findindex(ptr noundef nonnull %19, ptr noundef nonnull %32) #8
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %53, label %37

37:                                               ; preds = %34
  call void @BLI_remlink(ptr noundef nonnull %19, ptr noundef nonnull %32) #8
  call void @BLI_spin_lock(ptr noundef nonnull %26) #8
  %38 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %32, i64 0, i32 13
  %39 = load i32, ptr %38, align 8, !tbaa !56
  %40 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %29, i64 %28, i32 13
  store i32 %39, ptr %40, align 8, !tbaa !56
  %41 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %32, i64 0, i32 14
  %42 = load i32, ptr %41, align 4, !tbaa !58
  %43 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %29, i64 %28, i32 14
  store i32 %42, ptr %43, align 4, !tbaa !58
  %44 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %32, i64 0, i32 15
  %45 = load i32, ptr %44, align 8, !tbaa !59
  %46 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %29, i64 %28, i32 15
  store i32 %45, ptr %46, align 8, !tbaa !59
  %47 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %48 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %32, i64 0, i32 10
  %49 = load ptr, ptr %48, align 8, !tbaa !60
  call void %47(ptr noundef %49) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %32, ptr noundef nonnull align 8 dereferenceable(208) %30, i64 208, i1 false), !tbaa.struct !46
  %50 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %51 = load ptr, ptr %48, align 8, !tbaa !60
  %52 = call ptr %50(ptr noundef %51) #8
  store ptr %52, ptr %48, align 8, !tbaa !60
  call void @BLI_spin_unlock(ptr noundef nonnull %26) #8
  call void @BLI_addtail(ptr noundef nonnull %3, ptr noundef nonnull %32) #8
  br label %58

53:                                               ; preds = %27, %34
  %54 = call ptr @BKE_tracking_track_duplicate(ptr noundef %30) #8
  %55 = load ptr, ptr %25, align 8, !tbaa !45
  %56 = call zeroext i8 @BLI_ghash_remove(ptr noundef %55, ptr noundef %30, ptr noundef null, ptr noundef null) #8
  %57 = load ptr, ptr %25, align 8, !tbaa !45
  call void @BLI_ghash_insert(ptr noundef %57, ptr noundef %30, ptr noundef %54) #8
  call void @BLI_addtail(ptr noundef nonnull %3, ptr noundef %54) #8
  br label %58

58:                                               ; preds = %37, %53
  %59 = add nuw nsw i64 %28, 1
  %60 = load i32, ptr %20, align 4, !tbaa !41
  %61 = sext i32 %60 to i64
  %62 = icmp slt i64 %59, %61
  br i1 %62, label %27, label %63, !llvm.loop !61

63:                                               ; preds = %58, %18
  %64 = load ptr, ptr %19, align 8, !tbaa !64
  %65 = icmp eq ptr %64, null
  br i1 %65, label %70, label %66

66:                                               ; preds = %63, %66
  %67 = phi ptr [ %68, %66 ], [ %64, %63 ]
  %68 = load ptr, ptr %67, align 8, !tbaa !66
  call void @BLI_addtail(ptr noundef nonnull %4, ptr noundef nonnull %67) #8
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %66, !llvm.loop !67

70:                                               ; preds = %66, %63
  %71 = load ptr, ptr %3, align 8, !tbaa !64
  %72 = icmp eq ptr %71, null
  br i1 %72, label %77, label %73

73:                                               ; preds = %70, %73
  %74 = phi ptr [ %75, %73 ], [ %71, %70 ]
  %75 = load ptr, ptr %74, align 8, !tbaa !66
  call void @BLI_remlink(ptr noundef nonnull %3, ptr noundef nonnull %74) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %74, i8 0, i64 16, i1 false)
  call void @BLI_addtail(ptr noundef nonnull %4, ptr noundef nonnull %74) #8
  call void @BLI_uniquename(ptr noundef nonnull %4, ptr noundef nonnull %74, ptr noundef nonnull @.str.4, i8 noundef zeroext 46, i32 noundef 16, i32 noundef 64) #8
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %73, !llvm.loop !68

77:                                               ; preds = %73, %70
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !69
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

declare ptr @BKE_tracking_object_get_named(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_tracking_object_add(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_spin_lock(ptr noundef) local_unnamed_addr #2

declare void @BLI_spin_unlock(ptr noundef) local_unnamed_addr #2

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_tracking_track_duplicate(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BLI_ghash_remove(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_uniquename(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
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
  br i1 %30, label %13, label %31, !llvm.loop !70

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
  tail call void %42(ptr noundef %0) #8
  ret void
}

declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_tracking_track_free(ptr noundef) local_unnamed_addr #2

declare void @BLI_spin_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @tracking_get_search_origin_frame_pixel(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #4 {
  %5 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 2
  %6 = load float, ptr %5, align 4, !tbaa !49
  %7 = load float, ptr %2, align 4, !tbaa !49
  %8 = fadd float %6, %7
  store float %8, ptr %3, align 4, !tbaa !49
  %9 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !49
  %11 = getelementptr inbounds [2 x float], ptr %2, i64 0, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !49
  %13 = fadd float %10, %12
  %14 = getelementptr inbounds float, ptr %3, i64 1
  store float %13, ptr %14, align 4, !tbaa !49
  %15 = sitofp i32 %0 to float
  %16 = fmul float %8, %15
  store float %16, ptr %3, align 4, !tbaa !49
  %17 = sitofp i32 %1 to float
  %18 = fmul float %13, %17
  store float %18, ptr %14, align 4, !tbaa !49
  %19 = fptosi float %16 to i32
  %20 = sitofp i32 %19 to float
  store float %20, ptr %3, align 4, !tbaa !49
  %21 = fptosi float %18 to i32
  %22 = sitofp i32 %21 to float
  store float %22, ptr %14, align 4, !tbaa !49
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @tracking_get_marker_coords_for_tracking(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #7 {
  %6 = load float, ptr %2, align 4, !tbaa !49
  %7 = getelementptr inbounds [2 x float], ptr %2, i64 0, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !49
  %9 = sitofp i32 %0 to float
  %10 = sitofp i32 %1 to float
  %11 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 2
  %12 = load float, ptr %11, align 4, !tbaa !49
  %13 = fadd float %6, %12
  %14 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 2, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !49
  %16 = fadd float %8, %15
  %17 = fmul float %13, %9
  %18 = fmul float %16, %10
  %19 = fptosi float %17 to i32
  %20 = sitofp i32 %19 to float
  %21 = fptosi float %18 to i32
  %22 = sitofp i32 %21 to float
  br label %23

23:                                               ; preds = %5, %23
  %24 = phi i64 [ 0, %5 ], [ %41, %23 ]
  %25 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 1, i64 %24
  %26 = load float, ptr %25, align 4, !tbaa !49
  %27 = fadd float %26, %6
  %28 = getelementptr inbounds float, ptr %25, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !49
  %30 = fadd float %29, %8
  %31 = fmul float %27, %9
  %32 = fmul float %30, %10
  %33 = fsub float %31, %20
  %34 = fsub float %32, %22
  %35 = fadd float %33, -5.000000e-01
  %36 = fpext float %35 to double
  %37 = getelementptr inbounds double, ptr %3, i64 %24
  store double %36, ptr %37, align 8, !tbaa !71
  %38 = fadd float %34, -5.000000e-01
  %39 = fpext float %38 to double
  %40 = getelementptr inbounds double, ptr %4, i64 %24
  store double %39, ptr %40, align 8, !tbaa !71
  %41 = add nuw nsw i64 %24, 1
  %42 = icmp eq i64 %41, 4
  br i1 %42, label %43, label %23, !llvm.loop !73

43:                                               ; preds = %23
  %44 = load float, ptr %2, align 4, !tbaa !49
  %45 = fadd float %44, 0.000000e+00
  %46 = getelementptr inbounds [2 x float], ptr %2, i64 0, i64 1
  %47 = load float, ptr %46, align 4, !tbaa !49
  %48 = fadd float %47, 0.000000e+00
  %49 = sitofp i32 %0 to float
  %50 = fmul float %45, %49
  %51 = sitofp i32 %1 to float
  %52 = fmul float %48, %51
  %53 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 2
  %54 = load float, ptr %53, align 4, !tbaa !49
  %55 = fadd float %44, %54
  %56 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 2, i64 1
  %57 = load float, ptr %56, align 4, !tbaa !49
  %58 = fadd float %47, %57
  %59 = fmul float %55, %49
  %60 = fmul float %58, %51
  %61 = fptosi float %59 to i32
  %62 = sitofp i32 %61 to float
  %63 = fptosi float %60 to i32
  %64 = sitofp i32 %63 to float
  %65 = fsub float %50, %62
  %66 = fsub float %52, %64
  %67 = fadd float %65, -5.000000e-01
  %68 = fpext float %67 to double
  %69 = getelementptr inbounds double, ptr %3, i64 4
  store double %68, ptr %69, align 8, !tbaa !71
  %70 = fadd float %66, -5.000000e-01
  %71 = fpext float %70 to double
  %72 = getelementptr inbounds double, ptr %4, i64 4
  store double %71, ptr %72, align 8, !tbaa !71
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @tracking_set_marker_coords_from_tracking(i32 noundef %0, i32 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) local_unnamed_addr #7 {
  %6 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 2
  %7 = load float, ptr %2, align 4, !tbaa !49
  %8 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 2, i64 1
  %9 = getelementptr inbounds [2 x float], ptr %2, i64 0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !49
  %11 = sitofp i32 %0 to float
  %12 = sitofp i32 %1 to float
  br label %13

13:                                               ; preds = %5, %13
  %14 = phi i64 [ 0, %5 ], [ %41, %13 ]
  %15 = getelementptr inbounds double, ptr %3, i64 %14
  %16 = load double, ptr %15, align 8, !tbaa !71
  %17 = fadd double %16, 5.000000e-01
  %18 = fptrunc double %17 to float
  %19 = getelementptr inbounds double, ptr %4, i64 %14
  %20 = load double, ptr %19, align 8, !tbaa !71
  %21 = fadd double %20, 5.000000e-01
  %22 = fptrunc double %21 to float
  %23 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 1, i64 %14
  %24 = load float, ptr %6, align 4, !tbaa !49
  %25 = fadd float %24, %7
  %26 = load float, ptr %8, align 4, !tbaa !49
  %27 = fadd float %26, %10
  %28 = fmul float %25, %11
  %29 = fmul float %27, %12
  %30 = fptosi float %28 to i32
  %31 = sitofp i32 %30 to float
  %32 = fptosi float %29 to i32
  %33 = sitofp i32 %32 to float
  %34 = fadd float %18, %31
  %35 = fadd float %22, %33
  %36 = fdiv float %34, %11
  %37 = fdiv float %35, %12
  %38 = fsub float %36, %7
  store float %38, ptr %23, align 4, !tbaa !49
  %39 = fsub float %37, %10
  %40 = getelementptr inbounds float, ptr %23, i64 1
  store float %39, ptr %40, align 4, !tbaa !49
  %41 = add nuw nsw i64 %14, 1
  %42 = icmp eq i64 %41, 4
  br i1 %42, label %43, label %13, !llvm.loop !74

43:                                               ; preds = %13
  %44 = getelementptr inbounds double, ptr %3, i64 4
  %45 = load double, ptr %44, align 8, !tbaa !71
  %46 = fadd double %45, 5.000000e-01
  %47 = fptrunc double %46 to float
  %48 = getelementptr inbounds double, ptr %4, i64 4
  %49 = load double, ptr %48, align 8, !tbaa !71
  %50 = fadd double %49, 5.000000e-01
  %51 = fptrunc double %50 to float
  %52 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 2
  %53 = load float, ptr %52, align 4, !tbaa !49
  %54 = load float, ptr %2, align 4, !tbaa !49
  %55 = fadd float %53, %54
  %56 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 2, i64 1
  %57 = load float, ptr %56, align 4, !tbaa !49
  %58 = getelementptr inbounds [2 x float], ptr %2, i64 0, i64 1
  %59 = load float, ptr %58, align 4, !tbaa !49
  %60 = fadd float %57, %59
  %61 = sitofp i32 %0 to float
  %62 = fmul float %55, %61
  %63 = sitofp i32 %1 to float
  %64 = fmul float %60, %63
  %65 = fptosi float %62 to i32
  %66 = sitofp i32 %65 to float
  %67 = fptosi float %64 to i32
  %68 = sitofp i32 %67 to float
  %69 = fadd float %47, %66
  %70 = fadd float %51, %68
  %71 = fdiv float %69, %61
  %72 = fdiv float %70, %63
  %73 = fsub float %71, %54
  %74 = fsub float %72, %59
  br label %75

75:                                               ; preds = %43, %75
  %76 = phi i64 [ 0, %43 ], [ %83, %75 ]
  %77 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 1, i64 %76
  %78 = load float, ptr %77, align 4, !tbaa !49
  %79 = fsub float %78, %73
  store float %79, ptr %77, align 4, !tbaa !49
  %80 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2, i64 0, i32 1, i64 %76, i64 1
  %81 = load float, ptr %80, align 4, !tbaa !49
  %82 = fsub float %81, %74
  store float %82, ptr %80, align 4, !tbaa !49
  %83 = add nuw nsw i64 %76, 1
  %84 = icmp eq i64 %83, 4
  br i1 %84, label %85, label %75, !llvm.loop !75

85:                                               ; preds = %75
  %86 = fadd float %54, %73
  store float %86, ptr %2, align 4, !tbaa !49
  %87 = fadd float %59, %74
  store float %87, ptr %58, align 4, !tbaa !49
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @tracking_marker_insert_disabled(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca %struct.MovieTrackingMarker, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %5, ptr noundef nonnull align 4 dereferenceable(64) %1, i64 64, i1 false), !tbaa.struct !76
  %6 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %5, i64 0, i32 5
  %7 = load i32, ptr %6, align 4, !tbaa !77
  %8 = and i32 %7, -4
  %9 = or disjoint i32 %8, 1
  store i32 %9, ptr %6, align 4, !tbaa !77
  %10 = icmp eq i8 %2, 0
  %11 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %5, i64 0, i32 4
  %12 = load i32, ptr %11, align 4, !tbaa !79
  %13 = select i1 %10, i32 1, i32 -1
  %14 = add nsw i32 %12, %13
  store i32 %14, ptr %11, align 4, !tbaa !79
  %15 = icmp eq i8 %3, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %5, i64 0, i32 4
  %18 = load i32, ptr %17, align 4, !tbaa !79
  %19 = tail call zeroext i8 @BKE_tracking_track_has_marker_at_frame(ptr noundef %0, i32 noundef %18) #8
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16, %4
  %22 = call ptr @BKE_tracking_marker_insert(ptr noundef %0, ptr noundef nonnull %5) #8
  br label %23

23:                                               ; preds = %21, %16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #8
  ret void
}

declare zeroext i8 @BKE_tracking_track_has_marker_at_frame(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BKE_tracking_marker_insert(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @tracking_cameraIntrinscisOptionsFromTracking(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #4 {
  %5 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1, i32 4
  %6 = load float, ptr %5, align 8, !tbaa !80
  %7 = fdiv float 1.000000e+00, %6
  %8 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1, i32 5
  %9 = load float, ptr %8, align 4, !tbaa !87
  %10 = fpext float %9 to double
  %11 = getelementptr inbounds %struct.libmv_CameraIntrinsicsOptions, ptr %3, i64 0, i32 3
  store double %10, ptr %11, align 8, !tbaa !88
  %12 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1, i32 8
  %13 = load float, ptr %12, align 4, !tbaa !49
  %14 = fpext float %13 to double
  %15 = getelementptr inbounds %struct.libmv_CameraIntrinsicsOptions, ptr %3, i64 0, i32 4
  store double %14, ptr %15, align 8, !tbaa !90
  %16 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1, i32 8, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !49
  %18 = fmul float %7, %17
  %19 = fpext float %18 to double
  %20 = getelementptr inbounds %struct.libmv_CameraIntrinsicsOptions, ptr %3, i64 0, i32 5
  store double %19, ptr %20, align 8, !tbaa !91
  %21 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1, i32 1
  %22 = load i16, ptr %21, align 8, !tbaa !92
  switch i16 %22, label %46 [
    i16 0, label %23
    i16 1, label %37
  ]

23:                                               ; preds = %4
  store i32 0, ptr %3, align 8, !tbaa !93
  %24 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1, i32 9
  %25 = load float, ptr %24, align 4, !tbaa !94
  %26 = fpext float %25 to double
  %27 = getelementptr inbounds %struct.libmv_CameraIntrinsicsOptions, ptr %3, i64 0, i32 6
  store double %26, ptr %27, align 8, !tbaa !95
  %28 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1, i32 10
  %29 = load float, ptr %28, align 8, !tbaa !96
  %30 = fpext float %29 to double
  %31 = getelementptr inbounds %struct.libmv_CameraIntrinsicsOptions, ptr %3, i64 0, i32 7
  store double %30, ptr %31, align 8, !tbaa !97
  %32 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1, i32 11
  %33 = load float, ptr %32, align 4, !tbaa !98
  %34 = fpext float %33 to double
  %35 = getelementptr inbounds %struct.libmv_CameraIntrinsicsOptions, ptr %3, i64 0, i32 8
  store double %34, ptr %35, align 8, !tbaa !99
  %36 = getelementptr inbounds %struct.libmv_CameraIntrinsicsOptions, ptr %3, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %36, i8 0, i64 16, i1 false)
  br label %46

37:                                               ; preds = %4
  store i32 1, ptr %3, align 8, !tbaa !93
  %38 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1, i32 12
  %39 = load float, ptr %38, align 8, !tbaa !100
  %40 = fpext float %39 to double
  %41 = getelementptr inbounds %struct.libmv_CameraIntrinsicsOptions, ptr %3, i64 0, i32 11
  store double %40, ptr %41, align 8, !tbaa !101
  %42 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1, i32 13
  %43 = load float, ptr %42, align 4, !tbaa !102
  %44 = fpext float %43 to double
  %45 = getelementptr inbounds %struct.libmv_CameraIntrinsicsOptions, ptr %3, i64 0, i32 12
  store double %44, ptr %45, align 8, !tbaa !103
  br label %46

46:                                               ; preds = %4, %37, %23
  %47 = getelementptr inbounds %struct.libmv_CameraIntrinsicsOptions, ptr %3, i64 0, i32 1
  store i32 %1, ptr %47, align 4, !tbaa !104
  %48 = sitofp i32 %2 to float
  %49 = fmul float %7, %48
  %50 = fptosi float %49 to i32
  %51 = getelementptr inbounds %struct.libmv_CameraIntrinsicsOptions, ptr %3, i64 0, i32 2
  store i32 %50, ptr %51, align 8, !tbaa !105
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @tracking_trackingCameraFromIntrinscisOptions(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1, i32 4
  %4 = load float, ptr %3, align 8, !tbaa !80
  %5 = fdiv float 1.000000e+00, %4
  %6 = getelementptr inbounds %struct.libmv_CameraIntrinsicsOptions, ptr %1, i64 0, i32 3
  %7 = load double, ptr %6, align 8, !tbaa !88
  %8 = fptrunc double %7 to float
  %9 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1, i32 5
  store float %8, ptr %9, align 4, !tbaa !87
  %10 = getelementptr inbounds %struct.libmv_CameraIntrinsicsOptions, ptr %1, i64 0, i32 4
  %11 = load double, ptr %10, align 8, !tbaa !90
  %12 = fptrunc double %11 to float
  %13 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1, i32 8
  store float %12, ptr %13, align 4, !tbaa !49
  %14 = getelementptr inbounds %struct.libmv_CameraIntrinsicsOptions, ptr %1, i64 0, i32 5
  %15 = load double, ptr %14, align 8, !tbaa !91
  %16 = fpext float %5 to double
  %17 = fdiv double %15, %16
  %18 = fptrunc double %17 to float
  %19 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1, i32 8, i64 1
  store float %18, ptr %19, align 4, !tbaa !49
  %20 = load i32, ptr %1, align 8, !tbaa !93
  switch i32 %20, label %45 [
    i32 0, label %21
    i32 1, label %35
  ]

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1, i32 1
  store i16 0, ptr %22, align 8, !tbaa !92
  %23 = getelementptr inbounds %struct.libmv_CameraIntrinsicsOptions, ptr %1, i64 0, i32 6
  %24 = load double, ptr %23, align 8, !tbaa !95
  %25 = fptrunc double %24 to float
  %26 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1, i32 9
  store float %25, ptr %26, align 4, !tbaa !94
  %27 = getelementptr inbounds %struct.libmv_CameraIntrinsicsOptions, ptr %1, i64 0, i32 7
  %28 = load double, ptr %27, align 8, !tbaa !97
  %29 = fptrunc double %28 to float
  %30 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1, i32 10
  store float %29, ptr %30, align 8, !tbaa !96
  %31 = getelementptr inbounds %struct.libmv_CameraIntrinsicsOptions, ptr %1, i64 0, i32 8
  %32 = load double, ptr %31, align 8, !tbaa !99
  %33 = fptrunc double %32 to float
  %34 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1, i32 11
  store float %33, ptr %34, align 4, !tbaa !98
  br label %45

35:                                               ; preds = %2
  %36 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1, i32 1
  store i16 1, ptr %36, align 8, !tbaa !92
  %37 = getelementptr inbounds %struct.libmv_CameraIntrinsicsOptions, ptr %1, i64 0, i32 11
  %38 = load double, ptr %37, align 8, !tbaa !101
  %39 = fptrunc double %38 to float
  %40 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1, i32 12
  store float %39, ptr %40, align 8, !tbaa !100
  %41 = getelementptr inbounds %struct.libmv_CameraIntrinsicsOptions, ptr %1, i64 0, i32 12
  %42 = load double, ptr %41, align 8, !tbaa !103
  %43 = fptrunc double %42 to float
  %44 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 1, i32 13
  store float %43, ptr %44, align 4, !tbaa !102
  br label %45

45:                                               ; preds = %2, %35, %21
  ret void
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!56 = !{!57, !40, i64 152}
!57 = !{!"MovieTrackingTrack", !35, i64 0, !35, i64 8, !36, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !40, i64 120, !40, i64 124, !35, i64 128, !36, i64 136, !50, i64 148, !40, i64 152, !40, i64 156, !40, i64 160, !36, i64 164, !52, i64 176, !52, i64 178, !52, i64 180, !52, i64 182, !40, i64 184, !50, i64 188, !35, i64 192, !50, i64 200, !50, i64 204}
!58 = !{!57, !40, i64 156}
!59 = !{!57, !40, i64 160}
!60 = !{!57, !35, i64 128}
!61 = distinct !{!61, !62, !63}
!62 = !{!"llvm.loop.mustprogress"}
!63 = !{!"llvm.loop.unroll.disable"}
!64 = !{!65, !35, i64 0}
!65 = !{!"ListBase", !35, i64 0, !35, i64 8}
!66 = !{!57, !35, i64 0}
!67 = distinct !{!67, !62, !63}
!68 = distinct !{!68, !62, !63}
!69 = !{i64 0, i64 8, !34, i64 8, i64 8, !34}
!70 = distinct !{!70, !62, !63}
!71 = !{!72, !72, i64 0}
!72 = !{!"double", !36, i64 0}
!73 = distinct !{!73, !62, !63}
!74 = distinct !{!74, !62, !63}
!75 = distinct !{!75, !62, !63}
!76 = !{i64 0, i64 8, !47, i64 8, i64 32, !47, i64 40, i64 8, !47, i64 48, i64 8, !47, i64 56, i64 4, !48, i64 60, i64 4, !48}
!77 = !{!78, !40, i64 60}
!78 = !{!"MovieTrackingMarker", !36, i64 0, !36, i64 8, !36, i64 40, !36, i64 48, !40, i64 56, !40, i64 60}
!79 = !{!78, !40, i64 56}
!80 = !{!81, !50, i64 88}
!81 = !{!"MovieTracking", !82, i64 0, !83, i64 72, !65, i64 128, !65, i64 144, !84, i64 160, !85, i64 184, !35, i64 232, !35, i64 240, !65, i64 248, !40, i64 264, !40, i64 268, !35, i64 272, !86, i64 280}
!82 = !{!"MovieTrackingSettings", !40, i64 0, !52, i64 4, !52, i64 6, !50, i64 8, !52, i64 12, !52, i64 14, !52, i64 16, !52, i64 18, !52, i64 20, !52, i64 22, !50, i64 24, !52, i64 28, !52, i64 30, !40, i64 32, !40, i64 36, !40, i64 40, !52, i64 44, !52, i64 46, !50, i64 48, !40, i64 52, !40, i64 56, !50, i64 60, !50, i64 64, !40, i64 68}
!83 = !{!"MovieTrackingCamera", !35, i64 0, !52, i64 8, !52, i64 10, !50, i64 12, !50, i64 16, !50, i64 20, !52, i64 24, !52, i64 26, !36, i64 28, !50, i64 36, !50, i64 40, !50, i64 44, !50, i64 48, !50, i64 52}
!84 = !{!"MovieTrackingReconstruction", !40, i64 0, !50, i64 4, !40, i64 8, !40, i64 12, !35, i64 16}
!85 = !{!"MovieTrackingStabilization", !40, i64 0, !40, i64 4, !40, i64 8, !50, i64 12, !35, i64 16, !50, i64 24, !50, i64 28, !50, i64 32, !40, i64 36, !40, i64 40, !50, i64 44}
!86 = !{!"MovieTrackingDopesheet", !40, i64 0, !52, i64 4, !52, i64 6, !65, i64 8, !65, i64 24, !40, i64 40, !40, i64 44}
!87 = !{!83, !50, i64 20}
!88 = !{!89, !72, i64 16}
!89 = !{!"libmv_CameraIntrinsicsOptions", !40, i64 0, !40, i64 4, !40, i64 8, !72, i64 16, !72, i64 24, !72, i64 32, !72, i64 40, !72, i64 48, !72, i64 56, !72, i64 64, !72, i64 72, !72, i64 80, !72, i64 88}
!90 = !{!89, !72, i64 24}
!91 = !{!89, !72, i64 32}
!92 = !{!83, !52, i64 8}
!93 = !{!89, !40, i64 0}
!94 = !{!83, !50, i64 36}
!95 = !{!89, !72, i64 40}
!96 = !{!83, !50, i64 40}
!97 = !{!89, !72, i64 48}
!98 = !{!83, !50, i64 44}
!99 = !{!89, !72, i64 56}
!100 = !{!83, !50, i64 48}
!101 = !{!89, !72, i64 80}
!102 = !{!83, !50, i64 52}
!103 = !{!89, !72, i64 88}
!104 = !{!89, !40, i64 4}
!105 = !{!89, !40, i64 8}
