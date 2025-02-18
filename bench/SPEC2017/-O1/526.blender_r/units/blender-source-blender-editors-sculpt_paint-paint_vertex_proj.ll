; ModuleID = 'blender/source/blender/editors/sculpt_paint/paint_vertex_proj.c'
source_filename = "blender/source/blender/editors/sculpt_paint/paint_vertex_proj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.VertProjHandle = type { ptr, i8, ptr, ptr, ptr }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.DMCoNo = type { [3 x float], [3 x float] }
%struct.VertProjUpdate = type { ptr, ptr, ptr }

@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@__func__.ED_vpaint_proj_handle_create = private unnamed_addr constant [29 x i8] c"ED_vpaint_proj_handle_create\00", align 1
@.str = private unnamed_addr constant [17 x i8] c"vertexcosnos map\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@CD_MASK_BAREMESH = external local_unnamed_addr constant i64, align 8

; Function Attrs: nounwind uwtable
define dso_local ptr @ED_vpaint_proj_handle_create(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %5 = tail call ptr %4(i64 noundef 40, ptr noundef nonnull @__func__.ED_vpaint_proj_handle_create) #6
  %6 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !38
  %8 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 26
  %10 = load i32, ptr %9, align 8, !tbaa !47
  %11 = sext i32 %10 to i64
  %12 = mul nsw i64 %11, 24
  %13 = tail call ptr %8(i64 noundef %12, ptr noundef nonnull @.str) #6
  store ptr %13, ptr %5, align 8, !tbaa !50
  %14 = getelementptr inbounds %struct.VertProjHandle, ptr %5, i64 0, i32 1
  store i8 0, ptr %14, align 8, !tbaa !52
  %15 = load ptr, ptr %6, align 8, !tbaa !38
  %16 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !53
  %17 = or i64 %16, 128
  %18 = tail call ptr @mesh_get_derived_final(ptr noundef %0, ptr noundef %1, i64 noundef %17) #6
  %19 = getelementptr inbounds %struct.DerivedMesh, ptr %18, i64 0, i32 71
  %20 = load ptr, ptr %19, align 8, !tbaa !54
  %21 = icmp eq ptr %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %3
  %23 = load ptr, ptr %5, align 8, !tbaa !50
  %24 = getelementptr inbounds %struct.Mesh, ptr %15, i64 0, i32 26
  %25 = load i32, ptr %24, align 8, !tbaa !47
  %26 = sext i32 %25 to i64
  %27 = mul nsw i64 %26, 24
  tail call void @llvm.memset.p0.i64(ptr align 4 %23, i8 0, i64 %27, i1 false)
  %28 = load ptr, ptr %19, align 8, !tbaa !54
  tail call void %28(ptr noundef %18, ptr noundef nonnull @vpaint_proj_dm_map_cosnos_init__map_cb, ptr noundef nonnull %5, i32 noundef 1) #6
  br label %47

29:                                               ; preds = %3
  %30 = getelementptr inbounds %struct.Mesh, ptr %15, i64 0, i32 26
  %31 = load i32, ptr %30, align 8, !tbaa !47
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %29
  %34 = load ptr, ptr %5, align 8, !tbaa !50
  %35 = getelementptr inbounds %struct.DerivedMesh, ptr %18, i64 0, i32 76
  %36 = getelementptr inbounds %struct.DerivedMesh, ptr %18, i64 0, i32 78
  br label %37

37:                                               ; preds = %33, %37
  %38 = phi i32 [ 0, %33 ], [ %43, %37 ]
  %39 = phi ptr [ %34, %33 ], [ %44, %37 ]
  %40 = load ptr, ptr %35, align 8, !tbaa !56
  tail call void %40(ptr noundef %18, i32 noundef %38, ptr noundef %39) #6
  %41 = load ptr, ptr %36, align 8, !tbaa !57
  %42 = getelementptr inbounds %struct.DMCoNo, ptr %39, i64 0, i32 1
  tail call void %41(ptr noundef %18, i32 noundef %38, ptr noundef nonnull %42) #6
  %43 = add nuw nsw i32 %38, 1
  %44 = getelementptr inbounds %struct.DMCoNo, ptr %39, i64 1
  %45 = load i32, ptr %30, align 8, !tbaa !47
  %46 = icmp slt i32 %43, %45
  br i1 %46, label %37, label %47, !llvm.loop !58

47:                                               ; preds = %37, %29, %22
  %48 = getelementptr inbounds %struct.DerivedMesh, ptr %18, i64 0, i32 95
  %49 = load ptr, ptr %48, align 8, !tbaa !61
  tail call void %49(ptr noundef %18) #6
  %50 = load i8, ptr %14, align 8, !tbaa !52
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %61, label %52

52:                                               ; preds = %47
  %53 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %54 = load i32, ptr %9, align 8, !tbaa !47
  %55 = sext i32 %54 to i64
  %56 = shl nsw i64 %55, 2
  %57 = tail call ptr %53(i64 noundef %56, ptr noundef nonnull @__func__.ED_vpaint_proj_handle_create) #6
  %58 = getelementptr inbounds %struct.VertProjHandle, ptr %5, i64 0, i32 2
  store ptr %57, ptr %58, align 8, !tbaa !62
  %59 = getelementptr inbounds %struct.VertProjHandle, ptr %5, i64 0, i32 3
  store ptr %1, ptr %59, align 8, !tbaa !63
  %60 = getelementptr inbounds %struct.VertProjHandle, ptr %5, i64 0, i32 4
  store ptr %0, ptr %60, align 8, !tbaa !64
  br label %63

61:                                               ; preds = %47
  %62 = getelementptr inbounds %struct.VertProjHandle, ptr %5, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %62, i8 0, i64 24, i1 false)
  br label %63

