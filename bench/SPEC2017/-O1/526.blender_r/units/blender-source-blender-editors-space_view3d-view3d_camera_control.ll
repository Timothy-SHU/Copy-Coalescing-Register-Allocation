; ModuleID = 'blender/source/blender/editors/space_view3d/view3d_camera_control.c'
source_filename = "blender/source/blender/editors/space_view3d/view3d_camera_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.View3DCameraControl = type { ptr, ptr, ptr, [4 x [4 x float]], i8, ptr, float, [3 x float], [4 x float], i8, i8, ptr }
%struct.RegionView3D = type { [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [6 x [4 x float]], [6 x [4 x float]], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x [4 x float]], [4 x float], float, float, float, float, [3 x float], float, i8, i8, i8, i8, i8, [3 x i8], [2 x float], i16, i16, [4 x float], i16, i16, float, [3 x float], float, [3 x float] }
%struct.View3D = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], [4 x float], float, float, i8, [3 x i8], i32, i32, i16, i16, ptr, ptr, %struct.rctf, %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, i16, i16, float, float, float, float, [3 x float], [3 x float], i16, i16, i16, i8, i8, i8, i8, [2 x i8], %struct.ListBase, %struct.ListBase, %struct.ListBase, i8, i8, i8, [5 x i8], ptr, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.ListBase = type { ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.Camera = type { %struct.ID, ptr, i8, i8, i16, float, float, float, float, float, float, float, float, float, float, float, ptr, ptr, i8, [7 x i8] }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@__func__.ED_view3d_cameracontrol_acquire = private unnamed_addr constant [32 x i8] c"ED_view3d_cameracontrol_acquire\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @ED_view3d_cameracontrol_object_get(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.View3DCameraControl, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.RegionView3D, ptr %3, i64 0, i32 25
  %5 = load i8, ptr %4, align 1, !tbaa !40
  %6 = icmp eq i8 %5, 2
  br i1 %6, label %7, label %16

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.View3DCameraControl, ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !43
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.View3DCameraControl, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !44
  %14 = getelementptr inbounds %struct.View3D, ptr %13, i64 0, i32 15
  %15 = load ptr, ptr %14, align 8, !tbaa !45
  br label %16

16:                                               ; preds = %11, %7, %1
  %17 = phi ptr [ null, %1 ], [ %15, %11 ], [ %9, %7 ]
  ret ptr %17
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @ED_view3d_cameracontrol_acquire(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #2 {
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !50
  %6 = tail call ptr %5(i64 noundef 152, ptr noundef nonnull @__func__.ED_view3d_cameracontrol_acquire) #4
  store ptr %0, ptr %6, align 8, !tbaa !51
  %7 = getelementptr inbounds %struct.View3DCameraControl, ptr %6, i64 0, i32 1
  store ptr %1, ptr %7, align 8, !tbaa !44
  %8 = getelementptr inbounds %struct.View3DCameraControl, ptr %6, i64 0, i32 2
  store ptr %2, ptr %8, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.View3DCameraControl, ptr %6, i64 0, i32 4
  store i8 %3, ptr %9, align 8, !tbaa !52
  %10 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 25
  %11 = load i8, ptr %10, align 1, !tbaa !40
  %12 = getelementptr inbounds %struct.View3DCameraControl, ptr %6, i64 0, i32 9
  store i8 %11, ptr %12, align 8, !tbaa !53
  %13 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 18
  %14 = load float, ptr %13, align 8, !tbaa !54
  %15 = getelementptr inbounds %struct.View3DCameraControl, ptr %6, i64 0, i32 6
  store float %14, ptr %15, align 8, !tbaa !55
  switch i8 %11, label %71 [
    i8 2, label %16
    i8 0, label %70
  ]

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 24
  %18 = load i8, ptr %17, align 8, !tbaa !56
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 15
  %22 = load ptr, ptr %21, align 8, !tbaa !45
  %23 = getelementptr inbounds %struct.Object, ptr %22, i64 0, i32 19
  %24 = load ptr, ptr %23, align 8, !tbaa !57
  %25 = getelementptr inbounds %struct.Camera, ptr %24, i64 0, i32 2
  store i8 0, ptr %25, align 8, !tbaa !62
  %26 = getelementptr inbounds %struct.View3DCameraControl, ptr %6, i64 0, i32 10
  store i8 1, ptr %26, align 1, !tbaa !64
  br label %27

27:                                               ; preds = %20, %16
  switch i8 %11, label %71 [
    i8 2, label %28
    i8 0, label %70
  ]

28:                                               ; preds = %27
  %29 = icmp eq i8 %3, 0
  br i1 %29, label %47, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 15
  %32 = load ptr, ptr %31, align 8, !tbaa !45
  %33 = getelementptr inbounds %struct.Object, ptr %32, i64 0, i32 9
  %34 = load ptr, ptr %33, align 8, !tbaa !65
  %35 = getelementptr inbounds %struct.View3DCameraControl, ptr %6, i64 0, i32 5
  store ptr %34, ptr %35, align 8, !tbaa !43
  %36 = icmp eq ptr %34, null
  br i1 %36, label %47, label %37

37:                                               ; preds = %30
  %38 = load ptr, ptr %35, align 8, !tbaa !43
  %39 = getelementptr inbounds %struct.Object, ptr %38, i64 0, i32 9
  %40 = load ptr, ptr %39, align 8, !tbaa !65
  %41 = icmp eq ptr %40, null
  br i1 %41, label %51, label %42

42:                                               ; preds = %37, %42
  %43 = phi ptr [ %45, %42 ], [ %40, %37 ]
  %44 = getelementptr inbounds %struct.Object, ptr %43, i64 0, i32 9
  %45 = load ptr, ptr %44, align 8, !tbaa !65
  %46 = icmp eq ptr %45, null
  br i1 %46, label %50, label %42, !llvm.loop !66

47:                                               ; preds = %30, %28
  %48 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 15
  %49 = load ptr, ptr %48, align 8, !tbaa !45
  br label %51

50:                                               ; preds = %42
  store ptr %43, ptr %35, align 8, !tbaa !43
  br label %51

51:                                               ; preds = %37, %50, %47
  %52 = phi ptr [ %49, %47 ], [ %43, %50 ], [ %38, %37 ]
  %53 = tail call ptr @BKE_object_tfm_backup(ptr noundef %52) #4
  %54 = getelementptr inbounds %struct.View3DCameraControl, ptr %6, i64 0, i32 11
  store ptr %53, ptr %54, align 8, !tbaa !69
  %55 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 15
  %56 = load ptr, ptr %55, align 8, !tbaa !45
  tail call void @BKE_object_where_is_calc(ptr noundef %0, ptr noundef %56) #4
  %57 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 22
  %58 = load ptr, ptr %55, align 8, !tbaa !45
  %59 = getelementptr inbounds %struct.Object, ptr %58, i64 0, i32 47, i64 3
  %60 = load float, ptr %59, align 4, !tbaa !70
  %61 = fneg float %60
  store float %61, ptr %57, align 4, !tbaa !70
  %62 = getelementptr inbounds %struct.Object, ptr %58, i64 0, i32 47, i64 3, i64 1
  %63 = load float, ptr %62, align 4, !tbaa !70
  %64 = fneg float %63
  %65 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 22, i64 1
  store float %64, ptr %65, align 4, !tbaa !70
  %66 = getelementptr inbounds %struct.Object, ptr %58, i64 0, i32 47, i64 3, i64 2
  %67 = load float, ptr %66, align 4, !tbaa !70
  %68 = fneg float %67
  %69 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 22, i64 2
  store float %68, ptr %69, align 4, !tbaa !70
  store float 0.000000e+00, ptr %13, align 8, !tbaa !54
  br label %83

70:                                               ; preds = %4, %27
  store i8 1, ptr %10, align 1, !tbaa !40
  br label %71

71:                                               ; preds = %4, %27, %70
  %72 = getelementptr inbounds %struct.View3DCameraControl, ptr %6, i64 0, i32 8
  %73 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 17
  tail call void @copy_qt_qt(ptr noundef nonnull %72, ptr noundef nonnull %73) #4
  %74 = getelementptr inbounds %struct.View3DCameraControl, ptr %6, i64 0, i32 7
  %75 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 22
  %76 = load float, ptr %75, align 4, !tbaa !70
  store float %76, ptr %74, align 4, !tbaa !70
  %77 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 22, i64 1
  %78 = load float, ptr %77, align 4, !tbaa !70
  %79 = getelementptr inbounds %struct.View3DCameraControl, ptr %6, i64 0, i32 7, i64 1
  store float %78, ptr %79, align 4, !tbaa !70
  %80 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 22, i64 2
  %81 = load float, ptr %80, align 4, !tbaa !70
  %82 = getelementptr inbounds %struct.View3DCameraControl, ptr %6, i64 0, i32 7, i64 2
  store float %81, ptr %82, align 4, !tbaa !70
  tail call void @ED_view3d_distance_set(ptr noundef %2, float noundef 0.000000e+00) #4
  br label %83

83:                                               ; preds = %71, %51
  %84 = getelementptr inbounds %struct.View3DCameraControl, ptr %6, i64 0, i32 3
  %85 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 22
  %86 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 17
  %87 = load float, ptr %13, align 8, !tbaa !54
  tail call void @ED_view3d_to_m4(ptr noundef nonnull %84, ptr noundef nonnull %85, ptr noundef nonnull %86, float noundef %87) #4
  ret ptr %6
}

declare ptr @BKE_object_tfm_backup(ptr noundef) local_unnamed_addr #3

declare void @BKE_object_where_is_calc(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @copy_qt_qt(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ED_view3d_distance_set(ptr noundef, float noundef) local_unnamed_addr #3

declare void @ED_view3d_to_m4(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @ED_view3d_cameracontrol_update(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #2 {
  %6 = alloca [4 x [4 x float]], align 16
  %7 = alloca [4 x [4 x float]], align 16
  %8 = alloca [4 x [4 x float]], align 16
  %9 = alloca [4 x [4 x float]], align 16
  %10 = alloca [4 x [4 x float]], align 16
  %11 = alloca [4 x [4 x float]], align 16
  %12 = load ptr, ptr %0, align 8, !tbaa !51
  %13 = getelementptr inbounds %struct.View3DCameraControl, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !44
  %15 = getelementptr inbounds %struct.View3DCameraControl, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = getelementptr inbounds %struct.View3DCameraControl, ptr %0, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !43
  %19 = icmp eq ptr %18, null
  br i1 %19, label %42, label %20

20:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #4
  %21 = getelementptr inbounds %struct.View3DCameraControl, ptr %0, i64 0, i32 3
  %22 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %7, ptr noundef nonnull %21) #4
  %23 = getelementptr inbounds %struct.RegionView3D, ptr %16, i64 0, i32 22
  %24 = getelementptr inbounds %struct.RegionView3D, ptr %16, i64 0, i32 17
  %25 = getelementptr inbounds %struct.RegionView3D, ptr %16, i64 0, i32 18
  %26 = load float, ptr %25, align 8, !tbaa !54
  call void @ED_view3d_to_m4(ptr noundef nonnull %6, ptr noundef nonnull %23, ptr noundef nonnull %24, float noundef %26) #4
  call void @mul_m4_m4m4(ptr noundef nonnull %8, ptr noundef nonnull %6, ptr noundef nonnull %7) #4
  %27 = load ptr, ptr %17, align 8, !tbaa !43
  %28 = getelementptr inbounds %struct.Object, ptr %27, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %28) #4
  %29 = load ptr, ptr %17, align 8, !tbaa !43
  call void @BKE_object_apply_mat4(ptr noundef %29, ptr noundef nonnull %9, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  %30 = getelementptr inbounds %struct.View3D, ptr %14, i64 0, i32 15
  %31 = load ptr, ptr %30, align 8, !tbaa !45
  %32 = getelementptr inbounds %struct.Object, ptr %31, i64 0, i32 9
  %33 = load ptr, ptr %32, align 8, !tbaa !65
  %34 = icmp eq ptr %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %20, %35
  %36 = phi ptr [ %38, %35 ], [ %33, %20 ]
  call void @DAG_id_tag_update(ptr noundef nonnull %36, i16 noundef signext 1) #4
  %37 = getelementptr inbounds %struct.Object, ptr %36, i64 0, i32 9
  %38 = load ptr, ptr %37, align 8, !tbaa !65
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %35, !llvm.loop !71

40:                                               ; preds = %35, %20
  call void @copy_m4_m4(ptr noundef nonnull %21, ptr noundef nonnull %6) #4
  %41 = load ptr, ptr %17, align 8, !tbaa !43
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #4
  br label %62

42:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #4
  %43 = getelementptr inbounds %struct.View3D, ptr %14, i64 0, i32 15
  %44 = load ptr, ptr %43, align 8, !tbaa !45
  %45 = getelementptr inbounds %struct.Object, ptr %44, i64 0, i32 36
  %46 = load float, ptr %45, align 4, !tbaa !70
  %47 = getelementptr inbounds %struct.Object, ptr %44, i64 0, i32 36, i64 1
  %48 = load float, ptr %47, align 4, !tbaa !70
  %49 = getelementptr inbounds %struct.Object, ptr %44, i64 0, i32 36, i64 2
  %50 = load float, ptr %49, align 4, !tbaa !70
  %51 = getelementptr inbounds %struct.RegionView3D, ptr %16, i64 0, i32 22
  %52 = getelementptr inbounds %struct.RegionView3D, ptr %16, i64 0, i32 17
  %53 = getelementptr inbounds %struct.RegionView3D, ptr %16, i64 0, i32 18
  %54 = load float, ptr %53, align 8, !tbaa !54
  call void @ED_view3d_to_m4(ptr noundef nonnull %10, ptr noundef nonnull %51, ptr noundef nonnull %52, float noundef %54) #4
  %55 = load ptr, ptr %43, align 8, !tbaa !45
  %56 = getelementptr inbounds %struct.Object, ptr %55, i64 0, i32 36
  call void @size_to_mat4(ptr noundef nonnull %11, ptr noundef nonnull %56) #4
  call void @mul_m4_m4m4(ptr noundef nonnull %10, ptr noundef nonnull %10, ptr noundef nonnull %11) #4
  %57 = load ptr, ptr %43, align 8, !tbaa !45
  call void @BKE_object_apply_mat4(ptr noundef %57, ptr noundef nonnull %10, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %58 = load ptr, ptr %43, align 8, !tbaa !45
  %59 = getelementptr inbounds %struct.Object, ptr %58, i64 0, i32 36
  store float %46, ptr %59, align 4, !tbaa !70
  %60 = getelementptr inbounds %struct.Object, ptr %58, i64 0, i32 36, i64 1
  store float %48, ptr %60, align 4, !tbaa !70
  %61 = getelementptr inbounds %struct.Object, ptr %58, i64 0, i32 36, i64 2
  store float %50, ptr %61, align 4, !tbaa !70
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #4
  br label %62

62:                                               ; preds = %42, %40
  %63 = phi ptr [ %41, %40 ], [ %58, %42 ]
  %64 = icmp eq i8 %1, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %62
  %66 = call zeroext i8 @ED_view3d_camera_autokey(ptr noundef %12, ptr noundef %63, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) #4
  br label %67

67:                                               ; preds = %65, %62
  ret void
}

declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BKE_object_apply_mat4(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #3

declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @size_to_mat4(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @ED_view3d_camera_autokey(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @ED_view3d_cameracontrol_release(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.View3DCameraControl, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.View3DCameraControl, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i8 %1, 0
  %8 = getelementptr inbounds %struct.View3DCameraControl, ptr %0, i64 0, i32 9
  %9 = load i8, ptr %8, align 8, !tbaa !53
  %10 = icmp eq i8 %9, 2
  br i1 %7, label %41, label %11

11:                                               ; preds = %2
  br i1 %10, label %12, label %23

12:                                               ; preds = %11
  %13 = getelementptr inbounds %struct.View3DCameraControl, ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !43
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 15
  %18 = load ptr, ptr %17, align 8, !tbaa !45
  br label %19

19:                                               ; preds = %12, %16
  %20 = phi ptr [ %18, %16 ], [ %14, %12 ]
  %21 = getelementptr inbounds %struct.View3DCameraControl, ptr %0, i64 0, i32 11
  %22 = load ptr, ptr %21, align 8, !tbaa !69
  tail call void @BKE_object_tfm_restore(ptr noundef %20, ptr noundef %22) #4
  tail call void @DAG_id_tag_update(ptr noundef %20, i16 noundef signext 1) #4
  br label %28

23:                                               ; preds = %11
  %24 = getelementptr inbounds %struct.RegionView3D, ptr %6, i64 0, i32 17
  %25 = getelementptr inbounds %struct.View3DCameraControl, ptr %0, i64 0, i32 8
  tail call void @copy_qt_qt(ptr noundef nonnull %24, ptr noundef nonnull %25) #4
  %26 = load i8, ptr %8, align 8, !tbaa !53
  %27 = getelementptr inbounds %struct.RegionView3D, ptr %6, i64 0, i32 25
  store i8 %26, ptr %27, align 1, !tbaa !40
  br label %28

28:                                               ; preds = %23, %19
  %29 = getelementptr inbounds %struct.RegionView3D, ptr %6, i64 0, i32 22
  %30 = getelementptr inbounds %struct.View3DCameraControl, ptr %0, i64 0, i32 7
  %31 = load float, ptr %30, align 4, !tbaa !70
  store float %31, ptr %29, align 4, !tbaa !70
  %32 = getelementptr inbounds %struct.View3DCameraControl, ptr %0, i64 0, i32 7, i64 1
  %33 = load float, ptr %32, align 4, !tbaa !70
  %34 = getelementptr inbounds %struct.RegionView3D, ptr %6, i64 0, i32 22, i64 1
  store float %33, ptr %34, align 4, !tbaa !70
  %35 = getelementptr inbounds %struct.View3DCameraControl, ptr %0, i64 0, i32 7, i64 2
  %36 = load float, ptr %35, align 4, !tbaa !70
  %37 = getelementptr inbounds %struct.RegionView3D, ptr %6, i64 0, i32 22, i64 2
  store float %36, ptr %37, align 4, !tbaa !70
  %38 = getelementptr inbounds %struct.View3DCameraControl, ptr %0, i64 0, i32 6
  %39 = load float, ptr %38, align 8, !tbaa !55
  %40 = getelementptr inbounds %struct.RegionView3D, ptr %6, i64 0, i32 18
  store float %39, ptr %40, align 8, !tbaa !54
  br label %66

41:                                               ; preds = %2
  br i1 %10, label %42, label %63

42:                                               ; preds = %41
  %43 = getelementptr inbounds %struct.View3DCameraControl, ptr %0, i64 0, i32 5
  %44 = load ptr, ptr %43, align 8, !tbaa !43
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 15
  %48 = load ptr, ptr %47, align 8, !tbaa !45
  br label %49

49:                                               ; preds = %42, %46
  %50 = phi ptr [ %48, %46 ], [ %44, %42 ]
  tail call void @DAG_id_tag_update(ptr noundef %50, i16 noundef signext 1) #4
  %51 = getelementptr inbounds %struct.RegionView3D, ptr %6, i64 0, i32 22
  %52 = getelementptr inbounds %struct.View3DCameraControl, ptr %0, i64 0, i32 7
  %53 = load float, ptr %52, align 4, !tbaa !70
  store float %53, ptr %51, align 4, !tbaa !70
  %54 = getelementptr inbounds %struct.View3DCameraControl, ptr %0, i64 0, i32 7, i64 1
  %55 = load float, ptr %54, align 4, !tbaa !70
  %56 = getelementptr inbounds %struct.RegionView3D, ptr %6, i64 0, i32 22, i64 1
  store float %55, ptr %56, align 4, !tbaa !70
  %57 = getelementptr inbounds %struct.View3DCameraControl, ptr %0, i64 0, i32 7, i64 2
  %58 = load float, ptr %57, align 4, !tbaa !70
  %59 = getelementptr inbounds %struct.RegionView3D, ptr %6, i64 0, i32 22, i64 2
  store float %58, ptr %59, align 4, !tbaa !70
  %60 = getelementptr inbounds %struct.View3DCameraControl, ptr %0, i64 0, i32 6
  %61 = load float, ptr %60, align 8, !tbaa !55
  %62 = getelementptr inbounds %struct.RegionView3D, ptr %6, i64 0, i32 18
  store float %61, ptr %62, align 8, !tbaa !54
  br label %66

63:                                               ; preds = %41
  %64 = getelementptr inbounds %struct.View3DCameraControl, ptr %0, i64 0, i32 6
  %65 = load float, ptr %64, align 8, !tbaa !55
  tail call void @ED_view3d_distance_set(ptr noundef %6, float noundef %65) #4
  br label %66

66:                                               ; preds = %49, %63, %28
  %67 = getelementptr inbounds %struct.View3DCameraControl, ptr %0, i64 0, i32 10
  %68 = load i8, ptr %67, align 1, !tbaa !64
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 15
  %72 = load ptr, ptr %71, align 8, !tbaa !45
  %73 = getelementptr inbounds %struct.Object, ptr %72, i64 0, i32 19
  %74 = load ptr, ptr %73, align 8, !tbaa !57
  %75 = getelementptr inbounds %struct.Camera, ptr %74, i64 0, i32 2
  store i8 1, ptr %75, align 8, !tbaa !62
  br label %76

76:                                               ; preds = %70, %66
  %77 = getelementptr inbounds %struct.View3DCameraControl, ptr %0, i64 0, i32 11
  %78 = load ptr, ptr %77, align 8, !tbaa !69
  %79 = icmp eq ptr %78, null
  br i1 %79, label %82, label %80

80:                                               ; preds = %76
  %81 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  tail call void %81(ptr noundef nonnull %78) #4
  br label %82

82:                                               ; preds = %80, %76
  %83 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  tail call void %83(ptr noundef %0) #4
  ret void
}

declare void @BKE_object_tfm_restore(ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
!34 = !{!35, !36, i64 16}
!35 = !{!"View3DCameraControl", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !37, i64 88, !36, i64 96, !39, i64 104, !37, i64 108, !37, i64 120, !37, i64 136, !37, i64 137, !36, i64 144}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"float", !37, i64 0}
!40 = !{!41, !37, i64 809}
!41 = !{!"RegionView3D", !37, i64 0, !37, i64 64, !37, i64 128, !37, i64 192, !37, i64 256, !37, i64 320, !37, i64 384, !37, i64 448, !37, i64 544, !36, i64 640, !36, i64 648, !36, i64 656, !36, i64 664, !36, i64 672, !36, i64 680, !36, i64 688, !37, i64 696, !37, i64 760, !39, i64 776, !39, i64 780, !39, i64 784, !39, i64 788, !37, i64 792, !39, i64 804, !37, i64 808, !37, i64 809, !37, i64 810, !37, i64 811, !37, i64 812, !37, i64 813, !37, i64 816, !42, i64 824, !42, i64 826, !37, i64 828, !42, i64 844, !42, i64 846, !39, i64 848, !37, i64 852, !39, i64 864, !37, i64 868}
!42 = !{!"short", !37, i64 0}
!43 = !{!35, !36, i64 96}
!44 = !{!35, !36, i64 8}
!45 = !{!46, !36, i64 96}
!46 = !{!"View3D", !36, i64 0, !36, i64 8, !47, i64 16, !48, i64 32, !39, i64 36, !37, i64 40, !37, i64 56, !39, i64 72, !39, i64 76, !37, i64 80, !37, i64 81, !48, i64 84, !48, i64 88, !42, i64 92, !42, i64 94, !36, i64 96, !36, i64 104, !49, i64 112, !47, i64 128, !36, i64 144, !36, i64 152, !37, i64 160, !48, i64 224, !48, i64 228, !42, i64 232, !42, i64 234, !42, i64 236, !42, i64 238, !42, i64 240, !42, i64 242, !39, i64 244, !39, i64 248, !39, i64 252, !39, i64 256, !37, i64 260, !37, i64 272, !42, i64 284, !42, i64 286, !42, i64 288, !37, i64 290, !37, i64 291, !37, i64 292, !37, i64 293, !37, i64 294, !47, i64 296, !47, i64 312, !47, i64 328, !37, i64 344, !37, i64 345, !37, i64 346, !37, i64 347, !36, i64 352, !36, i64 360, !36, i64 368}
!47 = !{!"ListBase", !36, i64 0, !36, i64 8}
!48 = !{!"int", !37, i64 0}
!49 = !{!"rctf", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!50 = !{!36, !36, i64 0}
!51 = !{!35, !36, i64 0}
!52 = !{!35, !37, i64 88}
!53 = !{!35, !37, i64 136}
!54 = !{!41, !39, i64 776}
!55 = !{!35, !39, i64 104}
!56 = !{!41, !37, i64 808}
!57 = !{!58, !36, i64 296}
!58 = !{!"Object", !59, i64 0, !36, i64 120, !36, i64 128, !42, i64 136, !42, i64 138, !48, i64 140, !48, i64 144, !48, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !60, i64 312, !36, i64 360, !47, i64 368, !47, i64 384, !47, i64 400, !47, i64 416, !48, i64 432, !48, i64 436, !36, i64 440, !36, i64 448, !48, i64 456, !48, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !39, i64 616, !39, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !48, i64 944, !42, i64 948, !42, i64 950, !42, i64 952, !42, i64 954, !42, i64 956, !42, i64 958, !42, i64 960, !42, i64 962, !42, i64 964, !37, i64 966, !37, i64 967, !48, i64 968, !48, i64 972, !48, i64 976, !48, i64 980, !48, i64 984, !39, i64 988, !39, i64 992, !39, i64 996, !39, i64 1000, !39, i64 1004, !39, i64 1008, !39, i64 1012, !39, i64 1016, !39, i64 1020, !39, i64 1024, !39, i64 1028, !39, i64 1032, !42, i64 1036, !42, i64 1038, !42, i64 1040, !37, i64 1042, !37, i64 1043, !42, i64 1044, !37, i64 1046, !37, i64 1047, !39, i64 1048, !39, i64 1052, !47, i64 1056, !47, i64 1072, !47, i64 1088, !47, i64 1104, !39, i64 1120, !42, i64 1124, !42, i64 1126, !37, i64 1128, !48, i64 1144, !48, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !42, i64 1162, !37, i64 1164, !47, i64 1176, !47, i64 1192, !47, i64 1208, !47, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !42, i64 1266, !39, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !61, i64 1304, !61, i64 1312, !48, i64 1320, !48, i64 1324, !47, i64 1328, !47, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !47, i64 1400, !36, i64 1416}
!59 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !42, i64 98, !48, i64 100, !48, i64 104, !48, i64 108, !36, i64 112}
!60 = !{!"bAnimVizSettings", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !42, i64 16, !42, i64 18, !42, i64 20, !42, i64 22, !42, i64 24, !42, i64 26, !42, i64 28, !42, i64 30, !48, i64 32, !48, i64 36, !48, i64 40, !48, i64 44}
!61 = !{!"long", !37, i64 0}
!62 = !{!63, !37, i64 128}
!63 = !{!"Camera", !59, i64 0, !36, i64 120, !37, i64 128, !37, i64 129, !42, i64 130, !39, i64 132, !39, i64 136, !39, i64 140, !39, i64 144, !39, i64 148, !39, i64 152, !39, i64 156, !39, i64 160, !39, i64 164, !39, i64 168, !39, i64 172, !36, i64 176, !36, i64 184, !37, i64 192, !37, i64 193}
!64 = !{!35, !37, i64 137}
!65 = !{!58, !36, i64 216}
!66 = distinct !{!66, !67, !68}
!67 = !{!"llvm.loop.mustprogress"}
!68 = !{!"llvm.loop.unroll.disable"}
!69 = !{!35, !36, i64 144}
!70 = !{!39, !39, i64 0}
!71 = distinct !{!71, !67, !68}
