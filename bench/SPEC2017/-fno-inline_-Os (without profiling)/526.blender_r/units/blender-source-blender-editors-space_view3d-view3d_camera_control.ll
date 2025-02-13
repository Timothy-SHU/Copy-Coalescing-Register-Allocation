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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @ED_view3d_cameracontrol_object_get(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.View3DCameraControl, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.RegionView3D, ptr %3, i64 0, i32 25
  %5 = load i8, ptr %4, align 1, !tbaa !11
  %6 = icmp eq i8 %5, 2
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = tail call fastcc ptr @view3d_cameracontrol_object(ptr noundef nonnull %0) #5
  br label %9

9:                                                ; preds = %1, %7
  %10 = phi ptr [ %8, %7 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @view3d_cameracontrol_object(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.View3DCameraControl, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !14
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.View3DCameraControl, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  %8 = getelementptr inbounds %struct.View3D, ptr %7, i64 0, i32 15
  %9 = load ptr, ptr %8, align 8, !tbaa !16
  br label %10

10:                                               ; preds = %1, %5
  %11 = phi ptr [ %9, %5 ], [ %3, %1 ]
  ret ptr %11
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @ED_view3d_cameracontrol_acquire(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #2 {
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !21
  %6 = tail call ptr %5(i64 noundef 152, ptr noundef nonnull @__func__.ED_view3d_cameracontrol_acquire) #6
  store ptr %0, ptr %6, align 8, !tbaa !22
  %7 = getelementptr inbounds %struct.View3DCameraControl, ptr %6, i64 0, i32 1
  store ptr %1, ptr %7, align 8, !tbaa !15
  %8 = getelementptr inbounds %struct.View3DCameraControl, ptr %6, i64 0, i32 2
  store ptr %2, ptr %8, align 8, !tbaa !5
  %9 = getelementptr inbounds %struct.View3DCameraControl, ptr %6, i64 0, i32 4
  store i8 %3, ptr %9, align 8, !tbaa !23
  %10 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 25
  %11 = load i8, ptr %10, align 1, !tbaa !11
  %12 = getelementptr inbounds %struct.View3DCameraControl, ptr %6, i64 0, i32 9
  store i8 %11, ptr %12, align 8, !tbaa !24
  %13 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 18
  %14 = load float, ptr %13, align 8, !tbaa !25
  %15 = getelementptr inbounds %struct.View3DCameraControl, ptr %6, i64 0, i32 6
  store float %14, ptr %15, align 8, !tbaa !26
  switch i8 %11, label %56 [
    i8 2, label %16
    i8 0, label %55
  ]

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 24
  %18 = load i8, ptr %17, align 8, !tbaa !27
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 15
  %22 = load ptr, ptr %21, align 8, !tbaa !16
  %23 = getelementptr inbounds %struct.Object, ptr %22, i64 0, i32 19
  %24 = load ptr, ptr %23, align 8, !tbaa !28
  %25 = getelementptr inbounds %struct.Camera, ptr %24, i64 0, i32 2
  store i8 0, ptr %25, align 8, !tbaa !33
  %26 = getelementptr inbounds %struct.View3DCameraControl, ptr %6, i64 0, i32 10
  store i8 1, ptr %26, align 1, !tbaa !35
  br label %27

27:                                               ; preds = %16, %20
  %28 = icmp eq i8 %3, 0
  %29 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 15
  %30 = load ptr, ptr %29, align 8, !tbaa !16
  br i1 %28, label %46, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.Object, ptr %30, i64 0, i32 9
  %33 = load ptr, ptr %32, align 8, !tbaa !36
  %34 = getelementptr inbounds %struct.View3DCameraControl, ptr %6, i64 0, i32 5
  store ptr %33, ptr %34, align 8, !tbaa !14
  %35 = icmp eq ptr %33, null
  br i1 %35, label %46, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.Object, ptr %33, i64 0, i32 9
  %38 = load ptr, ptr %37, align 8, !tbaa !36
  %39 = icmp eq ptr %38, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %36, %40
  %41 = phi ptr [ %43, %40 ], [ %38, %36 ]
  %42 = getelementptr inbounds %struct.Object, ptr %41, i64 0, i32 9
  %43 = load ptr, ptr %42, align 8, !tbaa !36
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %40, !llvm.loop !37

45:                                               ; preds = %40
  store ptr %41, ptr %34, align 8, !tbaa !14
  br label %46

46:                                               ; preds = %27, %31, %36, %45
  %47 = phi ptr [ %41, %45 ], [ %33, %36 ], [ %30, %31 ], [ %30, %27 ]
  %48 = tail call ptr @BKE_object_tfm_backup(ptr noundef %47) #6
  %49 = getelementptr inbounds %struct.View3DCameraControl, ptr %6, i64 0, i32 11
  store ptr %48, ptr %49, align 8, !tbaa !39
  %50 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 15
  %51 = load ptr, ptr %50, align 8, !tbaa !16
  tail call void @BKE_object_where_is_calc(ptr noundef %0, ptr noundef %51) #6
  %52 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 22
  %53 = load ptr, ptr %50, align 8, !tbaa !16
  %54 = getelementptr inbounds %struct.Object, ptr %53, i64 0, i32 47, i64 3
  tail call fastcc void @negate_v3_v3(ptr noundef nonnull %52, ptr noundef nonnull %54) #5
  store float 0.000000e+00, ptr %13, align 8, !tbaa !25
  br label %62

55:                                               ; preds = %4
  store i8 1, ptr %10, align 1, !tbaa !11
  br label %56

56:                                               ; preds = %4, %55
  %57 = getelementptr inbounds %struct.View3DCameraControl, ptr %6, i64 0, i32 8
  %58 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 17
  tail call void @copy_qt_qt(ptr noundef nonnull %57, ptr noundef nonnull %58) #6
  %59 = getelementptr inbounds %struct.View3DCameraControl, ptr %6, i64 0, i32 7
  %60 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 22
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %59, ptr noundef nonnull %60) #5
  tail call void @ED_view3d_distance_set(ptr noundef nonnull %2, float noundef 0.000000e+00) #6
  %61 = load float, ptr %13, align 8, !tbaa !25
  br label %62

62:                                               ; preds = %56, %46
  %63 = phi float [ %61, %56 ], [ 0.000000e+00, %46 ]
  %64 = getelementptr inbounds %struct.View3DCameraControl, ptr %6, i64 0, i32 3
  %65 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 22
  %66 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 17
  tail call void @ED_view3d_to_m4(ptr noundef nonnull %64, ptr noundef nonnull %65, ptr noundef nonnull %66, float noundef %63) #6
  ret ptr %6
}

; Function Attrs: optsize
declare ptr @BKE_object_tfm_backup(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_object_where_is_calc(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 {
  %3 = load float, ptr %1, align 4, !tbaa !40
  %4 = fneg float %3
  store float %4, ptr %0, align 4, !tbaa !40
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !40
  %7 = fneg float %6
  %8 = getelementptr inbounds float, ptr %0, i64 1
  store float %7, ptr %8, align 4, !tbaa !40
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !40
  %11 = fneg float %10
  %12 = getelementptr inbounds float, ptr %0, i64 2
  store float %11, ptr %12, align 4, !tbaa !40
  ret void
}

; Function Attrs: optsize
declare void @copy_qt_qt(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 {
  %3 = load float, ptr %1, align 4, !tbaa !40
  store float %3, ptr %0, align 4, !tbaa !40
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !40
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !40
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !40
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !40
  ret void
}

; Function Attrs: optsize
declare void @ED_view3d_distance_set(ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_view3d_to_m4(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_view3d_cameracontrol_update(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #2 {
  %6 = alloca [4 x [4 x float]], align 16
  %7 = alloca [4 x [4 x float]], align 16
  %8 = alloca [4 x [4 x float]], align 16
  %9 = alloca [4 x [4 x float]], align 16
  %10 = alloca [4 x [4 x float]], align 16
  %11 = alloca [4 x [4 x float]], align 16
  %12 = alloca [3 x float], align 4
  %13 = load ptr, ptr %0, align 8, !tbaa !22
  %14 = getelementptr inbounds %struct.View3DCameraControl, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !15
  %16 = getelementptr inbounds %struct.View3DCameraControl, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !5
  %18 = getelementptr inbounds %struct.View3DCameraControl, ptr %0, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !14
  %20 = icmp eq ptr %19, null
  br i1 %20, label %43, label %21

21:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #7
  %22 = getelementptr inbounds %struct.View3DCameraControl, ptr %0, i64 0, i32 3
  %23 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %7, ptr noundef nonnull %22) #6
  %24 = getelementptr inbounds %struct.RegionView3D, ptr %17, i64 0, i32 22
  %25 = getelementptr inbounds %struct.RegionView3D, ptr %17, i64 0, i32 17
  %26 = getelementptr inbounds %struct.RegionView3D, ptr %17, i64 0, i32 18
  %27 = load float, ptr %26, align 8, !tbaa !25
  call void @ED_view3d_to_m4(ptr noundef nonnull %6, ptr noundef nonnull %24, ptr noundef nonnull %25, float noundef %27) #6
  call void @mul_m4_m4m4(ptr noundef nonnull %8, ptr noundef nonnull %6, ptr noundef nonnull %7) #6
  %28 = load ptr, ptr %18, align 8, !tbaa !14
  %29 = getelementptr inbounds %struct.Object, ptr %28, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %29) #6
  %30 = load ptr, ptr %18, align 8, !tbaa !14
  call void @BKE_object_apply_mat4(ptr noundef %30, ptr noundef nonnull %9, i8 noundef zeroext 1, i8 noundef zeroext 0) #6
  %31 = getelementptr inbounds %struct.View3D, ptr %15, i64 0, i32 15
  %32 = load ptr, ptr %31, align 8, !tbaa !16
  %33 = getelementptr inbounds %struct.Object, ptr %32, i64 0, i32 9
  %34 = load ptr, ptr %33, align 8, !tbaa !36
  %35 = icmp eq ptr %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %21, %36
  %37 = phi ptr [ %39, %36 ], [ %34, %21 ]
  call void @DAG_id_tag_update(ptr noundef nonnull %37, i16 noundef signext 1) #6
  %38 = getelementptr inbounds %struct.Object, ptr %37, i64 0, i32 9
  %39 = load ptr, ptr %38, align 8, !tbaa !36
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %36, !llvm.loop !41

41:                                               ; preds = %36, %21
  call void @copy_m4_m4(ptr noundef nonnull %22, ptr noundef nonnull %6) #6
  %42 = load ptr, ptr %18, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #7
  br label %57

43:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #7
  %44 = getelementptr inbounds %struct.View3D, ptr %15, i64 0, i32 15
  %45 = load ptr, ptr %44, align 8, !tbaa !16
  %46 = getelementptr inbounds %struct.Object, ptr %45, i64 0, i32 36
  call fastcc void @copy_v3_v3(ptr noundef nonnull %12, ptr noundef nonnull %46) #5
  %47 = getelementptr inbounds %struct.RegionView3D, ptr %17, i64 0, i32 22
  %48 = getelementptr inbounds %struct.RegionView3D, ptr %17, i64 0, i32 17
  %49 = getelementptr inbounds %struct.RegionView3D, ptr %17, i64 0, i32 18
  %50 = load float, ptr %49, align 8, !tbaa !25
  call void @ED_view3d_to_m4(ptr noundef nonnull %10, ptr noundef nonnull %47, ptr noundef nonnull %48, float noundef %50) #6
  %51 = load ptr, ptr %44, align 8, !tbaa !16
  %52 = getelementptr inbounds %struct.Object, ptr %51, i64 0, i32 36
  call void @size_to_mat4(ptr noundef nonnull %11, ptr noundef nonnull %52) #6
  call void @mul_m4_m4m4(ptr noundef nonnull %10, ptr noundef nonnull %10, ptr noundef nonnull %11) #6
  %53 = load ptr, ptr %44, align 8, !tbaa !16
  call void @BKE_object_apply_mat4(ptr noundef %53, ptr noundef nonnull %10, i8 noundef zeroext 1, i8 noundef zeroext 1) #6
  %54 = load ptr, ptr %44, align 8, !tbaa !16
  %55 = getelementptr inbounds %struct.Object, ptr %54, i64 0, i32 36
  call fastcc void @copy_v3_v3(ptr noundef nonnull %55, ptr noundef nonnull %12) #5
  %56 = load ptr, ptr %44, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #7
  br label %57

57:                                               ; preds = %43, %41
  %58 = phi ptr [ %42, %41 ], [ %56, %43 ]
  %59 = icmp eq i8 %1, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %57
  %61 = call zeroext i8 @ED_view3d_camera_autokey(ptr noundef %13, ptr noundef %58, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) #6
  br label %62

62:                                               ; preds = %60, %57
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_object_apply_mat4(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @size_to_mat4(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @ED_view3d_camera_autokey(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_view3d_cameracontrol_release(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.View3DCameraControl, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.View3DCameraControl, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = icmp eq i8 %1, 0
  %8 = getelementptr inbounds %struct.View3DCameraControl, ptr %0, i64 0, i32 9
  %9 = load i8, ptr %8, align 8, !tbaa !24
  %10 = icmp eq i8 %9, 2
  br i1 %7, label %27, label %11

11:                                               ; preds = %2
  br i1 %10, label %12, label %16

12:                                               ; preds = %11
  %13 = tail call fastcc ptr @view3d_cameracontrol_object(ptr noundef nonnull %0) #5
  %14 = getelementptr inbounds %struct.View3DCameraControl, ptr %0, i64 0, i32 11
  %15 = load ptr, ptr %14, align 8, !tbaa !39
  tail call void @BKE_object_tfm_restore(ptr noundef %13, ptr noundef %15) #6
  tail call void @DAG_id_tag_update(ptr noundef %13, i16 noundef signext 1) #6
  br label %21

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.RegionView3D, ptr %6, i64 0, i32 17
  %18 = getelementptr inbounds %struct.View3DCameraControl, ptr %0, i64 0, i32 8
  tail call void @copy_qt_qt(ptr noundef nonnull %17, ptr noundef nonnull %18) #6
  %19 = load i8, ptr %8, align 8, !tbaa !24
  %20 = getelementptr inbounds %struct.RegionView3D, ptr %6, i64 0, i32 25
  store i8 %19, ptr %20, align 1, !tbaa !11
  br label %21

21:                                               ; preds = %16, %12
  %22 = getelementptr inbounds %struct.RegionView3D, ptr %6, i64 0, i32 22
  %23 = getelementptr inbounds %struct.View3DCameraControl, ptr %0, i64 0, i32 7
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %22, ptr noundef nonnull %23) #5
  %24 = getelementptr inbounds %struct.View3DCameraControl, ptr %0, i64 0, i32 6
  %25 = load float, ptr %24, align 8, !tbaa !26
  %26 = getelementptr inbounds %struct.RegionView3D, ptr %6, i64 0, i32 18
  store float %25, ptr %26, align 8, !tbaa !25
  br label %38

27:                                               ; preds = %2
  br i1 %10, label %28, label %35

28:                                               ; preds = %27
  %29 = tail call fastcc ptr @view3d_cameracontrol_object(ptr noundef nonnull %0) #5
  tail call void @DAG_id_tag_update(ptr noundef %29, i16 noundef signext 1) #6
  %30 = getelementptr inbounds %struct.RegionView3D, ptr %6, i64 0, i32 22
  %31 = getelementptr inbounds %struct.View3DCameraControl, ptr %0, i64 0, i32 7
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %30, ptr noundef nonnull %31) #5
  %32 = getelementptr inbounds %struct.View3DCameraControl, ptr %0, i64 0, i32 6
  %33 = load float, ptr %32, align 8, !tbaa !26
  %34 = getelementptr inbounds %struct.RegionView3D, ptr %6, i64 0, i32 18
  store float %33, ptr %34, align 8, !tbaa !25
  br label %38

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.View3DCameraControl, ptr %0, i64 0, i32 6
  %37 = load float, ptr %36, align 8, !tbaa !26
  tail call void @ED_view3d_distance_set(ptr noundef %6, float noundef %37) #6
  br label %38

38:                                               ; preds = %28, %35, %21
  %39 = getelementptr inbounds %struct.View3DCameraControl, ptr %0, i64 0, i32 10
  %40 = load i8, ptr %39, align 1, !tbaa !35
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 15
  %44 = load ptr, ptr %43, align 8, !tbaa !16
  %45 = getelementptr inbounds %struct.Object, ptr %44, i64 0, i32 19
  %46 = load ptr, ptr %45, align 8, !tbaa !28
  %47 = getelementptr inbounds %struct.Camera, ptr %46, i64 0, i32 2
  store i8 1, ptr %47, align 8, !tbaa !33
  br label %48

48:                                               ; preds = %42, %38
  %49 = getelementptr inbounds %struct.View3DCameraControl, ptr %0, i64 0, i32 11
  %50 = load ptr, ptr %49, align 8, !tbaa !39
  %51 = icmp eq ptr %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %48
  %53 = load ptr, ptr @MEM_freeN, align 8, !tbaa !21
  tail call void %53(ptr noundef nonnull %50) #6
  br label %54

54:                                               ; preds = %52, %48
  %55 = load ptr, ptr @MEM_freeN, align 8, !tbaa !21
  tail call void %55(ptr noundef nonnull %0) #6
  ret void
}

; Function Attrs: optsize
declare void @BKE_object_tfm_restore(ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { optsize }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 16}
!6 = !{!"View3DCameraControl", !7, i64 0, !7, i64 8, !7, i64 16, !8, i64 24, !8, i64 88, !7, i64 96, !10, i64 104, !8, i64 108, !8, i64 120, !8, i64 136, !8, i64 137, !7, i64 144}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"float", !8, i64 0}
!11 = !{!12, !8, i64 809}
!12 = !{!"RegionView3D", !8, i64 0, !8, i64 64, !8, i64 128, !8, i64 192, !8, i64 256, !8, i64 320, !8, i64 384, !8, i64 448, !8, i64 544, !7, i64 640, !7, i64 648, !7, i64 656, !7, i64 664, !7, i64 672, !7, i64 680, !7, i64 688, !8, i64 696, !8, i64 760, !10, i64 776, !10, i64 780, !10, i64 784, !10, i64 788, !8, i64 792, !10, i64 804, !8, i64 808, !8, i64 809, !8, i64 810, !8, i64 811, !8, i64 812, !8, i64 813, !8, i64 816, !13, i64 824, !13, i64 826, !8, i64 828, !13, i64 844, !13, i64 846, !10, i64 848, !8, i64 852, !10, i64 864, !8, i64 868}
!13 = !{!"short", !8, i64 0}
!14 = !{!6, !7, i64 96}
!15 = !{!6, !7, i64 8}
!16 = !{!17, !7, i64 96}
!17 = !{!"View3D", !7, i64 0, !7, i64 8, !18, i64 16, !19, i64 32, !10, i64 36, !8, i64 40, !8, i64 56, !10, i64 72, !10, i64 76, !8, i64 80, !8, i64 81, !19, i64 84, !19, i64 88, !13, i64 92, !13, i64 94, !7, i64 96, !7, i64 104, !20, i64 112, !18, i64 128, !7, i64 144, !7, i64 152, !8, i64 160, !19, i64 224, !19, i64 228, !13, i64 232, !13, i64 234, !13, i64 236, !13, i64 238, !13, i64 240, !13, i64 242, !10, i64 244, !10, i64 248, !10, i64 252, !10, i64 256, !8, i64 260, !8, i64 272, !13, i64 284, !13, i64 286, !13, i64 288, !8, i64 290, !8, i64 291, !8, i64 292, !8, i64 293, !8, i64 294, !18, i64 296, !18, i64 312, !18, i64 328, !8, i64 344, !8, i64 345, !8, i64 346, !8, i64 347, !7, i64 352, !7, i64 360, !7, i64 368}
!18 = !{!"ListBase", !7, i64 0, !7, i64 8}
!19 = !{!"int", !8, i64 0}
!20 = !{!"rctf", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12}
!21 = !{!7, !7, i64 0}
!22 = !{!6, !7, i64 0}
!23 = !{!6, !8, i64 88}
!24 = !{!6, !8, i64 136}
!25 = !{!12, !10, i64 776}
!26 = !{!6, !10, i64 104}
!27 = !{!12, !8, i64 808}
!28 = !{!29, !7, i64 296}
!29 = !{!"Object", !30, i64 0, !7, i64 120, !7, i64 128, !13, i64 136, !13, i64 138, !19, i64 140, !19, i64 144, !19, i64 148, !8, i64 152, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288, !7, i64 296, !7, i64 304, !31, i64 312, !7, i64 360, !18, i64 368, !18, i64 384, !18, i64 400, !18, i64 416, !19, i64 432, !19, i64 436, !7, i64 440, !7, i64 448, !19, i64 456, !19, i64 460, !8, i64 464, !8, i64 476, !8, i64 488, !8, i64 500, !8, i64 512, !8, i64 524, !8, i64 536, !8, i64 548, !8, i64 560, !8, i64 576, !8, i64 592, !8, i64 604, !10, i64 616, !10, i64 620, !8, i64 624, !8, i64 688, !8, i64 752, !8, i64 816, !8, i64 880, !19, i64 944, !13, i64 948, !13, i64 950, !13, i64 952, !13, i64 954, !13, i64 956, !13, i64 958, !13, i64 960, !13, i64 962, !13, i64 964, !8, i64 966, !8, i64 967, !19, i64 968, !19, i64 972, !19, i64 976, !19, i64 980, !19, i64 984, !10, i64 988, !10, i64 992, !10, i64 996, !10, i64 1000, !10, i64 1004, !10, i64 1008, !10, i64 1012, !10, i64 1016, !10, i64 1020, !10, i64 1024, !10, i64 1028, !10, i64 1032, !13, i64 1036, !13, i64 1038, !13, i64 1040, !8, i64 1042, !8, i64 1043, !13, i64 1044, !8, i64 1046, !8, i64 1047, !10, i64 1048, !10, i64 1052, !18, i64 1056, !18, i64 1072, !18, i64 1088, !18, i64 1104, !10, i64 1120, !13, i64 1124, !13, i64 1126, !8, i64 1128, !19, i64 1144, !19, i64 1148, !7, i64 1152, !8, i64 1160, !8, i64 1161, !13, i64 1162, !8, i64 1164, !18, i64 1176, !18, i64 1192, !18, i64 1208, !18, i64 1224, !7, i64 1240, !7, i64 1248, !7, i64 1256, !8, i64 1264, !8, i64 1265, !13, i64 1266, !10, i64 1268, !7, i64 1272, !7, i64 1280, !7, i64 1288, !7, i64 1296, !32, i64 1304, !32, i64 1312, !19, i64 1320, !19, i64 1324, !18, i64 1328, !18, i64 1344, !7, i64 1360, !7, i64 1368, !7, i64 1376, !8, i64 1384, !7, i64 1392, !18, i64 1400, !7, i64 1416}
!30 = !{!"ID", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !13, i64 98, !19, i64 100, !19, i64 104, !19, i64 108, !7, i64 112}
!31 = !{!"bAnimVizSettings", !19, i64 0, !19, i64 4, !19, i64 8, !19, i64 12, !13, i64 16, !13, i64 18, !13, i64 20, !13, i64 22, !13, i64 24, !13, i64 26, !13, i64 28, !13, i64 30, !19, i64 32, !19, i64 36, !19, i64 40, !19, i64 44}
!32 = !{!"long", !8, i64 0}
!33 = !{!34, !8, i64 128}
!34 = !{!"Camera", !30, i64 0, !7, i64 120, !8, i64 128, !8, i64 129, !13, i64 130, !10, i64 132, !10, i64 136, !10, i64 140, !10, i64 144, !10, i64 148, !10, i64 152, !10, i64 156, !10, i64 160, !10, i64 164, !10, i64 168, !10, i64 172, !7, i64 176, !7, i64 184, !8, i64 192, !8, i64 193}
!35 = !{!6, !8, i64 137}
!36 = !{!29, !7, i64 216}
!37 = distinct !{!37, !38}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!6, !7, i64 144}
!40 = !{!10, !10, i64 0}
!41 = distinct !{!41, !38}
