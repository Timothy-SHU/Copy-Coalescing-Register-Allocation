; ModuleID = 'blender/source/blender/bmesh/intern/bmesh_interp.c'
source_filename = "blender/source/blender/bmesh/intern/bmesh_interp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.MDisps = type { i32, i32, ptr, ptr }

@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@__func__.bm_loop_interp_mdisps = private unnamed_addr constant [22 x i8] c"bm_loop_interp_mdisps\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @BM_data_interp_from_verts(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, float noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24
  tail call fastcc void @bm_data_interp_from_elem(ptr noundef nonnull %6, ptr noundef %1, ptr noundef %2, ptr noundef %3, float noundef %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @bm_data_interp_from_elem(ptr noundef %0, ptr noundef readonly %1, ptr noundef readonly %2, ptr noundef %3, float noundef %4) unnamed_addr #0 {
  %6 = alloca [2 x ptr], align 16
  %7 = alloca [2 x float], align 4
  %8 = load ptr, ptr %1, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %32, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr %2, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %32, label %13

13:                                               ; preds = %10
  %14 = fcmp ugt float %4, 0.000000e+00
  br i1 %14, label %20, label %15

15:                                               ; preds = %13
  %16 = icmp eq ptr %1, %3
  br i1 %16, label %32, label %17

17:                                               ; preds = %15
  %18 = load ptr, ptr %3, align 8, !tbaa !34
  tail call void @CustomData_bmesh_free_block_data(ptr noundef %0, ptr noundef %18) #8
  %19 = load ptr, ptr %1, align 8, !tbaa !34
  tail call void @CustomData_bmesh_copy_data(ptr noundef %0, ptr noundef %0, ptr noundef %19, ptr noundef nonnull %3) #8
  br label %32

20:                                               ; preds = %13
  %21 = fcmp ult float %4, 1.000000e+00
  br i1 %21, label %27, label %22

22:                                               ; preds = %20
  %23 = icmp eq ptr %2, %3
  br i1 %23, label %32, label %24

24:                                               ; preds = %22
  %25 = load ptr, ptr %3, align 8, !tbaa !34
  tail call void @CustomData_bmesh_free_block_data(ptr noundef %0, ptr noundef %25) #8
  %26 = load ptr, ptr %2, align 8, !tbaa !34
  tail call void @CustomData_bmesh_copy_data(ptr noundef %0, ptr noundef %0, ptr noundef %26, ptr noundef nonnull %3) #8
  br label %32

27:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  store ptr %8, ptr %6, align 16, !tbaa !41
  %28 = getelementptr inbounds [2 x ptr], ptr %6, i64 0, i64 1
  store ptr %11, ptr %28, align 8, !tbaa !41
  %29 = fsub float 1.000000e+00, %4
  store float %29, ptr %7, align 4, !tbaa !42
  %30 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  store float %4, ptr %30, align 4, !tbaa !42
  %31 = load ptr, ptr %3, align 8, !tbaa !34
  call void @CustomData_bmesh_interp(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef null, i32 noundef 2, ptr noundef %31) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8
  br label %32

32:                                               ; preds = %15, %17, %24, %22, %27, %10, %5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BM_data_interp_from_edges(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, float noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 25
  tail call fastcc void @bm_data_interp_from_elem(ptr noundef nonnull %6, ptr noundef %1, ptr noundef %2, ptr noundef %3, float noundef %4)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BM_data_interp_face_vert_edge(ptr noundef %0, ptr noundef readnone %1, ptr nocapture noundef readnone %2, ptr noundef readnone %3, ptr nocapture noundef readonly %4, float noundef %5) local_unnamed_addr #0 {
  %7 = alloca [2 x ptr], align 16
  %8 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #8
  %9 = getelementptr inbounds %struct.BMEdge, ptr %4, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !44
  %11 = icmp eq ptr %10, null
  br i1 %11, label %55, label %12

12:                                               ; preds = %6
  %13 = fsub float 1.000000e+00, %5
  %14 = getelementptr inbounds [2 x float], ptr %8, i64 0, i64 1
  store float %13, ptr %14, align 4, !tbaa !42
  store float %5, ptr %8, align 4, !tbaa !42
  %15 = getelementptr inbounds [2 x ptr], ptr %7, i64 0, i64 1
  %16 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  br label %17

17:                                               ; preds = %47, %12
  %18 = phi ptr [ null, %12 ], [ %41, %47 ]
  %19 = phi ptr [ null, %12 ], [ %42, %47 ]
  %20 = phi ptr [ null, %12 ], [ %43, %47 ]
  %21 = phi ptr [ %10, %12 ], [ %52, %47 ]
  %22 = getelementptr inbounds %struct.BMLoop, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !47
  %24 = icmp eq ptr %23, %1
  br i1 %24, label %25, label %29

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.BMLoop, ptr %21, i64 0, i32 6
  %27 = load ptr, ptr %26, align 8, !tbaa !49
  %28 = getelementptr inbounds %struct.BMLoop, ptr %27, i64 0, i32 6
  br label %35

29:                                               ; preds = %17
  %30 = icmp eq ptr %23, %3
  br i1 %30, label %31, label %40

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.BMLoop, ptr %21, i64 0, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !49
  %34 = getelementptr inbounds %struct.BMLoop, ptr %21, i64 0, i32 7
  br label %35

35:                                               ; preds = %25, %31
  %36 = phi ptr [ %34, %31 ], [ %28, %25 ]
  %37 = phi ptr [ %33, %31 ], [ %21, %25 ]
  %38 = phi ptr [ %21, %31 ], [ %27, %25 ]
  %39 = load ptr, ptr %36, align 8, !tbaa !41
  br label %40

40:                                               ; preds = %35, %29
  %41 = phi ptr [ %18, %29 ], [ %37, %35 ]
  %42 = phi ptr [ %19, %29 ], [ %38, %35 ]
  %43 = phi ptr [ %20, %29 ], [ %39, %35 ]
  %44 = icmp ne ptr %41, null
  %45 = icmp ne ptr %43, null
  %46 = select i1 %44, i1 %45, i1 false
  br i1 %46, label %47, label %55

47:                                               ; preds = %40
  %48 = load ptr, ptr %41, align 8, !tbaa !50
  store ptr %48, ptr %7, align 16, !tbaa !41
  %49 = load ptr, ptr %43, align 8, !tbaa !50
  store ptr %49, ptr %15, align 8, !tbaa !41
  %50 = load ptr, ptr %42, align 8, !tbaa !50
  call void @CustomData_bmesh_interp(ptr noundef nonnull %16, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef null, i32 noundef 2, ptr noundef %50) #8
  %51 = getelementptr inbounds %struct.BMLoop, ptr %21, i64 0, i32 4
  %52 = load ptr, ptr %51, align 8, !tbaa !51
  %53 = load ptr, ptr %9, align 8, !tbaa !44
  %54 = icmp eq ptr %52, %53
  br i1 %54, label %55, label %17, !llvm.loop !52

55:                                               ; preds = %47, %40, %6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @CustomData_bmesh_interp(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @BM_face_interp_from_face_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 {
  %9 = alloca [2 x float], align 4
  %10 = getelementptr inbounds %struct.BMFace, ptr %2, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !55
  %12 = sext i32 %11 to i64
  %13 = shl nsw i64 %12, 2
  %14 = alloca i8, i64 %13, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #8
  %15 = icmp eq ptr %2, %1
  br i1 %15, label %17, label %16

16:                                               ; preds = %8
  tail call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef %2, ptr noundef %1) #8
  br label %17

17:                                               ; preds = %16, %8
  %18 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !58
  %20 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  %21 = icmp eq i8 %3, 0
  %22 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24
  br label %23

23:                                               ; preds = %35, %17
  %24 = phi ptr [ %19, %17 ], [ %37, %35 ]
  %25 = getelementptr inbounds %struct.BMLoop, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !47
  %27 = getelementptr inbounds %struct.BMVert, ptr %26, i64 0, i32 2
  call void @mul_v2_m3v3(ptr noundef nonnull %9, ptr noundef %7, ptr noundef nonnull %27) #8
  %28 = load i32, ptr %10, align 8, !tbaa !55
  call void @interp_weights_poly_v2(ptr noundef nonnull %14, ptr noundef %6, i32 noundef %28, ptr noundef nonnull %9) #8
  %29 = load i32, ptr %10, align 8, !tbaa !55
  %30 = load ptr, ptr %24, align 8, !tbaa !50
  call void @CustomData_bmesh_interp(ptr noundef nonnull %20, ptr noundef %4, ptr noundef nonnull %14, ptr noundef null, i32 noundef %29, ptr noundef %30) #8
  br i1 %21, label %35, label %31

31:                                               ; preds = %23
  %32 = load i32, ptr %10, align 8, !tbaa !55
  %33 = load ptr, ptr %25, align 8, !tbaa !47
  %34 = load ptr, ptr %33, align 8, !tbaa !59
  call void @CustomData_bmesh_interp(ptr noundef nonnull %22, ptr noundef %5, ptr noundef nonnull %14, ptr noundef null, i32 noundef %32, ptr noundef %34) #8
  br label %35

35:                                               ; preds = %23, %31
  %36 = getelementptr inbounds %struct.BMLoop, ptr %24, i64 0, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !49
  %38 = icmp eq ptr %37, %19
  br i1 %38, label %39, label %23, !llvm.loop !61

39:                                               ; preds = %35
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #8
  ret void
}

declare void @BM_elem_attrs_copy(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_v2_m3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @interp_weights_poly_v2(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BM_face_interp_from_face(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca [3 x [3 x float]], align 16
  %6 = getelementptr inbounds %struct.BMFace, ptr %2, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !55
  %8 = sext i32 %7 to i64
  %9 = shl nsw i64 %8, 3
  %10 = alloca i8, i64 %9, align 16
  %11 = icmp eq i8 %3, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %4
  %13 = alloca i8, i64 %9, align 16
  br label %14

14:                                               ; preds = %4, %12
  %15 = phi ptr [ %13, %12 ], [ null, %4 ]
  %16 = alloca i8, i64 %9, align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #8
  %17 = getelementptr inbounds %struct.BMFace, ptr %2, i64 0, i32 4
  call void @axis_dominant_v3_to_m3(ptr noundef nonnull %5, ptr noundef nonnull %17) #8
  %18 = getelementptr inbounds %struct.BMFace, ptr %2, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !58
  br label %20

20:                                               ; preds = %33, %14
  %21 = phi i64 [ %34, %33 ], [ 0, %14 ]
  %22 = phi ptr [ %36, %33 ], [ %19, %14 ]
  %23 = getelementptr inbounds [2 x float], ptr %16, i64 %21
  %24 = getelementptr inbounds %struct.BMLoop, ptr %22, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !47
  %26 = getelementptr inbounds %struct.BMVert, ptr %25, i64 0, i32 2
  call void @mul_v2_m3v3(ptr noundef nonnull %23, ptr noundef nonnull %5, ptr noundef nonnull %26) #8
  %27 = load ptr, ptr %22, align 8, !tbaa !50
  %28 = getelementptr inbounds ptr, ptr %10, i64 %21
  store ptr %27, ptr %28, align 8, !tbaa !41
  br i1 %11, label %33, label %29

29:                                               ; preds = %20
  %30 = load ptr, ptr %24, align 8, !tbaa !47
  %31 = load ptr, ptr %30, align 8, !tbaa !59
  %32 = getelementptr inbounds ptr, ptr %15, i64 %21
  store ptr %31, ptr %32, align 8, !tbaa !41
  br label %33

33:                                               ; preds = %20, %29
  %34 = add nuw i64 %21, 1
  %35 = getelementptr inbounds %struct.BMLoop, ptr %22, i64 0, i32 6
  %36 = load ptr, ptr %35, align 8, !tbaa !49
  %37 = icmp eq ptr %36, %19
  br i1 %37, label %38, label %20, !llvm.loop !62

38:                                               ; preds = %33
  call void @BM_face_interp_from_face_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, ptr noundef nonnull %10, ptr noundef %15, ptr noundef nonnull %16, ptr noundef nonnull %5)
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #8
  ret void
}

declare void @axis_dominant_v3_to_m3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BM_face_multires_bounds_smooth(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca [3 x float], align 4
  %5 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  %6 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %5, i32 noundef 19) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #8
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %174, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 11, ptr %9, align 4, !tbaa !63
  %10 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__loop_of_face_begin, ptr %10, align 8, !tbaa !65
  %11 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__loop_of_face_step, ptr %11, align 8, !tbaa !66
  store ptr %1, ptr %3, align 8, !tbaa !67
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %3) #8
  %12 = load ptr, ptr %11, align 8, !tbaa !66
  %13 = call ptr %12(ptr noundef nonnull %3) #8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %68, label %15

15:                                               ; preds = %8
  %16 = sext i32 %6 to i64
  %17 = getelementptr inbounds float, ptr %4, i64 1
  %18 = getelementptr inbounds float, ptr %4, i64 2
  br label %19

19:                                               ; preds = %15, %64
  %20 = phi ptr [ %13, %15 ], [ %66, %64 ]
  %21 = getelementptr inbounds %struct.BMLoop, ptr %20, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !68
  %23 = load ptr, ptr %22, align 8, !tbaa !50
  %24 = getelementptr inbounds i8, ptr %23, i64 %16
  %25 = load ptr, ptr %20, align 8, !tbaa !50
  %26 = getelementptr inbounds %struct.BMLoop, ptr %20, i64 0, i32 6
  %27 = load ptr, ptr %26, align 8, !tbaa !49
  %28 = load ptr, ptr %27, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #8
  %29 = load i32, ptr %24, align 8, !tbaa !69
  %30 = sitofp i32 %29 to double
  %31 = call double @sqrt(double noundef %30) #8
  %32 = fptosi double %31 to i32
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %64

34:                                               ; preds = %19
  %35 = getelementptr inbounds i8, ptr %28, i64 %16
  %36 = getelementptr inbounds i8, ptr %25, i64 %16
  %37 = getelementptr inbounds %struct.MDisps, ptr %35, i64 0, i32 2
  %38 = getelementptr inbounds %struct.MDisps, ptr %36, i64 0, i32 2
  %39 = zext nneg i32 %32 to i64
  %40 = zext nneg i32 %32 to i64
  br label %41

41:                                               ; preds = %34, %41
  %42 = phi i64 [ 0, %34 ], [ %62, %41 ]
  %43 = load ptr, ptr %37, align 8, !tbaa !71
  %44 = mul nsw i64 %42, %39
  %45 = getelementptr inbounds [3 x float], ptr %43, i64 %44
  %46 = load ptr, ptr %38, align 8, !tbaa !71
  %47 = getelementptr inbounds [3 x float], ptr %46, i64 %42
  call void @mid_v3_v3v3(ptr noundef nonnull %4, ptr noundef %45, ptr noundef %47) #8
  %48 = load ptr, ptr %37, align 8, !tbaa !71
  %49 = getelementptr inbounds [3 x float], ptr %48, i64 %44
  %50 = load float, ptr %4, align 4, !tbaa !42
  store float %50, ptr %49, align 4, !tbaa !42
  %51 = load float, ptr %17, align 4, !tbaa !42
  %52 = getelementptr inbounds float, ptr %49, i64 1
  store float %51, ptr %52, align 4, !tbaa !42
  %53 = load float, ptr %18, align 4, !tbaa !42
  %54 = getelementptr inbounds float, ptr %49, i64 2
  store float %53, ptr %54, align 4, !tbaa !42
  %55 = load ptr, ptr %38, align 8, !tbaa !71
  %56 = getelementptr inbounds [3 x float], ptr %55, i64 %42
  %57 = load float, ptr %4, align 4, !tbaa !42
  store float %57, ptr %56, align 4, !tbaa !42
  %58 = load float, ptr %17, align 4, !tbaa !42
  %59 = getelementptr inbounds float, ptr %56, i64 1
  store float %58, ptr %59, align 4, !tbaa !42
  %60 = load float, ptr %18, align 4, !tbaa !42
  %61 = getelementptr inbounds float, ptr %56, i64 2
  store float %60, ptr %61, align 4, !tbaa !42
  %62 = add nuw nsw i64 %42, 1
  %63 = icmp eq i64 %62, %40
  br i1 %63, label %64, label %41, !llvm.loop !72

64:                                               ; preds = %41, %19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #8
  %65 = load ptr, ptr %11, align 8, !tbaa !66
  %66 = call ptr %65(ptr noundef nonnull %3) #8
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %19, !llvm.loop !73

68:                                               ; preds = %64, %8
  store i8 11, ptr %9, align 4, !tbaa !63
  store ptr @bmiter__loop_of_face_begin, ptr %10, align 8, !tbaa !65
  store ptr @bmiter__loop_of_face_step, ptr %11, align 8, !tbaa !66
  store ptr %1, ptr %3, align 8, !tbaa !67
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %3) #8
  %69 = load ptr, ptr %11, align 8, !tbaa !66
  %70 = call ptr %69(ptr noundef nonnull %3) #8
  %71 = icmp eq ptr %70, null
  br i1 %71, label %174, label %72

72:                                               ; preds = %68
  %73 = sext i32 %6 to i64
  br label %74

74:                                               ; preds = %72, %170
  %75 = phi ptr [ %70, %72 ], [ %172, %170 ]
  %76 = load ptr, ptr %75, align 8, !tbaa !50
  %77 = getelementptr inbounds i8, ptr %76, i64 %73
  %78 = getelementptr inbounds %struct.BMLoop, ptr %75, i64 0, i32 4
  %79 = load ptr, ptr %78, align 8, !tbaa !51
  %80 = icmp eq ptr %79, %75
  br i1 %80, label %170, label %81

81:                                               ; preds = %74
  %82 = getelementptr inbounds %struct.BMLoop, ptr %79, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !47
  %84 = getelementptr inbounds %struct.BMLoop, ptr %75, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !47
  %86 = icmp eq ptr %83, %85
  br i1 %86, label %90, label %87

87:                                               ; preds = %81
  %88 = getelementptr inbounds %struct.BMLoop, ptr %79, i64 0, i32 6
  %89 = load ptr, ptr %88, align 8, !tbaa !49
  br label %90

90:                                               ; preds = %81, %87
  %91 = phi ptr [ %89, %87 ], [ %79, %81 ]
  %92 = load ptr, ptr %91, align 8, !tbaa !50
  %93 = load i32, ptr %77, align 8, !tbaa !69
  %94 = sitofp i32 %93 to double
  %95 = call double @sqrt(double noundef %94) #8
  %96 = fptosi double %95 to i32
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %170

98:                                               ; preds = %90
  %99 = getelementptr inbounds i8, ptr %92, i64 %73
  %100 = load ptr, ptr %84, align 8, !tbaa !47
  %101 = load ptr, ptr %78, align 8, !tbaa !51
  %102 = getelementptr inbounds %struct.BMLoop, ptr %101, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !47
  %104 = icmp eq ptr %100, %103
  %105 = add nsw i32 %96, -2
  %106 = mul nsw i32 %105, %96
  %107 = add nsw i32 %96, -1
  %108 = mul nsw i32 %107, %96
  %109 = getelementptr inbounds %struct.MDisps, ptr %77, i64 0, i32 2
  %110 = load ptr, ptr %109, align 8, !tbaa !71
  %111 = getelementptr inbounds %struct.MDisps, ptr %99, i64 0, i32 2
  %112 = load ptr, ptr %111, align 8, !tbaa !71
  br label %113

113:                                              ; preds = %98, %113
  %114 = phi i32 [ 0, %98 ], [ %168, %113 ]
  %115 = add nuw nsw i32 %114, 1
  %116 = mul i32 %115, %96
  %117 = add nsw i32 %116, -2
  %118 = add nsw i32 %114, %106
  %119 = add nsw i32 %116, -1
  %120 = add nsw i32 %114, %108
  %121 = add nsw i32 %116, -1
  %122 = select i1 %104, i32 %117, i32 %118
  %123 = select i1 %104, i32 %121, i32 %119
  %124 = select i1 %104, i32 %121, i32 %120
  %125 = sext i32 %117 to i64
  %126 = getelementptr inbounds [3 x float], ptr %110, i64 %125
  %127 = sext i32 %122 to i64
  %128 = getelementptr inbounds [3 x float], ptr %112, i64 %127
  %129 = load float, ptr %126, align 4, !tbaa !42
  %130 = load float, ptr %128, align 4, !tbaa !42
  %131 = fadd float %129, %130
  %132 = getelementptr inbounds float, ptr %126, i64 1
  %133 = load float, ptr %132, align 4, !tbaa !42
  %134 = getelementptr inbounds float, ptr %128, i64 1
  %135 = load float, ptr %134, align 4, !tbaa !42
  %136 = fadd float %133, %135
  %137 = getelementptr inbounds float, ptr %126, i64 2
  %138 = load float, ptr %137, align 4, !tbaa !42
  %139 = getelementptr inbounds float, ptr %128, i64 2
  %140 = load float, ptr %139, align 4, !tbaa !42
  %141 = fadd float %138, %140
  %142 = fmul float %131, 0x3FC70A3D80000000
  %143 = fmul float %136, 0x3FC70A3D80000000
  %144 = fmul float %141, 0x3FC70A3D80000000
  %145 = sext i32 %123 to i64
  %146 = getelementptr inbounds [3 x float], ptr %110, i64 %145
  %147 = sext i32 %124 to i64
  %148 = getelementptr inbounds [3 x float], ptr %112, i64 %147
  %149 = load float, ptr %146, align 4, !tbaa !42
  %150 = load float, ptr %148, align 4, !tbaa !42
  %151 = fadd float %149, %150
  %152 = getelementptr inbounds float, ptr %146, i64 1
  %153 = load float, ptr %152, align 4, !tbaa !42
  %154 = getelementptr inbounds float, ptr %148, i64 1
  %155 = load float, ptr %154, align 4, !tbaa !42
  %156 = fadd float %153, %155
  %157 = getelementptr inbounds float, ptr %146, i64 2
  %158 = load float, ptr %157, align 4, !tbaa !42
  %159 = getelementptr inbounds float, ptr %148, i64 2
  %160 = load float, ptr %159, align 4, !tbaa !42
  %161 = fadd float %158, %160
  %162 = fmul float %151, 0x3FD47AE140000000
  %163 = fmul float %156, 0x3FD47AE140000000
  %164 = fmul float %161, 0x3FD47AE140000000
  %165 = fadd float %142, %162
  %166 = fadd float %143, %163
  %167 = fadd float %144, %164
  store float %165, ptr %146, align 4, !tbaa !42
  store float %166, ptr %152, align 4, !tbaa !42
  store float %167, ptr %157, align 4, !tbaa !42
  store float %165, ptr %148, align 4, !tbaa !42
  store float %166, ptr %154, align 4, !tbaa !42
  store float %167, ptr %159, align 4, !tbaa !42
  %168 = add nuw nsw i32 %114, 1
  %169 = icmp eq i32 %168, %96
  br i1 %169, label %170, label %113, !llvm.loop !74

170:                                              ; preds = %113, %90, %74
  %171 = load ptr, ptr %11, align 8, !tbaa !66
  %172 = call ptr %171(ptr noundef nonnull %3) #8
  %173 = icmp eq ptr %172, null
  br i1 %173, label %174, label %74, !llvm.loop !75

174:                                              ; preds = %170, %68, %2
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #8
  ret void
}