63:                                               ; preds = %61, %52
  %64 = load ptr, ptr %5, align 8, !tbaa !50
  store ptr %64, ptr %2, align 8, !tbaa !34
  ret ptr %5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @ED_vpaint_proj_handle_update(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.VertProjUpdate, align 8
  %5 = getelementptr inbounds %struct.VertProjHandle, ptr %0, i64 0, i32 1
  %6 = load i8, ptr %5, align 8, !tbaa !52
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %32, label %8

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #6
  store ptr %0, ptr %4, align 8, !tbaa !65
  %9 = getelementptr inbounds %struct.VertProjUpdate, ptr %4, i64 0, i32 1
  store ptr %1, ptr %9, align 8, !tbaa !67
  %10 = getelementptr inbounds %struct.VertProjUpdate, ptr %4, i64 0, i32 2
  store ptr %2, ptr %10, align 8, !tbaa !68
  %11 = getelementptr inbounds %struct.VertProjHandle, ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !64
  %13 = getelementptr inbounds %struct.VertProjHandle, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !63
  %15 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 19
  %16 = load ptr, ptr %15, align 8, !tbaa !38
  %17 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !53
  %18 = or i64 %17, 128
  %19 = tail call ptr @mesh_get_derived_final(ptr noundef %12, ptr noundef %14, i64 noundef %18) #6
  %20 = getelementptr inbounds %struct.DerivedMesh, ptr %19, i64 0, i32 71
  %21 = load ptr, ptr %20, align 8, !tbaa !54
  %22 = icmp eq ptr %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %8
  %24 = getelementptr inbounds %struct.VertProjHandle, ptr %0, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !62
  %26 = getelementptr inbounds %struct.Mesh, ptr %16, i64 0, i32 26
  %27 = load i32, ptr %26, align 8, !tbaa !47
  tail call void @fill_vn_fl(ptr noundef %25, i32 noundef %27, float noundef 0x47EFFFFFE0000000) #6
  %28 = load ptr, ptr %20, align 8, !tbaa !54
  call void %28(ptr noundef %19, ptr noundef nonnull @vpaint_proj_dm_map_cosnos_update__map_cb, ptr noundef nonnull %4, i32 noundef 1) #6
  br label %29

29:                                               ; preds = %8, %23
  %30 = getelementptr inbounds %struct.DerivedMesh, ptr %19, i64 0, i32 95
  %31 = load ptr, ptr %30, align 8, !tbaa !61
  call void %31(ptr noundef %19) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #6
  br label %32

32:                                               ; preds = %29, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_vpaint_proj_handle_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.VertProjHandle, ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !52
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.VertProjHandle, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !62
  tail call void %6(ptr noundef %8) #6
  br label %9

9:                                                ; preds = %5, %1
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %11 = load ptr, ptr %0, align 8, !tbaa !50
  tail call void %10(ptr noundef %11) #6
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %12(ptr noundef nonnull %0) #6
  ret void
}

