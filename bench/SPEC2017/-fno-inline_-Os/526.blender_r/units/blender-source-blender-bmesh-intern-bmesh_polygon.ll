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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_face_calc_tessellation(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [3 x [3 x float]], align 16
  %5 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !42
  switch i32 %8, label %30 [
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
  br label %49

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
  store <4 x i32> <i32 0, i32 1, i32 2, i32 0>, ptr %2, align 4, !tbaa !46
  %28 = getelementptr inbounds [3 x i32], ptr %2, i64 1, i64 1
  store i32 2, ptr %28, align 4, !tbaa !46
  %29 = getelementptr inbounds [3 x i32], ptr %2, i64 1, i64 2
  store i32 3, ptr %29, align 4, !tbaa !46
  br label %49

30:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #17
  %31 = sext i32 %8 to i64
  %32 = shl nsw i64 %31, 3
  %33 = alloca i8, i64 %32, align 16
  %34 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 4
  call void @axis_dominant_v3_to_m3(ptr noundef nonnull %4, ptr noundef nonnull %34) #18
  br label %35

35:                                               ; preds = %35, %30
  %36 = phi i64 [ %43, %35 ], [ 0, %30 ]
  %37 = phi ptr [ %45, %35 ], [ %6, %30 ]
  %38 = getelementptr inbounds [2 x float], ptr %33, i64 %36
  %39 = getelementptr inbounds %struct.BMLoop, ptr %37, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !47
  %41 = getelementptr inbounds %struct.BMVert, ptr %40, i64 0, i32 2
  call void @mul_v2_m3v3(ptr noundef nonnull %38, ptr noundef nonnull %4, ptr noundef nonnull %41) #18
  %42 = getelementptr inbounds ptr, ptr %1, i64 %36
  store ptr %37, ptr %42, align 8, !tbaa !43
  %43 = add nuw i64 %36, 1
  %44 = getelementptr inbounds %struct.BMLoop, ptr %37, i64 0, i32 6
  %45 = load ptr, ptr %44, align 8, !tbaa !44
  %46 = icmp eq ptr %45, %6
  br i1 %46, label %47, label %35, !llvm.loop !48

47:                                               ; preds = %35
  %48 = load i32, ptr %7, align 8, !tbaa !42
  call void @BLI_polyfill_calc(ptr noundef nonnull %33, i32 noundef %48, i32 noundef -1, ptr noundef %2) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #17
  br label %49

49:                                               ; preds = %18, %47, %9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @axis_dominant_v3_to_m3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_v2_m3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_polyfill_calc(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
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
  %10 = phi ptr [ %8, %1 ], [ %19, %9 ]
  %11 = phi i32 [ 0, %1 ], [ %12, %9 ]
  %12 = add i32 %11, 1
  %13 = zext i32 %11 to i64
  %14 = getelementptr inbounds [3 x float], ptr %6, i64 %13
  %15 = getelementptr inbounds %struct.BMLoop, ptr %10, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !47
  %17 = getelementptr inbounds %struct.BMVert, ptr %16, i64 0, i32 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %14, ptr noundef nonnull %17) #19
  %18 = getelementptr inbounds %struct.BMLoop, ptr %10, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !44
  %20 = icmp eq ptr %19, %8
  br i1 %20, label %21, label %9, !llvm.loop !50

21:                                               ; preds = %9
  switch i32 %3, label %31 [
    i32 3, label %22
    i32 4, label %26
  ]

22:                                               ; preds = %21
  %23 = getelementptr inbounds [3 x float], ptr %6, i64 1
  %24 = getelementptr inbounds [3 x float], ptr %6, i64 2
  %25 = call float @area_tri_v3(ptr noundef nonnull %6, ptr noundef nonnull %23, ptr noundef nonnull %24) #18
  br label %33

26:                                               ; preds = %21
  %27 = getelementptr inbounds [3 x float], ptr %6, i64 1
  %28 = getelementptr inbounds [3 x float], ptr %6, i64 2
  %29 = getelementptr inbounds [3 x float], ptr %6, i64 3
  %30 = call float @area_quad_v3(ptr noundef nonnull %6, ptr noundef nonnull %27, ptr noundef nonnull %28, ptr noundef nonnull %29) #18
  br label %33

31:                                               ; preds = %21
  %32 = call float @area_poly_v3(ptr noundef nonnull %6, i32 noundef %3) #18
  br label %33

33:                                               ; preds = %26, %31, %22
  %34 = phi float [ %25, %22 ], [ %30, %26 ], [ %32, %31 ]
  ret float %34
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !51 {
  %3 = load float, ptr %1, align 4, !tbaa !52
  store float %3, ptr %0, align 4, !tbaa !52
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !52
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !52
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !52
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !52
  ret void
}

; Function Attrs: optsize
declare float @area_tri_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @area_quad_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @area_poly_v3(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define dso_local float @BM_face_calc_perimeter(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  br label %4

4:                                                ; preds = %4, %1
  %5 = phi ptr [ %3, %1 ], [ %17, %4 ]
  %6 = phi float [ 0.000000e+00, %1 ], [ %16, %4 ]
  %7 = getelementptr inbounds %struct.BMLoop, ptr %5, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = getelementptr inbounds %struct.BMVert, ptr %8, i64 0, i32 2
  %10 = getelementptr inbounds %struct.BMLoop, ptr %5, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !44
  %12 = getelementptr inbounds %struct.BMLoop, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !47
  %14 = getelementptr inbounds %struct.BMVert, ptr %13, i64 0, i32 2
  %15 = tail call fastcc float @len_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %14) #19
  %16 = fadd float %6, %15
  %17 = load ptr, ptr %10, align 8, !tbaa !44
  %18 = icmp eq ptr %17, %3
  br i1 %18, label %19, label %4, !llvm.loop !54

19:                                               ; preds = %4
  ret float %16
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !55 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #17
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #19
  %4 = call fastcc float @len_v3(ptr noundef nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #17
  ret float %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_vert_tri_calc_plane(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca [3 x float], align 8
  %4 = alloca [3 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) @__const.BM_vert_tri_calc_plane.order, i64 12, i1 false)
  %5 = load ptr, ptr %0, align 8, !tbaa !43
  %6 = getelementptr inbounds %struct.BMVert, ptr %5, i64 0, i32 2
  %7 = getelementptr inbounds ptr, ptr %0, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !43
  %9 = getelementptr inbounds %struct.BMVert, ptr %8, i64 0, i32 2
  %10 = tail call fastcc float @len_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %9) #19
  %11 = load ptr, ptr %7, align 8, !tbaa !43
  %12 = getelementptr inbounds %struct.BMVert, ptr %11, i64 0, i32 2
  %13 = getelementptr inbounds ptr, ptr %0, i64 2
  %14 = load ptr, ptr %13, align 8, !tbaa !43
  %15 = getelementptr inbounds %struct.BMVert, ptr %14, i64 0, i32 2
  %16 = tail call fastcc float @len_v3v3(ptr noundef nonnull %12, ptr noundef nonnull %15) #19
  %17 = load ptr, ptr %13, align 8, !tbaa !43
  %18 = getelementptr inbounds %struct.BMVert, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %0, align 8, !tbaa !43
  %20 = getelementptr inbounds %struct.BMVert, ptr %19, i64 0, i32 2
  %21 = tail call fastcc float @len_v3v3(ptr noundef nonnull %18, ptr noundef nonnull %20) #19
  %22 = insertelement <2 x float> poison, float %16, i64 0
  %23 = insertelement <2 x float> %22, float %21, i64 1
  %24 = insertelement <2 x float> poison, float %21, i64 0
  %25 = insertelement <2 x float> %24, float %10, i64 1
  %26 = fsub <2 x float> %23, %25
  %27 = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %26)
  store <2 x float> %27, ptr %3, align 8, !tbaa !52
  %28 = fsub float %10, %16
  %29 = tail call float @llvm.fabs.f32(float %28)
  %30 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  store float %29, ptr %30, align 8, !tbaa !52
  call void @axis_sort_v3(ptr noundef nonnull %3, ptr noundef nonnull %4) #18
  %31 = load i32, ptr %4, align 4, !tbaa !46
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds ptr, ptr %0, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !43
  %35 = getelementptr inbounds %struct.BMVert, ptr %34, i64 0, i32 2
  %36 = add nsw i32 %31, 1
  %37 = srem i32 %36, 3
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds ptr, ptr %0, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !43
  %41 = getelementptr inbounds %struct.BMVert, ptr %40, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef %1, ptr noundef nonnull %35, ptr noundef nonnull %41) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #17
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

; Function Attrs: optsize
declare void @axis_sort_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 !PGOFuncName !56 {
  %4 = load float, ptr %1, align 4, !tbaa !52
  %5 = load float, ptr %2, align 4, !tbaa !52
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !52
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !52
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !52
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !52
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !52
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !52
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !52
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_face_calc_plane(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca [3 x ptr], align 16
  %4 = alloca [4 x ptr], align 16
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !42
  switch i32 %9, label %28 [
    i32 3, label %10
    i32 4, label %11
  ]

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call void @BM_face_as_array_vert_tri(ptr noundef nonnull %0, ptr noundef nonnull %3) #19
  call void @BM_vert_tri_calc_plane(ptr noundef nonnull %3, ptr noundef %1) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  br label %38

11:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #17
  call void @BM_face_as_array_vert_quad(ptr noundef nonnull %0, ptr noundef nonnull %4) #19
  %12 = getelementptr inbounds [4 x ptr], ptr %4, i64 0, i64 3
  %13 = load ptr, ptr %12, align 8, !tbaa !43
  %14 = getelementptr inbounds %struct.BMVert, ptr %13, i64 0, i32 2
  %15 = getelementptr inbounds [4 x ptr], ptr %4, i64 0, i64 2
  %16 = load ptr, ptr %15, align 16, !tbaa !43
  %17 = getelementptr inbounds %struct.BMVert, ptr %16, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %14, ptr noundef nonnull %17) #19
  %18 = load ptr, ptr %4, align 16, !tbaa !43
  %19 = getelementptr inbounds %struct.BMVert, ptr %18, i64 0, i32 2
  %20 = getelementptr inbounds [4 x ptr], ptr %4, i64 0, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !43
  %22 = getelementptr inbounds %struct.BMVert, ptr %21, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %19, ptr noundef nonnull %22) #19
  call fastcc void @add_v3_v3v3(ptr noundef %1, ptr noundef nonnull %6, ptr noundef nonnull %7) #19
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %19, ptr noundef nonnull %14) #19
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %22, ptr noundef nonnull %17) #19
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #19
  %23 = tail call fastcc float @len_squared_v3(ptr noundef %1) #19
  %24 = call fastcc float @len_squared_v3(ptr noundef nonnull %5) #19
  %25 = fcmp olt float %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %11
  call fastcc void @copy_v3_v3(ptr noundef %1, ptr noundef nonnull %5) #19
  br label %27

27:                                               ; preds = %26, %11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #17
  br label %38

28:                                               ; preds = %2
  %29 = tail call ptr @BM_face_find_longest_loop(ptr noundef nonnull %0) #18
  %30 = getelementptr inbounds %struct.BMLoop, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !47
  %32 = getelementptr inbounds %struct.BMVert, ptr %31, i64 0, i32 2
  %33 = getelementptr inbounds %struct.BMLoop, ptr %29, i64 0, i32 6
  %34 = load ptr, ptr %33, align 8, !tbaa !44
  %35 = getelementptr inbounds %struct.BMLoop, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !47
  %37 = getelementptr inbounds %struct.BMVert, ptr %36, i64 0, i32 2
  tail call fastcc void @sub_v3_v3v3(ptr noundef %1, ptr noundef nonnull %32, ptr noundef nonnull %37) #19
  br label %38

