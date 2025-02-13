; ModuleID = 'blender/source/blender/blenkernel/intern/camera.c'
source_filename = "blender/source/blender/blenkernel/intern/camera.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.Camera = type { %struct.ID, ptr, i8, i8, i16, float, float, float, float, float, float, float, float, float, float, float, ptr, ptr, i8, [7 x i8] }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.ColorManagedViewSettings = type { i32, i32, [64 x i8], [64 x i8], float, float, ptr, ptr }
%struct.ColorManagedDisplaySettings = type { [64 x i8] }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.BakeData = type { %struct.ImageFormatData, [1024 x i8], i16, i16, i16, i16, float, float, [3 x i8], i8, i8, [3 x i8], [64 x i8] }
%struct.CameraParams = type { i8, float, float, float, float, float, float, float, float, float, i32, float, float, i32, i32, i32, float, float, float, %struct.rctf, [4 x [4 x float]] }
%struct.Lamp = type { %struct.ID, ptr, i16, i16, i32, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, ptr, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, [2 x i8], ptr, [18 x ptr], i16, i16, [4 x i8], ptr, ptr }
%struct.View3D = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], [4 x float], float, float, i8, [3 x i8], i32, i32, i16, i16, ptr, ptr, %struct.rctf, %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, i16, i16, float, float, float, float, [3 x float], [3 x float], i16, i16, i16, i8, i8, i8, i8, [2 x i8], %struct.ListBase, %struct.ListBase, %struct.ListBase, i8, i8, i8, [5 x i8], ptr, ptr, ptr }
%struct.RegionView3D = type { [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [6 x [4 x float]], [6 x [4 x float]], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x [4 x float]], [4 x float], float, float, float, float, [3 x float], float, i8, i8, i8, i8, i8, [3 x i8], [2 x float], i16, i16, [4 x float], i16, i16, float, [3 x float], float, [3 x float] }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.AudioData = type { i32, float, float, float, i32, i16, i16, float, float }
%struct.GameFraming = type { [3 x float], i8, i8, i8, i8 }
%struct.GameData = type { %struct.GameFraming, i16, i16, i16, i16, i16, i16, i16, i16, i16, [3 x i16], %struct.GameDome, i16, i16, float, %struct.RecastData, float, float, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float }
%struct.GameDome = type { i16, i16, i16, i16, float, float, ptr }
%struct.RecastData = type { float, float, float, float, float, float, float, float, float, float, i32, float, float, i16, i16 }
%struct.UnitSettings = type { float, i8, i8, i16 }
%struct.PhysicsSettings = type { [3 x float], i32, i32, i32 }
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
%struct.CameraViewFrameData = type { [4 x [4 x float]], [4 x [3 x float]], [4 x [3 x float]], [4 x float], i32 }