declare ptr @mesh_get_derived_final(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @vpaint_proj_dm_map_cosnos_init__map_cb(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr noundef readonly %3, ptr nocapture noundef readonly %4) #4 {
  %6 = load ptr, ptr %0, align 8, !tbaa !50
  %7 = sext i32 %1 to i64
  %8 = getelementptr inbounds %struct.DMCoNo, ptr %6, i64 %7, i32 1
  %9 = load float, ptr %8, align 4, !tbaa !69
  %10 = fcmp oeq float %9, 0.000000e+00
  br i1 %10, label %11, label %19

11:                                               ; preds = %5
  %12 = getelementptr inbounds float, ptr %8, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !69
  %14 = fcmp oeq float %13, 0.000000e+00
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = getelementptr inbounds float, ptr %8, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !69
  %18 = fcmp une float %17, 0.000000e+00
  br i1 %18, label %19, label %21

19:                                               ; preds = %11, %5, %15
  %20 = getelementptr inbounds %struct.VertProjHandle, ptr %0, i64 0, i32 1
  store i8 1, ptr %20, align 8, !tbaa !52
  br label %53

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.DMCoNo, ptr %6, i64 %7
  %23 = load float, ptr %2, align 4, !tbaa !69
  store float %23, ptr %22, align 4, !tbaa !69
  %24 = getelementptr inbounds float, ptr %2, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !69
  %26 = getelementptr inbounds float, ptr %22, i64 1
  store float %25, ptr %26, align 4, !tbaa !69
  %27 = getelementptr inbounds float, ptr %2, i64 2
  %28 = load float, ptr %27, align 4, !tbaa !69
  %29 = getelementptr inbounds float, ptr %22, i64 2
  store float %28, ptr %29, align 4, !tbaa !69
  %30 = icmp eq ptr %3, null
  br i1 %30, label %39, label %31

31:                                               ; preds = %21
  %32 = load float, ptr %3, align 4, !tbaa !69
  store float %32, ptr %8, align 4, !tbaa !69
  %33 = getelementptr inbounds float, ptr %3, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !69
  %35 = getelementptr inbounds float, ptr %8, i64 1
  store float %34, ptr %35, align 4, !tbaa !69
  %36 = getelementptr inbounds float, ptr %3, i64 2
  %37 = load float, ptr %36, align 4, !tbaa !69
  %38 = getelementptr inbounds float, ptr %8, i64 2
  store float %37, ptr %38, align 4, !tbaa !69
  br label %53

39:                                               ; preds = %21
  %40 = load i16, ptr %4, align 2, !tbaa !70
  %41 = sitofp i16 %40 to float
  %42 = fmul float %41, 0x3F00002000000000
  store float %42, ptr %8, align 4, !tbaa !69
  %43 = getelementptr inbounds i16, ptr %4, i64 1
  %44 = load i16, ptr %43, align 2, !tbaa !70
  %45 = sitofp i16 %44 to float
  %46 = fmul float %45, 0x3F00002000000000
  %47 = getelementptr inbounds float, ptr %8, i64 1
  store float %46, ptr %47, align 4, !tbaa !69
  %48 = getelementptr inbounds i16, ptr %4, i64 2
  %49 = load i16, ptr %48, align 2, !tbaa !70
  %50 = sitofp i16 %49 to float
  %51 = fmul float %50, 0x3F00002000000000
  %52 = getelementptr inbounds float, ptr %8, i64 2
  store float %51, ptr %52, align 4, !tbaa !69
  br label %53

53:                                               ; preds = %31, %39, %19
  ret void
}