38:                                               ; preds = %27, %28, %10
  %39 = tail call fastcc float @normalize_v3(ptr noundef %1) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BM_face_as_array_vert_tri(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #8 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BM_face_as_array_vert_quad(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #8 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 !PGOFuncName !57 {
  %4 = load float, ptr %1, align 4, !tbaa !52
  %5 = load float, ptr %2, align 4, !tbaa !52
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !52
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !52
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !52
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !52
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !52
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !52
  %17 = fadd float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_squared_v3(ptr nocapture noundef readonly %0) unnamed_addr #9 !PGOFuncName !58 {
  %2 = load float, ptr %0, align 4, !tbaa !52
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !52
  %5 = fmul float %4, %4
  %6 = tail call float @llvm.fmuladd.f32(float %2, float %2, float %5)
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !52
  %9 = tail call float @llvm.fmuladd.f32(float %8, float %8, float %6)
  ret float %9
}

; Function Attrs: optsize
declare ptr @BM_face_find_longest_loop(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3(ptr nocapture noundef %0) unnamed_addr #5 !PGOFuncName !59 {
  %2 = tail call fastcc float @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #19
  ret float %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_face_calc_center_bounds(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [3 x float], align 8
  %4 = alloca [3 x float], align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #17
  %5 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  store float 0x46293E5940000000, ptr %5, align 8, !tbaa !52
  store <2 x float> <float 0x46293E5940000000, float 0x46293E5940000000>, ptr %3, align 8, !tbaa !52
  %6 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  store float 0xC6293E5940000000, ptr %6, align 8, !tbaa !52
  store <2 x float> <float 0xC6293E5940000000, float 0xC6293E5940000000>, ptr %4, align 8, !tbaa !52
  %7 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  br label %9

9:                                                ; preds = %9, %2
  %10 = phi ptr [ %8, %2 ], [ %15, %9 ]
  %11 = getelementptr inbounds %struct.BMLoop, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !47
  %13 = getelementptr inbounds %struct.BMVert, ptr %12, i64 0, i32 2
  call void @minmax_v3v3_v3(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %13) #18
  %14 = getelementptr inbounds %struct.BMLoop, ptr %10, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !44
  %16 = icmp eq ptr %15, %8
  br i1 %16, label %17, label %9, !llvm.loop !60

17:                                               ; preds = %9
  call void @mid_v3_v3v3(ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #17
  ret void
}

; Function Attrs: optsize
declare void @minmax_v3v3_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BM_face_calc_center_mean(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #10 {
  tail call fastcc void @zero_v3(ptr noundef %1) #19
  %3 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  br label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %4, %2 ], [ %11, %5 ]
  %7 = getelementptr inbounds %struct.BMLoop, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = getelementptr inbounds %struct.BMVert, ptr %8, i64 0, i32 2
  tail call fastcc void @add_v3_v3(ptr noundef %1, ptr noundef nonnull %9) #19
  %10 = getelementptr inbounds %struct.BMLoop, ptr %6, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !44
  %12 = icmp eq ptr %11, %4
  br i1 %12, label %13, label %5, !llvm.loop !61

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !42
  %16 = sitofp i32 %15 to float
  %17 = fdiv float 1.000000e+00, %16
  tail call fastcc void @mul_v3_fl(ptr noundef %1, float noundef %17) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #11 !PGOFuncName !62 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !52
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !63 {
  %3 = load float, ptr %1, align 4, !tbaa !52
  %4 = load float, ptr %0, align 4, !tbaa !52
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !52
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !52
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !52
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !52
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !52
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !52
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #3 !PGOFuncName !64 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !52
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !52
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !52
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !52
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_face_calc_center_mean_weighted(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @zero_v3(ptr noundef %1) #19
  %3 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.BMLoop, ptr %4, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !65
  %7 = getelementptr inbounds %struct.BMLoop, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !66
  %9 = tail call float @BM_edge_calc_length(ptr noundef %8) #18
  br label %10

10:                                               ; preds = %10, %2
  %11 = phi float [ %9, %2 ], [ %16, %10 ]
  %12 = phi float [ 0.000000e+00, %2 ], [ %21, %10 ]
  %13 = phi ptr [ %4, %2 ], [ %23, %10 ]
  %14 = getelementptr inbounds %struct.BMLoop, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !66
  %16 = tail call float @BM_edge_calc_length(ptr noundef %15) #18
  %17 = fadd float %11, %16
  %18 = getelementptr inbounds %struct.BMLoop, ptr %13, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !47
  %20 = getelementptr inbounds %struct.BMVert, ptr %19, i64 0, i32 2
  tail call fastcc void @madd_v3_v3fl(ptr noundef %1, ptr noundef nonnull %20, float noundef %17) #19
  %21 = fadd float %12, %17
  %22 = getelementptr inbounds %struct.BMLoop, ptr %13, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !44
  %24 = icmp eq ptr %23, %4
  br i1 %24, label %25, label %10, !llvm.loop !67

25:                                               ; preds = %10
  %26 = fcmp une float %21, 0.000000e+00
  br i1 %26, label %27, label %29

27:                                               ; preds = %25
  %28 = fdiv float 1.000000e+00, %21
  tail call fastcc void @mul_v3_fl(ptr noundef %1, float noundef %28) #19
  br label %29

29:                                               ; preds = %27, %25
  ret void
}

; Function Attrs: optsize
declare float @BM_edge_calc_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v3_v3fl(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #3 !PGOFuncName !68 {
  %4 = load float, ptr %1, align 4, !tbaa !52
  %5 = load float, ptr %0, align 4, !tbaa !52
  %6 = tail call float @llvm.fmuladd.f32(float %4, float %2, float %5)
  store float %6, ptr %0, align 4, !tbaa !52
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !52
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !52
  %11 = tail call float @llvm.fmuladd.f32(float %8, float %2, float %10)
  store float %11, ptr %9, align 4, !tbaa !52
  %12 = getelementptr inbounds float, ptr %1, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !52
  %14 = getelementptr inbounds float, ptr %0, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !52
  %16 = tail call float @llvm.fmuladd.f32(float %13, float %2, float %15)
  store float %16, ptr %14, align 4, !tbaa !52
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @poly_rotate_plane(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [3 x [3 x float]], align 16
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #17
  %6 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  store float 0.000000e+00, ptr %6, align 4, !tbaa !52
  call void @axis_dominant_v3_to_m3(ptr noundef nonnull %4, ptr noundef %0) #18
  %7 = icmp eq i32 %2, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %3
  %9 = zext i32 %2 to i64
  br label %10

10:                                               ; preds = %8, %10
  %11 = phi i64 [ 0, %8 ], [ %13, %10 ]
  %12 = getelementptr inbounds [3 x float], ptr %1, i64 %11
  call void @mul_v2_m3v3(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef %12) #18
  call fastcc void @copy_v3_v3(ptr noundef %12, ptr noundef nonnull %5) #19
  %13 = add nuw nsw i64 %11, 1
  %14 = icmp eq i64 %13, %9
  br i1 %14, label %15, label %10, !llvm.loop !69

15:                                               ; preds = %10, %3
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_edge_normals_update(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #17
  %3 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %2, ptr noundef null, i8 noundef zeroext 8, ptr noundef %0) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %7, %5 ], [ %3, %1 ]
  call void @BM_face_normal_update(ptr noundef nonnull %6) #19
  %7 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %2) #19
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %5, !llvm.loop !70

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !71
  call void @BM_vert_normal_update(ptr noundef %11) #19
  %12 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !74
  call void @BM_vert_normal_update(ptr noundef %13) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !75 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3) #19
  %5 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #19
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_face_normal_update(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 4
  %3 = tail call float @BM_face_calc_normal(ptr noundef %0, ptr noundef nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 !PGOFuncName !76 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !77
  %4 = tail call ptr %3(ptr noundef %0) #18
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_vert_normal_update(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.BMIter, align 8
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #17
  %5 = getelementptr inbounds %struct.BMVert, ptr %0, i64 0, i32 3
  tail call fastcc void @zero_v3(ptr noundef nonnull %5) #19
  %6 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %2, ptr noundef null, i8 noundef zeroext 6, ptr noundef %0) #19
  %7 = icmp eq ptr %6, null
  br i1 %7, label %38, label %8

8:                                                ; preds = %1, %8
  %9 = phi ptr [ %33, %8 ], [ %6, %1 ]
  %10 = getelementptr inbounds %struct.BMLoop, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !47
  %12 = getelementptr inbounds %struct.BMVert, ptr %11, i64 0, i32 2
  %13 = getelementptr inbounds %struct.BMLoop, ptr %9, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !65
  %15 = getelementptr inbounds %struct.BMLoop, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !47
  %17 = getelementptr inbounds %struct.BMVert, ptr %16, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %12, ptr noundef nonnull %17) #19
  %18 = getelementptr inbounds %struct.BMLoop, ptr %9, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !44
  %20 = getelementptr inbounds %struct.BMLoop, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !47
  %22 = getelementptr inbounds %struct.BMVert, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %10, align 8, !tbaa !47
  %24 = getelementptr inbounds %struct.BMVert, ptr %23, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %22, ptr noundef nonnull %24) #19
  %25 = call fastcc float @normalize_v3(ptr noundef nonnull %3) #19
  %26 = call fastcc float @normalize_v3(ptr noundef nonnull %4) #19
  %27 = call fastcc float @dot_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %4) #19
  %28 = fneg float %27
  %29 = call fastcc float @saacos(float noundef %28) #19
  %30 = getelementptr inbounds %struct.BMLoop, ptr %9, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !79
  %32 = getelementptr inbounds %struct.BMFace, ptr %31, i64 0, i32 4
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %5, ptr noundef nonnull %32, float noundef %29) #19
  %33 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %2) #19
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %8, !llvm.loop !80

35:                                               ; preds = %8
  br i1 %7, label %38, label %36

36:                                               ; preds = %35
  %37 = call fastcc float @normalize_v3(ptr noundef nonnull %5) #19
  br label %38

38:                                               ; preds = %1, %36, %35
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal fastcc float @saacos(float noundef %0) unnamed_addr #12 !PGOFuncName !81 {
  %2 = fcmp ugt float %0, -1.000000e+00
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = fcmp ult float %0, 1.000000e+00
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call float @acosf(float noundef %0) #18
  br label %7

7:                                                ; preds = %3, %1, %5
  %8 = phi float [ %6, %5 ], [ 0x400921FB60000000, %1 ], [ 0.000000e+00, %3 ]
  ret float %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !PGOFuncName !82 {
  %3 = load float, ptr %0, align 4, !tbaa !52
  %4 = load float, ptr %1, align 4, !tbaa !52
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !52
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !52
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !52
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !52
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_vert_normal_update_all(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #17
  %3 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %2, ptr noundef null, i8 noundef zeroext 5, ptr noundef %0) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %7, %5 ], [ %3, %1 ]
  call void @BM_face_normal_update(ptr noundef nonnull %6) #19
  %7 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %2) #19
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %5, !llvm.loop !83