declare i32 @CustomData_get_offset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #3

declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BM_loop_interp_multires(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  tail call fastcc void @bm_loop_interp_mdisps(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @bm_loop_interp_mdisps(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca [5 x [3 x float]], align 16
  %14 = alloca [3 x float], align 4
  %15 = alloca [4 x [3 x float]], align 16
  %16 = alloca [3 x float], align 4
  %17 = alloca [3 x float], align 4
  %18 = alloca [3 x float], align 4
  %19 = alloca [3 x float], align 4
  %20 = alloca [3 x float], align 4
  %21 = alloca [3 x float], align 4
  %22 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  %23 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %22, i32 noundef 19) #8
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %545, label %25

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !76
  %28 = getelementptr inbounds %struct.BMFace, ptr %27, i64 0, i32 3
  %29 = load i32, ptr %28, align 8, !tbaa !55
  %30 = icmp slt i32 %29, 3
  br i1 %30, label %545, label %31

31:                                               ; preds = %25
  %32 = load ptr, ptr %1, align 8, !tbaa !50
  %33 = sext i32 %23 to i64
  %34 = getelementptr inbounds i8, ptr %32, i64 %33
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #8
  call void @BM_face_calc_center_mean(ptr noundef %27, ptr noundef nonnull %7) #8
  %35 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 7
  %36 = load ptr, ptr %35, align 8, !tbaa !68
  %37 = getelementptr inbounds %struct.BMLoop, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !47
  %39 = getelementptr inbounds %struct.BMVert, ptr %38, i64 0, i32 2
  %40 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !47
  %42 = getelementptr inbounds %struct.BMVert, ptr %41, i64 0, i32 2
  call void @mid_v3_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %39, ptr noundef nonnull %42) #8
  %43 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 6
  %44 = load ptr, ptr %43, align 8, !tbaa !49
  %45 = getelementptr inbounds %struct.BMLoop, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !47
  %47 = getelementptr inbounds %struct.BMVert, ptr %46, i64 0, i32 2
  %48 = load ptr, ptr %40, align 8, !tbaa !47
  %49 = getelementptr inbounds %struct.BMVert, ptr %48, i64 0, i32 2
  call void @mid_v3_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %47, ptr noundef nonnull %49) #8
  %50 = load float, ptr %7, align 4, !tbaa !42
  %51 = getelementptr inbounds float, ptr %7, i64 1
  %52 = load float, ptr %51, align 4, !tbaa !42
  %53 = getelementptr inbounds float, ptr %7, i64 2
  %54 = load float, ptr %53, align 4, !tbaa !42
  %55 = load float, ptr %9, align 4, !tbaa !42
  %56 = getelementptr inbounds float, ptr %9, i64 1
  %57 = load float, ptr %56, align 4, !tbaa !42
  %58 = getelementptr inbounds float, ptr %9, i64 2
  %59 = load float, ptr %58, align 4, !tbaa !42
  %60 = load ptr, ptr %40, align 8, !tbaa !47
  %61 = getelementptr inbounds %struct.BMVert, ptr %60, i64 0, i32 2
  %62 = load float, ptr %61, align 4, !tbaa !42
  %63 = getelementptr inbounds %struct.BMVert, ptr %60, i64 0, i32 2, i64 1
  %64 = load float, ptr %63, align 4, !tbaa !42
  %65 = getelementptr inbounds %struct.BMVert, ptr %60, i64 0, i32 2, i64 2
  %66 = load float, ptr %65, align 4, !tbaa !42
  %67 = load float, ptr %8, align 4, !tbaa !42
  %68 = getelementptr inbounds float, ptr %8, i64 1
  %69 = load float, ptr %68, align 4, !tbaa !42
  %70 = getelementptr inbounds float, ptr %8, i64 2
  %71 = load float, ptr %70, align 4, !tbaa !42
  %72 = fsub float %55, %50
  %73 = fsub float %57, %52
  %74 = fsub float %59, %54
  %75 = fsub float %62, %67
  %76 = fsub float %64, %69
  %77 = fsub float %66, %71
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #8
  %78 = load i32, ptr %34, align 8, !tbaa !69
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %96