declare void @fill_vn_fl(ptr noundef, i32 noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @vpaint_proj_dm_map_cosnos_update__map_cb(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr noundef readonly %3, ptr nocapture noundef readonly %4) #0 {
  %6 = alloca [2 x float], align 4
  %7 = load ptr, ptr %0, align 8, !tbaa !65
  %8 = load ptr, ptr %7, align 8, !tbaa !50
  %9 = sext i32 %1 to i64
  %10 = getelementptr inbounds %struct.DMCoNo, ptr %8, i64 %9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #6
  %11 = getelementptr inbounds %struct.VertProjUpdate, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !67
  %13 = call i32 @ED_view3d_project_float_object(ptr noundef %12, ptr noundef %2, ptr noundef nonnull %6, i32 noundef 5) #6
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %34

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.VertProjUpdate, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !68
  %18 = load float, ptr %6, align 4, !tbaa !69
  %19 = load float, ptr %17, align 4, !tbaa !69
  %20 = fsub float %18, %19
  %21 = getelementptr inbounds float, ptr %6, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !69
  %23 = getelementptr inbounds float, ptr %17, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !69
  %25 = fsub float %22, %24
  %26 = fmul float %25, %25
  %27 = call float @llvm.fmuladd.f32(float %20, float %20, float %26)
  %28 = getelementptr inbounds %struct.VertProjHandle, ptr %7, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !62
  %30 = getelementptr inbounds float, ptr %29, i64 %9
  %31 = load float, ptr %30, align 4, !tbaa !69
  %32 = fcmp ule float %27, %31
  br i1 %32, label %33, label %50

33:                                               ; preds = %15
  store float %27, ptr %30, align 4, !tbaa !69
  br label %40

34:                                               ; preds = %5
  %35 = getelementptr inbounds %struct.VertProjHandle, ptr %7, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !62
  %37 = getelementptr inbounds float, ptr %36, i64 %9
  %38 = load float, ptr %37, align 4, !tbaa !69
  %39 = fcmp une float %38, 0x47EFFFFFE0000000
  br i1 %39, label %50, label %40

40:                                               ; preds = %33, %34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #6
  %41 = load float, ptr %2, align 4, !tbaa !69
  store float %41, ptr %10, align 4, !tbaa !69
  %42 = getelementptr inbounds float, ptr %2, i64 1
  %43 = load float, ptr %42, align 4, !tbaa !69
  %44 = getelementptr inbounds float, ptr %10, i64 1
  store float %43, ptr %44, align 4, !tbaa !69
  %45 = getelementptr inbounds float, ptr %2, i64 2
  %46 = load float, ptr %45, align 4, !tbaa !69
  %47 = getelementptr inbounds float, ptr %10, i64 2
  store float %46, ptr %47, align 4, !tbaa !69
  %48 = icmp eq ptr %3, null
  %49 = getelementptr inbounds %struct.DMCoNo, ptr %8, i64 %9, i32 1
  br i1 %48, label %59, label %51

50:                                               ; preds = %15, %34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #6
  br label %73

51:                                               ; preds = %40
  %52 = load float, ptr %3, align 4, !tbaa !69
  store float %52, ptr %49, align 4, !tbaa !69
  %53 = getelementptr inbounds float, ptr %3, i64 1
  %54 = load float, ptr %53, align 4, !tbaa !69
  %55 = getelementptr inbounds float, ptr %49, i64 1
  store float %54, ptr %55, align 4, !tbaa !69
  %56 = getelementptr inbounds float, ptr %3, i64 2
  %57 = load float, ptr %56, align 4, !tbaa !69
  %58 = getelementptr inbounds float, ptr %49, i64 2
  store float %57, ptr %58, align 4, !tbaa !69
  br label %73

59:                                               ; preds = %40
  %60 = load i16, ptr %4, align 2, !tbaa !70
  %61 = sitofp i16 %60 to float
  %62 = fmul float %61, 0x3F00002000000000
  store float %62, ptr %49, align 4, !tbaa !69
  %63 = getelementptr inbounds i16, ptr %4, i64 1
  %64 = load i16, ptr %63, align 2, !tbaa !70
  %65 = sitofp i16 %64 to float
  %66 = fmul float %65, 0x3F00002000000000
  %67 = getelementptr inbounds float, ptr %49, i64 1
  store float %66, ptr %67, align 4, !tbaa !69
  %68 = getelementptr inbounds i16, ptr %4, i64 2
  %69 = load i16, ptr %68, align 2, !tbaa !70
  %70 = sitofp i16 %69 to float
  %71 = fmul float %70, 0x3F00002000000000
  %72 = getelementptr inbounds float, ptr %49, i64 2
  store float %71, ptr %72, align 4, !tbaa !69
  br label %73

73:                                               ; preds = %51, %59, %50
  ret void
}