@G = external local_unnamed_addr global %struct.Global, align 8
@__const.BKE_camera_view_frame.dummy_scale = private unnamed_addr constant [3 x float] [float 1.000000e+00, float 1.000000e+00, float 1.000000e+00], align 4
@__const.BKE_camera_view_frame_fit_to_scene.cam_plane_no = private unnamed_addr constant [3 x float] [float 0.000000e+00, float 0.000000e+00, float -1.000000e+00], align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_camera_add(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BKE_libblock_alloc(ptr noundef %0, i16 noundef signext 16707, ptr noundef %1) #16
  %4 = getelementptr inbounds %struct.Camera, ptr %3, i64 0, i32 9
  store <4 x float> <float 6.000000e+00, float 5.000000e-01, float 3.200000e+01, float 1.800000e+01>, ptr %4, align 4, !tbaa !34
  %5 = getelementptr inbounds %struct.Camera, ptr %3, i64 0, i32 4
  %6 = load i16, ptr %5, align 2, !tbaa !38
  %7 = or i16 %6, 4
  store i16 %7, ptr %5, align 2, !tbaa !38
  %8 = getelementptr inbounds %struct.Camera, ptr %3, i64 0, i32 5
  store <4 x float> <float 5.000000e-01, float 0x3FB99999A0000000, float 1.000000e+02, float 3.500000e+01>, ptr %8, align 4, !tbaa !34
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @BKE_libblock_alloc(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_camera_copy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BKE_libblock_copy(ptr noundef %0) #16
  %3 = getelementptr inbounds %struct.Camera, ptr %2, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !44
  tail call void @id_lib_extern(ptr noundef %4) #16
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @BKE_libblock_copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @id_lib_extern(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_camera_make_local(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @G, align 8, !tbaa !45
  %3 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !48
  %5 = icmp eq ptr %4, null
  br i1 %5, label %70, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !49
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  tail call void @id_clear_lib_data(ptr noundef %2, ptr noundef nonnull %0) #16
  br label %70

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %13 = load ptr, ptr %12, align 8, !tbaa !50
  %14 = icmp eq ptr %13, null
  br i1 %14, label %70, label %15

15:                                               ; preds = %11, %32
  %16 = phi ptr [ %35, %32 ], [ %13, %11 ]
  %17 = phi i8 [ %34, %32 ], [ 0, %11 ]
  %18 = phi i8 [ %33, %32 ], [ 0, %11 ]
  %19 = icmp eq i8 %17, 0
  %20 = icmp eq i8 %18, 0
  %21 = select i1 %19, i1 true, i1 %20
  br i1 %21, label %22, label %42

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 19
  %24 = load ptr, ptr %23, align 8, !tbaa !51
  %25 = icmp eq ptr %24, %0
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.ID, ptr %16, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !55
  %29 = icmp eq ptr %28, null
  %30 = select i1 %29, i8 1, i8 %18
  %31 = select i1 %29, i8 %17, i8 1
  br label %32

32:                                               ; preds = %26, %22
  %33 = phi i8 [ %18, %22 ], [ %30, %26 ]
  %34 = phi i8 [ %17, %22 ], [ %31, %26 ]
  %35 = load ptr, ptr %16, align 8, !tbaa !50
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %15, !llvm.loop !56

37:                                               ; preds = %32
  %38 = icmp ne i8 %33, 0
  %39 = icmp eq i8 %34, 0
  %40 = select i1 %38, i1 %39, i1 false
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  tail call void @id_clear_lib_data(ptr noundef %2, ptr noundef %0) #16
  br label %70

42:                                               ; preds = %15, %37
  %43 = phi i8 [ %34, %37 ], [ %17, %15 ]
  %44 = phi i1 [ %38, %37 ], [ true, %15 ]
  %45 = icmp ne i8 %43, 0
  %46 = select i1 %44, i1 %45, i1 false
  br i1 %46, label %47, label %70

47:                                               ; preds = %42
  %48 = tail call ptr @BKE_camera_copy(ptr noundef %0) #17
  %49 = getelementptr inbounds %struct.ID, ptr %48, i64 0, i32 6
  store i32 0, ptr %49, align 4, !tbaa !49
  %50 = load ptr, ptr %3, align 8, !tbaa !48
  tail call void @BKE_id_lib_local_paths(ptr noundef %2, ptr noundef %50, ptr noundef %48) #16
  %51 = load ptr, ptr %12, align 8, !tbaa !50
  %52 = icmp eq ptr %51, null
  br i1 %52, label %70, label %53

53:                                               ; preds = %47, %67
  %54 = phi ptr [ %68, %67 ], [ %51, %47 ]
  %55 = getelementptr inbounds %struct.Object, ptr %54, i64 0, i32 19
  %56 = load ptr, ptr %55, align 8, !tbaa !51
  %57 = icmp eq ptr %56, %0
  br i1 %57, label %58, label %67

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.ID, ptr %54, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !55
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  store ptr %48, ptr %55, align 8, !tbaa !51
  %63 = load i32, ptr %49, align 4, !tbaa !49
  %64 = add nsw i32 %63, 1
  store i32 %64, ptr %49, align 4, !tbaa !49
  %65 = load i32, ptr %7, align 4, !tbaa !49
  %66 = add nsw i32 %65, -1
  store i32 %66, ptr %7, align 4, !tbaa !49
  br label %67

67:                                               ; preds = %53, %62, %58
  %68 = load ptr, ptr %54, align 8, !tbaa !50
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %53, !llvm.loop !58

70:                                               ; preds = %67, %11, %47, %41, %42, %1, %10
  ret void
}

; Function Attrs: optsize
declare void @id_clear_lib_data(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_id_lib_local_paths(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_camera_free(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @BKE_free_animdata(ptr noundef %0) #16
  ret void
}

; Function Attrs: optsize
declare void @BKE_free_animdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_camera_object_mode(ptr nocapture noundef %0, ptr noundef readonly %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.RenderData, ptr %0, i64 0, i32 47
  %4 = load i32, ptr %3, align 8, !tbaa !59
  %5 = and i32 %4, -1033
  store i32 %5, ptr %3, align 8, !tbaa !59
  %6 = icmp eq ptr %1, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %9 = load i16, ptr %8, align 8, !tbaa !69
  %10 = icmp eq i16 %9, 11
  br i1 %10, label %11, label %20

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !51
  %14 = getelementptr inbounds %struct.Camera, ptr %13, i64 0, i32 2
  %15 = load i8, ptr %14, align 8, !tbaa !70
  switch i8 %15, label %20 [
    i8 1, label %17
    i8 2, label %16
  ]

16:                                               ; preds = %11
  br label %17

17:                                               ; preds = %11, %16
  %18 = phi i32 [ 1024, %16 ], [ 8, %11 ]
  %19 = or disjoint i32 %5, %18
  store i32 %19, ptr %3, align 8, !tbaa !59
  br label %20

20:                                               ; preds = %17, %11, %7, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @BKE_camera_object_dof_distance(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [4 x [4 x float]], align 16
  %3 = alloca [4 x [4 x float]], align 16
  %4 = alloca [4 x [4 x float]], align 16
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !51
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %8 = load i16, ptr %7, align 8, !tbaa !69
  %9 = icmp eq i16 %8, 11
  br i1 %9, label %10, label %25

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.Camera, ptr %6, i64 0, i32 17
  %12 = load ptr, ptr %11, align 8, !tbaa !44
  %13 = icmp eq ptr %12, null
  br i1 %13, label %22, label %14

14:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #18
  %15 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  call void @copy_m4_m4(ptr noundef nonnull %4, ptr noundef nonnull %15) #16
  call void @normalize_m4(ptr noundef nonnull %4) #16
  %16 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %3, ptr noundef nonnull %4) #16
  %17 = load ptr, ptr %11, align 8, !tbaa !44
  %18 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %18) #16
  %19 = getelementptr inbounds [4 x [4 x float]], ptr %2, i64 0, i64 3, i64 2
  %20 = load float, ptr %19, align 8, !tbaa !34
  %21 = call float @llvm.fabs.f32(float %20)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #18
  br label %25

22:                                               ; preds = %10
  %23 = getelementptr inbounds %struct.Camera, ptr %6, i64 0, i32 15
  %24 = load float, ptr %23, align 4, !tbaa !71
  br label %25

25:                                               ; preds = %1, %22, %14
  %26 = phi float [ %21, %14 ], [ %24, %22 ], [ 0.000000e+00, %1 ]
  ret float %26
}

; Function Attrs: optsize
declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @normalize_m4(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef float @BKE_camera_sensor_size(i32 noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #5 {
  %4 = icmp eq i32 %0, 2
  %5 = select i1 %4, float %2, float %1
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @BKE_camera_sensor_fit(i32 noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #5 {
  %4 = icmp eq i32 %0, 0
  %5 = fcmp ult float %1, %2
  %6 = select i1 %5, i32 2, i32 1
  %7 = select i1 %4, i32 %6, i32 %0
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @BKE_camera_params_init(ptr nocapture noundef writeonly %0) local_unnamed_addr #6 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(156) %0, i8 0, i64 156, i1 false)
  %2 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 8
  store <2 x float> <float 3.200000e+01, float 1.800000e+01>, ptr %2, align 4, !tbaa !34
  %3 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 3
  store float 1.000000e+00, ptr %3, align 4, !tbaa !72
  %4 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 11
  store <2 x float> <float 0x3FB99999A0000000, float 1.000000e+02>, ptr %4, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @BKE_camera_params_from_object(ptr nocapture noundef writeonly %0, ptr noundef readonly %1) local_unnamed_addr #8 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %50, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !69
  switch i16 %6, label %48 [
    i16 11, label %7
    i16 10, label %31
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !51
  %10 = getelementptr inbounds %struct.Camera, ptr %9, i64 0, i32 2
  %11 = load i8, ptr %10, align 8, !tbaa !70
  %12 = icmp eq i8 %11, 1
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  store i8 1, ptr %0, align 4, !tbaa !74
  br label %14

14:                                               ; preds = %13, %7
  %15 = getelementptr inbounds %struct.Camera, ptr %9, i64 0, i32 8
  %16 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 1
  %17 = load <2 x float>, ptr %15, align 8, !tbaa !34
  store <2 x float> %17, ptr %16, align 4, !tbaa !34
  %18 = getelementptr inbounds %struct.Camera, ptr %9, i64 0, i32 13
  %19 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 4
  %20 = load <2 x float>, ptr %18, align 4, !tbaa !34
  store <2 x float> %20, ptr %19, align 4, !tbaa !34
  %21 = getelementptr inbounds %struct.Camera, ptr %9, i64 0, i32 11
  %22 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 8
  %23 = load <2 x float>, ptr %21, align 4, !tbaa !34
  store <2 x float> %23, ptr %22, align 4, !tbaa !34
  %24 = getelementptr inbounds %struct.Camera, ptr %9, i64 0, i32 18
  %25 = load i8, ptr %24, align 8, !tbaa !75
  %26 = zext i8 %25 to i32
  %27 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 10
  store i32 %26, ptr %27, align 4, !tbaa !76
  %28 = getelementptr inbounds %struct.Camera, ptr %9, i64 0, i32 6
  %29 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 11
  %30 = load <2 x float>, ptr %28, align 8, !tbaa !34
  store <2 x float> %30, ptr %29, align 4, !tbaa !34
  br label %50

31:                                               ; preds = %4
  %32 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %33 = load ptr, ptr %32, align 8, !tbaa !51
  %34 = getelementptr inbounds %struct.Lamp, ptr %33, i64 0, i32 17
  %35 = load float, ptr %34, align 4, !tbaa !77
  %36 = fmul float %35, 5.000000e-01
  %37 = tail call float @cosf(float noundef %36) #16
  %38 = tail call float @acosf(float noundef %37) #16
  %39 = fmul float %37, 1.600000e+01
  %40 = tail call float @sinf(float noundef %38) #16
  %41 = fdiv float %39, %40
  %42 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 1
  %43 = fcmp oeq float %41, 0.000000e+00
  %44 = select i1 %43, float 3.500000e+01, float %41
  store float %44, ptr %42, align 4, !tbaa !79
  %45 = getelementptr inbounds %struct.Lamp, ptr %33, i64 0, i32 25
  %46 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 11
  %47 = load <2 x float>, ptr %45, align 4, !tbaa !34
  store <2 x float> %47, ptr %46, align 4, !tbaa !34
  br label %50

48:                                               ; preds = %4
  %49 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 1
  store float 3.500000e+01, ptr %49, align 4, !tbaa !79
  br label %50

50:                                               ; preds = %31, %48, %2, %14
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @acosf(float noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_camera_params_from_view3d(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 30
  %5 = load float, ptr %4, align 4, !tbaa !80
  %6 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 1
  store float %5, ptr %6, align 4, !tbaa !79
  %7 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 32
  %8 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 11
  %9 = load <2 x float>, ptr %7, align 4, !tbaa !34
  store <2 x float> %9, ptr %8, align 4, !tbaa !34
  %10 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 25
  %11 = load i8, ptr %10, align 1, !tbaa !82
  switch i8 %11, label %49 [
    i8 2, label %12
    i8 0, label %29
  ]

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 15
  %14 = load ptr, ptr %13, align 8, !tbaa !84
  tail call void @BKE_camera_params_from_object(ptr noundef nonnull %0, ptr noundef %14) #17
  %15 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 23
  %16 = load float, ptr %15, align 4, !tbaa !85
  %17 = tail call float @BKE_screen_view3d_zoom_to_fac(float noundef %16) #16
  %18 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 3
  %19 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 19
  %20 = load <2 x float>, ptr %19, align 4, !tbaa !34
  %21 = fmul <2 x float> %20, <float 2.000000e+00, float 2.000000e+00>
  %22 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 4
  %23 = load <2 x float>, ptr %22, align 4, !tbaa !34
  %24 = insertelement <4 x float> poison, float %17, i64 0
  %25 = shufflevector <4 x float> %24, <4 x float> poison, <4 x i32> zeroinitializer
  %26 = shufflevector <2 x float> %23, <2 x float> %21, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %27 = fmul <4 x float> %25, %26
  store <4 x float> %27, ptr %22, align 4, !tbaa !34
  %28 = fdiv float 1.000000e+00, %17
  store float %28, ptr %18, align 4, !tbaa !72
  br label %51

29:                                               ; preds = %3
  %30 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 12
  %31 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 10
  %32 = load i32, ptr %31, align 4, !tbaa !76
  %33 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 8
  %34 = load float, ptr %33, align 4, !tbaa !86
  %35 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 9
  %36 = load float, ptr %35, align 4, !tbaa !87
  %37 = tail call float @BKE_camera_sensor_size(i32 noundef %32, float noundef %34, float noundef %36) #17
  %38 = fptosi float %37 to i32
  %39 = extractelement <2 x float> %9, i64 1
  %40 = fmul float %39, 5.000000e-01
  store float %40, ptr %30, align 4, !tbaa !88
  %41 = fneg float %40
  store float %41, ptr %8, align 4, !tbaa !89
  store i8 1, ptr %0, align 4, !tbaa !74
  %42 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 18
  %43 = load float, ptr %42, align 8, !tbaa !90
  %44 = sitofp i32 %38 to float
  %45 = fmul float %43, %44
  %46 = fdiv float %45, %5
  %47 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 2
  store float %46, ptr %47, align 4, !tbaa !91
  %48 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 3
  store float 2.000000e+00, ptr %48, align 4, !tbaa !72
  br label %51

49:                                               ; preds = %3
  %50 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 3
  store float 2.000000e+00, ptr %50, align 4, !tbaa !72
  br label %51

51:                                               ; preds = %29, %49, %12
  ret void
}

; Function Attrs: optsize
declare float @BKE_screen_view3d_zoom_to_fac(float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_camera_params_compute_viewplane(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #10 {
  %6 = fdiv float %4, %3
  %7 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 16
  store float %6, ptr %7, align 4, !tbaa !92
  %8 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 13
  %9 = load i32, ptr %8, align 4, !tbaa !93
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %5
  %12 = fmul float %6, 2.000000e+00
  store float %12, ptr %7, align 4, !tbaa !92
  br label %13

13:                                               ; preds = %11, %5
  %14 = phi float [ %12, %11 ], [ %6, %5 ]
  %15 = load i8, ptr %0, align 4, !tbaa !74
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 2
  %19 = load float, ptr %18, align 4, !tbaa !91
  %20 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 10
  %21 = load i32, ptr %20, align 4, !tbaa !76
  br label %36

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 10
  %24 = load i32, ptr %23, align 4, !tbaa !76
  %25 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 8
  %26 = load float, ptr %25, align 4, !tbaa !86
  %27 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 9
  %28 = load float, ptr %27, align 4, !tbaa !87
  %29 = tail call float @BKE_camera_sensor_size(i32 noundef %24, float noundef %26, float noundef %28) #17
  %30 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 11
  %31 = load float, ptr %30, align 4, !tbaa !89
  %32 = fmul float %29, %31
  %33 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 1
  %34 = load float, ptr %33, align 4, !tbaa !79
  %35 = fdiv float %32, %34
  br label %36

36:                                               ; preds = %22, %17
  %37 = phi i32 [ %21, %17 ], [ %24, %22 ]
  %38 = phi float [ %19, %17 ], [ %35, %22 ]
  %39 = sitofp i32 %1 to float
  %40 = fmul float %39, %3
  %41 = sitofp i32 %2 to float
  %42 = fmul float %41, %4
  %43 = tail call i32 @BKE_camera_sensor_fit(i32 noundef %37, float noundef %40, float noundef %42) #17, !range !94
  %44 = icmp eq i32 %43, 1
  %45 = fmul float %14, %41
  %46 = select i1 %44, float %39, float %45
  %47 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 3
  %48 = load float, ptr %47, align 4, !tbaa !72
  %49 = fmul float %14, 5.000000e-01
  %50 = fmul float %49, %41
  %51 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 4
  %52 = load float, ptr %51, align 4, !tbaa !95
  %53 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 6
  %54 = load float, ptr %53, align 4, !tbaa !96
  %55 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 5
  %56 = load float, ptr %55, align 4, !tbaa !97
  %57 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 7
  %58 = load float, ptr %57, align 4, !tbaa !98
  %59 = fmul float %58, %41
  %60 = tail call float @llvm.fmuladd.f32(float %56, float %46, float %59)
  %61 = fsub float %60, %50
  %62 = fadd float %50, %60
  %63 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 14
  %64 = load i32, ptr %63, align 4, !tbaa !99
  %65 = icmp eq i32 %64, 0
  %66 = insertelement <2 x float> poison, float %62, i64 0
  %67 = insertelement <2 x float> %66, float %61, i64 1
  br i1 %65, label %80, label %68

68:                                               ; preds = %36
  %69 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 15
  %70 = load i32, ptr %69, align 4, !tbaa !100
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = insertelement <2 x float> poison, float %14, i64 0
  %74 = shufflevector <2 x float> %73, <2 x float> poison, <2 x i32> zeroinitializer
  %75 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %74, <2 x float> <float -5.000000e-01, float -5.000000e-01>, <2 x float> %67)
  br label %80

76:                                               ; preds = %68
  %77 = insertelement <2 x float> poison, float %14, i64 0
  %78 = shufflevector <2 x float> %77, <2 x float> poison, <2 x i32> zeroinitializer
  %79 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %78, <2 x float> <float 5.000000e-01, float 5.000000e-01>, <2 x float> %67)
  br label %80

80:                                               ; preds = %72, %76, %36
  %81 = phi <2 x float> [ %75, %72 ], [ %79, %76 ], [ %67, %36 ]
  %82 = fmul float %39, 5.000000e-01
  %83 = fmul float %54, %39
  %84 = tail call float @llvm.fmuladd.f32(float %52, float %46, float %83)
  %85 = fadd float %82, %84
  %86 = fsub float %84, %82
  %87 = fdiv float %38, %46
  %88 = fmul float %87, %48
  %89 = extractelement <2 x float> %81, i64 0
  %90 = fmul float %88, %89
  %91 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 17
  store float %88, ptr %91, align 4, !tbaa !101
  %92 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 18
  %93 = insertelement <4 x float> poison, float %14, i64 0
  %94 = insertelement <4 x float> %93, float %86, i64 1
  %95 = insertelement <4 x float> %94, float %85, i64 2
  %96 = shufflevector <2 x float> %81, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %97 = shufflevector <4 x float> %95, <4 x float> %96, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %98 = insertelement <4 x float> poison, float %88, i64 0
  %99 = shufflevector <4 x float> %98, <4 x float> poison, <4 x i32> zeroinitializer
  %100 = fmul <4 x float> %97, %99
  store <4 x float> %100, ptr %92, align 4
  %101 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 19, i32 3
  store float %90, ptr %101, align 4, !tbaa.struct !102
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_camera_params_compute_matrix(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 19
  %3 = load float, ptr %2, align 4, !tbaa.struct !103
  %4 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 19, i32 1
  %5 = load float, ptr %4, align 4, !tbaa.struct !104
  %6 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 19, i32 2
  %7 = load float, ptr %6, align 4, !tbaa.struct !105
  %8 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 19, i32 3
  %9 = load float, ptr %8, align 4, !tbaa.struct !102
  %10 = load i8, ptr %0, align 4, !tbaa !74
  %11 = icmp eq i8 %10, 0
  %12 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 20
  %13 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 11
  %14 = load float, ptr %13, align 4, !tbaa !89
  %15 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 12
  %16 = load float, ptr %15, align 4, !tbaa !88
  br i1 %11, label %18, label %17

17:                                               ; preds = %1
  tail call void @orthographic_m4(ptr noundef nonnull %12, float noundef %3, float noundef %5, float noundef %7, float noundef %9, float noundef %14, float noundef %16) #16
  br label %19

18:                                               ; preds = %1
  tail call void @perspective_m4(ptr noundef nonnull %12, float noundef %3, float noundef %5, float noundef %7, float noundef %9, float noundef %14, float noundef %16) #16
  br label %19

19:                                               ; preds = %18, %17
  ret void
}

; Function Attrs: optsize
declare void @orthographic_m4(ptr noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @perspective_m4(ptr noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_camera_view_frame_ex(ptr noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2, i8 noundef zeroext %3, ptr nocapture noundef readonly %4, ptr nocapture noundef %5, ptr nocapture noundef %6, ptr nocapture noundef writeonly %7, ptr nocapture noundef writeonly %8) local_unnamed_addr #3 {
  %10 = icmp eq ptr %0, null
  br i1 %10, label %36, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 33
  %13 = load i32, ptr %12, align 4, !tbaa !106
  %14 = sitofp i32 %13 to float
  %15 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 63
  %16 = load float, ptr %15, align 4, !tbaa !116
  %17 = fmul float %16, %14
  %18 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 34
  %19 = load i32, ptr %18, align 8, !tbaa !117
  %20 = sitofp i32 %19 to float
  %21 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 64
  %22 = load float, ptr %21, align 8, !tbaa !118
  %23 = fmul float %22, %20
  %24 = getelementptr inbounds %struct.Camera, ptr %1, i64 0, i32 18
  %25 = load i8, ptr %24, align 8, !tbaa !75
  %26 = zext i8 %25 to i32
  %27 = tail call i32 @BKE_camera_sensor_fit(i32 noundef %26, float noundef %17, float noundef %23) #17, !range !94
  %28 = icmp eq i32 %27, 1
  %29 = getelementptr inbounds float, ptr %5, i64 1
  br i1 %28, label %30, label %33

30:                                               ; preds = %11
  store float 1.000000e+00, ptr %5, align 4, !tbaa !34
  %31 = fdiv float %23, %17
  store float %31, ptr %29, align 4, !tbaa !34
  %32 = insertelement <2 x float> <float 1.000000e+00, float poison>, float %31, i64 1
  br label %37

33:                                               ; preds = %11
  %34 = fdiv float %17, %23
  store float %34, ptr %5, align 4, !tbaa !34
  store float 1.000000e+00, ptr %29, align 4, !tbaa !34
  %35 = insertelement <2 x float> <float poison, float 1.000000e+00>, float %34, i64 0
  br label %37

36:                                               ; preds = %9
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %5, align 4, !tbaa !34
  br label %37

37:                                               ; preds = %30, %33, %36
  %38 = phi <2 x float> [ %32, %30 ], [ %35, %33 ], [ <float 1.000000e+00, float 1.000000e+00>, %36 ]
  %39 = getelementptr inbounds %struct.Camera, ptr %1, i64 0, i32 2
  %40 = load i8, ptr %39, align 8, !tbaa !70
  %41 = icmp eq i8 %40, 1
  br i1 %41, label %42, label %85

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.Camera, ptr %1, i64 0, i32 9
  %44 = load float, ptr %43, align 4, !tbaa !119
  %45 = fmul float %44, 5.000000e-01
  %46 = getelementptr inbounds float, ptr %4, i64 1
  %47 = insertelement <2 x float> poison, float %45, i64 0
  %48 = shufflevector <2 x float> %47, <2 x float> poison, <2 x i32> zeroinitializer
  %49 = fmul <2 x float> %48, %38
  %50 = load <2 x float>, ptr %4, align 4, !tbaa !34
  %51 = fmul <2 x float> %49, %50
  %52 = getelementptr inbounds %struct.Camera, ptr %1, i64 0, i32 13
  %53 = load float, ptr %52, align 4, !tbaa !120
  %54 = fmul float %44, %53
  %55 = extractelement <2 x float> %50, i64 0
  %56 = fmul float %55, %54
  store float %56, ptr %6, align 4, !tbaa !34
  %57 = getelementptr inbounds %struct.Camera, ptr %1, i64 0, i32 14
  %58 = load float, ptr %57, align 8, !tbaa !121
  %59 = load float, ptr %43, align 4, !tbaa !119
  %60 = fmul float %58, %59
  %61 = load float, ptr %46, align 4, !tbaa !34
  %62 = fmul float %60, %61
  %63 = getelementptr inbounds float, ptr %6, i64 1
  store float %62, ptr %63, align 4, !tbaa !34
  %64 = icmp eq i8 %3, 0
  br i1 %64, label %73, label %65

65:                                               ; preds = %42
  %66 = getelementptr inbounds %struct.Camera, ptr %1, i64 0, i32 6
  %67 = load float, ptr %66, align 8, !tbaa !122
  %68 = getelementptr inbounds float, ptr %4, i64 2
  %69 = load float, ptr %68, align 4, !tbaa !34
  %70 = tail call float @llvm.fmuladd.f32(float %67, float %69, float 0x3FB99999A0000000)
  %71 = fneg float %70
  %72 = load float, ptr %43, align 4, !tbaa !119
  br label %80

73:                                               ; preds = %42
  %74 = fneg float %2
  %75 = load float, ptr %43, align 4, !tbaa !119
  %76 = fmul float %75, %74
  %77 = getelementptr inbounds float, ptr %4, i64 2
  %78 = load float, ptr %77, align 4, !tbaa !34
  %79 = fmul float %76, %78
  br label %80

80:                                               ; preds = %73, %65
  %81 = phi float [ %72, %65 ], [ %75, %73 ]
  %82 = phi float [ %71, %65 ], [ %79, %73 ]
  %83 = fmul float %81, 5.000000e-01
  store float %83, ptr %7, align 4, !tbaa !34
  %84 = load float, ptr %6, align 4, !tbaa !34
  br label %148

85:                                               ; preds = %37
  %86 = getelementptr inbounds %struct.Camera, ptr %1, i64 0, i32 18
  %87 = load i8, ptr %86, align 8, !tbaa !75
  %88 = icmp eq i8 %87, 2
  %89 = getelementptr inbounds %struct.Camera, ptr %1, i64 0, i32 12
  %90 = getelementptr inbounds %struct.Camera, ptr %1, i64 0, i32 11
  %91 = select i1 %88, ptr %89, ptr %90
  %92 = load float, ptr %91, align 4, !tbaa !34
  %93 = fmul float %92, 5.000000e-01
  %94 = icmp eq i8 %3, 0
  br i1 %94, label %108, label %95

95:                                               ; preds = %85
  store float 1.000000e+00, ptr %7, align 4, !tbaa !34
  %96 = getelementptr inbounds %struct.Camera, ptr %1, i64 0, i32 6
  %97 = load float, ptr %96, align 8, !tbaa !122
  %98 = fadd float %97, 0x3FB99999A0000000
  %99 = fneg float %98
  %100 = getelementptr inbounds float, ptr %4, i64 2
  %101 = load float, ptr %100, align 4, !tbaa !34
  %102 = fmul float %101, %99
  %103 = getelementptr inbounds %struct.Camera, ptr %1, i64 0, i32 8
  %104 = load float, ptr %103, align 8, !tbaa !123
  %105 = fneg float %93
  %106 = fdiv float %104, %105
  %107 = fdiv float %102, %106
  br label %126

108:                                              ; preds = %85
  %109 = load float, ptr %4, align 4, !tbaa !34
  %110 = getelementptr inbounds float, ptr %4, i64 1
  %111 = load float, ptr %110, align 4, !tbaa !34
  %112 = fadd float %109, %111
  %113 = getelementptr inbounds float, ptr %4, i64 2
  %114 = load float, ptr %113, align 4, !tbaa !34
  %115 = fadd float %112, %114
  %116 = fdiv float %115, 3.000000e+00
  %117 = fdiv float %2, %116
  store float %117, ptr %7, align 4, !tbaa !34
  %118 = getelementptr inbounds %struct.Camera, ptr %1, i64 0, i32 8
  %119 = load float, ptr %118, align 8, !tbaa !123
  %120 = fmul float %119, %117
  %121 = fneg float %93
  %122 = fdiv float %120, %121
  %123 = load float, ptr %113, align 4, !tbaa !34
  %124 = fmul float %123, %122
  %125 = load <2 x float>, ptr %4, align 4, !tbaa !34
  br label %126

126:                                              ; preds = %108, %95
  %127 = phi float [ %102, %95 ], [ %124, %108 ]
  %128 = phi float [ %107, %95 ], [ %117, %108 ]
  %129 = phi <2 x float> [ <float 1.000000e+00, float 1.000000e+00>, %95 ], [ %125, %108 ]
  %130 = load <2 x float>, ptr %5, align 4, !tbaa !34
  %131 = insertelement <2 x float> poison, float %128, i64 0
  %132 = shufflevector <2 x float> %131, <2 x float> poison, <2 x i32> zeroinitializer
  %133 = fmul <2 x float> %132, %130
  %134 = fmul <2 x float> %129, %133
  %135 = getelementptr inbounds %struct.Camera, ptr %1, i64 0, i32 13
  %136 = load float, ptr %135, align 4, !tbaa !120
  %137 = fmul float %128, %136
  %138 = fmul float %137, 2.000000e+00
  %139 = extractelement <2 x float> %129, i64 0
  %140 = fmul float %139, %138
  store float %140, ptr %6, align 4, !tbaa !34
  %141 = getelementptr inbounds %struct.Camera, ptr %1, i64 0, i32 14
  %142 = load float, ptr %141, align 8, !tbaa !121
  %143 = fmul float %128, %142
  %144 = fmul float %143, 2.000000e+00
  %145 = extractelement <2 x float> %129, i64 1
  %146 = fmul float %145, %144
  %147 = getelementptr inbounds float, ptr %6, i64 1
  store float %146, ptr %147, align 4, !tbaa !34
  br label %148

148:                                              ; preds = %126, %80
  %149 = phi float [ %84, %80 ], [ %140, %126 ]
  %150 = phi float [ %82, %80 ], [ %127, %126 ]
  %151 = phi <2 x float> [ %51, %80 ], [ %134, %126 ]
  %152 = extractelement <2 x float> %151, i64 0
  %153 = fadd float %152, %149
  store float %153, ptr %8, align 4, !tbaa !34
  %154 = getelementptr inbounds float, ptr %6, i64 1
  %155 = load float, ptr %154, align 4, !tbaa !34
  %156 = extractelement <2 x float> %151, i64 1
  %157 = fadd float %156, %155
  %158 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 1
  store float %157, ptr %158, align 4, !tbaa !34
  %159 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  store float %150, ptr %159, align 4, !tbaa !34
  %160 = load float, ptr %6, align 4, !tbaa !34
  %161 = fadd float %152, %160
  %162 = getelementptr inbounds [3 x float], ptr %8, i64 1
  store float %161, ptr %162, align 4, !tbaa !34
  %163 = load float, ptr %154, align 4, !tbaa !34
  %164 = fsub float %163, %156
  %165 = getelementptr inbounds [3 x float], ptr %8, i64 1, i64 1
  store float %164, ptr %165, align 4, !tbaa !34
  %166 = getelementptr inbounds [3 x float], ptr %8, i64 1, i64 2
  store float %150, ptr %166, align 4, !tbaa !34
  %167 = load float, ptr %6, align 4, !tbaa !34
  %168 = fsub float %167, %152
  %169 = getelementptr inbounds [3 x float], ptr %8, i64 2
  store float %168, ptr %169, align 4, !tbaa !34
  %170 = load float, ptr %154, align 4, !tbaa !34
  %171 = fsub float %170, %156
  %172 = getelementptr inbounds [3 x float], ptr %8, i64 2, i64 1
  store float %171, ptr %172, align 4, !tbaa !34
  %173 = getelementptr inbounds [3 x float], ptr %8, i64 2, i64 2
  store float %150, ptr %173, align 4, !tbaa !34
  %174 = load float, ptr %6, align 4, !tbaa !34
  %175 = fsub float %174, %152
  %176 = getelementptr inbounds [3 x float], ptr %8, i64 3
  store float %175, ptr %176, align 4, !tbaa !34
  %177 = load float, ptr %154, align 4, !tbaa !34
  %178 = fadd float %156, %177
  %179 = getelementptr inbounds [3 x float], ptr %8, i64 3, i64 1
  store float %178, ptr %179, align 4, !tbaa !34
  %180 = getelementptr inbounds [3 x float], ptr %8, i64 3, i64 2
  store float %150, ptr %180, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_camera_view_frame(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #3 {
  %4 = alloca [2 x float], align 4
  %5 = alloca [2 x float], align 4
  %6 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #18
  call void @BKE_camera_view_frame_ex(ptr noundef %0, ptr noundef %1, float noundef 0.000000e+00, i8 noundef zeroext 1, ptr noundef nonnull @__const.BKE_camera_view_frame.dummy_scale, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %2) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BKE_camera_view_frame_fit_to_scene(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = alloca [4 x [3 x float]], align 16
  %6 = alloca [3 x [3 x float]], align 16
  %7 = alloca [3 x float], align 4
  %8 = alloca %struct.CameraViewFrameData, align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 4
  %16 = alloca [3 x float], align 4
  %17 = alloca [3 x float], align 4
  %18 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %7, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 180, ptr nonnull %8) #18
  %19 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %20 = load ptr, ptr %19, align 8, !tbaa !51
  %21 = getelementptr inbounds %struct.CameraViewFrameData, ptr %8, i64 0, i32 1
  call void @BKE_camera_view_frame(ptr noundef %0, ptr noundef %20, ptr noundef nonnull %21) #17
  %22 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 47
  call void @copy_m3_m4(ptr noundef nonnull %6, ptr noundef nonnull %22) #16
  call void @normalize_m3(ptr noundef nonnull %6) #16
  br label %23

23:                                               ; preds = %4, %23
  %24 = phi i64 [ 0, %4 ], [ %29, %23 ]
  %25 = getelementptr inbounds %struct.CameraViewFrameData, ptr %8, i64 0, i32 1, i64 %24
  %26 = getelementptr inbounds %struct.CameraViewFrameData, ptr %8, i64 0, i32 1, i64 %24, i64 2
  %27 = load float, ptr %26, align 4, !tbaa !34
  %28 = fdiv float 1.000000e+00, %27
  call fastcc void @mul_v3_fl(ptr noundef nonnull %25, float noundef %28) #17
  %29 = add nuw nsw i64 %24, 1
  %30 = icmp eq i64 %29, 4
  br i1 %30, label %31, label %23, !llvm.loop !124

31:                                               ; preds = %23
  %32 = load float, ptr %21, align 4, !tbaa !34
  %33 = getelementptr inbounds %struct.CameraViewFrameData, ptr %8, i64 0, i32 1, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !34
  %35 = fadd float %32, %34
  %36 = getelementptr inbounds %struct.CameraViewFrameData, ptr %8, i64 0, i32 1, i64 2
  %37 = load float, ptr %36, align 4, !tbaa !34
  %38 = fadd float %35, %37
  %39 = getelementptr inbounds %struct.CameraViewFrameData, ptr %8, i64 0, i32 1, i64 3
  %40 = load float, ptr %39, align 4, !tbaa !34
  %41 = fadd float %38, %40
  %42 = getelementptr inbounds %struct.CameraViewFrameData, ptr %8, i64 0, i32 1, i64 0, i64 1
  %43 = load float, ptr %42, align 4, !tbaa !34
  %44 = getelementptr inbounds %struct.CameraViewFrameData, ptr %8, i64 0, i32 1, i64 1, i64 1
  %45 = load float, ptr %44, align 4, !tbaa !34
  %46 = fadd float %43, %45
  %47 = getelementptr inbounds %struct.CameraViewFrameData, ptr %8, i64 0, i32 1, i64 2, i64 1
  %48 = load float, ptr %47, align 4, !tbaa !34
  %49 = fadd float %46, %48
  %50 = getelementptr inbounds %struct.CameraViewFrameData, ptr %8, i64 0, i32 1, i64 3, i64 1
  %51 = load float, ptr %50, align 4, !tbaa !34
  %52 = fadd float %49, %51
  br label %53

53:                                               ; preds = %31, %53
  %54 = phi i64 [ 0, %31 ], [ %56, %53 ]
  %55 = getelementptr inbounds %struct.CameraViewFrameData, ptr %8, i64 0, i32 1, i64 %54
  call void @mul_m3_v3(ptr noundef nonnull %6, ptr noundef nonnull %55) #16
  %56 = add nuw nsw i64 %54, 1
  %57 = icmp eq i64 %56, 4
  br i1 %57, label %58, label %53, !llvm.loop !125

58:                                               ; preds = %53, %58
  %59 = phi i64 [ %62, %58 ], [ 0, %53 ]
  %60 = getelementptr inbounds %struct.CameraViewFrameData, ptr %8, i64 0, i32 2, i64 %59
  %61 = getelementptr inbounds %struct.CameraViewFrameData, ptr %8, i64 0, i32 1, i64 %59
  %62 = add nuw nsw i64 %59, 1
  %63 = and i64 %62, 3
  %64 = getelementptr inbounds %struct.CameraViewFrameData, ptr %8, i64 0, i32 1, i64 %63
  %65 = call float @normal_tri_v3(ptr noundef nonnull %60, ptr noundef nonnull %7, ptr noundef nonnull %61, ptr noundef nonnull %64) #16
  %66 = getelementptr inbounds [4 x [4 x float]], ptr %8, i64 0, i64 %59
  call void @plane_from_point_normal_v3(ptr noundef nonnull %66, ptr noundef nonnull %61, ptr noundef nonnull %60) #16
  %67 = icmp eq i64 %62, 4
  br i1 %67, label %68, label %58, !llvm.loop !126

68:                                               ; preds = %58
  %69 = getelementptr inbounds %struct.CameraViewFrameData, ptr %8, i64 0, i32 3
  call fastcc void @copy_v4_fl(ptr noundef nonnull %69) #17
  %70 = getelementptr inbounds %struct.CameraViewFrameData, ptr %8, i64 0, i32 4
  store i32 0, ptr %70, align 4, !tbaa !127
  call void @BKE_scene_foreach_display_point(ptr noundef %0, ptr noundef %1, i16 noundef signext 1, ptr noundef nonnull @camera_to_frame_view_cb, ptr noundef nonnull %8) #16
  %71 = load i32, ptr %70, align 4, !tbaa !127
  %72 = icmp ult i32 %71, 2
  br i1 %72, label %111, label %73

73:                                               ; preds = %68
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #18
  br label %74

74:                                               ; preds = %73, %74
  %75 = phi i64 [ 0, %73 ], [ %81, %74 ]
  %76 = getelementptr inbounds [4 x [3 x float]], ptr %5, i64 0, i64 %75
  %77 = getelementptr inbounds %struct.CameraViewFrameData, ptr %8, i64 0, i32 2, i64 %75
  %78 = getelementptr inbounds %struct.CameraViewFrameData, ptr %8, i64 0, i32 3, i64 %75
  %79 = load float, ptr %78, align 4, !tbaa !34
  %80 = call fastcc float @sqrtf_signed(float noundef %79) #17
  call fastcc void @mul_v3_v3fl(ptr noundef nonnull %76, ptr noundef nonnull %77, float noundef %80) #17
  %81 = add nuw nsw i64 %75, 1
  %82 = icmp eq i64 %81, 4
  br i1 %82, label %83, label %74, !llvm.loop !129

83:                                               ; preds = %74
  %84 = getelementptr inbounds %struct.CameraViewFrameData, ptr %8, i64 0, i32 2
  %85 = getelementptr inbounds [4 x [3 x float]], ptr %5, i64 0, i64 2
  %86 = getelementptr inbounds %struct.CameraViewFrameData, ptr %8, i64 0, i32 2, i64 2
  %87 = call zeroext i8 @isect_plane_plane_v3(ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %5, ptr noundef nonnull %84, ptr noundef nonnull %85, ptr noundef nonnull %86) #16
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %109, label %89

89:                                               ; preds = %83
  %90 = getelementptr inbounds [4 x [3 x float]], ptr %5, i64 0, i64 1
  %91 = getelementptr inbounds %struct.CameraViewFrameData, ptr %8, i64 0, i32 2, i64 1
  %92 = getelementptr inbounds [4 x [3 x float]], ptr %5, i64 0, i64 3
  %93 = getelementptr inbounds %struct.CameraViewFrameData, ptr %8, i64 0, i32 2, i64 3
  %94 = call zeroext i8 @isect_plane_plane_v3(ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %90, ptr noundef nonnull %91, ptr noundef nonnull %92, ptr noundef nonnull %93) #16
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %109, label %96

96:                                               ; preds = %89
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %11, ptr noundef nonnull %9, ptr noundef nonnull %10) #17
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %14, ptr noundef nonnull %12, ptr noundef nonnull %13) #17
  %97 = call i32 @isect_line_line_v3(ptr noundef nonnull %9, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %16) #16
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %109, label %99

99:                                               ; preds = %96
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %17, ptr noundef nonnull align 4 dereferenceable(12) @__const.BKE_camera_view_frame_fit_to_scene.cam_plane_no, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #18
  call void @mul_m3_v3(ptr noundef nonnull %6, ptr noundef nonnull %17) #16
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %18, ptr noundef nonnull %16, ptr noundef nonnull %15) #17
  %100 = call fastcc float @len_v3(ptr noundef nonnull %18) #17
  %101 = call fastcc float @dot_v3v3(ptr noundef nonnull %18, ptr noundef nonnull %17) #17
  %102 = fcmp ogt float %101, 0.000000e+00
  %103 = fneg float %100
  %104 = select i1 %102, ptr %15, ptr %16
  %105 = select i1 %102, ptr %10, ptr %13
  %106 = select i1 %102, float %52, float %41
  %107 = fmul float %106, 2.500000e-01
  call fastcc void @copy_v3_v3(ptr noundef %3, ptr noundef nonnull %104) #17
  call fastcc void @normalize_v3(ptr noundef nonnull %105) #17
  %108 = fmul float %107, %103
  call fastcc void @madd_v3_v3fl(ptr noundef %3, ptr noundef nonnull %105, float noundef %108) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #18
  br label %109

109:                                              ; preds = %96, %83, %89, %99
  %110 = phi i8 [ 1, %99 ], [ 0, %89 ], [ 0, %83 ], [ 0, %96 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #18
  br label %111

111:                                              ; preds = %68, %109
  %112 = phi i8 [ %110, %109 ], [ 0, %68 ]
  call void @llvm.lifetime.end.p0(i64 180, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #18
  ret i8 %112
}

; Function Attrs: optsize
declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @normalize_m3(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #10 !PGOFuncName !130 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !34
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !34
  ret void
}

; Function Attrs: optsize
declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @normal_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @plane_from_point_normal_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @copy_v4_fl(ptr nocapture noundef writeonly %0) unnamed_addr #6 !PGOFuncName !131 {
  store <4 x float> <float 0x47EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0x47EFFFFFE0000000>, ptr %0, align 4, !tbaa !34
  ret void
}

; Function Attrs: optsize
declare void @BKE_scene_foreach_display_point(ptr noundef, ptr noundef, i16 noundef signext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @camera_to_frame_view_cb(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !132 {
  br label %3

3:                                                ; preds = %2, %11
  %4 = phi i64 [ 0, %2 ], [ %12, %11 ]
  %5 = getelementptr inbounds [4 x [4 x float]], ptr %1, i64 0, i64 %4
  %6 = tail call float @dist_signed_squared_to_plane_v3(ptr noundef %0, ptr noundef %5) #16
  %7 = getelementptr inbounds %struct.CameraViewFrameData, ptr %1, i64 0, i32 3, i64 %4
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = fcmp olt float %6, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store float %6, ptr %7, align 4, !tbaa !34
  br label %11

11:                                               ; preds = %10, %3
  %12 = add nuw nsw i64 %4, 1
  %13 = icmp eq i64 %12, 4
  br i1 %13, label %14, label %3, !llvm.loop !133

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.CameraViewFrameData, ptr %1, i64 0, i32 4
  %16 = load i32, ptr %15, align 4, !tbaa !127
  %17 = add i32 %16, 1
  store i32 %17, ptr %15, align 4, !tbaa !127
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #10 !PGOFuncName !134 {
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal fastcc float @sqrtf_signed(float noundef %0) unnamed_addr #12 !PGOFuncName !135 {
  %2 = fcmp ult float %0, 0.000000e+00
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call float @sqrtf(float noundef %0) #16
  br label %9

5:                                                ; preds = %1
  %6 = fneg float %0
  %7 = tail call float @sqrtf(float noundef %6) #16
  %8 = fneg float %7
  br label %9

9:                                                ; preds = %5, %3
  %10 = phi float [ %4, %3 ], [ %8, %5 ]
  ret float %10
}

; Function Attrs: optsize
declare zeroext i8 @isect_plane_plane_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #10 !PGOFuncName !136 {
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = load float, ptr %2, align 4, !tbaa !34
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !34
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = fadd float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !34
  ret void
}

; Function Attrs: optsize
declare i32 @isect_line_line_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #10 !PGOFuncName !137 {
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = load float, ptr %2, align 4, !tbaa !34
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !34
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3(ptr nocapture noundef readonly %0) unnamed_addr #13 !PGOFuncName !138 {
  %2 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %0) #17
  %3 = tail call float @sqrtf(float noundef %2) #16
  ret float %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #14 !PGOFuncName !139 {
  %3 = load float, ptr %0, align 4, !tbaa !34
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !PGOFuncName !140 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  store float %3, ptr %0, align 4, !tbaa !34
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3(ptr nocapture noundef %0) unnamed_addr #13 !PGOFuncName !141 {
  tail call fastcc void @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v3_v3fl(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #10 !PGOFuncName !142 {
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = load float, ptr %0, align 4, !tbaa !34
  %6 = tail call float @llvm.fmuladd.f32(float %4, float %2, float %5)
  store float %6, ptr %0, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = tail call float @llvm.fmuladd.f32(float %8, float %2, float %10)
  store float %11, ptr %9, align 4, !tbaa !34
  %12 = getelementptr inbounds float, ptr %1, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = getelementptr inbounds float, ptr %0, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = tail call float @llvm.fmuladd.f32(float %13, float %2, float %15)
  store float %16, ptr %14, align 4, !tbaa !34
  ret void
}

; Function Attrs: optsize
declare float @dist_signed_squared_to_plane_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #13 !PGOFuncName !143 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #17
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #16
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #17
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #17
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #6 !PGOFuncName !144 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !34
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !34
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #15

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind optsize }
attributes #17 = { optsize }
attributes #18 = { nounwind }

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
!35 = !{!"float", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !42, i64 130}
!39 = !{!"Camera", !40, i64 0, !41, i64 120, !36, i64 128, !36, i64 129, !42, i64 130, !35, i64 132, !35, i64 136, !35, i64 140, !35, i64 144, !35, i64 148, !35, i64 152, !35, i64 156, !35, i64 160, !35, i64 164, !35, i64 168, !35, i64 172, !41, i64 176, !41, i64 184, !36, i64 192, !36, i64 193}
!40 = !{!"ID", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !36, i64 32, !42, i64 98, !43, i64 100, !43, i64 104, !43, i64 108, !41, i64 112}
!41 = !{!"any pointer", !36, i64 0}
!42 = !{!"short", !36, i64 0}
!43 = !{!"int", !36, i64 0}
!44 = !{!39, !41, i64 184}
!45 = !{!46, !41, i64 0}
!46 = !{!"Global", !41, i64 0, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 2057, !36, i64 2058, !47, i64 2064, !36, i64 2080, !36, i64 2081, !36, i64 2082, !42, i64 2084, !42, i64 2086, !42, i64 2088, !36, i64 2090, !42, i64 2092, !43, i64 2096, !43, i64 2100, !36, i64 2104, !43, i64 2108, !43, i64 2112, !36, i64 2116}
!47 = !{!"ListBase", !41, i64 0, !41, i64 8}
!48 = !{!39, !41, i64 24}
!49 = !{!39, !43, i64 100}
!50 = !{!41, !41, i64 0}
!51 = !{!52, !41, i64 296}
!52 = !{!"Object", !40, i64 0, !41, i64 120, !41, i64 128, !42, i64 136, !42, i64 138, !43, i64 140, !43, i64 144, !43, i64 148, !36, i64 152, !41, i64 216, !41, i64 224, !41, i64 232, !41, i64 240, !41, i64 248, !41, i64 256, !41, i64 264, !41, i64 272, !41, i64 280, !41, i64 288, !41, i64 296, !41, i64 304, !53, i64 312, !41, i64 360, !47, i64 368, !47, i64 384, !47, i64 400, !47, i64 416, !43, i64 432, !43, i64 436, !41, i64 440, !41, i64 448, !43, i64 456, !43, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !35, i64 616, !35, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !43, i64 944, !42, i64 948, !42, i64 950, !42, i64 952, !42, i64 954, !42, i64 956, !42, i64 958, !42, i64 960, !42, i64 962, !42, i64 964, !36, i64 966, !36, i64 967, !43, i64 968, !43, i64 972, !43, i64 976, !43, i64 980, !43, i64 984, !35, i64 988, !35, i64 992, !35, i64 996, !35, i64 1000, !35, i64 1004, !35, i64 1008, !35, i64 1012, !35, i64 1016, !35, i64 1020, !35, i64 1024, !35, i64 1028, !35, i64 1032, !42, i64 1036, !42, i64 1038, !42, i64 1040, !36, i64 1042, !36, i64 1043, !42, i64 1044, !36, i64 1046, !36, i64 1047, !35, i64 1048, !35, i64 1052, !47, i64 1056, !47, i64 1072, !47, i64 1088, !47, i64 1104, !35, i64 1120, !42, i64 1124, !42, i64 1126, !36, i64 1128, !43, i64 1144, !43, i64 1148, !41, i64 1152, !36, i64 1160, !36, i64 1161, !42, i64 1162, !36, i64 1164, !47, i64 1176, !47, i64 1192, !47, i64 1208, !47, i64 1224, !41, i64 1240, !41, i64 1248, !41, i64 1256, !36, i64 1264, !36, i64 1265, !42, i64 1266, !35, i64 1268, !41, i64 1272, !41, i64 1280, !41, i64 1288, !41, i64 1296, !54, i64 1304, !54, i64 1312, !43, i64 1320, !43, i64 1324, !47, i64 1328, !47, i64 1344, !41, i64 1360, !41, i64 1368, !41, i64 1376, !36, i64 1384, !41, i64 1392, !47, i64 1400, !41, i64 1416}
!53 = !{!"bAnimVizSettings", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !42, i64 16, !42, i64 18, !42, i64 20, !42, i64 22, !42, i64 24, !42, i64 26, !42, i64 28, !42, i64 30, !43, i64 32, !43, i64 36, !43, i64 40, !43, i64 44}
!54 = !{!"long", !36, i64 0}
!55 = !{!52, !41, i64 24}
!56 = distinct !{!56, !57}
!57 = !{!"llvm.loop.mustprogress"}
!58 = distinct !{!58, !57}
!59 = !{!60, !43, i64 520}
!60 = !{!"RenderData", !61, i64 0, !41, i64 248, !41, i64 256, !64, i64 264, !65, i64 328, !43, i64 400, !43, i64 404, !43, i64 408, !35, i64 412, !43, i64 416, !43, i64 420, !43, i64 424, !43, i64 428, !42, i64 432, !42, i64 434, !35, i64 436, !35, i64 440, !35, i64 444, !35, i64 448, !35, i64 452, !42, i64 456, !42, i64 458, !42, i64 460, !42, i64 462, !42, i64 464, !42, i64 466, !43, i64 468, !42, i64 472, !42, i64 474, !42, i64 476, !42, i64 478, !42, i64 480, !42, i64 482, !43, i64 484, !43, i64 488, !42, i64 492, !42, i64 494, !43, i64 496, !43, i64 500, !42, i64 504, !42, i64 506, !42, i64 508, !42, i64 510, !42, i64 512, !36, i64 514, !36, i64 515, !43, i64 516, !43, i64 520, !43, i64 524, !42, i64 528, !42, i64 530, !42, i64 532, !42, i64 534, !42, i64 536, !42, i64 538, !42, i64 540, !42, i64 542, !66, i64 544, !66, i64 560, !67, i64 576, !47, i64 592, !42, i64 608, !42, i64 610, !35, i64 612, !35, i64 616, !35, i64 620, !35, i64 624, !43, i64 628, !35, i64 632, !35, i64 636, !35, i64 640, !35, i64 644, !42, i64 648, !42, i64 650, !42, i64 652, !42, i64 654, !42, i64 656, !42, i64 658, !35, i64 660, !35, i64 664, !42, i64 668, !42, i64 670, !35, i64 672, !35, i64 676, !36, i64 680, !43, i64 1704, !42, i64 1708, !42, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !43, i64 2520, !42, i64 2524, !42, i64 2526, !35, i64 2528, !35, i64 2532, !42, i64 2536, !42, i64 2538, !35, i64 2540, !42, i64 2544, !42, i64 2546, !43, i64 2548, !42, i64 2552, !42, i64 2554, !42, i64 2556, !42, i64 2558, !35, i64 2560, !35, i64 2564, !41, i64 2568, !43, i64 2576, !35, i64 2580, !36, i64 2584, !68, i64 2616, !43, i64 3976, !43, i64 3980}
!61 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !42, i64 8, !42, i64 10, !35, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !62, i64 24, !63, i64 184}
!62 = !{!"ColorManagedViewSettings", !43, i64 0, !43, i64 4, !36, i64 8, !36, i64 72, !35, i64 136, !35, i64 140, !41, i64 144, !41, i64 152}
!63 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!64 = !{!"QuicktimeCodecSettings", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !43, i64 32, !43, i64 36, !43, i64 40, !43, i64 44, !42, i64 48, !42, i64 50, !43, i64 52, !43, i64 56, !43, i64 60}
!65 = !{!"FFMpegCodecData", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !35, i64 32, !43, i64 36, !43, i64 40, !43, i64 44, !43, i64 48, !43, i64 52, !43, i64 56, !43, i64 60, !41, i64 64}
!66 = !{!"rctf", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12}
!67 = !{!"rcti", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12}
!68 = !{!"BakeData", !61, i64 0, !36, i64 248, !42, i64 1272, !42, i64 1274, !42, i64 1276, !42, i64 1278, !35, i64 1280, !35, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!69 = !{!52, !42, i64 136}
!70 = !{!39, !36, i64 128}
!71 = !{!39, !35, i64 172}
!72 = !{!73, !35, i64 12}
!73 = !{!"CameraParams", !36, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !35, i64 24, !35, i64 28, !35, i64 32, !35, i64 36, !43, i64 40, !35, i64 44, !35, i64 48, !43, i64 52, !43, i64 56, !43, i64 60, !35, i64 64, !35, i64 68, !35, i64 72, !66, i64 76, !36, i64 92}
!74 = !{!73, !36, i64 0}
!75 = !{!39, !36, i64 192}
!76 = !{!73, !43, i64 40}
!77 = !{!78, !35, i64 180}
!78 = !{!"Lamp", !40, i64 0, !41, i64 120, !42, i64 128, !42, i64 130, !43, i64 132, !42, i64 136, !42, i64 138, !35, i64 140, !35, i64 144, !35, i64 148, !35, i64 152, !35, i64 156, !35, i64 160, !35, i64 164, !35, i64 168, !35, i64 172, !35, i64 176, !35, i64 180, !35, i64 184, !35, i64 188, !35, i64 192, !35, i64 196, !41, i64 200, !42, i64 208, !42, i64 210, !35, i64 212, !35, i64 216, !35, i64 220, !35, i64 224, !35, i64 228, !35, i64 232, !35, i64 236, !42, i64 240, !42, i64 242, !42, i64 244, !42, i64 246, !36, i64 248, !36, i64 249, !42, i64 250, !42, i64 252, !42, i64 254, !42, i64 256, !42, i64 258, !35, i64 260, !35, i64 264, !35, i64 268, !35, i64 272, !42, i64 276, !42, i64 278, !42, i64 280, !42, i64 282, !42, i64 284, !42, i64 286, !35, i64 288, !35, i64 292, !35, i64 296, !35, i64 300, !35, i64 304, !35, i64 308, !35, i64 312, !35, i64 316, !35, i64 320, !35, i64 324, !35, i64 328, !35, i64 332, !35, i64 336, !42, i64 340, !36, i64 342, !41, i64 344, !36, i64 352, !42, i64 496, !42, i64 498, !36, i64 500, !41, i64 504, !41, i64 512}
!79 = !{!73, !35, i64 4}
!80 = !{!81, !35, i64 244}
!81 = !{!"View3D", !41, i64 0, !41, i64 8, !47, i64 16, !43, i64 32, !35, i64 36, !36, i64 40, !36, i64 56, !35, i64 72, !35, i64 76, !36, i64 80, !36, i64 81, !43, i64 84, !43, i64 88, !42, i64 92, !42, i64 94, !41, i64 96, !41, i64 104, !66, i64 112, !47, i64 128, !41, i64 144, !41, i64 152, !36, i64 160, !43, i64 224, !43, i64 228, !42, i64 232, !42, i64 234, !42, i64 236, !42, i64 238, !42, i64 240, !42, i64 242, !35, i64 244, !35, i64 248, !35, i64 252, !35, i64 256, !36, i64 260, !36, i64 272, !42, i64 284, !42, i64 286, !42, i64 288, !36, i64 290, !36, i64 291, !36, i64 292, !36, i64 293, !36, i64 294, !47, i64 296, !47, i64 312, !47, i64 328, !36, i64 344, !36, i64 345, !36, i64 346, !36, i64 347, !41, i64 352, !41, i64 360, !41, i64 368}
!82 = !{!83, !36, i64 809}
!83 = !{!"RegionView3D", !36, i64 0, !36, i64 64, !36, i64 128, !36, i64 192, !36, i64 256, !36, i64 320, !36, i64 384, !36, i64 448, !36, i64 544, !41, i64 640, !41, i64 648, !41, i64 656, !41, i64 664, !41, i64 672, !41, i64 680, !41, i64 688, !36, i64 696, !36, i64 760, !35, i64 776, !35, i64 780, !35, i64 784, !35, i64 788, !36, i64 792, !35, i64 804, !36, i64 808, !36, i64 809, !36, i64 810, !36, i64 811, !36, i64 812, !36, i64 813, !36, i64 816, !42, i64 824, !42, i64 826, !36, i64 828, !42, i64 844, !42, i64 846, !35, i64 848, !36, i64 852, !35, i64 864, !36, i64 868}
!84 = !{!81, !41, i64 96}
!85 = !{!83, !35, i64 804}
!86 = !{!73, !35, i64 32}
!87 = !{!73, !35, i64 36}
!88 = !{!73, !35, i64 48}
!89 = !{!73, !35, i64 44}
!90 = !{!83, !35, i64 776}
!91 = !{!73, !35, i64 8}
!92 = !{!73, !35, i64 64}
!93 = !{!73, !43, i64 52}
!94 = !{i32 1, i32 0}
!95 = !{!73, !35, i64 16}
!96 = !{!73, !35, i64 24}
!97 = !{!73, !35, i64 20}
!98 = !{!73, !35, i64 28}
!99 = !{!73, !43, i64 56}
!100 = !{!73, !43, i64 60}
!101 = !{!73, !35, i64 68}
!102 = !{i64 0, i64 4, !34}
!103 = !{i64 0, i64 4, !34, i64 4, i64 4, !34, i64 8, i64 4, !34, i64 12, i64 4, !34}
!104 = !{i64 0, i64 4, !34, i64 4, i64 4, !34, i64 8, i64 4, !34}
!105 = !{i64 0, i64 4, !34, i64 4, i64 4, !34}
!106 = !{!107, !43, i64 764}
!107 = !{!"Scene", !40, i64 0, !41, i64 120, !41, i64 128, !41, i64 136, !41, i64 144, !47, i64 152, !41, i64 168, !41, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !43, i64 232, !43, i64 236, !43, i64 240, !42, i64 244, !36, i64 246, !36, i64 247, !41, i64 248, !41, i64 256, !41, i64 264, !41, i64 272, !60, i64 280, !108, i64 4264, !47, i64 4296, !47, i64 4312, !41, i64 4328, !41, i64 4336, !41, i64 4344, !41, i64 4352, !41, i64 4360, !41, i64 4368, !42, i64 4376, !42, i64 4378, !43, i64 4380, !47, i64 4384, !109, i64 4400, !110, i64 4416, !113, i64 4600, !41, i64 4608, !114, i64 4616, !41, i64 4640, !54, i64 4648, !54, i64 4656, !62, i64 4664, !63, i64 4824, !115, i64 4888, !41, i64 4952}
!108 = !{!"AudioData", !43, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !43, i64 16, !42, i64 20, !42, i64 22, !35, i64 24, !35, i64 28}
!109 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!110 = !{!"GameData", !109, i64 0, !42, i64 16, !42, i64 18, !42, i64 20, !42, i64 22, !42, i64 24, !42, i64 26, !42, i64 28, !42, i64 30, !42, i64 32, !36, i64 34, !111, i64 40, !42, i64 64, !42, i64 66, !35, i64 68, !112, i64 72, !35, i64 128, !35, i64 132, !43, i64 136, !42, i64 140, !42, i64 142, !42, i64 144, !42, i64 146, !42, i64 148, !42, i64 150, !42, i64 152, !42, i64 154, !42, i64 156, !42, i64 158, !42, i64 160, !42, i64 162, !35, i64 164, !35, i64 168, !35, i64 172, !35, i64 176, !35, i64 180}
!111 = !{!"GameDome", !42, i64 0, !42, i64 2, !42, i64 4, !42, i64 6, !35, i64 8, !35, i64 12, !41, i64 16}
!112 = !{!"RecastData", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !35, i64 24, !35, i64 28, !35, i64 32, !35, i64 36, !43, i64 40, !35, i64 44, !35, i64 48, !42, i64 52, !42, i64 54}
!113 = !{!"UnitSettings", !35, i64 0, !36, i64 4, !36, i64 5, !42, i64 6}
!114 = !{!"PhysicsSettings", !36, i64 0, !43, i64 12, !43, i64 16, !43, i64 20}
!115 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!116 = !{!107, !35, i64 892}
!117 = !{!107, !43, i64 768}
!118 = !{!107, !35, i64 896}
!119 = !{!39, !35, i64 148}
!120 = !{!39, !35, i64 164}
!121 = !{!39, !35, i64 168}
!122 = !{!39, !35, i64 136}
!123 = !{!39, !35, i64 144}
!124 = distinct !{!124, !57}
!125 = distinct !{!125, !57}
!126 = distinct !{!126, !57}
!127 = !{!128, !43, i64 176}
!128 = !{!"CameraViewFrameData", !36, i64 0, !36, i64 64, !36, i64 112, !36, i64 160, !43, i64 176}
!129 = distinct !{!129, !57}
!130 = !{!"camera.c:mul_v3_fl"}
!131 = !{!"camera.c:copy_v4_fl"}
!132 = !{!"camera.c:camera_to_frame_view_cb"}
!133 = distinct !{!133, !57}
!134 = !{!"camera.c:mul_v3_v3fl"}
!135 = !{!"camera.c:sqrtf_signed"}
!136 = !{!"camera.c:add_v3_v3v3"}
!137 = !{!"camera.c:sub_v3_v3v3"}
!138 = !{!"camera.c:len_v3"}
!139 = !{!"camera.c:dot_v3v3"}
!140 = !{!"camera.c:copy_v3_v3"}
!141 = !{!"camera.c:normalize_v3"}
!142 = !{!"camera.c:madd_v3_v3fl"}
!143 = !{!"camera.c:normalize_v3_v3"}
!144 = !{!"camera.c:zero_v3"}
