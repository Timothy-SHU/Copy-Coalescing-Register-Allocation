; ModuleID = 'blender/source/blender/bmesh/intern/bmesh_polygon.c'
source_filename = "blender/source/blender/bmesh/intern/bmesh_polygon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }

@__const.BM_vert_tri_calc_plane.order = private unnamed_addr constant [3 x i32] [i32 0, i32 1, i32 2], align 4
@__func__.BM_bmesh_calc_tessellation = private unnamed_addr constant [27 x i8] c"BM_bmesh_calc_tessellation\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @BM_face_calc_tessellation(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [3 x [3 x float]], align 16
  %5 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !42
  switch i32 %8, label %33 [
    i32 3, label %9
    i32 4, label %18
  ]

9:                                                ; preds = %3
  %10 = getelementptr inbounds ptr, ptr %1, i64 1
  store ptr %6, ptr %1, align 8, !tbaa !43
  %11 = getelementptr inbounds %struct.BMLoop, ptr %6, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !44
  %13 = getelementptr inbounds ptr, ptr %1, i64 2
  store ptr %12, ptr %10, align 8, !tbaa !43
  %14 = getelementptr inbounds %struct.BMLoop, ptr %12, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !44
  store ptr %15, ptr %13, align 8, !tbaa !43
  store i32 0, ptr %2, align 4, !tbaa !46
  %16 = getelementptr inbounds [3 x i32], ptr %2, i64 0, i64 1
  store i32 1, ptr %16, align 4, !tbaa !46
  %17 = getelementptr inbounds [3 x i32], ptr %2, i64 0, i64 2
  store i32 2, ptr %17, align 4, !tbaa !46
  br label %52

18:                                               ; preds = %3
  %19 = getelementptr inbounds ptr, ptr %1, i64 1
  store ptr %6, ptr %1, align 8, !tbaa !43
  %20 = getelementptr inbounds %struct.BMLoop, ptr %6, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !44
  %22 = getelementptr inbounds ptr, ptr %1, i64 2
  store ptr %21, ptr %19, align 8, !tbaa !43
  %23 = getelementptr inbounds %struct.BMLoop, ptr %21, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !44
  %25 = getelementptr inbounds ptr, ptr %1, i64 3
  store ptr %24, ptr %22, align 8, !tbaa !43
  %26 = getelementptr inbounds %struct.BMLoop, ptr %24, i64 0, i32 6
  %27 = load ptr, ptr %26, align 8, !tbaa !44
  store ptr %27, ptr %25, align 8, !tbaa !43
  store i32 0, ptr %2, align 4, !tbaa !46
  %28 = getelementptr inbounds [3 x i32], ptr %2, i64 0, i64 1
  store i32 1, ptr %28, align 4, !tbaa !46
  %29 = getelementptr inbounds [3 x i32], ptr %2, i64 0, i64 2
  store i32 2, ptr %29, align 4, !tbaa !46
  %30 = getelementptr inbounds [3 x i32], ptr %2, i64 1
  store i32 0, ptr %30, align 4, !tbaa !46
  %31 = getelementptr inbounds [3 x i32], ptr %2, i64 1, i64 1
  store i32 2, ptr %31, align 4, !tbaa !46
  %32 = getelementptr inbounds [3 x i32], ptr %2, i64 1, i64 2
  store i32 3, ptr %32, align 4, !tbaa !46
  br label %52

33:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #11
  %34 = sext i32 %8 to i64
  %35 = shl nsw i64 %34, 3
  %36 = alloca i8, i64 %35, align 16
  %37 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 4
  call void @axis_dominant_v3_to_m3(ptr noundef nonnull %4, ptr noundef nonnull %37) #11
  br label %38

38:                                               ; preds = %38, %33
  %39 = phi i64 [ %46, %38 ], [ 0, %33 ]
  %40 = phi ptr [ %48, %38 ], [ %6, %33 ]
  %41 = getelementptr inbounds [2 x float], ptr %36, i64 %39
  %42 = getelementptr inbounds %struct.BMLoop, ptr %40, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !47
  %44 = getelementptr inbounds %struct.BMVert, ptr %43, i64 0, i32 2
  call void @mul_v2_m3v3(ptr noundef nonnull %41, ptr noundef nonnull %4, ptr noundef nonnull %44) #11
  %45 = getelementptr inbounds ptr, ptr %1, i64 %39
  store ptr %40, ptr %45, align 8, !tbaa !43
  %46 = add nuw i64 %39, 1
  %47 = getelementptr inbounds %struct.BMLoop, ptr %40, i64 0, i32 6
  %48 = load ptr, ptr %47, align 8, !tbaa !44
  %49 = icmp eq ptr %48, %6
  br i1 %49, label %50, label %38, !llvm.loop !48

50:                                               ; preds = %38
  %51 = load i32, ptr %7, align 8, !tbaa !42
  call void @BLI_polyfill_calc(ptr noundef nonnull %36, i32 noundef %51, i32 noundef -1, ptr noundef %2) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #11
  br label %52