declare i32 @ED_view3d_project_float_object(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

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
!38 = !{!39, !35, i64 296}
!39 = !{!"Object", !40, i64 0, !35, i64 120, !35, i64 128, !41, i64 136, !41, i64 138, !42, i64 140, !42, i64 144, !42, i64 148, !36, i64 152, !35, i64 216, !35, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !35, i64 280, !35, i64 288, !35, i64 296, !35, i64 304, !43, i64 312, !35, i64 360, !44, i64 368, !44, i64 384, !44, i64 400, !44, i64 416, !42, i64 432, !42, i64 436, !35, i64 440, !35, i64 448, !42, i64 456, !42, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !45, i64 616, !45, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !42, i64 944, !41, i64 948, !41, i64 950, !41, i64 952, !41, i64 954, !41, i64 956, !41, i64 958, !41, i64 960, !41, i64 962, !41, i64 964, !36, i64 966, !36, i64 967, !42, i64 968, !42, i64 972, !42, i64 976, !42, i64 980, !42, i64 984, !45, i64 988, !45, i64 992, !45, i64 996, !45, i64 1000, !45, i64 1004, !45, i64 1008, !45, i64 1012, !45, i64 1016, !45, i64 1020, !45, i64 1024, !45, i64 1028, !45, i64 1032, !41, i64 1036, !41, i64 1038, !41, i64 1040, !36, i64 1042, !36, i64 1043, !41, i64 1044, !36, i64 1046, !36, i64 1047, !45, i64 1048, !45, i64 1052, !44, i64 1056, !44, i64 1072, !44, i64 1088, !44, i64 1104, !45, i64 1120, !41, i64 1124, !41, i64 1126, !36, i64 1128, !42, i64 1144, !42, i64 1148, !35, i64 1152, !36, i64 1160, !36, i64 1161, !41, i64 1162, !36, i64 1164, !44, i64 1176, !44, i64 1192, !44, i64 1208, !44, i64 1224, !35, i64 1240, !35, i64 1248, !35, i64 1256, !36, i64 1264, !36, i64 1265, !41, i64 1266, !45, i64 1268, !35, i64 1272, !35, i64 1280, !35, i64 1288, !35, i64 1296, !46, i64 1304, !46, i64 1312, !42, i64 1320, !42, i64 1324, !44, i64 1328, !44, i64 1344, !35, i64 1360, !35, i64 1368, !35, i64 1376, !36, i64 1384, !35, i64 1392, !44, i64 1400, !35, i64 1416}
!40 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !41, i64 98, !42, i64 100, !42, i64 104, !42, i64 108, !35, i64 112}
!41 = !{!"short", !36, i64 0}
!42 = !{!"int", !36, i64 0}
!43 = !{!"bAnimVizSettings", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !42, i64 32, !42, i64 36, !42, i64 40, !42, i64 44}
!44 = !{!"ListBase", !35, i64 0, !35, i64 8}
!45 = !{!"float", !36, i64 0}
!46 = !{!"long", !36, i64 0}
!47 = !{!48, !42, i64 1280}
!48 = !{!"Mesh", !40, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !35, i64 152, !35, i64 160, !35, i64 168, !35, i64 176, !35, i64 184, !35, i64 192, !35, i64 200, !35, i64 208, !35, i64 216, !35, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !49, i64 280, !49, i64 480, !49, i64 680, !49, i64 880, !49, i64 1080, !42, i64 1280, !42, i64 1284, !42, i64 1288, !42, i64 1292, !42, i64 1296, !42, i64 1300, !42, i64 1304, !36, i64 1308, !36, i64 1320, !36, i64 1332, !42, i64 1344, !41, i64 1348, !41, i64 1350, !45, i64 1352, !42, i64 1356, !36, i64 1360, !36, i64 1361, !36, i64 1362, !36, i64 1363, !36, i64 1364, !36, i64 1365, !41, i64 1366, !35, i64 1368}
!49 = !{!"CustomData", !35, i64 0, !36, i64 8, !42, i64 172, !42, i64 176, !42, i64 180, !35, i64 184, !35, i64 192}
!50 = !{!51, !35, i64 0}
!51 = !{!"VertProjHandle", !35, i64 0, !36, i64 8, !35, i64 16, !35, i64 24, !35, i64 32}
!52 = !{!51, !36, i64 8}
!53 = !{!46, !46, i64 0}
!54 = !{!55, !35, i64 1488}
!55 = !{!"DerivedMesh", !49, i64 0, !49, i64 200, !49, i64 400, !49, i64 600, !49, i64 800, !42, i64 1000, !42, i64 1004, !42, i64 1008, !42, i64 1012, !42, i64 1016, !42, i64 1020, !42, i64 1024, !35, i64 1032, !35, i64 1040, !42, i64 1048, !45, i64 1052, !42, i64 1056, !42, i64 1060, !35, i64 1064, !36, i64 1072, !35, i64 1080, !35, i64 1088, !35, i64 1096, !35, i64 1104, !35, i64 1112, !35, i64 1120, !35, i64 1128, !35, i64 1136, !35, i64 1144, !35, i64 1152, !35, i64 1160, !35, i64 1168, !35, i64 1176, !35, i64 1184, !35, i64 1192, !35, i64 1200, !35, i64 1208, !35, i64 1216, !35, i64 1224, !35, i64 1232, !35, i64 1240, !35, i64 1248, !35, i64 1256, !35, i64 1264, !35, i64 1272, !35, i64 1280, !35, i64 1288, !35, i64 1296, !35, i64 1304, !35, i64 1312, !35, i64 1320, !35, i64 1328, !35, i64 1336, !35, i64 1344, !35, i64 1352, !35, i64 1360, !35, i64 1368, !35, i64 1376, !35, i64 1384, !35, i64 1392, !35, i64 1400, !35, i64 1408, !35, i64 1416, !35, i64 1424, !35, i64 1432, !35, i64 1440, !35, i64 1448, !35, i64 1456, !35, i64 1464, !35, i64 1472, !35, i64 1480, !35, i64 1488, !35, i64 1496, !35, i64 1504, !35, i64 1512, !35, i64 1520, !35, i64 1528, !35, i64 1536, !35, i64 1544, !35, i64 1552, !35, i64 1560, !35, i64 1568, !35, i64 1576, !35, i64 1584, !35, i64 1592, !35, i64 1600, !35, i64 1608, !35, i64 1616, !35, i64 1624, !35, i64 1632, !35, i64 1640, !35, i64 1648, !35, i64 1656, !35, i64 1664, !35, i64 1672, !35, i64 1680}
!56 = !{!55, !35, i64 1528}
!57 = !{!55, !35, i64 1544}
!58 = distinct !{!58, !59, !60}
!59 = !{!"llvm.loop.mustprogress"}
!60 = !{!"llvm.loop.unroll.disable"}
!61 = !{!55, !35, i64 1680}
!62 = !{!51, !35, i64 16}
!63 = !{!51, !35, i64 24}
!64 = !{!51, !35, i64 32}
!65 = !{!66, !35, i64 0}
!66 = !{!"VertProjUpdate", !35, i64 0, !35, i64 8, !35, i64 16}
!67 = !{!66, !35, i64 8}
!68 = !{!66, !35, i64 16}
!69 = !{!45, !45, i64 0}
!70 = !{!41, !41, i64 0}