80:                                               ; preds = %31
  %81 = getelementptr inbounds %struct.BMFace, ptr %2, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !58
  %83 = load ptr, ptr %82, align 8, !tbaa !50
  %84 = getelementptr inbounds i8, ptr %83, i64 %33
  %85 = load i32, ptr %84, align 8, !tbaa !69
  store i32 %85, ptr %34, align 8, !tbaa !69
  %86 = getelementptr inbounds %struct.MDisps, ptr %84, i64 0, i32 1
  %87 = load i32, ptr %86, align 4, !tbaa !77
  %88 = getelementptr inbounds %struct.MDisps, ptr %34, i64 0, i32 1
  store i32 %87, ptr %88, align 4, !tbaa !77
  %89 = icmp eq i32 %85, 0
  br i1 %89, label %545, label %90

90:                                               ; preds = %80
  %91 = load ptr, ptr @MEM_callocN, align 8, !tbaa !41
  %92 = sext i32 %85 to i64
  %93 = mul nsw i64 %92, 12
  %94 = call ptr %91(i64 noundef %93, ptr noundef nonnull @__func__.bm_loop_interp_mdisps) #8
  %95 = getelementptr inbounds %struct.MDisps, ptr %34, i64 0, i32 2
  store ptr %94, ptr %95, align 8, !tbaa !71
  br label %96

96:                                               ; preds = %90, %31
  %97 = fsub float %67, %50
  %98 = fsub float %69, %52
  %99 = fsub float %71, %54
  %100 = fmul float %98, %98
  %101 = call float @llvm.fmuladd.f32(float %97, float %97, float %100)
  %102 = call float @llvm.fmuladd.f32(float %99, float %99, float %101)
  %103 = fcmp ogt float %102, 0x38AA95A5C0000000
  br i1 %103, label %104, label %110

104:                                              ; preds = %96
  %105 = call float @sqrtf(float noundef %102) #8
  %106 = fdiv float 1.000000e+00, %105
  %107 = fmul float %97, %106
  %108 = fmul float %98, %106
  %109 = fmul float %99, %106
  br label %110

110:                                              ; preds = %96, %104
  %111 = phi float [ %107, %104 ], [ 0.000000e+00, %96 ]
  %112 = phi float [ %108, %104 ], [ 0.000000e+00, %96 ]
  %113 = phi float [ %109, %104 ], [ 0.000000e+00, %96 ]
  %114 = fmul float %73, %73
  %115 = call float @llvm.fmuladd.f32(float %72, float %72, float %114)
  %116 = call float @llvm.fmuladd.f32(float %74, float %74, float %115)
  %117 = fcmp ogt float %116, 0x38AA95A5C0000000
  br i1 %117, label %118, label %124

118:                                              ; preds = %110
  %119 = call float @sqrtf(float noundef %116) #8
  %120 = fdiv float 1.000000e+00, %119
  %121 = fmul float %72, %120
  %122 = fmul float %73, %120
  %123 = fmul float %74, %120
  br label %124

124:                                              ; preds = %110, %118
  %125 = phi float [ %121, %118 ], [ 0.000000e+00, %110 ]
  %126 = phi float [ %122, %118 ], [ 0.000000e+00, %110 ]
  %127 = phi float [ %123, %118 ], [ 0.000000e+00, %110 ]
  %128 = load i32, ptr %34, align 8, !tbaa !69
  %129 = sitofp i32 %128 to double
  %130 = call double @sqrt(double noundef %129) #8
  %131 = fptosi double %130 to i32
  %132 = add nsw i32 %131, -1
  %133 = sitofp i32 %132 to float
  %134 = fdiv float 1.000000e+00, %133
  %135 = icmp sgt i32 %131, 0
  br i1 %135, label %136, label %545

136:                                              ; preds = %124
  %137 = getelementptr inbounds %struct.BMFace, ptr %2, i64 0, i32 2
  %138 = getelementptr inbounds float, ptr %4, i64 1
  %139 = getelementptr inbounds float, ptr %17, i64 1
  %140 = getelementptr inbounds float, ptr %4, i64 2
  %141 = getelementptr inbounds float, ptr %17, i64 2
  %142 = getelementptr inbounds float, ptr %6, i64 1
  %143 = getelementptr inbounds float, ptr %18, i64 1
  %144 = getelementptr inbounds float, ptr %6, i64 2
  %145 = getelementptr inbounds float, ptr %18, i64 2
  %146 = getelementptr inbounds float, ptr %20, i64 1
  %147 = getelementptr inbounds float, ptr %20, i64 2
  %148 = getelementptr inbounds float, ptr %5, i64 1
  %149 = getelementptr inbounds float, ptr %21, i64 1
  %150 = getelementptr inbounds float, ptr %5, i64 2
  %151 = getelementptr inbounds float, ptr %21, i64 2
  %152 = getelementptr inbounds float, ptr %19, i64 1
  %153 = getelementptr inbounds float, ptr %19, i64 2
  %154 = getelementptr inbounds float, ptr %13, i64 1
  %155 = getelementptr inbounds float, ptr %13, i64 2
  %156 = getelementptr inbounds [5 x [3 x float]], ptr %13, i64 0, i64 1
  %157 = getelementptr inbounds [5 x [3 x float]], ptr %13, i64 0, i64 1, i64 1
  %158 = getelementptr inbounds [5 x [3 x float]], ptr %13, i64 0, i64 1, i64 2
  %159 = getelementptr inbounds [5 x [3 x float]], ptr %13, i64 0, i64 2
  %160 = getelementptr inbounds [5 x [3 x float]], ptr %13, i64 0, i64 2, i64 1
  %161 = getelementptr inbounds [5 x [3 x float]], ptr %13, i64 0, i64 2, i64 2
  %162 = getelementptr inbounds [5 x [3 x float]], ptr %13, i64 0, i64 3
  %163 = getelementptr inbounds [5 x [3 x float]], ptr %13, i64 0, i64 3, i64 1
  %164 = getelementptr inbounds [5 x [3 x float]], ptr %13, i64 0, i64 3, i64 2
  %165 = getelementptr inbounds [5 x [3 x float]], ptr %13, i64 0, i64 4
  %166 = getelementptr inbounds [5 x [3 x float]], ptr %13, i64 0, i64 4, i64 1
  %167 = getelementptr inbounds [5 x [3 x float]], ptr %13, i64 0, i64 4, i64 2
  %168 = getelementptr inbounds float, ptr %14, i64 1
  %169 = getelementptr inbounds float, ptr %14, i64 2
  %170 = getelementptr inbounds float, ptr %15, i64 1
  %171 = getelementptr inbounds float, ptr %15, i64 2
  %172 = getelementptr inbounds [4 x [3 x float]], ptr %15, i64 0, i64 1
  %173 = getelementptr inbounds [4 x [3 x float]], ptr %15, i64 0, i64 1, i64 1
  %174 = getelementptr inbounds [4 x [3 x float]], ptr %15, i64 0, i64 1, i64 2
  %175 = getelementptr inbounds [4 x [3 x float]], ptr %15, i64 0, i64 2
  %176 = getelementptr inbounds [4 x [3 x float]], ptr %15, i64 0, i64 2, i64 1
  %177 = getelementptr inbounds [4 x [3 x float]], ptr %15, i64 0, i64 2, i64 2
  %178 = getelementptr inbounds [4 x [3 x float]], ptr %15, i64 0, i64 3
  %179 = getelementptr inbounds [4 x [3 x float]], ptr %15, i64 0, i64 3, i64 1
  %180 = getelementptr inbounds [4 x [3 x float]], ptr %15, i64 0, i64 3, i64 2
  %181 = getelementptr inbounds %struct.MDisps, ptr %34, i64 0, i32 2
  %182 = getelementptr inbounds float, ptr %10, i64 1
  %183 = getelementptr inbounds float, ptr %10, i64 2
  %184 = fneg float %113
  %185 = fmul float %126, %184
  %186 = call float @llvm.fmuladd.f32(float %112, float %127, float %185)
  %187 = fneg float %111
  %188 = fmul float %127, %187
  %189 = call float @llvm.fmuladd.f32(float %113, float %125, float %188)
  %190 = getelementptr inbounds float, ptr %11, i64 1
  %191 = fneg float %112
  %192 = fmul float %125, %191
  %193 = call float @llvm.fmuladd.f32(float %111, float %126, float %192)
  %194 = getelementptr inbounds float, ptr %11, i64 2
  %195 = getelementptr inbounds float, ptr %12, i64 1
  %196 = getelementptr inbounds float, ptr %12, i64 2
  %197 = fneg float %125
  %198 = fmul float %112, %197
  %199 = call float @llvm.fmuladd.f32(float %111, float %126, float %198)
  %200 = call float @llvm.fabs.f32(float %199)
  %201 = fcmp olt float %200, 0x3F1A36E2E0000000
  %202 = fmul float %113, %197
  %203 = call float @llvm.fmuladd.f32(float %111, float %127, float %202)
  %204 = call float @llvm.fabs.f32(float %203)
  %205 = fcmp olt float %204, 0x3F1A36E2E0000000
  %206 = fneg float %126
  %207 = fmul float %113, %206
  %208 = call float @llvm.fmuladd.f32(float %112, float %127, float %207)
  %209 = zext nneg i32 %131 to i64
  %210 = zext nneg i32 %131 to i64
  %211 = zext nneg i32 %131 to i64
  br label %212

212:                                              ; preds = %136, %542
  %213 = phi i64 [ 0, %136 ], [ %543, %542 ]
  %214 = phi float [ undef, %136 ], [ %487, %542 ]
  %215 = phi float [ undef, %136 ], [ %486, %542 ]
  %216 = phi float [ undef, %136 ], [ %485, %542 ]
  %217 = phi float [ undef, %136 ], [ %484, %542 ]
  %218 = phi float [ undef, %136 ], [ %483, %542 ]
  %219 = phi float [ undef, %136 ], [ %482, %542 ]
  %220 = phi float [ undef, %136 ], [ %481, %542 ]
  %221 = phi float [ undef, %136 ], [ %480, %542 ]
  %222 = trunc i64 %213 to i32
  %223 = sitofp i32 %222 to float
  %224 = fmul float %134, %223
  br label %225

225:                                              ; preds = %212, %538
  %226 = phi i64 [ 0, %212 ], [ %540, %538 ]
  %227 = phi float [ 0.000000e+00, %212 ], [ %539, %538 ]
  %228 = phi float [ %214, %212 ], [ %487, %538 ]
  %229 = phi float [ %215, %212 ], [ %486, %538 ]
  %230 = phi float [ %216, %212 ], [ %485, %538 ]
  %231 = phi float [ %217, %212 ], [ %484, %538 ]
  %232 = phi float [ %218, %212 ], [ %483, %538 ]
  %233 = phi float [ %219, %212 ], [ %482, %538 ]
  %234 = phi float [ %220, %212 ], [ %481, %538 ]
  %235 = phi float [ %221, %212 ], [ %480, %538 ]
  %236 = fmul float %72, %227
  %237 = fmul float %73, %227
  %238 = fmul float %74, %227
  %239 = fadd float %50, %236
  %240 = fadd float %52, %237
  %241 = fadd float %54, %238
  %242 = fmul float %75, %227
  %243 = fmul float %76, %227
  %244 = fmul float %77, %227
  %245 = fadd float %67, %242
  %246 = fadd float %69, %243
  %247 = fadd float %71, %244
  %248 = fsub float %245, %239
  %249 = fsub float %246, %240
  %250 = fsub float %247, %241
  %251 = fmul float %224, %248
  %252 = fmul float %224, %249
  %253 = fmul float %224, %250
  %254 = fadd float %239, %251
  %255 = fadd float %240, %252
  %256 = fadd float %241, %253
  %257 = load ptr, ptr %137, align 8, !tbaa !58
  %258 = mul nsw i64 %226, %209
  %259 = add nuw nsw i64 %258, %213
  br label %260