52:                                               ; preds = %18, %50, %9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @axis_dominant_v3_to_m3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_v2_m3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_polyfill_calc(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local float @BM_face_calc_area(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !42
  %4 = sext i32 %3 to i64
  %5 = mul nsw i64 %4, 12
  %6 = alloca i8, i64 %5, align 16
  %7 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  br label %9

9:                                                ; preds = %9, %1
  %10 = phi ptr [ %8, %1 ], [ %26, %9 ]
  %11 = phi i32 [ 0, %1 ], [ %12, %9 ]
  %12 = add i32 %11, 1
  %13 = zext i32 %11 to i64
  %14 = getelementptr inbounds [3 x float], ptr %6, i64 %13
  %15 = getelementptr inbounds %struct.BMLoop, ptr %10, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !47
  %17 = getelementptr inbounds %struct.BMVert, ptr %16, i64 0, i32 2
  %18 = load float, ptr %17, align 4, !tbaa !51
  store float %18, ptr %14, align 4, !tbaa !51
  %19 = getelementptr inbounds %struct.BMVert, ptr %16, i64 0, i32 2, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !51
  %21 = getelementptr inbounds float, ptr %14, i64 1
  store float %20, ptr %21, align 4, !tbaa !51
  %22 = getelementptr inbounds %struct.BMVert, ptr %16, i64 0, i32 2, i64 2
  %23 = load float, ptr %22, align 4, !tbaa !51
  %24 = getelementptr inbounds float, ptr %14, i64 2
  store float %23, ptr %24, align 4, !tbaa !51
  %25 = getelementptr inbounds %struct.BMLoop, ptr %10, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !44
  %27 = icmp eq ptr %26, %8
  br i1 %27, label %28, label %9, !llvm.loop !53

28:                                               ; preds = %9
  switch i32 %3, label %38 [
    i32 3, label %29
    i32 4, label %33
  ]

29:                                               ; preds = %28
  %30 = getelementptr inbounds [3 x float], ptr %6, i64 1
  %31 = getelementptr inbounds [3 x float], ptr %6, i64 2
  %32 = call float @area_tri_v3(ptr noundef nonnull %6, ptr noundef nonnull %30, ptr noundef nonnull %31) #11
  br label %40

33:                                               ; preds = %28
  %34 = getelementptr inbounds [3 x float], ptr %6, i64 1
  %35 = getelementptr inbounds [3 x float], ptr %6, i64 2
  %36 = getelementptr inbounds [3 x float], ptr %6, i64 3
  %37 = call float @area_quad_v3(ptr noundef nonnull %6, ptr noundef nonnull %34, ptr noundef nonnull %35, ptr noundef nonnull %36) #11
  br label %40

38:                                               ; preds = %28
  %39 = call float @area_poly_v3(ptr noundef nonnull %6, i32 noundef %3) #11
  br label %40

40:                                               ; preds = %33, %38, %29
  %41 = phi float [ %32, %29 ], [ %37, %33 ], [ %39, %38 ]
  ret float %41
}

declare float @area_tri_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @area_quad_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @area_poly_v3(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local float @BM_face_calc_perimeter(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  br label %4

4:                                                ; preds = %4, %1
  %5 = phi ptr [ %3, %1 ], [ %33, %4 ]
  %6 = phi float [ 0.000000e+00, %1 ], [ %32, %4 ]
  %7 = getelementptr inbounds %struct.BMLoop, ptr %5, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = getelementptr inbounds %struct.BMVert, ptr %8, i64 0, i32 2
  %10 = getelementptr inbounds %struct.BMLoop, ptr %5, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !44
  %12 = getelementptr inbounds %struct.BMLoop, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !47
  %14 = getelementptr inbounds %struct.BMVert, ptr %13, i64 0, i32 2
  %15 = load float, ptr %14, align 4, !tbaa !51
  %16 = load float, ptr %9, align 4, !tbaa !51
  %17 = fsub float %15, %16
  %18 = getelementptr inbounds %struct.BMVert, ptr %13, i64 0, i32 2, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !51
  %20 = getelementptr inbounds %struct.BMVert, ptr %8, i64 0, i32 2, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !51
  %22 = fsub float %19, %21
  %23 = getelementptr inbounds %struct.BMVert, ptr %13, i64 0, i32 2, i64 2
  %24 = load float, ptr %23, align 4, !tbaa !51
  %25 = getelementptr inbounds %struct.BMVert, ptr %8, i64 0, i32 2, i64 2
  %26 = load float, ptr %25, align 4, !tbaa !51
  %27 = fsub float %24, %26
  %28 = fmul float %22, %22
  %29 = tail call float @llvm.fmuladd.f32(float %17, float %17, float %28)
  %30 = tail call float @llvm.fmuladd.f32(float %27, float %27, float %29)
  %31 = tail call float @sqrtf(float noundef %30) #11
  %32 = fadd float %6, %31
  %33 = load ptr, ptr %10, align 8, !tbaa !44
  %34 = icmp eq ptr %33, %3
  br i1 %34, label %35, label %4, !llvm.loop !54

35:                                               ; preds = %4
  ret float %32
}

; Function Attrs: nounwind uwtable
define dso_local void @BM_vert_tri_calc_plane(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) @__const.BM_vert_tri_calc_plane.order, i64 12, i1 false)
  %5 = load ptr, ptr %0, align 8, !tbaa !43
  %6 = getelementptr inbounds %struct.BMVert, ptr %5, i64 0, i32 2
  %7 = getelementptr inbounds ptr, ptr %0, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !43
  %9 = getelementptr inbounds %struct.BMVert, ptr %8, i64 0, i32 2
  %10 = load float, ptr %9, align 4, !tbaa !51
  %11 = load float, ptr %6, align 4, !tbaa !51
  %12 = fsub float %10, %11
  %13 = getelementptr inbounds %struct.BMVert, ptr %8, i64 0, i32 2, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !51
  %15 = getelementptr inbounds %struct.BMVert, ptr %5, i64 0, i32 2, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !51
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds %struct.BMVert, ptr %8, i64 0, i32 2, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !51
  %20 = getelementptr inbounds %struct.BMVert, ptr %5, i64 0, i32 2, i64 2
  %21 = load float, ptr %20, align 4, !tbaa !51
  %22 = fsub float %19, %21
  %23 = fmul float %17, %17
  %24 = tail call float @llvm.fmuladd.f32(float %12, float %12, float %23)
  %25 = tail call float @llvm.fmuladd.f32(float %22, float %22, float %24)
  %26 = tail call float @sqrtf(float noundef %25) #11
  %27 = load ptr, ptr %7, align 8, !tbaa !43
  %28 = getelementptr inbounds %struct.BMVert, ptr %27, i64 0, i32 2
  %29 = getelementptr inbounds ptr, ptr %0, i64 2
  %30 = load ptr, ptr %29, align 8, !tbaa !43
  %31 = getelementptr inbounds %struct.BMVert, ptr %30, i64 0, i32 2
  %32 = load float, ptr %31, align 4, !tbaa !51
  %33 = load float, ptr %28, align 4, !tbaa !51
  %34 = fsub float %32, %33
  %35 = getelementptr inbounds %struct.BMVert, ptr %30, i64 0, i32 2, i64 1
  %36 = load float, ptr %35, align 4, !tbaa !51
  %37 = getelementptr inbounds %struct.BMVert, ptr %27, i64 0, i32 2, i64 1
  %38 = load float, ptr %37, align 4, !tbaa !51
  %39 = fsub float %36, %38
  %40 = getelementptr inbounds %struct.BMVert, ptr %30, i64 0, i32 2, i64 2
  %41 = load float, ptr %40, align 4, !tbaa !51
  %42 = getelementptr inbounds %struct.BMVert, ptr %27, i64 0, i32 2, i64 2
  %43 = load float, ptr %42, align 4, !tbaa !51
  %44 = fsub float %41, %43
  %45 = fmul float %39, %39
  %46 = tail call float @llvm.fmuladd.f32(float %34, float %34, float %45)
  %47 = tail call float @llvm.fmuladd.f32(float %44, float %44, float %46)
  %48 = tail call float @sqrtf(float noundef %47) #11
  %49 = load ptr, ptr %29, align 8, !tbaa !43
  %50 = getelementptr inbounds %struct.BMVert, ptr %49, i64 0, i32 2
  %51 = load ptr, ptr %0, align 8, !tbaa !43
  %52 = getelementptr inbounds %struct.BMVert, ptr %51, i64 0, i32 2
  %53 = load float, ptr %52, align 4, !tbaa !51
  %54 = load float, ptr %50, align 4, !tbaa !51
  %55 = fsub float %53, %54
  %56 = getelementptr inbounds %struct.BMVert, ptr %51, i64 0, i32 2, i64 1
  %57 = load float, ptr %56, align 4, !tbaa !51
  %58 = getelementptr inbounds %struct.BMVert, ptr %49, i64 0, i32 2, i64 1
  %59 = load float, ptr %58, align 4, !tbaa !51
  %60 = fsub float %57, %59
  %61 = getelementptr inbounds %struct.BMVert, ptr %51, i64 0, i32 2, i64 2
  %62 = load float, ptr %61, align 4, !tbaa !51
  %63 = getelementptr inbounds %struct.BMVert, ptr %49, i64 0, i32 2, i64 2
  %64 = load float, ptr %63, align 4, !tbaa !51
  %65 = fsub float %62, %64
  %66 = fmul float %60, %60
  %67 = tail call float @llvm.fmuladd.f32(float %55, float %55, float %66)
  %68 = tail call float @llvm.fmuladd.f32(float %65, float %65, float %67)
  %69 = tail call float @sqrtf(float noundef %68) #11
  %70 = fsub float %48, %69
  %71 = tail call float @llvm.fabs.f32(float %70)
  store float %71, ptr %3, align 4, !tbaa !51
  %72 = fsub float %69, %26
  %73 = tail call float @llvm.fabs.f32(float %72)
  %74 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  store float %73, ptr %74, align 4, !tbaa !51
  %75 = fsub float %26, %48
  %76 = tail call float @llvm.fabs.f32(float %75)
  %77 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  store float %76, ptr %77, align 4, !tbaa !51
  call void @axis_sort_v3(ptr noundef nonnull %3, ptr noundef nonnull %4) #11
  %78 = load i32, ptr %4, align 4, !tbaa !46
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds ptr, ptr %0, i64 %79
  %81 = load ptr, ptr %80, align 8, !tbaa !43
  %82 = getelementptr inbounds %struct.BMVert, ptr %81, i64 0, i32 2
  %83 = add nsw i32 %78, 1
  %84 = srem i32 %83, 3
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds ptr, ptr %0, i64 %85
  %87 = load ptr, ptr %86, align 8, !tbaa !43
  %88 = getelementptr inbounds %struct.BMVert, ptr %87, i64 0, i32 2
  %89 = load float, ptr %82, align 4, !tbaa !51
  %90 = load float, ptr %88, align 4, !tbaa !51
  %91 = fsub float %89, %90
  store float %91, ptr %1, align 4, !tbaa !51
  %92 = getelementptr inbounds %struct.BMVert, ptr %81, i64 0, i32 2, i64 1
  %93 = load float, ptr %92, align 4, !tbaa !51
  %94 = getelementptr inbounds %struct.BMVert, ptr %87, i64 0, i32 2, i64 1
  %95 = load float, ptr %94, align 4, !tbaa !51
  %96 = fsub float %93, %95
  %97 = getelementptr inbounds float, ptr %1, i64 1
  store float %96, ptr %97, align 4, !tbaa !51
  %98 = getelementptr inbounds %struct.BMVert, ptr %81, i64 0, i32 2, i64 2
  %99 = load float, ptr %98, align 4, !tbaa !51
  %100 = getelementptr inbounds %struct.BMVert, ptr %87, i64 0, i32 2, i64 2
  %101 = load float, ptr %100, align 4, !tbaa !51
  %102 = fsub float %99, %101
  %103 = getelementptr inbounds float, ptr %1, i64 2
  store float %102, ptr %103, align 4, !tbaa !51
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #5

declare void @axis_sort_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BM_face_calc_plane(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca [3 x ptr], align 16
  %4 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !42
  switch i32 %5, label %102 [
    i32 3, label %6
    i32 4, label %21
  ]

6:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #11
  %7 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.BMLoop, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !47
  store ptr %10, ptr %3, align 16, !tbaa !43
  %11 = getelementptr inbounds %struct.BMLoop, ptr %8, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !44
  %13 = getelementptr inbounds %struct.BMLoop, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !47
  %15 = getelementptr inbounds ptr, ptr %3, i64 1
  store ptr %14, ptr %15, align 8, !tbaa !43
  %16 = getelementptr inbounds %struct.BMLoop, ptr %12, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !44
  %18 = getelementptr inbounds %struct.BMLoop, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !47
  %20 = getelementptr inbounds ptr, ptr %3, i64 2
  store ptr %19, ptr %20, align 16, !tbaa !43
  call void @BM_vert_tri_calc_plane(ptr noundef nonnull %3, ptr noundef %1)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #11
  br label %127

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !34
  %24 = getelementptr inbounds %struct.BMLoop, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !47
  %26 = getelementptr inbounds %struct.BMLoop, ptr %23, i64 0, i32 6
  %27 = load ptr, ptr %26, align 8, !tbaa !44
  %28 = getelementptr inbounds %struct.BMLoop, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !47
  %30 = getelementptr inbounds %struct.BMLoop, ptr %27, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !44
  %32 = getelementptr inbounds %struct.BMLoop, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !47
  %34 = getelementptr inbounds %struct.BMLoop, ptr %31, i64 0, i32 6
  %35 = load ptr, ptr %34, align 8, !tbaa !44
  %36 = getelementptr inbounds %struct.BMLoop, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !47
  %38 = getelementptr inbounds %struct.BMVert, ptr %37, i64 0, i32 2
  %39 = getelementptr inbounds %struct.BMVert, ptr %33, i64 0, i32 2
  %40 = load float, ptr %38, align 4, !tbaa !51
  %41 = load float, ptr %39, align 4, !tbaa !51
  %42 = fsub float %40, %41
  %43 = getelementptr inbounds %struct.BMVert, ptr %37, i64 0, i32 2, i64 1
  %44 = load float, ptr %43, align 4, !tbaa !51
  %45 = getelementptr inbounds %struct.BMVert, ptr %33, i64 0, i32 2, i64 1
  %46 = load float, ptr %45, align 4, !tbaa !51
  %47 = fsub float %44, %46
  %48 = getelementptr inbounds %struct.BMVert, ptr %37, i64 0, i32 2, i64 2
  %49 = load float, ptr %48, align 4, !tbaa !51
  %50 = getelementptr inbounds %struct.BMVert, ptr %33, i64 0, i32 2, i64 2
  %51 = load float, ptr %50, align 4, !tbaa !51
  %52 = fsub float %49, %51
  %53 = getelementptr inbounds %struct.BMVert, ptr %25, i64 0, i32 2
  %54 = getelementptr inbounds %struct.BMVert, ptr %29, i64 0, i32 2
  %55 = load float, ptr %53, align 4, !tbaa !51
  %56 = load float, ptr %54, align 4, !tbaa !51
  %57 = fsub float %55, %56
  %58 = getelementptr inbounds %struct.BMVert, ptr %25, i64 0, i32 2, i64 1
  %59 = load float, ptr %58, align 4, !tbaa !51
  %60 = getelementptr inbounds %struct.BMVert, ptr %29, i64 0, i32 2, i64 1
  %61 = load float, ptr %60, align 4, !tbaa !51
  %62 = fsub float %59, %61
  %63 = getelementptr inbounds %struct.BMVert, ptr %25, i64 0, i32 2, i64 2
  %64 = load float, ptr %63, align 4, !tbaa !51
  %65 = getelementptr inbounds %struct.BMVert, ptr %29, i64 0, i32 2, i64 2
  %66 = load float, ptr %65, align 4, !tbaa !51
  %67 = fsub float %64, %66
  %68 = fadd float %42, %57
  store float %68, ptr %1, align 4, !tbaa !51
  %69 = fadd float %47, %62
  %70 = getelementptr inbounds float, ptr %1, i64 1
  store float %69, ptr %70, align 4, !tbaa !51
  %71 = fadd float %52, %67
  %72 = getelementptr inbounds float, ptr %1, i64 2
  store float %71, ptr %72, align 4, !tbaa !51
  %73 = load float, ptr %53, align 4, !tbaa !51
  %74 = load float, ptr %38, align 4, !tbaa !51
  %75 = fsub float %73, %74
  %76 = load float, ptr %58, align 4, !tbaa !51
  %77 = load float, ptr %43, align 4, !tbaa !51
  %78 = fsub float %76, %77
  %79 = load float, ptr %63, align 4, !tbaa !51
  %80 = load float, ptr %48, align 4, !tbaa !51
  %81 = fsub float %79, %80
  %82 = load float, ptr %54, align 4, !tbaa !51
  %83 = load float, ptr %39, align 4, !tbaa !51
  %84 = fsub float %82, %83
  %85 = load float, ptr %60, align 4, !tbaa !51
  %86 = load float, ptr %45, align 4, !tbaa !51
  %87 = fsub float %85, %86
  %88 = load float, ptr %65, align 4, !tbaa !51
  %89 = load float, ptr %50, align 4, !tbaa !51
  %90 = fsub float %88, %89
  %91 = fadd float %75, %84
  %92 = fadd float %78, %87
  %93 = fadd float %81, %90
  %94 = fmul float %69, %69
  %95 = tail call float @llvm.fmuladd.f32(float %68, float %68, float %94)
  %96 = tail call float @llvm.fmuladd.f32(float %71, float %71, float %95)
  %97 = fmul float %92, %92
  %98 = tail call float @llvm.fmuladd.f32(float %91, float %91, float %97)
  %99 = tail call float @llvm.fmuladd.f32(float %93, float %93, float %98)
  %100 = fcmp olt float %96, %99
  br i1 %100, label %101, label %127

101:                                              ; preds = %21
  store float %91, ptr %1, align 4, !tbaa !51
  store float %92, ptr %70, align 4, !tbaa !51
  store float %93, ptr %72, align 4, !tbaa !51
  br label %127

102:                                              ; preds = %2
  %103 = tail call ptr @BM_face_find_longest_loop(ptr noundef %0) #11
  %104 = getelementptr inbounds %struct.BMLoop, ptr %103, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !47
  %106 = getelementptr inbounds %struct.BMVert, ptr %105, i64 0, i32 2
  %107 = getelementptr inbounds %struct.BMLoop, ptr %103, i64 0, i32 6
  %108 = load ptr, ptr %107, align 8, !tbaa !44
  %109 = getelementptr inbounds %struct.BMLoop, ptr %108, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !47
  %111 = getelementptr inbounds %struct.BMVert, ptr %110, i64 0, i32 2
  %112 = load float, ptr %106, align 4, !tbaa !51
  %113 = load float, ptr %111, align 4, !tbaa !51
  %114 = fsub float %112, %113
  store float %114, ptr %1, align 4, !tbaa !51
  %115 = getelementptr inbounds %struct.BMVert, ptr %105, i64 0, i32 2, i64 1
  %116 = load float, ptr %115, align 4, !tbaa !51
  %117 = getelementptr inbounds %struct.BMVert, ptr %110, i64 0, i32 2, i64 1
  %118 = load float, ptr %117, align 4, !tbaa !51
  %119 = fsub float %116, %118
  %120 = getelementptr inbounds float, ptr %1, i64 1
  store float %119, ptr %120, align 4, !tbaa !51
  %121 = getelementptr inbounds %struct.BMVert, ptr %105, i64 0, i32 2, i64 2
  %122 = load float, ptr %121, align 4, !tbaa !51
  %123 = getelementptr inbounds %struct.BMVert, ptr %110, i64 0, i32 2, i64 2
  %124 = load float, ptr %123, align 4, !tbaa !51
  %125 = fsub float %122, %124
  %126 = getelementptr inbounds float, ptr %1, i64 2
  store float %125, ptr %126, align 4, !tbaa !51
  br label %127

127:                                              ; preds = %21, %101, %102, %6
  %128 = load float, ptr %1, align 4, !tbaa !51
  %129 = getelementptr inbounds float, ptr %1, i64 1
  %130 = load float, ptr %129, align 4, !tbaa !51
  %131 = fmul float %130, %130
  %132 = tail call float @llvm.fmuladd.f32(float %128, float %128, float %131)
  %133 = getelementptr inbounds float, ptr %1, i64 2
  %134 = load float, ptr %133, align 4, !tbaa !51
  %135 = tail call float @llvm.fmuladd.f32(float %134, float %134, float %132)
  %136 = fcmp ogt float %135, 0x38AA95A5C0000000
  br i1 %136, label %137, label %146

137:                                              ; preds = %127
  %138 = tail call float @sqrtf(float noundef %135) #11
  %139 = fdiv float 1.000000e+00, %138
  %140 = load float, ptr %1, align 4, !tbaa !51
  %141 = fmul float %140, %139
  store float %141, ptr %1, align 4, !tbaa !51
  %142 = load float, ptr %129, align 4, !tbaa !51
  %143 = fmul float %139, %142
  store float %143, ptr %129, align 4, !tbaa !51
  %144 = load float, ptr %133, align 4, !tbaa !51
  %145 = fmul float %139, %144
  br label %147

146:                                              ; preds = %127
  store float 0.000000e+00, ptr %1, align 4, !tbaa !51
  store float 0.000000e+00, ptr %129, align 4, !tbaa !51
  br label %147

147:                                              ; preds = %137, %146
  %148 = phi float [ 0.000000e+00, %146 ], [ %145, %137 ]
  store float %148, ptr %133, align 4, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BM_face_as_array_vert_tri(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.BMLoop, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  store ptr %6, ptr %1, align 8, !tbaa !43
  %7 = getelementptr inbounds %struct.BMLoop, ptr %4, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !44
  %9 = getelementptr inbounds %struct.BMLoop, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !47
  %11 = getelementptr inbounds ptr, ptr %1, i64 1
  store ptr %10, ptr %11, align 8, !tbaa !43
  %12 = getelementptr inbounds %struct.BMLoop, ptr %8, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !44
  %14 = getelementptr inbounds %struct.BMLoop, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !47
  %16 = getelementptr inbounds ptr, ptr %1, i64 2
  store ptr %15, ptr %16, align 8, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BM_face_as_array_vert_quad(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.BMLoop, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  store ptr %6, ptr %1, align 8, !tbaa !43
  %7 = getelementptr inbounds %struct.BMLoop, ptr %4, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !44
  %9 = getelementptr inbounds %struct.BMLoop, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !47
  %11 = getelementptr inbounds ptr, ptr %1, i64 1
  store ptr %10, ptr %11, align 8, !tbaa !43
  %12 = getelementptr inbounds %struct.BMLoop, ptr %8, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !44
  %14 = getelementptr inbounds %struct.BMLoop, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !47
  %16 = getelementptr inbounds ptr, ptr %1, i64 2
  store ptr %15, ptr %16, align 8, !tbaa !43
  %17 = getelementptr inbounds %struct.BMLoop, ptr %13, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !44
  %19 = getelementptr inbounds %struct.BMLoop, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !47
  %21 = getelementptr inbounds ptr, ptr %1, i64 3
  store ptr %20, ptr %21, align 8, !tbaa !43
  ret void
}

declare ptr @BM_face_find_longest_loop(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BM_face_calc_center_bounds(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #11
  %5 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  store float 0x46293E5940000000, ptr %5, align 4, !tbaa !51
  %6 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  store float 0x46293E5940000000, ptr %6, align 4, !tbaa !51
  store float 0x46293E5940000000, ptr %3, align 4, !tbaa !51
  %7 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  store float 0xC6293E5940000000, ptr %7, align 4, !tbaa !51
  %8 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  store float 0xC6293E5940000000, ptr %8, align 4, !tbaa !51
  store float 0xC6293E5940000000, ptr %4, align 4, !tbaa !51
  %9 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  br label %11

11:                                               ; preds = %11, %2
  %12 = phi ptr [ %10, %2 ], [ %17, %11 ]
  %13 = getelementptr inbounds %struct.BMLoop, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !47
  %15 = getelementptr inbounds %struct.BMVert, ptr %14, i64 0, i32 2
  call void @minmax_v3v3_v3(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %15) #11
  %16 = getelementptr inbounds %struct.BMLoop, ptr %12, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !44
  %18 = icmp eq ptr %17, %10
  br i1 %18, label %19, label %11, !llvm.loop !55

19:                                               ; preds = %11
  call void @mid_v3_v3v3(ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #11
  ret void
}

declare void @minmax_v3v3_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BM_face_calc_center_mean(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #7 {
  store float 0.000000e+00, ptr %1, align 4, !tbaa !51
  %3 = getelementptr inbounds float, ptr %1, i64 1
  store float 0.000000e+00, ptr %3, align 4, !tbaa !51
  %4 = getelementptr inbounds float, ptr %1, i64 2
  store float 0.000000e+00, ptr %4, align 4, !tbaa !51
  %5 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = load float, ptr %1, align 4, !tbaa !51
  br label %8

8:                                                ; preds = %8, %2
  %9 = phi float [ 0.000000e+00, %2 ], [ %23, %8 ]
  %10 = phi float [ 0.000000e+00, %2 ], [ %20, %8 ]
  %11 = phi float [ %7, %2 ], [ %17, %8 ]
  %12 = phi ptr [ %6, %2 ], [ %25, %8 ]
  %13 = getelementptr inbounds %struct.BMLoop, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !47
  %15 = getelementptr inbounds %struct.BMVert, ptr %14, i64 0, i32 2
  %16 = load float, ptr %15, align 4, !tbaa !51
  %17 = fadd float %16, %11
  store float %17, ptr %1, align 4, !tbaa !51
  %18 = getelementptr inbounds %struct.BMVert, ptr %14, i64 0, i32 2, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !51
  %20 = fadd float %19, %10
  store float %20, ptr %3, align 4, !tbaa !51
  %21 = getelementptr inbounds %struct.BMVert, ptr %14, i64 0, i32 2, i64 2
  %22 = load float, ptr %21, align 4, !tbaa !51
  %23 = fadd float %22, %9
  store float %23, ptr %4, align 4, !tbaa !51
  %24 = getelementptr inbounds %struct.BMLoop, ptr %12, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !44
  %26 = icmp eq ptr %25, %6
  br i1 %26, label %27, label %8, !llvm.loop !56

27:                                               ; preds = %8
  %28 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 3
  %29 = load i32, ptr %28, align 8, !tbaa !42
  %30 = sitofp i32 %29 to float
  %31 = fdiv float 1.000000e+00, %30
  %32 = fmul float %17, %31
  store float %32, ptr %1, align 4, !tbaa !51
  %33 = fmul float %20, %31
  store float %33, ptr %3, align 4, !tbaa !51
  %34 = fmul float %23, %31
  store float %34, ptr %4, align 4, !tbaa !51
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BM_face_calc_center_mean_weighted(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  store float 0.000000e+00, ptr %1, align 4, !tbaa !51
  %3 = getelementptr inbounds float, ptr %1, i64 1
  store float 0.000000e+00, ptr %3, align 4, !tbaa !51
  %4 = getelementptr inbounds float, ptr %1, i64 2
  store float 0.000000e+00, ptr %4, align 4, !tbaa !51
  %5 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.BMLoop, ptr %6, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !57
  %9 = getelementptr inbounds %struct.BMLoop, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !58
  %11 = tail call float @BM_edge_calc_length(ptr noundef %10) #11
  br label %12

12:                                               ; preds = %12, %2
  %13 = phi float [ %11, %2 ], [ %18, %12 ]
  %14 = phi float [ 0.000000e+00, %2 ], [ %34, %12 ]
  %15 = phi ptr [ %6, %2 ], [ %36, %12 ]
  %16 = getelementptr inbounds %struct.BMLoop, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !58
  %18 = tail call float @BM_edge_calc_length(ptr noundef %17) #11
  %19 = fadd float %13, %18
  %20 = getelementptr inbounds %struct.BMLoop, ptr %15, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !47
  %22 = getelementptr inbounds %struct.BMVert, ptr %21, i64 0, i32 2
  %23 = load float, ptr %22, align 4, !tbaa !51
  %24 = load float, ptr %1, align 4, !tbaa !51
  %25 = tail call float @llvm.fmuladd.f32(float %23, float %19, float %24)
  store float %25, ptr %1, align 4, !tbaa !51
  %26 = getelementptr inbounds %struct.BMVert, ptr %21, i64 0, i32 2, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !51
  %28 = load float, ptr %3, align 4, !tbaa !51
  %29 = tail call float @llvm.fmuladd.f32(float %27, float %19, float %28)
  store float %29, ptr %3, align 4, !tbaa !51
  %30 = getelementptr inbounds %struct.BMVert, ptr %21, i64 0, i32 2, i64 2
  %31 = load float, ptr %30, align 4, !tbaa !51
  %32 = load float, ptr %4, align 4, !tbaa !51
  %33 = tail call float @llvm.fmuladd.f32(float %31, float %19, float %32)
  store float %33, ptr %4, align 4, !tbaa !51
  %34 = fadd float %14, %19
  %35 = getelementptr inbounds %struct.BMLoop, ptr %15, i64 0, i32 6
  %36 = load ptr, ptr %35, align 8, !tbaa !44
  %37 = icmp eq ptr %36, %6
  br i1 %37, label %38, label %12, !llvm.loop !59

38:                                               ; preds = %12
  %39 = fcmp une float %34, 0.000000e+00
  br i1 %39, label %40, label %45

40:                                               ; preds = %38
  %41 = fdiv float 1.000000e+00, %34
  %42 = fmul float %41, %25
  store float %42, ptr %1, align 4, !tbaa !51
  %43 = fmul float %41, %29
  store float %43, ptr %3, align 4, !tbaa !51
  %44 = fmul float %41, %33
  store float %44, ptr %4, align 4, !tbaa !51
  br label %45

45:                                               ; preds = %40, %38
  ret void
}

declare float @BM_edge_calc_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @poly_rotate_plane(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [3 x [3 x float]], align 16
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #11
  %6 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  store float 0.000000e+00, ptr %6, align 4, !tbaa !51
  call void @axis_dominant_v3_to_m3(ptr noundef nonnull %4, ptr noundef %0) #11
  %7 = icmp eq i32 %2, 0
  br i1 %7, label %21, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds float, ptr %5, i64 1
  %10 = zext i32 %2 to i64
  br label %11

11:                                               ; preds = %8, %11
  %12 = phi i64 [ 0, %8 ], [ %19, %11 ]
  %13 = getelementptr inbounds [3 x float], ptr %1, i64 %12
  call void @mul_v2_m3v3(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef %13) #11
  %14 = load float, ptr %5, align 4, !tbaa !51
  store float %14, ptr %13, align 4, !tbaa !51
  %15 = load float, ptr %9, align 4, !tbaa !51
  %16 = getelementptr inbounds float, ptr %13, i64 1
  store float %15, ptr %16, align 4, !tbaa !51
  %17 = load float, ptr %6, align 4, !tbaa !51
  %18 = getelementptr inbounds float, ptr %13, i64 2
  store float %17, ptr %18, align 4, !tbaa !51
  %19 = add nuw nsw i64 %12, 1
  %20 = icmp eq i64 %19, %10
  br i1 %20, label %21, label %11, !llvm.loop !60

21:                                               ; preds = %11, %3
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BM_edge_normals_update(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #11
  %3 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 4
  store i8 8, ptr %3, align 4, !tbaa !61
  %4 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 1
  store ptr @bmiter__face_of_edge_begin, ptr %4, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 2
  store ptr @bmiter__face_of_edge_step, ptr %5, align 8, !tbaa !64
  store ptr %0, ptr %2, align 8, !tbaa !65
  call void @bmiter__face_of_edge_begin(ptr noundef nonnull %2) #11
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = call ptr %6(ptr noundef nonnull %2) #11
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %1, %9
  %10 = phi ptr [ %14, %9 ], [ %7, %1 ]
  %11 = getelementptr inbounds %struct.BMFace, ptr %10, i64 0, i32 4
  %12 = call float @BM_face_calc_normal(ptr noundef nonnull %10, ptr noundef nonnull %11)
  %13 = load ptr, ptr %5, align 8, !tbaa !64
  %14 = call ptr %13(ptr noundef nonnull %2) #11
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %9, !llvm.loop !66

16:                                               ; preds = %9, %1
  %17 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !67
  call void @BM_vert_normal_update(ptr noundef %18)
  %19 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !70
  call void @BM_vert_normal_update(ptr noundef %20)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BM_face_normal_update(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 4
  %3 = tail call float @BM_face_calc_normal(ptr noundef %0, ptr noundef nonnull %2)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BM_vert_normal_update(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #11
  %3 = getelementptr inbounds %struct.BMVert, ptr %0, i64 0, i32 3
  store float 0.000000e+00, ptr %3, align 4, !tbaa !51
  %4 = getelementptr inbounds %struct.BMVert, ptr %0, i64 0, i32 3, i64 1
  store float 0.000000e+00, ptr %4, align 4, !tbaa !51
  %5 = getelementptr inbounds %struct.BMVert, ptr %0, i64 0, i32 3, i64 2
  store float 0.000000e+00, ptr %5, align 4, !tbaa !51
  %6 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 4
  store i8 6, ptr %6, align 4, !tbaa !61
  %7 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 1
  store ptr @bmiter__loop_of_vert_begin, ptr %7, align 8, !tbaa !63
  %8 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 2
  store ptr @bmiter__loop_of_vert_step, ptr %8, align 8, !tbaa !64
  store ptr %0, ptr %2, align 8, !tbaa !65
  call void @bmiter__loop_of_vert_begin(ptr noundef nonnull %2) #11
  %9 = load ptr, ptr %8, align 8, !tbaa !64
  %10 = call ptr %9(ptr noundef nonnull %2) #11
  %11 = icmp eq ptr %10, null
  br i1 %11, label %125, label %12

12:                                               ; preds = %1, %85
  %13 = phi ptr [ %102, %85 ], [ %10, %1 ]
  %14 = getelementptr inbounds %struct.BMLoop, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !47
  %16 = getelementptr inbounds %struct.BMVert, ptr %15, i64 0, i32 2
  %17 = getelementptr inbounds %struct.BMLoop, ptr %13, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !57
  %19 = getelementptr inbounds %struct.BMLoop, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !47
  %21 = getelementptr inbounds %struct.BMVert, ptr %20, i64 0, i32 2
  %22 = load float, ptr %16, align 4, !tbaa !51
  %23 = load float, ptr %21, align 4, !tbaa !51
  %24 = fsub float %22, %23
  %25 = getelementptr inbounds %struct.BMVert, ptr %15, i64 0, i32 2, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !51
  %27 = getelementptr inbounds %struct.BMVert, ptr %20, i64 0, i32 2, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !51
  %29 = fsub float %26, %28
  %30 = getelementptr inbounds %struct.BMVert, ptr %15, i64 0, i32 2, i64 2
  %31 = load float, ptr %30, align 4, !tbaa !51
  %32 = getelementptr inbounds %struct.BMVert, ptr %20, i64 0, i32 2, i64 2
  %33 = load float, ptr %32, align 4, !tbaa !51
  %34 = fsub float %31, %33
  %35 = getelementptr inbounds %struct.BMLoop, ptr %13, i64 0, i32 6
  %36 = load ptr, ptr %35, align 8, !tbaa !44
  %37 = getelementptr inbounds %struct.BMLoop, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !47
  %39 = getelementptr inbounds %struct.BMVert, ptr %38, i64 0, i32 2
  %40 = load float, ptr %39, align 4, !tbaa !51
  %41 = fsub float %40, %22
  %42 = getelementptr inbounds %struct.BMVert, ptr %38, i64 0, i32 2, i64 1
  %43 = load float, ptr %42, align 4, !tbaa !51
  %44 = fsub float %43, %26
  %45 = getelementptr inbounds %struct.BMVert, ptr %38, i64 0, i32 2, i64 2
  %46 = load float, ptr %45, align 4, !tbaa !51
  %47 = fsub float %46, %31
  %48 = fmul float %29, %29
  %49 = call float @llvm.fmuladd.f32(float %24, float %24, float %48)
  %50 = call float @llvm.fmuladd.f32(float %34, float %34, float %49)
  %51 = fcmp ogt float %50, 0x38AA95A5C0000000
  br i1 %51, label %52, label %58

52:                                               ; preds = %12
  %53 = call float @sqrtf(float noundef %50) #11
  %54 = fdiv float 1.000000e+00, %53
  %55 = fmul float %24, %54
  %56 = fmul float %29, %54
  %57 = fmul float %34, %54
  br label %58

58:                                               ; preds = %12, %52
  %59 = phi float [ %56, %52 ], [ 0.000000e+00, %12 ]
  %60 = phi float [ %55, %52 ], [ 0.000000e+00, %12 ]
  %61 = phi float [ %57, %52 ], [ 0.000000e+00, %12 ]
  %62 = fmul float %44, %44
  %63 = call float @llvm.fmuladd.f32(float %41, float %41, float %62)
  %64 = call float @llvm.fmuladd.f32(float %47, float %47, float %63)
  %65 = fcmp ogt float %64, 0x38AA95A5C0000000
  br i1 %65, label %66, label %72

66:                                               ; preds = %58
  %67 = call float @sqrtf(float noundef %64) #11
  %68 = fdiv float 1.000000e+00, %67
  %69 = fmul float %41, %68
  %70 = fmul float %44, %68
  %71 = fmul float %47, %68
  br label %72

72:                                               ; preds = %58, %66
  %73 = phi float [ %70, %66 ], [ 0.000000e+00, %58 ]
  %74 = phi float [ %69, %66 ], [ 0.000000e+00, %58 ]
  %75 = phi float [ %71, %66 ], [ 0.000000e+00, %58 ]
  %76 = fmul float %59, %73
  %77 = call float @llvm.fmuladd.f32(float %60, float %74, float %76)
  %78 = call float @llvm.fmuladd.f32(float %61, float %75, float %77)
  %79 = fneg float %78
  %80 = fcmp ult float %78, 1.000000e+00
  br i1 %80, label %81, label %85

81:                                               ; preds = %72
  %82 = fcmp ugt float %78, -1.000000e+00
  br i1 %82, label %83, label %85

83:                                               ; preds = %81
  %84 = call float @acosf(float noundef %79) #11
  br label %85

85:                                               ; preds = %72, %81, %83
  %86 = phi float [ %84, %83 ], [ 0x400921FB60000000, %72 ], [ 0.000000e+00, %81 ]
  %87 = getelementptr inbounds %struct.BMLoop, ptr %13, i64 0, i32 3
  %88 = load ptr, ptr %87, align 8, !tbaa !71
  %89 = getelementptr inbounds %struct.BMFace, ptr %88, i64 0, i32 4
  %90 = load float, ptr %89, align 4, !tbaa !51
  %91 = load float, ptr %3, align 4, !tbaa !51
  %92 = call float @llvm.fmuladd.f32(float %90, float %86, float %91)
  store float %92, ptr %3, align 4, !tbaa !51
  %93 = getelementptr inbounds %struct.BMFace, ptr %88, i64 0, i32 4, i64 1
  %94 = load float, ptr %93, align 4, !tbaa !51
  %95 = load float, ptr %4, align 4, !tbaa !51
  %96 = call float @llvm.fmuladd.f32(float %94, float %86, float %95)
  store float %96, ptr %4, align 4, !tbaa !51
  %97 = getelementptr inbounds %struct.BMFace, ptr %88, i64 0, i32 4, i64 2
  %98 = load float, ptr %97, align 4, !tbaa !51
  %99 = load float, ptr %5, align 4, !tbaa !51
  %100 = call float @llvm.fmuladd.f32(float %98, float %86, float %99)
  store float %100, ptr %5, align 4, !tbaa !51
  %101 = load ptr, ptr %8, align 8, !tbaa !64
  %102 = call ptr %101(ptr noundef nonnull %2) #11
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %12, !llvm.loop !72

104:                                              ; preds = %85
  br i1 %11, label %125, label %105

105:                                              ; preds = %104
  %106 = load float, ptr %3, align 4, !tbaa !51
  %107 = load float, ptr %4, align 4, !tbaa !51
  %108 = fmul float %107, %107
  %109 = call float @llvm.fmuladd.f32(float %106, float %106, float %108)
  %110 = load float, ptr %5, align 4, !tbaa !51
  %111 = call float @llvm.fmuladd.f32(float %110, float %110, float %109)
  %112 = fcmp ogt float %111, 0x38AA95A5C0000000
  br i1 %112, label %113, label %122

113:                                              ; preds = %105
  %114 = call float @sqrtf(float noundef %111) #11
  %115 = fdiv float 1.000000e+00, %114
  %116 = load float, ptr %3, align 4, !tbaa !51
  %117 = fmul float %116, %115
  store float %117, ptr %3, align 4, !tbaa !51
  %118 = load float, ptr %4, align 4, !tbaa !51
  %119 = fmul float %115, %118
  store float %119, ptr %4, align 4, !tbaa !51
  %120 = load float, ptr %5, align 4, !tbaa !51
  %121 = fmul float %115, %120
  br label %123

122:                                              ; preds = %105
  store float 0.000000e+00, ptr %3, align 4, !tbaa !51
  store float 0.000000e+00, ptr %4, align 4, !tbaa !51
  br label %123

123:                                              ; preds = %113, %122
  %124 = phi float [ 0.000000e+00, %122 ], [ %121, %113 ]
  store float %124, ptr %5, align 4, !tbaa !51
  br label %125

125:                                              ; preds = %1, %123, %104
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BM_vert_normal_update_all(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #11
  %3 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 4
  store i8 5, ptr %3, align 4, !tbaa !61
  %4 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 1
  store ptr @bmiter__face_of_vert_begin, ptr %4, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 2
  store ptr @bmiter__face_of_vert_step, ptr %5, align 8, !tbaa !64
  store ptr %0, ptr %2, align 8, !tbaa !65
  call void @bmiter__face_of_vert_begin(ptr noundef nonnull %2) #11
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = call ptr %6(ptr noundef nonnull %2) #11
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %1, %9
  %10 = phi ptr [ %14, %9 ], [ %7, %1 ]
  %11 = getelementptr inbounds %struct.BMFace, ptr %10, i64 0, i32 4
  %12 = call float @BM_face_calc_normal(ptr noundef nonnull %10, ptr noundef nonnull %11)
  %13 = load ptr, ptr %5, align 8, !tbaa !64
  %14 = call ptr %13(ptr noundef nonnull %2) #11
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %9, !llvm.loop !73

16:                                               ; preds = %9, %1
  call void @BM_vert_normal_update(ptr noundef %0)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local float @BM_face_calc_normal(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  switch i32 %4, label %42 [
    i32 4, label %7
    i32 3, label %27
  ]

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BMLoop, ptr %6, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  %10 = getelementptr inbounds %struct.BMVert, ptr %9, i64 0, i32 2
  %11 = getelementptr inbounds %struct.BMLoop, ptr %6, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !44
  %13 = getelementptr inbounds %struct.BMLoop, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !47
  %15 = getelementptr inbounds %struct.BMVert, ptr %14, i64 0, i32 2
  %16 = getelementptr inbounds %struct.BMLoop, ptr %12, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !44
  %18 = getelementptr inbounds %struct.BMLoop, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !47
  %20 = getelementptr inbounds %struct.BMVert, ptr %19, i64 0, i32 2
  %21 = getelementptr inbounds %struct.BMLoop, ptr %17, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !44
  %23 = getelementptr inbounds %struct.BMLoop, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !47
  %25 = getelementptr inbounds %struct.BMVert, ptr %24, i64 0, i32 2
  %26 = tail call float @normal_quad_v3(ptr noundef %1, ptr noundef nonnull %10, ptr noundef nonnull %15, ptr noundef nonnull %20, ptr noundef nonnull %25) #11
  br label %108

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.BMLoop, ptr %6, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !47
  %30 = getelementptr inbounds %struct.BMVert, ptr %29, i64 0, i32 2
  %31 = getelementptr inbounds %struct.BMLoop, ptr %6, i64 0, i32 6
  %32 = load ptr, ptr %31, align 8, !tbaa !44
  %33 = getelementptr inbounds %struct.BMLoop, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !47
  %35 = getelementptr inbounds %struct.BMVert, ptr %34, i64 0, i32 2
  %36 = getelementptr inbounds %struct.BMLoop, ptr %32, i64 0, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !44
  %38 = getelementptr inbounds %struct.BMLoop, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !47
  %40 = getelementptr inbounds %struct.BMVert, ptr %39, i64 0, i32 2
  %41 = tail call float @normal_tri_v3(ptr noundef %1, ptr noundef nonnull %30, ptr noundef nonnull %35, ptr noundef nonnull %40) #11
  br label %108

42:                                               ; preds = %2
  %43 = getelementptr inbounds %struct.BMLoop, ptr %6, i64 0, i32 7
  %44 = load ptr, ptr %43, align 8, !tbaa !57
  %45 = getelementptr inbounds %struct.BMLoop, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !47
  %47 = getelementptr inbounds %struct.BMVert, ptr %46, i64 0, i32 2
  %48 = getelementptr inbounds %struct.BMLoop, ptr %6, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !47
  store float 0.000000e+00, ptr %1, align 4, !tbaa !51
  %50 = getelementptr inbounds float, ptr %1, i64 1
  store float 0.000000e+00, ptr %50, align 4, !tbaa !51
  %51 = getelementptr inbounds float, ptr %1, i64 2
  store float 0.000000e+00, ptr %51, align 4, !tbaa !51
  br label %52

52:                                               ; preds = %52, %42
  %53 = phi float [ 0.000000e+00, %42 ], [ %84, %52 ]
  %54 = phi float [ 0.000000e+00, %42 ], [ %77, %52 ]
  %55 = phi float [ 0.000000e+00, %42 ], [ %70, %52 ]
  %56 = phi ptr [ %6, %42 ], [ %86, %52 ]
  %57 = phi ptr [ %47, %42 ], [ %59, %52 ]
  %58 = phi ptr [ %49, %42 ], [ %88, %52 ]
  %59 = getelementptr inbounds %struct.BMVert, ptr %58, i64 0, i32 2
  %60 = getelementptr inbounds float, ptr %57, i64 1
  %61 = load float, ptr %60, align 4, !tbaa !51
  %62 = getelementptr inbounds %struct.BMVert, ptr %58, i64 0, i32 2, i64 1
  %63 = load float, ptr %62, align 4, !tbaa !51
  %64 = fsub float %61, %63
  %65 = getelementptr inbounds float, ptr %57, i64 2
  %66 = load float, ptr %65, align 4, !tbaa !51
  %67 = getelementptr inbounds %struct.BMVert, ptr %58, i64 0, i32 2, i64 2
  %68 = load float, ptr %67, align 4, !tbaa !51
  %69 = fadd float %66, %68
  %70 = tail call float @llvm.fmuladd.f32(float %64, float %69, float %55)
  store float %70, ptr %1, align 4, !tbaa !51
  %71 = load float, ptr %65, align 4, !tbaa !51
  %72 = load float, ptr %67, align 4, !tbaa !51
  %73 = fsub float %71, %72
  %74 = load float, ptr %57, align 4, !tbaa !51
  %75 = load float, ptr %59, align 4, !tbaa !51
  %76 = fadd float %74, %75
  %77 = tail call float @llvm.fmuladd.f32(float %73, float %76, float %54)
  store float %77, ptr %50, align 4, !tbaa !51
  %78 = load float, ptr %57, align 4, !tbaa !51
  %79 = load float, ptr %59, align 4, !tbaa !51
  %80 = fsub float %78, %79
  %81 = load float, ptr %60, align 4, !tbaa !51
  %82 = load float, ptr %62, align 4, !tbaa !51
  %83 = fadd float %81, %82
  %84 = tail call float @llvm.fmuladd.f32(float %80, float %83, float %53)
  store float %84, ptr %51, align 4, !tbaa !51
  %85 = getelementptr inbounds %struct.BMLoop, ptr %56, i64 0, i32 6
  %86 = load ptr, ptr %85, align 8, !tbaa !44
  %87 = getelementptr inbounds %struct.BMLoop, ptr %86, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !47
  %89 = icmp eq ptr %86, %6
  br i1 %89, label %90, label %52, !llvm.loop !74

90:                                               ; preds = %52
  %91 = fmul float %77, %77
  %92 = tail call float @llvm.fmuladd.f32(float %70, float %70, float %91)
  %93 = tail call float @llvm.fmuladd.f32(float %84, float %84, float %92)
  %94 = fcmp ogt float %93, 0x38AA95A5C0000000
  br i1 %94, label %95, label %104

95:                                               ; preds = %90
  %96 = tail call float @sqrtf(float noundef %93) #11
  %97 = fdiv float 1.000000e+00, %96
  %98 = load float, ptr %1, align 4, !tbaa !51
  %99 = fmul float %98, %97
  store float %99, ptr %1, align 4, !tbaa !51
  %100 = load float, ptr %50, align 4, !tbaa !51
  %101 = fmul float %97, %100
  store float %101, ptr %50, align 4, !tbaa !51
  %102 = load float, ptr %51, align 4, !tbaa !51
  %103 = fmul float %97, %102
  br label %105

104:                                              ; preds = %90
  store float 0.000000e+00, ptr %1, align 4, !tbaa !51
  store float 0.000000e+00, ptr %50, align 4, !tbaa !51
  br label %105

105:                                              ; preds = %95, %104
  %106 = phi float [ 0.000000e+00, %104 ], [ %103, %95 ]
  %107 = phi float [ 0.000000e+00, %104 ], [ %96, %95 ]
  store float %106, ptr %51, align 4, !tbaa !51
  br label %108

108:                                              ; preds = %105, %27, %7
  %109 = phi float [ %107, %105 ], [ %41, %27 ], [ %26, %7 ]
  ret float %109
}

declare float @normal_quad_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @normal_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local float @BM_face_calc_normal_vcos(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !42
  %7 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  switch i32 %6, label %65 [
    i32 4, label %9
    i32 3, label %41
  ]

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.BMLoop, ptr %8, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !47
  %12 = getelementptr inbounds %struct.BMHeader, ptr %11, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !75
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [3 x float], ptr %3, i64 %14
  %16 = getelementptr inbounds %struct.BMLoop, ptr %8, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !44
  %18 = getelementptr inbounds %struct.BMLoop, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !47
  %20 = getelementptr inbounds %struct.BMHeader, ptr %19, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !75
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [3 x float], ptr %3, i64 %22
  %24 = getelementptr inbounds %struct.BMLoop, ptr %17, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !44
  %26 = getelementptr inbounds %struct.BMLoop, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !47
  %28 = getelementptr inbounds %struct.BMHeader, ptr %27, i64 0, i32 1
  %29 = load i32, ptr %28, align 8, !tbaa !75
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [3 x float], ptr %3, i64 %30
  %32 = getelementptr inbounds %struct.BMLoop, ptr %25, i64 0, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !44
  %34 = getelementptr inbounds %struct.BMLoop, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !47
  %36 = getelementptr inbounds %struct.BMHeader, ptr %35, i64 0, i32 1
  %37 = load i32, ptr %36, align 8, !tbaa !75
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [3 x float], ptr %3, i64 %38
  %40 = tail call float @normal_quad_v3(ptr noundef %2, ptr noundef %15, ptr noundef %23, ptr noundef %31, ptr noundef %39) #11
  br label %139

41:                                               ; preds = %4
  %42 = getelementptr inbounds %struct.BMLoop, ptr %8, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !47
  %44 = getelementptr inbounds %struct.BMHeader, ptr %43, i64 0, i32 1
  %45 = load i32, ptr %44, align 8, !tbaa !75
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [3 x float], ptr %3, i64 %46
  %48 = getelementptr inbounds %struct.BMLoop, ptr %8, i64 0, i32 6
  %49 = load ptr, ptr %48, align 8, !tbaa !44
  %50 = getelementptr inbounds %struct.BMLoop, ptr %49, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !47
  %52 = getelementptr inbounds %struct.BMHeader, ptr %51, i64 0, i32 1
  %53 = load i32, ptr %52, align 8, !tbaa !75
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [3 x float], ptr %3, i64 %54
  %56 = getelementptr inbounds %struct.BMLoop, ptr %49, i64 0, i32 6
  %57 = load ptr, ptr %56, align 8, !tbaa !44
  %58 = getelementptr inbounds %struct.BMLoop, ptr %57, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !47
  %60 = getelementptr inbounds %struct.BMHeader, ptr %59, i64 0, i32 1
  %61 = load i32, ptr %60, align 8, !tbaa !75
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [3 x float], ptr %3, i64 %62
  %64 = tail call float @normal_tri_v3(ptr noundef %2, ptr noundef %47, ptr noundef %55, ptr noundef %63) #11
  br label %139

65:                                               ; preds = %4
  %66 = getelementptr inbounds %struct.BMLoop, ptr %8, i64 0, i32 7
  %67 = load ptr, ptr %66, align 8, !tbaa !57
  %68 = getelementptr inbounds %struct.BMLoop, ptr %67, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !47
  %70 = getelementptr inbounds %struct.BMHeader, ptr %69, i64 0, i32 1
  %71 = load i32, ptr %70, align 8, !tbaa !75
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [3 x float], ptr %3, i64 %72
  %74 = getelementptr inbounds %struct.BMLoop, ptr %8, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !47
  %76 = getelementptr inbounds %struct.BMHeader, ptr %75, i64 0, i32 1
  %77 = load i32, ptr %76, align 8, !tbaa !75
  store float 0.000000e+00, ptr %2, align 4, !tbaa !51
  %78 = getelementptr inbounds float, ptr %2, i64 1
  store float 0.000000e+00, ptr %78, align 4, !tbaa !51
  %79 = getelementptr inbounds float, ptr %2, i64 2
  store float 0.000000e+00, ptr %79, align 4, !tbaa !51
  br label %80

80:                                               ; preds = %80, %65
  %81 = phi float [ 0.000000e+00, %65 ], [ %113, %80 ]
  %82 = phi float [ 0.000000e+00, %65 ], [ %106, %80 ]
  %83 = phi float [ 0.000000e+00, %65 ], [ %99, %80 ]
  %84 = phi ptr [ %8, %65 ], [ %115, %80 ]
  %85 = phi ptr [ %73, %65 ], [ %88, %80 ]
  %86 = phi i32 [ %77, %65 ], [ %119, %80 ]
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [3 x float], ptr %3, i64 %87
  %89 = getelementptr inbounds float, ptr %85, i64 1
  %90 = load float, ptr %89, align 4, !tbaa !51
  %91 = getelementptr inbounds float, ptr %88, i64 1
  %92 = load float, ptr %91, align 4, !tbaa !51
  %93 = fsub float %90, %92
  %94 = getelementptr inbounds float, ptr %85, i64 2
  %95 = load float, ptr %94, align 4, !tbaa !51
  %96 = getelementptr inbounds float, ptr %88, i64 2
  %97 = load float, ptr %96, align 4, !tbaa !51
  %98 = fadd float %95, %97
  %99 = tail call float @llvm.fmuladd.f32(float %93, float %98, float %83)
  store float %99, ptr %2, align 4, !tbaa !51
  %100 = load float, ptr %94, align 4, !tbaa !51
  %101 = load float, ptr %96, align 4, !tbaa !51
  %102 = fsub float %100, %101
  %103 = load float, ptr %85, align 4, !tbaa !51
  %104 = load float, ptr %88, align 4, !tbaa !51
  %105 = fadd float %103, %104
  %106 = tail call float @llvm.fmuladd.f32(float %102, float %105, float %82)
  store float %106, ptr %78, align 4, !tbaa !51
  %107 = load float, ptr %85, align 4, !tbaa !51
  %108 = load float, ptr %88, align 4, !tbaa !51
  %109 = fsub float %107, %108
  %110 = load float, ptr %89, align 4, !tbaa !51
  %111 = load float, ptr %91, align 4, !tbaa !51
  %112 = fadd float %110, %111
  %113 = tail call float @llvm.fmuladd.f32(float %109, float %112, float %81)
  store float %113, ptr %79, align 4, !tbaa !51
  %114 = getelementptr inbounds %struct.BMLoop, ptr %84, i64 0, i32 6
  %115 = load ptr, ptr %114, align 8, !tbaa !44
  %116 = getelementptr inbounds %struct.BMLoop, ptr %115, i64 0, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !47
  %118 = getelementptr inbounds %struct.BMHeader, ptr %117, i64 0, i32 1
  %119 = load i32, ptr %118, align 8, !tbaa !75
  %120 = icmp eq ptr %115, %8
  br i1 %120, label %121, label %80, !llvm.loop !76

121:                                              ; preds = %80
  %122 = fmul float %106, %106
  %123 = tail call float @llvm.fmuladd.f32(float %99, float %99, float %122)
  %124 = tail call float @llvm.fmuladd.f32(float %113, float %113, float %123)
  %125 = fcmp ogt float %124, 0x38AA95A5C0000000
  br i1 %125, label %126, label %135

126:                                              ; preds = %121
  %127 = tail call float @sqrtf(float noundef %124) #11
  %128 = fdiv float 1.000000e+00, %127
  %129 = load float, ptr %2, align 4, !tbaa !51
  %130 = fmul float %129, %128
  store float %130, ptr %2, align 4, !tbaa !51
  %131 = load float, ptr %78, align 4, !tbaa !51
  %132 = fmul float %128, %131
  store float %132, ptr %78, align 4, !tbaa !51
  %133 = load float, ptr %79, align 4, !tbaa !51
  %134 = fmul float %128, %133
  br label %136

135:                                              ; preds = %121
  store float 0.000000e+00, ptr %2, align 4, !tbaa !51
  store float 0.000000e+00, ptr %78, align 4, !tbaa !51
  br label %136

136:                                              ; preds = %126, %135
  %137 = phi float [ 0.000000e+00, %135 ], [ %134, %126 ]
  %138 = phi float [ 0.000000e+00, %135 ], [ %127, %126 ]
  store float %137, ptr %79, align 4, !tbaa !51
  br label %139

139:                                              ; preds = %136, %41, %9
  %140 = phi float [ %138, %136 ], [ %64, %41 ], [ %40, %9 ]
  ret float %140
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local float @BM_face_calc_normal_subset(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) local_unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  store float 0.000000e+00, ptr %2, align 4, !tbaa !51
  %6 = getelementptr inbounds float, ptr %2, i64 1
  store float 0.000000e+00, ptr %6, align 4, !tbaa !51
  %7 = getelementptr inbounds float, ptr %2, i64 2
  store float 0.000000e+00, ptr %7, align 4, !tbaa !51
  %8 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  %10 = getelementptr inbounds %struct.BMVert, ptr %9, i64 0, i32 2
  %11 = load float, ptr %2, align 4, !tbaa !51
  %12 = load float, ptr %6, align 4, !tbaa !51
  br label %13

13:                                               ; preds = %13, %3
  %14 = phi float [ 0.000000e+00, %3 ], [ %46, %13 ]
  %15 = phi float [ %12, %3 ], [ %39, %13 ]
  %16 = phi float [ %11, %3 ], [ %32, %13 ]
  %17 = phi ptr [ %0, %3 ], [ %48, %13 ]
  %18 = phi ptr [ %10, %3 ], [ %21, %13 ]
  %19 = getelementptr inbounds %struct.BMLoop, ptr %17, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !47
  %21 = getelementptr inbounds %struct.BMVert, ptr %20, i64 0, i32 2
  %22 = getelementptr inbounds float, ptr %18, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !51
  %24 = getelementptr inbounds %struct.BMVert, ptr %20, i64 0, i32 2, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !51
  %26 = fsub float %23, %25
  %27 = getelementptr inbounds float, ptr %18, i64 2
  %28 = load float, ptr %27, align 4, !tbaa !51
  %29 = getelementptr inbounds %struct.BMVert, ptr %20, i64 0, i32 2, i64 2
  %30 = load float, ptr %29, align 4, !tbaa !51
  %31 = fadd float %28, %30
  %32 = tail call float @llvm.fmuladd.f32(float %26, float %31, float %16)
  store float %32, ptr %2, align 4, !tbaa !51
  %33 = load float, ptr %27, align 4, !tbaa !51
  %34 = load float, ptr %29, align 4, !tbaa !51
  %35 = fsub float %33, %34
  %36 = load float, ptr %18, align 4, !tbaa !51
  %37 = load float, ptr %21, align 4, !tbaa !51
  %38 = fadd float %36, %37
  %39 = tail call float @llvm.fmuladd.f32(float %35, float %38, float %15)
  store float %39, ptr %6, align 4, !tbaa !51
  %40 = load float, ptr %18, align 4, !tbaa !51
  %41 = load float, ptr %21, align 4, !tbaa !51
  %42 = fsub float %40, %41
  %43 = load float, ptr %22, align 4, !tbaa !51
  %44 = load float, ptr %24, align 4, !tbaa !51
  %45 = fadd float %43, %44
  %46 = tail call float @llvm.fmuladd.f32(float %42, float %45, float %14)
  store float %46, ptr %7, align 4, !tbaa !51
  %47 = getelementptr inbounds %struct.BMLoop, ptr %17, i64 0, i32 6
  %48 = load ptr, ptr %47, align 8, !tbaa !44
  %49 = icmp eq ptr %48, %5
  br i1 %49, label %50, label %13, !llvm.loop !77

50:                                               ; preds = %13
  %51 = fmul float %39, %39
  %52 = tail call float @llvm.fmuladd.f32(float %32, float %32, float %51)
  %53 = tail call float @llvm.fmuladd.f32(float %46, float %46, float %52)
  %54 = fcmp ogt float %53, 0x38AA95A5C0000000
  br i1 %54, label %55, label %64

55:                                               ; preds = %50
  %56 = tail call float @sqrtf(float noundef %53) #11
  %57 = fdiv float 1.000000e+00, %56
  %58 = load float, ptr %2, align 4, !tbaa !51
  %59 = fmul float %58, %57
  store float %59, ptr %2, align 4, !tbaa !51
  %60 = load float, ptr %6, align 4, !tbaa !51
  %61 = fmul float %57, %60
  store float %61, ptr %6, align 4, !tbaa !51
  %62 = load float, ptr %7, align 4, !tbaa !51
  %63 = fmul float %57, %62
  br label %65

64:                                               ; preds = %50
  store float 0.000000e+00, ptr %2, align 4, !tbaa !51
  store float 0.000000e+00, ptr %6, align 4, !tbaa !51
  br label %65

65:                                               ; preds = %55, %64
  %66 = phi float [ 0.000000e+00, %64 ], [ %63, %55 ]
  %67 = phi float [ 0.000000e+00, %64 ], [ %56, %55 ]
  store float %66, ptr %7, align 4, !tbaa !51
  ret float %67
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BM_face_calc_center_mean_vcos(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #7 {
  %5 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  store float 0.000000e+00, ptr %2, align 4, !tbaa !51
  %7 = getelementptr inbounds float, ptr %2, i64 1
  store float 0.000000e+00, ptr %7, align 4, !tbaa !51
  %8 = getelementptr inbounds float, ptr %2, i64 2
  store float 0.000000e+00, ptr %8, align 4, !tbaa !51
  br label %9

9:                                                ; preds = %9, %4
  %10 = phi float [ 0.000000e+00, %4 ], [ %27, %9 ]
  %11 = phi float [ 0.000000e+00, %4 ], [ %24, %9 ]
  %12 = phi float [ 0.000000e+00, %4 ], [ %21, %9 ]
  %13 = phi ptr [ %6, %4 ], [ %29, %9 ]
  %14 = getelementptr inbounds %struct.BMLoop, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !47
  %16 = getelementptr inbounds %struct.BMHeader, ptr %15, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !75
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [3 x float], ptr %3, i64 %18
  %20 = load float, ptr %19, align 4, !tbaa !51
  %21 = fadd float %20, %12
  store float %21, ptr %2, align 4, !tbaa !51
  %22 = getelementptr inbounds float, ptr %19, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !51
  %24 = fadd float %23, %11
  store float %24, ptr %7, align 4, !tbaa !51
  %25 = getelementptr inbounds float, ptr %19, i64 2
  %26 = load float, ptr %25, align 4, !tbaa !51
  %27 = fadd float %26, %10
  store float %27, ptr %8, align 4, !tbaa !51
  %28 = getelementptr inbounds %struct.BMLoop, ptr %13, i64 0, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !44
  %30 = icmp eq ptr %29, %6
  br i1 %30, label %31, label %9, !llvm.loop !78

31:                                               ; preds = %9
  %32 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 3
  %33 = load i32, ptr %32, align 8, !tbaa !42
  %34 = sitofp i32 %33 to float
  %35 = fdiv float 1.000000e+00, %34
  %36 = fmul float %21, %35
  store float %36, ptr %2, align 4, !tbaa !51
  %37 = fmul float %24, %35
  store float %37, ptr %7, align 4, !tbaa !51
  %38 = fmul float %27, %35
  store float %38, ptr %8, align 4, !tbaa !51
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BM_face_normal_flip(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call zeroext i8 @bmesh_loop_reverse(ptr noundef %0, ptr noundef %1) #11
  %4 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 4
  %5 = load float, ptr %4, align 4, !tbaa !51
  %6 = fneg float %5
  store float %6, ptr %4, align 4, !tbaa !51
  %7 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 4, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !51
  %9 = fneg float %8
  store float %9, ptr %7, align 4, !tbaa !51
  %10 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 4, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !51
  %12 = fneg float %11
  store float %12, ptr %10, align 4, !tbaa !51
  ret void
}

declare zeroext i8 @bmesh_loop_reverse(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @BM_face_point_inside_test(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [3 x [3 x float]], align 16
  %4 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #11
  %5 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !42
  %7 = sext i32 %6 to i64
  %8 = shl nsw i64 %7, 3
  %9 = alloca i8, i64 %8, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %10 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 4
  %11 = load float, ptr %10, align 4, !tbaa !51
  %12 = fcmp oeq float %11, 0.000000e+00
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 4, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !51
  %16 = fcmp oeq float %15, 0.000000e+00
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 4, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !51
  %20 = fcmp une float %19, 0.000000e+00
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = tail call float @BM_face_calc_normal(ptr noundef %0, ptr noundef nonnull %10)
  br label %23

23:                                               ; preds = %13, %2, %21, %17
  call void @axis_dominant_v3_to_m3(ptr noundef nonnull %3, ptr noundef nonnull %10) #11
  call void @mul_v2_m3v3(ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef %1) #11
  %24 = load i32, ptr %5, align 8, !tbaa !42
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 2
  br label %28

28:                                               ; preds = %26, %28
  %29 = phi i64 [ 0, %26 ], [ %36, %28 ]
  %30 = phi ptr [ %27, %26 ], [ %37, %28 ]
  %31 = load ptr, ptr %30, align 8, !tbaa !43
  %32 = getelementptr inbounds [2 x float], ptr %9, i64 %29
  %33 = getelementptr inbounds %struct.BMLoop, ptr %31, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !47
  %35 = getelementptr inbounds %struct.BMVert, ptr %34, i64 0, i32 2
  call void @mul_v2_m3v3(ptr noundef nonnull %32, ptr noundef nonnull %3, ptr noundef nonnull %35) #11
  %36 = add nuw nsw i64 %29, 1
  %37 = getelementptr inbounds %struct.BMLoop, ptr %31, i64 0, i32 6
  %38 = load i32, ptr %5, align 8, !tbaa !42
  %39 = sext i32 %38 to i64
  %40 = icmp slt i64 %36, %39
  br i1 %40, label %28, label %41, !llvm.loop !79

41:                                               ; preds = %28, %23
  %42 = phi i32 [ %24, %23 ], [ %38, %28 ]
  %43 = call zeroext i8 @isect_point_poly_v2(ptr noundef nonnull %4, ptr noundef nonnull %9, i32 noundef %42, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #11
  ret i8 %43
}

declare zeroext i8 @isect_point_poly_v2(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BM_face_triangulate(ptr noundef %0, ptr noundef %1, ptr noundef writeonly %2, ptr noundef writeonly %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i8 noundef zeroext %7) local_unnamed_addr #0 {
  %9 = alloca ptr, align 8
  %10 = alloca [3 x [3 x float]], align 16
  %11 = alloca [3 x ptr], align 16
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #11
  %14 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !42
  %16 = icmp eq i32 %6, 0
  %17 = icmp eq i32 %15, 4
  br i1 %17, label %18, label %125

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !34
  %21 = getelementptr inbounds %struct.BMLoop, ptr %20, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !44
  switch i32 %5, label %81 [
    i32 1, label %23
    i32 2, label %26
    i32 3, label %29
  ]

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.BMLoop, ptr %22, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !44
  br label %98

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.BMLoop, ptr %20, i64 0, i32 7
  %28 = load ptr, ptr %27, align 8, !tbaa !57
  br label %98

29:                                               ; preds = %18
  %30 = getelementptr inbounds %struct.BMLoop, ptr %22, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !44
  %32 = getelementptr inbounds %struct.BMLoop, ptr %20, i64 0, i32 7
  %33 = load ptr, ptr %32, align 8, !tbaa !57
  %34 = getelementptr inbounds %struct.BMLoop, ptr %20, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !47
  %36 = getelementptr inbounds %struct.BMVert, ptr %35, i64 0, i32 2
  %37 = getelementptr inbounds %struct.BMLoop, ptr %31, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !47
  %39 = getelementptr inbounds %struct.BMVert, ptr %38, i64 0, i32 2
  %40 = load float, ptr %39, align 4, !tbaa !51
  %41 = load float, ptr %36, align 4, !tbaa !51
  %42 = fsub float %40, %41
  %43 = getelementptr inbounds %struct.BMVert, ptr %38, i64 0, i32 2, i64 1
  %44 = load float, ptr %43, align 4, !tbaa !51
  %45 = getelementptr inbounds %struct.BMVert, ptr %35, i64 0, i32 2, i64 1
  %46 = load float, ptr %45, align 4, !tbaa !51
  %47 = fsub float %44, %46
  %48 = getelementptr inbounds %struct.BMVert, ptr %38, i64 0, i32 2, i64 2
  %49 = load float, ptr %48, align 4, !tbaa !51
  %50 = getelementptr inbounds %struct.BMVert, ptr %35, i64 0, i32 2, i64 2
  %51 = load float, ptr %50, align 4, !tbaa !51
  %52 = fsub float %49, %51
  %53 = fmul float %47, %47
  %54 = tail call float @llvm.fmuladd.f32(float %42, float %42, float %53)
  %55 = tail call float @llvm.fmuladd.f32(float %52, float %52, float %54)
  %56 = getelementptr inbounds %struct.BMLoop, ptr %22, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !47
  %58 = getelementptr inbounds %struct.BMVert, ptr %57, i64 0, i32 2
  %59 = getelementptr inbounds %struct.BMLoop, ptr %33, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !47
  %61 = getelementptr inbounds %struct.BMVert, ptr %60, i64 0, i32 2
  %62 = load float, ptr %61, align 4, !tbaa !51
  %63 = load float, ptr %58, align 4, !tbaa !51
  %64 = fsub float %62, %63
  %65 = getelementptr inbounds %struct.BMVert, ptr %60, i64 0, i32 2, i64 1
  %66 = load float, ptr %65, align 4, !tbaa !51
  %67 = getelementptr inbounds %struct.BMVert, ptr %57, i64 0, i32 2, i64 1
  %68 = load float, ptr %67, align 4, !tbaa !51
  %69 = fsub float %66, %68
  %70 = getelementptr inbounds %struct.BMVert, ptr %60, i64 0, i32 2, i64 2
  %71 = load float, ptr %70, align 4, !tbaa !51
  %72 = getelementptr inbounds %struct.BMVert, ptr %57, i64 0, i32 2, i64 2
  %73 = load float, ptr %72, align 4, !tbaa !51
  %74 = fsub float %71, %73
  %75 = fmul float %69, %69
  %76 = tail call float @llvm.fmuladd.f32(float %64, float %64, float %75)
  %77 = tail call float @llvm.fmuladd.f32(float %74, float %74, float %76)
  %78 = fcmp olt float %77, %55
  %79 = select i1 %78, ptr %33, ptr %31
  %80 = select i1 %78, ptr %22, ptr %20
  br label %98

81:                                               ; preds = %18
  %82 = getelementptr inbounds %struct.BMLoop, ptr %22, i64 0, i32 6
  %83 = load ptr, ptr %82, align 8, !tbaa !44
  %84 = getelementptr inbounds %struct.BMLoop, ptr %20, i64 0, i32 7
  %85 = load ptr, ptr %84, align 8, !tbaa !57
  %86 = getelementptr inbounds %struct.BMLoop, ptr %22, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !47
  %88 = getelementptr inbounds %struct.BMLoop, ptr %83, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !47
  %90 = getelementptr inbounds %struct.BMLoop, ptr %85, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !47
  %92 = getelementptr inbounds %struct.BMLoop, ptr %20, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !47
  %94 = tail call float @BM_verts_calc_rotate_beauty(ptr noundef %87, ptr noundef %89, ptr noundef %91, ptr noundef %93, i16 noundef signext 0, i16 noundef signext 0) #11
  %95 = fcmp olt float %94, 0.000000e+00
  %96 = select i1 %95, ptr %83, ptr %85
  %97 = select i1 %95, ptr %20, ptr %22
  br label %98

98:                                               ; preds = %81, %29, %26, %23
  %99 = phi ptr [ %96, %81 ], [ %79, %29 ], [ %28, %26 ], [ %25, %23 ]
  %100 = phi ptr [ %97, %81 ], [ %80, %29 ], [ %22, %26 ], [ %20, %23 ]
  %101 = call ptr @BM_face_split(ptr noundef %0, ptr noundef %1, ptr noundef %100, ptr noundef %99, ptr noundef nonnull %9, ptr noundef null, i8 noundef zeroext 1) #11
  %102 = getelementptr inbounds %struct.BMFace, ptr %101, i64 0, i32 4
  %103 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 4
  %104 = load float, ptr %103, align 4, !tbaa !51
  store float %104, ptr %102, align 4, !tbaa !51
  %105 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 4, i64 1
  %106 = load float, ptr %105, align 4, !tbaa !51
  %107 = getelementptr inbounds %struct.BMFace, ptr %101, i64 0, i32 4, i64 1
  store float %106, ptr %107, align 4, !tbaa !51
  %108 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 4, i64 2
  %109 = load float, ptr %108, align 4, !tbaa !51
  %110 = getelementptr inbounds %struct.BMFace, ptr %101, i64 0, i32 4, i64 2
  store float %109, ptr %110, align 4, !tbaa !51
  %111 = icmp eq i8 %7, 0
  br i1 %111, label %122, label %112

112:                                              ; preds = %98
  %113 = load ptr, ptr %9, align 8, !tbaa !43
  %114 = getelementptr inbounds %struct.BMLoop, ptr %113, i64 0, i32 2
  %115 = load ptr, ptr %114, align 8, !tbaa !58
  %116 = getelementptr inbounds %struct.BMHeader, ptr %115, i64 0, i32 3
  %117 = load i8, ptr %116, align 1, !tbaa !80
  %118 = or i8 %117, 16
  store i8 %118, ptr %116, align 1, !tbaa !80
  %119 = getelementptr inbounds %struct.BMHeader, ptr %101, i64 0, i32 3
  %120 = load i8, ptr %119, align 1, !tbaa !80
  %121 = or i8 %120, 16
  store i8 %121, ptr %119, align 1, !tbaa !80
  br label %122

122:                                              ; preds = %112, %98
  %123 = icmp eq ptr %2, null
  br i1 %123, label %301, label %124

124:                                              ; preds = %122
  store ptr %101, ptr %2, align 8, !tbaa !43
  br label %301

125:                                              ; preds = %8
  %126 = icmp sgt i32 %15, 4
  br i1 %126, label %127, label %301

127:                                              ; preds = %125
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %10) #11
  %128 = zext nneg i32 %15 to i64
  %129 = shl nuw nsw i64 %128, 3
  %130 = alloca i8, i64 %129, align 16
  %131 = alloca i8, i64 %129, align 16
  %132 = mul nuw nsw i64 %128, 12
  %133 = alloca i8, i64 %132, align 16
  %134 = add nsw i32 %15, -3
  %135 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 4
  call void @axis_dominant_v3_to_m3(ptr noundef nonnull %10, ptr noundef nonnull %135) #11
  %136 = load i32, ptr %14, align 8, !tbaa !42
  %137 = icmp sgt i32 %136, 0
  br i1 %137, label %138, label %154

138:                                              ; preds = %127
  %139 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 2
  br label %140

140:                                              ; preds = %138, %140
  %141 = phi i64 [ 0, %138 ], [ %149, %140 ]
  %142 = phi ptr [ %139, %138 ], [ %150, %140 ]
  %143 = load ptr, ptr %142, align 8, !tbaa !43
  %144 = getelementptr inbounds ptr, ptr %131, i64 %141
  store ptr %143, ptr %144, align 8, !tbaa !43
  %145 = getelementptr inbounds [2 x float], ptr %130, i64 %141
  %146 = getelementptr inbounds %struct.BMLoop, ptr %143, i64 0, i32 1
  %147 = load ptr, ptr %146, align 8, !tbaa !47
  %148 = getelementptr inbounds %struct.BMVert, ptr %147, i64 0, i32 2
  call void @mul_v2_m3v3(ptr noundef nonnull %145, ptr noundef nonnull %10, ptr noundef nonnull %148) #11
  %149 = add nuw nsw i64 %141, 1
  %150 = getelementptr inbounds %struct.BMLoop, ptr %143, i64 0, i32 6
  %151 = load i32, ptr %14, align 8, !tbaa !42
  %152 = sext i32 %151 to i64
  %153 = icmp slt i64 %149, %152
  br i1 %153, label %140, label %154, !llvm.loop !81

154:                                              ; preds = %140, %127
  %155 = phi i32 [ %136, %127 ], [ %151, %140 ]
  call void @BLI_polyfill_calc_arena(ptr noundef nonnull %130, i32 noundef %155, i32 noundef -1, ptr noundef nonnull %133, ptr noundef %4) #11
  br i1 %16, label %156, label %160

156:                                              ; preds = %154
  %157 = zext nneg i32 %134 to i64
  %158 = shl nuw nsw i64 %157, 3
  %159 = alloca i8, i64 %158, align 16
  br label %160

160:                                              ; preds = %154, %156
  %161 = phi ptr [ %159, %156 ], [ undef, %154 ]
  %162 = getelementptr inbounds ptr, ptr %11, i64 1
  %163 = getelementptr inbounds ptr, ptr %11, i64 2
  %164 = icmp eq i8 %7, 0
  %165 = icmp eq ptr %2, null
  %166 = icmp ne i8 %7, 0
  %167 = or i1 %16, %166
  %168 = icmp eq i8 %7, 0
  %169 = zext i32 %134 to i64
  %170 = call i32 @llvm.smax.i32(i32 %15, i32 3)
  %171 = add nsw i32 %170, -2
  %172 = zext nneg i32 %171 to i64
  br label %173

173:                                              ; preds = %160, %246
  %174 = phi i64 [ 0, %160 ], [ %248, %246 ]
  %175 = phi i32 [ 0, %160 ], [ %219, %246 ]
  %176 = phi i32 [ 0, %160 ], [ %247, %246 ]
  %177 = getelementptr inbounds [3 x i32], ptr %133, i64 %174
  %178 = getelementptr inbounds [3 x i32], ptr %133, i64 %174, i64 2
  %179 = load i32, ptr %178, align 4, !tbaa !46
  %180 = zext i32 %179 to i64
  %181 = getelementptr inbounds ptr, ptr %131, i64 %180
  %182 = load ptr, ptr %181, align 8, !tbaa !43
  %183 = getelementptr inbounds [3 x i32], ptr %133, i64 %174, i64 1
  %184 = load i32, ptr %183, align 4, !tbaa !46
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds ptr, ptr %131, i64 %185
  %187 = load ptr, ptr %186, align 8, !tbaa !43
  %188 = load i32, ptr %177, align 4, !tbaa !46
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds ptr, ptr %131, i64 %189
  %191 = load ptr, ptr %190, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #11
  %192 = getelementptr inbounds %struct.BMLoop, ptr %182, i64 0, i32 1
  %193 = load ptr, ptr %192, align 8, !tbaa !47
  store ptr %193, ptr %11, align 16, !tbaa !43
  %194 = getelementptr inbounds %struct.BMLoop, ptr %187, i64 0, i32 1
  %195 = load ptr, ptr %194, align 8, !tbaa !47
  store ptr %195, ptr %162, align 8, !tbaa !43
  %196 = getelementptr inbounds %struct.BMLoop, ptr %191, i64 0, i32 1
  %197 = load ptr, ptr %196, align 8, !tbaa !47
  store ptr %197, ptr %163, align 16, !tbaa !43
  %198 = call ptr @BM_face_create_verts(ptr noundef %0, ptr noundef nonnull %11, i32 noundef 3, ptr noundef %1, i32 noundef 0, i8 noundef zeroext 1) #11
  %199 = getelementptr inbounds %struct.BMFace, ptr %198, i64 0, i32 2
  %200 = load ptr, ptr %199, align 8, !tbaa !34
  store ptr %200, ptr %9, align 8, !tbaa !43
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef %182, ptr noundef %200) #11
  %201 = load ptr, ptr %9, align 8, !tbaa !43
  %202 = getelementptr inbounds %struct.BMLoop, ptr %201, i64 0, i32 6
  %203 = load ptr, ptr %202, align 8, !tbaa !44
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef %187, ptr noundef %203) #11
  %204 = load ptr, ptr %9, align 8, !tbaa !43
  %205 = getelementptr inbounds %struct.BMLoop, ptr %204, i64 0, i32 7
  %206 = load ptr, ptr %205, align 8, !tbaa !57
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef %191, ptr noundef %206) #11
  %207 = icmp eq i64 %174, %169
  br i1 %207, label %218, label %208

208:                                              ; preds = %173
  br i1 %164, label %213, label %209

209:                                              ; preds = %208
  %210 = getelementptr inbounds %struct.BMHeader, ptr %198, i64 0, i32 3
  %211 = load i8, ptr %210, align 1, !tbaa !80
  %212 = or i8 %211, 16
  store i8 %212, ptr %210, align 1, !tbaa !80
  br label %213

213:                                              ; preds = %209, %208
  br i1 %165, label %218, label %214

214:                                              ; preds = %213
  %215 = add nsw i32 %175, 1
  %216 = sext i32 %175 to i64
  %217 = getelementptr inbounds ptr, ptr %2, i64 %216
  store ptr %198, ptr %217, align 8, !tbaa !43
  br label %218

218:                                              ; preds = %213, %214, %173
  %219 = phi i32 [ %215, %214 ], [ %175, %213 ], [ %175, %173 ]
  br i1 %167, label %220, label %246

220:                                              ; preds = %218
  %221 = load ptr, ptr %9, align 8, !tbaa !43
  br label %222

222:                                              ; preds = %241, %220
  %223 = phi i32 [ %176, %220 ], [ %242, %241 ]
  %224 = phi ptr [ %221, %220 ], [ %244, %241 ]
  %225 = getelementptr inbounds %struct.BMLoop, ptr %224, i64 0, i32 2
  %226 = load ptr, ptr %225, align 8, !tbaa !58
  %227 = getelementptr inbounds %struct.BMLoop, ptr %224, i64 0, i32 4
  %228 = load ptr, ptr %227, align 8, !tbaa !82
  %229 = icmp eq ptr %224, %228
  br i1 %229, label %230, label %241

230:                                              ; preds = %222
  br i1 %16, label %231, label %235

231:                                              ; preds = %230
  %232 = sext i32 %223 to i64
  %233 = getelementptr inbounds ptr, ptr %161, i64 %232
  store ptr %226, ptr %233, align 8, !tbaa !43
  %234 = add nsw i32 %223, 1
  br label %235

235:                                              ; preds = %231, %230
  %236 = phi i32 [ %234, %231 ], [ %223, %230 ]
  br i1 %168, label %241, label %237

237:                                              ; preds = %235
  %238 = getelementptr inbounds %struct.BMHeader, ptr %226, i64 0, i32 3
  %239 = load i8, ptr %238, align 1, !tbaa !80
  %240 = or i8 %239, 16
  store i8 %240, ptr %238, align 1, !tbaa !80
  br label %241

241:                                              ; preds = %235, %237, %222
  %242 = phi i32 [ %236, %237 ], [ %236, %235 ], [ %223, %222 ]
  %243 = getelementptr inbounds %struct.BMLoop, ptr %224, i64 0, i32 6
  %244 = load ptr, ptr %243, align 8, !tbaa !44
  %245 = icmp eq ptr %244, %221
  br i1 %245, label %246, label %222, !llvm.loop !83

246:                                              ; preds = %241, %218
  %247 = phi i32 [ %176, %218 ], [ %242, %241 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #11
  %248 = add nuw nsw i64 %174, 1
  %249 = icmp eq i64 %248, %172
  br i1 %249, label %250, label %173, !llvm.loop !84

250:                                              ; preds = %246
  %251 = icmp ne ptr %2, null
  %252 = and i1 %251, %16
  br i1 %252, label %254, label %253

253:                                              ; preds = %250
  call void @bmesh_face_swap_data(ptr noundef %1, ptr noundef %198) #11
  call void @BM_face_kill(ptr noundef %0, ptr noundef %198) #11
  br label %254

254:                                              ; preds = %250, %253
  br i1 %16, label %255, label %299

255:                                              ; preds = %254
  call void @BM_mesh_beautify_fill(ptr noundef %0, ptr noundef %161, i32 noundef %247, i16 noundef signext 0, i16 noundef signext 0, i16 noundef signext 0, i16 noundef signext 0) #11
  br i1 %251, label %256, label %299

256:                                              ; preds = %255
  %257 = icmp sgt i32 %247, 0
  br i1 %257, label %258, label %296

258:                                              ; preds = %256
  %259 = zext nneg i32 %247 to i64
  br label %260

260:                                              ; preds = %289, %258
  %261 = phi i64 [ 0, %258 ], [ %293, %289 ]
  %262 = phi ptr [ %198, %258 ], [ %291, %289 ]
  %263 = phi i32 [ 0, %258 ], [ %290, %289 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #11
  %264 = getelementptr inbounds ptr, ptr %161, i64 %261
  %265 = load ptr, ptr %264, align 8, !tbaa !43
  %266 = call zeroext i8 @BM_edge_face_pair(ptr noundef %265, ptr noundef nonnull %12, ptr noundef nonnull %13) #11
  %267 = load ptr, ptr %12, align 8, !tbaa !43
  %268 = getelementptr inbounds %struct.BMHeader, ptr %267, i64 0, i32 1
  %269 = load i32, ptr %268, align 8, !tbaa !75
  %270 = icmp eq i32 %269, -2
  br i1 %270, label %277, label %271

271:                                              ; preds = %260
  store i32 -2, ptr %268, align 8, !tbaa !75
  %272 = icmp slt i32 %263, %247
  br i1 %272, label %273, label %289

273:                                              ; preds = %271
  %274 = add nsw i32 %263, 1
  %275 = sext i32 %263 to i64
  %276 = getelementptr inbounds ptr, ptr %2, i64 %275
  store ptr %267, ptr %276, align 8, !tbaa !43
  br label %277

277:                                              ; preds = %273, %260
  %278 = phi i32 [ %274, %273 ], [ %263, %260 ]
  %279 = load ptr, ptr %13, align 8, !tbaa !43
  %280 = getelementptr inbounds %struct.BMHeader, ptr %279, i64 0, i32 1
  %281 = load i32, ptr %280, align 8, !tbaa !75
  %282 = icmp eq i32 %281, -2
  br i1 %282, label %289, label %283

283:                                              ; preds = %277
  store i32 -2, ptr %280, align 8, !tbaa !75
  %284 = icmp slt i32 %278, %247
  br i1 %284, label %285, label %289

285:                                              ; preds = %283
  %286 = add nsw i32 %278, 1
  %287 = sext i32 %278 to i64
  %288 = getelementptr inbounds ptr, ptr %2, i64 %287
  store ptr %279, ptr %288, align 8, !tbaa !43
  br label %289

289:                                              ; preds = %283, %271, %277, %285
  %290 = phi i32 [ %286, %285 ], [ %278, %277 ], [ %263, %271 ], [ %278, %283 ]
  %291 = phi ptr [ %262, %285 ], [ %262, %277 ], [ %267, %271 ], [ %279, %283 ]
  %292 = phi i1 [ false, %285 ], [ false, %277 ], [ true, %271 ], [ true, %283 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #11
  %293 = add nuw nsw i64 %261, 1
  %294 = icmp eq i64 %293, %259
  %295 = select i1 %292, i1 true, i1 %294
  br i1 %295, label %296, label %260, !llvm.loop !85

296:                                              ; preds = %289, %256
  %297 = phi i32 [ 0, %256 ], [ %290, %289 ]
  %298 = phi ptr [ %198, %256 ], [ %291, %289 ]
  call void @bmesh_face_swap_data(ptr noundef %1, ptr noundef %298) #11
  call void @BM_face_kill(ptr noundef %0, ptr noundef %298) #11
  br label %299

299:                                              ; preds = %255, %296, %254
  %300 = phi i32 [ %297, %296 ], [ %219, %255 ], [ %219, %254 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %10) #11
  br label %301

301:                                              ; preds = %122, %124, %125, %299
  %302 = phi i32 [ %300, %299 ], [ 0, %125 ], [ 1, %124 ], [ 0, %122 ]
  %303 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  %304 = load i8, ptr %303, align 4, !tbaa !86
  %305 = or i8 %304, 8
  store i8 %305, ptr %303, align 4, !tbaa !86
  %306 = icmp eq ptr %3, null
  br i1 %306, label %308, label %307

307:                                              ; preds = %301
  store i32 %302, ptr %3, align 4, !tbaa !46
  br label %308

308:                                              ; preds = %307, %301
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #11
  ret void
}

declare float @BM_verts_calc_rotate_beauty(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #2

declare ptr @BM_face_split(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @BLI_polyfill_calc_arena(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BM_face_create_verts(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @BM_elem_attrs_copy(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @bmesh_face_swap_data(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BM_face_kill(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BM_mesh_beautify_fill(ptr noundef, ptr noundef, i32 noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext) local_unnamed_addr #2

declare zeroext i8 @BM_edge_face_pair(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BM_face_splits_check_legal(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [2 x float], align 4
  %6 = alloca [2 x float], align 4
  %7 = alloca [2 x float], align 4
  %8 = alloca [2 x float], align 4
  %9 = alloca [2 x float], align 4
  %10 = alloca [2 x float], align 4
  %11 = alloca [2 x float], align 4
  %12 = alloca [2 x float], align 8
  %13 = alloca [3 x [3 x float]], align 16
  %14 = shl nsw i32 %3, 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #11
  store i64 -36028797027352577, ptr %12, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %13) #11
  %15 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !42
  %17 = sext i32 %16 to i64
  %18 = shl nsw i64 %17, 3
  %19 = alloca i8, i64 %18, align 16
  %20 = sext i32 %14 to i64
  %21 = shl nsw i64 %20, 3
  %22 = alloca i8, i64 %21, align 16
  %23 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 4
  call void @axis_dominant_v3_to_m3(ptr noundef nonnull %13, ptr noundef nonnull %23) #11
  %24 = load i32, ptr %15, align 8, !tbaa !42
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %4
  %27 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 2
  br label %28

28:                                               ; preds = %26, %28
  %29 = phi i64 [ 0, %26 ], [ %38, %28 ]
  %30 = phi ptr [ %27, %26 ], [ %39, %28 ]
  %31 = load ptr, ptr %30, align 8, !tbaa !43
  %32 = getelementptr inbounds %struct.BMHeader, ptr %31, i64 0, i32 1
  %33 = trunc i64 %29 to i32
  store i32 %33, ptr %32, align 8, !tbaa !75
  %34 = getelementptr inbounds [2 x float], ptr %19, i64 %29
  %35 = getelementptr inbounds %struct.BMLoop, ptr %31, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !47
  %37 = getelementptr inbounds %struct.BMVert, ptr %36, i64 0, i32 2
  call void @mul_v2_m3v3(ptr noundef nonnull %34, ptr noundef nonnull %13, ptr noundef nonnull %37) #11
  %38 = add nuw nsw i64 %29, 1
  %39 = getelementptr inbounds %struct.BMLoop, ptr %31, i64 0, i32 6
  %40 = load i32, ptr %15, align 8, !tbaa !42
  %41 = sext i32 %40 to i64
  %42 = icmp slt i64 %38, %41
  br i1 %42, label %28, label %43, !llvm.loop !90

43:                                               ; preds = %28, %4
  %44 = phi i32 [ %24, %4 ], [ %40, %28 ]
  %45 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  %46 = load i8, ptr %45, align 4, !tbaa !86
  %47 = or i8 %46, 4
  store i8 %47, ptr %45, align 4, !tbaa !86
  %48 = call zeroext i8 @is_poly_convex_v2(ptr noundef nonnull %19, i32 noundef %44) #11
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %300

50:                                               ; preds = %43
  %51 = load i32, ptr %15, align 8, !tbaa !42
  %52 = load float, ptr %12, align 8, !tbaa !51
  %53 = icmp sgt i32 %51, 0
  br i1 %53, label %54, label %73

54:                                               ; preds = %50
  %55 = getelementptr inbounds [2 x float], ptr %12, i64 0, i64 1
  %56 = load float, ptr %55, align 4, !tbaa !51
  %57 = zext nneg i32 %51 to i64
  br label %58

58:                                               ; preds = %54, %58
  %59 = phi i64 [ 0, %54 ], [ %70, %58 ]
  %60 = phi float [ %56, %54 ], [ %69, %58 ]
  %61 = phi float [ %52, %54 ], [ %65, %58 ]
  %62 = getelementptr inbounds [2 x float], ptr %19, i64 %59
  %63 = load float, ptr %62, align 8, !tbaa !51
  %64 = fcmp ogt float %61, %63
  %65 = select i1 %64, float %61, float %63
  %66 = getelementptr inbounds [2 x float], ptr %19, i64 %59, i64 1
  %67 = load float, ptr %66, align 4, !tbaa !51
  %68 = fcmp ogt float %60, %67
  %69 = select i1 %68, float %60, float %67
  %70 = add nuw nsw i64 %59, 1
  %71 = icmp eq i64 %70, %57
  br i1 %71, label %72, label %58, !llvm.loop !91

72:                                               ; preds = %58
  store float %69, ptr %55, align 4, !tbaa !51
  br label %73

73:                                               ; preds = %72, %50
  %74 = phi float [ %65, %72 ], [ %52, %50 ]
  %75 = fadd float %74, 1.000000e+00
  store float %75, ptr %12, align 8, !tbaa !51
  %76 = getelementptr inbounds float, ptr %12, i64 1
  %77 = load float, ptr %76, align 4, !tbaa !51
  %78 = fadd float %77, 1.000000e+00
  store float %78, ptr %76, align 4, !tbaa !51
  %79 = icmp sgt i32 %3, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %73
  %81 = getelementptr inbounds float, ptr %7, i64 1
  %82 = zext nneg i32 %3 to i64
  br label %89

83:                                               ; preds = %89, %73
  %84 = icmp sgt i32 %3, 0
  br i1 %84, label %85, label %136

85:                                               ; preds = %83
  %86 = getelementptr inbounds float, ptr %9, i64 1
  %87 = getelementptr inbounds float, ptr %10, i64 1
  %88 = zext nneg i32 %3 to i64
  br label %145

89:                                               ; preds = %80, %89
  %90 = phi i64 [ 0, %80 ], [ %134, %89 ]
  %91 = phi i64 [ 0, %80 ], [ %133, %89 ]
  %92 = getelementptr inbounds [2 x float], ptr %22, i64 %91
  %93 = getelementptr inbounds [2 x ptr], ptr %2, i64 %90
  %94 = load ptr, ptr %93, align 8, !tbaa !43
  %95 = getelementptr inbounds %struct.BMHeader, ptr %94, i64 0, i32 1
  %96 = load i32, ptr %95, align 8, !tbaa !75
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [2 x float], ptr %19, i64 %97
  %99 = load float, ptr %98, align 8, !tbaa !51
  store float %99, ptr %92, align 16, !tbaa !51
  %100 = getelementptr inbounds float, ptr %98, i64 1
  %101 = load float, ptr %100, align 4, !tbaa !51
  %102 = getelementptr inbounds float, ptr %92, i64 1
  store float %101, ptr %102, align 4, !tbaa !51
  %103 = or disjoint i64 %91, 1
  %104 = getelementptr inbounds [2 x float], ptr %22, i64 %103
  %105 = getelementptr inbounds [2 x ptr], ptr %2, i64 %90, i64 1
  %106 = load ptr, ptr %105, align 8, !tbaa !43
  %107 = getelementptr inbounds %struct.BMHeader, ptr %106, i64 0, i32 1
  %108 = load i32, ptr %107, align 8, !tbaa !75
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [2 x float], ptr %19, i64 %109
  %111 = load float, ptr %110, align 8, !tbaa !51
  store float %111, ptr %104, align 8, !tbaa !51
  %112 = getelementptr inbounds float, ptr %110, i64 1
  %113 = load float, ptr %112, align 4, !tbaa !51
  %114 = getelementptr inbounds float, ptr %104, i64 1
  store float %113, ptr %114, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  call void @mid_v2_v2v2(ptr noundef nonnull %7, ptr noundef nonnull %92, ptr noundef nonnull %104) #11
  %115 = load float, ptr %92, align 16, !tbaa !51
  %116 = load float, ptr %7, align 4, !tbaa !51
  %117 = fsub float %115, %116
  store float %117, ptr %92, align 16, !tbaa !51
  %118 = load float, ptr %102, align 4, !tbaa !51
  %119 = load float, ptr %81, align 4, !tbaa !51
  %120 = fsub float %118, %119
  store float %120, ptr %102, align 4, !tbaa !51
  %121 = load float, ptr %104, align 8, !tbaa !51
  %122 = fsub float %121, %116
  store float %122, ptr %104, align 8, !tbaa !51
  %123 = load float, ptr %114, align 4, !tbaa !51
  %124 = fsub float %123, %119
  store float %124, ptr %114, align 4, !tbaa !51
  %125 = fmul float %117, 0x3FECCCCCC0000000
  store float %125, ptr %92, align 16, !tbaa !51
  %126 = fmul float %120, 0x3FECCCCCC0000000
  store float %126, ptr %102, align 4, !tbaa !51
  %127 = fmul float %122, 0x3FECCCCCC0000000
  store float %127, ptr %104, align 8, !tbaa !51
  %128 = fmul float %124, 0x3FECCCCCC0000000
  store float %128, ptr %114, align 4, !tbaa !51
  %129 = fadd float %116, %125
  store float %129, ptr %92, align 16, !tbaa !51
  %130 = fadd float %119, %126
  store float %130, ptr %102, align 4, !tbaa !51
  %131 = fadd float %116, %127
  store float %131, ptr %104, align 8, !tbaa !51
  %132 = fadd float %119, %128
  store float %132, ptr %114, align 4, !tbaa !51
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  %133 = add nuw nsw i64 %91, 2
  %134 = add nuw nsw i64 %90, 1
  %135 = icmp eq i64 %134, %82
  br i1 %135, label %83, label %89, !llvm.loop !92

136:                                              ; preds = %181, %83
  %137 = load i32, ptr %15, align 8, !tbaa !42
  %138 = icmp sgt i32 %137, 0
  br i1 %138, label %139, label %188

139:                                              ; preds = %136
  %140 = getelementptr inbounds float, ptr %8, i64 1
  %141 = getelementptr inbounds float, ptr %9, i64 1
  %142 = getelementptr inbounds float, ptr %6, i64 1
  %143 = icmp sgt i32 %3, 0
  %144 = zext nneg i32 %3 to i64
  br label %196

145:                                              ; preds = %85, %181
  %146 = phi i64 [ 0, %85 ], [ %182, %181 ]
  %147 = shl nuw nsw i64 %146, 1
  %148 = getelementptr inbounds [2 x float], ptr %22, i64 %147
  %149 = load float, ptr %148, align 16, !tbaa !51
  store float %149, ptr %9, align 4, !tbaa !51
  %150 = getelementptr inbounds float, ptr %148, i64 1
  %151 = load float, ptr %150, align 4, !tbaa !51
  store float %151, ptr %86, align 4, !tbaa !51
  %152 = or disjoint i64 %147, 1
  %153 = getelementptr inbounds [2 x float], ptr %22, i64 %152
  %154 = load float, ptr %153, align 8, !tbaa !51
  store float %154, ptr %10, align 4, !tbaa !51
  %155 = getelementptr inbounds float, ptr %153, i64 1
  %156 = load float, ptr %155, align 4, !tbaa !51
  store float %156, ptr %87, align 4, !tbaa !51
  call void @mid_v2_v2v2(ptr noundef nonnull %11, ptr noundef nonnull %9, ptr noundef nonnull %10) #11
  %157 = load i32, ptr %15, align 8, !tbaa !42
  %158 = icmp sgt i32 %157, 0
  br i1 %158, label %159, label %175

159:                                              ; preds = %145
  %160 = zext nneg i32 %157 to i64
  %161 = zext nneg i32 %157 to i64
  br label %162

162:                                              ; preds = %159, %162
  %163 = phi i64 [ 0, %159 ], [ %166, %162 ]
  %164 = phi i32 [ 0, %159 ], [ %173, %162 ]
  %165 = getelementptr inbounds [2 x float], ptr %19, i64 %163
  %166 = add nuw nsw i64 %163, 1
  %167 = icmp eq i64 %166, %160
  %168 = and i64 %166, 4294967295
  %169 = select i1 %167, i64 0, i64 %168
  %170 = getelementptr inbounds [2 x float], ptr %19, i64 %169
  %171 = call fastcc zeroext i8 @line_crosses_v2f(ptr noundef nonnull %165, ptr noundef nonnull %170, ptr noundef nonnull %11, ptr noundef nonnull %12), !range !93
  %172 = zext nneg i8 %171 to i32
  %173 = add nuw nsw i32 %164, %172
  %174 = icmp eq i64 %166, %161
  br i1 %174, label %175, label %162, !llvm.loop !94

175:                                              ; preds = %162, %145
  %176 = phi i32 [ 0, %145 ], [ %173, %162 ]
  %177 = and i32 %176, 1
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %175
  %180 = getelementptr inbounds [2 x ptr], ptr %2, i64 %146
  store ptr null, ptr %180, align 8, !tbaa !43
  br label %181

181:                                              ; preds = %175, %179
  %182 = add nuw nsw i64 %146, 1
  %183 = icmp eq i64 %182, %88
  br i1 %183, label %136, label %145, !llvm.loop !95

184:                                              ; preds = %242, %196
  %185 = load i32, ptr %15, align 8, !tbaa !42
  %186 = sext i32 %185 to i64
  %187 = icmp slt i64 %200, %186
  br i1 %187, label %196, label %188, !llvm.loop !96

188:                                              ; preds = %184, %136
  %189 = icmp sgt i32 %3, 0
  br i1 %189, label %190, label %300

190:                                              ; preds = %188
  %191 = getelementptr inbounds float, ptr %8, i64 1
  %192 = getelementptr inbounds float, ptr %9, i64 1
  %193 = getelementptr inbounds float, ptr %5, i64 1
  %194 = zext nneg i32 %3 to i64
  %195 = zext nneg i32 %3 to i64
  br label %245

196:                                              ; preds = %139, %184
  %197 = phi i64 [ 0, %139 ], [ %200, %184 ]
  %198 = phi i32 [ %137, %139 ], [ %185, %184 ]
  %199 = getelementptr inbounds [2 x float], ptr %19, i64 %197
  %200 = add nuw nsw i64 %197, 1
  %201 = trunc i64 %200 to i32
  %202 = srem i32 %201, %198
  %203 = zext nneg i32 %202 to i64
  %204 = getelementptr inbounds [2 x float], ptr %19, i64 %203
  %205 = load float, ptr %199, align 8, !tbaa !51
  store float %205, ptr %8, align 4, !tbaa !51
  %206 = getelementptr inbounds float, ptr %199, i64 1
  %207 = load float, ptr %206, align 4, !tbaa !51
  store float %207, ptr %140, align 4, !tbaa !51
  %208 = load float, ptr %204, align 8, !tbaa !51
  store float %208, ptr %9, align 4, !tbaa !51
  %209 = getelementptr inbounds float, ptr %204, i64 1
  %210 = load float, ptr %209, align 4, !tbaa !51
  store float %210, ptr %141, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  call void @mid_v2_v2v2(ptr noundef nonnull %6, ptr noundef nonnull %8, ptr noundef nonnull %9) #11
  %211 = load float, ptr %8, align 4, !tbaa !51
  %212 = load float, ptr %6, align 4, !tbaa !51
  %213 = fsub float %211, %212
  store float %213, ptr %8, align 4, !tbaa !51
  %214 = load float, ptr %140, align 4, !tbaa !51
  %215 = load float, ptr %142, align 4, !tbaa !51
  %216 = fsub float %214, %215
  store float %216, ptr %140, align 4, !tbaa !51
  %217 = load float, ptr %9, align 4, !tbaa !51
  %218 = fsub float %217, %212
  store float %218, ptr %9, align 4, !tbaa !51
  %219 = load float, ptr %141, align 4, !tbaa !51
  %220 = fsub float %219, %215
  store float %220, ptr %141, align 4, !tbaa !51
  %221 = fmul float %213, 0x3FF0000020000000
  store float %221, ptr %8, align 4, !tbaa !51
  %222 = fmul float %216, 0x3FF0000020000000
  store float %222, ptr %140, align 4, !tbaa !51
  %223 = fmul float %218, 0x3FF0000020000000
  store float %223, ptr %9, align 4, !tbaa !51
  %224 = fmul float %220, 0x3FF0000020000000
  store float %224, ptr %141, align 4, !tbaa !51
  %225 = fadd float %212, %221
  store float %225, ptr %8, align 4, !tbaa !51
  %226 = fadd float %215, %222
  store float %226, ptr %140, align 4, !tbaa !51
  %227 = fadd float %212, %223
  store float %227, ptr %9, align 4, !tbaa !51
  %228 = fadd float %215, %224
  store float %228, ptr %141, align 4, !tbaa !51
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  br i1 %143, label %229, label %184

229:                                              ; preds = %196, %242
  %230 = phi i64 [ %243, %242 ], [ 0, %196 ]
  %231 = getelementptr inbounds [2 x ptr], ptr %2, i64 %230
  %232 = load ptr, ptr %231, align 8, !tbaa !43
  %233 = icmp eq ptr %232, null
  br i1 %233, label %242, label %234

234:                                              ; preds = %229
  %235 = shl nuw nsw i64 %230, 1
  %236 = getelementptr inbounds [2 x float], ptr %22, i64 %235
  %237 = or disjoint i64 %235, 1
  %238 = getelementptr inbounds [2 x float], ptr %22, i64 %237
  %239 = call fastcc zeroext i8 @line_crosses_v2f(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %236, ptr noundef nonnull %238), !range !93
  %240 = icmp eq i8 %239, 0
  br i1 %240, label %242, label %241

241:                                              ; preds = %234
  store ptr null, ptr %231, align 8, !tbaa !43
  br label %242

242:                                              ; preds = %234, %241, %229
  %243 = add nuw nsw i64 %230, 1
  %244 = icmp eq i64 %243, %144
  br i1 %244, label %184, label %229, !llvm.loop !97

245:                                              ; preds = %190, %297
  %246 = phi i64 [ 0, %190 ], [ %298, %297 ]
  %247 = getelementptr inbounds [2 x ptr], ptr %2, i64 %246
  %248 = shl nuw nsw i64 %246, 1
  %249 = getelementptr inbounds [2 x float], ptr %22, i64 %248
  %250 = or disjoint i64 %248, 1
  %251 = getelementptr inbounds [2 x float], ptr %22, i64 %250
  %252 = getelementptr inbounds float, ptr %249, i64 1
  %253 = getelementptr inbounds float, ptr %251, i64 1
  br label %254

254:                                              ; preds = %245, %294
  %255 = phi i64 [ 0, %245 ], [ %295, %294 ]
  %256 = icmp eq i64 %255, %246
  br i1 %256, label %294, label %257

257:                                              ; preds = %254
  %258 = load ptr, ptr %247, align 8, !tbaa !43
  %259 = icmp eq ptr %258, null
  br i1 %259, label %294, label %260

260:                                              ; preds = %257
  %261 = getelementptr inbounds [2 x ptr], ptr %2, i64 %255
  %262 = load ptr, ptr %261, align 8, !tbaa !43
  %263 = icmp eq ptr %262, null
  br i1 %263, label %294, label %264

264:                                              ; preds = %260
  %265 = shl nuw nsw i64 %255, 1
  %266 = getelementptr inbounds [2 x float], ptr %22, i64 %265
  %267 = or disjoint i64 %265, 1
  %268 = getelementptr inbounds [2 x float], ptr %22, i64 %267
  %269 = load float, ptr %249, align 16, !tbaa !51
  store float %269, ptr %8, align 4, !tbaa !51
  %270 = load float, ptr %252, align 4, !tbaa !51
  store float %270, ptr %191, align 4, !tbaa !51
  %271 = load float, ptr %251, align 8, !tbaa !51
  store float %271, ptr %9, align 4, !tbaa !51
  %272 = load float, ptr %253, align 4, !tbaa !51
  store float %272, ptr %192, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  call void @mid_v2_v2v2(ptr noundef nonnull %5, ptr noundef nonnull %8, ptr noundef nonnull %9) #11
  %273 = load float, ptr %8, align 4, !tbaa !51
  %274 = load float, ptr %5, align 4, !tbaa !51
  %275 = fsub float %273, %274
  store float %275, ptr %8, align 4, !tbaa !51
  %276 = load float, ptr %191, align 4, !tbaa !51
  %277 = load float, ptr %193, align 4, !tbaa !51
  %278 = fsub float %276, %277
  store float %278, ptr %191, align 4, !tbaa !51
  %279 = load float, ptr %9, align 4, !tbaa !51
  %280 = fsub float %279, %274
  store float %280, ptr %9, align 4, !tbaa !51
  %281 = load float, ptr %192, align 4, !tbaa !51
  %282 = fsub float %281, %277
  store float %282, ptr %192, align 4, !tbaa !51
  %283 = fmul float %275, 0x3FF0000020000000
  store float %283, ptr %8, align 4, !tbaa !51
  %284 = fmul float %278, 0x3FF0000020000000
  store float %284, ptr %191, align 4, !tbaa !51
  %285 = fmul float %280, 0x3FF0000020000000
  store float %285, ptr %9, align 4, !tbaa !51
  %286 = fmul float %282, 0x3FF0000020000000
  store float %286, ptr %192, align 4, !tbaa !51
  %287 = fadd float %274, %283
  store float %287, ptr %8, align 4, !tbaa !51
  %288 = fadd float %277, %284
  store float %288, ptr %191, align 4, !tbaa !51
  %289 = fadd float %274, %285
  store float %289, ptr %9, align 4, !tbaa !51
  %290 = fadd float %277, %286
  store float %290, ptr %192, align 4, !tbaa !51
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  %291 = call fastcc zeroext i8 @line_crosses_v2f(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %266, ptr noundef nonnull %268), !range !93
  %292 = icmp eq i8 %291, 0
  br i1 %292, label %294, label %293

293:                                              ; preds = %264
  store ptr null, ptr %247, align 8, !tbaa !43
  br label %294

294:                                              ; preds = %254, %257, %260, %293, %264
  %295 = add nuw nsw i64 %255, 1
  %296 = icmp eq i64 %295, %195
  br i1 %296, label %297, label %254, !llvm.loop !98

297:                                              ; preds = %294
  %298 = add nuw nsw i64 %246, 1
  %299 = icmp eq i64 %298, %194
  br i1 %299, label %300, label %245, !llvm.loop !99

300:                                              ; preds = %297, %188, %43
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %13) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  ret void
}

declare zeroext i8 @is_poly_convex_v2(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @mid_v2_v2v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @line_crosses_v2f(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #8 {
  %5 = load float, ptr %2, align 4, !tbaa !51
  %6 = load float, ptr %0, align 4, !tbaa !51
  %7 = fsub float %5, %6
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !51
  %10 = getelementptr inbounds float, ptr %1, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !51
  %12 = fsub float %9, %11
  %13 = getelementptr inbounds float, ptr %2, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !51
  %15 = fsub float %9, %14
  %16 = load float, ptr %1, align 4, !tbaa !51
  %17 = fsub float %6, %16
  %18 = fmul float %15, %17
  %19 = tail call float @llvm.fmuladd.f32(float %7, float %12, float %18)
  %20 = fcmp olt float %19, 0.000000e+00
  br i1 %20, label %32, label %21

21:                                               ; preds = %4
  %22 = fcmp oeq float %19, 0.000000e+00
  br i1 %22, label %23, label %31

23:                                               ; preds = %21
  %24 = fcmp oeq float %6, %16
  %25 = fcmp oeq float %9, %11
  %26 = select i1 %24, i1 %25, i1 false
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = fcmp oeq float %5, %16
  %29 = fcmp oeq float %14, %11
  %30 = select i1 %28, i1 %29, i1 false
  br i1 %30, label %32, label %31

31:                                               ; preds = %27, %21
  br label %32

32:                                               ; preds = %4, %23, %27, %31
  %33 = phi i8 [ 1, %31 ], [ 0, %4 ], [ 0, %23 ], [ 0, %27 ]
  %34 = load float, ptr %3, align 4, !tbaa !51
  %35 = fsub float %34, %16
  %36 = fsub float %11, %9
  %37 = getelementptr inbounds float, ptr %3, i64 1
  %38 = load float, ptr %37, align 4, !tbaa !51
  %39 = fsub float %11, %38
  %40 = fsub float %16, %6
  %41 = fmul float %40, %39
  %42 = tail call float @llvm.fmuladd.f32(float %35, float %36, float %41)
  %43 = fcmp olt float %42, 0.000000e+00
  br i1 %43, label %55, label %44

44:                                               ; preds = %32
  %45 = fcmp oeq float %42, 0.000000e+00
  br i1 %45, label %46, label %54

46:                                               ; preds = %44
  %47 = fcmp oeq float %16, %6
  %48 = fcmp oeq float %11, %9
  %49 = select i1 %47, i1 %48, i1 false
  br i1 %49, label %55, label %50

50:                                               ; preds = %46
  %51 = fcmp oeq float %34, %6
  %52 = fcmp oeq float %38, %9
  %53 = select i1 %51, i1 %52, i1 false
  br i1 %53, label %55, label %54

54:                                               ; preds = %50, %44
  br label %55

55:                                               ; preds = %32, %46, %50, %54
  %56 = phi i8 [ 1, %54 ], [ 0, %32 ], [ 0, %46 ], [ 0, %50 ]
  %57 = fsub float %6, %5
  %58 = fmul float %57, %12
  %59 = tail call float @llvm.fmuladd.f32(float %40, float %15, float %58)
  %60 = fcmp olt float %59, 0.000000e+00
  br i1 %60, label %72, label %61

61:                                               ; preds = %55
  %62 = fcmp oeq float %59, 0.000000e+00
  br i1 %62, label %63, label %71

63:                                               ; preds = %61
  %64 = fcmp oeq float %6, %5
  %65 = fcmp oeq float %9, %14
  %66 = select i1 %64, i1 %65, i1 false
  br i1 %66, label %72, label %67

67:                                               ; preds = %63
  %68 = fcmp oeq float %16, %5
  %69 = fcmp oeq float %11, %14
  %70 = select i1 %68, i1 %69, i1 false
  br i1 %70, label %72, label %71

71:                                               ; preds = %67, %61
  br label %72

72:                                               ; preds = %55, %63, %67, %71
  %73 = phi i8 [ 0, %71 ], [ 1, %55 ], [ 1, %63 ], [ 1, %67 ]
  %74 = fsub float %16, %5
  %75 = fsub float %14, %38
  %76 = fsub float %14, %11
  %77 = fsub float %5, %34
  %78 = fmul float %76, %77
  %79 = tail call float @llvm.fmuladd.f32(float %74, float %75, float %78)
  %80 = fcmp olt float %79, 0.000000e+00
  br i1 %80, label %92, label %81

81:                                               ; preds = %72
  %82 = fcmp oeq float %79, 0.000000e+00
  br i1 %82, label %83, label %91

83:                                               ; preds = %81
  %84 = fcmp oeq float %5, %34
  %85 = fcmp oeq float %14, %38
  %86 = select i1 %84, i1 %85, i1 false
  br i1 %86, label %92, label %87

87:                                               ; preds = %83
  %88 = fcmp oeq float %16, %34
  %89 = fcmp oeq float %11, %38
  %90 = select i1 %88, i1 %89, i1 false
  br i1 %90, label %92, label %91

91:                                               ; preds = %87, %81
  br label %92

92:                                               ; preds = %72, %83, %87, %91
  %93 = phi i8 [ 1, %91 ], [ 0, %72 ], [ 0, %83 ], [ 0, %87 ]
  %94 = fsub float %14, %9
  %95 = fmul float %94, %77
  %96 = tail call float @llvm.fmuladd.f32(float %57, float %75, float %95)
  %97 = fcmp olt float %96, 0.000000e+00
  br i1 %97, label %109, label %98

98:                                               ; preds = %92
  %99 = fcmp oeq float %96, 0.000000e+00
  br i1 %99, label %100, label %108

100:                                              ; preds = %98
  %101 = fcmp oeq float %5, %34
  %102 = fcmp oeq float %14, %38
  %103 = select i1 %101, i1 %102, i1 false
  br i1 %103, label %109, label %104

104:                                              ; preds = %100
  %105 = fcmp oeq float %6, %34
  %106 = fcmp oeq float %9, %38
  %107 = select i1 %105, i1 %106, i1 false
  br i1 %107, label %109, label %108

108:                                              ; preds = %104, %98
  br label %109

109:                                              ; preds = %92, %100, %104, %108
  %110 = phi i8 [ 1, %108 ], [ 0, %92 ], [ 0, %100 ], [ 0, %104 ]
  %111 = icmp ne i8 %33, %56
  %112 = icmp ne i8 %56, %73
  %113 = or i1 %111, %112
  %114 = icmp ne i8 %73, %93
  %115 = or i1 %113, %114
  %116 = icmp eq i8 %110, %93
  %117 = or i1 %115, %116
  br i1 %117, label %118, label %160

118:                                              ; preds = %109
  %119 = fcmp olt float %9, %11
  %120 = select i1 %119, float %9, float %11
  %121 = fcmp ogt float %9, %11
  %122 = select i1 %121, float %9, float %11
  %123 = fcmp olt float %14, %38
  %124 = select i1 %123, float %14, float %38
  %125 = fcmp ogt float %14, %38
  %126 = select i1 %125, float %14, float %38
  %127 = tail call float @llvm.fabs.f32(float %12)
  %128 = fcmp olt float %127, 0x3EBE000000000000
  %129 = tail call float @llvm.fabs.f32(float %75)
  %130 = fcmp olt float %129, 0x3EBE000000000000
  %131 = select i1 %128, i1 %130, i1 false
  %132 = tail call float @llvm.fabs.f32(float %15)
  %133 = fcmp olt float %132, 0x3EBE000000000000
  %134 = select i1 %131, i1 %133, i1 false
  br i1 %134, label %135, label %147

135:                                              ; preds = %118
  %136 = fcmp ogt float %5, %34
  %137 = select i1 %136, float %5, float %34
  %138 = fcmp olt float %5, %34
  %139 = select i1 %138, float %5, float %34
  %140 = fcmp ogt float %6, %16
  %141 = select i1 %140, float %6, float %16
  %142 = fcmp olt float %6, %16
  %143 = select i1 %142, float %6, float %16
  %144 = fcmp oge float %137, %143
  %145 = fcmp ole float %139, %141
  %146 = select i1 %144, i1 %145, i1 false
  br label %160

147:                                              ; preds = %118
  %148 = tail call float @llvm.fabs.f32(float %17)
  %149 = fcmp olt float %148, 0x3EBE000000000000
  %150 = tail call float @llvm.fabs.f32(float %77)
  %151 = fcmp olt float %150, 0x3EBE000000000000
  %152 = select i1 %149, i1 %151, i1 false
  %153 = tail call float @llvm.fabs.f32(float %57)
  %154 = fcmp olt float %153, 0x3EBE000000000000
  %155 = select i1 %152, i1 %154, i1 false
  br i1 %155, label %156, label %160

156:                                              ; preds = %147
  %157 = fcmp oge float %126, %120
  %158 = fcmp ole float %124, %122
  %159 = select i1 %157, i1 %158, i1 false
  br label %160

160:                                              ; preds = %147, %109, %156, %135
  %161 = phi i1 [ %146, %135 ], [ %159, %156 ], [ true, %109 ], [ false, %147 ]
  %162 = zext i1 %161 to i8
  ret i8 %162
}

; Function Attrs: nounwind uwtable
define dso_local void @BM_face_splits_check_optimal(ptr noundef readnone %0, ptr nocapture noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = icmp sgt i32 %2, 0
  br i1 %6, label %7, label %25

7:                                                ; preds = %3
  %8 = zext nneg i32 %2 to i64
  br label %9

9:                                                ; preds = %7, %22
  %10 = phi i64 [ 0, %7 ], [ %23, %22 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  %11 = getelementptr inbounds [2 x ptr], ptr %1, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !43
  %13 = getelementptr inbounds %struct.BMLoop, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !47
  %15 = getelementptr inbounds [2 x ptr], ptr %1, i64 %10, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !43
  %17 = getelementptr inbounds %struct.BMLoop, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !47
  %19 = call ptr @BM_vert_pair_share_face_by_angle(ptr noundef %14, ptr noundef %18, ptr noundef nonnull %4, ptr noundef nonnull %5, i8 noundef zeroext 0) #11
  %20 = icmp eq ptr %19, %0
  br i1 %20, label %22, label %21

21:                                               ; preds = %9
  store ptr null, ptr %11, align 8, !tbaa !43
  br label %22

22:                                               ; preds = %21, %9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  %23 = add nuw nsw i64 %10, 1
  %24 = icmp eq i64 %23, %8
  br i1 %24, label %25, label %9, !llvm.loop !100

25:                                               ; preds = %22, %3
  ret void
}

declare ptr @BM_vert_pair_share_face_by_angle(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BM_face_as_array_loop_tri(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  store ptr %4, ptr %1, align 8, !tbaa !43
  %5 = getelementptr inbounds %struct.BMLoop, ptr %4, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !44
  %7 = getelementptr inbounds ptr, ptr %1, i64 1
  store ptr %6, ptr %7, align 8, !tbaa !43
  %8 = getelementptr inbounds %struct.BMLoop, ptr %6, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !44
  %10 = getelementptr inbounds ptr, ptr %1, i64 2
  store ptr %9, ptr %10, align 8, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BM_face_as_array_loop_quad(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  store ptr %4, ptr %1, align 8, !tbaa !43
  %5 = getelementptr inbounds %struct.BMLoop, ptr %4, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !44
  %7 = getelementptr inbounds ptr, ptr %1, i64 1
  store ptr %6, ptr %7, align 8, !tbaa !43
  %8 = getelementptr inbounds %struct.BMLoop, ptr %6, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !44
  %10 = getelementptr inbounds ptr, ptr %1, i64 2
  store ptr %9, ptr %10, align 8, !tbaa !43
  %11 = getelementptr inbounds %struct.BMLoop, ptr %9, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !44
  %13 = getelementptr inbounds ptr, ptr %1, i64 3
  store ptr %12, ptr %13, align 8, !tbaa !43
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BM_bmesh_calc_tessellation(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #11
  %6 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 3, ptr %6, align 4, !tbaa !61
  %7 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %7, align 8, !tbaa !63
  %8 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %8, align 8, !tbaa !64
  %9 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !101
  store ptr %10, ptr %4, align 8, !tbaa !65
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #11
  %11 = load ptr, ptr %8, align 8, !tbaa !64
  %12 = call ptr %11(ptr noundef nonnull %4) #11
  %13 = icmp eq ptr %12, null
  br i1 %13, label %125, label %14

14:                                               ; preds = %3, %119
  %15 = phi ptr [ %123, %119 ], [ %12, %3 ]
  %16 = phi i32 [ %121, %119 ], [ 0, %3 ]
  %17 = phi ptr [ %120, %119 ], [ null, %3 ]
  %18 = getelementptr inbounds %struct.BMFace, ptr %15, i64 0, i32 3
  %19 = load i32, ptr %18, align 8, !tbaa !42
  %20 = icmp slt i32 %19, 3
  br i1 %20, label %119, label %21

21:                                               ; preds = %14
  switch i32 %19, label %51 [
    i32 3, label %22
    i32 4, label %34
  ]

22:                                               ; preds = %21
  %23 = add nsw i32 %16, 1
  %24 = sext i32 %16 to i64
  %25 = getelementptr inbounds [3 x ptr], ptr %1, i64 %24
  %26 = getelementptr inbounds %struct.BMFace, ptr %15, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !34
  store ptr %27, ptr %25, align 8, !tbaa !43
  %28 = getelementptr inbounds %struct.BMLoop, ptr %27, i64 0, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !44
  %30 = getelementptr inbounds ptr, ptr %25, i64 1
  store ptr %29, ptr %30, align 8, !tbaa !43
  %31 = getelementptr inbounds %struct.BMLoop, ptr %29, i64 0, i32 6
  %32 = load ptr, ptr %31, align 8, !tbaa !44
  %33 = getelementptr inbounds ptr, ptr %25, i64 2
  store ptr %32, ptr %33, align 8, !tbaa !43
  br label %119

34:                                               ; preds = %21
  %35 = sext i32 %16 to i64
  %36 = getelementptr inbounds [3 x ptr], ptr %1, i64 %35
  %37 = add nsw i32 %16, 2
  %38 = getelementptr [3 x ptr], ptr %36, i64 1
  %39 = getelementptr inbounds %struct.BMFace, ptr %15, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !34
  store ptr %40, ptr %38, align 8, !tbaa !43
  store ptr %40, ptr %36, align 8, !tbaa !43
  %41 = getelementptr inbounds %struct.BMLoop, ptr %40, i64 0, i32 6
  %42 = load ptr, ptr %41, align 8, !tbaa !44
  %43 = getelementptr inbounds ptr, ptr %36, i64 1
  store ptr %42, ptr %43, align 8, !tbaa !43
  %44 = getelementptr inbounds %struct.BMLoop, ptr %42, i64 0, i32 6
  %45 = load ptr, ptr %44, align 8, !tbaa !44
  %46 = getelementptr [3 x ptr], ptr %36, i64 1, i64 1
  store ptr %45, ptr %46, align 8, !tbaa !43
  %47 = getelementptr inbounds ptr, ptr %36, i64 2
  store ptr %45, ptr %47, align 8, !tbaa !43
  %48 = getelementptr inbounds %struct.BMLoop, ptr %45, i64 0, i32 6
  %49 = load ptr, ptr %48, align 8, !tbaa !44
  %50 = getelementptr [3 x ptr], ptr %36, i64 1, i64 2
  store ptr %49, ptr %50, align 8, !tbaa !43
  br label %119

51:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #11
  %52 = load i32, ptr %18, align 8, !tbaa !42
  %53 = add i32 %52, -2
  %54 = icmp eq ptr %17, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = call ptr @BLI_memarena_new(i64 noundef 16376, ptr noundef nonnull @__func__.BM_bmesh_calc_tessellation) #11
  br label %57

57:                                               ; preds = %55, %51
  %58 = phi ptr [ %56, %55 ], [ %17, %51 ]
  %59 = sext i32 %53 to i64
  %60 = mul nsw i64 %59, 12
  %61 = call ptr @BLI_memarena_alloc(ptr noundef %58, i64 noundef %60) #11
  %62 = load i32, ptr %18, align 8, !tbaa !42
  %63 = sext i32 %62 to i64
  %64 = shl nsw i64 %63, 3
  %65 = call ptr @BLI_memarena_alloc(ptr noundef %58, i64 noundef %64) #11
  %66 = load i32, ptr %18, align 8, !tbaa !42
  %67 = sext i32 %66 to i64
  %68 = shl nsw i64 %67, 3
  %69 = call ptr @BLI_memarena_alloc(ptr noundef %58, i64 noundef %68) #11
  %70 = getelementptr inbounds %struct.BMFace, ptr %15, i64 0, i32 4
  call void @axis_dominant_v3_to_m3(ptr noundef nonnull %5, ptr noundef nonnull %70) #11
  %71 = getelementptr inbounds %struct.BMFace, ptr %15, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !34
  br label %73

73:                                               ; preds = %73, %57
  %74 = phi i64 [ %81, %73 ], [ 0, %57 ]
  %75 = phi ptr [ %83, %73 ], [ %72, %57 ]
  %76 = getelementptr inbounds ptr, ptr %65, i64 %74
  store ptr %75, ptr %76, align 8, !tbaa !43
  %77 = getelementptr inbounds [2 x float], ptr %69, i64 %74
  %78 = getelementptr inbounds %struct.BMLoop, ptr %75, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !47
  %80 = getelementptr inbounds %struct.BMVert, ptr %79, i64 0, i32 2
  call void @mul_v2_m3v3(ptr noundef %77, ptr noundef nonnull %5, ptr noundef nonnull %80) #11
  %81 = add nuw i64 %74, 1
  %82 = getelementptr inbounds %struct.BMLoop, ptr %75, i64 0, i32 6
  %83 = load ptr, ptr %82, align 8, !tbaa !44
  %84 = icmp eq ptr %83, %72
  br i1 %84, label %85, label %73, !llvm.loop !102

85:                                               ; preds = %73
  %86 = load i32, ptr %18, align 8, !tbaa !42
  call void @BLI_polyfill_calc_arena(ptr noundef %69, i32 noundef %86, i32 noundef -1, ptr noundef %61, ptr noundef %58) #11
  %87 = icmp sgt i32 %52, 2
  br i1 %87, label %88, label %117

88:                                               ; preds = %85
  %89 = sext i32 %16 to i64
  %90 = zext i32 %53 to i64
  br label %91

91:                                               ; preds = %88, %91
  %92 = phi i64 [ 0, %88 ], [ %113, %91 ]
  %93 = phi i64 [ %89, %88 ], [ %94, %91 ]
  %94 = add nsw i64 %93, 1
  %95 = getelementptr inbounds [3 x ptr], ptr %1, i64 %93
  %96 = getelementptr inbounds [3 x i32], ptr %61, i64 %92
  %97 = getelementptr inbounds i32, ptr %96, i64 2
  %98 = load i32, ptr %97, align 4, !tbaa !46
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds ptr, ptr %65, i64 %99
  %101 = load ptr, ptr %100, align 8, !tbaa !43
  store ptr %101, ptr %95, align 8, !tbaa !43
  %102 = getelementptr inbounds i32, ptr %96, i64 1
  %103 = load i32, ptr %102, align 4, !tbaa !46
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds ptr, ptr %65, i64 %104
  %106 = load ptr, ptr %105, align 8, !tbaa !43
  %107 = getelementptr inbounds ptr, ptr %95, i64 1
  store ptr %106, ptr %107, align 8, !tbaa !43
  %108 = load i32, ptr %96, align 4, !tbaa !46
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds ptr, ptr %65, i64 %109
  %111 = load ptr, ptr %110, align 8, !tbaa !43
  %112 = getelementptr inbounds ptr, ptr %95, i64 2
  store ptr %111, ptr %112, align 8, !tbaa !43
  %113 = add nuw nsw i64 %92, 1
  %114 = icmp eq i64 %113, %90
  br i1 %114, label %115, label %91, !llvm.loop !103

115:                                              ; preds = %91
  %116 = trunc i64 %94 to i32
  br label %117

117:                                              ; preds = %115, %85
  %118 = phi i32 [ %16, %85 ], [ %116, %115 ]
  call void @BLI_memarena_clear(ptr noundef %58) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #11
  br label %119

119:                                              ; preds = %14, %34, %117, %22
  %120 = phi ptr [ %17, %14 ], [ %17, %22 ], [ %17, %34 ], [ %58, %117 ]
  %121 = phi i32 [ %16, %14 ], [ %23, %22 ], [ %37, %34 ], [ %118, %117 ]
  %122 = load ptr, ptr %8, align 8, !tbaa !64
  %123 = call ptr %122(ptr noundef nonnull %4) #11
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %14, !llvm.loop !104

125:                                              ; preds = %119, %3
  %126 = phi ptr [ null, %3 ], [ %120, %119 ]
  %127 = phi i32 [ 0, %3 ], [ %121, %119 ]
  %128 = icmp eq ptr %126, null
  br i1 %128, label %130, label %129

129:                                              ; preds = %125
  call void @BLI_memarena_free(ptr noundef nonnull %126) #11
  br label %130

130:                                              ; preds = %129, %125
  store i32 %127, ptr %2, align 4, !tbaa !46
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #11
  ret void
}

declare ptr @BLI_memarena_new(i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_memarena_alloc(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @BLI_memarena_clear(ptr noundef) local_unnamed_addr #2

declare void @BLI_memarena_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

declare void @bmiter__face_of_vert_begin(ptr noundef) #2

declare ptr @bmiter__face_of_vert_step(ptr noundef) #2

declare void @bmiter__loop_of_vert_begin(ptr noundef) #2

declare ptr @bmiter__loop_of_vert_step(ptr noundef) #2

declare void @bmiter__face_of_edge_begin(ptr noundef) #2

declare ptr @bmiter__face_of_edge_step(ptr noundef) #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @acosf(float noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }

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
!34 = !{!35, !37, i64 24}
!35 = !{!"BMFace", !36, i64 0, !37, i64 16, !37, i64 24, !40, i64 32, !38, i64 36, !41, i64 48}
!36 = !{!"BMHeader", !37, i64 0, !40, i64 8, !38, i64 12, !38, i64 13, !38, i64 14}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!"short", !38, i64 0}
!42 = !{!35, !40, i64 32}
!43 = !{!37, !37, i64 0}
!44 = !{!45, !37, i64 56}
!45 = !{!"BMLoop", !36, i64 0, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64}
!46 = !{!40, !40, i64 0}
!47 = !{!45, !37, i64 16}
!48 = distinct !{!48, !49, !50}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!"llvm.loop.unroll.disable"}
!51 = !{!52, !52, i64 0}
!52 = !{!"float", !38, i64 0}
!53 = distinct !{!53, !49, !50}
!54 = distinct !{!54, !49, !50}
!55 = distinct !{!55, !49, !50}
!56 = distinct !{!56, !49, !50}
!57 = !{!45, !37, i64 64}
!58 = !{!45, !37, i64 24}
!59 = distinct !{!59, !49, !50}
!60 = distinct !{!60, !49, !50}
!61 = !{!62, !38, i64 60}
!62 = !{!"BMIter", !38, i64 0, !37, i64 40, !37, i64 48, !40, i64 56, !38, i64 60}
!63 = !{!62, !37, i64 40}
!64 = !{!62, !37, i64 48}
!65 = !{!38, !38, i64 0}
!66 = distinct !{!66, !49, !50}
!67 = !{!68, !37, i64 24}
!68 = !{!"BMEdge", !36, i64 0, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !69, i64 48, !69, i64 64}
!69 = !{!"BMDiskLink", !37, i64 0, !37, i64 8}
!70 = !{!68, !37, i64 32}
!71 = !{!45, !37, i64 32}
!72 = distinct !{!72, !49, !50}
!73 = distinct !{!73, !49, !50}
!74 = distinct !{!74, !49, !50}
!75 = !{!36, !40, i64 8}
!76 = distinct !{!76, !49, !50}
!77 = distinct !{!77, !49, !50}
!78 = distinct !{!78, !49, !50}
!79 = distinct !{!79, !49, !50}
!80 = !{!36, !38, i64 13}
!81 = distinct !{!81, !49, !50}
!82 = !{!45, !37, i64 40}
!83 = distinct !{!83, !49, !50}
!84 = distinct !{!84, !49, !50}
!85 = distinct !{!85, !49, !50}
!86 = !{!87, !38, i64 28}
!87 = !{!"BMesh", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !38, i64 28, !38, i64 29, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !40, i64 88, !40, i64 92, !40, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !40, i64 128, !37, i64 136, !88, i64 144, !88, i64 344, !88, i64 544, !88, i64 744, !41, i64 944, !40, i64 948, !40, i64 952, !40, i64 956, !89, i64 960, !37, i64 976, !89, i64 984, !37, i64 1000}
!88 = !{!"CustomData", !37, i64 0, !38, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !37, i64 184, !37, i64 192}
!89 = !{!"ListBase", !37, i64 0, !37, i64 8}
!90 = distinct !{!90, !49, !50}
!91 = distinct !{!91, !49, !50}
!92 = distinct !{!92, !49, !50}
!93 = !{i8 0, i8 2}
!94 = distinct !{!94, !49, !50}
!95 = distinct !{!95, !49, !50}
!96 = distinct !{!96, !49, !50}
!97 = distinct !{!97, !49, !50}
!98 = distinct !{!98, !49, !50}
!99 = distinct !{!99, !49, !50}
!100 = distinct !{!100, !49, !50}
!101 = !{!87, !37, i64 56}
!102 = distinct !{!102, !49, !50}
!103 = distinct !{!103, !49, !50}
!104 = distinct !{!104, !49, !50}