9:                                                ; preds = %5, %1
  call void @BM_vert_normal_update(ptr noundef %0) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @BM_face_calc_normal(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !42
  switch i32 %4, label %44 [
    i32 4, label %5
    i32 3, label %27
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = getelementptr inbounds %struct.BMLoop, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  %10 = getelementptr inbounds %struct.BMVert, ptr %9, i64 0, i32 2
  %11 = getelementptr inbounds %struct.BMLoop, ptr %7, i64 0, i32 6
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
  %26 = tail call float @normal_quad_v3(ptr noundef %1, ptr noundef nonnull %10, ptr noundef nonnull %15, ptr noundef nonnull %20, ptr noundef nonnull %25) #18
  br label %46

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !34
  %30 = getelementptr inbounds %struct.BMLoop, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !47
  %32 = getelementptr inbounds %struct.BMVert, ptr %31, i64 0, i32 2
  %33 = getelementptr inbounds %struct.BMLoop, ptr %29, i64 0, i32 6
  %34 = load ptr, ptr %33, align 8, !tbaa !44
  %35 = getelementptr inbounds %struct.BMLoop, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !47
  %37 = getelementptr inbounds %struct.BMVert, ptr %36, i64 0, i32 2
  %38 = getelementptr inbounds %struct.BMLoop, ptr %34, i64 0, i32 6
  %39 = load ptr, ptr %38, align 8, !tbaa !44
  %40 = getelementptr inbounds %struct.BMLoop, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !47
  %42 = getelementptr inbounds %struct.BMVert, ptr %41, i64 0, i32 2
  %43 = tail call float @normal_tri_v3(ptr noundef %1, ptr noundef nonnull %32, ptr noundef nonnull %37, ptr noundef nonnull %42) #18
  br label %46

44:                                               ; preds = %2
  %45 = tail call fastcc float @bm_face_calc_poly_normal(ptr noundef nonnull %0, ptr noundef %1) #19
  br label %46

46:                                               ; preds = %44, %27, %5
  %47 = phi float [ %45, %44 ], [ %43, %27 ], [ %26, %5 ]
  ret float %47
}

; Function Attrs: optsize
declare float @normal_quad_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @normal_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc float @bm_face_calc_poly_normal(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #4 !PGOFuncName !84 {
  %3 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.BMLoop, ptr %4, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !65
  %7 = getelementptr inbounds %struct.BMLoop, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = getelementptr inbounds %struct.BMVert, ptr %8, i64 0, i32 2
  %10 = getelementptr inbounds %struct.BMLoop, ptr %4, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !47
  tail call fastcc void @zero_v3(ptr noundef %1) #19
  br label %12

12:                                               ; preds = %12, %2
  %13 = phi ptr [ %4, %2 ], [ %18, %12 ]
  %14 = phi ptr [ %9, %2 ], [ %16, %12 ]
  %15 = phi ptr [ %11, %2 ], [ %20, %12 ]
  %16 = getelementptr inbounds %struct.BMVert, ptr %15, i64 0, i32 2
  tail call fastcc void @add_newell_cross_v3_v3v3(ptr noundef %1, ptr noundef nonnull %14, ptr noundef nonnull %16) #19
  %17 = getelementptr inbounds %struct.BMLoop, ptr %13, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !44
  %19 = getelementptr inbounds %struct.BMLoop, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !47
  %21 = icmp eq ptr %18, %4
  br i1 %21, label %22, label %12, !llvm.loop !85

22:                                               ; preds = %12
  %23 = tail call fastcc float @normalize_v3(ptr noundef %1) #19
  ret float %23
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @BM_face_calc_normal_vcos(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !42
  switch i32 %6, label %60 [
    i32 4, label %7
    i32 3, label %37
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.BMLoop, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !47
  %12 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %11) #19
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [3 x float], ptr %3, i64 %13
  %15 = getelementptr inbounds %struct.BMLoop, ptr %9, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !44
  %17 = getelementptr inbounds %struct.BMLoop, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !47
  %19 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %18) #19
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [3 x float], ptr %3, i64 %20
  %22 = getelementptr inbounds %struct.BMLoop, ptr %16, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !44
  %24 = getelementptr inbounds %struct.BMLoop, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !47
  %26 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %25) #19
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [3 x float], ptr %3, i64 %27
  %29 = getelementptr inbounds %struct.BMLoop, ptr %23, i64 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !44
  %31 = getelementptr inbounds %struct.BMLoop, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !47
  %33 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %32) #19
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [3 x float], ptr %3, i64 %34
  %36 = tail call float @normal_quad_v3(ptr noundef %2, ptr noundef %14, ptr noundef %21, ptr noundef %28, ptr noundef %35) #18
  br label %62

37:                                               ; preds = %4
  %38 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !34
  %40 = getelementptr inbounds %struct.BMLoop, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !47
  %42 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %41) #19
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [3 x float], ptr %3, i64 %43
  %45 = getelementptr inbounds %struct.BMLoop, ptr %39, i64 0, i32 6
  %46 = load ptr, ptr %45, align 8, !tbaa !44
  %47 = getelementptr inbounds %struct.BMLoop, ptr %46, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !47
  %49 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %48) #19
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [3 x float], ptr %3, i64 %50
  %52 = getelementptr inbounds %struct.BMLoop, ptr %46, i64 0, i32 6
  %53 = load ptr, ptr %52, align 8, !tbaa !44
  %54 = getelementptr inbounds %struct.BMLoop, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !47
  %56 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %55) #19
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [3 x float], ptr %3, i64 %57
  %59 = tail call float @normal_tri_v3(ptr noundef %2, ptr noundef %44, ptr noundef %51, ptr noundef %58) #18
  br label %62

60:                                               ; preds = %4
  %61 = tail call fastcc float @bm_face_calc_poly_normal_vertex_cos(ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #19
  br label %62

62:                                               ; preds = %60, %37, %7
  %63 = phi float [ %61, %60 ], [ %59, %37 ], [ %36, %7 ]
  ret float %63
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @_bm_elem_index_get(ptr nocapture noundef readonly %0) unnamed_addr #9 !PGOFuncName !86 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !87
  ret i32 %3
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc float @bm_face_calc_poly_normal_vertex_cos(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #4 !PGOFuncName !88 {
  %4 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.BMLoop, ptr %5, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !65
  %8 = getelementptr inbounds %struct.BMLoop, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  %10 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %9) #19
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [3 x float], ptr %2, i64 %11
  %13 = getelementptr inbounds %struct.BMLoop, ptr %5, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !47
  %15 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %14) #19
  tail call fastcc void @zero_v3(ptr noundef %1) #19
  br label %16

16:                                               ; preds = %16, %3
  %17 = phi ptr [ %5, %3 ], [ %23, %16 ]
  %18 = phi ptr [ %12, %3 ], [ %21, %16 ]
  %19 = phi i32 [ %15, %3 ], [ %26, %16 ]
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [3 x float], ptr %2, i64 %20
  tail call fastcc void @add_newell_cross_v3_v3v3(ptr noundef %1, ptr noundef %18, ptr noundef %21) #19
  %22 = getelementptr inbounds %struct.BMLoop, ptr %17, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !44
  %24 = getelementptr inbounds %struct.BMLoop, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !47
  %26 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %25) #19
  %27 = icmp eq ptr %23, %5
  br i1 %27, label %28, label %16, !llvm.loop !89

28:                                               ; preds = %16
  %29 = tail call fastcc float @normalize_v3(ptr noundef %1) #19
  ret float %29
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define dso_local float @BM_face_calc_normal_subset(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) local_unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  tail call fastcc void @zero_v3(ptr noundef %2) #19
  %6 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.BMVert, ptr %7, i64 0, i32 2
  br label %9

9:                                                ; preds = %9, %3
  %10 = phi ptr [ %0, %3 ], [ %16, %9 ]
  %11 = phi ptr [ %8, %3 ], [ %14, %9 ]
  %12 = getelementptr inbounds %struct.BMLoop, ptr %10, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !47
  %14 = getelementptr inbounds %struct.BMVert, ptr %13, i64 0, i32 2
  tail call fastcc void @add_newell_cross_v3_v3v3(ptr noundef %2, ptr noundef nonnull %11, ptr noundef nonnull %14) #19
  %15 = getelementptr inbounds %struct.BMLoop, ptr %10, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !44
  %17 = icmp eq ptr %16, %5
  br i1 %17, label %18, label %9, !llvm.loop !90

