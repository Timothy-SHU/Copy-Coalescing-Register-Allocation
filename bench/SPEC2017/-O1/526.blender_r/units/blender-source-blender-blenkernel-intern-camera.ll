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

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_camera_add(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BKE_libblock_alloc(ptr noundef %0, i16 noundef signext 16707, ptr noundef %1) #12
  %4 = getelementptr inbounds %struct.Camera, ptr %3, i64 0, i32 8
  store float 3.500000e+01, ptr %4, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Camera, ptr %3, i64 0, i32 11
  store float 3.200000e+01, ptr %5, align 4, !tbaa !43
  %6 = getelementptr inbounds %struct.Camera, ptr %3, i64 0, i32 12
  store float 1.800000e+01, ptr %6, align 8, !tbaa !44
  %7 = getelementptr inbounds %struct.Camera, ptr %3, i64 0, i32 6
  store float 0x3FB99999A0000000, ptr %7, align 8, !tbaa !45
  %8 = getelementptr inbounds %struct.Camera, ptr %3, i64 0, i32 7
  store float 1.000000e+02, ptr %8, align 4, !tbaa !46
  %9 = getelementptr inbounds %struct.Camera, ptr %3, i64 0, i32 10
  store float 5.000000e-01, ptr %9, align 8, !tbaa !47
  %10 = getelementptr inbounds %struct.Camera, ptr %3, i64 0, i32 9
  store float 6.000000e+00, ptr %10, align 4, !tbaa !48
  %11 = getelementptr inbounds %struct.Camera, ptr %3, i64 0, i32 4
  %12 = load i16, ptr %11, align 2, !tbaa !49
  %13 = or i16 %12, 4
  store i16 %13, ptr %11, align 2, !tbaa !49
  %14 = getelementptr inbounds %struct.Camera, ptr %3, i64 0, i32 5
  store float 5.000000e-01, ptr %14, align 4, !tbaa !50
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @BKE_libblock_alloc(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_camera_copy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BKE_libblock_copy(ptr noundef %0) #12
  %3 = getelementptr inbounds %struct.Camera, ptr %2, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !51
  tail call void @id_lib_extern(ptr noundef %4) #12
  ret ptr %2
}

declare ptr @BKE_libblock_copy(ptr noundef) local_unnamed_addr #2

declare void @id_lib_extern(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BKE_camera_make_local(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @G, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = icmp eq ptr %4, null
  br i1 %5, label %74, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !56
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %73, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %12 = load ptr, ptr %11, align 8, !tbaa !57
  %13 = icmp eq ptr %12, null
  br i1 %13, label %40, label %14

14:                                               ; preds = %10, %31
  %15 = phi ptr [ %34, %31 ], [ %12, %10 ]
  %16 = phi i8 [ %33, %31 ], [ 0, %10 ]
  %17 = phi i8 [ %32, %31 ], [ 0, %10 ]
  %18 = icmp eq i8 %16, 0
  %19 = icmp eq i8 %17, 0
  %20 = select i1 %18, i1 true, i1 %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 19
  %23 = load ptr, ptr %22, align 8, !tbaa !58
  %24 = icmp eq ptr %23, %0
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.ID, ptr %15, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !62
  %28 = icmp eq ptr %27, null
  %29 = select i1 %28, i8 1, i8 %17
  %30 = select i1 %28, i8 %16, i8 1
  br label %31

31:                                               ; preds = %25, %21
  %32 = phi i8 [ %17, %21 ], [ %29, %25 ]
  %33 = phi i8 [ %16, %21 ], [ %30, %25 ]
  %34 = load ptr, ptr %15, align 8, !tbaa !57
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %14, !llvm.loop !63

36:                                               ; preds = %31, %14
  %37 = phi i8 [ %17, %14 ], [ %32, %31 ]
  %38 = phi i8 [ %16, %14 ], [ %33, %31 ]
  %39 = icmp ne i8 %37, 0
  br label %40

40:                                               ; preds = %36, %10
  %41 = phi i1 [ false, %10 ], [ %39, %36 ]
  %42 = phi i8 [ 0, %10 ], [ %38, %36 ]
  %43 = icmp eq i8 %42, 0
  %44 = select i1 %41, i1 %43, i1 false
  br i1 %44, label %73, label %45

45:                                               ; preds = %40
  %46 = icmp ne i8 %42, 0
  %47 = select i1 %41, i1 %46, i1 false
  br i1 %47, label %48, label %74

48:                                               ; preds = %45
  %49 = tail call ptr @BKE_libblock_copy(ptr noundef %0) #12
  %50 = getelementptr inbounds %struct.Camera, ptr %49, i64 0, i32 17
  %51 = load ptr, ptr %50, align 8, !tbaa !51
  tail call void @id_lib_extern(ptr noundef %51) #12
  %52 = getelementptr inbounds %struct.ID, ptr %49, i64 0, i32 6
  store i32 0, ptr %52, align 4, !tbaa !56
  %53 = load ptr, ptr %3, align 8, !tbaa !55
  tail call void @BKE_id_lib_local_paths(ptr noundef %2, ptr noundef %53, ptr noundef %49) #12
  %54 = load ptr, ptr %11, align 8, !tbaa !57
  %55 = icmp eq ptr %54, null
  br i1 %55, label %74, label %56

56:                                               ; preds = %48, %70
  %57 = phi ptr [ %71, %70 ], [ %54, %48 ]
  %58 = getelementptr inbounds %struct.Object, ptr %57, i64 0, i32 19
  %59 = load ptr, ptr %58, align 8, !tbaa !58
  %60 = icmp eq ptr %59, %0
  br i1 %60, label %61, label %70

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.ID, ptr %57, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !62
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  store ptr %49, ptr %58, align 8, !tbaa !58
  %66 = load i32, ptr %52, align 4, !tbaa !56
  %67 = add nsw i32 %66, 1
  store i32 %67, ptr %52, align 4, !tbaa !56
  %68 = load i32, ptr %7, align 4, !tbaa !56
  %69 = add nsw i32 %68, -1
  store i32 %69, ptr %7, align 4, !tbaa !56
  br label %70

70:                                               ; preds = %56, %65, %61
  %71 = load ptr, ptr %57, align 8, !tbaa !57
  %72 = icmp eq ptr %71, null
  br i1 %72, label %74, label %56, !llvm.loop !66

73:                                               ; preds = %40, %6
  tail call void @id_clear_lib_data(ptr noundef %2, ptr noundef %0) #12
  br label %74

74:                                               ; preds = %70, %73, %48, %45, %1
  ret void
}

declare void @id_clear_lib_data(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_id_lib_local_paths(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BKE_camera_free(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @BKE_free_animdata(ptr noundef %0) #12
  ret void
}

declare void @BKE_free_animdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_camera_object_mode(ptr nocapture noundef %0, ptr noundef readonly %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.RenderData, ptr %0, i64 0, i32 47
  %4 = load i32, ptr %3, align 8, !tbaa !67
  %5 = and i32 %4, -1033
  store i32 %5, ptr %3, align 8, !tbaa !67
  %6 = icmp eq ptr %1, null
  br i1 %6, label %23, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %9 = load i16, ptr %8, align 8, !tbaa !77
  %10 = icmp eq i16 %9, 11
  br i1 %10, label %11, label %23

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !58
  %14 = getelementptr inbounds %struct.Camera, ptr %13, i64 0, i32 2
  %15 = load i8, ptr %14, align 8, !tbaa !78
  switch i8 %15, label %23 [
    i8 1, label %16
    i8 2, label %18
  ]

16:                                               ; preds = %11
  %17 = or disjoint i32 %5, 8
  br label %21

18:                                               ; preds = %11
  %19 = load i32, ptr %3, align 8, !tbaa !67
  %20 = or i32 %19, 1024
  br label %21

21:                                               ; preds = %18, %16
  %22 = phi i32 [ %17, %16 ], [ %20, %18 ]
  store i32 %22, ptr %3, align 8, !tbaa !67
  br label %23

23:                                               ; preds = %21, %11, %7, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local float @BKE_camera_object_dof_distance(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [4 x [4 x float]], align 16
  %3 = alloca [4 x [4 x float]], align 16
  %4 = alloca [4 x [4 x float]], align 16
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !58
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %8 = load i16, ptr %7, align 8, !tbaa !77
  %9 = icmp eq i16 %8, 11
  br i1 %9, label %10, label %25

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.Camera, ptr %6, i64 0, i32 17
  %12 = load ptr, ptr %11, align 8, !tbaa !51
  %13 = icmp eq ptr %12, null
  br i1 %13, label %22, label %14

14:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #12
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #12
  %15 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  call void @copy_m4_m4(ptr noundef nonnull %4, ptr noundef nonnull %15) #12
  call void @normalize_m4(ptr noundef nonnull %4) #12
  %16 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %3, ptr noundef nonnull %4) #12
  %17 = load ptr, ptr %11, align 8, !tbaa !51
  %18 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %18) #12
  %19 = getelementptr inbounds [4 x [4 x float]], ptr %2, i64 0, i64 3, i64 2
  %20 = load float, ptr %19, align 8, !tbaa !79
  %21 = call float @llvm.fabs.f32(float %20)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #12
  br label %25

22:                                               ; preds = %10
  %23 = getelementptr inbounds %struct.Camera, ptr %6, i64 0, i32 15
  %24 = load float, ptr %23, align 4, !tbaa !80
  br label %25

25:                                               ; preds = %1, %22, %14
  %26 = phi float [ %21, %14 ], [ %24, %22 ], [ 0.000000e+00, %1 ]
  ret float %26
}

declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @normalize_m4(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef float @BKE_camera_sensor_size(i32 noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #5 {
  %4 = icmp eq i32 %0, 2
  %5 = select i1 %4, float %2, float %1
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @BKE_camera_sensor_fit(i32 noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #5 {
  %4 = icmp eq i32 %0, 0
  %5 = fcmp ult float %1, %2
  %6 = select i1 %5, i32 2, i32 1
  %7 = select i1 %4, i32 %6, i32 %0
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @BKE_camera_params_init(ptr nocapture noundef writeonly %0) local_unnamed_addr #6 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(156) %0, i8 0, i64 156, i1 false)
  %2 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 8
  store float 3.200000e+01, ptr %2, align 4, !tbaa !81
  %3 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 9
  store float 1.800000e+01, ptr %3, align 4, !tbaa !83
  %4 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 10
  store i32 0, ptr %4, align 4, !tbaa !84
  %5 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 3
  store float 1.000000e+00, ptr %5, align 4, !tbaa !85
  %6 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 11
  store float 0x3FB99999A0000000, ptr %6, align 4, !tbaa !86
  %7 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 12
  store float 1.000000e+02, ptr %7, align 4, !tbaa !87
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @BKE_camera_params_from_object(ptr nocapture noundef writeonly %0, ptr noundef readonly %1) local_unnamed_addr #8 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %65, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !77
  switch i16 %6, label %63 [
    i16 11, label %7
    i16 10, label %43
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !58
  %10 = getelementptr inbounds %struct.Camera, ptr %9, i64 0, i32 2
  %11 = load i8, ptr %10, align 8, !tbaa !78
  %12 = icmp eq i8 %11, 1
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  store i8 1, ptr %0, align 4, !tbaa !88
  br label %14

14:                                               ; preds = %13, %7
  %15 = getelementptr inbounds %struct.Camera, ptr %9, i64 0, i32 8
  %16 = load float, ptr %15, align 8, !tbaa !34
  %17 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 1
  store float %16, ptr %17, align 4, !tbaa !89
  %18 = getelementptr inbounds %struct.Camera, ptr %9, i64 0, i32 9
  %19 = load float, ptr %18, align 4, !tbaa !48
  %20 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 2
  store float %19, ptr %20, align 4, !tbaa !90
  %21 = getelementptr inbounds %struct.Camera, ptr %9, i64 0, i32 13
  %22 = load float, ptr %21, align 4, !tbaa !91
  %23 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 4
  store float %22, ptr %23, align 4, !tbaa !92
  %24 = getelementptr inbounds %struct.Camera, ptr %9, i64 0, i32 14
  %25 = load float, ptr %24, align 8, !tbaa !93
  %26 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 5
  store float %25, ptr %26, align 4, !tbaa !94
  %27 = getelementptr inbounds %struct.Camera, ptr %9, i64 0, i32 11
  %28 = load float, ptr %27, align 4, !tbaa !43
  %29 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 8
  store float %28, ptr %29, align 4, !tbaa !81
  %30 = getelementptr inbounds %struct.Camera, ptr %9, i64 0, i32 12
  %31 = load float, ptr %30, align 8, !tbaa !44
  %32 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 9
  store float %31, ptr %32, align 4, !tbaa !83
  %33 = getelementptr inbounds %struct.Camera, ptr %9, i64 0, i32 18
  %34 = load i8, ptr %33, align 8, !tbaa !95
  %35 = zext i8 %34 to i32
  %36 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 10
  store i32 %35, ptr %36, align 4, !tbaa !84
  %37 = getelementptr inbounds %struct.Camera, ptr %9, i64 0, i32 6
  %38 = load float, ptr %37, align 8, !tbaa !45
  %39 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 11
  store float %38, ptr %39, align 4, !tbaa !86
  %40 = getelementptr inbounds %struct.Camera, ptr %9, i64 0, i32 7
  %41 = load float, ptr %40, align 4, !tbaa !46
  %42 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 12
  store float %41, ptr %42, align 4, !tbaa !87
  br label %65

43:                                               ; preds = %4
  %44 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %45 = load ptr, ptr %44, align 8, !tbaa !58
  %46 = getelementptr inbounds %struct.Lamp, ptr %45, i64 0, i32 17
  %47 = load float, ptr %46, align 4, !tbaa !96
  %48 = fmul float %47, 5.000000e-01
  %49 = tail call float @cosf(float noundef %48) #12
  %50 = tail call float @acosf(float noundef %49) #12
  %51 = fmul float %49, 1.600000e+01
  %52 = tail call float @sinf(float noundef %50) #12
  %53 = fdiv float %51, %52
  %54 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 1
  %55 = fcmp oeq float %53, 0.000000e+00
  %56 = select i1 %55, float 3.500000e+01, float %53
  store float %56, ptr %54, align 4, !tbaa !89
  %57 = getelementptr inbounds %struct.Lamp, ptr %45, i64 0, i32 25
  %58 = load float, ptr %57, align 4, !tbaa !98
  %59 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 11
  store float %58, ptr %59, align 4, !tbaa !86
  %60 = getelementptr inbounds %struct.Lamp, ptr %45, i64 0, i32 26
  %61 = load float, ptr %60, align 8, !tbaa !99
  %62 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 12
  store float %61, ptr %62, align 4, !tbaa !87
  br label %65

63:                                               ; preds = %4
  %64 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 1
  store float 3.500000e+01, ptr %64, align 4, !tbaa !89
  br label %65

65:                                               ; preds = %43, %63, %2, %14
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @acosf(float noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local void @BKE_camera_params_from_view3d(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 30
  %5 = load float, ptr %4, align 4, !tbaa !100
  %6 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 1
  store float %5, ptr %6, align 4, !tbaa !89
  %7 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 32
  %8 = load float, ptr %7, align 4, !tbaa !102
  %9 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 11
  store float %8, ptr %9, align 4, !tbaa !86
  %10 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 33
  %11 = load float, ptr %10, align 8, !tbaa !103
  %12 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 12
  store float %11, ptr %12, align 4, !tbaa !87
  %13 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 25
  %14 = load i8, ptr %13, align 1, !tbaa !104
  switch i8 %14, label %58 [
    i8 2, label %15
    i8 0, label %39
  ]

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 15
  %17 = load ptr, ptr %16, align 8, !tbaa !106
  tail call void @BKE_camera_params_from_object(ptr noundef %0, ptr noundef %17)
  %18 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 23
  %19 = load float, ptr %18, align 4, !tbaa !107
  %20 = tail call float @BKE_screen_view3d_zoom_to_fac(float noundef %19) #12
  %21 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 3
  store float %20, ptr %21, align 4, !tbaa !85
  %22 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 19
  %23 = load float, ptr %22, align 4, !tbaa !108
  %24 = fmul float %23, 2.000000e+00
  %25 = fmul float %20, %24
  %26 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 6
  store float %25, ptr %26, align 4, !tbaa !109
  %27 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 20
  %28 = load float, ptr %27, align 8, !tbaa !110
  %29 = fmul float %28, 2.000000e+00
  %30 = fmul float %20, %29
  %31 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 7
  store float %30, ptr %31, align 4, !tbaa !111
  %32 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 4
  %33 = load float, ptr %32, align 4, !tbaa !92
  %34 = fmul float %20, %33
  store float %34, ptr %32, align 4, !tbaa !92
  %35 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 5
  %36 = load float, ptr %35, align 4, !tbaa !94
  %37 = fmul float %20, %36
  store float %37, ptr %35, align 4, !tbaa !94
  %38 = fdiv float 1.000000e+00, %20
  store float %38, ptr %21, align 4, !tbaa !85
  br label %60

39:                                               ; preds = %3
  %40 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 10
  %41 = load i32, ptr %40, align 4, !tbaa !84
  %42 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 8
  %43 = load float, ptr %42, align 4, !tbaa !81
  %44 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 9
  %45 = load float, ptr %44, align 4, !tbaa !83
  %46 = icmp eq i32 %41, 2
  %47 = select i1 %46, float %45, float %43
  %48 = fptosi float %47 to i32
  %49 = fmul float %11, 5.000000e-01
  store float %49, ptr %12, align 4, !tbaa !87
  %50 = fneg float %49
  store float %50, ptr %9, align 4, !tbaa !86
  store i8 1, ptr %0, align 4, !tbaa !88
  %51 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 18
  %52 = load float, ptr %51, align 8, !tbaa !112
  %53 = sitofp i32 %48 to float
  %54 = fmul float %52, %53
  %55 = fdiv float %54, %5
  %56 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 2
  store float %55, ptr %56, align 4, !tbaa !90
  %57 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 3
  store float 2.000000e+00, ptr %57, align 4, !tbaa !85
  br label %60

58:                                               ; preds = %3
  %59 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 3
  store float 2.000000e+00, ptr %59, align 4, !tbaa !85
  br label %60

60:                                               ; preds = %39, %58, %15
  ret void
}

declare float @BKE_screen_view3d_zoom_to_fac(float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_camera_params_compute_viewplane(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #10 {
  %6 = fdiv float %4, %3
  %7 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 16
  store float %6, ptr %7, align 4, !tbaa !113
  %8 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 13
  %9 = load i32, ptr %8, align 4, !tbaa !114
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %5
  %12 = fmul float %6, 2.000000e+00
  store float %12, ptr %7, align 4, !tbaa !113
  br label %13

13:                                               ; preds = %11, %5
  %14 = load i8, ptr %0, align 4, !tbaa !88
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 2
  %18 = load float, ptr %17, align 4, !tbaa !90
  br label %34

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 10
  %21 = load i32, ptr %20, align 4, !tbaa !84
  %22 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 8
  %23 = load float, ptr %22, align 4, !tbaa !81
  %24 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 9
  %25 = load float, ptr %24, align 4, !tbaa !83
  %26 = icmp eq i32 %21, 2
  %27 = select i1 %26, float %25, float %23
  %28 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 11
  %29 = load float, ptr %28, align 4, !tbaa !86
  %30 = fmul float %27, %29
  %31 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 1
  %32 = load float, ptr %31, align 4, !tbaa !89
  %33 = fdiv float %30, %32
  br label %34

34:                                               ; preds = %19, %16
  %35 = phi float [ %18, %16 ], [ %33, %19 ]
  %36 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 10
  %37 = load i32, ptr %36, align 4, !tbaa !84
  %38 = sitofp i32 %1 to float
  %39 = fmul float %38, %3
  %40 = sitofp i32 %2 to float
  %41 = fmul float %40, %4
  %42 = icmp eq i32 %37, 0
  %43 = fcmp ult float %39, %41
  %44 = select i1 %43, i32 2, i32 1
  %45 = select i1 %42, i32 %44, i32 %37
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %50, label %47

47:                                               ; preds = %34
  %48 = load float, ptr %7, align 4, !tbaa !113
  %49 = fmul float %48, %40
  br label %50

50:                                               ; preds = %34, %47
  %51 = phi float [ %49, %47 ], [ %38, %34 ]
  %52 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 3
  %53 = load float, ptr %52, align 4, !tbaa !85
  %54 = load float, ptr %7, align 4, !tbaa !113
  %55 = fmul float %54, 5.000000e-01
  %56 = fmul float %55, %40
  %57 = fmul float %54, 5.000000e-01
  %58 = fmul float %57, %40
  %59 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 4
  %60 = load float, ptr %59, align 4, !tbaa !92
  %61 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 6
  %62 = load float, ptr %61, align 4, !tbaa !109
  %63 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 5
  %64 = load float, ptr %63, align 4, !tbaa !94
  %65 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 7
  %66 = load float, ptr %65, align 4, !tbaa !111
  %67 = fmul float %66, %40
  %68 = tail call float @llvm.fmuladd.f32(float %64, float %51, float %67)
  %69 = fsub float %68, %56
  %70 = fadd float %58, %68
  %71 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 14
  %72 = load i32, ptr %71, align 4, !tbaa !115
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %84, label %74

74:                                               ; preds = %50
  %75 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 15
  %76 = load i32, ptr %75, align 4, !tbaa !116
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %74
  %79 = tail call float @llvm.fmuladd.f32(float %54, float -5.000000e-01, float %69)
  %80 = tail call float @llvm.fmuladd.f32(float %54, float -5.000000e-01, float %70)
  br label %84

81:                                               ; preds = %74
  %82 = tail call float @llvm.fmuladd.f32(float %54, float 5.000000e-01, float %69)
  %83 = tail call float @llvm.fmuladd.f32(float %54, float 5.000000e-01, float %70)
  br label %84

84:                                               ; preds = %78, %81, %50
  %85 = phi float [ %79, %78 ], [ %82, %81 ], [ %69, %50 ]
  %86 = phi float [ %80, %78 ], [ %83, %81 ], [ %70, %50 ]
  %87 = fmul float %38, 5.000000e-01
  %88 = fmul float %62, %38
  %89 = tail call float @llvm.fmuladd.f32(float %60, float %51, float %88)
  %90 = fadd float %87, %89
  %91 = fmul float %38, 5.000000e-01
  %92 = fsub float %89, %91
  %93 = fdiv float %35, %51
  %94 = fmul float %93, %53
  %95 = fmul float %94, %92
  %96 = fmul float %94, %90
  %97 = fmul float %94, %85
  %98 = fmul float %94, %86
  %99 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 17
  store float %94, ptr %99, align 4, !tbaa !117
  %100 = fmul float %54, %94
  %101 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 18
  store float %100, ptr %101, align 4, !tbaa !118
  %102 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 19
  store float %95, ptr %102, align 4, !tbaa.struct !119
  %103 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 19, i32 1
  store float %96, ptr %103, align 4, !tbaa.struct !120
  %104 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 19, i32 2
  store float %97, ptr %104, align 4, !tbaa.struct !121
  %105 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 19, i32 3
  store float %98, ptr %105, align 4, !tbaa.struct !122
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: nounwind uwtable
define dso_local void @BKE_camera_params_compute_matrix(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 19
  %3 = load float, ptr %2, align 4, !tbaa.struct !119
  %4 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 19, i32 1
  %5 = load float, ptr %4, align 4, !tbaa.struct !120
  %6 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 19, i32 2
  %7 = load float, ptr %6, align 4, !tbaa.struct !121
  %8 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 19, i32 3
  %9 = load float, ptr %8, align 4, !tbaa.struct !122
  %10 = load i8, ptr %0, align 4, !tbaa !88
  %11 = icmp eq i8 %10, 0
  %12 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 20
  %13 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 11
  %14 = load float, ptr %13, align 4, !tbaa !86
  %15 = getelementptr inbounds %struct.CameraParams, ptr %0, i64 0, i32 12
  %16 = load float, ptr %15, align 4, !tbaa !87
  br i1 %11, label %18, label %17

17:                                               ; preds = %1
  tail call void @orthographic_m4(ptr noundef nonnull %12, float noundef %3, float noundef %5, float noundef %7, float noundef %9, float noundef %14, float noundef %16) #12
  br label %19

18:                                               ; preds = %1
  tail call void @perspective_m4(ptr noundef nonnull %12, float noundef %3, float noundef %5, float noundef %7, float noundef %9, float noundef %14, float noundef %16) #12
  br label %19

19:                                               ; preds = %18, %17
  ret void
}

declare void @orthographic_m4(ptr noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @perspective_m4(ptr noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_camera_view_frame_ex(ptr noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2, i8 noundef zeroext %3, ptr nocapture noundef readonly %4, ptr nocapture noundef %5, ptr nocapture noundef %6, ptr nocapture noundef writeonly %7, ptr nocapture noundef writeonly %8) local_unnamed_addr #3 {
  %10 = icmp eq ptr %0, null
  br i1 %10, label %37, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 33
  %13 = load i32, ptr %12, align 4, !tbaa !123
  %14 = sitofp i32 %13 to float
  %15 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 63
  %16 = load float, ptr %15, align 4, !tbaa !133
  %17 = fmul float %16, %14
  %18 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 34
  %19 = load i32, ptr %18, align 8, !tbaa !134
  %20 = sitofp i32 %19 to float
  %21 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 64
  %22 = load float, ptr %21, align 8, !tbaa !135
  %23 = fmul float %22, %20
  %24 = getelementptr inbounds %struct.Camera, ptr %1, i64 0, i32 18
  %25 = load i8, ptr %24, align 8, !tbaa !95
  %26 = zext i8 %25 to i32
  %27 = icmp eq i8 %25, 0
  %28 = fcmp ult float %17, %23
  %29 = select i1 %28, i32 2, i32 1
  %30 = select i1 %27, i32 %29, i32 %26
  %31 = icmp eq i32 %30, 1
  %32 = getelementptr inbounds float, ptr %5, i64 1
  br i1 %31, label %33, label %35

33:                                               ; preds = %11
  store float 1.000000e+00, ptr %5, align 4, !tbaa !79
  %34 = fdiv float %23, %17
  store float %34, ptr %32, align 4, !tbaa !79
  br label %39

35:                                               ; preds = %11
  %36 = fdiv float %17, %23
  store float %36, ptr %5, align 4, !tbaa !79
  store float 1.000000e+00, ptr %32, align 4, !tbaa !79
  br label %39

37:                                               ; preds = %9
  store float 1.000000e+00, ptr %5, align 4, !tbaa !79
  %38 = getelementptr inbounds float, ptr %5, i64 1
  store float 1.000000e+00, ptr %38, align 4, !tbaa !79
  br label %39

39:                                               ; preds = %33, %35, %37
  %40 = getelementptr inbounds %struct.Camera, ptr %1, i64 0, i32 2
  %41 = load i8, ptr %40, align 8, !tbaa !78
  %42 = icmp eq i8 %41, 1
  br i1 %42, label %43, label %87

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.Camera, ptr %1, i64 0, i32 9
  %45 = load float, ptr %44, align 4, !tbaa !48
  %46 = fmul float %45, 5.000000e-01
  %47 = load float, ptr %5, align 4, !tbaa !79
  %48 = fmul float %46, %47
  %49 = load float, ptr %4, align 4, !tbaa !79
  %50 = fmul float %48, %49
  %51 = getelementptr inbounds float, ptr %5, i64 1
  %52 = load float, ptr %51, align 4, !tbaa !79
  %53 = fmul float %46, %52
  %54 = getelementptr inbounds float, ptr %4, i64 1
  %55 = load float, ptr %54, align 4, !tbaa !79
  %56 = fmul float %53, %55
  %57 = getelementptr inbounds %struct.Camera, ptr %1, i64 0, i32 13
  %58 = load float, ptr %57, align 4, !tbaa !91
  %59 = fmul float %45, %58
  %60 = fmul float %49, %59
  store float %60, ptr %6, align 4, !tbaa !79
  %61 = getelementptr inbounds %struct.Camera, ptr %1, i64 0, i32 14
  %62 = load float, ptr %61, align 8, !tbaa !93
  %63 = load float, ptr %44, align 4, !tbaa !48
  %64 = fmul float %62, %63
  %65 = load float, ptr %54, align 4, !tbaa !79
  %66 = fmul float %64, %65
  %67 = getelementptr inbounds float, ptr %6, i64 1
  store float %66, ptr %67, align 4, !tbaa !79
  %68 = icmp eq i8 %3, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %43
  %70 = getelementptr inbounds %struct.Camera, ptr %1, i64 0, i32 6
  %71 = load float, ptr %70, align 8, !tbaa !45
  %72 = getelementptr inbounds float, ptr %4, i64 2
  %73 = load float, ptr %72, align 4, !tbaa !79
  %74 = tail call float @llvm.fmuladd.f32(float %71, float %73, float 0x3FB99999A0000000)
  %75 = fneg float %74
  br label %83

76:                                               ; preds = %43
  %77 = fneg float %2
  %78 = load float, ptr %44, align 4, !tbaa !48
  %79 = fmul float %78, %77
  %80 = getelementptr inbounds float, ptr %4, i64 2
  %81 = load float, ptr %80, align 4, !tbaa !79
  %82 = fmul float %79, %81
  br label %83

83:                                               ; preds = %76, %69
  %84 = phi float [ %75, %69 ], [ %82, %76 ]
  %85 = load float, ptr %44, align 4, !tbaa !48
  %86 = fmul float %85, 5.000000e-01
  store float %86, ptr %7, align 4, !tbaa !79
  br label %152

87:                                               ; preds = %39
  %88 = getelementptr inbounds %struct.Camera, ptr %1, i64 0, i32 18
  %89 = load i8, ptr %88, align 8, !tbaa !95
  %90 = icmp eq i8 %89, 2
  %91 = getelementptr inbounds %struct.Camera, ptr %1, i64 0, i32 12
  %92 = getelementptr inbounds %struct.Camera, ptr %1, i64 0, i32 11
  %93 = select i1 %90, ptr %91, ptr %92
  %94 = load float, ptr %93, align 4, !tbaa !79
  %95 = fmul float %94, 5.000000e-01
  %96 = icmp eq i8 %3, 0
  br i1 %96, label %110, label %97

97:                                               ; preds = %87
  store float 1.000000e+00, ptr %7, align 4, !tbaa !79
  %98 = getelementptr inbounds %struct.Camera, ptr %1, i64 0, i32 6
  %99 = load float, ptr %98, align 8, !tbaa !45
  %100 = fadd float %99, 0x3FB99999A0000000
  %101 = fneg float %100
  %102 = getelementptr inbounds float, ptr %4, i64 2
  %103 = load float, ptr %102, align 4, !tbaa !79
  %104 = fmul float %103, %101
  %105 = getelementptr inbounds %struct.Camera, ptr %1, i64 0, i32 8
  %106 = load float, ptr %105, align 8, !tbaa !34
  %107 = fneg float %95
  %108 = fdiv float %106, %107
  %109 = fdiv float %104, %108
  br label %129

110:                                              ; preds = %87
  %111 = load float, ptr %4, align 4, !tbaa !79
  %112 = getelementptr inbounds float, ptr %4, i64 1
  %113 = load float, ptr %112, align 4, !tbaa !79
  %114 = fadd float %111, %113
  %115 = getelementptr inbounds float, ptr %4, i64 2
  %116 = load float, ptr %115, align 4, !tbaa !79
  %117 = fadd float %114, %116
  %118 = fdiv float %117, 3.000000e+00
  %119 = fdiv float %2, %118
  store float %119, ptr %7, align 4, !tbaa !79
  %120 = getelementptr inbounds %struct.Camera, ptr %1, i64 0, i32 8
  %121 = load float, ptr %120, align 8, !tbaa !34
  %122 = fmul float %121, %119
  %123 = fneg float %95
  %124 = fdiv float %122, %123
  %125 = load float, ptr %115, align 4, !tbaa !79
  %126 = fmul float %125, %124
  %127 = load float, ptr %4, align 4, !tbaa !79
  %128 = load float, ptr %112, align 4, !tbaa !79
  br label %129

129:                                              ; preds = %110, %97
  %130 = phi float [ %104, %97 ], [ %126, %110 ]
  %131 = phi float [ %109, %97 ], [ %119, %110 ]
  %132 = phi float [ 1.000000e+00, %97 ], [ %127, %110 ]
  %133 = phi float [ 1.000000e+00, %97 ], [ %128, %110 ]
  %134 = load float, ptr %5, align 4, !tbaa !79
  %135 = fmul float %131, %134
  %136 = fmul float %132, %135
  %137 = getelementptr inbounds float, ptr %5, i64 1
  %138 = load float, ptr %137, align 4, !tbaa !79
  %139 = fmul float %131, %138
  %140 = fmul float %133, %139
  %141 = getelementptr inbounds %struct.Camera, ptr %1, i64 0, i32 13
  %142 = load float, ptr %141, align 4, !tbaa !91
  %143 = fmul float %131, %142
  %144 = fmul float %143, 2.000000e+00
  %145 = fmul float %132, %144
  store float %145, ptr %6, align 4, !tbaa !79
  %146 = getelementptr inbounds %struct.Camera, ptr %1, i64 0, i32 14
  %147 = load float, ptr %146, align 8, !tbaa !93
  %148 = fmul float %131, %147
  %149 = fmul float %148, 2.000000e+00
  %150 = fmul float %133, %149
  %151 = getelementptr inbounds float, ptr %6, i64 1
  store float %150, ptr %151, align 4, !tbaa !79
  br label %152

152:                                              ; preds = %129, %83
  %153 = phi float [ %84, %83 ], [ %130, %129 ]
  %154 = phi float [ %56, %83 ], [ %140, %129 ]
  %155 = phi float [ %50, %83 ], [ %136, %129 ]
  %156 = load float, ptr %6, align 4, !tbaa !79
  %157 = fadd float %155, %156
  store float %157, ptr %8, align 4, !tbaa !79
  %158 = getelementptr inbounds float, ptr %6, i64 1
  %159 = load float, ptr %158, align 4, !tbaa !79
  %160 = fadd float %154, %159
  %161 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 1
  store float %160, ptr %161, align 4, !tbaa !79
  %162 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  store float %153, ptr %162, align 4, !tbaa !79
  %163 = load float, ptr %6, align 4, !tbaa !79
  %164 = fadd float %155, %163
  %165 = getelementptr inbounds [3 x float], ptr %8, i64 1
  store float %164, ptr %165, align 4, !tbaa !79
  %166 = load float, ptr %158, align 4, !tbaa !79
  %167 = fsub float %166, %154
  %168 = getelementptr inbounds [3 x float], ptr %8, i64 1, i64 1
  store float %167, ptr %168, align 4, !tbaa !79
  %169 = getelementptr inbounds [3 x float], ptr %8, i64 1, i64 2
  store float %153, ptr %169, align 4, !tbaa !79
  %170 = load float, ptr %6, align 4, !tbaa !79
  %171 = fsub float %170, %155
  %172 = getelementptr inbounds [3 x float], ptr %8, i64 2
  store float %171, ptr %172, align 4, !tbaa !79
  %173 = load float, ptr %158, align 4, !tbaa !79
  %174 = fsub float %173, %154
  %175 = getelementptr inbounds [3 x float], ptr %8, i64 2, i64 1
  store float %174, ptr %175, align 4, !tbaa !79
  %176 = getelementptr inbounds [3 x float], ptr %8, i64 2, i64 2
  store float %153, ptr %176, align 4, !tbaa !79
  %177 = load float, ptr %6, align 4, !tbaa !79
  %178 = fsub float %177, %155
  %179 = getelementptr inbounds [3 x float], ptr %8, i64 3
  store float %178, ptr %179, align 4, !tbaa !79
  %180 = load float, ptr %158, align 4, !tbaa !79
  %181 = fadd float %154, %180
  %182 = getelementptr inbounds [3 x float], ptr %8, i64 3, i64 1
  store float %181, ptr %182, align 4, !tbaa !79
  %183 = getelementptr inbounds [3 x float], ptr %8, i64 3, i64 2
  store float %153, ptr %183, align 4, !tbaa !79
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_camera_view_frame(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #3 {
  %4 = alloca [2 x float], align 4
  %5 = alloca [2 x float], align 4
  %6 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  call void @BKE_camera_view_frame_ex(ptr noundef %0, ptr noundef %1, float noundef 0.000000e+00, i8 noundef zeroext 1, ptr noundef nonnull @__const.BKE_camera_view_frame.dummy_scale, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %2)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @BKE_camera_view_frame_fit_to_scene(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = alloca [2 x float], align 4
  %6 = alloca [2 x float], align 4
  %7 = alloca float, align 4
  %8 = alloca [4 x [3 x float]], align 16
  %9 = alloca [3 x [3 x float]], align 16
  %10 = alloca [3 x float], align 4
  %11 = alloca %struct.CameraViewFrameData, align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 4
  %16 = alloca [3 x float], align 4
  %17 = alloca [3 x float], align 4
  %18 = alloca [3 x float], align 4
  %19 = alloca [3 x float], align 4
  %20 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %9) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %10, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 180, ptr nonnull %11) #12
  %21 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %22 = load ptr, ptr %21, align 8, !tbaa !58
  %23 = getelementptr inbounds %struct.CameraViewFrameData, ptr %11, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  call void @BKE_camera_view_frame_ex(ptr noundef %0, ptr noundef %22, float noundef 0.000000e+00, i8 noundef zeroext 1, ptr noundef nonnull @__const.BKE_camera_view_frame.dummy_scale, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %23)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  %24 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 47
  call void @copy_m3_m4(ptr noundef nonnull %9, ptr noundef nonnull %24) #12
  call void @normalize_m3(ptr noundef nonnull %9) #12
  br label %25

25:                                               ; preds = %4, %25
  %26 = phi i64 [ 0, %4 ], [ %39, %25 ]
  %27 = getelementptr inbounds %struct.CameraViewFrameData, ptr %11, i64 0, i32 1, i64 %26
  %28 = getelementptr inbounds %struct.CameraViewFrameData, ptr %11, i64 0, i32 1, i64 %26, i64 2
  %29 = load float, ptr %28, align 4, !tbaa !79
  %30 = fdiv float 1.000000e+00, %29
  %31 = load float, ptr %27, align 4, !tbaa !79
  %32 = fmul float %31, %30
  store float %32, ptr %27, align 4, !tbaa !79
  %33 = getelementptr inbounds float, ptr %27, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !79
  %35 = fmul float %30, %34
  store float %35, ptr %33, align 4, !tbaa !79
  %36 = getelementptr inbounds float, ptr %27, i64 2
  %37 = load float, ptr %36, align 4, !tbaa !79
  %38 = fmul float %30, %37
  store float %38, ptr %36, align 4, !tbaa !79
  %39 = add nuw nsw i64 %26, 1
  %40 = icmp eq i64 %39, 4
  br i1 %40, label %41, label %25, !llvm.loop !136

41:                                               ; preds = %25
  %42 = load float, ptr %23, align 4, !tbaa !79
  %43 = getelementptr inbounds %struct.CameraViewFrameData, ptr %11, i64 0, i32 1, i64 1
  %44 = load float, ptr %43, align 4, !tbaa !79
  %45 = fadd float %42, %44
  %46 = getelementptr inbounds %struct.CameraViewFrameData, ptr %11, i64 0, i32 1, i64 2
  %47 = load float, ptr %46, align 4, !tbaa !79
  %48 = fadd float %45, %47
  %49 = getelementptr inbounds %struct.CameraViewFrameData, ptr %11, i64 0, i32 1, i64 3
  %50 = load float, ptr %49, align 4, !tbaa !79
  %51 = fadd float %48, %50
  %52 = getelementptr inbounds %struct.CameraViewFrameData, ptr %11, i64 0, i32 1, i64 0, i64 1
  %53 = load float, ptr %52, align 4, !tbaa !79
  %54 = getelementptr inbounds %struct.CameraViewFrameData, ptr %11, i64 0, i32 1, i64 1, i64 1
  %55 = load float, ptr %54, align 4, !tbaa !79
  %56 = fadd float %53, %55
  %57 = getelementptr inbounds %struct.CameraViewFrameData, ptr %11, i64 0, i32 1, i64 2, i64 1
  %58 = load float, ptr %57, align 4, !tbaa !79
  %59 = fadd float %56, %58
  %60 = getelementptr inbounds %struct.CameraViewFrameData, ptr %11, i64 0, i32 1, i64 3, i64 1
  %61 = load float, ptr %60, align 4, !tbaa !79
  %62 = fadd float %59, %61
  br label %63

63:                                               ; preds = %41, %63
  %64 = phi i64 [ 0, %41 ], [ %66, %63 ]
  %65 = getelementptr inbounds %struct.CameraViewFrameData, ptr %11, i64 0, i32 1, i64 %64
  call void @mul_m3_v3(ptr noundef nonnull %9, ptr noundef nonnull %65) #12
  %66 = add nuw nsw i64 %64, 1
  %67 = icmp eq i64 %66, 4
  br i1 %67, label %68, label %63, !llvm.loop !137

68:                                               ; preds = %63
  %69 = fmul float %51, 2.500000e-01
  br label %70

70:                                               ; preds = %68, %70
  %71 = phi i64 [ 0, %68 ], [ %74, %70 ]
  %72 = getelementptr inbounds %struct.CameraViewFrameData, ptr %11, i64 0, i32 2, i64 %71
  %73 = getelementptr inbounds %struct.CameraViewFrameData, ptr %11, i64 0, i32 1, i64 %71
  %74 = add nuw nsw i64 %71, 1
  %75 = and i64 %74, 3
  %76 = getelementptr inbounds %struct.CameraViewFrameData, ptr %11, i64 0, i32 1, i64 %75
  %77 = call float @normal_tri_v3(ptr noundef nonnull %72, ptr noundef nonnull %10, ptr noundef nonnull %73, ptr noundef nonnull %76) #12
  %78 = getelementptr inbounds [4 x [4 x float]], ptr %11, i64 0, i64 %71
  call void @plane_from_point_normal_v3(ptr noundef nonnull %78, ptr noundef nonnull %73, ptr noundef nonnull %72) #12
  %79 = icmp eq i64 %74, 4
  br i1 %79, label %80, label %70, !llvm.loop !138

80:                                               ; preds = %70
  %81 = fmul float %62, 2.500000e-01
  %82 = getelementptr inbounds %struct.CameraViewFrameData, ptr %11, i64 0, i32 3
  store float 0x47EFFFFFE0000000, ptr %82, align 4, !tbaa !79
  %83 = getelementptr inbounds %struct.CameraViewFrameData, ptr %11, i64 0, i32 3, i64 1
  store float 0x47EFFFFFE0000000, ptr %83, align 4, !tbaa !79
  %84 = getelementptr inbounds %struct.CameraViewFrameData, ptr %11, i64 0, i32 3, i64 2
  store float 0x47EFFFFFE0000000, ptr %84, align 4, !tbaa !79
  %85 = getelementptr inbounds %struct.CameraViewFrameData, ptr %11, i64 0, i32 3, i64 3
  store float 0x47EFFFFFE0000000, ptr %85, align 4, !tbaa !79
  %86 = getelementptr inbounds %struct.CameraViewFrameData, ptr %11, i64 0, i32 4
  store i32 0, ptr %86, align 4, !tbaa !139
  call void @BKE_scene_foreach_display_point(ptr noundef %0, ptr noundef %1, i16 noundef signext 1, ptr noundef nonnull @camera_to_frame_view_cb, ptr noundef nonnull %11) #12
  %87 = load i32, ptr %86, align 4, !tbaa !139
  %88 = icmp ult i32 %87, 2
  br i1 %88, label %262, label %89

89:                                               ; preds = %80
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #12
  br label %90

90:                                               ; preds = %89, %103
  %91 = phi i64 [ 0, %89 ], [ %115, %103 ]
  %92 = getelementptr inbounds [4 x [3 x float]], ptr %8, i64 0, i64 %91
  %93 = getelementptr inbounds %struct.CameraViewFrameData, ptr %11, i64 0, i32 2, i64 %91
  %94 = getelementptr inbounds %struct.CameraViewFrameData, ptr %11, i64 0, i32 3, i64 %91
  %95 = load float, ptr %94, align 4, !tbaa !79
  %96 = fcmp ult float %95, 0.000000e+00
  br i1 %96, label %99, label %97

97:                                               ; preds = %90
  %98 = call float @sqrtf(float noundef %95) #12
  br label %103

99:                                               ; preds = %90
  %100 = fneg float %95
  %101 = call float @sqrtf(float noundef %100) #12
  %102 = fneg float %101
  br label %103

103:                                              ; preds = %97, %99
  %104 = phi float [ %98, %97 ], [ %102, %99 ]
  %105 = load float, ptr %93, align 4, !tbaa !79
  %106 = fmul float %104, %105
  store float %106, ptr %92, align 4, !tbaa !79
  %107 = getelementptr inbounds float, ptr %93, i64 1
  %108 = load float, ptr %107, align 4, !tbaa !79
  %109 = fmul float %104, %108
  %110 = getelementptr inbounds float, ptr %92, i64 1
  store float %109, ptr %110, align 4, !tbaa !79
  %111 = getelementptr inbounds float, ptr %93, i64 2
  %112 = load float, ptr %111, align 4, !tbaa !79
  %113 = fmul float %104, %112
  %114 = getelementptr inbounds float, ptr %92, i64 2
  store float %113, ptr %114, align 4, !tbaa !79
  %115 = add nuw nsw i64 %91, 1
  %116 = icmp eq i64 %115, 4
  br i1 %116, label %117, label %90, !llvm.loop !141

117:                                              ; preds = %103
  %118 = getelementptr inbounds %struct.CameraViewFrameData, ptr %11, i64 0, i32 2
  %119 = getelementptr inbounds [4 x [3 x float]], ptr %8, i64 0, i64 2
  %120 = getelementptr inbounds %struct.CameraViewFrameData, ptr %11, i64 0, i32 2, i64 2
  %121 = call zeroext i8 @isect_plane_plane_v3(ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %8, ptr noundef nonnull %118, ptr noundef nonnull %119, ptr noundef nonnull %120) #12
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %260, label %123

123:                                              ; preds = %117
  %124 = getelementptr inbounds [4 x [3 x float]], ptr %8, i64 0, i64 1
  %125 = getelementptr inbounds %struct.CameraViewFrameData, ptr %11, i64 0, i32 2, i64 1
  %126 = getelementptr inbounds [4 x [3 x float]], ptr %8, i64 0, i64 3
  %127 = getelementptr inbounds %struct.CameraViewFrameData, ptr %11, i64 0, i32 2, i64 3
  %128 = call zeroext i8 @isect_plane_plane_v3(ptr noundef nonnull %15, ptr noundef nonnull %16, ptr noundef nonnull %124, ptr noundef nonnull %125, ptr noundef nonnull %126, ptr noundef nonnull %127) #12
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %260, label %130

130:                                              ; preds = %123
  %131 = load float, ptr %12, align 4, !tbaa !79
  %132 = load float, ptr %13, align 4, !tbaa !79
  %133 = fadd float %131, %132
  store float %133, ptr %14, align 4, !tbaa !79
  %134 = getelementptr inbounds float, ptr %12, i64 1
  %135 = load float, ptr %134, align 4, !tbaa !79
  %136 = getelementptr inbounds float, ptr %13, i64 1
  %137 = load float, ptr %136, align 4, !tbaa !79
  %138 = fadd float %135, %137
  %139 = getelementptr inbounds float, ptr %14, i64 1
  store float %138, ptr %139, align 4, !tbaa !79
  %140 = getelementptr inbounds float, ptr %12, i64 2
  %141 = load float, ptr %140, align 4, !tbaa !79
  %142 = getelementptr inbounds float, ptr %13, i64 2
  %143 = load float, ptr %142, align 4, !tbaa !79
  %144 = fadd float %141, %143
  %145 = getelementptr inbounds float, ptr %14, i64 2
  store float %144, ptr %145, align 4, !tbaa !79
  %146 = load float, ptr %15, align 4, !tbaa !79
  %147 = load float, ptr %16, align 4, !tbaa !79
  %148 = fadd float %146, %147
  store float %148, ptr %17, align 4, !tbaa !79
  %149 = getelementptr inbounds float, ptr %15, i64 1
  %150 = load float, ptr %149, align 4, !tbaa !79
  %151 = getelementptr inbounds float, ptr %16, i64 1
  %152 = load float, ptr %151, align 4, !tbaa !79
  %153 = fadd float %150, %152
  %154 = getelementptr inbounds float, ptr %17, i64 1
  store float %153, ptr %154, align 4, !tbaa !79
  %155 = getelementptr inbounds float, ptr %15, i64 2
  %156 = load float, ptr %155, align 4, !tbaa !79
  %157 = getelementptr inbounds float, ptr %16, i64 2
  %158 = load float, ptr %157, align 4, !tbaa !79
  %159 = fadd float %156, %158
  %160 = getelementptr inbounds float, ptr %17, i64 2
  store float %159, ptr %160, align 4, !tbaa !79
  %161 = call i32 @isect_line_line_v3(ptr noundef nonnull %12, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %17, ptr noundef nonnull %18, ptr noundef nonnull %19) #12
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %260, label %163

163:                                              ; preds = %130
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %20, ptr noundef nonnull align 4 dereferenceable(12) @__const.BKE_camera_view_frame_fit_to_scene.cam_plane_no, i64 12, i1 false)
  call void @mul_m3_v3(ptr noundef nonnull %9, ptr noundef nonnull %20) #12
  %164 = load float, ptr %19, align 4, !tbaa !79
  %165 = load float, ptr %18, align 4, !tbaa !79
  %166 = fsub float %164, %165
  %167 = getelementptr inbounds float, ptr %19, i64 1
  %168 = load float, ptr %167, align 4, !tbaa !79
  %169 = getelementptr inbounds float, ptr %18, i64 1
  %170 = load float, ptr %169, align 4, !tbaa !79
  %171 = fsub float %168, %170
  %172 = getelementptr inbounds float, ptr %19, i64 2
  %173 = load float, ptr %172, align 4, !tbaa !79
  %174 = getelementptr inbounds float, ptr %18, i64 2
  %175 = load float, ptr %174, align 4, !tbaa !79
  %176 = fsub float %173, %175
  %177 = fmul float %171, %171
  %178 = call float @llvm.fmuladd.f32(float %166, float %166, float %177)
  %179 = call float @llvm.fmuladd.f32(float %176, float %176, float %178)
  %180 = call float @sqrtf(float noundef %179) #12
  %181 = load float, ptr %20, align 4, !tbaa !79
  %182 = getelementptr inbounds float, ptr %20, i64 1
  %183 = load float, ptr %182, align 4, !tbaa !79
  %184 = fmul float %171, %183
  %185 = call float @llvm.fmuladd.f32(float %166, float %181, float %184)
  %186 = getelementptr inbounds float, ptr %20, i64 2
  %187 = load float, ptr %186, align 4, !tbaa !79
  %188 = call float @llvm.fmuladd.f32(float %176, float %187, float %185)
  %189 = fcmp ogt float %188, 0.000000e+00
  %190 = getelementptr inbounds float, ptr %3, i64 1
  %191 = getelementptr inbounds float, ptr %3, i64 2
  br i1 %189, label %192, label %225

192:                                              ; preds = %163
  %193 = load float, ptr %18, align 4, !tbaa !79
  store float %193, ptr %3, align 4, !tbaa !79
  %194 = load float, ptr %169, align 4, !tbaa !79
  store float %194, ptr %190, align 4, !tbaa !79
  %195 = load float, ptr %174, align 4, !tbaa !79
  store float %195, ptr %191, align 4, !tbaa !79
  %196 = load float, ptr %13, align 4, !tbaa !79
  %197 = load float, ptr %136, align 4, !tbaa !79
  %198 = fmul float %197, %197
  %199 = call float @llvm.fmuladd.f32(float %196, float %196, float %198)
  %200 = load float, ptr %142, align 4, !tbaa !79
  %201 = call float @llvm.fmuladd.f32(float %200, float %200, float %199)
  %202 = fcmp ogt float %201, 0x38AA95A5C0000000
  br i1 %202, label %203, label %212

203:                                              ; preds = %192
  %204 = call float @sqrtf(float noundef %201) #12
  %205 = fdiv float 1.000000e+00, %204
  %206 = load float, ptr %13, align 4, !tbaa !79
  %207 = fmul float %206, %205
  store float %207, ptr %13, align 4, !tbaa !79
  %208 = load float, ptr %136, align 4, !tbaa !79
  %209 = fmul float %205, %208
  store float %209, ptr %136, align 4, !tbaa !79
  %210 = load float, ptr %142, align 4, !tbaa !79
  %211 = fmul float %205, %210
  br label %213

212:                                              ; preds = %192
  store float 0.000000e+00, ptr %13, align 4, !tbaa !79
  store float 0.000000e+00, ptr %136, align 4, !tbaa !79
  br label %213

213:                                              ; preds = %203, %212
  %214 = phi float [ 0.000000e+00, %212 ], [ %211, %203 ]
  store float %214, ptr %142, align 4, !tbaa !79
  %215 = fneg float %180
  %216 = fmul float %81, %215
  %217 = load float, ptr %13, align 4, !tbaa !79
  %218 = load float, ptr %3, align 4, !tbaa !79
  %219 = call float @llvm.fmuladd.f32(float %217, float %216, float %218)
  store float %219, ptr %3, align 4, !tbaa !79
  %220 = load float, ptr %136, align 4, !tbaa !79
  %221 = load float, ptr %190, align 4, !tbaa !79
  %222 = call float @llvm.fmuladd.f32(float %220, float %216, float %221)
  store float %222, ptr %190, align 4, !tbaa !79
  %223 = load float, ptr %191, align 4, !tbaa !79
  %224 = call float @llvm.fmuladd.f32(float %214, float %216, float %223)
  br label %258

225:                                              ; preds = %163
  %226 = load float, ptr %19, align 4, !tbaa !79
  store float %226, ptr %3, align 4, !tbaa !79
  %227 = load float, ptr %167, align 4, !tbaa !79
  store float %227, ptr %190, align 4, !tbaa !79
  %228 = load float, ptr %172, align 4, !tbaa !79
  store float %228, ptr %191, align 4, !tbaa !79
  %229 = load float, ptr %16, align 4, !tbaa !79
  %230 = load float, ptr %151, align 4, !tbaa !79
  %231 = fmul float %230, %230
  %232 = call float @llvm.fmuladd.f32(float %229, float %229, float %231)
  %233 = load float, ptr %157, align 4, !tbaa !79
  %234 = call float @llvm.fmuladd.f32(float %233, float %233, float %232)
  %235 = fcmp ogt float %234, 0x38AA95A5C0000000
  br i1 %235, label %236, label %245

236:                                              ; preds = %225
  %237 = call float @sqrtf(float noundef %234) #12
  %238 = fdiv float 1.000000e+00, %237
  %239 = load float, ptr %16, align 4, !tbaa !79
  %240 = fmul float %239, %238
  store float %240, ptr %16, align 4, !tbaa !79
  %241 = load float, ptr %151, align 4, !tbaa !79
  %242 = fmul float %238, %241
  store float %242, ptr %151, align 4, !tbaa !79
  %243 = load float, ptr %157, align 4, !tbaa !79
  %244 = fmul float %238, %243
  br label %246

245:                                              ; preds = %225
  store float 0.000000e+00, ptr %16, align 4, !tbaa !79
  store float 0.000000e+00, ptr %151, align 4, !tbaa !79
  br label %246

246:                                              ; preds = %236, %245
  %247 = phi float [ 0.000000e+00, %245 ], [ %244, %236 ]
  store float %247, ptr %157, align 4, !tbaa !79
  %248 = fneg float %180
  %249 = fmul float %69, %248
  %250 = load float, ptr %16, align 4, !tbaa !79
  %251 = load float, ptr %3, align 4, !tbaa !79
  %252 = call float @llvm.fmuladd.f32(float %250, float %249, float %251)
  store float %252, ptr %3, align 4, !tbaa !79
  %253 = load float, ptr %151, align 4, !tbaa !79
  %254 = load float, ptr %190, align 4, !tbaa !79
  %255 = call float @llvm.fmuladd.f32(float %253, float %249, float %254)
  store float %255, ptr %190, align 4, !tbaa !79
  %256 = load float, ptr %191, align 4, !tbaa !79
  %257 = call float @llvm.fmuladd.f32(float %247, float %249, float %256)
  br label %258

258:                                              ; preds = %246, %213
  %259 = phi float [ %257, %246 ], [ %224, %213 ]
  store float %259, ptr %191, align 4, !tbaa !79
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #12
  br label %260

260:                                              ; preds = %130, %117, %123, %258
  %261 = phi i8 [ 1, %258 ], [ 0, %123 ], [ 0, %117 ], [ 0, %130 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #12
  br label %262

262:                                              ; preds = %80, %260
  %263 = phi i8 [ %261, %260 ], [ 0, %80 ]
  call void @llvm.lifetime.end.p0(i64 180, ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #12
  ret i8 %263
}

declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @normalize_m3(ptr noundef) local_unnamed_addr #2

declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @normal_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @plane_from_point_normal_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_scene_foreach_display_point(ptr noundef, ptr noundef, i16 noundef signext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @camera_to_frame_view_cb(ptr noundef %0, ptr noundef %1) #0 {
  br label %3

3:                                                ; preds = %2, %11
  %4 = phi i64 [ 0, %2 ], [ %12, %11 ]
  %5 = getelementptr inbounds [4 x [4 x float]], ptr %1, i64 0, i64 %4
  %6 = tail call float @dist_signed_squared_to_plane_v3(ptr noundef %0, ptr noundef %5) #12
  %7 = getelementptr inbounds %struct.CameraViewFrameData, ptr %1, i64 0, i32 3, i64 %4
  %8 = load float, ptr %7, align 4, !tbaa !79
  %9 = fcmp olt float %6, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store float %6, ptr %7, align 4, !tbaa !79
  br label %11

11:                                               ; preds = %10, %3
  %12 = add nuw nsw i64 %4, 1
  %13 = icmp eq i64 %12, 4
  br i1 %13, label %14, label %3, !llvm.loop !142

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.CameraViewFrameData, ptr %1, i64 0, i32 4
  %16 = load i32, ptr %15, align 4, !tbaa !139
  %17 = add i32 %16, 1
  store i32 %17, ptr %15, align 4, !tbaa !139
  ret void
}

declare zeroext i8 @isect_plane_plane_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @isect_line_line_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @dist_signed_squared_to_plane_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nounwind }

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
!34 = !{!35, !42, i64 144}
!35 = !{!"Camera", !36, i64 0, !37, i64 120, !38, i64 128, !38, i64 129, !40, i64 130, !42, i64 132, !42, i64 136, !42, i64 140, !42, i64 144, !42, i64 148, !42, i64 152, !42, i64 156, !42, i64 160, !42, i64 164, !42, i64 168, !42, i64 172, !37, i64 176, !37, i64 184, !38, i64 192, !38, i64 193}
!36 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !40, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !37, i64 112}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"short", !38, i64 0}
!41 = !{!"int", !38, i64 0}
!42 = !{!"float", !38, i64 0}
!43 = !{!35, !42, i64 156}
!44 = !{!35, !42, i64 160}
!45 = !{!35, !42, i64 136}
!46 = !{!35, !42, i64 140}
!47 = !{!35, !42, i64 152}
!48 = !{!35, !42, i64 148}
!49 = !{!35, !40, i64 130}
!50 = !{!35, !42, i64 132}
!51 = !{!35, !37, i64 184}
!52 = !{!53, !37, i64 0}
!53 = !{!"Global", !37, i64 0, !38, i64 8, !38, i64 1032, !38, i64 2056, !38, i64 2057, !38, i64 2058, !54, i64 2064, !38, i64 2080, !38, i64 2081, !38, i64 2082, !40, i64 2084, !40, i64 2086, !40, i64 2088, !38, i64 2090, !40, i64 2092, !41, i64 2096, !41, i64 2100, !38, i64 2104, !41, i64 2108, !41, i64 2112, !38, i64 2116}
!54 = !{!"ListBase", !37, i64 0, !37, i64 8}
!55 = !{!35, !37, i64 24}
!56 = !{!35, !41, i64 100}
!57 = !{!37, !37, i64 0}
!58 = !{!59, !37, i64 296}
!59 = !{!"Object", !36, i64 0, !37, i64 120, !37, i64 128, !40, i64 136, !40, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !60, i64 312, !37, i64 360, !54, i64 368, !54, i64 384, !54, i64 400, !54, i64 416, !41, i64 432, !41, i64 436, !37, i64 440, !37, i64 448, !41, i64 456, !41, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !42, i64 616, !42, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !41, i64 944, !40, i64 948, !40, i64 950, !40, i64 952, !40, i64 954, !40, i64 956, !40, i64 958, !40, i64 960, !40, i64 962, !40, i64 964, !38, i64 966, !38, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !42, i64 988, !42, i64 992, !42, i64 996, !42, i64 1000, !42, i64 1004, !42, i64 1008, !42, i64 1012, !42, i64 1016, !42, i64 1020, !42, i64 1024, !42, i64 1028, !42, i64 1032, !40, i64 1036, !40, i64 1038, !40, i64 1040, !38, i64 1042, !38, i64 1043, !40, i64 1044, !38, i64 1046, !38, i64 1047, !42, i64 1048, !42, i64 1052, !54, i64 1056, !54, i64 1072, !54, i64 1088, !54, i64 1104, !42, i64 1120, !40, i64 1124, !40, i64 1126, !38, i64 1128, !41, i64 1144, !41, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !40, i64 1162, !38, i64 1164, !54, i64 1176, !54, i64 1192, !54, i64 1208, !54, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !40, i64 1266, !42, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !61, i64 1304, !61, i64 1312, !41, i64 1320, !41, i64 1324, !54, i64 1328, !54, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !54, i64 1400, !37, i64 1416}
!60 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!61 = !{!"long", !38, i64 0}
!62 = !{!59, !37, i64 24}
!63 = distinct !{!63, !64, !65}
!64 = !{!"llvm.loop.mustprogress"}
!65 = !{!"llvm.loop.unroll.disable"}
!66 = distinct !{!66, !64, !65}
!67 = !{!68, !41, i64 520}
!68 = !{!"RenderData", !69, i64 0, !37, i64 248, !37, i64 256, !72, i64 264, !73, i64 328, !41, i64 400, !41, i64 404, !41, i64 408, !42, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !41, i64 428, !40, i64 432, !40, i64 434, !42, i64 436, !42, i64 440, !42, i64 444, !42, i64 448, !42, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !41, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !41, i64 484, !41, i64 488, !40, i64 492, !40, i64 494, !41, i64 496, !41, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !38, i64 514, !38, i64 515, !41, i64 516, !41, i64 520, !41, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !74, i64 544, !74, i64 560, !75, i64 576, !54, i64 592, !40, i64 608, !40, i64 610, !42, i64 612, !42, i64 616, !42, i64 620, !42, i64 624, !41, i64 628, !42, i64 632, !42, i64 636, !42, i64 640, !42, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !42, i64 660, !42, i64 664, !40, i64 668, !40, i64 670, !42, i64 672, !42, i64 676, !38, i64 680, !41, i64 1704, !40, i64 1708, !40, i64 1710, !38, i64 1712, !38, i64 2480, !38, i64 2496, !38, i64 2512, !38, i64 2513, !38, i64 2514, !38, i64 2515, !41, i64 2520, !40, i64 2524, !40, i64 2526, !42, i64 2528, !42, i64 2532, !40, i64 2536, !40, i64 2538, !42, i64 2540, !40, i64 2544, !40, i64 2546, !41, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !42, i64 2560, !42, i64 2564, !37, i64 2568, !41, i64 2576, !42, i64 2580, !38, i64 2584, !76, i64 2616, !41, i64 3976, !41, i64 3980}
!69 = !{!"ImageFormatData", !38, i64 0, !38, i64 1, !38, i64 2, !38, i64 3, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !40, i64 8, !40, i64 10, !42, i64 12, !38, i64 16, !38, i64 17, !38, i64 18, !70, i64 24, !71, i64 184}
!70 = !{!"ColorManagedViewSettings", !41, i64 0, !41, i64 4, !38, i64 8, !38, i64 72, !42, i64 136, !42, i64 140, !37, i64 144, !37, i64 152}
!71 = !{!"ColorManagedDisplaySettings", !38, i64 0}
!72 = !{!"QuicktimeCodecSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !40, i64 48, !40, i64 50, !41, i64 52, !41, i64 56, !41, i64 60}
!73 = !{!"FFMpegCodecData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !42, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !37, i64 64}
!74 = !{!"rctf", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12}
!75 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!76 = !{!"BakeData", !69, i64 0, !38, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !42, i64 1280, !42, i64 1284, !38, i64 1288, !38, i64 1291, !38, i64 1292, !38, i64 1293, !38, i64 1296}
!77 = !{!59, !40, i64 136}
!78 = !{!35, !38, i64 128}
!79 = !{!42, !42, i64 0}
!80 = !{!35, !42, i64 172}
!81 = !{!82, !42, i64 32}
!82 = !{!"CameraParams", !38, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !42, i64 32, !42, i64 36, !41, i64 40, !42, i64 44, !42, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !42, i64 64, !42, i64 68, !42, i64 72, !74, i64 76, !38, i64 92}
!83 = !{!82, !42, i64 36}
!84 = !{!82, !41, i64 40}
!85 = !{!82, !42, i64 12}
!86 = !{!82, !42, i64 44}
!87 = !{!82, !42, i64 48}
!88 = !{!82, !38, i64 0}
!89 = !{!82, !42, i64 4}
!90 = !{!82, !42, i64 8}
!91 = !{!35, !42, i64 164}
!92 = !{!82, !42, i64 16}
!93 = !{!35, !42, i64 168}
!94 = !{!82, !42, i64 20}
!95 = !{!35, !38, i64 192}
!96 = !{!97, !42, i64 180}
!97 = !{!"Lamp", !36, i64 0, !37, i64 120, !40, i64 128, !40, i64 130, !41, i64 132, !40, i64 136, !40, i64 138, !42, i64 140, !42, i64 144, !42, i64 148, !42, i64 152, !42, i64 156, !42, i64 160, !42, i64 164, !42, i64 168, !42, i64 172, !42, i64 176, !42, i64 180, !42, i64 184, !42, i64 188, !42, i64 192, !42, i64 196, !37, i64 200, !40, i64 208, !40, i64 210, !42, i64 212, !42, i64 216, !42, i64 220, !42, i64 224, !42, i64 228, !42, i64 232, !42, i64 236, !40, i64 240, !40, i64 242, !40, i64 244, !40, i64 246, !38, i64 248, !38, i64 249, !40, i64 250, !40, i64 252, !40, i64 254, !40, i64 256, !40, i64 258, !42, i64 260, !42, i64 264, !42, i64 268, !42, i64 272, !40, i64 276, !40, i64 278, !40, i64 280, !40, i64 282, !40, i64 284, !40, i64 286, !42, i64 288, !42, i64 292, !42, i64 296, !42, i64 300, !42, i64 304, !42, i64 308, !42, i64 312, !42, i64 316, !42, i64 320, !42, i64 324, !42, i64 328, !42, i64 332, !42, i64 336, !40, i64 340, !38, i64 342, !37, i64 344, !38, i64 352, !40, i64 496, !40, i64 498, !38, i64 500, !37, i64 504, !37, i64 512}
!98 = !{!97, !42, i64 212}
!99 = !{!97, !42, i64 216}
!100 = !{!101, !42, i64 244}
!101 = !{!"View3D", !37, i64 0, !37, i64 8, !54, i64 16, !41, i64 32, !42, i64 36, !38, i64 40, !38, i64 56, !42, i64 72, !42, i64 76, !38, i64 80, !38, i64 81, !41, i64 84, !41, i64 88, !40, i64 92, !40, i64 94, !37, i64 96, !37, i64 104, !74, i64 112, !54, i64 128, !37, i64 144, !37, i64 152, !38, i64 160, !41, i64 224, !41, i64 228, !40, i64 232, !40, i64 234, !40, i64 236, !40, i64 238, !40, i64 240, !40, i64 242, !42, i64 244, !42, i64 248, !42, i64 252, !42, i64 256, !38, i64 260, !38, i64 272, !40, i64 284, !40, i64 286, !40, i64 288, !38, i64 290, !38, i64 291, !38, i64 292, !38, i64 293, !38, i64 294, !54, i64 296, !54, i64 312, !54, i64 328, !38, i64 344, !38, i64 345, !38, i64 346, !38, i64 347, !37, i64 352, !37, i64 360, !37, i64 368}
!102 = !{!101, !42, i64 252}
!103 = !{!101, !42, i64 256}
!104 = !{!105, !38, i64 809}
!105 = !{!"RegionView3D", !38, i64 0, !38, i64 64, !38, i64 128, !38, i64 192, !38, i64 256, !38, i64 320, !38, i64 384, !38, i64 448, !38, i64 544, !37, i64 640, !37, i64 648, !37, i64 656, !37, i64 664, !37, i64 672, !37, i64 680, !37, i64 688, !38, i64 696, !38, i64 760, !42, i64 776, !42, i64 780, !42, i64 784, !42, i64 788, !38, i64 792, !42, i64 804, !38, i64 808, !38, i64 809, !38, i64 810, !38, i64 811, !38, i64 812, !38, i64 813, !38, i64 816, !40, i64 824, !40, i64 826, !38, i64 828, !40, i64 844, !40, i64 846, !42, i64 848, !38, i64 852, !42, i64 864, !38, i64 868}
!106 = !{!101, !37, i64 96}
!107 = !{!105, !42, i64 804}
!108 = !{!105, !42, i64 780}
!109 = !{!82, !42, i64 24}
!110 = !{!105, !42, i64 784}
!111 = !{!82, !42, i64 28}
!112 = !{!105, !42, i64 776}
!113 = !{!82, !42, i64 64}
!114 = !{!82, !41, i64 52}
!115 = !{!82, !41, i64 56}
!116 = !{!82, !41, i64 60}
!117 = !{!82, !42, i64 68}
!118 = !{!82, !42, i64 72}
!119 = !{i64 0, i64 4, !79, i64 4, i64 4, !79, i64 8, i64 4, !79, i64 12, i64 4, !79}
!120 = !{i64 0, i64 4, !79, i64 4, i64 4, !79, i64 8, i64 4, !79}
!121 = !{i64 0, i64 4, !79, i64 4, i64 4, !79}
!122 = !{i64 0, i64 4, !79}
!123 = !{!124, !41, i64 764}
!124 = !{!"Scene", !36, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !54, i64 152, !37, i64 168, !37, i64 176, !38, i64 184, !38, i64 196, !38, i64 208, !38, i64 220, !41, i64 232, !41, i64 236, !41, i64 240, !40, i64 244, !38, i64 246, !38, i64 247, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !68, i64 280, !125, i64 4264, !54, i64 4296, !54, i64 4312, !37, i64 4328, !37, i64 4336, !37, i64 4344, !37, i64 4352, !37, i64 4360, !37, i64 4368, !40, i64 4376, !40, i64 4378, !41, i64 4380, !54, i64 4384, !126, i64 4400, !127, i64 4416, !130, i64 4600, !37, i64 4608, !131, i64 4616, !37, i64 4640, !61, i64 4648, !61, i64 4656, !70, i64 4664, !71, i64 4824, !132, i64 4888, !37, i64 4952}
!125 = !{!"AudioData", !41, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !41, i64 16, !40, i64 20, !40, i64 22, !42, i64 24, !42, i64 28}
!126 = !{!"GameFraming", !38, i64 0, !38, i64 12, !38, i64 13, !38, i64 14, !38, i64 15}
!127 = !{!"GameData", !126, i64 0, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !40, i64 32, !38, i64 34, !128, i64 40, !40, i64 64, !40, i64 66, !42, i64 68, !129, i64 72, !42, i64 128, !42, i64 132, !41, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !40, i64 148, !40, i64 150, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !40, i64 160, !40, i64 162, !42, i64 164, !42, i64 168, !42, i64 172, !42, i64 176, !42, i64 180}
!128 = !{!"GameDome", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !42, i64 8, !42, i64 12, !37, i64 16}
!129 = !{!"RecastData", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !42, i64 32, !42, i64 36, !41, i64 40, !42, i64 44, !42, i64 48, !40, i64 52, !40, i64 54}
!130 = !{!"UnitSettings", !42, i64 0, !38, i64 4, !38, i64 5, !40, i64 6}
!131 = !{!"PhysicsSettings", !38, i64 0, !41, i64 12, !41, i64 16, !41, i64 20}
!132 = !{!"ColorManagedColorspaceSettings", !38, i64 0}
!133 = !{!124, !42, i64 892}
!134 = !{!124, !41, i64 768}
!135 = !{!124, !42, i64 896}
!136 = distinct !{!136, !64, !65}
!137 = distinct !{!137, !64, !65}
!138 = distinct !{!138, !64, !65}
!139 = !{!140, !41, i64 176}
!140 = !{!"CameraViewFrameData", !38, i64 0, !38, i64 64, !38, i64 112, !38, i64 160, !41, i64 176}
!141 = distinct !{!141, !64, !65}
!142 = distinct !{!142, !64, !65}