260:                                              ; preds = %535, %225
  %261 = phi float [ %235, %225 ], [ %480, %535 ]
  %262 = phi float [ %234, %225 ], [ %481, %535 ]
  %263 = phi float [ %233, %225 ], [ %482, %535 ]
  %264 = phi float [ %232, %225 ], [ %483, %535 ]
  %265 = phi float [ %231, %225 ], [ %484, %535 ]
  %266 = phi float [ %230, %225 ], [ %485, %535 ]
  %267 = phi float [ %229, %225 ], [ %486, %535 ]
  %268 = phi float [ %228, %225 ], [ %487, %535 ]
  %269 = phi ptr [ %257, %225 ], [ %536, %535 ]
  %270 = load ptr, ptr %269, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #8
  %271 = load ptr, ptr %40, align 8, !tbaa !47
  %272 = getelementptr inbounds %struct.BMVert, ptr %271, i64 0, i32 3
  %273 = load float, ptr %272, align 4, !tbaa !42
  %274 = fcmp oeq float %273, 0.000000e+00
  br i1 %274, label %275, label %284

275:                                              ; preds = %260
  %276 = getelementptr inbounds %struct.BMVert, ptr %271, i64 0, i32 3, i64 1
  %277 = load float, ptr %276, align 4, !tbaa !42
  %278 = fcmp oeq float %277, 0.000000e+00
  br i1 %278, label %279, label %284

279:                                              ; preds = %275
  %280 = getelementptr inbounds %struct.BMVert, ptr %271, i64 0, i32 3, i64 2
  %281 = load float, ptr %280, align 4, !tbaa !42
  %282 = fcmp une float %281, 0.000000e+00
  br i1 %282, label %284, label %283

283:                                              ; preds = %279
  call void @BM_vert_normal_update_all(ptr noundef %271) #8
  br label %284

284:                                              ; preds = %275, %260, %283, %279
  %285 = getelementptr inbounds %struct.BMLoop, ptr %269, i64 0, i32 1
  %286 = load ptr, ptr %285, align 8, !tbaa !47
  %287 = getelementptr inbounds %struct.BMVert, ptr %286, i64 0, i32 3
  %288 = load float, ptr %287, align 4, !tbaa !42
  %289 = fcmp oeq float %288, 0.000000e+00
  br i1 %289, label %290, label %299

290:                                              ; preds = %284
  %291 = getelementptr inbounds %struct.BMVert, ptr %286, i64 0, i32 3, i64 1
  %292 = load float, ptr %291, align 4, !tbaa !42
  %293 = fcmp oeq float %292, 0.000000e+00
  br i1 %293, label %294, label %299

294:                                              ; preds = %290
  %295 = getelementptr inbounds %struct.BMVert, ptr %286, i64 0, i32 3, i64 2
  %296 = load float, ptr %295, align 4, !tbaa !42
  %297 = fcmp une float %296, 0.000000e+00
  br i1 %297, label %299, label %298

298:                                              ; preds = %294
  call void @BM_vert_normal_update_all(ptr noundef %286) #8
  br label %299

299:                                              ; preds = %290, %284, %298, %294
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #8
  %300 = getelementptr inbounds %struct.BMLoop, ptr %269, i64 0, i32 3
  %301 = load ptr, ptr %300, align 8, !tbaa !76
  call void @BM_face_calc_center_mean(ptr noundef %301, ptr noundef nonnull %4) #8
  %302 = getelementptr inbounds %struct.BMLoop, ptr %269, i64 0, i32 7
  %303 = load ptr, ptr %302, align 8, !tbaa !68
  %304 = getelementptr inbounds %struct.BMLoop, ptr %303, i64 0, i32 1
  %305 = load ptr, ptr %304, align 8, !tbaa !47
  %306 = getelementptr inbounds %struct.BMVert, ptr %305, i64 0, i32 2
  %307 = load ptr, ptr %285, align 8, !tbaa !47
  %308 = getelementptr inbounds %struct.BMVert, ptr %307, i64 0, i32 2
  call void @mid_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %306, ptr noundef nonnull %308) #8
  %309 = getelementptr inbounds %struct.BMLoop, ptr %269, i64 0, i32 6
  %310 = load ptr, ptr %309, align 8, !tbaa !49
  %311 = getelementptr inbounds %struct.BMLoop, ptr %310, i64 0, i32 1
  %312 = load ptr, ptr %311, align 8, !tbaa !47
  %313 = getelementptr inbounds %struct.BMVert, ptr %312, i64 0, i32 2
  %314 = load ptr, ptr %285, align 8, !tbaa !47
  %315 = getelementptr inbounds %struct.BMVert, ptr %314, i64 0, i32 2
  call void @mid_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %313, ptr noundef nonnull %315) #8
  %316 = load float, ptr %4, align 4, !tbaa !42
  store float %316, ptr %17, align 4, !tbaa !42
  %317 = load float, ptr %138, align 4, !tbaa !42
  store float %317, ptr %139, align 4, !tbaa !42
  %318 = load float, ptr %140, align 4, !tbaa !42
  store float %318, ptr %141, align 4, !tbaa !42
  %319 = load float, ptr %6, align 4, !tbaa !42
  store float %319, ptr %18, align 4, !tbaa !42
  %320 = load float, ptr %142, align 4, !tbaa !42
  store float %320, ptr %143, align 4, !tbaa !42
  %321 = load float, ptr %144, align 4, !tbaa !42
  store float %321, ptr %145, align 4, !tbaa !42
  %322 = load ptr, ptr %285, align 8, !tbaa !47
  %323 = getelementptr inbounds %struct.BMVert, ptr %322, i64 0, i32 2
  %324 = load float, ptr %323, align 4, !tbaa !42
  store float %324, ptr %20, align 4, !tbaa !42
  %325 = getelementptr inbounds %struct.BMVert, ptr %322, i64 0, i32 2, i64 1
  %326 = load float, ptr %325, align 4, !tbaa !42
  store float %326, ptr %146, align 4, !tbaa !42
  %327 = getelementptr inbounds %struct.BMVert, ptr %322, i64 0, i32 2, i64 2
  %328 = load float, ptr %327, align 4, !tbaa !42
  store float %328, ptr %147, align 4, !tbaa !42
  %329 = load float, ptr %5, align 4, !tbaa !42
  store float %329, ptr %21, align 4, !tbaa !42
  %330 = load float, ptr %148, align 4, !tbaa !42
  store float %330, ptr %149, align 4, !tbaa !42
  %331 = load float, ptr %150, align 4, !tbaa !42
  store float %331, ptr %151, align 4, !tbaa !42
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #8
  call void @cent_quad_v3(ptr noundef nonnull %19, ptr noundef nonnull %17, ptr noundef nonnull %18, ptr noundef nonnull %20, ptr noundef nonnull %21) #8
  %332 = load float, ptr %19, align 4, !tbaa !42
  %333 = load float, ptr %17, align 4, !tbaa !42
  %334 = fsub float %333, %332
  store float %334, ptr %17, align 4, !tbaa !42
  %335 = load float, ptr %152, align 4, !tbaa !42
  %336 = load float, ptr %139, align 4, !tbaa !42
  %337 = fsub float %336, %335
  store float %337, ptr %139, align 4, !tbaa !42
  %338 = load float, ptr %153, align 4, !tbaa !42
  %339 = load float, ptr %141, align 4, !tbaa !42
  %340 = fsub float %339, %338
  store float %340, ptr %141, align 4, !tbaa !42
  %341 = load float, ptr %18, align 4, !tbaa !42
  %342 = fsub float %341, %332
  store float %342, ptr %18, align 4, !tbaa !42
  %343 = load float, ptr %143, align 4, !tbaa !42
  %344 = fsub float %343, %335
  store float %344, ptr %143, align 4, !tbaa !42
  %345 = load float, ptr %145, align 4, !tbaa !42
  %346 = fsub float %345, %338
  store float %346, ptr %145, align 4, !tbaa !42
  %347 = load float, ptr %20, align 4, !tbaa !42
  %348 = fsub float %347, %332
  store float %348, ptr %20, align 4, !tbaa !42
  %349 = load float, ptr %146, align 4, !tbaa !42
  %350 = fsub float %349, %335
  store float %350, ptr %146, align 4, !tbaa !42
  %351 = load float, ptr %147, align 4, !tbaa !42
  %352 = fsub float %351, %338
  store float %352, ptr %147, align 4, !tbaa !42
  %353 = load float, ptr %21, align 4, !tbaa !42
  %354 = fsub float %353, %332
  store float %354, ptr %21, align 4, !tbaa !42
  %355 = load float, ptr %149, align 4, !tbaa !42
  %356 = fsub float %355, %335
  store float %356, ptr %149, align 4, !tbaa !42
  %357 = load float, ptr %151, align 4, !tbaa !42
  %358 = fsub float %357, %338
  store float %358, ptr %151, align 4, !tbaa !42
  %359 = fmul float %334, 0x3FF001F400000000
  store float %359, ptr %17, align 4, !tbaa !42
  %360 = fmul float %337, 0x3FF001F400000000
  store float %360, ptr %139, align 4, !tbaa !42
  %361 = fmul float %340, 0x3FF001F400000000
  store float %361, ptr %141, align 4, !tbaa !42
  %362 = fmul float %342, 0x3FF001F400000000
  store float %362, ptr %18, align 4, !tbaa !42
  %363 = fmul float %344, 0x3FF001F400000000
  store float %363, ptr %143, align 4, !tbaa !42
  %364 = fmul float %346, 0x3FF001F400000000
  store float %364, ptr %145, align 4, !tbaa !42
  %365 = fmul float %348, 0x3FF001F400000000
  store float %365, ptr %20, align 4, !tbaa !42
  %366 = fmul float %350, 0x3FF001F400000000
  store float %366, ptr %146, align 4, !tbaa !42
  %367 = fmul float %352, 0x3FF001F400000000
  store float %367, ptr %147, align 4, !tbaa !42
  %368 = fmul float %354, 0x3FF001F400000000
  store float %368, ptr %21, align 4, !tbaa !42
  %369 = fmul float %356, 0x3FF001F400000000
  store float %369, ptr %149, align 4, !tbaa !42
  %370 = fmul float %358, 0x3FF001F400000000
  store float %370, ptr %151, align 4, !tbaa !42
  %371 = fadd float %332, %359
  store float %371, ptr %17, align 4, !tbaa !42
  %372 = fadd float %335, %360
  store float %372, ptr %139, align 4, !tbaa !42
  %373 = fadd float %338, %361
  store float %373, ptr %141, align 4, !tbaa !42
  %374 = fadd float %332, %362
  store float %374, ptr %18, align 4, !tbaa !42
  %375 = fadd float %335, %363
  store float %375, ptr %143, align 4, !tbaa !42
  %376 = fadd float %338, %364
  store float %376, ptr %145, align 4, !tbaa !42
  %377 = fadd float %332, %365
  store float %377, ptr %20, align 4, !tbaa !42
  %378 = fadd float %335, %366
  store float %378, ptr %146, align 4, !tbaa !42
  %379 = fadd float %338, %367
  store float %379, ptr %147, align 4, !tbaa !42
  %380 = fadd float %332, %368
  store float %380, ptr %21, align 4, !tbaa !42
  %381 = fadd float %335, %369
  store float %381, ptr %149, align 4, !tbaa !42
  %382 = fadd float %338, %370
  store float %382, ptr %151, align 4, !tbaa !42
  %383 = load ptr, ptr %40, align 8, !tbaa !47
  %384 = getelementptr inbounds %struct.BMVert, ptr %383, i64 0, i32 3
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %13) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %15) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %16, i8 0, i64 12, i1 false)
  store float %371, ptr %13, align 16, !tbaa !42
  store float %372, ptr %154, align 4, !tbaa !42
  store float %373, ptr %155, align 8, !tbaa !42
  store float %374, ptr %156, align 4, !tbaa !42
  store float %375, ptr %157, align 16, !tbaa !42
  store float %376, ptr %158, align 4, !tbaa !42
  store float %377, ptr %159, align 8, !tbaa !42
  store float %378, ptr %160, align 4, !tbaa !42
  store float %379, ptr %161, align 16, !tbaa !42
  store float %380, ptr %162, align 4, !tbaa !42
  store float %381, ptr %163, align 8, !tbaa !42
  store float %382, ptr %164, align 4, !tbaa !42
  store float %254, ptr %165, align 16, !tbaa !42
  store float %255, ptr %166, align 4, !tbaa !42
  store float %256, ptr %167, align 8, !tbaa !42
  %385 = call float @normal_quad_v3(ptr noundef nonnull %14, ptr noundef nonnull %13, ptr noundef nonnull %156, ptr noundef nonnull %159, ptr noundef nonnull %162) #8
  %386 = load float, ptr %384, align 4, !tbaa !42
  %387 = load float, ptr %14, align 4, !tbaa !42
  %388 = getelementptr inbounds %struct.BMVert, ptr %383, i64 0, i32 3, i64 1
  %389 = load float, ptr %388, align 4, !tbaa !42
  %390 = load float, ptr %168, align 4, !tbaa !42
  %391 = fmul float %389, %390
  %392 = call float @llvm.fmuladd.f32(float %386, float %387, float %391)
  %393 = getelementptr inbounds %struct.BMVert, ptr %383, i64 0, i32 3, i64 2
  %394 = load float, ptr %393, align 4, !tbaa !42
  %395 = load float, ptr %169, align 4, !tbaa !42
  %396 = call float @llvm.fmuladd.f32(float %394, float %395, float %392)
  %397 = fcmp olt float %396, 0xBE80000000000000
  br i1 %397, label %433, label %398