18:                                               ; preds = %9
  %19 = tail call fastcc float @normalize_v3(ptr noundef %2) #19
  ret float %19
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_newell_cross_v3_v3v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 !PGOFuncName !91 {
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !52
  %6 = getelementptr inbounds float, ptr %2, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !52
  %8 = fsub float %5, %7
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !52
  %11 = getelementptr inbounds float, ptr %2, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !52
  %13 = fadd float %10, %12
  %14 = load float, ptr %0, align 4, !tbaa !52
  %15 = tail call float @llvm.fmuladd.f32(float %8, float %13, float %14)
  store float %15, ptr %0, align 4, !tbaa !52
  %16 = load float, ptr %9, align 4, !tbaa !52
  %17 = load float, ptr %11, align 4, !tbaa !52
  %18 = fsub float %16, %17
  %19 = load float, ptr %1, align 4, !tbaa !52
  %20 = load float, ptr %2, align 4, !tbaa !52
  %21 = fadd float %19, %20
  %22 = getelementptr inbounds float, ptr %0, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !52
  %24 = tail call float @llvm.fmuladd.f32(float %18, float %21, float %23)
  store float %24, ptr %22, align 4, !tbaa !52
  %25 = load float, ptr %1, align 4, !tbaa !52
  %26 = load float, ptr %2, align 4, !tbaa !52
  %27 = fsub float %25, %26
  %28 = load float, ptr %4, align 4, !tbaa !52
  %29 = load float, ptr %6, align 4, !tbaa !52
  %30 = fadd float %28, %29
  %31 = getelementptr inbounds float, ptr %0, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !52
  %33 = tail call float @llvm.fmuladd.f32(float %27, float %30, float %32)
  store float %33, ptr %31, align 4, !tbaa !52
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BM_face_calc_center_mean_vcos(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #13 {
  tail call fastcc void @bm_face_calc_poly_center_mean_vertex_cos(ptr noundef %1, ptr noundef %2, ptr noundef %3) #19
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bm_face_calc_poly_center_mean_vertex_cos(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #13 !PGOFuncName !92 {
  %4 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  tail call fastcc void @zero_v3(ptr noundef %1) #19
  br label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %5, %3 ], [ %14, %6 ]
  %8 = getelementptr inbounds %struct.BMLoop, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  %10 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %9) #19
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [3 x float], ptr %2, i64 %11
  tail call fastcc void @add_v3_v3(ptr noundef %1, ptr noundef %12) #19
  %13 = getelementptr inbounds %struct.BMLoop, ptr %7, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !44
  %15 = icmp eq ptr %14, %5
  br i1 %15, label %16, label %6, !llvm.loop !93

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !42
  %19 = sitofp i32 %18 to float
  %20 = fdiv float 1.000000e+00, %19
  tail call fastcc void @mul_v3_fl(ptr noundef %1, float noundef %20) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_face_normal_flip(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call zeroext i8 @bmesh_loop_reverse(ptr noundef %0, ptr noundef %1) #18
  %4 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 4
  tail call fastcc void @negate_v3(ptr noundef nonnull %4) #19
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @bmesh_loop_reverse(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v3(ptr nocapture noundef %0) unnamed_addr #3 !PGOFuncName !94 {
  %2 = load <2 x float>, ptr %0, align 4, !tbaa !52
  %3 = fneg <2 x float> %2
  store <2 x float> %3, ptr %0, align 4, !tbaa !52
  %4 = getelementptr inbounds float, ptr %0, i64 2
  %5 = load float, ptr %4, align 4, !tbaa !52
  %6 = fneg float %5
  store float %6, ptr %4, align 4, !tbaa !52
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @BM_face_point_inside_test(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [3 x [3 x float]], align 16
  %4 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #17
  %5 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !42
  %7 = sext i32 %6 to i64
  %8 = shl nsw i64 %7, 3
  %9 = alloca i8, i64 %8, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  %10 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 4
  %11 = tail call fastcc zeroext i8 @is_zero_v3(ptr noundef nonnull %10) #19, !range !95
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  tail call void @BM_face_normal_update(ptr noundef nonnull %0) #19
  br label %14

14:                                               ; preds = %13, %2
  call void @axis_dominant_v3_to_m3(ptr noundef nonnull %3, ptr noundef nonnull %10) #18
  call void @mul_v2_m3v3(ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef %1) #18
  %15 = load i32, ptr %5, align 8, !tbaa !42
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 2
  br label %19

19:                                               ; preds = %17, %19
  %20 = phi i64 [ 0, %17 ], [ %27, %19 ]
  %21 = phi ptr [ %18, %17 ], [ %28, %19 ]
  %22 = load ptr, ptr %21, align 8, !tbaa !43
  %23 = getelementptr inbounds [2 x float], ptr %9, i64 %20
  %24 = getelementptr inbounds %struct.BMLoop, ptr %22, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !47
  %26 = getelementptr inbounds %struct.BMVert, ptr %25, i64 0, i32 2
  call void @mul_v2_m3v3(ptr noundef nonnull %23, ptr noundef nonnull %3, ptr noundef nonnull %26) #18
  %27 = add nuw nsw i64 %20, 1
  %28 = getelementptr inbounds %struct.BMLoop, ptr %22, i64 0, i32 6
  %29 = load i32, ptr %5, align 8, !tbaa !42
  %30 = sext i32 %29 to i64
  %31 = icmp slt i64 %27, %30
  br i1 %31, label %19, label %32, !llvm.loop !96

32:                                               ; preds = %19, %14
  %33 = phi i32 [ %15, %14 ], [ %29, %19 ]
  %34 = call zeroext i8 @isect_point_poly_v2(ptr noundef nonnull %4, ptr noundef nonnull %9, i32 noundef %33, i8 noundef zeroext 0) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #17
  ret i8 %34
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_zero_v3(ptr nocapture noundef readonly %0) unnamed_addr #9 !PGOFuncName !97 {
  %2 = load float, ptr %0, align 4, !tbaa !52
  %3 = fcmp oeq float %2, 0.000000e+00
  br i1 %3, label %4, label %13

4:                                                ; preds = %1
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !52
  %7 = fcmp oeq float %6, 0.000000e+00
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = getelementptr inbounds float, ptr %0, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !52
  %11 = fcmp oeq float %10, 0.000000e+00
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %8, %4, %1
  %14 = phi i8 [ 0, %4 ], [ 0, %1 ], [ %12, %8 ]
  ret i8 %14
}

; Function Attrs: optsize
declare zeroext i8 @isect_point_poly_v2(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_face_triangulate(ptr noundef %0, ptr noundef %1, ptr noundef writeonly %2, ptr noundef writeonly %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i8 noundef zeroext %7) local_unnamed_addr #0 {
  %9 = alloca ptr, align 8
  %10 = alloca [3 x [3 x float]], align 16
  %11 = alloca [3 x ptr], align 16
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #17
  %14 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !42
  %16 = icmp eq i32 %6, 0
  %17 = icmp eq i32 %15, 4
  br i1 %17, label %18, label %82

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !34
  %21 = getelementptr inbounds %struct.BMLoop, ptr %20, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !44
  switch i32 %5, label %51 [
    i32 1, label %23
    i32 2, label %26
    i32 3, label %29
  ]

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.BMLoop, ptr %22, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !44
  br label %68

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.BMLoop, ptr %20, i64 0, i32 7
  %28 = load ptr, ptr %27, align 8, !tbaa !65
  br label %68

29:                                               ; preds = %18
  %30 = getelementptr inbounds %struct.BMLoop, ptr %22, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !44
  %32 = getelementptr inbounds %struct.BMLoop, ptr %20, i64 0, i32 7
  %33 = load ptr, ptr %32, align 8, !tbaa !65
  %34 = getelementptr inbounds %struct.BMLoop, ptr %20, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !47
  %36 = getelementptr inbounds %struct.BMVert, ptr %35, i64 0, i32 2
  %37 = getelementptr inbounds %struct.BMLoop, ptr %31, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !47
  %39 = getelementptr inbounds %struct.BMVert, ptr %38, i64 0, i32 2
  %40 = tail call fastcc float @len_squared_v3v3(ptr noundef nonnull %36, ptr noundef nonnull %39) #19
  %41 = getelementptr inbounds %struct.BMLoop, ptr %22, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !47
  %43 = getelementptr inbounds %struct.BMVert, ptr %42, i64 0, i32 2
  %44 = getelementptr inbounds %struct.BMLoop, ptr %33, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !47
  %46 = getelementptr inbounds %struct.BMVert, ptr %45, i64 0, i32 2
  %47 = tail call fastcc float @len_squared_v3v3(ptr noundef nonnull %43, ptr noundef nonnull %46) #19
  %48 = fcmp olt float %47, %40
  %49 = select i1 %48, ptr %33, ptr %31
  %50 = select i1 %48, ptr %22, ptr %20
  br label %68

51:                                               ; preds = %18
  %52 = getelementptr inbounds %struct.BMLoop, ptr %22, i64 0, i32 6
  %53 = load ptr, ptr %52, align 8, !tbaa !44
  %54 = getelementptr inbounds %struct.BMLoop, ptr %20, i64 0, i32 7
  %55 = load ptr, ptr %54, align 8, !tbaa !65
  %56 = getelementptr inbounds %struct.BMLoop, ptr %22, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !47
  %58 = getelementptr inbounds %struct.BMLoop, ptr %53, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !47
  %60 = getelementptr inbounds %struct.BMLoop, ptr %55, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !47
  %62 = getelementptr inbounds %struct.BMLoop, ptr %20, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !47
  %64 = tail call float @BM_verts_calc_rotate_beauty(ptr noundef %57, ptr noundef %59, ptr noundef %61, ptr noundef %63, i16 noundef signext 0, i16 noundef signext 0) #18
  %65 = fcmp olt float %64, 0.000000e+00
  %66 = select i1 %65, ptr %53, ptr %55
  %67 = select i1 %65, ptr %20, ptr %22
  br label %68

68:                                               ; preds = %51, %29, %26, %23
  %69 = phi ptr [ %66, %51 ], [ %49, %29 ], [ %28, %26 ], [ %25, %23 ]
  %70 = phi ptr [ %67, %51 ], [ %50, %29 ], [ %22, %26 ], [ %20, %23 ]
  %71 = call ptr @BM_face_split(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %70, ptr noundef %69, ptr noundef nonnull %9, ptr noundef null, i8 noundef zeroext 1) #18
  %72 = getelementptr inbounds %struct.BMFace, ptr %71, i64 0, i32 4
  %73 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 4
  call fastcc void @copy_v3_v3(ptr noundef nonnull %72, ptr noundef nonnull %73) #19
  %74 = icmp eq i8 %7, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %68
  %76 = load ptr, ptr %9, align 8, !tbaa !43
  %77 = getelementptr inbounds %struct.BMLoop, ptr %76, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !66
  call fastcc void @_bm_elem_flag_enable(ptr noundef %78) #19
  call fastcc void @_bm_elem_flag_enable(ptr noundef %71) #19
  br label %79

79:                                               ; preds = %75, %68
  %80 = icmp eq ptr %2, null
  br i1 %80, label %247, label %81

81:                                               ; preds = %79
  store ptr %71, ptr %2, align 8, !tbaa !43
  br label %247

82:                                               ; preds = %8
  %83 = icmp sgt i32 %15, 4
  br i1 %83, label %84, label %247

84:                                               ; preds = %82
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %10) #17
  %85 = zext nneg i32 %15 to i64
  %86 = shl nuw nsw i64 %85, 3
  %87 = alloca i8, i64 %86, align 16
  %88 = alloca i8, i64 %86, align 16
  %89 = mul nuw nsw i64 %85, 12
  %90 = alloca i8, i64 %89, align 16
  %91 = add nsw i32 %15, -3
  %92 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 4
  call void @axis_dominant_v3_to_m3(ptr noundef nonnull %10, ptr noundef nonnull %92) #18
  %93 = load i32, ptr %14, align 8, !tbaa !42
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %111

95:                                               ; preds = %84
  %96 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 2
  br label %97

97:                                               ; preds = %95, %97
  %98 = phi i64 [ 0, %95 ], [ %106, %97 ]
  %99 = phi ptr [ %96, %95 ], [ %107, %97 ]
  %100 = load ptr, ptr %99, align 8, !tbaa !43
  %101 = getelementptr inbounds ptr, ptr %88, i64 %98
  store ptr %100, ptr %101, align 8, !tbaa !43
  %102 = getelementptr inbounds [2 x float], ptr %87, i64 %98
  %103 = getelementptr inbounds %struct.BMLoop, ptr %100, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !47
  %105 = getelementptr inbounds %struct.BMVert, ptr %104, i64 0, i32 2
  call void @mul_v2_m3v3(ptr noundef nonnull %102, ptr noundef nonnull %10, ptr noundef nonnull %105) #18
  %106 = add nuw nsw i64 %98, 1
  %107 = getelementptr inbounds %struct.BMLoop, ptr %100, i64 0, i32 6
  %108 = load i32, ptr %14, align 8, !tbaa !42
  %109 = sext i32 %108 to i64
  %110 = icmp slt i64 %106, %109
  br i1 %110, label %97, label %111, !llvm.loop !98

111:                                              ; preds = %97, %84
  %112 = phi i32 [ %93, %84 ], [ %108, %97 ]
  call void @BLI_polyfill_calc_arena(ptr noundef nonnull %87, i32 noundef %112, i32 noundef -1, ptr noundef nonnull %90, ptr noundef %4) #18
  br i1 %16, label %113, label %117

113:                                              ; preds = %111
  %114 = zext nneg i32 %91 to i64
  %115 = shl nuw nsw i64 %114, 3
  %116 = alloca i8, i64 %115, align 16
  br label %117

117:                                              ; preds = %111, %113
  %118 = phi ptr [ %116, %113 ], [ undef, %111 ]
  %119 = getelementptr inbounds ptr, ptr %11, i64 1
  %120 = getelementptr inbounds ptr, ptr %11, i64 2
  %121 = icmp eq i8 %7, 0
  %122 = icmp eq ptr %2, null
  %123 = icmp ne i8 %7, 0
  %124 = or i1 %16, %123
  %125 = zext i32 %91 to i64
  %126 = call i32 @llvm.smax.i32(i32 %15, i32 3)
  %127 = add nsw i32 %126, -2
  %128 = zext nneg i32 %127 to i64
  br label %129

129:                                              ; preds = %117, %192
  %130 = phi i64 [ 0, %117 ], [ %194, %192 ]
  %131 = phi i32 [ 0, %117 ], [ %170, %192 ]
  %132 = phi i32 [ 0, %117 ], [ %193, %192 ]
  %133 = getelementptr inbounds [3 x i32], ptr %90, i64 %130
  %134 = getelementptr inbounds [3 x i32], ptr %90, i64 %130, i64 2
  %135 = load i32, ptr %134, align 4, !tbaa !46
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds ptr, ptr %88, i64 %136
  %138 = load ptr, ptr %137, align 8, !tbaa !43
  %139 = getelementptr inbounds [3 x i32], ptr %90, i64 %130, i64 1
  %140 = load i32, ptr %139, align 4, !tbaa !46
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds ptr, ptr %88, i64 %141
  %143 = load ptr, ptr %142, align 8, !tbaa !43
  %144 = load i32, ptr %133, align 4, !tbaa !46
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds ptr, ptr %88, i64 %145
  %147 = load ptr, ptr %146, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #17
  %148 = getelementptr inbounds %struct.BMLoop, ptr %138, i64 0, i32 1
  %149 = load ptr, ptr %148, align 8, !tbaa !47
  store ptr %149, ptr %11, align 16, !tbaa !43
  %150 = getelementptr inbounds %struct.BMLoop, ptr %143, i64 0, i32 1
  %151 = load ptr, ptr %150, align 8, !tbaa !47
  store ptr %151, ptr %119, align 8, !tbaa !43
  %152 = getelementptr inbounds %struct.BMLoop, ptr %147, i64 0, i32 1
  %153 = load ptr, ptr %152, align 8, !tbaa !47
  store ptr %153, ptr %120, align 16, !tbaa !43
  %154 = call ptr @BM_face_create_verts(ptr noundef %0, ptr noundef nonnull %11, i32 noundef 3, ptr noundef %1, i32 noundef 0, i8 noundef zeroext 1) #18
  %155 = getelementptr inbounds %struct.BMFace, ptr %154, i64 0, i32 2
  %156 = load ptr, ptr %155, align 8, !tbaa !34
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef %138, ptr noundef %156) #18
  %157 = getelementptr inbounds %struct.BMLoop, ptr %156, i64 0, i32 6
  %158 = load ptr, ptr %157, align 8, !tbaa !44
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef %143, ptr noundef %158) #18
  %159 = getelementptr inbounds %struct.BMLoop, ptr %156, i64 0, i32 7
  %160 = load ptr, ptr %159, align 8, !tbaa !65
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef %147, ptr noundef %160) #18
  %161 = icmp eq i64 %130, %125
  br i1 %161, label %169, label %162

162:                                              ; preds = %129
  br i1 %121, label %164, label %163

163:                                              ; preds = %162
  call fastcc void @_bm_elem_flag_enable(ptr noundef nonnull %154) #19
  br label %164

164:                                              ; preds = %163, %162
  br i1 %122, label %169, label %165

165:                                              ; preds = %164
  %166 = add nsw i32 %131, 1
  %167 = sext i32 %131 to i64
  %168 = getelementptr inbounds ptr, ptr %2, i64 %167
  store ptr %154, ptr %168, align 8, !tbaa !43
  br label %169

169:                                              ; preds = %164, %165, %129
  %170 = phi i32 [ %166, %165 ], [ %131, %164 ], [ %131, %129 ]
  br i1 %124, label %171, label %192

171:                                              ; preds = %169, %187
  %172 = phi i32 [ %188, %187 ], [ %132, %169 ]
  %173 = phi ptr [ %190, %187 ], [ %156, %169 ]
  %174 = getelementptr inbounds %struct.BMLoop, ptr %173, i64 0, i32 2
  %175 = load ptr, ptr %174, align 8, !tbaa !66
  %176 = getelementptr inbounds %struct.BMLoop, ptr %173, i64 0, i32 4
  %177 = load ptr, ptr %176, align 8, !tbaa !99
  %178 = icmp eq ptr %173, %177
  br i1 %178, label %179, label %187

179:                                              ; preds = %171
  br i1 %16, label %180, label %184

180:                                              ; preds = %179
  %181 = sext i32 %172 to i64
  %182 = getelementptr inbounds ptr, ptr %118, i64 %181
  store ptr %175, ptr %182, align 8, !tbaa !43
  %183 = add nsw i32 %172, 1
  br label %184

184:                                              ; preds = %180, %179
  %185 = phi i32 [ %183, %180 ], [ %172, %179 ]
  br i1 %121, label %187, label %186

186:                                              ; preds = %184
  call fastcc void @_bm_elem_flag_enable(ptr noundef %175) #19
  br label %187

187:                                              ; preds = %184, %186, %171
  %188 = phi i32 [ %185, %186 ], [ %185, %184 ], [ %172, %171 ]
  %189 = getelementptr inbounds %struct.BMLoop, ptr %173, i64 0, i32 6
  %190 = load ptr, ptr %189, align 8, !tbaa !44
  %191 = icmp eq ptr %190, %156
  br i1 %191, label %192, label %171, !llvm.loop !100