398:                                              ; preds = %299
  call void @poly_rotate_plane(ptr noundef nonnull %384, ptr noundef nonnull %13, i32 noundef 5) #8
  br label %399

399:                                              ; preds = %398, %399
  %400 = phi i64 [ 0, %398 ], [ %413, %399 ]
  %401 = getelementptr inbounds [5 x [3 x float]], ptr %13, i64 0, i64 %400
  %402 = load float, ptr %165, align 16, !tbaa !42
  %403 = load float, ptr %401, align 4, !tbaa !42
  %404 = fsub float %403, %402
  store float %404, ptr %401, align 4, !tbaa !42
  %405 = load float, ptr %166, align 4, !tbaa !42
  %406 = getelementptr inbounds float, ptr %401, i64 1
  %407 = load float, ptr %406, align 4, !tbaa !42
  %408 = fsub float %407, %405
  store float %408, ptr %406, align 4, !tbaa !42
  %409 = load float, ptr %167, align 8, !tbaa !42
  %410 = getelementptr inbounds float, ptr %401, i64 2
  %411 = load float, ptr %410, align 4, !tbaa !42
  %412 = fsub float %411, %409
  store float %412, ptr %410, align 4, !tbaa !42
  %413 = add nuw nsw i64 %400, 1
  %414 = icmp eq i64 %413, 4
  br i1 %414, label %415, label %399, !llvm.loop !78

415:                                              ; preds = %399
  %416 = load float, ptr %13, align 16, !tbaa !42
  store float %416, ptr %15, align 16, !tbaa !42
  %417 = load float, ptr %154, align 4, !tbaa !42
  store float %417, ptr %170, align 4, !tbaa !42
  %418 = load float, ptr %155, align 8, !tbaa !42
  store float %418, ptr %171, align 8, !tbaa !42
  %419 = load float, ptr %156, align 4, !tbaa !42
  store float %419, ptr %172, align 4, !tbaa !42
  %420 = load float, ptr %157, align 16, !tbaa !42
  store float %420, ptr %173, align 16, !tbaa !42
  %421 = load float, ptr %158, align 4, !tbaa !42
  store float %421, ptr %174, align 4, !tbaa !42
  %422 = load float, ptr %159, align 8, !tbaa !42
  store float %422, ptr %175, align 8, !tbaa !42
  %423 = load float, ptr %160, align 4, !tbaa !42
  store float %423, ptr %176, align 4, !tbaa !42
  %424 = load float, ptr %161, align 16, !tbaa !42
  store float %424, ptr %177, align 16, !tbaa !42
  %425 = load float, ptr %162, align 4, !tbaa !42
  store float %425, ptr %178, align 4, !tbaa !42
  %426 = load float, ptr %163, align 8, !tbaa !42
  store float %426, ptr %179, align 8, !tbaa !42
  %427 = load float, ptr %164, align 4, !tbaa !42
  store float %427, ptr %180, align 4, !tbaa !42
  %428 = call i32 @isect_point_quad_v2(ptr noundef nonnull %16, ptr noundef nonnull %15, ptr noundef nonnull %172, ptr noundef nonnull %175, ptr noundef nonnull %178) #8
  %429 = icmp eq i32 %428, 0
  br i1 %429, label %433, label %430

430:                                              ; preds = %415
  %431 = call fastcc float @quad_coord(ptr noundef nonnull %172, ptr noundef nonnull %15, ptr noundef nonnull %175, ptr noundef nonnull %178)
  %432 = call fastcc float @quad_coord(ptr noundef nonnull %175, ptr noundef nonnull %172, ptr noundef nonnull %178, ptr noundef nonnull %15)
  br label %433

433:                                              ; preds = %430, %415, %299
  %434 = phi float [ %261, %299 ], [ %261, %415 ], [ %432, %430 ]
  %435 = phi float [ %262, %299 ], [ %262, %415 ], [ %431, %430 ]
  %436 = phi i1 [ true, %299 ], [ true, %415 ], [ false, %430 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %15) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %13) #8
  br i1 %436, label %479, label %437

437:                                              ; preds = %433
  %438 = fmul float %434, %133
  %439 = fmul float %435, %133
  %440 = load float, ptr %21, align 4, !tbaa !42
  %441 = load float, ptr %17, align 4, !tbaa !42
  %442 = fsub float %440, %441
  %443 = load float, ptr %149, align 4, !tbaa !42
  %444 = load float, ptr %139, align 4, !tbaa !42
  %445 = fsub float %443, %444
  %446 = load float, ptr %151, align 4, !tbaa !42
  %447 = load float, ptr %141, align 4, !tbaa !42
  %448 = fsub float %446, %447
  %449 = load float, ptr %18, align 4, !tbaa !42
  %450 = fsub float %449, %441
  %451 = load float, ptr %143, align 4, !tbaa !42
  %452 = fsub float %451, %444
  %453 = load float, ptr %145, align 4, !tbaa !42
  %454 = fsub float %453, %447
  %455 = fmul float %445, %445
  %456 = call float @llvm.fmuladd.f32(float %442, float %442, float %455)
  %457 = call float @llvm.fmuladd.f32(float %448, float %448, float %456)
  %458 = fcmp ogt float %457, 0x38AA95A5C0000000
  br i1 %458, label %459, label %465

459:                                              ; preds = %437
  %460 = call float @sqrtf(float noundef %457) #8
  %461 = fdiv float 1.000000e+00, %460
  %462 = fmul float %442, %461
  %463 = fmul float %445, %461
  %464 = fmul float %448, %461
  br label %465

465:                                              ; preds = %437, %459
  %466 = phi float [ %463, %459 ], [ 0.000000e+00, %437 ]
  %467 = phi float [ %462, %459 ], [ 0.000000e+00, %437 ]
  %468 = phi float [ %464, %459 ], [ 0.000000e+00, %437 ]
  %469 = fmul float %452, %452
  %470 = call float @llvm.fmuladd.f32(float %450, float %450, float %469)
  %471 = call float @llvm.fmuladd.f32(float %454, float %454, float %470)
  %472 = fcmp ogt float %471, 0x38AA95A5C0000000
  br i1 %472, label %473, label %479

473:                                              ; preds = %465
  %474 = call float @sqrtf(float noundef %471) #8
  %475 = fdiv float 1.000000e+00, %474
  %476 = fmul float %450, %475
  %477 = fmul float %452, %475
  %478 = fmul float %454, %475
  br label %479