192:                                              ; preds = %187, %169
  %193 = phi i32 [ %132, %169 ], [ %188, %187 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #17
  %194 = add nuw nsw i64 %130, 1
  %195 = icmp eq i64 %194, %128
  br i1 %195, label %196, label %129, !llvm.loop !101

196:                                              ; preds = %192
  %197 = icmp ne ptr %2, null
  %198 = and i1 %197, %16
  br i1 %198, label %199, label %200

199:                                              ; preds = %196
  call void @BM_mesh_beautify_fill(ptr noundef %0, ptr noundef %118, i32 noundef %193, i16 noundef signext 0, i16 noundef signext 0, i16 noundef signext 0, i16 noundef signext 0) #18
  br label %202

200:                                              ; preds = %196
  call void @bmesh_face_swap_data(ptr noundef %1, ptr noundef %154) #18
  call void @BM_face_kill(ptr noundef %0, ptr noundef %154) #18
  br i1 %16, label %201, label %245

201:                                              ; preds = %200
  call void @BM_mesh_beautify_fill(ptr noundef %0, ptr noundef %118, i32 noundef %193, i16 noundef signext 0, i16 noundef signext 0, i16 noundef signext 0, i16 noundef signext 0) #18
  br i1 %197, label %202, label %245

202:                                              ; preds = %199, %201
  %203 = icmp sgt i32 %193, 0
  br i1 %203, label %204, label %242

204:                                              ; preds = %202
  %205 = zext nneg i32 %193 to i64
  br label %206

206:                                              ; preds = %204, %238
  %207 = phi i64 [ 0, %204 ], [ %240, %238 ]
  %208 = phi i32 [ 0, %204 ], [ %239, %238 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #17
  %209 = getelementptr inbounds ptr, ptr %118, i64 %207
  %210 = load ptr, ptr %209, align 8, !tbaa !43
  %211 = call zeroext i8 @BM_edge_face_pair(ptr noundef %210, ptr noundef nonnull %12, ptr noundef nonnull %13) #18
  %212 = load ptr, ptr %12, align 8, !tbaa !43
  %213 = call fastcc i32 @_bm_elem_index_get(ptr noundef %212) #19
  %214 = icmp eq i32 %213, -2
  br i1 %214, label %222, label %215

215:                                              ; preds = %206
  call fastcc void @_bm_elem_index_set(ptr noundef %212, i32 noundef -2) #19
  %216 = icmp slt i32 %208, %193
  br i1 %216, label %217, label %234

217:                                              ; preds = %215
  %218 = load ptr, ptr %12, align 8, !tbaa !43
  %219 = add nsw i32 %208, 1
  %220 = sext i32 %208 to i64
  %221 = getelementptr inbounds ptr, ptr %2, i64 %220
  store ptr %218, ptr %221, align 8, !tbaa !43
  br label %222

222:                                              ; preds = %217, %206
  %223 = phi i32 [ %219, %217 ], [ %208, %206 ]
  %224 = load ptr, ptr %13, align 8, !tbaa !43
  %225 = call fastcc i32 @_bm_elem_index_get(ptr noundef %224) #19
  %226 = icmp eq i32 %225, -2
  br i1 %226, label %238, label %227

227:                                              ; preds = %222
  call fastcc void @_bm_elem_index_set(ptr noundef %224, i32 noundef -2) #19
  %228 = icmp slt i32 %223, %193
  br i1 %228, label %229, label %234

229:                                              ; preds = %227
  %230 = load ptr, ptr %13, align 8, !tbaa !43
  %231 = add nsw i32 %223, 1
  %232 = sext i32 %223 to i64
  %233 = getelementptr inbounds ptr, ptr %2, i64 %232
  store ptr %230, ptr %233, align 8, !tbaa !43
  br label %238

234:                                              ; preds = %227, %215
  %235 = phi i32 [ %208, %215 ], [ %223, %227 ]
  %236 = phi ptr [ %12, %215 ], [ %13, %227 ]
  %237 = load ptr, ptr %236, align 8, !tbaa !43
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #17
  br label %242

238:                                              ; preds = %229, %222
  %239 = phi i32 [ %223, %222 ], [ %231, %229 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #17
  %240 = add nuw nsw i64 %207, 1
  %241 = icmp eq i64 %240, %205
  br i1 %241, label %242, label %206, !llvm.loop !102

242:                                              ; preds = %238, %202, %234
  %243 = phi i32 [ %235, %234 ], [ 0, %202 ], [ %239, %238 ]
  %244 = phi ptr [ %237, %234 ], [ %154, %202 ], [ %154, %238 ]
  call void @bmesh_face_swap_data(ptr noundef %1, ptr noundef %244) #18
  call void @BM_face_kill(ptr noundef %0, ptr noundef %244) #18
  br label %245

245:                                              ; preds = %201, %242, %200
  %246 = phi i32 [ %243, %242 ], [ %170, %201 ], [ %170, %200 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %10) #17
  br label %247

247:                                              ; preds = %79, %81, %82, %245
  %248 = phi i32 [ %246, %245 ], [ 0, %82 ], [ 1, %81 ], [ 0, %79 ]
  %249 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  %250 = load i8, ptr %249, align 4, !tbaa !103
  %251 = or i8 %250, 8
  store i8 %251, ptr %249, align 4, !tbaa !103
  %252 = icmp eq ptr %3, null
  br i1 %252, label %254, label %253

253:                                              ; preds = %247
  store i32 %248, ptr %3, align 4, !tbaa !46
  br label %254

254:                                              ; preds = %253, %247
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc float @len_squared_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !107 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #17
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #19
  %4 = call fastcc float @dot_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #17
  ret float %4
}

; Function Attrs: optsize
declare float @BM_verts_calc_rotate_beauty(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_face_split(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_enable(ptr nocapture noundef %0) unnamed_addr #3 !PGOFuncName !108 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !109
  %4 = or i8 %3, 16
  store i8 %4, ptr %2, align 1, !tbaa !109
  ret void
}

; Function Attrs: optsize
declare void @BLI_polyfill_calc_arena(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_face_create_verts(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_elem_attrs_copy(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @bmesh_face_swap_data(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_face_kill(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_mesh_beautify_fill(ptr noundef, ptr noundef, i32 noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BM_edge_face_pair(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @_bm_elem_index_set(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #11 !PGOFuncName !110 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 1
  store i32 %1, ptr %3, align 8, !tbaa !87
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_face_splits_check_legal(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [2 x float], align 4
  %6 = alloca [2 x float], align 4
  %7 = alloca [2 x float], align 4
  %8 = alloca [2 x float], align 4
  %9 = alloca [2 x float], align 8
  %10 = alloca [3 x [3 x float]], align 16
  %11 = shl nsw i32 %3, 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #17
  store i64 -36028797027352577, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %10) #17
  %12 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !42
  %14 = sext i32 %13 to i64
  %15 = shl nsw i64 %14, 3
  %16 = alloca i8, i64 %15, align 16
  %17 = sext i32 %11 to i64
  %18 = shl nsw i64 %17, 3
  %19 = alloca i8, i64 %18, align 16
  %20 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 4
  call void @axis_dominant_v3_to_m3(ptr noundef nonnull %10, ptr noundef nonnull %20) #18
  %21 = load i32, ptr %12, align 8, !tbaa !42
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %4
  %24 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 2
  br label %25

25:                                               ; preds = %23, %25
  %26 = phi i64 [ 0, %23 ], [ %34, %25 ]
  %27 = phi ptr [ %24, %23 ], [ %35, %25 ]
  %28 = load ptr, ptr %27, align 8, !tbaa !43
  %29 = trunc i64 %26 to i32
  call fastcc void @_bm_elem_index_set(ptr noundef %28, i32 noundef %29) #19
  %30 = getelementptr inbounds [2 x float], ptr %16, i64 %26
  %31 = getelementptr inbounds %struct.BMLoop, ptr %28, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !47
  %33 = getelementptr inbounds %struct.BMVert, ptr %32, i64 0, i32 2
  call void @mul_v2_m3v3(ptr noundef nonnull %30, ptr noundef nonnull %10, ptr noundef nonnull %33) #18
  %34 = add nuw nsw i64 %26, 1
  %35 = getelementptr inbounds %struct.BMLoop, ptr %28, i64 0, i32 6
  %36 = load i32, ptr %12, align 8, !tbaa !42
  %37 = sext i32 %36 to i64
  %38 = icmp slt i64 %34, %37
  br i1 %38, label %25, label %39, !llvm.loop !111

39:                                               ; preds = %25, %4
  %40 = phi i32 [ %21, %4 ], [ %36, %25 ]
  %41 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  %42 = load i8, ptr %41, align 4, !tbaa !103
  %43 = or i8 %42, 4
  store i8 %43, ptr %41, align 4, !tbaa !103
  %44 = call zeroext i8 @is_poly_convex_v2(ptr noundef nonnull %16, i32 noundef %40) #18
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %193

46:                                               ; preds = %39
  %47 = load i32, ptr %12, align 8, !tbaa !42
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %65

49:                                               ; preds = %46
  %50 = getelementptr inbounds [2 x float], ptr %9, i64 0, i64 1
  %51 = zext nneg i32 %47 to i64
  br label %52

52:                                               ; preds = %49, %52
  %53 = phi i64 [ 0, %49 ], [ %62, %52 ]
  %54 = phi float [ 0xC7EFFFFFE0000000, %49 ], [ %61, %52 ]
  %55 = phi float [ 0xC7EFFFFFE0000000, %49 ], [ %58, %52 ]
  %56 = getelementptr inbounds [2 x float], ptr %16, i64 %53
  %57 = load float, ptr %56, align 8, !tbaa !52
  %58 = call fastcc float @max_ff(float noundef %55, float noundef %57) #19
  %59 = getelementptr inbounds [2 x float], ptr %16, i64 %53, i64 1
  %60 = load float, ptr %59, align 4, !tbaa !52
  %61 = call fastcc float @max_ff(float noundef %54, float noundef %60) #19
  %62 = add nuw nsw i64 %53, 1
  %63 = icmp eq i64 %62, %51
  br i1 %63, label %64, label %52, !llvm.loop !112

64:                                               ; preds = %52
  store float %61, ptr %50, align 4, !tbaa !52
  br label %65

65:                                               ; preds = %64, %46
  %66 = phi float [ %58, %64 ], [ 0xC7EFFFFFE0000000, %46 ]
  store float %66, ptr %9, align 8, !tbaa !52
  call fastcc void @add_v2_fl(ptr noundef nonnull %9) #19
  %67 = icmp sgt i32 %3, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = zext nneg i32 %3 to i64
  br label %75

70:                                               ; preds = %75
  br i1 %67, label %73, label %71

71:                                               ; preds = %65, %70
  %72 = load i32, ptr %12, align 8, !tbaa !42
  br label %94

73:                                               ; preds = %70
  %74 = zext nneg i32 %3 to i64
  br label %99

75:                                               ; preds = %68, %75
  %76 = phi i64 [ 0, %68 ], [ %92, %75 ]
  %77 = phi i64 [ 0, %68 ], [ %91, %75 ]
  %78 = getelementptr inbounds [2 x float], ptr %19, i64 %77
  %79 = getelementptr inbounds [2 x ptr], ptr %2, i64 %76
  %80 = load ptr, ptr %79, align 8, !tbaa !43
  %81 = call fastcc i32 @_bm_elem_index_get(ptr noundef %80) #19
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [2 x float], ptr %16, i64 %82
  call fastcc void @copy_v2_v2(ptr noundef nonnull %78, ptr noundef nonnull %83) #19
  %84 = or disjoint i64 %77, 1
  %85 = getelementptr inbounds [2 x float], ptr %19, i64 %84
  %86 = getelementptr inbounds [2 x ptr], ptr %2, i64 %76, i64 1
  %87 = load ptr, ptr %86, align 8, !tbaa !43
  %88 = call fastcc i32 @_bm_elem_index_get(ptr noundef %87) #19
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [2 x float], ptr %16, i64 %89
  call fastcc void @copy_v2_v2(ptr noundef nonnull %85, ptr noundef nonnull %90) #19
  call fastcc void @scale_edge_v2f(ptr noundef nonnull %78, ptr noundef nonnull %85, float noundef 0x3FECCCCCC0000000) #19
  %91 = add nuw nsw i64 %77, 2
  %92 = add nuw nsw i64 %76, 1
  %93 = icmp eq i64 %92, %69
  br i1 %93, label %70, label %75, !llvm.loop !113

94:                                               ; preds = %127, %71
  %95 = phi i32 [ %72, %71 ], [ %105, %127 ]
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %97, label %134

97:                                               ; preds = %94
  %98 = zext nneg i32 %3 to i64
  br label %137

99:                                               ; preds = %73, %127
  %100 = phi i64 [ 0, %73 ], [ %128, %127 ]
  %101 = shl nuw nsw i64 %100, 1
  %102 = getelementptr inbounds [2 x float], ptr %19, i64 %101
  call fastcc void @copy_v2_v2(ptr noundef nonnull %6, ptr noundef nonnull %102) #19
  %103 = or disjoint i64 %101, 1
  %104 = getelementptr inbounds [2 x float], ptr %19, i64 %103
  call fastcc void @copy_v2_v2(ptr noundef nonnull %7, ptr noundef nonnull %104) #19
  call void @mid_v2_v2v2(ptr noundef nonnull %8, ptr noundef nonnull %6, ptr noundef nonnull %7) #18
  %105 = load i32, ptr %12, align 8, !tbaa !42
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %125

107:                                              ; preds = %99
  %108 = zext nneg i32 %105 to i64
  br label %109

109:                                              ; preds = %107, %109
  %110 = phi i64 [ 0, %107 ], [ %113, %109 ]
  %111 = phi i32 [ 0, %107 ], [ %120, %109 ]
  %112 = getelementptr inbounds [2 x float], ptr %16, i64 %110
  %113 = add nuw nsw i64 %110, 1
  %114 = icmp eq i64 %113, %108
  %115 = and i64 %113, 4294967295
  %116 = select i1 %114, i64 0, i64 %115
  %117 = getelementptr inbounds [2 x float], ptr %16, i64 %116
  %118 = call fastcc zeroext i8 @line_crosses_v2f(ptr noundef nonnull %112, ptr noundef nonnull %117, ptr noundef nonnull %8, ptr noundef nonnull %9) #19, !range !95
  %119 = zext nneg i8 %118 to i32
  %120 = add nuw nsw i32 %111, %119
  %121 = icmp eq i64 %113, %108
  br i1 %121, label %122, label %109, !llvm.loop !114

122:                                              ; preds = %109
  %123 = and i32 %120, 1
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %99, %122
  %126 = getelementptr inbounds [2 x ptr], ptr %2, i64 %100
  store ptr null, ptr %126, align 8, !tbaa !43
  br label %127

127:                                              ; preds = %122, %125
  %128 = add nuw nsw i64 %100, 1
  %129 = icmp eq i64 %128, %74
  br i1 %129, label %94, label %99, !llvm.loop !115

130:                                              ; preds = %159, %137
  %131 = load i32, ptr %12, align 8, !tbaa !42
  %132 = sext i32 %131 to i64
  %133 = icmp slt i64 %141, %132
  br i1 %133, label %137, label %134, !llvm.loop !116

134:                                              ; preds = %130, %94
  br i1 %67, label %135, label %193

135:                                              ; preds = %134
  %136 = zext nneg i32 %3 to i64
  br label %162

137:                                              ; preds = %97, %130
  %138 = phi i64 [ 0, %97 ], [ %141, %130 ]
  %139 = phi i32 [ %95, %97 ], [ %131, %130 ]
  %140 = getelementptr inbounds [2 x float], ptr %16, i64 %138
  %141 = add nuw nsw i64 %138, 1
  %142 = trunc i64 %141 to i32
  %143 = srem i32 %142, %139
  %144 = zext nneg i32 %143 to i64
  %145 = getelementptr inbounds [2 x float], ptr %16, i64 %144
  call fastcc void @copy_v2_v2(ptr noundef nonnull %5, ptr noundef nonnull %140) #19
  call fastcc void @copy_v2_v2(ptr noundef nonnull %6, ptr noundef nonnull %145) #19
  call fastcc void @scale_edge_v2f(ptr noundef nonnull %5, ptr noundef nonnull %6, float noundef 0x3FF0000020000000) #19
  br i1 %67, label %146, label %130

146:                                              ; preds = %137, %159
  %147 = phi i64 [ %160, %159 ], [ 0, %137 ]
  %148 = getelementptr inbounds [2 x ptr], ptr %2, i64 %147
  %149 = load ptr, ptr %148, align 8, !tbaa !43
  %150 = icmp eq ptr %149, null
  br i1 %150, label %159, label %151

151:                                              ; preds = %146
  %152 = shl nuw nsw i64 %147, 1
  %153 = getelementptr inbounds [2 x float], ptr %19, i64 %152
  %154 = or disjoint i64 %152, 1
  %155 = getelementptr inbounds [2 x float], ptr %19, i64 %154
  %156 = call fastcc zeroext i8 @line_crosses_v2f(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %153, ptr noundef nonnull %155) #19, !range !95
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %151
  store ptr null, ptr %148, align 8, !tbaa !43
  br label %159

159:                                              ; preds = %151, %158, %146
  %160 = add nuw nsw i64 %147, 1
  %161 = icmp eq i64 %160, %98
  br i1 %161, label %130, label %146, !llvm.loop !117

162:                                              ; preds = %190, %135
  %163 = phi i64 [ 0, %135 ], [ %191, %190 ]
  %164 = getelementptr inbounds [2 x ptr], ptr %2, i64 %163
  %165 = shl nuw nsw i64 %163, 1
  %166 = getelementptr inbounds [2 x float], ptr %19, i64 %165
  %167 = or disjoint i64 %165, 1
  %168 = getelementptr inbounds [2 x float], ptr %19, i64 %167
  br label %169

169:                                              ; preds = %162, %187
  %170 = phi i64 [ 0, %162 ], [ %188, %187 ]
  %171 = icmp eq i64 %170, %163
  br i1 %171, label %187, label %172

172:                                              ; preds = %169
  %173 = load ptr, ptr %164, align 8, !tbaa !43
  %174 = icmp eq ptr %173, null
  br i1 %174, label %187, label %175

175:                                              ; preds = %172
  %176 = getelementptr inbounds [2 x ptr], ptr %2, i64 %170
  %177 = load ptr, ptr %176, align 8, !tbaa !43
  %178 = icmp eq ptr %177, null
  br i1 %178, label %187, label %179

179:                                              ; preds = %175
  %180 = shl nuw nsw i64 %170, 1
  %181 = getelementptr inbounds [2 x float], ptr %19, i64 %180
  %182 = or disjoint i64 %180, 1
  %183 = getelementptr inbounds [2 x float], ptr %19, i64 %182
  call fastcc void @copy_v2_v2(ptr noundef nonnull %5, ptr noundef nonnull %166) #19
  call fastcc void @copy_v2_v2(ptr noundef nonnull %6, ptr noundef nonnull %168) #19
  call fastcc void @scale_edge_v2f(ptr noundef nonnull %5, ptr noundef nonnull %6, float noundef 0x3FF0000020000000) #19
  %184 = call fastcc zeroext i8 @line_crosses_v2f(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %181, ptr noundef nonnull %183) #19, !range !95
  %185 = icmp eq i8 %184, 0
  br i1 %185, label %187, label %186

186:                                              ; preds = %179
  store ptr null, ptr %164, align 8, !tbaa !43
  br label %187

187:                                              ; preds = %169, %172, %175, %186, %179
  %188 = add nuw nsw i64 %170, 1
  %189 = icmp eq i64 %188, %136
  br i1 %189, label %190, label %169, !llvm.loop !118

190:                                              ; preds = %187
  %191 = add nuw nsw i64 %163, 1
  %192 = icmp eq i64 %191, %136
  br i1 %192, label %193, label %162, !llvm.loop !119

193:                                              ; preds = %190, %134, %39
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @is_poly_convex_v2(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ff(float noundef %0, float noundef %1) unnamed_addr #14 !PGOFuncName !120 {
  %3 = fcmp ogt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v2_fl(ptr nocapture noundef %0) unnamed_addr #3 !PGOFuncName !121 {
  %2 = load <2 x float>, ptr %0, align 4, !tbaa !52
  %3 = fadd <2 x float> %2, <float 1.000000e+00, float 1.000000e+00>
  store <2 x float> %3, ptr %0, align 4, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !122 {
  %3 = load float, ptr %1, align 4, !tbaa !52
  store float %3, ptr %0, align 4, !tbaa !52
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !52
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !52
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @scale_edge_v2f(ptr noundef %0, ptr noundef %1, float noundef %2) unnamed_addr #0 !PGOFuncName !123 {
  %4 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  call void @mid_v2_v2v2(ptr noundef nonnull %4, ptr noundef %0, ptr noundef %1) #18
  call fastcc void @sub_v2_v2v2(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %4) #19
  call fastcc void @sub_v2_v2v2(ptr noundef %1, ptr noundef %1, ptr noundef nonnull %4) #19
  call fastcc void @mul_v2_fl(ptr noundef %0, float noundef %2) #19
  call fastcc void @mul_v2_fl(ptr noundef %1, float noundef %2) #19
  call fastcc void @add_v2_v2v2(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %4) #19
  call fastcc void @add_v2_v2v2(ptr noundef %1, ptr noundef %1, ptr noundef nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  ret void
}

; Function Attrs: optsize
declare void @mid_v2_v2v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @line_crosses_v2f(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #9 !PGOFuncName !124 {
  %5 = tail call fastcc zeroext i8 @testedgesidef(ptr noundef %0, ptr noundef %2, ptr noundef %1) #19, !range !95
  %6 = tail call fastcc zeroext i8 @testedgesidef(ptr noundef %1, ptr noundef %3, ptr noundef %0) #19, !range !95
  %7 = tail call fastcc zeroext i8 @testedgesidef(ptr noundef %0, ptr noundef %1, ptr noundef %2) #19, !range !95
  %8 = xor i8 %7, 1
  %9 = tail call fastcc zeroext i8 @testedgesidef(ptr noundef %2, ptr noundef %1, ptr noundef %3) #19, !range !95
  %10 = tail call fastcc zeroext i8 @testedgesidef(ptr noundef %2, ptr noundef %0, ptr noundef %3) #19, !range !95
  %11 = icmp eq i8 %5, %6
  %12 = icmp eq i8 %6, %8
  %13 = and i1 %11, %12
  %14 = icmp eq i8 %8, %9
  %15 = and i1 %14, %13
  %16 = icmp ne i8 %10, %9
  %17 = and i1 %16, %15
  br i1 %17, label %70, label %18

18:                                               ; preds = %4
  %19 = load float, ptr %0, align 4, !tbaa !52
  %20 = load float, ptr %1, align 4, !tbaa !52
  %21 = tail call fastcc float @min_ff(float noundef %19, float noundef %20) #19
  %22 = tail call fastcc float @max_ff(float noundef %19, float noundef %20) #19
  %23 = getelementptr inbounds float, ptr %0, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !52
  %25 = getelementptr inbounds float, ptr %1, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !52
  %27 = tail call fastcc float @min_ff(float noundef %24, float noundef %26) #19
  %28 = tail call fastcc float @max_ff(float noundef %24, float noundef %26) #19
  %29 = load float, ptr %2, align 4, !tbaa !52
  %30 = load float, ptr %3, align 4, !tbaa !52
  %31 = tail call fastcc float @min_ff(float noundef %29, float noundef %30) #19
  %32 = tail call fastcc float @max_ff(float noundef %29, float noundef %30) #19
  %33 = getelementptr inbounds float, ptr %2, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !52
  %35 = getelementptr inbounds float, ptr %3, i64 1
  %36 = load float, ptr %35, align 4, !tbaa !52
  %37 = tail call fastcc float @min_ff(float noundef %34, float noundef %36) #19
  %38 = tail call fastcc float @max_ff(float noundef %34, float noundef %36) #19
  %39 = fsub float %24, %26
  %40 = tail call float @llvm.fabs.f32(float %39)
  %41 = fcmp olt float %40, 0x3EBE000000000000
  br i1 %41, label %42, label %54

42:                                               ; preds = %18
  %43 = fsub float %34, %36
  %44 = tail call float @llvm.fabs.f32(float %43)
  %45 = fcmp olt float %44, 0x3EBE000000000000
  br i1 %45, label %46, label %54

46:                                               ; preds = %42
  %47 = fsub float %24, %34
  %48 = tail call float @llvm.fabs.f32(float %47)
  %49 = fcmp olt float %48, 0x3EBE000000000000
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = fcmp oge float %32, %21
  %52 = fcmp ole float %31, %22
  %53 = and i1 %52, %51
  br label %70

54:                                               ; preds = %46, %42, %18
  %55 = fsub float %19, %20
  %56 = tail call float @llvm.fabs.f32(float %55)
  %57 = fcmp olt float %56, 0x3EBE000000000000
  br i1 %57, label %58, label %70

58:                                               ; preds = %54
  %59 = fsub float %29, %30
  %60 = tail call float @llvm.fabs.f32(float %59)
  %61 = fcmp olt float %60, 0x3EBE000000000000
  br i1 %61, label %62, label %70

62:                                               ; preds = %58
  %63 = fsub float %19, %29
  %64 = tail call float @llvm.fabs.f32(float %63)
  %65 = fcmp olt float %64, 0x3EBE000000000000
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = fcmp oge float %38, %27
  %68 = fcmp ole float %37, %28
  %69 = and i1 %68, %67
  br label %70

70:                                               ; preds = %54, %58, %62, %4, %66, %50
  %71 = phi i1 [ %53, %50 ], [ %69, %66 ], [ true, %4 ], [ false, %62 ], [ false, %58 ], [ false, %54 ]
  %72 = zext i1 %71 to i8
  ret i8 %72
}

; Function Attrs: noinline nounwind optsize uwtable
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  %11 = getelementptr inbounds [2 x ptr], ptr %1, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !43
  %13 = getelementptr inbounds %struct.BMLoop, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !47
  %15 = getelementptr inbounds [2 x ptr], ptr %1, i64 %10, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !43
  %17 = getelementptr inbounds %struct.BMLoop, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !47
  %19 = call ptr @BM_vert_pair_share_face_by_angle(ptr noundef %14, ptr noundef %18, ptr noundef nonnull %4, ptr noundef nonnull %5, i8 noundef zeroext 0) #18
  %20 = icmp eq ptr %19, %0
  br i1 %20, label %22, label %21

21:                                               ; preds = %9
  store ptr null, ptr %11, align 8, !tbaa !43
  br label %22

22:                                               ; preds = %21, %9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  %23 = add nuw nsw i64 %10, 1
  %24 = icmp eq i64 %23, %8
  br i1 %24, label %25, label %9, !llvm.loop !125

25:                                               ; preds = %22, %3
  ret void
}

; Function Attrs: optsize
declare ptr @BM_vert_pair_share_face_by_angle(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BM_face_as_array_loop_tri(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #8 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BM_face_as_array_loop_quad(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #8 {
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_bmesh_calc_tessellation(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #17
  %6 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef %0, i8 noundef zeroext 3, ptr noundef null) #19
  %7 = icmp eq ptr %6, null
  br i1 %7, label %116, label %8

8:                                                ; preds = %3, %108
  %9 = phi ptr [ %111, %108 ], [ %6, %3 ]
  %10 = phi i32 [ %110, %108 ], [ 0, %3 ]
  %11 = phi ptr [ %109, %108 ], [ null, %3 ]
  %12 = getelementptr inbounds %struct.BMFace, ptr %9, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !42
  %14 = icmp slt i32 %13, 3
  br i1 %14, label %108, label %15

15:                                               ; preds = %8
  switch i32 %13, label %45 [
    i32 3, label %16
    i32 4, label %28
  ]

16:                                               ; preds = %15
  %17 = add nsw i32 %10, 1
  %18 = sext i32 %10 to i64
  %19 = getelementptr inbounds [3 x ptr], ptr %1, i64 %18
  %20 = getelementptr inbounds %struct.BMFace, ptr %9, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !34
  store ptr %21, ptr %19, align 8, !tbaa !43
  %22 = getelementptr inbounds %struct.BMLoop, ptr %21, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !44
  %24 = getelementptr inbounds ptr, ptr %19, i64 1
  store ptr %23, ptr %24, align 8, !tbaa !43
  %25 = getelementptr inbounds %struct.BMLoop, ptr %23, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !44
  %27 = getelementptr inbounds ptr, ptr %19, i64 2
  store ptr %26, ptr %27, align 8, !tbaa !43
  br label %108

28:                                               ; preds = %15
  %29 = sext i32 %10 to i64
  %30 = getelementptr inbounds [3 x ptr], ptr %1, i64 %29
  %31 = add nsw i32 %10, 2
  %32 = getelementptr [3 x ptr], ptr %30, i64 1
  %33 = getelementptr inbounds %struct.BMFace, ptr %9, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !34
  store ptr %34, ptr %32, align 8, !tbaa !43
  store ptr %34, ptr %30, align 8, !tbaa !43
  %35 = getelementptr inbounds %struct.BMLoop, ptr %34, i64 0, i32 6
  %36 = load ptr, ptr %35, align 8, !tbaa !44
  %37 = getelementptr inbounds ptr, ptr %30, i64 1
  store ptr %36, ptr %37, align 8, !tbaa !43
  %38 = getelementptr inbounds %struct.BMLoop, ptr %36, i64 0, i32 6
  %39 = load ptr, ptr %38, align 8, !tbaa !44
  %40 = getelementptr [3 x ptr], ptr %30, i64 1, i64 1
  store ptr %39, ptr %40, align 8, !tbaa !43
  %41 = getelementptr inbounds ptr, ptr %30, i64 2
  store ptr %39, ptr %41, align 8, !tbaa !43
  %42 = getelementptr inbounds %struct.BMLoop, ptr %39, i64 0, i32 6
  %43 = load ptr, ptr %42, align 8, !tbaa !44
  %44 = getelementptr [3 x ptr], ptr %30, i64 1, i64 2
  store ptr %43, ptr %44, align 8, !tbaa !43
  br label %108

45:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #17
  %46 = add nsw i32 %13, -2
  %47 = icmp eq ptr %11, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = call ptr @BLI_memarena_new(i64 noundef 16376, ptr noundef nonnull @__func__.BM_bmesh_calc_tessellation) #18
  br label %50

50:                                               ; preds = %48, %45
  %51 = phi ptr [ %49, %48 ], [ %11, %45 ]
  %52 = zext nneg i32 %46 to i64
  %53 = mul nuw nsw i64 %52, 12
  %54 = call ptr @BLI_memarena_alloc(ptr noundef %51, i64 noundef %53) #18
  %55 = load i32, ptr %12, align 8, !tbaa !42
  %56 = sext i32 %55 to i64
  %57 = shl nsw i64 %56, 3
  %58 = call ptr @BLI_memarena_alloc(ptr noundef %51, i64 noundef %57) #18
  %59 = load i32, ptr %12, align 8, !tbaa !42
  %60 = sext i32 %59 to i64
  %61 = shl nsw i64 %60, 3
  %62 = call ptr @BLI_memarena_alloc(ptr noundef %51, i64 noundef %61) #18
  %63 = getelementptr inbounds %struct.BMFace, ptr %9, i64 0, i32 4
  call void @axis_dominant_v3_to_m3(ptr noundef nonnull %5, ptr noundef nonnull %63) #18
  %64 = getelementptr inbounds %struct.BMFace, ptr %9, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !34
  br label %66

66:                                               ; preds = %66, %50
  %67 = phi i64 [ %74, %66 ], [ 0, %50 ]
  %68 = phi ptr [ %76, %66 ], [ %65, %50 ]
  %69 = getelementptr inbounds ptr, ptr %58, i64 %67
  store ptr %68, ptr %69, align 8, !tbaa !43
  %70 = getelementptr inbounds [2 x float], ptr %62, i64 %67
  %71 = getelementptr inbounds %struct.BMLoop, ptr %68, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !47
  %73 = getelementptr inbounds %struct.BMVert, ptr %72, i64 0, i32 2
  call void @mul_v2_m3v3(ptr noundef %70, ptr noundef nonnull %5, ptr noundef nonnull %73) #18
  %74 = add nuw i64 %67, 1
  %75 = getelementptr inbounds %struct.BMLoop, ptr %68, i64 0, i32 6
  %76 = load ptr, ptr %75, align 8, !tbaa !44
  %77 = icmp eq ptr %76, %65
  br i1 %77, label %78, label %66, !llvm.loop !126

78:                                               ; preds = %66
  %79 = load i32, ptr %12, align 8, !tbaa !42
  call void @BLI_polyfill_calc_arena(ptr noundef %62, i32 noundef %79, i32 noundef -1, ptr noundef %54, ptr noundef %51) #18
  %80 = sext i32 %10 to i64
  %81 = zext i32 %46 to i64
  br label %82

82:                                               ; preds = %78, %82
  %83 = phi i64 [ 0, %78 ], [ %104, %82 ]
  %84 = phi i64 [ %80, %78 ], [ %85, %82 ]
  %85 = add nsw i64 %84, 1
  %86 = getelementptr inbounds [3 x ptr], ptr %1, i64 %84
  %87 = getelementptr inbounds [3 x i32], ptr %54, i64 %83
  %88 = getelementptr inbounds i32, ptr %87, i64 2
  %89 = load i32, ptr %88, align 4, !tbaa !46
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds ptr, ptr %58, i64 %90
  %92 = load ptr, ptr %91, align 8, !tbaa !43
  store ptr %92, ptr %86, align 8, !tbaa !43
  %93 = getelementptr inbounds i32, ptr %87, i64 1
  %94 = load i32, ptr %93, align 4, !tbaa !46
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds ptr, ptr %58, i64 %95
  %97 = load ptr, ptr %96, align 8, !tbaa !43
  %98 = getelementptr inbounds ptr, ptr %86, i64 1
  store ptr %97, ptr %98, align 8, !tbaa !43
  %99 = load i32, ptr %87, align 4, !tbaa !46
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds ptr, ptr %58, i64 %100
  %102 = load ptr, ptr %101, align 8, !tbaa !43
  %103 = getelementptr inbounds ptr, ptr %86, i64 2
  store ptr %102, ptr %103, align 8, !tbaa !43
  %104 = add nuw nsw i64 %83, 1
  %105 = icmp eq i64 %104, %81
  br i1 %105, label %106, label %82, !llvm.loop !127

106:                                              ; preds = %82
  %107 = trunc i64 %85 to i32
  call void @BLI_memarena_clear(ptr noundef %51) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #17
  br label %108

108:                                              ; preds = %8, %28, %106, %16
  %109 = phi ptr [ %11, %8 ], [ %11, %16 ], [ %11, %28 ], [ %51, %106 ]
  %110 = phi i32 [ %10, %8 ], [ %17, %16 ], [ %31, %28 ], [ %107, %106 ]
  %111 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #19
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %8, !llvm.loop !128

113:                                              ; preds = %108
  %114 = icmp eq ptr %109, null
  br i1 %114, label %116, label %115

115:                                              ; preds = %113
  call void @BLI_memarena_free(ptr noundef nonnull %109) #18
  br label %116

116:                                              ; preds = %3, %115, %113
  %117 = phi i32 [ %110, %115 ], [ %110, %113 ], [ 0, %3 ]
  store i32 %117, ptr %2, align 4, !tbaa !46
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #17
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_memarena_new(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_memarena_alloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_memarena_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_memarena_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !129 {
  %2 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %0) #19
  %3 = tail call float @sqrtf(float noundef %2) #18
  ret float %3
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !130 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #19
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #18
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #19
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #19
  br label %9

9:                                                ; preds = %8, %5
  %10 = phi float [ %6, %5 ], [ 0.000000e+00, %8 ]
  ret float %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #3 !PGOFuncName !131 {
  %4 = load float, ptr %1, align 4, !tbaa !52
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !52
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !52
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !52
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !52
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !52
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !132 {
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 %2, ptr %5, align 4, !tbaa !133
  %6 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  switch i8 %2, label %16 [
    i8 8, label %15
    i8 7, label %14
    i8 3, label %8
    i8 4, label %11
    i8 5, label %12
    i8 6, label %13
  ]

8:                                                ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !134
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !77
  %9 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !135
  br label %17

11:                                               ; preds = %4
  store ptr @bmiter__edge_of_vert_begin, ptr %6, align 8, !tbaa !134
  store ptr @bmiter__edge_of_vert_step, ptr %7, align 8, !tbaa !77
  br label %17

12:                                               ; preds = %4
  store ptr @bmiter__face_of_vert_begin, ptr %6, align 8, !tbaa !134
  store ptr @bmiter__face_of_vert_step, ptr %7, align 8, !tbaa !77
  br label %17

13:                                               ; preds = %4
  store ptr @bmiter__loop_of_vert_begin, ptr %6, align 8, !tbaa !134
  store ptr @bmiter__loop_of_vert_step, ptr %7, align 8, !tbaa !77
  br label %17

14:                                               ; preds = %4
  store ptr @bmiter__vert_of_edge_begin, ptr %6, align 8, !tbaa !134
  store ptr @bmiter__vert_of_edge_step, ptr %7, align 8, !tbaa !77
  br label %17

15:                                               ; preds = %4
  store ptr @bmiter__face_of_edge_begin, ptr %6, align 8, !tbaa !134
  store ptr @bmiter__face_of_edge_step, ptr %7, align 8, !tbaa !77
  br label %17

16:                                               ; preds = %4
  unreachable

17:                                               ; preds = %15, %14, %13, %12, %11, %8
  %18 = phi ptr [ %3, %15 ], [ %3, %14 ], [ %3, %13 ], [ %3, %12 ], [ %3, %11 ], [ %10, %8 ]
  %19 = phi ptr [ @bmiter__face_of_edge_begin, %15 ], [ @bmiter__vert_of_edge_begin, %14 ], [ @bmiter__loop_of_vert_begin, %13 ], [ @bmiter__face_of_vert_begin, %12 ], [ @bmiter__edge_of_vert_begin, %11 ], [ @bmiter__elem_of_mesh_begin, %8 ]
  store ptr %18, ptr %0, align 8, !tbaa !136
  tail call void %19(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: optsize
declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__edge_of_vert_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__edge_of_vert_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__face_of_vert_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__face_of_vert_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__loop_of_vert_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__loop_of_vert_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__vert_of_edge_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__vert_of_edge_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__face_of_edge_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__face_of_edge_step(ptr noundef) #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @acosf(float noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 !PGOFuncName !137 {
  %4 = load float, ptr %1, align 4, !tbaa !52
  %5 = load float, ptr %2, align 4, !tbaa !52
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !52
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !52
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !52
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v2_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #3 !PGOFuncName !138 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !52
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 !PGOFuncName !139 {
  %4 = load float, ptr %1, align 4, !tbaa !52
  %5 = load float, ptr %2, align 4, !tbaa !52
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !52
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !52
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !52
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @testedgesidef(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #9 !PGOFuncName !140 {
  %4 = load float, ptr %1, align 4, !tbaa !52
  %5 = load float, ptr %0, align 4, !tbaa !52
  %6 = fsub float %4, %5
  %7 = getelementptr inbounds float, ptr %0, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !52
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !52
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %1, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !52
  %14 = fsub float %8, %13
  %15 = load float, ptr %2, align 4, !tbaa !52
  %16 = fsub float %5, %15
  %17 = fmul float %14, %16
  %18 = tail call float @llvm.fmuladd.f32(float %6, float %11, float %17)
  %19 = fcmp olt float %18, 0.000000e+00
  br i1 %19, label %31, label %20

20:                                               ; preds = %3
  %21 = fcmp oeq float %18, 0.000000e+00
  br i1 %21, label %22, label %30

22:                                               ; preds = %20
  %23 = fcmp oeq float %5, %15
  %24 = fcmp oeq float %8, %10
  %25 = select i1 %23, i1 %24, i1 false
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  %27 = fcmp oeq float %4, %15
  %28 = fcmp oeq float %13, %10
  %29 = select i1 %27, i1 %28, i1 false
  br i1 %29, label %31, label %30

30:                                               ; preds = %20, %26
  br label %31

31:                                               ; preds = %26, %22, %3, %30
  %32 = phi i8 [ 1, %30 ], [ 0, %3 ], [ 0, %22 ], [ 0, %26 ]
  ret i8 %32
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0, float noundef %1) unnamed_addr #14 !PGOFuncName !141 {
  %3 = fcmp olt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #16

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind }
attributes #18 = { nounwind optsize }
attributes #19 = { optsize }

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
!48 = distinct !{!48, !49}
!49 = !{!"llvm.loop.mustprogress"}
!50 = distinct !{!50, !49}
!51 = !{!"bmesh_polygon.c:copy_v3_v3"}
!52 = !{!53, !53, i64 0}
!53 = !{!"float", !38, i64 0}
!54 = distinct !{!54, !49}
!55 = !{!"bmesh_polygon.c:len_v3v3"}
!56 = !{!"bmesh_polygon.c:sub_v3_v3v3"}
!57 = !{!"bmesh_polygon.c:add_v3_v3v3"}
!58 = !{!"bmesh_polygon.c:len_squared_v3"}
!59 = !{!"bmesh_polygon.c:normalize_v3"}
!60 = distinct !{!60, !49}
!61 = distinct !{!61, !49}
!62 = !{!"bmesh_polygon.c:zero_v3"}
!63 = !{!"bmesh_polygon.c:add_v3_v3"}
!64 = !{!"bmesh_polygon.c:mul_v3_fl"}
!65 = !{!45, !37, i64 64}
!66 = !{!45, !37, i64 24}
!67 = distinct !{!67, !49}
!68 = !{!"bmesh_polygon.c:madd_v3_v3fl"}
!69 = distinct !{!69, !49}
!70 = distinct !{!70, !49}
!71 = !{!72, !37, i64 24}
!72 = !{!"BMEdge", !36, i64 0, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !73, i64 48, !73, i64 64}
!73 = !{!"BMDiskLink", !37, i64 0, !37, i64 8}
!74 = !{!72, !37, i64 32}
!75 = !{!"bmesh_polygon.c:BM_iter_new"}
!76 = !{!"bmesh_polygon.c:BM_iter_step"}
!77 = !{!78, !37, i64 48}
!78 = !{!"BMIter", !38, i64 0, !37, i64 40, !37, i64 48, !40, i64 56, !38, i64 60}
!79 = !{!45, !37, i64 32}
!80 = distinct !{!80, !49}
!81 = !{!"bmesh_polygon.c:saacos"}
!82 = !{!"bmesh_polygon.c:dot_v3v3"}
!83 = distinct !{!83, !49}
!84 = !{!"bmesh_polygon.c:bm_face_calc_poly_normal"}
!85 = distinct !{!85, !49}
!86 = !{!"bmesh_polygon.c:_bm_elem_index_get"}
!87 = !{!36, !40, i64 8}
!88 = !{!"bmesh_polygon.c:bm_face_calc_poly_normal_vertex_cos"}
!89 = distinct !{!89, !49}
!90 = distinct !{!90, !49}
!91 = !{!"bmesh_polygon.c:add_newell_cross_v3_v3v3"}
!92 = !{!"bmesh_polygon.c:bm_face_calc_poly_center_mean_vertex_cos"}
!93 = distinct !{!93, !49}
!94 = !{!"bmesh_polygon.c:negate_v3"}
!95 = !{i8 0, i8 2}
!96 = distinct !{!96, !49}
!97 = !{!"bmesh_polygon.c:is_zero_v3"}
!98 = distinct !{!98, !49}
!99 = !{!45, !37, i64 40}
!100 = distinct !{!100, !49}
!101 = distinct !{!101, !49}
!102 = distinct !{!102, !49}
!103 = !{!104, !38, i64 28}
!104 = !{!"BMesh", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !38, i64 28, !38, i64 29, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !40, i64 88, !40, i64 92, !40, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !40, i64 128, !37, i64 136, !105, i64 144, !105, i64 344, !105, i64 544, !105, i64 744, !41, i64 944, !40, i64 948, !40, i64 952, !40, i64 956, !106, i64 960, !37, i64 976, !106, i64 984, !37, i64 1000}
!105 = !{!"CustomData", !37, i64 0, !38, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !37, i64 184, !37, i64 192}
!106 = !{!"ListBase", !37, i64 0, !37, i64 8}
!107 = !{!"bmesh_polygon.c:len_squared_v3v3"}
!108 = !{!"bmesh_polygon.c:_bm_elem_flag_enable"}
!109 = !{!36, !38, i64 13}
!110 = !{!"bmesh_polygon.c:_bm_elem_index_set"}
!111 = distinct !{!111, !49}
!112 = distinct !{!112, !49}
!113 = distinct !{!113, !49}
!114 = distinct !{!114, !49}
!115 = distinct !{!115, !49}
!116 = distinct !{!116, !49}
!117 = distinct !{!117, !49}
!118 = distinct !{!118, !49}
!119 = distinct !{!119, !49}
!120 = !{!"bmesh_polygon.c:max_ff"}
!121 = !{!"bmesh_polygon.c:add_v2_fl"}
!122 = !{!"bmesh_polygon.c:copy_v2_v2"}
!123 = !{!"bmesh_polygon.c:scale_edge_v2f"}
!124 = !{!"bmesh_polygon.c:line_crosses_v2f"}
!125 = distinct !{!125, !49}
!126 = distinct !{!126, !49}
!127 = distinct !{!127, !49}
!128 = distinct !{!128, !49}
!129 = !{!"bmesh_polygon.c:len_v3"}
!130 = !{!"bmesh_polygon.c:normalize_v3_v3"}
!131 = !{!"bmesh_polygon.c:mul_v3_v3fl"}
!132 = !{!"bmesh_polygon.c:BM_iter_init"}
!133 = !{!78, !38, i64 60}
!134 = !{!78, !37, i64 40}
!135 = !{!104, !37, i64 56}
!136 = !{!38, !38, i64 0}
!137 = !{!"bmesh_polygon.c:sub_v2_v2v2"}
!138 = !{!"bmesh_polygon.c:mul_v2_fl"}
!139 = !{!"bmesh_polygon.c:add_v2_v2v2"}
!140 = !{!"bmesh_polygon.c:testedgesidef"}
!141 = !{!"bmesh_polygon.c:min_ff"}