479:                                              ; preds = %473, %465, %433
  %480 = phi float [ %434, %433 ], [ %438, %465 ], [ %438, %473 ]
  %481 = phi float [ %435, %433 ], [ %439, %465 ], [ %439, %473 ]
  %482 = phi float [ %263, %433 ], [ %468, %465 ], [ %468, %473 ]
  %483 = phi float [ %264, %433 ], [ %466, %465 ], [ %466, %473 ]
  %484 = phi float [ %265, %433 ], [ %467, %465 ], [ %467, %473 ]
  %485 = phi float [ %266, %433 ], [ 0.000000e+00, %465 ], [ %478, %473 ]
  %486 = phi float [ %267, %433 ], [ 0.000000e+00, %465 ], [ %477, %473 ]
  %487 = phi float [ %268, %433 ], [ 0.000000e+00, %465 ], [ %476, %473 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #8
  br i1 %436, label %535, label %488

488:                                              ; preds = %479
  %489 = getelementptr inbounds i8, ptr %270, i64 %33
  %490 = load ptr, ptr %181, align 8, !tbaa !71
  %491 = getelementptr inbounds [3 x float], ptr %490, i64 %259
  %492 = getelementptr inbounds %struct.MDisps, ptr %489, i64 0, i32 2
  %493 = load ptr, ptr %492, align 8, !tbaa !71
  call void @old_mdisps_bilinear(ptr noundef %491, ptr noundef %493, i32 noundef %131, float noundef %480, float noundef %481) #8
  %494 = load ptr, ptr %181, align 8, !tbaa !71
  %495 = getelementptr inbounds [3 x float], ptr %494, i64 %259
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #8
  %496 = load float, ptr %495, align 4, !tbaa !42
  %497 = fmul float %484, %496
  %498 = fmul float %483, %496
  %499 = fmul float %482, %496
  %500 = getelementptr inbounds float, ptr %495, i64 1
  %501 = load float, ptr %500, align 4, !tbaa !42
  %502 = fmul float %487, %501
  %503 = fmul float %486, %501
  %504 = fmul float %485, %501
  %505 = fadd float %497, %502
  store float %505, ptr %10, align 4, !tbaa !42
  %506 = fadd float %498, %503
  store float %506, ptr %182, align 4, !tbaa !42
  %507 = fadd float %499, %504
  store float %507, ptr %183, align 4, !tbaa !42
  store float %186, ptr %11, align 4, !tbaa !42
  store float %189, ptr %190, align 4, !tbaa !42
  store float %193, ptr %194, align 4, !tbaa !42
  call void @project_v3_v3v3(ptr noundef nonnull %12, ptr noundef nonnull %10, ptr noundef nonnull %11) #8
  %508 = load float, ptr %10, align 4, !tbaa !42
  %509 = load float, ptr %12, align 4, !tbaa !42
  %510 = fsub float %508, %509
  store float %510, ptr %10, align 4, !tbaa !42
  %511 = load float, ptr %182, align 4, !tbaa !42
  %512 = load float, ptr %195, align 4, !tbaa !42
  %513 = fsub float %511, %512
  store float %513, ptr %182, align 4, !tbaa !42
  %514 = load float, ptr %183, align 4, !tbaa !42
  %515 = load float, ptr %196, align 4, !tbaa !42
  %516 = fsub float %514, %515
  store float %516, ptr %183, align 4, !tbaa !42
  br i1 %201, label %517, label %519

517:                                              ; preds = %488
  br i1 %205, label %518, label %519

518:                                              ; preds = %517
  br label %519

519:                                              ; preds = %488, %517, %518
  %520 = phi float [ %516, %518 ], [ %516, %517 ], [ %513, %488 ]
  %521 = phi float [ %513, %518 ], [ %510, %517 ], [ %510, %488 ]
  %522 = phi float [ %127, %518 ], [ %127, %517 ], [ %126, %488 ]
  %523 = phi float [ %113, %518 ], [ %113, %517 ], [ %112, %488 ]
  %524 = phi float [ %126, %518 ], [ %125, %517 ], [ %125, %488 ]
  %525 = phi float [ %112, %518 ], [ %111, %517 ], [ %111, %488 ]
  %526 = phi float [ %208, %518 ], [ %203, %517 ], [ %199, %488 ]
  %527 = fneg float %524
  %528 = fmul float %520, %527
  %529 = call float @llvm.fmuladd.f32(float %521, float %522, float %528)
  %530 = fdiv float %529, %526
  store float %530, ptr %495, align 4, !tbaa !42
  %531 = fneg float %521
  %532 = fmul float %523, %531
  %533 = call float @llvm.fmuladd.f32(float %525, float %520, float %532)
  %534 = fdiv float %533, %526
  store float %534, ptr %500, align 4, !tbaa !42
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #8
  br i1 %436, label %535, label %538

535:                                              ; preds = %479, %519
  %536 = load ptr, ptr %309, align 8, !tbaa !49
  %537 = icmp eq ptr %536, %257
  br i1 %537, label %538, label %260, !llvm.loop !79

538:                                              ; preds = %519, %535
  %539 = fadd float %134, %227
  %540 = add nuw nsw i64 %226, 1
  %541 = icmp eq i64 %540, %211
  br i1 %541, label %542, label %225, !llvm.loop !80

542:                                              ; preds = %538
  %543 = add nuw nsw i64 %213, 1
  %544 = icmp eq i64 %543, %210
  br i1 %544, label %545, label %212, !llvm.loop !81

545:                                              ; preds = %542, %124, %80, %25, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BM_loop_interp_from_face(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = alloca [3 x [3 x float]], align 16
  %7 = alloca [2 x float], align 4
  %8 = icmp eq i8 %3, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.BMFace, ptr %2, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !55
  %12 = sext i32 %11 to i64
  %13 = shl nsw i64 %12, 3
  %14 = alloca i8, i64 %13, align 16
  br label %15

15:                                               ; preds = %5, %9
  %16 = phi ptr [ %14, %9 ], [ null, %5 ]
  %17 = getelementptr inbounds %struct.BMFace, ptr %2, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !55
  %19 = sext i32 %18 to i64
  %20 = shl nsw i64 %19, 3
  %21 = alloca i8, i64 %20, align 16
  %22 = alloca i8, i64 %20, align 16
  %23 = shl nsw i64 %19, 2
  %24 = alloca i8, i64 %23, align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  %25 = getelementptr inbounds %struct.BMFace, ptr %2, i64 0, i32 4
  call void @axis_dominant_v3_to_m3(ptr noundef nonnull %6, ptr noundef nonnull %25) #8
  %26 = getelementptr inbounds %struct.BMFace, ptr %2, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !58
  br label %28

28:                                               ; preds = %41, %15
  %29 = phi i64 [ %42, %41 ], [ 0, %15 ]
  %30 = phi ptr [ %44, %41 ], [ %27, %15 ]
  %31 = getelementptr inbounds [2 x float], ptr %22, i64 %29
  %32 = getelementptr inbounds %struct.BMLoop, ptr %30, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !47
  %34 = getelementptr inbounds %struct.BMVert, ptr %33, i64 0, i32 2
  call void @mul_v2_m3v3(ptr noundef nonnull %31, ptr noundef nonnull %6, ptr noundef nonnull %34) #8
  %35 = load ptr, ptr %30, align 8, !tbaa !50
  %36 = getelementptr inbounds ptr, ptr %21, i64 %29
  store ptr %35, ptr %36, align 8, !tbaa !41
  br i1 %8, label %41, label %37

37:                                               ; preds = %28
  %38 = load ptr, ptr %32, align 8, !tbaa !47
  %39 = load ptr, ptr %38, align 8, !tbaa !59
  %40 = getelementptr inbounds ptr, ptr %16, i64 %29
  store ptr %39, ptr %40, align 8, !tbaa !41
  br label %41

41:                                               ; preds = %28, %37
  %42 = add nuw i64 %29, 1
  %43 = getelementptr inbounds %struct.BMLoop, ptr %30, i64 0, i32 6
  %44 = load ptr, ptr %43, align 8, !tbaa !49
  %45 = icmp eq ptr %44, %27
  br i1 %45, label %46, label %28, !llvm.loop !82

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !47
  %49 = getelementptr inbounds %struct.BMVert, ptr %48, i64 0, i32 2
  call void @mul_v2_m3v3(ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef nonnull %49) #8
  %50 = load i32, ptr %17, align 8, !tbaa !55
  call void @interp_weights_poly_v2(ptr noundef nonnull %24, ptr noundef nonnull %22, i32 noundef %50, ptr noundef nonnull %7) #8
  %51 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  %52 = load i32, ptr %17, align 8, !tbaa !55
  %53 = load ptr, ptr %1, align 8, !tbaa !50
  call void @CustomData_bmesh_interp(ptr noundef nonnull %51, ptr noundef nonnull %21, ptr noundef nonnull %24, ptr noundef null, i32 noundef %52, ptr noundef %53) #8
  br i1 %8, label %59, label %54

54:                                               ; preds = %46
  %55 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24
  %56 = load i32, ptr %17, align 8, !tbaa !55
  %57 = load ptr, ptr %47, align 8, !tbaa !47
  %58 = load ptr, ptr %57, align 8, !tbaa !59
  call void @CustomData_bmesh_interp(ptr noundef nonnull %55, ptr noundef %16, ptr noundef nonnull %24, ptr noundef null, i32 noundef %56, ptr noundef %58) #8
  br label %59

59:                                               ; preds = %54, %46
  %60 = icmp eq i8 %4, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %59
  call fastcc void @bm_loop_interp_mdisps(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2)
  br label %62

62:                                               ; preds = %61, %59
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BM_vert_interp_from_face(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [3 x [3 x float]], align 16
  %5 = alloca [2 x float], align 4
  %6 = getelementptr inbounds %struct.BMFace, ptr %2, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !55
  %8 = sext i32 %7 to i64
  %9 = shl nsw i64 %8, 3
  %10 = alloca i8, i64 %9, align 16
  %11 = alloca i8, i64 %9, align 16
  %12 = shl nsw i64 %8, 2
  %13 = alloca i8, i64 %12, align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  %14 = getelementptr inbounds %struct.BMFace, ptr %2, i64 0, i32 4
  call void @axis_dominant_v3_to_m3(ptr noundef nonnull %4, ptr noundef nonnull %14) #8
  %15 = getelementptr inbounds %struct.BMFace, ptr %2, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !58
  br label %17

17:                                               ; preds = %17, %3
  %18 = phi i64 [ %27, %17 ], [ 0, %3 ]
  %19 = phi ptr [ %29, %17 ], [ %16, %3 ]
  %20 = getelementptr inbounds [2 x float], ptr %11, i64 %18
  %21 = getelementptr inbounds %struct.BMLoop, ptr %19, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !47
  %23 = getelementptr inbounds %struct.BMVert, ptr %22, i64 0, i32 2
  call void @mul_v2_m3v3(ptr noundef nonnull %20, ptr noundef nonnull %4, ptr noundef nonnull %23) #8
  %24 = load ptr, ptr %21, align 8, !tbaa !47
  %25 = load ptr, ptr %24, align 8, !tbaa !59
  %26 = getelementptr inbounds ptr, ptr %10, i64 %18
  store ptr %25, ptr %26, align 8, !tbaa !41
  %27 = add nuw i64 %18, 1
  %28 = getelementptr inbounds %struct.BMLoop, ptr %19, i64 0, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !49
  %30 = icmp eq ptr %29, %16
  br i1 %30, label %31, label %17, !llvm.loop !83

31:                                               ; preds = %17
  %32 = getelementptr inbounds %struct.BMVert, ptr %1, i64 0, i32 2
  call void @mul_v2_m3v3(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %32) #8
  %33 = load i32, ptr %6, align 8, !tbaa !55
  call void @interp_weights_poly_v2(ptr noundef nonnull %13, ptr noundef nonnull %11, i32 noundef %33, ptr noundef nonnull %5) #8
  %34 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24
  %35 = load i32, ptr %6, align 8, !tbaa !55
  %36 = load ptr, ptr %1, align 8, !tbaa !59
  call void @CustomData_bmesh_interp(ptr noundef nonnull %34, ptr noundef nonnull %10, ptr noundef nonnull %13, ptr noundef null, i32 noundef %35, ptr noundef %36) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BM_data_layer_add(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.CustomData, align 8
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %4) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %4, ptr noundef nonnull align 8 dereferenceable(200) %1, i64 200, i1 false), !tbaa.struct !84
  %5 = load ptr, ptr %4, align 8, !tbaa !86
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !41
  %9 = tail call ptr %8(ptr noundef nonnull %5) #8
  br label %10

10:                                               ; preds = %3, %7
  %11 = phi ptr [ %9, %7 ], [ null, %3 ]
  store ptr %11, ptr %4, align 8, !tbaa !86
  %12 = getelementptr inbounds %struct.CustomData, ptr %1, i64 0, i32 5
  store ptr null, ptr %12, align 8, !tbaa !88
  %13 = tail call ptr @CustomData_add_layer(ptr noundef %1, i32 noundef %2, i32 noundef 2, ptr noundef null, i32 noundef 0) #8
  call fastcc void @update_data_blocks(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %1)
  %14 = load ptr, ptr %4, align 8, !tbaa !86
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %10
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  call void %17(ptr noundef nonnull %14) #8
  br label %18

18:                                               ; preds = %16, %10
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %4) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare ptr @CustomData_add_layer(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @update_data_blocks(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #8
  %7 = getelementptr inbounds %struct.CustomData, ptr %1, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  %9 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24
  %10 = icmp eq ptr %9, %2
  br i1 %10, label %11, label %28

11:                                               ; preds = %3
  %12 = load i32, ptr %0, align 8, !tbaa !89
  tail call void @CustomData_bmesh_init_pool(ptr noundef %2, i32 noundef %12, i8 noundef zeroext 1) #8
  %13 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 1, ptr %13, align 4, !tbaa !63
  %14 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %14, align 8, !tbaa !65
  %15 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %15, align 8, !tbaa !66
  %16 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %17 = load ptr, ptr %16, align 8, !tbaa !92
  store ptr %17, ptr %4, align 8, !tbaa !67
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #8
  %18 = load ptr, ptr %15, align 8, !tbaa !66
  %19 = call ptr %18(ptr noundef nonnull %4) #8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %105, label %21

21:                                               ; preds = %11, %21
  %22 = phi ptr [ %26, %21 ], [ %19, %11 ]
  store ptr null, ptr %5, align 8, !tbaa !41
  call void @CustomData_bmesh_set_default(ptr noundef %2, ptr noundef nonnull %5) #8
  %23 = load ptr, ptr %22, align 8, !tbaa !59
  call void @CustomData_bmesh_copy_data(ptr noundef %1, ptr noundef %2, ptr noundef %23, ptr noundef nonnull %5) #8
  call void @CustomData_bmesh_free_block(ptr noundef %1, ptr noundef nonnull %22) #8
  %24 = load ptr, ptr %5, align 8, !tbaa !41
  store ptr %24, ptr %22, align 8, !tbaa !59
  %25 = load ptr, ptr %15, align 8, !tbaa !66
  %26 = call ptr %25(ptr noundef nonnull %4) #8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %105, label %21, !llvm.loop !93

28:                                               ; preds = %3
  %29 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 25
  %30 = icmp eq ptr %29, %2
  br i1 %30, label %31, label %49

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 1
  %33 = load i32, ptr %32, align 4, !tbaa !94
  tail call void @CustomData_bmesh_init_pool(ptr noundef %2, i32 noundef %33, i8 noundef zeroext 2) #8
  %34 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 2, ptr %34, align 4, !tbaa !63
  %35 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %35, align 8, !tbaa !65
  %36 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %36, align 8, !tbaa !66
  %37 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  %38 = load ptr, ptr %37, align 8, !tbaa !95
  store ptr %38, ptr %4, align 8, !tbaa !67
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #8
  %39 = load ptr, ptr %36, align 8, !tbaa !66
  %40 = call ptr %39(ptr noundef nonnull %4) #8
  %41 = icmp eq ptr %40, null
  br i1 %41, label %105, label %42

42:                                               ; preds = %31, %42
  %43 = phi ptr [ %47, %42 ], [ %40, %31 ]
  store ptr null, ptr %5, align 8, !tbaa !41
  call void @CustomData_bmesh_set_default(ptr noundef %2, ptr noundef nonnull %5) #8
  %44 = load ptr, ptr %43, align 8, !tbaa !96
  call void @CustomData_bmesh_copy_data(ptr noundef %1, ptr noundef %2, ptr noundef %44, ptr noundef nonnull %5) #8
  call void @CustomData_bmesh_free_block(ptr noundef %1, ptr noundef nonnull %43) #8
  %45 = load ptr, ptr %5, align 8, !tbaa !41
  store ptr %45, ptr %43, align 8, !tbaa !96
  %46 = load ptr, ptr %36, align 8, !tbaa !66
  %47 = call ptr %46(ptr noundef nonnull %4) #8
  %48 = icmp eq ptr %47, null
  br i1 %48, label %105, label %42, !llvm.loop !97

49:                                               ; preds = %28
  %50 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  %51 = icmp eq ptr %50, %2
  br i1 %51, label %52, label %84

52:                                               ; preds = %49
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #8
  %53 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 2
  %54 = load i32, ptr %53, align 8, !tbaa !98
  tail call void @CustomData_bmesh_init_pool(ptr noundef %2, i32 noundef %54, i8 noundef zeroext 4) #8
  %55 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 3, ptr %55, align 4, !tbaa !63
  %56 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %56, align 8, !tbaa !65
  %57 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %57, align 8, !tbaa !66
  %58 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 12
  %59 = load ptr, ptr %58, align 8, !tbaa !99
  store ptr %59, ptr %4, align 8, !tbaa !67
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #8
  %60 = load ptr, ptr %57, align 8, !tbaa !66
  %61 = call ptr %60(ptr noundef nonnull %4) #8
  %62 = icmp eq ptr %61, null
  br i1 %62, label %83, label %63

63:                                               ; preds = %52
  %64 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  %65 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  %66 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  br label %67

67:                                               ; preds = %63, %79
  %68 = phi ptr [ %61, %63 ], [ %81, %79 ]
  store i8 11, ptr %64, align 4, !tbaa !63
  store ptr @bmiter__loop_of_face_begin, ptr %65, align 8, !tbaa !65
  store ptr @bmiter__loop_of_face_step, ptr %66, align 8, !tbaa !66
  store ptr %68, ptr %6, align 8, !tbaa !67
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %6) #8
  %69 = load ptr, ptr %66, align 8, !tbaa !66
  %70 = call ptr %69(ptr noundef nonnull %6) #8
  %71 = icmp eq ptr %70, null
  br i1 %71, label %79, label %72

72:                                               ; preds = %67, %72
  %73 = phi ptr [ %77, %72 ], [ %70, %67 ]
  store ptr null, ptr %5, align 8, !tbaa !41
  call void @CustomData_bmesh_set_default(ptr noundef %2, ptr noundef nonnull %5) #8
  %74 = load ptr, ptr %73, align 8, !tbaa !50
  call void @CustomData_bmesh_copy_data(ptr noundef %1, ptr noundef %2, ptr noundef %74, ptr noundef nonnull %5) #8
  call void @CustomData_bmesh_free_block(ptr noundef %1, ptr noundef nonnull %73) #8
  %75 = load ptr, ptr %5, align 8, !tbaa !41
  store ptr %75, ptr %73, align 8, !tbaa !50
  %76 = load ptr, ptr %66, align 8, !tbaa !66
  %77 = call ptr %76(ptr noundef nonnull %6) #8
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %72, !llvm.loop !100

79:                                               ; preds = %72, %67
  %80 = load ptr, ptr %57, align 8, !tbaa !66
  %81 = call ptr %80(ptr noundef nonnull %4) #8
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %67, !llvm.loop !101

83:                                               ; preds = %79, %52
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #8
  br label %105

84:                                               ; preds = %49
  %85 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 27
  %86 = icmp eq ptr %85, %2
  br i1 %86, label %87, label %105

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 3
  %89 = load i32, ptr %88, align 4, !tbaa !102
  tail call void @CustomData_bmesh_init_pool(ptr noundef %2, i32 noundef %89, i8 noundef zeroext 8) #8
  %90 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 3, ptr %90, align 4, !tbaa !63
  %91 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %91, align 8, !tbaa !65
  %92 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %92, align 8, !tbaa !66
  %93 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 12
  %94 = load ptr, ptr %93, align 8, !tbaa !99
  store ptr %94, ptr %4, align 8, !tbaa !67
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #8
  %95 = load ptr, ptr %92, align 8, !tbaa !66
  %96 = call ptr %95(ptr noundef nonnull %4) #8
  %97 = icmp eq ptr %96, null
  br i1 %97, label %105, label %98

98:                                               ; preds = %87, %98
  %99 = phi ptr [ %103, %98 ], [ %96, %87 ]
  store ptr null, ptr %5, align 8, !tbaa !41
  call void @CustomData_bmesh_set_default(ptr noundef %2, ptr noundef nonnull %5) #8
  %100 = load ptr, ptr %99, align 8, !tbaa !103
  call void @CustomData_bmesh_copy_data(ptr noundef %1, ptr noundef %2, ptr noundef %100, ptr noundef nonnull %5) #8
  call void @CustomData_bmesh_free_block(ptr noundef %1, ptr noundef nonnull %99) #8
  %101 = load ptr, ptr %5, align 8, !tbaa !41
  store ptr %101, ptr %99, align 8, !tbaa !103
  %102 = load ptr, ptr %92, align 8, !tbaa !66
  %103 = call ptr %102(ptr noundef nonnull %4) #8
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %98, !llvm.loop !104

105:                                              ; preds = %98, %42, %21, %87, %31, %11, %84, %83
  %106 = icmp eq ptr %8, null
  br i1 %106, label %108, label %107

107:                                              ; preds = %105
  call void @BLI_mempool_destroy(ptr noundef nonnull %8) #8
  br label %108

108:                                              ; preds = %107, %105
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BM_data_layer_add_named(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.CustomData, align 8
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %5) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %5, ptr noundef nonnull align 8 dereferenceable(200) %1, i64 200, i1 false), !tbaa.struct !84
  %6 = load ptr, ptr %5, align 8, !tbaa !86
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !41
  %10 = tail call ptr %9(ptr noundef nonnull %6) #8
  br label %11

11:                                               ; preds = %4, %8
  %12 = phi ptr [ %10, %8 ], [ null, %4 ]
  store ptr %12, ptr %5, align 8, !tbaa !86
  %13 = getelementptr inbounds %struct.CustomData, ptr %1, i64 0, i32 5
  store ptr null, ptr %13, align 8, !tbaa !88
  %14 = tail call ptr @CustomData_add_layer_named(ptr noundef %1, i32 noundef %2, i32 noundef 2, ptr noundef null, i32 noundef 0, ptr noundef %3) #8
  call fastcc void @update_data_blocks(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %1)
  %15 = load ptr, ptr %5, align 8, !tbaa !86
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  call void %18(ptr noundef nonnull %15) #8
  br label %19

19:                                               ; preds = %17, %11
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %5) #8
  ret void
}

declare ptr @CustomData_add_layer_named(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BM_data_layer_free(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.CustomData, align 8
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %4) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %4, ptr noundef nonnull align 8 dereferenceable(200) %1, i64 200, i1 false), !tbaa.struct !84
  %5 = load ptr, ptr %4, align 8, !tbaa !86
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !41
  %9 = tail call ptr %8(ptr noundef nonnull %5) #8
  br label %10

10:                                               ; preds = %3, %7
  %11 = phi ptr [ %9, %7 ], [ null, %3 ]
  store ptr %11, ptr %4, align 8, !tbaa !86
  %12 = getelementptr inbounds %struct.CustomData, ptr %1, i64 0, i32 5
  store ptr null, ptr %12, align 8, !tbaa !88
  %13 = tail call zeroext i8 @CustomData_free_layer_active(ptr noundef %1, i32 noundef %2, i32 noundef 0) #8
  call fastcc void @update_data_blocks(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %1)
  %14 = load ptr, ptr %4, align 8, !tbaa !86
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %10
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  call void %17(ptr noundef nonnull %14) #8
  br label %18

18:                                               ; preds = %16, %10
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %4) #8
  ret void
}

declare zeroext i8 @CustomData_free_layer_active(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BM_data_layer_free_n(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.CustomData, align 8
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %5) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %5, ptr noundef nonnull align 8 dereferenceable(200) %1, i64 200, i1 false), !tbaa.struct !84
  %6 = load ptr, ptr %5, align 8, !tbaa !86
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !41
  %10 = tail call ptr %9(ptr noundef nonnull %6) #8
  br label %11

11:                                               ; preds = %4, %8
  %12 = phi ptr [ %10, %8 ], [ null, %4 ]
  store ptr %12, ptr %5, align 8, !tbaa !86
  %13 = getelementptr inbounds %struct.CustomData, ptr %1, i64 0, i32 5
  store ptr null, ptr %13, align 8, !tbaa !88
  %14 = tail call i32 @CustomData_get_layer_index_n(ptr noundef %1, i32 noundef %2, i32 noundef %3) #8
  %15 = tail call zeroext i8 @CustomData_free_layer(ptr noundef %1, i32 noundef %2, i32 noundef 0, i32 noundef %14) #8
  call fastcc void @update_data_blocks(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %1)
  %16 = load ptr, ptr %5, align 8, !tbaa !86
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  call void %19(ptr noundef nonnull %16) #8
  br label %20

20:                                               ; preds = %18, %11
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %5) #8
  ret void
}

declare zeroext i8 @CustomData_free_layer(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @CustomData_get_layer_index_n(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BM_data_layer_copy(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.BMIter, align 8
  %7 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #8
  %8 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %10, label %27

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  store i8 1, ptr %11, align 4, !tbaa !63
  %12 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %12, align 8, !tbaa !65
  %13 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %13, align 8, !tbaa !66
  %14 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %15 = load ptr, ptr %14, align 8, !tbaa !92
  store ptr %15, ptr %6, align 8, !tbaa !67
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %6) #8
  %16 = load ptr, ptr %13, align 8, !tbaa !66
  %17 = call ptr %16(ptr noundef nonnull %6) #8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %101, label %19

19:                                               ; preds = %10, %19
  %20 = phi ptr [ %25, %19 ], [ %17, %10 ]
  %21 = load ptr, ptr %20, align 8, !tbaa !59
  %22 = call ptr @CustomData_bmesh_get_n(ptr noundef %1, ptr noundef %21, i32 noundef %2, i32 noundef %3) #8
  %23 = load ptr, ptr %20, align 8, !tbaa !59
  call void @CustomData_bmesh_set_n(ptr noundef %1, ptr noundef %23, i32 noundef %2, i32 noundef %4, ptr noundef %22) #8
  %24 = load ptr, ptr %13, align 8, !tbaa !66
  %25 = call ptr %24(ptr noundef nonnull %6) #8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %101, label %19, !llvm.loop !105

27:                                               ; preds = %5
  %28 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 25
  %29 = icmp eq ptr %28, %1
  br i1 %29, label %30, label %47

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  store i8 2, ptr %31, align 4, !tbaa !63
  %32 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %32, align 8, !tbaa !65
  %33 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %33, align 8, !tbaa !66
  %34 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  %35 = load ptr, ptr %34, align 8, !tbaa !95
  store ptr %35, ptr %6, align 8, !tbaa !67
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %6) #8
  %36 = load ptr, ptr %33, align 8, !tbaa !66
  %37 = call ptr %36(ptr noundef nonnull %6) #8
  %38 = icmp eq ptr %37, null
  br i1 %38, label %101, label %39

39:                                               ; preds = %30, %39
  %40 = phi ptr [ %45, %39 ], [ %37, %30 ]
  %41 = load ptr, ptr %40, align 8, !tbaa !96
  %42 = call ptr @CustomData_bmesh_get_n(ptr noundef %1, ptr noundef %41, i32 noundef %2, i32 noundef %3) #8
  %43 = load ptr, ptr %40, align 8, !tbaa !96
  call void @CustomData_bmesh_set_n(ptr noundef %1, ptr noundef %43, i32 noundef %2, i32 noundef %4, ptr noundef %42) #8
  %44 = load ptr, ptr %33, align 8, !tbaa !66
  %45 = call ptr %44(ptr noundef nonnull %6) #8
  %46 = icmp eq ptr %45, null
  br i1 %46, label %101, label %39, !llvm.loop !106

47:                                               ; preds = %27
  %48 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 27
  %49 = icmp eq ptr %48, %1
  br i1 %49, label %50, label %67

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  store i8 3, ptr %51, align 4, !tbaa !63
  %52 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %52, align 8, !tbaa !65
  %53 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %53, align 8, !tbaa !66
  %54 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 12
  %55 = load ptr, ptr %54, align 8, !tbaa !99
  store ptr %55, ptr %6, align 8, !tbaa !67
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %6) #8
  %56 = load ptr, ptr %53, align 8, !tbaa !66
  %57 = call ptr %56(ptr noundef nonnull %6) #8
  %58 = icmp eq ptr %57, null
  br i1 %58, label %101, label %59

59:                                               ; preds = %50, %59
  %60 = phi ptr [ %65, %59 ], [ %57, %50 ]
  %61 = load ptr, ptr %60, align 8, !tbaa !103
  %62 = call ptr @CustomData_bmesh_get_n(ptr noundef %1, ptr noundef %61, i32 noundef %2, i32 noundef %3) #8
  %63 = load ptr, ptr %60, align 8, !tbaa !103
  call void @CustomData_bmesh_set_n(ptr noundef %1, ptr noundef %63, i32 noundef %2, i32 noundef %4, ptr noundef %62) #8
  %64 = load ptr, ptr %53, align 8, !tbaa !66
  %65 = call ptr %64(ptr noundef nonnull %6) #8
  %66 = icmp eq ptr %65, null
  br i1 %66, label %101, label %59, !llvm.loop !107

67:                                               ; preds = %47
  %68 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  %69 = icmp eq ptr %68, %1
  br i1 %69, label %70, label %101

70:                                               ; preds = %67
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #8
  %71 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  store i8 3, ptr %71, align 4, !tbaa !63
  %72 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %72, align 8, !tbaa !65
  %73 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %73, align 8, !tbaa !66
  %74 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 12
  %75 = load ptr, ptr %74, align 8, !tbaa !99
  store ptr %75, ptr %6, align 8, !tbaa !67
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %6) #8
  %76 = load ptr, ptr %73, align 8, !tbaa !66
  %77 = call ptr %76(ptr noundef nonnull %6) #8
  %78 = icmp eq ptr %77, null
  br i1 %78, label %100, label %79

79:                                               ; preds = %70
  %80 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 4
  %81 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  %82 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  br label %83

83:                                               ; preds = %79, %96
  %84 = phi ptr [ %77, %79 ], [ %98, %96 ]
  store i8 11, ptr %80, align 4, !tbaa !63
  store ptr @bmiter__loop_of_face_begin, ptr %81, align 8, !tbaa !65
  store ptr @bmiter__loop_of_face_step, ptr %82, align 8, !tbaa !66
  store ptr %84, ptr %7, align 8, !tbaa !67
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %7) #8
  %85 = load ptr, ptr %82, align 8, !tbaa !66
  %86 = call ptr %85(ptr noundef nonnull %7) #8
  %87 = icmp eq ptr %86, null
  br i1 %87, label %96, label %88

88:                                               ; preds = %83, %88
  %89 = phi ptr [ %94, %88 ], [ %86, %83 ]
  %90 = load ptr, ptr %89, align 8, !tbaa !50
  %91 = call ptr @CustomData_bmesh_get_n(ptr noundef %1, ptr noundef %90, i32 noundef %2, i32 noundef %3) #8
  %92 = load ptr, ptr %89, align 8, !tbaa !50
  call void @CustomData_bmesh_set_n(ptr noundef %1, ptr noundef %92, i32 noundef %2, i32 noundef %4, ptr noundef %91) #8
  %93 = load ptr, ptr %82, align 8, !tbaa !66
  %94 = call ptr %93(ptr noundef nonnull %7) #8
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %88, !llvm.loop !108

96:                                               ; preds = %88, %83
  %97 = load ptr, ptr %73, align 8, !tbaa !66
  %98 = call ptr %97(ptr noundef nonnull %6) #8
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %83, !llvm.loop !109

100:                                              ; preds = %96, %70
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #8
  br label %101

101:                                              ; preds = %59, %39, %19, %50, %30, %10, %100, %67
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #8
  ret void
}

declare ptr @CustomData_bmesh_get_n(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @CustomData_bmesh_set_n(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local float @BM_elem_float_data_get(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %1, align 8, !tbaa !110
  %5 = tail call ptr @CustomData_bmesh_get(ptr noundef %0, ptr noundef %4, i32 noundef %2) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = load float, ptr %5, align 4, !tbaa !42
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi float [ %8, %7 ], [ 0.000000e+00, %3 ]
  ret float %10
}

declare ptr @CustomData_bmesh_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BM_elem_float_data_set(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, float noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr %1, align 8, !tbaa !110
  %6 = tail call ptr @CustomData_bmesh_get(ptr noundef %0, ptr noundef %5, i32 noundef %2) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  store float %3, ptr %6, align 4, !tbaa !42
  br label %9

9:                                                ; preds = %8, %4
  ret void
}

declare void @CustomData_bmesh_free_block_data(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @CustomData_bmesh_copy_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

declare void @bmiter__loop_of_face_begin(ptr noundef) #2

declare ptr @bmiter__loop_of_face_step(ptr noundef) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare void @old_mdisps_bilinear(ptr noundef, ptr noundef, i32 noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @BM_face_calc_center_mean(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

declare void @BM_vert_normal_update_all(ptr noundef) local_unnamed_addr #2

declare void @cent_quad_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @normal_quad_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @poly_rotate_plane(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @isect_point_quad_v2(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind memory(write, argmem: readwrite) uwtable
define internal fastcc float @quad_coord(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #7 {
  %5 = load float, ptr %0, align 4, !tbaa !42
  %6 = getelementptr inbounds float, ptr %2, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !42
  %8 = load float, ptr %2, align 4, !tbaa !42
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !42
  %11 = fneg float %8
  %12 = fmul float %10, %11
  %13 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %12)
  %14 = getelementptr inbounds float, ptr %3, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !42
  %16 = load float, ptr %1, align 4, !tbaa !42
  %17 = fmul float %7, %16
  %18 = tail call float @llvm.fmuladd.f32(float %5, float %15, float %17)
  %19 = getelementptr inbounds float, ptr %1, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !42
  %21 = tail call float @llvm.fmuladd.f32(float %11, float %20, float %18)
  %22 = load float, ptr %3, align 4, !tbaa !42
  %23 = fneg float %22
  %24 = tail call float @llvm.fmuladd.f32(float %23, float %10, float %21)
  %25 = fmul float %20, %23
  %26 = tail call float @llvm.fmuladd.f32(float %16, float %15, float %25)
  %27 = fsub float %13, %24
  %28 = fadd float %26, %27
  %29 = fmul float %28, 2.000000e+00
  %30 = tail call float @llvm.fabs.f32(float %29)
  %31 = fcmp ogt float %30, 0x3EB4000000000000
  br i1 %31, label %32, label %50

32:                                               ; preds = %4
  %33 = fmul float %13, -4.000000e+00
  %34 = fmul float %33, %26
  %35 = tail call float @llvm.fmuladd.f32(float %24, float %24, float %34)
  %36 = tail call float @sqrtf(float noundef %35) #8
  %37 = fsub float %36, %24
  %38 = tail call float @llvm.fmuladd.f32(float %26, float 2.000000e+00, float %37)
  %39 = fdiv float %38, %29
  %40 = tail call float @llvm.fabs.f32(float %39)
  %41 = fneg float %36
  %42 = fsub float %41, %24
  %43 = tail call float @llvm.fmuladd.f32(float %26, float 2.000000e+00, float %42)
  %44 = fdiv float %43, %29
  %45 = tail call float @llvm.fabs.f32(float %44)
  %46 = fcmp olt float %40, %45
  %47 = select i1 %46, float %40, float %45
  %48 = fcmp ogt float %47, 0x3FF0000020000000
  %49 = select i1 %48, float 0x3FF0000020000000, float %47
  br label %102

50:                                               ; preds = %4
  %51 = fneg float %26
  %52 = tail call float @llvm.fmuladd.f32(float %26, float -2.000000e+00, float %24)
  %53 = fdiv float %51, %52
  %54 = fcmp olt float %53, 0.000000e+00
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = fcmp ogt float %53, 0x3FF0000020000000
  br i1 %56, label %57, label %58

57:                                               ; preds = %55
  br label %58

58:                                               ; preds = %50, %55, %57
  %59 = phi float [ 0x3FF0000020000000, %57 ], [ %53, %55 ], [ 0.000000e+00, %50 ]
  %60 = fcmp uno float %59, 0.000000e+00
  %61 = fcmp ogt float %59, 1.000000e+00
  %62 = or i1 %60, %61
  %63 = fcmp olt float %59, 0.000000e+00
  %64 = or i1 %63, %62
  br i1 %64, label %65, label %102

65:                                               ; preds = %58, %87
  %66 = phi i64 [ %88, %87 ], [ 0, %58 ]
  %67 = phi i1 [ %89, %87 ], [ false, %58 ]
  %68 = getelementptr inbounds float, ptr %0, i64 %66
  %69 = load float, ptr %68, align 4, !tbaa !42
  %70 = tail call float @llvm.fabs.f32(float %69)
  %71 = fcmp olt float %70, 0x3EE9000000000000
  br i1 %71, label %72, label %77

72:                                               ; preds = %65
  %73 = and i64 %66, 4294967295
  %74 = xor i64 %73, 1
  %75 = getelementptr inbounds float, ptr %0, i64 %74
  %76 = getelementptr inbounds float, ptr %1, i64 %74
  br label %90

77:                                               ; preds = %65
  %78 = getelementptr inbounds float, ptr %2, i64 %66
  %79 = load float, ptr %78, align 4, !tbaa !42
  %80 = tail call float @llvm.fabs.f32(float %79)
  %81 = fcmp olt float %80, 0x3EE9000000000000
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = and i64 %66, 4294967295
  %84 = xor i64 %83, 1
  %85 = getelementptr inbounds float, ptr %2, i64 %84
  %86 = getelementptr inbounds float, ptr %3, i64 %84
  br label %90

87:                                               ; preds = %77
  %88 = add nuw nsw i64 %66, 1
  %89 = icmp ne i64 %66, 0
  br i1 %89, label %98, label %65, !llvm.loop !111

90:                                               ; preds = %72, %82
  %91 = phi ptr [ %86, %82 ], [ %76, %72 ]
  %92 = phi ptr [ %85, %82 ], [ %75, %72 ]
  %93 = load float, ptr %92, align 4, !tbaa !42
  %94 = load float, ptr %91, align 4, !tbaa !42
  %95 = fsub float %94, %93
  %96 = tail call float @llvm.fabs.f32(float %95)
  %97 = fdiv float %93, %96
  br label %98

98:                                               ; preds = %87, %90
  %99 = phi i1 [ %67, %90 ], [ %89, %87 ]
  %100 = phi float [ %97, %90 ], [ undef, %87 ]
  br i1 %99, label %101, label %102

101:                                              ; preds = %98
  br label %102

102:                                              ; preds = %32, %58, %98, %101
  %103 = phi float [ %100, %98 ], [ %49, %32 ], [ %59, %58 ], [ %59, %101 ]
  ret float %103
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #6

declare void @project_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @CustomData_bmesh_init_pool(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @CustomData_bmesh_set_default(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @CustomData_bmesh_free_block(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_mempool_destroy(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree nounwind memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!34 = !{!35, !37, i64 0}
!35 = !{!"BMElem", !36, i64 0}
!36 = !{!"BMHeader", !37, i64 0, !40, i64 8, !38, i64 12, !38, i64 13, !38, i64 14}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!37, !37, i64 0}
!42 = !{!43, !43, i64 0}
!43 = !{!"float", !38, i64 0}
!44 = !{!45, !37, i64 40}
!45 = !{!"BMEdge", !36, i64 0, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !46, i64 48, !46, i64 64}
!46 = !{!"BMDiskLink", !37, i64 0, !37, i64 8}
!47 = !{!48, !37, i64 16}
!48 = !{!"BMLoop", !36, i64 0, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64}
!49 = !{!48, !37, i64 56}
!50 = !{!48, !37, i64 0}
!51 = !{!48, !37, i64 40}
!52 = distinct !{!52, !53, !54}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!"llvm.loop.unroll.disable"}
!55 = !{!56, !40, i64 32}
!56 = !{!"BMFace", !36, i64 0, !37, i64 16, !37, i64 24, !40, i64 32, !38, i64 36, !57, i64 48}
!57 = !{!"short", !38, i64 0}
!58 = !{!56, !37, i64 24}
!59 = !{!60, !37, i64 0}
!60 = !{!"BMVert", !36, i64 0, !37, i64 16, !38, i64 24, !38, i64 36, !37, i64 48}
!61 = distinct !{!61, !53, !54}
!62 = distinct !{!62, !53, !54}
!63 = !{!64, !38, i64 60}
!64 = !{!"BMIter", !38, i64 0, !37, i64 40, !37, i64 48, !40, i64 56, !38, i64 60}
!65 = !{!64, !37, i64 40}
!66 = !{!64, !37, i64 48}
!67 = !{!38, !38, i64 0}
!68 = !{!48, !37, i64 64}
!69 = !{!70, !40, i64 0}
!70 = !{!"MDisps", !40, i64 0, !40, i64 4, !37, i64 8, !37, i64 16}
!71 = !{!70, !37, i64 8}
!72 = distinct !{!72, !53, !54}
!73 = distinct !{!73, !53, !54}
!74 = distinct !{!74, !53, !54}
!75 = distinct !{!75, !53, !54}
!76 = !{!48, !37, i64 32}
!77 = !{!70, !40, i64 4}
!78 = distinct !{!78, !53, !54}
!79 = distinct !{!79, !53, !54}
!80 = distinct !{!80, !53, !54}
!81 = distinct !{!81, !53, !54}
!82 = distinct !{!82, !53, !54}
!83 = distinct !{!83, !53, !54}
!84 = !{i64 0, i64 8, !41, i64 8, i64 164, !67, i64 172, i64 4, !85, i64 176, i64 4, !85, i64 180, i64 4, !85, i64 184, i64 8, !41, i64 192, i64 8, !41}
!85 = !{!40, !40, i64 0}
!86 = !{!87, !37, i64 0}
!87 = !{!"CustomData", !37, i64 0, !38, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !37, i64 184, !37, i64 192}
!88 = !{!87, !37, i64 184}
!89 = !{!90, !40, i64 0}
!90 = !{!"BMesh", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !38, i64 28, !38, i64 29, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !40, i64 88, !40, i64 92, !40, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !40, i64 128, !37, i64 136, !87, i64 144, !87, i64 344, !87, i64 544, !87, i64 744, !57, i64 944, !40, i64 948, !40, i64 952, !40, i64 956, !91, i64 960, !37, i64 976, !91, i64 984, !37, i64 1000}
!91 = !{!"ListBase", !37, i64 0, !37, i64 8}
!92 = !{!90, !37, i64 32}
!93 = distinct !{!93, !53, !54}
!94 = !{!90, !40, i64 4}
!95 = !{!90, !37, i64 40}
!96 = !{!45, !37, i64 0}
!97 = distinct !{!97, !53, !54}
!98 = !{!90, !40, i64 8}
!99 = !{!90, !37, i64 56}
!100 = distinct !{!100, !53, !54}
!101 = distinct !{!101, !53, !54}
!102 = !{!90, !40, i64 12}
!103 = !{!56, !37, i64 0}
!104 = distinct !{!104, !53, !54}
!105 = distinct !{!105, !53, !54}
!106 = distinct !{!106, !53, !54}
!107 = distinct !{!107, !53, !54}
!108 = distinct !{!108, !53, !54}
!109 = distinct !{!109, !53, !54}
!110 = !{!36, !37, i64 0}
!111 = distinct !{!111, !53, !54}
